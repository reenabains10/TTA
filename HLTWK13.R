library(ggplot2)
?midwest
midwest
options(scipen=999) 

#ggplot(data=midwest, aes(x=state, y=poptotal)) +
#  geom_bar(stat="identity", fill="dark green")+
#  theme_minimal()

# bar population by state
ggplot(data = midwest, aes(x = state, y = poptotal, fill = state)) + 
  geom_histogram(stat="identity") + ggtitle("Midwest States Vs. Total Population") +
    xlab("Midwest States") + ylab("Total Population") +
  theme(plot.title = element_text(hjust = 0.5)) 

# population by population density by state
ggplot(data = midwest) + 
  geom_point(mapping = aes(x = poptotal, y = popdensity, color = state)) +
   xlab("Population Total") + ylab("Population Density") + ggtitle("Population Density by Total Population") +
  theme(plot.title = element_text(hjust = 0.5)) 

#college education rates by state
ggplot(data = midwest, 
       mapping = aes(percollege, fill = state)) + 
  geom_density(alpha = 0.8) + 
  labs(title = "College education rates", 
       x = "Percent of inhabitants with a college education",
       y = "Density",
       fill = "State") + 
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) 

#pop totals by area coloured by state
ggplot(midwest, aes(x = area, y = poptotal, color = state)) + 
  geom_point() +
  #geom_smooth(method="lm") +
  geom_smooth(span = 0.7, se = FALSE, method = "loess") +
  labs(title = "Population totals by Area", 
       x = "Area",
       y = "Population",
       fill = "State") + 
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) 

#separate graph per state
ggplot(data = midwest, aes(x = percollege, y = log10(poptotal))) +
  geom_point() +
  geom_smooth(aes(color = state), se = FALSE) +
  labs(x = "Percent College",
       y = "log10 Population Total",
       title = "Percent College") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  facet_wrap(~state)



