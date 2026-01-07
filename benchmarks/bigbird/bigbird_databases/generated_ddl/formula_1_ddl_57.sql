-- Circuit fuel stations information
CREATE TABLE circuit_fuel_stations
(
    stationId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    stationName TEXT NOT NULL,
    provider TEXT,
    latitude REAL,
    longitude REAL,
    capacityLiters INTEGER,
    operatingHours TEXT,
    contactNumber TEXT,
    maintenanceSchedule TEXT,
    lastInspectionDate DATE,
    fuelType TEXT,
    pricePerLiter REAL,
    isActive INTEGER DEFAULT 1,
    notes TEXT,
    createdAt DATE DEFAULT (date('now')),
    updatedAt DATE DEFAULT (date('now')),
    region TEXT,
    surfaceType TEXT,
    hasElectricCharging INTEGER DEFAULT 0,
    emergencyAccess INTEGER DEFAULT 0
);
INSERT INTO circuit_fuel_stations (circuitId,stationName,provider,latitude,longitude,capacityLiters,operatingHours,contactNumber,maintenanceSchedule,lastInspectionDate,fuelType,pricePerLiter,isActive,notes,region,surfaceType,hasElectricCharging,emergencyAccess) VALUES (1,'MainPitFuel','FuelCo',45.678,-122.345,5000,'06:00-22:00','5551234567','Quarterly','2024-03-15','Petrol',1.45,1,'Primary pit lane station','North','Asphalt',1,1);
INSERT INTO circuit_fuel_stations (circuitId,stationName,provider,latitude,longitude,capacityLiters,operatingHours,contactNumber,maintenanceSchedule,lastInspectionDate,fuelType,pricePerLiter,isActive,notes,region,surfaceType,hasElectricCharging,emergencyAccess) VALUES (2,'EastEndFuel','SpeedFuel',46.001,-123.001,3000,'07:00-21:00','5559876543','Biannual','2023-11-20','Diesel',1.30,1,'Secondary station','East','Concrete',0,1);
INSERT INTO circuit_fuel_stations (circuitId,stationName,provider,latitude,longitude,capacityLiters,operatingHours,contactNumber,maintenanceSchedule,lastInspectionDate,fuelType,pricePerLiter,isActive,notes,region,surfaceType,hasElectricCharging,emergencyAccess) VALUES (3,'WestReserve','EcoFuel',44.999,-121.999,2000,'08:00-20:00','5555551212','Annual','2022-08-05','Hybrid',1.60,0,'Closed for renovation','West','Gravel',1,0);

-- Driver fan interaction logs
CREATE TABLE driver_fan_interactions
(
    interactionId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER NOT NULL,
    fanId INTEGER NOT NULL,
    interactionType TEXT,
    interactionTimestamp DATETIME,
    location TEXT,
    platform TEXT,
    durationSeconds INTEGER,
    sentimentScore REAL,
    followUpAction TEXT,
    notes TEXT,
    isPublic INTEGER DEFAULT 0,
    mediaUrl TEXT,
    deviceType TEXT,
    ipAddress TEXT,
    appVersion TEXT,
    language TEXT,
    consentGiven INTEGER DEFAULT 1,
    createdAt DATE DEFAULT (date('now')),
    updatedAt DATE DEFAULT (date('now')),
    campaignId INTEGER,
    engagementScore REAL
);
INSERT INTO driver_fan_interactions (driverId,fanId,interactionType,interactionTimestamp,location,platform,durationSeconds,sentimentScore,followUpAction,notes,isPublic,mediaUrl,deviceType,ipAddress,appVersion,language,consentGiven,campaignId,engagementScore) VALUES (10,1001,'Autograph','2024-06-01 14:23:00','Monaco','MobileApp',300,0.85,'SendThankYou','Signed autograph after race',1,'http://example.com/media/auto1.jpg','iPhone','192.168.1.10','1.3.5','en',1,200,78.5);
INSERT INTO driver_fan_interactions (driverId,fanId,interactionType,interactionTimestamp,location,platform,durationSeconds,sentimentScore,followUpAction,notes,isPublic,mediaUrl,deviceType,ipAddress,appVersion,language,consentGiven,campaignId,engagementScore) VALUES (12,1002,'QandA','2024-06-02 09:15:00','Silverstone','WebPortal',600,0.92,'ScheduleFollowUp','Live Q&A session',0,NULL,'Desktop','10.0.0.5','2.0.1','en',1,201,88.2);
INSERT INTO driver_fan_interactions (driverId,fanId,interactionType,interactionTimestamp,location,platform,durationSeconds,sentimentScore,followUpAction,notes,isPublic,mediaUrl,deviceType,ipAddress,appVersion,language,consentGiven,campaignId,engagementScore) VALUES (14,1003,'MeetGreet','2024-06-03 17:45:00','Budapest','InPerson',1200,0.78,'OfferMerch','Personal meet‑and‑greet',1,NULL,'Tablet','172.16.0.2','3.1.0','hu',1,202,65.4);

