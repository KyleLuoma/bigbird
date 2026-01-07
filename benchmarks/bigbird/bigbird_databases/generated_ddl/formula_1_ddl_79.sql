-- Audio stream metadata for broadcast platforms
CREATE TABLE audio_streams
(
    audioStreamId      INTEGER PRIMARY KEY AUTOINCREMENT,
    streamName         TEXT    NOT NULL,
    format             TEXT,
    bitrate            INTEGER,
    sampleRate         INTEGER,
    channels           INTEGER,
    language           TEXT,
    description        TEXT,
    url                TEXT,
    startTime          TEXT,
    endTime            TEXT,
    durationSeconds    INTEGER,
    hostServer         TEXT,
    encryptionKey      TEXT,
    accessToken        TEXT,
    maxListeners       INTEGER,
    averageListeners   INTEGER,
    peakListeners      INTEGER,
    status             TEXT,
    createdDate        DATE,
    updatedDate        DATE,
    notes              TEXT
);
INSERT INTO audio_streams (streamName,format,bitrate,sampleRate,channels,language,description,url,startTime,endTime,durationSeconds,hostServer,encryptionKey,accessToken,maxListeners,averageListeners,peakListeners,status,createdDate,updatedDate,notes)
VALUES ('GrandPrixLiveAudio','AAC',128000,44100,2,'English','Live race audio feed','http://stream.example.com/gp1','2024-01-15 14:00','2024-01-15 16:00',7200,'server01','key123','tokenabc',5000,3200,4500,'active','2024-01-01','2024-01-10','Primary audio feed');
INSERT INTO audio_streams (streamName,format,bitrate,sampleRate,channels,language,description,url,startTime,endTime,durationSeconds,hostServer,encryptionKey,accessToken,maxListeners,averageListeners,peakListeners,status,createdDate,updatedDate,notes)
VALUES ('PitLaneCommentary','MP3',96000,48000,2,'French','Pit lane commentary in French','http://stream.example.com/pitfr','2024-01-15 14:05','2024-01-15 16:05',7200,'server02','key456','tokendef',2000,1500,1800,'active','2024-01-02','2024-01-11','Secondary language feed');
INSERT INTO audio_streams (streamName,format,bitrate,sampleRate,channels,language,description,url,startTime,endTime,durationSeconds,hostServer,encryptionKey,accessToken,maxListeners,averageListeners,peakListeners,status,createdDate,updatedDate,notes)
VALUES ('PostRaceAnalysis','WAV',1411200,96000,2,'German','Post race analysis in German','http://stream.example.com/postde','2024-01-15 16:10','2024-01-15 17:00',3000,'server03','key789','tokenghi',1000,800,950,'scheduled','2024-01-03','2024-01-12','Analysis after race');

