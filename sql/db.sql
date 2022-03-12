CREATE TABLE `techblogdb`.`user` (
  `id` INT NOT NULL,
  `name` VARCHAR(500) NOT NULL,
  `email` VARCHAR(500) NOT NULL,
  `password` VARCHAR(500) NOT NULL,
  `gender` VARCHAR(45) NOT NULL,
  `about` VARCHAR(1000) NULL,
  `rdate` DATETIME NOT NULL DEFAULT now(),
  `profile` VARCHAR(500) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE);
  
  
ALTER TABLE `techblogdb`.`user` 
CHANGE COLUMN `profile` `profile` VARCHAR(500) NULL DEFAULT 'default.png' ;


ALTER TABLE `techblogdb`.`user` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ;
