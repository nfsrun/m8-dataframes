# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")
pointsPerGame <- c(12, 3, 37, 27)

# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season
pointsPerGameAgainst <- c(10, 9, 18, 17)

# Combine your two vectors into a dataframe
combined <- data.frame(pointsPerGame, pointsPerGameAgainst)

# Create a new column "diff" that is the difference in points
calculated <- c()
for (x in 1:length(pointsPerGameAgainst)) {
  calculated[x] <- abs(pointsPerGame[x]-pointsPerGameAgainst[x])
}
combined&diff <- calculated
colnames(combined) <- "diff"
combined

# Create a new column "won" which is TRUE if the Seahawks wom
won <- c()
for (x in 1:length(pointsPerGameAgainst)) {
  if(calculated[x]>0){
    won[x] <- TRUE
  }else{
    won[x] <- FALSE
  }
}
for (x in 1:length(pointsPerGameAgainst)) {
  calculated[x] <- abs(calculated[x])
}
colnames(combined) <- "won"

# Create a vector of the opponents
opponents <- c("Dolphins", "Rams", "49ers", "Jets")

# Assign your dataframe rownames of their opponents

