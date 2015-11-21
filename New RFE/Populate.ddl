-- Employee entries
DELETE FROM F15_A3_CONTACT;
DELETE FROM F15_A3_RFE_TC;
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

-- Status/RTC code entries
--Populate RFE_Status_Codes
DELETE FROM F15_A3_RFE_SC;

INSERT INTO F15_A3_RFE_SC (Status_code, RFE_status, Description)
	VALUES(1, 'Entered', 'The RFE has been created but has not yet been submitted for approval.');

INSERT INTO F15_A3_RFE_SC (Status_code, RFE_status, Description)
	VALUES(2, 'Submitted', 'The RFE has been submitted to the Lab System Administrator for approval.');

INSERT INTO F15_A3_RFE_SC (Status_code, RFE_status, Description)
	VALUES(3, 'Returned', 'The RFE has been returned for further information or clarification. Once Submitted again, it will follow the same routing as an Entered RFE.');

INSERT INTO F15_A3_RFE_SC (Status_code, RFE_status, Description)
	VALUES(4, 'Recalled', 'The requestor has recalled an RFE that has not yet reached final approval. Once Submitted again, it will follow the same routing as an Entered RFE.');

INSERT INTO F15_A3_RFE_SC (Status_code, RFE_status, Description)
	VALUES(5, 'Rejected', 'The RFE has been rejected and cannot be implemented.');

INSERT INTO F15_A3_RFE_SC (Status_code, RFE_status, Description)
	VALUES(6, 'SA Approved', 'The Lab System Administrator has approved the RFE; it has been submitted for Lab Director approval.');

INSERT INTO F15_A3_RFE_SC (Status_code, RFE_status, Description)
	VALUES(7, 'LD Approval', 'The Lab Director has approved the RFE; it has been submitted for Network Security Panel approval.');

