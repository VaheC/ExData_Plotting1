furl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

temp<- tempfile()

download.file(furl,temp)

elec <- read.table(unz(temp, "household_power_consumption.txt"),sep=";",stringsAsFactor=F,head=TRUE,na.strings="?")

elecnew<-elec[complete.cases(elec),]

data<-elecnew[,-2]

data$Date<-strptime(paste(elecnew$Date,elecnew$Time),"%d/%m/%Y %H:%M:%S")

newdata<-subset(data,Date>=as.POSIXct("2007-02-01 00:00:00") & Date<as.POSIXct("2007-02-03 00:00:00"))

