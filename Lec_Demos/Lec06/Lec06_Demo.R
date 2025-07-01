##################################################
#### PSTAT 100: Summer Session A, 2025
#### Instructor: Ethan P. Marzban
#### Lecture 06 Demo: PCA and Reconstruction Error
##################################################

library(tidyverse)

### HELPER FUNCTION; DO NOT EDIT
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

###~~ BEGIN DEMO HERE
