/*
 Navicat Premium Data Transfer

 Source Server         : PostgreSQL
 Source Server Type    : PostgreSQL
 Source Server Version : 150001
 Source Host           : localhost:5432
 Source Catalog        : aha
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 150001
 File Encoding         : 65001

 Date: 25/01/2024 21:30:39
*/


-- ----------------------------
-- Sequence structure for ChunkStorageServer_chunkStorageServerID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ChunkStorageServer_chunkStorageServerID_seq";
CREATE SEQUENCE "public"."ChunkStorageServer_chunkStorageServerID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for Chunk_chunkID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Chunk_chunkID_seq";
CREATE SEQUENCE "public"."Chunk_chunkID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for CustomerGroup_customerGroupID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."CustomerGroup_customerGroupID_seq";
CREATE SEQUENCE "public"."CustomerGroup_customerGroupID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for Customer_customerID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Customer_customerID_seq";
CREATE SEQUENCE "public"."Customer_customerID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for FileRight_fileRightID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."FileRight_fileRightID_seq";
CREATE SEQUENCE "public"."FileRight_fileRightID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for File_fileID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."File_fileID_seq";
CREATE SEQUENCE "public"."File_fileID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for GroupFileRight_groupFileRightID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."GroupFileRight_groupFileRightID_seq";
CREATE SEQUENCE "public"."GroupFileRight_groupFileRightID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for Group_groupID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Group_groupID_seq";
CREATE SEQUENCE "public"."Group_groupID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for StorageServerStatus_storageServerStatusID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."StorageServerStatus_storageServerStatusID_seq";
CREATE SEQUENCE "public"."StorageServerStatus_storageServerStatusID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for StorageServer_storageServerID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."StorageServer_storageServerID_seq";
CREATE SEQUENCE "public"."StorageServer_storageServerID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for Chunk
-- ----------------------------
DROP TABLE IF EXISTS "public"."Chunk";
CREATE TABLE "public"."Chunk" (
  "chunkID" int4 NOT NULL DEFAULT nextval('"Chunk_chunkID_seq"'::regclass),
  "fileID" int4 NOT NULL,
  "name" varchar(135) COLLATE "pg_catalog"."default" NOT NULL,
  "size" int4 NOT NULL,
  "sequenceNumber" int4 NOT NULL
)
;

-- ----------------------------
-- Records of Chunk
-- ----------------------------
INSERT INTO "public"."Chunk" VALUES (157, 23, '1577-12-18-1661-4187-5893-117-86-1886-64-31-537662123-58-120115106404946-117-78-120-79115', 524288, 0);
INSERT INTO "public"."Chunk" VALUES (158, 23, '118-68828846120-26-86-106-87819-147450-58-11019-6914-66267-5-113-12505597-20-60-8', 524288, 1);
INSERT INTO "public"."Chunk" VALUES (159, 23, '1712688460-38110111-107-79108-75-19426102-1113126-51-993313-4274124-7679-11814-700', 524288, 2);
INSERT INTO "public"."Chunk" VALUES (160, 23, '2949-120-13-25-24-62-10052614019-6923-15-28-44-456880127-41-36-4583495254-10765-73102', 524288, 3);
INSERT INTO "public"."Chunk" VALUES (161, 23, '-276468580-108-60110103-37112-57-7952-9931-29-9-95-100-46-46-43103-48112-1094482-31-8583', 524288, 4);
INSERT INTO "public"."Chunk" VALUES (162, 23, '8-3-9195-8032-86116-62-86127771555-808614-58-913086921-11334932119-5428-81-99', 524288, 5);
INSERT INTO "public"."Chunk" VALUES (163, 23, '32596153-1290-7505017275346-47-511211875-13-10-3934-2885-73-12845-73221442-125', 524288, 6);
INSERT INTO "public"."Chunk" VALUES (164, 23, '-124-54-60-127-65-8533-25-299072115-5769-114-98-123-204812258-3668-3172-115-113168264394', 524288, 7);
INSERT INTO "public"."Chunk" VALUES (165, 23, '-3932-76-57-125-481162473-124-53106-207-1272152-112115-2812710-74-91-7894-100-38-5134-82-74', 524288, 8);
INSERT INTO "public"."Chunk" VALUES (166, 23, '3718-26-44-38-85-65164-16019122-50-15-102-11127780-7554-43-128-9061-593212429-70', 524288, 9);
INSERT INTO "public"."Chunk" VALUES (222, 50, '-2112-72-8-81-46105121-3535-6-98-50-4912475-29249112-233-11346-16114-119-1286124-102-7', 117943, 0);
INSERT INTO "public"."Chunk" VALUES (172, 23, '108-64-99-104311987105-116-66-74107-64-49-21-1191068-61735978-1141168693-6111890-39124', 170560, 10);
INSERT INTO "public"."Chunk" VALUES (211, 39, '98-16-96-66-70-3099286-35-15-7874-3934199424-1175121109-204-13-436-413372-3183', 524288, 0);
INSERT INTO "public"."Chunk" VALUES (214, 43, '-7591-3043-118488455-1511673497-8679-37-145866-93-105-1235548-98-12-497955-69-17', 117943, 0);

-- ----------------------------
-- Table structure for ChunkStorageServer
-- ----------------------------
DROP TABLE IF EXISTS "public"."ChunkStorageServer";
CREATE TABLE "public"."ChunkStorageServer" (
  "chunkStorageServerID" int4 NOT NULL DEFAULT nextval('"ChunkStorageServer_chunkStorageServerID_seq"'::regclass),
  "chunkID" int4 NOT NULL,
  "storageServerID" int4 NOT NULL
)
;

