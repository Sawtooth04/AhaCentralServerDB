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

 Date: 03/01/2024 22:57:37
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
INSERT INTO "public"."Chunk" VALUES (7, 8, '-104-674476124-46-39-29116-74-8787119-35108-458772-819-76941111252-78100-26-12-66-96', 524288, 0);
INSERT INTO "public"."Chunk" VALUES (8, 8, '62111102-50-99-56-8378-26-874-105-117-85103-27-37-9123-946310770-5397-65-91-47025-89-6', 460733, 1);
INSERT INTO "public"."Chunk" VALUES (9, 9, '-64-87-45-47-5-143413-121-39-118105481179-48-30-36122-455311114-73-1787-9539-12011653-78', 524288, 0);
INSERT INTO "public"."Chunk" VALUES (10, 9, '-99-1795-89-81950141987-894310-95-6092-1215-1205-68-44-82-41-1596-52-33-10105-92104', 44986, 1);

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
INSERT INTO "public"."ChunkStorageServer" VALUES (3, 7, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (4, 8, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5, 9, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (6, 10, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (7, 9, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (8, 10, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (9, 9, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (10, 10, 2);

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
INSERT INTO "public"."File" VALUES (8, 1, 'photo.png', '/', '2024-01-01 21:51:33.545541', '2024-01-01 21:51:33.545541');
INSERT INTO "public"."File" VALUES (9, 1, 'nashli-shokala.png', '/', '2024-01-02 15:02:34.841281', '2024-01-02 22:40:58.656707');
INSERT INTO "public"."File" VALUES (15, 1, 'test.cpvd', '/', '2024-01-03 22:52:13.55949', '2024-01-03 22:52:13.55949');

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
		"name" varchar(35) UNIQUE NOT NULL
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
-- Function structure for create_user_group_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_user_group_table"();
CREATE OR REPLACE FUNCTION "public"."create_user_group_table"()
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
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."ChunkStorageServer_chunkStorageServerID_seq"
OWNED BY "public"."ChunkStorageServer"."chunkStorageServerID";
SELECT setval('"public"."ChunkStorageServer_chunkStorageServerID_seq"', 71, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Chunk_chunkID_seq"
OWNED BY "public"."Chunk"."chunkID";
SELECT setval('"public"."Chunk_chunkID_seq"', 71, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Customer_customerID_seq"
OWNED BY "public"."Customer"."customerID";
SELECT setval('"public"."Customer_customerID_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."File_fileID_seq"
OWNED BY "public"."File"."fileID";
SELECT setval('"public"."File_fileID_seq"', 16, true);

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
-- Uniques structure for table File
-- ----------------------------
ALTER TABLE "public"."File" ADD CONSTRAINT "File_name_path_key" UNIQUE ("name", "path");

-- ----------------------------
-- Primary Key structure for table File
-- ----------------------------
ALTER TABLE "public"."File" ADD CONSTRAINT "File_pkey" PRIMARY KEY ("fileID");

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
-- Foreign Keys structure for table File
-- ----------------------------
ALTER TABLE "public"."File" ADD CONSTRAINT "File_ownerID_fkey" FOREIGN KEY ("ownerID") REFERENCES "public"."Customer" ("customerID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table StorageServer
-- ----------------------------
ALTER TABLE "public"."StorageServer" ADD CONSTRAINT "StorageServer_storageServerStatusID_fkey" FOREIGN KEY ("storageServerStatusID") REFERENCES "public"."StorageServerStatus" ("storageServerStatusID") ON DELETE CASCADE ON UPDATE CASCADE;
