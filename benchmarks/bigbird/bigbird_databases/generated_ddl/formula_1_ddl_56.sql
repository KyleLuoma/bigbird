-- Safety training modules
CREATE TABLE safety_training_modules (
    moduleId INTEGER PRIMARY KEY AUTOINCREMENT,
    moduleCode TEXT NOT NULL,
    title TEXT,
    description TEXT,
    category TEXT,
    durationMinutes INTEGER,
    prerequisiteModuleId INTEGER,
    effectiveDate DATE,
    expiryDate DATE,
    instructorId INTEGER,
    language TEXT,
    level TEXT,
    format TEXT,
    createdAt DATE,
    updatedAt DATE,
    status TEXT,
    targetAudience TEXT,
    maxParticipants INTEGER,
    certificationRequired TEXT,
    onlineLink TEXT,
    resourceFile TEXT,
    assessmentMethod TEXT
);

INSERT INTO safety_training_modules (moduleCode, title, description, category, durationMinutes, prerequisiteModuleId, effectiveDate, expiryDate, instructorId, language, level, format, createdAt, updatedAt, status, targetAudience, maxParticipants, certificationRequired, onlineLink, resourceFile, assessmentMethod) VALUES
('SM101','BasicSafety','Introductory safety concepts','General',60,NULL,'2025-01-01','2027-01-01',1,'EN','Beginner','Online','2025-01-01','2025-01-01','Active','AllStaff',30,'Yes','http://safety.example.com/module1','safety_handout1.pdf','Quiz'),
('SM102','AdvancedFire','Fire suppression techniques','Fire',90,1,'2025-02-01','2028-02-01',2,'EN','Intermediate','Classroom','2025-02-01','2025-02-01','Planned','FireTeam',20,'Yes','http://safety.example.com/module2','fire_manual.pdf','PracticalTest'),
('SM103','ElectricalSafety','Handling electrical hazards','Electrical',45,NULL,'2025-03-01','2026-12-31',3,'EN','Beginner','Online','2025-03-01','2025-03-01','Active','Engineering',25,'No','http://safety.example.com/module3','electrical_guide.pdf','MultipleChoice');

-- Venue infrastructure projects
CREATE TABLE venue_infrastructure_projects (
    projectId INTEGER PRIMARY KEY AUTOINCREMENT,
    projectName TEXT,
    venueId INTEGER,
    projectType TEXT,
    startDate DATE,
    endDate DATE,
    budget REAL,
    currency TEXT,
    status TEXT,
    projectManagerId INTEGER,
    contractorId INTEGER,
    description TEXT,
    phase TEXT,
    estimatedCompletion DATE,
    actualCompletion DATE,
    riskLevel TEXT,
    environmentalImpactScore REAL,
    approvalDate DATE,
    lastReviewed DATE,
    notes TEXT,
    latitude REAL,
    longitude REAL
);

INSERT INTO venue_infrastructure_projects (projectName, venueId, projectType, startDate, endDate, budget, currency, status, projectManagerId, contractorId, description, phase, estimatedCompletion, actualCompletion, riskLevel, environmentalImpactScore, approvalDate, lastReviewed, notes, latitude, longitude) VALUES
('GrandStandsRenovation',1,'StadiumUpgrade','2025-04-01','2026-09-30',25000000,'USD','Planned',10,100,'Upgrade main grandstands','Planning','2026-09-30',NULL,'Medium',3.5,'2025-01-15','2025-01-15','Initial design phase',45.678,-73.456),
('PitLaneLighting',2,'Electrical','2025-06-15','2025-12-15',1200000,'USD','Active',11,101,'Install LED lighting in pit lane','Construction','2025-12-15','2025-12-14','Low',1.2,'2025-05-20','2025-06-01','On schedule',46.123,-74.321),
('CircuitDrainageUpgrade',3,'CivilWorks','2025-08-01','2027-02-28',8000000,'USD','Approved',12,102,'Improve drainage to prevent flooding','Design','2027-01-31','2027-01-30','High',4.8,'2025-07-10','2025-07-20','Awaiting permits',44.987,-72.654);

-- Digital marketing campaign metrics
CREATE TABLE digital_marketing_campaign_metrics (
    campaignMetricId INTEGER PRIMARY KEY AUTOINCREMENT,
    campaignId INTEGER,
    platform TEXT,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    spend REAL,
    cpm REAL,
    cpc REAL,
    ctr REAL,
    conversionRate REAL,
    reach INTEGER,
    frequency REAL,
    adFormat TEXT,
    startDate DATE,
    endDate DATE,
    audienceSegment TEXT,
    creativeId INTEGER,
    placement TEXT,
    objective TEXT,
    budgetAllocated REAL,
    budgetSpent REAL,
    roi REAL,
    attributionModel TEXT
);

