
create or replace table PUBLIC.AUDITING_DATAREQUEST
(
    DATAREQUESTID NUMBER identity
    constraint PK_AUDITING_DATAREQUEST
    primary key,
    DATAREQUESTDATE TIMESTAMPNTZ,
    CREATEDBYUSER VARCHAR(20),
    ORGANIZATON VARCHAR(38),
    APPLICATION VARCHAR(38),
    STATUSID NUMBER default 1
    constraint FK_PLATFORM_DATAREQUEST_STATUS
    references PUBLIC.REFDATA_STATUS,
    CREATEDDATE TIMESTAMPNTZ default CURRENT_TIMESTAMP(),
    RECCOUNT NUMBER,
    RECORDDATAREQUEST VARCHAR(400)
);

CREATE TABLE APIS (
     APIID NUMBER IDENTITY CONSTRAINT PK_APIS PRIMARY KEY,
     TECHNOLOGY VARCHAR(30),
     BASEURLLOCATION VARCHAR(99),
     APINAME VARCHAR(79),
     CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
     STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_APIS_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
     PURPOSE VARCHAR(49),
     DATMODEL_TABLENAME VARCHAR(99),
     APIPARAMS VARCHAR(59),
     APIEXAMPLE VARCHAR(149)
);

CREATE TABLE DATABUILT_DATASTRUCTUES (
    DATASTRUCTURECOREID NUMBER IDENTITY CONSTRAINT PK_DATABUILT_DATASTRUCTURES PRIMARY KEY,
    DATASTRUCTURENAME VARCHAR(29),
    DATASTRUCTUREDETAILS TEXT,
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATABUILT_DATASTRUCTUES_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    REGISTEREDAPP CHAR(38)
);

CREATE TABLE DATAEXISTING_ABABANKING (
    ABABANKINGID NUMBER IDENTITY CONSTRAINT PK_DATAEXISTING_ABABANKING PRIMARY KEY,
    ROUTINGNUMBER VARCHAR(9),
    TELEGRAPHICNAME VARCHAR(20),
    CUSTOMERNAME VARCHAR(36),
    CITY VARCHAR(20),
    STATECODE VARCHAR(2),
    ZIPCODE VARCHAR(5),
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAEXISTING_ABABANKING_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    CREATEDUSER VARCHAR(20),
    REGISTEREDAPP CHAR(38)
);

CREATE TABLE DATAEXISTING_AREACODE (
    AREACODEID NUMBER IDENTITY CONSTRAINT PK_DATAEXISTING_AREACODE PRIMARY KEY,
    AREACODEVALUE VARCHAR(3) NOT NULL,
    TIMEZONE VARCHAR(3),
    STATECODE VARCHAR(2),
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAEXISTING_AREACODE_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    CREATEDUSER VARCHAR(20),
    REGISTEREDAPP CHAR(38)
);

CREATE TABLE DATAEXISTING_AREACODEINTL (
    IDDCODE VARCHAR(5) NOT NULL CONSTRAINT PK_DATAEXISTING_AREACODEINTL PRIMARY KEY,
    COUNTRYID NUMBER,
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAEXISTING_AREACODEINTL_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    REGISTEREDAPP CHAR(38)
);

CREATE TABLE DATAEXISTING_COMPANIES (
    COMPANIESID NUMBER IDENTITY CONSTRAINT PK_DATAEXISTING_COMPANIES PRIMARY KEY,
    COMPANYNAME VARCHAR(79),
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAEXISTING_COMPANIES_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    CREATEDUSER VARCHAR(20),
    REGISTEREDAPP CHAR(38)
);

CREATE TABLE DATAEXISTING_NAMEFIRST (
    FIRSTNAMEID NUMBER IDENTITY CONSTRAINT PK_DATAEXISTING_NAMEFIRST PRIMARY KEY,
    FIRSTNAME VARCHAR(39),
    GENDER VARCHAR(1),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAEXISTING_NAMEFIRST_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    CREATEDUSER VARCHAR(20),
    REGISTEREDAPP CHAR(38)
);

CREATE TABLE DATAEXISTING_NAMELAST (
    LASTNAMEID NUMBER IDENTITY CONSTRAINT PK_DATAEXISTING_NAMELAST PRIMARY KEY,
    LASTNAME VARCHAR(69),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAEXISTING_NAMELAST_STATUS REFERENCES PUBLIC.REFDATA_STATUS NOT NULL,
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    CREATEDUSER VARCHAR(20),
    REGISTEREDAPP CHAR(38)
);

