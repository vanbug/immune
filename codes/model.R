##############################################################
## model fitting
# fetch data
a<-list();pars<-c()
f=list.files('~/Desktop/immune/R/data/gag/',full.names="TRUE")
tissueName=c("LN","PBMC","PL","RB")
for (j in 1:4) {
	a[[j]]<-readFile(f[j])
	par(mfrow=c(3,5))
	
	# Model fitting
	for (i in 2:(length(a[[j]]))){
	# variable declarations
	k2<-c();temp<-c();dayTemp<-c()
		for (k in 1:length(a[[j]][,i])){
			temp=a[[j]][,i]
			if(is.na(temp[k])){k2=c(k2,k)}
		}
		if(length(k2)!=0){
		# data complaince
		temp=temp[-k2]
		TT=a[[j]][,1][-k2]
		}
		
		# default data
		if(length(k2)==0){
			TT<-c(7,10,14,28,56,84,168) # time
			temp=a[[j]][,i+1]
		}

		# initial parameter guess
		kk=0.05	 # escape rate
		gg=5	 # initial population ratio
		params.init<-c(k=kk,g=gg)
		#print(length(TT))
		#print(length(temp))
		# plot data
		

		# analytical solution
		model<-function(params,times){
			with(as.list(params),return(1/((g*exp(-k*times))+1)))
		}
	

		# fitting algorithm
		ModelCost<-function(P){
			out<-model(params=P,times=TT)
			print(P)
			print(out)
			return(temp-(out*100)) #residuals
		}

		Fita<-modFit(f=ModelCost,params.init,control=c(numiter=200))
		
		# plot data
		plot(TT,(temp/100),xlab="Days",ylab=paste(colnames(a[[j]][i]),"Escape Rates"),xlim=c(0,168),ylim=c(0,1),main=f[j],sub=paste("k=",round(Fita$par[1],digits=3)))
		
		# running model with initial params and plot the results
		lines(TT,model(params.init,TT),lwd=2,pch=22,lty=2,col="green")
		
		# storing escapeRate (k)
		pars<-c(pars,Fita$par[1])
		times<-TT
		lines(times,model(Fita$par,times),lwd=2,col="Blue",,sub="yo")
		#summary(Fita)
	}
	savePlot(paste("~/Desktop/",tissueName[j],".png"))
}
#################################################################
