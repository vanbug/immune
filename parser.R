# reading files

readFile<-function(sep=NULL,header=FALSE) {
filename=readline("Enter file:")
filename=gsub('\'','',filename)
file=read.delim(filename,sep="\t",header=header)
return(file)
}



# filtered sequences above threshold values [625605]
thresh<-function(x){
junk=which(x$Length<247)
x_thresh=x[-junk,1:length(x)]
if(length(junk)==0) (x_thresh=x)
return(x_thresh)
}

# processing WT & EM in pool
seqFilter<-function(pool,poolSeq,epi){
pattern=grep(epi,poolSeq,value=FALSE,ignore.case=TRUE)
WT_seq=pool[pattern,1:length(pool)]
EM_seq=pool[-pattern,1:length(pool)]
percentage_WT=round(((length(pattern)/length(poolSeq))*100),digits=3)
percentage_EM=(100-percentage_WT)
print (paste("Total Sequences:",length(poolSeq)))
print (paste("WT: ",percentage_WT,"%[",length(pattern),"]",sep=""))
print (paste("EM: ",percentage_EM,"%[",(length(poolSeq)-length(pattern)),"]",sep=""))
return(list(WT=WT_seq,EM=EM_seq))
}

# tissue sequence filter
tissueFilter<-function(pool,poolTissue,tissueName){
pattern=which(poolTissue==tissueName)
tissue=pool[pattern,1:length(pool)]
percentage=round(((length(pattern)/length(poolTissue))*100),digits=3)
print (paste("Total",tissueName,"sequences are :",length(pattern)))
print (paste(tissueName,"Percentage in total pool:",percentage))
return(tissue)
}


# day filter 
dayFilter<-function(pool,poolDay,day){
pattern=which(poolDay==day)
dayData=pool[pattern,1:length(pool)]
percentage=round(((length(pattern)/length(poolDay))*100),digits=3)
print (paste("Total sequences for day",day,"are :",length(pattern)))
print (paste("Day",day,"Percentage in total pool:",percentage))
return(dayData)
}
