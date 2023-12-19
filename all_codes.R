#1#Write an R script that combines multiple logical conditions to filter elements from a list (or array) and Create a for loop to calculate the sum, average, minimum and maximum of the first 10 natural numbers.
# Combine logical conditions and perform calculations
numbers <- 1:10
result <- c()

for (num in numbers) {
  if (num %% 2 == 0 & num %% 3 == 0) {
    result <- c(result, num)
  }
}



#2# Calculate sum, average, minimum, and maximum of the numbers divisible by both 2 and 3
sum_result <- sum(result)
average_result <- mean(result)
minimum_result <- min(result)
maximum_result <- max(result)

print(paste("Sum of numbers divisible by both 2 and 3:", sum_result))
print(paste("Average of numbers divisible by both 2 and 3:", average_result))
print(paste("Minimum of numbers divisible by both 2 and 3:", minimum_result))
print(paste("Maximum of numbers divisible by both 2 and 3:", maximum_result))



#3#Write an R script that creates a dataframe and filters rows based on a specific condition using subsetting. Also, use a for loop to iterate over a numeric vector and create a new vector containing the squared values of each element.
# Create a dataframe
data <- data.frame(numbers = 1:10)

# Filter rows based on a condition (e.g., squared values greater than 50)
squared_values <- c()

for (num in data$numbers) {
  if (num^2 > 50) {
    squared_values <- c(squared_values, num^2)
  }
}

# Display squared values greater than 50
print("Squared values greater than 50:")
print(squared_values)



#4#Write an R script that creates a multidimensional array and demonstrates how to perform array slicing to extract a specific subarray. Also, use a for loop to iterate over a numeric vector and create a new vector Addition of two vectors.
# Create a multidimensional array
multidim_array <- array(1:27, dim = c(3, 3, 3))

# Perform array slicing to extract a specific subarray (e.g., slice from first matrix)
subarray <- multidim_array[,,1]

print("Subarray:")
print(subarray)

# Iterate over a numeric vector and create a new vector containing the addition of two vectors
vector1 <- c(1, 2, 3)
vector2 <- c(4, 5, 6)
sum_vector <- vector1 + vector2

print("Sum of two vectors:")
print(sum_vector)



#5##Write an R script that creates a list (or array) of integers and performs the following operations: append, insert, delete, display min, max, sum and average and find any specific element.
# Create a list of integers
integer_list <- list(3, 6, 9, 12, 15)

# Append a new element
integer_list[[6]] <- 18

# Insert a new element at a specific index
integer_list <- c(integer_list[1:3], list(7), integer_list[4:length(integer_list)])

# Delete an element
integer_list <- integer_list[-4]

# Display min, max, sum, average
minimum <- min(unlist(integer_list))
maximum <- max(unlist(integer_list))
sum_values <- sum(unlist(integer_list))
average <- mean(unlist(integer_list))

print(paste("Minimum:", minimum))
print(paste("Maximum:", maximum))
print(paste("Sum:", sum_values))
print(paste("Average:", average))

# Find a specific element
specific_element <- integer_list[[3]]
print(paste("Specific Element:", specific_element))



#6#Write an R script that takes a user-input number and uses an if/else statement to determine whether it is positive, negative, or zero. Take some numbers from users and store in x and y vectors to plot any kind of graph using it.
run <- function(){
a <- as.integer(readline(prompt = "Enter a Number: "))

if(is.na(a)){
  printf("Invalid")
}else if(a > 0){
  print("positive")
}else if( a == 0){
  print("zero")
}else{
  print("negative")
}



x_str <- readline(prompt = "Enter: ")
y_str <- readline(prompt = "Enter: ")

x <- as.numeric(strsplit (x_str, " ") [[1]])
y <- as.numeric(strsplit (y_str, " ") [[1]])
x
y
boxplot(x, y)
}
run()




7# Write an R script to read a CSV file named into a dataframe and display the first few rows, summary, information of dataset. Display the data from csv in line, scatter, histogram and dot plot.
# Read CSV file into a dataframe
#HT WT AGE
data <- read.csv("HT-WT-Age.csv")

# Display the first few rows of the dataframe
head(data)

# Summary of dataset
summary(data)

