#### 1. Function to remove NA from a vector

NA_RM = function(X) (X[-which(is.na(X) == TRUE)])

## TEST
Y = c(seq(1:10), NA)
Y

NA_RM(Y)

#### 2. Function that computes factorial

factorial <- function(x){
  y <- 1
  for(i in 1:x){
    y <-y*((1:x)[i])
  }
  print(y)
}
## TEST

factorial(4)

### 3.

Order_Desc <- function(x){
  Do something
  return(new_variable)
}