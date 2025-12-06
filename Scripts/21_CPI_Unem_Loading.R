BS_unemployment <- read.csv("data/bachelors_unemployment.csv")
HS_unemployment <- read.csv("data/HS_and_under_unemployment.csv")
raw_CPI <- read.csv("data/CPI_sticky.csv")[289:693,]

#combine the above into one dataframe

unem_percent <- cbind(BS_unemployment[1], # date: monthly, between 1992-01-01 and 2025-09-01
                      BS_unem = BS_unemployment[[2]],
                      HS_unem = HS_unemployment[[2]],
                      CPI_sticky = raw_CPI[[2]])
#convert into Date object for plotting
unem_percent$observation_date <- as.Date(unem_percent$observation_date, format = "%Y-%m-%d")

#same as above
