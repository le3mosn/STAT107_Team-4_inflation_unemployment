min_max <- function(vec) {
  (vec - min(vec)) / (max(vec) - min(vec))
}
#simple function to normalize via min-max method 