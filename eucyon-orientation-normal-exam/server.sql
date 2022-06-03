CREATE TABLE countries (
  id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(64) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(64) NOT NULL,
  age TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id)
);

CREATE TABLE applicants (
  id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(64) NOT NULL,
  country_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  age TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  FOREIGN KEY (country_id) REFERENCES countries (id),
  FOREIGN KEY (name) REFERENCES users (name),
  FOREIGN KEY (age) REFERENCES users (age),
)

INSERT INTO countries (id, name) VALUES
  (null, 'Author #1')
  , (null, 'Author #2')
  , (null, 'Author #3')
  , (null, 'Author #4')
;

INSERT INTO users (id, name, age) VALUES
  (null, 'Book #1', 1)
  , (null, 'Book #2', 1)
  , (null, 'Book #3', 2)
  , (null, 'Book #4', 3)
  , (null, 'Book #5', 4)
;

INSERT INTO applicants (id, name,country_id, age) VALUES
  (null, 'Book #1', 1)
  , (null, 'Book #2', 1)
  , (null, 'Book #3', 2)
  , (null, 'Book #4', 3)
  , (null, 'Book #5', 4)
;