-- Circuit infrastructure assets linked to circuits
CREATE TABLE circuit_infrastructure_assets (
    assetId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    assetType TEXT,
    manufacturer TEXT,
    modelNumber TEXT,
    serialNumber TEXT,
    installDate DATE,
    warrantyExpiration DATE,
    locationDescription TEXT,
    status TEXT,
    lastInspectionDate DATE,
    nextInspectionDue DATE,
    maintenanceCost REAL,
    depreciationValue REAL,
    powerRating REAL,
    dimensions TEXT,
    weight REAL,
    temperatureRating REAL,
    humidityRating REAL,
    complianceCertificate TEXT,
    notes TEXT
);
INSERT INTO circuit_infrastructure_assets VALUES (1,1,'TimingSystem','Chronos','TS-100','SN12345','2022-01-15','2025-01-15','Pit Lane','Operational','2023-06-01','2024-06-01',5000.00,1500.00,500,'2x1x0.5m',150,25,60,'CERT2022','Initial installation');
INSERT INTO circuit_infrastructure_assets VALUES (2,2,'SafetyBarrier','SafeGuard','SB-200','SN67890','2021-05-20','2024-05-20','Main Straight','Operational','2023-05-10','2024-05-10',3000.00,900.00,0,'5x0.2x0.2m',200,NULL,NULL,'CERT2021','Routine check');
INSERT INTO circuit_infrastructure_assets VALUES (3,3,'LightingSystem','BrightLite','LS-300','SN54321','2023-03-10','2026-03-10','Grandstand','Pending','2023-09-01','2024-09-01',8000.00,2400.00,1000,'10x2x1m',500,35,70,'CERT2023','Awaiting final testing');

-- Driver mental health program participation records
CREATE TABLE driver_mental_health_programs (
    programId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    programName TEXT,
    startDate DATE,
    endDate DATE,
    therapistName TEXT,
    sessionsCount INTEGER,
    sessionFrequency TEXT,
    goals TEXT,
    assessmentScore REAL,
    followUpDate DATE,
    notes TEXT,
    confidentialityLevel TEXT,
    programStatus TEXT,
    fundingSource TEXT,
    allocatedBudget REAL,
    outcome TEXT,
    programType TEXT,
    contactEmail TEXT,
    programLocation TEXT
);
INSERT INTO driver_mental_health_programs VALUES (1,101,'Resilience Boost','2023-02-01','2023-05-01','Dr Smith',12,'Weekly','Improve focus and stress coping',85.5,'2023-06-01','Positive progress','High','Completed','Team Funding',15000.00,'Improved race consistency','Group','driver101@example.com','Team Facility');
INSERT INTO driver_mental_health_programs VALUES (2,102,'Mindset Mastery','2023-03-15','2023-07-15','Dr Lee',16,'Biweekly','Enhance concentration',78.0,'2023-08-01','Needs additional sessions','Medium','Ongoing','Sponsor Support',20000.00,'Moderate improvement','Individual','driver102@example.com','Remote');
INSERT INTO driver_mental_health_programs VALUES (3,103,'Stress Management','2023-01-10','2023-04-10','Dr Patel',10,'Weekly','Reduce pre‑race anxiety',90.0,'2023-05-01','Excellent results','High','Completed','Team Funding',12000.00,'Significant reduction in anxiety','Group','driver103@example.com','Team Facility');

