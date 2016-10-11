# Exercise 1: Lists


# Create a vector of everything you ate for breakfast
breakfast <- c("water", "milk", "coffee", "sandwich")

# Create a vector of everything you ate for lunch
lunch <- c("water", "soda", "sandwich")

# Create a list `meals` that has contains your breakfast and lunch
meals <- list(breakfast=breakfast, lunch=lunch)

# Add a `dinner` index to your `meals` list that has what you plan to eat for dinner
meals$dinner <- c("Rice", "Vegetable Soup", "water", "")

# Extract your 'dinner' element from your list and save it in a vector called 'dinner'
dinner <- meals[["dinner"]]

### Bonus ### 
# Create a list that has the number of items you ate for each meal
num <- list(length(meals[["breakfast"]]), length(meals[["lunch"]]), length(meals[["dinner"]]))

# Write a function that adds pizza to every meal
AddPizza <- function(x){
  x <- c(x, "pizza")
}

# Add pizza to every meal!
output <- lapply (meals, AddPizza)
