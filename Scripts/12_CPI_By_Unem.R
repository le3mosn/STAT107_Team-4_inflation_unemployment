year_cols <- grep("^(19|20)\\d{2}$", names(wb_inflation), value = TRUE)

wb_inf_us <- wb_inflation %>%
  filter(`Country Code` == "USA") %>%
  pivot_longer(all_of(year_cols), names_to = "Year", values_to = "Inflation") %>%
  mutate(Year = as.integer(Year))

wb_unem_us <- wb_unemploy %>%
  filter(`Country Code` == "USA") %>%
  pivot_longer(all_of(year_cols), names_to = "Year", values_to = "Unemployment") %>%
  mutate(Year = as.integer(Year))

wb_data <- inner_join(wb_inf_us, wb_unem_us, by = "Year") %>% arrange(Year)

