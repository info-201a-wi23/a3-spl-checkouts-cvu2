library("dplyr")
library("ggplot2")
library("scales")
library("stringr")

Riordan_df  <- read.csv("~/Desktop/INFO201/Checkouts_by_Title.csv", stringsAsFactors = FALSE)
       
Top_5_titles <- Riordan_df %>% 
  filter(Title %in% c("The mark of Athena / Rick Riordan.","The son of Neptune / Rick Riordan.","The House of Hades / Rick Riordan.","The blood of Olympus / Rick Riordan.","The serpent's shadow / Rick Riordan."))

ggplot(Top_5_titles)+
  geom_point(aes(x = CheckoutYear, y = Checkouts, color = Title))+
  scale_x_continuous(breaks = seq(0,2023,2))+
  labs( title = "Checkouts of Top Five Titles",
        x = "Checkout Year",
        y = "Checkouts")

