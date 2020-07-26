png("plot1.png")
#reading data
household = read.csv("household_power_consumption.txt",sep=";",stringsAsFactors=FALSE)
#filtering
household$Date = as.Date(household$Date,"%d/%m/%Y")
household_sub = subset(household,Date >= "2007-02-01" & Date<="2007-02-02")
#plotting
hist(as.numeric(household_sub$Global_active_power),col="red",main = "Global Active Power",xlab = " Global Active Power (Kilowatts) ")
dev.off()







