pollutantmean<-function(directory,pollutant,id=1:332)
{
  files_full <- list.files(directory, full.names=TRUE)
 
  dat=data.frame()
  for (i in id)
  {
    x=read.csv(files_full[i])
    xclean=na.omit(x[pollutant])
    dat=rbind(dat,xclean)
  }
  if(pollutant=="sulfate")
  {polmean=mean(dat$su)}
  else
  {polmean=mean(dat$ni)}
  print(polmean)
}