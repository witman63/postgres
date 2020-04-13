/*
 Navicat Premium Data Transfer

 Source Server         : pro-logger
 Source Server Type    : PostgreSQL
 Source Server Version : 80413
 Source Host           : localhost
 Source Database       : rinis_beheer
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 80413
 File Encoding         : utf-8

 Date: 01/27/2016 11:46:34 AM
*/

-- ----------------------------
--  Table structure for soort
-- ----------------------------
DROP TABLE IF EXISTS "public"."soort";
CREATE TABLE "public"."soort" (
	"soort" text NOT NULL,
	"soort_bericht" text,
	"omschrijving" text,
	"vo" bool
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."soort" OWNER TO "dias";

COMMENT ON COLUMN "public"."soort"."vo" IS 'false : leverancier is verzender, true : aanvrager is verzender';

-- ----------------------------
--  Records of soort
-- ----------------------------
BEGIN;
INSERT INTO "public"."soort" VALUES ('1', 'Aanvraagbericht', 'Hiermee kan een aanvragende sector aan een leverende sector om gegevens vragen', 't');
INSERT INTO "public"."soort" VALUES ('2', 'Leveringsbericht', 'Hiermee kan de leverende sector aan de aanvragende sector de gewenste gegevens leveren', 'f');
INSERT INTO "public"."soort" VALUES ('3', 'Aanzetten afname indicator', 'Hiermee plaatst een aanvragende sector een abonnement, waardoor een bepaald type mutatie van gegevens automatisch wordt gemeld aan de aanvragende sector', 't');
INSERT INTO "public"."soort" VALUES ('4', 'Uitzetten afname indicator', 'Hiermee heft een aanvragende sector een eerder geplaatst abonnement op bij de leverende sector', 't');
INSERT INTO "public"."soort" VALUES ('5', 'Service bericht', 'Hiermee meldt een leverende sector het resultaat van het verzoek tot plaatsing van een abonnement', 'f');
INSERT INTO "public"."soort" VALUES ('6', 'Spontane melding', 'Hiermee kan een leverende sector, de mutatie van de gegevens leveren aan een aanvragende sector, die daarvoor een abonnement heeft geplaatst', 'f');
INSERT INTO "public"."soort" VALUES ('7', 'Ontvangstbevestiging', 'Hiermee kan een ontvangende sector, de ontvangst van de gegevens melden aan een leverende sector (functionele ontvangstbevestiging)', 't');
INSERT INTO "public"."soort" VALUES ('8', 'Contrl bericht (EDIFACT)', 'Hiermee kan een ontvangende sector, de ontvangst van de gegevens melden aan een leverende sector (functionele ontvangstbevestiging)', 't');
INSERT INTO "public"."soort" VALUES ('9', 'Interchange (EDIFACT)', 'Dit is een interchange, een file met meerdere technische berichten (zowel in EDIFACT als het equivalent in fixed record layout)', 't');
INSERT INTO "public"."soort" VALUES ('10', 'Interchange (data)', 'Dit is een interchange, een file met meerdere technische berichten (zowel in EDIFACT als het equivalent in fixed record layout), die berichten bevat (data berichten)', 'f');
INSERT INTO "public"."soort" VALUES ('11', 'Interchange (contrl)', 'Dit is een interchange, een file met meerdere technische berichten (zowel in EDIFACT als het equivalent in fixed record layout), die functionele ontvangstbevestigingen bevat (CONTRL-berichten)', 'f');
INSERT INTO "public"."soort" VALUES ('12', 'Terugkoppeling', 'Hiermee kan een ontvangende sector informatie m.b.t. de verwerking van de (middels een spontane melding ontvangen) gegevens terugmelden aan een leverende sector.', 't');
COMMIT;

-- ----------------------------
--  Primary key structure for table soort
-- ----------------------------
ALTER TABLE "public"."soort" ADD PRIMARY KEY ("soort");

