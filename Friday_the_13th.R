## Function to count Friday the 13ths in a given year
count_friday_the_13ths <- function(year) {
  # Create a vector of dates for the 13th day of each month in the given year
  dates <- as.Date(paste(year, 1:12, 13, sep = "-"))
  
  # Use weekdays() function to get the weekdays for each date
  weekdays_vector <- weekdays(dates)
  
  # Count how many of them fall on a Friday (Friday is denoted as "5" in weekdays() function)
  count <- sum(weekdays_vector == "Friday" | weekdays_vector == "5")
  
  return(count)
}

## Example #1: how wany Friday the 13ths occured in the year 2023
year <- 2023  # Replace this with the desired year
friday_13th_count <- count_friday_the_13ths(year)
print(paste("In", year, "there are", friday_13th_count, "Friday the 13ths."))


## Example #2: how many Friday the 13ths occured between two different years
total_count <- 0
num_years <- 0

# Loop through each year in a range (e.g. 1901 to 2000)
for (year in 1923:2023) {
  friday_13th_count <- count_friday_the_13ths(year)
  total_count <- total_count + friday_13th_count
  num_years <- num_years + 1
}

# Calculate the average Friday the 13th occurrences per year over the century
average_count <- total_count / num_years

# Print the result
print(paste("On average, there were", round(average_count, 2), "Friday the 13ths per year over the ", num_years, " year interval"))
