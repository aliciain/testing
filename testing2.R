# Import relevant data (Iris built-in data for this case.)
iris_data <- data.frame(iris)

# Use dplyr library to simplify functions
library(dplyr)

# Find unique species of Iris in the dataset
unique_species <- unique(iris_data$Species)

# Determine the average petal length for each species
for (species in unique_species) {
  newdf <- iris_data %>% filter(Species == species) %>% select(-Species)
  cat(species, colMeans(newdf[sapply(newdf, is.numeric)]), " ")
}
