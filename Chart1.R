
library("dplyr")
library("ggplot2")
library("scales")

Riordan_df  <- read.csv("~/Desktop/INFO201/Checkouts_by_Title.csv", stringsAsFactors = FALSE)

ggplot(data = Riordan_df)+
  geom_col(aes(x = MaterialType, y = Checkouts, fill = MaterialType))+
  labs(title = "Number of Checkouts in Correlation to Type of Medium",
       x = "Material Type",
       y = "Checkouts",) 