-- Digital advertisement space inventory
CREATE TABLE digital_ad_spaces
(
    adSpaceId           INTEGER PRIMARY KEY AUTOINCREMENT,
    placementName       TEXT    NOT NULL,
    mediaType           TEXT,
    dimensionsPxWidth   INTEGER,
    dimensionsPxHeight  INTEGER,
    pageSection         TEXT,
    audienceSegment     TEXT,
    priceCpmUsd         REAL,
    contractStartDate   DATE,
    contractEndDate     DATE,
    impressionsBooked   INTEGER,
    impressionsDelivered INTEGER,
    clickThroughRate    REAL,
    viewabilityPercent  REAL,
    videoLengthSeconds  INTEGER,
    isSkippable         TEXT,
    creativeRestrictions TEXT,
    status              TEXT,
    createdBy           TEXT,
    createdDate         DATE,
    lastModifiedBy      TEXT,
    lastModifiedDate    DATE,
    notes               TEXT
);
INSERT INTO digital_ad_spaces (placementName,mediaType,dimensionsPxWidth,dimensionsPxHeight,pageSection,audienceSegment,priceCpmUsd,contractStartDate,contractEndDate,impressionsBooked,impressionsDelivered,clickThroughRate,viewabilityPercent,videoLengthSeconds,isSkippable,creativeRestrictions,status,createdBy,createdDate,lastModifiedBy,lastModifiedDate,notes)
VALUES ('HeaderBanner','Image',1920,200,'Top','AllFans',12.5,'2024-02-01','2024-07-31',500000,250000,0.03,85.0,0,'No','None','active','mediaTeam','2024-01-20','mediaTeam','2024-01-25','Initial booking');
INSERT INTO digital_ad_spaces (placementName,mediaType,dimensionsPxWidth,dimensionsPxHeight,pageSection,audienceSegment,priceCpmUsd,contractStartDate,contractEndDate,impressionsBooked,impressionsDelivered,clickThroughRate,viewabilityPercent,videoLengthSeconds,isSkippable,creativeRestrictions,status,createdBy,createdDate,lastModifiedBy,lastModifiedDate,notes)
VALUES ('SidebarBox','Video',300,600,'Sidebar','EuropeanFans',20.0,'2024-03-15','2024-09-15',300000,0,0.00,0.0,30,'Yes','NoAudio','scheduled','adOps','2024-02-10','adOps','2024-02-12','Pending launch');
INSERT INTO digital_ad_spaces (placementName,mediaType,dimensionsPxWidth,dimensionsPxHeight,pageSection,audienceSegment,priceCpmUsd,contractStartDate,contractEndDate,impressionsBooked,impressionsDelivered,clickThroughRate,viewabilityPercent,videoLengthSeconds,isSkippable,creativeRestrictions,status,createdBy,createdDate,lastModifiedBy,lastModifiedDate,notes)
VALUES ('FooterCarousel','Image',1200,150,'Footer','YoungAdults',15.0,'2024-01-01','2024-12-31',800000,400000,0.02,78.5,0,'No','AnimatedGIF','active','marketing','2023-12-01','marketing','2023-12-05','Year‑long contract');

-- Fan loyalty badge definitions
CREATE TABLE fan_loyalty_badges
(
    badgeId             INTEGER PRIMARY KEY AUTOINCREMENT,
    badgeCode           TEXT    NOT NULL,
    badgeName           TEXT,
    tierLevel           TEXT,
    requiredPoints      INTEGER,
    iconUrl             TEXT,
    description         TEXT,
    unlockCondition     TEXT,
    expiresAfterDays    INTEGER,
    isRepeatable        TEXT,
    grantedBySystem     TEXT,
    createdDate         DATE,
    createdBy           TEXT,
    lastUpdatedDate     DATE,
    lastUpdatedBy       TEXT,
    visibility          TEXT,
    rewardType          TEXT,
    rewardValue         REAL,
    eligibilityRegion   TEXT,
    eligibilityGender   TEXT,
    eligibilityAgeMin   INTEGER,
    eligibilityAgeMax   INTEGER,
    notes               TEXT
);
INSERT INTO fan_loyalty_badges (badgeCode,badgeName,tierLevel,requiredPoints,iconUrl,description,unlockCondition,expiresAfterDays,isRepeatable,grantedBySystem,createdDate,createdBy,lastUpdatedDate,lastUpdatedBy,visibility,rewardType,rewardValue,eligibilityRegion,eligibilityGender,eligibilityAgeMin,eligibilityAgeMax,notes)
VALUES ('FAST_LAP','FastLap','Bronze',500,'http://img.example.com/badges/fastlap.png','Awarded for completing a lap under 90 seconds','CompleteLapUnder90','365','Yes','system','2024-01-05','loyaltyTeam','2024-01-10','loyaltyTeam','public','points',100,'global','Any',16,65,'First speed badge');
INSERT INTO fan_loyalty_badges (badgeCode,badgeName,tierLevel,requiredPoints,iconUrl,description,unlockCondition,expiresAfterDays,isRepeatable,grantedBySystem,createdDate,createdBy,lastUpdatedDate,lastUpdatedBy,visibility,rewardType,rewardValue,eligibilityRegion,eligibilityGender,eligibilityAgeMin,eligibilityAgeMax,notes)
VALUES ('POLE_POS','PolePosition','Silver',1500,'http://img.example.com/badges/polepos.png','Awarded for predicting pole position correctly','PredictPoleCorrect','730','No','system','2024-01-06','loyaltyTeam','2024-01-11','loyaltyTeam','public','discount',10.0,'EU','Any',18,70,'Higher tier badge');
INSERT INTO fan_loyalty_badges (badgeCode,badgeName,tierLevel,requiredPoints,iconUrl,description,unlockCondition,expiresAfterDays,isRepeatable,grantedBySystem,createdDate,createdBy,lastUpdatedDate,lastUpdatedBy,visibility,rewardType,rewardValue,eligibilityRegion,eligibilityGender,eligibilityAgeMin,eligibilityAgeMax,notes)
VALUES ('CHAMP_WIN','ChampionWinner','Gold',5000,'http://img.example.com/badges/champwin.png','Awarded for correctly predicting season champion','PredictChampionCorrect','3650','No','system','2024-01-07','loyaltyTeam','2024-01-12','loyaltyTeam','public','merchandise',25.0,'global','Any',21,80,'Top tier badge');

