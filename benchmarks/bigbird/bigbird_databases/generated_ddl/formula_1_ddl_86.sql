-- Table storing detailed energy efficiency audit data for each venue
CREATE TABLE venue_energy_efficiency_audits (
    auditId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    auditDate DATE,
    auditorName TEXT,
    overallScore REAL,
    hvacScore REAL,
    lightingScore REAL,
    waterScore REAL,
    wasteScore REAL,
    renewableEnergyScore REAL,
    comments TEXT,
    actionPlanDueDate DATE,
    followUpDate DATE,
    complianceStatus TEXT,
    totalEnergySavingsKWh REAL,
    totalWaterSavingsLiters REAL,
    carbonReductionKg REAL,
    financialSavingsUSD REAL,
    recommendationSummary TEXT,
    auditVersion TEXT
);
INSERT INTO venue_energy_efficiency_audits VALUES (1,101,'2023-06-15','EnergyAuditCo','92.5','88.0','90.5','85.0','80.0','95.0','Improved hvac scheduling','2023-12-31','2024-03-15','Compliant','150000','300000','25000','120000','Upgrade insulation','v1');
INSERT INTO venue_energy_efficiency_audits VALUES (2,102,'2024-02-10','GreenMetrics','88.0','84.5','86.0','80.5','78.0','90.0','Implement LED lighting','2024-09-30','2025-01-20','Pending','90000','180000','15000','72000','Replace old boilers','v2');
INSERT INTO venue_energy_efficiency_audits VALUES (3,103,'2025-01-22','EcoInspect','94.0','92.0','93.5','89.0','85.0','97.0','Full renewable integration','2025-12-31','2026-04-10','Compliant','200000','400000','30000','160000','Add solar array','v1');

-- Table cataloguing loyalty reward items available to fans
CREATE TABLE fan_loyalty_reward_items (
    rewardItemId INTEGER PRIMARY KEY AUTOINCREMENT,
    rewardName TEXT,
    rewardCategory TEXT,
    pointsRequired INTEGER,
    description TEXT,
    validityStartDate DATE,
    validityEndDate DATE,
    stockQuantity INTEGER,
    redemptionLimitPerUser INTEGER,
    imageUrl TEXT,
    tierLevel TEXT,
    isExclusive INTEGER,
    partnerSponsorId INTEGER,
    createdAt DATE,
    updatedAt DATE,
    rewardValueUSD REAL,
    rewardType TEXT,
    regionEligibility TEXT,
    ageRestriction INTEGER,
    promotionalCode TEXT
);
INSERT INTO fan_loyalty_reward_items VALUES (1,'GrandPrixVIPPass','Experience',50000,'All access VIP ticket','2024-01-01','2024-12-31',100,1,'http://example.com/vip.png','Platinum',1,10,'2024-01-01','2024-01-01',1200.00,'Ticket','Global',18,'VIP2024');
INSERT INTO fan_loyalty_reward_items VALUES (2,'TeamMerchBundle','Merchandise',15000,'Shirt hat and scarf','2024-01-01','2025-12-31',1000,5,'http://example.com/bundle.png','Gold',0,20,'2024-01-01','2024-01-01',80.00,'Physical','EU',16,'MERCH2024');
INSERT INTO fan_loyalty_reward_items VALUES (3,'DigitalRaceReplay','Digital',8000,'Full race video with commentary','2023-06-01','2025-06-01',9999,10,'http://example.com/replay.png','Silver',0,30,'2023-06-01','2023-06-01',15.00,'Download','Global',0,'REPLAY2023');

