DELETE FROM F15_A3_CONTACT;

INSERT INTO F15_A3_CONTACT(contact_id, F15_A3_Emp_employee_id, F15_A3_RFE_RFE_ID,
   F15_A3_RTC_ROLE_CODE, effective_date, comments)
   values(1, (SELECT employee_id FROM F15_A3_EMP WHERE employee_name = 'Jon Smith'),
              (SELECT rfe_id FROM F15_A3_RFE WHERE rfe_id = 100),
              (SELECT role_code FROM F15_A3_RTC WHERE role_type = 'Viewer'),
              TO_DATE('14-NOV-15','DD-MON-RR'),
              'Jon will be notified of progress.');

INSERT INTO F15_A3_CONTACT(contact_id, F15_A3_Emp_employee_id, F15_A3_RFE_RFE_ID,
   F15_A3_RTC_ROLE_CODE, effective_date, comments)
   values(2, (SELECT employee_id FROM F15_A3_EMP WHERE employee_name = 'The guy'),
              (SELECT rfe_id FROM F15_A3_RFE WHERE rfe_id = 100),
              (SELECT role_code FROM F15_A3_RTC WHERE role_type = 'Viewer'),
              TO_DATE('14-NOV-15','DD-MON-RR'),
              'The guy has also been added to this RFE for his expertise.');

INSERT INTO F15_A3_CONTACT(contact_id, F15_A3_Emp_employee_id, F15_A3_RFE_RFE_ID,
   F15_A3_RTC_ROLE_CODE, effective_date, comments)
   values(3, (SELECT employee_id FROM F15_A3_EMP WHERE employee_name = 'The other guy'),
              (SELECT rfe_id FROM F15_A3_RFE WHERE rfe_id = 101),
              (SELECT role_code FROM F15_A3_RTC WHERE role_type = 'Viewer'),
              TO_DATE('14-NOV-15','DD-MON-RR'),
              'The other guy needs to know about this request.');
