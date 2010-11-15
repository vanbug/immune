#####
# solving equation
solveRate<-function(pars,times=c(0,7,10,14,28,56,84,168)){
	derivs<-function(t,state,pars){ #returns rate of change
	with(as.list(c(state,pars)),{
		M=1/(g*exp(-(k*t))+1)
		return(list(M))
		})
	}
	state<-c(M=0)
	return(as.data.frame(ode(y=state,times=times,func=derivs,parms=pars)))
}

## 
# parameter list
pars<-list(g=99,k=0.01)
