-- Advertising Campaigns
CREATE TABLE advertising_campaigns
(
    campaignId INTEGER PRIMARY KEY AUTOINCREMENT,
    campaignName TEXT NOT NULL,
    startDate DATE,
    endDate DATE,
    budgetUSD REAL,
    targetAudience TEXT,
    mediaChannels TEXT,
    impressionsGoal INTEGER,
    clicksGoal INTEGER,
    conversionsGoal INTEGER,
    cpc REAL,
    cpm REAL,
    creativeType TEXT,
    adFormat TEXT,
    platform TEXT,
    geographicRegion TEXT,
    language TEXT,
    status TEXT,
    createdBy TEXT,
    createdAt DATE,
    updatedAt DATE,
    notes TEXT
);

INSERT INTO advertising_campaigns (campaignName,startDate,endDate,budgetUSD,targetAudience,mediaChannels,impressionsGoal,clicksGoal,conversionsGoal,cpc,cpm,creativeType,adFormat,platform,geographicRegion,language,status,createdBy,createdAt,updatedAt,notes) VALUES ('GlobalLaunch','2025-01-01','2025-12-31',1500000,'MotorsportFans','TV,Online','5000000',120000,5000,0.75,12.5,'Video','FullScreen','YouTube','Europe','English','Active','MarketingTeam','2024-11-01','2024-11-01','First year campaign');
INSERT INTO advertising_campaigns (campaignName,startDate,endDate,budgetUSD,targetAudience,mediaChannels,impressionsGoal,clicksGoal,conversionsGoal,cpc,cpm,creativeType,adFormat,platform,geographicRegion,language,status,createdBy,createdAt,updatedAt,notes) VALUES ('SummerPromo','2025-06-01','2025-08-31',300000,'YoungAdults','SocialMedia','2000000',50000,2500,0.60,8.0,'Image','Banner','Facebook','NorthAmerica','English','Planned','CreativeAgency','2024-12-15','2024-12-15','Seasonal promotion');
INSERT INTO advertising_campaigns (campaignName,startDate,endDate,budgetUSD,targetAudience,mediaChannels,impressionsGoal,clicksGoal,conversionsGoal,cpc,cpm,creativeType,adFormat,platform,geographicRegion,language,status,createdBy,createdAt,updatedAt,notes) VALUES ('TechPartner','2025-03-15','2025-09-15',750000,'TechEnthusiasts','Online','3500000',80000,3500,0.68,10.2,'Animated','Video','Twitter','Asia','English','Active','PartnerRelations','2025-01-10','2025-01-10','Co‑branding with tech sponsor');

-- Venue Maintenance Staff
CREATE TABLE venue_maintenance_staff
(
    staffId INTEGER PRIMARY KEY AUTOINCREMENT,
    firstName TEXT,
    lastName TEXT,
    hireDate DATE,
    role TEXT,
    shiftStart TIME,
    shiftEnd TIME,
    certificationLevel TEXT,
    phone TEXT,
    email TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zipCode TEXT,
    supervisorId INTEGER,
    employmentStatus TEXT,
    lastTrainingDate DATE,
    totalHoursWorked INTEGER,
    specialty TEXT,
    assignedVenueId INTEGER,
    notes TEXT
);

INSERT INTO venue_maintenance_staff (firstName,lastName,hireDate,role,shiftStart,shiftEnd,certificationLevel,phone,email,address,city,state,zipCode,supervisorId,employmentStatus,lastTrainingDate,totalHoursWorked,specialty,assignedVenueId,notes) VALUES ('Maria','Gonzalez','2020-04-15','Electrical Technician','07:00','15:00','Level2','5551234567','maria.gonzalez@example.com','123 Main St','Monaco','Monaco','98000',3,'FullTime','2024-10-01',9200,'Power Systems',1,'Key member of electrical crew');
INSERT INTO venue_maintenance_staff (firstName,lastName,hireDate,role,shiftStart,shiftEnd,certificationLevel,phone,email,address,city,state,zipCode,supervisorId,employmentStatus,lastTrainingDate,totalHoursWorked,specialty,assignedVenueId,notes) VALUES ('Liam','O\'Connor','2018-09-30','Mechanical Engineer','08:00','16:00','Level3','5559876543','liam.oconnor@example.com','45 Circuit Rd','Silverstone','UK','NN12 5DP',5,'FullTime','2024-09-15',14500,'Hydraulics',2,'Leads pit lane equipment maintenance');
INSERT INTO venue_maintenance_staff (firstName,lastName,hireDate,role,shiftStart,shiftEnd,certificationLevel,phone,email,address,city,state,zipCode,supervisorId,employmentStatus,lastTrainingDate,totalHoursWorked,specialty,assignedVenueId,notes) VALUES ('Sofia','Rossi','2022-01-20','Facilities Manager','06:00','14:00','Level4','5552223344','sofia.rossi@example.com','78 Grand Prix Ave','Monza','IT','20900',2,'FullTime','2024-08-20',4800,'Venue Operations',3,'Coordinates multi‑site maintenance');

