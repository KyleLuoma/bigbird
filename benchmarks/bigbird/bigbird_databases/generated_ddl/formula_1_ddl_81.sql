-- Event Ticketing Platforms
CREATE TABLE event_ticketing_platforms
(
    platformId INTEGER PRIMARY KEY AUTOINCREMENT,
    platformName TEXT NOT NULL,
    launchDate DATE,
    headquartersCountry TEXT,
    supportedCurrencies TEXT,
    transactionFee REAL,
    mobileAppAvailable INTEGER,
    apiVersion TEXT,
    securityCertification TEXT,
    averageProcessingTime INTEGER,
    maxConcurrentUsers INTEGER,
    supportedLanguages TEXT,
    customerSupportHours INTEGER,
    uptimePercentage REAL,
    dataRetentionDays INTEGER,
    fraudDetectionLevel TEXT,
    complianceStandard TEXT,
    integrationPartnerCount INTEGER,
    dailyTicketVolume INTEGER,
    platformStatus TEXT
);
INSERT INTO event_ticketing_platforms VALUES (1,'TicketMaster','2020-01-15','USA','USD,EUR,GBP',2.5,1,'v3','PCI-DSS',5,100000,'EN,ES,FR',24,99.9,365,'High','GDPR',150,25000,'Active');
INSERT INTO event_ticketing_platforms VALUES (2,'EventBrite','2018-06-30','UK','GBP,EUR,USD',3.0,1,'v2','PCI-DSS',7,80000,'EN,DE',20,99.5,180,'Medium','PCI',80,18000,'Active');
INSERT INTO event_ticketing_platforms VALUES (3,'SeatGeek','2021-03-10','USA','USD,CAD',2.0,0,'v1','PCI-DSS',4,60000,'EN,FR',16,99.2,365,'Low','GDPR',45,12000,'Beta');

-- Circuit Power Management
CREATE TABLE circuit_power_management
(
    managementId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    powerSource TEXT,
    capacityMW REAL,
    currentLoadMW REAL,
    backupGeneratorCount INTEGER,
    renewablePercentage REAL,
    lastInspectionDate DATE,
    maintenanceSchedule TEXT,
    voltageLevelKV REAL,
    frequencyHz REAL,
    transformerCount INTEGER,
    substationLocation TEXT,
    outageHistory TEXT,
    averageDowntimeMinutes INTEGER,
    complianceStatus TEXT,
    energyEfficiencyRating TEXT,
    monitoringSystem TEXT,
    controlRoomContact TEXT,
    notes TEXT
);
INSERT INTO circuit_power_management VALUES (1,1,'Hydro','150.0','75.0',2,30.5,'2023-05-12','Quarterly','33.0','50.0',4,'North Wing','None',0,'Compliant','A+','SCADA','JohnDoe','All systems nominal');
INSERT INTO circuit_power_management VALUES (2,2,'Solar','80.0','40.0',1,80.0,'2023-04-20','Biannual','33.0','50.0',2,'South Wing','Minor outage 2022-11-05',15,'Compliant','A','SCADA','JaneSmith','Increase battery storage');
INSERT INTO circuit_power_management VALUES (3,3,'Grid','200.0','120.0',3,10.0,'2023-06-01','Monthly','33.0','50.0',5,'East Wing','Scheduled maintenance 2023-07-10',0,'Compliant','B+','SCADA','MikeLee','Upgrade transformers');

