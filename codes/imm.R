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
# tissue detector
tissueCheck=function(pool){
tissues=levels(pool$Tissue)
return(tissues)
}
###############################################################################
# animal detector
animalCheck=function(pool){
animals=levels(pool$Animal)
return(animals)
}
###############################################################################
# calculates tissue ammounts in data for WT and EM at respective experiment days
Stats=function(pool,tissue=NULL,days=NULL,animal=NULL,tissueAnimal=FALSE,animalTissue=FALSE){
	# variable declarations
	poolDay<-c();dayPool<-list();check<-c();dayColumn<-c();tissColumn<-c();checkTiss<-c();tissuePool_pattern<-list();tissueDayPool<-list();TissueDayPool<-list()
	aniTissue<-list();dayTissue<-list()
	
	# tissue fetcher
	poolDay=pool$Day
	if(is.null(tissue)){tissue=tissueCheck(pool)}
	# day fetcher
	if(is.null(days)){for (i in 1:250){if (length(which(poolDay==i))>0) {days=c(days,i)}}}
	# animal fetcher
	if(is.null(animal)){animal=animalCheck(pool)}
	
	# day data for all animals and pools
	dayPool=dayStats(days,pool)
	# day column detector
	for (j in 1:length(days)){	
		for (i in 1:length(dayPool[[j]])){
			check[i]=length(which(dayPool[[j]][[i]]==days[j]))
			if (check[i]>0) {dayColumn[j]=i}
		}	
	}
	
	# tissue to animal relation
	if (tissueAnimal=="TRUE"){
		# Tissues per day segmentar
		dayTissue=tissueStats(tissue,days,dayPool)
		for(a in 1:length(dayTissue)){
			print(paste("Tissue investigated:",tissue[a]))
			aniTissue[[a]]=aniStats(animal,days,dayTissue[[a]])
		}
	}
	
	# animal to tissue
	if (animalTissue=="TRUE"){
		aniTissue=aniStats(animal,days,dayPool)
		for(b in 1:length(aniTissue)){
		print(paste("Animal investigated:",animal[b]))
		dayTissue=tissueStats(tissue,days,aniTissue[[b]])
		}
	}
	
	# returning segmented tissue-day specific data for all animals
	return (list(dayTissue=dayTissue,aniTissue=aniTissue,results=results,statsTissue=StatsT,PercentageTissue=PercentageT))
}
###############################################################################

# tissue stats calculator
tissueStats=function(tissue,days,dayPool){
# variable declarations
statsT<-c();Tissue<-c();percentageT<-c();resultsT<-c();StatsT<-list();percentageT<-list();PercentageT<-list();patT<-c();
	print(paste("Stats for",length(tissue),"tissue"))
	for (k in 1:length(tissue)){
		for (j in 1:length(days)){
			# tissue column detector
			for (i in 1:length(dayPool[[j]])){
				checkTiss[i]=length(which(dayPool[[j]][[i]]==tissue[k]))
				if (checkTiss[i]>=1) {tissColumn[j]=i}
			}
			# outputs empty Tissue day column, if empty
			if (is.null(tissColumn[j])) {print(paste("No",tissue,"for Day",days[j]));statsT[j]=0}
			# filters input tissue specific data for the specific dayPool and calculates statsT
			else {		
				tissuePool_pattern[[j]]=which(dayPool[[j]][[tissColumn[j]]]==tissue[k])
				tissueDayPool[[j]]=dayPool[[j]][tissuePool_pattern[[j]],1:length(dayPool[[j]])]
				statsT[j]=length(tissueDayPool[[j]][[i]])
				percentageT[j]=round(((length(tissuePool_pattern[[j]])/length(dayPool[[j]][[tissColumn[j]]]==tissue[k]))*100),digits=2)
				# replaces NA with 0
				patT=which(sapply(percentageT,is.na),arr.ind=TRUE)
				percentageT[patT]=0
			}
			#which(sapply(percentageT,is.na),arr.ind=TRUE)
			TissueDayPool[[k]]=tissueDayPool
			PercentageT[[k]]=percentageT
			StatsT[[k]]=statsT
			# printing results
			resultsT=c(resultsT,print(paste(tissue[k]," ",days[j]," - ",StatsT[[k]][j]," [",PercentageT[[k]][j],"%]",sep="")))
		}
		print(paste("Total sequences :",sum(StatsT[[k]])))
	}
	return(list(dayTissue=TissueDayPool,results=resultsT))
}
###############################################################################
# animal stats calculator
aniStats=function(animal,days,tissuePool){
# variable declarations
animalPool_pattern<-list();animalDayPool<-list();AnimalDayPool<-list();checkAni<-c();aniColumn<-c();percentageA<-c();statsA<-c();StatsA<-list();PercentageA<-list();patA<-c();resultsA<-c()
	dayPool=tissuePool
	print(paste("Stats for",length(animal),"animals"))
	for (k in 1:length(animal)){
	print(paste("Stats for animals:",animal[k]))
		for (j in 1:length(days)){
			# animal column detector
			for (i in 1:length(dayPool[[j]])){
				checkAni[i]=length(which(dayPool[[j]][[i]]==animal[k]))
				if (checkAni[i]>=1) {aniColumn[j]=i}
			}
			# outputs empty Animal day column, if empty
			if (is.null(aniColumn[j])){print(paste("No",animal,"for Day",days[j]));statsA[j]=0;percentageA[j]=0}
			# filters input animal specific data for the specific dayPool and calculates stats
			else{		
				animalPool_pattern[[j]]=which(dayPool[[j]][[aniColumn[j]]]==animal[k])
				animalDayPool[[j]]=dayPool[[j]][animalPool_pattern[[j]],1:length(dayPool[[j]])]
				statsA[j]=length(animalDayPool[[j]][[i]])
				percentageA[j]=round(((length(animalPool_pattern[[j]])/length(dayPool[[j]][[aniColumn[j]]]==animal[k]))*100),digits=2)
				# replaces NA with 0
				patA=which(sapply(percentageA,is.na),arr.ind=TRUE)
				percentageA[patA]=0
			}
			#which(sapply(percentageA,is.na),arr.ind=TRUE)
			AnimalDayPool[[k]]=animalDayPool
			PercentageA[[k]]=percentageA
			StatsA[[k]]=statsA
			# printing results
			resultsA=c(resultsA,print(paste(animal[k]," ",days[j]," - ",StatsA[[k]][j]," [",PercentageA[[k]][j],"%]",sep="")))
		}
		print(paste("Total sequences :",sum(StatsA[[k]])))
	}
	return(list(dayAnimal=AnimalDayPool,results=resultsA))
}
##############################################################################
# day segmentar
dayStats=function(days,pool){
# variable declarations
dayPool<-list();d<-list()
poolDay=pool$Day
	for (i in 1:length(days)){
		d[[i]]=which(poolDay==days[i])
		dayPool[[i]]=pool[d[[i]],1:length(pool)]
	}
	return(dayPool)
}
##############################################################################	

# function for detecting tissue column and producing stats [in ALPHA phase]
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
