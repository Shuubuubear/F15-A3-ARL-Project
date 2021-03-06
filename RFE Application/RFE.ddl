-- Generated by Oracle SQL Developer Data Modeler 4.1.1.888
--   at:        2015-11-20 22:09:06 CST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




DROP TABLE F15_A3_Auth CASCADE CONSTRAINTS ;

DROP TABLE F15_A3_Contact CASCADE CONSTRAINTS ;

DROP TABLE F15_A3_Emp CASCADE CONSTRAINTS ;

DROP TABLE F15_A3_Lab CASCADE CONSTRAINTS ;

DROP TABLE F15_A3_RFE CASCADE CONSTRAINTS ;

DROP TABLE F15_A3_RFE_Doc CASCADE CONSTRAINTS ;

DROP TABLE F15_A3_RFE_S CASCADE CONSTRAINTS ;

DROP TABLE F15_A3_RFE_SC CASCADE CONSTRAINTS ;

DROP TABLE F15_A3_RFE_SH CASCADE CONSTRAINTS ;

DROP TABLE F15_A3_RFE_TC CASCADE CONSTRAINTS ;

DROP TABLE F15_A3_RFE_Task CASCADE CONSTRAINTS ;

DROP TABLE F15_A3_RTC CASCADE CONSTRAINTS ;

CREATE TABLE F15_A3_Auth
  (
    auth_id                INTEGER NOT NULL ,
    F15_A3_Emp_employee_id INTEGER NOT NULL ,
    RIGHT                  VARCHAR2 (10)
  ) ;
CREATE UNIQUE INDEX F15_A3_Auth__IDX ON F15_A3_Auth
  (
    F15_A3_Emp_employee_id ASC
  )
  ;
ALTER TABLE F15_A3_Auth ADD CONSTRAINT F15_A3_Auth_PK PRIMARY KEY ( auth_id ) ;


CREATE TABLE F15_A3_Emp
  (
    employee_id        INTEGER NOT NULL ,
    F15_A3_Lab_lab_id  INTEGER ,
    employee_name      VARCHAR2 (30) NOT NULL ,
    employee_email     VARCHAR2 (255) NOT NULL ,
    employee_office    VARCHAR2 (255) NOT NULL ,
    employee_phone     VARCHAR2 (255) NOT NULL ,
    employee_status    VARCHAR2 (1) NOT NULL ,
    status_eff_date    DATE NOT NULL ,
    system_admin_flag  VARCHAR2 (1) NOT NULL ,
    lab_director_flag  VARCHAR2 (1) NOT NULL ,
    exec_director_flag VARCHAR2 (1) NOT NULL ,
    chairperson_flag   VARCHAR2 (1) NOT NULL
  ) ;
ALTER TABLE F15_A3_Emp ADD CONSTRAINT F15_A3_Emp_PK PRIMARY KEY ( employee_id ) ;


CREATE TABLE F15_A3_Lab
  (
    lab_id   INTEGER NOT NULL ,
    lab_name VARCHAR2 (15) NOT NULL
  ) ;
ALTER TABLE F15_A3_Lab ADD CONSTRAINT F15_A3_Lab_PK PRIMARY KEY ( lab_id ) ;


CREATE TABLE F15_A3_RFE
  (
    rfe_id                 INTEGER NOT NULL ,
    explanation            VARCHAR2 (4000) NOT NULL ,
    alt_protections        VARCHAR2 (4000) NOT NULL ,
    approval_review_date   DATE ,
    F15_A3_RFE_S_status_id INTEGER
  ) ;
CREATE UNIQUE INDEX F15_A3_RFE__IDX ON F15_A3_RFE
  (
    F15_A3_RFE_S_status_id ASC
  )
  ;
ALTER TABLE F15_A3_RFE ADD CONSTRAINT F15_A3_RFE_PK PRIMARY KEY ( rfe_id ) ;

CREATE TABLE F15_A3_Contact
  (
    contact_id             INTEGER NOT NULL ,
    F15_A3_Emp_employee_id INTEGER NOT NULL,
    F15_A3_RFE_rfe_id      INTEGER NOT NULL,
    F15_A3_RTC_role_code   INTEGER NOT NULL ,
    effective_date         DATE NOT NULL ,
    comments               VARCHAR2 (4000)
  ) ;