-- Environmental audit report records
CREATE TABLE environmental_audit_reports
(
    auditId                INTEGER PRIMARY KEY AUTOINCREMENT,
    auditYear              INTEGER,
    venueName              TEXT,
    auditorCompany         TEXT,
    auditStartDate         DATE,
    auditEndDate           DATE,
    carbonEmissionsTonnes  REAL,
    waterUsageCubicMeters  REAL,
    wasteGeneratedTonnes   REAL,
    recyclingRatePercent   REAL,
    energyConsumptionMwh   REAL,
    renewableEnergyPercent REAL,
    noiseLevelDbA          REAL,
    airQualityIndex        INTEGER,
    complianceScore        REAL,
    violationsCount        INTEGER,
    correctiveActions      TEXT,
    remarks                TEXT,
    reportUrl              TEXT,
    createdBy              TEXT,
    createdDate            DATE,
    approvedBy             TEXT,
    approvedDate           DATE,
    notes                  TEXT
);
INSERT INTO environmental_audit_reports (auditYear,venueName,auditorCompany,auditStartDate,auditEndDate,carbonEmissionsTonnes,waterUsageCubicMeters,wasteGeneratedTonnes,recyclingRatePercent,energyConsumptionMwh,renewableEnergyPercent,noiseLevelDbA,airQualityIndex,complianceScore,violationsCount,correctiveActions,remarks,reportUrl,createdBy,createdDate,approvedBy,approvedDate,notes)
VALUES (2023,'Silverstone Circuit','GreenAudit Ltd','2023-03-01','2023-03-10',120.5,45000.0,30.2,45.0,8000.0,22.5,78.0,42,88.5,2,'Install solar panels;Improve waste segregation','All major issues addressed','http://reports.example.com/2023_silverstone.pdf','envTeam','2023-04-01','complianceOfficer','2023-04-05','');
INSERT INTO environmental_audit_reports (auditYear,venueName,auditorCompany,auditStartDate,auditEndDate,carbonEmissionsTonnes,waterUsageCubicMeters,wasteGeneratedTonnes,recyclingRatePercent,energyConsumptionMwh,renewableEnergyPercent,noiseLevelDbA,airQualityIndex,complianceScore,violationsCount,correctiveActions,remarks,reportUrl,createdBy,createdDate,approvedBy,approvedDate,notes)
VALUES (2023,'Monaco Street Circuit','EcoCheck Inc','2023-04-15','2023-04-20',45.3,12000.0,12.5,60.0,2500.0,35.0,85.0,30,92.0,0,'None required','Excellent performance','http://reports.example.com/2023_monaco.pdf','envTeam','2023-05-01','complianceOfficer','2023-05-03','');
INSERT INTO environmental_audit_reports (auditYear,venueName,auditorCompany,auditStartDate,auditEndDate,carbonEmissionsTonnes,waterUsageCubicMeters,wasteGeneratedTonnes,recyclingRatePercent,energyConsumptionMwh,renewableEnergyPercent,noiseLevelDbA,airQualityIndex,complianceScore,violationsCount,correctiveActions,remarks,reportUrl,createdBy,createdDate,approvedBy,approvedDate,notes)
VALUES (2022,'Circuit of the Americas','SustainAudit','2022-06-10','2022-06-15',98.7,32000.0,25.8,48.0,6200.0,18.0,70.0,38,85.0,1,'Upgrade lighting to LED','Minor issue fixed','http://reports.example.com/2022_cota.pdf','envTeam','2022-07-01','complianceOfficer','2022-07-04','');

