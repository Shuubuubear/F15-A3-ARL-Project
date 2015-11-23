ALTER TABLE F15_A3_Auth DISABLE CONSTRAINT F15_A3_Auth_F15_A3_Emp_FK;

ALTER TABLE F15_A3_Contact DISABLE CONSTRAINT F15_A3_Contact_F15_A3_Emp_FK;

ALTER TABLE F15_A3_Contact DISABLE CONSTRAINT F15_A3_Contact_F15_A3_RFE_FK;

ALTER TABLE F15_A3_Contact DISABLE CONSTRAINT F15_A3_Contact_F15_A3_RTC_FK;

ALTER TABLE F15_A3_Emp DISABLE CONSTRAINT F15_A3_Emp_F15_A3_Lab_FK;

ALTER TABLE F15_A3_RFE_Doc DISABLE CONSTRAINT F15_A3_RFE_Doc_F15_A3_RFE_FK;

ALTER TABLE F15_A3_RFE DISABLE CONSTRAINT F15_A3_RFE_F15_A3_RFE_S_FK;

ALTER TABLE F15_A3_RFE_SH DISABLE CONSTRAINT F15_A3_RFE_SH_F15_A3_RFE_FK;

ALTER TABLE F15_A3_RFE_SH DISABLE CONSTRAINT F15_A3_RFE_SH_F15_A3_RFE_SC_FK;

ALTER TABLE F15_A3_RFE_S DISABLE CONSTRAINT F15_A3_RFE_S_F15_A3_RFE_FK;

ALTER TABLE F15_A3_RFE_S DISABLE CONSTRAINT F15_A3_RFE_S_F15_A3_RFE_SC_FK;

ALTER TABLE F15_A3_RFE_TC DISABLE CONSTRAINT F15_A3_RFE_TC_F15_A3_Emp_FK;

ALTER TABLE F15_A3_RFE_TC DISABLE CONSTRAINT F15_A3_RFE_TC_F15_A3_RFE_FK;

ALTER TABLE F15_A3_RFE_Task DISABLE CONSTRAINT F15_A3_RFE_Task_F15_A3_RFE_FK;

ALTER TABLE F15_A3_Contact DISABLE CONSTRAINT F15_A3_contact_rfe_delete;

ALTER TABLE F15_A3_RFE_Doc DISABLE CONSTRAINT F15_A3_doc_rfe_delete;

ALTER TABLE F15_A3_RFE_S DISABLE CONSTRAINT F15_A3_rfe_s_delete;

ALTER TABLE F15_A3_RFE_TC DISABLE CONSTRAINT F15_A3_tc_rfe_delete;

ALTER TABLE F15_A3_RFE_SH DISABLE CONSTRAINT F15_A3_sh_rfe_delete;

ALTER TABLE F15_A3_RFE_TASK DISABLE CONSTRAINT F15_A3_task_rfe_delete;

--start sequences at 1

DROP SEQUENCE F15_A3_Auth_seq ; 
create sequence F15_A3_Auth_seq 
start with 1 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_Contact_seq ; 
create sequence F15_A3_Contact_seq 
start with 1 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_Emp_seq ; 
create sequence F15_A3_Emp_seq 
start with 1 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_Lab_seq ; 
create sequence F15_A3_Lab_seq 
start with 1 
increment by 1 
nomaxvalue 
;
DROP SEQUENCE F15_A3_RFE_seq ; 
create sequence F15_A3_RFE_seq 
start with 1 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_RFE_Doc_seq ; 
create sequence F15_A3_RFE_Doc_seq 
start with 1 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_RFE_S_seq ; 
create sequence F15_A3_RFE_S_seq 
start with 1 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_RFE_SC_seq ; 
create sequence F15_A3_RFE_SC_seq 
start with 1 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_RFE_SH_seq ; 
create sequence F15_A3_RFE_SH_seq 
start with 1 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_RFE_TC_seq ; 
create sequence F15_A3_RFE_TC_seq 
start with 1 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_RFE_Task_seq ; 
create sequence F15_A3_RFE_Task_seq 
start with 1 
increment by 1 
nomaxvalue 
;
/

