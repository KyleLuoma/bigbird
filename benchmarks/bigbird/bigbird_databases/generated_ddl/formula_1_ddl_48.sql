-- Track inspection reports adjacent to race and circuit data
CREATE TABLE track_inspection_reports (
    reportId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    circuitId INTEGER,
    inspectorId INTEGER,
    inspectionDate DATE,
    temperature REAL,
    humidity REAL,
    trackCondition TEXT,
    surfaceType TEXT,
    cracksDetected INTEGER,
    debrisAmount INTEGER,
    drainageStatus TEXT,
    lightingStatus TEXT,
    signageStatus TEXT,
    safetyBarrierStatus TEXT,
    weatherNotes TEXT,
    recommendation TEXT,
    followUpDate DATE,
    followUpCompleted INTEGER,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    FOREIGN KEY (raceId) REFERENCES races(raceId),
    FOREIGN KEY (circuitId) REFERENCES circuits(circuitId)
);

INSERT INTO track_inspection_reports (raceId,circuitId,inspectorId,inspectionDate,temperature,humidity,trackCondition,surfaceType,cracksDetected,debrisAmount,drainageStatus,lightingStatus,signageStatus,safetyBarrierStatus,weatherNotes,recommendation,followUpDate,followUpCompleted,notes,createdAt,updatedAt)
VALUES (1,1,101,'2025-03-15',22.5,55.0,'Dry','Asphalt',2,5,'Clear','Operational','Intact','Good','Clear skies','Resurface section','2025-03-20',0,'Initial report','2025-03-15','2025-03-15');

INSERT INTO track_inspection_reports (raceId,circuitId,inspectorId,inspectionDate,temperature,humidity,trackCondition,surfaceType,cracksDetected,debrisAmount,drainageStatus,lightingStatus,signageStatus,safetyBarrierStatus,weatherNotes,recommendation,followUpDate,followUpCompleted,notes,createdAt,updatedAt)
VALUES (2,3,102,'2025-04-02',18.0,68.0,'Wet','Concrete',0,12,'Puddles','Reduced','Obstructed','Repair needed','Light rain','Improve drainage','2025-04-10',0,'Second inspection','2025-04-02','2025-04-02');

INSERT INTO track_inspection_reports (raceId,circuitId,inspectorId,inspectionDate,temperature,humidity,trackCondition,surfaceType,cracksDetected,debrisAmount,drainageStatus,lightingStatus,signageStatus,safetyBarrierStatus,weatherNotes,recommendation,followUpDate,followUpCompleted,notes,createdAt,updatedAt)
VALUES (3,5,103,'2025-05-18',25.3,45.0,'Dry','Asphalt',5,3,'Clear','Operational','Intact','Good','Sunny','Apply sealant','2025-05-25',0,'Follow‑up needed','2025-05-18','2025-05-18');

-- Race media license agreements
CREATE TABLE race_media_license_agreements (
    licenseId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    mediaCompany TEXT,
    licenseStart DATE,
    licenseEnd DATE,
    territory TEXT,
    rightsDescription TEXT,
    feeAmount REAL,
    currency TEXT,
    exclusiveFlag INTEGER,
    broadcastFormat TEXT,
    streamingAllowed INTEGER,
    highlightAllowed INTEGER,
    digitalRights INTEGER,
    radioRights INTEGER,
    printRights INTEGER,
    socialMediaRights INTEGER,
    sublicensingAllowed INTEGER,
    approvalStatus TEXT,
    approvedBy INTEGER,
    approvalDate DATE,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    FOREIGN KEY (raceId) REFERENCES races(raceId)
);

INSERT INTO race_media_license_agreements (raceId,mediaCompany,licenseStart,licenseEnd,territory,rightsDescription,feeAmount,currency,exclusiveFlag,broadcastFormat,streamingAllowed,highlightAllowed,digitalRights,radioRights,printRights,socialMediaRights,sublicensingAllowed,approvalStatus,approvedBy,approvalDate,notes,createdAt,updatedAt)
VALUES (1,'GlobalSports', '2025-01-01','2025-12-31','Worldwide','Full broadcast rights',500000.00,'USD',1,'HD',1,1,1,1,0,1,0,'Approved',2001,'2025-01-10','Initial license','2025-01-01','2025-01-01');