-- Driver Wellbeing Sessions
CREATE TABLE driver_wellbeing_sessions
(
    sessionId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER NOT NULL,
    sessionDate DATE,
    sessionType TEXT,
    durationMinutes INTEGER,
    facilitatorName TEXT,
    location TEXT,
    focusArea TEXT,
    stressLevelBefore INTEGER,
    stressLevelAfter INTEGER,
    notes TEXT,
    followUpRequired INTEGER,
    followUpDate DATE,
    physiologicalMetrics TEXT,
    mentalHealthScore INTEGER,
    nutritionGuidanceGiven INTEGER,
    sleepQualityScore INTEGER,
    hydrationLevel INTEGER,
    injuryPreventionTips TEXT,
    overallRating INTEGER
);
INSERT INTO driver_wellbeing_sessions VALUES (1,10,'2023-05-01','Yoga','60','AliceBrown','Team Center','Flexibility',7,4,'Improved posture','0',NULL,'HRV:55',80,1,85,90,'Stretching routine','9');
INSERT INTO driver_wellbeing_sessions VALUES (2,12,'2023-05-03','Mindfulness','45','BobClark','Wellness Room','Mental Focus',8,5,'Better concentration','1','2023-05-10','HRV:60',85,0,78,80,'Breathing exercises','8');
INSERT INTO driver_wellbeing_sessions VALUES (3,15,'2023-05-05','Physio','30','CathyDavis','Physio Lab','Injury Prevention',5,3,'Knee stability enhanced','0',NULL,'HRV:58',78,1,82,88,'Strength drills','7');

-- Media Content Archives
CREATE TABLE media_content_archives
(
    archiveId INTEGER PRIMARY KEY AUTOINCREMENT,
    mediaType TEXT,
    format TEXT,
    resolution TEXT,
    durationSeconds INTEGER,
    fileSizeMB REAL,
    storageLocation TEXT,
    checksum TEXT,
    captureDate DATE,
    uploaderName TEXT,
    copyrightHolder TEXT,
    usageRights TEXT,
    language TEXT,
    subtitleLanguages TEXT,
    accessLevel TEXT,
    retentionPeriodYears INTEGER,
    archivedBy TEXT,
    notes TEXT,
    relatedRaceId INTEGER,
    relatedDriverId INTEGER
);
INSERT INTO media_content_archives VALUES (1,'Video','MP4','1920x1080',3600,1500.5,'/archive/2023/video1.mp4','ABC123','2023-04-20','MediaTeam','F1Org','Full','EN','ES,FR','Restricted',5,'JohnAdmin','Opening ceremony footage',101,12);
INSERT INTO media_content_archives VALUES (2,'Audio','WAV','N/A',180,30.2,'/archive/2023/audio1.wav','DEF456','2023-04-21','AudioDept','F1Org','Limited','EN','None','Public',3,'JaneAdmin','Podium interview',102,15);
INSERT INTO media_content_archives VALUES (3,'Image','JPEG','3840x2160',0,5.6,'/archive/2023/image1.jpg','GHI789','2023-04-22','PhotographerX','F1Org','Full','EN','None','Public',2,'MikeAdmin','Pit lane action shot',103,18);

-- Logistics Freight Routes
CREATE TABLE logistics_freight_routes
(
    routeId INTEGER PRIMARY KEY AUTOINCREMENT,
    originPort TEXT,
    destinationPort TEXT,
    carrierName TEXT,
    vesselName TEXT,
    departureDate DATE,
    arrivalDate DATE,
    totalDistanceKm REAL,
    cargoType TEXT,
    containerCount INTEGER,
    averageSpeedKnots REAL,
    fuelConsumptionMT REAL,
    emissionsCO2Tonnes REAL,
    customsClearanceStatus TEXT,
    insuranceProvider TEXT,
    trackingUrl TEXT,
    routeStatus TEXT,
    lastUpdated DATE,
    notes TEXT,
    responsibleTeam TEXT
);
INSERT INTO logistics_freight_routes VALUES (1,'Hamburg','Singapore','Maersk','Emma Maersk','2023-04-01','2023-04-25',11500,'Tyres',200,22.5,3500,9.8,'Cleared','Allianz','http://track/1','Completed','2023-04-26','No issues','LogisticsTeamA');
INSERT INTO logistics_freight_routes VALUES (2,'Rotterdam','Shanghai','MSC','MSC Zoe','2023-04-05','2023-04-30',11500,'Spare Parts',150,21.0,3400,9.5,'Pending','Zurich','http://track/2','In Transit','2023-04-20','Weather delay expected','LogisticsTeamB');
INSERT INTO logistics_freight_routes VALUES (3,'Antwerp','Los Angeles','CMA CGM','CMA CGM Jacques Saadé','2023-04-10','2023-05-05',9500,'Fuel',180,20.0,3300,9.2,'Cleared','AXA','http://track/3','Completed','2023-05-06','Smooth operation','LogisticsTeamC');