-- Constructor technology inventory
CREATE TABLE constructor_technology_inventory
(
    inventoryId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER NOT NULL,
    techItem TEXT,
    serialNumber TEXT,
    purchaseDate DATE,
    warrantyExpiry DATE,
    supplier TEXT,
    costUsd REAL,
    status TEXT,
    location TEXT,
    lastMaintenance DATE,
    firmwareVersion TEXT,
    calibrationDate DATE,
    isCritical INTEGER DEFAULT 0,
    depreciationYears INTEGER,
    lifecycleStage TEXT,
    assignedTeam TEXT,
    usageHours INTEGER,
    notes TEXT,
    createdAt DATE DEFAULT (date('now')),
    updatedAt DATE DEFAULT (date('now')),
    assetTag TEXT,
    disposalDate DATE
);
INSERT INTO constructor_technology_inventory (constructorId,techItem,serialNumber,purchaseDate,warrantyExpiry,supplier,costUsd,status,location,lastMaintenance,firmwareVersion,calibrationDate,isCritical,depreciationYears,lifecycleStage,assignedTeam,usageHours,notes,assetTag) VALUES (5,'WindTunnel','WT-001','2022-01-15','2025-01-15','AeroTech',250000,'Operational','FacilityA','2024-02-10','v3.2','2024-01-20',1,10,'InUse','Aerodynamics','1500','Regularly serviced','AT-WT001');
INSERT INTO constructor_technology_inventory (constructorId,techItem,serialNumber,purchaseDate,warrantyExpiry,supplier,costUsd,status,location,lastMaintenance,firmwareVersion,calibrationDate,isCritical,depreciationYears,lifecycleStage,assignedTeam,usageHours,notes,assetTag) VALUES (7,'HybridPowerUnit','HPU-078','2021-06-01','2024-06-01','PowerSys',500000,'UnderRepair','FacilityB','2023-12-05','v5.0','2023-11-30',1,8,'Repair','PowerTeam','3200','Battery replacement needed','PS-HPU078');
INSERT INTO constructor_technology_inventory (constructorId,techItem,serialNumber,purchaseDate,warrantyExpiry,supplier,costUsd,status,location,lastMaintenance,firmwareVersion,calibrationDate,isCritical,depreciationYears,lifecycleStage,assignedTeam,usageHours,notes,assetTag) VALUES (9,'DataAcquisitionSystem','DAS-321','2023-03-20','2026-03-20','DataCorp',120000,'Operational','FacilityC','2024-04-12','v2.1','2024-04-01',0,5,'New','ITDepartment','500','Ready for upcoming season','DC-DAS321');