DROP SEQUENCE F15_A3_RTC_seq ; 
create sequence F15_A3_RTC_seq 
start with 1 
increment by 1 
nomaxvalue 
;



ALTER TRIGGER F15_A3_CONTACT_pk_trig disable;
ALTER TRIGGER F15_A3_RFE_TC_pk_trig disable;
ALTER TRIGGER F15_A3_Auth_pk_trig disable;
ALTER TRIGGER F15_A3_EMP_pk_trig disable;
ALTER TRIGGER F15_A3_RFE_DOC_pk_trig disable;
ALTER TRIGGER F15_A3_Lab_pk_trig disable;
ALTER TRIGGER F15_A3_RFE_S_pk_trig disable;
ALTER TRIGGER F15_A3_RFE_SH_pk_trig disable;
ALTER TRIGGER F15_A3_RFE_TASK_pk_trig disable;
ALTER TRIGGER F15_A3_RTC_pk_trig disable;
ALTER TRIGGER F15_A3_RFE_pk_trig disable;
ALTER TRIGGER F15_A3_RFE_SC_pk_trig disable;



truncate table F15_A3_CONTACT;
truncate table F15_A3_RFE_TC;
truncate table F15_A3_Auth;
truncate table F15_A3_EMP;
truncate table F15_A3_RFE_Doc;
truncate table F15_A3_Lab;
truncate table F15_A3_RFE_S;
truncate table F15_A3_RFE_SH;
truncate table F15_A3_RFE_TASK;
truncate table F15_A3_RTC;
truncate table F15_A3_RFE;
truncate table F15_A3_RFE_SC;

ALTER TABLE F15_A3_Auth ENABLE CONSTRAINT F15_A3_Auth_F15_A3_Emp_FK;

ALTER TABLE F15_A3_Contact ENABLE CONSTRAINT F15_A3_Contact_F15_A3_Emp_FK;

ALTER TABLE F15_A3_Contact ENABLE CONSTRAINT F15_A3_Contact_F15_A3_RFE_FK;

ALTER TABLE F15_A3_Contact ENABLE CONSTRAINT F15_A3_Contact_F15_A3_RTC_FK;

ALTER TABLE F15_A3_Emp ENABLE CONSTRAINT F15_A3_Emp_F15_A3_Lab_FK;

ALTER TABLE F15_A3_RFE_Doc ENABLE CONSTRAINT F15_A3_RFE_Doc_F15_A3_RFE_FK;

ALTER TABLE F15_A3_RFE ENABLE CONSTRAINT F15_A3_RFE_F15_A3_RFE_S_FK;

ALTER TABLE F15_A3_RFE_SH ENABLE CONSTRAINT F15_A3_RFE_SH_F15_A3_RFE_FK;

ALTER TABLE F15_A3_RFE_SH ENABLE CONSTRAINT F15_A3_RFE_SH_F15_A3_RFE_SC_FK;

ALTER TABLE F15_A3_RFE_S ENABLE CONSTRAINT F15_A3_RFE_S_F15_A3_RFE_FK;

ALTER TABLE F15_A3_RFE_S ENABLE CONSTRAINT F15_A3_RFE_S_F15_A3_RFE_SC_FK;

ALTER TABLE F15_A3_RFE_TC ENABLE CONSTRAINT F15_A3_RFE_TC_F15_A3_Emp_FK;

ALTER TABLE F15_A3_RFE_TC ENABLE CONSTRAINT F15_A3_RFE_TC_F15_A3_RFE_FK;

ALTER TABLE F15_A3_RFE_Task ENABLE CONSTRAINT F15_A3_RFE_Task_F15_A3_RFE_FK;

ALTER TABLE F15_A3_Contact ENABLE CONSTRAINT F15_A3_contact_rfe_delete;

ALTER TABLE F15_A3_RFE_Doc ENABLE CONSTRAINT F15_A3_doc_rfe_delete;

ALTER TABLE F15_A3_RFE_S ENABLE CONSTRAINT F15_A3_rfe_s_delete;

ALTER TABLE F15_A3_RFE_TC ENABLE CONSTRAINT F15_A3_tc_rfe_delete;

