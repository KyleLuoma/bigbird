-- Table: circuit_accessibility_features
CREATE TABLE circuit_accessibility_features (
    featureId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    featureName TEXT,
    description TEXT,
    wheelchairAccess INTEGER,
    hearingAidSupport INTEGER,
    brailleSignage INTEGER,
    rampSlope REAL,
    maxIncline REAL,
    seatingCapacity INTEGER,
    nearbyTransport TEXT,
    emergencyExitProximity INTEGER,
    lastInspectionDate DATE,
    inspectionStatus TEXT,
    complianceLevel TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    isActive INTEGER,
    maintenanceSchedule TEXT,
    responsibleDept TEXT,
    budgetAllocated REAL
);

INSERT INTO circuit_accessibility_features (circuitId,featureName,description,wheelchairAccess,hearingAidSupport,brailleSignage,rampSlope,maxIncline,seatingCapacity,nearbyTransport,emergencyExitProximity,lastInspectionDate,inspectionStatus,complianceLevel,notes,createdAt,updatedAt,isActive,maintenanceSchedule,responsibleDept,budgetAllocated) VALUES (1,'RampAccess','Standard ramp at main entrance',1,0,0,5.0,3.5,5000,'ShuttleBus',150,'2023-06-15','Passed','LevelA','Initial install', '2023-01-01','2023-06-20',1,'Quarterly','Facilities',25000.00);
INSERT INTO circuit_accessibility_features (circuitId,featureName,description,wheelchairAccess,hearingAidSupport,brailleSignage,rampSlope,maxIncline,seatingCapacity,nearbyTransport,emergencyExitProximity,lastInspectionDate,inspectionStatus,complianceLevel,notes,createdAt,updatedAt,isActive,maintenanceSchedule,responsibleDept,budgetAllocated) VALUES (2,'HearingAssistance','Loop system in grandstand',0,1,0,0.0,0.0,3000,'MetroLine',200,'2023-07-10','Passed','LevelB','Upgraded system', '2023-02-15','2023-07-12',1,'Annual','AudioTeam',15000.00);
INSERT INTO circuit_accessibility_features (circuitId,featureName,description,wheelchairAccess,hearingAidSupport,brailleSignage,rampSlope,maxIncline,seatingCapacity,nearbyTransport,emergencyExitProximity,lastInspectionDate,inspectionStatus,complianceLevel,notes,createdAt,updatedAt,isActive,maintenanceSchedule,responsibleDept,budgetAllocated) VALUES (3,'BrailleSignage','Braille signs in pit lane',0,0,1,0.0,0.0,2000,'TaxiStand',100,'2023-05-05','Passed','LevelA','Added new signs','2023-03-10','2023-05-07',1,'BiAnnual','SignageDept',12000.00);

-- Table: driver_legacy_awards
CREATE TABLE driver_legacy_awards (
    awardId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    awardName TEXT,
    yearAwarded INTEGER,
    category TEXT,
    awardingBody TEXT,
    ceremonyLocation TEXT,
    prizeMoney REAL,
    description TEXT,
    isLifetime INTEGER,
    presentedBy TEXT,
    mediaLink TEXT,
    createdAt DATE,
    updatedAt DATE,
    remarks TEXT,
    awardStatus TEXT,
    sponsorName TEXT,
    sponsorValue REAL,
    eligibilityCriteria TEXT,
    votingMethod TEXT,
    awardRank INTEGER
);

INSERT INTO driver_legacy_awards (driverId,awardName,yearAwarded,category,awardingBody,ceremonyLocation,prizeMoney,description,isLifetime,presentedBy,mediaLink,createdAt,updatedAt,remarks,awardStatus,sponsorName,sponsorValue,eligibilityCriteria,votingMethod,awardRank) VALUES (10,'GrandMasterAward','2022','Lifetime','FIA','Monaco',500000,'Award for outstanding career',1,'JeanPierre','http://media.example.com/gma2022','2022-11-01','2022-11-02','None','Approved','GlobalMotors',100000,'All active drivers','Committee',1);
INSERT INTO driver_legacy_awards (driverId,awardName,yearAwarded,category,awardingBody,ceremonyLocation,prizeMoney,description,isLifetime,presentedBy,mediaLink,createdAt,updatedAt,remarks,awardStatus,sponsorName,sponsorValue,eligibilityCriteria,votingMethod,awardRank) VALUES (12,'RisingStarAward','2023','Performance','MotorsportGuild','London',75000,'Best newcomer of season',0,'SarahLee','http://media.example.com/rsa2023','2023-10-15','2023-10-16','Nominee','Pending','SpeedGear',25000,'Drivers with <2 seasons','FanVote',2);
INSERT INTO driver_legacy_awards (driverId,awardName,yearAwarded,category,awardingBody,ceremonyLocation,prizeMoney,description,isLifetime,presentedBy,mediaLink,createdAt,updatedAt,remarks,awardStatus,sponsorName,sponsorValue,eligibilityCriteria,votingMethod,awardRank) VALUES (14,'SafetyChampion','2021','Safety','RaceSafetyOrg','Berlin',30000,'Promoting safety standards',0,'MichaelK','http://media.example.com/sc2021','2021-09-05','2021-09-06','Accepted','Approved','SafeDrive',15000,'All drivers','Panel',3);

