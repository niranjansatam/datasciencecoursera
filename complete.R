complete<-function(directory,id=1:332)
{
  files_full <- list.files(directory, full.names=TRUE)
  dat=data.frame()

   for (i in id)
  {
    x=read.csv(files_full[i])
    xclean=x[complete.cases(x),]
    y=cbind(i,nrow(xclean))
    dat=rbind(dat,y)
    
  }
 names(dat)[1]="id"
 names(dat)[2]="nobs"
 print(dat)
}