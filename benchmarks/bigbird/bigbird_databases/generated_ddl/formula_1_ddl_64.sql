```sql
-- Safety drill records
CREATE TABLE safety_drill_records (
    drillId           INTEGER PRIMARY KEY AUTOINCREMENT,
    eventDate         DATE NOT NULL,
    location          TEXT NOT NULL,
    drillType         TEXT,
    organizer         TEXT,
    participants      INTEGER,
    durationMinutes   INTEGER,
    outcome           TEXT,
    notes             TEXT,
    createdAt         DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt         DATETIME DEFAULT CURRENT_TIMESTAMP,
    drillSupervisor   TEXT,
    safetyLevel       TEXT,
    equipmentUsed     TEXT,
    weatherCondition  TEXT,
    riskRating        INTEGER,
    complianceFlag    TEXT,
    auditId           INTEGER,
    region            TEXT,
    shift             TEXT,
    externalAgency    TEXT
);

INSERT INTO safety_drill_records VALUES
(NULL,'2024-03-15','Silverstone','Fire','SafetyDept',150,45,'Successful','All clear',DEFAULT,DEFAULT,'John Doe','High','Extinguishers','Clear',2,'Compliant',101,'UK','Morning','FireAuthority'),
(NULL,'2024-04-10','Monaco','Evacuation','OpsTeam',200,30,'Successful','Quick exit',DEFAULT,DEFAULT,'Maria Smith','Medium','ExitSigns','Rainy',1,'Compliant',102,'Monaco','Afternoon','LocalPolice'),
(NULL,'2024-05-05','Spa Francorchamps','Chemical','SafetyDept',180,60,'Partial','Leak contained',DEFAULT,DEFAULT,'Liu Wei','High','SpillKits','Foggy',3,'NonCompliant',103,'Belgium','Night','EnvironmentalAgency');

-- Driver media content
CREATE TABLE driver_media_content (
    contentId          INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId           INTEGER NOT NULL,
    mediaType          TEXT,
    url                TEXT,
    title              TEXT,
    description        TEXT,
    uploadDate         DATE,
    durationSeconds    INTEGER,
    format             TEXT,
    resolution         TEXT,
    language           TEXT,
    viewCount          INTEGER,
    likeCount          INTEGER,
    shareCount         INTEGER,
    thumbnailUrl       TEXT,
    sourcePlatform     TEXT,
    copyright          TEXT,
    tags               TEXT,
    isFeatured         TEXT,
    rating             REAL,
    commentsEnabled    TEXT
);

INSERT INTO driver_media_content VALUES
(NULL,12,'Video','http://media.example.com/vid1','Qualifying Highlights','Highlights from qualifying session','2024-03-20',180,'MP4','1920x1080','English',12000,340,75,'http://media.example.com/thumb1','YouTube','TeamLogo','speed,qualifying','Yes',4.5,'Yes'),
(NULL,23,'Image','http://media.example.com/img1','Podium Photo','Team on the podium after race','2024-04-02',NULL,'JPEG','3840x2160','English',8000,210,30,'http://media.example.com/thumb2','Instagram','TeamLogo','podium,team','No',4.0,'Yes'),
(NULL,5,'Article','http://media.example.com/art1','Driver Interview','In‑depth interview after victory','2024-05-10',NULL,'HTML',NULL,'English',5000,150,20,'http://media.example.com/thumb3','Website','TeamLogo','interview,victory','Yes',4.8,'No');

-- Race virtual fan engagement
CREATE TABLE race_virtual_fan_engagement (
    engagementId        INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId              INTEGER NOT NULL,
    fanId               INTEGER NOT NULL,
    interactionType     TEXT,
    timestamp           DATETIME,
    platform            TEXT,
    contentId           INTEGER,
    durationSeconds     INTEGER,
    sentimentScore      REAL,
    location            TEXT,
    deviceType          TEXT,
    ipAddress           TEXT,
    metadata            TEXT,
    rewardPoints        INTEGER,
    engagementScore     REAL,
    isActive            TEXT,
    createdAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    campaignId          INTEGER,
    sessionId           TEXT,
    feedbackText        TEXT
);

INSERT INTO race_virtual_fan_engagement VALUES
(NULL,101,1001,'LiveChat','2024-03-21 14:32:10','App',2001,300,0.85,'London','Mobile','192.168.1.10','mode=voice','150',92.5,'Yes',DEFAULT,DEFAULT,501,'S1','Great experience'),
(NULL,102,1002,'VRTour','2024-04-12 09:15:45','VRHeadset',2002,600,0.92,'Monaco','VR','203.0.113.5','tour=track','300',98.0,'Yes',DEFAULT,DEFAULT,502,'S2','Loved the immersion'),
(NULL,103,1003,'Poll','2024-05-06 18:45:00','Web',2003,30,0.75,'Spa','Desktop','198.51.100.22','question=winner','50',70.0,'No',DEFAULT,DEFAULT,503,'S3','Could be better');

-- Circuit energy usage
CREATE TABLE circuit_energy_usage (
    usageId               INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId            INTEGER NOT NULL,
    date                 DATE NOT NULL,
    energySource         TEXT,
    consumptionMWh       REAL,
    peakDemandMW         REAL,
    averageVoltageKV     REAL,
    averageCurrentKA     REAL,
    temperatureC         REAL,
    humidityPercent      REAL,
    carbonEmissionsKg    REAL,
    renewablePercentage  REAL,
    gridOperator         TEXT,
    meterReadingStart    REAL,
    meterReadingEnd      REAL,
    tariffCategory       TEXT,
    billingPeriod        TEXT,
    costUsd              REAL,
    notes                TEXT,
    createdAt            DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt            DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO circuit_energy_usage VALUES
(NULL,1,'2024-03-31','Grid',1200.5,35.2,230.0,5.1,22.4,45.0,250.0,45.0,'NationalGrid',5000.0,6200.5,'Industrial','March','15000.00','Normal operation',DEFAULT,DEFAULT),
(NULL,2,'2024-04-30','Solar',850.3,28.7,240.0,3.5,20.1,40.0,400.0,60.0,'RegionUtility',3000.0,3850.3,'Commercial','April','9500.00','Partial solar offset',DEFAULT,DEFAULT),
(NULL,3,'2024-05-31','Wind',970.8,30.1,235.0,4.2,21.0,42.0,350.0,55.0,'WindPowerCo',4000.0,4970.8,'Industrial','May','11000.00','Wind contribution',DEFAULT,DEFAULT);

-- Team legal documents
CREATE TABLE team_legal_documents (
    docId                INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId               INTEGER NOT NULL,
    documentType         TEXT,
    title                TEXT,
    versionNumber        TEXT,
    effectiveDate        DATE,
    expirationDate       DATE,
    status               TEXT,
    jurisdiction         TEXT,
    filePath             TEXT,
    uploadedBy           TEXT,
    uploadDate           DATE,
    reviewDate           DATE,
    approvedBy           TEXT,
    approvalStatus       TEXT,
    confidentialityLevel TEXT,
    relatedCaseId        INTEGER,
    notes                TEXT,
    isActive             TEXT,
    createdAt            DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt            DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO team_legal_documents VALUES
(NULL,10,'Contract','Sponsorship Agreement','v3','2024-01-01','2026-12-31','Active','UK','/docs/contract10.pdf','Alice','2024-01-05','2024-01-10','Bob','Approved','High',NULL,'Signed by both parties','Yes',DEFAULT,DEFAULT),
(NULL,12,'Policy','Data Protection Policy','v1','2023-07-01','2025-07-01','Active','EU','/docs/dpp12.pdf','Charlie','2023-07-03','2023-07-08','Diana','Approved','Medium',NULL,'Complies with GDPR','Yes',DEFAULT,DEFAULT),
(NULL,9,'Agreement','Technical Services Agreement','v2','2022-05-15','2024-05-14','Expired','US','/docs/tsa9.pdf','Eve','2022-05-20','2022-05-25','Frank','Approved','Low',12345,'Terminated early','No',DEFAULT,DEFAULT);

-- Vendor insurance policies
CREATE TABLE vendor_insurance_policies (
    policyId            INTEGER PRIMARY KEY AUTOINCREMENT,
    vendorId            INTEGER NOT NULL,
    policyNumber        TEXT,
    insurerName         TEXT,
    coverageType        TEXT,
    limitAmount         REAL,
    deductible          REAL,
    startDate           DATE,
    endDate             DATE,
    status              TEXT,
    premiumUsd          REAL,
    contactPerson       TEXT,
    contactPhone        TEXT,
    policyDocumentPath  TEXT,
    riskCategory        TEXT,
    jurisdiction        TEXT,
    claimsMade          INTEGER,
    lastRenewalDate     DATE,
    notes               TEXT,
    isPrimary           TEXT,
    createdAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt           DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO vendor_insurance_policies VALUES
(NULL,201,'POL-001','GlobalInsure','General Liability',500000.0,2500.0,'2024-01-01','2025-01-01','Active',12000.0,'Gina','555-0101','/insure/pol001.pdf','Medium','UK',0,'2024-01-01','Standard policy','Yes',DEFAULT,DEFAULT),
(NULL,202,'POL-002','SecureCover','Property Damage',300000.0,1500.0,'2023-06-15','2024-06-14','Expired',9000.0,'Hank','555-0202','/insure/pol002.pdf','Low','US',2,'2023-06-15','Renewal pending','No',DEFAULT,DEFAULT),
(NULL,203,'POL-003','AllRisk Ltd','Professional Indemnity',200000.0,1000.0,'2024-03-01','2025-02-28','Active',11000.0,'Ivy','555-0303','/insure/pol003.pdf','High','EU',1,'2024-03-01','Covering consulting services','Yes',DEFAULT,DEFAULT);

-- Fuel quality analysis
CREATE TABLE fuel_quality_analysis (
    analysisId          INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId              INTEGER NOT NULL,
    fuelBatchId         TEXT,
    sampleDate          DATE,
    viscosityCst        REAL,
    densityKgM3         REAL,
    octaneRating        INTEGER,
    sulfurContentPpm    REAL,
    waterContentPercent REAL,
    temperatureC        REAL,
    analysisResult      TEXT,
    labTechnician       TEXT,
    labName             TEXT,
    notes               TEXT,
    passedFlag          TEXT,
    createdAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    reportUrl           TEXT,
    batchNumber         TEXT,
    fuelType            TEXT,
    measuredGallon      REAL
);

INSERT INTO fuel_quality_analysis VALUES
(NULL,101,'BATCH-A1','2024-03-18',2.2,0.74,95,8.0,0.12,25.0,'Acceptable','John','RacingLab','All specs within limits','Yes',DEFAULT,DEFAULT,'/reports/fqa101.pdf','A1','Petrol',1500.0),
(NULL,102,'BATCH-B2','2024-04-09',2.4,0.76,98,5.0,0.08,22.0,'Excellent','Laura','FuelLab','High octane, low sulfur','Yes',DEFAULT,DEFAULT,'/reports/fqa102.pdf','B2','Petrol',1600.0),
(NULL,103,'BATCH-C3','2024-05-02',2.3,0.75,97,6.5,0.10,24.0,'Acceptable','Mike','EnergyLab','Minor variance in viscosity','Yes',DEFAULT,DEFAULT,'/reports/fqa103.pdf','C3','Petrol',1550.0);

-- Broadcast engineering staff
CREATE TABLE broadcast_engineering_staff (
    staffId           INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId       INTEGER NOT NULL,
    name              TEXT,
    role              TEXT,
    shiftStart        TIME,
    shiftEnd          TIME,
    contactEmail      TEXT,
    phoneExtension    TEXT,
    certification     TEXT,
    yearsExperience   INTEGER,
    assignedEquipment TEXT,
    notes             TEXT,
    isActive          TEXT,
    createdAt         DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt         DATETIME DEFAULT CURRENT_TIMESTAMP,
    supervisorId      INTEGER,
    department        TEXT,
    location          TEXT,
    contractType      TEXT,
    hourlyRateUsd     REAL,
    emergencyContact  TEXT
);

INSERT INTO broadcast_engineering_staff VALUES
(NULL,301,'Sam Taylor','Video Engineer','08:00','16:00','sam.taylor@example.com','101','AVIX','5','CamRigX','No issues','Yes',DEFAULT,DEFAULT,401,'Engineering','London','FullTime',45.0,'Emma Taylor 555-1234'),
(NULL,302,'Nina Patel','Audio Engineer','12:00','20:00','nina.patel@example.com','102','AvidPro','7','SoundMix2000','Handled live mix','Yes',DEFAULT,DEFAULT,402,'Engineering','Monaco','Contract','40.0','Rohan Patel 555-5678'),
(NULL,303,'Liu Cheng','Transmission Specialist','16:00','00:00','liu.cheng@example.com','103','SMPTE','10','TransModX','Upgraded uplink','Yes',DEFAULT,DEFAULT,403,'Engineering','Spa','FullTime','50.0','Mei Cheng 555-9012');

-- Hospitality event photos
CREATE TABLE hospitality_event_photos (
    photoId          INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId          INTEGER NOT NULL,
    photographerName TEXT,
    photoDate        DATE,
    filePath         TEXT,
    caption          TEXT,
    resolution       TEXT,
    fileSizeKB       INTEGER,
    cameraModel      TEXT,
    lensModel        TEXT,
    iso              INTEGER,
    aperture         TEXT,
    shutterSpeed     TEXT,
    focalLength      TEXT,
    tags             TEXT,
    isFeatured       TEXT,
    viewCount        INTEGER,
    likeCount        INTEGER,
    uploadedAt       DATETIME DEFAULT CURRENT_TIMESTAMP,
    notes            TEXT,
    location         TEXT
);

INSERT INTO hospitality_event_photos VALUES
(NULL,1001,'Olivia Reed','2024-03-15','/photos/hosp1001_01.jpg','VIP lounge opening','3840x2160',2500,'Canon EOS R5','RF24-70mm','200','f/2.8','1/125','24mm','VIP,Opening','Yes',500,120,DEFAULT,'High attendance','Silverstone'),
(NULL,1002,'Marco Silva','2024-04-10','/photos/hosp1002_01.jpg','Gourmet dinner setup','4000x3000',3000,'Nikon Z7','NIKKOR 24-70mm','100','f/4','1/60','35mm','Dinner,Gourmet','No',350,90,DEFAULT,'Evening ambience','Monaco'),
(NULL,1003,'Sofia Gomez','2024-05-05','/photos/hosp1003_01.jpg','Award ceremony podium','5000x3500',3500,'Sony A1','FE 70-200mm','400','f/2.8','1/200','70mm','Awards,Podium','Yes',800,200,DEFAULT,'Celebration moment','Spa');

-- Spectator health monitoring
CREATE TABLE spectator_health_monitoring (
    recordId               INTEGER PRIMARY KEY AUTOINCREMENT,
    spectatorId            INTEGER NOT NULL,
    eventId                INTEGER NOT NULL,
    checkDate              DATE,
    temperatureC           REAL,
    heartRateBpm           INTEGER,
    oxygenSaturationPercent REAL,
    symptomsReported       TEXT,
    medicalStaffId         INTEGER,
    actionTaken            TEXT,
    notes                  TEXT,
    isCritical             TEXT,
    followUpDate           DATE,
    createdAt              DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt              DATETIME DEFAULT CURRENT_TIMESTAMP,
    location               TEXT,
    deviceId               TEXT,
    monitoringMethod      TEXT,
    riskLevel             TEXT,
    temperatureTrend      TEXT
);

INSERT INTO spectator_health_monitoring VALUES
(NULL,5001,101,'2024-03-16',36.8,78,98.0,'None',301,'None','Vitals normal','No','2024-03-20','2024-03-16','Silverstone','DEV-001','Wearable','Low','Stable'),
(NULL,5002,102,'2024-04-11',37.5,85,96.5,'Cough',302,'Provided mask','Mild symptoms','Yes','2024-04-15','2024-04-11','Monaco','DEV-002','Thermal scanner','Medium','Rising'),
(NULL,5003,103,'2024-05-06',38.2,95,93.0,'Fever,Headache',303,'Referred to clinic','Elevated temperature','Yes','2024-05-10','2024-05-06','Spa','DEV-003','Rapid test','High','Increasing');
```