create table trigger_test (
    message varchar(40)
);


-- trigger to add a text to a table whenever an entry is made into another table
delimiter %%

create 
    trigger my_trigger before insert 
    on employee 
    for each row begin 
        insert into trigger_test values('added new employee');
    end%%

delimiter ;