-- Broadcast Partner Contracts
CREATE TABLE broadcast_partner_contracts
(
    contractId INTEGER PRIMARY KEY AUTOINCREMENT,
    partnerName TEXT,
    contractStart DATE,
    contractEnd DATE,
    channel TEXT,
    rightsScope TEXT,
    financialTerms TEXT,
    paymentSchedule TEXT,
    renewalOption TEXT,
    exclusivityFlag TEXT,
    contactPerson TEXT,
    contactEmail TEXT,
    contactPhone TEXT,
    contractStatus TEXT,
    createdDate DATE,
    modifiedDate DATE,
    notes TEXT,
    agreementFilePath TEXT,
    complianceRequirements TEXT,
    terminationClause TEXT,
    disputeResolution TEXT
);

INSERT INTO broadcast_partner_contracts (partnerName,contractStart,contractEnd,channel,rightsScope,financialTerms,paymentSchedule,renewalOption,exclusivityFlag,contactPerson,contactEmail,contactPhone,contractStatus,createdDate,modifiedDate,notes,agreementFilePath,complianceRequirements,terminationClause,disputeResolution) VALUES ('GlobalSportsNetwork','2024-01-01','2026-12-31','ChannelA','FullLive','USD5M','Quarterly','Auto','Yes','John Doe','john.doe@gsn.com','5551112222','Active','2023-12-01','2024-01-15','Primary broadcast partner','/contracts/gsn_2024.pdf','GDPR,LocalRegulations','30DayNotice','Arbitration');
INSERT INTO broadcast_partner_contracts (partnerName,contractStart,contractEnd,channel,rightsScope,financialTerms,paymentSchedule,renewalOption,exclusivityFlag,contactPerson,contactEmail,contactPhone,contractStatus,createdDate,modifiedDate,notes,agreementFilePath,complianceRequirements,terminationClause,disputeResolution) VALUES ('StreamLive','2025-03-01','2027-02-28','OnlineStream','HighlightsOnly','USD1.2M','SemiAnnual','Optional','No','Emily Smith','emily.smith@streamlive.com','5553334444','Pending','2024-11-20','2024-11-20','Digital streaming rights','/contracts/streamlive_2025.pdf','ISO27001','TerminationForCause','Mediation');
INSERT INTO broadcast_partner_contracts (partnerName,contractStart,contractEnd,channel,rightsScope,financialTerms,paymentSchedule,renewalOption,exclusivityFlag,contactPerson,contactEmail,contactPhone,contractStatus,createdDate,modifiedDate,notes,agreementFilePath,complianceRequirements,terminationClause,disputeResolution) VALUES ('RegionalTV','2023-06-01','2024-05-31','ChannelB','TerritorySpecific','USD800K','Monthly','Auto','Yes','Carlos Ruiz','carlos.ruiz@regionaltv.com','5557778888','Expired','2022-12-10','2024-06-01','Coverage for South America','/contracts/regionaltv_2023.pdf','LocalBroadcastLaw','30DayNotice','Arbitration');

-- Fan Loyalty Analytics
CREATE TABLE fan_loyalty_analytics
(
    analyticsId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    seasonYear INTEGER,
    totalPointsEarned INTEGER,
    tierLevel TEXT,
    eventsAttended INTEGER,
    merchandisePurchases INTEGER,
    averageSpendPerEvent REAL,
    referralCount INTEGER,
    socialMediaEngagementScore REAL,
    appUsageHours REAL,
    feedbackScore REAL,
    lastActivityDate DATE,
    churnRiskScore REAL,
    promotionalOffersRedeemed INTEGER,
    emailOpenRate REAL,
    smsClickThroughRate REAL,
    loyaltyProgramJoinedDate DATE,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE
);

