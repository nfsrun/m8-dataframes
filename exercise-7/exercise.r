# Exercise 7: Husky Football 2015 Season
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
husky.games.2015 <- read.csv("huskies_2015.csv")
# Create a vector of the teams that the Huskies played against during that season
# Call this vector `not.huskies`. You'll need to convert this column to a vector
not.huskies <- as.vector(husky.games.2015$opponent)
# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.scores <- as.vector(husky.games.2015$uw_score)
# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards <- husky.games.2015$passing_yards
passing.yards <- husky.games.2015$rushing_yards
# Create a variabled called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- husky.games.2015$passing_yards+husky.games.2015$rushing_yards
# What is the score of the game where the Huskies had the most combined yards?
locationIndex <- which(combined.yards == max(combined.yards))
opponent.scores <- husky.games.2015$opponent_score
print(husky.scores[locationIndex])
print(opponent.scores[locationIndex])

# Write a function `MostYardsScore` that takes in a dataframe parameter `games` and returns a descriptive sentence
# about the game that was played that had the most yards scored in it.
# Take note of the steps from above including the opposing team, score, and date the game was played
MostYardsScore <- function(dataSetUse){
  datasetUse <- read.csv(dataSetUse)
  not.huskies <- as.vector(datasetUse$opponent)
  combined.yards <- datasetUse$passing_yards+datasetUse$rushing_yards
  
  husky.scores <- as.vector(datasetUse$uw_score)
  rushing.yards <- datasetUse$passing_yards
  passing.yards <- datasetUse$rushing_yards
  
  locationIndex <- which(combined.yards == max(combined.yards))
  opponent.scores <- datasetUse$opponent_score
  return(paste("The Husky game that has the most yards in the dataset was played against", not.huskies[locationIndex], 
         "with a Husky score of", husky.scores[locationIndex], "and an opponent score of", opponent.scores[locationIndex], 
         ". There were", rushing.yards[locationIndex], "rushing yards and", passing.yards[locationIndex], 
         "passing yards which yields a total of", rushing.yards[locationIndex]+passing.yards[locationIndex], "yards in the game. "))
}
# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable
print(MostYardsScore("huskies_2016.csv"))

