png("plot3.png")
#reading
household = read.csv("household_power_consumption.txt",sep=";",stringsAsFactors=FALSE)
#filtering
household$Date = as.Date(household$Date,"%d/%m/%Y")
household_sub = subset(household,Date >= "2007-02-01" & Date<="2007-02-02")
#converting to datetime
household_sub$dateTime = as.POSIXct(paste(household_sub$Date, household_sub$Time), format="%Y-%m-%d %H:%M:%S")
#plotting
plot(household_sub$Sub_metering_1~household_sub$dateTime,type="l",main="",xlab="",ylab="Energy sub meeting")
lines(household_sub$dateTime,household_sub$Sub_metering_2,col="red")
lines(household_sub$dateTime,household_sub$Sub_metering_3,col="blue")
#marking legends
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lty = 1)
dev.off()