# Information about the dataset
str(data)

# Line plot
plot(data$HT, type = "l")

# Scatter plot
plot(data$HT, data$WT)

# Histogram
hist(data$AGE)

# Dot plot
dotchart(data$HT)



8#Implement a nested if/else statement to classify a given number as odd or even and, within each category, as positive, negative, or zero. Display the data from csv in line, scatter, histogram and dot plot.
# Assuming 'data' dataframe and 'HT' as the column of interest

# Function to classify a number
classify_number <- function(x) {
  if (x %% 2 == 0) {
    print("Even")
    if (x > 0) {
      print("Positive")
    } else if (x < 0) {
      print("Negative")
    } else {
      print("Zero")
    }
  } else {
    print("Odd")
    if (x > 0) {
      print("Positive")
    } else if (x < 0) {
      print("Negative")
    } else {
      print("Zero")
    }
  }
}

# Apply function to column
sapply(data$HT, classify_number)

# Plotting
# Line plot
plot(data$HT, type = "l")

# Scatter plot
plot(data$HT, data$WT)

# Histogram
hist(data$HT)

# Dot plot
dotchart(data$HT)




9#Use the appropriate R package to read data from an Excel file ("data.xlsx") and print 5-point summary of the dataframe along with box-whisker plot and dot plot.
# Load necessary package for reading Excel files
library(readxl)

# Read data from Excel file
excel_data <- read_excel(file.choose())

# Print 5-point summary
summary(excel_data)

# Box-whisker plot
boxplot(excel_data$HT)

#Dot plot
dotchart(excel_data$HT)




10#Write a script that reads data from a CSV file, calculates the average of a specific column, and uses an if/else statement to determine whether the average is above or below a certain threshold. Display the data from csv in line, scatter, histogram and dot plot.
# Read CSV file into a dataframe
data <- read.csv(file.choose())

# Calculate average of a specific column (assuming 'HT')
average <- mean(data$HT)
threshold <- 170

# Determine if the average is above or below a certain threshold (assuming 'threshold')
if (average > threshold) {
  print("Above threshold")
} else {
  print("Below threshold")
}

# Plotting
# Line plot
plot(data$HT, type = "l")

# Scatter plot
plot(data$HT, data$WT)

# Histogram
hist(data$HT)

# Dot plot
dotchart(data$HT)




11#Write an R script to create standardized (Z-) scores for several variables Using the preexisting Drinks.csv data file and Display the data from drinks.csv using line graph, scatter plot, histogram and dot plot.
data <- read.csv(file.choose())
selected_var<-c("beer_servings","spirit_servings","wine_servings","total_litres_of_pure_alcohol")
zscore<-scale(data[,selected_var])
data[paste(selected_var,"Z-score")]<-zscore
write.csv(data,"Drinks.csv",row.names=FALSE)
print("Z-score is generated")

# Display data using line graph, scatter plot, histogram, and dot plot
# Line plot
plot(data$beer_servings, type = "l")

# Scatter plot
plot(data$beer_servings, data$spirit_servings)

# Histogram
hist(data$beer_servings)

# Dot plot
dotchart(data$beer_servings)



12#Write an R script to run Frequencies to explore the distributions of several variables Using the preexisting Census.csv data file and display the data from csv file in line graph, scatter plot, histogram and dot plot.
# Read Census.csv file into a dataframe
census_data <- read.csv(file.choose())
names(census_data)
# Run Frequencies to explore distributions of several variables
# Display data using line graph, scatter plot, histogram, and dot plot
# Line plot
plot(census_data$age, type = "p")

# Scatter plot
plot(census_data$age, census_data$final.weight)

# Histogram
hist(census_data$age)

# Dot plot
dotchart(census_data$age)




13#Write an R script to create two way cross tabulations to explore the relationship between several variables and to use the Chart Builder to visualize the relationship Using the preexisting Census.csv data file.
# Assuming 'Census.csv' contains necessary data

# Read Census.csv file into a dataframe
census_data <- read.csv(file.choose())
str(census_data)
# Create two-way cross tabulations to explore relationships between variables
# Use Chart Builder to visualize the relationship

# Example:
# Create a cross-tabulation
cross_table <- table(census_data$age, census_data$final.weight)

