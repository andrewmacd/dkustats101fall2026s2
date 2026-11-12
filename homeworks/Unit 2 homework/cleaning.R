london.airbnb <- read.csv("clean_df.csv")

library(tidyverse)

london.airbnb.subsample <- london.airbnb |> 
  slice_sample(n=200) |> 
  mutate(price_clean = parse_number(price), .after = price)


write.csv(london.airbnb.subsample, "london.airbnb.csv")