-- Table tracking engagements with media partners for advertising campaigns
CREATE TABLE media_partner_engagement (
    engagementId INTEGER PRIMARY KEY AUTOINCREMENT,
    partnerId INTEGER,
    campaignName TEXT,
    startDate DATE,
    endDate DATE,
    budgetUSD REAL,
    expectedImpressions INTEGER,
    actualImpressions INTEGER,
    clickThroughRate REAL,
    conversionRate REAL,
    platform TEXT,
    contentType TEXT,
    adUnits INTEGER,
    creativeId TEXT,
    targetAudience TEXT,
    geoTarget TEXT,
    language TEXT,
    status TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE
);
INSERT INTO media_partner_engagement VALUES (1,501,'SpringLaunch','2024-03-01','2024-05-31',250000,5000000,4800000,0.015,0.004,'Digital','Video',20,'CR001','Fans18to35','NorthAmerica','EN','Active','On schedule','2024-03-01','2024-03-01');
INSERT INTO media_partner_engagement VALUES (2,502,'SummerSeries','2024-06-01','2024-08-31',180000,3000000,3100000,0.012,0.003,'TV','Spot',15,'CR002','Fans25to45','Europe','EN','Active','Adjusted placements','2024-06-01','2024-06-01');
INSERT INTO media_partner_engagement VALUES (3,503,'AutumnDrive','2024-09-01','2024-11-30',210000,4000000,3900000,0.013,0.0035,'Radio','Audio',10,'CR003','Fans30to50','Asia','EN','Planned','Creative pending','2024-09-01','2024-09-01');

-- Inventory of sensors installed along the track side
CREATE TABLE trackside_sensor_inventory (
    sensorId INTEGER PRIMARY KEY AUTOINCREMENT,
    sensorType TEXT,
    manufacturer TEXT,
    modelNumber TEXT,
    serialNumber TEXT,
    installationDate DATE,
    lastCalibrationDate DATE,
    calibrationFrequencyDays INTEGER,
    locationDescription TEXT,
    isActive INTEGER,
    firmwareVersion TEXT,
    batteryLevelPercent REAL,
    signalStrengthDb REAL,
    maintenanceContractId INTEGER,
    warrantyExpiryDate DATE,
    sensorStatus TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    dataEndpointUrl TEXT
);
INSERT INTO trackside_sensor_inventory VALUES (1,'Speed','SensTech','ST100','SN12345','2022-04-15','2024-04-10',180,'SectorA-Left','1','v2.1',85.5,-70,'C001','2025-04-15','Operational','No issues','2022-04-15','2024-04-10','http://sensors.example.com/1');
INSERT INTO trackside_sensor_inventory VALUES (2,'Temperature','ThermoSense','TH200','SN67890','2023-01-20','2024-07-01',365,'SectorB-Right','1','v1.4',92.0,-65,'C002','2026-01-20','Operational','Calibration due soon','2023-01-20','2024-07-01','http://sensors.example.com/2');
INSERT INTO trackside_sensor_inventory VALUES (3,'Pressure','HydroMetrics','HM300','SN54321','2021-11-05','2024-03-20',180,'SectorC-Center','0','v3.0',40.0,-80,'C003','2024-11-05','Inactive','Battery low','2021-11-05','2024-03-20','http://sensors.example.com/3');

-- Records of sponsor donations to charitable causes
CREATE TABLE sponsor_cause_donation_records (
    donationId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    causeId INTEGER,
    donationDate DATE,
    amountUSD REAL,
    currency TEXT,
    donationMethod TEXT,
    campaignName TEXT,
    receiptNumber TEXT,
    taxDeductible INTEGER,
    donorContactName TEXT,
    donorContactEmail TEXT,
    donorContactPhone TEXT,
    matchingFundFlag INTEGER,
    matchingMultiplier REAL,
    remarks TEXT,
    createdAt DATE,
    updatedAt DATE,
    approvalStatus TEXT,
    auditTrail TEXT
);
INSERT INTO sponsor_cause_donation_records VALUES (1,301,401,'2024-02-14',50000,'USD','BankTransfer','CharityDrive2024','RCPT001',1,'Global Motors','contact@globalmotors.com','5551234567',1,2.0,'Matched by parent company','2024-02-14','2024-02-14','Approved','Audit001');
INSERT INTO sponsor_cause_donation_records VALUES (2,302,402,'2023-12-01',25000,'USD','CreditCard','WinterHope','RCPT002',1,'SpeedParts','info@speedparts.com','5559876543',0,0.0,'One-time donation','2023-12-01','2023-12-01','Approved','Audit002');
INSERT INTO sponsor_cause_donation_records VALUES (3,303,403,'2024-04-20',75000,'USD','Cheque','GreenFuture','RCPT003',1,'EcoEngine','support@ecoengine.com','5555555555',1,1.5,'Partial match','2024-04-20','2024-04-20','Pending','Audit003');

