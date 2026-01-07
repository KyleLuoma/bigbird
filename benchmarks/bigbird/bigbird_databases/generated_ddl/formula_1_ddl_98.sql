-- Media rights licensing information
CREATE TABLE media_rights_licensing (
    rightsId INTEGER PRIMARY KEY AUTOINCREMENT,
    mediaCompany TEXT NOT NULL,
    region TEXT,
    startDate DATE,
    endDate DATE,
    fee REAL,
    exclusiveFlag INTEGER,
    notes TEXT,
    contractUrl TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    licenseType TEXT,
    distributionMethod TEXT,
    language TEXT,
    format TEXT,
    renewalOption TEXT,
    amendmentCount INTEGER,
    complianceStatus TEXT,
    contactPerson TEXT,
    contactEmail TEXT,
    archiveLocation TEXT
);
INSERT INTO media_rights_licensing (mediaCompany,region,startDate,endDate,fee,exclusiveFlag,notes,contractUrl,createdAt,updatedAt,licenseType,distributionMethod,language,format,renewalOption,amendmentCount,complianceStatus,contactPerson,contactEmail,archiveLocation) VALUES ('GlobalMedia','Europe','2023-01-01','2025-12-31',1200000,1,'Initial licensing','http://contracts.example.com/rights1','2023-01-01 09:00:00','2023-01-01 09:00:00','Broadcast','Cable','English','HD','Auto',2,'Compliant','Jane Doe','jane.doe@example.com','/archive/rights1');
INSERT INTO media_rights_licensing (mediaCompany,region,startDate,endDate,fee,exclusiveFlag,notes,contractUrl,createdAt,updatedAt,licenseType,distributionMethod,language,format,renewalOption,amendmentCount,complianceStatus,contactPerson,contactEmail,archiveLocation) VALUES ('StreamCo','NorthAmerica','2022-06-15','2024-06-14',850000,0,'Non‑exclusive digital','http://contracts.example.com/rights2','2022-06-15 10:30:00','2022-06-15 10:30:00','Digital','Online','Spanish','SD','Manual',0,'Pending','John Smith','john.smith@example.com','/archive/rights2');
INSERT INTO media_rights_licensing (mediaCompany,region,startDate,endDate,fee,exclusiveFlag,notes,contractUrl,createdAt,updatedAt,licenseType,distributionMethod,language,format,renewalOption,amendmentCount,complianceStatus,contactPerson,contactEmail,archiveLocation) VALUES ('SportNet','Asia','2024-03-01','2027-02-28',2000000,1,'Exclusive regional rights','http://contracts.example.com/rights3','2024-03-01 08:45:00','2024-03-01 08:45:00','Broadcast','Satellite','Mandarin','4K','Auto',1,'Compliant','Li Wei','li.wei@example.cn','/archive/rights3');

-- Venue accessibility audit details
CREATE TABLE venue_accessibility_audits (
    auditId INTEGER PRIMARY KEY AUTOINCREMENT,
    facilityId INTEGER NOT NULL,
    auditDate DATE,
    auditorName TEXT,
    overallScore REAL,
    wheelchairScore REAL,
    hearingScore REAL,
    visualScore REAL,
    stairCount INTEGER,
    rampCount INTEGER,
    elevatorCount INTEGER,
    signageQuality REAL,
    emergencyPlanScore REAL,
    recommendations TEXT,
    followUpDate DATE,
    status TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    auditReportUrl TEXT,
    notes TEXT,
    complianceLevel TEXT
);
INSERT INTO venue_accessibility_audits (facilityId,auditDate,auditorName,overallScore,wheelchairScore,hearingScore,visualScore,stairCount,rampCount,elevatorCount,signageQuality,emergencyPlanScore,recommendations,followUpDate,status,createdAt,updatedAt,auditReportUrl,notes,complianceLevel) VALUES (101,'2023-05-12','Alice Green',85.5,90.0,80.0,75.0,12,5,3,88.0,82.0,'Add tactile paving','2023-08-01','Open','2023-05-12 09:00:00','2023-05-12 09:00:00','http://audits.example.com/report101','Initial audit','High');
INSERT INTO venue_accessibility_audits (facilityId,auditDate,auditorName,overallScore,wheelchairScore,hearingScore,visualScore,stairCount,rampCount,elevatorCount,signageQuality,emergencyPlanScore,recommendations,followUpDate,status,createdAt,updatedAt,auditReportUrl,notes,complianceLevel) VALUES (102,'2023-06-20','Bob Lee',78.0,70.0,85.0,80.0,8,2,2,70.0,75.0,'Upgrade elevator controls','2023-09-15','Open','2023-06-20 10:15:00','2023-06-20 10:15:00','http://audits.example.com/report102','Follow‑up required','Medium');
INSERT INTO venue_accessibility_audits (facilityId,auditDate,auditorName,overallScore,wheelchairScore,hearingScore,visualScore,stairCount,rampCount,elevatorCount,signageQuality,emergencyPlanScore,recommendations,followUpDate,status,createdAt,updatedAt,auditReportUrl,notes,complianceLevel) VALUES (103,'2023-07-05','Clara Zhou','85','88','90','92','10','4','3','90','88','Install hearing loops','2023-10-01','Open','2023-07-05 14:30:00','2023-07-05 14:30:00','http://audits.example.com/report103','All good','High');

