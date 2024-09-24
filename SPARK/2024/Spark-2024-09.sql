DROP TABLE IF EXISTS DATAMODEL_APIS;
CREATE TABLE DATAMODEL_APIS (
     APIID INTEGER NOT NULL,
     TECHNOLOGY STRING,
     BASEURLLOCATION STRING,
     APINAME STRING,
     CREATEDDATE DATE,
     STATUSID INTEGER,
     PURPOSE STRING,
     DATMODEL_TABLENAME STRING,
     APIPARAMS STRING,
     APIEXAMPLE STRING
);
ALTER TABLE DATAMODEL_APIS ADD CONSTRAINT xpk_DATAMODEL_APIS PRIMARY KEY (APIID);

DROP TABLE IF EXISTS DATAMODEL_DATATABLES;
CREATE TABLE DATAMODEL_DATATABLES (
    TABLENAME STRING NOT NULL,
    TABLEINFORMATION STRING,
    STATUSID INTEGER,
    CREATEDDATE TIMESTAMP,
    DOMAIN STRING
);
ALTER TABLE DATAMODEL_DATATABLES ADD CONSTRAINT xpk_DATAMODEL_DATATABLES PRIMARY KEY (TABLENAME);

DROP TABLE IF EXISTS DATAMODEL_DOMAIN;
CREATE TABLE DATAMODEL_DOMAIN (
     DOMAINNAME STRING NOT NULL,
     DOMAININFORMATION STRING,
     STATUSID INTEGER,
     CREATEDDATE TIMESTAMP
);
ALTER TABLE DATAMODEL_DOMAIN ADD CONSTRAINT xpk_DATAMODEL_DOMAIN PRIMARY KEY (DOMAINNAME);

DROP TABLE IF EXISTS DATATIER_DATASTRUCTURE;
CREATE TABLE DATATIER_DATASTRUCTURE (
    DATASTRUCTURECOREID INTEGER NOT NULL,
    DATASTRUCTURENAME STRING,
    DATASTRUCTUREDETAILS STRING,
    CREATEDDATE TIMESTAMP,
    STATUSID INTEGER,
    REGISTEREDAPP STRING
);
ALTER TABLE DATATIER_DATASTRUCTURE ADD CONSTRAINT xpk_DATATIER_DATASTRUCTURES PRIMARY KEY (DATASTRUCTURECOREID);

DROP TABLE IF EXISTS DATATIER;
CREATE TABLE DATATIER (
    DATATIERID INTEGER NOT NULL,
    BASEVALUE STRING,
    SUPPORTINGVALUE1 STRING,
    SUPPORTINGVALUE2 STRING,
    SUPPORTINGVALUE3 STRING,
    SUPPORTINGVALUE4 STRING,
    SUPPORTINGVALUE5 STRING,
    SUPPORTINGVALUE6 STRING,
    SUPPORTINGVALUE75 STRING,
    CREATEDDATE TIMESTAMP,
    STATUSID INTEGER,
    DATAATTRIBUTEID INTEGER,
    DATAGENTYPEID INTEGER,
    CREATEDUSER STRING,
    REGISTEREDAPP STRING
);
ALTER TABLE DATATIER ADD CONSTRAINT xpk_DATATIER PRIMARY KEY (ABABANKINGID);


DROP TABLE IF EXISTS REFDATA_APPLICATION;
CREATE TABLE REFDATA_APPLICATION (
	APPGUID STRING NOT NULL,
	APPLICATIONCUSTOMCODE STRING,
	APPLICATIONDESC STRING,
	CREATEDUSER STRING,
	CREATEDDATE TIMESTAMP,
	STATUSID INTEGER,
	VENDORID INTEGER,
	INDUSTRY_OID STRING,
	ORGANIZATION_UID STRING
);
ALTER TABLE REFDATA_APPLICATION ADD CONSTRAINT xpk_REFDATA_APPLICATION PRIMARY KEY (APPGUID);

DROP TABLE IF EXISTS REFDATA_DATAGENTYPES;
CREATE TABLE REFDATA_DATAGENTYPES (
	DATAGENTYPEID INTEGER NOT NULL,
	DATAGENTYPEDESCRIPTION STRING,
	DEFINITION STRING,
	DATAATTRIBUTEID INTEGER,
	CREATEDDATE TIMESTAMP,
	STATUSID INTEGER,
	CREATEDUSER STRING
);
ALTER TABLE REFDATA_DATAGENTYPES ADD CONSTRAINT xpk_REFDATA_DATAGENTYPES PRIMARY KEY (DATAGENTYPEID);

DROP TABLE IF EXISTS REFDATA_DEVICETYPES;
CREATE TABLE REFDATA_DEVICETYPES (
	DEVICETYPEID INTEGER NOT NULL,
	DEVICETYPE STRING,
	CREATEDDATE TIMESTAMP,
	STATUSID INTEGER
);
ALTER TABLE REFDATA_DEVICETYPES ADD CONSTRAINT xpk_REFDATA_DEVICETYPES PRIMARY KEY (DEVICETYPEID);

DROP TABLE IF EXISTS REFDATA_LEGALENTITIES;
CREATE TABLE REFDATA_LEGALENTITIES (
	LEGALENTITYGUID STRING NOT NULL,
	LOCATIONNAME STRING,
	ADDRESS STRING,
	CITY STRING,
	STATEID STRING,
	ZIPCODE STRING,
	CREATEDUSER STRING,
	STATUSID INTEGER,
	CREATEDDATE TIMESTAMP,
	LOCATIONURL STRING,
	LOCATIONPHONE STRING
);
ALTER TABLE REFDATA_LEGALENTITIES ADD CONSTRAINT xpk_REFDATA_LEGALENTITIES PRIMARY KEY (LEGALENTITYGUID);

