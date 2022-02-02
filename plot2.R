## LOAD SOURCE
source("loadData.R");

## CODE FOR plot2.png
plot(dt$Date_and_Time, 
     dt$Global_active_power, 
     xlab = "2007/02/01-2007/02/02", 
     ylab = "Global Active Power (kilowatts)", 
     type = "l", 
     col = "blue"
);

## CREATE PNG FILE
if(!file.exists("./plot2.png")) {
  dev.copy(device = png, filename = "plot2.png");
  dev.off();
}