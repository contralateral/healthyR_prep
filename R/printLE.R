printLE <- function(gap_country, gap_year){
  
  glue("The life expectancy of {gap_country} in {gap_year} was {gapminder %>% 
       filter(country == gap_country, year == gap_year) %>% 
       select(lifeExp)} years, compared to the average for all countries, {gapminder %>% 
       filter(year == gap_year) %>% 
       summarise(avg = mean(lifeExp))}.")
}
# 
# 
# # Sentence
# query="Germany"
# query2="1952"
# #gapminder[gapminder$country==query,gapminder$year==query2]
# gapminder %>% filter(country==query, year==query2) ->lifeExpQ 
# gapminder %>%  summarise(avg=mean(lifeExp)) -> avg_LifeExp
# 
# glue('The life expectancy of {query} in {query2} was {lifeExpQ$lifeExp} years, compared to the average for all countries, {avg_LifeExp}.This is the xxxth percentile.')
LE_country <- gapminder %>% 
  filter(country == gap_country, year == gap_year)%>% 
  select(lifeExp)

LE_avg <- gapminder %>% 
  filter(year == gap_year) %>% 
  summarise(avg = mean(lifeExp))

glue::glue("The life expectancy of {gap_country} in {gap_year} was {LE_country} years, 
compared to the average for all countries, {LE_avg}.")
}
