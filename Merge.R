
merged_data_new <- data.frame(merged_data,state.area,state.center)
US <- map_data("state")
merged_data_new$stateName <- tolower(merged_data_new$stateName)
