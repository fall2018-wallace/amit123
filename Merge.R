
arrests$stateName <- row.names(arrests)
merged_data <- merge(clean_data,arrests,By ="stateName")
merged_data
