
INSERT INTO simulationen
(bauteil_id, simulationstyp, last_n, temperatur_c, netzelemente, rechenzeit_min, simulationsdatum, solver)
VALUES
(1, 'Statisch', 185000.00, 35.00, 125000, 42.50, '2024-01-22', 'ANSYS Mechanical'),
(2, 'Statisch', 125000.00, 40.00, 98000, 35.20, '2024-02-18', 'Abaqus'),
(3, 'Thermisch', 15000.00, 75.00, 76000, 28.40, '2024-03-14', 'ANSYS Thermal'),
(4, 'Statisch', 420000.00, 32.00, 145000, 51.30, '2024-04-02', 'Abaqus'),
(5, 'Statisch', 265000.00, 38.00, 162000, 64.80, '2024-04-25', 'ANSYS Mechanical'),
(6, 'Statisch', 195000.00, 45.00, 118000, 46.70, '2024-05-21', 'Abaqus'),
(7, 'Dynamisch', 85000.00, 30.00, 91000, 39.60, '2024-06-12', 'ANSYS Mechanical'),
(8, 'Statisch', 310000.00, 36.00, 135000, 48.90, '2024-06-28', 'Abaqus'),
(9, 'Statisch', 145000.00, 42.00, 87000, 31.50, '2024-07-12', 'ANSYS Mechanical'),
(10, 'Windlast', 98000.00, 48.00, 105000, 44.20, '2024-08-02', 'Abaqus'),
(11, 'Statisch', 390000.00, 34.00, 178000, 72.50, '2024-08-29', 'ANSYS Mechanical'),
(12, 'Dynamisch', 275000.00, 41.00, 152000, 68.40, '2024-09-15', 'Abaqus'),
(13, 'Statisch', 210000.00, 39.00, 99000, 37.80, '2024-09-30', 'ANSYS Mechanical'),
(14, 'Thermisch', 18000.00, 82.00, 82000, 30.60, '2024-10-18', 'ANSYS Thermal'),
(15, 'Statisch', 165000.00, 37.00, 113000, 41.90, '2024-11-01', 'Abaqus'),
(16, 'Windlast', 115000.00, 52.00, 127000, 53.70, '2024-11-20', 'ANSYS Mechanical'),
(17, 'Statisch', 285000.00, 33.00, 121000, 45.30, '2024-12-05', 'Abaqus'),
(18, 'Statisch', 355000.00, 31.00, 169000, 69.20, '2024-12-18', 'ANSYS Mechanical'),
(19, 'Windlast', 135000.00, 47.00, 108000, 40.80, '2025-01-22', 'Abaqus'),
(20, 'Statisch', 155000.00, 43.00, 95000, 34.70, '2025-02-12', 'ANSYS Mechanical');

SELECT * FROM simulationen