INSERT INTO race_media_license_agreements (raceId,mediaCompany,licenseStart,licenseEnd,territory,rightsDescription,feeAmount,currency,exclusiveFlag,broadcastFormat,streamingAllowed,highlightAllowed,digitalRights,radioRights,printRights,socialMediaRights,sublicensingAllowed,approvalStatus,approvedBy,approvalDate,notes,createdAt,updatedAt)
VALUES (2,'EuroVision', '2025-02-01','2025-11-30','Europe','Highlights and streaming',250000.00,'EUR',0,'FullHD',1,1,1,0,0,1,1,'Pending',2002,'2025-02-15','Awaiting contract','2025-02-01','2025-02-01');

INSERT INTO race_media_license_agreements (raceId,mediaCompany,licenseStart,licenseEnd,territory,rightsDescription,feeAmount,currency,exclusiveFlag,broadcastFormat,streamingAllowed,highlightAllowed,digitalRights,radioRights,printRights,socialMediaRights,sublicensingAllowed,approvalStatus,approvedBy,approvalDate,notes,createdAt,updatedAt)
VALUES (3,'AsiaBroadcast', '2025-03-01','2025-10-31','Asia','Live broadcast only',300000.00,'USD',0,'4K',1,0,0,0,0,0,0,'Approved',2003,'2025-03-05','Limited rights','2025-03-01','2025-03-01');

-- Circuit heritage artifacts registry
CREATE TABLE circuit_heritage_artifacts_registry (
    artifactId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    artifactName TEXT,
    artifactType TEXT,
    acquisitionDate DATE,
    origin TEXT,
    material TEXT,
    dimensions TEXT,
    weightKg REAL,
    conditionStatus TEXT,
    displayLocation TEXT,
    historicalPeriod TEXT,
    description TEXT,
    curatorId INTEGER,
    insuranceValue REAL,
    insuranceCurrency TEXT,
    loanStatus INTEGER,
    loanInstitution TEXT,
    loanStart DATE,
    loanEnd DATE,
    restorationNeeded INTEGER,
    restorationNotes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    FOREIGN KEY (circuitId) REFERENCES circuits(circuitId)
);

INSERT INTO circuit_heritage_artifacts_registry (circuitId,artifactName,artifactType,acquisitionDate,origin,material,dimensions,weightKg,conditionStatus,displayLocation,historicalPeriod,description,curatorId,insuranceValue,insuranceCurrency,loanStatus,loanInstitution,loanStart,loanEnd,restorationNeeded,restorationNotes,createdAt,updatedAt)
VALUES (1,'VintageSteeringWheel','VehiclePart','1990-05-20','Italy','Aluminum','120x30cm','5.5','Excellent','MuseumHall','1990s','Original wheel from 1990 season',301,12000.00,'USD',0,NULL,NULL,NULL,0,'None','2025-01-01','2025-01-01');

INSERT INTO circuit_heritage_artifacts_registry (circuitId,artifactName,artifactType,acquisitionDate,origin,material,dimensions,weightKg,conditionStatus,displayLocation,historicalPeriod,description,curatorId,insuranceValue,insuranceCurrency,loanStatus,loanInstitution,loanStart,loanEnd,restorationNeeded,restorationNotes,createdAt,updatedAt)
VALUES (2,'GrandPrixPoster1932','Poster','1932-08-15','France','Paper','60x90cm','0.2','Fair','ArchivesRoom','1930s','Poster of 1932 Grand Prix',302,1500.00,'EUR',1,'NationalMuseum','2025-06-01','2025-12-01',1,'Fading edges','2025-02-01','2025-02-01');

INSERT INTO circuit_heritage_artifacts_registry (circuitId,artifactName,artifactType,acquisitionDate,origin,material,dimensions,weightKg,conditionStatus,displayLocation,historicalPeriod,description,curatorId,insuranceValue,insuranceCurrency,loanStatus,loanInstitution,loanStart,loanEnd,restorationNeeded,restorationNotes,createdAt,updatedAt)
VALUES (3,'HistoricFlagpole','Structure','1975-03-10','UK','Steel','200x10cm','30','Good','OutdoorDisplay','1970s','Flagpole used in 1975 race',303,8000.00,'GBP',0,NULL,NULL,NULL,0,'None','2025-03-01','2025-03-01');

