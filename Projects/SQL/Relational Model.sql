CREATE TABLE `Teams` (
  `name` varchar(30),
  `country` varchar(30),
  `tournament_won` integer,
  `top_goal_scorers` varchar(50)
);

CREATE TABLE `ChampionsLeague` (
  `tournament_year` integer,
  `tournament_city` varchar(30),
  `tournament_country` varchar(30),
  `winner` varchar(30),
  `top_scorer` varchar(30),
  `top_scorer_team` varchar(30),
  `top_scorer_goals` int
);

CREATE TABLE `Teams_ChampionsLeague` (
  `Teams_name` varchar(30),
  `ChampionsLeague_tournament_year` integer,
  PRIMARY KEY (`Teams_name`, `ChampionsLeague_tournament_year`)
);

ALTER TABLE `Teams_ChampionsLeague` ADD FOREIGN KEY (`Teams_name`) REFERENCES `Teams` (`name`);

ALTER TABLE `Teams_ChampionsLeague` ADD FOREIGN KEY (`ChampionsLeague_tournament_year`) REFERENCES `ChampionsLeague` (`tournament_year`);


ALTER TABLE `ChampionsLeague` ADD FOREIGN KEY (`winner`) REFERENCES `Teams` (`name`);

ALTER TABLE `ChampionsLeague` ADD FOREIGN KEY (`top_scorer_team`) REFERENCES `Teams` (`name`);
