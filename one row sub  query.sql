use world;
select*from city;
select*from country;
USE SAKILA;
select* from payment;
select amount from payment where payment_id=3;
select*from payment where amount=5.99;

select*from payment where amount=(select amount from payment where payment_id=3);
select staff_id from payment where payment_id=8;
select*from payment where staff_id=2;
-- get the payment where the monts of payment should be same as payment_id 20
select month(payment_date) from payment where payment_id=20;

select*from payment where month(payment_date)=7;

select*from payment where month(payment_date)=(select month(payment_date) from payment where payment_id=20);
-- get the amount am the total number of payment done by each amount where the amount should be less them the amount of rental_id 1725
select amount from payment where rental_id=1725;
select amount,count(*) from payment
where amount <(select amount from payment where rental_id=1725)
group by amount;
-- single row subqury( jo bss 1 hi row de)
-- get the month and the total amount is spande form the payment table where the greter then the month of coustomer_id=1 whit payment_id 3
select month(payment_date) from payment where customer_id=1 and payment_id=3;



select month(payment_date),sum(amount) from payment
where month(payment_date)>(select month(payment_date) from payment where customer_id=1 and payment_id=3)
group by month;


-- in multi row sub query (we can't use >'<'='!= operator
select amount from payment where payment_id=2 or payment_id=3;
select * from payment
where amount=(select amount from payment where payment_id=2 or payment_id=3);
-- in,any,all
select * from payment
where amount in (select amount from payment where payment_id=2 or payment_id=3);