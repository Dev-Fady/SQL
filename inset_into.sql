CREATE TABLE OO (
    brand_id INT PRIMARY KEY,
    brand_name VARCHAR(255) NOT NULL
);

CREATE TABLE test_OO (
    brand_id INT   IDENTITY(1,1) PRIMARY KEY ,
    brand_name VARCHAR(255) NOT NULL
);

INSERT INTO OO (brand_id, brand_name)
VALUES 
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Puma'),
(4, 'Reebok');

INSERT INTO test_OO (brand_name)
SELECT brand_name FROM OO;

SELECT * FROM test_OO;