-- Sponsor community outreach event records
CREATE TABLE sponsor_community_outreach (
    outreachId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    eventName TEXT,
    eventDate DATE,
    communityName TEXT,
    city TEXT,
    state TEXT,
    country TEXT,
    participants INTEGER,
    fundsAllocated REAL,
    volunteerHours INTEGER,
    mediaCoverage TEXT,
    outcomeSummary TEXT,
    sponsorRepName TEXT,
    sponsorRepContact TEXT,
    programGoal TEXT,
    targetDemographic TEXT,
    partnershipType TEXT,
    feedbackScore REAL,
    status TEXT
);
INSERT INTO sponsor_community_outreach VALUES (1,201,'Eco Drive Day','2023-04-22','Green Valley','Austin','TX','USA',250,5000.00,80,'Local News','Increased awareness of sustainable transport','Maria Gomez','maria.gomez@sponsor.com','Promote eco‑friendly driving','Youth','CSR','4.5','Completed');
INSERT INTO sponsor_community_outreach VALUES (2,202,'STEM Racing Workshop','2023-05-10','Tech Hub','San Jose','CA','USA',180,3000.00,60,'Tech Blog','Sparked interest in engineering careers','Liam Chen','liam.chen@sponsor.com','STEM education','Students','Education','4.8','Ongoing');
INSERT INTO sponsor_community_outreach VALUES (3,203,'Charity Race Gala','2023-06-15','Downtown Center','Chicago','IL','USA',120,10000.00,40,'City Gazette','Raised funds for local hospitals','Aisha Khan','aisha.khan@sponsor.com','Fundraising','Adults','Charity','4.2','Planned');

-- Race media production schedule
CREATE TABLE race_media_production_schedule (
    scheduleId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    productionPhase TEXT,
    startDate DATE,
    endDate DATE,
    responsibleTeam TEXT,
    budget REAL,
    equipmentList TEXT,
    crewCount INTEGER,
    location TEXT,
    notes TEXT,
    status TEXT,
    approvalDate DATE,
    directorName TEXT,
    producerName TEXT,
    postProductionDays INTEGER,
    broadcastChannel TEXT,
    streamingPlatform TEXT,
    contentRating TEXT,
    versionNumber INTEGER
);
INSERT INTO race_media_production_schedule VALUES (1,1001,'Pre‑production','2023-07-01','2023-07-05','Production Team A',20000.00,'Cameras, Drones','25','Circuit Headquarters','Planning meetings','Approved','2023-06-28','John Doe','Emily Clark',5,'Channel 1','StreamX','PG','1');
INSERT INTO race_media_production_schedule VALUES (2,1002,'Live Production','2023-08-10','2023-08-12','Production Team B',35000.00,'OB Van, Audio Mixer','40','Circuit Main Gate','Live feed coordination','Pending','2023-08-08','David Lee','Sofia Martinez',7,'Channel 2','StreamY','G','1');
INSERT INTO race_media_production_schedule VALUES (3,1003,'Post‑production','2023-09-15','2023-09-20','Post Team','15000.00','Editing Suite','15','Offsite Studio','Highlight reel editing','In Progress','2023-09-10','Karen Smith','Michael Brown',3,'Channel 3','StreamZ','PG-13','2');

-- Venue energy consumption detail records
CREATE TABLE venue_energy_consumption_detail (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    recordDate DATE,
    hour INTEGER,
    electricityKWh REAL,
    gasTherms REAL,
    waterLiters REAL,
    renewablePercentage REAL,
    peakDemandKW REAL,
    averageDemandKW REAL,
    carbonEmissionsKg REAL,
    costUSD REAL,
    tariffType TEXT,
    subMeterId TEXT,
    supplierName TEXT,
    meterReadingStart REAL,
    meterReadingEnd REAL,
    anomalyFlag TEXT,
    notes TEXT,
    createdBy TEXT
);
INSERT INTO venue_energy_consumption_detail VALUES (1,301,'2023-07-01',10,150.5,20.3,500.0,30.0,80.0,70.0,45.2,1200.00,'Peak','SM-01','EnergyCo',1000.0,1150.5,'None','Normal operation','AnalystA');
INSERT INTO venue_energy_consumption_detail VALUES (2,301,'2023-07-01',14,200.0,25.0,600.0,35.0,95.0,85.0,58.0,1600.00,'Off‑Peak','SM-02','EnergyCo',1150.5,1350.5,'None','Higher demand period','AnalystB');
INSERT INTO venue_energy_consumption_detail VALUES (3,301,'2023-07-01',22,120.0,15.0,400.0,25.0,60.0,55.0,35.0,900.00,'Off‑Peak','SM-03','EnergyCo',1350.5,1470.0,'None','Reduced activity','AnalystC');

