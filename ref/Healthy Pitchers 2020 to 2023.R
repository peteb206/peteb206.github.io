library(jsonlite)
library(dplyr)
library(bigrquery)
library(DBI)

bq <- dbConnect(bigquery(), project = "pjb-sports-data", dataset = "mlb")

# Pitcher Innings
base.url <- "https://www.fangraphs.com/api/leaders/major-league/data"
query.params <- list(age = "", pos = "all", stats = "pit", lg = "all",
                     qual = "0", season = "2023", season1 = "2020",
                     startdate = "", enddate = "", month = "0", hand = "",
                     team = "0", pageitems = "2000000000", pagenum = "1",
                     ind = "0", rost = "0", players = "", type = "8",
                     sortdir = "default", sortstat = "WAR")
sep = "?"
url <- base.url
for (param in names(query.params)) {
  url <- paste(url, sep, param, "=", query.params[[param]], sep = "")
  sep = "&"
}
healthy.pitchers.df <- fromJSON(url)$data %>%
  mutate(playerid = as.character(playerid)) %>%
  anti_join(dbGetQuery(bq, 'SELECT
                              DISTINCT playerId playerid
                            FROM
                              `mlb.fangraphs_injuries`'),
            by = "playerid") %>%
  select(PlayerName, WAR, IP) %>%
  mutate(WAR = round(WAR, 1)) %>%
  rename(Pitcher = PlayerName, fWAR = WAR)
  