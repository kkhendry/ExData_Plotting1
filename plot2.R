taball <- read.table("household_power_consumption.txt", sep = ";", header=TRUE)
tab21 = taball[taball[, "Date"]=="1/2/2007", ]
tab22 = taball[taball[, "Date"]=="2/2/2007", ]
tab = rbind(tab21, tab22)
DateTime <- paste(tab[, "Date"], tab[, "Time"])
tab <- cbind(DateTime, tab[, 3:9])
x <- strptime(tab[, "DateTime"], "%d/%m/%Y  %H:%M:%S")
plot(x, as.numeric(as.character(tab[, "Global_active_power"])), type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png, file = "plot2.png")
dev.off()