# Visualize using Chart Builder or custom plot functions
# For example, bar plot
barplot(cross_table)





14##Write an R script to visualize the relationship between two scale variables creating scatter plots and to quantify this relationship with the correlation coefficient using census.csv data file.
# Assuming 'Census.csv' contains necessary data

# Read Census.csv file into a dataframe
census_data <- read.csv("Census.csv")

# Visualize the relationship between two scale variables using scatter plots
# Assuming 'variable1' and 'variable2' are columns of interest
plot(census_data$variable1, census_data$variable2)

# Quantify the relationship with the correlation coefficient
correlation <- cor(census_data$variable1, census_data$variable2)
print(correlation)




15#Write an R script to run the Independent-Samples T Test, to interpret the output and visualize the results with an error bar chart. Using the preexisting Census.csv data file.
# Assuming 'Census.csv' contains the necessary columns

# Read dataset
census_data <- read.csv("Census.csv")

# Run Independent-Samples T Test
t_test_result <- t.test(variable1 ~ categorical_variable, data = census_data)

# Interpretation of T-test output
print(t_test_result)

# Visualize results with an error bar chart
library(ggplot2)
ggplot(census_data, aes(x = categorical_variable, y = variable1, fill = categorical_variable)) +
  geom_bar(stat = "summary", fun = "mean", position = "dodge") +
  geom_errorbar(stat = "summary", fun.data = "mean_cl_normal", position = "dodge", width = 0.5) +
  labs(x = "Categorical Variable", y = "Variable 1 Mean") +
  ggtitle("Error Bar Chart")




16#Write an R script to use One-Way ANOVA with post hoc tests to explore the relationship between several variables Using the preexisting data file Census.csv and represent it using any two suitable graphs.
# Assuming 'Census.csv' contains necessary columns for ANOVA

# Perform One-Way ANOVA
library(stats)

# Read the data
data <- read.csv(file.choose())
names(data)
# Assuming 'variable1' is the variable of interest and 'categorical_variable' is the grouping variable
anova_result <- aov(data$age ~ data$workclass, data = data)
summary(anova_result)

# Post hoc tests (e.g., Tukey's HSD)
posthoc <- TukeyHSD(anova_result)
print(posthoc)

# Visual representation using suitable graphs
# Boxplot
boxplot(data$age ~ data$workclass, data = data,
        main = "Boxplot of Variable1 by Categorical Variable",
        xlab = "Categorical Variable",
        ylab = "Variable1")

# Bar plot
barplot(table(data$workclass),
        main = "Bar Plot of Categorical Variable",
        xlab = "Categorical Variable",
        ylab = "Frequency")






17#Write an R script that creates a dataframe and filters rows based on a specific condition using subsetting. use a for loop to iterate over two numeric vector and create a new vector containing the sum values of each element, and represent it using any two suitable graphs.

data<- read.csv(file.choose())
# Create a dataframe and filter rows based on a specific condition
filtered_data <- subset(data, data$workclass == "desired_condition")

# Iterate over two numeric vectors and create a new vector containing the sum values of each element
numeric_vector1 <- c(1, 2, 3, 4, 5)
numeric_vector2 <- c(6, 7, 8, 9, 10)
sum_vector <- numeric_vector1 + numeric_vector2

# Represent the new vector using suitable graphs (e.g., line plot and histogram)
plot(sum_vector, type = "l", xlab = "Index", ylab = "Sum", main = "Line Plot")
hist(sum_vector, xlab = "Sum", main = "Histogram")




18#Write an R script that creates a multidimensional array and demonstrates how to perform array slicing to extract a specific subarray. Also, use line or scatter plot to represent the matrix values visually, and represent it using any two suitable graphs.

# Create a multidimensional array
multidim_array <- array(data = c(1:27), dim = c(3, 3, 3))

# Perform array slicing to extract a specific subarray
subarray <- multidim_array[,,2]

# Visual representation of matrix values using line or scatter plot
plot(subarray, type = "l", xlab = "Index", ylab = "Value", main = "Line Plot")
plot(subarray, xlab = "Column", ylab = "Value", main = "Scatter Plot")





