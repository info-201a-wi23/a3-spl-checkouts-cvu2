
library("dplyr")
library("ggplot2")
library("scales")

Riordan_df  <- read.csv("~/Desktop/INFO201/Checkouts_by_Title.csv", stringsAsFactors = FALSE)

Riordan_titles <- unique(Riordan_df$Title)

ggplot(data = Top_5_titles)+
  geom_point(aes(x = CheckoutYear, y = Checkouts))+
  scale_x_continuous(breaks = seq(2000,2023,2))
  

Top_5_titles <- Riordan_titles %>% 
  arrange(desc(Checkouts)) %>% 
  group_by(Title) %>% 
  slice(1:5)


