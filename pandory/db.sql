.tables
pragma table_info(tbl_game);

# delete all the pandory stuff
DELETE FROM tbl_en WHERE id IN (SELECT gameid FROM tbl_game WHERE en_match = 'pandorymax');
DELETE FROM tbl_game WHERE en_match = 'pandorymax';

# add 4:3
INSERT INTO tbl_game (gameid, game, suffix, video_id, class_type, game_type, hard, path, mode, category, fav, vis, lives,vert, cointime,playerscoin,hidesavestat, delfspath,en_match, sp_match, zh_match)
VALUES (
	(SELECT MAX(gameid)+1 FROM tbl_game),
	'aspect43',
	'.sh',
	(SELECT MAX(gameid)+1 FROM tbl_game),
	'',
	9000,
	0,
	'/sdcard/pandory/',
	2,
	2,
	0,
	1,
	5,
	0,
	0,
	8,
	'',
	'',
	'pandorymax',
	'pandorymax',
	'pandorymax'
);

DELETE FROM tbl_en WHERE id = (SELECT MAX(gameid) FROM tbl_game);
INSERT INTO tbl_en (id, title) VALUES (	(SELECT MAX(gameid) FROM tbl_game), 'Pandory: set aspect to 4:3');

# add 16:9
INSERT INTO tbl_game (gameid, game, suffix, video_id, class_type, game_type, hard, path, mode, category, fav, vis, lives,vert, cointime,playerscoin,hidesavestat, delfspath,en_match, sp_match, zh_match)
VALUES (
	(SELECT MAX(gameid)+1 FROM tbl_game),
	'aspect169',
	'.sh',
	(SELECT MAX(gameid)+1 FROM tbl_game),
	'',
	9000,
	0,
	'/sdcard/pandory/',
	2,
	2,
	0,
	1,
	5,
	0,
	0,
	8,
	'',
	'',
	'pandorymax',
	'pandorymax',
	'pandorymax'
);

DELETE FROM tbl_en WHERE id = (SELECT MAX(gameid) FROM tbl_game);
INSERT INTO tbl_en (id, title) VALUES (	(SELECT MAX(gameid) FROM tbl_game), 'Pandory: set aspect to 16:9');

SELECT * FROM tbl_game ORDER BY gameid DESC LIMIT 5;
SELECT * FROM tbl_en ORDER BY id DESC LIMIT 5;
