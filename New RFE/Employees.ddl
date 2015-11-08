DELETE FROM F15_A3_EMP;
DELETE FROM F15_A3_Lab;

insert into F15_A3_Lab(lab_id, lab_name) values (1, 'ADMN');
insert into F15_A3_Lab(lab_id, lab_name) values (2, 'ITSS');
insert into F15_A3_Lab(lab_id, lab_name) values (3, 'MUSE');
insert into F15_A3_Lab(lab_id, lab_name) values (4, 'BOBO');

insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	 employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (1, (select lab_id from F15_A3_Lab where lab_name = 'ADMN') , 'Jon Smith', 
		'adminssharethesame@email.com', 'A001', '512-555-1233', 
		'A', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'N', 'N', 'N', 'Y');

	insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (2, (select lab_id from F15_A3_Lab where lab_name = 'ADMN') , 'Johnny Smith', 
		'adminssharethesame@email.com', 'A002', '512-555-1333', 
		'A', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'N', 'N', 'Y', 'N');

	insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (3,(select lab_id from F15_A3_Lab where lab_name = 'ADMN') , 'Ol Jonathan Smith', 
		'adminssharethesame@email.com', 'A002', '512-555-1333', 
		'I', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'N', 'N', 'Y', 'N');
	
	insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (4, (select lab_id from F15_A3_Lab where lab_name = 'ITSS') , 'The guy', 
		'weallsharethesame@email.com', 'B001', '512-555-1253', 
		'A', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'N', 'N', 'N', 'N');
	
	insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (5, (select lab_id from F15_A3_Lab where lab_name = 'ITSS') , 'The other guy', 
		'weallsharethesame@email.com', 'B002', '512-555-1553', 
		'A', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'N', 'N', 'N', 'N');
	
	insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (6, (select lab_id from F15_A3_Lab where lab_name = 'MUSE') , 'Jimmy bo-Jangles', 
		'weallsharethesame@email.com', 'C001', '512-555-1743', 
		'A', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'Y', 'Y', 'N', 'N');
	
	insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (7, (select lab_id from F15_A3_Lab where lab_name = 'BOBO') , 'Bobobo bobobobo', 
		'bobobobo@bobobo.com', 'B080', '512-555-1263', 
		'A', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'Y', 'N', 'N', 'N');
	
	insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (8, (select lab_id from F15_A3_Lab where lab_name = 'BOBO') , 'Bobo bobobo', 
		'bobobobobo@bobobo.com', 'B080', '512-555-2263', 
		'A', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'N', 'Y', 'N', 'N');
