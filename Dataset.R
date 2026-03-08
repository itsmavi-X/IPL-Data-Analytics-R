set.seed(123)

n <- 2000

teams <- c("Mumbai Indians","Chennai Super Kings","RCB","KKR",
           "Delhi Capitals","Punjab Kings","Rajasthan Royals","Sunrisers Hyderabad")

cities <- c("Mumbai","Chennai","Delhi","Bangalore","Kolkata","Hyderabad","Jaipur","Mohali")

venues <- c("Wankhede Stadium","Chepauk Stadium","Feroz Shah Kotla",
            "Chinnaswamy Stadium","Eden Gardens","Rajiv Gandhi Stadium")

players <- c("Virat Kohli","MS Dhoni","Rohit Sharma","David Warner",
             "AB de Villiers","Andre Russell","KL Rahul","Hardik Pandya")

Team1 <- sample(teams, n, replace = TRUE)
Team2 <- sample(teams, n, replace = TRUE)

Team2 <- ifelse(Team1 == Team2, sample(teams, n, replace = TRUE), Team2)

Runs_Team1 <- sample(120:220, n, replace = TRUE)
Runs_Team2 <- sample(120:220, n, replace = TRUE)

Winner <- ifelse(Runs_Team1 > Runs_Team2, Team1, Team2)

dataset <- data.frame(
  Match_ID = 1:n,
  Season = sample(2015:2024, n, replace = TRUE),
  City = sample(cities, n, replace = TRUE),
  Team1 = Team1,
  Team2 = Team2,
  Toss_Winner = sample(teams, n, replace = TRUE),
  Toss_Decision = sample(c("Bat","Field"), n, replace = TRUE),
  Runs_Team1 = Runs_Team1,
  Runs_Team2 = Runs_Team2,
  Winner = Winner,
  Player_of_Match = sample(players, n, replace = TRUE),
  Venue = sample(venues, n, replace = TRUE)
)


View(dataset)  #To view the dataset

write.csv(dataset,"IPL_large_dataset.csv",row.names=FALSE) # To save the dataset
getwd()

