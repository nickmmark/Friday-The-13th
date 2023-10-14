# Friday-The-13th
There are lots of misleading statistics surrounding Friday the 13th. The fears surrounding this Friday the 13th are some prevalent that they even have a name `triskaidekaphobia`.
Let's have some fun tackling (and debunking) a few problems.


## 1 - How many Friday the 13th's occur in a given year or century?
First, we need to answer some basic questions like how common is Friday the 13th?

Depending on the year, Friday the 13th can occur either once, twice, or three times. But how many times does it occur on average per year?

Using Rstats, we can make a simple function to count the numnber of Friday the 13ths using the `weekday()` function. We can either call this function once (e.g. how many Friday 13ths were there in 2023) or repeatedly (e.g. what's the average number of Friday the 13ths per year over the last century).

```
count_friday_the_13ths <- function(year) {
  dates <- as.Date(paste(year, 1:12, 13, sep = "-"))
  weekdays_vector <- weekdays(dates)
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

for (year in 1923:2023) {
  friday_13th_count <- count_friday_the_13ths(year)
  total_count <- total_count + friday_13th_count
  num_years <- num_years + 1
}

average_count <- total_count / num_years
print(paste("On average, there were", round(average_count, 2), "Friday the 13ths per year over the ", num_years, " year interval"))

```

## 2 - Look at some examples of good & bad biostats that involve Friday the 13th

