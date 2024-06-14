--countries
INSERT INTO investment.country(
	id, name)
	VALUES (1, 'Россия');

INSERT INTO investment.country(
	id, name)
	VALUES (2, 'США');

INSERT INTO investment.country(
	id, name)
	VALUES (3, 'Китай');

INSERT INTO investment.country(
	id, name)
	VALUES (4, 'Великобритания');

INSERT INTO investment.country(
	id, name)
	VALUES (5, 'Страны Евросоюза');

--companies
INSERT INTO investment.company(
	id, name, country_id)
	VALUES (1, 'Газпром', 1);

INSERT INTO investment.company(
	id, name, country_id)
	VALUES (2, 'Роснефть', 1);

INSERT INTO investment.company(
	id, name, country_id)
	VALUES (3, 'Apple', 2);

INSERT INTO investment.company(
	id, name, country_id)
	VALUES (4, 'Yandex', 1);

INSERT INTO investment.company(
	id, name, country_id)
	VALUES (5, 'Intel', 2);

INSERT INTO investment.company(
	id, name, country_id)
	VALUES (6, 'Bayer', 5);

INSERT INTO investment.company(
	id, name, country_id)
	VALUES (7, 'Xiaomi', 3);

INSERT INTO investment.company(
	id, name, country_id)
	VALUES (8, 'Сбербанк', 1);

INSERT INTO investment.company(
	id, name, country_id)
	VALUES (9, 'Tencent', 3);

INSERT INTO investment.company(
	id, name, country_id)
	VALUES (10, 'Volkswagen', 5);

--currencies
INSERT INTO investment.currency(
	id, name, cost, country_id)
	VALUES (1, 'USD', 88.70, 2);

INSERT INTO investment.currency(
	id, name, cost, country_id)
	VALUES (2, 'EUR', 96.60, 5);
	
INSERT INTO investment.currency(
	id, name, cost, country_id)
	VALUES (3, 'CNY', 12.20, 3);

INSERT INTO investment.currency(
	id, name, cost, country_id)
	VALUES (4, 'GBP', 113.30, 4);

INSERT INTO investment.currency(
	id, name, cost, country_id)
	VALUES (5, 'RUB', NULL, 1);

--persons
INSERT INTO investment.person(
	id, surname, first_name, last_name)
	VALUES (1, 'Соколов', 'Никита', 'Егорович');

INSERT INTO investment.person(
	id, surname, first_name, last_name)
	VALUES (2, 'Алексеев', 'Макар', 'Егорович');

INSERT INTO investment.person(
	id, surname, first_name, last_name)
	VALUES (3, 'Куликов', 'Артём', 'Григорьевич');

INSERT INTO investment.person(
	id, surname, first_name, last_name)
	VALUES (4, 'Волков', 'Александр', 'Егорович');

INSERT INTO investment.person(
	id, surname, first_name, last_name)
	VALUES (5, 'Мальцева', 'Милана', 'Андреевна');

INSERT INTO investment.person(
	id, surname, first_name, last_name)
	VALUES (6, 'Авдеев', 'Кирилл', 'Егорович');

INSERT INTO investment.person(
	id, surname, first_name, last_name)
	VALUES (7, 'Голубева', 'Виктория', 'Демидовна');
	
INSERT INTO investment.person(
	id, surname, first_name, last_name)
	VALUES (8, 'Сорокина', 'Александра', 'Андреевна');

INSERT INTO investment.person(
	id, surname, first_name, last_name)
	VALUES (9, 'Власов', 'Леонид', 'Андреевич');
	
INSERT INTO investment.person(
	id, surname, first_name, last_name)
	VALUES (10, 'Федоров', 'Егор', 'Алексеевич');
	
--stocks
INSERT INTO investment.stock(
	id, cost, company_id)
	VALUES (1, 122.70, 1);

INSERT INTO investment.stock(
	id, cost, company_id)
	VALUES (2, 571.60, 2);

INSERT INTO investment.stock(
	id, cost, company_id)
	VALUES (3, 15533.10, 3);

INSERT INTO investment.stock(
	id, cost, company_id)
	VALUES (4, 4200, 4);
	
INSERT INTO investment.stock(
	id, cost, company_id)
	VALUES (5, 2662.80, 5);

INSERT INTO investment.stock(
	id, cost, company_id)
	VALUES (6, 2732.50, 6);

INSERT INTO investment.stock(
	id, cost, company_id)
	VALUES (7, 621.20, 7);

INSERT INTO investment.stock(
	id, cost, company_id)
	VALUES (8, 320.50, 8);

