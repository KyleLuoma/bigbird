-- Table: venue_transport_infrastructure
CREATE TABLE venue_transport_infrastructure
(
    infraId                INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId                INTEGER NOT NULL,
    type                   TEXT NOT NULL,
    description            TEXT,
    capacity               INTEGER,
    provider               TEXT,
    contractStartDate      DATE,
    contractEndDate        DATE,
    maintenanceCycleDays  INTEGER,
    lastInspectionDate     DATE,
    status                 TEXT,
    gpsLatitude            REAL,
    gpsLongitude           REAL,
    elevation              INTEGER,
    cost                   REAL,
    fundingSource          TEXT,
    createdAt              DATE,
    updatedAt              DATE,
    notes                  TEXT,
    isActive               INTEGER
);

INSERT INTO venue_transport_infrastructure (venueId,type,description,capacity,provider,contractStartDate,contractEndDate,maintenanceCycleDays,lastInspectionDate,status,gpsLatitude,gpsLongitude,elevation,cost,fundingSource,createdAt,updatedAt,notes,isActive) VALUES (1,'ShuttleBus','Electric shuttle service',200,'CityTransit','2023-01-01','2028-01-01',30,'2024-02-15','Operational',40.7128,-74.0060,10,500000,'Municipal','2024-01-01','2024-06-01','First phase rollout',1);
INSERT INTO venue_transport_infrastructure (venueId,type,description,capacity,provider,contractStartDate,contractEndDate,maintenanceCycleDays,lastInspectionDate,status,gpsLatitude,gpsLongitude,elevation,cost,fundingSource,createdAt,updatedAt,notes,isActive) VALUES (2,'ParkingLot','Multi‑level underground parking',800,'ParkSecure','2022-06-01','2032-06-01',90,'2024-03-10','Operational',34.0522,-118.2437,30,1200000,'Private','2024-01-15','2024-06-10','Completed construction',1);
INSERT INTO venue_transport_infrastructure (venueId,type,description,capacity,provider,contractStartDate,contractEndDate,maintenanceCycleDays,lastInspectionDate,status,gpsLatitude,gpsLongitude,elevation,cost,fundingSource,createdAt,updatedAt,notes,isActive) VALUES (3,'BikeShare','Dockless bike stations',150,'EcoBike','2024-04-01','2029-04-01',15,'2024-04-20','Planned',51.5074,-0.1278,15,200000,'Sponsorship','2024-04-01','2024-06-15','Pending city approval',0);

-- Table: driver_performance_analytics
CREATE TABLE driver_performance_analytics
(
    analyticsId            INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId               INTEGER NOT NULL,
    raceId                 INTEGER NOT NULL,
    lapAvgSpeed            REAL,
    topSpeed               REAL,
    avgFuelConsumption     REAL,
    tyreWearPct            REAL,
    brakeTempAvg           REAL,
    engineTempAvg          REAL,
    downforce              REAL,
    dragCoeff              REAL,
    overtakes              INTEGER,
    defensiveManeuvers    INTEGER,
    pitStopTimeAvg         REAL,
    pitStopCount           INTEGER,
    incidentCount          INTEGER,
    sector1Time            REAL,
    sector2Time            REAL,
    sector3Time            REAL,
    raceDuration           REAL,
    performanceScore       REAL
);

INSERT INTO driver_performance_analytics (driverId,raceId,lapAvgSpeed,topSpeed,avgFuelConsumption,tyreWearPct,brakeTempAvg,engineTempAvg,downforce,dragCoeff,overtakes,defensiveManeuvers,pitStopTimeAvg,pitStopCount,incidentCount,sector1Time,sector2Time,sector3Time,raceDuration,performanceScore) VALUES (101,1001,210.5,340.2,2.8,12.5,350.0,95.0,550.0,0.32,3,1,2.8,2,0,29.5,28.7,30.1,7200.0,92.3);
INSERT INTO driver_performance_analytics (driverId,raceId,lapAvgSpeed,topSpeed,avgFuelConsumption,tyreWearPct,brakeTempAvg,engineTempAvg,downforce,dragCoeff,overtakes,defensiveManeuvers,pitStopTimeAvg,pitStopCount,incidentCount,sector1Time,sector2Time,sector3Time,raceDuration,performanceScore) VALUES (102,1002,205.0,335.0,2.6,10.2,340.0,93.5,540.0,0.30,2,2,3.1,3,1,30.0,29.0,31.2,7400.0,88.7);
INSERT INTO driver_performance_analytics (driverId,raceId,lapAvgSpeed,topSpeed,avgFuelConsumption,tyreWearPct,brakeTempAvg,engineTempAvg,downforce,dragCoeff,overtakes,defensiveManeuvers,pitStopTimeAvg,pitStopCount,incidentCount,sector1Time,sector2Time,sector3Time,raceDuration,performanceScore) VALUES (103,1003,215.3,345.5,2.9,13.1,360.0,96.2,560.0,0.33,4,0,2.5,1,0,28.9,27.8,29.7,7100.0,95.1);

