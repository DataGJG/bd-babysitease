-- INSERIR account (cpf, profile_pic, birth_date, gender, email, password, name, last_name, street, number, neighborhood, city) VALUES
INSERT INTO account (cpf, profile_pic, birth_date, gender, email, password, name, last_name, street, number, neighborhood, city) VALUES
('11111111111', 'profile1.jpg', '1990-01-01', 'M', 'email1@example.com', 'password1', 'John', 'Doe', 'Street 1', '123', 'Neighborhood 1', 'Recife'),
('11111111112', 'profile2.jpg', '1991-02-02', 'F', 'email2@example.com', 'password2', 'Jane', 'Smith', 'Street 2', '456', 'Neighborhood 2', 'Recife'),
('11111111113', 'profile3.jpg', '1992-03-03', 'M', 'email3@example.com', 'password3', 'Alice', 'Johnson', 'Street 3', '789', 'Neighborhood 3', 'Recife'),
('11111111114', 'profile4.jpg', '1993-04-04', 'O', 'email4@example.com', 'password4', 'Bob', 'Williams', 'Street 4', '1011', 'Neighborhood 4', 'Recife'),
('11111111115', 'profile5.jpg', '1994-05-05', 'F', 'email5@example.com', 'password5', 'Eva', 'Brown', 'Street 5', '1213', 'Neighborhood 5', 'Recife'),
('11111111116', 'profile6.jpg', '1995-06-06', 'M', 'email6@example.com', 'password6', 'Michael', 'Miller', 'Street 6', '1415', 'Neighborhood 6', 'Recife'),
('11111111117', 'profile7.jpg', '1996-07-07', 'O', 'email7@example.com', 'password7', 'Sophia', 'Wilson', 'Street 7', '1617', 'Neighborhood 7', 'Recife'),
('11111111118', 'profile8.jpg', '1997-08-08', 'M', 'email8@example.com', 'password8', 'William', 'Taylor', 'Street 8', '1819', 'Neighborhood 8', 'Recife'),
('11111111119', 'profile9.jpg', '1998-09-09', 'F', 'email9@example.com', 'password9', 'Olivia', 'Anderson', 'Street 9', '2021', 'Neighborhood 9', 'Recife'),
('11111111120', 'profile10.jpg', '1999-10-10', 'M', 'email10@example.com', 'password10', 'James', 'Thomas', 'Street 10', '2223', 'Neighborhood 10', 'Recife'),
('11111111121', 'profile11.jpg', '2000-11-11', 'F', 'email11@example.com', 'password11', 'Emily', 'Jackson', 'Street 11', '2425', 'Neighborhood 11', 'Recife'),
('11111111122', 'profile12.jpg', '2001-12-12', 'M', 'email12@example.com', 'password12', 'Daniel', 'White', 'Street 12', '2627', 'Neighborhood 12', 'Recife'),
('11111111123', 'profile13.jpg', '2002-01-13', 'F', 'email13@example.com', 'password13', 'Emma', 'Harris', 'Street 13', '2829', 'Neighborhood 13', 'Recife'),
('11111111124', 'profile14.jpg', '2003-02-14', 'M', 'email14@example.com', 'password14', 'Alexander', 'Martinez', 'Street 14', '3031', 'Neighborhood 14', 'Recife'),
('11111111125', 'profile15.jpg', '2004-03-15', 'F', 'email15@example.com', 'password15', 'Ava', 'Robinson', 'Street 15', '3233', 'Neighborhood 15', 'Recife'),
('11111111126', 'profile16.jpg', '2005-04-16', 'M', 'email16@example.com', 'password16', 'Noah', 'Clark', 'Street 16', '3435', 'Neighborhood 16', 'Recife'),
('11111111127', 'profile17.jpg', '2006-05-17', 'F', 'email17@example.com', 'password17', 'Isabella', 'Rodriguez', 'Street 17', '3637', 'Neighborhood 17', 'Recife'),
('11111111128', 'profile18.jpg', '2007-06-18', 'M', 'email18@example.com', 'password18', 'Liam', 'Lewis', 'Street 18', '3839', 'Neighborhood 18', 'Recife'),
('11111111129', 'profile19.jpg', '2008-07-19', 'F', 'email19@example.com', 'password19', 'Mia', 'Lee', 'Street 19', '4041', 'Neighborhood 19', 'Recife'),
('11111111130', 'profile20.jpg', '2009-08-20', 'M', 'email20@example.com', 'password20', 'Lucas', 'Walker', 'Street 20', '4243', 'Neighborhood 20', 'Recife');
-- Populando a tabela "article" com 10 registros fictícios