-- Table: constructor_partnerships
CREATE TABLE constructor_partnerships (
    partnershipId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER,
    partnerCompany TEXT,
    partnershipType TEXT,
    startDate DATE,
    endDate DATE,
    contractValue REAL,
    region TEXT,
    isExclusive INTEGER,
    renewalOption TEXT,
    terminationClause TEXT,
    jointProjects TEXT,
    marketingScope TEXT,
    brandingRights TEXT,
    revenueSharePercent REAL,
    createdAt DATE,
    updatedAt DATE,
    activeFlag INTEGER,
    notes TEXT,
    complianceStatus TEXT,
    governanceModel TEXT,
    liaisonContact TEXT
);

INSERT INTO constructor_partnerships (constructorId,partnerCompany,partnershipType,startDate,endDate,contractValue,region,isExclusive,renewalOption,terminationClause,jointProjects,marketingScope,brandingRights,revenueSharePercent,createdAt,updatedAt,activeFlag,notes,complianceStatus,governanceModel,liaisonContact) VALUES (5,'TechFuel','EngineSupply','2020-01-01','2025-12-31',20000000,'Europe',1,'Auto','30dayNotice','ProjectA|ProjectB','Global','Full','15.5','2020-01-01','2024-02-10',1,'Strategic partner','Compliant','JointCommittee','AnnaMiller');
INSERT INTO constructor_partnerships (constructorId,partnerCompany,partnershipType,startDate,endDate,contractValue,region,isExclusive,renewalOption,terminationClause,jointProjects,marketingScope,brandingRights,revenueSharePercent,createdAt,updatedAt,activeFlag,notes,complianceStatus,governanceModel,liaisonContact) VALUES (8,'AeroDesign','Aerodynamics','2021-06-15','2024-06-14',12000000,'Asia',0,'Optional','60dayNotice','WindTunnelStudy','Regional','Partial','10.0','2021-06-15','2023-11-20',1,'Co-development','Compliant','AdvisoryBoard','LuisGonzalez');
INSERT INTO constructor_partnerships (constructorId,partnerCompany,partnershipType,startDate,endDate,contractValue,region,isExclusive,renewalOption,terminationClause,jointProjects,marketingScope,brandingRights,revenueSharePercent,createdAt,updatedAt,activeFlag,notes,complianceStatus,governanceModel,liaisonContact) VALUES (3,'EcoTires','TyreSupply','2019-03-01','2023-02-28',8000000,'NorthAmerica',0,'Auto','90dayNotice','DurabilityTest','Continental','Limited','12.5','2019-03-01','2022-09-05',0,'Ended by mutual consent','Compliant','Board','KarenSmith');

-- Table: race_communication_logs
CREATE TABLE race_communication_logs (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    timestamp DATETIME,
    channel TEXT,
    message TEXT,
    senderId INTEGER,
    receiverId INTEGER,
    priorityLevel INTEGER,
    messageStatus TEXT,
    acknowledgment INTEGER,
    retryCount INTEGER,
    encryptionUsed TEXT,
    transmissionMethod TEXT,
    latencyMs INTEGER,
    bandwidthKbps REAL,
    errorCode INTEGER,
    errorDescription TEXT,
    protocolVersion TEXT,
    correlationId TEXT,
    attachedFileName TEXT,
    fileSizeBytes INTEGER,
    notes TEXT
);

