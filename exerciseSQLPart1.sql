# 15.4.1 Table Setup 
CREATE TABLE seeds (
seed_id INT PRIMARY KEY AUTO_INCREMENT,
crop VARCHAR(40),
encourages VARCHAR(40),
use_by INT
);
#15.4.2 create
INSERT INTO seeds (crop, encourages, use_by) VALUES ("Agastache", "bees & hummingbirds", 2020);
INSERT INTO seeds (crop, encourages, use_by) VALUES ("Caper", "Bud and berries seasoning", 2025);
INSERT INTO seeds (crop, use_by) VALUES ("Sun Gold Tomato", 2022);
INSERT INTO seeds (crop, encourages, use_by) VALUES ("Hot Pepper", "Grow heirloom hot with deliciour smoky taste", 2020);
INSERT INTO seeds (crop, encourages, use_by) VALUES ("Cucumber", "Bush hog small, slightly bitter flavor", 2020);
INSERT INTO seeds (crop, encourages, use_by) VALUES ("Squash", "plant scallop yellow bush", 2023);
INSERT INTO seeds (crop, encourages, use_by) VALUES ("Ornamental Cabbage", "Purple and creamy white", 2020);
INSERT INTO seeds (crop, encourages, use_by) VALUES ("Tomatillo", "Ground cherry fruit", 2021);

#15.4.3 Read
SELECT * FROM seeds;
SELECT crop from seeds;
SELECT crop, use_by FROM seeds order by use_by DESC, crop ASC;
SELECT crop, encourages, use_by FROM seeds where seed_id=6;

# 15.4.4 Update
UPDATE seeds SET use_by=2024 WHERE seed_id= 1;
UPDATE seeds SET crop="Potato seeds", use_by=2026 WHERE seed_id=4;
ALTER TABLE seeds ADD expired Boolean;
UPDATE seeds SET expired=TRUE WHERE use_by < 2022;

#15.4.5 Delete
DELETE FROM seeds WHERE seed_id=2;
DELETE FROM seeds WHERE expired=true;

#15.4.6 Bonus Exercises
SELECT * FROM seeds WHERE use_by = 2020 AND expired=true;
SELECT * FROM seeds WHERE encourages IS NOT NULL;
SELECT DISTINCT use_by FROM seeds;
ALTER TABLE seeds MODIFY COLUMN use_by DOUBLE;
SELECT * FROM seeds;