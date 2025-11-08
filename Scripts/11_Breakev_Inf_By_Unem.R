
fred_inf_y <- fred_inflation %>%
  mutate(Year = year(as.Date(observation_date))) %>%
  group_by(Year) %>%
  summarise(Inflation = mean(T10YIE, na.rm = TRUE), .groups = "drop")

fred_unem_y <- fred_unemploy %>%
  mutate(Year = year(as.Date(observation_date))) %>%
  group_by(Year) %>%
  summarise(Unemployment = mean(UNRATE, na.rm = TRUE), .groups = "drop")

fred_data <- inner_join(fred_inf_y, fred_unem_y, by = "Year") %>% arrange(Year)