-- Sessions providing mental health support to drivers
CREATE TABLE driver_mental_health_sessions (
    sessionId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    therapistId INTEGER,
    sessionDate DATE,
    sessionType TEXT,
    durationMinutes INTEGER,
    modality TEXT,
    notes TEXT,
    outcomeScore REAL,
    followUpRequired INTEGER,
    followUpDate DATE,
    confidentialityLevel TEXT,
    sessionLocation TEXT,
    sessionCostUSD REAL,
    insuranceCovered INTEGER,
    createdAt DATE,
    updatedAt DATE,
    sessionRating INTEGER,
    recommendations TEXT,
    programIdentifier TEXT
);
INSERT INTO driver_mental_health_sessions VALUES (1,201,501,'2024-03-10','Counselling',60,'Video','Discussed race stress','8.5',0,NULL,'High','Remote','0',0,'2024-03-10','2024-03-10',5,'Continue mindfulness','MH2024A');
INSERT INTO driver_mental_health_sessions VALUES (2,202,502,'2024-04-05','GroupTherapy',90,'InPerson','Team building exercise','7.0',1,'2024-04-20','Medium','TeamRoomA','0',0,'2024-04-05','2024-04-05',4,'Schedule follow‑up','MH2024B');
INSERT INTO driver_mental_health_sessions VALUES (3,203,503,'2024-05-12','StressManagement',45,'Phone','Coping strategies review','9.0',0,NULL,'High','Remote','0',0,'2024-05-12','2024-05-12',5,'Maintain current plan','MH2024C');

