-- EDA

-- view the data from league table to find out napolis league position and gd
select idx, name, scoresStr, goalConDiff, pts
from league_table23_24;

-- calculate defensive performance by finding difference between expected and actual goals conceded
SELECT Team, Goals_Conceded - Expected_Goals_Conceded AS Goals_Difference,
 RANK() OVER (ORDER BY Goals_Conceded - Expected_Goals_Conceded) AS Goal_Difference_Rank
FROM expected_goals_conceded_team;

-- calculate offensive performance by finding difference between expected and actual goals scoredexpected_goals_team
select Team, Goals - Expected_Goals AS Goals_Difference,
RANK() OVER(ORDER BY Goals - Expected_Goals) as goal_difference_rank
from expected_goals_team;

-- comparing napolis clearance average with league average
SELECT
    'SSC Napoli' AS Team,
    Clearances_per_Match,
    (SELECT AVG(Clearances_per_Match) FROM effective_clearance_team) AS League_Avg
FROM
    effective_clearance_team
WHERE
    Team = 'SSC Napoli';
  
  -- average big chances missed by league compared with napolis
SELECT
    'SSC Napoli' AS Team,
    Big_Chances_Missed,
    (SELECT AVG(Big_Chances_Missed) FROM big_chance_missed_team) AS League_Avg
FROM
    big_chance_missed_team
WHERE
    Team = 'SSC Napoli';
    
-- Player Analysis since we know both attack and defense are underperforming

-- viewing the best napoli players in terms of clearances
select *
from player_effective_clearances
where Team = 'Napoli'
ORDER BY Clearances_per_90 DESC;

-- the best player (Leo A Stigrd) is ranked at 28, Napoli only has 2 players in top 50
 
 -- Comparing Napoli players to league average
SELECT
    Player,
    Clearances_per_90,
    (SELECT AVG(Clearances_per_90) FROM player_effective_clearances) AS League_Avg
FROM
    player_effective_clearances
WHERE
    Team = 'Napoli';
    
-- only 4 napoli players are above league average (Rrahamani, Jesus, Mazzocchi and stigard)

-- query that returns players above league average
SELECT *
FROM player_effective_clearances
WHERE Clearances_per_90 > (SELECT AVG(Clearances_per_90) FROM player_effective_clearances)
LIMIT 5;

-- the five best clearers in the league play for udinese(bijol, kristensen), empoli(ismajli, walukiewicz) and cagliari(dossena)
-- these players can help napoli sort their defensive issues

-- query big chances created by team
SELECT Team, SUM(Big_Chances_Created) AS Total_Big_Chances
FROM player_big_chances_created
GROUP BY Team;

-- shows napoli were 2nd in big chances created, lets assess conversion rates to see why they finished 10th

-- finding average shot conversion rate
select avg(shot_conversion_rate) as SCR
from player_total_scoring_attempts;

-- Comparing Napoli Players to the Average
SELECT Player, Team, Shot_Conversion_Rate,
       (SELECT AVG(Shot_Conversion_Rate) FROM player_total_scoring_attempts) AS Avg_League_Rate
FROM player_total_scoring_attempts
WHERE Team = 'Napoli';

-- Return napoli players with shot conversion rate is less than avg league rate
SELECT Player, Team, Shot_Conversion_Rate,
       (SELECT AVG(Shot_Conversion_Rate) FROM player_total_scoring_attempts) AS Avg_League_Rate
FROM player_total_scoring_attempts
WHERE Team = 'Napoli' and Shot_Conversion_Rate < (SELECT AVG(Shot_Conversion_Rate) FROM player_total_scoring_attempts);

-- results show napoli has 8 outfield players with shot conversion below the avg league rate

-- lets find the best 5 players with a shot conversion rate higher than league average who are not in napoli
SELECT Player, Team, Shot_Conversion_Rate, (SELECT AVG(Shot_Conversion_Rate) FROM player_total_scoring_attempts) AS Avg_League_Rate,
RANK() over(order by Shot_Conversion_Rate desc) as League_Rank
FROM player_total_scoring_attempts
WHERE Team != 'Napoli' and Shot_Conversion_Rate > (SELECT AVG(Shot_Conversion_Rate) FROM player_total_scoring_attempts)
LIMIT 5;

-- the best 5 players in terms of conversion rate in the league are monterisi, patric, arnautovic, jovic and okafor. these players can help fix napolis shorts conversion issues and it will be advisable to add them to scouting database


-- this sql script can aid in my tableau visializations


