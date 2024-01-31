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

 Date: 31/01/2024 21:37:03
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
-- Sequence structure for CustomerRole_customerRoleID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."CustomerRole_customerRoleID_seq";
CREATE SEQUENCE "public"."CustomerRole_customerRoleID_seq" 
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
-- Sequence structure for Role_roleID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Role_roleID_seq";
CREATE SEQUENCE "public"."Role_roleID_seq" 
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
INSERT INTO "public"."Chunk" VALUES (2380, 85, '-2112-72-8-81-46105121-3535-6-98-50-4912475-29249112-233-11346-16114-119-1286124-102-7', 117943, 0);
INSERT INTO "public"."Chunk" VALUES (2378, 83, '-319268-415-68-107652171-47-2965-34-60-671314-10-8959529496-3128-7847-121104-2953', 67614, 0);

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
INSERT INTO "public"."ChunkStorageServer" VALUES (5172, 2380, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5173, 2380, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5168, 2378, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5169, 2378, 6);

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
INSERT INTO "public"."Customer" VALUES (6, 'testaccount', '$2a$10$Xq8qoWjgWJ6cmRek6S8pmef8RA2yqBCh.cvonppnsZIArsok8pcqS');

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
-- Table structure for CustomerRole
-- ----------------------------
DROP TABLE IF EXISTS "public"."CustomerRole";
CREATE TABLE "public"."CustomerRole" (
  "customerRoleID" int4 NOT NULL DEFAULT nextval('"CustomerRole_customerRoleID_seq"'::regclass),
  "customerID" int4 NOT NULL,
  "roleID" int4 NOT NULL
)
;

-- ----------------------------
-- Records of CustomerRole
-- ----------------------------
INSERT INTO "public"."CustomerRole" VALUES (1, 1, 1);

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
INSERT INTO "public"."File" VALUES (83, 1, '[Torrent-Soft.Net]_Adobe Acrobat Pro 2023.003.20244 RePack by KpoJIuK.torrent', '/', '2024-01-30 16:01:15.207818', '2024-01-30 16:01:15.207818');
INSERT INTO "public"."File" VALUES (85, 1, 'wallpaperflare.com_wallpaper.jpg', '/', '2024-01-30 16:07:46.450385', '2024-01-30 16:07:46.450385');

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

