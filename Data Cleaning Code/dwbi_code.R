library(readxl)
setwd("C:/Users/nitya/Downloads")

#Read in Dataset
actigraph_1 <- read_excel("actigraph_sheet1.xlsx")

#Check data is read in correctly
View(actigraph_1)
head(actigraph_1)
str(actigraph_1)

#check for missing data
sum(is.na(actigraph_1))

#listwise deletion
actigraph_1_cleaned <- na.omit(actigraph_1)
sum(is.na(actigraph_1_cleaned))

install.packages("openxlsx")
library(openxlsx)
#write into the output file
cleaned_excel_file <- "C:/Users/nitya/Downloads/actigraph_sheet_cleaned.xlsx"
write.xlsx(actigraph_1_cleaned, cleaned_excel_file, rowNames = FALSE)
cat("The cleaned data has been saved to:", cleaned_excel_file, "\n")

##################################################################################

liking_data <- read_excel("liking data.xlsx")
#Check data is read in correctly
View(liking_data)
head(liking_data)
str(liking_data)

#check for missing data
sum(is.na(liking_data))

#listwise deletion
liking_data_cleaned <- na.omit(liking_data)
sum(is.na(liking_data_cleaned))

cleaned_excel_file_2 <- "C:/Users/nitya/Downloads/liking data cleaned.xlsx"
write.xlsx(liking_data_cleaned, cleaned_excel_file, rowNames = FALSE)
cat("The cleaned data has been saved to:", cleaned_excel_file_2, "\n")

######################################################################################

#Read in Dataset
actigraph_2 <- read_excel("actigraph_sheet2.xlsx")

#Check data is read in correctly
View(actigraph_2)
head(actigraph_2)
str(actigraph_2)

#check for missing data
sum(is.na(actigraph_2))

#listwise deletion
actigraph_2_cleaned <- na.omit(actigraph_2)
sum(is.na(actigraph_2_cleaned))

install.packages("openxlsx")
#write into the output file
cleaned_excel_file2 <- "C:/Users/nitya/Downloads/actigraph_sheet2_cleaned.xlsx"
write.xlsx(actigraph_2_cleaned, cleaned_excel_file2, rowNames = FALSE)
cat("The cleaned data has been saved to:", cleaned_excel_file2, "\n")