-- Driver engagement activities log
CREATE TABLE driver_engagement_activities_log (
    activityId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    activityDate DATE,
    activityType TEXT,
    location TEXT,
    sponsorPartner TEXT,
    audienceSize INTEGER,
    mediaCoverage INTEGER,
    socialMediaPosts INTEGER,
    feedbackScore REAL,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    FOREIGN KEY (driverId) REFERENCES drivers(driverId)
);

INSERT INTO driver_engagement_activities_log (driverId,activityDate,activityType,location,sponsorPartner,audienceSize,mediaCoverage,socialMediaPosts,feedbackScore,notes,createdAt,updatedAt)
VALUES (1,'2025-04-10','FanMeet','London','SpeedyTires',150,3,5,4.5,'Positive reception','2025-04-10','2025-04-10');

INSERT INTO driver_engagement_activities_log (driverId,activityDate,activityType,location,sponsorPartner,audienceSize,mediaCoverage,socialMediaPosts,feedbackScore,notes,createdAt,updatedAt)
VALUES (2,'2025-05-05','CharityRun','Berlin','EcoFuel',200,2,8,4.8,'Great community impact','2025-05-05','2025-05-05');

INSERT INTO driver_engagement_activities_log (driverId,activityDate,activityType,location,sponsorPartner,audienceSize,mediaCoverage,socialMediaPosts,feedbackScore,notes,createdAt,updatedAt)
VALUES (3,'2025-06-12','TechDemo','Tokyo','TurboTech',120,4,6,4.2,'Engaged younger audience','2025-06-12','2025-06-12');

-- Sponsor benefit usage statistics
CREATE TABLE sponsor_benefit_usage_stats (
    usageId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    raceId INTEGER,
    benefitType TEXT,
    activationDate DATE,
    impressions INTEGER,
    engagements INTEGER,
    leadsGenerated INTEGER,
    revenueAttributed REAL,
    costPerLead REAL,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    FOREIGN KEY (sponsorId) REFERENCES sponsors(sponsorId),
    FOREIGN KEY (raceId) REFERENCES races(raceId)
);

INSERT INTO sponsor_benefit_usage_stats (sponsorId,raceId,benefitType,activationDate,impressions,engagements,leadsGenerated,revenueAttributed,costPerLead,notes,createdAt,updatedAt)
VALUES (1,1,'BrandBanner','2025-03-01',50000,1200,80,250000.00,3125.00,'High visibility','2025-03-01','2025-03-01');

INSERT INTO sponsor_benefit_usage_stats (sponsorId,raceId,benefitType,activationDate,impressions,engagements,leadsGenerated,revenueAttributed,costPerLead,notes,createdAt,updatedAt)
VALUES (2,2,'HospitalitySuite','2025-04-15',30000,900,50,180000.00,3600.00,'Positive feedback','2025-04-15','2025-04-15');

INSERT INTO sponsor_benefit_usage_stats (sponsorId,raceId,benefitType,activationDate,impressions,engagements,leadsGenerated,revenueAttributed,costPerLead,notes,createdAt,updatedAt)
VALUES (3,3,'DigitalPromo','2025-05-20',80000,2000,150,400000.00,2666.67,'Strong online conversion','2025-05-20','2025-05-20');

-- Spectator experience feedback
CREATE TABLE spectator_experience_feedback (
    feedbackId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    spectatorId INTEGER,
    overallRating INTEGER,
    crowdManagementRating INTEGER,
    foodQualityRating INTEGER,
    restroomCleanlinessRating INTEGER,
    viewingAngleRating INTEGER,
    audioQualityRating INTEGER,
    staffFriendlinessRating INTEGER,
    comment TEXT,
    submissionDate DATE,
    deviceUsed TEXT,
    sessionDurationMinutes INTEGER,
    wifiQualityRating INTEGER,
    merchandiseAvailabilityRating INTEGER,
    parkingEaseRating INTEGER,
    securityPerceptionRating INTEGER,
    weatherImpactRating INTEGER,
    accessibilityRating INTEGER,
    loyaltyProgramMember INTEGER,
    createdAt TEXT,
    updatedAt TEXT,
    FOREIGN KEY (raceId) REFERENCES races(raceId)
);

INSERT INTO spectator_experience_feedback (raceId,spectatorId,overallRating,crowdManagementRating,foodQualityRating,restroomCleanlinessRating,viewingAngleRating,audioQualityRating,staffFriendlinessRating,comment,submissionDate,deviceUsed,sessionDurationMinutes,wifiQualityRating,merchandiseAvailabilityRating,parkingEaseRating,securityPerceptionRating,weatherImpactRating,accessibilityRating,loyaltyProgramMember,createdAt,updatedAt)
VALUES (1,1001,9,8,7,8,9,8,9,'Great atmosphere and staff', '2025-03-18','Mobile',180,8,7,9,9,7,8,1,'2025-03-18','2025-03-18');

