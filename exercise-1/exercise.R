# Exercise 1: Data Frame Practice

# Install devtools package: allows installations from GitHub
install.packages('devtools')

# Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package

library(fueleconomy)

# You should have have access to the `vehicles` data.frame

View(vehicles)

# Create a data.frame of vehicles from 1997

# we are getting the rows in vehicles where the coloum in 1997 (not specifying the coloumn since theres nothing on the other side of the ,)


vehicles.1997 <- data.frame(vehicles[vehicles$year == 1997,])

vehicles.1997

View(vehicles.1997)

# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame

unique(vehicles.1997$year)


# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city

two.wheel.20 <- vehicles[vehicles$drive == "2-Wheel Drive" & vehicles$cty > 20,]

two.wheel.20

# why do you not have to always use data.frame to create one

# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg?

worst.hwy.mpg <- two.wheel.20$id[two.wheel.20$hwy == min(two.wheel.20$hwy)]

# Write a function that takes a `year` and a `make` as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year

MakeYearFilt


# What was the most efficient honda model of 1995?


data("USPersonalExpenditure")

View(USPersonalExpenditure)

us.exp <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(us.exp)

# Why are they so strange?

# What are the row names of your dataframe?
rownames(us.exp)

# Create a column "category" that is equal to your rownames
us.exp$category <- rownames(us.exp)

# How much money was spent on personal care in 1940?
care.1940 <- us.exp['Personal Care', 'X1940']

# How much money was spent on Food and Tobacco in 1960
food.1960 <- us.exp['Food and Tobacco', 'X1960']

# What was the highest expenditure category in 1960?
highest.1960 <- us.exp$category[us.exp$X1960 == max(us.exp$X1960)]

View(us.exp)