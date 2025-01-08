-- view the data from league table to find out napolis league position and gd
select idx, name, scoresStr, goalConDiff, pts
from league_table23_24;

-- calculate defensive performance by finding difference between expected and actual goals conceded
SELECT Team, Goals_Conceded - Expected_Goals_Conceded AS Goal_Difference,
 RANK() OVER (ORDER BY Goals_Conceded - Expected_Goals_Conceded) AS Goal_Difference_Rank
FROM expected_goals_conceded_team;

-- calculate offensive performance by finding difference between expected and actual goals scoredexpected_goals_team
select *
from expected_goals_team;