INSERT INTO spectator_experience_feedback (raceId,spectatorId,overallRating,crowdManagementRating,foodQualityRating,restroomCleanlinessRating,viewingAngleRating,audioQualityRating,staffFriendlinessRating,comment,submissionDate,deviceUsed,sessionDurationMinutes,wifiQualityRating,merchandiseAvailabilityRating,parkingEaseRating,securityPerceptionRating,weatherImpactRating,accessibilityRating,loyaltyProgramMember,createdAt,updatedAt)
VALUES (2,1002,7,6,6,7,6,5,7,'Food lines were long', '2025-04-05','Tablet',150,6,6,5,7,6,6,0,'2025-04-05','2025-04-05');

INSERT INTO spectator_experience_feedback (raceId,spectatorId,overallRating,crowdManagementRating,foodQualityRating,restroomCleanlinessRating,viewingAngleRating,audioQualityRating,staffFriendlinessRating,comment,submissionDate,deviceUsed,sessionDurationMinutes,wifiQualityRating,merchandiseAvailabilityRating,parkingEaseRating,securityPerceptionRating,weatherImpactRating,accessibilityRating,loyaltyProgramMember,createdAt,updatedAt)
VALUES (3,1003,8,8,8,8,8,7,8,'Excellent organization even with rain', '2025-05-12','Laptop',200,7,8,8,8,8,8,1,'2025-05-12','2025-05-12');

-- Logistics freight manifest records
CREATE TABLE logistics_freight_manifest_records (
    manifestId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    departurePort TEXT,
    arrivalPort TEXT,
    carrierName TEXT,
    vesselName TEXT,
    departureDate DATE,
    arrivalDate DATE,
    cargoDescription TEXT,
    totalWeightKg REAL,
    containerCount INTEGER,
    hazardousMaterialFlag INTEGER,
    customsCleared INTEGER,
    inspectionPassed INTEGER,
    freightCost REAL,
    currency TEXT,
    insuranceProvider TEXT,
    insuranceAmount REAL,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    FOREIGN KEY (raceId) REFERENCES races(raceId)
);

INSERT INTO logistics_freight_manifest_records (raceId,departurePort,arrivalPort,carrierName,vesselName,departureDate,arrivalDate,cargoDescription,totalWeightKg,containerCount,hazardousMaterialFlag,customsCleared,inspectionPassed,freightCost,currency,insuranceProvider,insuranceAmount,notes,createdAt,updatedAt)
VALUES (1,'Hamburg','Barcelona','Maersk','SeaStar','2025-02-20','2025-02-25','Tyres and spare parts',20000.0,10,0,1,1,15000.00,'EUR','Allianz',20000.00,'On schedule','2025-02-20','2025-02-20');

INSERT INTO logistics_freight_manifest_records (raceId,departurePort,arrivalPort,carrierName,vesselName,departureDate,arrivalDate,cargoDescription,totalWeightKg,containerCount,hazardousMaterialFlag,customsCleared,inspectionPassed,freightCost,currency,insuranceProvider,insuranceAmount,notes,createdAt,updatedAt)
VALUES (2,'Singapore','Melbourne','MSC','Oceanic','2025-03-10','2025-03-16','Engine components',35000.5,15,0,1,1,25000.00,'AUD','Zurich',30000.00,'Temperature control needed','2025-03-10','2025-03-10');

INSERT INTO logistics_freight_manifest_records (raceId,departurePort,arrivalPort,carrierName,vesselName,departureDate,arrivalDate,cargoDescription,totalWeightKg,containerCount,hazardousMaterialFlag,customsCleared,inspectionPassed,freightCost,currency,insuranceProvider,insuranceAmount,notes,createdAt,updatedAt)
VALUES (3,'Rotterdam','Monaco','CMA CGM','EuroWave','2025-04-05','2025-04-10','Fuel tanks',50000.0,20,1,1,0,40000.00,'USD','AXA',50000.00,'Hazardous cargo, extra safety checks','2025-04-05','2025-04-05');

