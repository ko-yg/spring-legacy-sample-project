--------------------------------------------------------
--  DDL for Table TB_ADM_USR
--------------------------------------------------------

CREATE TABLE TB_ADM_USR
(	"USR_ID" VARCHAR2(50) NOT NULL,
	"USR_NM" VARCHAR2(100) NOT NULL,
	"PASSWORD" VARCHAR2(255) DEFAULT NULL,
	"ENABLED" INT DEFAULT 0,
	"CRT_DT" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	"UPT_DT" TIMESTAMP,
	CONSTRAINT PK_USER_01 PRIMARY KEY(USR_ID)
);

--------------------------------------------------------
--  DDL for Table TB_ADM_USR_ATH
--------------------------------------------------------

CREATE TABLE TB_ADM_USR_ATH
(	"USR_ID" VARCHAR2(50) NOT NULL, 
	"ATH_CD" VARCHAR2(20),
	"CRT_DT" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	"UPT_DT" TIMESTAMP,
	CONSTRAINT PK_USER_AUTH_01 PRIMARY KEY(USR_ID, ATH_CD)
);


--------------------------------------------------------
--  DDL for Table TB_COMN_CODE
--------------------------------------------------------

CREATE TABLE TB_COMN_CD 
(	"CD_TYP" VARCHAR2(10) NOT NULL, 
	"CD_ID" VARCHAR2(20) NOT NULL,
	"CD_NM" VARCHAR2(200) NOT NULL,
	"UP_CD_ID" VARCHAR2(20),
	"CD_ORD" NUMBER DEFAULT 1,
	"OPT_1ST" VARCHAR2(20),
	"OPT_2ND" VARCHAR2(50),
	"OPT_3RD" VARCHAR2(100),
	"USE_YN" CHAR(1) DEFAULT 'Y', 
	"CRT_DT" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	"UPT_DT" TIMESTAMP,
	CONSTRAINT PK_COMN_CODE_01 PRIMARY KEY(CD_TYP, CD_ID)
);



--------------------------------------------------------
--  DDL for Spring Batch Meta Data
-------------------------------------------------------
/*
CREATE TABLE BATCH_JOB_INSTANCE  (
	JOB_INSTANCE_ID BIGINT IDENTITY NOT NULL PRIMARY KEY ,
	VERSION BIGINT ,
	JOB_NAME VARCHAR(100) NOT NULL,
	JOB_KEY VARCHAR(32) NOT NULL,
	constraint JOB_INST_UN unique (JOB_NAME, JOB_KEY)
) ;

CREATE TABLE BATCH_JOB_EXECUTION  (
	JOB_EXECUTION_ID BIGINT IDENTITY NOT NULL PRIMARY KEY ,
	VERSION BIGINT  ,
	JOB_INSTANCE_ID BIGINT NOT NULL,
	CREATE_TIME TIMESTAMP NOT NULL,
	START_TIME TIMESTAMP DEFAULT NULL ,
	END_TIME TIMESTAMP DEFAULT NULL ,
	STATUS VARCHAR(10) ,
	EXIT_CODE VARCHAR(2500) ,
	EXIT_MESSAGE VARCHAR(2500) ,
	LAST_UPDATED TIMESTAMP,
	JOB_CONFIGURATION_LOCATION VARCHAR(2500) NULL,
	constraint JOB_INST_EXEC_FK foreign key (JOB_INSTANCE_ID)
	references BATCH_JOB_INSTANCE(JOB_INSTANCE_ID)
) ;

CREATE TABLE BATCH_JOB_EXECUTION_PARAMS  (
	JOB_EXECUTION_ID BIGINT NOT NULL ,
	TYPE_CD VARCHAR(6) NOT NULL ,
	KEY_NAME VARCHAR(100) NOT NULL ,
	STRING_VAL VARCHAR(250) ,
	DATE_VAL TIMESTAMP DEFAULT NULL ,
	LONG_VAL BIGINT ,
	DOUBLE_VAL DOUBLE PRECISION ,
	IDENTIFYING CHAR(1) NOT NULL ,
	constraint JOB_EXEC_PARAMS_FK foreign key (JOB_EXECUTION_ID)
	references BATCH_JOB_EXECUTION(JOB_EXECUTION_ID)
) ;

CREATE TABLE BATCH_STEP_EXECUTION  (
	STEP_EXECUTION_ID BIGINT IDENTITY NOT NULL PRIMARY KEY ,
	VERSION BIGINT NOT NULL,
	STEP_NAME VARCHAR(100) NOT NULL,
	JOB_EXECUTION_ID BIGINT NOT NULL,
	START_TIME TIMESTAMP NOT NULL ,
	END_TIME TIMESTAMP DEFAULT NULL ,
	STATUS VARCHAR(10) ,
	COMMIT_COUNT BIGINT ,
	READ_COUNT BIGINT ,
	FILTER_COUNT BIGINT ,
	WRITE_COUNT BIGINT ,
	READ_SKIP_COUNT BIGINT ,
	WRITE_SKIP_COUNT BIGINT ,
	PROCESS_SKIP_COUNT BIGINT ,
	ROLLBACK_COUNT BIGINT ,
	EXIT_CODE VARCHAR(2500) ,
	EXIT_MESSAGE VARCHAR(2500) ,
	LAST_UPDATED TIMESTAMP,
	constraint JOB_EXEC_STEP_FK foreign key (JOB_EXECUTION_ID)
	references BATCH_JOB_EXECUTION(JOB_EXECUTION_ID)
) ;

CREATE TABLE BATCH_STEP_EXECUTION_CONTEXT  (
	STEP_EXECUTION_ID BIGINT NOT NULL PRIMARY KEY,
	SHORT_CONTEXT VARCHAR(2500) NOT NULL,
	SERIALIZED_CONTEXT LONGVARCHAR ,
	constraint STEP_EXEC_CTX_FK foreign key (STEP_EXECUTION_ID)
	references BATCH_STEP_EXECUTION(STEP_EXECUTION_ID)
) ;

CREATE TABLE BATCH_JOB_EXECUTION_CONTEXT  (
	JOB_EXECUTION_ID BIGINT NOT NULL PRIMARY KEY,
	SHORT_CONTEXT VARCHAR(2500) NOT NULL,
	SERIALIZED_CONTEXT LONGVARCHAR ,
	constraint JOB_EXEC_CTX_FK foreign key (JOB_EXECUTION_ID)
	references BATCH_JOB_EXECUTION(JOB_EXECUTION_ID)
) ;

CREATE SEQUENCE BATCH_STEP_EXECUTION_SEQ;
CREATE SEQUENCE BATCH_JOB_EXECUTION_SEQ;
CREATE SEQUENCE BATCH_JOB_SEQ;
*/