ALTER TABLE F15_A3_Contact ADD CONSTRAINT F15_A3_Contact_PK PRIMARY KEY ( contact_id ) ;



CREATE TABLE F15_A3_RFE_Doc
  (
    document_id       INTEGER NOT NULL ,
    F15_A3_RFE_rfe_id INTEGER NOT NULL ,
    filename          VARCHAR2 (4000) ,
    file_mimetype     VARCHAR2 (512) ,
    file_charset      VARCHAR2 (512) ,
    file_blob BLOB ,
    file_comments VARCHAR2 (4000) ,
    tags          VARCHAR2 (4000)
  ) ;
ALTER TABLE F15_A3_RFE_Doc ADD CONSTRAINT F15_A3_RFE_Doc_PK PRIMARY KEY ( document_id ) ;



CREATE TABLE F15_A3_RFE_S
  (
    status_id                 INTEGER NOT NULL ,
    F15_A3_RFE_SC_status_code INTEGER NOT NULL ,
    F15_A3_RFE_rfe_id         INTEGER ,
    rfe_id                    INTEGER
  ) ;
CREATE UNIQUE INDEX F15_A3_RFE_S__IDX ON F15_A3_RFE_S
  (
    F15_A3_RFE_rfe_id ASC
  )
  ;
ALTER TABLE F15_A3_RFE_S ADD CONSTRAINT F15_A3_RFE_S_PK PRIMARY KEY ( status_id ) ;



CREATE TABLE F15_A3_RFE_SC
  (
    status_code INTEGER NOT NULL ,
    rfe_status  VARCHAR2 (30) NOT NULL ,
    description VARCHAR2 (500) NOT NULL
  ) ;
ALTER TABLE F15_A3_RFE_SC ADD CONSTRAINT F15_A3_RFE_SC_PK PRIMARY KEY ( status_code ) ;


CREATE TABLE F15_A3_RFE_SH
  (
    status_id                 INTEGER NOT NULL ,
    F15_A3_RFE_SC_status_code INTEGER NOT NULL ,
    F15_A3_RFE_rfe_id         INTEGER NOT NULL
  ) ;
ALTER TABLE F15_A3_RFE_SH ADD CONSTRAINT F15_A3_RFE_SH_PK PRIMARY KEY ( status_id ) ;



CREATE TABLE F15_A3_RFE_TC
  (
    comment_id             INTEGER NOT NULL ,
    F15_A3_RFE_rfe_id      INTEGER NOT NULL ,
    F15_A3_Emp_employee_id INTEGER ,
    comments               VARCHAR2 (4000) NOT NULL
  ) ;
ALTER TABLE F15_A3_RFE_TC ADD CONSTRAINT F15_A3_RFE_TC_PK PRIMARY KEY ( comment_id ) ;



CREATE TABLE F15_A3_RFE_Task
  (
    task_id           INTEGER NOT NULL ,
    F15_A3_RFE_rfe_id INTEGER NOT NULL ,
    effective_date    DATE NOT NULL ,
    task_abbreviation VARCHAR2 (15) NOT NULL ,
    task_description  VARCHAR2 (4000) NOT NULL
  ) ;
ALTER TABLE F15_A3_RFE_Task ADD CONSTRAINT F15_A3_RFE_Task_PK PRIMARY KEY ( task_id ) ;



CREATE TABLE F15_A3_RTC
  (
    role_code   INTEGER NOT NULL ,
    role_type   VARCHAR2 (30) NOT NULL ,
    description VARCHAR2 (500) NOT NULL
  ) ;
ALTER TABLE F15_A3_RTC ADD CONSTRAINT F15_A3_RTC_PK PRIMARY KEY ( role_code ) ;


ALTER TABLE F15_A3_Auth ADD CONSTRAINT F15_A3_Auth_F15_A3_Emp_FK FOREIGN KEY ( F15_A3_Emp_employee_id ) REFERENCES F15_A3_Emp ( employee_id ) ON DELETE CASCADE;

