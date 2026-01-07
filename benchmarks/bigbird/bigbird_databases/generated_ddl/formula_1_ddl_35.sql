-- Aerodynamic test facilities used for wind‑tunnel and CFD validation
CREATE TABLE aerodynamic_test_facilities
(
    facilityId               INTEGER PRIMARY KEY AUTOINCREMENT,
    facilityName             TEXT    NOT NULL,
    location                 TEXT,
    country                  TEXT,
    latitude                 REAL,
    longitude                REAL,
    testType                 TEXT,
    tunnelLength             REAL,
    maxWindSpeed             REAL,
    certificationStatus     TEXT,
    contactPerson            TEXT,
    contactEmail             TEXT,
    operationalSince         DATE,
    lastInspection           DATE,
    numberOfTestsConducted   INTEGER,
    primaryEngineType        TEXT,
    supportedVehicleClasses  TEXT,
    fundingAgency            TEXT,
    annualBudget             REAL,
    notes                    TEXT
);

INSERT INTO aerodynamic_test_facilities
(facilityName, location, country, latitude, longitude, testType, tunnelLength, maxWindSpeed,
 certificationStatus, contactPerson, contactEmail, operationalSince, lastInspection,
 numberOfTestsConducted, primaryEngineType, supportedVehicleClasses, fundingAgency,
 annualBudget, notes)
VALUES
('WindLab Alpha','Silverstone','UK',52.0725,-1.0219,'Wind Tunnel',150.0,250.0,'Certified','Dr Emma Clarke','emma.clarke@windlab.co.uk','2015-04-01','2023-06-15',342,'V8','F1;GT','National Science Fund',1200000.00,'Main facility for F1 aero tests'),
('CFD Center Beta','Monaco','Monaco',43.7384,7.4246,'Computational Fluid Dynamics',NULL,300.0,'Accredited','Marco Bianchi','marco.bianchi@cfdcenter.mc','2018-09-12','2023-01-22',128,'Hybrid','LMP1;EV','Private Motorsports Corp',800000.00,'High‑performance computing cluster'),
('AeroTest Gamma','Austin','USA',30.2672,-97.7431,'Wind Tunnel',200.0,220.0,'Pending','Lisa Nguyen','lisa.nguyen@aerotest.com','2020-02-20','2023-03-10',57,'V6','IndyCar; touring','State Innovation Grant',950000.00,'Expanding to electric vehicle testing');

-- Climatology studies linked to historical climate analysis
CREATE TABLE climatology_studies
(
    studyId                INTEGER PRIMARY KEY AUTOINCREMENT,
    studyName              TEXT NOT NULL,
    leadScientist          TEXT,
    institution           TEXT,
    startDate             DATE,
    endDate               DATE,
    regionCovered          TEXT,
    dataSources           TEXT,
    methodology           TEXT,
    climateVariable       TEXT,
    baselinePeriod        TEXT,
    anomalyThreshold      REAL,
    publicationDOI        TEXT,
    fundingSource         TEXT,
    totalFunding          REAL,
    peerReviewed          INTEGER,
    datasetUrl            TEXT,
    summary               TEXT,
    relatedProjectId      INTEGER,
    status                TEXT,
    notes                 TEXT
);

INSERT INTO climatology_studies
(studyName, leadScientist, institution, startDate, endDate, regionCovered, dataSources,
 methodology, climateVariable, baselinePeriod, anomalyThreshold, publicationDOI,
 fundingSource, totalFunding, peerReviewed, datasetUrl, summary, relatedProjectId,
 status, notes)
VALUES
('Mediterranean Heatwave Trends','Dr Sofia Ramirez','University of Barcelona','2010-01-01','2020-12-31','Mediterranean Basin','Satellite;Ground Stations','Statistical Regression','Temperature','1971-2000',2.5,'10.1234/medheat.2021','EU Climate Fund',1500000,1,'http://data.climate.eu/medheat','Analysis of increasing heatwave frequency',NULL,'Completed','Used for policy briefing'),
('Arctic Sea Ice Decline','Prof Erik Lund','Polar Research Institute','2015-06-01','2022-05-31','Arctic Ocean','Satellite Imagery','Machine Learning Classification','Sea Ice Extent','1981-2010',-0.3,'10.5678/arcticsea.2023','National Science Foundation',2100000,1,'http://data.arctic.org/seaice','Quantifies loss of sea ice over 7 years',NULL,'Ongoing','Collaboration with NOAA'),
('South American Rainfall Variability','Dr Ana Silva','São Paulo State University','2012-03-15','2019-11-30','South America','Rain Gauge Networks','Time‑Series Decomposition','Precipitation','1990-2010',15.0,'10.9012/sarain.2020','World Bank Climate Adaptation',900000,0,'http://data.southamerica.org/rainfall','Identifies regions with increasing drought risk',NULL,'Completed','Data pending peer review');