-- Sponsor Community Outreach
CREATE TABLE sponsor_community_outreach
(
    outreachId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER NOT NULL,
    campaignName TEXT,
    startDate DATE,
    endDate DATE,
    targetRegion TEXT,
    beneficiaryCount INTEGER,
    activityType TEXT,
    budgetUSD REAL,
    volunteersRequired INTEGER,
    mediaCoverage TEXT,
    socialMediaImpressions INTEGER,
    partnershipLevel TEXT,
    responsibleManager TEXT,
    status TEXT,
    evaluationScore INTEGER,
    feedbackSummary TEXT,
    relatedEventId INTEGER,
    createdAt DATE,
    notes TEXT
);
INSERT INTO sponsor_community_outreach VALUES (1,5,'Road Safety Initiative','2023-03-01','2023-06-30','Western Europe',5000,'Workshops',250000,50,'TV,Online','150000','Gold','EmilyClark','Active',85,'Positive community response',101,'2023-02-20','Ongoing');
INSERT INTO sponsor_community_outreach VALUES (2,8,'STEM Education','2023-04-15','2023-09-15','North America',3000,'School Programs',180000,30,'Online','90000','Silver','DavidLee','Planned',0,'Planning phase',102,'2023-04-01','Pending launch');
INSERT INTO sponsor_community_outreach VALUES (3,12,'Environmental Clean‑Up','2023-05-10','2023-08-10','Asia Pacific',2000,'Beach Clean‑Up',120000,40,'Print','60000','Bronze','SofiaMartinez','Active',78,'Good volunteer turnout',103,'2023-05-01','Completed');

-- Venue Air Quality Monitoring
CREATE TABLE venue_air_quality_monitoring
(
    monitorId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER NOT NULL,
    sensorId TEXT,
    installationDate DATE,
    lastCalibrationDate DATE,
    pm2_5_ug_m3 REAL,
    pm10_ug_m3 REAL,
    no2_ppb REAL,
    so2_ppb REAL,
    o3_ppb REAL,
    co_ppb REAL,
    temperatureC REAL,
    humidityPercent REAL,
    batteryLevelPercent INTEGER,
    signalStrengthDbm INTEGER,
    dataTransmissionIntervalSec INTEGER,
    alertsIssued INTEGER,
    maintenanceRequired INTEGER,
    notes TEXT,
    recordedAt DATE
);
INSERT INTO venue_air_quality_monitoring VALUES (1,1,'AQM001','2022-01-10','2023-04-01',12.5,25.0,15.2,3.1,30.0,0.5,22.0,45.0,85, -70,300,0,0,'All parameters within limits','2023-05-01');
INSERT INTO venue_air_quality_monitoring VALUES (2,2,'AQM002','2022-02-15','2023-04-10',35.0,60.0,45.0,8.0,55.0,1.2,24.0,50.0,70, -68,300,2,1,'High PM2.5 levels, maintenance scheduled','2023-05-02');
INSERT INTO venue_air_quality_monitoring VALUES (3,3,'AQM003','2022-03-20','2023-04-20',8.0,15.0,10.0,2.5,20.0,0.3,20.0,40.0,90, -72,300,0,0,'Excellent air quality','2023-05-03');

-- Team Data Analytics
CREATE TABLE team_data_analytics
(
    analyticsId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER NOT NULL,
    analysisDate DATE,
    datasetVersion TEXT,
    lapTimeVariance REAL,
    topSpeedMean REAL,
    fuelConsumptionMean REAL,
    tyreWearRate REAL,
    pitStopEfficiency REAL,
    driverPerformanceScore REAL,
    constructorPerformanceScore REAL,
    weatherImpactScore REAL,
    predictiveAccuracy REAL,
    modelVersion TEXT,
    insightsSummary TEXT,
    recommendedActions TEXT,
    analystName TEXT,
    reviewStatus TEXT,
    lastUpdated DATE,
    notes TEXT,
    confidenceLevel REAL
);
INSERT INTO team_data_analytics VALUES (1,7,'2023-04-30','v1.2',0.85,340.5,2.8,0.45,0.92,78.5,80.1,65.0,0.88,'Model shows strong correlation between tyre wear and lap time','Optimize tyre strategy for middle stint', 'LauraKim','Approved','2023-05-01','Initial analysis complete',0.93);
INSERT INTO team_data_analytics VALUES (2,9,'2023-04-28','v1.1',1.10,335.0,3.0,0.50,0.88,74.0,77.5,60.5,0.85,'Weather variability impacts fuel consumption','Adjust fuel load based on forecast', 'MarkRivera','Pending','2023-04-29','Awaiting peer review',0.89);
INSERT INTO team_data_analytics VALUES (3,11,'2023-04-27','v1.3',0.70,342.2,2.6,0.40,0.95,81.2,82.0,68.2,0.90,'Driver consistency key for podium finish','Focus on driver coaching for qualifying', 'NinaShaw','Approved','2023-04-28','Reviewed by senior analyst',0.95);

