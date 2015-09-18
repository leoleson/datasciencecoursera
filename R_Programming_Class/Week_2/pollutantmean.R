pollutantmean <- function(directory, pollutant, id=1:332) {
  monitorsList <- list.files(directory, full.names=T)
  allMonDF <- data.frame()
  for (i in id) {
    allMonDF <- rbind(allMonDF, read.csv(monitorsList[i]))
  }
  mean(allMonDF[, pollutant], na.rm=T)
}