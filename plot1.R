taball <- read.table("household_power_consumption.txt", sep = ";", header=TRUE)
tab21 = taball[taball[, "Date"]=="1/2/2007", ]
tab22 = taball[taball[, "Date"]=="2/2/2007", ]
tab = rbind(tab21, tab22)
tab[, "Date"] <- as.Date(tab[, "Date"], "%d/%m/%Y")
hist(as.numeric(as.character(tab[, "Global_active_power"])), breaks = 12, xlab = "Global Active Power (kilowatts)", col = "red", main = "Global Active Power")
dev.copy(png, file = "plot1.png")
dev.off()