INSERT INTO F15_A3_RFE_SC (Status_code, RFE_status, Description)
	VALUES(8, 'CH Approval', 'The Lab Director has approved the RFE; it has been submitted to the
Chairperson of Security Panel approval.');

INSERT INTO F15_A3_RFE_SC (Status_code, RFE_status, Description)
	VALUES(9, 'Final Approved', 'The Executive Director''s Office has given final approval for the RFE and it may be implemented.');

--Populate RFE_Role_Type_Codes
DELETE FROM F15_A3_RTC;

INSERT INTO F15_A3_RTC (Role_code, Role_type, Description)
	VALUES(1, 'Requestor', 'The employee who created the RFE.');

INSERT INTO F15_A3_RTC (Role_code, Role_type, Description)
	VALUES(2, 'Viewer', 'An employee with peripheral interests; will get automatically notified at certain stages.');

INSERT INTO F15_A3_RTC (Role_code, Role_type, Description)
	VALUES(3, 'Sys Admin Approver', 'First round approver for new RFE''s in their lab.');

INSERT INTO F15_A3_RTC (Role_code, Role_type, Description)
	VALUES(4, 'Lab Director Approver', 'Second round approver for new RFE''s in their lab.');

INSERT INTO F15_A3_RTC (Role_code, Role_type, Description)
	VALUES(5, 'Chairperson Approver', 'Network Security Panel approver.');

INSERT INTO F15_A3_RTC (Role_code, Role_type, Description)
	VALUES(6, 'Exec Dir Approver', 'Final round approver for all RFE''s.');


-- RFE entries
DELETE FROM F15_A3_RFE_S;
DELETE FROM F15_A3_RFE_TASK;
DELETE FROM F15_A3_RFE;

INSERT INTO F15_A3_RFE(rfe_id, F15_A3_RFE_S_STATUS_ID,
	EXPLANATION, ALT_PROTECTIONS, APPROVAL_REVIEW_DATE)
VALUES(1, null, 'I want to watch cat videos on youtube', 'ad block to protect from scary ads',
	null);
INSERT INTO F15_A3_RFE(rfe_id, F15_A3_RFE_S_STATUS_ID,
	EXPLANATION, ALT_PROTECTIONS, APPROVAL_REVIEW_DATE)
VALUES(2, null, 'I want to look at cat gifs', 'how can cat gifs hurt me',
	null);
INSERT INTO F15_A3_RFE(rfe_id, F15_A3_RFE_S_STATUS_ID,
	EXPLANATION, ALT_PROTECTIONS, APPROVAL_REVIEW_DATE)
VALUES(3, null, 'I want to play solitaire for free', 'i wont enter the company credit card info again OK jeez',
	null);


INSERT INTO F15_A3_RFE_S(STATUS_ID,
	F15_A3_RFE_SC_STATUS_CODE,
	F15_A3_RFE_RFE_ID)
VALUES(1,
	(select status_code from F15_A3_RFE_SC where RFE_STATUS = 'Submitted'),
	(select rfe_id from F15_A3_RFE where explanation = 'I want to watch cat videos on youtube'));

INSERT INTO F15_A3_RFE_S(STATUS_ID,
	F15_A3_RFE_SC_STATUS_CODE,
	F15_A3_RFE_RFE_ID)
VALUES(2,
	(select status_code from F15_A3_RFE_SC where RFE_STATUS = 'Submitted'),
	(select rfe_id from F15_A3_RFE where explanation = 'I want to look at cat gifs'));

INSERT INTO F15_A3_RFE_S(STATUS_ID,
	F15_A3_RFE_SC_STATUS_CODE,
	F15_A3_RFE_RFE_ID)
VALUES(3,
	(select status_code from F15_A3_RFE_SC where RFE_STATUS = 'Submitted'),
	(select rfe_id from F15_A3_RFE where explanation = 'I want to play solitaire for free'));

UPDATE F15_A3_RFE_S
SET STATUS_ID = (SELECT MAX(status_id) FROM F15_A3_RFE_S) + 1, F15_A3_RFE_SC_STATUS_CODE =  (select status_code from F15_A3_RFE_SC where RFE_STATUS = 'Rejected'),
    F15_A3_RFE_RFE_ID = (select rfe_id from F15_A3_RFE where explanation = 'I want to play solitaire for free')
WHERE F15_A3_RFE_RFE_ID = (select rfe_id from F15_A3_RFE where explanation = 'I want to play solitaire for free');

INSERT INTO F15_A3_RFE_TASK(TASK_ID, F15_A3_RFE_RFE_ID,
		EFFECTIVE_DATE, TASK_ABBREVIATION, TASK_DESCRIPTION)
VALUES(1, (select rfe_id from F15_A3_RFE where explanation = 'I want to watch cat videos on youtube'),
TO_DATE('01-MAR-15', 'DD-MON-RR'), 'CATS', 'watching cat vids');

INSERT INTO F15_A3_RFE_TASK(TASK_ID, F15_A3_RFE_RFE_ID,
		EFFECTIVE_DATE, TASK_ABBREVIATION, TASK_DESCRIPTION)
VALUES(2, (select rfe_id from F15_A3_RFE where explanation = 'I want to look at cat gifs'),
TO_DATE('01-MAR-15', 'DD-MON-RR'), 'GIFS', 'watching cat gifs');

INSERT INTO F15_A3_RFE_TASK(TASK_ID, F15_A3_RFE_RFE_ID,
		EFFECTIVE_DATE, TASK_ABBREVIATION, TASK_DESCRIPTION)
VALUES(3, (select rfe_id from F15_A3_RFE where explanation = 'I want to play solitaire for free'),
TO_DATE('01-MAR-15', 'DD-MON-RR'), 'CARD', 'playing card games');

INSERT INTO F15_A3_RFE_TC(COMMENT_ID, F15_A3_RFE_RFE_ID, COMMENTS,
	F15_A3_EMP_EMPLOYEE_ID)
VALUES (1, (select rfe_id from F15_A3_RFE where explanation = 'I want to watch cat videos on youtube'),
	'Cat videos are great but are not cat gifs just as great if not more',
	(select employee_id from F15_A3_EMP where employee_name = 'Jon Smith'));

INSERT INTO F15_A3_RFE_TC(COMMENT_ID, F15_A3_RFE_RFE_ID,  COMMENTS,
	F15_A3_EMP_EMPLOYEE_ID)
VALUES (2, (select rfe_id from F15_A3_RFE where explanation = 'I want to play solitaire for free'),
	 'dont just dont',
	(select employee_id from F15_A3_EMP where employee_name = 'The guy'));

INSERT INTO F15_A3_RFE_TC(COMMENT_ID, F15_A3_RFE_RFE_ID, COMMENTS,
	F15_A3_EMP_EMPLOYEE_ID)
VALUES (3, (select rfe_id from F15_A3_RFE where explanation = 'I want to watch cat videos on youtube'),
        'Yeah theyre great and all but cat gifs dont have sound',
	(select employee_id from F15_A3_EMP where employee_name = 'Johnny Smith'));

-- Contact entries

INSERT INTO F15_A3_CONTACT(contact_id, F15_A3_Emp_employee_id, F15_A3_RFE_RFE_ID,
   F15_A3_RTC_ROLE_CODE, effective_date, comments)
   values(1, (SELECT employee_id FROM F15_A3_EMP WHERE employee_name = 'Jon Smith'),
              (SELECT rfe_id FROM F15_A3_RFE WHERE ROWNUM = 1),
              (SELECT role_code FROM F15_A3_RTC WHERE role_type = 'Viewer'),
              TO_DATE('14-NOV-15','DD-MON-RR'),
              'Jon will be notified of progress.');

INSERT INTO F15_A3_CONTACT(contact_id, F15_A3_Emp_employee_id, F15_A3_RFE_RFE_ID,
   F15_A3_RTC_ROLE_CODE, effective_date, comments)
   values(2, (SELECT employee_id FROM F15_A3_EMP WHERE employee_name = 'The guy'),
              (SELECT rfe_id FROM F15_A3_RFE WHERE ROWNUM = 1),
              (SELECT role_code FROM F15_A3_RTC WHERE role_type = 'Viewer'),
              TO_DATE('14-NOV-15','DD-MON-RR'),
              'The guy has also been added to this RFE for his expertise.');

INSERT INTO F15_A3_CONTACT(contact_id, F15_A3_Emp_employee_id, F15_A3_RFE_RFE_ID,
   F15_A3_RTC_ROLE_CODE, effective_date, comments)
   values(3, (SELECT employee_id FROM F15_A3_EMP WHERE employee_name = 'The other guy'),
              (SELECT rfe_id FROM F15_A3_RFE WHERE ROWNUM = 1),
              (SELECT role_code FROM F15_A3_RTC WHERE role_type = 'Viewer'),
              TO_DATE('14-NOV-15','DD-MON-RR'),
              'The other guy needs to know about this request.');

INSERT INTO F15_A3_CONTACT(contact_id, F15_A3_Emp_employee_id, F15_A3_RFE_RFE_ID,
   F15_A3_RTC_ROLE_CODE, effective_date, comments)
   values(3, (SELECT employee_id FROM F15_A3_EMP WHERE employee_name = 'Johnny Smith'),
              (SELECT rfe_id FROM F15_A3_RFE WHERE ROWNUM = 1),
              (SELECT role_code FROM F15_A3_RTC WHERE role_type = 'Exec Dir Approver'),
              TO_DATE('14-NOV-15','DD-MON-RR'),
              'Please cat gifs you are also an avid cat lover right?');
