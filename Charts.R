install.packages(c("ggplot2","dplyr"))
library(ggplot2)
library(dplyr)


#Matches Played in Each City
ggplot(clean_dataset, aes(x = City)) +
  geom_bar(fill = "steelblue") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Number of Matches Played in Each City",
       x = "City",
       y = "Number of Matches")

#Matches Won by Each Team
ggplot(clean_dataset, aes(x = Winner)) +
  geom_bar(fill = "orange") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Matches Won by Each Team",
       x = "Team",
       y = "Total Wins")

#Toss Decision Distribution (Pie Chart)
toss_data <- count(clean_dataset, Toss_Decision)

ggplot(toss_data, aes(x = "", y = n, fill = Toss_Decision)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Toss Decision Distribution")


#Runs Distribution Histogram
ggplot(clean_dataset, aes(x = Runs_Team1)) +
  geom_histogram(fill = "purple", bins = 25) +
  labs(title = "Distribution of Runs Scored by Team1",
       x = "Runs",
       y = "Frequency")

#Runs Outliers Detection(BoxPlot)
ggplot(clean_dataset, aes(y = Runs_Team1)) +
  geom_boxplot(fill = "red") +
  labs(title = "Boxplot of Runs (Outlier Detection)")

#Player of the Match Awards
ggplot(clean_dataset, aes(x = Player_of_Match)) +
  geom_bar(fill = "darkgreen") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Player of the Match Awards",
       x = "Player",
       y = "Count")

#Matches Played per Season
season_data <- count(clean_dataset, Season)

ggplot(season_data, aes(x = Season, y = n)) +
  geom_line(color = "blue") +
  geom_point() +
  labs(title = "Matches Played per Season",
       x = "Season",
       y = "Matches")

#Toss Winner vs Match Winner
clean_dataset$TossWinMatch <- ifelse(clean_dataset$Toss_Winner == clean_dataset$Winner,"Yes","No")

ggplot(clean_dataset, aes(x = TossWinMatch)) +
  geom_bar(fill = "cyan4") +
  labs(title = "Did Toss Winner Win the Match?",
       x = "Toss Winner Won Match",
       y = "Count")

#Runs Comparison Scatter Plot
ggplot(clean_dataset, aes(x = Runs_Team1, y = Runs_Team2)) +
  geom_point(color = "darkblue") +
  labs(title = "Runs Comparison Between Teams",
       x = "Team1 Runs",
       y = "Team2 Runs")

#Matches Played by Venue
ggplot(clean_dataset, aes(x = Venue)) +
  geom_bar(fill = "goldenrod") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Matches Played by Venue",
       x = "Venue",
       y = "Matches")