-- Table: sponsor_media_exposures
CREATE TABLE sponsor_media_exposures
(
    exposureId             INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId              INTEGER NOT NULL,
    raceId                 INTEGER NOT NULL,
    mediaType              TEXT,
    channel                TEXT,
    startTime              TEXT,
    endTime                TEXT,
    viewerCount            INTEGER,
    impressionCount        INTEGER,
    clickThroughRate       REAL,
    cost                   REAL,
    campaignName           TEXT,
    creativeId             TEXT,
    targetAudience         TEXT,
    region                 TEXT,
    platform               TEXT,
    adTag                  TEXT,
    viewabilityScore       REAL,
    createdAt              DATE,
    updatedAt              DATE,
    notes                  TEXT
);

INSERT INTO sponsor_media_exposures (sponsorId,raceId,mediaType,channel,startTime,endTime,viewerCount,impressionCount,clickThroughRate,cost,campaignName,creativeId,targetAudience,region,platform,adTag,viewabilityScore,createdAt,updatedAt,notes) VALUES (201,1001,'Video','TVMain','2024-06-01 14:00','2024-06-01 14:30',1500000,2000000,0.025,50000,'GrandPrixLaunch','CR001','MotorsportFans','Europe','Broadcast','TAG123',0.92,'2024-05-01','2024-05-15','High impact slot');
INSERT INTO sponsor_media_exposures (sponsorId,raceId,mediaType,channel,startTime,endTime,viewerCount,impressionCount,clickThroughRate,cost,campaignName,creativeId,targetAudience,region,platform,adTag,viewabilityScore,createdAt,updatedAt,notes) VALUES (202,1002,'Banner','Website','2024-06-02 09:00','2024-06-02 23:59',800000,1200000,0.015,20000,'LiveTimingBanner','CR002','GeneralSports','NorthAmerica','Web','TAG124',0.88,'2024-05-03','2024-05-18','Rotating banner');
INSERT INTO sponsor_media_exposures (sponsorId,raceId,mediaType,channel,startTime,endTime,viewerCount,impressionCount,clickThroughRate,cost,campaignName,creativeId,targetAudience,region,platform,adTag,viewabilityScore,createdAt,updatedAt,notes) VALUES (203,1003,'Social','Instagram','2024-06-03 12:00','2024-06-03 12:05',500000,700000,0.045,15000,'SocialBoost','CR003','YoungFans','Asia','Social','TAG125',0.95,'2024-05-05','2024-05-20','Story ad');

-- Table: race_venue_historic_photos
CREATE TABLE race_venue_historic_photos
(
    photoId                INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId                INTEGER NOT NULL,
    raceYear               INTEGER,
    photographer           TEXT,
    photoUrl               TEXT,
    caption                TEXT,
    resolution             TEXT,
    fileSizeKB             INTEGER,
    format                 TEXT,
    license                TEXT,
    takenDate              DATE,
    archiveLocation        TEXT,
    uploadedBy             TEXT,
    uploadDate             DATE,
    tags                   TEXT,
    isPublic               INTEGER,
    relatedEventId         INTEGER,
    orientation            TEXT,
    colorSpace             TEXT,
    copyrightHolder        TEXT,
    notes                  TEXT
);

