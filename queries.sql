SELECT * FROM mitarbeiter;
SELECT * FROM leistungen;
SELECT * FROM ma_leistungen;
SELECT * FROM kunde;
SELECT * FROM termin;
SELECT * FROM termin_leistungen ORDER BY termin_id;

SELECT k.nachname as Nachname, k.vorname as Vorname, m.ma_name as MA, t.start_datum as Datum, l.leistung, l.dauer_in_min, l.preis_in_eur 
FROM termin t
JOIN kunde k ON k.id = t.kunde_id
JOIN mitarbeiter m ON m.id = t.mitarbeiter_id
JOIN termin_leistungen tl ON tl.termin_id = t.id
JOIN leistungen l ON l.id = tl.leistung_id
ORDER BY t.id;

SELECT mitarbeiter_id, l.leistung FROM ma_leistungen
JOIN leistungen l ON l.id = leistung_id
WHERE leistung_id = 2;

SELECT * FROM termin
WHERE start_datum LIKE '%2026-06-01%';