CREATE TABLE DATAEXISTING_PROFESSION (
    PROFESSIONID NUMBER IDENTITY CONSTRAINT PK_DATAEXISTING_PROFESSION PRIMARY KEY,
    PROFESSIONNAME VARCHAR(149),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_ATAEXISTING_PROFESSION_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    CREATEDUSER VARCHAR(20),
    REGISTEREDAPP CHAR(38)
);

CREATE TABLE DATAEXISTING_UPCCODES (
    UPCCODEID NUMBER IDENTITY CONSTRAINT PK_DATAEXISTING_UPCCODES PRIMARY KEY,
    UPCCODENAME VARCHAR(15),
    UPCPRODUCTNAME VARCHAR(150),
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAEXISTING_UPCCODES_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    REGISTEREDAPP CHAR(38)
);

CREATE TABLE DATAEXISTING_ZIPCODEINTL (
    ZIPCODEINTNLID NUMBER IDENTITY CONSTRAINT PK_DATAEXISTING_ZIPCODEINTL PRIMARY KEY,
    ZIPCODE CHAR(10) NOT NULL,
    ZIPCODETYPE VARCHAR(15),
    CITY VARCHAR(75),
    COUNTRY INT,
    LATTITUDE VARCHAR(10),
    LONGITUDE VARCHAR(10),
    LOCATION VARCHAR(99),
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAEXISTING_ZIPCODEINTL_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    CREATEDUSER VARCHAR(20),
    REGISTEREDAPP CHAR(38)
);

CREATE TABLE DATAEXISTING_ZIPCODEUS (
    ZIPCODEID NUMBER IDENTITY CONSTRAINT PK_DATAEXISTING_ZIPCODEUS PRIMARY KEY,
    ZIPCODE CHAR(5) NOT NULL,
    ZIPCODETYPE VARCHAR(15),
    CITY VARCHAR(75),
    STATECODE VARCHAR(2),
    LATTITUDE VARCHAR(10),
    LONGITUDE VARCHAR(10),
    LCTN VARCHAR(99),
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAEXISTING_ZIPCODEUS_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    CREATEDUSER VARCHAR(20),
    REGISTEREDAPP CHAR(38)
);

CREATE TABLE DATAGENERATED_ACCOUNTNUMBERS (
    ACCOUNTNUMBERSID NUMBER IDENTITY CONSTRAINT PK_DATAGENERATED_ACCOUNTNUMBERS PRIMARY KEY,
    ACCOUNTNUMBERVALUE VARCHAR(20),
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    CREATEDUSER VARCHAR(20),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAGENERATED_ACCOUNTNUMBERST_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    REGISTEREDAPP CHAR(38),
    DATAGENTYPEID INT
);

CREATE TABLE DATAGENERATED_ADDRESSES (
    ADDRESSID NUMBER IDENTITY CONSTRAINT PK_DATAGENERATED_ADDRESSES PRIMARY KEY,
    ADDRESSSTREET VARCHAR(99),
    ADDRESSSTREET2 VARCHAR(59),
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAGENERATED_ADDRESSES_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    CREATEDUSER VARCHAR(20),
    REGISTEREDAPP CHAR(38),
    DATAGENTYPEID INT
);
CREATE TABLE DATAGENERATED_BANKACCOUNT (
    BANKACCOUNTSID NUMBER IDENTITY CONSTRAINT PK_DATAGENERATED_BANKACCOUNT PRIMARY KEY,
    BANKACCOUNTVALUE VARCHAR(17),
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAGENERATED_BANKACCOUNT_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    CREATEDUSER VARCHAR(20),
    REGISTEREDAPP CHAR(38),
    DATAGENTYPEID INT
);

CREATE TABLE DATAGENERATED_CREDITCARD (
    CREDITCARDID NUMBER IDENTITY CONSTRAINT PK_DATAGENERATED_CREDITCARD PRIMARY KEY,
    CREDITCARDNUMBER VARCHAR(20),
    CREDITCARDNAME VARCHAR(20),
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_PDATAGENERATED_CREDITCARD_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    CREATEDUSER VARCHAR(20),
    REGISTEREDAPP CHAR(38),
    DATAGENTYPEID INT
);

