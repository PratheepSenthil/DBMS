REM ******* CS6312 – DBMS Lab *******
REM ******* Assignment – 4 *******
REM ******* Views, Sequences and Synonyms *******

REM ****** Questions ******

REM * 1. Create a view named Blue_Flavor, which display the product details (product id, 
REM      food, price) of Blueberry flavor.

create view Blue_Flavour as 
SELECT pid,food,price from Products
where flavour = "Blueberry";

REM * 2. Create a view named Cheap_Food, which display the details (product id, flavor,
REM      food, price) of products with price lesser than $1. Ensure that, the price of these
REM      food(s) should never rise above $1 through view.