-- Team aerodynamic design project records
CREATE TABLE team_aero_design_projects (
    projectId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    projectName TEXT,
    startDate DATE,
    endDate DATE,
    leadEngineer TEXT,
    aerodynamicFocus TEXT,
    windTunnelTests INTEGER,
    cfdSimulations INTEGER,
    materialUsed TEXT,
    targetDownforce REAL,
    targetDrag REAL,
    budgetMillions REAL,
    status TEXT,
    sponsorId INTEGER,
    patentsFiled INTEGER,
    resultsSummary TEXT,
    testingFacility TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE
);
INSERT INTO team_aero_design_projects VALUES (1,401,'Low‑Drag Wing','2023-01-10','2023-06-15','Laura Chen','Wing','5','200','Carbon Fiber',150.0,30.0,2.5,'Completed',501,2,'Downforce increased by 5%','Wind Tunnel A','Successful','2023-06-20','2023-06-20');
INSERT INTO team_aero_design_projects VALUES (2,402,'Front Splitter Optimization','2023-02-01','2023-08-30','Mark Patel','Splitter','8','350','Aluminum',120.0,25.0,3.0,'In Progress',502,1,'Preliminary CFD shows 3% drag reduction','Wind Tunnel B','Ongoing tests','2023-09-01','2023-09-01');
INSERT INTO team_aero_design_projects VALUES (3,403,'Rear Diffuser Redesign','2023-03-20','2023-09-10','Sofia Martinez','Diffuser','6','280','Titanium',130.0,28.0,2.8,'Planned',503,0,'Design phase pending','Wind Tunnel C','Awaiting material procurement','2023-09-12','2023-09-12');

