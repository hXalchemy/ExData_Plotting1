
df <- read.csv("cleaned_df.csv")

#vars for plotting
Global_active_power <- as.numeric(df$Global_active_power)
num_date = strptime(df$dt, "%Y-%m-%dT%H:%M:%S")
sm1 <- as.numeric(df$Sub_metering_1)
sm2 <- as.numeric(df$Sub_metering_2)
sm3 <- as.numeric(df$Sub_metering_3)

png("plot1.png", width = 480 , height = 480)
hist(Global_active_power, xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", col = "red")
dev.off()