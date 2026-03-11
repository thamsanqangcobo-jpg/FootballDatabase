CREATE TABLE Clubs (
    club_id INT PRIMARY KEY,
    club_name VARCHAR(100),
    stadium VARCHAR(100),
    coach VARCHAR(100)
);

CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(100),
    market_value DECIMAL(15, 2),
    position VARCHAR(50)
);

CREATE TABLE Games (
    game_id INT PRIMARY KEY,
    "date" DATE,
    stadium VARCHAR(100)
);

CREATE TABLE GameResults (
    game_id INT,
    player_id INT,
    goals_scored INT,
    PRIMARY KEY (game_id, player_id),
    FOREIGN KEY (game_id) REFERENCES Games(game_id),
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);

INSERT INTO Clubs (club_id, club_name, stadium, coach) VALUES(1,'FC Barcelona', 'Camp Nou', 'Hansi Flick');
INSERT INTO Clubs (club_id, club_name, stadium, coach)VALUES(2,'Real Madrid', 'Santiago Bernabeu', 'Carlo Ancelotti');
INSERT INTO Clubs (club_id, club_name, stadium, coach)VALUES(3,'Manchester United', 'Old Trafford', 'Erik ten Hag');
INSERT INTO Clubs (club_id, club_name, stadium, coach)VALUES(4, 'Arsenal', 'The Emirates', 'Mikel Arteta');
INSERT INTO Clubs (club_id, club_name, stadium, coach)VALUES(5, 'Liverpool','Anfield','Arne Slot');
INSERT INTO Clubs (club_id, club_name, stadium, coach)VALUES(6, 'Chelsea', 'Stamford Bridge', 'Enzo Mareca');
INSERT INTO Clubs (club_id, club_name, stadium, coach)VALUES(7, 'Napoli', 'Diego Armando Maradona Stadium', 'Antonio Conte');
INSERT INTO Clubs (club_id, club_name, stadium, coach)VALUES(8, 'Manchester City', 'Ethihad', 'Pep Guardiola');
INSERT INTO Clubs (club_id, club_name, stadium, coach)VALUES(9, 'Bayern Munich', 'Allianz Arena', 'Vincent Kompany');
INSERT INTO Clubs (club_id, club_name, stadium, coach)VALUES(10, 'Paris Saint-Germain','Parc des Princes','Luis Enrique');

INSERT INTO Players (player_id, player_name, market_value, position) VALUES(1, 'Lionel Messi', 50000000.00, 'Center Forward');
INSERT INTO Players (player_id, player_name, market_value, position) VALUES(2, 'Cristiano Ronaldo', 50000000.00, 'Striker');
INSERT INTO Players (player_id, player_name, market_value, position) VALUES(3, 'Bruno Fernandes', 75000000.00, 'Attacking Midfielder');
INSERT INTO Players (player_id, player_name, market_value, position) VALUES(4, 'Kevin Debruyne', 85000000.00, 'Attacking Midfielder');
INSERT INTO Players (player_id, player_name, market_value, position) VALUES(5, 'Marcus Rashford', 25000000.00, 'Left Midfielder');
INSERT INTO Players (player_id, player_name, market_value, position) VALUES(6, 'Jude Bellingham', 50000000.00, 'Attacking Midfielder');
INSERT INTO Players (player_id, player_name, market_value, position) VALUES(7, 'Karim Benzema', 20000000.00, 'Center Forward');
INSERT INTO Players (player_id, player_name, market_value, position) VALUES(8, 'Mohammed Salah', 95000000.00, 'Right Winger');
INSERT INTO Players (player_id, player_name, market_value, position) VALUES(9, 'Robert Lewendowski', 40000000.00, 'Striker');
INSERT INTO Players (player_id, player_name, market_value, position) VALUES(10, 'Erling Haaland', 155000000.00, 'Striker');

INSERT INTO Games VALUES(1, TO_DATE('2022-06-02','YYYY-MM-DD'),'Camp Nou');
INSERT INTO Games VALUES(2, TO_DATE('2004-07-22','YYYY-MM-DD'),'Allianz Arena');
INSERT INTO Games VALUES(3, TO_DATE('2014-12-14','YYYY-MM-DD'),'The Emirates');
INSERT INTO Games VALUES(4, TO_DATE('2024-02-10','YYYY-MM-DD'),'Diego Armando Maradona Stadium');
INSERT INTO Games VALUES(5, TO_DATE('2024-01-20','YYYY-MM-DD'),'Anfield');
INSERT INTO Games VALUES(6, TO_DATE('2020-12-20','YYYY-MM-DD'),'Ethihad');
INSERT INTO Games VALUES(7, TO_DATE('2016-04-10','YYYY-MM-DD'),'Santiago Bernabeu');
INSERT INTO Games VALUES(8, TO_DATE('2012-01-09','YYYY-MM-DD'),'Parc des Princes');
INSERT INTO Games VALUES(9, TO_DATE('2022-01-23','YYYY-MM-DD'),'Old Trafford');
INSERT INTO Games VALUES(10, TO_DATE('2020-03-10','YYYY-MM-DD'),'Stamford Bridge');


INSERT INTO GameResults (game_id, player_id, goals_scored) VALUES(6, 10, 3);   
INSERT INTO GameResults (game_id, player_id, goals_scored) VALUES(2, 9, 2);   
INSERT INTO GameResults (game_id, player_id, goals_scored) VALUES(5, 8, 2);   
INSERT INTO GameResults (game_id, player_id, goals_scored) VALUES(4, 7, 4);   
INSERT INTO GameResults (game_id, player_id, goals_scored) VALUES(7, 6, 1);   
INSERT INTO GameResults (game_id, player_id, goals_scored) VALUES(10, 1, 2);   
INSERT INTO GameResults (game_id, player_id, goals_scored) VALUES(9, 2, 3);   
INSERT INTO GameResults (game_id, player_id, goals_scored) VALUES(8, 3, 1);   
INSERT INTO GameResults (game_id, player_id, goals_scored) VALUES(1, 4, 1);   
INSERT INTO GameResults (game_id, player_id, goals_scored) VALUES(3, 5, 1);   

SELECT 
    Players.player_name, 
    Players.market_value, 
    Clubs.club_name
FROM 
    Players
JOIN 
    Clubs ON Players.player_id = Clubs.club_id
ORDER BY 
    Players.market_value DESC
FETCH FIRST 10 ROWS ONLY;  


SELECT * FROM Clubs;
SELECT * FROM Players;
SELECT * FROM Games;
SELECT * FROM GameResults;