-- Race environmental zones
CREATE TABLE race_environmental_zones
(
    zoneId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    zoneName TEXT,
    areaSqKm REAL,
    avgTempC REAL,
    humidityPercent REAL,
    windSpeedKph REAL,
    noiseLevelDb REAL,
    dustLevelPpm REAL,
    airQualityIndex INTEGER,
    vegetationPercent REAL,
    waterBodyPresence INTEGER,
    wildlifePresence INTEGER,
    restrictions TEXT,
    monitoringStatus TEXT,
    lastUpdate DATE,
    notes TEXT,
    createdAt DATE DEFAULT (date('now')),
    updatedAt DATE DEFAULT (date('now')),
    sensorCount INTEGER,
    complianceScore REAL
);
INSERT INTO race_environmental_zones (raceId,zoneName,areaSqKm,avgTempC,humidityPercent,windSpeedKph,noiseLevelDb,dustLevelPpm,airQualityIndex,vegetationPercent,waterBodyPresence,wildlifePresence,restrictions,monitoringStatus,lastUpdate,notes,sensorCount,complianceScore) VALUES (101,'NorthSector',2.5,24.3,55,12,78,15,42,12.5,1,0,'NoDrone', 'Active','2024-05-30','Low dust',12,0.92);
INSERT INTO race_environmental_zones (raceId,zoneName,areaSqKm,avgTempC,humidityPercent,windSpeedKph,noiseLevelDb,dustLevelPpm,airQualityIndex,vegetationPercent,waterBodyPresence,wildlifePresence,restrictions,monitoringStatus,lastUpdate,notes,sensorCount,complianceScore) VALUES (102,'EastValley',3.1,22.8,60,8,70,25,55,25.0,0,1,'RestrictedAccess','Planned','2024-06-01','Wildlife monitoring required',9,0.85);
INSERT INTO race_environmental_zones (raceId,zoneName,areaSqKm,avgTempC,humidityPercent,windSpeedKph,noiseLevelDb,dustLevelPpm,airQualityIndex,vegetationPercent,waterBodyPresence,wildlifePresence,restrictions,monitoringStatus,lastUpdate,notes,sensorCount,complianceScore) VALUES (103,'SouthPad',1.8,26.0,48,15,82,10,35,8.0,1,0,'Open', 'Active','2024-06-02','Ideal for high‑speed sections',14,0.97);

-- Fan loyalty program features
CREATE TABLE fan_loyalty_program_features
(
    featureId INTEGER PRIMARY KEY AUTOINCREMENT,
    programName TEXT,
    description TEXT,
    tierLevel TEXT,
    pointsMultiplier REAL,
    rewardType TEXT,
    eligibilityCriteria TEXT,
    startDate DATE,
    endDate DATE,
    isActive INTEGER DEFAULT 1,
    maxRedemptions INTEGER,
    contactEmail TEXT,
    termsUrl TEXT,
    createdBy TEXT,
    createdAt DATE DEFAULT (date('now')),
    updatedAt DATE DEFAULT (date('now')),
    notes TEXT,
    autoRenew INTEGER DEFAULT 0,
    bonusPoints INTEGER,
    requiredVisits INTEGER,
    exclusiveFlag INTEGER DEFAULT 0,
    redemptionWindowDays INTEGER
);
INSERT INTO fan_loyalty_program_features (programName,description,tierLevel,pointsMultiplier,rewardType,eligibilityCriteria,startDate,endDate,isActive,maxRedemptions,contactEmail,termsUrl,createdBy,notes,autoRenew,bonusPoints,requiredVisits,exclusiveFlag,redemptionWindowDays) VALUES ('GrandPrixElite','Premium tier with extra benefits','Platinum',2.0,'Merchandise','Spend >5000 USD','2023-01-01','2025-12-31',1,500,'support@example.com','http://example.com/terms','admin','Top tier access',1,1000,30,1,90);
INSERT INTO fan_loyalty_program_features (programName,description,tierLevel,pointsMultiplier,rewardType,eligibilityCriteria,startDate,endDate,isActive,maxRedemptions,contactEmail,termsUrl,createdBy,notes,autoRenew,bonusPoints,requiredVisits,exclusiveFlag,redemptionWindowDays) VALUES ('RaceDayRewards','Earn points for attending races','Gold',1.5,'Discount','Attend >=5 races','2024-03-01','2026-02-28',1,1000,'info@example.com','http://example.com/raceday','admin','Applicable to all circuits',0,200,5,0,60);
INSERT INTO fan_loyalty_program_features (programName,description,tierLevel,pointsMultiplier,rewardType,eligibilityCriteria,startDate,endDate,isActive,maxRedemptions,contactEmail,termsUrl,createdBy,notes,autoRenew,bonusPoints,requiredVisits,exclusiveFlag,redemptionWindowDays) VALUES ('DigitalEngage','Points for online interaction','Silver',1.2,'Access','Post >=10 comments','2024-01-15','2025-12-31',1,2000,'digital@example.com','http://example.com/digital','admin','Boosts social media presence',0,50,0,0,30);