INSERT INTO race_venue_historic_photos (venueId,raceYear,photographer,photoUrl,caption,resolution,fileSizeKB,format,license,takenDate,archiveLocation,uploadedBy,uploadDate,tags,isPublic,relatedEventId,orientation,colorSpace,copyrightHolder,notes) VALUES (1,2023,'JohnDoe','http://photos.example.com/001.jpg','Starting grid','4000x3000',2500,'JPEG','CC0','2023-04-10','/archive/2023/','Alice','2024-01-02','grid,start','1',1001,'Landscape','sRGB','JohnDoe','No restrictions');
INSERT INTO race_venue_historic_photos (venueId,raceYear,photographer,photoUrl,caption,resolution,fileSizeKB,format,license,takenDate,archiveLocation,uploadedBy,uploadDate,tags,isPublic,relatedEventId,orientation,colorSpace,copyrightHolder,notes) VALUES (2,2022,'MariaSmith','http://photos.example.com/002.jpg','Podium celebration','5000x3500',3200,'JPEG','CCBY','2022-09-15','/archive/2022/','Bob','2024-01-05','podium,celebration','1',1002,'Portrait','AdobeRGB','MariaSmith','Featured on website');
INSERT INTO race_venue_historic_photos (venueId,raceYear,photographer,photoUrl,caption,resolution,fileSizeKB,format,license,takenDate,archiveLocation,uploadedBy,uploadDate,tags,isPublic,relatedEventId,orientation,colorSpace,copyrightHolder,notes) VALUES (3,2021,'LiuWei','http://photos.example.com/003.jpg','Night race lighting','3840x2160',2100,'PNG','CC0','2021-07-20','/archive/2021/','Charlie','2024-01-08','night,lights','0',1003,'Landscape','sRGB','LiuWei','Restricted use');

-- Table: circuit_energy_management
CREATE TABLE circuit_energy_management
(
    recordId               INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId              INTEGER NOT NULL,
    recordDate             DATE,
    energySource           TEXT,
    generatedMWh           REAL,
    consumedMWh            REAL,
    storedMWh              REAL,
    peakDemandMW           REAL,
    offPeakDemandMW        REAL,
    renewablePct           REAL,
    carbonEmissionsKg     REAL,
    costPerMWh             REAL,
    provider               TEXT,
    maintenanceStatus      TEXT,
    gridConnectionStatus   TEXT,
    voltageLevelKV         REAL,
    frequencyHz            REAL,
    regulator              TEXT,
    notes                  TEXT,
    createdAt              DATE,
    updatedAt              DATE
);

INSERT INTO circuit_energy_management (circuitId,recordDate,energySource,generatedMWh,consumedMWh,storedMWh,peakDemandMW,offPeakDemandMW,renewablePct,carbonEmissionsKg,costPerMWh,provider,maintenanceStatus,gridConnectionStatus,voltageLevelKV,frequencyHz,regulator,notes,createdAt,updatedAt) VALUES (1,'2024-06-01','Solar',1500.5,1400.3,80.2,12.5,8.7,85.0,12000.0,0.10,'SunPower','Good','Connected',400.0,50.0,'EnergyReg','No incidents','2024-06-02','2024-06-03');
INSERT INTO circuit_energy_management (circuitId,recordDate,energySource,generatedMWh,consumedMWh,storedMWh,peakDemandMW,offPeakDemandMW,renewablePct,carbonEmissionsKg,costPerMWh,provider,maintenanceStatus,gridConnectionStatus,voltageLevelKV,frequencyHz,regulator,notes,createdAt,updatedAt) VALUES (2,'2024-06-01','Wind',1800.0,1700.0,95.0,13.0,9.0,78.0,15000.0,0.12,'WindCo','Scheduled','Connected',380.0,50.0,'EnergyReg','Turbine inspection pending','2024-06-02','2024-06-03');
INSERT INTO circuit_energy_management (circuitId,recordDate,energySource,generatedMWh,consumedMWh,storedMWh,peakDemandMW,offPeakDemandMW,renewablePct,carbonEmissionsKg,costPerMWh,provider,maintenanceStatus,gridConnectionStatus,voltageLevelKV,frequencyHz,regulator,notes,createdAt,updatedAt) VALUES (3,'2024-06-01','Grid',2000.0,2100.0,0.0,14.5,10.2,0.0,25000.0,0.15,'NationalGrid','Good','Connected',415.0,50.0,'EnergyReg','Imported majority of power','2024-06-02','2024-06-03');