INSERT INTO race_communication_logs (raceId,timestamp,channel,message,senderId,receiverId,priorityLevel,messageStatus,acknowledgment,retryCount,encryptionUsed,transmissionMethod,latencyMs,bandwidthKbps,errorCode,errorDescription,protocolVersion,correlationId,attachedFileName,fileSizeBytes,notes) VALUES (101,'2024-03-01 14:05:00','Radio','Pit lane clear',201,301,1,'Sent',1,0,'AES256','WiFi',15,500.0,0,'','1.0','corr001','trackmap.png',204800,'First transmit');
INSERT INTO race_communication_logs (raceId,timestamp,channel,message,senderId,receiverId,priorityLevel,messageStatus,acknowledgment,retryCount,encryptionUsed,transmissionMethod,latencyMs,bandwidthKbps,errorCode,errorDescription,protocolVersion,correlationId,attachedFileName,fileSizeBytes,notes) VALUES (102,'2024-04-12 10:20:30','Telemetry','Lap time update',202,302,2,'Sent',1,0,'AES256','Cellular',8,750.5,0,'','1.0','corr002','laptime.csv',102400,'Normal operation');
INSERT INTO race_communication_logs (raceId,timestamp,channel,message,senderId,receiverId,priorityLevel,messageStatus,acknowledgment,retryCount,encryptionUsed,transmissionMethod,latencyMs,bandwidthKbps,errorCode,errorDescription,protocolVersion,correlationId,attachedFileName,fileSizeBytes,notes) VALUES (103,'2024-05-20 16:45:10','Radio','Safety car deployed',203,303,1,'Sent',0,1,'AES256','Radio',25,300.0,101,'Signal loss','1.0','corr003','safetycar.jpg',51200,'Retransmit after loss');

-- Table: fan_loyalty_engagement
CREATE TABLE fan_loyalty_engagement (
    engagementId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    engagementType TEXT,
    campaignId INTEGER,
    pointsEarned INTEGER,
    pointsRedeemed INTEGER,
    engagementDate DATE,
    channel TEXT,
    location TEXT,
    activityDurationMinutes INTEGER,
    feedbackScore INTEGER,
    rewardTier TEXT,
    redeemedItem TEXT,
    voucherCode TEXT,
    isSuccessful INTEGER,
    createdAt DATE,
    updatedAt DATE,
    notes TEXT,
    managerId INTEGER,
    segment TEXT,
    loyaltyLevel TEXT
);

INSERT INTO fan_loyalty_engagement (fanId,engagementType,campaignId,pointsEarned,pointsRedeemed,engagementDate,channel,location,activityDurationMinutes,feedbackScore,rewardTier,redeemedItem,voucherCode,isSuccessful,createdAt,updatedAt,notes,managerId,segment,loyaltyLevel) VALUES (1001,'Quiz','200','150','0','2024-02-10','Web','Online',10,9,'Silver','None','QUIZ2024',1,'2024-02-10','2024-02-10','High engagement',501,'Digital','Gold');
INSERT INTO fan_loyalty_engagement (fanId,engagementType,campaignId,pointsEarned,pointsRedeemed,engagementDate,channel,location,activityDurationMinutes,feedbackScore,rewardTier,redeemedItem,voucherCode,isSuccessful,createdAt,updatedAt,notes,managerId,segment,loyaltyLevel) VALUES (1002,'RaceAttendance','201','300','150','2024-03-15','Mobile','CircuitA',180,8,'Gold','TShirt','RACE2024',1,'2024-03-15','2024-03-15','Redeemed merchandise',502,'Onsite','Platinum');
INSERT INTO fan_loyalty_engagement (fanId,engagementType,campaignId,pointsEarned,pointsRedeemed,engagementDate,channel,location,activityDurationMinutes,feedbackScore,rewardTier,redeemedItem,voucherCode,isSuccessful,createdAt,updatedAt,notes,managerId,segment,loyaltyLevel) VALUES (1003,'SocialShare','202','80','0','2024-04-05','Social','Twitter',5,10,'Bronze','None','SHARE2024',1,'2024-04-05','2024-04-05','Viral post',503,'Social','Silver');

-- Table: broadcast_advertiser_profiles
CREATE TABLE broadcast_advertiser_profiles (
    profileId INTEGER PRIMARY KEY AUTOINCREMENT,
    advertiserId INTEGER,
    companyName TEXT,
    industry TEXT,
    contactName TEXT,
    contactEmail TEXT,
    contractStart DATE,
    contractEnd DATE,
    spendAnnual REAL,
    adSlotsPurchased INTEGER,
    preferredChannels TEXT,
    creativeFormat TEXT,
    complianceScore REAL,
    brandSafetyLevel TEXT,
    audienceTarget TEXT,
    geoTargeting TEXT,
    frequencyCap INTEGER,
    viewabilityTarget REAL,
    createdAt DATE,
    updatedAt DATE,
    notes TEXT,
    isActive INTEGER
);