-- Hospitality vendor contracts
CREATE TABLE hospitality_vendor_contracts
(
    contractId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER NOT NULL,
    vendorName TEXT,
    serviceType TEXT,
    contractStart DATE,
    contractEnd DATE,
    totalAmountUsd REAL,
    paymentTerms TEXT,
    contactPerson TEXT,
    contactPhone TEXT,
    insuranceDetails TEXT,
    complianceStatus TEXT,
    terminationClause TEXT,
    renewalOption TEXT,
    performanceScore REAL,
    notes TEXT,
    createdAt DATE DEFAULT (date('now')),
    updatedAt DATE DEFAULT (date('now')),
    contractFilePath TEXT,
    approvedBy TEXT,
    approvalDate DATE
);
INSERT INTO hospitality_vendor_contracts (venueId,vendorName,serviceType,contractStart,contractEnd,totalAmountUsd,paymentTerms,contactPerson,contactPhone,insuranceDetails,complianceStatus,terminationClause,renewalOption,performanceScore,notes,contractFilePath,approvedBy,approvalDate) VALUES (1,'GourmetCatering','FoodService','2024-01-01','2024-12-31',150000,'Net30','Jane Doe','5551112222','Liability500k','Compliant','30dayNotice','Automatic','4.7','Premium catering for VIP lounges','/contracts/gourmet_2024.pdf','ChiefOps','2023-12-15');
INSERT INTO hospitality_vendor_contracts (venueId,vendorName,serviceType,contractStart,contractEnd,totalAmountUsd,paymentTerms,contactPerson,contactPhone,insuranceDetails,complianceStatus,terminationClause,renewalOption,performanceScore,notes,contractFilePath,approvedBy,approvalDate) VALUES (2,'EliteLogistics','Transportation','2024-03-01','2025-02-28',80000,'Net45','John Smith','5553334444','Liability300k','Compliant','60dayNotice','Manual','4.2','Shuttle services for fans','/contracts/elite_logistics_2024.pdf','LogisticsMgr','2024-02-20');
INSERT INTO hospitality_vendor_contracts (venueId,vendorName,serviceType,contractStart,contractEnd,totalAmountUsd,paymentTerms,contactPerson,contactPhone,insuranceDetails,complianceStatus,terminationClause,renewalOption,performanceScore,notes,contractFilePath,approvedBy,approvalDate) VALUES (3,'ClearViewAV','AudioVisual','2024-05-01','2025-04-30',120000,'Net30','Alice Brown','5557778888','Liability400k','Pending','90dayNotice','Automatic','4.5','AV setup for press areas','/contracts/clearview_av_2024.pdf','AVDirector','2024-04-10');

