
glue("The life expectancy of {gap_country} in {gap_year} was {gapminder %>% 
     filter(country == gap_country, year == gap_year) %>% 
     select(lifeExp)} years, copmpared to the average for all countries, {gapminder %>% 
     filter(year == gap_year) %>% 
     summarise(avg = mean(lifeExp))}.")

# Turn it into a function

printLE <- function(gap_country, gap_year){
  
  glue("The life expectancy of {gap_country} in {gap_year} was {gapminder %>% 
       filter(country == gap_country, year == gap_year) %>% 
       select(lifeExp)} years, compared to the average for all countries, {gapminder %>% 
       filter(year == gap_year) %>% 
       summarise(avg = mean(lifeExp))}.")
  }

printLE("Afghanistan", 2007)

printLE("Afghanistan", 1952)
