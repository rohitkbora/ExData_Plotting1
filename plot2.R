data<-read.csv("C:\\Users\\Rohit Bora\\Documents\\exdata_data_household_power_consumption\\household_power_consumption.txt",sep=";",skip=66636,nrows = 2880,header = TRUE)
names(data)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
data$dt<-as.POSIXct(paste(strptime(data$Date,"%d/%m/%Y"),data$Time,sep=" "))
png(file="plot2.png")
with(data,plot(dt,Global_active_power,type="l",ylab="Global Active Power(kilowatts)",xlab=""))
dev.off(5)
