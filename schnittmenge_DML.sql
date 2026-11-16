INSERT INTO mitarbeiter
(ma_name)
VALUES
('Sabine'),
('Mara'),
('Jonas');

INSERT INTO leistungen
(leistung, dauer_in_min, preis_in_eur)
VALUES
('Herrenschnitt', 30, 28),
('Damenschnitt', 45, 42),
('Kinderschnitt', 20, 16),
('Waschen & Föhnen', 30, 22),
('Bartpflege', 15, 12),
('Färben', 90, 75);

INSERT INTO ma_leistungen
(mitarbeiter_id, leistung_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(3, 3),
(3, 4),
(3, 5);

INSERT INTO kunde (vorname, nachname, email, telefon) VALUES
('Max', 'Mustermann', 'max.mustermann@example.com', '+491511234567'),
('Anna', 'Schmidt', 'anna.schmidt@example.com', '+491522345678'),
('Lukas', 'Weber', 'lukas.weber@example.com', '+491533456789'),
('Sarah', 'Wagner', 'sarah.wagner@example.com', '+491544567890'),
('Tim', 'Becker', 'tim.becker@example.com', '+491555678901'),
('Laura', 'Hoffmann', 'laura.hoffmann@example.com', '+491566789012'),
('Felix', 'Richter', 'felix.richter@example.com', '+491577890123'),
('Julia', 'Klein', 'julia.klein@example.com', '+491588901234'),
('Leon', 'Wolf', 'leon.wolf@example.com', '+491599012345'),
('Mia', 'Schröder', 'mia.schroeder@example.com', '+491600123456'),
('Jonas', 'Neumann', 'jonas.neumann@example.com', '+491611234567'),
('Lena', 'Schwarz', 'lena.schwarz@example.com', '+491622345678'),
('David', 'Zimmermann', 'david.zimmermann@example.com', '+491633456789'),
('Sophia', 'Braun', 'sophia.braun@example.com', '+491644567890'),
('Paul', 'Krüger', 'paul.krueger@example.com', '+491655678901');

INSERT INTO termin (kunde_id, mitarbeiter_id, start_datum, end_datum) VALUES
(1, 1, '2026-06-01 09:00:00', '2026-06-01 09:30:00'),
(2, 2, '2026-06-01 10:00:00', '2026-06-01 10:45:00'),
(3, 3, '2026-06-01 11:00:00', '2026-06-01 11:20:00'),
(4, 1, '2026-06-01 12:00:00', '2026-06-01 12:45:00'),
(5, 2, '2026-06-02 09:00:00', '2026-06-02 10:30:00'),
(6, 3, '2026-06-02 11:00:00', '2026-06-02 11:30:00'),
(7, 1, '2026-06-02 13:00:00', '2026-06-02 13:15:00'),
(8, 2, '2026-06-02 14:00:00', '2026-06-02 14:30:00'),
(9, 3, '2026-06-03 09:30:00', '2026-06-03 10:00:00'),
(10, 1, '2026-06-03 10:30:00', '2026-06-03 12:00:00'),
(11, 2, '2026-06-03 13:00:00', '2026-06-03 13:20:00'),
(12, 3, '2026-06-04 09:00:00', '2026-06-04 09:30:00'),
(13, 1, '2026-06-04 10:00:00', '2026-06-04 10:45:00'),
(14, 2, '2026-06-04 11:15:00', '2026-06-04 11:30:00'),
(15, 3, '2026-06-04 14:00:00', '2026-06-04 14:30:00');

INSERT INTO termin_leistungen (termin_id, leistung_id) VALUES
-- Appointment 1: Herrenschnitt + Bartpflege
(1, 1),  
(1, 5),  

-- Appointment 2: Damenschnitt + Waschen & Föhnen
(2, 2),  
(2, 4),  

-- Appointment 3: Kinderschnitt (Single service)
(3, 3),  

-- Appointment 4: Damenschnitt + Färben
(4, 2),  
(4, 6),  

-- Appointment 5: Färben + Waschen & Föhnen
(5, 6),  
(5, 4),  

-- Appointment 6: Herrenschnitt (Single service)
(6, 1),  

-- Appointment 7: Bartpflege (Single service)
(7, 5),  

-- Appointment 8: Waschen & Föhnen (Single service)
(8, 4),  

-- Appointment 9: Herrenschnitt + Bartpflege
(9, 1),  
(9, 5),  

-- Appointment 10: Full package (Färben + Damenschnitt + Waschen & Föhnen)
(10, 6), 
(10, 2), 
(10, 4), 

-- Appointment 11: Kinderschnitt (Single service)
(11, 3), 

-- Appointment 12: Waschen & Föhnen (Single service)
(12, 4), 

-- Appointment 13: Damenschnitt + Waschen & Föhnen
(13, 2), 
(13, 4), 

-- Appointment 14: Bartpflege (Single service)
(14, 5), 

-- Appointment 15: Herrenschnitt + Waschen & Föhnen
(15, 1), 
(15, 4);