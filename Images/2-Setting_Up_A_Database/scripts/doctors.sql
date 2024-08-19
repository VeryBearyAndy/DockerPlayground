CREATE TABLE Doctors(
    name VARCHAR(64),
    practice_name VARCHAR(64),
    practice VARCHAR(64),
    insurance_network VARCHAR(64),
    accepts_medicaid BOOLEAN,
    avg_deductable MONEY
);

INSERT INTO Doctors(name, practice_name, practice, insurance_network, accepts_medicaid, avg_deductable)
VALUES ('Hua-xi Zhong', 'Zhong Podiotry', 'Podiotry', 'United Healthcare', TRUE, 235.40),
       ('Gina Hartman', 'A Good Heart', 'Cardiology', 'Buckeye Healthcare', FALSE, 900.5),
       ('Markus Singh', 'A Good Place', 'Phsycology', 'Cigna', TRUE, 300.25);