-- Fan experience interactive feature catalog
CREATE TABLE fan_experience_interactive_features (
    featureId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    featureName TEXT,
    description TEXT,
    activationDate DATE,
    deactivationDate DATE,
    technologyUsed TEXT,
    sponsorId INTEGER,
    engagementScore REAL,
    avgUsageMinutes REAL,
    totalUsers INTEGER,
    feedbackRating REAL,
    maintenanceSchedule TEXT,
    status TEXT,
    locationWithinVenue TEXT,
    interactiveMode TEXT,
    version INTEGER,
    lastUpdated DATE,
    notes TEXT,
    responsibleTeam TEXT
);
INSERT INTO fan_experience_interactive_features VALUES (1,301,'AR Pit Stop Simulator','Augmented reality pit stop experience','2023-05-01','2025-12-31','AR','601',85.0,12.5,2000,4.6,'Quarterly','Active','Grandstand East','Standalone',1,'2023-06-01','High usage during races','TechTeamA');
INSERT INTO fan_experience_interactive_features VALUES (2,301,'VR Race Replay','Virtual reality replay of previous laps','2023-06-15','2025-12-31','VR','602',78.0,9.8,1500,4.3','Biannual','Fan Zone West','Headset','1','2023-07-10','Positive feedback','TechTeamB');
INSERT INTO fan_experience_interactive_features VALUES (3,301,'Live Data Wall','Large screen showing live telemetry','2023-04-01','2025-12-31','LED','603',92.0,15.0,2500,4.8','Monthly','Main Atrium','Wall Mounted','2','2023-08-01','Core attraction','TechTeamC');

-- Logistics fuel distribution records for races
CREATE TABLE logistics_fuel_distribution_records (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    supplierId INTEGER,
    fuelType TEXT,
    volumeLiters REAL,
    deliveryDate DATE,
    deliveryTime TEXT,
    truckId TEXT,
    driverId INTEGER,
    temperatureC REAL,
    purityPercentage REAL,
    invoiceNumber TEXT,
    costUSD REAL,
    paymentStatus TEXT,
    receiptConfirmed TEXT,
    notes TEXT,
    createdBy TEXT,
    createdAt DATE,
    approvedBy TEXT,
    approvalDate DATE
);
INSERT INTO logistics_fuel_distribution_records VALUES (1,1001,701,'Petrol',25000.0,'2023-07-10','08:30','TRK-01',801,22.5,99.8,'INV-1001',35000.00,'Paid','Yes','Delivered on schedule','LogistA','2023-07-09','ManagerA','2023-07-09');
INSERT INTO logistics_fuel_distribution_records VALUES (2,1002,702,'Diesel',30000.0,'2023-08-15','09:15','TRK-02',802,21.0,99.5,'INV-1002',42000.00,'Pending','No','Awaiting receipt verification','LogistB','2023-08-14','ManagerB','2023-08-14');
INSERT INTO logistics_fuel_distribution_records VALUES (3,1003,703,'Hybrid','15000.0','2023-09-20','07:45','TRK-03',803,23.0,99.9,'INV-1003','21000.00','Paid','Yes','Special handling for hybrid fuel','LogistC','2023-09-19','ManagerC','2023-09-19');

-- Medical staff credential records
CREATE TABLE medical_staff_credentials (
    credentialId INTEGER PRIMARY KEY AUTOINCREMENT,
    staffId INTEGER,
    credentialType TEXT,
    credentialNumber TEXT,
    issuedBy TEXT,
    issueDate DATE,
    expirationDate DATE,
    verificationStatus TEXT,
    notes TEXT,
    lastUpdated DATE,
    uploadedBy TEXT,
    documentUrl TEXT,
    credentialScope TEXT,
    renewalRequired BOOLEAN,
    renewalReminderDate DATE,
    complianceLevel TEXT,
    auditTrail TEXT,
    contactEmail TEXT,
    phoneNumber TEXT,
    status TEXT
);
INSERT INTO medical_staff_credentials VALUES (1,401,'EMT Certification','EMT-12345','National EMS','2020-03-01','2025-02-28','Verified','Valid certification','2023-05-10','AdminA','http://docs.example.com/emt-12345.pdf','Emergency','0','2025-02-01','High','AuditLog1','staff401@team.com','5551234567','Active');
INSERT INTO medical_staff_credentials VALUES (2,402,'Advanced Cardiac Life Support','ACLS-67890','Medical Board','2019-07-15','2024-07-14','Verified','Expires soon','2023-06-20','AdminB','http://docs.example.com/acls-67890.pdf','Clinical','1','2024-06-30','Medium','AuditLog2','staff402@team.com','5559876543','Active');
INSERT INTO medical_staff_credentials VALUES (3,403,'Sports Medicine Specialist','SMS-11223','Sports Med Association','2021-01-20','2026-01-19','Pending','Awaiting verification','2023-07-01','AdminC','http://docs.example.com/sms-11223.pdf','Sports','0','2026-01-01','High','AuditLog3','staff403@team.com','5555551212','Pending');

-- Telemetry data quality metrics per race
CREATE TABLE telemetry_data_quality_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    dataSource TEXT,
    samplingRateHz INTEGER,
    latencyMs INTEGER,
    packetLossPercent REAL,
    dataIntegrityScore REAL,
    missingFrames INTEGER,
    outlierCount INTEGER,
    calibrated BOOLEAN,
    calibrationDate DATE,
    notes TEXT,
    analystName TEXT,
    reviewed BOOLEAN,
    reviewDate DATE,
    anomalyFlag TEXT,
    qualityTier TEXT,
    version INTEGER,
    createdAt DATE,
    updatedAt DATE,
    sourceSystem TEXT
);
INSERT INTO telemetry_data_quality_metrics VALUES (1,1001,'Car Sensors','1000',15,0.02,98.5,5,2,1,'2023-07-01','All systems nominal','AnalystX',1,'2023-07-02','None','A',1,'2023-07-01','2023-07-02','TelemetryCore');
INSERT INTO telemetry_data_quality_metrics VALUES (2,1002,'Track Cameras','60',30,0.10,92.0,12,8,0,NULL,'Minor gaps in video sync','AnalystY',0,NULL,'Possible Sync Issue','B',1,'2023-08-12','2023-08-12','VideoStream');
INSERT INTO telemetry_data_quality_metrics VALUES (3,1003,'Drone Sensors','500',20,0.05,95.3,7,3,1,'2023-09-10','Stable data feed','AnalystZ',1,'2023-09-11','None','A',1,'2023-09-10','2023-09-11','DroneTelemetry');