ALTER TABLE F15_A3_RFE_SH ENABLE CONSTRAINT F15_A3_sh_rfe_delete;

ALTER TABLE F15_A3_RFE_TASK ENABLE CONSTRAINT F15_A3_task_rfe_delete;



ALTER TRIGGER F15_A3_CONTACT_pk_trig ENABLE;
ALTER TRIGGER F15_A3_RFE_TC_pk_trig ENABLE;
ALTER TRIGGER F15_A3_Auth_pk_trig ENABLE;
ALTER TRIGGER F15_A3_EMP_pk_trig ENABLE;
ALTER TRIGGER F15_A3_Lab_pk_trig ENABLE;
ALTER TRIGGER F15_A3_RFE_S_pk_trig ENABLE;
ALTER TRIGGER F15_A3_RFE_SH_pk_trig ENABLE;
ALTER TRIGGER F15_A3_RFE_TASK_pk_trig ENABLE;
ALTER TRIGGER F15_A3_RTC_pk_trig ENABLE;
ALTER TRIGGER F15_A3_RFE_pk_trig ENABLE;
ALTER TRIGGER F15_A3_RFE_SC_pk_trig ENABLE;


--Employees

insert into F15_A3_Lab(lab_id, lab_name) values (1, 'ADMN');
insert into F15_A3_Lab(lab_id, lab_name) values (2, 'ITSS');
insert into F15_A3_Lab(lab_id, lab_name) values (3, 'BOBO');

insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	 employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (F15_A3_EMP_seq.nextval, (select lab_id from F15_A3_Lab where lab_name = 'ADMN') , 'Jon Smith', 
		'adminssharethesame@email.com', 'A001', '512-555-1233', 
		'A', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'N', 'N', 'N', 'Y');

	insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (F15_A3_EMP_seq.nextval, (select lab_id from F15_A3_Lab where lab_name = 'ADMN') , 'Johnny Smith', 
		'adminssharethesame@email.com', 'A002', '512-555-1333', 
		'A', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'N', 'N', 'Y', 'N');

	insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (F15_A3_EMP_seq.nextval,(select lab_id from F15_A3_Lab where lab_name = 'ADMN') , 'Ol Jonathan Smith', 
		'adminssharethesame@email.com', 'A002', '512-555-1333', 
		'I', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'N', 'N', 'Y', 'N');
	
	insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (F15_A3_EMP_seq.nextval, (select lab_id from F15_A3_Lab where lab_name = 'ITSS') , 'The guy', 
		'weallsharethesame@email.com', 'B001', '512-555-1253', 
		'A', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'N', 'N', 'N', 'N');
	
	insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (F15_A3_EMP_seq.nextval, (select lab_id from F15_A3_Lab where lab_name = 'ITSS') , 'The other guy', 
		'weallsharethesame@email.com', 'B002', '512-555-1553', 
		'A', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'Y', 'N', 'N', 'N');

        insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (F15_A3_EMP_seq.nextval, (select lab_id from F15_A3_Lab where lab_name = 'ITSS') , 'The dude', 
		'weallsharethesame@email.com', 'B002', '512-555-1553', 
		'A', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'N', 'Y', 'N', 'N');
	
        insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (F15_A3_EMP_seq.nextval, (select lab_id from F15_A3_Lab where lab_name = 'BOBO') , 'Jared Smith', 
		'weallsharethesame@email.com', 'B001', '512-555-1253', 
		'A', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'N', 'N', 'N', 'N');
	
	insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (F15_A3_EMP_seq.nextval, (select lab_id from F15_A3_Lab where lab_name = 'BOBO') , 'Bobobo bobobobo', 
		'bobobobo@bobobo.com', 'B080', '512-555-1263', 
		'A', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'Y', 'N', 'N', 'N');
	
	insert into F15_A3_Emp(employee_id, F15_A3_LAB_LAB_ID, employee_name,
 	employee_email, employee_office, employee_phone, employee_status,
 	status_eff_date, system_admin_flag, lab_director_flag, exec_director_flag, 
 	chairperson_flag) 
	values (9, (select lab_id from F15_A3_Lab where lab_name = 'BOBO') , 'Bobo bobobo', 
		'bobobobobo@bobobo.com', 'B080', '512-555-2263', 
		'A', TO_DATE('25-FEB-14','DD-MON-RR'), 
		'N', 'Y', 'N', 'N');

