CREATE DATABASE galaxy DEFAULT CHARACTER SET utf8;
CREATE USER 'galaxy'@'localhost' IDENTIFIED BY 'galaxy';
GRANT ALL ON galaxy.* TO 'galaxy'@'localhost';
