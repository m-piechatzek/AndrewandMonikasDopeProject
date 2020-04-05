spotify_songs <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-01-21/spotify_songs.csv')
nobel_winners <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-05-14/nobel_winners.csv")


# Spotify Songs 2019

# Association rules

# Hierarchical Clustering


# Nobel Prize Winners

# Simple Linear Regression

# Created an age_received column

nobel_winners$new_birth = format(as.Date(nobel_winners$birth_date, format="%Y-%m-%d"), "%Y") # get the year
nobel_winners$new_birth = as.numeric(nobel_winners$new_birth) # convert year from char to double

nobel_winners$new_birth[is.na(nobel_winners$new_birth)] = 0 # replace all NA with 0
# Age received prize
nobel_winners$age_received = ifelse( nobel_winners$new_birth == 0, 0, nobel_winners$prize_year - nobel_winners$new_birth) 
# Filter out only ages below 40
filter_noble = filter(nobel_winners, age_received > 0 & age_received < 40)
#
abline(lm(prize_year ~ age_received, data = filter_noble, xlab = "Prize Year", ylab = "Age of Nominee", main="Simple Linear Regression on Young Adults receiving awards over time"), col = "red")

