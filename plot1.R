hist(newdata$Global_active_power,col="red",main="Global_active_power", xlab="Global_active_power (kilowatts)")

dev.copy(png,'plot1.png',width = 480, height = 480)

dev.off()