-- Broadcast Advertising Analysis
CREATE TABLE broadcast_advertising_analysis
(
    analysisId INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId INTEGER NOT NULL,
    campaignName TEXT,
    adSlotStartTime TEXT,
    adSlotEndTime TEXT,
    durationSeconds INTEGER,
    impressions INTEGER,
    clickThroughRate REAL,
    conversionRate REAL,
    costUSD REAL,
    revenueUSD REAL,
    netProfitUSD REAL,
    targetAudience TEXT,
    demographicBreakdown TEXT,
    geoTargeting TEXT,
    deviceDistribution TEXT,
    adFormat TEXT,
    brandSafetyScore INTEGER,
    viewabilityPercentage REAL,
    notes TEXT,
    analysisDate DATE
);
INSERT INTO broadcast_advertising_analysis VALUES (1,301,'SpeedZonePromo','00:15:00','00:15:30',30,150000,0.02,0.005,12000,13000,1000,'Motorsport Fans','Male 18-34','Europe','Mobile,Desktop','Video','High',85.0,'Strong performance Q1','2023-05-01');
INSERT INTO broadcast_advertising_analysis VALUES (2,302,'TechGearLaunch','01:10:00','01:10:45',45,200000,0.018,0.004,15000,16000,1000,'Tech Enthusiasts','Male 25-44','North America','Desktop','Banner','Medium',78.0,'Slight underperformance','2023-05-02');
INSERT INTO broadcast_advertising_analysis VALUES (3,303,'EcoDriveCampaign','02:05:00','02:05:30',30,180000,0.022,0.006,14000,15000,1000,'Eco‑conscious Drivers','Female 20-40','Asia','Mobile','Video','High',90.0,'Excellent engagement','2023-05-03');

-- Track Surface Condition Logs
CREATE TABLE track_surface_condition_logs
(
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    logDate DATE,
    temperatureC REAL,
    humidityPercent REAL,
    trackTemperatureC REAL,
    surfaceHardnessShoreA REAL,
    gripLevel TEXT,
    rubberDepositPercent REAL,
    debrisCount INTEGER,
    recentRainfallMm REAL,
    windSpeedKph REAL,
    windDirection TEXT,
    maintenancePerformed TEXT,
    notes TEXT,
    inspectedBy TEXT,
    nextInspectionDue DATE,
    overallRating INTEGER,
    anomaliesDetected TEXT,
    dataSource TEXT
);
INSERT INTO track_surface_condition_logs VALUES (1,1,'2023-05-01',22.5,55.0,30.0,75.0,'High',12.5,0,0.0,12.0,'NW','None','Surface in optimal condition','JohnDoe','2023-06-01',9,'None','SensorArray');
INSERT INTO track_surface_condition_logs VALUES (2,2,'2023-05-02',18.0,60.0,28.0,70.0,'Medium',9.0,3,2.5,15.0,'SE','Debris cleared','Minor gravel observed, cleaned','JaneSmith','2023-06-02',7,'Debris','ManualInspection');
INSERT INTO track_surface_condition_logs VALUES (3,3,'2023-05-03',25.0,45.0,32.0,80.0,'Very High',15.0,0,0.0,8.0,'N','None','Surface dry and grippy','MikeLee','2023-06-03',10,'None','SensorArray');