-- ----------------------------
-- Records of ChunkStorageServer
-- ----------------------------
INSERT INTO "public"."ChunkStorageServer" VALUES (306, 214, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (307, 214, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (193, 157, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (194, 157, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (195, 158, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (196, 158, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (197, 159, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (198, 159, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (199, 160, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (200, 160, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (201, 161, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (202, 161, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (203, 162, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (204, 162, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (205, 163, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (206, 163, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (207, 164, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (208, 164, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (209, 165, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (210, 165, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (211, 166, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (212, 166, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (223, 172, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (320, 222, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (321, 222, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (300, 211, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (301, 211, 6);

-- ----------------------------
-- Table structure for Customer
-- ----------------------------
DROP TABLE IF EXISTS "public"."Customer";
CREATE TABLE "public"."Customer" (
  "customerID" int4 NOT NULL DEFAULT nextval('"Customer_customerID_seq"'::regclass),
  "name" varchar(35) COLLATE "pg_catalog"."default" NOT NULL,
  "passwordHash" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of Customer
-- ----------------------------
INSERT INTO "public"."Customer" VALUES (1, 'TestName', '$2a$10$P5UEPm2Ze/GLK1joYXyyoej3w.XF7nJoN3u40npUryPWUqo.jL6Q6');
INSERT INTO "public"."Customer" VALUES (2, 'testtest', '$2a$10$raH0tSJL/Ley/FuOlfJt1eLwo.rmU/rUQ.Xjzq/PABzBYG4FgghJi');

-- ----------------------------
-- Table structure for CustomerGroup
-- ----------------------------
DROP TABLE IF EXISTS "public"."CustomerGroup";
CREATE TABLE "public"."CustomerGroup" (
  "customerGroupID" int4 NOT NULL DEFAULT nextval('"CustomerGroup_customerGroupID_seq"'::regclass),
  "groupID" int4 NOT NULL,
  "customerID" int4 NOT NULL
)
;

-- ----------------------------
-- Records of CustomerGroup
-- ----------------------------
INSERT INTO "public"."CustomerGroup" VALUES (5, 5, 1);
INSERT INTO "public"."CustomerGroup" VALUES (6, 6, 1);

-- ----------------------------
-- Table structure for File
-- ----------------------------
DROP TABLE IF EXISTS "public"."File";
CREATE TABLE "public"."File" (
  "fileID" int4 NOT NULL DEFAULT nextval('"File_fileID_seq"'::regclass),
  "ownerID" int4 NOT NULL,
  "name" varchar(135) COLLATE "pg_catalog"."default" NOT NULL,
  "path" varchar(135) COLLATE "pg_catalog"."default" NOT NULL,
  "uploadDate" timestamp(6) NOT NULL,
  "updateDate" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of File
-- ----------------------------
INSERT INTO "public"."File" VALUES (39, 1, 'nashli-shokala.png', '/', '2024-01-19 23:18:13.573738', '2024-01-19 23:18:13.573738');
INSERT INTO "public"."File" VALUES (43, 1, 'gfhj.png', '/hello', '2024-01-21 12:26:13.389918', '2024-01-21 12:26:13.389918');
INSERT INTO "public"."File" VALUES (42, 1, 'dsfg', '/hello', '2024-01-20 18:02:24.242434', '2024-01-20 18:02:24.242434');
INSERT INTO "public"."File" VALUES (50, 1, 'zalupa.png', '/', '2024-01-23 14:27:40.361947', '2024-01-23 14:27:40.361947');
INSERT INTO "public"."File" VALUES (23, 1, 'test.cpvd', '/', '2024-01-14 18:24:38.519348', '2024-01-14 18:24:38.519348');

-- ----------------------------
-- Table structure for FileRight
-- ----------------------------
DROP TABLE IF EXISTS "public"."FileRight";
CREATE TABLE "public"."FileRight" (
  "fileRightID" int4 NOT NULL DEFAULT nextval('"FileRight_fileRightID_seq"'::regclass),
  "name" varchar(35) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of FileRight
-- ----------------------------
INSERT INTO "public"."FileRight" VALUES (1, 'read');
INSERT INTO "public"."FileRight" VALUES (2, 'write');

-- ----------------------------
-- Table structure for Group
-- ----------------------------
DROP TABLE IF EXISTS "public"."Group";
CREATE TABLE "public"."Group" (
  "groupID" int4 NOT NULL DEFAULT nextval('"Group_groupID_seq"'::regclass),
  "ownerID" int4 NOT NULL,
  "name" varchar(35) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of Group
-- ----------------------------
INSERT INTO "public"."Group" VALUES (5, 1, 'TestGroup');
INSERT INTO "public"."Group" VALUES (6, 1, 'Ababa');

-- ----------------------------
-- Table structure for GroupFileRight
-- ----------------------------
DROP TABLE IF EXISTS "public"."GroupFileRight";
CREATE TABLE "public"."GroupFileRight" (
  "groupFileRightID" int4 NOT NULL DEFAULT nextval('"GroupFileRight_groupFileRightID_seq"'::regclass),
  "fileID" int4 NOT NULL,
  "groupID" int4 NOT NULL,
  "fileRightID" int4 NOT NULL
)
;

-- ----------------------------
-- Records of GroupFileRight
-- ----------------------------
INSERT INTO "public"."GroupFileRight" VALUES (2, 50, 5, 1);
INSERT INTO "public"."GroupFileRight" VALUES (12, 50, 6, 1);

-- ----------------------------
-- Table structure for StorageServer
-- ----------------------------
DROP TABLE IF EXISTS "public"."StorageServer";
CREATE TABLE "public"."StorageServer" (
  "storageServerID" int4 NOT NULL DEFAULT nextval('"StorageServer_storageServerID_seq"'::regclass),
  "name" varchar(35) COLLATE "pg_catalog"."default" NOT NULL,
  "address" varchar(35) COLLATE "pg_catalog"."default" NOT NULL,
  "storageServerStatusID" int4 NOT NULL
)
;

-- ----------------------------
-- Records of StorageServer
-- ----------------------------
INSERT INTO "public"."StorageServer" VALUES (4, 'petr-server', 'http://192.168.1.103:8090', 1);
INSERT INTO "public"."StorageServer" VALUES (2, 'test-server', 'http://127.0.0.1:8090', 1);
INSERT INTO "public"."StorageServer" VALUES (6, 'test-server-1', 'http://127.0.0.1:8091', 2);

-- ----------------------------
-- Table structure for StorageServerStatus
-- ----------------------------
DROP TABLE IF EXISTS "public"."StorageServerStatus";
CREATE TABLE "public"."StorageServerStatus" (
  "storageServerStatusID" int4 NOT NULL DEFAULT nextval('"StorageServerStatus_storageServerStatusID_seq"'::regclass),
  "name" varchar(35) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of StorageServerStatus
-- ----------------------------
INSERT INTO "public"."StorageServerStatus" VALUES (1, 'storage');
INSERT INTO "public"."StorageServerStatus" VALUES (2, 'backup');

-- ----------------------------
-- Function structure for add_chunk_storage_server
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_chunk_storage_server"("chunk_id" int4, "storage_server_id" int4);
CREATE OR REPLACE FUNCTION "public"."add_chunk_storage_server"("chunk_id" int4, "storage_server_id" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN

	INSERT INTO "ChunkStorageServer" ("chunkID", "storageServerID") VALUES ("chunk_id", "storage_server_id");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_customer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_customer"("customer_name" varchar, "customer_password_hash" varchar);
CREATE OR REPLACE FUNCTION "public"."add_customer"("customer_name" varchar, "customer_password_hash" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	INSERT INTO "Customer" ("name", "passwordHash") VALUES ("customer_name", "customer_password_hash");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_customer_group
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_customer_group"("group_id" int4, "customer_id" int4);
CREATE OR REPLACE FUNCTION "public"."add_customer_group"("group_id" int4, "customer_id" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	INSERT INTO "CustomerGroup" ("groupID", "customerID") VALUES ("group_id", "customer_id");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_group
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_group"("customer_id" int4, "name" varchar);
CREATE OR REPLACE FUNCTION "public"."add_group"("customer_id" int4, "name" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$
	DECLARE
		"resultID" INT4;
	
	BEGIN
	
	INSERT INTO "Group" ("ownerID", "name") VALUES ("customer_id", "name") RETURNING "groupID" INTO "resultID";
	PERFORM add_customer_group("resultID", "customer_id");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_group_file_right
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_group_file_right"("file_id" int4, "group_id" int4, "file_right_id" int4);
CREATE OR REPLACE FUNCTION "public"."add_group_file_right"("file_id" int4, "group_id" int4, "file_right_id" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	INSERT INTO "GroupFileRight" ("fileID", "groupID", "fileRightID") VALUES ("file_id", "group_id", "file_right_id");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_storage_server
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_storage_server"("name" varchar, "address" varchar, "status_id" int4);
CREATE OR REPLACE FUNCTION "public"."add_storage_server"("name" varchar, "address" varchar, "status_id" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	INSERT INTO "StorageServer" ("name", "address", "storageServerStatusID") VALUES ("name", "address", "status_id");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_chunk_storage_server_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_chunk_storage_server_table"();
CREATE OR REPLACE FUNCTION "public"."create_chunk_storage_server_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE IF NOT EXISTS "ChunkStorageServer" (
		"chunkStorageServerID" serial PRIMARY KEY,
		"chunkID" int4 NOT NULL,
		"storageServerID" int4 NOT NULL,
		
		FOREIGN KEY ("chunkID") REFERENCES "Chunk" ("chunkID") ON UPDATE CASCADE ON DELETE CASCADE,
		FOREIGN KEY ("storageServerID") REFERENCES "StorageServer" ("storageServerID") ON UPDATE CASCADE ON DELETE CASCADE
	);
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_chunk_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_chunk_table"();
CREATE OR REPLACE FUNCTION "public"."create_chunk_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE IF NOT EXISTS "Chunk" (
		"chunkID" serial PRIMARY KEY,
		"fileID" int4 NOT NULL,
		"name" varchar(135) NOT NULL,
		"size" int4 NOT NULL,
		"sequenceNumber" int4 NOT NULL,
		
		FOREIGN KEY ("fileID") REFERENCES "File" ("fileID") ON UPDATE CASCADE ON DELETE CASCADE
	);
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_customer_group_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_customer_group_table"();
CREATE OR REPLACE FUNCTION "public"."create_customer_group_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE IF NOT EXISTS "CustomerGroup" (
		"customerGroupID" serial PRIMARY KEY,
		"groupID" int4 NOT NULL,
		"customerID" int4 NOT NULL,
		
		FOREIGN KEY ("groupID") REFERENCES "Group" ("groupID") ON UPDATE CASCADE ON DELETE CASCADE,
		FOREIGN KEY ("customerID") REFERENCES "Customer" ("customerID") ON UPDATE CASCADE ON DELETE CASCADE
	);
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_customer_role_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_customer_role_table"();
CREATE OR REPLACE FUNCTION "public"."create_customer_role_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE IF NOT EXISTS "CustomerRole" (
		"customerRoleID" serial PRIMARY KEY,
		"customerID" int4 NOT NULL,
		"roleID" int4 NOT NULL,
	
		FOREIGN KEY ("сustomerID") REFERENCES "Customer" ("customerID") ON UPDATE CASCADE ON DELETE CASCADE,
		FOREIGN KEY ("roleID") REFERENCES "Role" ("roleID") ON UPDATE CASCADE ON DELETE CASCADE
	);
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_customer_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_customer_table"();
CREATE OR REPLACE FUNCTION "public"."create_customer_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE IF NOT EXISTS "Customer" (
		"customerID" serial PRIMARY KEY,
		"name" varchar(35) UNIQUE NOT NULL,
		"passwordHash" varchar(255) NOT NULL
	);
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_file_right_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_file_right_table"();
CREATE OR REPLACE FUNCTION "public"."create_file_right_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE IF NOT EXISTS "FileRight" (
		"fileRightID" serial PRIMARY KEY,
		"name" varchar(35) UNIQUE NOT NULL
	);
	
	INSERT INTO "FileRight" ("name") VALUES ('read');
	INSERT INTO "FileRight" ("name") VALUES ('write');
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_file_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_file_table"();
CREATE OR REPLACE FUNCTION "public"."create_file_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE IF NOT EXISTS "File" (
		"fileID" serial PRIMARY KEY,
		"ownerID" int4 NOT NULL,
		"name" varchar(135) NOT NULL,
		"path" varchar(135) NOT NULL,
		"uploadDate" timestamp NOT NULL,
		"updateDate" timestamp NOT NULL,
		
		FOREIGN KEY ("ownerID") REFERENCES "Customer" ("customerID") ON UPDATE CASCADE ON DELETE CASCADE,
		UNIQUE ("name", "path")
	);
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_group_file_right_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_group_file_right_table"();
CREATE OR REPLACE FUNCTION "public"."create_group_file_right_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE IF NOT EXISTS "GroupFileRight" (
		"groupFileRightID" serial PRIMARY KEY,
		"fileID" int4 NOT NULL,
		"groupID" int4 NOT NULL,
		"fileRightID" int4 NOT NULL,
		
		FOREIGN KEY ("fileID") REFERENCES "File" ("fileID") ON UPDATE CASCADE ON DELETE CASCADE,
		FOREIGN KEY ("groupID") REFERENCES "Group" ("groupID") ON UPDATE CASCADE ON DELETE CASCADE,
		FOREIGN KEY ("fileRightID") REFERENCES "FileRight" ("fileRightID") ON UPDATE CASCADE ON DELETE CASCADE
	);
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_group_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_group_table"();
CREATE OR REPLACE FUNCTION "public"."create_group_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE IF NOT EXISTS "Group" (
		"groupID" serial PRIMARY KEY,
		"ownerID" int4 NOT NULL,
		"name" varchar(35) UNIQUE NOT NULL,
		
		FOREIGN KEY ("ownerID") REFERENCES "Customer" ("customerID") ON UPDATE CASCADE ON DELETE CASCADE
	);
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_role_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_role_table"();
CREATE OR REPLACE FUNCTION "public"."create_role_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE IF NOT EXISTS "Role" (
		"roleID" serial PRIMARY KEY,
		"name" varchar(35) UNIQUE NOT NULL
	);
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_storage_server_status_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_storage_server_status_table"();
CREATE OR REPLACE FUNCTION "public"."create_storage_server_status_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE IF NOT EXISTS "StorageServerStatus" (
		"storageServerStatusID" serial PRIMARY KEY,
		"name" varchar(35) UNIQUE NOT NULL
	);
	
	INSERT INTO "StorageServerStatus" ("name") VALUES ('storage');
	INSERT INTO "StorageServerStatus" ("name") VALUES ('backup');
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_storage_server_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_storage_server_table"();
CREATE OR REPLACE FUNCTION "public"."create_storage_server_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE IF NOT EXISTS "StorageServer" (
		"storageServerID" serial PRIMARY KEY,
		"name" varchar(35) UNIQUE NOT NULL,
		"address" varchar(35) UNIQUE NOT NULL,
		"storageServerStatusID" int4 NOT NULL,
		
		FOREIGN KEY ("storageServerStatusID") REFERENCES "StorageServerStatus" ("storageServerStatusID") ON UPDATE CASCADE ON DELETE CASCADE
	);
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for delete_chunk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_chunk"("chunk_id" int4);
CREATE OR REPLACE FUNCTION "public"."delete_chunk"("chunk_id" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	DELETE FROM "Chunk" WHERE "chunkID" = "chunk_id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for delete_file
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_file"("file_id" int4);
CREATE OR REPLACE FUNCTION "public"."delete_file"("file_id" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	DELETE FROM "File" WHERE "fileID" = "file_id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for delete_group
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_group"("group_id" int4);
CREATE OR REPLACE FUNCTION "public"."delete_group"("group_id" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	DELETE FROM "Group" WHERE "groupID" = "group_id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for delete_group_file_right
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_group_file_right"("file_id" int4, "group_id" int4, "file_right_id" int4);
CREATE OR REPLACE FUNCTION "public"."delete_group_file_right"("file_id" int4, "group_id" int4, "file_right_id" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	DELETE FROM "GroupFileRight" WHERE "fileID" = "file_id" AND "groupID" = "group_id" AND "fileRightID" = "file_right_id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_backup_servers
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_backup_servers"();
CREATE OR REPLACE FUNCTION "public"."get_backup_servers"()
  RETURNS SETOF "public"."StorageServer" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "StorageServer" WHERE "storageServerStatusID" IN
		(SELECT "storageServerStatusID" FROM "StorageServerStatus" WHERE "name" = 'backup');
		
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_backup_servers_count
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_backup_servers_count"();
CREATE OR REPLACE FUNCTION "public"."get_backup_servers_count"()
  RETURNS "pg_catalog"."int4" AS $BODY$BEGIN

	RETURN (SELECT COUNT(*) FROM "StorageServer" WHERE "storageServerStatusID" =
		(SELECT "storageServerStatusID" FROM "StorageServerStatus" WHERE "name" = 'backup'));
		
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_chunk_by_name
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_chunk_by_name"("chunk_name" varchar);
CREATE OR REPLACE FUNCTION "public"."get_chunk_by_name"("chunk_name" varchar)
  RETURNS SETOF "public"."Chunk" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "Chunk" WHERE "name" = "chunk_name";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_chunk_storage_server
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_chunk_storage_server"("chunk_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_chunk_storage_server"("chunk_id" int4)
  RETURNS SETOF "public"."ChunkStorageServer" AS $BODY$BEGIN

	RETURN QUERY (SELECT * FROM "ChunkStorageServer" WHERE "chunkID" = "chunk_id");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_chunks_count
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_chunks_count"();
CREATE OR REPLACE FUNCTION "public"."get_chunks_count"()
  RETURNS "pg_catalog"."int4" AS $BODY$BEGIN

	RETURN (SELECT COUNT(*) FROM "Chunk");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_chunks_of_storage_server
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_chunks_of_storage_server"("storage_server_id" int4, "start" int4, "count" int4);
CREATE OR REPLACE FUNCTION "public"."get_chunks_of_storage_server"("storage_server_id" int4, "start" int4, "count" int4)
  RETURNS SETOF "public"."Chunk" AS $BODY$BEGIN

	RETURN QUERY SELECT c."chunkID", c."fileID", c."name", c."size", c."sequenceNumber" FROM "ChunkStorageServer" AS css
		LEFT JOIN "Chunk" AS c ON c."chunkID" = css."chunkID"
		WHERE css."storageServerID" = "storage_server_id"
		ORDER BY c."chunkID" OFFSET "start" LIMIT "count";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_customer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_customer"("customer_name" varchar);
CREATE OR REPLACE FUNCTION "public"."get_customer"("customer_name" varchar)
  RETURNS SETOF "public"."Customer" AS $BODY$BEGIN

	RETURN QUERY (SELECT * FROM "Customer" WHERE "name" = "customer_name");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_customer_group_count
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_customer_group_count"("group_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_customer_group_count"("group_id" int4)
  RETURNS "pg_catalog"."int8" AS $BODY$BEGIN

	RETURN (SELECT COUNT(*) FROM "CustomerGroup" WHERE "groupID" = "group_id");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_customers_count
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_customers_count"();
CREATE OR REPLACE FUNCTION "public"."get_customers_count"()
  RETURNS "pg_catalog"."int4" AS $BODY$BEGIN

	RETURN (SELECT COUNT(*) FROM "Customer");
		
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_directories
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_directories"("directory" varchar);
CREATE OR REPLACE FUNCTION "public"."get_directories"("directory" varchar)
  RETURNS TABLE("name" text) AS $BODY$BEGIN
	
	IF "directory" = '/' THEN
		RETURN QUERY SELECT regexp_replace(substring(f."path", 2), '/.*', '') AS "directory_name"
			FROM "File" AS f WHERE f."path" != "directory" AND f."path" ~* ('^(' || directory || '[^\/]+)')
			GROUP BY "directory_name";
	ELSE
		RETURN QUERY SELECT regexp_replace(f."path", '/.*/', '') AS "directory_name"
			FROM "File" AS f WHERE f."path" != "directory" AND f."path" ~* ('^(' || directory || '/)[^/]+$')
			GROUP BY "directory_name";
	END IF;
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_file
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_file"("file_path" varchar, "file_name" varchar);
CREATE OR REPLACE FUNCTION "public"."get_file"("file_path" varchar, "file_name" varchar)
  RETURNS SETOF "public"."File" AS $BODY$BEGIN

	RETURN QUERY (SELECT * FROM "File" WHERE "path" = "file_path" AND "name" = "file_name");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_file_chunks
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_file_chunks"("file_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_file_chunks"("file_id" int4)
  RETURNS SETOF "public"."Chunk" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "Chunk" WHERE "fileID" = "file_id" ORDER BY "sequenceNumber" ASC;
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_file_extension
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_file_extension"("file_name" varchar);
CREATE OR REPLACE FUNCTION "public"."get_file_extension"("file_name" varchar)
  RETURNS "pg_catalog"."varchar" AS $BODY$BEGIN

	RETURN (regexp_replace("file_name", '[^\.]*', ''));
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_file_right
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_file_right"("right_name" varchar);
CREATE OR REPLACE FUNCTION "public"."get_file_right"("right_name" varchar)
  RETURNS SETOF "public"."FileRight" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "FileRight" WHERE "name" = "right_name";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_file_rights
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_file_rights"();
CREATE OR REPLACE FUNCTION "public"."get_file_rights"()
  RETURNS SETOF "public"."FileRight" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "FileRight";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_file_size
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_file_size"("file_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_file_size"("file_id" int4)
  RETURNS "pg_catalog"."int8" AS $BODY$BEGIN
	
	IF EXISTS (SELECT * FROM "Chunk" WHERE "fileID" = "file_id") THEN
		RETURN (SELECT SUM(size) FROM "Chunk"
			WHERE "fileID" = "file_id"
			GROUP BY "fileID");
	ELSE
		RETURN 0;
	END IF;
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_files
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_files"("directory" varchar);
CREATE OR REPLACE FUNCTION "public"."get_files"("directory" varchar)
  RETURNS TABLE("name" varchar, "size" int8, "extension" varchar, "uploadDate" timestamp, "updateDate" timestamp) AS $BODY$BEGIN
	
	RETURN QUERY SELECT f."name", get_file_size(f."fileID"), get_file_extension(f."name"), f."uploadDate", f."updateDate" 
		FROM "File" AS f WHERE f."path" = "directory";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_group
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_group"("group_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_group"("group_id" int4)
  RETURNS TABLE("groupID" int4, "name" varchar, "customersCount" int8, "ownerName" varchar) AS $BODY$BEGIN

	RETURN QUERY SELECT g."groupID", g."name", get_customer_group_count(g."groupID"), c."name" FROM "Group" AS g
		LEFT JOIN "CustomerGroup" AS gg ON gg."groupID" = g."groupID"
		LEFT JOIN "Customer" AS c ON c."customerID" = gg."customerID"
		WHERE g."groupID" = "group_id";
		
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_group_file_right
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_group_file_right"("file_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_group_file_right"("file_id" int4)
  RETURNS SETOF "public"."GroupFileRight" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "GroupFileRight" WHERE "fileID" = "file_id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_group_file_rights_of_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_group_file_rights_of_owner"("customer_id" int4, "file_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_group_file_rights_of_owner"("customer_id" int4, "file_id" int4)
  RETURNS SETOF "public"."GroupFileRight" AS $BODY$BEGIN

	RETURN QUERY SELECT gfr."groupFileRightID", gfr."fileID", gfr."groupID", gfr."fileRightID" FROM "GroupFileRight" AS gfr
		LEFT JOIN "Group" AS g ON g."groupID" = gfr."groupID"
		WHERE g."ownerID" = "customer_id" AND gfr."fileID" = "file_id";

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_groups
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_groups"("customer_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_groups"("customer_id" int4)
  RETURNS TABLE("groupID" int4, "name" varchar, "customersCount" int8, "ownerName" varchar) AS $BODY$BEGIN

	RETURN QUERY SELECT g."groupID", g."name", get_customer_group_count(g."groupID"), c."name" FROM "Group" AS g
		LEFT JOIN "CustomerGroup" AS gg ON gg."groupID" = g."groupID"
		LEFT JOIN "Customer" AS c ON c."customerID" = gg."customerID"
		WHERE g."ownerID" = "customer_id" OR gg."customerID" = "customer_id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_own_groups
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_own_groups"("customer_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_own_groups"("customer_id" int4)
  RETURNS TABLE("groupID" int4, "name" varchar, "customersCount" int8, "ownerName" varchar) AS $BODY$BEGIN

	RETURN QUERY SELECT g."groupID", g."name", get_customer_group_count(g."groupID"), c."name" FROM "Group" AS g
		LEFT JOIN "CustomerGroup" AS gg ON gg."groupID" = g."groupID"
		LEFT JOIN "Customer" AS c ON c."customerID" = gg."customerID"
		WHERE g."ownerID" = "customer_id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_storage_server
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_storage_server"("server_address" varchar);
CREATE OR REPLACE FUNCTION "public"."get_storage_server"("server_address" varchar)
  RETURNS SETOF "public"."StorageServer" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "StorageServer" WHERE "address" LIKE '%://' || "server_address";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_storage_server_by_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_storage_server_by_id"("storage_server_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_storage_server_by_id"("storage_server_id" int4)
  RETURNS SETOF "public"."StorageServer" AS $BODY$BEGIN
	
	RETURN QUERY SELECT * FROM "StorageServer" WHERE "storageServerID" = "storage_server_id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_storage_server_status
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_storage_server_status"("status_name" varchar);
CREATE OR REPLACE FUNCTION "public"."get_storage_server_status"("status_name" varchar)
  RETURNS SETOF "public"."StorageServerStatus" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "StorageServerStatus" WHERE "name" = "status_name";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_storage_servers
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_storage_servers"();
CREATE OR REPLACE FUNCTION "public"."get_storage_servers"()
  RETURNS SETOF "public"."StorageServer" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "StorageServer" WHERE "storageServerStatusID" IN
		(SELECT "storageServerStatusID" FROM "StorageServerStatus" WHERE "name" = 'storage');
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_storage_servers_by_chunk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_storage_servers_by_chunk"("chunk_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_storage_servers_by_chunk"("chunk_id" int4)
  RETURNS SETOF "public"."StorageServer" AS $BODY$BEGIN

	RETURN QUERY (
		SELECT ss."storageServerID", ss."name", ss."address", ss."storageServerStatusID" FROM "ChunkStorageServer" AS css
			LEFT JOIN "StorageServer" AS ss ON ss."storageServerID" = css."storageServerID"
			WHERE css."chunkID" = "chunk_id"
	);
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_storage_servers_count
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_storage_servers_count"();
CREATE OR REPLACE FUNCTION "public"."get_storage_servers_count"()
  RETURNS "pg_catalog"."int4" AS $BODY$BEGIN

	RETURN (SELECT COUNT(*) FROM "StorageServer" WHERE "storageServerStatusID" =
		(SELECT "storageServerStatusID" FROM "StorageServerStatus" WHERE "name" = 'storage'));
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_customer_have_file_right
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_customer_have_file_right"("customer_id" int4, "file_id" int4, "right" varchar);
CREATE OR REPLACE FUNCTION "public"."is_customer_have_file_right"("customer_id" int4, "file_id" int4, "right" varchar)
  RETURNS "pg_catalog"."bool" AS $BODY$DECLARE
	"file_right_id" int4 := (SELECT "fileRightID" FROM get_file_right("right"));
	
	BEGIN
	RETURN EXISTS (SELECT gfr."groupFileRightID" FROM "CustomerGroup" AS cg
		LEFT JOIN "GroupFileRight" AS gfr ON gfr."groupID" = cg."groupID" AND gfr."fileID" = "file_id"
		WHERE cg."customerID" = "customer_id" AND "fileRightID" = "file_right_id"
	);
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_customer_name_free
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_customer_name_free"("customer_name" varchar);
CREATE OR REPLACE FUNCTION "public"."is_customer_name_free"("customer_name" varchar)
  RETURNS "pg_catalog"."bool" AS $BODY$BEGIN

	RETURN NOT EXISTS (SELECT * FROM "Customer" WHERE "name" = "customer_name");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_file_exists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_file_exists"("file_name" varchar, "file_path" varchar);
CREATE OR REPLACE FUNCTION "public"."is_file_exists"("file_name" varchar, "file_path" varchar)
  RETURNS "pg_catalog"."bool" AS $BODY$BEGIN

	RETURN (EXISTS (SELECT * FROM "File" WHERE "name" = "file_name" AND "path" = "file_path"));
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_file_have_group_rights
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_file_have_group_rights"("file_id" int4);
CREATE OR REPLACE FUNCTION "public"."is_file_have_group_rights"("file_id" int4)
  RETURNS "pg_catalog"."bool" AS $BODY$BEGIN

	RETURN EXISTS (SELECT * FROM "GroupFileRight" WHERE "fileID" = "file_id");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for put_chunk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."put_chunk"("chunk_file_id" int4, "chunk_name" varchar, "chunk_size" int4, "chunk_sequence_number" int4);
CREATE OR REPLACE FUNCTION "public"."put_chunk"("chunk_file_id" int4, "chunk_name" varchar, "chunk_size" int4, "chunk_sequence_number" int4)
  RETURNS "pg_catalog"."int4" AS $BODY$
	DECLARE
		"resultID" int4;
	
	BEGIN
	
	IF EXISTS (SELECT * FROM "Chunk" WHERE "fileID" = "chunk_file_id" AND "sequenceNumber" = "chunk_sequence_number") THEN
		UPDATE "Chunk" SET "size" = "chunk_size", "name" = "chunk_name" WHERE "fileID" = "chunk_file_id" AND "sequenceNumber" = "chunk_sequence_number" RETURNING "chunkID" INTO "resultID";
	ELSE
		INSERT INTO "Chunk" ("fileID", "name", "size", "sequenceNumber")
			VALUES ("chunk_file_id", "chunk_name", "chunk_size", chunk_sequence_number) RETURNING "chunkID" INTO "resultID";
	END IF;
	
	RETURN "resultID";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for put_file
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."put_file"("file_owner" int4, "file_name" varchar, "file_path" varchar);
CREATE OR REPLACE FUNCTION "public"."put_file"("file_owner" int4, "file_name" varchar, "file_path" varchar)
  RETURNS "pg_catalog"."int4" AS $BODY$
	DECLARE
		"resultID" INT4;
	
	BEGIN

	IF EXISTS (SELECT * FROM "File" WHERE "name" = "file_name" AND "path" = "file_path") THEN
		UPDATE "File" SET "updateDate" = now() WHERE "name" = "file_name" AND "path" = "file_path" RETURNING "fileID" INTO "resultID";
	ELSE
		INSERT INTO "File" ("ownerID", "name", "path", "uploadDate", "updateDate")
			VALUES ("file_owner", "file_name", "file_path", now(), now()) RETURNING "fileID" INTO "resultID";
	END IF;
	
	RETURN "resultID";
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_file_updated_timestamp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_file_updated_timestamp"("file_id" int4);
CREATE OR REPLACE FUNCTION "public"."set_file_updated_timestamp"("file_id" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	UPDATE "File" SET "updateDate" = now() WHERE "fileID" = "file_id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for update_file
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."update_file"("file_id" int4, "file_name" varchar, "file_path" varchar);
CREATE OR REPLACE FUNCTION "public"."update_file"("file_id" int4, "file_name" varchar, "file_path" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	UPDATE "File" SET "name" = "file_name", "path" = "file_path" WHERE "fileID" = "file_id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for update_group
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."update_group"("group_id" int4, "group_name" varchar);
CREATE OR REPLACE FUNCTION "public"."update_group"("group_id" int4, "group_name" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	UPDATE "Group" SET "name" = "group_name" WHERE "groupID" = "group_id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."ChunkStorageServer_chunkStorageServerID_seq"
OWNED BY "public"."ChunkStorageServer"."chunkStorageServerID";
SELECT setval('"public"."ChunkStorageServer_chunkStorageServerID_seq"', 322, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Chunk_chunkID_seq"
OWNED BY "public"."Chunk"."chunkID";
SELECT setval('"public"."Chunk_chunkID_seq"', 223, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."CustomerGroup_customerGroupID_seq"
OWNED BY "public"."CustomerGroup"."customerGroupID";
SELECT setval('"public"."CustomerGroup_customerGroupID_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Customer_customerID_seq"
OWNED BY "public"."Customer"."customerID";
SELECT setval('"public"."Customer_customerID_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."FileRight_fileRightID_seq"
OWNED BY "public"."FileRight"."fileRightID";
SELECT setval('"public"."FileRight_fileRightID_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."File_fileID_seq"
OWNED BY "public"."File"."fileID";
SELECT setval('"public"."File_fileID_seq"', 51, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."GroupFileRight_groupFileRightID_seq"
OWNED BY "public"."GroupFileRight"."groupFileRightID";
SELECT setval('"public"."GroupFileRight_groupFileRightID_seq"', 13, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Group_groupID_seq"
OWNED BY "public"."Group"."groupID";
SELECT setval('"public"."Group_groupID_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."StorageServerStatus_storageServerStatusID_seq"
OWNED BY "public"."StorageServerStatus"."storageServerStatusID";
SELECT setval('"public"."StorageServerStatus_storageServerStatusID_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."StorageServer_storageServerID_seq"
OWNED BY "public"."StorageServer"."storageServerID";
SELECT setval('"public"."StorageServer_storageServerID_seq"', 7, true);

-- ----------------------------
-- Primary Key structure for table Chunk
-- ----------------------------
ALTER TABLE "public"."Chunk" ADD CONSTRAINT "Chunk_pkey" PRIMARY KEY ("chunkID");

-- ----------------------------
-- Primary Key structure for table ChunkStorageServer
-- ----------------------------
ALTER TABLE "public"."ChunkStorageServer" ADD CONSTRAINT "ChunkStorageServer_pkey" PRIMARY KEY ("chunkStorageServerID");

-- ----------------------------
-- Uniques structure for table Customer
-- ----------------------------
ALTER TABLE "public"."Customer" ADD CONSTRAINT "Customer_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table Customer
-- ----------------------------
ALTER TABLE "public"."Customer" ADD CONSTRAINT "Customer_pkey" PRIMARY KEY ("customerID");

-- ----------------------------
-- Primary Key structure for table CustomerGroup
-- ----------------------------
ALTER TABLE "public"."CustomerGroup" ADD CONSTRAINT "CustomerGroup_pkey" PRIMARY KEY ("customerGroupID");

-- ----------------------------
-- Uniques structure for table File
-- ----------------------------
ALTER TABLE "public"."File" ADD CONSTRAINT "File_name_path_key" UNIQUE ("name", "path");

-- ----------------------------
-- Primary Key structure for table File
-- ----------------------------
ALTER TABLE "public"."File" ADD CONSTRAINT "File_pkey" PRIMARY KEY ("fileID");

-- ----------------------------
-- Uniques structure for table FileRight
-- ----------------------------
ALTER TABLE "public"."FileRight" ADD CONSTRAINT "FileRight_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table FileRight
-- ----------------------------
ALTER TABLE "public"."FileRight" ADD CONSTRAINT "FileRight_pkey" PRIMARY KEY ("fileRightID");

-- ----------------------------
-- Uniques structure for table Group
-- ----------------------------
ALTER TABLE "public"."Group" ADD CONSTRAINT "Group_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table Group
-- ----------------------------
ALTER TABLE "public"."Group" ADD CONSTRAINT "Group_pkey" PRIMARY KEY ("groupID");

-- ----------------------------
-- Primary Key structure for table GroupFileRight
-- ----------------------------
ALTER TABLE "public"."GroupFileRight" ADD CONSTRAINT "GroupFileRight_pkey" PRIMARY KEY ("groupFileRightID");

-- ----------------------------
-- Uniques structure for table StorageServer
-- ----------------------------
ALTER TABLE "public"."StorageServer" ADD CONSTRAINT "StorageServer_name_key" UNIQUE ("name");
ALTER TABLE "public"."StorageServer" ADD CONSTRAINT "StorageServer_address_key" UNIQUE ("address");

-- ----------------------------
-- Primary Key structure for table StorageServer
-- ----------------------------
ALTER TABLE "public"."StorageServer" ADD CONSTRAINT "StorageServer_pkey" PRIMARY KEY ("storageServerID");

-- ----------------------------
-- Uniques structure for table StorageServerStatus
-- ----------------------------
ALTER TABLE "public"."StorageServerStatus" ADD CONSTRAINT "StorageServerStatus_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table StorageServerStatus
-- ----------------------------
ALTER TABLE "public"."StorageServerStatus" ADD CONSTRAINT "StorageServerStatus_pkey" PRIMARY KEY ("storageServerStatusID");

-- ----------------------------
-- Foreign Keys structure for table Chunk
-- ----------------------------
ALTER TABLE "public"."Chunk" ADD CONSTRAINT "Chunk_fileID_fkey" FOREIGN KEY ("fileID") REFERENCES "public"."File" ("fileID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table ChunkStorageServer
-- ----------------------------
ALTER TABLE "public"."ChunkStorageServer" ADD CONSTRAINT "ChunkStorageServer_chunkID_fkey" FOREIGN KEY ("chunkID") REFERENCES "public"."Chunk" ("chunkID") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."ChunkStorageServer" ADD CONSTRAINT "ChunkStorageServer_storageServerID_fkey" FOREIGN KEY ("storageServerID") REFERENCES "public"."StorageServer" ("storageServerID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table CustomerGroup
-- ----------------------------
ALTER TABLE "public"."CustomerGroup" ADD CONSTRAINT "CustomerGroup_customerID_fkey" FOREIGN KEY ("customerID") REFERENCES "public"."Customer" ("customerID") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."CustomerGroup" ADD CONSTRAINT "CustomerGroup_groupID_fkey" FOREIGN KEY ("groupID") REFERENCES "public"."Group" ("groupID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table File
-- ----------------------------
ALTER TABLE "public"."File" ADD CONSTRAINT "File_ownerID_fkey" FOREIGN KEY ("ownerID") REFERENCES "public"."Customer" ("customerID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table Group
-- ----------------------------
ALTER TABLE "public"."Group" ADD CONSTRAINT "Group_ownerID_fkey" FOREIGN KEY ("ownerID") REFERENCES "public"."Customer" ("customerID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table GroupFileRight
-- ----------------------------
ALTER TABLE "public"."GroupFileRight" ADD CONSTRAINT "GroupFileRight_fileID_fkey" FOREIGN KEY ("fileID") REFERENCES "public"."File" ("fileID") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."GroupFileRight" ADD CONSTRAINT "GroupFileRight_fileRightID_fkey" FOREIGN KEY ("fileRightID") REFERENCES "public"."FileRight" ("fileRightID") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."GroupFileRight" ADD CONSTRAINT "GroupFileRight_groupID_fkey" FOREIGN KEY ("groupID") REFERENCES "public"."Group" ("groupID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table StorageServer
-- ----------------------------
ALTER TABLE "public"."StorageServer" ADD CONSTRAINT "StorageServer_storageServerStatusID_fkey" FOREIGN KEY ("storageServerStatusID") REFERENCES "public"."StorageServerStatus" ("storageServerStatusID") ON DELETE CASCADE ON UPDATE CASCADE;