-- Driver education certifications and licensing details
CREATE TABLE driver_education_certifications
(
    certId                 INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId               INTEGER,
    certificationName     TEXT,
    issuingAuthority      TEXT,
    issueDate             DATE,
    expirationDate        DATE,
    certNumber            TEXT,
    level                 INTEGER,
    notes                 TEXT,
    verifiedBy            TEXT,
    verificationDate      DATE,
    certificateFileUrl    TEXT,
    trainingHours         INTEGER,
    assessmentScore       REAL,
    renewalRequired       INTEGER,
    renewalPeriodMonths   INTEGER,
    complianceStatus      TEXT,
    lastUpdated           DATE,
    attachedDocumentUrl    TEXT,
    externalReferenceId   TEXT,
    status                TEXT
);

INSERT INTO driver_education_certifications
(driverId, certificationName, issuingAuthority, issueDate, expirationDate, certNumber,
 level, notes, verifiedBy, verificationDate, certificateFileUrl, trainingHours,
 assessmentScore, renewalRequired, renewalPeriodMonths, complianceStatus,
 lastUpdated, attachedDocumentUrl, externalReferenceId, status)
VALUES
(101,'Advanced Safety Course','FIA','2021-04-10','2024-04-10','ASC-2021-001',3,'Completed with distinction','John Miller','2021-04-12','http://certs.fia.org/asc001.pdf',40,95.5,1,36,'Compliant','2023-01-05','http://docs.fia.org/asc001_attach.pdf','EXT-001','Active'),
(102,'Eco‑Driving Certification','National Motors Association','2020-09-15','2023-09-15','EDC-2020-045',2,'Focused on fuel efficiency','Laura Chen','2020-09-18','http://certs.nma.org/edc045.pdf',30,88.0,1,24,'Compliant','2022-11-20','http://docs.nma.org/edc045_attach.pdf','EXT-045','Expired'),
(103,'High‑Performance Driving','SuperCars Academy','2022-02-01','2025-02-01','HPD-2022-112',4,'Includes track day assessment','Mark Davis','2022-02-04','http://certs.scacademy.org/hpd112.pdf',50,92.3,1,36,'Compliant','2023-03-10','http://docs.scacademy.org/hpd112_attach.pdf','EXT-112','Active');

-- Circuit transport infrastructure and logistics details
CREATE TABLE circuit_transport_infrastructure
(
    infraId               INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId             INTEGER,
    transportMode         TEXT,
    capacity              INTEGER,
    provider              TEXT,
    contractStart         DATE,
    contractEnd           DATE,
    costPerYear           REAL,
    maintenanceSchedule   TEXT,
    lastMaintenance       DATE,
    contactPhone          TEXT,
    contactEmail          TEXT,
    authorizedAccess      INTEGER,
    securityLevel         TEXT,
    notes                 TEXT,
    environmentalImpactScore REAL,
    sustainabilityPlan    TEXT,
    gpsLatitude           REAL,
    gpsLongitude          REAL,
    status                TEXT
);

INSERT INTO circuit_transport_infrastructure
(circuitId, transportMode, capacity, provider, contractStart, contractEnd,
 costPerYear, maintenanceSchedule, lastMaintenance, contactPhone, contactEmail,
 authorizedAccess, securityLevel, notes, environmentalImpactScore,
 sustainabilityPlan, gpsLatitude, gpsLongitude, status)
VALUES
(1,'Shuttle Bus',500,'CityTransit Ltd','2022-01-01','2027-12-31',750000,'Quarterly','2023-04-10','01234 567890','ops@citytransit.co.uk',1,'High','Electric buses serving paddock area',12.5,'Zero‑emission fleet','52.0725','-1.0219','Active'),
(2,'Rail Link',1200,'EuroRail Solutions','2021-06-15','2026-06-14',1500000,'Bi‑annual','2023-02-20','+33 1 23 45 67 89','rail@eurorail.fr',1,'Medium','Dedicated rail spur to circuit',8.3,'Hybrid diesel‑electric',43.7384,'7.4246','Active'),
(3,'Heliport',30,'AeroFly Services','2023-03-01','2028-02-28',300000,'Annual','2023-12-01','(512) 555‑0199','contact@aerofly.com',0,'High','Used for VIP transport only',5.7,'Carbon‑offset program',30.2672,-97.7431,'Planned');