INSERT INTO digital_marketing_campaign_metrics (campaignId, platform, impressions, clicks, conversions, spend, cpm, cpc, ctr, conversionRate, reach, frequency, adFormat, startDate, endDate, audienceSegment, creativeId, placement, objective, budgetAllocated, budgetSpent, roi, attributionModel) VALUES
(2001,'Facebook',500000,12000,300,15000,30,1.25,2.4,2.5,450000,1.1,'Video','2025-01-01','2025-01-31','Fans',301,'Newsfeed','Awareness',20000,15000,1.2,'LastClick'),
(2002,'Instagram',300000,8000,200,10000,33.3,1.25,2.67,2.5,280000,1.0,'Story','2025-02-01','2025-02-28','YoungAdults',302,'Stories','Engagement',15000,10000,1.5,'Linear'),
(2003,'Twitter',200000,5000,150,8000,40,1.6,2.5,3.0,190000,1.2,'Carousel','2025-03-01','2025-03-31','TechEnthusiasts',303,'Timeline','Conversion',12000,8000,1.8,'PositionBased');

-- Environmental sensor readings
CREATE TABLE environmental_sensor_readings (
    readingId INTEGER PRIMARY KEY AUTOINCREMENT,
    sensorId INTEGER,
    venueId INTEGER,
    timestamp DATE,
    temperatureC REAL,
    humidityPercent REAL,
    airQualityIndex INTEGER,
    noiseLevelDb REAL,
    uvIndex REAL,
    windSpeedKph REAL,
    windDirection TEXT,
    precipitationMm REAL,
    soilMoisturePercent REAL,
    solarRadiationWm2 REAL,
    co2Ppm REAL,
    pm25UgM3 REAL,
    pm10UgM3 REAL,
    o3Ppb REAL,
    no2Ppb REAL,
    sensorStatus TEXT
);

INSERT INTO environmental_sensor_readings (sensorId, venueId, timestamp, temperatureC, humidityPercent, airQualityIndex, noiseLevelDb, uvIndex, windSpeedKph, windDirection, precipitationMm, soilMoisturePercent, solarRadiationWm2, co2Ppm, pm25UgM3, pm10UgM3, o3Ppb, no2Ppb, sensorStatus) VALUES
(10,1,'2025-04-10',22.5,55,42,65,3.2,12,'NE',0,18,500,410,12,20,0.04,0.02,'OK'),
(11,2,'2025-04-10',19.8,60,30,58,2.8,8,'SW',0,22,450,398,8,15,0.03,0.015,'OK'),
(12,3,'2025-04-10',21.0,58,35,62,3.0,10,'N',0,20,470,405,10,18,0.035,0.018,'OK');

-- Team strategy sessions
CREATE TABLE team_strategy_sessions (
    sessionId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    sessionDate DATE,
    sessionType TEXT,
    location TEXT,
    durationMinutes INTEGER,
    leadStrategistId INTEGER,
    participants TEXT,
    agenda TEXT,
    outcomeSummary TEXT,
    keyDecisions TEXT,
    riskAssessment TEXT,
    performanceMetrics TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    confidentialityLevel TEXT,
    sessionScore INTEGER,
    followUpActions TEXT,
    resourceLinks TEXT,
    externalConsultantId INTEGER,
    sessionStatus TEXT
);

INSERT INTO team_strategy_sessions (teamId, sessionDate, sessionType, location, durationMinutes, leadStrategistId, participants, agenda, outcomeSummary, keyDecisions, riskAssessment, performanceMetrics, notes, createdAt, updatedAt, confidentialityLevel, sessionScore, followUpActions, resourceLinks, externalConsultantId, sessionStatus) VALUES
(5,'2025-04-12','RacePreparation','Team HQ','180',200,'DriverA,DriverB,Engineer1','Setup, Simulations','Optimized tyre strategy','Choose medium tyre','Low','LapTimeAvg=1:32','All agreed','2025-04-12','2025-04-12','High',85,'Run simulation on Sunday','http://team.example.com/resources','301','Completed'),
(5,'2025-04-20','PostRaceAnalysis','Team HQ','150',200,'DriverA,Engineer1,DataAnalyst1','Review lap data','Identified pit stop delay','Adjust pit timing','Medium','PitStopAvg=2.8s','Needs improvement','2025-04-20','2025-04-20','Medium',78,'Implement new pit protocol','http://team.example.com/pitguide','302','Completed'),
(6,'2025-04-15','MidSeasonPlanning','Remote','200',210,'DriverC,Engineer2,Strategist1','Resource allocation','Decided budget split','Allocate more to aero','High','BudgetUsed=55%','Budget approved','2025-04-15','2025-04-15','High',90,'Submit finance report','http://team.example.com/finance','303','Scheduled');

