plot(newdata$Date,newdata$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")

lines(newdata$Date,newdata$Sub_metering_2,col="red")

lines(newdata$Date,newdata$Sub_metering_3,col="blue")

legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=c(2.5,2.5,2.5),col=c("black","red","blue"))

dev.copy(png,'plot3.png',width = 480, height = 480)

dev.off()