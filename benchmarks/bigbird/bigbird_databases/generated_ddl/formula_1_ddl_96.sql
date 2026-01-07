-- Venue security incidents related to race events
CREATE TABLE venue_security_incidents
(
    incidentId               INTEGER PRIMARY KEY AUTOINCREMENT,
    incidentDate             DATE NOT NULL,
    incidentTime             TEXT NOT NULL,
    venueName                TEXT NOT NULL,
    locationDescription      TEXT,
    incidentCategory         TEXT,
    severityLevel            INTEGER,
    incidentDescription      TEXT,
    reportedBy               TEXT,
    actionTaken              TEXT,
    isResolved               INTEGER,      -- 0 = false, 1 = true
    resolutionDate           DATE,
    resolutionTime           TEXT,
    externalAgencyInvolved   TEXT,
    cameraCount              INTEGER,
    footageAvailable         INTEGER,      -- 0 = false, 1 = true
    weatherCondition         TEXT,
    crowdDensityEstimate     INTEGER,
    securityTeamLead         TEXT,
    followUpRequired         INTEGER,      -- 0 = false, 1 = true
    followUpDueDate          DATE,
    comments                 TEXT,
    recordCreatedAt          TEXT,
    recordUpdatedAt          TEXT
);

INSERT INTO venue_security_incidents VALUES (1,'2025-06-12','22:15','Grand Prix Circuit','East Gate','Unauthorized Access',3,'Gate breached by spectator','Security Guard A','Detained and escorted out',1,'2025-06-12','22:30','Local Police',4,1,'Clear',120,'Chief Inspector Lee',0,NULL,'No further action needed','2025-06-12 22:35','2025-06-12 22:35');
INSERT INTO venue_security_incidents VALUES (2,'2025-07-03','14:05','City Oval','North Stand','Violence',4,'Altercation between fans','Security Guard B','Both parties removed',0,NULL,NULL,NULL,6,0,'Rainy',200,'Senior Officer Patel',1,'2025-07-05','Investigate motive','2025-07-03 14:10','2025-07-03 14:10');
INSERT INTO venue_security_incidents VALUES (3,'2025-08-20','09:45','Mountain Track','Parking Lot','Theft',2,'Bike stolen from parking area','Security Guard C','Reported to police',0,NULL,NULL,NULL,2,0,'Sunny',80,'Officer Gomez',1,'2025-08-22','Check surveillance footage','2025-08-20 09:50','2025-08-20 09:50');

-- Fan loyalty rewards program details
CREATE TABLE fan_loyalty_rewards
(
    rewardId                INTEGER PRIMARY KEY AUTOINCREMENT,
    programName             TEXT NOT NULL,
    tierLevel               TEXT,
    pointsRequired          INTEGER,
    rewardDescription       TEXT,
    rewardType              TEXT,
    validityStartDate       DATE,
    validityEndDate         DATE,
    redemptionLimitPerUser  INTEGER,
    isExclusive             INTEGER,      -- 0 = false, 1 = true
    associatedEventId       INTEGER,
    imageUrl                TEXT,
    termsAndConditions      TEXT,
    createdBy               TEXT,
    createdAt               TEXT,
    updatedAt               TEXT,
    displayOrder            INTEGER,
    isActive                INTEGER,      -- 0 = false, 1 = true
    notes                   TEXT,
    marketingChannel        TEXT,
    availableQuantity       INTEGER,
    eligibleCountries       TEXT,
    holidaySpecial          INTEGER       -- 0 = false, 1 = true
);

INSERT INTO fan_loyalty_rewards VALUES (1,'Grand Prix Elite','Gold',5000,'VIP Pit Lane Access','Access Pass','2025-01-01','2025-12-31',2,1,NULL,'vip_pitlane.jpg','Must be claimed before race day','MarketingTeam','2025-01-01','2025-01-01',1,1,'Limited to 100 users','Email','100', 'US,CA,MX',0);
INSERT INTO fan_loyalty_rewards VALUES (2,'Speed Fan Badge','Silver',2500,'Official Team Cap','Merchandise','2025-03-01','2025-09-30',5,0,NULL,'team_cap.jpg','Non‑transferable','Operations','2025-03-01','2025-03-01',2,1,'Seasonal offer','App Notification','200','US,EU',0);
INSERT INTO fan_loyalty_rewards VALUES (3,'Holiday Grand Reward','Platinum',10000,'All‑Access Weekend Pass','Package','2025-12-01','2025-12-31',1,1,NULL,'holiday_pass.jpg','Valid only for Christmas weekend','Executive','2025-11-20','2025-11-20',3,1,'Special holiday reward','Push Notification','50','US,CA,EU,AU',1);

