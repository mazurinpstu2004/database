
-- Запрос 1: Компания и страна, которой принадлежит данная компания.
select
t1.name company_name,
t2.name country_name
from investment.company t1
inner join investment.country t2 on t1.country_id = t2.id
order by company_name

-- Запрос 2: Цена акции каждой компании
select
t1.name company_name,
t2.cost cost_stock
from investment.stock t2
inner join investment.company t1 on t2.company_id = t1.id
order by t2.cost asc

-- Запрос 3: Пользователи и акции, которыми они владеют
select
t1.surname person_surname,
t1.first_name person_first_name,
t1.last_name person_last_name,
c1.name company_name
from investment.person_stock t2
inner join investment.person t1 on t2.person_id = t1.id
inner join investment.stock s1 on t2.stock_id = s1.id
inner join investment.company c1 on s1.company_id = c1.id
order by 1

-- Запрос 4: Информация об пользователях и их брокерских счетах
select
t1.surname person_surname,
t1.first_name person_first_name,
t1.last_name person_last_name,
b1.name brocker_name,
c1.name currency
from investment.person_brocker_account t2
inner join investment.person t1 on t2.person_id = t1.id
inner join investment.brocker b1 on t2.brocker_id = b1.id
inner join investment.brocker_account a1 on b1.brocker_account_id = a1.id
inner join investment.currency c1 on a1.currency_id = c1.id
order by 1

-- Запрос 5: Пользователи, которые владеют акциями не менее 2 компаний и количество компаний
select
t1.surname person_surname,
t1.first_name person_first_name,
t1.last_name person_last_name,
count(c1.id) company_count
from investment.person_stock t2
inner join investment.person t1 on t2.person_id = t1.id
inner join investment.stock s1 on t2.stock_id = s1.id
inner join investment.company c1 on s1.company_id = c1.id
group by t1.surname, t1.first_name, t1.last_name
having count(c1.id) >= 2
order by company_count asc

-- Запрос 6: Пользователи и брокеры, валюты, в которых открыты счета
select
t1.surname person_surname,
t1.first_name person_first_name,
t1.last_name person_last_name,
b1.name brocker_name, 
c1.name currency_name
from investment.person_brocker_account t2
inner join investment.person t1 on t2.person_id = t1.id
inner join investment.brocker b1 on t2.brocker_id = b1.id
inner join investment.brocker_account a1 on b1.brocker_account_id = a1.id
inner join investment.currency c1 on a1.currency_id = c1.id
order by person_surname

-- Запрос 7: Пользователи, у которых на брокерском счете (если у пользователя несколько брокерских счетов,
-- берется брокерский счет с наибольшим балансом) лежит более 200000 рублей и сам максимальный баланс.
select
t1.surname person_surname,
t1.first_name person_first_name,
t1.last_name person_last_name,
max(b1.balance) max_balance
from investment.person_brocker_account b1
inner join investment.person t1 on b1.person_id = t1.id
group by t1.surname, t1.first_name, t1.last_name
having max(b1.balance) > 20000
order by max_balance asc

-- Запрос 8: Пользователи, которые имеют более одного счета, которые имеют одну и ту же валюту
select
t1.surname person_surname,
t1.first_name person_first_name,
t1.last_name person_last_name,
count(a1.id) brocker_account_count,
c1.name currency_name
from investment.person_brocker_account t2
inner join investment.person t1 on t2.person_id = t1.id
inner join investment.brocker b1 on t2.brocker_id = b1.id
inner join investment.brocker_account a1 on b1.brocker_account_id = a1.id
inner join investment.currency c1 on a1.currency_id = c1.id
group by t1.surname, t1.first_name, t1.last_name, c1.name
having count(a1.id) > 1 
order by person_surname

-- Запрос 9: Пользователи, у которых количество купленных валют превышает количество купленных акций
select
t1.surname person_surname,
t1.first_name person_first_name,
t1.last_name person_last_name,
sum(s1.count) stock_count,
sum(c1.count) currency_count
from investment.person t1
inner join investment.person_stock s1 on s1.person_id = t1.id
inner join investment.person_currency c1 on c1.person_id = t1.id
group by t1.surname, t1.first_name, t1.last_name
having sum(s1.count) < sum(c1.count)
order by person_surname

-- Запрос 10: Количество акций каждой компании, которые купили пользователи и общая сумма цен этих акций
select 
c1.name company_name,
sum(s1.count) stock_count,
sum(s1.total_price) total_price
from investment.company c1
inner join investment.stock s2 on s2.company_id = c1.id
inner join investment.person_stock s1 on s1.stock_id = s2.id
group by c1.name
order by total_price

-- Запрос 11: Пользователи и их пополнения баланса брокерского счета, сумма пополнения, дата, время
select 
n1.surname person_surname,
n1.first_name person_first_name,
n1.last_name person_last_name,
t1.type operation_type,
t1.sum deposit_sum,
t1.date,
t1.time
from investment.person_brocker_account b1
inner join investment.person n1 on b1.person_id = n1.id
inner join investment.operation t1 on t1.person_brocker_account_id = b1.id
where t1.type = 'Пополнение'
order by time

-- Запрос 12: Пользователи и их продажи акций, количество акций, сумма продажи, дата, время
select
n1.surname person_surname,
n1.first_name person_first_name,
n1.last_name person_last_name,
c1.name company_name,
o1.type operation_type,
o1.count stock_count,
o1.cost_sum selling_price,
o1.date,
o1.time
from investment.stock_operation o1
inner join investment.person n1 on o1.person_id = n1.id
inner join investment.stock s1 on o1.stock_id = s1.id
inner join investment.company c1 on s1.company_id = c1.id
where o1.type = 'Продажа'
order by person_surname

-- Запрос 13: Общее количество купленных валют и их общая цена покупки
select 
c1.name currency_name,
sum(c2.count) currency_count,
sum(c2.total_cost) total_price
from investment.currency c1
inner join investment.person_currency c2 on c2.currency_id = c1.id
group by c1.name
order by total_price

-- Запрос 14: Брокеры, у которых не менее 3 пользователей
select
b1.name brocker_name,
count(p1.id) person_count
from investment.person_brocker_account a1
inner join investment.brocker b1 on a1.brocker_id = b1.id
inner join investment.person p1 on a1.person_id = p1.id
group by b1.name
having count(p1.id) >= 3
order by person_count 

-- Запрос 15: Считает общую сумму пополнений и выводов, которые совершил один пользователь.
select
n1.surname person_surname,
t1.type operation_type,
t1.date,
t1.time,
t1.sum operation_sum,
sum(t1.sum) over (partition by a1.person_id order by t1.date, t1.time) total_amount
from investment.person_brocker_account a1
inner join investment.operation t1 on t1.person_brocker_account_id = a1.id
inner join investment.person n1 on a1.person_id = n1.id
order by a1.person_id, t1.date, t1.time