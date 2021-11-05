# Megan Cater
# Exercise 8

# clears the environment
rm(list=ls())

# reads data from UWvMSU_1-22-13.txt
points<-read.table("UWvMSU_1-22-13.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE)

# numeric vectors to hold time and scores
times<-numeric(length=nrow(points))
UWpoints<-numeric(length=nrow(points))
MSUpoints<-numeric(length=nrow(points))

UWsum = 0
MSUsum = 0

# for each row, adds to vectors
for (i in 1:nrow(points)) {
  # adds to time vector
  times[i] = points$time[i]
  
  # adds to sum if UW scored or MSU scored
  if (points$team[i] == "UW") {
    UWsum = UWsum + points$score[i]
  } else {
    MSUsum = MSUsum + points$score[i]
  }
  
  # adds sum to points vectors
  UWpoints[i] = UWsum
  MSUpoints[i] = MSUsum
}

# plots time against scores for both teams
plot(times, UWpoints, type='l', xlab='Time', ylab='Score', col='red')
lines(times, MSUpoints, col='green')
legend('topleft',
       c('UW','MSU'),
       fill=c('red','green')
)