-- Environmental compliance audit records
CREATE TABLE environmental_compliance_audits
(
    auditId                 INTEGER PRIMARY KEY AUTOINCREMENT,
    auditDate               DATE NOT NULL,
    auditorName             TEXT,
    venueName               TEXT,
    auditScope              TEXT,
    waterUsageLiters        REAL,
    energyConsumptionKWh    REAL,
    wasteGeneratedKg        REAL,
    recyclingRatePercent    REAL,
    emissionsCO2Tonnes      REAL,
    noiseLevelDecibels      REAL,
    complianceStatus        TEXT,
    issuesFoundCount        INTEGER,
    criticalIssuesCount     INTEGER,
    correctiveActionPlan    TEXT,
    followUpDate            DATE,
    followUpCompleted       INTEGER,      -- 0 = false, 1 = true
    documentationUrl        TEXT,
    notes                   TEXT,
    createdAt               TEXT,
    updatedAt               TEXT,
    isFinalReportSubmitted INTEGER,      -- 0 = false, 1 = true
    reportVersion           TEXT
);

INSERT INTO environmental_compliance_audits VALUES (1,'2025-04-15','Laura Smith','Grand Prix Circuit','Full','120000','85000','3500','78.5','12.3','68','Compliant',0,0,'N/A','2025-05-01',1,'http://example.com/audit1.pdf','All metrics within targets','2025-04-16','2025-04-16',1,'v1.0');
INSERT INTO environmental_compliance_audits VALUES (2,'2025-07-10','Mark Jones','City Oval','Water Management','95000','72000','2100','65.2','9.8','60','Conditional',3,1,'Install additional filtration','2025-08-15',0,'http://example.com/audit2.pdf','Minor leakage detected','2025-07-11','2025-07-11',0,'v1.0');
INSERT INTO environmental_compliance_audits VALUES (3,'2025-10-05','Sophie Lee','Mountain Track','Energy Efficiency','80000','65000','1800','70.0','8.4','55','Compliant',1,0,'Upgrade lighting to LED','2025-11-01',0,'http://example.com/audit3.pdf','Lighting consumes high power','2025-10-06','2025-10-06',0,'v1.0');

-- Sponsorship activation event logs
CREATE TABLE sponsorship_activation_events
(
    activationId            INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorName             TEXT NOT NULL,
    eventName               TEXT NOT NULL,
    venueName               TEXT,
    activationDate          DATE,
    activationTime          TEXT,
    activationType          TEXT,
    targetAudience          TEXT,
    expectedReach           INTEGER,
    actualReach             INTEGER,
    primaryChannel          TEXT,
    secondaryChannel        TEXT,
    costUSD                 REAL,
    revenueGeneratedUSD     REAL,
    roiPercent              REAL,
    isDigital               INTEGER,      -- 0 = false, 1 = true
    hashtagUsed             TEXT,
    mediaAssetsCount        INTEGER,
    leadCount               INTEGER,
    followUpRequired        INTEGER,      -- 0 = false, 1 = true
    followUpDate            DATE,
    notes                   TEXT,
    createdAt               TEXT,
    updatedAt               TEXT
);

INSERT INTO sponsorship_activation_events VALUES (1,'FastTrack Motors','Pit Lane Showcase','Grand Prix Circuit','2025-06-20','15:00','Live Demo','Motorsport Fans',20000,18500,'TV','Social Media',50000,75000,50,1,'#FastTrackLive',12,350,1,'2025-06-30','Positive audience feedback','2025-06-20','2025-06-20');
INSERT INTO sponsorship_activation_events VALUES (2,'EcoFuel Ltd','Green Energy Booth','City Oval','2025-07-12','11:30','Interactive Booth','Eco‑Conscious Attendees',15000,14800,'On‑Site','Print',30000,0,0,1,'#EcoFuel2025',8,120,0,NULL,'Low conversion but good brand exposure','2025-07-12','2025-07-12');
INSERT INTO sponsorship_activation_events VALUES (3,'AeroTech','Aero Simulation Experience','Mountain Track','2025-08-05','14:45','VR Experience','Tech Enthusiasts',25000,26000,'Online','Social Media',80000,120000,50,1,'#AeroTechVR',15,420,1,'2025-08-15','Exceeded reach expectations','2025-08-05','2025-08-05');