-- Status/RTC code entries
--Populate RFE_Status_Codes


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

INSERT INTO F15_A3_RFE(rfe_id, 
	EXPLANATION, ALT_PROTECTIONS, APPROVAL_REVIEW_DATE)
VALUES(F15_A3_RFE_seq.nextval, 'I want to watch cat videos on youtube', 'ad block to protect from scary ads',
	null);
INSERT INTO F15_A3_RFE(rfe_id,
	EXPLANATION, ALT_PROTECTIONS, APPROVAL_REVIEW_DATE)
VALUES(F15_A3_RFE_seq.nextval, 'I want to look at cat gifs', 'how can cat gifs hurt me',
	null);
INSERT INTO F15_A3_RFE(rfe_id,
	EXPLANATION, ALT_PROTECTIONS, APPROVAL_REVIEW_DATE)
VALUES(F15_A3_RFE_seq.nextval, 'I want to play solitaire for free', 'i wont enter the company credit card info again OK jeez',
	null);

--Statuses

UPDATE F15_A3_RFE_S
SET STATUS_ID = F15_A3_RFE_S_seq.nextval, F15_A3_RFE_SC_STATUS_CODE =  (select status_code from F15_A3_RFE_SC where RFE_STATUS = 'Rejected'),
    F15_A3_RFE_RFE_ID = (select rfe_id from F15_A3_RFE where explanation = 'I want to play solitaire for free')
WHERE F15_A3_RFE_RFE_ID = (select rfe_id from F15_A3_RFE where explanation = 'I want to play solitaire for free');

UPDATE F15_A3_RFE_S
SET STATUS_ID = F15_A3_RFE_S_seq.nextval, F15_A3_RFE_SC_STATUS_CODE =  (select status_code from F15_A3_RFE_SC where RFE_STATUS = 'Submitted'),
    F15_A3_RFE_RFE_ID = (select rfe_id from F15_A3_RFE where explanation = 'I want to watch cat videos on youtube')
WHERE F15_A3_RFE_RFE_ID = (select rfe_id from F15_A3_RFE where explanation = 'I want to watch cat videos on youtube');

UPDATE F15_A3_RFE_S
SET STATUS_ID = F15_A3_RFE_S_seq.nextval, F15_A3_RFE_SC_STATUS_CODE =  (select status_code from F15_A3_RFE_SC where RFE_STATUS = 'SA Approved'),
    F15_A3_RFE_RFE_ID = (select rfe_id from F15_A3_RFE where explanation = 'I want to watch cat videos on youtube')
WHERE F15_A3_RFE_RFE_ID = (select rfe_id from F15_A3_RFE where explanation = 'I want to watch cat videos on youtube');

UPDATE F15_A3_RFE_S
SET STATUS_ID = F15_A3_RFE_S_seq.nextval, F15_A3_RFE_SC_STATUS_CODE =  (select status_code from F15_A3_RFE_SC where RFE_STATUS = 'LD Approval'),
    F15_A3_RFE_RFE_ID = (select rfe_id from F15_A3_RFE where explanation = 'I want to watch cat videos on youtube')
WHERE F15_A3_RFE_RFE_ID = (select rfe_id from F15_A3_RFE where explanation = 'I want to watch cat videos on youtube');

UPDATE F15_A3_RFE_S
SET STATUS_ID = F15_A3_RFE_S_seq.nextval, F15_A3_RFE_SC_STATUS_CODE =  (select status_code from F15_A3_RFE_SC where RFE_STATUS = 'CH Approval'),
    F15_A3_RFE_RFE_ID = (select rfe_id from F15_A3_RFE where explanation = 'I want to watch cat videos on youtube')
WHERE F15_A3_RFE_RFE_ID = (select rfe_id from F15_A3_RFE where explanation = 'I want to watch cat videos on youtube');