INSERT INTO broadcast_advertiser_profiles (advertiserId,companyName,industry,contactName,contactEmail,contractStart,contractEnd,spendAnnual,adSlotsPurchased,preferredChannels,creativeFormat,complianceScore,brandSafetyLevel,audienceTarget,geoTargeting,frequencyCap,viewabilityTarget,createdAt,updatedAt,notes,isActive) VALUES (301,'SpeedAuto','Automotive','JohnDoe','john.doe@example.com','2023-01-01','2025-12-31',5000000,1200,'TV|Online','Video30s',92.5,'High','Male18-35','Europe',3,0.85,'2023-01-01','2024-01-15','Top tier client',1);
INSERT INTO broadcast_advertiser_profiles (advertiserId,companyName,industry,contactName,contactEmail,contractStart,contractEnd,spendAnnual,adSlotsPurchased,preferredChannels,creativeFormat,complianceScore,brandSafetyLevel,audienceTarget,geoTargeting,frequencyCap,viewabilityTarget,createdAt,updatedAt,notes,isActive) VALUES (302,'TechGadgets','Electronics','JaneSmith','jane.smith@example.com','2022-06-01','2024-05-31',3000000,800,'Online','Banner',88.0,'Medium','Male25-45','NorthAmerica',2,0.78,'2022-06-01','2023-12-20','Renewal pending',1);
INSERT INTO broadcast_advertiser_profiles (advertiserId,companyName,industry,contactName,contactEmail,contractStart,contractEnd,spendAnnual,adSlotsPurchased,preferredChannels,creativeFormat,complianceScore,brandSafetyLevel,audienceTarget,geoTargeting,frequencyCap,viewabilityTarget,createdAt,updatedAt,notes,isActive) VALUES (303,'EcoEnergy','Energy','MikeBrown','mike.brown@example.com','2024-02-01','2026-01-31',2000000,500,'TV','Spot30s',95.0,'High','All','Global',1,0.90,'2024-02-01','2024-03-10','New partnership',1);

-- Table: venue_green_certifications
CREATE TABLE venue_green_certifications (
    certId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    certificationBody TEXT,
    certificationLevel TEXT,
    issueDate DATE,
    expiryDate DATE,
    criteriaMet TEXT,
    auditScore REAL,
    carbonFootprintTONS REAL,
    wasteDivertedTONS REAL,
    waterSavingsCubicMeters REAL,
    renewableEnergyPercent REAL,
    greenBuildingRating TEXT,
    complianceStatus TEXT,
    verificationDocument TEXT,
    nextAuditDate DATE,
    createdAt DATE,
    updatedAt DATE,
    notes TEXT,
    isActive INTEGER,
    programCost REAL
);

INSERT INTO venue_green_certifications (venueId,certificationBody,certificationLevel,issueDate,expiryDate,criteriaMet,auditScore,carbonFootprintTONS,wasteDivertedTONS,waterSavingsCubicMeters,renewableEnergyPercent,greenBuildingRating,complianceStatus,verificationDocument,nextAuditDate,createdAt,updatedAt,notes,isActive,programCost) VALUES (1,'GreenBuildOrg','Platinum','2023-01-15','2026-01-14','Energy|Water','98.5',1200.5,450.0,30000.0,75.0,'A+','Compliant','cert_doc_001.pdf','2025-12-20','2023-01-15','2023-01-15','Excellent results',1,500000);
INSERT INTO venue_green_certifications (venueId,certificationBody,certificationLevel,issueDate,expiryDate,criteriaMet,auditScore,carbonFootprintTONS,wasteDivertedTONS,waterSavingsCubicMeters,renewableEnergyPercent,greenBuildingRating,complianceStatus,verificationDocument,nextAuditDate,createdAt,updatedAt,notes,isActive,programCost) VALUES (2,'EcoCertify','Gold','2022-06-10','2025-06-09','Waste|Materials','92.0',1500.0,600.0,25000.0,60.0,'B','Compliant','cert_doc_002.pdf','2025-05-30','2022-06-10','2022-06-10','Met most criteria',1,350000);
INSERT INTO venue_green_certifications (venueId,certificationBody,certificationLevel,issueDate,expiryDate,criteriaMet,auditScore,carbonFootprintTONS,wasteDivertedTONS,waterSavingsCubicMeters,renewableEnergyPercent,greenBuildingRating,complianceStatus,verificationDocument,nextAuditDate,createdAt,updatedAt,notes,isActive,programCost) VALUES (3,'SustainAudit','Silver','2021-09-01','2024-08-31','Energy','85.5',1800.0,300.0,20000.0,45.0,'C','Pending','cert_doc_003.pdf','2024-08-20','2021-09-01','2021-09-01','Awaiting final approval',0,200000);

