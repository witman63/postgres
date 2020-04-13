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

 Date: 01/27/2016 11:45:59 AM
*/

-- ----------------------------
--  Table structure for bericht_namen
-- ----------------------------
DROP TABLE IF EXISTS "public"."bericht_namen";
CREATE TABLE "public"."bericht_namen" (
	"bericht_type" text NOT NULL,
	"functie_versie" text NOT NULL,
	"naam_bericht" text,
	"soort" text
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."bericht_namen" OWNER TO "dias";

-- ----------------------------
--  Records of bericht_namen
-- ----------------------------
BEGIN;
INSERT INTO "public"."bericht_namen" VALUES ('951', '002', 'Service bericht RINIS', '5');
INSERT INTO "public"."bericht_namen" VALUES ('901', '002', 'Aanzetten afname indicator', '3');
INSERT INTO "public"."bericht_namen" VALUES ('902', '002', 'Uitzetten afname indicator', '4');
INSERT INTO "public"."bericht_namen" VALUES ('004', '001', 'Aanvraagbericht dossiernummer', '1');
INSERT INTO "public"."bericht_namen" VALUES ('006', '001', 'Aanvraagbericht SVB-AOW aan Zorg', '1');
INSERT INTO "public"."bericht_namen" VALUES ('661', '123', 'TerugmeldingKennisgevingVerwijtbaarGedragGsdCwi-v0102-b03', '6');
INSERT INTO "public"."bericht_namen" VALUES ('302', '002', 'RINIS spontane melding GVI', '6');
INSERT INTO "public"."bericht_namen" VALUES ('303', '002', 'RINIS-geg.set SV-sector t.b.v. AKW', '2');
INSERT INTO "public"."bericht_namen" VALUES ('304', '003', 'RINIS-geg.set SV-sector t.b.v. ABW', '2');
INSERT INTO "public"."bericht_namen" VALUES ('304', '004', 'RINIS-geg.set SV-sector t.b.v. ABW', '2');
INSERT INTO "public"."bericht_namen" VALUES ('305', '003', 'RINIS-geg.set SV-sector t.b.v. LBIO', '2');
INSERT INTO "public"."bericht_namen" VALUES ('308', '001', 'RINIS antwoord ziekenfondsrecht', '2');
INSERT INTO "public"."bericht_namen" VALUES ('309', '001', 'RINIS sp.melding ziekenfondsrecht', '6');
INSERT INTO "public"."bericht_namen" VALUES ('312', '003', 'RINIS spontane melding t.b.v. LBIO', '6');
INSERT INTO "public"."bericht_namen" VALUES ('313', '001', 'Retourbericht dossiernummer', '2');
INSERT INTO "public"."bericht_namen" VALUES ('314', '001', 'Bericht toekenningsbeschikking', '6');
INSERT INTO "public"."bericht_namen" VALUES ('317', '001', 'Bericht budgetuitputting', '6');
INSERT INTO "public"."bericht_namen" VALUES ('319', '001', 'Leveringsbericht Zorg aan SVB-AOW', '2');
INSERT INTO "public"."bericht_namen" VALUES ('320', '001', 'Levering SVB aan IB: AOW-informatie', '2');
INSERT INTO "public"."bericht_namen" VALUES ('336', '001', 'Kindertoeslag startsignaal', '6');
INSERT INTO "public"."bericht_namen" VALUES ('337', '001', 'Kindertoeslag mutatiesignaal', '6');
INSERT INTO "public"."bericht_namen" VALUES ('338', '001', 'Kindertoeslag berekend KT-bedrag', '6');
INSERT INTO "public"."bericht_namen" VALUES ('339', '001', 'Kindertoeslag aanvulling vanuit KT', '6');
INSERT INTO "public"."bericht_namen" VALUES ('340', '001', 'Kindertoeslag stopsignaal', '6');
INSERT INTO "public"."bericht_namen" VALUES ('342', '001', 'SVB levering ANW aan CBS', '2');
INSERT INTO "public"."bericht_namen" VALUES ('400', '145', 'QueVraagberichtRinis-v0104-b05', '1');
INSERT INTO "public"."bericht_namen" VALUES ('401', '151', 'ErrFoutmeldingRinis-v0105-b01', '2');
INSERT INTO "public"."bericht_namen" VALUES ('423', '221', 'GegevenssetRinisPartnerLbio-v0202-b01', '2');
INSERT INTO "public"."bericht_namen" VALUES ('471', '201', 'GegevenssetRinisPartnerZorg-v0200-b01', '2');
INSERT INTO "public"."bericht_namen" VALUES ('490', '081', 'GegevenssetRinisPartnerCVZ_Soepel-v0008-b01', '2');
INSERT INTO "public"."bericht_namen" VALUES ('602', '104', 'InkomensAntwoord_v0104', '2');
INSERT INTO "public"."bericht_namen" VALUES ('608', '001', 'Bericht naar MijnOverheid', '6');
INSERT INTO "public"."bericht_namen" VALUES ('651', '101', 'AanvraagAbwCwiGsd-v0101-b05', '6');
INSERT INTO "public"."bericht_namen" VALUES ('651', '115', 'AanvraagAbwCwiGsd-v0101-b05', '6');
INSERT INTO "public"."bericht_namen" VALUES ('652', '111', 'AanvraagReintegratieadviesGsdCwi-v0101-b01', '6');
INSERT INTO "public"."bericht_namen" VALUES ('653', '113', 'IntakeAbwOverdrachtCwiGsd-v0101-b03', '6');
INSERT INTO "public"."bericht_namen" VALUES ('654', '113', 'KennisgevingCwiGsd-v0101-b03', '6');
INSERT INTO "public"."bericht_namen" VALUES ('655', '104', 'KennisgevingGsdCwi-v0100-b04', '6');
INSERT INTO "public"."bericht_namen" VALUES ('656', '124', 'KennisgevingVerwijtbaarGedragCwiGsd-v0102-b04', '6');
INSERT INTO "public"."bericht_namen" VALUES ('657', '103', 'ReintegratieadviesCwiGsd-v0103-b02', '6');
INSERT INTO "public"."bericht_namen" VALUES ('657', '132', 'ReintegratieadviesCwiGsd-v0103-b02', '6');
INSERT INTO "public"."bericht_namen" VALUES ('658', '100', 'ReintegratieadviesVerkorteAnalyseCwiGsd-v0100-b02', '6');
INSERT INTO "public"."bericht_namen" VALUES ('658', '102', 'ReintegratieadviesVerkorteAnalyseCwiGsd-v0100-b02', '6');
INSERT INTO "public"."bericht_namen" VALUES ('659', '111', 'TerugmIntAbwOverdrBesluitGsdCwi-v0101-b01', '6');
INSERT INTO "public"."bericht_namen" VALUES ('660', '112', 'TerugmIntAbwOverdrKwaliteitGsdCwi-v0101-b02', '6');
INSERT INTO "public"."bericht_namen" VALUES ('662', '122', 'TerugmeldingReintegratieadviesGsdCwi-v0102-b02', '6');
INSERT INTO "public"."bericht_namen" VALUES ('351', '001', 'Aanmelden wanbetalers SVB', '6');
INSERT INTO "public"."bericht_namen" VALUES ('352', '001', 'Afmelden wanbetalers SVB', '6');
INSERT INTO "public"."bericht_namen" VALUES ('353', '001', 'Directe terugkoppeling aan- en afmelden wanbetalers', '12');
INSERT INTO "public"."bericht_namen" VALUES ('354', '001', 'Maandelijkse terugkoppeling aan- en afmelden wanbetalers', '12');
INSERT INTO "public"."bericht_namen" VALUES ('373', '001', 'Zaakaanlevering', '6');
INSERT INTO "public"."bericht_namen" VALUES ('374', '001', 'Inleesresultaat', '12');
INSERT INTO "public"."bericht_namen" VALUES ('360', '001', 'Antwoord InBuitenlandVerzekerden', '2');
INSERT INTO "public"."bericht_namen" VALUES ('001', '002', 'Aanvraagbericht', '1');
INSERT INTO "public"."bericht_namen" VALUES ('002', '002', 'Aanvraagbericht IBG t.b.v. ABW', '1');
INSERT INTO "public"."bericht_namen" VALUES ('003', '003', 'Aanvraagbericht IVP', '1');
INSERT INTO "public"."bericht_namen" VALUES ('005', '001', 'Aanvraagbericht van SNG aan SVB', '1');
INSERT INTO "public"."bericht_namen" VALUES ('007', '001', 'Aanvraagbericht SNG aan IB', '1');
INSERT INTO "public"."bericht_namen" VALUES ('009', '003', 'VraagOnverzekerdenEnWanbetalers_v0003', '1');
INSERT INTO "public"."bericht_namen" VALUES ('012', '001', 'Verzoek samenloopsignaalrapportages', '1');
INSERT INTO "public"."bericht_namen" VALUES ('013', '001', 'CW06 Check RBVZ door CAK', '1');
INSERT INTO "public"."bericht_namen" VALUES ('014', '001', 'Vraag InBuitenlandVerzekerden', '1');
INSERT INTO "public"."bericht_namen" VALUES ('015', '001', 'Vraag Ingeschr-OpsporingOnverzekerd', '1');
INSERT INTO "public"."bericht_namen" VALUES ('016', '001', 'Aanvraagbericht studenten', '1');
INSERT INTO "public"."bericht_namen" VALUES ('301', '001', 'RINIS levering foto GVI', '2');
INSERT INTO "public"."bericht_namen" VALUES ('306', '001', 'Melding aanvang detentie', '6');
INSERT INTO "public"."bericht_namen" VALUES ('306', '002', 'Melding aanvang detentie', '6');
INSERT INTO "public"."bericht_namen" VALUES ('307', '002', 'Leveringsbericht IBG t.b.v. ABW', '2');
INSERT INTO "public"."bericht_namen" VALUES ('310', '002', 'RINIS spontane melding t.b.v. AKW', '6');
INSERT INTO "public"."bericht_namen" VALUES ('311', '003', 'Leveringsbericht IVP', '2');
INSERT INTO "public"."bericht_namen" VALUES ('318', '001', 'Levering SVB aan SNG', '2');
INSERT INTO "public"."bericht_namen" VALUES ('320', '002', 'Levering SVB aan IB: AOW-informatie', '2');
INSERT INTO "public"."bericht_namen" VALUES ('321', '001', 'Levering SVB aan IB: ANW-informatie', '2');
INSERT INTO "public"."bericht_namen" VALUES ('322', '001', 'Levering IB aan SNG', '2');
INSERT INTO "public"."bericht_namen" VALUES ('323', '001', 'Geregistreerde Werkzoekenden', '2');
INSERT INTO "public"."bericht_namen" VALUES ('325', '001', 'Levering SVB aan IB: WWB 65plus', '6');
INSERT INTO "public"."bericht_namen" VALUES ('326', '001', 'Gemoedsbezwaarden', '6');
INSERT INTO "public"."bericht_namen" VALUES ('327', '001', 'SVB levering AOW aan CBS', '2');
INSERT INTO "public"."bericht_namen" VALUES ('331', '001', 'Initieel inschrijvingsbericht', '2');
INSERT INTO "public"."bericht_namen" VALUES ('332', '001', 'Actualisatie inschrijvingsbericht', '2');
INSERT INTO "public"."bericht_namen" VALUES ('333', '001', 'Jaarlijks hoger onderwijs bericht', '2');
INSERT INTO "public"."bericht_namen" VALUES ('334', '001', 'Correctie hoger onderwijs bericht', '2');
INSERT INTO "public"."bericht_namen" VALUES ('336', '002', 'Kindgebonden budget startsignaal', '6');
INSERT INTO "public"."bericht_namen" VALUES ('337', '002', 'Kindgebonden budget mutatiesignaal', '6');
INSERT INTO "public"."bericht_namen" VALUES ('338', '002', 'Kindgebonden budget berekend bedrag', '6');
INSERT INTO "public"."bericht_namen" VALUES ('339', '002', 'Kindgebonden budget aanvulling', '6');
INSERT INTO "public"."bericht_namen" VALUES ('340', '002', 'Kindgebonden budget stopsignaal', '6');
INSERT INTO "public"."bericht_namen" VALUES ('341', '001', 'Opleidingsbericht', '2');
INSERT INTO "public"."bericht_namen" VALUES ('341', '002', 'Opleidingsbericht', '2');
INSERT INTO "public"."bericht_namen" VALUES ('342', '002', 'SVB levering ANW aan CBS', '2');
INSERT INTO "public"."bericht_namen" VALUES ('345', '003', 'AntwoordOnverzekerdenEnWanbetalers_v0003', '2');
INSERT INTO "public"."bericht_namen" VALUES ('346', '001', 'Koppeltabel BRON', '6');
INSERT INTO "public"."bericht_namen" VALUES ('347', '001', 'PH 32', '6');
INSERT INTO "public"."bericht_namen" VALUES ('349', '001', 'SCHUNAL melding', '6');
INSERT INTO "public"."bericht_namen" VALUES ('351', '002', 'Aanmelden wanbetalers SVB', '6');
INSERT INTO "public"."bericht_namen" VALUES ('352', '002', 'Afmelden wanbetalers SVB', '6');
INSERT INTO "public"."bericht_namen" VALUES ('353', '002', 'Directe terugkoppeling aan- en afmelden wanbetalers', '12');
INSERT INTO "public"."bericht_namen" VALUES ('354', '002', 'Maandelijkse terugkoppeling aan- en afmelden wanbetalers', '12');
INSERT INTO "public"."bericht_namen" VALUES ('355', '001', 'Samenloopsignaalrapportages', '2');
INSERT INTO "public"."bericht_namen" VALUES ('356', '001', 'Kinderen met een startkwalificatie', '6');
INSERT INTO "public"."bericht_namen" VALUES ('357', '001', 'Kinderen met een praktijkovereenkomst', '6');
INSERT INTO "public"."bericht_namen" VALUES ('358', '001', 'SCHUNAL melding (orgellijst)', '6');
INSERT INTO "public"."bericht_namen" VALUES ('710', '001', 'Bericht naar MijnOverheid', '1');
INSERT INTO "public"."bericht_namen" VALUES ('711', '001', 'Antwoord bericht MijnOverheid', '2');
INSERT INTO "public"."bericht_namen" VALUES ('712', '001', 'Bestand GEB Abonnement Service', '6');
INSERT INTO "public"."bericht_namen" VALUES ('720', '001', 'Aanleveren DigiInkoop', '1');
INSERT INTO "public"."bericht_namen" VALUES ('721', '001', 'Afleveren DigiInkoop', '2');
INSERT INTO "public"."bericht_namen" VALUES ('010', '001', 'Aanvraagbericht IB-Groep', '1');
INSERT INTO "public"."bericht_namen" VALUES ('605', '001', 'Berichten_specs_WanbetalersBasisverzekering_v0.1', '6');
INSERT INTO "public"."bericht_namen" VALUES ('359', '001', 'CW07 Antwoord RBVZ aan CAK', '2');
INSERT INTO "public"."bericht_namen" VALUES ('361', '001', 'Antw Ingeschr-OpsporingOnverzekerd', '2');
INSERT INTO "public"."bericht_namen" VALUES ('362', '002', 'Aanleveren nieuwe zaak', '6');
INSERT INTO "public"."bericht_namen" VALUES ('363', '002', 'Wijzigen zaak', '6');
INSERT INTO "public"."bericht_namen" VALUES ('364', '002', 'Terugkoppelen zaak', '12');
INSERT INTO "public"."bericht_namen" VALUES ('365', '001', 'Leveringsbericht studenten', '2');
INSERT INTO "public"."bericht_namen" VALUES ('366', '001', 'Aanmelden onverzekerde', '6');
INSERT INTO "public"."bericht_namen" VALUES ('367', '001', 'Muteren onverzekerde', '6');
INSERT INTO "public"."bericht_namen" VALUES ('368', '002', 'Inkomens vraag', '1');
INSERT INTO "public"."bericht_namen" VALUES ('369', '002', 'Inkomens antwoord (verwerkte personen)', '2');
INSERT INTO "public"."bericht_namen" VALUES ('370', '002', 'Inkomens antwoord (niet-verifieerbare personen)', '2');
INSERT INTO "public"."bericht_namen" VALUES ('371', '002', 'Inkomens (abonnement)', '6');
INSERT INTO "public"."bericht_namen" VALUES ('372', '001', 'Mutatie Landelijke Registratie Kinderopvang', '6');
INSERT INTO "public"."bericht_namen" VALUES ('373', '002', 'Zaakaanlevering', '6');
INSERT INTO "public"."bericht_namen" VALUES ('374', '002', 'Inleesresultaat', '12');
INSERT INTO "public"."bericht_namen" VALUES ('375', '001', 'Bestuurorgaan', '12');
INSERT INTO "public"."bericht_namen" VALUES ('376', '001', 'Aanmeldbericht wanbetalers', '6');
INSERT INTO "public"."bericht_namen" VALUES ('377', '001', 'Afmeldbericht wanbetalers', '6');
INSERT INTO "public"."bericht_namen" VALUES ('378', '001', 'Mutatiebericht wanbetalers', '6');
INSERT INTO "public"."bericht_namen" VALUES ('379', '001', 'Bevestigingbericht wanbetalers', '12');
INSERT INTO "public"."bericht_namen" VALUES ('381', '001', 'Inschrijven ambtshalve verzekerde', '6');
INSERT INTO "public"."bericht_namen" VALUES ('382', '001', 'Bevestigigen ambtshalve verzekerde', '12');
INSERT INTO "public"."bericht_namen" VALUES ('383', '001', 'Borderel ambtshalve verzekerden', '12');
INSERT INTO "public"."bericht_namen" VALUES ('384', '100', 'Artikel69-v0100', '6');
INSERT INTO "public"."bericht_namen" VALUES ('400', '211', 'QueVraagberichtRinis-v0201-b01', '1');
INSERT INTO "public"."bericht_namen" VALUES ('400', '310', 'QUE_VraagberichtRinis-v0301-b00', '1');
INSERT INTO "public"."bericht_namen" VALUES ('401', '201', 'ErrFoutmeldingRinis-v0200-b01', '2');
INSERT INTO "public"."bericht_namen" VALUES ('401', '310', 'ERR_FoutmeldingRinis-v0301-b00', '2');
INSERT INTO "public"."bericht_namen" VALUES ('403', '152', 'QinAfnameIndicatieBerichtRinis-v0105-b02', '3');
INSERT INTO "public"."bericht_namen" VALUES ('404', '152', 'QinAfnameIndicatieBerichtRinis-v0105-b02', '4');
INSERT INTO "public"."bericht_namen" VALUES ('405', '152', 'TvqTerugkoppelingVerwerkingQinRinis-v0105-b02', '5');
INSERT INTO "public"."bericht_namen" VALUES ('406', '004', 'RinisLoonbeslagMelding-v0004-b00', '6');
INSERT INTO "public"."bericht_namen" VALUES ('406', '060', 'RinisLoonbeslagMelding-v0006-b00', '6');
INSERT INTO "public"."bericht_namen" VALUES ('406', '100', 'RinisLoonbeslagMelding-v0100-b00', '6');
INSERT INTO "public"."bericht_namen" VALUES ('407', '004', 'RinisLoonbeslagMelding-v0004-b00', '6');
INSERT INTO "public"."bericht_namen" VALUES ('407', '060', 'RinisLoonbeslagMelding-v0006-b00', '6');
INSERT INTO "public"."bericht_namen" VALUES ('407', '100', 'RinisLoonbeslagMelding-v0100-b00', '6');
INSERT INTO "public"."bericht_namen" VALUES ('408', '002', 'RinisTerugkoppelingLoonbeslagMelding-v0002-b00', '12');
INSERT INTO "public"."bericht_namen" VALUES ('408', '060', 'RinisTerugkoppelingLoonbeslagMelding-v0006-b00', '12');
INSERT INTO "public"."bericht_namen" VALUES ('420', '311', 'GegevenssetRinisPartnerSNG-v0301-b01', '2');
INSERT INTO "public"."bericht_namen" VALUES ('420', '331', 'GegevenssetRinisPartnerSNG-v0303-b01', '2');
INSERT INTO "public"."bericht_namen" VALUES ('423', '321', 'GegevenssetRinisPartnerLbio-v0302-b01', '2');
INSERT INTO "public"."bericht_namen" VALUES ('424', '321', 'GegevenssetRinisPartnerLbio-v0302-b01', '6');
INSERT INTO "public"."bericht_namen" VALUES ('480', '151', 'GegevenssetRinisPartnerCak-v0105-b01', '2');
INSERT INTO "public"."bericht_namen" VALUES ('480', '181', 'GegevenssetRinisPartnerCak-v0108-b01', '2');
INSERT INTO "public"."bericht_namen" VALUES ('480', '201', 'GegevenssetRinisPartnerCak-v0200-b01', '2');
INSERT INTO "public"."bericht_namen" VALUES ('490', '221', 'GegevenssetRinisPartnerCVZ_Soepel-v0202-b01', '2');
INSERT INTO "public"."bericht_namen" VALUES ('501', '94B', 'Notification of registration of a worker message', '6');
INSERT INTO "public"."bericht_namen" VALUES ('502', '94B', 'Notification of registration of a worker message', '6');
INSERT INTO "public"."bericht_namen" VALUES ('551', '94B', 'Modification of identity details message', '6');
INSERT INTO "public"."bericht_namen" VALUES ('601', '104', 'InkomensVraag_v0104', '1');
INSERT INTO "public"."bericht_namen" VALUES ('602', '105', 'InkomensAntwoord_v0105', '2');
INSERT INTO "public"."bericht_namen" VALUES ('606', '100', 'BestandLandelijkBureauInningOnderhoudsbijdragen-v0100', '1');
INSERT INTO "public"."bericht_namen" VALUES ('607', '100', 'BestandLandelijkBureauInningOnderhoudsbijdragen-v0100', '2');
INSERT INTO "public"."bericht_namen" VALUES ('610', '001', 'Bericht naar MijnOverheid', '6');
INSERT INTO "public"."bericht_namen" VALUES ('611', '001', 'Retourbericht van MijnOverheid', '12');
INSERT INTO "public"."bericht_namen" VALUES ('612', '001', 'RDW aanvraagbericht', '1');
INSERT INTO "public"."bericht_namen" VALUES ('613', '001', 'RDW antwoordbericht', '2');
INSERT INTO "public"."bericht_namen" VALUES ('651', '116', 'AanvraagAbwCwiGsd-v0101-b06', '6');
INSERT INTO "public"."bericht_namen" VALUES ('652', '101', 'AanvraagReintegratieadviesGsdCwi-v0101-b01', '6');
INSERT INTO "public"."bericht_namen" VALUES ('653', '101', 'IntakeAbwOverdrachtCwiGsd-v0101-b03', '6');
INSERT INTO "public"."bericht_namen" VALUES ('654', '101', 'KennisgevingCwiGsd-v0101-b03', '6');
INSERT INTO "public"."bericht_namen" VALUES ('655', '100', 'KennisgevingGsdCwi-v0100-b04', '6');
INSERT INTO "public"."bericht_namen" VALUES ('656', '102', 'KennisgevingVerwijtbaarGedragCwiGsd-v0102-b04', '6');
INSERT INTO "public"."bericht_namen" VALUES ('657', '133', 'ReintegratieadviesCwiGsd-v0103-b03', '6');
INSERT INTO "public"."bericht_namen" VALUES ('658', '103', 'ReintegratieadviesVerkorteAnalyseCwiGsd-v0100-b03', '6');
INSERT INTO "public"."bericht_namen" VALUES ('659', '101', 'TerugmIntAbwOverdrBesluitGsdCwi-v0101-b01', '6');
INSERT INTO "public"."bericht_namen" VALUES ('660', '101', 'TerugmIntAbwOverdrKwaliteitGsdCwi-v0101-b02', '6');
INSERT INTO "public"."bericht_namen" VALUES ('661', '102', 'TerugmeldingKennisgevingVerwijtbaarGedragGsdCwi-v0102-b03', '6');
INSERT INTO "public"."bericht_namen" VALUES ('662', '102', 'TerugmeldingReintegratieadviesGsdCwi-v0102-b02', '6');
INSERT INTO "public"."bericht_namen" VALUES ('663', '103', 'DigitaleKluisPersoon-v0100-b03', '6');
INSERT INTO "public"."bericht_namen" VALUES ('664', '102', 'WerkpleinDienstverleningHuisvesting-v0100-b02', '6');
INSERT INTO "public"."bericht_namen" VALUES ('665', '102', 'WerkpleinDienstverleningOpleiding-v0100-b02', '6');
INSERT INTO "public"."bericht_namen" VALUES ('666', '103', 'WerkpleinDienstverleningSchuldhulpverlening-v0100-b03', '6');
INSERT INTO "public"."bericht_namen" VALUES ('666', '111', 'WerkpleinDienstverleningSchuldhulpverlening-v0101-b01', '6');
INSERT INTO "public"."bericht_namen" VALUES ('667', '102', 'WerkpleinDienstverleningSocHulpverlening-v0100-b02', '6');
INSERT INTO "public"."bericht_namen" VALUES ('668', '102', 'WerkpleinDienstverleningZorgverlening-v0100-b02', '6');
INSERT INTO "public"."bericht_namen" VALUES ('669', '205', 'WerkpleinDienstverleningEWwb-v0200-b05', '6');
INSERT INTO "public"."bericht_namen" VALUES ('669', '212', 'WerkpleinDienstverleningEWwb-v0201-b02', '6');
INSERT INTO "public"."bericht_namen" VALUES ('702', '001', 'Renseigneringsstromen rente- en saldigegevens', '6');
INSERT INTO "public"."bericht_namen" VALUES ('703', '001', 'Renseigneringsstromen dividend-waarde effectportefeuille, verzekeringsproducten', '6');
INSERT INTO "public"."bericht_namen" VALUES ('704', '001', 'Melding visserij', '6');
INSERT INTO "public"."bericht_namen" VALUES ('705', '001', 'Aanvraag BTW refund', '1');
INSERT INTO "public"."bericht_namen" VALUES ('706', '001', 'Terugmelding BTW refund', '2');
INSERT INTO "public"."bericht_namen" VALUES ('707', '001', 'Verrekening zorgkosten', '6');
INSERT INTO "public"."bericht_namen" VALUES ('708', '001', 'GPA-levering Douane aan CBS', '6');
INSERT INTO "public"."bericht_namen" VALUES ('709', '001', 'Digilevering', '6');
INSERT INTO "public"."bericht_namen" VALUES ('713', '001', 'DUO Grote Berichten service', '6');
INSERT INTO "public"."bericht_namen" VALUES ('715', '001', 'Presentiebestand NHR', '6');
INSERT INTO "public"."bericht_namen" VALUES ('716', '001', 'Fiscaal Akkoord', '6');
INSERT INTO "public"."bericht_namen" VALUES ('717', '001', 'Verwerking Fiscaal Akkoord', '12');
INSERT INTO "public"."bericht_namen" VALUES ('718', '001', 'KIS EORI levering Douane aan CBS', '6');
INSERT INTO "public"."bericht_namen" VALUES ('719', '001', 'OM Strafafdoening, Opschorting executie BD-00523/Beslissing voortgang strafbeschikking BD-00576', '6');
INSERT INTO "public"."bericht_namen" VALUES ('724', '001', 'Aanvraagbericht Zorgtoeslagregeling', '1');
INSERT INTO "public"."bericht_namen" VALUES ('725', '001', 'Leveringsbericht Zorgtoeslagregeling', '2');
INSERT INTO "public"."bericht_namen" VALUES ('726', '001', 'Aanvraagbericht Buitenland declaraties', '1');
INSERT INTO "public"."bericht_namen" VALUES ('727', '001', 'Leveringsbericht Buitenland declaraties', '2');
INSERT INTO "public"."bericht_namen" VALUES ('734', '001', 'WTCG aanvraag', '1');
INSERT INTO "public"."bericht_namen" VALUES ('735', '001', 'WTCG levering', '2');
INSERT INTO "public"."bericht_namen" VALUES ('750', '001', 'Vraagbericht IB-UWV samenloop', '1');
INSERT INTO "public"."bericht_namen" VALUES ('751', '001', 'Antwoordbericht IB-UWV samenloop', '2');
INSERT INTO "public"."bericht_namen" VALUES ('760', '001', 'K156B ''DVD uitwisseling''', '6');
INSERT INTO "public"."bericht_namen" VALUES ('761', '001', 'Levering Polis+ aan CBS', '6');
INSERT INTO "public"."bericht_namen" VALUES ('762', '001', 'Weflex levering van UWV aan CBS', '6');
INSERT INTO "public"."bericht_namen" VALUES ('763', '001', 'Loonheffingsnummers NAW', '6');
INSERT INTO "public"."bericht_namen" VALUES ('360', '002', 'Spontane melding InBuitenlandVerzekerden', '6');
INSERT INTO "public"."bericht_namen" VALUES ('770', '001', '750 Antwoord toeslag betrokkenheid', '2');
INSERT INTO "public"."bericht_namen" VALUES ('771', '001', '751 Betaling zorgtoeslag aan CJIB', '6');
INSERT INTO "public"."bericht_namen" VALUES ('772', '001', '752 Afmelden toeslagbetrokkenheid', '6');
INSERT INTO "public"."bericht_namen" VALUES ('773', '001', '56 Ontvangstbevestiging afmelden wanbetaler zorgtoeslag door CJIB', '2');
INSERT INTO "public"."bericht_namen" VALUES ('774', '001', '56 Foutmelding afmelden wanbetaler zorgtoeslag door CJIB', '2');
INSERT INTO "public"."bericht_namen" VALUES ('775', '001', 'Alle wanbetaler berichten vanuit CJIB richting BD', '1');
INSERT INTO "public"."bericht_namen" VALUES ('776', '001', 'Standard Business Reporting (SBR)', '6');
INSERT INTO "public"."bericht_namen" VALUES ('778', '001', 'SVB Inkomensafh.reg.Polis Request v0.4 GIPA', '1');
INSERT INTO "public"."bericht_namen" VALUES ('779', '001', 'SVB Inkomensafh.reg.Polis Response v1.4', '2');
INSERT INTO "public"."bericht_namen" VALUES ('801', '001', 'OM Strafafdoening, Zaakoverdracht BD-00529', '6');
INSERT INTO "public"."bericht_namen" VALUES ('802', '001', 'OM Strafafdoening, Verwerkingsresultaat bedrijfsdocument BD-00539', '6');
INSERT INTO "public"."bericht_namen" VALUES ('804', '001', 'OM Strafafdoening, Resultaat executie BD-00527', '6');
INSERT INTO "public"."bericht_namen" VALUES ('ctr', '94B', 'CONTRL-bericht', '8');
INSERT INTO "public"."bericht_namen" VALUES ('int', '94B', 'Interchange', '9');
INSERT INTO "public"."bericht_namen" VALUES ('376', '002', 'Aanmeldbericht wanbetalers', '6');
INSERT INTO "public"."bericht_namen" VALUES ('377', '002', 'Afmeldbericht wanbetalers', '6');
INSERT INTO "public"."bericht_namen" VALUES ('378', '002', 'Mutatiebericht wanbetalers', '6');
INSERT INTO "public"."bericht_namen" VALUES ('379', '002', 'Bevestigingbericht wanbetalers', '12');
INSERT INTO "public"."bericht_namen" VALUES ('406', '120', 'RinisLoonbeslagMelding-v0102-b00', '6');
INSERT INTO "public"."bericht_namen" VALUES ('407', '120', 'RinisLoonbeslagMelding-v0102-b00', '6');
INSERT INTO "public"."bericht_namen" VALUES ('408', '080', 'RinisTerugkoppelingLoonbeslagMelding-v0008-b00', '12');
INSERT INTO "public"."bericht_namen" VALUES ('490', '241', 'GegevenssetRinisPartnerCVZ_Soepel-v0204-b01', '2');
INSERT INTO "public"."bericht_namen" VALUES ('409', '061', 'DigitaleBetaalspecificatie_Melding-v0006-b01', '6');
INSERT INTO "public"."bericht_namen" VALUES ('389', '001', 'Melding Akte En Repertoriumregel', '6');
INSERT INTO "public"."bericht_namen" VALUES ('736', '001', 'Melding OVB Gegevens', '6');
INSERT INTO "public"."bericht_namen" VALUES ('737', '001', 'Ontvangstbevestiging Melding OVB Gegevens', '12');
INSERT INTO "public"."bericht_namen" VALUES ('728', '001', 'Algemene Tegemoetkoming Wtcg', '6');
INSERT INTO "public"."bericht_namen" VALUES ('729', '001', 'Compensatie Eigen Risico', '6');
INSERT INTO "public"."bericht_namen" VALUES ('730', '001', 'WTCG korting Zorg zonder Verblijf (ZzV) en Wet Maatschappelijke Ondersteuning (WMO) met betrekking tot de Eigen Bijdrage', '6');
INSERT INTO "public"."bericht_namen" VALUES ('731', '001', 'WTCG korting Zorg met Verblijf (ZmV) met betrekking tot de Eigen Bijdrage', '6');
INSERT INTO "public"."bericht_namen" VALUES ('732', '001', 'AWBZ/WMO-gefinancierde zorg', '6');
INSERT INTO "public"."bericht_namen" VALUES ('733', '001', 'Prijsontwikkeling eigen bijdragen Zorg met en zonder verblijf', '6');
INSERT INTO "public"."bericht_namen" VALUES ('610', '002', 'Bericht naar MijnOverheid', '6');
INSERT INTO "public"."bericht_namen" VALUES ('611', '002', 'Retourbericht van MijnOverheid', '12');
INSERT INTO "public"."bericht_namen" VALUES ('738', '001', 'Aanvraag Voortvluchtige Veroordeelden', '1');
INSERT INTO "public"."bericht_namen" VALUES ('739', '001', 'Levering Voortvluchtige Veroordeelden', '2');
INSERT INTO "public"."bericht_namen" VALUES ('777', '001', 'Ontvangstbevestiging Standard Business Reporting (SBR)', '12');
INSERT INTO "public"."bericht_namen" VALUES ('327', '002', 'SVB levering AOW aan CBS', '2');
INSERT INTO "public"."bericht_namen" VALUES ('700', '001', 'Gezamenlijke Melding Statistiek (Bloemenstatistiek)', '6');
INSERT INTO "public"."bericht_namen" VALUES ('701', '001', 'Elektronische Gestandaardiseerde Statistiekuitvraag (EGS-POS)', '6');
INSERT INTO "public"."bericht_namen" VALUES ('218', '001', 'Borderel', '6');
INSERT INTO "public"."bericht_namen" VALUES ('JW303', '0100', 'Declaratie Jeugd-AWBZ', '1');
INSERT INTO "public"."bericht_namen" VALUES ('JW302', '0100', 'Toewijzingsbericht-retour Jeugd', '2');
INSERT INTO "public"."bericht_namen" VALUES ('JW321', '0100', 'Declaratie Jeugd-GGZ', '1');
INSERT INTO "public"."bericht_namen" VALUES ('JW322', '0100', 'Declaratie-retour Jeugd-GGZ', '2');
INSERT INTO "public"."bericht_namen" VALUES ('JW304', '0100', 'Declaratie-retour Jeugd-AWBZ', '2');
INSERT INTO "public"."bericht_namen" VALUES ('002', '003', 'Aanvraagbericht IBG t.b.v. ABW', '1');
INSERT INTO "public"."bericht_namen" VALUES ('307', '003', 'Leveringsbericht IBG t.b.v. ABW', '2');
INSERT INTO "public"."bericht_namen" VALUES ('409', '041', 'DigitaleBetaalspecificatie_Melding-v0004-b01', '6');
INSERT INTO "public"."bericht_namen" VALUES ('387', '001', 'Ontvangstbevestiging', '2');
INSERT INTO "public"."bericht_namen" VALUES ('386', '001', 'Opgave resultaat', '2');
INSERT INTO "public"."bericht_namen" VALUES ('385', '001', 'Deelnemer opgave', '1');
INSERT INTO "public"."bericht_namen" VALUES ('669', '224', 'WerkpleinDienstverleningEWwb-v0202-b04', '6');
INSERT INTO "public"."bericht_namen" VALUES ('323', '002', 'Geregistreerde Werkzoekenden', '6');
INSERT INTO "public"."bericht_namen" VALUES ('372', '003', 'Mutatie Landelijke Registratie Kinderopvang-v003', '6');
INSERT INTO "public"."bericht_namen" VALUES ('372', '004', 'Mutatie Landelijke Registratie Kinderopvang V3.1', '6');
INSERT INTO "public"."bericht_namen" VALUES ('326', '002', 'Gemoedsbezwaarden', '6');
INSERT INTO "public"."bericht_namen" VALUES ('017', '001', 'Aanvraagbericht kostendelersnorm', '1');
INSERT INTO "public"."bericht_namen" VALUES ('390', '001', 'Leveringsbericht kostendelersnorm', '2');
INSERT INTO "public"."bericht_namen" VALUES ('781', '001', 'Verrekening zorgkosten', '6');
INSERT INTO "public"."bericht_namen" VALUES ('614', '001', 'Toekenningsbeschikking PGB', '6');
INSERT INTO "public"."bericht_namen" VALUES ('WLZ001', '0100', 'WLZ indicatie check request', '1');
INSERT INTO "public"."bericht_namen" VALUES ('WLZ002', '0100', 'WLZ indicatie check antwoord', '2');
INSERT INTO "public"."bericht_namen" VALUES ('WMO303', '0100', 'Declaratie WMO', '1');
INSERT INTO "public"."bericht_namen" VALUES ('WMO304', '0100', 'Declaratie-retour WMO', '2');
INSERT INTO "public"."bericht_namen" VALUES ('WMO301', '0100', 'Toewijzingsbericht WMO', '1');
INSERT INTO "public"."bericht_namen" VALUES ('WMO302', '0100', 'Toewijzingsbericht-retour WMO', '2');
INSERT INTO "public"."bericht_namen" VALUES ('JW301', '0100', 'Toewijzingsbericht Jeugd', '1');
INSERT INTO "public"."bericht_namen" VALUES ('CPA001', '0100', 'CPA creatie request', '1');
INSERT INTO "public"."bericht_namen" VALUES ('CPA002', '0100', 'CPA creatie response', '2');
INSERT INTO "public"."bericht_namen" VALUES ('CPA003', '0100', 'CPA routering request', '1');
INSERT INTO "public"."bericht_namen" VALUES ('CPA004', '0100', 'CPA routering response', '2');
INSERT INTO "public"."bericht_namen" VALUES ('CRT001', '0100', 'Certificaat instelling request', '1');
INSERT INTO "public"."bericht_namen" VALUES ('CRT002', '0100', 'Certificaat instelling response', '2');
INSERT INTO "public"."bericht_namen" VALUES ('FO01', '0100', 'Foutbericht IB', '1');
INSERT INTO "public"."bericht_namen" VALUES ('385', '002', 'Deelnemer opgave', '1');
INSERT INTO "public"."bericht_namen" VALUES ('386', '002', 'Opgave resultaat', '2');
INSERT INTO "public"."bericht_namen" VALUES ('612', '002', 'RDW aanvraagbericht', '1');
INSERT INTO "public"."bericht_namen" VALUES ('613', '002', 'RDW antwoordbericht', '2');
INSERT INTO "public"."bericht_namen" VALUES ('TKB001', '0100', 'Toekenningsbeschikking PGB', '1');
INSERT INTO "public"."bericht_namen" VALUES ('TKB002', '0100', 'Toekenningsbeschikking PGB', '1');
COMMIT;

-- ----------------------------
--  Primary key structure for table bericht_namen
-- ----------------------------
ALTER TABLE "public"."bericht_namen" ADD PRIMARY KEY ("bericht_type", "functie_versie");

