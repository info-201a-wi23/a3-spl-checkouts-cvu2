
library("dplyr")
library("ggplot2")
library("scales")
library("stringr")

Riordan_df  <- read.csv("~/Desktop/INFO201/Checkouts_by_Title.csv", stringsAsFactors = FALSE)

Avg_checkouts <- Riordan_df %>% 
  group_by(CheckoutMonth) %>% 
  summarise(avg_checkouts = mean(Checkouts))

ggplot(data = Avg_checkouts)+
  geom_line(aes(x = CheckoutMonth, y = avg_checkouts, color = "pink"))+
  scale_x_continuous(breaks = seq(1,12,1))+
  labs( title = "Average Checkouts per Month",
        x = "Month",
        y = "Average Number of Checkouts")
  
