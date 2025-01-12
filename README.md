# Serie-A-analytics

# Information
About Dataset
Serie A 2023/24: Match, Player, and Team Performance Insights
Dataset Description
This [Dataset](https://www.kaggle.com/datasets/whisperingkahuna/serie-a-2324-team-and-player-insights)  offers an in-depth analysis of the 2023/24 Serie A season, capturing comprehensive data on team and player performances across all matchdays. With over 50 individual CSV files, this collection includes stats on passing accuracy, goal-scoring, defensive actions, possession metrics, and player ratings. Whether you're looking to analyze top scorers, assess team strengths, or delve into individual player contributions, this dataset provides a rich foundation for football analytics enthusiasts and professionals alike.

In addition to the core dataset, we have now added more files related to the league table, expanding the dataset with essential information on match outcomes, league standings, and advanced metrics.

Contents
The [Dataset](https://www.kaggle.com/datasets/whisperingkahuna/serie-a-2324-team-and-player-insights) contains the following types of data:

* Team Performance Metrics: Information on accurate passes, crosses, goals conceded, interceptions, and other team stats.
* Player Performance Metrics: Individual stats including expected goals (xG), assists, clearances, fouls committed, and tackles won.
* Match-Specific Insights: Detailed metrics on goals scored, scoring attempts, possession percentages, and cards issued per match.
* Match Details (New): Information about rounds, match IDs, teams, scores, and match statuses.
* League Tables (New):
  Overall standings including matches played, wins, draws, losses, goals scored, goal differences, and points.
  Separate breakdowns for home and away performances.
  Advanced metrics including expected goals (xG), expected goals conceded, and expected points.
  
The file details provide an overview of each [Dataset](https://www.kaggle.com/datasets/whisperingkahuna/serie-a-2324-team-and-player-insights) , including a brief description of the data structure and potential uses for analysis. This helps users quickly navigate and understand the data available for analysis.



# Context/ASK PHASE
I'm a data analyst at Napoli. The team failed to qualify for Champions league football after winning their legue the prior year. The club has put me in charge of spotting key metrics to analyze what went wrong and find pontential players they can add to the squad based on performance metrics from the 2023/2024 season.

Insights They Want:
* Scout potential transfer targets based on performance metrics.
  
  ### Use Case:
  Use effective clearance and shot conversion metrics to identify defenders who can strengthen the team's teams defense and attackers with poor shot conversions on team as well identify better options to improve the team.

# Prepare and Process PHASE
-The dataset from kaggle was already cleaned and ranked so it fufilled integrety requirements. However, the columns and names of some csv files useds had to be renamed to adhere to standard naming conventions.

-Tools Used for Analysis: SQLWorkBench and Tableau

8 Datasets were used for the analysis:
* league_table23_24
* expected_goals_conceded_team
* expected_goals_team
* big_chance_missed_team
* effective_clearance_team
* player_big_chances-created
* players_effective_clearances
* player_total_scoring_attempts

# Analyze PHASE

* Based of the requirements of the project I am going to analyze napolis performance at the team level and then proceed to assess how individuals on the team conntributed to that performance.

* After I'll proceed to assess the averages of certain metrics and investigate if players are above or below certain averages.

* I will then make recommendations of key players Napoli can scout based on individual performances across key metrics in the league-- for both offense and defense.

# Share PHASE

Results and Recommended Insightsbased on key findings will be given using Tableau

![Serie A 23/24 - Point Gap](ptsgap.png "Serie A 23/24 - Point Gap")
