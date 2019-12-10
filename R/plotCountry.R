# Test as factor
# gapminder %>% ggplot(aes(x = log10(gdpPercap), y = lifeExp, size = pop))+
#   geom_point(alpha = .25)+
#   geom_point(data = gap_D, aes(color = as.factor(year)))+
#   scale_colour_brewer(palette = "Dark2")
# 
# # Test gradient not working cos of discrete
# gapminder %>% ggplot(aes(x = log10(gdpPercap), y = lifeExp, size = pop))+
#   geom_point(alpha = .25)+
#   geom_point(data = gap_D, aes(color = as.factor(year)))+
#   scale_colour_gradient(low = "red", high = "brown")

# work in progress
plotCountry <- function(name) {
  
  gap_country <- gapminder %>% filter(country == name)
  
gapminder %>% ggplot(aes(x = log10(gdpPercap), y = lifeExp, size = pop))+
  geom_point(alpha = .25)+
  geom_point(data = gap_country, aes(color = year))
  
}

# gap_D %>% ggplot(aes(x = log10(gdpPercap), y = lifeExp, size = pop, color = year))+
  # geom_point(alpha = .25)+
  
  