-- ----------------------------
-- Table structure for Role
-- ----------------------------
DROP TABLE IF EXISTS "public"."Role";
CREATE TABLE "public"."Role" (
  "roleID" int4 NOT NULL DEFAULT nextval('"Role_roleID_seq"'::regclass),
  "name" varchar(35) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of Role
-- ----------------------------
INSERT INTO "public"."Role" VALUES (1, 'admin');

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
	
		FOREIGN KEY ("customerID") REFERENCES "Customer" ("customerID") ON UPDATE CASCADE ON DELETE CASCADE,
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
	
	INSERT INTO "Role" ("name") VALUES ('admin');
	
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
-- Function structure for delete_customer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_customer"("customer_name" varchar);
CREATE OR REPLACE FUNCTION "public"."delete_customer"("customer_name" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	DELETE FROM "Customer" WHERE "name" = "customer_name";
	
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
-- Function structure for delete_storage_server
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_storage_server"("storage_server_id" int4);
CREATE OR REPLACE FUNCTION "public"."delete_storage_server"("storage_server_id" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	DELETE FROM "StorageServer" WHERE "storageServerID" = "storage_server_id";
	
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
-- Function structure for get_customer_chunks_count
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_customer_chunks_count"("customer_id" int8);
CREATE OR REPLACE FUNCTION "public"."get_customer_chunks_count"("customer_id" int8)
  RETURNS "pg_catalog"."int8" AS $BODY$BEGIN

	RETURN (SELECT COUNT(c."chunkID") FROM "File" AS f
		LEFT JOIN "Chunk" AS c ON c."fileID" = f."fileID"
		WHERE "ownerID" = "customer_id");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_customer_files_count
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_customer_files_count"("customer_id" int8);
CREATE OR REPLACE FUNCTION "public"."get_customer_files_count"("customer_id" int8)
  RETURNS "pg_catalog"."int8" AS $BODY$BEGIN

	RETURN (SELECT COUNT(*) FROM "File" WHERE "ownerID" = "customer_id");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

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
-- Function structure for get_customer_infos
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_customer_infos"();
CREATE OR REPLACE FUNCTION "public"."get_customer_infos"()
  RETURNS TABLE("name" varchar, "filesCount" int8, "chunksCount" int8, "groupsCount" int8) AS $BODY$BEGIN

	RETURN QUERY SELECT c."name", get_customer_files_count(c."customerID"), get_customer_chunks_count(c."customerID"), get_customer_group_count(c."customerID") FROM "Customer" AS c
		GROUP BY c."name", c."customerID";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

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
-- Function structure for get_storage_server_statuses
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_storage_server_statuses"();
CREATE OR REPLACE FUNCTION "public"."get_storage_server_statuses"()
  RETURNS SETOF "public"."StorageServerStatus" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "StorageServerStatus";
	
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
-- Function structure for is_customer_have_role
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_customer_have_role"("customer_id" int4, "role" varchar);
CREATE OR REPLACE FUNCTION "public"."is_customer_have_role"("customer_id" int4, "role" varchar)
  RETURNS "pg_catalog"."bool" AS $BODY$BEGIN

	RETURN EXISTS (SELECT * FROM "CustomerRole" AS cr
		LEFT JOIN "Role" AS r ON r."roleID" = cr."roleID"
		WHERE "customerID" = "customer_id" AND r."name" = "role");
	
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
-- Function structure for update_customer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."update_customer"("customer_id" int4, "customer_name" varchar, "customer_password" varchar);
CREATE OR REPLACE FUNCTION "public"."update_customer"("customer_id" int4, "customer_name" varchar, "customer_password" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	UPDATE "Customer" SET "name" = "customer_name", "passwordHash" = "customer_password" WHERE "customerID" = "customer_id";
	
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
SELECT setval('"public"."ChunkStorageServer_chunkStorageServerID_seq"', 5378, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Chunk_chunkID_seq"
OWNED BY "public"."Chunk"."chunkID";
SELECT setval('"public"."Chunk_chunkID_seq"', 2483, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."CustomerGroup_customerGroupID_seq"
OWNED BY "public"."CustomerGroup"."customerGroupID";
SELECT setval('"public"."CustomerGroup_customerGroupID_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."CustomerRole_customerRoleID_seq"
OWNED BY "public"."CustomerRole"."customerRoleID";
SELECT setval('"public"."CustomerRole_customerRoleID_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Customer_customerID_seq"
OWNED BY "public"."Customer"."customerID";
SELECT setval('"public"."Customer_customerID_seq"', 7, true);

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
SELECT setval('"public"."File_fileID_seq"', 87, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."GroupFileRight_groupFileRightID_seq"
OWNED BY "public"."GroupFileRight"."groupFileRightID";
SELECT setval('"public"."GroupFileRight_groupFileRightID_seq"', 15, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Group_groupID_seq"
OWNED BY "public"."Group"."groupID";
SELECT setval('"public"."Group_groupID_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Role_roleID_seq"
OWNED BY "public"."Role"."roleID";
SELECT setval('"public"."Role_roleID_seq"', 2, true);

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
SELECT setval('"public"."StorageServer_storageServerID_seq"', 13, true);

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
-- Primary Key structure for table CustomerRole
-- ----------------------------
ALTER TABLE "public"."CustomerRole" ADD CONSTRAINT "CustomerRole_pkey" PRIMARY KEY ("customerRoleID");

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
-- Uniques structure for table Role
-- ----------------------------
ALTER TABLE "public"."Role" ADD CONSTRAINT "Role_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table Role
-- ----------------------------
ALTER TABLE "public"."Role" ADD CONSTRAINT "Role_pkey" PRIMARY KEY ("roleID");

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
-- Foreign Keys structure for table CustomerRole
-- ----------------------------
ALTER TABLE "public"."CustomerRole" ADD CONSTRAINT "CustomerRole_customerID_fkey" FOREIGN KEY ("customerID") REFERENCES "public"."Customer" ("customerID") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."CustomerRole" ADD CONSTRAINT "CustomerRole_roleID_fkey" FOREIGN KEY ("roleID") REFERENCES "public"."Role" ("roleID") ON DELETE CASCADE ON UPDATE CASCADE;

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