-- Vendor contact registry
CREATE TABLE vendor_contact_registry
(
    vendorId            INTEGER PRIMARY KEY AUTOINCREMENT,
    vendorCode          TEXT    NOT NULL,
    vendorName          TEXT,
    contactPerson       TEXT,
    contactEmail        TEXT,
    contactPhone        TEXT,
    addressLine1        TEXT,
    addressLine2        TEXT,
    city                TEXT,
    stateProvince       TEXT,
    postalCode          TEXT,
    country             TEXT,
    serviceCategory     TEXT,
    contractStartDate   DATE,
    contractEndDate     DATE,
    paymentTerms        TEXT,
    preferredCurrency   TEXT,
    taxIdentifier       TEXT,
    insuranceProvider   TEXT,
    insurancePolicyNum  TEXT,
    complianceStatus    TEXT,
    lastAuditDate       DATE,
    notes               TEXT,
    createdBy           TEXT,
    createdDate         DATE,
    updatedBy           TEXT,
    updatedDate         DATE
);
INSERT INTO vendor_contact_registry (vendorCode,vendorName,contactPerson,contactEmail,contactPhone,addressLine1,addressLine2,city,stateProvince,postalCode,country,serviceCategory,contractStartDate,contractEndDate,paymentTerms,preferredCurrency,taxIdentifier,insuranceProvider,insurancePolicyNum,complianceStatus,lastAuditDate,notes,createdBy,createdDate,updatedBy,updatedDate)
VALUES ('VEND001','SpeedGear Ltd','Alice Turner','alice.turner@speedgear.com','+441234567890','10 Gear Lane','Suite 5','London','England','EC1A1BB','UK','EquipmentSupply','2023-01-01','2025-12-31','30 days','GBP','GB12345678','Allied Insurers','AG12345','Compliant','2024-01-10','Primary equipment vendor','procurement','2023-01-05','procurement','2024-01-12');
INSERT INTO vendor_contact_registry (vendorCode,vendorName,contactPerson,contactEmail,contactPhone,addressLine1,addressLine2,city,stateProvince,postalCode,country,serviceCategory,contractStartDate,contractEndDate,paymentTerms,preferredCurrency,taxIdentifier,insuranceProvider,insurancePolicyNum,complianceStatus,lastAuditDate,notes,createdBy,createdDate,updatedBy,updatedDate)
VALUES ('VEND002','LiveSound Studios','Bob Martin','bob.martin@livesound.com','+33123456789','22 Audio Blvd','','Paris','Ile de France','75001','France','AudioServices','2022-06-15','2024-06-14','45 days','EUR','FR98765432','EuroSure','ES98765','Compliant','2023-07-20','Audio production partner','procurement','2022-06-20','procurement','2023-07-22');
INSERT INTO vendor_contact_registry (vendorCode,vendorName,contactPerson,contactEmail,contactPhone,addressLine1,addressLine2,city,stateProvince,postalCode,country,serviceCategory,contractStartDate,contractEndDate,paymentTerms,preferredCurrency,taxIdentifier,insuranceProvider,insurancePolicyNum,complianceStatus,lastAuditDate,notes,createdBy,createdDate,updatedBy,updatedDate)
VALUES ('VEND003','GreenPower Energy','Clara Liu','clara.liu@greenpower.com','+61234567890','5 Solar Way','Level 2','Sydney','NSW','2000','Australia','EnergySupply','2024-03-01','2027-02-28','60 days','AUD','AU11223344','GreenInsure','GI11223','Pending','2024-03-15','Renewable energy provider','procurement','2024-03-02','procurement','2024-03-16');