-- Telemetry data sources
CREATE TABLE telemetry_data_sources
(
    sourceId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    deviceType TEXT,
    firmwareVersion TEXT,
    manufacturer TEXT,
    serialNumber TEXT,
    installationDate DATE,
    calibrationDate DATE,
    dataFormat TEXT,
    transmissionIntervalMs INTEGER,
    encryptionMethod TEXT,
    bandwidthMbps REAL,
    isActive INTEGER DEFAULT 1,
    lastCheck DATE,
    maintenanceWindow TEXT,
    notes TEXT,
    createdBy TEXT,
    createdAt DATE DEFAULT (date('now')),
    updatedAt DATE DEFAULT (date('now')),
    dataRetentionDays INTEGER,
    archiveLocation TEXT
);
INSERT INTO telemetry_data_sources (raceId,deviceType,firmwareVersion,manufacturer,serialNumber,installationDate,calibrationDate,dataFormat,transmissionIntervalMs,encryptionMethod,bandwidthMbps,isActive,lastCheck,maintenanceWindow,notes,createdBy,dataRetentionDays,archiveLocation) VALUES (101,'SpeedSensor','v1.4','TelemetryInc','TS-1001','2023-12-01','2024-02-20','JSON',10,'AES256',5.2,1,'2024-05-28','02:00-03:00','Primary speed telemetry','engineerA',365,'/archive/telemetry/speed');
INSERT INTO telemetry_data_sources (raceId,deviceType,firmwareVersion,manufacturer,serialNumber,installationDate,calibrationDate,dataFormat,transmissionIntervalMs,encryptionMethod,bandwidthMbps,isActive,lastCheck,maintenanceWindow,notes,createdBy,dataRetentionDays,archiveLocation) VALUES (102,'GForceMeter','v2.0','SensorTech','GF-2002','2024-01-15','2024-03-10','CSV',20,'RSA2048',3.8,1,'2024-05-29','03:00-04:00','G‑force data collection','engineerB',365,'/archive/telemetry/gforce');
INSERT INTO telemetry_data_sources (raceId,deviceType,firmwareVersion,manufacturer,serialNumber,installationDate,calibrationDate,dataFormat,transmissionIntervalMs,encryptionMethod,bandwidthMbps,isActive,lastCheck,maintenanceWindow,notes,createdBy,dataRetentionDays,archiveLocation) VALUES (103,'TelemetryHub','v3.1','DataHub','TH-3003','2024-02-10','2024-04-05','Parquet',50,'TLS1.3',8.0,1,'2024-05-30','01:00-02:00','Aggregates all sensor streams','engineerC',730,'/archive/telemetry/hub');

-- Race media rights
CREATE TABLE race_media_rights
(
    rightId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    mediaType TEXT,
    territory TEXT,
    rightsHolder TEXT,
    startDate DATE,
    endDate DATE,
    feeUsd REAL,
    exclusiveFlag INTEGER DEFAULT 0,
    distributionChannels TEXT,
    notes TEXT,
    contractFilePath TEXT,
    approvedBy TEXT,
    approvalDate DATE,
    isActive INTEGER DEFAULT 1,
    createdAt DATE DEFAULT (date('now')),
    updatedAt DATE DEFAULT (date('now')),
    licensingModel TEXT,
    renewalTerms TEXT,
    complianceStatus TEXT
);
INSERT INTO race_media_rights (raceId,mediaType,territory,rightsHolder,startDate,endDate,feeUsd,exclusiveFlag,distributionChannels,notes,contractFilePath,approvedBy,approvalDate,licensingModel,renewalTerms,complianceStatus) VALUES (101,'Broadcast','EU','EuroMedia','2024-04-01','2025-03-31',250000,1,'TV,Streaming','Full exclusive broadcast rights','/contracts/media_rights_101.pdf','LegalDept','2024-03-15','Perpetual','Automatic','Compliant');
INSERT INTO race_media_rights (raceId,mediaType,territory,rightsHolder,startDate,endDate,feeUsd,exclusiveFlag,distributionChannels,notes,contractFilePath,approvedBy,approvalDate,licensingModel,renewalTerms,complianceStatus) VALUES (102,'Digital','APAC','AsiaStream','2024-05-01','2025-04-30',150000,0,'Online,Mobile','Non‑exclusive digital distribution','/contracts/media_rights_102.pdf','LegalDept','2024-04-10','RevenueShare','Manual','Pending');
INSERT INTO race_media_rights (raceId,mediaType,territory,rightsHolder,startDate,endDate,feeUsd,exclusiveFlag,distributionChannels,notes,contractFilePath,approvedBy,approvalDate,licensingModel,renewalTerms,complianceStatus) VALUES (103,'Radio','NA','RadioWave','2024-06-01','2025-05-31',50000,0,'Radio','Audio highlights for radio stations','/contracts/media_rights_103.pdf','LegalDept','2024-05-05','FlatFee','Automatic','Compliant');

