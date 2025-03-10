library(purrr)

choH <- function(data){
  n <- length(data)
  return(map(1:(n-1),function(.) log(ks.test(head(data,-(n-.)),tail(data,-.))$p.value)))
}

X <- c(rnorm(1000,0,1),rnorm(1000,0.3,1)) 
X %>% choH %>% as.numeric %>% plot
X %>% plot
