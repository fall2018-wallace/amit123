
library(ggmap)
US <- map_data("state")
merged_data_new$stateName <- tolower(merged_data_new$stateName)

##Step B: Generate a color coded map
##3)	Create a color coded map, based on the area of the state 

 map1 <- ggplot(merged_data_new, aes(map_id = stateName))   
 map1 <- map1 + geom_map(map = US, fill = "white", color = "black")  
 map1 <- map1 + expand_limits(x = US$long, y = US$lat)
 map1
 map1 + geom_map(map = US,aes(fill=state.area))+ggtitle("Area map")
 colored_map <- ggplot(merged_data_new,aes(map_id = stateName))
 colored_map <- colored_map+  geom_map(map = US,aes(fill=population))
 colored_map <- colored_map + expand_limits(x = US$long, y = US$lat) 
 colored_map <- colored_map+ coord_map() +
 ggtitle("Statewise population")
 colored_map 
 
##Step C: Create a color shaded map of the U.S. based on the Murder rate for each state 
##4)	Repeat step B, but color code the map based on the murder rate of each state.

 colored_map <- ggplot(merged_data_new,aes(map_id = stateName))
 colored_map <- colored_map+  geom_map(map = US,aes(fill=Murder))
 colored_map <- colored_map + expand_limits(x = US$long, y = US$lat) 
 colored_map <- colored_map+ coord_map() +
   ggtitle("Statewise murder Rate")
 colored_map 
 
 
##5)Show the population as a circle per state (the larger the population, the larger the circle), using the location defined by the center of each state
 
 murder <- colored_map+ geom_point(x = merged_data_new$x, y = merged_data_new$y,aes(size = merged_data_new$population))+ggtitle("Murder rate along with population size")
 murder
 
nrow(merged_data_new)
##Step D: Zoom the map
##6)Repeat step C, but only show the states in the north east

lat_long <- geocode(source= "dsk", "nyc,new york, ny")
lat_long
   
map1 <- colored_map  + xlim(-84,-64)+ ylim(30,50)
map2  <- murder  + xlim(-84,-64)+ ylim(30,50)
map1 
map2
