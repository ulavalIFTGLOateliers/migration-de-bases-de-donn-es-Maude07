DROP TABLE IF EXISTS band;
ALTER TABLE musician RENAME TO singer;
ALTER TABLE singer CHANGE COLUMN musicianName singerName varchar(50);
ALTER TABLE musician DROP COLUMN role;
ALTER TABLE musician DROP COLUMN bandName;