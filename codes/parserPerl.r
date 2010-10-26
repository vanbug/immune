# Immune Stats : An R package for the analysis of tissue and day specific virus escape and wild type epitope data.
# Author : Sukhdeep Singh
# Department : Division of Immunology, Department of Medicine
# Organization : Imperial College London
# Email : sukhdeepsingh.bio@gmail.com
####################################################################################################################
####################################################################################################################

# reads raw data files in
ans1=readline("Would you like to read file:y/n")
if (ans1=="y"){
filename=readline("Enter file:")
filename=gsub('\'','',filename)
file=read.delim(filename,sep="\t",header=header)
}

###############################################################################

# filters gag epitope sequences above threshold (>247 NT)
ans2=readline("Would you like to filter threshold values:y/n")
if (ans2=="y"){
junk=which(x$Length<247)
x_thresh=x[-junk,1:length(x)]
if(length(junk)==0) (x_thresh=x)
}
else {print("Good man")}

###############################################################################

# filters out wild type from escape mutant sequences for the epitope sequence provided
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

###############################################################################

# tissue sequence filter : filters given specific tissue sequences out from the pool
tissueFilter<-function(pool,poolTissue,tissueName){
pattern=which(poolTissue==tissueName)
tissue=pool[pattern,1:length(pool)]
percentage=round(((length(pattern)/length(poolTissue))*100),digits=3)
print (paste("Total",tissueName,"sequences are :",length(pattern)))
print (paste(tissueName,"Percentage in total pool:",percentage))
return(tissue)
}

###############################################################################

# day filter : filters given specific day sequences out from the pool
dayFilter<-function(pool,poolDay,day){
pattern=which(poolDay==day)
dayData=pool[pattern,1:length(pool)]
percentage=round(((length(pattern)/length(poolDay))*100),digits=3)
print (paste("Total sequences for day",day,"are :",length(pattern)))
print (paste("Day",day,"Percentage in total pool:",percentage))
return(dayData)
}

###############################################################################

# deduces the experiment days
dayCheck=function(poolDay){
dayFetched=c()
for (i in 1:500){if (length(which(poolDay==i))>0) {dayFetched=c(dayFetched,i)}}
return (dayFetched)
}
###############################################################################

# calculates tissue ammounts in data for WT and EM at respective experiment days
tissueStats=function(pool,poolDay,tissue){
	
	# variable declarations
	dayPool<-c();d<-c();check<-c();dayColumn<-c();tissColumn<-c();checkTiss<-c();tissuePool_pattern<-list();tissueDayPool<-list();Stats<-c();Tissue<-c();percentage<-c();days=c()
	
	# day fetcher
	for (i in 1:250){if (length(which(poolDay==i))>0) {days=c(days,i)}}
	
	# classifies experiment data into respective days
	for (i in 1:length(days)){
		d[[i]]=which(poolDay==days[i])
		dayPool[[i]]=pool[d[[i]],1:length(pool)]
	}

	# day column detector
	for (j in 1:length(days)){	
		for (i in 1:length(dayPool[[j]])){
			check[i]=length(which(dayPool[[j]][[i]]==days[j]))
			if (check[i]>0) {dayColumn[j]=i}
		}	
	}

	# tissue column detectorsta	
	for (j in 1:length(days)){
		for (i in 1:length(dayPool[[j]])){
			checkTiss[i]=length(which(dayPool[[j]][[i]]==tissue))
			if (checkTiss[i]>=1) {tissColumn[j]=i}
		}
		if (is.null(tissColumn[j])) {print(paste("No",tissue,"for Day",days[j]));Stats[j]=0}
		else {		
			tissuePool_pattern[[j]]=which(dayPool[[j]][[tissColumn[j]]]==tissue)
			tissueDayPool[[j]]=dayPool[[j]][tissuePool_pattern[[j]],1:length(dayPool[[j]])]
			Stats[j]=length(tissueDayPool[[j]][[i]])
			percentage[j]=round(((length(tissuePool_pattern[[j]])/length(dayPool[[j]][[tissColumn[j]]]==tissue))*100),digits=2)
		}
		
		# outputting results
		#Tissue=c(Tissue,paste(tissue,days[j],Stats[j],sep=""))
		print (paste(tissue," ",days[j]," - ",Stats[j]," [",percentage[j],"%]",sep=""))
	}
	
	#print(table(Tissue,Stats),zero.print=".")
	return (tissueDayPool)
}

###############################################################################







##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
#####################################	IN PROCESS	######################################################################
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################

# mutation filter
mut<-function(poolSeq,epi){
#WT=length(grep(epi,poolSeq,value=FALSE,ignore.case=FALSE))
epiChar=noquote(strsplit(epi,NULL)[[1]])
for (i in 1:4) {
mutChar=gsub('T',base[i],epiChar[1])
epiCh
print(paste(mutChar,epi,sep=""))
}
return(epiSeq)
}



#epiChar=noquote(strsplit(epi,NULL)[[1]])
#epiCharStart=paste('^',epiChar[1],sep="")
#epiChar[1]=epiCharStart
#base=c('A','T','G','C')
#epiMut<-c();epiSeq<-c()
#for (i in 1:4) {
#	for (a in 1:length(epiChar)){
#		epiMut[i]=print(gsub(epiChar[a],base[i],epi))
#		#print(length(grep(epiMut[i],poolSeq,value=FALSE,ignore.case=FALSE)))
#	}
#}