-- Hospitality service request tracking
CREATE TABLE hospitality_service_requests
(
    requestId               INTEGER PRIMARY KEY AUTOINCREMENT,
    guestFirstName          TEXT NOT NULL,
    guestLastName           TEXT NOT NULL,
    reservationId           INTEGER,
    requestDate             DATE NOT NULL,
    requestTime             TEXT NOT NULL,
    serviceCategory         TEXT,
    priorityLevel           TEXT,
    description             TEXT,
    status                  TEXT,
    assignedTo              TEXT,
    estimatedCompletionTime TEXT,
    actualCompletionTime    TEXT,
    feedbackScore           INTEGER,
    feedbackComments        TEXT,
    costUSD                 REAL,
    isBillable              INTEGER,      -- 0 = false, 1 = true
    paymentMethod           TEXT,
    notes                   TEXT,
    createdAt               TEXT,
    updatedAt               TEXT,
    followUpRequired        INTEGER,      -- 0 = false, 1 = true
    followUpDate            DATE,
    resolutionNotes         TEXT,
    satisfactionRating      INTEGER
);

INSERT INTO hospitality_service_requests VALUES (1,'John','Doe',1023,'2025-06-18','10:20','Catering','High','Vegetarian meal request','Completed','Chef Anna','10:45','10:40',5,'Excellent service',45.00,1,'Credit Card','No special notes','2025-06-18','2025-06-18',0,NULL,'Handled promptly',5);
INSERT INTO hospitality_service_requests VALUES (2,'Emily','Smith',1045,'2025-07-02','14:05','Room Service','Medium','Extra towels needed','Pending','Housekeeping','',NULL,4,'Will be delivered shortly',0.00,0,'','Urgent due to guest arrival','2025-07-02','2025-07-02',1,'2025-07-03','Awaiting delivery',4);
INSERT INTO hospitality_service_requests VALUES (3,'Carlos','Gonzalez',1089,'2025-08-09','09:00','Transport','Low','Shuttle to airport at 17:00','Scheduled','Driver Luis','16:45','',5,'Driver confirmed',0.00,0,'','No issues','2025-08-09','2025-08-09',0,NULL,'Shuttle arranged',5);

-- Telemetry calibration log entries
CREATE TABLE telemetry_calibration_logs
(
    calibrationId           INTEGER PRIMARY KEY AUTOINCREMENT,
    vehicleId               INTEGER NOT NULL,
    sessionId               INTEGER,
    calibrationDate         DATE NOT NULL,
    calibrationTime         TEXT NOT NULL,
    sensorType              TEXT,
    firmwareVersion         TEXT,
    calibrationMethod       TEXT,
    temperatureCelsius      REAL,
    humidityPercent         REAL,
    pressureKPa             REAL,
    calibrationValue        REAL,
    tolerancePercent        REAL,
    operatorName            TEXT,
    isApproved              INTEGER,      -- 0 = false, 1 = true
    approvalDate            DATE,
    approvalTime            TEXT,
    notes                   TEXT,
    dataChecksum            TEXT,
    createdAt               TEXT,
    updatedAt               TEXT,
    calibrationDurationSec  INTEGER,
    deviationCount          INTEGER,
    status                  TEXT
);

INSERT INTO telemetry_calibration_logs VALUES (1,501,2001,'2025-05-10','08:30','Accelerometer','v3.2','Static','22.5',45.0,101.3,0.98,0.5,'Technician A',1,'2025-05-10','09:00','All values within spec','abc123def','2025-05-10','2025-05-10',1800,2,'Approved');
INSERT INTO telemetry_calibration_logs VALUES (2,502,2002,'2025-06-14','13:15','Gyroscope','v3.5','Dynamic','21.0',50.0,100.8,1.02,0.3,'Technician B',0,NULL,NULL,'Minor drift observed','def456ghi','2025-06-14','2025-06-14',2400,5,'Pending Approval');
INSERT INTO telemetry_calibration_logs VALUES (3,503,2003,'2025-07-22','11:45','GPS','v2.9','Static','23.0',40.0,102.0,0.99,0.2,'Technician C',1,'2025-07-22','12:10','Calibration successful','ghi789jkl','2025-07-22','2025-07-22',1500,0,'Approved');

