
library(ggmap)
merged_data_new <- data.frame(merged_data,state.area,state.center)
merged_data_new$stateName <- tolower(merged_data_new$stateName)
merged_data_new