-- Broadcast language locale settings
CREATE TABLE broadcast_language_locales
(
    localeId          INTEGER PRIMARY KEY AUTOINCREMENT,
    languageCode      TEXT    NOT NULL,
    languageName      TEXT,
    region            TEXT,
    isoAlpha2         TEXT,
    isoAlpha3         TEXT,
    script            TEXT,
    dateFormat        TEXT,
    timeFormat24h    TEXT,
    numericDecimalSep TEXT,
    numericGroupSep   TEXT,
    rtl               TEXT,
    subtitleSupported TEXT,
    audioSupported    TEXT,
    defaultForEvent   TEXT,
    createdBy         TEXT,
    createdDate       DATE,
    updatedBy         TEXT,
    updatedDate       DATE,
    notes             TEXT,
    status            TEXT,
    version           INTEGER,
    lastValidatedDate DATE,
    validationSource  TEXT,
    comments          TEXT
);
INSERT INTO broadcast_language_locales (languageCode,languageName,region,isoAlpha2,isoAlpha3,script,dateFormat,timeFormat24h,numericDecimalSep,numericGroupSep,rtl,subtitleSupported,audioSupported,defaultForEvent,createdBy,createdDate,updatedBy,updatedDate,notes,status,version,lastValidatedDate,validationSource,comments)
VALUES ('en-GB','English','United Kingdom','GB','GBR','Latin','DD/MM/YYYY','Yes','.','Comma','No','Yes','Yes','Yes','admin','2024-01-01','admin','2024-01-02','British English locale','active',1,'2024-01-10','ISO','');
INSERT INTO broadcast_language_locales (languageCode,languageName,region,isoAlpha2,isoAlpha3,script,dateFormat,timeFormat24h,numericDecimalSep,numericGroupSep,rtl,subtitleSupported,audioSupported,defaultForEvent,createdBy,createdDate,updatedBy,updatedDate,notes,status,version,lastValidatedDate,validationSource,comments)
VALUES ('fr-FR','French','France','FR','FRA','Latin','DD/MM/YYYY','Yes',',','Space','No','Yes','Yes','No','admin','2024-01-03','admin','2024-01-04','French (France) locale','active',1,'2024-01-11','ISO','');
INSERT INTO broadcast_language_locales (languageCode,languageName,region,isoAlpha2,isoAlpha3,script,dateFormat,timeFormat24h,numericDecimalSep,numericGroupSep,rtl,subtitleSupported,audioSupported,defaultForEvent,createdBy,createdDate,updatedBy,updatedDate,notes,status,version,lastValidatedDate,validationSource,comments)
VALUES ('ar-AE','Arabic','United Arab Emirates','AE','ARE','Arabic','DD/MM/YYYY','No','.','Comma','Yes','Yes','Yes','No','admin','2024-01-05','admin','2024-01-06','Arabic (UAE) right‑to‑left','active',1,'2024-01-12','ISO','');

-- Augmented reality scenario definitions
CREATE TABLE augmented_reality_scenarios
(
    scenarioId           INTEGER PRIMARY KEY AUTOINCREMENT,
    scenarioCode         TEXT    NOT NULL,
    title                TEXT,
    description          TEXT,
    triggerEvent         TEXT,
    activationMethod     TEXT,
    assetBundleUrl       TEXT,
    requiredSdkVersion   TEXT,
    minDevicePerformance TEXT,
    maxConcurrentUsers   INTEGER,
    isInteractive        TEXT,
    hasAudio             TEXT,
    durationSeconds      INTEGER,
    rewardType           TEXT,
    rewardValue          REAL,
    geographicScope      TEXT,
    supportedLanguages   TEXT,
    createdBy            TEXT,
    createdDate          DATE,
    updatedBy            TEXT,
    updatedDate          DATE,
    status               TEXT,
    version              INTEGER,
    notes                TEXT,
    complianceCheck      TEXT,
    lastTestedDate       DATE
);
INSERT INTO augmented_reality_scenarios (scenarioCode,title,description,triggerEvent,activationMethod,assetBundleUrl,requiredSdkVersion,minDevicePerformance,maxConcurrentUsers,isInteractive,hasAudio,durationSeconds,rewardType,rewardValue,geographicScope,supportedLanguages,createdBy,createdDate,updatedBy,updatedDate,status,version,notes,complianceCheck,lastTestedDate)
VALUES ('AR001','PitLaneGuide','Live AR overlay showing pit lane layout and team positions','raceStart','QRScan','http://ar.assets.example.com/pitlane.zip','2.5','High',5000,'Yes','Yes',120,'badge',1,'global','en,fr,de','arTeam','2024-01-10','arTeam','2024-01-12','active',1,'Initial release','passed','2024-01-15');
INSERT INTO augmented_reality_scenarios (scenarioCode,title,description,triggerEvent,activationMethod,assetBundleUrl,requiredSdkVersion,minDevicePerformance,maxConcurrentUsers,isInteractive,hasAudio,durationSeconds,rewardType,rewardValue,geographicScope,supportedLanguages,createdBy,createdDate,updatedBy,updatedDate,status,version,notes,complianceCheck,lastTestedDate)
VALUES ('AR002','VictoryLapReplay','AR replay of winning lap with telemetry data','raceFinish','AppButton','http://ar.assets.example.com/victory.zip','3.0','Medium',3000,'No','Yes',180,'points',50,'global','en,es,it','arTeam','2024-02-01','arTeam','2024-02-03','active',1,'Added telemetry overlay','passed','2024-02-05');
INSERT INTO augmented_reality_scenarios (scenarioCode,title,description,triggerEvent,activationMethod,assetBundleUrl,requiredSdkVersion,minDevicePerformance,maxConcurrentUsers,isInteractive,hasAudio,durationSeconds,rewardType,rewardValue,geographicScope,supportedLanguages,createdBy,createdDate,updatedBy,updatedDate,status,version,notes,complianceCheck,lastTestedDate)
VALUES ('AR003','VirtualGarage','AR experience of team garage with interactive elements','preRace','NFC','http://ar.assets.example.com/garage.zip','2.8','High',2000,'Yes','No',300,'coupon',5,'regional','en,fr','arTeam','2024-03-01','arTeam','2024-03-03','beta',1,'User testing phase','pending','2024-03-05');