-- Circuit heritage artifacts
CREATE TABLE circuit_heritage_artifacts
(
    artifactId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    artifactName TEXT,
    description TEXT,
    acquisitionDate DATE,
    provenance TEXT,
    condition TEXT,
    displayLocation TEXT,
    estimatedValueUsd REAL,
    insurancePolicy TEXT,
    lastRestorationDate DATE,
    caretaker TEXT,
    isOnLoan INTEGER DEFAULT 0,
    loanInstitution TEXT,
    loanStartDate DATE,
    loanEndDate DATE,
    notes TEXT,
    createdAt DATE DEFAULT (date('now')),
    updatedAt DATE DEFAULT (date('now')),
    catalogNumber TEXT,
    conservationStatus TEXT
);
INSERT INTO circuit_heritage_artifacts (circuitId,artifactName,description,acquisitionDate,provenance,condition,displayLocation,estimatedValueUsd,insurancePolicy,lastRestorationDate,caretaker,isOnLoan,loanInstitution,loanStartDate,loanEndDate,notes,catalogNumber,conservationStatus) VALUES (1,'VintageSteeringWheel','Original 1965 steering wheel','2018-09-12','Donated by former driver','Excellent','Museum Hall A',8500,'PolicyA','2023-01-10','Mike Turner',0,NULL,NULL,NULL,'Highlighted in anniversary exhibit','VH-001','Stable');
INSERT INTO circuit_heritage_artifacts (circuitId,artifactName,description,acquisitionDate,provenance,condition,displayLocation,estimatedValueUsd,insurancePolicy,lastRestorationDate,caretaker,isOnLoan,loanInstitution,loanStartDate,loanEndDate,notes,catalogNumber,conservationStatus) VALUES (2,'RaceBanner1968','Banner from 1968 race','2020-04-05','Purchased at auction','Good','Lobby B',4200,'PolicyB','2022-07-22','Sara Lee',1,'National Museum','2024-01-01','2024-12-31','Loaned for temporary exhibit','RB-1968','Good');
INSERT INTO circuit_heritage_artifacts (circuitId,artifactName,description,acquisitionDate,provenance,condition,displayLocation,estimatedValueUsd,insurancePolicy,lastRestorationDate,caretaker,isOnLoan,loanInstitution,loanStartDate,loanEndDate,notes,catalogNumber,conservationStatus) VALUES (3,'PitBoard1973','Wooden pit board used in 1973','2019-11-20','Family collection','Fair','Archive Room',3100,'PolicyC','2021-03-15','Tom Blake',0,NULL,NULL,NULL,'Requires conservation work','PB-1973','NeedsRepair');

-- Driver sponsorship engagements
CREATE TABLE driver_sponsorship_engagements
(
    engagementId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER NOT NULL,
    sponsorId INTEGER NOT NULL,
    campaignName TEXT,
    startDate DATE,
    endDate DATE,
    activationChannels TEXT,
    budgetUsd REAL,
    roiPercent REAL,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    leadQualityScore REAL,
    contractTerms TEXT,
    complianceNotes TEXT,
    managerContact TEXT,
    status TEXT,
    createdAt DATE DEFAULT (date('now')),
    updatedAt DATE DEFAULT (date('now')),
    performanceRating INTEGER,
    notes TEXT
);
INSERT INTO driver_sponsorship_engagements (driverId,sponsorId,campaignName,startDate,endDate,activationChannels,budgetUsd,roiPercent,impressions,clicks,conversions,leadQualityScore,contractTerms,complianceNotes,managerContact,status,performanceRating,notes) VALUES (10,200,'SpeedBoost2024','2024-03-01','2024-09-30','Social,Events',120000,18.5,2500000,45000,1200,0.92,'Renewable annually','All branding approved','LauraK','Active',9,'High engagement on socials');
INSERT INTO driver_sponsorship_engagements (driverId,sponsorId,campaignName,startDate,endDate,activationChannels,budgetUsd,roiPercent,impressions,clicks,conversions,leadQualityScore,contractTerms,complianceNotes,managerContact,status,performanceRating,notes) VALUES (12,205,'EcoDrive','2024-04-15','2025-04-14','Digital,Merch',80000,22.0,1800000,30000,900,0.88,'2‑year term','Eco‑friendly usage required','MarkS','Active',8,'Positive fan sentiment');
INSERT INTO driver_sponsorship_engagements (driverId,sponsorId,campaignName,startDate,endDate,activationChannels,budgetUsd,roiPercent,impressions,clicks,conversions,leadQualityScore,contractTerms,complianceNotes,managerContact,status,performanceRating,notes) VALUES (14,210,'TechPulse','2024-05-01','2024-11-30','TV,Online',95000,15.3,2100000,35000,1100,0.81,'Quarterly performance reviews','No conflict of interest','EmilyR','Active',7,'Strong TV viewership');

