# Author: Sukhdeep Singh
# Organization : Imperial College London

# building pipelines
######################################
#tissue long disector
test=function(){
# way out after aa conversion; bind the data again to the original dataset and remove the previous NT seq or not
cbind(as.character(gagT[[2]][2:10]),as.character(LN$V1[c(seq(4,20,by=2))]))
# we can use cat file1 >> file2 , to join the files we want, it appends to it
#####
d<-list()
for (i in 1:length(days)) {d[[i]]<-tissueStatsA(tissue,days[i],day$dayPool[[i]])} # bifurcates pool into day Data
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
# brief file disector
for (a in 1:length(gagT$Seq)){
	write.table(x=paste('>',gagT$Animal[a],'_',a,sep=''),file=paste('~/Desktop/temp/gag/gagT.csv',sep=''),quote=FALSE,append=TRUE,col.names=FALSE,sep='\t')
	write.table(x=gagT$Seq[a],file=paste('~/Desktop/temp/gag/gagT.csv',sep=''),quote=FALSE,append=TRUE,col.names=FALSE,sep='\t')
	print(a)
}

####################################

transeq<-function(){
gags<-list.files('~/Desktop/temp/gag/fractions',full.names=TRUE)
	for (f in 1:length(gags)){
		temp<-c();temp2<-c();name<-c()
		#temp=readFile(gags[f],header=FALSE)
		name<-paste("~/Desktop/temp/gag/aa/Gag",f,".fas",sep="")
		#write.table(x=temp[2],file=name,row.names=FALSE,quote=FALSE,col.names=FALSE)
		temp2<-noquote(paste("transeq ",name," ~/Desktop/temp/gag/trans/",f,".csv",sep=""))
		readLines(pipe(temp2))
	}
}
rmStar<-function(){
trans<-list.files('~/Desktop/temp/gag/trans',full.names=TRUE)
	for (t in 1:length(trans)){
		temp3<-c();K<-c()
		temp3<-readFile(trans[t],header=FALSE)
		K=as.data.frame(gsub('([*])','',temp3[,1]))
		K=K[,1]
		write.table(x=K,file=trans[t],row.names=FALSE,col.names=FALSE,quote=FALSE)
	}
}
#./netMHC-3.0 -a Mamu_A01 -s ~/Desktop/temp/gag/trans/100.csv 

netMHC<-function(){
trans2<-list.files('~/Desktop/temp/gag/trans',full.names=TRUE)
trans2S<-list.files('~/Desktop/temp/gag/trans')
	for (T in 1:length(trans2)){
		print(T)
		temp4<-c()
		temp4=paste("~/Desktop/immune/R/netMHC/netMHC-3.0/./netMHC-3.0 -a Mamu_A01 -s ",trans2[T],' >~/Desktop/temp/gag/predictions/',trans2S[T],sep='')
		readLines(pipe(temp4))
	}
}



}