-- E‑sports team partnership records
CREATE TABLE e_sports_team_partners
(
    partnershipId           INTEGER PRIMARY KEY AUTOINCREMENT,
    teamName                TEXT    NOT NULL,
    partnerOrganization     TEXT,
    partnershipStartDate    DATE,
    partnershipEndDate      DATE,
    contractValueUsd        REAL,
    sponsorLevel            TEXT,
    brandingAssetsUrl       TEXT,
    activationPlan          TEXT,
    primaryContactPerson    TEXT,
    primaryContactEmail     TEXT,
    primaryContactPhone     TEXT,
    activationRegion        TEXT,
    exclusiveRights         TEXT,
    performanceMetrics      TEXT,
    renewalOption           TEXT,
    terminationClause       TEXT,
    complianceRequirements  TEXT,
    status                  TEXT,
    createdBy               TEXT,
    createdDate             DATE,
    updatedBy               TEXT,
    updatedDate             DATE,
    notes                   TEXT,
    auditDate               DATE,
    auditor                 TEXT,
    nextReviewDate          DATE,
    reviewOwner             TEXT
);
INSERT INTO e_sports_team_partners (teamName,partnerOrganization,partnershipStartDate,partnershipEndDate,contractValueUsd,sponsorLevel,brandingAssetsUrl,activationPlan,primaryContactPerson,primaryContactEmail,primaryContactPhone,activationRegion,exclusiveRights,performanceMetrics,renewalOption,terminationClause,complianceRequirements,status,createdBy,createdDate,updatedBy,updatedDate,notes,auditDate,auditor,nextReviewDate,reviewOwner)
VALUES ('RacingRivals','TechPulse Inc','2023-05-01','2025-04-30',2500000,'Platinum','http://assets.example.com/techpulse','Social media and in‑game branding','Mia Chen','mia.chen@techpulse.com','+19876543210','NorthAmerica','Yes','WinRate>60%','Automatic','30 days notice','PCI DSS','active','esportsOps','2023-04-15','esportsOps','2023-04-20','', '2023-05-10','auditTeam','2024-05-10','esportsOps');
INSERT INTO e_sports_team_partners (teamName,partnerOrganization,partnershipStartDate,partnershipEndDate,contractValueUsd,sponsorLevel,brandingAssetsUrl,activationPlan,primaryContactPerson,primaryContactEmail,primaryContactPhone,activationRegion,exclusiveRights,performanceMetrics,renewalOption,terminationClause,complianceRequirements,status,createdBy,createdDate,updatedBy,updatedDate,notes,auditDate,auditor,nextReviewDate,reviewOwner)
VALUES ('SpeedShift','Velocity Labs','2024-01-15','2026-01-14',1500000,'Gold','http://assets.example.com/velocity','In‑game skins and live events','Lars Jensen','lars.jensen@velocitylabs.com','+447123456789','Europe','No','Top5 finish','Negotiable','60 days notice','GDPR','active','esportsOps','2024-01-10','esportsOps','2024-01-12','', '2024-02-01','auditTeam','2025-02-01','esportsOps');
INSERT INTO e_sports_team_partners (teamName,partnerOrganization,partnershipStartDate,partnershipEndDate,contractValueUsd,sponsorLevel,brandingAssetsUrl,activationPlan,primaryContactPerson,primaryContactEmail,primaryContactPhone,activationRegion,exclusiveRights,performanceMetrics,renewalOption,terminationClause,complianceRequirements,status,createdBy,createdDate,updatedBy,updatedDate,notes,auditDate,auditor,nextReviewDate,reviewOwner)
VALUES ('TurboForce','HyperDrive Co','2022-09-01','2024-08-31',1200000,'Silver','http://assets.example.com/hyperdrive','Stream overlays and tournament booths','Ana Martinez','ana.martinez@hyperdrive.com','+34123456789','SouthAmerica','No','AvgPlacement<3','Manual','45 days notice','LocalLaw','expired','esportsOps','2022-08-20','esportsOps','2022-08-25','Partnership ended','2022-09-10','auditTeam','2023-09-10','esportsOps');