-- Sponsor media campaign details
CREATE TABLE sponsor_media_campaigns (
    campaignId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER NOT NULL,
    campaignName TEXT,
    startDate DATE,
    endDate DATE,
    budget REAL,
    targetAudience TEXT,
    mediaChannels TEXT,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    cpa REAL,
    cpc REAL,
    cpm REAL,
    creativeType TEXT,
    platform TEXT,
    geoTargeting TEXT,
    language TEXT,
    status TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    notes TEXT
);
INSERT INTO sponsor_media_campaigns (sponsorId,campaignName,startDate,endDate,budget,targetAudience,mediaChannels,impressions,clicks,conversions,cpa,cpc,cpm,creativeType,platform,geoTargeting,language,status,createdAt,updatedAt,notes) VALUES (201,'SpeedBoost Launch','2023-02-01','2023-04-30',500000,'Motorsport Fans','TV,Online','2500000',75000,5000,100,6.7,200,'Video','YouTube','Europe','English','Active','2023-02-01 08:00:00','2023-02-01 08:00:00','First phase');
INSERT INTO sponsor_media_campaigns (sponsorId,campaignName,startDate,endDate,budget,targetAudience,mediaChannels,impressions,clicks,conversions,cpa,cpc,cpm,creativeType,platform,geoTargeting,language,status,createdAt,updatedAt,notes) VALUES (202,'FuelX Refresh','2023-05-15','2023-08-15',300000,'Young Adults','Social Media','1800000',54000,3000,90,5.5,166,'Image','Instagram','NorthAmerica','Spanish','Active','2023-05-15 09:30:00','2023-05-15 09:30:00','Mid‑year push');
INSERT INTO sponsor_media_campaigns (sponsorId,campaignName,startDate,endDate,budget,targetAudience,mediaChannels,impressions,clicks,conversions,cpa,cpc,cpm,creativeType,platform,geoTargeting,language,status,createdAt,updatedAt,notes) VALUES (203,'TechGear Winter','2023-09-01','2023-12-31',400000,'Tech Enthusiasts','Display,Search','2200000',66000,4200,95,6.0,181,'Banner','GoogleAds','Asia','Mandarin','Planned','2023-09-01 07:45:00','2023-09-01 07:45:00','Seasonal campaign');