INSERT INTO investment.stock(
	id, cost, company_id)
	VALUES (9, 3370.90, 9);

INSERT INTO investment.stock(
	id, cost, company_id)
	VALUES (10, 10842.46, 10);

--brocker_accounts
INSERT INTO investment.brocker_account(
	id, currency_id)
	VALUES (1, 5);

INSERT INTO investment.brocker_account(
	id, currency_id)
	VALUES (2, 1);

INSERT INTO investment.brocker_account(
	id, currency_id)
	VALUES (3, 2);

INSERT INTO investment.brocker_account(
	id, currency_id)
	VALUES (4, 3);

--brockers
INSERT INTO investment.brocker(
	id, brocker_account_id, name)
	VALUES (1, 1, 'Тинькофф');

INSERT INTO investment.brocker(
	id, brocker_account_id, name)
	VALUES (2, 2, 'Тинькофф');

INSERT INTO investment.brocker(
	id, brocker_account_id, name)
	VALUES (3, 3, 'Тинькофф');

INSERT INTO investment.brocker(
	id, brocker_account_id, name)
	VALUES (4, 4, 'Тинькофф');

INSERT INTO investment.brocker(
	id, brocker_account_id, name)
	VALUES (5, 1, 'Сбербанк');

INSERT INTO investment.brocker(
	id, brocker_account_id, name)
	VALUES (6, 2, 'Сбербанк');

INSERT INTO investment.brocker(
	id, brocker_account_id, name)
	VALUES (7, 3, 'Сбербанк');

INSERT INTO investment.brocker(
	id, brocker_account_id, name)
	VALUES (8, 1, 'Альфа-банк');

--person_stocks
INSERT INTO investment.person_stock(
	id, person_id, stock_id, count, total_price)
	VALUES (1, 1, 2, 10, 5716);

INSERT INTO investment.person_stock(
	id, person_id, stock_id, count, total_price)
	VALUES (2, 1, 4, 3, 12600);

INSERT INTO investment.person_stock(
	id, person_id, stock_id, count, total_price)
	VALUES (3, 2, 8, 20, 6410);

INSERT INTO investment.person_stock(
	id, person_id, stock_id, count, total_price)
	VALUES (4, 3, 7, 5, 3106);

INSERT INTO investment.person_stock(
	id, person_id, stock_id, count, total_price)
	VALUES (5, 4, 3, 1, 15533.10);

INSERT INTO investment.person_stock(
	id, person_id, stock_id, count, total_price)
	VALUES (6, 4, 5, 1, 2662.90);

INSERT INTO investment.person_stock(
	id, person_id, stock_id, count, total_price)
	VALUES (7, 4, 1, 5, 613.50);

INSERT INTO investment.person_stock(
	id, person_id, stock_id, count, total_price)
	VALUES (8, 5, 9, 6, 20225.40);

INSERT INTO investment.person_stock(
	id, person_id, stock_id, count, total_price)
	VALUES (9, 6, 10, 3, 32527.38);

INSERT INTO investment.person_stock(
	id, person_id, stock_id, count, total_price)
	VALUES (10, 7, 2, 15, 8574);

INSERT INTO investment.person_stock(
	id, person_id, stock_id, count, total_price)
	VALUES (11, 7, 8, 10, 3205);

INSERT INTO investment.person_stock(
	id, person_id, stock_id, count, total_price)
	VALUES (12, 8, 6, 7, 19127.50);

INSERT INTO investment.person_stock(
	id, person_id, stock_id, count, total_price)
	VALUES (13, 8, 3, 4, 62132.40);

INSERT INTO investment.person_stock(
	id, person_id, stock_id, count, total_price)
	VALUES (14, 9, 1, 52, 6380.40);

INSERT INTO investment.person_stock(
	id, person_id, stock_id, count, total_price)
	VALUES (15, 10, 8, 40, 12820);

--person_currencies
INSERT INTO investment.person_currency(
	id, person_id, currency_id, count, total_cost)
	VALUES (1, 3, 2, 251, 24246.60);

INSERT INTO investment.person_currency(
	id, person_id, currency_id, count, total_cost)
	VALUES (2, 6, 1, 87, 7716.90);

INSERT INTO investment.person_currency(
	id, person_id, currency_id, count, total_cost)
	VALUES (3, 6, 3, 131, 1598.20);

INSERT INTO investment.person_currency(
	id, person_id, currency_id, count, total_cost)
	VALUES (4, 9, 1, 63, 5588.10);