-- Venue seating section definitions
CREATE TABLE venue_seating_sections
(
    sectionId            INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId              INTEGER,
    sectionCode          TEXT    NOT NULL,
    sectionName          TEXT,
    capacity             INTEGER,
    tierLevel            TEXT,
    isPremium            TEXT,
    priceBandUsd         REAL,
    viewQualityRating    INTEGER,
    accessControlType    TEXT,
    wheelchairAccessible TEXT,
    audioAssistEnabled   TEXT,
    lightingScheme       TEXT,
    concessionStandIds   TEXT,
    nearestExitId        INTEGER,
    fireSafetyRating    INTEGER,
    constructionYear     INTEGER,
    renovationYear       INTEGER,
    structuralMaterial   TEXT,
    maintenanceSchedule  TEXT,
    notes                TEXT,
    createdBy            TEXT,
    createdDate          DATE,
    updatedBy            TEXT,
    updatedDate          DATE,
    status               TEXT,
    version              INTEGER,
    lastInspectedDate   DATE,
    inspectorName        TEXT,
    complianceStatus     TEXT,
    comments             TEXT
);
INSERT INTO venue_seating_sections (venueId,sectionCode,sectionName,capacity,tierLevel,isPremium,priceBandUsd,viewQualityRating,accessControlType,wheelchairAccessible,audioAssistEnabled,lightingScheme,concessionStandIds,nearestExitId,fireSafetyRating,constructionYear,renovationYear,structuralMaterial,maintenanceSchedule,notes,createdBy,createdDate,updatedBy,updatedDate,status,version,lastInspectedDate,inspectorName,complianceStatus,comments)
VALUES (1,'A1','Grandstand North',15000,'Premier','Yes',250.0,9,'TicketScan','Yes','Yes','LED','ST01,ST02',12,5,1995,2018,'Steel','Annual','Primary premium seating','admin','2024-01-01','admin','2024-01-02','active',1,'2024-01-15','John Doe','Compliant','');
INSERT INTO venue_seating_sections (venueId,sectionCode,sectionName,capacity,tierLevel,isPremium,priceBandUsd,viewQualityRating,accessControlType,wheelchairAccessible,audioAssistEnabled,lightingScheme,concessionStandIds,nearestExitId,fireSafetyRating,constructionYear,renovationYear,structuralMaterial,maintenanceSchedule,notes,createdBy,createdDate,updatedBy,updatedDate,status,version,lastInspectedDate,inspectorName,complianceStatus,comments)
VALUES (1,'B3','Mid‑Level East',8000,'Standard','No',120.0,7,'RFID','Yes','No','Ambient','ST03,ST04',15,4,2002,2020,'Concrete','Semiannual','Mid‑tier area','admin','2024-01-03','admin','2024-01-04','active',1,'2024-01-16','Jane Smith','Compliant','');
INSERT INTO venue_seating_sections (venueId,sectionCode,sectionName,capacity,tierLevel,isPremium,priceBandUsd,viewQualityRating,accessControlType,wheelchairAccessible,audioAssistEnabled,lightingScheme,concessionStandIds,nearestExitId,fireSafetyRating,constructionYear,renovationYear,structuralMaterial,maintenanceSchedule,notes,createdBy,createdDate,updatedBy,updatedDate,status,version,lastInspectedDate,inspectorName,complianceStatus,comments)
VALUES (1,'C7','General Admission South',12000,'Economy','No',80.0,5,'Barcode','No','No','Standard','ST05',20,3,2010,2022,'Aluminum','Quarterly','General admission standing','admin','2024-01-05','admin','2024-01-06','active',1,'2024-01-17','Mike Lee','Compliant','');