-- Team analytics dashboard metadata
CREATE TABLE team_analytics_dashboards (
    dashboardId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER NOT NULL,
    dashboardName TEXT,
    description TEXT,
    createdBy TEXT,
    createdDate DATE,
    lastUpdated DATE,
    refreshInterval INTEGER,
    dataSource TEXT,
    chartCount INTEGER,
    tileCount INTEGER,
    sharedWith TEXT,
    version TEXT,
    status TEXT,
    tags TEXT,
    accessLevel TEXT,
    theme TEXT,
    layoutJson TEXT,
    thumbnailUrl TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME
);
INSERT INTO team_analytics_dashboards (teamId,dashboardName,description,createdBy,createdDate,lastUpdated,refreshInterval,dataSource,chartCount,tileCount,sharedWith,version,status,tags,accessLevel,theme,layoutJson,thumbnailUrl,notes,createdAt,updatedAt) VALUES (301,'Race Pace Overview','Shows lap time trends','DataOps','2023-01-10','2023-01-15',60,'Telemetry','12','8','Engineering,Strategy','1.0','Active','pace,lap','Team','Dark','{}','http://dash.example.com/thumb1','Initial release','2023-01-10 08:00:00','2023-01-15 12:00:00');
INSERT INTO team_analytics_dashboards (teamId,dashboardName,description,createdBy,createdDate,lastUpdated,refreshInterval,dataSource,chartCount,tileCount,sharedWith,version,status,tags,accessLevel,theme,layoutJson,thumbnailUrl,notes,createdAt,updatedAt) VALUES (302,'Tyre Wear Tracker','Monitors tyre degradation per stint','AnalyticsLead','2023-02-05','2023-02-08',30,'TyreInventory','9','6','PitCrew','1.1','Active','tyre,wear','Team','Light','{}','http://dash.example.com/thumb2','Added heat map','2023-02-05 09:15:00','2023-02-08 10:45:00');
INSERT INTO team_analytics_dashboards (teamId,dashboardName,description,createdBy,createdDate,lastUpdated,refreshInterval,dataSource,chartCount,tileCount,sharedWith,version,status,tags,accessLevel,theme,layoutJson,thumbnailUrl,notes,createdAt,updatedAt) VALUES (303,'Fuel Consumption','Daily fuel usage analysis','OpsManager','2023-03-01','2023-03-03',120,'FuelLogs','7','5','Strategy,Logistics','2.0','Active','fuel,efficiency','Team','Dark','{}','http://dash.example.com/thumb3','Beta version','2023-03-01 07:30:00','2023-03-03 16:20:00');

-- Environmental permit applications
CREATE TABLE environmental_permit_applications (
    applicationId INTEGER PRIMARY KEY AUTOINCREMENT,
    authority TEXT,
    permitType TEXT,
    applicantName TEXT,
    applicantId INTEGER,
    submissionDate DATE,
    status TEXT,
    approvalDate DATE,
    expiryDate DATE,
    conditions TEXT,
    feePaid REAL,
    currency TEXT,
    documentUrl TEXT,
    reviewer TEXT,
    reviewDate DATE,
    comments TEXT,
    renewalFlag INTEGER,
    relatedProjectId INTEGER,
    createdAt DATETIME,
    updatedAt DATETIME,
    notes TEXT
);
INSERT INTO environmental_permit_applications (authority,permitType,applicantName,applicantId,submissionDate,status,approvalDate,expiryDate,conditions,feePaid,currency,documentUrl,reviewer,reviewDate,comments,renewalFlag,relatedProjectId,createdAt,updatedAt,notes) VALUES ('StateEnvAgency','AirEmission','GreenTrack Ltd',401,'2023-01-20','Approved','2023-02-10','2025-02-09','Install scrubbers',15000,'USD','http://permits.example.com/doc401','Emily Clark','2023-02-08','All conditions met',0,1001,'2023-01-20 08:00:00','2023-02-10 14:30:00','Initial approval');
INSERT INTO environmental_permit_applications (authority,permitType,applicantName,applicantId,submissionDate,status,approvalDate,expiryDate,conditions,feePaid,currency,documentUrl,reviewer,reviewDate,comments,renewalFlag,relatedProjectId,createdAt,updatedAt,notes) VALUES ('NationalEnvBoard','WaterDischarge','AquaFlow Inc',402,'2023-03-12','Pending',NULL,NULL,'Zero discharge plan',20000,'EUR','http://permits.example.com/doc402','Lars Meyer','2023-03-20','Requires additional modeling',0,1002,'2023-03-12 09:45:00','2023-03-12 09:45:00','Awaiting review');
INSERT INTO environmental_permit_applications (authority,permitType,applicantName,applicantId,submissionDate,status,approvalDate,expiryDate,conditions,feePaid,currency,documentUrl,reviewer,reviewDate,comments,renewalFlag,relatedProjectId,createdAt,updatedAt,notes) VALUES ('RegionalEnvOffice','Noise','SilentLap LLC',403,'2023-05-05','Approved','2023-05-20','2026-05-19','Install sound barriers',5000,'GBP','http://permits.example.com/doc403','Hannah Lee','2023-05-18','Compliance confirmed',0,1003,'2023-05-05 10:30:00','2023-05-20 11:00:00','Noise permit granted');

