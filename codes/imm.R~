# Immune Stats : An R package for the analysis of tissue and day specific virus escape and wild type epitope data.
# Author : Sukhdeep Singh
# Department : Division of Immunology, Department of Medicine
# Organization : Imperial College London
# Email : sukhdeepsingh.bio@gmail.com
####################################################################################################################
####################################################################################################################

# reads raw data files in
readFile<-function(filename,sep=NULL,header=TRUE){
filename=gsub('\'','',filename)
file=read.delim(filename,sep="\t",header=header)
num=print(paste("Total sequences detected:",length(file[,1])))
print("Its advisable to run abide function by inputting the sequence,tissue and experiment day column number, so that the data in in compliance with this package.")
print(colnames(file))
return(file)
}

###############################################################################
# function which makes the data compliant with the package
abide<-function(a,aSeq=NULL,aDay=NULL,aTissue=NULL){
colnames(a)[aSeq]="Seq"
colnames(a)[aDay]="Day"
colnames(a)[aTissue]="Tissue"
print ("Data complaince accomplished")
return(a)
}

###############################################################################

# filters gag epitope sequences above threshold (>247 NT)
thresh<-function(x,y){
junk=which(x$Length<y)
x_thresh=x[-junk,1:length(x)]
if(length(junk)==0) (x_thresh=x)
print(paste("No. of Sequences removed :",length(junk)))
return(x_thresh)
}

###############################################################################

# filters out wild type from escape mutant sequences for the epitope sequence provided
seqFilter<-function(pool,epi){
poolSeq=pool$Seq
pattern=grep(epi,poolSeq,value=FALSE,ignore.case=TRUE)
WT_seq=pool[pattern,1:length(pool)]
EM_seq=pool[-pattern,1:length(pool)]
percentage_WT=round(((length(pattern)/length(poolSeq))*100),digits=3)
percentage_EM=(100-percentage_WT)
print (paste("Total Sequences:",length(poolSeq)))
print (paste("WT: ",percentage_WT,"%[",length(pattern),"]",sep=""))
print (paste("EM: ",percentage_EM,"%[",(length(poolSeq)-length(pattern)),"]",sep=""))
stats=c(paste("WT:",length(pattern)),paste("EM:",(length(poolSeq)-length(pattern))),paste("raw:",length(poolSeq)))
return(list(WT=WT_seq,EM=EM_seq,stats=stats,raw=pool))
}

###############################################################################

# tissue sequence filter : filters given specific tissue sequences out from the pool
tissueFilter<-function(pool,tissueName){
poolTissue=pool$Tissue
pattern=which(poolTissue==tissueName)
tissue=pool[pattern,1:length(pool)]
percentage=round(((length(pattern)/length(poolTissue))*100),digits=3)
print (paste("Total",tissueName,"sequences are :",length(pattern)))
print (paste(tissueName,"Percentage in total pool:",percentage))
return(list(tissue=tissue,stats=length(pattern)))
}

###############################################################################

# day filter : filters given specific day sequences out from the pool
dayFilter<-function(pool,day){
poolDay=pool$Day
pattern=which(poolDay==day)
dayData=pool[pattern,1:length(pool)]
percentage=round(((length(pattern)/length(poolDay))*100),digits=3)
print (paste("Total sequences for day",day,"are :",length(pattern)))
print (paste("Day",day,"Percentage in given pool:",percentage))
return(dayData)
}

###############################################################################

# deduces the experiment days
dayCheck=function(pool){
dayFetched=c()
for (i in 1:500){if (length(which(pool$Day==i))>0) {dayFetched=c(dayFetched,i)}}
return (dayFetched)
}
###############################################################################


# tissue
tissueCheck=function(pool){
tissues=levels(pool$Tissue)
return(tissues)
}

###############################################################################
# calculates tissue ammounts in data for WT and EM at respective experiment days
tissueStats=function(pool,tissue=NULL,days=NULL){

	# variable declarations
	poolDay<-c();dayPool<-c();d<-c();check<-c();dayColumn<-c();tissColumn<-c();checkTiss<-c();tissuePool_pattern<-list();tissue<-c()
	tissueDayPool<-list();TissueDayPool<-list();stats<-c();Tissue<-c();percentage<-c();days=c();results<-c();Stats<-list();Percentage<-list();pat<-c()
	
	# fetching data from pool
	poolDay=pool$Day
	if(is.null(tissue)){tissue=tissueCheck(pool)}
	
	
	# day fetcher
	if(is.null(days)) {for (i in 1:250){if (length(which(poolDay==i))>0) {days=c(days,i)}}}
	
	# day segmentar
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

	# tissue column detector for unfactorized data
	for (k in 1:length(tissue)){
		for (j in 1:length(days)){
			# tissue column detector
			for (i in 1:length(dayPool[[j]])){
				checkTiss[i]=length(which(dayPool[[j]][[i]]==tissue[k]))
				if (checkTiss[i]>=1) {tissColumn[j]=i}
			}
				# outputs empty Tissue day column, if empty
				if (is.null(tissColumn[j])) {print(paste("No",tissue,"for Day",days[j]));stats[j]=0}
				# filters input tissue specific data for the specific dayPool and calculates stats
				else {		
					tissuePool_pattern[[j]]=which(dayPool[[j]][[tissColumn[j]]]==tissue[k])
					tissueDayPool[[j]]=dayPool[[j]][tissuePool_pattern[[j]],1:length(dayPool[[j]])]
					stats[j]=length(tissueDayPool[[j]][[i]])
					percentage[j]=round(((length(tissuePool_pattern[[j]])/length(dayPool[[j]][[tissColumn[j]]]==tissue[k]))*100),digits=2)
					# replaces NA with 0
					pat=which(sapply(percentage,is.na),arr.ind=TRUE)
					percentage[pat]=0
				}
				#which(sapply(percentage,is.na),arr.ind=TRUE)
			TissueDayPool[[k]]=tissueDayPool
			Percentage[[k]]=percentage
			Stats[[k]]=stats
			# printing results
			results=c(results,print(paste(tissue[k]," ",days[j]," - ",Stats[[k]][j]," [",Percentage[[k]][j],"%]",sep="")))
			}
		}
	#print(table(Tissue,Stats),zero.print=".")
	return (list(tissue=TissueDayPool,results=results,stats=Stats,Percentage=Percentage))
}

###############################################################################
tiss<-function(days,dayPool,tissue){
	# tissue column detector
	for (j in 1:length(days)){
		for (i in 1:length(dayPool[[j]])){
			checkTiss[i]=length(which(dayPool[[j]][[i]]==tissue))
			if (checkTiss[i]>=1) {tissColumn[j]=i}
		}
		# outputs empty Tissue day column
		if (is.null(tissColumn[j])) {print(paste("No",tissue,"for Day",days[j]));Stats[j]=0}
		else {		
			# filters input tissue specific data for the specific dayPool and calculates stats
			tissuePool_pattern[[j]]=which(dayPool[[j]][[tissColumn[j]]]==tissue)
			tissueDayPool[[j]]=dayPool[[j]][tissuePool_pattern[[j]],1:length(dayPool[[j]])]
			Stats[j]=length(tissueDayPool[[j]][[i]])
			percentage[j]=round(((length(tissuePool_pattern[[j]])/length(dayPool[[j]][[tissColumn[j]]]==tissue))*100),digits=2)
		}
	}
}
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
