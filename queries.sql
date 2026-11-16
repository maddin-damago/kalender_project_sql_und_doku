SELECT * FROM mitarbeiter;
SELECT * FROM leistungen;
SELECT * FROM ma_leistungen;
SELECT * FROM kunde;
SELECT * FROM termin;
SELECT * FROM termin_leistungen ORDER BY termin_id;

SELECT k.nachname as Nachname, k.vorname as Vorname,  m.ma_name as MA, t.start_datum as Datum  FROM termin t
JOIN kunde k ON k.id = t.kunde_id
JOIN mitarbeiter m ON m.id = t.mitarbeiter_id;
