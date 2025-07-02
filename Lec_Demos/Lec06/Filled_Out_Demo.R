library(tidyverse)

### HELPER FUNCTION; DO NOT EDIT
## What this function does is take a vector of brightness values,
## construct a mean-centered matrix, and plot to obtain an image

image_gen_ggplot <- function(x) {
  vect <- (x[-1] %>% as.numeric) / 255
  as.im <- matrix(vect,
                  nrow = 28,
                  byrow = T)
  as.im <- scale(as.im, scale = F)
  
  as.im[nrow(as.im):1,] %>%
    as.data.frame() %>%
    rowid_to_column(var = 'y') %>%
    pivot_longer(
      -y,
      names_to = 'x',
      values_to = "brightness"
    ) %>%
    mutate(x = parse_number(x)) %>%
    ggplot(aes(x = x, y = y, fill = brightness)) +
    geom_raster() +
    theme_void() +
    scale_fill_gradient2(low="white", high="black", guide="none") +
    theme(
      panel.border = element_rect(linewidth = 1,
                                  fill = NA)
    )
}
###

mnist <- read.csv("data/mnist_new.csv")

which_row <- 1 ## which row should we explore?
num_dim <- 9   ## how many dimensions should we use for reduction?

X <- matrix(as.numeric(mnist[which_row,][-1]),
            nrow = 28,
            byrow = T)

## Project to num_dim dimensions
XC <- X %>% scale(scale = FALSE)
X_red <- XC %*% prcomp(X)$rotation[,1:num_dim]
X_rec <- X_red %*% t(prcomp(X)$rotation[,1:num_dim])

## Examine the original image
c(0, as.vector(t(X))) %>% image_gen_ggplot()

## Examine the reconstructed image
c(0, as.vector(t(X_rec))) %>% image_gen_ggplot()

## Check that the reconstruction has lower rank
qr(X)$rank
qr(X_rec)$rank

## If we wanted to, we could make a screeplot:
s_k <- prcomp(X)$sdev^2 / sum(prcomp(X)$sdev^2)
data.frame(k = 1:ncol(X), y = s_k) %>%
  ggplot(aes(x = k, y = s_k)) + 
  geom_point(size = 3) + geom_line(linewidth = 0.5) +
  theme_minimal() +
  xlab("dimension") + ylab("prop. of tot. variance")  +
  ggtitle("Screeplot")


## An alternative to a screeplot displays the total proportion of variance
## captured by the first k dimensions:

tot_var <- (prcomp(X)$sdev^2 / sum(prcomp(X)$sdev^2)) %>% cumsum()
data.frame(k = 1:ncol(X), y = tot_var) %>%
  ggplot(aes(x = k, y = tot_var)) + 
  geom_point(size = 3) + geom_line(linewidth = 0.5) +
  theme_minimal() +
  xlab("dimension") + ylab("prop. of tot. variance")  +
  ggtitle("Cumulative Variance Plot")

## Note that around 9 or 10 dimensions is, in fact, sufficient.


