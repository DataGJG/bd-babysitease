CREATE TABLE IF NOT EXISTS account (
    cpf VARCHAR(11) PRIMARY KEY,
    profile_pic VARCHAR(255),
    birth_date DATE,
    gender VARCHAR(1),
    email VARCHAR(255),
    password VARCHAR(255),
    name VARCHAR(80),
    last_name VARCHAR(100),
    street VARCHAR(255),
    number VARCHAR(10),
    neighborhood VARCHAR(255),
    city VARCHAR(255) DEFAULT 'Recife'
);
           
CREATE TABLE IF NOT EXISTS babysitter (
    cpf VARCHAR(11) PRIMARY KEY, 
    education_level VARCHAR(50),
    documents_submitted BOOLEAN,
    experience_years INT,
    hourly_price DECIMAL(5, 2),
    rating INT,
    description TEXT,
    FOREIGN KEY (cpf) REFERENCES account(cpf) 
);
           
CREATE TABLE IF NOT EXISTS parent (
    cpf VARCHAR(11) PRIMARY KEY,
    FOREIGN key (cpf) REFERENCES account(cpf)
);
           
CREATE TABLE IF NOT EXISTS favorite (
    babysitter_cpf VARCHAR(11),
    parent_cpf VARCHAR(11),
    PRIMARY KEY (babysitter_cpf, parent_cpf),
    FOREIGN KEY (babysitter_cpf) REFERENCES babysitter(cpf),
    FOREIGN KEY (parent_cpf) REFERENCES parent(cpf)
);
      
CREATE TABLE IF NOT EXISTS schedule (
    id INT AUTO_INCREMENT PRIMARY KEY,
    week_day ENUM('mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun'),
    time_period ENUM('morning', 'afternoon', 'night')
);
           
CREATE TABLE IF NOT EXISTS babysitter_schedule (
    id INT AUTO_INCREMENT PRIMARY KEY,
    babysitter_cpf VARCHAR(11),
    schedule_id INT,
    availability ENUM('available', 'unavailable', 'pending'),
    FOREIGN KEY (babysitter_cpf) REFERENCES babysitter(cpf),
    FOREIGN KEY (schedule_id) REFERENCES schedule(id)
);


CREATE TABLE IF NOT EXISTS request (
    id INT AUTO_INCREMENT PRIMARY KEY,
    babysitter_cpf VARCHAR(11),
    parent_cpf VARCHAR(11),
    status ENUM('pending', 'accepted', 'rejected'),
    date DATE,
    FOREIGN KEY (babysitter_cpf) REFERENCES babysitter(cpf),
    FOREIGN KEY (parent_cpf) REFERENCES parent(cpf)
);

CREATE TABLE IF NOT EXISTS request_schedule (
    request_id INT,
    schedule_id INT,
    PRIMARY KEY (request_id, schedule_id),
    FOREIGN KEY (request_id) REFERENCES request(id),
    FOREIGN KEY (schedule_id) REFERENCES babysitter_schedule(id)
);

CREATE TABLE IF NOT EXISTS contract (
    id INT AUTO_INCREMENT PRIMARY KEY,
    request_id INT,
    start_date DATE,
    end_date DATE,
    total_price DECIMAL(5, 2),
    status ENUM('active', 'finished'),
    FOREIGN KEY (request_id) REFERENCES request(id)
);

CREATE TABLE IF NOT EXISTS evaluation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    babysitter_cpf VARCHAR(11),
    parent_cpf VARCHAR(11),
    rating_stars INT,
    description TEXT,
    contract_id INT,
    FOREIGN KEY (babysitter_cpf) REFERENCES babysitter(cpf),
    FOREIGN KEY (parent_cpf) REFERENCES parent(cpf),
    FOREIGN KEY (contract_id) REFERENCES contract(id)
);

           
CREATE TABLE IF NOT EXISTS neighborhood (
    name VARCHAR(255) PRIMARY KEY
);
           
CREATE TABLE IF NOT EXISTS neighborhood_babysitter (
    neighborhood_name VARCHAR(255),
    babysitter_cpf VARCHAR(11),
    PRIMARY KEY (neighborhood_name, babysitter_cpf),
    FOREIGN KEY (neighborhood_name) REFERENCES neighborhood(name),
    FOREIGN KEY (babysitter_cpf) REFERENCES babysitter(cpf)
);

           
CREATE TABLE IF NOT EXISTS languages (
    name VARCHAR(50) PRIMARY KEY
);
           
CREATE TABLE IF NOT EXISTS babysitter_languages (
    language_name VARCHAR(50),
    babysitter_cpf VARCHAR(11),
    PRIMARY KEY (language_name, babysitter_cpf),
    FOREIGN KEY (language_name) REFERENCES languages(name),
    FOREIGN KEY (babysitter_cpf) REFERENCES babysitter(cpf)
);

ALTER TABLE babysitter
MODIFY documents_submitted TINYINT(1);

ALTER TABLE babysitter
modify hourly_price FLOAT;

-- VALIDA A FORMATAÇÃO DO EMAIL VIA REGEX
DELIMITER //

CREATE TRIGGER BeforeCreateAccountEmail
BEFORE INSERT ON account
FOR EACH ROW
BEGIN
    IF NEW.email NOT REGEXP '^[^@\\s]+@[^@\\s]+\\.[^@\\s]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid email format.';
    END IF;
END //

DELIMITER ;

-- OS COMANDOS ABAIXO SERVIRAM PARA TESTAR O SCRIPT DE CRIAÇÃO APENAS
-- DROP TABLE IF EXISTS babysitter_languages;
-- DROP TABLE IF EXISTS languages;
-- DROP TABLE IF EXISTS neighborhood_babysitter;
-- DROP TABLE IF EXISTS neighborhood;
-- DROP TABLE IF EXISTS evaluation;
-- DROP TABLE IF EXISTS contract;
-- DROP TABLE IF EXISTS request_schedule;
-- DROP TABLE IF EXISTS request;
-- DROP TABLE IF EXISTS babysitter_schedule;
-- DROP TABLE IF EXISTS schedule;
-- DROP TABLE IF EXISTS favorite;
-- DROP TABLE IF EXISTS parent;
-- DROP TABLE IF EXISTS babysitter;
-- DROP TABLE IF EXISTS account;