-- Sponsor media campaign information
CREATE TABLE sponsor_media_campaigns
(
    campaignId            INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId             INTEGER,
    campaignName          TEXT,
    startDate             DATE,
    endDate               DATE,
    mediaChannels         TEXT,
    budget                REAL,
    targetAudience        TEXT,
    impressions           INTEGER,
    clicks                INTEGER,
    conversions           INTEGER,
    cpm                   REAL,
    cpc                   REAL,
    cpa                   REAL,
    creativeType          TEXT,
    agency                TEXT,
    approvalStatus        TEXT,
    metricsUrl            TEXT,
    notes                 TEXT,
    performanceRating     INTEGER,
    status                TEXT
);

INSERT INTO sponsor_media_campaigns
(sponsorId, campaignName, startDate, endDate, mediaChannels, budget,
 targetAudience, impressions, clicks, conversions, cpm, cpc, cpa,
 creativeType, agency, approvalStatus, metricsUrl, notes,
 performanceRating, status)
VALUES
(201,'TurboBoost Summer Blast','2023-06-01','2023-08-31','TV;Online;Social','2500000','Motorsport Fans',50000000,850000,12000,50.0,2.95,208.33,'Video', 'CreativeWave','Approved','http://metrics.sponsor.com/turbo2023','High engagement in Europe',9,'Live'),
(202,'EcoDrive Green Initiative','2023-04-15','2023-12-31','Print;Online;Billboards','1800000','Eco‑conscious Drivers',30000000,420000,8000,60.0,4.29,225.00,'Static', 'GreenMedia','Pending','http://metrics.sponsor.com/ecodrive','Awaiting final compliance check',7,'Planned'),
(203,'LuxuryLanes Premium Launch','2023-09-01','2024-02-28','Radio;Social;Events','3200000','High‑Income Individuals',20000000,300000,5000,80.0,10.67,640.00,'Interactive', 'PrimeAds','Approved','http://metrics.sponsor.com/luxury2023','Strong brand lift observed',8,'Live');

-- Race technology partner agreements
CREATE TABLE race_technology_partners
(
    partnerId                INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId                  INTEGER,
    partnerName             TEXT,
    technologyArea          TEXT,
    contractValue           REAL,
    startDate               DATE,
    endDate                 DATE,
    contactPerson           TEXT,
    contactEmail            TEXT,
    serviceLevelAgreement   TEXT,
    performanceMetrics      TEXT,
    renewalOption           INTEGER,
    notes                   TEXT,
    complianceStatus        TEXT,
    auditDate               DATE,
    region                  TEXT,
    primaryContactPhone     TEXT,
    backupContactPhone      TEXT,
    integrationStatus       TEXT,
    lastUpdate              DATE,
    status                  TEXT
);

INSERT INTO race_technology_partners
(raceId, partnerName, technologyArea, contractValue, startDate, endDate,
 contactPerson, contactEmail, serviceLevelAgreement, performanceMetrics,
 renewalOption, notes, complianceStatus, auditDate, region,
 primaryContactPhone, backupContactPhone, integrationStatus,
 lastUpdate, status)
VALUES
(12,'DataStream Solutions','Telemetry','500000','2023-01-01','2025-12-31',
'Anna Keller','anna.keller@datastream.com','99.9% uptime','Latency <5ms','1','Provides real‑time data feed','Compliant','2023-06-20','EMEA','+44 20 7946 0123','+44 20 7946 0456','Integrated','2023-08-01','Active'),
(14,'FastLaps Analytics','AI Predictive','750000','2022-07-15','2024-07-14',
'Luis Gomez','luis.gomez@fastlaps.ai','SLA Tier 1','Prediction accuracy >90%','0','Develops race‑strategy models','Compliant','2023-03-10','APAC','+86 10 1234 5678','+86 10 8765 4321','Partially Integrated','2023-07-15','Active'),
(16,'SecureComm Ltd','Secure Communications','300000','2023-04-01','2026-03-31',
'Mei Lin','mei.lin@securecomm.com','Encrypted channel SLA','Zero breach incidents','1','Handles team radio and pit lane comms','Compliant','2023-05-05','NAM','+1 212 555 0198','+1 212 555 0199','Fully Integrated','2023-09-10','Active');