CREATE TABLE DATAGENERATED_CUSTOM (
    DATAGENCUSTOMDID NUMBER IDENTITY CONSTRAINT PK_DATAGENERATED_CUSTOM PRIMARY KEY,
    CUSTOMIDENTIFIER VARCHAR(40),
    CUSTOMIDENTIFIERDESC VARCHAR(29),
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAGENERATED_CUSTOM_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    CREATEDUSER VARCHAR(20),
    REGISTEREDAPP CHAR(38),
    DATAGENTYPEID INT
);

CREATE TABLE DATAGENERATED_DATEOFBIRTH (
    DATEOFBIRTHSID NUMBER IDENTITY CONSTRAINT PK_DATAGENERATED_DATEOFBIRTH PRIMARY KEY,
    DATEOFBIRTH VARCHAR(12),
    DATEOFBIRTHDATE DATE,
    AGE INT,
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAGENERATED_DATEOFBIRTH_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    CREATEDUSER VARCHAR(20),
    REGISTEREDAPP CHAR(38)
);

CREATE TABLE DATAGENERATED_DEVICES (
    DEVICESID NUMBER IDENTITY CONSTRAINT PK_DATAGENERATED_DEVICES PRIMARY KEY,
    DEVICENAME VARCHAR(40),
    DEVICETYPEID INT,
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAGENERATED_DEVICES_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    APPLICATION CHAR(38)
);

CREATE TABLE DATAGENERATED_DRIVERSLICENSES (
    DRIVERSLICENSESID NUMBER IDENTITY CONSTRAINT PK_DATAGENERATED_DRIVERSLICENSES PRIMARY KEY,
    DLN VARCHAR(25),
    STATECODE VARCHAR(2),
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAGENERATED_DRIVERSLICENSES_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    DATAGENTYPEID INT,
    CREATEDUSER VARCHAR(20),
    REGISTEREDAPP CHAR(38)
);

CREATE TABLE DATAGENERATED_EIN (
                                   EINID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                   EINVALUE VARCHAR(10),
                                   CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                   STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                   CREATEDUSER VARCHAR(20),
                                   REGISTEREDAPP CHAR(38),
                                   PRIMARY KEY (EINID)
);
CREATE TABLE DATAGENERATED_PHONENUMBER (
                                           PHONENUMBERID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                           PHONENUMBERVALUE VARCHAR(8),
                                           CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                           STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                           CREATEDUSER VARCHAR(20),
                                           REGISTEREDAPP CHAR(38),
                                           PRIMARY KEY (PHONENUMBERID)
);
CREATE TABLE DATAGENERATED_PHONENUMBERSINTL (
                                                PHONENUMBERINTLID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                                PHONENUMBERVALUE VARCHAR(12),
                                                CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                                STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                                COUNTRYID INT,
                                                CREATEDUSER VARCHAR(20),
                                                REGISTEREDAPP CHAR(38),
                                                PRIMARY KEY (PHONENUMBERINTLID)
);
CREATE TABLE DATAGENERATED_REGEXS (
                                      REGEXID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                      REGEXVALUE VARCHAR(25),
                                      CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                      STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                      CREATEDUSER VARCHAR(20),
                                      REGEXTYPEID INT,
                                      REGISTEREDAPP CHAR(38),
                                      PRIMARY KEY (REGEXID)
);
CREATE TABLE DATAGENERATED_SERIALNUMBERS (
                                             SERIALNUMBERID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                             SERIALNUMBERVALUE VARCHAR(25),
                                             CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                             STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                             CREATEDUSER VARCHAR(20),
                                             REGISTEREDAPP CHAR(38),
                                             PRIMARY KEY (SERIALNUMBERID)
);
CREATE TABLE DATAGENERATED_SOCIALSECURITYNUMBER (
                                                    SOCIALSECURITYNUMBERID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                                    SOCIALSECURITYNUMBERVALUE VARCHAR(11),
                                                    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                                    STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                                    CREATEDUSER VARCHAR(20),
                                                    REGISTEREDAPP CHAR(38),
                                                    PRIMARY KEY (SOCIALSECURITYNUMBERID)
);
CREATE TABLE DATAGENERATED_USERIDENTITIES (
     USERIDENTITIESID NUMBER IDENTITY CONSTRAINT PK_DATAGENERATED_USERIDENTITIES PRIMARY KEY,
     USERIDENTITYVALUE VARCHAR(20),
     USERDOMAIN VARCHAR(20),
     ADDITIONALATTRIBUTES VARCHAR(40),
     CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
     STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAGENERATED_USERIDENTITIES_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
     REGISTEREDAPP CHAR(38),
     DATAGENTYPEID NUMBER
);

