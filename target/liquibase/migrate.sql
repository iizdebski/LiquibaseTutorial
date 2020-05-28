-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: master-changelog.xml
-- Ran at: 5/28/20 5:55 PM
-- Against: postgres@jdbc:postgresql://localhost:5432/liquibasetutorial
-- Liquibase version: 4.0.0-beta1
-- *********************************************************************

-- Create Database Lock Table
CREATE TABLE databasechangeloglock (ID INTEGER NOT NULL, LOCKED BOOLEAN NOT NULL, LOCKGRANTED TIMESTAMP WITHOUT TIME ZONE, LOCKEDBY VARCHAR(255), CONSTRAINT DATABASECHANGELOGLOCK_PKEY PRIMARY KEY (ID));

-- Initialize Database Lock Table
DELETE FROM databasechangeloglock;

INSERT INTO databasechangeloglock (ID, LOCKED) VALUES (1, FALSE);

-- Lock Database
UPDATE databasechangeloglock SET LOCKED = TRUE, LOCKEDBY = 'WIN-VEBVVK9QFNE (192.168.56.1)', LOCKGRANTED = '2020-05-28 17:55:10.816' WHERE ID = 1 AND LOCKED = FALSE;

-- Create Database Change Log Table
CREATE TABLE databasechangelog (ID VARCHAR(255) NOT NULL, AUTHOR VARCHAR(255) NOT NULL, FILENAME VARCHAR(255) NOT NULL, DATEEXECUTED TIMESTAMP WITHOUT TIME ZONE NOT NULL, ORDEREXECUTED INTEGER NOT NULL, EXECTYPE VARCHAR(10) NOT NULL, MD5SUM VARCHAR(35), DESCRIPTION VARCHAR(255), COMMENTS VARCHAR(255), TAG VARCHAR(255), LIQUIBASE VARCHAR(20), CONTEXTS VARCHAR(255), LABELS VARCHAR(255), DEPLOYMENT_ID VARCHAR(10));

-- Changeset master-changelog.xml::change_1::izdebski
CREATE TABLE "Emp" ("empId" INTEGER, "empName" VARCHAR(100));

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('change_1', 'izdebski', 'master-changelog.xml', NOW(), 1, '8:8a71b3f7e6c2957085d67c4d84b66723', 'createTable tableName=Emp', '', 'EXECUTED', NULL, NULL, '4.0.0-b1', '0677714039');

-- Changeset master-changelog.xml::change_2::izdebski
CREATE TABLE "Dept" ("deptId" INTEGER, "deptName" VARCHAR(100));

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('change_2', 'izdebski', 'master-changelog.xml', NOW(), 2, '8:6852311fec1de0e06f492e3a99d1e503', 'createTable tableName=Dept', '', 'EXECUTED', NULL, NULL, '4.0.0-b1', '0677714039');

-- Changeset master-changelog.xml::change_4::izdebski
INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('change_4', 'izdebski', 'master-changelog.xml', NOW(), 3, '8:d41d8cd98f00b204e9800998ecf8427e', 'empty', '', 'EXECUTED', NULL, NULL, '4.0.0-b1', '0677714039');

-- Release Database Lock
UPDATE databasechangeloglock SET LOCKED = FALSE, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