DROP TABLE IF EXISTS REFDATA_ORGANIZATION;
CREATE TABLE REFDATA_ORGANIZATION (
	ORGANIZATIONGUID STRING NOT NULL,
	ORGANIZATIONINTERNALCODE STRING,
	ORGANIZATIONINTERNALID STRING,
	ORGANIZATIONNAME STRING,
	ADDRESS STRING,
	CITY STRING,
	STATEID STRING,
	ZIPCODE STRING,
	CREATEDUSER STRING,
	STATUSID INTEGER,
	CREATEDDATE TIMESTAMP,
	LEGALENTITYGUID STRING
);
ALTER TABLE REFDATA_ORGANIZATION ADD CONSTRAINT xpk_REFDATA_ORGANIZATION PRIMARY KEY (ORGANIZATIONGUID);

DROP TABLE IF EXISTS REFDATA_REGEXTYPES;
CREATE TABLE REFDATA_REGEXTYPES (
	IMPLREGEXTYPEID INTEGER NOT NULL,
	REGEXTYPEDESC STRING,
	CREATEDDATE TIMESTAMP,
	STATUSID INTEGER,
	ORGANIZATIONID STRING,
	APPLICATIONID STRING
);
ALTER TABLE REFDATA_REGEXTYPES ADD CONSTRAINT xpk_REFDATA_REGEXTYPES PRIMARY KEY (IMPLREGEXTYPEID);

DROP TABLE IF EXISTS REFDATA_SENSITIVITYFLAG;
CREATE TABLE REFDATA_SENSITIVITYFLAG (
	SENSITIVEFLAGID INTEGER NOT NULL,
	SENSITIVEFLAGDESC STRING,
	CREATEDDATE TIMESTAMP,
	STATUSID INTEGER
);
ALTER TABLE REFDATA_SENSITIVITYFLAG ADD CONSTRAINT xpk_REFDATA_SENSITIVITYFLAG PRIMARY KEY (SENSITIVEFLAGID);

DROP TABLE IF EXISTS REFDATA_TIMEZONES;
CREATE TABLE REFDATA_TIMEZONES (
	TIMEZONEVALUE STRING NOT NULL,
	TIMEZONEDESC STRING,
	CREATEDDATE TIMESTAMP,
	STATUSID INTEGER
);
ALTER TABLE REFDATA_TIMEZONES ADD CONSTRAINT xpk_REFDATA_TIMEZONES PRIMARY KEY (TIMEZONEVALUE);

DROP TABLE IF EXISTS REFDATA_USSTATES;
CREATE TABLE REFDATA_USSTATES (
	STATEID STRING NOT NULL,
	STATEDESCRIPTION STRING,
	LATTITUDE STRING,
	LONGITUDE STRING,
	CREATEDDATE TIMESTAMP,
	STATUSID INTEGER,
	CREATEDUSER STRING
);
ALTER TABLE REFDATA_USSTATES ADD CONSTRAINT xpk_REFDATA_USSTATES PRIMARY KEY (STATEID);

DROP TABLE IF EXISTS REFDATA_VENDOR;
CREATE TABLE REFDATA_VENDOR (
	VENDORID INTEGER NOT NULL,
	VENDORNAME STRING,
	CREATEDDATE TIMESTAMP,
	STATUSID INTEGER,
	CREATEDUSER STRING,
	VENDORGUID STRING
);
ALTER TABLE REFDATA_VENDOR ADD CONSTRAINT xpk_REFDATA_VENDOR PRIMARY KEY (VENDORID);

DROP TABLE IF EXISTS REFDATA_STATUS;
CREATE TABLE REFDATA_STATUS (
       STATUSID INTEGER,
       STATUSDESCRIPTION STRING,
       CREATEDDATE DATE,
       CREATEDUSER STRING
);
ALTER TABLE REFDATA_STATUS ADD CONSTRAINT xpk_REFDATA_STATUS PRIMARY KEY (STATUSID);

DROP TABLE IF EXISTS PLATFORM_DATAATTRIBUTES;
CREATE TABLE PLATFORM_DATAATTRIBUTES (
        PLATFORMDATAATTRIBUTESID INTEGER,
        DATAATTRIBUTENAME STRING,
        SENSITIVITYFLAGID INTEGER,
        CREATEDDATE DATE,
        STATUSID INTEGER,
        CREATEDUSER STRING,
        PLATFORMDATAATTRIBUTEGUID STRING,
        REGISTEREDAPP STRING,
        PLATFORMTABLENAME STRING,
        ATTRIBUTETYPE STRING
);
ALTER TABLE PLATFORM_DATAATTRIBUTES ADD CONSTRAINT xpk_PLATFORM_DATAATTRIBUTES PRIMARY KEY (PLATFORMDATAATTRIBUTESID);

DROP TABLE IF EXISTS PLATFORM_DATAGENERATION;
CREATE TABLE PLATFORM_DATAGENERATION (
        DATAGENTYPEID INTEGER,
        DATAGENTYPEDESCRIPTION STRING,
        DEFINITION STRING,
        DATAATTRIBUTEID INTEGER,
        CREATEDDATE DATE,
        STATUSID INTEGER,
        CREATEDUSER STRING,
        QUANTITY INTEGER,
        MAXRECORDSINSOURCE INTEGER,
        REGISTEREDAPP STRING,
        ORGANIZATIONGUID STRING
);
ALTER TABLE PLATFORM_DATAGENERATION ADD CONSTRAINT xpk_PLATFORM_DATAGENERATION PRIMARY KEY (DATAGENTYPEID);