INSERT INTO babysitter (cpf, education_level, documents_submitted, experience_years, hourly_price, rating, description)
VALUES
('11111111121', 'Bachelor Degree', TRUE, 5, 20.00, 4, 'Experienced babysitter with CPR certification.'),
('11111111122', 'High School', TRUE, 3, 15.00, 4, 'Responsible and caring babysitter with flexible hours.'),
('11111111123', 'Bachelor Degree', TRUE, 4, 18.00, 5, 'Certified babysitter with experience in childcare centers.'),
('11111111124', 'Master Degree', TRUE, 6, 25.00, 5, 'Reliable and creative babysitter with excellent references.'),
('11111111125', 'Bachelor Degree', TRUE, 2, 12.00, 3, 'Enthusiastic and energetic babysitter with a passion for child development.'),
('11111111126', 'High School', TRUE, 3, 14.00, 4, 'Experienced babysitter with a patient and nurturing approach.'),
('11111111127', 'Bachelor Degree', TRUE, 5, 22.00, 5, 'Responsible and attentive babysitter with a background in early childhood education.'),
('11111111128', 'Master Degree', TRUE, 7, 30.00, 5, 'Professional babysitter with first aid training and positive attitude.'),
('11111111129', 'High School', TRUE, 4, 16.00, 4, 'Reliable and trustworthy babysitter with a love for outdoor activities.'),
('11111111130', 'Bachelor Degree', TRUE, 3, 17.00, 4, 'Friendly and adaptable babysitter with experience in special needs care.');

-- Populando a tabela "parent" com 10 registros fictícios (podem ser iguais aos da tabela "account")
INSERT INTO parent (cpf) VALUES
('11111111111'),
('11111111112'),
('11111111113'),
('11111111114'),
('11111111115'),
('11111111116'),
('11111111117'),
('11111111118'),
('11111111119'),
('11111111120');

-- Populando a tabela "neighborhood" com 10 registros fictícios
INSERT INTO neighborhood (name) VALUES
('Boa Viagem'),
('Madalena'),
('Graças'),
('Parnamirim'),
('Encruzilhada'),
('Espinheiro'),
('Casa Forte'),
('Campo Grande'),
('Imbiribeira'),
('Iputinga'),
('Ibura'),
('Torrões'),
('Afogados'),
('Água Fria'),
('Areias'),
('Barro'),
('Benfica'),
('Beberibe'),
('Bomba do Hemetério'),
('Cajueiro');

-- Populando a tabela "languages" com 10 registros fictícios
INSERT INTO languages (name) values
('Spanish'),
('English'),
('French'),
('German'),
('Mandarin'),
('Italian'),
('Japanese'),
('Russian'),
('Arabic');

INSERT INTO babysitter_languages (language_name, babysitter_cpf) VALUES
('Spanish', '11111111121'),
('English', '11111111121'),
('French', '11111111122'),
('English', '11111111122'),
('Spanish', '11111111123'),
('French', '11111111124'),
('English', '11111111125'),
('French', '11111111126'),
('Spanish', '11111111126'),
('English', '11111111126'),
('French', '11111111127'),
('Spanish', '11111111127'),
('English', '11111111127'),
('German', '11111111127'),
('Italian', '11111111127'),
('Spanish', '11111111128'),
('English', '11111111128');

INSERT INTO neighborhood_babysitter (neighborhood_name, babysitter_cpf) VALUES
('Ibura', '11111111121'),
('Torrões', '11111111122'),
('Afogados', '11111111123'),
('Água Fria', '11111111124'),
('Areias', '11111111125'),
('Barro', '11111111126'),
('Benfica', '11111111127'),
('Beberibe', '11111111128'),
('Bomba do Hemetério', '11111111129'),
('Cajueiro', '11111111130');

-- Inserindo registros na tabela schedule
INSERT INTO schedule (week_day, time_period) VALUES ('mon', 'morning');
INSERT INTO schedule (week_day, time_period) VALUES ('mon', 'afternoon');
INSERT INTO schedule (week_day, time_period) VALUES ('mon', 'night');

INSERT INTO schedule (week_day, time_period) VALUES ('tue', 'morning');
INSERT INTO schedule (week_day, time_period) VALUES ('tue', 'afternoon');
INSERT INTO schedule (week_day, time_period) VALUES ('tue', 'night');

INSERT INTO schedule (week_day, time_period) VALUES ('wed', 'morning');
INSERT INTO schedule (week_day, time_period) VALUES ('wed', 'afternoon');
INSERT INTO schedule (week_day, time_period) VALUES ('wed', 'night');

