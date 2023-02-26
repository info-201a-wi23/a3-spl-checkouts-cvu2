# What is the average number of checkouts for each item?
# What is the month or year with the most/least checkouts for a book that you're interested in?
# What is the month or year with the most/least checkouts for ebooks?
# How has the number of print book checkouts changed over time?

library("dplyr")

Riordan_df  <- read.csv("~/Desktop/INFO201/Checkouts_by_Title.csv", stringsAsFactors = FALSE)

summary(Riordan_df)

 Riordan_titles <- unique(Riordan_df$Title)
 print(Riordan_titles)
 
num_checkouts <- sum(Riordan_df$Checkouts)


most_checkouts <- Riordan_df %>% 
  filter(Checkouts == max(Checkouts, na.rm = TRUE)) %>% 
  pull(CheckoutYear)


least_checkouts <- Riordan_df %>% 
  group_by(Checkouts) %>% 
  filter(Checkouts == min(Checkouts, na.rm = TRUE)) %>% 
  pull(MaterialType)