-- Circuit heritage tour guides
CREATE TABLE circuit_heritage_tour_guides (
    guideId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    guideName TEXT,
    language TEXT,
    experienceYears INTEGER,
    contactPhone TEXT,
    contactEmail TEXT,
    bio TEXT,
    tourScheduleUrl TEXT,
    rating REAL,
    reviewsCount INTEGER,
    certification TEXT,
    availability TEXT,
    startDate DATE,
    endDate DATE,
    fee REAL,
    maxGroupSize INTEGER,
    equipmentProvided TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    notes TEXT
);
INSERT INTO circuit_heritage_tour_guides (circuitId,guideName,language,experienceYears,contactPhone,contactEmail,bio,tourScheduleUrl,rating,reviewsCount,certification,availability,startDate,endDate,fee,maxGroupSize,equipmentProvided,createdAt,updatedAt,notes) VALUES (1,'Marco Rossi','Italian',12,'+39-555-1234','marco.rossi@example.com','Former driver turned historian','http://tours.example.com/guide1',4.8,57,'HeritageGuideCert','FullYear','2023-04-01','2024-03-31',120,'25','AudioGuide', '2023-04-01 08:00:00','2023-04-01 08:00:00','Seasonal availability');
INSERT INTO circuit_heritage_tour_guides (circuitId,guideName,language,experienceYears,contactPhone,contactEmail,bio,tourScheduleUrl,rating,reviewsCount,certification,availability,startDate,endDate,fee,maxGroupSize,equipmentProvided,createdAt,updatedAt,notes) VALUES (2,'Sofia Patel','English',8,'+44-20-7777','sofia.patel@example.co.uk','Motorsport journalist','http://tours.example.com/guide2',4.5,42,'CertifiedTourGuide','Summer','2023-06-01','2023-09-30',150,'30','PrintedMaps', '2023-06-01 09:15:00','2023-06-01 09:15:00','Available on weekends');
INSERT INTO circuit_heritage_tour_guides (circuitId,guideName,language,experienceYears,contactPhone,contactEmail,bio,tourScheduleUrl,rating,reviewsCount,certification,availability,startDate,endDate,fee,maxGroupSize,equipmentProvided,createdAt,updatedAt,notes) VALUES (3,'Luis García','Spanish',10,'+34-600-5555','luis.garcia@example.es','Former team mechanic','http://tours.example.com/guide3',4.9,68,'HeritageGuideCert','AllYear','2023-01-01','2025-12-31',100,'20','None', '2023-01-01 07:30:00','2023-01-01 07:30:00','Special historical tours');

-- Fan experience AI chatbots
CREATE TABLE fan_experience_ai_chatbots (
    botId INTEGER PRIMARY KEY AUTOINCREMENT,
    platform TEXT,
    version TEXT,
    languageSupported TEXT,
    intentsCount INTEGER,
    responsesCount INTEGER,
    fallbackRate REAL,
    activeSince DATE,
    lastUpdate DATE,
    ownerTeamId INTEGER,
    integrationPoints TEXT,
    apiEndpoint TEXT,
    usageMonthly INTEGER,
    satisfactionScore REAL,
    errorRate REAL,
    complianceStatus TEXT,
    privacyPolicyUrl TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    notes TEXT
);
INSERT INTO fan_experience_ai_chatbots (platform,version,languageSupported,intentsCount,responsesCount,fallbackRate,activeSince,lastUpdate,ownerTeamId,integrationPoints,apiEndpoint,usageMonthly,satisfactionScore,errorRate,complianceStatus,privacyPolicyUrl,createdAt,updatedAt,notes) VALUES ('MobileApp','1.2.0','English,Spanish',150,1200,2.5,'2023-01-15','2023-06-01',301,'Chat,FAQ','https://api.example.com/bot1',25000,4.6,1.2,'Compliant','https://example.com/privacy1','2023-01-15 08:00:00','2023-06-01 12:00:00','Handles race queries');
INSERT INTO fan_experience_ai_chatbots (platform,version,languageSupported,intentsCount,responsesCount,fallbackRate,activeSince,lastUpdate,ownerTeamId,integrationPoints,apiEndpoint,usageMonthly,satisfactionScore,errorRate,complianceStatus,privacyPolicyUrl,createdAt,updatedAt,notes) VALUES ('WebPortal','2.0.1','English',200,1800,1.8,'2022-11-01','2023-05-20',302,'LiveChat,Support','https://api.example.com/bot2',34000,4.8,0.9,'Compliant','https://example.com/privacy2','2022-11-01 09:30:00','2023-05-20 14:45:00','Ticketing assistance');
INSERT INTO fan_experience_ai_chatbots (platform,version,languageSupported,intentsCount,responsesCount,fallbackRate,activeSince,lastUpdate,ownerTeamId,integrationPoints,apiEndpoint,usageMonthly,satisfactionScore,errorRate,complianceStatus,privacyPolicyUrl,createdAt,updatedAt,notes) VALUES ('SocialMedia','3.1','English,French,German',180,1500,3.0,'2023-03-10','2023-07-05',303,'Messenger,Comments','https://api.example.com/bot3',19000,4.4,1.5,'Compliant','https://example.com/privacy3','2023-03-10 07:45:00','2023-07-05 11:20:00','Promotes merchandise');