-- Log of noise complaints recorded at circuits
CREATE TABLE circuit_noise_complaint_log (
    complaintId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    complaintDate DATE,
    complainantName TEXT,
    complainantContact TEXT,
    noiseLevelDb REAL,
    measurementMethod TEXT,
    locationDescription TEXT,
    complaintDescription TEXT,
    resolutionStatus TEXT,
    resolutionDate DATE,
    responsibleDept TEXT,
    actionTaken TEXT,
    followUpRequired INTEGER,
    followUpDate DATE,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    severityLevel TEXT,
    externalAgencyInvolved TEXT
);
INSERT INTO circuit_noise_complaint_log VALUES (1,101,'2024-03-22','John Doe','5551112222',88.5,'SoundMeter','GrandstandNorth','Loud engine revs after race','Resolved','2024-04-01','Operations','Adjusted engine map','0',NULL,'Issue closed','2024-03-22','2024-04-01','Medium','None');
INSERT INTO circuit_noise_complaint_log VALUES (2,102,'2024-06-10','Maria Smith','5553334444',92.0','DecibelMeter','PitLaneEast','Continuous high noise during qualifying','Pending',NULL,'Engineering','Investigating fan design','1','2024-06-20','Awaiting results','2024-06-10',NULL,'High','LocalAuthority');
INSERT INTO circuit_noise_complaint_log VALUES (3,103,'2024-08-15','Luis Garcia','5557778888',85.0','MobileApp','Turn1','Noise spikes affecting nearby residents','InProgress',NULL,'CommunityRelations','Scheduled outreach meeting','1','2024-09-01','Follow‑up scheduled','2024-08-15',NULL,'Low','EnvironmentalAgency');

-- Quality reports for fuel shipments used in logistics
CREATE TABLE logistics_fuel_quality_reports (
    reportId INTEGER PRIMARY KEY AUTOINCREMENT,
    shipmentId INTEGER,
    fuelType TEXT,
    testDate DATE,
    supplierId INTEGER,
    viscosityCst REAL,
    sulfurContentPpm REAL,
    flashPointC REAL,
    densityKgM3 REAL,
    energyContentMJKg REAL,
    temperatureC REAL,
    waterContentPpm REAL,
    sedimentLevelMm REAL,
    testResult TEXT,
    status TEXT,
    inspectedBy TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    complianceFlag INTEGER
);
INSERT INTO logistics_fuel_quality_reports VALUES (1,9001,'Petrol','2024-02-20',601,45.2,10.5,68.0,0.75,38.5,25.0,150,0.02,'Pass','Accepted','QCDept','All specs met','2024-02-20','2024-02-20',1);
INSERT INTO logistics_fuel_quality_reports VALUES (2,9002,'Diesel','2024-04-15',602,30.0,11.0,78.5,0.85,42.0,20.0,200,0.05,'Pass','Accepted','QCDept','Minor water content above ideal','2024-04-15','2024-04-15',1);
INSERT INTO logistics_fuel_quality_reports VALUES (3,9003,'Petrol','2024-06-05',603,'',12.0,70.0,0.78,40.0,22.0,180,0.03,'Fail','Rejected','QCDept','Viscosity out of range','2024-06-05','2024-06-05',0);

-- Budgets allocated to advertisers for broadcast campaigns
CREATE TABLE broadcast_advertiser_budget (
    budgetId INTEGER PRIMARY KEY AUTOINCREMENT,
    advertiserId INTEGER,
    campaignYear INTEGER,
    totalBudgetUSD REAL,
    allocatedTV REAL,
    allocatedDigital REAL,
    allocatedRadio REAL,
    allocatedPrint REAL,
    allocatedSocial REAL,
    costPerImpressionUSD REAL,
    costPerClickUSD REAL,
    costPerViewUSD REAL,
    expectedReach INTEGER,
    actualSpendUSD REAL,
    varianceUSD REAL,
    approvalStatus TEXT,
    approvedBy TEXT,
    approvalDate DATE,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE
);
INSERT INTO broadcast_advertiser_budget VALUES (1,801,2024,500000,200000,150000,50000,30000,50000,0.0025,0.10,0.05,2000000,495000,-5000,'Approved','Jane Roe','2024-01-15','Quarterly review','2024-01-15','2024-01-15');
INSERT INTO broadcast_advertiser_budget VALUES (2,802,2024,350000,120000,100000,40000,20000,30000,0.0030,0.12,0.06,1500000,352000,2000,'Approved','John Smith','2024-01-20','Adjusted after Q1','2024-01-20','2024-01-20');
INSERT INTO broadcast_advertiser_budget VALUES (3,803,2024,420000,180000,130000,60000,20000,20000,0.0028,0.11,0.055,1800000,418000,-2000,'Pending','Emily Davis','2024-02-01','Awaiting final sign‑off','2024-02-01','2024-02-01');

-- Sustainability targets set for individual events
CREATE TABLE event_sustainability_targets (
    targetId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER,
    targetYear INTEGER,
    carbonEmissionReductionPct REAL,
    renewableEnergyPct REAL,
    wasteDiversionPct REAL,
    waterUsageReductionPct REAL,
    sustainableMaterialsPct REAL,
    targetDescription TEXT,
    baselineCarbonKg REAL,
    baselineWasteKg REAL,
    baselineWaterLiters REAL,
    targetCarbonKg REAL,
    targetWasteKg REAL,
    targetWaterLiters REAL,
    responsibleDept TEXT,
    monitoringFrequency TEXT,
    status TEXT,
    lastReviewedDate DATE,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE
);
INSERT INTO event_sustainability_targets VALUES (1,1001,2024,15.0,30.0,40.0,20.0,25.0,'Reduce emissions and increase renewables',200000,50000,800000,170000,30000,640000,'Sustainability','Quarterly','InProgress','2024-03-01','Initial targets set','2024-03-01','2024-03-01');
INSERT INTO event_sustainability_targets VALUES (2,1002,2024,10.0,25.0,35.0,15.0,20.0,'Focus on waste diversion',150000,40000,600000,135000,26000,510000,'Operations','Biannual','Planned','2024-02-15','Pending approval','2024-02-15','2024-02-15');
INSERT INTO event_sustainability_targets VALUES (3,1003,2024,20.0,40.0,45.0,25.0,30.0,'Ambitious carbon cut and renewable usage',250000,60000,900000,200000,33000,675000,'Environment','Monthly','Active','2024-04-10','Monitoring underway','2024-04-10','2024-04-10');