19#Make stacked dotplots of the same variable from csv file provided to you based on the values of one of your categorical variables. For example, if your quantitative variable is GPAs of students, your categorical variable could be gender. Comment on the similarities and differences between the distributions for the different values of your categorical variable.

# Make stacked dotplots based on categorical variable values for a quantitative variable
data <- read.csv(file.choose())
library(ggplot2)

ggplot(data, aes(x = AptitudeTestScore, fill = PlacementStatus)) +
  geom_dotplot(binaxis = "y", stackdir = "center", position = "dodge", binwidth = 1) +
  labs(x = "Quantitative Variable", y = "Count") +
  ggtitle("Stacked Dotplots")




20#Calculate summary measures (mean, standard deviation, first quartile, third quartile and interquartile range) for the variable you graphed above. Do this for the entire data set, as well as for the different groups formed by the categorical variable that you used to divide the data set.
# Calculate summary measures for the entire dataset

data <- read.csv(file.choose())
summary_measures <- summary(data$AptitudeTestScore)

# Print summary measures for the entire dataset
print("Summary measures for the entire dataset:")
print(summary_measures)

# Calculate summary measures by different groups formed by a categorical variable
library(dplyr)
summary_by_group <- data %>%
  group_by(PlacementStatus) %>%
  summarise(
    mean = mean(AptitudeTestScore),
    sd = sd(AptitudeTestScore),
    q1 = quantile(AptitudeTestScore, probs = 0.25),
    median = median(AptitudeTestScore),
    q3 = quantile(AptitudeTestScore, probs = 0.75),
    iqr = IQR(AptitudeTestScore)
  )

# Print summary measures by group
print("Summary measures by group:")
print(summary_by_group)


21#Create a histogram and a dotplot of the data. Comment on any symmetry or skewness and on the presence of clusters and any potential outliers. And draw a box-and-whisker plot for the entire data set.

# Create histogram and dotplot of the data
data <- read.csv(file.choose())
hist(data$AptitudeTestScore, xlab = "AptitudeTestScore", main = "Histogram")
dotchart(data$AptitudeTestScore, labels = rownames(data), cex = 0.7)

# Create box-and-whisker plot for the entire dataset
boxplot(data$AptitudeTestScore, xlab = "AptitudeTestScore", main = "Boxplot")

22#Prepare an appropriate type of frequency distribution table for one of the quantitative variables and then compute relative frequencies and cumulative relative frequencies using census.csv dataset.

# Load the necessary library
library(dplyr)

# Read the dataset
census <- read.csv(file.choose())

# Extract the 'age' variable
ages <- census$age

# Create a frequency table
frequency_table <- table(ages)

# Convert the frequency table to a data frame
frequency_df <- as.data.frame(frequency_table)
names(frequency_df) <- c('Age', 'Frequency')

# Compute relative frequencies
frequency_df$Relative_Frequency <- frequency_df$Frequency / sum(frequency_df$Frequency)

# Compute cumulative relative frequencies
frequency_df$Cumulative_Relative_Frequency <- cumsum(frequency_df$Relative_Frequency)

# Display the frequency distribution table
print(frequency_df)




23#Prepare an appropriate type of frequency distribution table for one of the quantitative variables and then compute relative frequencies and cumulative relative frequencies using Drinks.csv data file.
# Load the necessary library
library(dplyr)

# Read the dataset
data <- read.csv("Drinks.csv")
names(data)
# Extract the 'age' variable
spirit <- data$spirit_servings

# Create a frequency table
frequency_table <- table(spirit)

# Convert the frequency table to a data frame
frequency_df <- as.data.frame(frequency_table)
names(frequency_df) <- c('Spirit', 'Frequency')

# Compute relative frequencies
frequency_df$Relative_Frequency <- frequency_df$Frequency / sum(frequency_df$Frequency)

# Compute cumulative relative frequencies
frequency_df$Cumulative_Relative_Frequency <- cumsum(frequency_df$Relative_Frequency)

# Display the frequency distribution table
print(frequency_df)




24# Load necessary libraries
library(ggplot2)

# Read the data (assuming the data is already loaded into a data frame named Drinks)
# If not, use: Drinks <- read.csv("path/to/Drinks.csv")

