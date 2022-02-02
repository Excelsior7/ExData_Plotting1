## LOAD SOURCE
source("loadData.R");

## CODE FOR plot1.png
hist(dt$Global_active_power, 
     xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power", 
     col = "red"
);

## CREATE PNG FILE
if(!file.exists("./plot1.png")) {
  dev.copy(device = png, filename = "plot1.png");
  dev.off();
}
