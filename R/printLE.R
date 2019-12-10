printLE <- function(gap_country, gap_year){
  
 LE_country <- gapminder %>% 
    filter(country == gap_country, year == gap_year)%>% 
   select(lifeExp)
 
LE_avg <- gapminder %>% 
  filter(year == gap_year) %>% 
  summarise(avg = mean(lifeExp))
  
  glue::glue("The life expectancy of {gap_country} in {gap_year} was {LE_country} years, 
compared to the average for all countries, {LE_avg}.")
  }