INSERT INTO fan_loyalty_analytics (fanId,seasonYear,totalPointsEarned,tierLevel,eventsAttended,merchandisePurchases,averageSpendPerEvent,referralCount,socialMediaEngagementScore,appUsageHours,feedbackScore,lastActivityDate,churnRiskScore,promotionalOffersRedeemed,emailOpenRate,smsClickThroughRate,loyaltyProgramJoinedDate,notes,createdAt,updatedAt) VALUES (1001,2025,4520,'Gold',12,5,78.5,3,85.2,42.1,9.4,'2025-09-20',0.12,8,0.68,0.25,'2022-04-15','High engagement fan','2025-01-01','2025-09-21');
INSERT INTO fan_loyalty_analytics (fanId,seasonYear,totalPointsEarned,tierLevel,eventsAttended,merchandisePurchases,averageSpendPerEvent,referralCount,socialMediaEngagementScore,appUsageHours,feedbackScore,lastActivityDate,churnRiskScore,promotionalOffersRedeemed,emailOpenRate,smsClickThroughRate,loyaltyProgramJoinedDate,notes,createdAt,updatedAt) VALUES (1002,2025,2100,'Silver',6,2,45.0,1,60.5,18.3,7.2,'2025-09-15',0.35,3,0.55,0.12,'2023-01-10','Mid tier fan','2025-01-01','2025-09-16');
INSERT INTO fan_loyalty_analytics (fanId,seasonYear,totalPointsEarned,tierLevel,eventsAttended,merchandisePurchases,averageSpendPerEvent,referralCount,socialMediaEngagementScore,appUsageHours,feedbackScore,lastActivityDate,churnRiskScore,promotionalOffersRedeemed,emailOpenRate,smsClickThroughRate,loyaltyProgramJoinedDate,notes,createdAt,updatedAt) VALUES (1003,2025,800,'Bronze',2,0,0.0,0,30.0,5.0,6.5,'2025-09-10',0.70,0,0.40,0.05,'2024-07-22','New fan, low activity','2025-01-01','2025-09-11');

-- Renewable Energy Sources
CREATE TABLE renewable_energy_sources
(
    sourceId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    sourceType TEXT,
    capacityMW REAL,
    installationDate DATE,
    manufacturer TEXT,
    model TEXT,
    operationalStatus TEXT,
    maintenanceSchedule TEXT,
    lastInspectionDate DATE,
    carbonOffsetTons REAL,
    costUSD REAL,
    fundingSource TEXT,
    contractLengthYears INTEGER,
    renewableCertificateNumber TEXT,
    notes TEXT,
    latitude REAL,
    longitude REAL,
    createdAt DATE,
    updatedAt DATE
);

INSERT INTO renewable_energy_sources (venueId,sourceType,capacityMW,installationDate,manufacturer,model,operationalStatus,maintenanceSchedule,lastInspectionDate,carbonOffsetTons,costUSD,fundingSource,contractLengthYears,renewableCertificateNumber,notes,latitude,longitude,createdAt,updatedAt) VALUES (1,'Solar','3.5','2023-05-10','SunPower','SPX-350','Active','Annual','2024-04-20','12.5','2500000','GovernmentGrant','20','RC12345','Northwest solar array','43.7306','7.4210','2024-01-01','2024-01-01');
INSERT INTO renewable_energy_sources (venueId,sourceType,capacityMW,installationDate,manufacturer,model,operationalStatus,maintenanceSchedule,lastInspectionDate,carbonOffsetTons,costUSD,fundingSource,contractLengthYears,renewableCertificateNumber,notes,latitude,longitude,createdAt,updatedAt) VALUES (2,'Wind','5.0','2022-09-15','Vestas','V110','Active','SemiAnnual','2024-03-12','20.0','4000000','PrivateInvestment','15','RC67890','East wind turbines','48.8566','2.3522','2023-06-01','2023-06-01');
INSERT INTO renewable_energy_sources (venueId,sourceType,capacityMW,installationDate,manufacturer,model,operationalStatus,maintenanceSchedule,lastInspectionDate,carbonOffsetTons,costUSD,fundingSource,contractLengthYears,renewableCertificateNumber,notes,latitude,longitude,createdAt,updatedAt) VALUES (3,'Geothermal','2.8','2021-11-01','Geotherm','GT-28','Active','Quarterly','2024-02-28','18.3','3500000','Mixed','10','RC54321','Southern geothermal plant','35.6895','139.6917','2022-01-15','2022-01-15');

