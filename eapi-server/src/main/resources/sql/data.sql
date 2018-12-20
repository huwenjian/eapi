-- EAPI_DATAMODEL
INSERT INTO EAPI_DATAMODEL (ID, NAME, CREATE_TIME, CREATER, CREATER_USERNAME, DESCRIPTION, PARENT_ID, TYPE, DISPLAYORDER, EXAMPLE, REQUIRED, DATA_TYPE, REF_ID, PROJECT_ID) SELECT '8cd783d0-4a90-11e8-842f-0ed5f89f718b', '字符串', '2018-04-28 03:05:07.405000000', '1', 'shawn', '字符串', null, 'system', 3, null, true, 'string', null, null FROM DUAL WHERE NOT EXISTS(SELECT ID FROM EAPI_DATAMODEL WHERE ID = '8cd783d0-4a90-11e8-842f-0ed5f89f718b');
INSERT INTO EAPI_DATAMODEL (ID, NAME, CREATE_TIME, CREATER, CREATER_USERNAME, DESCRIPTION, PARENT_ID, TYPE, DISPLAYORDER, EXAMPLE, REQUIRED, DATA_TYPE, REF_ID, PROJECT_ID) SELECT '8cd7818c-4a90-11e8-842f-0ed5f89f718b', '数值', '2018-04-28 03:05:03.773000000', '1', 'shawn', '数值', null, 'system', 4, null, true, 'integer', null, null FROM DUAL WHERE NOT EXISTS(SELECT ID FROM EAPI_DATAMODEL WHERE ID = '8cd7818c-4a90-11e8-842f-0ed5f89f718b');
INSERT INTO EAPI_DATAMODEL (ID, NAME, CREATE_TIME, CREATER, CREATER_USERNAME, DESCRIPTION, PARENT_ID, TYPE, DISPLAYORDER, EXAMPLE, REQUIRED, DATA_TYPE, REF_ID, PROJECT_ID) SELECT '8cd751da-4a90-11e8-842f-0ed5f89f718b', '数组', '2018-04-28 02:48:58.000000000', '1', 'shawn', '数组', null, 'system', 2, null, true, 'array', null, null FROM DUAL WHERE NOT EXISTS(SELECT ID FROM EAPI_DATAMODEL WHERE ID = '8cd751da-4a90-11e8-842f-0ed5f89f718b');
INSERT INTO EAPI_DATAMODEL (ID, NAME, CREATE_TIME, CREATER, CREATER_USERNAME, DESCRIPTION, PARENT_ID, TYPE, DISPLAYORDER, EXAMPLE, REQUIRED, DATA_TYPE, REF_ID, PROJECT_ID) SELECT '8cd786aa-4a90-11e8-842f-0ed5f89f718b', '文本文件', '2018-04-28 03:05:08.244000000', '1', 'shawn', '文本文件', null, 'system', 6, null, true, 'file', null, null FROM DUAL WHERE NOT EXISTS(SELECT ID FROM EAPI_DATAMODEL WHERE ID = '8cd786aa-4a90-11e8-842f-0ed5f89f718b');
INSERT INTO EAPI_DATAMODEL (ID, NAME, CREATE_TIME, CREATER, CREATER_USERNAME, DESCRIPTION, PARENT_ID, TYPE, DISPLAYORDER, EXAMPLE, REQUIRED, DATA_TYPE, REF_ID, PROJECT_ID) SELECT '8cd782ae-4a90-11e8-842f-0ed5f89f718b', '对象', '2018-04-28 03:05:06.381000000', '1', 'shawn', '对象', null, 'system', 1, null, true, 'object', null, null FROM DUAL WHERE NOT EXISTS(SELECT ID FROM EAPI_DATAMODEL WHERE ID = '8cd782ae-4a90-11e8-842f-0ed5f89f718b');
INSERT INTO EAPI_DATAMODEL (ID, NAME, CREATE_TIME, CREATER, CREATER_USERNAME, DESCRIPTION, PARENT_ID, TYPE, DISPLAYORDER, EXAMPLE, REQUIRED, DATA_TYPE, REF_ID, PROJECT_ID) SELECT '8cd77f34-4a90-11e8-842f-0ed5f89f718b', '布尔', '2018-04-28 03:05:02.117000000', '1', 'shawn', '布尔', null, 'system', 5, null, true, 'boolean', null, null FROM DUAL WHERE NOT EXISTS(SELECT ID FROM EAPI_DATAMODEL WHERE ID = '8cd77f34-4a90-11e8-842f-0ed5f89f718b');


-- SYS_USER
INSERT INTO SYS_USER (ID, CREATE_BY, CREATE_TIME, DELETE_BY, DELETE_TIME, EMAIL, GENDER, PHONE, PORTRAIT_PATH, REAL_NAME, REMARKS, STATUS, UPDATE_BY, UPDATE_TIME) SELECT 1, null, '2018-12-11 06:33:05.182000', null, null, null, null, null, null, 'admin', null, '0', null, null FROM DUAL WHERE NOT EXISTS(SELECT ID FROM SYS_USER WHERE ID = 1);

-- SYS_USER_AUTH
INSERT INTO SYS_USER_AUTH (AUTH_ID, AUTH_PASS, AUTH_TYPE, CREATE_TIME, LAST_LOGIN_TIME, LOGIN_COUNT, PASS_TIME, UPDATE_BY, UPDATE_TIME, USER_ID) SELECT 'admin', '6E34D68185BE0CDDDF8EBDF45B21D960', null, null, null, null, null, null, null, 1 FROM DUAL WHERE NOT EXISTS(SELECT AUTH_ID FROM SYS_USER_AUTH WHERE AUTH_ID = 'admin');