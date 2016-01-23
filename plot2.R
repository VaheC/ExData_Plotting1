plot(newdata$Date,newdata$Global_active_power,type="l",xlab="",ylab="Global_active_power (kilowatts)")

dev.copy(png,'plot2.png',width = 480, height = 480)

dev.off()