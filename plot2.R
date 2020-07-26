png("plot2.png")
#reading
household = read.csv("household_power_consumption.txt",sep=";",stringsAsFactors=FALSE)
#filtering
household$Date = as.Date(household$Date,"%d/%m/%Y")
household_sub = subset(household,Date >= "2007-02-01" & Date<="2007-02-02")
#converting to datetime
household_sub$dateTime = as.POSIXct(paste(household_sub$Date, household_sub$Time), format="%Y-%m-%d %H:%M:%S")
#plotting
plot(household_sub$Global_active_power ~ household_sub$dateTime,type = "l",ylab = " Global Active Power (Kilowatts) ",main="",xlab="")
dev.off()









