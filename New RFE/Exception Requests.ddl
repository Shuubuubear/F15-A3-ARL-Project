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
INSERT INTO F15_A3_RFE_S(STATUS_ID,F15_A3_RFE_SC_STATUS_CODE, F15_A3_RFE_RFE_ID)
VALUES(4, 
	(select status_code from F15_A3_RFE_SC where RFE_STATUS = 'Rejected'),
	(select rfe_id from F15_A3_RFE where explanation = 'I want to play solitaire for free'));

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