-- Race media assets catalog
CREATE TABLE race_media_assets
(
    assetId                 INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId                  INTEGER NOT NULL,
    assetType               TEXT,
    fileName                TEXT,
    fileExtension           TEXT,
    mimeType                TEXT,
    fileSizeBytes           INTEGER,
    resolutionWidth         INTEGER,
    resolutionHeight        INTEGER,
    durationSeconds         INTEGER,
    uploadDate              DATE,
    uploaderUserId          INTEGER,
    isPublic                INTEGER,      -- 0 = false, 1 = true
    usageRights             TEXT,
    associatedTag           TEXT,
    description             TEXT,
    thumbnailUrl            TEXT,
    durationFormatted       TEXT,
    bitrateKbps             INTEGER,
    frameRateFps            REAL,
    colorSpace              TEXT,
    createdAt               TEXT,
    updatedAt               TEXT,
    archiveLocation         TEXT,
    checksum                TEXT
);

INSERT INTO race_media_assets VALUES (1,101,'Video','race_start','mp4','video/mp4',250000000,1920,1080,180,'2025-06-12',12,1,'Full Rights','Start','Main race start video','http://example.com/thumb1.jpg','00:03:00',5000,30.0,'YUV','2025-06-12','2025-06-12','/archive/2025/06','chk123');
INSERT INTO race_media_assets VALUES (2,101,'Image','podium_finish','jpg','image/jpeg',3500000,3840,2160,0,'2025-06-13',13,1,'Limited Rights','Podium','Podium ceremony photo','http://example.com/thumb2.jpg','',0,0,'RGB','2025-06-13','2025-06-13','/archive/2025/06','chk456');
INSERT INTO race_media_assets VALUES (3,102,'Audio','post_race_interview','mp3','audio/mpeg',8000000,0,0,240,'2025-07-01',14,0,'Editorial Use','Interview','Driver post‑race interview','http://example.com/thumb3.jpg','00:04:00',192,0,'Mono','2025-07-01','2025-07-01','/archive/2025/07','chk789');

-- Circuit maintenance schedule
CREATE TABLE circuit_maintenance_schedule
(
    scheduleId              INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId               INTEGER NOT NULL,
    maintenanceDate         DATE NOT NULL,
    startTime               TEXT,
    endTime                 TEXT,
    maintenanceType         TEXT,
    responsibleTeam         TEXT,
    description             TEXT,
    equipmentRequired       TEXT,
    safetyProtocol          TEXT,
    estimatedDurationHours  REAL,
    actualDurationHours     REAL,
    downtimeMinutes         INTEGER,
    costUSD                 REAL,
    approvedBy              TEXT,
    approvalDate            DATE,
    isCritical              INTEGER,      -- 0 = false, 1 = true
    weatherImpact           TEXT,
    notes                   TEXT,
    createdAt               TEXT,
    updatedAt               TEXT,
    nextInspectionDate      DATE,
    inspectionStatus        TEXT,
    complianceVerified      INTEGER,      -- 0 = false, 1 = true
    documentationUrl        TEXT
);

INSERT INTO circuit_maintenance_schedule VALUES (1,10,'2025-08-01','02:00','06:00','Track resurfacing','Paving Crew','Replace top layer of asphalt','Paver, rollers','Standard PPE, traffic control',4.0,4.2,30,120000,'Chief Engineer','2025-07-20',1,'Rain delay possible','Completed ahead of schedule','2025-08-01','2025-08-01','2025-12-01','Pending','http://example.com/doc1.pdf');
INSERT INTO circuit_maintenance_schedule VALUES (2,11,'2025-09-15','08:00','12:00','Barrier inspection','Safety Team','Inspect and replace damaged barriers','Wrench, ladder','Lockout‑tagout','4.0',3.5,0,15000,'Safety Manager','2025-09-01',0,'Clear','All barriers compliant','2025-09-15','2025-09-15','2026-03-15','Scheduled','http://example.com/doc2.pdf');
INSERT INTO circuit_maintenance_schedule VALUES (3,12,'2025-10-20','14:00','18:00','Lighting upgrade','Electrical Crew','Install LED lighting system','LED modules, cabling','Electrical lockout','4.0',4.1,15,50000,'Project Lead','2025-10-05',1,'Wind','Testing completed','2025-10-20','2025-10-20','2026-04-20','Completed','http://example.com/doc3.pdf');