-- Digital asset curation workflow definitions
CREATE TABLE digital_asset_curation_workflows (
    workflowId INTEGER PRIMARY KEY AUTOINCREMENT,
    assetType TEXT,
    stage TEXT,
    responsibleTeam TEXT,
    startDate DATE,
    endDate DATE,
    status TEXT,
    approvalsRequired INTEGER,
    approvalsObtained INTEGER,
    changeLogUrl TEXT,
    version TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    estimatedDurationDays INTEGER,
    actualDurationDays INTEGER,
    riskLevel TEXT,
    backupLocation TEXT,
    complianceCheck TEXT,
    reviewComments TEXT,
    automationLevel TEXT
);
INSERT INTO digital_asset_curation_workflows (assetType,stage,responsibleTeam,startDate,endDate,status,approvalsRequired,approvalsObtained,changeLogUrl,version,notes,createdAt,updatedAt,estimatedDurationDays,actualDurationDays,riskLevel,backupLocation,complianceCheck,reviewComments,automationLevel) VALUES ('Photo','Ingestion','MediaOps','2023-01-05','2023-01-07','Completed',2,2,'http://logs.example.com/wf1','v1.0','Initial ingest','2023-01-05 08:00:00','2023-01-07 16:30:00',2,2,'Low','/backup/photos','Passed','All good','High');
INSERT INTO digital_asset_curation_workflows (assetType,stage,responsibleTeam,startDate,endDate,status,approvalsRequired,approvalsObtained,changeLogUrl,version,notes,createdAt,updatedAt,estimatedDurationDays,actualDurationDays,riskLevel,backupLocation,complianceCheck,reviewComments,automationLevel) VALUES ('Video','Review','ContentTeam','2023-02-10','2023-02-15','InProgress',3,1,'http://logs.example.com/wf2','v2.1','Quality check','2023-02-10 09:30:00','2023-02-15 12:00:00',5,4,'Medium','/backup/videos','Pending','Needs additional reviews','Medium');
INSERT INTO digital_asset_curation_workflows (assetType,stage,responsibleTeam,startDate,endDate,status,approvalsRequired,approvalsObtained,changeLogUrl,version,notes,createdAt,updatedAt,estimatedDurationDays,actualDurationDays,riskLevel,backupLocation,complianceCheck,reviewComments,automationLevel) VALUES ('Audio','Publication','AudioTeam','2023-03-01','2023-03-03','Pending',1,0,'http://logs.example.com/wf3','v1.5','Awaiting final sign‑off','2023-03-01 07:45:00','2023-03-01 07:45:00',2,NULL,'Low','/backup/audio','NotStarted','Pending approval','Low');

