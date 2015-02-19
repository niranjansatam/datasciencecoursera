corr<-function(directory,threshold=0)
{
  files_full <- list.files(directory, full.names=TRUE)
  dat=c()
  
  for (i in 1:332)
  {
    x=read.csv(files_full[i])
    xclean=x[complete.cases(x),]
   
  if(nrow(xclean)<=threshold)
    {
    next
    }
     y=cor(xclean$su,xclean$ni)
     dat=c(dat,y)
   }
  if(is.null(dat))
    return (numeric(0))
  else
    dat
}