-- Broadcast advertiser agreement terms
CREATE TABLE broadcast_advertiser_agreement_terms (
    agreementId INTEGER PRIMARY KEY AUTOINCREMENT,
    mediaCompany TEXT,
    advertiserName TEXT,
    campaignName TEXT,
    startDate DATE,
    endDate DATE,
    totalSpend REAL,
    currency TEXT,
    spotCount INTEGER,
    spotDurationSeconds INTEGER,
    primeTimeFlag INTEGER,
    daypart TEXT,
    targetAudience TEXT,
    impressionsGoal INTEGER,
    cpm REAL,
    creativeFormat TEXT,
    complianceApproved INTEGER,
    complianceNotes TEXT,
    renewalOption INTEGER,
    renewalTerms TEXT,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT
);

INSERT INTO broadcast_advertiser_agreement_terms (mediaCompany,advertiserName,campaignName,startDate,endDate,totalSpend,currency,spotCount,spotDurationSeconds,primeTimeFlag,daypart,targetAudience,impressionsGoal,cpm,creativeFormat,complianceApproved,complianceNotes,renewalOption,renewalTerms,notes,createdAt,updatedAt)
VALUES ('GlobalSports','TurboFuel','TurboBoost','2025-01-01','2025-12-31',1200000.00,'USD',240,30,1,'Evening','MotorsportFans',20000000,60.0,'Video','1','All standards met','1','Rolling 12 month','Signed and active','2025-01-01','2025-01-01');

INSERT INTO broadcast_advertiser_agreement_terms (mediaCompany,advertiserName,campaignName,startDate,endDate,totalSpend,currency,spotCount,spotDurationSeconds,primeTimeFlag,daypart,targetAudience,impressionsGoal,cpm,creativeFormat,complianceApproved,complianceNotes,renewalOption,renewalTerms,notes,createdAt,updatedAt)
VALUES ('EuroVision','EcoTires','GreenRide','2025-02-15','2025-08-14',600000.00,'EUR',120,45,0,'Afternoon','EcoAwareDrivers',10000000,55.0,'Static','1','Meets green guidelines','0','N/A','Renewal pending','2025-02-15','2025-02-15');

INSERT INTO broadcast_advertiser_agreement_terms (mediaCompany,advertiserName,campaignName,startDate,endDate,totalSpend,currency,spotCount,spotDurationSeconds,primeTimeFlag,daypart,targetAudience,impressionsGoal,cpm,creativeFormat,complianceApproved,complianceNotes,renewalOption,renewalTerms,notes,createdAt,updatedAt)
VALUES ('AsiaBroadcast','SpeedGear','FastLane','2025-03-01','2025-09-30',800000.00,'USD',180,30,1,'Prime','PerformanceEnthusiasts',15000000,53.3,'Interactive','0','Pending legal review','1','Automatic yearly','Awaiting approval','2025-03-01','2025-03-01');

-- Venue energy storage inventory
CREATE TABLE venue_energy_storage_inventory (
    storageId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    storageType TEXT,
    capacityKwh REAL,
    currentChargeKwh REAL,
    manufacturer TEXT,
    model TEXT,
    installationDate DATE,
    warrantyEndDate DATE,
    locationDescription TEXT,
    status TEXT,
    lastInspectionDate DATE,
    efficiencyPercent REAL,
    thermalManagement TEXT,
    safetyCertifications TEXT,
    maintenanceSchedule TEXT,
    operationalNotes TEXT,
    depreciationRate REAL,
    salvageValue REAL,
    currency TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    FOREIGN KEY (venueId) REFERENCES races(raceId) -- assuming venue linked to race
);

INSERT INTO venue_energy_storage_inventory (venueId,storageType,capacityKwh,currentChargeKwh,manufacturer,model,installationDate,warrantyEndDate,locationDescription,status,lastInspectionDate,efficiencyPercent,thermalManagement,safetyCertifications,maintenanceSchedule,operationalNotes,depreciationRate,salvageValue,currency,createdAt,updatedAt)
VALUES (1,'Battery','500','250','Tesla','PowerPack','2020-06-01','2025-06-01','NorthWing','Active','2025-01-15',92.5,'LiquidCooling','UL,CE','Quarterly','Running smoothly',10.0,5000.00,'USD','2025-01-01','2025-01-01');

