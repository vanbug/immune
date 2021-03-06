# sourcing file
source('~/Desktop/immune/R/siv/codes/parser.R')
#runtime=system.time(
# open tat_raw_sequences
#gagRoot=readFile('~/Desktop/immune/data/210410/CTLescape_allsequences/gag_raw_sequences.tsv',header=TRUE)
filename="~/Desktop/immune/data/210410/CTLescape_allsequences/tat_aligned_sequences_trim.tsv"

tatRoot=readFile(filename,header=TRUE)

filename=tatRoot$filename
tatRaw=tatRoot$contents

# applying thresh
tatThresh=thresh(tatRaw,224)

# identifying sequence column and renaming it to a more common name (works good for different data)
tellMan=which(colnames(tatRaw)=="Aligned.Query");length(tellMan)!=0;colnames(tatRaw)[tellMan]<-'seq';colnames(tatThresh)[tellMan]<-'seq'

for (i in 1:4){
if (i==1) {Pool=tatRaw;		tat=seqFilter(Pool,Pool$seq,epi="TCCACTCCAGAATCGGCCAACCTG")}
if (i==2) {Pool=tatThresh;	tat=seqFilter(Pool,Pool$seq,epi="TCCACTCCAGAATCGGCCAACCTG")}
if (i==3) {Pool=tat$WT}
if (i==4) {Pool=tat$EM}


# fetching tissueStats
PBMC=tissueStats(Pool,Pool$Day,"PBMC")
LN=tissueStats(Pool,Pool$Day,"LN")
RB=tissueStats(Pool,Pool$Day,"RB")
PL=tissueStats(Pool,Pool$Day,"PL")

# getting escape rate
loss=c()
if (i==2) {raw1=PBMC$stats;raw2=LN$stats;raw3=RB$stats;raw4=PL$stats}
if (i==4) {loss1=round((PBMC$stats/raw1)*100,digits=2);loss2=round((LN$stats/raw2)*100,digits=2);loss3=round((RB$stats/raw3)*100,digits=2);loss4=round((PL$stats/raw4)*100,digits=2);loss=c(loss1,loss2,loss3,loss4)}

# formating results
result=paste(PBMC$results,LN$results,RB$results,PL$results,loss)
write(paste(filename,tat$stats),file="~/Desktop/tatStats.xls",sep="\t",append=TRUE)
write(result,file="~/Desktop/tatStats.xls",sep="\t",append=TRUE)
#write.table(result,file="~/Desktop/test.xls",sep="\t",quote=FALSE,col.names=TRUE)
}
#) #runtime loop ends
#runtime1=as.numeric(round((runtime[3]/60),digits=2))
#print(paste("Time Taken :",runtime1,"mins"))