-- Table: fan_loyalty_missions
CREATE TABLE fan_loyalty_missions
(
    missionId              INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId                  INTEGER NOT NULL,
    missionName            TEXT,
    startDate              DATE,
    endDate                DATE,
    pointsEarned           INTEGER,
    rewardId               INTEGER,
    status                 TEXT,
    category               TEXT,
    difficultyLevel        TEXT,
    description            TEXT,
    eligibilityCriteria   TEXT,
    completionDate         DATE,
    verificationMethod     TEXT,
    sponsorId              INTEGER,
    channel                TEXT,
    createdAt              DATE,
    updatedAt              DATE,
    notes                  TEXT,
    isFeatured             INTEGER,
    expirationDate         DATE
);

INSERT INTO fan_loyalty_missions (fanId,missionName,startDate,endDate,pointsEarned,rewardId,status,category,difficultyLevel,description,eligibilityCriteria,completionDate,verificationMethod,sponsorId,channel,createdAt,updatedAt,notes,isFeatured,expirationDate) VALUES (301,'GrandPrixQuiz','2024-05-01','2024-05-31',150,401,'Completed','Quiz','Easy','Answer 10 race trivia questions','All registered fans','2024-05-20','Online','201','App','2024-04-01','2024-05-01','High engagement','1','2024-12-31');
INSERT INTO fan_loyalty_missions (fanId,missionName,startDate,endDate,pointsEarned,rewardId,status,category,difficultyLevel,description,eligibilityCriteria,completionDate,verificationMethod,sponsorId,channel,createdAt,updatedAt,notes,isFeatured,expirationDate) VALUES (302,'TicketCheckIn','2024-06-10','2024-06-12',200,402,'Pending','Attendance','Medium','Check‑in at least three race days','Ticket holder','2024-06-13','QR Scan','202','Email','2024-05-15','2024-06-09','Awaiting verification','0','2025-06-30');
INSERT INTO fan_loyalty_missions (fanId,missionName,startDate,endDate,pointsEarned,rewardId,status,category,difficultyLevel,description,eligibilityCriteria,completionDate,verificationMethod,sponsorId,channel,createdAt,updatedAt,notes,isFeatured,expirationDate) VALUES (303,'SocialShare','2024-04-15','2024-04-30',100,403,'Completed','Social','Easy','Share race highlights on social media','Follow official accounts','2024-04-25','Hashtag count','205','Social','2024-03-20','2024-04-15','Viral post','1','2024-11-30');

-- Table: officials_schedule_assignments
CREATE TABLE officials_schedule_assignments
(
    assignmentId           INTEGER PRIMARY KEY AUTOINCREMENT,
    officialId             INTEGER NOT NULL,
    raceId                 INTEGER NOT NULL,
    role                   TEXT,
    startTime              TEXT,
    endTime                TEXT,
    location               TEXT,
    shiftType              TEXT,
    notes                  TEXT,
    createdAt              DATE,
    updatedAt              DATE,
    substituteOfficialId   INTEGER,
    assignmentStatus       TEXT,
    travelAllowance        REAL,
    accommodationId        INTEGER,
    mealPlanId             INTEGER,
    equipmentId            INTEGER,
    communicationChannel   TEXT,
    badgeNumber            TEXT,
    securityClearanceLevel INTEGER,
    isPrimary              INTEGER
);

INSERT INTO officials_schedule_assignments (officialId,raceId,role,startTime,endTime,location,shiftType,notes,createdAt,updatedAt,substituteOfficialId,assignmentStatus,travelAllowance,accommodationId,mealPlanId,equipmentId,communicationChannel,badgeNumber,securityClearanceLevel,isPrimary) VALUES (401,1001,'Steward','08:00','18:00','Control Tower','FullDay','Monitoring race start','2024-05-01','2024-05-02',0,'Confirmed',1500.0,701,801,901,'Radio','STW001',3,1);
INSERT INTO officials_schedule_assignments (officialId,raceId,role,startTime,endTime,location,shiftType,notes,createdAt,updatedAt,substituteOfficialId,assignmentStatus,travelAllowance,accommodationId,mealPlanId,equipmentId,communicationChannel,badgeNumber,securityClearanceLevel,isPrimary) VALUES (402,1002,'Timekeeper','09:00','17:00','Timing Room','FullDay','Ensure timing systems','2024-05-03','2024-05-04',0,'Confirmed',1200.0,702,802,902,'Phone','TKR002',2,1);
INSERT INTO officials_schedule_assignments (officialId,raceId,role,startTime,endTime,location,shiftType,notes,createdAt,updatedAt,substituteOfficialId,assignmentStatus,travelAllowance,accommodationId,mealPlanId,equipmentId,communicationChannel,badgeNumber,securityClearanceLevel,isPrimary) VALUES (403,1003,'Medical Director','07:00','19:00','Medical Center','FullDay','Oversee medical response','2024-05-05','2024-05-06',0,'Confirmed',1800.0,703,803,903,'Radio','MED003',4,1);

