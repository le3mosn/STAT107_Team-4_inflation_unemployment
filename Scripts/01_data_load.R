fred_inflation <- read_csv("data/T10YIE.csv")
fred_unemploy  <- read_csv("data/UNRATE.csv")
wb_inflation   <- read_csv("data/API_FP.CPI.TOTL.ZG_DS2_en_csv_v2_130173.csv", skip=4)
wb_unemploy <- read_csv("data/API_SL.UEM.TOTL.NE.ZS_DS2_en_csv_v2_125709.csv", skip = 4)
list(fred_inflation = dim(fred_inflation),
     fred_unemploy = dim(fred_unemploy),
     wb_inflation = dim(wb_inflation),
     wb_unemploy = dim(wb_unemploy))
