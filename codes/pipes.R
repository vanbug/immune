# Author: Sukhdeep Singh
# Organization : Imperial College London

# building pipelines
######################################
#tissue disector
test=function(){

#####
#way out after aa conversion; bind the data again to the original dataset and remove the previous NT seq or not
cbind(as.character(gagT[[2]][2:10]),as.character(LN$V1[c(seq(4,20,by=2))]))
#####
d<-list()
for (i in 1:length(days)) {d[[i]]<-tissueStatsA(tissue,days[i],day$dayPool[[i]])}
		
		b=1
for (j in 1:length(days)) {
	for (k in 1:4){
		for (a in 1:length(d[[j]]$tissueData[[k]]$Animal)){
			write.table(x=paste('>',d[[j]]$tissueData[[k]]$Animal[a],'_',a,sep=''),file=paste('~/Desktop/temp/',tissue[k],'_',days[j],'_',b,'.csv',sep=''),quote=FALSE,append=TRUE,col.names=FALSE,sep='\t')
			write.table(x=d[[j]]$tissueData[[k]]$Seq[a],file=paste('~/Desktop/temp/',tissue[k],'_',days[j],'_',b,'.csv',sep=''),quote=FALSE,append=TRUE,col.names=FALSE,sep='\t')
			if ((a/500)>b){b=b+1}
		}
	}
}
####################################
gags<-list.files('~/Desktop/temp/gag/fractions',full.names=TRUE)
for (f in 1:length(gags)) {
	temp<-c();temp2<-c();name<-c()
	#temp=readFile(gags[f],header=FALSE)
	name<-paste("~/Desktop/temp/gag/aa/Gag",f,".fas",sep="")
	#write.table(x=temp[2],file=name,row.names=FALSE,quote=FALSE,col.names=FALSE)
	temp2<-noquote(paste("transeq ",name," ~/Desktop/temp/gag/trans/",f,".csv",sep=""))
	readLines(pipe(temp2))
}