-- Table: trackside_advertising_inventory
CREATE TABLE trackside_advertising_inventory
(
    inventoryId            INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId              INTEGER NOT NULL,
    adSlotId               TEXT,
    position               TEXT,
    dimensions             TEXT,
    pricePerLap            REAL,
    contractStartDate      DATE,
    contractEndDate        DATE,
    sponsorId              INTEGER,
    adContentUrl           TEXT,
    mediaType              TEXT,
    isDigital              INTEGER,
    illuminationLevel      REAL,
    rotationSpeed          REAL,
    maxDurationSec         INTEGER,
    visibilityScore        REAL,
    lastUpdate             DATE,
    createdAt              DATE,
    updatedAt              DATE,
    notes                  TEXT,
    isActive               INTEGER
);

INSERT INTO trackside_advertising_inventory (circuitId,adSlotId,position,dimensions,pricePerLap,contractStartDate,contractEndDate,sponsorId,adContentUrl,mediaType,isDigital,illuminationLevel,rotationSpeed,maxDurationSec,visibilityScore,lastUpdate,createdAt,updatedAt,notes,isActive) VALUES (1,'A1','Turn 1','5x3',2500.0,'2024-01-01','2026-01-01',201,'http://ads.example.com/a1.mp4','Video',1,800.0,0.0,30,0.95,'2024-05-20','2024-01-01','2024-05-20','Prime position','1');
INSERT INTO trackside_advertising_inventory (circuitId,adSlotId,position,dimensions,pricePerLap,contractStartDate,contractEndDate,sponsorId,adContentUrl,mediaType,isDigital,illuminationLevel,rotationSpeed,maxDurationSec,visibilityScore,lastUpdate,createdAt,updatedAt,notes,isActive) VALUES (2,'B2','Straight 3','10x2',1800.0,'2024-02-15','2025-02-15',202,'http://ads.example.com/b2.jpg','Image',0,600.0,0.0,0,0.88,'2024-05-22','2024-02-15','2024-05-22','High traffic area','1');
INSERT INTO trackside_advertising_inventory (circuitId,adSlotId,position,dimensions,pricePerLap,contractStartDate,contractEndDate,sponsorId,adContentUrl,mediaType,isDigital,illuminationLevel,rotationSpeed,maxDurationSec,visibilityScore,lastUpdate,createdAt,updatedAt,notes,isActive) VALUES (3,'C3','Pit Exit','8x4',2200.0,'2024-03-01','2027-03-01',203,'http://ads.example.com/c3.gif','Animated',1,750.0,5.0,15,0.92,'2024-05-25','2024-03-01','2024-05-25','Dynamic ad','1');

-- Table: team_technology_partners
CREATE TABLE team_technology_partners
(
    partnershipId          INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId                 INTEGER NOT NULL,
    partnerId              INTEGER NOT NULL,
    technologyArea         TEXT,
    startDate              DATE,
    endDate                DATE,
    contractValue          REAL,
    supportLevel           TEXT,
    contactPerson          TEXT,
    contactEmail           TEXT,
    serviceLevelAgreement  TEXT,
    renewalDate            DATE,
    isRenewable            INTEGER,
    notes                  TEXT,
    createdAt              DATE,
    updatedAt              DATE,
    activeFlag             INTEGER,
    partnershipType        TEXT,
    deliverables           TEXT,
    milestones             TEXT,
    riskAssessment        TEXT
);

