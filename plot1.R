mydata = read.csv("household_power_consumption.txt",skip=66637,nrows=2880, na.strings="?",sep = ";",header = FALSE,stringsAsFactors = FALSE)
names(mydata) <- names(read.csv("household_power_consumption.txt", nrows=1,sep=";"))
mydata$Date <- as.Date(mydata$Date, format="%d/%m/%y")
data$Time <- strptime(data$Time, format="%H:%M:%S")
png(filename = "plot1.png",width = 480, height = 480, units = "px")
hist(mydata$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