-- Fan experience rewards program details
CREATE TABLE fan_experience_rewards_program
(
    programId                INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId                    INTEGER,
    tier                     TEXT,
    pointsEarned             INTEGER,
    pointsRedeemed           INTEGER,
    enrollmentDate           DATE,
    lastActivityDate         DATE,
    preferredChannel         TEXT,
    communicationConsent     INTEGER,
    rewardCatalogUrl         TEXT,
    nextTierThreshold        INTEGER,
    status                   TEXT,
    notes                    TEXT,
    email                    TEXT,
    phone                    TEXT,
    addressLine1             TEXT,
    city                     TEXT,
    state                    TEXT,
    zipCode                  TEXT,
    country                  TEXT
);

INSERT INTO fan_experience_rewards_program
(fanId, tier, pointsEarned, pointsRedeemed, enrollmentDate,
 lastActivityDate, preferredChannel, communicationConsent,
 rewardCatalogUrl, nextTierThreshold, status, notes,
 email, phone, addressLine1, city, state, zipCode, country)
VALUES
(301,'Gold',12450,3500,'2021-05-12','2023-08-20','Email',1,'http://rewards.f1.com/catalog','20000','Active','Frequent race‑weekend attendee','john.doe@example.com','+44 7700 900123','123 Baker Street','London','England','SW1A 1AA','UK'),
(302,'Silver',8200,1200,'2020-11-03','2023-07-15','SMS',1,'http://rewards.f1.com/catalog','15000','Active','Participates in fan polls','jane.smith@example.com','+1 202 555 0199','456 Oak Avenue','Washington','DC','20001','USA'),
(303,'Bronze',3400,400,'2019-02-20','2023-06-10','Push','0','http://rewards.f1.com/catalog','8000','Inactive','Last activity over 12 months','mario.rossi@example.it','+39 06 1234 5678','Via Roma 10','Rome','Lazio','00100','Italy');

-- Environmental sustainability projects linked to the Grand Prix
CREATE TABLE environmental_sustainability_projects
(
    projectId               INTEGER PRIMARY KEY AUTOINCREMENT,
    projectName             TEXT,
    description             TEXT,
    startDate               DATE,
    endDate                 DATE,
    leadOrganization        TEXT,
    budget                  REAL,
    carbonReductionTonnes   REAL,
    waterSavedLiters        REAL,
    wasteDivertedTonnes    REAL,
    status                  TEXT,
    stakeholderCount        INTEGER,
    partnerOrganizations    TEXT,
    milestones              TEXT,
    reportingFrequency      TEXT,
    lastReportDate          DATE,
    nextMilestoneDate       DATE,
    complianceStandard      TEXT,
    verificationAgency      TEXT,
    notes                   TEXT
);

INSERT INTO environmental_sustainability_projects
(projectName, description, startDate, endDate, leadOrganization, budget,
 carbonReductionTonnes, waterSavedLiters, wasteDivertedTonnes, status,
 stakeholderCount, partnerOrganizations, milestones, reportingFrequency,
 lastReportDate, nextMilestoneDate, complianceStandard, verificationAgency,
 notes)
VALUES
('Zero Waste Initiative','Aim to divert 100% waste from landfill','2022-01-01','2024-12-31','GreenTrack Ltd',1200000,0,0,500,'Active',12,'EcoSolutions;RecyclePro','Phase 1: Waste audit; Phase 2: Composting','Quarterly','2023-06-30','2023-12-15','ISO 14001','Environmental Auditors Inc.','Pilot at 2023 British GP'),
('Solar Power Integration','Install solar panels on circuit facilities','2021-05-15','2025-05-14','SolarWave Energy',2500000,3500,0,0,'In Progress',8,'PowerGrid Corp;SunTech','Solar array 20% capacity by 2023','Semi‑annual','2023-04-20','2023-10-01','ISO 50001','Renewable Certification Agency','Target 30% of total energy consumption'),
('Carbon Offset Program','Purchase offsets for race emissions','2020-03-01','2026-02-28','CarbonNeutral Partners',800000,12000,0,0,'Active',5,'OffsetCo;TreePlanting Org','Offset 5,000 tonnes per year','Annual','2023-01-15','2023-11-30','PAS 2050','Carbon Verification Ltd','Includes community tree planting events');

