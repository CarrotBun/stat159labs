spread_measures = function(x){
  return(c("range" = range(x), "IQR" = IQR(x), "Std Dev" = sd(x)))
}

# description: computes measures of spread such as Range, IQR, Std Dev
#input: a numeric vector
# output: a numeric vector with range, iqr, and stdev
