## LOAD SOURCE
source("loadData.R");

## CODE FOR plot4.png

### META PARAMETERS SETTING
par(mfrow = c(2,2));
par(mar = c(4.3,1,4.3,1));


# TOP LEFT
plot(dt$Date_and_Time, 
     dt$Global_active_power, 
     xlab = "2007/02/01-2007/02/02", 
     ylab = "Global Active Power (kilowatts)", 
     type = "l", 
     col = "blue"
);
# TOP RIGHT
plot(dt$Date_and_Time, 
     dt$Voltage, 
     xlab = "datetime", 
     ylab = "Voltage",
     type = "l", 
     col = "grey"
);

# BOTTOM LEFT
plot(dt$Date_and_Time, 
     dt$Sub_metering_1, 
     xlab = "2007/02/01-2007/02/02", 
     ylab = "Energy sub metering", 
     type = "l", 
     col = "black"
);

points(x = dt$Date_and_Time, y=dt$Sub_metering_2, type = "l", col = "red");
points(x = dt$Date_and_Time, y=dt$Sub_metering_3, type = "l", col = "blue");

legend("topright", 
       legend = expression(Sub_metering_1, Sub_metering_2, Sub_metering_3), 
       pch = c("_", "_", "_"), 
       col = c("black", "red", "blue")
);

# BOTTOM RIGHT
plot(dt$Date_and_Time, 
     dt$Global_reactive_power, 
     xlab = "datetime", 
     ylab = "Global reactive power",
     type = "l", 
     col = "green"
);

### META PARAMETERS DEFAULT SETTING
par(mfrow = c(1,1));
par(mar = c(5.1,4.1,4.1,2.1));

## CREATE PNG FILE
if(!file.exists("./plot4.png")) {
  dev.copy(device = png, filename = "plot4.png");
  dev.off();
}