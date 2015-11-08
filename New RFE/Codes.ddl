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
	VALUES(9, 'Final Approved', 'The Executive Director's Office has given final approval for the RFE and it may be implemented.');

--Populate RFE_Role_Type_Codes

INSERT INTO F15_A3_RTC (Role_code, Role_type, Description)
	VALUES(1, 'Requestor', 'The employee who created the RFE.');

INSERT INTO F15_A3_RTC (Role_code, Role_type, Description)
	VALUES(2, 'Viewer', 'An employee with peripheral interests; will get automatically notified at certain stages.');

INSERT INTO F15_A3_RTC (Role_code, Role_type, Description)
	VALUES(3, 'Sys Admin Approver', 'First round approver for new RFE's in their lab.');

INSERT INTO F15_A3_RTC (Role_code, Role_type, Description)
	VALUES(4, 'Lab Director Approver', 'Second round approver for new RFE's in their lab.');

INSERT INTO F15_A3_RTC (Role_code, Role_type, Description)
	VALUES(5, 'Chairperson Approver', 'Network Security Panel approver.');

INSERT INTO F15_A3_RTC (Role_code, Role_type, Description)
	VALUES(6, 'Requestor', 'Final round approver for all RFE's.');


