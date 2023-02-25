
library("dplyr")
library("ggplot2")
library("scales")
library("stringr")

Riordan_df  <- read.csv("~/Desktop/INFO201/Checkouts_by_Title.csv", stringsAsFactors = FALSE)

Riordan_titles <- unique(Riordan_df$Title)

ggplot(data = Riordan_df)+
  geom_point(aes(x = CheckoutYear, y = Riordan_titles))+
  scale_x_continuous(breaks = seq(2000,2023,2))

Percy_Jackson <- str_detect(Riordan_titles, "Percy Jackson")
Checkouts[str_detect(Riordan_titles, "Percy Jackson")]

View(Percy_Jackson)

