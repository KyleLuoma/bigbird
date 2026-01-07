-- Table storing information about historic artifacts located at circuits
CREATE TABLE circuit_heritage_artifacts
(
    artifactId            INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId             INTEGER,
    artifactCode          TEXT,
    name                  TEXT,
    description           TEXT,
    acquisitionDate       DATE,
    originCountry         TEXT,
    material              TEXT,
    dimensions            TEXT,
    condition             TEXT,
    locationOnSite        TEXT,
    displayStatus         TEXT,
    curatorName           TEXT,
    appraisedValue        REAL,
    historicalPeriod      TEXT,
    photoUrl              TEXT,
    lastRestorationDate   DATE,
    restorationDetails    TEXT,
    archivalReference     TEXT,
    digitalCatalogId      TEXT
);
INSERT INTO circuit_heritage_artifacts (circuitId,artifactCode,name,description,acquisitionDate,originCountry,material,dimensions,condition,locationOnSite,displayStatus,curatorName,appraisedValue,historicalPeriod,photoUrl,lastRestorationDate,restorationDetails,archivalReference,digitalCatalogId) VALUES (1,'ART001','Vintage Steering Wheel','Original wheel from 1965','1965-04-12','UK','Metal','12x8 cm','Good','Pit Lane','OnDisplay','John Doe',2500.00,'1960s','http://example.com/img1','2022-06-01','Polished and painted','REF123','CAT001');
INSERT INTO circuit_heritage_artifacts (circuitId,artifactCode,name,description,acquisitionDate,originCountry,material,dimensions,condition,locationOnSite,displayStatus,curatorName,appraisedValue,historicalPeriod,photoUrl,lastRestorationDate,restorationDetails,archivalReference,digitalCatalogId) VALUES (2,'ART002','Race Flag','Checkered flag used in 1978 Grand Prix','1978-09-05','Germany','Fabric','200x50 cm','Fair','Grandstand','Stored','Anna Smith',1500.00,'1970s','http://example.com/img2','2021-09-15','Repaired stitching','REF456','CAT002');
INSERT INTO circuit_heritage_artifacts (circuitId,artifactCode,name,description,acquisitionDate,originCountry,material,dimensions,condition,locationOnSite,displayStatus,curatorName,appraisedValue,historicalPeriod,photoUrl,lastRestorationDate,restorationDetails,archivalReference,digitalCatalogId) VALUES (3,'ART003','Podium Trophy','Silver trophy from 1995','1995-11-20','France','Silver','30x30 cm','Excellent','Museum Hall','OnDisplay','Mark Lee',5000.00,'1990s','http://example.com/img3','2023-01-10','Polished','REF789','CAT003');

-- Table recording contracts with media partners
CREATE TABLE media_partner_contracts
(
    contractId          INTEGER PRIMARY KEY AUTOINCREMENT,
    partnerId           INTEGER,
    partnerName         TEXT,
    startDate           DATE,
    endDate             DATE,
    contractValue       REAL,
    mediaType           TEXT,
    exclusivityFlag    TEXT,
    contactPerson       TEXT,
    contactEmail        TEXT,
    paymentTerms        TEXT,
    renewalOption       TEXT,
    terminationClause   TEXT,
    jurisdiction        TEXT,
    signedBy            TEXT,
    contractFileUrl     TEXT,
    notes               TEXT,
    createdAt           DATE,
    updatedAt           DATE,
    status              TEXT
);
INSERT INTO media_partner_contracts (partnerId,partnerName,startDate,endDate,contractValue,mediaType,exclusivityFlag,contactPerson,contactEmail,paymentTerms,renewalOption,terminationClause,jurisdiction,signedBy,contractFileUrl,notes,createdAt,updatedAt,status) VALUES (101,'GlobalSportsTV','2023-01-01','2025-12-31',750000.00,'Broadcast','Yes','Emily Clark','emily.clark@example.com','Net30','Auto','30DaysNotice','USA','Michael Brown','http://example.com/contract1.pdf','First partnership','2023-01-01','2023-02-01','Active');
INSERT INTO media_partner_contracts (partnerId,partnerName,startDate,endDate,contractValue,mediaType,exclusivityFlag,contactPerson,contactEmail,paymentTerms,renewalOption,terminationClause,jurisdiction,signedBy,contractFileUrl,notes,createdAt,updatedAt,status) VALUES (102,'RapidOnline','2022-06-15','2024-06-14',420000.00,'Digital','No','Sam Patel','sam.patel@example.com','Net45','Optional','60DaysNotice','UK','Laura Green','http://example.com/contract2.pdf','Digital streaming rights','2022-06-15','2022-07-01','Active');
INSERT INTO media_partner_contracts (partnerId,partnerName,startDate,endDate,contractValue,mediaType,exclusivityFlag,contactPerson,contactEmail,paymentTerms,renewalOption,terminationClause,jurisdiction,signedBy,contractFileUrl,notes,createdAt,updatedAt,status) VALUES (103,'EuroRadio','2021-03-01','2023-02-28',180000.00,'Radio','Yes','Peter Jones','peter.jones@example.com','Net15','Auto','30DaysNotice','Germany','Sofia Martinez','http://example.com/contract3.pdf','Radio broadcast in Europe','2021-03-01','2021-04-01','Expired');

