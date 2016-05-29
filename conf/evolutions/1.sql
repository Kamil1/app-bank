# Initial tables

# --- !Ups
CREATE TABLE App (
  app_id: BIGINT NOT NULL AUTO_INCREMENT,
  name: VARCHAR(255),
  developer_id: BIGINT NOT NULL,
  logo: VARCHAR(1020) NOT NULL,
  description: VARCHAR(1020),
  price: INTEGER NOT NULL,
  FOREIGN KEY (developer_id) REFERENCES Developer(developer_id),
  PRIMARY KEY (app_id))
;

CREATE TABLE Content (
  content_id: BIGINT NOT NULL AUTO_INCREMENT,
  name: VARCHAR (255) NOT NULL,
  price: INTEGER NOT NULL,
  description: VARCHAR(1020),
  image: VARCHAR(2040),
  app_id: BIGINT NOT NULL,
  developer_id: BIGINT NOT NULL,
  FOREIGN KEY (app_id) REFERENCES App(app_id),
  FOREIGN KEY (developer_id) REFERENCES Developer(developer_idz),
  PRIMARY KEY (content_id))
;

CREATE TABLE Developer (
  developer_id: BIGINT NOT NULL AUTO_INCREMENT,
  company_name: VARCHAR(255) NOT NULL,
  email: VARCHAR(255) NOT NULL,
  logo: VARCHAR(2040) NOT NULL,
  country: VARCHAR(255),
  bio: VARCHAR(2040),
  PRIMARY KEY (developer_id))
;

CREATE TABLE User (
  user_id: BIGINT NOT NULL AUTO_INCREMENT,
  username: VARCHAR(255) NOT NULL,
  email: VARCHAR(1020) NOT NULL,
  first_name: VARCHAR(255) NOT NULL,
  last_name: VARCHAR(255),
  gender: VARCHAR(255),
  birthday: DATE,
  age: INTEGER,
  PRIMARY KEY (user_id))
;

# --- !Downs
DROP TABLE User;

DROP TABLE Developer;

DROP TABLE Content;

DROP TABLE App;