ALTER TABLE F15_A3_Contact ADD CONSTRAINT F15_A3_Contact_F15_A3_Emp_FK FOREIGN KEY ( F15_A3_Emp_employee_id ) REFERENCES F15_A3_Emp ( employee_id ) ON DELETE CASCADE;

ALTER TABLE F15_A3_Contact ADD CONSTRAINT F15_A3_Contact_F15_A3_RFE_FK FOREIGN KEY ( F15_A3_RFE_rfe_id ) REFERENCES F15_A3_RFE ( rfe_id ) ON DELETE CASCADE;

ALTER TABLE F15_A3_Contact ADD CONSTRAINT F15_A3_Contact_F15_A3_RTC_FK FOREIGN KEY ( F15_A3_RTC_role_code ) REFERENCES F15_A3_RTC ( role_code ) ON DELETE CASCADE;

ALTER TABLE F15_A3_Emp ADD CONSTRAINT F15_A3_Emp_F15_A3_Lab_FK FOREIGN KEY ( F15_A3_Lab_lab_id ) REFERENCES F15_A3_Lab ( lab_id ) ON DELETE CASCADE ;

ALTER TABLE F15_A3_RFE_Doc ADD CONSTRAINT F15_A3_RFE_Doc_F15_A3_RFE_FK FOREIGN KEY ( F15_A3_RFE_rfe_id ) REFERENCES F15_A3_RFE ( rfe_id ) ON DELETE CASCADE;

ALTER TABLE F15_A3_RFE ADD CONSTRAINT F15_A3_RFE_F15_A3_RFE_S_FK FOREIGN KEY ( F15_A3_RFE_S_status_id ) REFERENCES F15_A3_RFE_S ( status_id ) ON DELETE CASCADE;

ALTER TABLE F15_A3_RFE_SH ADD CONSTRAINT F15_A3_RFE_SH_F15_A3_RFE_FK FOREIGN KEY ( F15_A3_RFE_rfe_id ) REFERENCES F15_A3_RFE ( rfe_id ) ON DELETE CASCADE;

ALTER TABLE F15_A3_RFE_SH ADD CONSTRAINT F15_A3_RFE_SH_F15_A3_RFE_SC_FK FOREIGN KEY ( F15_A3_RFE_SC_status_code ) REFERENCES F15_A3_RFE_SC ( status_code ) ON DELETE CASCADE;

ALTER TABLE F15_A3_RFE_S ADD CONSTRAINT F15_A3_RFE_S_F15_A3_RFE_FK FOREIGN KEY ( F15_A3_RFE_rfe_id ) REFERENCES F15_A3_RFE ( rfe_id ) ON DELETE CASCADE;

ALTER TABLE F15_A3_RFE_S ADD CONSTRAINT F15_A3_RFE_S_F15_A3_RFE_SC_FK FOREIGN KEY ( F15_A3_RFE_SC_status_code ) REFERENCES F15_A3_RFE_SC ( status_code ) ON DELETE CASCADE ;

ALTER TABLE F15_A3_RFE_TC ADD CONSTRAINT F15_A3_RFE_TC_F15_A3_Emp_FK FOREIGN KEY ( F15_A3_Emp_employee_id ) REFERENCES F15_A3_Emp ( employee_id ) ON DELETE CASCADE;

ALTER TABLE F15_A3_RFE_TC ADD CONSTRAINT F15_A3_RFE_TC_F15_A3_RFE_FK FOREIGN KEY ( F15_A3_RFE_rfe_id ) REFERENCES F15_A3_RFE ( rfe_id ) ON DELETE CASCADE;

ALTER TABLE F15_A3_RFE_Task ADD CONSTRAINT F15_A3_RFE_Task_F15_A3_RFE_FK FOREIGN KEY ( F15_A3_RFE_rfe_id ) REFERENCES F15_A3_RFE ( rfe_id ) ON DELETE CASCADE;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            12
-- CREATE INDEX                             3
-- ALTER TABLE                             26
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0