INSERT INTO investment.person_currency(
	id, person_id, currency_id, count, total_cost)
	VALUES (5, 9, 2, 44, 4250.40);

INSERT INTO investment.person_currency(
	id, person_id, currency_id, count, total_cost)
	VALUES (6, 9, 3, 851, 10382.20);

--person_brocker_accounts
INSERT INTO investment.person_brocker_account(
	id, person_id, brocker_id, balance)
	VALUES (1, 1, 1, 18316);

INSERT INTO investment.person_brocker_account(
	id, person_id, brocker_id, balance)
	VALUES (2, 2, 1, 6410);

INSERT INTO investment.person_brocker_account(
	id, person_id, brocker_id, balance)
	VALUES (3, 3, 5, 27352.6);

INSERT INTO investment.person_brocker_account(
	id, person_id, brocker_id, balance)
	VALUES (4, 4, 1, 18196);

INSERT INTO investment.person_brocker_account(
	id, person_id, brocker_id, balance)
	VALUES (5, 4, 8, 613.50);

INSERT INTO investment.person_brocker_account(
	id, person_id, brocker_id, balance)
	VALUES (6, 5, 5, 20225.40);

INSERT INTO investment.person_brocker_account(
	id, person_id, brocker_id, balance)
	VALUES (7, 6, 1, 9315.10);

INSERT INTO investment.person_brocker_account(
	id, person_id, brocker_id, balance)
	VALUES (8, 6, 4, 32527.38);

INSERT INTO investment.person_brocker_account(
	id, person_id, brocker_id, balance)
	VALUES (9, 7, 2, 3205);

INSERT INTO investment.person_brocker_account(
	id, person_id, brocker_id, balance)
	VALUES (10, 8, 1, 62132.40);

INSERT INTO investment.person_brocker_account(
	id, person_id, brocker_id, balance)
	VALUES (11, 8, 8, 19127.50);

INSERT INTO investment.person_brocker_account(
	id, person_id, brocker_id, balance)
	VALUES (12, 9, 2, 6380.40);

INSERT INTO investment.person_brocker_account(
	id, person_id, brocker_id, balance)
	VALUES (13, 9, 5, 20220.70);

INSERT INTO investment.person_brocker_account(
	id, person_id, brocker_id, balance)
	VALUES (14, 10, 3, 12820);
	
--operations
INSERT INTO investment.operation(
	id, type, person_brocker_account_id, sum, date, time)
	VALUES (1, 'Вывод', 1, 8400, '2024-01-06', '15:34:02');

INSERT INTO investment.operation(
	id, type, person_brocker_account_id, sum, date, time)
	VALUES (2, 'Пополнение', 2, 3105, '2024-01-06', '15:37:38');
	
INSERT INTO investment.operation(
	id, type, person_brocker_account_id, sum, date, time)
	VALUES (3, 'Пополнение', 4, 18196, '2024-01-06', '15:38:05');

INSERT INTO investment.operation(
	id, type, person_brocker_account_id, sum, date, time)
	VALUES (4, 'Пополнение', 4, 18196, '2024-01-06', '15:38:05');
	
INSERT INTO investment.operation(
	id, type, person_brocker_account_id, sum, date, time)
	VALUES (5, 'Вывод', 5, 6135, '2024-01-06', '15:39:59');

INSERT INTO investment.operation(
	id, type, person_brocker_account_id, sum, date, time)
	VALUES (6, 'Вывод', 6, 16856.5, '2024-01-06', '15:40:21');

INSERT INTO investment.operation(
	id, type, person_brocker_account_id, sum, date, time)
	VALUES (7, 'Пополнение', 8, 10842.46, '2024-01-06', '15:41:31');

INSERT INTO investment.operation(
	id, type, person_brocker_account_id, sum, date, time)
	VALUES (8, 'Пополнение', 7, 378.2, '2024-01-06', '15:41:31');

INSERT INTO investment.operation(
	id, type, person_brocker_account_id, sum, date, time)
	VALUES (9, 'Пополнение', 7, 8870, '2024-01-06', '15:43:59');

INSERT INTO investment.operation(
	id, type, person_brocker_account_id, sum, date, time)
	VALUES (10, 'Вывод', 9, 613.5, '2024-01-06', '15:44:47');

INSERT INTO investment.operation(
	id, type, person_brocker_account_id, sum, date, time)
	VALUES (11, 'Вывод', 10, 15533.1, '2024-01-06', '15:45:47');

INSERT INTO investment.operation(
	id, type, person_brocker_account_id, sum, date, time)
	VALUES (12, 'Вывод', 11, 8197.5, '2024-01-06', '15:46:52');

