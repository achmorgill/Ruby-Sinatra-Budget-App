DROP TABLE transactions;
DROP TABLE users;
DROP TABLE categories;


CREATE TABLE categories
(
id SERIAL4 PRIMARY KEY,
name VARCHAR(255)
);


CREATE TABLE users
(
id SERIAL4 PRIMARY KEY,
name VARCHAR(255),
budget NUMERIC(8,2),
overdraft_limit NUMERIC(8,2),
budget_overspend_flag INT4
);

CREATE TABLE transactions
(
id SERIAL4 PRIMARY KEY,
transaction_date DATE,
category_id INT4 REFERENCES categories(id),
user_id INT4 REFERENCES users(id),
amount NUMERIC(8,2),
description VARCHAR(255)
);