-- Vehicle maintenance records for race team assets
CREATE TABLE vehicle_maintenance_records
(
    recordId               INTEGER PRIMARY KEY AUTOINCREMENT,
    vehicleId              INTEGER,
    maintenanceDate        DATE,
    odometer               INTEGER,
    serviceType            TEXT,
    provider               TEXT,
    cost                   REAL,
    partsReplaced          TEXT,
    warrantyStatus         TEXT,
    nextServiceDue         DATE,
    mileageDue             INTEGER,
    technicianName         TEXT,
    technicianCertifications TEXT,
    notes                  TEXT,
    complianceFlag         INTEGER,
    inspectionPassed       INTEGER,
    followUpActions        TEXT,
    downtimeHours          INTEGER,
    fuelEfficiencyAfter    REAL,
    status                 TEXT
);

INSERT INTO vehicle_maintenance_records
(vehicleId, maintenanceDate, odometer, serviceType, provider, cost,
 partsReplaced, warrantyStatus, nextServiceDue, mileageDue,
 technicianName, technicianCertifications, notes,
 complianceFlag, inspectionPassed, followUpActions,
 downtimeHours, fuelEfficiencyAfter, status)
VALUES
(501,'2023-03-10',15000,'Engine Tune‑up','Motorsport Mechanics Ltd',4200,'Turbocharger;ECU','Under warranty','2023-09-10',20000,'Carlos Mendez','ASE Certified','Improved throttle response',1,1,'Re‑calibrate ECU',4,18.5,'Completed'),
(502,'2023-04-22',8000,'Brake Replacement','BrakeTech Services',2600,'Front discs; Pads','Out of warranty','2023-10-22',15000,'Elena Rossi','Brake Specialist','New composite discs installed',1,1,'Monitor wear rate',2,19.0,'Completed'),
(503,'2023-05-05',12000,'Suspension Overhaul','Chassis Dynamics',5900,'Dampers; Push‑rods','Under warranty','2023-11-05',18000,'Takeshi Yamamoto','Chassis Engineer','Adjusted ride height for qualifying',1,1,'Check alignment after 500km',3,18.8,'Completed');

-- Virtual reality experiences offered at the Grand Prix venue
CREATE TABLE virtual_reality_experiences
(
    vrExpId                INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId                INTEGER,
    experienceName         TEXT,
    provider               TEXT,
    launchDate             DATE,
    endDate                DATE,
    deviceSupported        TEXT,
    durationMinutes        INTEGER,
    maxConcurrentUsers    INTEGER,
    averageRating          REAL,
    feedbackCount          INTEGER,
    contentUrl             TEXT,
    privacyPolicyUrl       TEXT,
    complianceStatus       TEXT,
    accessRestrictions     TEXT,
    technicalRequirements  TEXT,
    supportContact         TEXT,
    notes                  TEXT,
    version                TEXT,
    status                 TEXT
);

INSERT INTO virtual_reality_experiences
(eventId, experienceName, provider, launchDate, endDate,
 deviceSupported, durationMinutes, maxConcurrentUsers,
 averageRating, feedbackCount, contentUrl, privacyPolicyUrl,
 complianceStatus, accessRestrictions, technicalRequirements,
 supportContact, notes, version, status)
VALUES
(1001,'Pit Lane Immersion','VRSpeed Studios','2023-07-01','2023-07-31','Oculus Quest 2',15,200,4.7,128,'http://vr.f1.com/pitlane','http://vr.f1.com/privacy','Compliant','Ticket holders only','GPU >= GTX 1060; 8GB RAM','support@vrspeed.com','Highly rated for realism','1.2','Active'),
(1002,'Historic Grand Prix Tour','RetroVR','2023-08-15','2023-09-15','HTC Vive',20,150,4.5,95,'http://vr.f1.com/historic','http://vr.f1.com/privacy','Compliant','All visitors','CPU i5, 16GB RAM, USB 3.0','help@retrovr.com','Includes 1950s footage','2.0','Active'),
(1003,'Team Strategy Simulator','SimLogic','2023-09-05','2023-10-05','Valve Index',25,100,4.2,67,'http://vr.f1.com/strategy','http://vr.f1.com/privacy','Compliant','Members only','RTX 2070+, 12GB VRAM','contact@simlogic.com','Beta testing phase','0.9','Testing');