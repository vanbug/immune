# sourcing file
source('~/Desktop/immune/R/siv/codes/parser.R')
#runtime=system.time(
# open gag_raw_sequences
#gagRoot=readFile('~/Desktop/immune/data/210410/CTLescape_allsequences/gag_raw_sequences.tsv',header=TRUE)
filename="~/Desktop/immune/data/210410/CTLescape_allsequences/gag_aligned_sequences_trim.tsv"

# reading file
gagRoot=readFile(filename,header=TRUE)

# fetching filename and contents
filename=gagRoot$filename
gagRaw=gagRoot$contents

# applying thresh ()
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
#write(paste(filename,gag$stats),file="~/Desktop/gagStats.xls",sep="\t",append=TRUE)
#write(result,file="~/Desktop/gagStats.xls",sep="\t",append=TRUE)
#write.table(result,file="~/Desktop/test.xls",sep="\t",quote=FALSE,col.names=TRUE)
}
#) #runtime loop ends
#runtime1=as.numeric(round((runtime[3]/60),digits=2))
#print(paste("Time Taken :",runtime1,"mins"))