-- Race environmental impact assessments
CREATE TABLE race_environmental_impact_assessments
(
    assessmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    assessmentDate DATE,
    assessorName TEXT,
    carbonEmissionTons REAL,
    wasteGeneratedTons REAL,
    waterUsageCubicMeters REAL,
    noiseImpactDb REAL,
    wildlifeDisturbanceScore REAL,
    mitigationMeasures TEXT,
    complianceStatus TEXT,
    reportingPeriod TEXT,
    notes TEXT,
    createdAt DATE DEFAULT (date('now')),
    updatedAt DATE DEFAULT (date('now')),
    reviewerComments TEXT,
    approvedBy TEXT,
    approvalDate DATE,
    dataSource TEXT,
    followUpActions TEXT
);
INSERT INTO race_environmental_impact_assessments (raceId,assessmentDate,assessorName,carbonEmissionTons,wasteGeneratedTons,waterUsageCubicMeters,noiseImpactDb,wildlifeDisturbanceScore,mitigationMeasures,complianceStatus,reportingPeriod,notes,reviewerComments,approvedBy,approvalDate,dataSource,followUpActions) VALUES (101,'2024-05-20','EcoAuditTeam',45.6,12.3,3800,78,0.35,'Tree planting, recycling stations','Compliant','Q2 2024','Overall impact within limits','All measures satisfactory','ChiefEnv','2024-06-01','OnSite','Monitor waste segregation');
INSERT INTO race_environmental_impact_assessments (raceId,assessmentDate,assessorName,carbonEmissionTons,wasteGeneratedTons,waterUsageCubicMeters,noiseImpactDb,wildlifeDisturbanceScore,mitigationMeasures,complianceStatus,reportingPeriod,notes,reviewerComments,approvedBy,approvalDate,dataSource,followUpActions) VALUES (102,'2024-06-02','GreenMetrics',52.1,15.0,4200,82,0.42,'Renewable energy sourcing','Conditional','Q2 2024','Requires additional renewable offset','Recommend additional solar panels','EnvDirector','2024-06-15','ThirdParty','Plan for extra offsets');
INSERT INTO race_environmental_impact_assessments (raceId,assessmentDate,assessorName,carbonEmissionTons,wasteGeneratedTons,waterUsageCubicMeters,noiseImpactDb,wildlifeDisturbanceScore,mitigationMeasures,complianceStatus,reportingPeriod,notes,reviewerComments,approvedBy,approvalDate,dataSource,followUpActions) VALUES (103,'2024-06-10','SustainabilityUnit',38.4,9.8,3100,73,0.28,'Enhanced public transport','Compliant','Q2 2024','Positive outcome','Maintain current strategy','SustainLead','2024-06-20','Internal','Continue monitoring');

