library(gapminder)
library(dplyr)

# Filter the gapminder dataset for the year 1957
gapminder %>%filter(gapminder$year==1957)

#ggplot

ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) + geom_point()

# Change this plot to put the x-axis on a log scale
ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) +
  geom_point()+scale_x_log10()

#

ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) +
  geom_point()+scale_x_log10()+scale_y_log10()


#Tuna Charts
p <- ggplot(Tuna_Tons_and_Price_Thailand, aes(Month, Price, colour = Year,group = Year)) + geom_point()
p + labs(colour = "Year") + geom_line(aes(linetype = Year)) +ggtitle('Tuna Price USD')

p <- ggplot(Tuna_Tons_and_Price_Thailand, aes(Month, Tons, colour = Year,group = Year)) + geom_point()
p + labs(colour = "Year") + geom_line(aes(linetype = Year)) +ggtitle('Tuna Imported in Thailand')


#Pie Chart

ggplot(claims, aes(x="", y=value, fill=group))+ coord_polar("y", start=0)+
  geom_bar(width = 1, stat = "identity")+   
  theme(axis.text.x=element_blank()) +
  geom_text(aes(y = value/3 + c(0, cumsum(value)[-length(value)]), label = percent(value/nrow(training))), size=5)

