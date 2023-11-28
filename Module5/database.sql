-- Table Team
CREATE TABLE Team (
    ID_Team INT PRIMARY KEY,
    Nom_Projet VARCHAR(50),
    Nom_Team VARCHAR(50),
    ID_Chef_Team INT, -- Clé étrangère vers ID_Designer dans la table Designer
    Membre_Team INT, -- Clé étrangère vers ID_Designer dans la table Designer
    FOREIGN KEY (ID_Chef_Team) REFERENCES Member(ID_Member),
);

-- Table Member
CREATE TABLE Member (
    ID_Member INT PRIMARY KEY,
    Nom_Member VARCHAR(50),
    Prenom_Member VARCHAR(50),
    ID_Metier INT, -- Clé étrangère vers ID_Metier dans la table Metier
    ID_Team INT, -- Clé étrangère vers ID_Team dans la table Team
    FOREIGN KEY (ID_Metier) REFERENCES Metier(ID_Metier),
    FOREIGN KEY (ID_Team) REFERENCES Team(ID_Team)
);

-- Table Métié
CREATE TABLE Metier (
    ID_Metier INT PRIMARY KEY,
    Nom_Metier VARCHAR(50),
);

-- Table de liaison entre Team et Member
CREATE TABLE Team_Member (
    ID_Team INT, -- Clé étrangère vers ID_Team dans la table Team
    ID_Member INT, -- Clé étrangère vers ID_Member dans la table Member
    FOREIGN KEY (ID_Team) REFERENCES Team(ID_Team),
    FOREIGN KEY (ID_Member) REFERENCES Member(ID_Member)
);