INSERT INTO schedule (week_day, time_period) VALUES ('thu', 'morning');
INSERT INTO schedule (week_day, time_period) VALUES ('thu', 'afternoon');
INSERT INTO schedule (week_day, time_period) VALUES ('thu', 'night');

INSERT INTO schedule (week_day, time_period) VALUES ('fri', 'morning');
INSERT INTO schedule (week_day, time_period) VALUES ('fri', 'afternoon');
INSERT INTO schedule (week_day, time_period) VALUES ('fri', 'night');

INSERT INTO schedule (week_day, time_period) VALUES ('sat', 'morning');
INSERT INTO schedule (week_day, time_period) VALUES ('sat', 'afternoon');
INSERT INTO schedule (week_day, time_period) VALUES ('sat', 'night');

INSERT INTO schedule (week_day, time_period) VALUES ('sun', 'morning');
INSERT INTO schedule (week_day, time_period) VALUES ('sun', 'afternoon');
INSERT INTO schedule (week_day, time_period) VALUES ('sun', 'night');

-- Inserindo registros na tabela babysitter_schedule
-- Definindo os registros de disponibilidade de acordo com os horários da tabela schedule


INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111121', 1, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111121', 2, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111121', 3, 'available');

-- Babá com CPF 11111111122
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111122', 4, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111122', 5, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111122', 6, 'available');

-- Babá com CPF 11111111123
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111123', 7, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111123', 8, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111123', 9, 'available');

-- Babá com CPF 11111111124
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111124', 10, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111124', 11, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111124', 12, 'available');

-- Babá com CPF 11111111125
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111125', 13, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111125', 14, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111125', 15, 'available');

-- Babá com CPF 11111111126
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111126', 16, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111126', 17, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111126', 18, 'available');

-- Babá com CPF 11111111127
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111127', 19, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111127', 20, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111127', 21, 'available');

-- Babá com CPF 11111111128
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111128', 1, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111128', 2, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111128', 3, 'available');

-- Babá com CPF 11111111129
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111129', 4, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111129', 5, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111129', 6, 'available');

-- Babá com CPF 11111111130
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111130', 7, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111130', 8, 'available');
INSERT INTO babysitter_schedule (babysitter_cpf, schedule_id, availability) VALUES ('11111111130', 9, 'available');

INSERT INTO request (babysitter_cpf, parent_cpf, status, date) VALUES
('11111111121', '11111111111', 'pending', '2024-05-28'),
('11111111122', '11111111112', 'pending', '2024-05-28'),
('11111111123', '11111111113', 'pending', '2024-05-28'),
('11111111124', '11111111114', 'pending', '2024-05-28'),
('11111111121', '11111111115', 'pending', '2024-05-28'),
('11111111126', '11111111116', 'pending', '2024-05-28'),
('11111111127', '11111111117', 'pending', '2024-05-28'),
('11111111128', '11111111118', 'pending', '2024-05-28'),
('11111111129', '11111111119', 'pending', '2024-05-28'),
('11111111130', '11111111120', 'pending', '2024-05-28'),
('11111111121', '11111111111', 'pending', '2024-05-28'),
('11111111122', '11111111112', 'pending', '2024-05-28'),
('11111111123', '11111111113', 'pending', '2024-05-28'),
('11111111124', '11111111114', 'pending', '2024-05-28'),
('11111111125', '11111111115', 'pending', '2024-05-28'),
('11111111126', '11111111116', 'pending', '2024-05-28'),
('11111111127', '11111111117', 'pending', '2024-05-28'),
('11111111121', '11111111118', 'pending', '2024-05-28'),
('11111111129', '11111111119', 'pending', '2024-05-28'),
('11111111121', '11111111120', 'pending', '2024-05-28');

-- For each request, associate it with available schedules for the chosen babysitter
-- Request 1 with Babysitter 11111111111
INSERT INTO request_schedule (request_id, schedule_id) 
SELECT 1, schedule_id FROM babysitter_schedule WHERE babysitter_cpf = '11111111121' AND availability = 'available';

-- Request 2 with Babysitter 11111111112
INSERT INTO request_schedule (request_id, schedule_id) 
SELECT 2, schedule_id FROM babysitter_schedule WHERE babysitter_cpf = '11111111122' AND availability = 'available';

-- Request 3 with Babysitter 11111111113
INSERT INTO request_schedule (request_id, schedule_id) 
SELECT 3, schedule_id FROM babysitter_schedule WHERE babysitter_cpf = '11111111123' AND availability = 'available';