-- Driver fitness assessment records (excluding direct driver performance results)
CREATE TABLE driver_fitness_assessments
(
    assessmentId            INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId                INTEGER NOT NULL,
    assessmentDate          DATE NOT NULL,
    assessorName            TEXT,
    heightCm                INTEGER,
    weightKg                REAL,
    bodyFatPercent          REAL,
    VO2Max                  REAL,
    restingHeartRateBPM     INTEGER,
    flexibilityScore        INTEGER,
    balanceScore            INTEGER,
    agilityScore            INTEGER,
    strengthScore           INTEGER,
    enduranceScore          INTEGER,
    injuryRiskLevel        TEXT,
    recommendedTrainingPlan TEXT,
    followUpDate            DATE,
    notes                   TEXT,
    createdAt               TEXT,
    updatedAt               TEXT,
    isApproved              INTEGER,      -- 0 = false, 1 = true
    approvalDate            DATE,
    approvalOfficer         TEXT,
    overallFitnessRating    INTEGER,
    nextAssessmentDue       DATE
);

INSERT INTO driver_fitness_assessments VALUES (1,23,'2025-05-01','Dr Allen',180,78.5,12.5,55.0,58,85,90,80,70,75,'Low','Strength and endurance focus','2025-08-01','All metrics within healthy range','2025-05-01','2025-05-01',1,'2025-05-02','Dr Allen',82,'2025-11-01');
INSERT INTO driver_fitness_assessments VALUES (2,24,'2025-06-15','Dr Baker',175,70.0,14.0,48.0,62,80,85,78,68,72,'Medium','Injury prevention and flexibility','2025-09-15','Slight increase in body fat','2025-06-15','2025-06-15',1,'2025-06-16','Dr Baker',78,'2025-12-15');
INSERT INTO driver_fitness_assessments VALUES (3,25,'2025-07-20','Dr Clark',182,85.0,10.0,60.0,55,88,92,85,75,80,'Low','Maintain current regimen','2025-10-20','Excellent cardiovascular health','2025-07-20','2025-07-20',1,'2025-07-21','Dr Clark',86,'2026-01-20');

-- Sponsor brand engagement metrics
CREATE TABLE sponsor_brand_engagements
(
    engagementId            INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId               INTEGER NOT NULL,
    campaignName            TEXT,
    startDate               DATE,
    endDate                 DATE,
    platform                TEXT,
    impressions             INTEGER,
    clicks                  INTEGER,
    clickThroughRatePercent REAL,
    engagements             INTEGER,
    averageEngagementTimeSec INTEGER,
    videoViews              INTEGER,
    videoCompletionRatePercent REAL,
    socialShares            INTEGER,
    hashtagMentions         INTEGER,
    sentimentScore          REAL,
    conversionCount         INTEGER,
    conversionRatePercent   REAL,
    revenueGeneratedUSD     REAL,
    costPerEngagementUSD    REAL,
    notes                   TEXT,
    createdAt               TEXT,
    updatedAt               TEXT,
    isActive                INTEGER,      -- 0 = false, 1 = true
    lastUpdatedBy           TEXT,
    budgetUSD                REAL,
    roiPercent              REAL
);

INSERT INTO sponsor_brand_engagements VALUES (1,301,'FastTrack Summer Blast','2025-06-01','2025-08-31','Social Media',1200000,45000,3.75,80000,12,300000,75.0,15000,2000,0.8,5000,0.42,250000,0.3125,'Strong summer campaign','2025-06-01','2025-08-31',1,'MarketingLead','500000',50);
INSERT INTO sponsor_brand_engagements VALUES (2,302,'EcoFuel Green Initiative','2025-04-15','2025-07-15','Online',800000,20000,2.5,50000,8,150000,60.0,8000,1200,0.6,2000,0.25,100000,0.2,'Eco‑focused audience','2025-04-15','2025-07-15',1,'EcoTeamLead','300000',33.33);
INSERT INTO sponsor_brand_engagements VALUES (3,303,'AeroTech Tech Expo','2025-09-01','2025-09-30','Event',250000,15000,6.0,30000,20,50000,80.0,5000,800,0.9,1200,0.48,180000,0.6667,'High engagement at expo','2025-09-01','2025-09-30',1,'EventCoordinator','250000',72);

-- Sponsor brand engagement metrics (duplicate removed, kept unique tables)

-- Sponsor brand engagement metrics already created; next table:

