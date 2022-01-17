#Deliverable1

library(tidyverse)

library(dplyr) #load dplyr package

mchcar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #Import and read in the MechaCar_mpg.csv file as a dataframe.

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data  = mchcar_table) #Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mchcar_table)) #Using the summary() function, determine the p-value and the r-squared value for the linear regression model.

#Deliverable2

suspcoil_table <- read.csv(file='Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #Import and read in the Suspension_Coil.csv file as a table.

total_summary <- suspcoil_table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), Std_Dev = sd(PSI), .groups = 'keep') # Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.

lot_summary <- suspcoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI), .groups = 'keep') # Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column.

#Deliverable3

t.test(suspension_table$PSI,mu = 1500) # Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

lot1 <- subset(suspension_table, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension_table, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension_table, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

