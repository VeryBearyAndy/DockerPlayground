CREATE TABLE Restaurants(
    name VARCHAR(64),
    rating FLOAT,
    cuisine VARCHAR(64),
    capacity INT
);

INSERT INTO Restaurants(name, rating, cuisine, capacity)
VALUES ('La''Tika''s Pasteries', 4.2, 'French Pastries', 40),
        ('Tichon''s Ravioli', 3.5, 'Italian', 60),
        ('Taste of Jamaica', 4.0, 'Jamaican', 100);