-- Sponsor gift catalog
CREATE TABLE sponsor_gift_catalog
(
    giftId                INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId             INTEGER,
    giftCode              TEXT    NOT NULL,
    giftName              TEXT,
    description           TEXT,
    category              TEXT,
    estimatedValueUsd     REAL,
    inventoryQuantity     INTEGER,
    allocatedQuantity     INTEGER,
    minEligibilityPoints  INTEGER,
    limitedEdition        TEXT,
    releaseDate           DATE,
    expirationDate        DATE,
    requiredTierLevel     TEXT,
    shippingWeightKg      REAL,
    dimensionsCmLength    REAL,
    dimensionsCmWidth     REAL,
    dimensionsCmHeight    REAL,
    materialComposition   TEXT,
    customizationOptions  TEXT,
    imageUrl              TEXT,
    status                TEXT,
    createdBy             TEXT,
    createdDate           DATE,
    updatedBy             TEXT,
    updatedDate           DATE,
    notes                 TEXT,
    complianceCheck       TEXT,
    lastReviewedDate      DATE,
    reviewerName          TEXT
);
INSERT INTO sponsor_gift_catalog (sponsorId,giftCode,giftName,description,category,estimatedValueUsd,inventoryQuantity,allocatedQuantity,minEligibilityPoints,limitedEdition,releaseDate,expirationDate,requiredTierLevel,shippingWeightKg,dimensionsCmLength,dimensionsCmWidth,dimensionsCmHeight,materialComposition,customizationOptions,imageUrl,status,createdBy,createdDate,updatedBy,updatedDate,notes,complianceCheck,lastReviewedDate,reviewerName)
VALUES (101,'GFT001','Carbon Fiber Keychain','Lightweight keychain with sponsor logo','Accessories',15.0,5000,0,100,'No','2024-02-01','2025-02-01','Bronze',0.02,5.0,2.0,0.5,'CarbonFiber','EngravedName','http://gifts.example.com/keychain.png','active','giftTeam','2024-01-10','giftTeam','2024-01-12','', 'passed','2024-01-20','Anna');
INSERT INTO sponsor_gift_catalog (sponsorId,giftCode,giftName,description,category,estimatedValueUsd,inventoryQuantity,allocatedQuantity,minEligibilityPoints,limitedEdition,releaseDate,expirationDate,requiredTierLevel,shippingWeightKg,dimensionsCmLength,dimensionsCmWidth,dimensionsCmHeight,materialComposition,customizationOptions,imageUrl,status,createdBy,createdDate,updatedBy,updatedDate,notes,complianceCheck,lastReviewedDate,reviewerName)
VALUES (101,'GFT002','Limited Edition Cap','Cap with embroidered sponsor emblem','Apparel',35.0,2000,0,300,'Yes','2024-03-15','2025-03-15','Silver',0.15,22.0,18.0,5.0,'CottonBlend','ColorChoice','http://gifts.example.com/cap.png','active','giftTeam','2024-02-01','giftTeam','2024-02-03','', 'passed','2024-02-10','Ben');
INSERT INTO sponsor_gift_catalog (sponsorId,giftCode,giftName,description,category,estimatedValueUsd,inventoryQuantity,allocatedQuantity,minEligibilityPoints,limitedEdition,releaseDate,expirationDate,requiredTierLevel,shippingWeightKg,dimensionsCmLength,dimensionsCmWidth,dimensionsCmHeight,materialComposition,customizationOptions,imageUrl,status,createdBy,createdDate,updatedBy,updatedDate,notes,complianceCheck,lastReviewedDate,reviewerName)
VALUES (102,'GFT003','Premium Leather Wallet','Full‑grain leather wallet with RFID protection','Accessories',55.0,800,0,500,'No','2024-04-01','2025-04-01','Gold',0.25,10.0,9.0,2.0,'Leather','Monogram','http://gifts.example.com/wallet.png','active','giftTeam','2024-03-01','giftTeam','2024-03-03','', 'passed','2024-03-15','Clara');