--Tasks

INSERT INTO F15_A3_RFE_TASK(TASK_ID, F15_A3_RFE_RFE_ID, 
		EFFECTIVE_DATE, TASK_ABBREVIATION, TASK_DESCRIPTION)
VALUES(F15_A3_RFE_TASK_seq.nextval, (select rfe_id from F15_A3_RFE where explanation = 'I want to watch cat videos on youtube'),
TO_DATE('01-MAR-15', 'DD-MON-RR'), 'CATS', 'watching cat vids');

INSERT INTO F15_A3_RFE_TASK(TASK_ID, F15_A3_RFE_RFE_ID, 
		EFFECTIVE_DATE, TASK_ABBREVIATION, TASK_DESCRIPTION)
VALUES(F15_A3_RFE_TASK_seq.nextval, (select rfe_id from F15_A3_RFE where explanation = 'I want to look at cat gifs'),
TO_DATE('01-MAR-15', 'DD-MON-RR'), 'GIFS', 'watching cat gifs');

INSERT INTO F15_A3_RFE_TASK(TASK_ID, F15_A3_RFE_RFE_ID, 
		EFFECTIVE_DATE, TASK_ABBREVIATION, TASK_DESCRIPTION)
VALUES(F15_A3_RFE_TASK_seq.nextval, (select rfe_id from F15_A3_RFE where explanation = 'I want to play solitaire for free'),
TO_DATE('01-MAR-15', 'DD-MON-RR'), 'CARD', 'playing card games');


--Tracking comments

INSERT INTO F15_A3_RFE_TC(COMMENT_ID, F15_A3_RFE_RFE_ID, COMMENTS, 
	F15_A3_EMP_EMPLOYEE_ID) 
VALUES (F15_A3_RFE_TC_seq.nextval, (select rfe_id from F15_A3_RFE where explanation = 'I want to watch cat videos on youtube'),
	'Cat videos are great but are not cat gifs just as great if not more',
	(select employee_id from F15_A3_EMP where employee_name = 'Jon Smith'));

INSERT INTO F15_A3_RFE_TC(COMMENT_ID, F15_A3_RFE_RFE_ID,  COMMENTS, 
	F15_A3_EMP_EMPLOYEE_ID) 
VALUES (F15_A3_RFE_TC_seq.nextval, (select rfe_id from F15_A3_RFE where explanation = 'I want to play solitaire for free'),
	 'dont just dont',
	(select employee_id from F15_A3_EMP where employee_name = 'The guy'));

INSERT INTO F15_A3_RFE_TC(COMMENT_ID, F15_A3_RFE_RFE_ID, COMMENTS, 
	F15_A3_EMP_EMPLOYEE_ID) 
VALUES (F15_A3_RFE_TC_seq.nextval, (select rfe_id from F15_A3_RFE where explanation = 'I want to watch cat videos on youtube'),
        'Yeah theyre great and all but cat gifs dont have sound',
	(select employee_id from F15_A3_EMP where employee_name = 'Johnny Smith'));
    
-- Contact entries

INSERT INTO F15_A3_CONTACT(contact_id, F15_A3_Emp_employee_id, F15_A3_RFE_RFE_ID,
   F15_A3_RTC_ROLE_CODE, effective_date, comments)
   values(F15_A3_CONTACT_seq.nextval, (SELECT employee_id FROM F15_A3_EMP WHERE employee_name = 'Jon Smith'),
              (SELECT rfe_id FROM F15_A3_RFE WHERE ROWNUM = 1),
              (SELECT role_code FROM F15_A3_RTC WHERE role_type = 'Viewer'),
              TO_DATE('14-NOV-15','DD-MON-RR'),
              'Jon will be notified of progress.');

INSERT INTO F15_A3_CONTACT(contact_id, F15_A3_Emp_employee_id, F15_A3_RFE_RFE_ID,
   F15_A3_RTC_ROLE_CODE, effective_date, comments)
   values(F15_A3_CONTACT_seq.nextval, (SELECT employee_id FROM F15_A3_EMP WHERE employee_name = 'The guy'),
              (SELECT rfe_id FROM F15_A3_RFE WHERE ROWNUM = 1),
              (SELECT role_code FROM F15_A3_RTC WHERE role_type = 'Viewer'),
              TO_DATE('14-NOV-15','DD-MON-RR'),
              'The guy has also been added to this RFE for his expertise.');

