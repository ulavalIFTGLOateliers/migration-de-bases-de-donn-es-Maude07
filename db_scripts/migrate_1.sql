ALTER TABLE singer RENAME TO musician;

CREATE TABLE IF NOT EXISTS band (bandName varchar(50), creation YEAR, genre varchar(50));
INSERT INTO band (bandName, creation, genre) VALUES
                                ('Crazy Duo', 2015, 'rock'),
                                ('Luna', 2009, 'classical'),
                                ('Mysterio', 2019, 'pop');

ALTER TABLE musician CHANGE singerName musicianName varchar(50);
ALTER TABLE musician ADD (role varchar(50), bandName varchar(50));


UPDATE musician M SET M.role = 'vocals', M.bandName = 'Crazy Duo' WHERE M.musicianName LIKE 'Alina';
UPDATE musician M SET M.role = 'guitar', M.bandName = 'Mysterio' WHERE M.musicianName LIKE 'Mysterio';
UPDATE musician M SET M.role = 'percussion', M.bandName = 'Crazy Duo' WHERE M.musicianName LIKE 'Rainbow';
UPDATE musician M SET M.role = 'piano', M.bandName = 'Luna' WHERE M.musicianName LIKE 'Luna';




