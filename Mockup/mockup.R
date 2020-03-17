spotify_songs <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-01-21/spotify_songs.csv')
View(spotify_songs)

# Grab month
spotify_songs$new_date = as.Date(spotify_songs$track_album_release_date)
spotify_songs$new_date
spotify_songs$month = format(spotify_songs$new_date, format="%m")
spotify_songs$month = as.numeric(spotify_songs$month)

# Create year
spotify_songs$year = format(spotify_songs$new_date, format="%Y")
spotify_songs$year = as.numeric(spotify_songs$year)

# Test for Association
songs = spotify_songs
songs = subset(songs, select= c("key","track_popularity", "playlist_genre", "playlist_name"))
assrules = apriori(songs, parameter = list(supp = 0.8, conf = 0.65, maxlen=10))
inspect(sort(assrules, by="lift"))