INSERT INTO F15_A3_CONTACT(contact_id, F15_A3_Emp_employee_id, F15_A3_RFE_RFE_ID,
   F15_A3_RTC_ROLE_CODE, effective_date, comments)
   values(F15_A3_CONTACT_seq.nextval, (SELECT employee_id FROM F15_A3_EMP WHERE employee_name = 'The other guy'),
              (SELECT rfe_id FROM F15_A3_RFE WHERE ROWNUM = 1),
              (SELECT role_code FROM F15_A3_RTC WHERE role_type = 'Viewer'),
              TO_DATE('14-NOV-15','DD-MON-RR'),
              'The other guy needs to know about this request.');

--Auth entries
INSERT INTO F15_A3_AUTH(auth_id, F15_A3_EMP_employee_id, right)
    VALUES(F15_A3_AUTH_seq.nextval, (SELECT employee_id FROM F15_A3_EMP WHERE employee_name = 'Johnny Smith'), 'write');

INSERT INTO F15_A3_AUTH(auth_id, F15_A3_EMP_employee_id, right)
    VALUES(F15_A3_AUTH_seq.nextval, (SELECT employee_id FROM F15_A3_EMP WHERE employee_name = 'Jon Smith'), 'write');

INSERT INTO F15_A3_AUTH(auth_id, F15_A3_EMP_employee_id, right)
    VALUES(F15_A3_AUTH_seq.nextval, (SELECT employee_id FROM F15_A3_EMP WHERE employee_name = 'The other guy'), 'read');

INSERT INTO F15_A3_AUTH(auth_id, F15_A3_EMP_employee_id, right)
    VALUES(F15_A3_AUTH_seq.nextval, (SELECT employee_id FROM F15_A3_EMP WHERE employee_name = 'The dude'), 'write');

INSERT INTO F15_A3_AUTH(auth_id, F15_A3_EMP_employee_id, right)
    VALUES(F15_A3_AUTH_seq.nextval, (SELECT employee_id FROM F15_A3_EMP WHERE employee_name = 'Bobobo bobobobo'), 'read');

INSERT INTO F15_A3_AUTH(auth_id, F15_A3_EMP_employee_id, right)
    VALUES(F15_A3_AUTH_seq.nextval, (SELECT employee_id FROM F15_A3_EMP WHERE employee_name = 'Bobo bobobo'), 'write');

--return sequences to normal

DROP SEQUENCE F15_A3_Auth_seq ; 
create sequence F15_A3_Auth_seq 
start with 100 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_Contact_seq ; 
create sequence F15_A3_Contact_seq 
start with 100 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_Emp_seq ; 
create sequence F15_A3_Emp_seq 
start with 100 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_Lab_seq ; 
create sequence F15_A3_Lab_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP SEQUENCE F15_A3_RFE_seq ; 
create sequence F15_A3_RFE_seq 
start with 100 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_RFE_Doc_seq ; 
create sequence F15_A3_RFE_Doc_seq 
start with 100 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_RFE_S_seq ; 
create sequence F15_A3_RFE_S_seq 
start with 100 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_RFE_SC_seq ; 
create sequence F15_A3_RFE_SC_seq 
start with 100 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_RFE_SH_seq ; 
create sequence F15_A3_RFE_SH_seq 
start with 100 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_RFE_TC_seq ; 
create sequence F15_A3_RFE_TC_seq 
start with 100 
increment by 1 
nomaxvalue 
;

DROP SEQUENCE F15_A3_RFE_Task_seq ; 
create sequence F15_A3_RFE_Task_seq 
start with 100 
increment by 1 
nomaxvalue 
;
/

DROP SEQUENCE F15_A3_RTC_seq ; 
create sequence F15_A3_RTC_seq 
start with 100 
increment by 1 
nomaxvalue 
;
