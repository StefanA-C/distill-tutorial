library(tidyverse)
library(ggthemes)

car_plot <- mtcars %>% 
  select(mpg, wt) %>% 
  ggplot(aes(wt,mpg))+
  geom_point()+
  geom_smooth(method = "lm", formula = y~x, se = F)+
  theme_clean()+
  labs(title = "this is the title",
       subtitle = "this is the subtitle",
       x= "you guessed it",
       y = "news flash")

write_rds(car_plot, "car-plot.rds")