CREATE TABLE DATAMODEL_DATATABLES (
    TABLENAME VARCHAR(64) NOT NULL,
    TABLEINFORMATION VARCHAR(249),
    STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAMODEL_DATATABLES_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    DOMAIN VARCHAR(64)
);

CREATE TABLE DATAMODEL_DOMAIN (
     DOMAINNAME VARCHAR(64) NOT NULL,
     DOMAININFORMATION VARCHAR(249),
     STATUSID NUMBER DEFAULT 1 CONSTRAINT FK_DATAMODEL_DOMAIN_STATUS REFERENCES PUBLIC.REFDATA_STATUS,
     CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP()
);

CREATE TABLE PLATFORM_APPSETTINGS_GENERAL (
                                              APPSETTINGSID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                              APPSETTINGNAME VARCHAR(50),
                                              APPSETTINGVALUE VARCHAR(199),
                                              CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                              STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                              REGISTEREDAPP CHAR(38),
                                              DEFAULTDATAGENERATIONAPP CHAR(38),
                                              PRIMARY KEY (APPSETTINGSID)
);
CREATE TABLE PLATFORM_CONFIG_DATAATTRIBUTES (
                                                DATAGENCONFIGID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                                DATATYPEGENCONFIGNAME VARCHAR(25),
                                                DATAATTRIBUTEID INT,
                                                RUNQUANTITY INT,
                                                DATAGENTYPEID INT,
                                                CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                                STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                                CREATEDUSER VARCHAR(20),
                                                APPLICATIONID CHAR(38),
                                                PRIMARY KEY (DATAGENCONFIGID)
);
CREATE TABLE PLATFORM_CONFIG_DATASTRUCTURES (
                                                PLATFORMDATASTRUCTURESID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                                DATASTRUCTURENAME VARCHAR(50),
                                                SENSITIVITYFLAGID INT,
                                                CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                                STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                                CREATEDUSER VARCHAR(20),
                                                PLATFORMDATASTRUCTURESGUID CHAR(38),
                                                REGISTEREDAPP CHAR(38),
                                                PRIMARY KEY (PLATFORMDATASTRUCTURESID)
);
CREATE TABLE PLATFORM_CONFIG_DATASTRUCTURES_DTL (
                                                    PLATFORMDATASTRUCTURESTODATAATTRIBUTESID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                                    PLATFORMDATASTRUCTURESID INT,
                                                    COMPOSITEDATASTRUCTURENAME VARCHAR(50),
                                                    SENSITIVITYFLAGID INT,
                                                    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                                    STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                                    CREATEDUSER VARCHAR(20),
                                                    PLATFORMDATASTRUCTURESTODATAATTRIBUTESGUID CHAR(38),
                                                    REGISTEREDAPP CHAR(38),
                                                    PLATFORMDATAATTRIBUTESID INT,
                                                    PRIMARY KEY (PLATFORMDATASTRUCTURESTODATAATTRIBUTESID)
);
CREATE TABLE PLATFORM_DATAATTRIBUTES (
                                         PLATFORMDATAATTRIBUTESID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                         DATAATTRIBUTENAME VARCHAR(50),
                                         SENSITIVITYFLAGID INT,
                                         CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                         STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                         CREATEDUSER VARCHAR(20),
                                         PLATFORMDATAATTRIBUTEGUID CHAR(38),
                                         REGISTEREDAPP CHAR(38),
                                         PLATFORMTABLENAME VARCHAR(38),
                                         PRIMARY KEY (PLATFORMDATAATTRIBUTESID)
);
CREATE TABLE PLATFORM_INDUSTRYSTDS_METADATA (
                                                PLATFORMDINDUSTRYSTDMETADATASID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                                EVENTTYPEID VARCHAR(10),
                                                INDUSTRYVERSION VARCHAR(10),
                                                SEGMENTDETAIL VARCHAR(50),
                                                FIELDORDERID INT,
                                                FIELDID VARCHAR(10),
                                                FIELDNAME VARCHAR(50),
                                                FIELDDESC VARCHAR(99),
                                                SENSITIVITYFLAGID INT,
                                                CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                                STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                                CREATEDUSER VARCHAR(20),
                                                PRIMARY KEY (PLATFORMDINDUSTRYSTDMETADATASID)
);
CREATE TABLE REFDATA_APPLICATION (
                                     APPGUID CHAR(38) NOT NULL,
                                     APPLICATIONCUSTOMCODE VARCHAR(15),
                                     APPLICATIONDESC VARCHAR(50),
                                     CREATEDUSER VARCHAR(20),
                                     CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                     STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                     VENDORID INT,
                                     INDUSTRY_OID VARCHAR(49),
                                     ORGANIZATION_UID VARCHAR(49),
                                     PRIMARY KEY (APPGUID)
);
CREATE TABLE REFDATA_CODESET (
                                 CODESETSID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                 CODESETNAME VARCHAR(50),
                                 INDUSTRYSTD VARCHAR(6),
                                 STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                 CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                 CREATEDUSER VARCHAR(20),
                                 CODESETGUID CHAR(38),
                                 FIELDMAPPING VARCHAR(40),
                                 SENSITIVITYFLAGID INT,
                                 EXTERNALTABLEID VARCHAR(20),
                                 EXTERNALNOTES VARCHAR(149),
                                 EXTERNALLINK VARCHAR(99),
                                 PRIMARY KEY (CODESETSID)
);
CREATE TABLE REFDATA_CODESETS_CROSSMAPS (
                                            CODESETCROSSMAPID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                            IMPLCODESETSID INT NOT NULL,
                                            CODESETTOAPPLICATIONID BIGINT,
                                            TERMINOLOGYSTDTO INT,
                                            CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                            STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                            CREATEDUSER VARCHAR(20),
                                            TRANSFORMCODEVALUE VARCHAR(40),
                                            TRANSFORMCODEDESC VARCHAR(129),
                                            ORIGINALCODEVALUE VARCHAR(40),
                                            ORIGINALCODEDESC VARCHAR(40),
                                            PRIMARY KEY (CODESETCROSSMAPID)
);
CREATE TABLE REFDATA_COUNTRIES (
                                   COUNTRYID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                   IDD VARCHAR(5),
                                   COUNTRYNAME VARCHAR(59),
                                   CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                   STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                   PRIMARY KEY (COUNTRYID)
);
CREATE TABLE REFDATA_DATAGENTYPES (
                                      DATAGENTYPEID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                      DATAGENTYPEDESCRIPTION VARCHAR(65),
                                      DEFINITION VARCHAR(255),
                                      DATAATTRIBUTEID INT,
                                      CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                      STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                      CREATEDUSER VARCHAR(20),
                                      PRIMARY KEY (DATAGENTYPEID)
);
CREATE TABLE REFDATA_DEVICETYPES (
                                     DEVICETYPEID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                     DEVICETYPE VARCHAR(30),
                                     CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                     STATUSID INT,
                                     PRIMARY KEY (DEVICETYPEID)
);
CREATE TABLE REFDATA_INDUSTRIES (
                                    INDUSTRYID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                    INDUSTRYNAME VARCHAR(45),
                                    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                    STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                    PRIMARY KEY (INDUSTRYID)
);
CREATE TABLE REFDATA_INDUSTRIESTOBUSINESS (
                                              INDUSTRYTOBUSINESSID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                              INDUSTRYID INT,
                                              BUSINESSAREA VARCHAR(50),
                                              CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                              STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                              PRIMARY KEY (INDUSTRYTOBUSINESSID)
);
CREATE TABLE REFDATA_INDUSTRYSTD (
                                     INDUSTRYSTD VARCHAR(6) NOT NULL,
                                     INDUSTRYSTDDESC VARCHAR(30),
                                     CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                     STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                     PRIMARY KEY (INDUSTRYSTD)
);
CREATE TABLE REFDATA_INDUSTRYSTD_EVENTTYPES (
                                                EVENTTYPEID VARCHAR(10) NOT NULL,
                                                EVENTTYPESDDESC VARCHAR(30),
                                                INDUSTRYSTD VARCHAR(6),
                                                CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                                STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                                PRIMARY KEY (EVENTTYPEID)
);
CREATE TABLE REFDATA_INDUSTRYSTD_EVENTTYPES_GROUPERS (
                                                         INDUSTRYSTDEVENTTYPESGROUPERSID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                                         EVENTTYPEID VARCHAR(10),
                                                         EVENTTYPESDDESC VARCHAR(30),
                                                         INDUSTRYSTD VARCHAR(6),
                                                         CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                                         STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                                         PRIMARY KEY (INDUSTRYSTDEVENTTYPESGROUPERSID)
);
CREATE TABLE REFDATA_LEGALENTITIES (
                                       LEGALENTITYGUID CHAR(38) NOT NULL,
                                       LOCATIONNAME VARCHAR(50),
                                       ADDRESS VARCHAR(75),
                                       CITY VARCHAR(60),
                                       STATEID VARCHAR(2),
                                       ZIPCODE VARCHAR(12),
                                       CREATEDUSER VARCHAR(20),
                                       STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                       CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP() NOT NULL,
                                       LOCATIONURL VARCHAR(99),
                                       LOCATIONPHONE VARCHAR(12),
                                       PRIMARY KEY (LEGALENTITYGUID)
);
CREATE TABLE REFDATA_OPERATIONTYPE (
                                       OPERATIONTYPEID VARCHAR(7) NOT NULL,
                                       OPERATIONTYPENAME VARCHAR(60),
                                       CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                       STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                       PRIMARY KEY (OPERATIONTYPEID)
);
CREATE TABLE REFDATA_ORGANIZATION (
                                      ORGANIZATIONGUID CHAR(38) NOT NULL,
                                      ORGANIZATIONINTERNALCODE VARCHAR(10),
                                      ORGANIZATIONINTERNALID VARCHAR(10),
                                      ORGANIZATIONNAME VARCHAR(50),
                                      ADDRESS VARCHAR(75),
                                      CITY VARCHAR(60),
                                      STATEID VARCHAR(2),
                                      ZIPCODE VARCHAR(12),
                                      CREATEDUSER VARCHAR(20),
                                      STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                      CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP() NOT NULL,
                                      LEGALENTITYGUID CHAR(38),
                                      PRIMARY KEY (ORGANIZATIONGUID)
);
CREATE TABLE REFDATA_PLATFORMPARAMS (
                                        PLATFORMPARAMSID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                        PLATFORMPARAMVALUES VARCHAR(35),
                                        PLATFORMPARAMDESC VARCHAR(70),
                                        CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                        STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                        PRIMARY KEY (PLATFORMPARAMSID)
);
CREATE TABLE REFDATA_PLATFORMPARAMSTODATAATTRIBUTES (
                                                        PLATFORMPARAMSTODATAATTRIBUTEID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                                        PLATFORMPARAMSID INT,
                                                        DATAATTRIBUTEID INT,
                                                        CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                                        STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                                        REGISTEREDAPP CHAR(38),
                                                        PRIMARY KEY (PLATFORMPARAMSTODATAATTRIBUTEID)
);
CREATE TABLE REFDATA_PROFESSIONTYPES (
                                         PROFESSIONTYPEID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                         PROFESSIONTYPENAME VARCHAR(65),
                                         CREATEDUSER VARCHAR(20),
                                         CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                         STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                         PRIMARY KEY (PROFESSIONTYPEID)
);
CREATE TABLE REFDATA_REGEXTYPES (
                                    IMPLREGEXTYPEID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                    REGEXTYPEDESC VARCHAR(69),
                                    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                    STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                    ORGANIZATIONID CHAR(38),
                                    APPLICATIONID CHAR(38),
                                    PRIMARY KEY (IMPLREGEXTYPEID)
);
CREATE TABLE REFDATA_RULESETS (
                                  RULEID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                  RULENAME VARCHAR(65),
                                  CREATEDUSER VARCHAR(20),
                                  CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                  STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                  EXPIRATIONDATE DATETIME,
                                  PRIMARY KEY (RULEID)
);
CREATE TABLE REFDATA_RULESETSDEFINITIONS (
                                             RULESETDEFINITIONSID CHAR(38) NOT NULL,
                                             RULESETDEFINITIONNAME VARCHAR(50),
                                             RULESETID INT,
                                             STEPORDERID INT,
                                             OPERATIONTYPEID VARCHAR(7),
                                             RULESETDEFVALUE CHAR(40),
                                             STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                             CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                             EFFECTIVEDATE DATETIME,
                                             APPLICATIONID CHAR(38),
                                             TERMDATE DATETIME,
                                             DATAATTRIBUTEID INT,
                                             PRIMARY KEY (RULESETDEFINITIONSID)
);
CREATE TABLE REFDATA_SENSITIVITYFLAG (
                                         SENSITIVEFLAGID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                         SENSITIVEFLAGDESC VARCHAR(30),
                                         CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                         STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                         PRIMARY KEY (SENSITIVEFLAGID)
);
CREATE TABLE REFDATA_STATUS (
                                STATUSID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                STATUSDESCRIPTION VARCHAR(45) NOT NULL,
                                CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                CREATEDUSER VARCHAR(20),
                                PRIMARY KEY (STATUSID)
);
CREATE TABLE REFDATA_TERMINOLOGYSTD (
                                        TERMINOLOGYSTDID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                        TERMINOLOGYSTD VARCHAR(25) NOT NULL,
                                        TERMINOLOGYSTDVERSION VARCHAR(10) NOT NULL,
                                        TERMINOLOGYSTDDESC VARCHAR(129),
                                        CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                        STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                        PRIMARY KEY (TERMINOLOGYSTDID)
);
CREATE TABLE REFDATA_TIMEZONES (
                                   TIMEZONEVALUE VARCHAR(3) NOT NULL,
                                   TIMEZONEDESC VARCHAR(25),
                                   CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                   STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                   PRIMARY KEY (TIMEZONEVALUE)
);
CREATE TABLE REFDATA_USSTATES (
                                  STATEID VARCHAR(2) NOT NULL,
                                  STATEDESCRIPTION VARCHAR(65),
                                  LATTITUDE VARCHAR(12),
                                  LONGITUDE VARCHAR(12),
                                  CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                  STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                  CREATEDUSER VARCHAR(20),
                                  PRIMARY KEY (STATEID)
);
CREATE TABLE REFDATA_VENDOR (
                                VENDORID NUMBER IDENTITY
    CONSTRAINT PK_AUDITING_DATAREQUEST
    PRIMARY KEY,
                                VENDORNAME VARCHAR(50),
                                CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
                                STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
                                CREATEDUSER VARCHAR(20),
                                VENDORGUID CHAR(38),
                                PRIMARY KEY (VENDORID)
);

