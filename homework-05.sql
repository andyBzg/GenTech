1. Добавить три пожертвования

INSERT INTO donations(donation_id, created_at, donator_id, amount, stream_id)
VALUES
	(1, CURRENT_TIMESTAMP, 1, 15.5, 3),
	(2, CURRENT_TIMESTAMP, 2, 20, 2),
	(3, CURRENT_TIMESTAMP, 2, 10.87, 3);


2. Вывести сумму всех пожертвований

SELECT SUM(amount) AS Total_amount 
FROM donations;


3. Вывести информацию о пожертвованиях (имя_доната, страна_донатара, сумма)

SELECT 
	users.fullname AS donation_name, 
	users.country AS donation_country, 
	donations.amount
FROM donations
JOIN users ON donations.donator_id=users.user_id;


4. Вывести ТОП-1 донаторов по сумме всех донатов (имя_донатара, сумма_всех_донатов)

SELECT
	users.fullname, 
	SUM(donations.amount)
FROM donations
JOIN users ON donations.donator_id=users.user_id
GROUP by donations.donator_id
ORDER BY amount DESC
LIMIT 1;


5. Вывести информацию о получателях донатов (имя_пользователя, сумма_полученных_донатов)

SELECT 
	users.fullname,
	SUM(donations.amount)
FROM donations
JOIN streams On donations.stream_id=streams.stream_id
JOIN users ON streams.author_id=users.user_id
GROUP By streams.author_id;
