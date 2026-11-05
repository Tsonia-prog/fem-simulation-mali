
CREATE TABLE projekte (
    projekt_id SERIAL PRIMARY KEY,
    projektname VARCHAR(100) NOT NULL,
    standort VARCHAR(100) NOT NULL,
    kunde VARCHAR(100) NOT NULL,
    startdatum DATE NOT NULL,
    budget_eur NUMERIC(12, 2) NOT NULL
);

CREATE TABLE bauteile (
    bauteil_id SERIAL PRIMARY KEY,
    projekt_id INTEGER NOT NULL,
    bauteilname VARCHAR(100) NOT NULL,
    material VARCHAR(50) NOT NULL,
    masse_kg NUMERIC(10, 2) NOT NULL,
    sicherheitsfaktor NUMERIC(4, 2) NOT NULL,
    status VARCHAR(30) NOT NULL,

    CONSTRAINT fk_bauteil_projekt
        FOREIGN KEY (projekt_id)
        REFERENCES projekte(projekt_id)
);

CREATE TABLE simulationen (
    simulation_id SERIAL PRIMARY KEY,
    bauteil_id INTEGER NOT NULL,
    simulationstyp VARCHAR(50) NOT NULL,
    last_n NUMERIC(12, 2),
    temperatur_c NUMERIC(6, 2),
    netzelemente INTEGER NOT NULL,
    rechenzeit_min NUMERIC(8, 2) NOT NULL,
    simulationsdatum DATE NOT NULL,
    solver VARCHAR(50) NOT NULL,

    CONSTRAINT fk_simulation_bauteil
        FOREIGN KEY (bauteil_id)
        REFERENCES bauteile(bauteil_id)
);

CREATE TABLE ergebnisse (
    ergebnis_id SERIAL PRIMARY KEY,
    simulation_id INTEGER NOT NULL,
    maximale_spannung_mpa NUMERIC(10, 2),
    maximale_verschiebung_mm NUMERIC(10, 2),
    minimale_sicherheit NUMERIC(5, 2),
    konvergenz VARCHAR(30) NOT NULL,
    bewertung VARCHAR(30) NOT NULL,

    CONSTRAINT fk_ergebnis_simulation
        FOREIGN KEY (simulation_id)
        REFERENCES simulationen(simulation_id)
);

SELECT * FROM projekte