-- Table: team_innovation_hub
CREATE TABLE team_innovation_hub (
    hubId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    hubName TEXT,
    location TEXT,
    establishedDate DATE,
    focusArea TEXT,
    headOfHub TEXT,
    staffCount INTEGER,
    budgetAnnual REAL,
    projectsInPipeline INTEGER,
    patentsFiled INTEGER,
    collaborations TEXT,
    equipmentInventory TEXT,
    securityClearanceLevel TEXT,
    accessProtocol TEXT,
    dataRetentionPolicy TEXT,
    complianceStandard TEXT,
    lastAuditDate DATE,
    nextAuditPlanned DATE,
    notes TEXT,
    isActive INTEGER
);

INSERT INTO team_innovation_hub (teamId,hubName,location,establishedDate,focusArea,headOfHub,staffCount,budgetAnnual,projectsInPipeline,patentsFiled,collaborations,equipmentInventory,securityClearanceLevel,accessProtocol,dataRetentionPolicy,complianceStandard,lastAuditDate,nextAuditPlanned,notes,isActive) VALUES (7,'AeroLab','Zurich','2020-03-01','Aerodynamics','DrEmily','15',2500000,5,12,'UniversityX|SupplierY','WindTunnel|CFD','Level2','Badge','5years','ISO9001','2023-12-01','2024-12-01','Ongoing research',1);
INSERT INTO team_innovation_hub (teamId,hubName,location,establishedDate,focusArea,headOfHub,staffCount,budgetAnnual,projectsInPipeline,patentsFiled,collaborations,equipmentInventory,securityClearanceLevel,accessProtocol,dataRetentionPolicy,complianceStandard,lastAuditDate,nextAuditPlanned,notes,isActive) VALUES (9,'PowerTechCenter','Tokyo','2019-07-15','Hybrid Powertrains','MrKenji','20',3000000,8,20,'OEMPartner|TechInstitute','BatteryLab|Dyno','Level3','Biometric','3years','ISO27001','2024-02-20','2025-02-20','Expanding capabilities',1);
INSERT INTO team_innovation_hub (teamId,hubName,location,establishedDate,focusArea,headOfHub,staffCount,budgetAnnual,projectsInPipeline,patentsFiled,collaborations,equipmentInventory,securityClearanceLevel,accessProtocol,dataRetentionPolicy,complianceStandard,lastAuditDate,nextAuditPlanned,notes,isActive) VALUES (11,'DataAnalyticsHub','London','2021-01-10','Data Science','DrAlice','12',1800000,3,5,'AnalyticsFirm|UniversityZ','ServerRack|GPUCluster','Level1','Token','2years','ISO14001','2023-08-15','2024-08-15','Focus on predictive models',1);

-- Table: medical_research_trials
CREATE TABLE medical_research_trials (
    trialId INTEGER PRIMARY KEY AUTOINCREMENT,
    trialName TEXT,
    sponsorCompany TEXT,
    startDate DATE,
    endDate DATE,
    phase TEXT,
    therapeuticArea TEXT,
    enrollmentTarget INTEGER,
    enrolledCount INTEGER,
    principalInvestigator TEXT,
    siteLocation TEXT,
    protocolVersion TEXT,
    ethicalApprovalDate DATE,
    status TEXT,
    resultsSummary TEXT,
    dataAccessLevel TEXT,
    fundingAmount REAL,
    regulatoryAgency TEXT,
    contactEmail TEXT,
    notes TEXT,
    isActive INTEGER
);