INSERT INTO investment.operation(
	id, type, person_brocker_account_id, sum, date, time)
	VALUES (13, 'Вывод', 14, 107.9, '2024-01-06', '15:47:33');

--stock_operations
INSERT INTO investment.stock_operation(
	id, person_id, type, stock_id, count, cost_sum, date, time)
	VALUES (1, 1, 'Продажа', 4, 2, 8400, '2024-01-06', '15:33:15');

INSERT INTO investment.stock_operation(
	id, person_id, type, stock_id, count, cost_sum, date, time)
	VALUES (2, 2, 'Покупка', 8, 10, 3105, '2024-01-06', '15:38:21');

INSERT INTO investment.stock_operation(
	id, person_id, type, stock_id, count, cost_sum, date, time)
	VALUES (3, 3, 'Продажа', 7, 5, 3106, '2024-01-06', '15:40:56');

INSERT INTO investment.stock_operation(
	id, person_id, type, stock_id, count, cost_sum, date, time)
	VALUES (4, 4, 'Покупка', 3, 1, 15533.1, '2024-01-06', '15:38:24');

INSERT INTO investment.stock_operation(
	id, person_id, type, stock_id, count, cost_sum, date, time)
	VALUES (5, 4, 'Покупка', 5, 1, 2662.9, '2024-01-06', '15:38:57');

INSERT INTO investment.stock_operation(
	id, person_id, type, stock_id, count, cost_sum, date, time)
	VALUES (6, 4, 'Продажа', 1, 10, 6135, '2024-01-06', '15:39:21');

INSERT INTO investment.stock_operation(
	id, person_id, type, stock_id, count, cost_sum, date, time)
	VALUES (7, 5, 'Продажа', 9, 5, 16856.5, '2024-01-06', '15:39:43');

INSERT INTO investment.stock_operation(
	id, person_id, type, stock_id, count, cost_sum, date, time)
	VALUES (8, 6, 'Покупка', 10, 1, 10842.46, '2024-01-06', '15:42:31');

INSERT INTO investment.stock_operation(
	id, person_id, type, stock_id, count, cost_sum, date, time)
	VALUES (9, 7, 'Продажа', 1, 5, 613.5, '2024-01-06', '15:42:49');

INSERT INTO investment.stock_operation(
	id, person_id, type, stock_id, count, cost_sum, date, time)
	VALUES (10, 8, 'Продажа', 3, 1, 15533.1, '2024-01-06', '15:43:37');

INSERT INTO investment.stock_operation(
	id, person_id, type, stock_id, count, cost_sum, date, time)
	VALUES (11, 8, 'Продажа', 6, 3, 8197.5, '2024-01-06', '15:44:53');

INSERT INTO investment.stock_operation(
	id, person_id, type, stock_id, count, cost_sum, date, time)
	VALUES (12, 10, 'Продажа', 1, 27, 3312.9, '2024-01-06', '15:45:31');

INSERT INTO investment.stock_operation(
	id, person_id, type, stock_id, count, cost_sum, date, time)
	VALUES (13, 10, 'Покупка', 8, 10, 3205, '2024-01-06', '15:46:43');

--currency_operations
INSERT INTO investment.currency_operation(
	id, person_id, type, currency_id, count, cost_sum, date, time)
	VALUES (1, 3, 'Покупка', 2, 32, 3106, '2024-01-06', '15:41:48');

INSERT INTO investment.currency_operation(
	id, person_id, type, currency_id, count, cost_sum, date, time)
	VALUES (2, 6, 'Покупка', 3, 31, 378.2, '2024-01-06', '15:42:37');

INSERT INTO investment.currency_operation(
	id, person_id, type, currency_id, count, cost_sum, date, time)
	VALUES (3, 6, 'Продажа', 1, 100, 8870, '2024-01-06', '15:43:08');

INSERT INTO investment.currency_operation(
	id, person_id, type, currency_id, count, cost_sum, date, time)
	VALUES (4, 9, 'Продажа', 1, 7, 620.9, '2024-01-06', '15:49:33');

INSERT INTO investment.currency_operation(
	id, person_id, type, currency_id, count, cost_sum, date, time)
	VALUES (5, 9, 'Продажа', 2, 6, 579.6, '2024-01-06', '15:50:12');

INSERT INTO investment.currency_operation(
	id, person_id, type, currency_id, count, cost_sum, date, time)
	VALUES (6, 9, 'Покупка', 3, 98, 1195.6, '2024-01-06', '15:51:07');