# Infrastructure


файл .terraformrc нужно положить в папку юзера, например /home/student/
========
но очень понял теорию по индексам. С базами данных знакомлюсь впервые и теории в курсе не достаточно для понимания как работать с базами. 

пример из теории: 

SQL

CREATE INDEX index_name ON table_name [USING method]

(

    column_name [ASC | DESC] [NULLS {FIRST | LAST }],

    ...

); 

я так понял, по "...", что в индексе содержится несколько полей. Посмотрел какие поля в таблице not null  и сделал идексы под эти таблицы только с нужными полями.  
Как результат: время обработки запроса из теории не изменилось. точно так же работает. Почитал в слаке, у остальных студентов так же. Расстроился что задание не особо показательное. Правильно сделал или нет не понятно.

CREATE INDEX productindex ON product 
(
    id ASC NULLS FIRST,
    name ASC NULLS FIRST
); 

CREATE INDEX ordersindex ON orders 
(
    id ASC NULLS FIRST,
    status ASC NULLS FIRST,
    date_created ASC NULLS FIRST
); 

CREATE INDEX orderproductindex ON order_product 
(
    quantity ASC NULLS FIRST,
    order_id ASC NULLS FIRST,
    product_id ASC NULLS FIRST
); 