-- Circuit transport infrastructure
CREATE TABLE circuit_transport_infrastructure
(
    infraId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    infrastructureType TEXT,
    name TEXT,
    capacity INTEGER,
    lengthKm REAL,
    constructionYear INTEGER,
    material TEXT,
    maintenanceFrequencyDays INTEGER,
    lastInspectionDate DATE,
    operatingHours TEXT,
    accessControl TEXT,
    gpsLatitude REAL,
    gpsLongitude REAL,
    lightingType TEXT,
    powerSupplyType TEXT,
    notes TEXT,
    createdAt DATE DEFAULT (date('now')),
    updatedAt DATE DEFAULT (date('now')),
    contractorName TEXT,
    warrantyExpiry DATE,
    environmentalImpactScore REAL
);
INSERT INTO circuit_transport_infrastructure (circuitId,infrastructureType,name,capacity,lengthKm,constructionYear,material,maintenanceFrequencyDays,lastInspectionDate,operatingHours,accessControl,gpsLatitude,gpsLongitude,lightingType,powerSupplyType,notes,contractorName,warrantyExpiry,environmentalImpactScore) VALUES (1,'Bridge','NorthRiverBridge',5000,1.2,2015,'Steel',180,'2024-04-15','24/7','RFID','45.678','-122.345','LED','Grid','Structural health good','BuildCorp','2029-12-31',0.12);
INSERT INTO circuit_transport_infrastructure (circuitId,infrastructureType,name,capacity,lengthKm,constructionYear,material,maintenanceFrequencyDays,lastInspectionDate,operatingHours,accessControl,gpsLatitude,gpsLongitude,lightingType,powerSupplyType,notes,contractorName,warrantyExpiry,environmentalImpactScore) VALUES (2,'Tunnel','EastSideTunnel',8000,2.5,2018,'Concrete',365,'2024-05-10','06:00-22:00','Biometric','46.001','-123.001','Fluorescent','Grid','Minor water seepage monitored','TunnelWorks','2028-06-30',0.18);
INSERT INTO circuit_transport_infrastructure (circuitId,infrastructureType,name,capacity,lengthKm,constructionYear,material,maintenanceFrequencyDays,lastInspectionDate,operatingHours,accessControl,gpsLatitude,gpsLongitude,lightingType,powerSupplyType,notes,contractorName,warrantyExpiry,environmentalImpactScore) VALUES (3,'Road','SouthAccessRoad',12000,3.0,2020,'Asphalt',90,'2024-06-01','24/7','Card','44.999','-121.999','LED','Solar','Eco‑friendly pavement','RoadBuilders','2030-03-15',0.09);

-- Team hardware inventory
CREATE TABLE team_hardware_inventory
(
    hardwareId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER NOT NULL,
    hardwareType TEXT,
    brand TEXT,
    model TEXT,
    serialNumber TEXT,
    purchaseDate DATE,
    warrantyExpiry DATE,
    costUsd REAL,
    status TEXT,
    location TEXT,
    assignedTo TEXT,
    lastServiceDate DATE,
    serviceProvider TEXT,
    firmwareVersion TEXT,
    calibrationDueDate DATE,
    notes TEXT,
    createdAt DATE DEFAULT (date('now')),
    updatedAt DATE DEFAULT (date('now')),
    depreciationRate REAL,
    disposalPlan TEXT
);
INSERT INTO team_hardware_inventory (teamId,hardwareType,brand,model,serialNumber,purchaseDate,warrantyExpiry,costUsd,status,location,assignedTo,lastServiceDate,serviceProvider,firmwareVersion,calibrationDueDate,notes,depreciationRate,disposalPlan) VALUES (5,'ECU','DeltaTech','ECU-X1','ECU-5678','2022-07-01','2025-07-01',45000,'Operational','Garage A','LeadEngineer','2024-03-20','DeltaService','v4.3','2024-12-31','Running smoothly',0.15,'Recycle after end of life');
INSERT INTO team_hardware_inventory (teamId,hardwareType,brand,model,serialNumber,purchaseDate,warrantyExpiry,costUsd,status,location,assignedTo,lastServiceDate,serviceProvider,firmwareVersion,calibrationDueDate,notes,depreciationRate,disposalPlan) VALUES (7,'WindTunnel','AeroLabs','WT-200','WT-200-999','2021-05-15','2024-05-15',300000,'Under Maintenance','Facility B','AerodynamicsLead','2024-02-10','AeroService','v2.0','2024-11-30','Pending part replacement',0.20,'Sell to research institute');
INSERT INTO team_hardware_inventory (teamId,hardwareType,brand,model,serialNumber,purchaseDate,warrantyExpiry,costUsd,status,location,assignedTo,lastServiceDate,serviceProvider,firmwareVersion,calibrationDueDate,notes,depreciationRate,disposalPlan) VALUES (9,'DataServer','ComputeMax','DM-5000','DM-5000-321','2023-01-20','2026-01-20',120000,'Operational','DataCenter','ITManager','2024-04-05','ComputeService','v1.8','2025-01-20','High‑availability setup',0.12,'Upgrade after 3 years');