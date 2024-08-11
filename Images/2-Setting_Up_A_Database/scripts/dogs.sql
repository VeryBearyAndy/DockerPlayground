CREATE TABLE Dogs(
    Breed VARCHAR(32),
    dog_owner VARCHAR(64),
    Age Int,
    dog_name VARCHAR(64),
    kid_friendly BOOLEAN
);
INSERT INTO Dogs(Breed, dog_owner, Age, dog_name, kid_friendly)
Values ('German-Shepherd', 'Maria Fernandez', 5, 'izabelle', TRUE),
        ('chihuahua', 'Daniel Lee', 3, 'Misty', FALSE),
        ('Golden Retriver', 'Tony Hawk', 7, 'totally-tubular', TRUE);