-- Request 4 with Babysitter 11111111114
INSERT INTO request_schedule (request_id, schedule_id) 
SELECT 4, schedule_id FROM babysitter_schedule WHERE babysitter_cpf = '11111111124' AND availability = 'available';

-- Request 5 with Babysitter 11111111115
INSERT INTO request_schedule (request_id, schedule_id) 
SELECT 5, schedule_id FROM babysitter_schedule WHERE babysitter_cpf = '11111111125' AND availability = 'available';

INSERT INTO contract (request_id, start_date, end_date, total_price, status) VALUES
(1, '2023-06-01', '2023-06-30', 600.00, 'finished'),
(2, '2023-06-05', '2023-06-25', 450.00, 'active'),
(3, '2023-06-10', '2023-07-10', 720.00, 'active'),
(4, '2023-06-15', '2023-07-15', 750.00, 'finished'),
(5, '2023-06-20', '2023-07-05', 360.00, 'active'),
(6, '2023-06-25', '2023-07-20', 680.00, 'active'),
(7, '2023-06-30', '2023-07-10', 320.00, 'finished'),
(8, '2023-07-05', '2023-07-15', 300.00, 'active'),
(9, '2023-07-10', '2023-07-20', 400.00, 'active'),
(10, '2023-07-15', '2023-07-25', 500.00, 'finished'),
(11, '2023-06-01', '2023-06-30', 600.00, 'finished'),
(12, '2023-06-05', '2023-06-25', 450.00, 'active'),
(13, '2023-06-10', '2023-07-10', 720.00, 'active'),
(14, '2023-06-15', '2023-07-15', 750.00, 'finished'),
(15, '2023-06-20', '2023-07-05', 360.00, 'active'),
(16, '2023-06-25', '2023-07-20', 680.00, 'active'),
(17, '2023-06-30', '2023-07-10', 320.00, 'finished'),
(18, '2023-07-05', '2023-07-15', 300.00, 'active'),
(19, '2023-07-10', '2023-07-20', 400.00, 'active'),
(20, '2023-07-15', '2023-07-25', 500.00, 'finished');


-- Add more similar statements for each request and babysitter combination
INSERT INTO evaluation (babysitter_cpf, parent_cpf, rating_stars, description, contract_id) VALUES
('11111111121', '11111111111', 4, 'Great babysitter, very responsible and caring.', 1),
('11111111122', '11111111112', 5, 'Amazing experience, highly recommend!', 2),
('11111111123', '11111111113', 4, 'Professional and experienced, satisfied with the service.', 3),
('11111111124', '11111111114', 5, 'Excellent babysitter, exceeded expectations.', 4),
('11111111125', '11111111115', 3, 'Good service, but arrived late a couple of times.', 5),
('11111111126', '11111111116', 4, 'Patient and caring, children enjoyed their time.', 6),
('11111111127', '11111111117', 5, 'Very pleased with the service, will hire again.', 7),
('11111111128', '11111111118', 5, 'Professional and reliable, would recommend to others.', 8),
('11111111129', '11111111119', 4, 'Trustworthy babysitter, kids felt comfortable.', 9),
('11111111121', '11111111111', 4, 'Great babysitter, very responsible and caring.', 11),
('11111111121', '11111111111', 4, 'Great babysitter, very responsible and caring.', 18),
('11111111121', '11111111111', 4, 'Great babysitter, very responsible and caring.', 20),
('11111111130', '11111111120', 4, 'Friendly and adaptable, kids had fun.', 10);

SELECT b.cpf, a.name, COUNT(c.id) AS contracts_finished_last_year 
FROM babysitter b 
JOIN account a ON b.cpf = a.cpf 
JOIN request r ON b.cpf = r.babysitter_cpf 
JOIN contract c ON r.id = c.request_id 
WHERE c.status LIKE 'finished' AND c.end_date BETWEEN DATE_SUB(NOW(), INTERVAL 1 YEAR) AND NOW() 
GROUP BY b.cpf, a.name 
ORDER BY contracts_finished_last_year DESC 
LIMIT 1;

SELECT b.cpf, a.name, b.description, b.hourly_price 
FROM babysitter b 
JOIN account a ON b.cpf = a.cpf 
WHERE b.cpf IN 
	(SELECT e.babysitter_cpf 
	FROM evaluation e 
	GROUP BY e.babysitter_cpf 
	HAVING COUNT(*) >= 3 ) 
ORDER BY b.rating desc 
LIMIT 1;