-- Media content license agreements
CREATE TABLE media_content_license_agreements (
    licenseId INTEGER PRIMARY KEY AUTOINCREMENT,
    contentId INTEGER,
    mediaType TEXT,
    licenseeId INTEGER,
    licensorId INTEGER,
    licenseStartDate DATE,
    licenseEndDate DATE,
    territory TEXT,
    exclusivity TEXT,
    fee REAL,
    currency TEXT,
    paymentTerms TEXT,
    usageRestrictions TEXT,
    durationYears INTEGER,
    renewalOption TEXT,
    terminationClause TEXT,
    signatureDate DATE,
    signedBy TEXT,
    status TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    agreementFile TEXT,
    digitalSignature TEXT
);

INSERT INTO media_content_license_agreements (contentId, mediaType, licenseeId, licensorId, licenseStartDate, licenseEndDate, territory, exclusivity, fee, currency, paymentTerms, usageRestrictions, durationYears, renewalOption, terminationClause, signatureDate, signedBy, status, notes, createdAt, updatedAt, agreementFile, digitalSignature) VALUES
(5001,'Video',4001,1001,'2025-01-01','2026-12-31','Global','Exclusive',150000,'USD','Net30','Broadcast only',2,'Yes','30dayNotice','2024-12-15','LegalDept','Active','First year', '2025-01-01','2025-01-01','license5001.pdf','sig5001'),
(5002,'Image',4002,1002,'2025-03-01','2025-09-30','EU','NonExclusive',25000,'EUR','Net15','Online use',0,'No','TerminationOn breach','2025-02-20','LegalDept','Pending','Awaiting approval', '2025-03-01','2025-03-01','license5002.pdf','sig5002'),
(5003,'Audio',4003,1003,'2025-05-01','2028-04-30','Americas','Exclusive',80000,'USD','Net45','Radio and streaming',3,'Yes','EarlyTerminationPenalty','2025-04-15','LegalDept','Active','Renewal due 2028', '2025-05-01','2025-05-01','license5003.pdf','sig5003');

-- Fan loyalty reward redemptions
CREATE TABLE fan_loyalty_reward_redemptions (
    redemptionId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    rewardId INTEGER,
    redemptionDate DATE,
    pointsUsed INTEGER,
    status TEXT,
    deliveryMethod TEXT,
    trackingNumber TEXT,
    redeemedByStaffId INTEGER,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    eventId INTEGER,
    promoCode TEXT,
    voucherCode TEXT,
    expirationDate DATE,
    rewardCategory TEXT,
    rewardValue REAL,
    currency TEXT,
    confirmationNumber TEXT,
    feedbackScore INTEGER
);

INSERT INTO fan_loyalty_reward_redemptions (fanId, rewardId, redemptionDate, pointsUsed, status, deliveryMethod, trackingNumber, redeemedByStaffId, notes, createdAt, updatedAt, eventId, promoCode, voucherCode, expirationDate, rewardCategory, rewardValue, currency, confirmationNumber, feedbackScore) VALUES
(9001,301,'2025-04-05',5000,'Completed','Mail','TRK12345',101,'Thank you for participation','2025-04-05','2025-04-05',2001,'SPRING2025','VCH123','2025-12-31','Merchandise',75,'USD','CNF001',9),
(9002,302,'2025-04-10',3000,'Pending','Digital','',102,'Pending email delivery','2025-04-10','2025-04-10',2002,'SUMMER2025','VCH124','2025-08-31','Experience',120,'USD','CNF002',0),
(9003,303,'2025-04-12',8000,'Completed','InPerson','TRK67890',103,'Picked up at venue','2025-04-12','2025-04-12',2003,'FALL2025','VCH125','2026-01-31','VIPPass',250,'USD','CNF003',10);

-- Logistics fuel inventory audit
CREATE TABLE logistics_fuel_inventory_audit (
    auditId INTEGER PRIMARY KEY AUTOINCREMENT,
    facilityId INTEGER,
    auditDate DATE,
    inspectorId INTEGER,
    totalLiters REAL,
    fuelType TEXT,
    averageDensity REAL,
    temperatureC REAL,
    humidityPercent REAL,
    safetySealIntact TEXT,
    varianceLiters REAL,
    variancePercentage REAL,
    adjustmentReason TEXT,
    approvedById INTEGER,
    approvalDate DATE,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    auditStatus TEXT,
    samplingMethod TEXT,
    batchNumber TEXT,
    sensorCalibrationDate DATE
);

