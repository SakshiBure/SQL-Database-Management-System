---------------------QUALIFIACTION--------------------------
create procedure sp_tblQualifications(
@type varchar(20),
@qid int,
@quname varchar(100))
as 
begin 
if(@type='Insert')
insert into tblQualifications(qualification_name,inserted_at)values(@quname,getdate())
if(@type='Update')
update tblQualifications set qualification_name=@quname,updated_at=getdate() where qualification_id=@qid
if(@type='Delete')
update tblQualifications set flag=1,deleted_at=getdate() where qualification_id=@qid
if(@type='Restore')
update tblQualifications set flag=0,restored_at=getdate() where qualification_id=@qid;
end;

create procedure sp_fetch_tblQualifications(@qid int)
as 
begin
if(@qid>0)
select qualification_id,qualification_name from tblQualifications where qualification_id=@qid and flag=0;
else
select qualification_id,qualification_name from tblQualifications where flag=0
end;

--------------------------SPECILIZATION-----------------------------
alter procedure sp_tblSpecializations(
@type varchar(20),
@sid int,
@sname varchar(100),
@qid1 int)
as 
begin 
if(@type='Insert')
insert into tblSpecializations(specialization_name,qualification_id,inserted_at)values(@sname,@qid1,getdate())
if(@type='Update')
update tblSpecializations set specialization_name=@sname,updated_at=getdate() where specialization_id=@sid
if(@type='Delete')
update tblSpecializations set flag=1,deleted_at=getdate() where specialization_id=@sid
if(@type='Restore')
update tblSpecializations set flag=0,restored_at=getdate() where specialization_id=@sid;
end;

create procedure sp_fetch_tblSpecializations(@sid int)
as
begin
if(@sid>0)
select s.specialization_id,s.specialization_name,q.qualification_id,q.qualification_name from tblSpecializations s join tblQualifications q on s.qualification_id=q.qualification_id 
where specialization_id=@sid and s.flag=0
else
select s.specialization_id,s.specialization_name,q.qualification_id,q.qualification_name from tblSpecializations s join tblQualifications q on s.qualification_id=q.qualification_id 
where s.flag=0
end;

-----------------STATE-----------------
create procedure sp_tblStates(
@type varchar(20),
@sid1 int,
@sname varchar(50))
as 
begin 
if(@type='Insert')
insert into tblStates(state_name,inserted_at)values(@sname,getdate())
if(@type='Update')
update tblStates set state_name=@sname,updated_at=getdate() where state_id=@sid1
if(@type='Delete')
update tblStates set flag=1,deleted_at=getdate() where state_id=@sid1
if(@type='Restore')
update tblStates set flag=0,restored_at=getdate() where state_id=@sid1
end;

create procedure sp_fetch_tblStates(@sid1 int)
as 
begin
if(@sid1>0)
select state_id,state_name from tblStates where state_id=@sid1 and flag=0
else
select state_id,state_name from tblStates where flag=0
end;

--------------------CITY------------------------------
create procedure sp_tblCities(
@type varchar(20),
@cid1 int,
@cname varchar(50),
@sid1 int)
as
begin
if(@type='Insert')
insert into tblCities(city_name,state_id,inserted_at)values(@cname,@sid1,getdate())
if(@type='Update')
update tblCities set city_name=@cname,updated_at=getdate() where city_id=@cid1
if(@type='Delete')
update tblCities set flag=1,deleted_at=getdate() where city_id=@cid1
if(@type='Restore')
update tblCities set flag=0,restored_at=getdate() where city_id=@cid1
end;

create procedure sp_fetch_tblCities(@cid1 int)
as 
begin 
if(@cid1>0)
select c.city_id,c.city_name,s.state_id,s.state_name from tblCities c join tblStates s
on c.state_id=s.state_id where c.city_id=@cid1 and c.flag=0
else
select c.city_id,c.city_name,s.state_id,s.state_name from tblCities c join tblStates s
on c.state_id=s.state_id where c.flag=0
end;
