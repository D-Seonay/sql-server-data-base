-- Table Team
CREATE TABLE Team (
    ID_Team INT PRIMARY KEY,
    Nom_Projet VARCHAR(50),
    Nom_Team VARCHAR(50),
    ID_Chef_Team INT, -- Clé étrangère vers ID_Designer dans la table Designer
    Membre_Team INT, -- Clé étrangère vers ID_Designer dans la table Designer
    FOREIGN KEY (ID_Chef_Team) REFERENCES Designer(ID_Designer)
);

-- Table Member
CREATE TABLE Member (
    ID_Member INT PRIMARY KEY,
    Nom_Member VARCHAR(50),
    Prenom_Member VARCHAR(50),
    ID_Designer INT, -- Clé étrangère vers ID_Designer dans la table Designer
    FOREIGN KEY (ID_Designer) REFERENCES Designer(ID_Designer)
);