INSERT INTO team_technology_partners (teamId,partnerId,technologyArea,startDate,endDate,contractValue,supportLevel,contactPerson,contactEmail,serviceLevelAgreement,renewalDate,isRenewable,notes,createdAt,updatedAt,activeFlag,partnershipType,deliverables,milestones,riskAssessment) VALUES (1,301,'Aerodynamics','2023-01-01','2025-12-31',2000000.0,'High','Alice Jones','alice@example.com','99.9% uptime','2025-11-30',1,'Wind tunnel access','2023-01-10','2023-01-10',1,'Strategic','Prototype models','Phase1 complete','Low');
INSERT INTO team_technology_partners (teamId,partnerId,technologyArea,startDate,endDate,contractValue,supportLevel,contactPerson,contactEmail,serviceLevelAgreement,renewalDate,isRenewable,notes,createdAt,updatedAt,activeFlag,partnershipType,deliverables,milestones,riskAssessment) VALUES (2,302,'Data Analytics','2022-06-15','2024-06-14',1500000.0,'Medium','Bob Lee','bob@example.com','95% data availability','2024-05-30',0,'Telemetry processing','2022-06-20','2022-06-20',1,'Operational','Analytics dashboards','Quarterly reports','Medium');
INSERT INTO team_technology_partners (teamId,partnerId,technologyArea,startDate,endDate,contractValue,supportLevel,contactPerson,contactEmail,serviceLevelAgreement,renewalDate,isRenewable,notes,createdAt,updatedAt,activeFlag,partnershipType,deliverables,milestones,riskAssessment) VALUES (3,303,'Powertrain','2024-02-01','2027-01-31',2500000.0,'High','Cara Smith','cara@example.com','99% reliability','2026-12-31',1,'Engine testing','2024-02-05','2024-02-05',1,'LongTerm','Hybrid system','Prototype testing','Low');

-- Table: environmental_impact_assessments
CREATE TABLE environmental_impact_assessments
(
    assessmentId           INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId              INTEGER NOT NULL,
    raceId                 INTEGER,
    assessmentDate         DATE,
    assessorName           TEXT,
    methodology            TEXT,
    carbonFootprintKg      REAL,
    wasteGeneratedKg       REAL,
    waterUsageLiters       REAL,
    noiseLevelDb           REAL,
    airQualityIndex        REAL,
    biodiversityImpactScore REAL,
    mitigationMeasures     TEXT,
    complianceStatus       TEXT,
    reportUrl              TEXT,
    notes                  TEXT,
    createdAt              DATE,
    updatedAt              DATE,
    approvedBy             TEXT,
    approvalDate           DATE,
    recommendations        TEXT
);

INSERT INTO environmental_impact_assessments (circuitId,raceId,assessmentDate,assessorName,methodology,carbonFootprintKg,wasteGeneratedKg,waterUsageLiters,noiseLevelDb,airQualityIndex,biodiversityImpactScore,mitigationMeasures,complianceStatus,reportUrl,notes,createdAt,updatedAt,approvedBy,approvalDate,recommendations) VALUES (1,1001,'2024-05-20','Emma Green','Lifecycle Analysis',12500.0,3000.0,500000.0,95.0,42.0,3.5,'Increase recycling stations','Compliant','http://reports.example.com/assess1001.pdf','All thresholds met','2024-05-22','2024-05-22','John Doe','2024-05-25','Expand solar usage');
INSERT INTO environmental_impact_assessments (circuitId,raceId,assessmentDate,assessorName,methodology,carbonFootprintKg,wasteGeneratedKg,waterUsageLiters,noiseLevelDb,airQualityIndex,biodiversityImpactScore,mitigationMeasures,complianceStatus,reportUrl,notes,createdAt,updatedAt,approvedBy,approvalDate,recommendations) VALUES (2,1002,'2024-05-21','Liam Patel','Carbon Accounting',15800.0,3500.0,620000.0,102.0,48.0,4.2,'Introduce bio‑fuel options','Conditional','http://reports.example.com/assess1002.pdf','Noise exceeds limit at Turn 3','2024-05-23','2024-05-23','Jane Smith','2024-05-26','Install sound barriers');
INSERT INTO environmental_impact_assessments (circuitId,raceId,assessmentDate,assessorName,methodology,carbonFootprintKg,wasteGeneratedKg,waterUsageLiters,noiseLevelDb,airQualityIndex,biodiversityImpactScore,mitigationMeasures,complianceStatus,reportUrl,notes,createdAt,updatedAt,approvedBy,approvalDate,recommendations) VALUES (3,1003,'2024-05-22','Olivia Chen','ISO 14001',13200.0,2800.0,540000.0,98.0,44.0,3.9,'Tree planting program','Compliant','http://reports.example.com/assess1003.pdf','Positive community feedback','2024-05-24','2024-05-24','Michael Lee','2024-05-27','Add electric vehicle charging stations');