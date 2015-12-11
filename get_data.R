#### Get data ####
library(devtools)

#### penis ####
# Site broke my script :(

#### Game of Thrones ####
library(dplyr)
library(tRakt)

gameofthrones <- trakt.get_all_episodes("game-of-thrones")
gameofthrones <- select(gameofthrones, -available_translations, epnum, zrating.season)
use_data(gameofthrones, overwrite = TRUE)

#### Popular shows ####

popularshows <- trakt.shows.popular(100, extended = "full") %>%
                  select(-available_translations)
use_data(popularshows, overwrite = TRUE)

#### Popular movies ####

popularmovies <- trakt.movies.popular(100, extended = "full") %>%
                   select(-available_translations)
use_data(popularmovies, overwrite = TRUE)