-- Sponsor product placement inventory
CREATE TABLE sponsor_product_placements
(
    placementId             INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId               INTEGER NOT NULL,
    eventId                 INTEGER NOT NULL,
    productName             TEXT,
    placementType           TEXT,
    locationDescription     TEXT,
    startDate               DATE,
    endDate                 DATE,
    visualAssetUrl          TEXT,
    estimatedImpressions    INTEGER,
    actualImpressions       INTEGER,
    clickThroughRatePercent REAL,
    costUSD                 REAL,
    isFeatured              INTEGER,      -- 0 = false, 1 = true
    approvalStatus          TEXT,
    approvedBy              TEXT,
    approvalDate            DATE,
    notes                   TEXT,
    createdAt               TEXT,
    updatedAt               TEXT,
    complianceVerified      INTEGER,      -- 0 = false, 1 = true
    complianceCheckDate    DATE,
    complianceOfficer      TEXT,
    removalDate             DATE,
    removalReason           TEXT
);

INSERT INTO sponsor_product_placements VALUES (1,301,101,'FastTrack Energy Drink','Trackside Banner','Start/Finish Straight','2025-06-12','2025-06-14','http://example.com/banner1.jpg',250000,260000,2.5,75000,1,'Approved','SponsorManager','2025-05-30','High visibility banner','2025-05-31','2025-05-31',1,'2025-05-30','ComplianceOfficer','2025-06-15','Event End');
INSERT INTO sponsor_product_placements VALUES (2,302,102,'EcoFuel Solar Charger','Pit Lane Display','Pit Lane Entrance','2025-07-10','2025-07-12','http://example.com/display2.jpg',150000,145000,1.8,50000,0,'Pending','',NULL,'Awaiting approval','2025-07-01','2025-07-01',0,NULL,NULL,NULL,NULL);
INSERT INTO sponsor_product_placements VALUES (3,303,103,'AeroTech Winglet','Vehicle Livery','Rear Wing','2025-08-20','2025-08-20','http://example.com/livery3.png',300000,310000,3.0,120000,1,'Approved','TeamLead','2025-08-10','Custom livery for selected cars','2025-08-10','2025-08-10',1,'2025-08-09','ComplianceOfficer','2025-08-21','Post‑race removal');

-- Sponsor brand engagement metrics (ensured 10 tables total)

-- Sponsor partnership performance indicators
CREATE TABLE sponsor_partnership_performance
(
    performanceId           INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId               INTEGER NOT NULL,
    partnershipYear         INTEGER,
    activationCount         INTEGER,
    totalInvestmentUSD      REAL,
    brandAwarenessScore     REAL,
    marketShareChangePct    REAL,
    netPromoterScore        REAL,
    audienceReachMillions   REAL,
    digitalEngagementScore  REAL,
    eventAttendanceChangePct REAL,
    salesLiftPercent        REAL,
    returnOnInvestmentPct   REAL,
    strategicFitScore       REAL,
    riskLevel               TEXT,
    comments                TEXT,
    createdAt               TEXT,
    updatedAt               TEXT,
    isActive                INTEGER,      -- 0 = false, 1 = true
    lastReviewedBy          TEXT,
    reviewDate              DATE,
    nextReviewDueYear       INTEGER,
    complianceStatus        TEXT,
    auditReference          TEXT,
    notes                   TEXT
);

INSERT INTO sponsor_partnership_performance VALUES (1,301,2025,5,500000,78.5,1.2,65.0,12.3,80.0,2.5,4.0,10.0,85.0,'Low','Partnership exceeding expectations','2025-06-01','2025-06-01',1,'CFO','2025-06-15',2026,'Compliant','AUD2025-06','No issues');
INSERT INTO sponsor_partnership_performance VALUES (2,302,2025,3,300000,70.0,0.8,58.0,8.5,70.0,1.8,3.5,8.0,80.0,'Medium','Steady growth observed','2025-07-01','2025-07-01',1,'FinanceMgr','2025-07-10',2026,'Compliant','AUD2025-07','Monitor brand metrics');
INSERT INTO sponsor_partnership_performance VALUES (3,303,2025,4,450000,75.0,1.0,62.0,10.0,75.0,2.0,3.8,9.5,82.0,'Low','Strong alignment with brand strategy','2025-08-01','2025-08-01',1,'StrategicLead','2025-08-05',2026,'Compliant','AUD2025-08','Continue current approach');