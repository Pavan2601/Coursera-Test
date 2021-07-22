delimiter //
Create or replace trigger up_credits 
Before
insert
on batsmen
for each row
begin
if new.total_runs<100
then 
set new.total_credits=0;
end if;
end;
//