INSERT INTO logistics_fuel_inventory_audit (facilityId, auditDate, inspectorId, totalLiters, fuelType, averageDensity, temperatureC, humidityPercent, safetySealIntact, varianceLiters, variancePercentage, adjustmentReason, approvedById, approvalDate, notes, createdAt, updatedAt, auditStatus, samplingMethod, batchNumber, sensorCalibrationDate) VALUES
(10,'2025-04-08',501,250000,'Petrol',0.755,22,55,'Yes',-500, -0.2,'Measurement error',601,'2025-04-09','All good','2025-04-08','2025-04-08','Closed','Random','BATCHA','2025-01-15'),
(11,'2025-04-09',502,180000,'Diesel',0.830,20,60,'Yes',0,0,'N/A',602,'2025-04-10','No issues','2025-04-09','2025-04-09','Closed','Systematic','BATCHB','2025-02-01'),
(12,'2025-04-10',503,300000,'Petrol',0.760,24,50,'No','-1000',-0.33,'Seal broken','603','2025-04-11','Seal replacement required','2025-04-10','2025-04-10','Open','Random','BATCHC','2025-03-20');

-- Circuit noise monitoring events
CREATE TABLE circuit_noise_monitoring_events (
    eventId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    monitoringDate DATE,
    startTime TEXT,
    endTime TEXT,
    averageDb REAL,
    peakDb REAL,
    frequencyBand TEXT,
    weatherCondition TEXT,
    vehicleCount INTEGER,
    eventType TEXT,
    equipmentId INTEGER,
    operatorId INTEGER,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    complianceStatus TEXT,
    mitigationAction TEXT,
    incidentReported TEXT,
    regulatoryReference TEXT,
    locationDetail TEXT,
    durationMinutes INTEGER
);

INSERT INTO circuit_noise_monitoring_events (circuitId, monitoringDate, startTime, endTime, averageDb, peakDb, frequencyBand, weatherCondition, vehicleCount, eventType, equipmentId, operatorId, notes, createdAt, updatedAt, complianceStatus, mitigationAction, incidentReported, regulatoryReference, locationDetail, durationMinutes) VALUES
(1,'2025-04-11','08:00','10:00',68.5,82.0,'Mid','Clear',30,'Routine','1001','2001','No issues','2025-04-11','2025-04-11','Compliant','None','No','Reg123','Straight1',120),
(2,'2025-04-12','09:30','11:00',71.2,88.5,'High','Cloudy',45,'Peak','1002','2002','High noise due to overtaking','2025-04-12','2025-04-12','NonCompliant','Install barriers','Yes','Reg124','Turn3',90),
(3,'2025-04-13','07:45','09:15',65.0,78.0,'Low','Rain',20,'Routine','1003','2003','Rain reduced noise','2025-04-13','2025-04-13','Compliant','None','No','Reg125','PitLane',90);

-- Driver mental wellness activities
CREATE TABLE driver_mental_wellness_activities (
    activityId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    activityDate DATE,
    activityType TEXT,
    durationMinutes INTEGER,
    facilitatorId INTEGER,
    location TEXT,
    outcome TEXT,
    stressLevelBefore INTEGER,
    stressLevelAfter INTEGER,
    moodScore INTEGER,
    notes TEXT,
    followUpRequired TEXT,
    followUpDate DATE,
    createdAt DATE,
    updatedAt DATE,
    confidentialFlag TEXT,
    resourceProvided TEXT,
    sessionRating INTEGER,
    assessmentTool TEXT,
    recommendations TEXT
);

INSERT INTO driver_mental_wellness_activities (driverId, activityDate, activityType, durationMinutes, facilitatorId, location, outcome, stressLevelBefore, stressLevelAfter, moodScore, notes, followUpRequired, followUpDate, createdAt, updatedAt, confidentialFlag, resourceProvided, sessionRating, assessmentTool, recommendations) VALUES
(101,'2025-04-07','Mindfulness','45',301,'Team Facility','Improved focus',8,3,7,'Driver reported better concentration','No',NULL,'2025-04-07','2025-04-07','Yes','GuidedAudio','9','PHQ9','Continue weekly sessions'),
(102,'2025-04-08','CognitiveBehavioral','60',302,'Remote','Reduced anxiety',9,4,8,'Positive feedback on coping strategies','Yes','2025-04-15','2025-04-08','2025-04-08','Yes','Workbook','8','GAD7','Schedule follow-up in two weeks'),
(103,'2025-04-09','Visualization','30',303,'Team Facility','Enhanced race strategy mental rehearsal',7,2,9,'Driver visualized qualifying laps successfully','No',NULL,'2025-04-09','2025-04-09','Yes','VisualizationGuide','10','Custom','Integrate into pre-race routine');