-- Transportation Fleet Maintenance
CREATE TABLE transportation_fleet_maintenance
(
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    vehicleId TEXT,
    fleetId TEXT,
    maintenanceType TEXT,
    scheduledDate DATE,
    actualDate DATE,
    odometerReading INTEGER,
    serviceProvider TEXT,
    costUSD REAL,
    partsReplaced TEXT,
    laborHours REAL,
    nextDueDate DATE,
    mileageDue INTEGER,
    status TEXT,
    notes TEXT,
    createdBy TEXT,
    createdAt DATE,
    updatedAt DATE,
    fuelEfficiency REAL,
    vehicleType TEXT,
    registrationNumber TEXT
);

INSERT INTO transportation_fleet_maintenance (vehicleId,fleetId,maintenanceType,scheduledDate,actualDate,odometerReading,serviceProvider,costUSD,partsReplaced,laborHours,nextDueDate,mileageDue,status,notes,createdBy,createdAt,updatedAt,fuelEfficiency,vehicleType,registrationNumber) VALUES ('V001','FLEETA','EngineCheck','2025-03-01','2025-03-02',125000,'AutoCare','1500','OilFilter,AirFilter',3.5,'2025-09-01',130000,'Completed','Routine engine maintenance','FleetManager','2025-02-20','2025-03-02','12.5','Truck','REG1234');
INSERT INTO transportation_fleet_maintenance (vehicleId,fleetId,maintenanceType,scheduledDate,actualDate,odometerReading,serviceProvider,costUSD,partsReplaced,laborHours,nextDueDate,mileageDue,status,notes,createdBy,createdAt,updatedAt,fuelEfficiency,vehicleType,registrationNumber) VALUES ('V002','FLEETB','BrakeService','2025-04-10','2025-04-11',80000,'BrakeMasters','950','BrakePads,Rotors',2.8,'2025-10-10',85000','Completed','Brake pad wear replacement','FleetSupervisor','2025-04-01','2025-04-11','10.2','Van','REG5678');
INSERT INTO transportation_fleet_maintenance (vehicleId,fleetId,maintenanceType,scheduledDate,actualDate,odometerReading,serviceProvider,costUSD,partsReplaced,laborHours,nextDueDate,mileageDue,status,notes,createdBy,createdAt,updatedAt,fuelEfficiency,vehicleType,registrationNumber) VALUES ('V003','FLEETA','TireRotation','2025-05-15','2025-05-15',60000,'TirePros','300','N/A',1.5,'2025-11-15',65000,'Completed','Rotated all four tires','FleetCoordinator','2025-05-01','2025-05-15','13.0','Sedan','REG9012');

-- Digital Content Distribution Channels
CREATE TABLE digital_content_distribution_channels
(
    channelId INTEGER PRIMARY KEY AUTOINCREMENT,
    platformName TEXT,
    channelUrl TEXT,
    contentType TEXT,
    region TEXT,
    language TEXT,
    uploadSchedule TEXT,
    avgViewership INTEGER,
    revenueSharePercent REAL,
    contractStart DATE,
    contractEnd DATE,
    contactPerson TEXT,
    contactEmail TEXT,
    technicalSpecs TEXT,
    complianceStatus TEXT,
    contentCategory TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    activeFlag TEXT
);

INSERT INTO digital_content_distribution_channels (platformName,channelUrl,contentType,region,language,uploadSchedule,avgViewership,revenueSharePercent,contractStart,contractEnd,contactPerson,contactEmail,technicalSpecs,complianceStatus,contentCategory,notes,createdAt,updatedAt,activeFlag) VALUES ('YouTube','https://youtube.com/officialgp','Video','Global','English','Weekly','2500000','45','2024-01-01','2026-12-31','Anna Lee','anna.lee@example.com','HD1080p','Compliant','RaceHighlights','Main video platform','2024-01-01','2024-01-01','Yes');
INSERT INTO digital_content_distribution_channels (platformName,channelUrl,contentType,region,language,uploadSchedule,avgViewership,revenueSharePercent,contractStart,contractEnd,contactPerson,contactEmail,technicalSpecs,complianceStatus,contentCategory,notes,createdAt,updatedAt,activeFlag) VALUES ('Twitch','https://twitch.tv/officialgp','LiveStream','NorthAmerica','English','Daily','800000','55','2025-02-01','2027-01-31','Mark Chen','mark.chen@example.com','1080p60fps','Compliant','LiveStreaming','Streaming live sessions','2025-01-15','2025-01-15','Yes');
INSERT INTO digital_content_distribution_channels (platformName,channelUrl,contentType,region,language,uploadSchedule,avgViewership,revenueSharePercent,contractStart,contractEnd,contactPerson,contactEmail,technicalSpecs,complianceStatus,contentCategory,notes,createdAt,updatedAt,activeFlag) VALUES ('Instagram','https://instagram.com/officialgp','ShortClips','Europe','English','BiWeekly','500000','40','2024-06-01','2025-05-31','Laura Smith','laura.smith@example.com','Vertical9:16','Compliant','SocialMedia','Short behind‑the‑scenes clips','2024-06-01','2024-06-01','Yes');

-- Circuit Artifact Registry
CREATE TABLE circuit_artifact_registry
(
    artifactId INTEGER PRIMARY KEY AUTOINCREMENT,
    artifactName TEXT,
    acquisitionDate DATE,
    originCountry TEXT,
    historicalPeriod TEXT,
    description TEXT,
    locationWithinCircuit TEXT,
    condition TEXT,
    curatorName TEXT,
    valuationUSD REAL,
    insurancePolicyNumber TEXT,
    displayStatus TEXT,
    lastRestorationDate DATE,
    nextRestorationDue DATE,
    provenanceDocument TEXT,
    dimensions TEXT,
    weightKg REAL,
    imageFilePath TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE
);

INSERT INTO circuit_artifact_registry (artifactName,acquisitionDate,originCountry,historicalPeriod,description,locationWithinCircuit,condition,curatorName,valuationUSD,insurancePolicyNumber,displayStatus,lastRestorationDate,nextRestorationDue,provenanceDocument,dimensions,weightKg,imageFilePath,notes,createdAt,updatedAt) VALUES ('VintageSteeringWheel','2010-03-20','Italy','1990s','Original steering wheel from 1995 champion car','PitLaneMuseum','Excellent','Marco Bianchi','12000','INS1001','OnDisplay','2022-02-10','2025-02-10','Doc123','120x30x20cm','8.5','/images/steering_wheel.jpg','Restored in 2022','2024-01-01','2024-01-01');
INSERT INTO circuit_artifact_registry (artifactName,acquisitionDate,originCountry,historicalPeriod,description,locationWithinCircuit,condition,curatorName,valuationUSD,insurancePolicyNumber,displayStatus,lastRestorationDate,nextRestorationDue,provenanceDocument,dimensions,weightKg,imageFilePath,notes,createdAt,updatedAt) VALUES ('ChampionshipTrophy1998','2005-07-15','Germany','1990s','Trophy awarded to 1998 champion','MainHall','Good','Stefan Krause','25000','INS2002','OnDisplay','2021-11-05','2024-11-05','Doc456','30x30x75cm','5.2','/images/trophy_1998.jpg','Displayed during seasons','2023-06-01','2023-06-01');
INSERT INTO circuit_artifact_registry (artifactName,acquisitionDate,originCountry,historicalPeriod,description,locationWithinCircuit,condition,curatorName,valuationUSD,insurancePolicyNumber,displayStatus,lastRestorationDate,nextRestorationDue,provenanceDocument,dimensions,weightKg,imageFilePath,notes,createdAt,updatedAt) VALUES ('HistoricFlag','2012-11-02','France','2000s','Flag from 2004 race','FlagPavilion','Fair','Claire Dubois','3000','INS3003','Stored','2020-08-20','2023-08-20','Doc789','180x120cm','2.0','/images/historic_flag.jpg','Requires climate control','2022-09-15','2022-09-15');

-- Race Emergency Response Units
CREATE TABLE race_emergency_response_units
(
    unitId INTEGER PRIMARY KEY AUTOINCREMENT,
    unitType TEXT,
    stationLocation TEXT,
    headOfficer TEXT,
    phoneNumber TEXT,
    capacity INTEGER,
    equipmentList TEXT,
    responseTimeTargetSec INTEGER,
    lastTrainingDate DATE,
    certificationLevel TEXT,
    activationStatus TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    jurisdictionArea TEXT,
    shiftPattern TEXT,
    vehicleCount INTEGER,
    fuelCapacityL REAL,
    communicationChannel TEXT,
    operationalStatus TEXT
);

INSERT INTO race_emergency_response_units (unitType,stationLocation,headOfficer,phoneNumber,capacity,equipmentList,responseTimeTargetSec,lastTrainingDate,certificationLevel,activationStatus,notes,createdAt,updatedAt,jurisdictionArea,shiftPattern,vehicleCount,fuelCapacityL,communicationChannel,operationalStatus) VALUES ('MedicalTeam','SectorA','Dr Helen Mills','5559001111',5,'Defibrillator,TraumaKit',90,'2024-09-01','Level2','OnStandby','Primary medical response unit','2024-01-10','2024-01-10','NorthSector','24/7','3','350','Radio','Active');
INSERT INTO race_emergency_response_units (unitType,stationLocation,headOfficer,phoneNumber,capacity,equipmentList,responseTimeTargetSec,lastTrainingDate,certificationLevel,activationStatus,notes,createdAt,updatedAt,jurisdictionArea,shiftPattern,vehicleCount,fuelCapacityL,communicationChannel,operationalStatus) VALUES ('FireUnit','SectorB','Captain Luis Ortega','5559002222',8,'FireExtinguishers,RescueRopes',120,'2024-08-15','Level3','OnStandby','Fire suppression and rescue','2024-01-11','2024-01-11','EastSector','24/7','4','400','Radio','Active');
INSERT INTO race_emergency_response_units (unitType,stationLocation,headOfficer,phoneNumber,capacity,equipmentList,responseTimeTargetSec,lastTrainingDate,certificationLevel,activationStatus,notes,createdAt,updatedAt,jurisdictionArea,shiftPattern,vehicleCount,fuelCapacityL,communicationChannel,operationalStatus) VALUES ('SafetyCarTeam','SectorC','Mr Marco Ferri','5559003333',2,'SafetyCar,ControlBoard',60,'2024-10-05','Level1','OnStandby','Deploys safety car during incidents','2024-01-12','2024-01-12','SouthSector','ShiftA','2','250','Radio','Active');

-- Sponsor Product Exposure Tracking
CREATE TABLE sponsor_product_exposure_tracking
(
    exposureId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    eventId INTEGER,
    productName TEXT,
    exposureDate DATE,
    location TEXT,
    audienceSize INTEGER,
    impressionCount INTEGER,
    engagementRate REAL,
    channel TEXT,
    activationType TEXT,
    costUSD REAL,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    verificationStatus TEXT,
    mediaAssetUrl TEXT,
    feedbackScore REAL,
    leadCount INTEGER,
    salesLiftPercentage REAL,
    region TEXT,
    targetDemographic TEXT
);

INSERT INTO sponsor_product_exposure_tracking (sponsorId,eventId,productName,exposureDate,location,audienceSize,impressionCount,engagementRate,channel,activationType,costUSD,notes,createdAt,updatedAt,verificationStatus,mediaAssetUrl,feedbackScore,leadCount,salesLiftPercentage,region,targetDemographic) VALUES (201,301,'EnergyDrinkX','2025-04-12','PitLane','15000','300000',0.12,'LEDBanner','Sampling','50000','Product sampling at pit lane','2025-01-05','2025-04-13','Verified','/media/energydrinkx.jpg',8.5,120,5.2,'Europe','YoungAdults');
INSERT INTO sponsor_product_exposure_tracking (sponsorId,eventId,productName,exposureDate,location,audienceSize,impressionCount,engagementRate,channel,activationType,costUSD,notes,createdAt,updatedAt,verificationStatus,mediaAssetUrl,feedbackScore,leadCount,salesLiftPercentage,region,targetDemographic) VALUES (202,302,'SmartWatchPro','2025-05-20','FanZone','20000','500000',0.15,'InteractiveKiosk','Demo','75000','Hands‑on demo of smartwatch','2025-02-01','2025-05-21','Verified','/media/smartwatchpro.jpg',9.1,250,7.8','NorthAmerica','TechSavvy');
INSERT INTO sponsor_product_exposure_tracking (sponsorId,eventId,productName,exposureDate,location,audienceSize,impressionCount,engagementRate,channel,activationType,costUSD,notes,createdAt,updatedAt,verificationStatus,mediaAssetUrl,feedbackScore,leadCount,salesLiftPercentage,region,targetDemographic) VALUES (203,303,'LuxuryCarZ','2025-06-08','Grandstand','18000','400000',0.10,'Billboard','Display','120000','High‑visibility billboard near grandstand','2025-03-10','2025-06-09','Pending','/media/luxurycarz.jpg',7.4,80,4.3','Asia','AffluentAdults');