INSERT INTO medical_research_trials (trialName,sponsorCompany,startDate,endDate,phase,therapeuticArea,enrollmentTarget,enrolledCount,principalInvestigator,siteLocation,protocolVersion,ethicalApprovalDate,status,resultsSummary,dataAccessLevel,fundingAmount,regulatoryAgency,contactEmail,notes,isActive) VALUES ('DriverHealthStudy','HealthCorp','2022-01-01','2024-12-31','Phase2','Cardiology','200','150','DrLaura','MedicalCenterA','v1.2','2021-11-15','Active','Intermediate data positive','Restricted',500000,'FDA','drlaura@healthcorp.com','Monitoring cardiovascular health of drivers',1);
INSERT INTO medical_research_trials (trialName,sponsorCompany,startDate,endDate,phase,therapeuticArea,enrollmentTarget,enrolledCount,principalInvestigator,siteLocation,protocolVersion,ethicalApprovalDate,status,resultsSummary,dataAccessLevel,fundingAmount,regulatoryAgency,contactEmail,notes,isActive) VALUES ('NeuroFatigueTrial','NeuroTech','2023-03-01','2025-02-28','Phase1','Neurology','100','80','DrSimon','MedicalCenterB','v0.9','2023-01-20','Recruiting','Preliminary safety data pending','Open',300000,'EMA','drsimon@neurotech.com','Assessing neuro fatigue in high-g environments',1);
INSERT INTO medical_research_trials (trialName,sponsorCompany,startDate,endDate,phase,therapeuticArea,enrollmentTarget,enrolledCount,principalInvestigator,siteLocation,protocolVersion,ethicalApprovalDate,status,resultsSummary,dataAccessLevel,fundingAmount,regulatoryAgency,contactEmail,notes,isActive) VALUES ('RespiratoryPerformance','AirHealth','2021-06-15','2023-06-14','Phase3','Pulmonology','250','250','DrMia','MedicalCenterC','v2.0','2021-04-30','Completed','Positive improvement in lung function','Public',750000,'HealthAuthority','drmia@airhealth.com','Longitudinal study on respiratory health',0);

-- Table: sponsor_brand_collaborations
CREATE TABLE sponsor_brand_collaborations (
    collabId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    brandPartner TEXT,
    collaborationName TEXT,
    startDate DATE,
    endDate DATE,
    collaborationType TEXT,
    jointMarketingBudget REAL,
    targetAudience TEXT,
    keyPerformanceIndicators TEXT,
    mediaChannels TEXT,
    creativeConcept TEXT,
    approvalsRequired TEXT,
    complianceCheckDate DATE,
    outcomeMetrics TEXT,
    renewalPotential INTEGER,
    contractDocument TEXT,
    liaisonContact TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    isActive INTEGER
);

INSERT INTO sponsor_brand_collaborations (sponsorId,brandPartner,collaborationName,startDate,endDate,collaborationType,jointMarketingBudget,targetAudience,keyPerformanceIndicators,mediaChannels,creativeConcept,approvalsRequired,complianceCheckDate,outcomeMetrics,renewalPotential,contractDocument,liaisonContact,notes,createdAt,updatedAt,isActive) VALUES (401,'TurboBoost','SpeedXBoost','2023-02-01','2025-01-31','CoBrand','1200000','YoungDrivers','Impressions|CTR','TV|Online','HighOctane','Legal|Brand','2023-01-20','Increased brand lift','1','contract_401.pdf','LauraK','Joint campaign in Europe', '2023-02-01','2023-02-10',1);
INSERT INTO sponsor_brand_collaborations (sponsorId,brandPartner,collaborationName,startDate,endDate,collaborationType,jointMarketingBudget,targetAudience,keyPerformanceIndicators,mediaChannels,creativeConcept,approvalsRequired,complianceCheckDate,outcomeMetrics,renewalPotential,contractDocument,liaisonContact,notes,createdAt,updatedAt,isActive) VALUES (402,'EcoFuel','GreenLap Initiative','2022-05-15','2024-05-14','Sustainability','800000','EcoConsciousFans','Engagement|Reach','Social|Print','EcoRacing','Legal|Compliance','2022-04-30','Positive sentiment shift','0','contract_402.pdf','MarkT','Focus on carbon neutral messaging', '2022-05-15','2022-05-20',1);
INSERT INTO sponsor_brand_collaborations (sponsorId,brandPartner,collaborationName,startDate,endDate,collaborationType,jointMarketingBudget,targetAudience,keyPerformanceIndicators,mediaChannels,creativeConcept,approvalsRequired,complianceCheckDate,outcomeMetrics,renewalPotential,contractDocument,liaisonContact,notes,createdAt,updatedAt,isActive) VALUES (403,'TechGear','DigitalDrive','2024-01-10','2026-01-09','TechIntegration','1500000','TechSavvy','Downloads|Sessions','Online|AR','FutureTech','Legal','2023-12-20','High conversion rate','1','contract_403.pdf','SofiaL','AR experience at pits', '2024-01-10','2024-01-15',1);