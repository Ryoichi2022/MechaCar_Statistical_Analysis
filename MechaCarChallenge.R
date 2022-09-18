# Deliverable 1

library(dplyr) # Load dplyr package

mechacar_mpg <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F) # Import csv file

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg) # Perform linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg)) # Determine p-value r2-value


# Deliverable 2

coils <- read.csv('Suspension_Coil.csv', stringsAsFactors = F) # Import csv file

total_summary <- coils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) # Create summary table
lot_summary <- coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep') # Create lot summary


# Deliverable 3

t.test(log10(coils$PSI), mu=mean(log10(coils$PSI))) # t-test comparing all mfg lots against mean PSI

# t-test comparing each mfg lot against mean PSI
t.test(log10(subset(coils, Manufacturing_Lot == "Lot1")$PSI), mu=mean(log10(coils$PSI)))
t.test(log10(subset(coils, Manufacturing_Lot == "Lot2")$PSI), mu=mean(log10(coils$PSI)))
t.test(log10(subset(coils, Manufacturing_Lot == "Lot3")$PSI), mu=mean(log10(coils$PSI)))