CREATE TABLE TERMS_CODESET_INDUSTRYSTD (
    TERMCODESETID NUMBER IDENTITY CONSTRAINT PK_AUDITING_DATAREQUEST PRIMARY KEY,
    CODESETSID INT NOT NULL,
    CREATEDDATE TIMESTAMPNTZ DEFAULT CURRENT_TIMESTAMP(),
    STATUSID NUMBER DEFAULT 1
    CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
    REFERENCES PUBLIC.REFDATA_STATUS,
    CODEVALUE VARCHAR(20),
    CODEDESC VARCHAR(129),
    INDUSTRYSTD VARCHAR(6),
    TERMINOLOGYSTDID NUMBER
);

CREATE TABLE TERMS_UMLS_MRCONOSO (
     CUI CHAR(8) NOT NULL,
     LAT CHAR(3) NOT NULL,
     TS CHAR(1) NOT NULL,
     LUI VARCHAR(10) NOT NULL,
     STT VARCHAR(3) NOT NULL,
     SUI VARCHAR(10) NOT NULL,
     ISPREF CHAR(1) NOT NULL,
     AUI VARCHAR(9) NOT NULL,
     SAUI VARCHAR(50),
     SCUI VARCHAR(100),
     SDUI VARCHAR(100),
     SAB VARCHAR(20) NOT NULL,
     TTY VARCHAR(20) NOT NULL,
     CODE VARCHAR(100) NOT NULL,
     STR VARCHAR(3000) NOT NULL,
     SRL VARCHAR(25) NOT NULL,
     SUPPRESS CHAR(1) NOT NULL,
     STATUSID NUMBER DEFAULT 1
     CONSTRAINT FK_PLATFORM_DATAREQUEST_STATUS
     REFERENCES PUBLIC.REFDATA_STATUS,
     CREATEDDATE TIMESTAMPNTZ default CURRENT_TIMESTAMP()
);
