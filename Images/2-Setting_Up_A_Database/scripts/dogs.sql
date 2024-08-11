CREATE TABLE Dogs(
    Breed VARCHAR(32),
    dog_owner VARCHAR(64),
    Age Int,
    dog_name VARCHAR(64),
    kid_friendly BOOLEAN
);
INSERT INTO Dogs(Breed, dog_owner, Age, dog_name, kid_friendly)
Values ('German-Shepherd', 'Maria Fernandez', 5, 'izabelle', 1),
        ('chihuahua', 'Daniel Lee', 3, 'Misty', 0),
        ('Golden Retriver', 'Tony Hawk', 7, 'totally-tubular', 1);