if(!exists("LOADDATA")) {
  
  LOADDATA <- TRUE;
  
  ## LOAD PACKAGES 
  library(data.table);
  
  ## GET AND UNZIP DATA FILE WE WILL BE WORKING WITH
  if(!file.exists("household_power_consumption.txt")) {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "hpc.zip");
    unzip("hpc.zip");
  }
  
  ## READ UNZIPPED DATA FILE AND SUBSET ROWS OF INTEREST
  dt <- fread("household_power_consumption.txt");
  dt <- dt[Date == "1/2/2007" | Date == "2/2/2007"];
  
  ## IMPROVE COLUMNS ACCURACY
  Date_and_Time <- dmy_hms(paste(dt$Date, dt$Time, sep = "T"));
  dt <- dt[, lapply(.SD, as.numeric), .SDcols = 3:9];
  dt <- cbind(Date_and_Time, dt);
  
}

