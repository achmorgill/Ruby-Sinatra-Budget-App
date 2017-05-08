DROP TABLE users;
DROP TABLE transactions;
DROP TABLE categories;

CREATE TABLE categories
(
id SERIAL4 PRIMARY KEY,
name VARCHAR(255),
logo VARCHAR(255)
);

CREATE TABLE transactions
(
id SERIAL4 PRIMARY KEY,
transaction_date DATE,
category_id INT4 REFERENCES categories(id),
amount NUMERIC(8,2),
description VARCHAR(255)
);

CREATE TABLE users
(
id SERIAL4 PRIMARY KEY,
name VARCHAR(255),
budget NUMERIC(8,2),
transaction_id INT4 REFERENCES transactions(id),
overdraft_limit NUMERIC(8,2),
budget_overspend_flag INT4
);