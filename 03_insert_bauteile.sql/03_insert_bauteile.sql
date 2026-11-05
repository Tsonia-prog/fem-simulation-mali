
INSERT INTO bauteile
(projekt_id, bauteilname, material, masse_kg, sicherheitsfaktor, status)
VALUES
(1, 'Hauptträger Nord', 'Stahl S355', 4850.00, 1.80, 'Geprüft'),
(2, 'Dachrahmen A', 'Stahl S235', 3250.00, 1.65, 'Geprüft'),
(3, 'Solarmodulrahmen', 'Aluminium', 850.00, 2.10, 'Freigegeben'),
(4, 'Behälterwand', 'Beton C30', 6250.00, 2.50, 'Geprüft'),
(5, 'Brückenträger', 'Stahl S355', 7120.00, 1.75, 'In Prüfung'),
(6, 'Stützrahmen', 'Stahl S355', 4380.00, 1.90, 'Freigegeben'),
(7, 'Pumpensockel', 'Beton C35', 3850.00, 2.30, 'Geprüft'),
(8, 'Gebäudesäule A1', 'Beton C30', 5120.00, 2.20, 'Freigegeben'),
(9, 'Werkstattträger', 'Stahl S235', 2940.00, 1.70, 'Geprüft'),
(10, 'Solarturm Basis', 'Stahl S355', 3650.00, 1.85, 'In Prüfung'),
(11, 'Brückenstütze', 'Beton C40', 8420.00, 2.60, 'Freigegeben'),
(12, 'Maschinenfundament', 'Beton C35', 9650.00, 2.40, 'Geprüft'),
(13, 'Tankboden', 'Stahl S355', 2760.00, 1.95, 'Geprüft'),
(14, 'Solarrahmen B', 'Aluminium', 920.00, 2.05, 'Freigegeben'),
(15, 'Lagerträger', 'Stahl S235', 4180.00, 1.60, 'In Prüfung'),
(16, 'Hallensäule', 'Stahl S355', 5360.00, 1.85, 'Geprüft'),
(17, 'Kanalplatte', 'Beton C30', 4750.00, 2.10, 'Freigegeben'),
(18, 'Betonträger', 'Beton C40', 6980.00, 2.45, 'Geprüft'),
(19, 'Hallendachträger', 'Stahl S235', 3520.00, 1.65, 'Geprüft'),
(20, 'Technikplattform', 'Stahl S355', 2890.00, 1.80, 'Freigegeben');

SELECT * FROM bauteile