# Import relevant data (Iris built-in data for this case.)
iris_data <- data.frame(iris)
head(iris_data)
# Use dplyr library to simplify functions
library(dplyr)

# Find unique species of Iris in the dataset
unique_species <- unique(iris_data$Species)

# Determine the average for each property for each species
species_average <- iris_data[0, ] # We will append the answer to this data frame 

for (species in unique_species) {
  newdf <- iris_data %>% filter(Species == species) # %>% select(-Species)
  species_average[nrow(species_average) + 1, ] = c(colMeans(newdf[sapply(newdf, is.numeric)]), species) 
  cat(species, colMeans(newdf[sapply(newdf, is.numeric)]), " ")
}

head(species_average)