## LOAD SOURCE
source("loadData.R");

## CODE FOR plot2.png
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


## CREATE PNG FILE
if(!file.exists("./plot3.png")) {
  dev.copy(device = png, filename = "plot3.png");
  dev.off();
}