-- Race technology vendor registry
CREATE TABLE race_tech_vendor_registry (
    registryId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    vendorName TEXT,
    serviceType TEXT,
    contractStart DATE,
    contractEnd DATE,
    fee REAL,
    currency TEXT,
    contactPerson TEXT,
    contactEmail TEXT,
    slaLevel TEXT,
    complianceStatus TEXT,
    performanceScore REAL,
    incidentCount INTEGER,
    renewalOption TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    contractUrl TEXT,
    auditDate DATE,
    auditResult TEXT
);
INSERT INTO race_tech_vendor_registry (raceId,vendorName,serviceType,contractStart,contractEnd,fee,currency,contactPerson,contactEmail,slaLevel,complianceStatus,performanceScore,incidentCount,renewalOption,notes,createdAt,updatedAt,contractUrl,auditDate,auditResult) VALUES (101,'SpeedData Inc','Telemetry','2023-01-01','2023-12-31',250000,'USD','Anna Lee','anna.lee@speeddata.com','Gold','Compliant',92.5,0,'Auto','Provides real‑time telemetry','2023-01-01 08:00:00','2023-01-01 08:00:00','http://contracts.example.com/vendor101','2023-06-15','Pass');
INSERT INTO race_tech_vendor_registry (raceId,vendorName,serviceType,contractStart,contractEnd,fee,currency,contactPerson,contactEmail,slaLevel,complianceStatus,performanceScore,incidentCount,renewalOption,notes,createdAt,updatedAt,contractUrl,auditDate,auditResult) VALUES (102,'VisionCam Ltd','VideoStreaming','2023-03-01','2024-02-29',180000,'EUR','Markus Braun','markus.b@visioncam.eu','Silver','Pending',85.0,2,'Manual','HD stream with backup','2023-03-01 09:30:00','2023-03-01 09:30:00','http://contracts.example.com/vendor102','2023-08-20','Conditional');
INSERT INTO race_tech_vendor_registry (raceId,vendorName,serviceType,contractStart,contractEnd,fee,currency,contactPerson,contactEmail,slaLevel,complianceStatus,performanceScore,incidentCount,renewalOption,notes,createdAt,updatedAt,contractUrl,auditDate,auditResult) VALUES (103,'TrackSense','SensorNetwork','2023-05-15','2025-05-14',300000,'GBP','Nina Patel','nina.patel@tracksense.co.uk','Platinum','Compliant',96.8,0,'Auto','Full sensor coverage','2023-05-15 07:45:00','2023-05-15 07:45:00','http://contracts.example.com/vendor103','2023-11-10','Pass');

-- Venue energy storage assets inventory
CREATE TABLE venue_energy_storage_assets (
    storageId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER NOT NULL,
    storageType TEXT,
    capacityMWh REAL,
    manufacturer TEXT,
    modelNumber TEXT,
    installationDate DATE,
    commissioningDate DATE,
    operationalStatus TEXT,
    efficiencyPercent REAL,
    warrantyEndDate DATE,
    maintenanceCycleMonths INTEGER,
    lastMaintenanceDate DATE,
    nextMaintenanceDate DATE,
    locationDetail TEXT,
    safetyCertificateUrl TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    notes TEXT,
    regulatoryApproval TEXT,
    complianceLevel TEXT
);
INSERT INTO venue_energy_storage_assets (venueId,storageType,capacityMWh,manufacturer,modelNumber,installationDate,commissioningDate,operationalStatus,efficiencyPercent,warrantyEndDate,maintenanceCycleMonths,lastMaintenanceDate,nextMaintenanceDate,locationDetail,safetyCertificateUrl,createdAt,updatedAt,notes,regulatoryApproval,complianceLevel) VALUES (201,'Battery','2.5','PowerCell','PC-2500','2022-04-10','2022-05-01','Active',94.5,'2027-04-10',12,'2023-04-10','2023-10-10','North wing','http://certs.example.com/pc2500','2022-04-10 08:00:00','2023-04-10 08:00:00','Used for peak shaving','Approved','High');
INSERT INTO venue_energy_storage_assets (venueId,storageType,capacityMWh,manufacturer,modelNumber,installationDate,commissioningDate,operationalStatus,efficiencyPercent,warrantyEndDate,maintenanceCycleMonths,lastMaintenanceDate,nextMaintenanceDate,locationDetail,safetyCertificateUrl,createdAt,updatedAt,notes,regulatoryApproval,complianceLevel) VALUES (202,'Supercapacitor','1.0','Capacita','CAP-100','2023-01-20','2023-02-05','Active',98.0,'2028-01-20',6,'2023-07-20','2023-01-20','East side','http://certs.example.com/cap100','2023-01-20 09:15:00','2023-07-20 09:15:00','Supports rapid charge cycles','Approved','Medium');
INSERT INTO venue_energy_storage_assets (venueId,storageType,capacityMWh,manufacturer,modelNumber,installationDate,commissioningDate,operationalStatus,efficiencyPercent,warrantyEndDate,maintenanceCycleMonths,lastMaintenanceDate,nextMaintenanceDate,locationDetail,safetyCertificateUrl,createdAt,updatedAt,notes,regulatoryApproval,complianceLevel) VALUES (203,'Hydrogen','3.0','HydroGen','HG-300','2021-09-05','2021-10-01','Inactive',90.0,'2026-09-05',24,'2022-09-05','2024-09-05','South parking','http://certs.example.com/hg300','2021-09-05 07:30:00','2022-09-05 07:30:00','Awaiting refurbishment','Pending','Low');