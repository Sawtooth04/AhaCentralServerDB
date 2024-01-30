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

 Date: 30/01/2024 22:36:31
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
INSERT INTO "public"."Chunk" VALUES (2379, 84, '-72-16-90-115-24127-151232775-810-928-2257-109-103221186-44-6243-23-1776-11-98-523-42', 85926, 0);
INSERT INTO "public"."Chunk" VALUES (2380, 85, '-2112-72-8-81-46105121-3535-6-98-50-4912475-29249112-233-11346-16114-119-1286124-102-7', 117943, 0);
INSERT INTO "public"."Chunk" VALUES (2381, 86, '56-17112-82-316579-6115103-6099-3569-9492115515106-33125-19-68-75-710-11844-1166247', 524288, 0);
INSERT INTO "public"."Chunk" VALUES (2382, 86, '76-1072534-1325-6094-97773477-5-8353-36105-7522117118-121-87-12336801463-41-4-124107', 524288, 1);
INSERT INTO "public"."Chunk" VALUES (2383, 86, '-78-34592452-2567-18409972-35118-9938-62712184549011266-90124-1-86-51102-63-74-100', 524288, 2);
INSERT INTO "public"."Chunk" VALUES (2384, 86, '-108-113118-71-1174640-7799-62347-4010758113-4046-4077384450-26-106-905275-87-82-11842', 524288, 3);
INSERT INTO "public"."Chunk" VALUES (2385, 86, '-588442-5372-1008384-27-407018106-68852610-44-161027012430-126-63-9533-7027-64-3989', 524288, 4);
INSERT INTO "public"."Chunk" VALUES (2386, 86, '11548-50-417-114-45-1522107-51112-836-72-117-71101226114-628-40-99-12249-5926-88-64', 524288, 5);
INSERT INTO "public"."Chunk" VALUES (2387, 86, '-33-9115-1511710380-8121-10-50-53-106121-41-5844-39125928-23108-3170436085090-18', 524288, 6);
INSERT INTO "public"."Chunk" VALUES (2388, 86, '111-43-749291-65-41-10468932-1011710734-4512044-129410411611876-4364118-59118-79-124-113', 524288, 7);
INSERT INTO "public"."Chunk" VALUES (2389, 86, '-41-701-11933962845-6246242606316-100-42711106-21-93-293241-7922-7418-12-4324', 524288, 8);
INSERT INTO "public"."Chunk" VALUES (2390, 86, '452123-37113-78556649-111-124127-62-92-7-34-126586595782184-115-74-56-108-1208030-31', 524288, 9);
INSERT INTO "public"."Chunk" VALUES (2391, 86, '126-5375-1015999103-10212102965549-62100-8698-57-50-90-7992-59-3-616231-121-27-110-96-88', 524288, 10);
INSERT INTO "public"."Chunk" VALUES (2392, 86, '108-11579-7116-7011-121-99109-905248-23-805757-108443752-34-49-71106-2112710-29107-87-25', 524288, 11);
INSERT INTO "public"."Chunk" VALUES (2393, 86, '-81-121-54-190-8917-105-9993-49-29-35-72-5812421-6222-121-6-10488-111421048546-82-50126-22', 524288, 12);
INSERT INTO "public"."Chunk" VALUES (2394, 86, '49-106-69-1584-99-56-75-51112-12131-19-6-116-452439-6941-63-76-101-57-432496-107-117-78-34-44', 524288, 13);
INSERT INTO "public"."Chunk" VALUES (2395, 86, '6-1021222102-17123-9-6653119-5-951196210493-83-128-46-85585-1157011311581118-12-54-18', 524288, 14);
INSERT INTO "public"."Chunk" VALUES (2396, 86, '-7979108-783172-63-3233-86-116-44-27-1027829-16-11110611741-750-60-47-20-4516011411937', 524288, 15);
INSERT INTO "public"."Chunk" VALUES (2397, 86, '2451-88-49-85-9548-19-809537-43-57-120-100-86-93-12326-114-34118-9110133-110-477146-123480', 524288, 16);
INSERT INTO "public"."Chunk" VALUES (2398, 86, '-5230-91-65-2879-57-124678980-9-57-4151-29-110-75-405892-4487-29-53107-70-1642101-112-26', 524288, 17);
INSERT INTO "public"."Chunk" VALUES (2399, 86, '-94-45-65-771415-72-86-76-119-344156298783815-645-82-112-1171310984-105-162-8089-75', 524288, 18);
INSERT INTO "public"."Chunk" VALUES (2400, 86, '626119-68-1272148-6459-127-86-10960-41574149-87813640-20-8911-571884-107-338-98-57', 524288, 19);
INSERT INTO "public"."Chunk" VALUES (2401, 86, '23-10212999047118865612-4579210281-128113-5-68-96-69-2622-1-9752-582850-16-12', 524288, 20);
INSERT INTO "public"."Chunk" VALUES (2402, 86, '69-48-135510445-21596722-1036510272-60-124-1232714-1143-3474-77-441264613-126-16123126', 524288, 21);
INSERT INTO "public"."Chunk" VALUES (2403, 86, '-24-87127-102865-121106-10011-79-86-91-23-11099-543955-66-12-6-126-12749109102694716449', 524288, 22);
INSERT INTO "public"."Chunk" VALUES (2404, 86, '-31-7579-102-352114-90-64615111682113-48-6887-97103-7470115-13-11169-84-47-71-5993-613', 524288, 23);
INSERT INTO "public"."Chunk" VALUES (2405, 86, '34-10541-30-11284-5929-52-123-68125914-47-5041-8-11624-93-1243652-330-73-46-44103-54-5', 524288, 24);
INSERT INTO "public"."Chunk" VALUES (2406, 86, '-66-610815121-49-85-1-184169-279948-132-11219123-5428-118-54-21-31-92-52-809458-13-111', 524288, 25);
INSERT INTO "public"."Chunk" VALUES (2407, 86, '6331-67212-10225621-66-99-827-53-13-12060-104108-103-128694341223626-2158543110', 524288, 26);
INSERT INTO "public"."Chunk" VALUES (2408, 86, '-6-412662411897-93-113-59-36-74-11856101-998903515-10210266119-4299864690-42-716', 524288, 27);
INSERT INTO "public"."Chunk" VALUES (2409, 86, '-80-53-99-335514110-124-9012263188-81-20-11612410184709085-98-126104-1181325-64107-91-92', 524288, 28);
INSERT INTO "public"."Chunk" VALUES (2410, 86, '-72-31-10337-5963119117-9726-7968206567-22-99-40-23120-12-2643-10611160-729917823615', 524288, 29);
INSERT INTO "public"."Chunk" VALUES (2411, 86, '-124-8106-306065907610037-111117124126117-68114-6311892281344-983544159467205', 524288, 30);
INSERT INTO "public"."Chunk" VALUES (2412, 86, '3114292-43124-46-74932182-2849-86-59-1348-110341794102-1170-67116596-35-128-7469', 524288, 31);
INSERT INTO "public"."Chunk" VALUES (2413, 86, '129-72-13-105-36-90-66-37-3164-207057-42666-3-711610062-66-27-9210711111511-275685', 524288, 32);
INSERT INTO "public"."Chunk" VALUES (2414, 86, '23988536-1884-10711146-8-29-9076-4-16-106-45-914463-61011092823-126-82-10643-56-93-56', 524288, 33);
INSERT INTO "public"."Chunk" VALUES (2415, 86, '3811412455-51-254333-6-112-9394471656-5950-63-88-479789-109-8437777167-12-9152', 524288, 34);
INSERT INTO "public"."Chunk" VALUES (2416, 86, '10-73704496-10018-111-10938-2676-1171067197-82-878105-38-19-73-43-733571-62-72-123-2221', 524288, 35);
INSERT INTO "public"."Chunk" VALUES (2417, 86, '1153855212-94-42-85-96-89-16-95-20-222902254376698-39582-3682-52-37-24-125-8840', 524288, 36);
INSERT INTO "public"."Chunk" VALUES (2418, 86, '-95-40-72-76-126108-6120-71-12175-308147-389442-107-36126-5866804-124-60709-7812520-4', 524288, 37);
INSERT INTO "public"."Chunk" VALUES (2419, 86, '69098-103-89-116-8041-8672-115-1028418-96732385279-122-100-11-117-109-61-1061311639-51-102', 524288, 38);
INSERT INTO "public"."Chunk" VALUES (2420, 86, '-201211197575-74-11446-108117-70-127104-47-7148109-77-9022-54-6110970-10838365328-4511785', 524288, 39);
INSERT INTO "public"."Chunk" VALUES (2378, 83, '-319268-415-68-107652171-47-2965-34-60-671314-10-8959529496-3128-7847-121104-2953', 67614, 0);
INSERT INTO "public"."Chunk" VALUES (2421, 86, '-6497118-66-2410279-90-94123-108-11811233-7352216-52-476851-252105-751275631-92-5-67', 524288, 40);
INSERT INTO "public"."Chunk" VALUES (2422, 86, '-10422-11796-120-119125108104-489105-2286-8779-1128179-67-113-75-1171214160113-17-976138-14', 524288, 41);
INSERT INTO "public"."Chunk" VALUES (2423, 86, '2188-373535-86-11-415-94126-312252-8875108-122-14948843-6694-125-24-61-48-721815-63', 524288, 42);
INSERT INTO "public"."Chunk" VALUES (2424, 86, '-1140-10955-101-12541105511101107845-124122-1195-94-58-113-34-402586-86-11475-12-6-71-9060', 524288, 43);
INSERT INTO "public"."Chunk" VALUES (2425, 86, '-122-102-23-24-3974-93-9989611396124-1284516760-77-114-83-3172-87-1268-91245548-10174', 524288, 44);
INSERT INTO "public"."Chunk" VALUES (2426, 86, '-12633741459019-113-4914-123-778237-5173-9333-31109-77-64-85221868531172395-10388', 524288, 45);
INSERT INTO "public"."Chunk" VALUES (2427, 86, '-44-91118441209877-8120-40-6958-11456911161034256-167790-123-8840-64799697-10977-105', 524288, 46);
INSERT INTO "public"."Chunk" VALUES (2428, 86, '-32-88393858-10351-43-28-7-119-61-62253-9442-7246-46112-563-63-10-35114-63-536-39', 524288, 47);
INSERT INTO "public"."Chunk" VALUES (2429, 86, '356361-115-625-38-781-95107-8-1766-45109-80143472-81-102-45-66107-67-27-71-70-36-65-61', 524288, 48);
INSERT INTO "public"."Chunk" VALUES (2430, 86, '32116-1262591-63-32-109375-106126-82-111-10-463792728-40968-75-304156-3616-5934-46', 524288, 49);
INSERT INTO "public"."Chunk" VALUES (2431, 86, '49-100674195-89-4981-252785-72-41-8640-10985-125-69-97255142-114-6-61-31-89-87-1-1186', 524288, 50);
INSERT INTO "public"."Chunk" VALUES (2432, 86, '-81115-29-11933111-72-11215316-121188511072-106-22-102-93-3043-531125614-12890591-10-105', 524288, 51);
INSERT INTO "public"."Chunk" VALUES (2433, 86, '762679-10971120115-1249-1-96-8568-522395120116-11950-10436-95-924-95121-10475-76-618', 524288, 52);
INSERT INTO "public"."Chunk" VALUES (2434, 86, '-1140-10371-4598-49-73-118-7613-57-105633-488512187253109-7910943964449165-33', 524288, 53);
INSERT INTO "public"."Chunk" VALUES (2435, 86, '393448-554538-1458-3884-45125121105-124106-12-62082-86-61108132538-79-5463-11950-127', 524288, 54);
INSERT INTO "public"."Chunk" VALUES (2436, 86, '62-2512467115-12425-479686291761416-25-97-71-818431118-40-28-1061-8639-209784-78', 524288, 55);
INSERT INTO "public"."Chunk" VALUES (2437, 86, '-14-1185749-119-12650-4198-11111436983132046-120-5525-16-107-33-8630-1134360-107-21-94-2', 524288, 56);
INSERT INTO "public"."Chunk" VALUES (2438, 86, '-115-87104-52116114113124-31-329749-11840-116-30-54-6293-122-2559106-7926916562-62-5423-81', 524288, 57);
INSERT INTO "public"."Chunk" VALUES (2439, 86, '-65-114-1062193866225-115-41-1201950113-5764651-82103-106-89-11679-3611064-846275-99', 524288, 58);
INSERT INTO "public"."Chunk" VALUES (2440, 86, '112115-54116-17-12112791-92-811711-118-53-7536-89-71-3496-97-26109127112-8844-100100-3758114', 524288, 59);
INSERT INTO "public"."Chunk" VALUES (2441, 86, '-87-14-82-542525-831148432-40-7032106266724-103-2677-97-6728-107-112-81-127-56-993664-100', 524288, 60);
INSERT INTO "public"."Chunk" VALUES (2442, 86, '125109-89-4661-11043-70-4857-72-120-3622-2-124-59-58-6791-410880-124-10047108-945751-22', 524288, 61);
INSERT INTO "public"."Chunk" VALUES (2443, 86, '-2690-56123-105-11765-1013612741120-166690115-19-950-30-122-112-9797124-12-1163788-86991', 524288, 62);
INSERT INTO "public"."Chunk" VALUES (2444, 86, '40-46-24-5184-27-6510-38-64-20-12417-12539-3338-16-114-12377-11689-5019-112622115-661314', 524288, 63);
INSERT INTO "public"."Chunk" VALUES (2445, 86, '6495-43889148-1172611-338545391586791389-1260-16112769-30126-311-31-57-33-48', 524288, 64);
INSERT INTO "public"."Chunk" VALUES (2446, 86, '-883173-10481-3580-93-1638353-67-112-121-41116-128-30-103-67916698-12-94-972163-3022117', 524288, 65);
INSERT INTO "public"."Chunk" VALUES (2447, 86, '9-11272-1181271117-60-15-18-62-73-73-111-105-55-124-60-461348-61-1239927-1993110-41997164', 524288, 66);
INSERT INTO "public"."Chunk" VALUES (2448, 86, '-84112-12523-128-79-107117-463765597-79-2-10887110-375110-27791329281276274-38-12678', 524288, 67);
INSERT INTO "public"."Chunk" VALUES (2449, 86, '21107-554512113-114-1211151-87124-117-31-101-66124-49-112-743-111-89-30-33-49-85112604712119', 524288, 68);
INSERT INTO "public"."Chunk" VALUES (2450, 86, '-10611911952-625-8269-6111-33-951191221297-881032-83-6625-45712252-37-105-262410860', 524288, 69);
INSERT INTO "public"."Chunk" VALUES (2451, 86, '6880105-102-71103-1194-7-12860-28-121616060115-24-83111-6350-1880-44-931066610626-158', 524288, 70);
INSERT INTO "public"."Chunk" VALUES (2452, 86, '83-3-9-83-1073814-642271-1970-182061-577114-48-12891-21-103-8171-99-9839124-8725', 524288, 71);
INSERT INTO "public"."Chunk" VALUES (2453, 86, '1079756-122-92-16971272778859-174145-19-17-19109-34-5411622-337-123-2871-841137059', 524288, 72);
INSERT INTO "public"."Chunk" VALUES (2454, 86, '31-33831-48-118-2069-28-54551231101828-124-2733-35712440-7242-14-114-7411-7851455', 524288, 73);
INSERT INTO "public"."Chunk" VALUES (2455, 86, '-42-95-127-591743-12887-67-606663-37-42-4821118-85-486-47879108-40-21103-250-14103', 524288, 74);
INSERT INTO "public"."Chunk" VALUES (2456, 86, '45-11166126-49100-113-97-58-3378-62-60-12289-126-20-261105682-564841105258-114-24-12459-108', 524288, 75);
INSERT INTO "public"."Chunk" VALUES (2457, 86, '-101-115-20-676912669105681123-96-32109-97-54-681812-20119-68-23-16-16466218-32-80-2666', 524288, 76);
INSERT INTO "public"."Chunk" VALUES (2458, 86, '79-43-8883-76-10617-86906035-136-122-277329-481-5110462399116-2196141445-8869', 524288, 77);
INSERT INTO "public"."Chunk" VALUES (2459, 86, '28100-60-35127-6581-243957-77-70-6-10624124-654317-7669-9693126-39-102108-22-108-80-3687', 524288, 78);
INSERT INTO "public"."Chunk" VALUES (2460, 86, '67-789876-7091998272126118-3227-101-14-16-116-40078-461191165438-123-3838-87-11-20-104', 524288, 79);
INSERT INTO "public"."Chunk" VALUES (2461, 86, '2562-8112-36-122102-106-110-27-11-12731599-62-45-4-20111-69-60-3842-8-37125100111-107-8721', 524288, 80);
INSERT INTO "public"."Chunk" VALUES (2462, 86, '109-27-62431241865118115-105-4877-95-6751-2281229059-63-79-5171-75101-52-2620-461973', 524288, 81);
INSERT INTO "public"."Chunk" VALUES (2463, 86, '-99113-122-4387-123-77331512020-114-60-820-482-4122-53-469112-282661-31-18-109103-94-93', 524288, 82);
INSERT INTO "public"."Chunk" VALUES (2464, 86, '-92-15681021310235-836-128-1133-7660-70108-21-43-2211161856-8934-90-298012062-104-1', 524288, 83);
INSERT INTO "public"."Chunk" VALUES (2465, 86, '1071247340-3156-58-10413-99122-21074-11-28-14-5464-8945-93-45631084899-84-9-70-59-100', 524288, 84);
INSERT INTO "public"."Chunk" VALUES (2466, 86, '6027510871-111197817-44115-8577-1051098210821-52-1179594-85-123-52-16507649-22-2520', 524288, 85);
INSERT INTO "public"."Chunk" VALUES (2467, 86, '-124-6536219457692-16-1141026584-1091782146-71121-948347125-128-95-27-97-1251145119', 524288, 86);
INSERT INTO "public"."Chunk" VALUES (2468, 86, '-33-81-86121-60127914746-68-948896-9166-7484107-6427-9110114-37-72-753-76-104-7434', 524288, 87);
INSERT INTO "public"."Chunk" VALUES (2469, 86, '-529644-6522-41-6730105-91-84176443-8592-100-10719-11365-79103-54-34-106-242-30-83109-116', 524288, 88);
INSERT INTO "public"."Chunk" VALUES (2470, 86, '-94-63-113-37-1292-29-542731111-65120-9710110358211712-5-18-1728-51-1-115-77127-6151-106', 524288, 89);
INSERT INTO "public"."Chunk" VALUES (2471, 86, '-44-76-111-627430-3496483-3547-12692-55-12770-87-8100-22-6810295-10235-101-72-103-27-75', 524288, 90);
INSERT INTO "public"."Chunk" VALUES (2472, 86, '13-51-58-9518-104-78111-42-51-632411595-1011096348-120125119-10237355-28-119118666-79-43', 524288, 91);
INSERT INTO "public"."Chunk" VALUES (2473, 86, '1166119-80-371046231117-6323104112-1049558-6534-87106-91-125-44-85-10821-7810-4435899', 524288, 92);
INSERT INTO "public"."Chunk" VALUES (2474, 86, '87457-106-33197561-59-84-7-61-8593-693922-23258075122-9296-109-359313-10567-116-45', 524288, 93);
INSERT INTO "public"."Chunk" VALUES (2475, 86, '-71-118-31-8759-26-103-11-24-161008616-374392109106-777127106-88114-25-90-68-91-80114-38-66', 524288, 94);
INSERT INTO "public"."Chunk" VALUES (2476, 86, '2272-10098-64785546-9-13-127-6812019-965642100-117-5-94-29-741109-937-12049728499', 524288, 95);
INSERT INTO "public"."Chunk" VALUES (2477, 86, '-4-11710655-95-117-34110-11639-238217-46-48-480-30-68-10570-42-58-751757-4974-31-97-23-87', 524288, 96);
INSERT INTO "public"."Chunk" VALUES (2478, 86, '90-501006810512-75-1658769290899981-109593-1532-68-106-494783-106124-11341-41-34-113', 524288, 97);
INSERT INTO "public"."Chunk" VALUES (2479, 86, '78-5556996327-1036-40-561022099-122113-309966-88109138615-42-12-19-5280-1958-68', 524288, 98);
INSERT INTO "public"."Chunk" VALUES (2480, 86, '90105-49-934623-109-1487-9919-60-8812511613-8-86-657582-25108-70101113-11712412410497-7', 524288, 99);
INSERT INTO "public"."Chunk" VALUES (2481, 86, '72-801262754-93107-75-31-10-9463-50-1059046-2261661841119-28-55-38-43-122-7963-4242-31', 524288, 100);
INSERT INTO "public"."Chunk" VALUES (2482, 86, '4047-508598-102-89-12-1210530-1247357-100-88-115-67-34791092-14-6671676-128-111-4360126', 45736, 101);

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
INSERT INTO "public"."ChunkStorageServer" VALUES (5170, 2379, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5171, 2379, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5172, 2380, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5173, 2380, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5174, 2381, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5175, 2381, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5176, 2382, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5177, 2382, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5178, 2383, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5179, 2383, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5180, 2384, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5181, 2384, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5182, 2385, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5183, 2385, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5184, 2386, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5185, 2386, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5186, 2387, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5187, 2387, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5188, 2388, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5189, 2388, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5190, 2389, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5191, 2389, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5192, 2390, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5193, 2390, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5194, 2391, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5195, 2391, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5196, 2392, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5197, 2392, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5198, 2393, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5199, 2393, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5200, 2394, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5201, 2394, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5202, 2395, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5203, 2395, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5204, 2396, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5205, 2396, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5206, 2397, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5168, 2378, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5169, 2378, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5207, 2397, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5208, 2398, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5209, 2398, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5210, 2399, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5211, 2399, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5212, 2400, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5213, 2400, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5214, 2401, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5215, 2401, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5216, 2402, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5217, 2402, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5218, 2403, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5219, 2403, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5220, 2404, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5221, 2404, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5222, 2405, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5223, 2405, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5224, 2406, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5225, 2406, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5226, 2407, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5227, 2407, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5228, 2408, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5229, 2408, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5230, 2409, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5231, 2409, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5232, 2410, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5233, 2410, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5234, 2411, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5235, 2411, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5236, 2412, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5237, 2412, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5238, 2413, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5239, 2413, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5240, 2414, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5241, 2414, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5242, 2415, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5243, 2415, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5244, 2416, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5245, 2416, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5246, 2417, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5247, 2417, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5248, 2418, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5249, 2418, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5250, 2419, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5251, 2419, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5252, 2420, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5253, 2420, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5254, 2421, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5255, 2421, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5256, 2422, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5257, 2422, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5258, 2423, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5259, 2423, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5260, 2424, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5261, 2424, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5262, 2425, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5263, 2425, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5264, 2426, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5265, 2426, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5266, 2427, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5267, 2427, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5268, 2428, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5269, 2428, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5270, 2429, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5271, 2429, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5272, 2430, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5273, 2430, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5274, 2431, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5275, 2431, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5276, 2432, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5277, 2432, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5278, 2433, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5279, 2433, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5280, 2434, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5281, 2434, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5282, 2435, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5283, 2435, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5284, 2436, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5285, 2436, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5286, 2437, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5287, 2437, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5288, 2438, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5289, 2438, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5290, 2439, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5291, 2439, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5292, 2440, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5293, 2440, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5294, 2441, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5295, 2441, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5296, 2442, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5297, 2442, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5298, 2443, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5299, 2443, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5300, 2444, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5301, 2444, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5302, 2445, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5303, 2445, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5304, 2446, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5305, 2446, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5306, 2447, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5307, 2447, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5308, 2448, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5309, 2448, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5310, 2449, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5311, 2449, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5312, 2450, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5313, 2450, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5314, 2451, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5315, 2451, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5316, 2452, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5317, 2452, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5318, 2453, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5319, 2453, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5320, 2454, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5321, 2454, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5322, 2455, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5323, 2455, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5324, 2456, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5325, 2456, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5326, 2457, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5327, 2457, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5328, 2458, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5329, 2458, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5330, 2459, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5331, 2459, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5332, 2460, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5333, 2460, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5334, 2461, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5335, 2461, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5336, 2462, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5337, 2462, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5338, 2463, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5339, 2463, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5340, 2464, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5341, 2464, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5342, 2465, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5343, 2465, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5344, 2466, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5345, 2466, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5346, 2467, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5347, 2467, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5348, 2468, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5349, 2468, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5350, 2469, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5351, 2469, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5352, 2470, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5353, 2470, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5354, 2471, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5355, 2471, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5356, 2472, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5357, 2472, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5358, 2473, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5359, 2473, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5360, 2474, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5361, 2474, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5362, 2475, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5363, 2475, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5364, 2476, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5365, 2476, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5366, 2477, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5367, 2477, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5368, 2478, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5369, 2478, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5370, 2479, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5371, 2479, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5372, 2480, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5373, 2480, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5374, 2481, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5375, 2481, 6);
INSERT INTO "public"."ChunkStorageServer" VALUES (5376, 2482, 2);
INSERT INTO "public"."ChunkStorageServer" VALUES (5377, 2482, 6);

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
INSERT INTO "public"."File" VALUES (84, 2, 'microsoft-office-2016-2019-pro-plus-2023_01-repack.torrent', '/', '2024-01-30 16:05:22.86371', '2024-01-30 16:05:22.86371');
INSERT INTO "public"."File" VALUES (86, 2, 'Git-2.39.1-64-bit.exe', '/', '2024-01-30 16:15:18.383137', '2024-01-30 16:15:18.383137');

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
-- Function structure for get_customers_info
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_customers_info"("customer_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_customers_info"("customer_id" int4)
  RETURNS TABLE("name" varchar, "files_count" int8, "chunks_count" int8, "groups_count" int8) AS $BODY$BEGIN

	RETURN QUERY SELECT c."name", get_customer_files_count("customer_id"), get_customer_chunks_count("customer_id"), get_customer_group_count("customer_id") FROM "Customer" AS c
		WHERE c."customerID" = "customer_id"
		GROUP BY c."name";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

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
SELECT setval('"public"."Customer_customerID_seq"', 6, true);

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
