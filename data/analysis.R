
library(dplyr)
library(readr)
library(ggplot2)
library(ggthemes)
theme_set(theme_grey())
# create colour palette
colours <- ptol_pal()(2)

# load-data
data <- read_csv(here::here("gillespie.csv"), col_types = "cdiddd")  

# recode-data
data <- data %>% 
  mutate(system_size = recode(system_size, 
                              large = "A. 1000 total sites", 
                              small = "B. 100 total sites")) 

# plot-gillespie
data %>%
  ggplot(aes(x = time)) + 
  geom_hline(aes(yintercept = mean), lty=2, col=colours[2]) + 
  geom_hline(aes(yintercept = minus_sd), lty=2, col=colours[2]) + 
  geom_hline(aes(yintercept = plus_sd), lty=2, col=colours[2]) + 
  geom_line(aes(y = n), col=colours[1]) +
  facet_wrap(~system_size, scales = "free_y") 