# Scatter plot
scatter_plot <- ggplot(Drinks, aes(x = beer_servings, y = spirit_servings)) +
  geom_point() +
  labs(title = "Scatter Plot of Beer Servings vs Spirit Servings",
       x = "Beer Servings",
       y = "Spirit Servings")

# Display the scatter plot
print(scatter_plot)

# Calculate and print the correlation coefficient
correlation_coefficient <- cor(Drinks$beer_servings, Drinks$spirit_servings)
cat("Correlation Coefficient:", correlation_coefficient, "\n")





25#Calculate summary measures (mean, standard deviation, first quartile, third quartile and interquartile range) for the variable you graphed above. Do this for the entire data set, as well as for the different groups formed by the categorical variable that you used to divide the data set using Census.csv data file.


# Read the data
data <- read.csv(file.choose())
print("Summary for Age: ")
summary(data$age)
IQR(data$age)
sd(data$age)
print("Summary For Entire Dataset: ")
summary(data)

sapply(data[, sapply(data, is.numeric)
], sd)
sapply(data[, sapply(data, is.numeric)
], IQR)




26#Use the appropriate R package to read data from an Excel file ("data.xlsx") and print 5-point summary of the dataframe along with box-whisker plot and dot plot using drinks.csv data file.

library(readxl)
excel <- read_excel(file.choose())
str(excel)
summary(a)

data <- read.csv("Drinks.csv")
str(data)
names(data)
boxplot(data$spirit_servings, main = "Box Plot")
plot(data$spirit_servings, type = "p", main = "Dot Plot", xlab = "X-axis label", ylab = "Y-axis label")




27#Write an R script to create standardized (Z-) scores for several variables Using the preexisting Drinks.csv data file and Display the data from census.csv using line graph, scatter plot, histogram and dot plot.

# Read data from Drinks.csv
drinks_data <- read.csv("Drinks.csv")

# Calculating Z-scores for several variables
z_scores <- scale(drinks_data[, c("spirit_servings", "beer_servings", "total_litres_of_pure_alcohol")])

# Displaying data using different plots
plot(drinks_data$spirit_servings, type = "l", col = "blue", xlab = "X", ylab = "Y")
plot(drinks_data$spirit_servings, drinks_data$beer_servings, xlab = "Var1", ylab = "Var2")
hist(drinks_data$total_litres_of_pure_alcohol, xlab = "Var3")
dotchart(drinks_data$spirit_servings, labels = rownames(drinks_data), cex = 0.7)




28#Write an R script to run Frequencies to explore the distributions of several variables Using the preexisting provided .csv data file and display the data from csv file in line graph, scatter plot, histogram and dot plot
# Assuming 'csv_data' is the preexisting CSV data read into a dataframe
csv_data<-read.csv(file.choose())
# Plot line graph
plot(csv_data$HT, type = "l", col = "blue", xlab = "X", ylab = "Y")

# Scatter plot
plot(csv_data$HT, csv_data$WT, xlab = "Var1", ylab = "Var2")

# Histogram
hist(csv_data$AGE, xlab = "Var3")

# Dot plot
dotchart(csv_data$HT, labels = rownames(csv_data), cex = 0.7)




29#Write an R script to obtain summary statistics for scale variables Using the preexisting Drinks.csv data file and visualize it using any two types of graphs.
# Summary statistics for scale variables
# Read data from Drinks.csv
drinks_data <- read.csv(file.choose())
summary_stats <- summary(drinks_data[, c("spirit_servings", "beer_servings")])

# Visualize summary statistics using boxplots
boxplot(drinks_data$spirit_servings, drinks_data$beer_servings, names = c("Var1", "Var2"), col = c("blue", "red"))




30##Write an R script to visualize the relationship between two scale variables from provided data file creating scatter plots and to quantify this relationship with the correlation coefficient.
# Scatter plot for two scale variables
# Read data from census.csv
drinks_data <- read.csv(file.choose())
plot(drinks_data$beer_servings, drinks_data$spirit_servings, xlab = "Var1", ylab = "Var2")

# Calculate correlation coefficient
correlation_coeff <- cor(drinks_data$beer_servings, drinks_data$spirit_servings)
print(paste("Correlation Coefficient:", correlation_coeff))