-- Table defining the fan loyalty rewards program
CREATE TABLE fan_loyalty_rewards_program
(
    programId               INTEGER PRIMARY KEY AUTOINCREMENT,
    name                    TEXT,
    description             TEXT,
    launchDate              DATE,
    tierBronzePoints        INTEGER,
    tierSilverPoints        INTEGER,
    tierGoldPoints          INTEGER,
    tierPlatinumPoints      INTEGER,
    rewardBronze            TEXT,
    rewardSilver            TEXT,
    rewardGold              TEXT,
    rewardPlatinum          TEXT,
    expirationDays          INTEGER,
    enrollmentFee           REAL,
    eligibilityCriteria    TEXT,
    marketingChannel        TEXT,
    programUrl              TEXT,
    createdDate             DATE,
    modifiedDate            DATE,
    activeFlag              TEXT
);
INSERT INTO fan_loyalty_rewards_program (name,description,launchDate,tierBronzePoints,tierSilverPoints,tierGoldPoints,tierPlatinumPoints,rewardBronze,rewardSilver,rewardGold,rewardPlatinum,expirationDays,enrollmentFee,eligibilityCriteria,marketingChannel,programUrl,createdDate,modifiedDate,activeFlag) VALUES ('SpeedFan Plus','Points based rewards for race attendees','2022-05-01',1000,2500,5000,10000','Free Merchandise','VIP Pit Pass','All-Access Weekend','Private Gala',365,49.99,'Must attend at least 2 races per season','Email','http://example.com/speedfan','2022-04-15','2022-06-01','Y');
INSERT INTO fan_loyalty_rewards_program (name,description,launchDate,tierBronzePoints,tierSilverPoints,tierGoldPoints,tierPlatinumPoints,rewardBronze,rewardSilver,rewardGold,rewardPlatinum,expirationDays,enrollmentFee,eligibilityCriteria,marketingChannel,programUrl,createdDate,modifiedDate,activeFlag) VALUES ('Racing Elite','Exclusive tiered program for superfans','2021-09-10',2000,4000,8000,15000','Discounted Tickets','Meet & Greet','Team Hospitality','Championship Trophy',730,99.99,'Minimum 5 ticket purchases per year','Social Media','http://example.com/elite','2021-08-01','2021-09-15','Y');
INSERT INTO fan_loyalty_rewards_program (name,description,launchDate,tierBronzePoints,tierSilverPoints,tierGoldPoints,tierPlatinumPoints,rewardBronze,rewardSilver,rewardGold,rewardPlatinum,expirationDays,enrollmentFee,eligibilityCriteria,marketingChannel,programUrl,createdDate,modifiedDate,activeFlag) VALUES ('TrackSide Rewards','Earn points for on‑site purchases','2023-01-20',500,1500,3000,6000','Free Parking','Signed Merchandise','Pit Lane Access','Driver Dinner',180,0,'Open to all ticket holders','App','http://example.com/trackside','2023-01-01','2023-01-22','Y');

-- Table for environmental permit applications related to circuits
CREATE TABLE environmental_permit_applications
(
    applicationId               INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId                   INTEGER,
    permitType                  TEXT,
    submissionDate              DATE,
    approvalDate                DATE,
    status                      TEXT,
    applicantName               TEXT,
    applicantContact            TEXT,
    environmentalImpactScore    REAL,
    mitigationPlan              TEXT,
    documentUrl                 TEXT,
    reviewerName                TEXT,
    reviewComments              TEXT,
    expirationDate              DATE,
    feeAmount                   REAL,
    complianceDeadline          DATE,
    notes                       TEXT,
    createdAt                   DATE,
    updatedAt                   DATE,
    regulatorAgency             TEXT
);
INSERT INTO environmental_permit_applications (circuitId,permitType,submissionDate,approvalDate,status,applicantName,applicantContact,environmentalImpactScore,mitigationPlan,documentUrl,reviewerName,reviewComments,expirationDate,feeAmount,complianceDeadline,notes,createdAt,updatedAt,regulatorAgency) VALUES (1,'Noise','2022-11-01','2023-01-15','Approved','Circuit Management','contact@circuit1.com',4.2,'Install sound barriers','http://example.com/perm1.pdf','Laura White','Meets all criteria','2025-12-31',12000.00,'2025-06-01','No issues','2022-11-01','2023-01-20','EPA');
INSERT INTO environmental_permit_applications (circuitId,permitType,submissionDate,approvalDate,status,applicantName,applicantContact,environmentalImpactScore,mitigationPlan,documentUrl,reviewerName,reviewComments,expirationDate,feeAmount,complianceDeadline,notes,createdAt,updatedAt,regulatorAgency) VALUES (2,'Water','2023-03-10','2023-05-05','Pending','Eco Solutions Ltd','info@ecosolutions.com',3.8,'Introduce runoff filtration','http://example.com/perm2.pdf','Mark Davis','Requires additional data','2026-12-31',15000.00,'2026-06-01','Awaiting water samples','2023-03-10','2023-05-06','Water Authority');
INSERT INTO environmental_permit_applications (circuitId,permitType,submissionDate,approvalDate,status,applicantName,applicantContact,environmentalImpactScore,mitigationPlan,documentUrl,reviewerName,reviewComments,expirationDate,feeAmount,complianceDeadline,notes,createdAt,updatedAt,regulatorAgency) VALUES (3,'Air','2021-07-20','2021-09-30','Rejected','GreenAir Corp','admin@greenair.com',5.6,'Replace diesel generators','http://example.com/perm3.pdf','Susan Lee','Emissions exceed limits','2024-12-31',20000.00,'2024-06-01','Application denied due to high impact','2021-07-20','2021-10-01','Air Quality Board');

-- Table tracking driver education certificates
CREATE TABLE driver_education_certificates
(
    certId                 INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId               INTEGER,
    certificateName        TEXT,
    issuingAuthority       TEXT,
    issueDate              DATE,
    expiryDate             DATE,
    certificateNumber      TEXT,
    complianceStatus       TEXT,
    remarks                TEXT,
    documentUrl            TEXT,
    createdAt              DATE,
    updatedAt              DATE,
    verifiedBy             TEXT,
    verificationDate       DATE,
    level                  TEXT,
    category               TEXT,
    language               TEXT,
    score                  REAL,
    hoursCompleted         INTEGER,
    trainingProvider       TEXT
);
INSERT INTO driver_education_certificates (driverId,certificateName,issuingAuthority,issueDate,expiryDate,certificateNumber,complianceStatus,remarks,documentUrl,createdAt,updatedAt,verifiedBy,verificationDate,level,category,language,score,hoursCompleted,trainingProvider) VALUES (10,'Advanced Safety Course','FIA','2022-02-15','2025-02-14','CERT001','Compliant','Passed with high marks','http://example.com/cert1.pdf','2022-02-16','2022-02-16','John Miller','2022-02-18','Advanced','Safety','EN',95.5,40,'Motorsport Academy');
INSERT INTO driver_education_certificates (driverId,certificateName,issuingAuthority,issueDate,expiryDate,certificateNumber,complianceStatus,remarks,documentUrl,createdAt,updatedAt,verifiedBy,verificationDate,level,category,language,score,hoursCompleted,trainingProvider) VALUES (12,'Eco‑Driving Certification','UEFA','2021-06-01','2024-05-31','CERT002','Compliant','Meets emission standards','http://example.com/cert2.pdf','2021-06-02','2021-06-02','Anna Kovacs','2021-06-04','Intermediate','Environment','EN',88.0,30,'Green Racing Institute');
INSERT INTO driver_education_certificates (driverId,certificateName,issuingAuthority,issueDate,expiryDate,certificateNumber,complianceStatus,remarks,documentUrl,createdAt,updatedAt,verifiedBy,verificationDate,level,category,language,score,hoursCompleted,trainingProvider) VALUES (15,'First Aid for Motorsport','Red Cross','2023-01-10','2026-01-09','CERT003','Pending','Awaiting final assessment','http://example.com/cert3.pdf','2023-01-11','2023-01-11','Laura Gomez','2023-01-13','Basic','Medical','EN',0.0,20,'Red Cross Training Center');

-- Table recording venue energy audits
CREATE TABLE venue_energy_audits
(
    auditId                 INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId                 INTEGER,
    auditDate               DATE,
    auditorName             TEXT,
    totalEnergyConsumption  REAL,
    renewablePercentage     REAL,
    carbonEmissions        REAL,
    auditReportUrl          TEXT,
    recommendations         TEXT,
    followUpDate            DATE,
    status                  TEXT,
    createdAt               DATE,
    updatedAt               DATE,
    notes                   TEXT,
    energySavingsTarget     REAL,
    implementedActions      INTEGER,
    verificationStatus      TEXT,
    complianceLevel         TEXT,
    energyCost              REAL,
    peakDemand              REAL
);
INSERT INTO venue_energy_audits (venueId,auditDate,auditorName,totalEnergyConsumption,renewablePercentage,carbonEmissions,auditReportUrl,recommendations,followUpDate,status,createdAt,updatedAt,notes,energySavingsTarget,implementedActions,verificationStatus,complianceLevel,energyCost,peakDemand) VALUES (1,'2023-04-20','EcoAudit Ltd',1200000.00,25.5,180.0,'http://example.com/audit1.pdf','Upgrade LED lighting','2023-10-01','Completed','2023-04-20','2023-04-21','All systems functional','150000.00',5,'Verified','A','85000.00','5000');
INSERT INTO venue_energy_audits (venueId,auditDate,auditorName,totalEnergyConsumption,renewablePercentage,carbonEmissions,auditReportUrl,recommendations,followUpDate,status,createdAt,updatedAt,notes,energySavingsTarget,implementedActions,verificationStatus,complianceLevel,energyCost,peakDemand) VALUES (2,'2022-11-15','GreenMetrics','950000.00',30.0,140.0','http://example.com/audit2.pdf','Install solar panels','2023-05-30','Pending','2022-11-15','2022-11-16','Solar feasibility study required','120000.00',2,'Pending','B','72000.00','4200');
INSERT INTO venue_energy_audits (venueId,auditDate,auditorName,totalEnergyConsumption,renewablePercentage,carbonEmissions,auditReportUrl,recommendations,followUpDate,status,createdAt,updatedAt,notes,energySavingsTarget,implementedActions,verificationStatus,complianceLevel,energyCost,peakDemand) VALUES (3,'2024-01-10','EnergyCheck','1300000.00',22.0,210.0','http://example.com/audit3.pdf','Optimize HVAC system','2024-07-15','InProgress','2024-01-10','2024-01-11','HVAC upgrade scheduled for Q3','180000.00',3,'In Review','C','95000.00','5600');

-- Table listing technology vendors for each race
CREATE TABLE race_technology_vendor_registry
(
    vendorId                INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId                  INTEGER,
    technologyType          TEXT,
    vendorName              TEXT,
    contractStartDate       DATE,
    contractEndDate         DATE,
    serviceLevelAgreement   TEXT,
    cost                    REAL,
    contactPerson           TEXT,
    contactPhone            TEXT,
    contactEmail            TEXT,
    performanceScore        REAL,
    complianceStatus        TEXT,
    renewalOption           TEXT,
    terminationClause       TEXT,
    vendorRating            INTEGER,
    supportHours            INTEGER,
    escalationProcedure     TEXT,
    createdAt               DATE,
    updatedAt               DATE,
    activeFlag              TEXT
);
INSERT INTO race_technology_vendor_registry (raceId,technologyType,vendorName,contractStartDate,contractEndDate,serviceLevelAgreement,cost,contactPerson,contactPhone,contactEmail,performanceScore,complianceStatus,renewalOption,terminationClause,vendorRating,supportHours,escalationProcedure,createdAt,updatedAt,activeFlag) VALUES (101,'Timing','ChronoTech','2023-01-01','2025-12-31','99.9% uptime',250000.00,'Mike Rogers','555-0123','mike.rogers@chronotech.com',96.5,'Compliant','Auto','30DaysNotice',5,24,'Call senior manager','2023-01-02','2023-01-03','Y');
INSERT INTO race_technology_vendor_registry (raceId,technologyType,vendorName,contractStartDate,contractEndDate,serviceLevelAgreement,cost,contactPerson,contactPhone,contactEmail,performanceScore,complianceStatus,renewalOption,terminationClause,vendorRating,supportHours,escalationProcedure,createdAt,updatedAt,activeFlag) VALUES (102,'Broadcast','StreamLine','2022-06-01','2024-05-31','98% jitter',180000.00,'Sara Lee','555-0456','sara.lee@streamline.com',92.0,'Compliant','Optional','45DaysNotice',4,16,'Ticket support portal','2022-06-02','2022-06-03','Y');
INSERT INTO race_technology_vendor_registry (raceId,technologyType,vendorName,contractStartDate,contractEndDate,serviceLevelAgreement,cost,contactPerson,contactPhone,contactEmail,performanceScore,complianceStatus,renewalOption,terminationClause,vendorRating,supportHours,escalationProcedure,createdAt,updatedAt,activeFlag) VALUES (103,'Telemetry','DataPulse','2021-03-15','2023-03-14','99% data integrity',300000.00,'Tom Becker','555-0789','tom.becker@datapulse.com',98.2,'Compliant','Auto','30DaysNotice',5,20,'Emergency response line','2021-03-16','2021-03-17','N');

-- Table storing budgets for hospitality events
CREATE TABLE hospitality_event_budget
(
    budgetId                INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId                 INTEGER,
    venueId                 INTEGER,
    totalBudget             REAL,
    allocationCatering      REAL,
    allocationEntertainment REAL,
    allocationSecurity      REAL,
    allocationMarketing     REAL,
    expectedAttendance      INTEGER,
    actualAttendance        INTEGER,
    budgetApprovalDate      DATE,
    approvedBy              TEXT,
    notes                   TEXT,
    createdAt               DATE,
    updatedAt               DATE,
    overspendFlag           TEXT,
    underspendFlag          TEXT,
    varianceAmount          REAL,
    currency                TEXT,
    sponsorContribution    REAL,
    contingencyFund         REAL
);
INSERT INTO hospitality_event_budget (eventId,venueId,totalBudget,allocationCatering,allocationEntertainment,allocationSecurity,allocationMarketing,expectedAttendance,actualAttendance,budgetApprovalDate,approvedBy,notes,createdAt,updatedAt,overspendFlag,underspendFlag,varianceAmount,currency,sponsorContribution,contingencyFund) VALUES (201,1,500000.00,150000.00,100000.00,50000.00,80000.00,2000,1950,'2023-02-10','Laura White','VIP dinner and gala','2023-02-11','2023-02-12','N','N',-5000.00,'USD',120000.00,30000.00);
INSERT INTO hospitality_event_budget (eventId,venueId,totalBudget,allocationCatering,allocationEntertainment,allocationSecurity,allocationMarketing,expectedAttendance,actualAttendance,budgetApprovalDate,approvedBy,notes,createdAt,updatedAt,overspendFlag,underspendFlag,varianceAmount,currency,sponsorContribution,contingencyFund) VALUES (202,2,750000.00,250000.00,150000.00,80000.00,120000.00,3500,3600,'2023-05-01','Mark Davis','Pre‑race fan festival','2023-05-02','2023-05-03','Y','N',25000.00,'USD',200000.00,50000.00);
INSERT INTO hospitality_event_budget (eventId,venueId,totalBudget,allocationCatering,allocationEntertainment,allocationSecurity,allocationMarketing,expectedAttendance,actualAttendance,budgetApprovalDate,approvedBy,notes,createdAt,updatedAt,overspendFlag,underspendFlag,varianceAmount,currency,sponsorContribution,contingencyFund) VALUES (203,3,600000.00,200000.00,120000.00,60000.00,100000.00,2800,2750,'2023-08-15','Emily Clark','Championship awards banquet','2023-08-16','2023-08-17','N','Y',-8000.00,'USD',150000.00,40000.00);

-- Table logging telemetry calibration sessions
CREATE TABLE telemetry_calibration_sessions
(
    sessionId               INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId                  INTEGER,
    deviceId                TEXT,
    calibrationDate         DATE,
    technicianName          TEXT,
    calibrationType         TEXT,
    parameterSet            TEXT,
    beforeValue             REAL,
    afterValue              REAL,
    deviation               REAL,
    status                  TEXT,
    notes                   TEXT,
    documentUrl             TEXT,
    createdAt               DATE,
    updatedAt               DATE,
    approvedBy              TEXT,
    approvalDate            DATE,
    calibrationDuration     INTEGER,
    equipmentSerial         TEXT,
    firmwareVersion         TEXT
);
INSERT INTO telemetry_calibration_sessions (raceId,deviceId,calibrationDate,technicianName,calibrationType,parameterSet,beforeValue,afterValue,deviation,status,notes,documentUrl,createdAt,updatedAt,approvedBy,approvalDate,calibrationDuration,equipmentSerial,firmwareVersion) VALUES (101,'DEV001','2023-03-10','Alex Turner','Full','SetA',0.015,0.001,0.014,'Completed','No issues','http://example.com/calib1.pdf','2023-03-11','2023-03-11','John Doe','2023-03-12',45,'SN12345','v2.3');
INSERT INTO telemetry_calibration_sessions (raceId,deviceId,calibrationDate,technicianName,calibrationType,parameterSet,beforeValue,afterValue,deviation,status,notes,documentUrl,createdAt,updatedAt,approvedBy,approvalDate,calibrationDuration,equipmentSerial,firmwareVersion) VALUES (102,'DEV002','2023-04-05','Maria Gomez','Partial','SetB',0.030,0.022,0.008,'Completed','Adjusted for temperature','http://example.com/calib2.pdf','2023-04-06','2023-04-06','Sara Lee','2023-04-07',30,'SN67890','v3.1');
INSERT INTO telemetry_calibration_sessions (raceId,deviceId,calibrationDate,technicianName,calibrationType,parameterSet,beforeValue,afterValue,deviation,status,notes,documentUrl,createdAt,updatedAt,approvedBy,approvalDate,calibrationDuration,equipmentSerial,firmwareVersion) VALUES (103,'DEV003','2023-05-20','Liam Patel','Full','SetC',0.010,0.009,0.001,'Completed','All parameters within spec','http://example.com/calib3.pdf','2023-05-21','2023-05-21','Tom Becker','2023-05-22',50,'SN24680','v2.8');

-- Table describing broadcast advertiser profiles
CREATE TABLE broadcast_advertiser_profiles
(
    profileId               INTEGER PRIMARY KEY AUTOINCREMENT,
    advertiserName          TEXT,
    industry                TEXT,
    contactPerson           TEXT,
    contactEmail            TEXT,
    contractStartDate       DATE,
    contractEndDate         DATE,
    adSlotsPurchased        INTEGER,
    totalSpend              REAL,
    preferredLanguage       TEXT,
    targetAudience          TEXT,
    creativeGuidelines      TEXT,
    complianceStatus        TEXT,
    notes                   TEXT,
    createdAt               DATE,
    updatedAt               DATE,
    status                  TEXT,
    billingCycle            TEXT,
    paymentMethod           TEXT,
    agreedImpressions       INTEGER
);
INSERT INTO broadcast_advertiser_profiles (advertiserName,industry,contactPerson,contactEmail,contractStartDate,contractEndDate,adSlotsPurchased,totalSpend,preferredLanguage,targetAudience,creativeGuidelines,complianceStatus,notes,createdAt,updatedAt,status,billingCycle,paymentMethod,agreedImpressions) VALUES ('SpeedEnergy','Energy','Kevin Hart','kevin.hart@speedenergy.com','2022-09-01','2024-08-31',120,650000.00,'EN','Motorsport Fans','No flashing lights','Compliant','Renewal pending','2022-09-02','2022-09-03','Active','Monthly','CreditCard',5000000);
INSERT INTO broadcast_advertiser_profiles (advertiserName,industry,contactPerson,contactEmail,contractStartDate,contractEndDate,adSlotsPurchased,totalSpend,preferredLanguage,targetAudience,creativeGuidelines,complianceStatus,notes,createdAt,updatedAt,status,billingCycle,paymentMethod,agreedImpressions) VALUES ('TechNova','Technology','Olivia Reed','olivia.reed@technova.com','2023-01-15','2025-01-14',200,1200000.00,'EN','Young Adults','High contrast visuals','Compliant','First year discount applied','2023-01-16','2023-01-17','Active','Quarterly','BankTransfer',8000000);
INSERT INTO broadcast_advertiser_profiles (advertiserName,industry,contactPerson,contactEmail,contractStartDate,contractEndDate,adSlotsPurchased,totalSpend,preferredLanguage,targetAudience,creativeGuidelines,complianceStatus,notes,createdAt,updatedAt,status,billingCycle,paymentMethod,agreedImpressions) VALUES ('FastFoodCo','Food','Ramesh Patel','ramesh.patel@fastfoodco.com','2021-05-01','2023-04-30',80,400000.00,'EN','Family Audiences','Avoid excessive sugar claims','NonCompliant','Pending compliance review','2021-05-02','2021-05-03','Suspended','Monthly','CreditCard',3000000);