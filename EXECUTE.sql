----------------QUALIFIACTION----------------
exec sp_tblQualifications 'Insert',1,'BCA';
exec sp_tblQualifications 'Insert',2,'BCom';
exec sp_tblQualifications 'Insert',3,'MCA';
exec sp_tblQualifications 'Insert',4,'BA';
exec sp_tblQualifications 'Insert',5,'BE';
exec sp_tblQualifications 'Insert',6,'BSC';
exec sp_tblQualifications 'Update',1,'MTech';
exec sp_tblQualifications 'Delete',6,' ';


exec sp_fetch_tblQualifications 0

--------------SPECILIZATION------------------------
exec sp_tblSpecializations 'Insert',0,'Python',1
exec sp_tblSpecializations 'Insert',0,'Java',2
exec sp_tblSpecializations 'Insert',0,'Powerbi',3
exec sp_tblSpecializations 'Insert',0,'SQL',5
exec sp_tblSpecializations 'Insert',0,'HTML',4
exec sp_tblSpecializations 'Update',104,'Web Devlopement',3
exec sp_tblSpecializations 'Delete',105,'Web Devlopement',4


exec sp_fetch_tblSpecializations 0

---------------STATE------------------------
exec sp_tblStates 'Insert',0,'Maharastra'
exec sp_tblStates 'Insert',0,'Utterpradesh'
exec sp_tblStates 'Insert',0,'Madhyapradesh'
exec sp_tblStates 'Insert',0,'Rajyasthan'
exec sp_tblStates 'Delete',3,'Gujrat'
exec sp_tblStates 'Update',2,'Panjab'

exec sp_fetch_tblStates 0
----------CITY-----------------------  
exec sp_tblCities 'Insert',0,'Pune',1
exec sp_tblCities 'Insert',0,'Mumbai',2
exec sp_tblCities 'Insert',0,'Surat',3
exec sp_tblCities 'Insert',0,'Pune',2
exec sp_tblCities 'Delete',103,'Amritsar',3

exec sp_fetch_tblCities 0

