# sourcing file
source('~/Desktop/immune/R/siv/codes/parser.R')

# declarations
PBMCStats<-c();LNStats<-c();RBStats<-c();PLStats<-c()

# reading file
filename="~/Desktop/immune/data/210410/CTLescape_allsequences/gag_aligned_sequences_trim.tsv"
#gagRoot=readFile(filename,header=TRUE)

# fetching filename and contents
filename=gagRoot$filename
gagRaw=gagRoot$contents

# applying thresh (<247 nt(gag))
gagThresh=thresh(gagRaw,247)

# identifying sequence column and renaming it to a more common name (works good for different data)
tellMan=which(colnames(gagRaw)=="Aligned.Query");length(tellMan)!=0;colnames(gagRaw)[tellMan]<-'seq';colnames(gagThresh)[tellMan]<-'seq'

# running 4 loops for raw,thresh,WT,EM data
for (i in 1:4){
if (i==1) {Pool=gagRaw;		gag=seqFilter(Pool,Pool$seq,epi="TCAGAAGGTTGCACCCCCTATGACATTAATCAGATGTTAAATTGT")}
if (i==2) {Pool=gagThresh;	gag=seqFilter(Pool,Pool$seq,epi="TCAGAAGGTTGCACCCCCTATGACATTAATCAGATGTTAAATTGT")}
if (i==3) {Pool=gag$WT}
if (i==4) {Pool=gag$EM}


# fetching tissueStats for each data consecutively
#PBMC=tissueStats(Pool,Pool$Day,"PBMC")
#LN=tissueStats(Pool,Pool$Day,"LN")
#RB=tissueStats(Pool,Pool$Day,"RB")
#PL=tissueStats(Pool,Pool$Day,"PL")

PBMC=tissueFilter(Pool,Pool$Tissue,"PBMC")
LN=tissueFilter(Pool,Pool$Tissue,"LN")
RB=tissueFilter(Pool,Pool$Tissue,"RB")
PL=tissueFilter(Pool,Pool$Tissue,"PL")


PBMCStats=c(PBMCStats,PBMC$stats)
LNStats=c(LNStats,LN$stats)
RBStats=c(RBStats,RB$stats)
PLStats=c(PLStats,PL$stats)
# getting escape rate
loss=c()
if (i==2) {raw1=PBMC$stats;raw2=LN$stats;raw3=RB$stats;raw4=PL$stats}
if (i==4) {loss1=round((PBMC$stats/raw1)*100,digits=2);loss2=round((LN$stats/raw2)*100,digits=2);loss3=round((RB$stats/raw3)*100,digits=2);loss4=round((PL$stats/raw4)*100,digits=2);loss=c(loss1,loss2,loss3,loss4)}

# formating results
result=paste(PBMC$results,LN$results,RB$results,PL$results,loss)
#write(paste(filename,gag$stats),file="~/Desktop/gagStats.xls",sep="\t",append=TRUE)
#write(result,file="~/Desktop/gagStats.xls",sep="\t",append=TRUE)
#write.table(result,file="~/Desktop/test.xls",sep="\t",quote=FALSE,col.names=TRUE)
}

# calculates escape values for specific tissue and all animals
PBMCraw_EM=(PBMCStats[4]/PBMCStats[1])*100
PBMCthresh_EM=(PBMCStats[4]/PBMCStats[2])*100
LNraw_EM=(LNStats[4]/LNStats[1])*100
LNthresh_EM=(LNStats[4]/LNStats[2])*100
RBraw_EM=(RBStats[4]/RBStats[1])*100
RBthresh_EM=(RBStats[4]/RBStats[2])*100
PLraw_EM=(PLStats[4]/PLStats[1])*100
PLthresh_EM=(PLStats[4]/PLStats[2])*100

#) #runtime loop ends
#runtime1=as.numeric(round((runtime[3]/60),digits=2))
#print(paste("Time Taken :",runtime1,"mins"))
