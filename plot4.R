
df <- read.csv("cleaned_df.csv")

#vars for plotting
Global_active_power <- as.numeric(df$Global_active_power)
num_date = strptime(df$dt, "%Y-%m-%dT%H:%M:%S")
sm1 <- as.numeric(df$Sub_metering_1)
sm2 <- as.numeric(df$Sub_metering_2)
sm3 <- as.numeric(df$Sub_metering_3)


png("plot4.png", width = 480 , height = 480)
par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))

plot(num_date, y= Global_active_power, type = "l", ylab = "Global Active Power", xlab ="")

plot(num_date, y= as.numeric(df$Voltage), type = "l", ylab = "Voltage", xlab ="")
mtext('datetime', side=1, line = 3)

plot(x = num_date, y= sm1, type = "l", ylab = "Energy sub metering", ylim = c(0,40), yaxt="n")
lines(x = num_date, y= sm2, type = "l",  col = "red", yaxt="n")
lines(x = num_date, y= sm3, type = "l", col = "blue", yaxt="n")
legend("topright", lty=1, col = c("black","blue","red"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex = 0.6)
axis(2, at=c(10, 20, 30))


plot(num_date, y= as.numeric(df$Global_reactive_power), type = "l", ylab = "Global_reactive_power", xlab ="")
mtext('datetime', side=1, line = 3)
dev.off()
