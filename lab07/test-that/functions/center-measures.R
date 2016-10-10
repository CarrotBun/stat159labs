center_measures = function(x){
  median = median(x)
  mean = mean(x)
  return(as.numeric(c("median" = median, "mean" = mean)))
}

# description: computes measures of center such as Median and Mean
# input: a numeric vector
# output: a numeric vector with median and mean