CREATE table population(
    id INT AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(50),
    population INT,
    date DATE,
    percent DECIMAL(5, 2)
);

insert into population(
    country, population, date, percent)
    values('China', 1394930000, '2018-11-01', 18.2);

select id, country, population, date, CONCAT(percent, "%") as percent from population;
