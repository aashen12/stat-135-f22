# install.packages("tidyverse")
library(ggplot2)
library(dplyr)

# install.packages("gapminder")
library(gapminder) # contains our dataset

gapminder %>% 
  ggplot()

gapminder %>% 
  ggplot(aes(x = year, y = lifeExp))

gapminder %>% 
  ggplot(aes(x = pop, y = gdpPercap, color = continent)) + 
  geom_point()


gapminder %>% 
  filter(pop < 400000000) %>% 
  ggplot(aes(x = pop, y = gdpPercap, color = continent)) + 
  geom_point()


gapminder %>% 
  filter(pop < 400000000) %>% 
  ggplot(aes(x = pop, y = gdpPercap)) + 
  geom_point() + 
  facet_grid(~continent)

gapChina <- gapminder %>% dplyr::filter(country == "China")

# Scatterplot
ggplot(gapChina, aes(x = year, y = lifeExp)) + geom_point() +
  ggtitle("China's life expectancy")



# Line (time series) plot
ggplot(gapChina, aes(x = year, y = lifeExp)) + geom_line() +
  ggtitle("China's life expectancy")



# Boxplot
ggplot(gapminder, aes(x = factor(year), y = lifeExp)) + geom_boxplot() +
  ggtitle("World's life expectancy")



# Histogram
gapminder2007 <- gapminder %>% filter(year == 2007)
ggplot(gapminder2007, aes(x = lifeExp)) + geom_histogram(binwidth = 5) +
  ggtitle("World's life expectancy")




