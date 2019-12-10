
plotCountry <- function(name) {
  
  gap_country <- gapminder %>% filter(country == name)
  
gapminder %>% ggplot(aes(x = log10(gdpPercap), y = lifeExp, size = pop))+
  geom_point(alpha = .25)+
  geom_point(data = gap_country, aes(color = year))
  
}
