
INSERT INTO ergebnisse
(simulation_id, maximale_spannung_mpa, maximale_verschiebung_mm, minimale_sicherheit, konvergenz, bewertung)
VALUES
(1, 185.40, 8.25, 1.92, 'Konvergiert', 'Bestanden'),
(2, 142.80, 6.40, 2.18, 'Konvergiert', 'Bestanden'),
(3, 96.50, 2.85, 2.45, 'Konvergiert', 'Bestanden'),
(4, 118.30, 4.75, 2.65, 'Konvergiert', 'Bestanden'),
(5, 226.70, 11.20, 1.58, 'Konvergiert', 'Überprüfung'),
(6, 171.50, 7.90, 1.94, 'Konvergiert', 'Bestanden'),
(7, 198.60, 9.35, 1.72, 'Konvergiert', 'Überprüfung'),
(8, 154.20, 5.60, 2.05, 'Konvergiert', 'Bestanden'),
(9, 132.70, 5.15, 2.12, 'Konvergiert', 'Bestanden'),
(10, 248.90, 14.80, 1.48, 'Konvergiert', 'Kritisch'),
(11, 205.30, 8.70, 2.05, 'Konvergiert', 'Bestanden'),
(12, 189.40, 10.60, 1.82, 'Konvergiert', 'Überprüfung'),
(13, 164.80, 6.95, 2.15, 'Konvergiert', 'Bestanden'),
(14, 108.60, 3.25, 2.32, 'Konvergiert', 'Bestanden'),
(15, 151.20, 6.85, 1.88, 'Konvergiert', 'Bestanden'),
(16, 239.70, 13.40, 1.55, 'Konvergiert', 'Kritisch'),
(17, 176.30, 7.25, 2.08, 'Konvergiert', 'Bestanden'),
(18, 218.50, 9.90, 1.76, 'Konvergiert', 'Überprüfung'),
(19, 231.80, 12.65, 1.52, 'Konvergiert', 'Kritisch'),
(20, 128.40, 5.45, 2.20, 'Konvergiert', 'Bestanden');

SELECT *
FROM ergebnisse