INSERT INTO venue_energy_storage_inventory (venueId,storageType,capacityKwh,currentChargeKwh,manufacturer,model,installationDate,warrantyEndDate,locationDescription,status,lastInspectionDate,efficiencyPercent,thermalManagement,safetyCertifications,maintenanceSchedule,operationalNotes,depreciationRate,salvageValue,currency,createdAt,updatedAt)
VALUES (2,'Flywheel','300','150','Siemens','FlyMax','2021-03-15','2026-03-15','SouthWing','Active','2025-02-10',88.0,'AirCooled','ISO9001','Biannual','Stable operation',8.0,3000.00,'EUR','2025-02-01','2025-02-01');

INSERT INTO venue_energy_storage_inventory (venueId,storageType,capacityKwh,currentChargeKwh,manufacturer,model,installationDate,warrantyEndDate,locationDescription,status,lastInspectionDate,efficiencyPercent,thermalManagement,safetyCertifications,maintenanceSchedule,operationalNotes,depreciationRate,salvageValue,currency,createdAt,updatedAt)
VALUES (3,'Battery','800','600','LG','ChemRes','2019-11-20','2024-11-20','EastWing','UnderMaintenance','2025-03-05',90.0,'Passive','UL','Quarterly','Requires firmware update',12.0,7000.00,'USD','2025-03-01','2025-03-01');

-- Team aerodynamics analysis results
CREATE TABLE team_aerodynamics_analysis_results (
    analysisId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    raceId INTEGER,
    analystName TEXT,
    analysisDate DATE,
    windTunnelSpeedKmh REAL,
    dragCoefficient REAL,
    downforceNewton REAL,
    liftCoefficient REAL,
    frontWingAngleDeg REAL,
    rearWingAngleDeg REAL,
    diffuserAngleDeg REAL,
    sidepodDesign TEXT,
    vortexGeneratorFlag INTEGER,
    simulationSoftware TEXT,
    meshDensity INTEGER,
    cpuHoursUsed REAL,
    resultFilePath TEXT,
    recommendations TEXT,
    validationStatus TEXT,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    FOREIGN KEY (teamId) REFERENCES constructors(constructorId),
    FOREIGN KEY (raceId) REFERENCES races(raceId)
);

INSERT INTO team_aerodynamics_analysis_results (teamId,raceId,analystName,analysisDate,windTunnelSpeedKmh,dragCoefficient,downforceNewton,liftCoefficient,frontWingAngleDeg,rearWingAngleDeg,diffuserAngleDeg,sidepodDesign,vortexGeneratorFlag,simulationSoftware,meshDensity,cpuHoursUsed,resultFilePath,recommendations,validationStatus,notes,createdAt,updatedAt)
VALUES (1,1,'AliceSmith','2025-03-05',200.0,0.30,3500.0,0.05,12.5,15.0,5.0,'Slim',1,'ANSYS',2000000,150.0,'/results/analysis1.dat','Adjust rear wing angle','Validated','Initial run','2025-03-05','2025-03-05');

INSERT INTO team_aerodynamics_analysis_results (teamId,raceId,analystName,analysisDate,windTunnelSpeedKmh,dragCoefficient,downforceNewton,liftCoefficient,frontWingAngleDeg,rearWingAngleDeg,diffuserAngleDeg,sidepodDesign,vortexGeneratorFlag,simulationSoftware,meshDensity,cpuHoursUsed,resultFilePath,recommendations,validationStatus,notes,createdAt,updatedAt)
VALUES (2,2,'BobJones','2025-04-10',210.0,0.28,3700.0,0.04,13.0,14.5,5.5,'Wide',0,'OpenFOAM',2500000,180.0,'/results/analysis2.dat','Increase front wing angle','Pending','Second iteration','2025-04-10','2025-04-10');

INSERT INTO team_aerodynamics_analysis_results (teamId,raceId,analystName,analysisDate,windTunnelSpeedKmh,dragCoefficient,downforceNewton,liftCoefficient,frontWingAngleDeg,rearWingAngleDeg,diffuserAngleDeg,sidepodDesign,vortexGeneratorFlag,simulationSoftware,meshDensity,cpuHoursUsed,resultFilePath,recommendations,validationStatus,notes,createdAt,updatedAt)
VALUES (3,3,'CarolLee','2025-05-20',205.0,0.32,3400.0,0.06,12.0,16.0,4.8,'Curved',1,'StarCCM+',2200000,160.0,'/results/analysis3.dat','Reduce drag by smoothing surfaces','Validated','Final model','2025-05-20','2025-05-20');