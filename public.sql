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

 Date: 28/12/2023 22:28:20
*/


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
INSERT INTO "public"."StorageServer" VALUES (2, 'test-server', 'http://localhost:8090', 1);

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
-- Function structure for add_storage_server
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_storage_server"("name" varchar, "address" varchar, "status_id" int4);
CREATE OR REPLACE FUNCTION "public"."add_storage_server"("name" varchar, "address" varchar, "status_id" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	INSERT INTO "StorageServer" ("name", "address", "storageServerStatusID") VALUES("name", "address", "status_id");
	
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
		"chunkStorageServerID" SERIAL PRIMARY KEY,
		"chunkID" INT4 NOT NULL,
		"storageServerID" INT4 NOT NULL,
		
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
		"chunkID" SERIAL PRIMARY KEY,
		"fileID" INT4 NOT NULL,
		"sequenceNumber" INT4 NOT NULL,
		
		FOREIGN KEY ("fileID") REFERENCES "File" ("fileID") ON UPDATE CASCADE ON DELETE CASCADE
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
		"customerRoleID" SERIAL PRIMARY KEY,
		"customerID" INT4 NOT NULL,
		"roleID" INT4 NOT NULL,
	
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
		"customerID" SERIAL PRIMARY KEY,
		"name" VARCHAR(35) UNIQUE NOT NULL,
		"passwordHash" VARCHAR(255) NOT NULL
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
		"fileRightID" SERIAL PRIMARY KEY,
		"name" VARCHAR(35) UNIQUE NOT NULL
	);
	
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
		"fileID" SERIAL PRIMARY KEY,
		"ownerID" INT4 NOT NULL,
		"path" VARCHAR(135) UNIQUE NOT NULL,
		"uploadDate" TIMASTAMP NOT NULL,
		"updateDate" TIMASTAMP NOT NULL,
		
		FOREIGN KEY ("ownerID") REFERENCES "Customer" ("customerID") ON UPDATE CASCADE ON DELETE CASCADE
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
		"groupFileRightID" SERIAL PRIMARY KEY,
		"fileID" INT4 NOT NULL,
		"groupID" INT4 NOT NULL,
		"fileRightID" INT4 NOT NULL,
		
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
		"groupID" SERIAL PRIMARY KEY,
		"name" VARCHAR(35) UNIQUE NOT NULL
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
		"roleID" SERIAL PRIMARY KEY,
		"name" VARCHAR(35) UNIQUE NOT NULL
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
		"storageServerStatusID" SERIAL PRIMARY KEY,
		"name" VARCHAR(35) UNIQUE NOT NULL
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
		"storageServerID" SERIAL PRIMARY KEY,
		"name" VARCHAR(35) UNIQUE NOT NULL,
		"address" VARCHAR(35) UNIQUE NOT NULL,
		"storageServerStatusID" INT4 NOT NULL,
		
		FOREIGN KEY ("storageServerStatusID") REFERENCES "StorageServerStatus" ("storageServerStatusID") ON UPDATE CASCADE ON DELETE CASCADE
	);
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_user_group_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_user_group_table"();
CREATE OR REPLACE FUNCTION "public"."create_user_group_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE IF NOT EXISTS "CustomerGroup" (
		"customerGroupID" SERIAL PRIMARY KEY,
		"groupID" INT4 NOT NULL,
		"customerID" INT4 NOT NULL,
		
		FOREIGN KEY ("groupID") REFERENCES "Group" ("groupID") ON UPDATE CASCADE ON DELETE CASCADE,
		FOREIGN KEY ("customerID") REFERENCES "Customer" ("customerID") ON UPDATE CASCADE ON DELETE CASCADE
	);
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

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

	RETURN QUERY (SELECT * FROM "StorageServer");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

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
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Customer_customerID_seq"
OWNED BY "public"."Customer"."customerID";
SELECT setval('"public"."Customer_customerID_seq"', 2, true);

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
SELECT setval('"public"."StorageServer_storageServerID_seq"', 3, true);

-- ----------------------------
-- Uniques structure for table Customer
-- ----------------------------
ALTER TABLE "public"."Customer" ADD CONSTRAINT "Customer_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table Customer
-- ----------------------------
ALTER TABLE "public"."Customer" ADD CONSTRAINT "Customer_pkey" PRIMARY KEY ("customerID");

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
-- Foreign Keys structure for table StorageServer
-- ----------------------------
ALTER TABLE "public"."StorageServer" ADD CONSTRAINT "StorageServer_storageServerStatusID_fkey" FOREIGN KEY ("storageServerStatusID") REFERENCES "public"."StorageServerStatus" ("storageServerStatusID") ON DELETE CASCADE ON UPDATE CASCADE;
