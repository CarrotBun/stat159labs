range_value <- function(x, na.rm = TRUE) {
  if(na.rm == TRUE){
    x = x[!is.na(x)]
  }
  else{
    x = x
  }
  return(max(x) - min(x))
}