-- Driver Academy Programs – details of training programs for aspiring drivers
CREATE TABLE driver_academy_programs
(
    programId              INTEGER PRIMARY KEY AUTOINCREMENT,
    name                   TEXT    NOT NULL,
    location               TEXT,
    startDate              DATE,
    endDate                DATE,
    capacity               INTEGER,
    tuition                REAL,
    instructorCount        INTEGER,
    curriculumVersion      TEXT,
    certification          TEXT,
    language               TEXT,
    partnerOrganization    TEXT,
    vehicleTrainingCount   INTEGER,
    simulatorHours         INTEGER,
    fitnessRequirement     TEXT,
    dietPlan               TEXT,
    mentalHealthSupport    TEXT,
    alumniNetwork          TEXT,
    graduationRate         REAL,
    programUrl             TEXT
);

INSERT INTO driver_academy_programs (programId, name, location, startDate, endDate, capacity, tuition, instructorCount, curriculumVersion, certification, language, partnerOrganization, vehicleTrainingCount, simulatorHours, fitnessRequirement, dietPlan, mentalHealthSupport, alumniNetwork, graduationRate, programUrl)
VALUES (1, 'FastTrack_2024', 'Monaco', '2024-01-15', '2024-06-15', 30, 25000.00, 5, 'v2', 'F1_Graduate', 'English', 'RacingClubIntl', 12, 150, 'HighG', 'Balanced', 'Yes', 'AlumniClub', 0.92, 'http://academy.example.com/fasttrack');

INSERT INTO driver_academy_programs (programId, name, location, startDate, endDate, capacity, tuition, instructorCount, curriculumVersion, certification, language, partnerOrganization, vehicleTrainingCount, simulatorHours, fitnessRequirement, dietPlan, mentalHealthSupport, alumniNetwork, graduationRate, programUrl)
VALUES (2, 'SpeedAcademy_Summer', 'Silverstone', '2024-07-01', '2024-12-01', 25, 22000.00, 4, 'v3', 'F2_Graduate', 'English', 'SpeedMotors', 10, 130, 'MediumG', 'LowCarb', 'Yes', 'SpeedAlumni', 0.88, 'http://academy.example.com/speedsummer');

INSERT INTO driver_academy_programs (programId, name, location, startDate, endDate, capacity, tuition, instructorCount, curriculumVersion, certification, language, partnerOrganization, vehicleTrainingCount, simulatorHours, fitnessRequirement, dietPlan, mentalHealthSupport, alumniNetwork, graduationRate, programUrl)
VALUES (3, 'RookiePrep_Winter', 'SpaFrancorchamps', '2024-12-15', '2025-03-15', 20, 20000.00, 3, 'v1', 'F3_Graduate', 'French', 'RookieOrg', 8, 100, 'LowG', 'HighProtein', 'No', 'RookieCircle', 0.85, 'http://academy.example.com/rookiewinter');

-- Circuit Transport Infrastructure – assets supporting movement around circuits
CREATE TABLE circuit_transport_infrastructure
(
    infraId                INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId              INTEGER,
    type                   TEXT,
    description            TEXT,
    capacity               INTEGER,
    constructionYear       INTEGER,
    maintenanceSchedule    TEXT,
    contractor             TEXT,
    cost                   REAL,
    status                 TEXT,
    gpsLatitude            REAL,
    gpsLongitude           REAL,
    elevation              INTEGER,
    nearbyAirport          TEXT,
    parkingSpaces          INTEGER,
    shuttleService         BOOLEAN,
    electricChargingStations INTEGER,
    wasteManagementFacility BOOLEAN,
    securityCameraCount    INTEGER,
    lastInspectionDate     DATE
);

INSERT INTO circuit_transport_infrastructure (infraId, circuitId, type, description, capacity, constructionYear, maintenanceSchedule, contractor, cost, status, gpsLatitude, gpsLongitude, elevation, nearbyAirport, parkingSpaces, shuttleService, electricChargingStations, wasteManagementFacility, securityCameraCount, lastInspectionDate)
VALUES (1, 1, 'ParkingGarage', 'Underground multi-level garage', 1500, 2018, 'Annual', 'BuildCo', 12000000.00, 'Operational', 43.7300, 7.4195, 6, 'NiceAirport', 1500, 1, 12, 1, 48, '2024-02-10');

INSERT INTO circuit_transport_infrastructure (infraId, circuitId, type, description, capacity, constructionYear, maintenanceSchedule, contractor, cost, status, gpsLatitude, gpsLongitude, elevation, nearbyAirport, parkingSpaces, shuttleService, electricChargingStations, wasteManagementFacility, securityCameraCount, lastInspectionDate)
VALUES (2, 2, 'ShuttleBusDepot', 'Fleet of electric shuttle buses', 300, 2020, 'SemiAnnual', 'TransitBuilders', 3500000.00, 'Operational', 52.0736, 1.0147, 18, 'LeedsAirport', 0, 1, 20, 0, 16, '2024-01-22');

INSERT INTO circuit_transport_infrastructure (infraId, circuitId, type, description, capacity, constructionYear, maintenanceSchedule, contractor, cost, status, gpsLatitude, gpsLongitude, elevation, nearbyAirport, parkingSpaces, shuttleService, electricChargingStations, wasteManagementFacility, securityCameraCount, lastInspectionDate)
VALUES (3, 3, 'RailLink', 'Dedicated light rail connection', 800, 2019, 'Annual', 'RailConstruct', 8000000.00, 'UnderConstruction', 48.1200, 11.4500, 13, 'MunichAirport', 0, 0, 8, 1, 22, '2024-03-05');

-- Sponsor Innovation Projects – R&D initiatives run by sponsors
CREATE TABLE sponsor_innovation_projects
(
    projectId               INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId               INTEGER,
    name                    TEXT,
    startDate               DATE,
    endDate                 DATE,
    budget                  REAL,
    technologyFocus         TEXT,
    leadEngineer            TEXT,
    status                  TEXT,
    milestones              TEXT,
    patentFiled             BOOLEAN,
    patentNumber            TEXT,
    collaborations          TEXT,
    expectedROI             REAL,
    riskLevel               TEXT,
    stakeholderEngagement   TEXT,
    sustainabilityScore     REAL,
    projectUrl              TEXT,
    outcomeSummary          TEXT,
    reportingFrequency      TEXT,
    complianceStatus        TEXT
);

INSERT INTO sponsor_innovation_projects (projectId, sponsorId, name, startDate, endDate, budget, technologyFocus, leadEngineer, status, milestones, patentFiled, patentNumber, collaborations, expectedROI, riskLevel, stakeholderEngagement, sustainabilityScore, projectUrl, outcomeSummary, reportingFrequency, complianceStatus)
VALUES (1, 10, 'EcoEngine_Alpha', '2023-04-01', '2025-03-31', 15000000.00, 'HybridPower', 'AnaMuller', 'Active', 'Phase1,Phase2,Phase3', 1, 'US1234567B2', 'Unilever,Shell', 1.35, 'Medium', 'High', 0.92, 'http://sponsor.example.com/ecoengine', 'Successful prototype', 'Quarterly', 'Compliant');

INSERT INTO sponsor_innovation_projects (projectId, sponsorId, name, startDate, endDate, budget, technologyFocus, leadEngineer, status, milestones, patentFiled, patentNumber, collaborations, expectedROI, riskLevel, stakeholderEngagement, sustainabilityScore, projectUrl, outcomeSummary, reportingFrequency, complianceStatus)
VALUES (2, 12, 'AeroFlex_2024', '2024-01-15', '2026-12-15', 22000000.00, 'Aerodynamics', 'LiamChen', 'Planning', 'Concept,Design', 0, NULL, 'Boeing,Airbus', 1.20, 'High', 'Medium', 0.85, 'http://sponsor.example.com/aeroflex', 'Design phase completed', 'SemiAnnual', 'Pending');

INSERT INTO sponsor_innovation_projects (projectId, sponsorId, name, startDate, endDate, budget, technologyFocus, leadEngineer, status, milestones, patentFiled, patentNumber, collaborations, expectedROI, riskLevel, stakeholderEngagement, sustainabilityScore, projectUrl, outcomeSummary, reportingFrequency, complianceStatus)
VALUES (3, 15, 'DataAnalytics_Pro', '2022-07-01', '2024-06-30', 8000000.00, 'AIAnalytics', 'SofiaRossi', 'Completed', 'DataPrep,Modeling,Deployment', 1, 'EP9876543A1', 'Google,IBM', 1.50, 'Low', 'High', 0.97, 'http://sponsor.example.com/dataanalytics', 'Deployed across teams', 'Monthly', 'Compliant');

-- Driver Fitness Assessments – periodic health and performance measurements
CREATE TABLE driver_fitness_assessments
(
    assessmentId          INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId              INTEGER,
    assessmentDate        DATE,
    VO2Max                REAL,
    benchPressKg          REAL,
    squatKg               REAL,
    bodyFatPercent        REAL,
    flexibilityScore      REAL,
    reactionTimeMs        REAL,
    heartRateResting      INTEGER,
    heartRateRecovery    INTEGER,
    sleepHoursAvg         REAL,
    nutritionScore        REAL,
    hydrationLiters       REAL,
    mentalFocusScore      REAL,
    injuryRiskScore       REAL,
    trainerName           TEXT,
    facilityName          TEXT,
    notes                 TEXT,
    nextAssessmentDate    DATE,
    assessmentStatus      TEXT
);

INSERT INTO driver_fitness_assessments (assessmentId, driverId, assessmentDate, VO2Max, benchPressKg, squatKg, bodyFatPercent, flexibilityScore, reactionTimeMs, heartRateResting, heartRateRecovery, sleepHoursAvg, nutritionScore, hydrationLiters, mentalFocusScore, injuryRiskScore, trainerName, facilityName, notes, nextAssessmentDate, assessmentStatus)
VALUES (1, 101, '2024-02-10', 55.2, 85.0, 120.0, 8.5, 7.8, 210.0, 58, 30, 7.2, 9.0, 2.5, 8.4, 2.0, 'MarkTaylor', 'FitCenter', 'Good overall', '2024-08-10', 'Scheduled');

INSERT INTO driver_fitness_assessments (assessmentId, driverId, assessmentDate, VO2Max, benchPressKg, squatKg, bodyFatPercent, flexibilityScore, reactionTimeMs, heartRateResting, heartRateRecovery, sleepHoursAvg, nutritionScore, hydrationLiters, mentalFocusScore, injuryRiskScore, trainerName, facilityName, notes, nextAssessmentDate, assessmentStatus)
VALUES (2, 102, '2024-01-20', 48.7, 78.0, 110.0, 10.2, 6.5, 225.0, 62, 28, 6.8, 8.2, 2.3, 7.9, 3.1, 'LauraKim', 'PerformanceLab', 'Needs flexibility work', '2024-07-20', 'Scheduled');

INSERT INTO driver_fitness_assessments (assessmentId, driverId, assessmentDate, VO2Max, benchPressKg, squatKg, bodyFatPercent, flexibilityScore, reactionTimeMs, heartRateResting, heartRateRecovery, sleepHoursAvg, nutritionScore, hydrationLiters, mentalFocusScore, injuryRiskScore, trainerName, facilityName, notes, nextAssessmentDate, assessmentStatus)
VALUES (3, 103, '2024-03-05', 60.0, 90.0, 130.0, 7.0, 8.5, 200.0, 55, 32, 7.5, 9.5, 2.8, 8.9, 1.5, 'JamesLee', 'EliteFit', 'Excellent condition', '2024-09-05', 'Scheduled');

-- Circuit Environmental Certifications – sustainability credentials for circuits
CREATE TABLE circuit_environmental_certifications
(
    certId                     INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId                  INTEGER,
    certificationName          TEXT,
    issuingBody                TEXT,
    issueDate                  DATE,
    expiryDate                 DATE,
    complianceLevel           TEXT,
    carbonOffsetAmount        REAL,
    waterConservationVolume   REAL,
    wasteRecycledPercent      REAL,
    renewableEnergyPercent    REAL,
    biodiversityImpactScore   REAL,
    noiseLevelCompliance      TEXT,
    airQualityIndex           REAL,
    documentationUrl           TEXT,
    auditReportUrl             TEXT,
    verificationMethod         TEXT,
    certStatus                TEXT,
    notes                     TEXT,
    renewalReminderDate       DATE
);

INSERT INTO circuit_environmental_certifications (certId, circuitId, certificationName, issuingBody, issueDate, expiryDate, complianceLevel, carbonOffsetAmount, waterConservationVolume, wasteRecycledPercent, renewableEnergyPercent, biodiversityImpactScore, noiseLevelCompliance, airQualityIndex, documentationUrl, auditReportUrl, verificationMethod, certStatus, notes, renewalReminderDate)
VALUES (1, 1, 'ISO14001', 'InternationalStandardOrg', '2023-06-01', '2026-06-01', 'LevelA', 1200.5, 35000.0, 85.0, 40.0, 78.2, 'Compliant', 42.5, 'http://circuit.example.com/iso14001/doc', 'http://circuit.example.com/iso14001/audit', 'ThirdParty', 'Active', 'First certification', '2026-05-15');

INSERT INTO circuit_environmental_certifications (certId, circuitId, certificationName, issuingBody, issueDate, expiryDate, complianceLevel, carbonOffsetAmount, waterConservationVolume, wasteRecycledPercent, renewableEnergyPercent, biodiversityImpactScore, noiseLevelCompliance, airQualityIndex, documentationUrl, auditReportUrl, verificationMethod, certStatus, notes, renewalReminderDate)
VALUES (2, 2, 'LEED_Gold', 'USGBC', '2022-09-15', '2027-09-15', 'Gold', 950.0, 42000.0, 78.0, 55.0, 81.0, 'Compliant', 35.0, 'http://circuit.example.com/leed/doc', 'http://circuit.example.com/leed/audit', 'Internal', 'Active', 'Energy efficient upgrades', '2027-09-01');

INSERT INTO circuit_environmental_certifications (certId, circuitId, certificationName, issuingBody, issueDate, expiryDate, complianceLevel, carbonOffsetAmount, waterConservationVolume, wasteRecycledPercent, renewableEnergyPercent, biodiversityImpactScore, noiseLevelCompliance, airQualityIndex, documentationUrl, auditReportUrl, verificationMethod, certStatus, notes, renewalReminderDate)
VALUES (3, 3, 'BREEAM_Excellent', 'BREEAM', '2021-04-20', '2026-04-20', 'Excellent', 1100.0, 38000.0, 82.0, 48.0, 85.5, 'Compliant', 38.0, 'http://circuit.example.com/breeam/doc', 'http://circuit.example.com/breeam/audit', 'ThirdParty', 'Active', 'Continuous improvement plan', '2026-04-10');

-- Race Media Rights Agreements – contracts for broadcasting rights
CREATE TABLE race_media_rights_agreements
(
    agreementId            INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId                 INTEGER,
    mediaCompany           TEXT,
    territory              TEXT,
    startDate              DATE,
    endDate                DATE,
    rightsType             TEXT,
    fee                    REAL,
    revenueSharePercent    REAL,
    exclusivity            BOOLEAN,
    broadcastPlatform      TEXT,
    digitalPlatform        TEXT,
    sublicensingAllowed    BOOLEAN,
    contractUrl            TEXT,
    amendmentUrl           TEXT,
    complianceClause       TEXT,
    terminationClause      TEXT,
    renewalOption          BOOLEAN,
    notes                  TEXT,
    signedBy               TEXT,
    signedDate             DATE
);

INSERT INTO race_media_rights_agreements (agreementId, raceId, mediaCompany, territory, startDate, endDate, rightsType, fee, revenueSharePercent, exclusivity, broadcastPlatform, digitalPlatform, sublicensingAllowed, contractUrl, amendmentUrl, complianceClause, terminationClause, renewalOption, notes, signedBy, signedDate)
VALUES (1, 101, 'GlobalSportsNet', 'World', '2024-01-01', '2024-12-31', 'LiveBroadcast', 5000000.00, 12.5, 1, 'Satellite', 'Streaming', 0, 'http://media.example.com/contract1', 'http://media.example.com/amend1', 'StandardCompliance', '30dayNotice', 1, 'First year agreement', 'JohnDoe', '2023-12-01');

INSERT INTO race_media_rights_agreements (agreementId, raceId, mediaCompany, territory, startDate, endDate, rightsType, fee, revenueSharePercent, exclusivity, broadcastPlatform, digitalPlatform, sublicensingAllowed, contractUrl, amendmentUrl, complianceClause, terminationClause, renewalOption, notes, signedBy, signedDate)
VALUES (2, 102, 'EuroVisionTV', 'Europe', '2024-03-01', '2025-02-28', 'HighlightReel', 1500000.00, 8.0, 0, 'Cable', 'OTT', 1, 'http://media.example.com/contract2', 'http://media.example.com/amend2', 'EUCompliance', '60dayNotice', 0, 'Includes post‑race analysis', 'EmilySmith', '2024-02-15');

INSERT INTO race_media_rights_agreements (agreementId, raceId, mediaCompany, territory, startDate, endDate, rightsType, fee, revenueSharePercent, exclusivity, broadcastPlatform, digitalPlatform, sublicensingAllowed, contractUrl, amendmentUrl, complianceClause, terminationClause, renewalOption, notes, signedBy, signedDate)
VALUES (3, 103, 'AsiaSportsChannel', 'Asia', '2024-05-01', '2025-04-30', 'LiveBroadcast', 3000000.00, 10.0, 1, 'Satellite', 'MobileApp', 0, 'http://media.example.com/contract3', 'http://media.example.com/amend3', 'AsianRegulations', '45dayNotice', 1, 'Preferred partner in region', 'RajPatel', '2024-04-10');

-- Hospitality Service Requests – guest service tickets during events
CREATE TABLE hospitality_service_requests
(
    requestId              INTEGER PRIMARY KEY AUTOINCREMENT,
    hospitalityId          INTEGER,
    guestName              TEXT,
    requestDate            DATE,
    requestType            TEXT,
    status                 TEXT,
    priority               INTEGER,
    assignedStaffId        INTEGER,
    location               TEXT,
    description            TEXT,
    scheduledTime          TEXT,
    completedTime          TEXT,
    feedbackScore          INTEGER,
    notes                  TEXT,
    resolutionDetails      TEXT,
    escalated              BOOLEAN,
    lastUpdated            DATE,
    contactPhone           TEXT,
    email                  TEXT,
    relatedEventId         INTEGER
);

INSERT INTO hospitality_service_requests (requestId, hospitalityId, guestName, requestDate, requestType, status, priority, assignedStaffId, location, description, scheduledTime, completedTime, feedbackScore, notes, resolutionDetails, escalated, lastUpdated, contactPhone, email, relatedEventId)
VALUES (1, 201, 'AliceBrown', '2024-04-12', 'RoomService', 'Open', 2, 45, 'Suite12', 'Extra towels needed', '12:30', NULL, NULL, 'First request of day', NULL, 0, '2024-04-12', '0123456789', 'alice.brown@example.com', 101);

INSERT INTO hospitality_service_requests (requestId, hospitalityId, guestName, requestDate, requestType, status, priority, assignedStaffId, location, description, scheduledTime, completedTime, feedbackScore, notes, resolutionDetails, escalated, lastUpdated, contactPhone, email, relatedEventId)
VALUES (2, 202, 'BobClark', '2024-04-13', 'TechnicalSupport', 'Closed', 1, 52, 'VIPLounge', 'Audio system malfunction', '14:00', '14:45', 9, 'Quick resolution', 'Replaced speaker unit', 0, '2024-04-13', '0987654321', 'bob.clark@example.com', 102);

INSERT INTO hospitality_service_requests (requestId, hospitalityId, guestName, requestDate, requestType, status, priority, assignedStaffId, location, description, scheduledTime, completedTime, feedbackScore, notes, resolutionDetails, escalated, lastUpdated, contactPhone, email, relatedEventId)
VALUES (3, 203, 'CarolDavis', '2024-04-14', 'Transportation', 'InProgress', 3, 60, 'EntranceGate', 'Shuttle not arrived', '16:00', NULL, NULL, 'Guest waiting', NULL, 1, '2024-04-14', '0111222333', 'carol.davis@example.com', 103);

-- Circuit Heritage Artifacts Registry – catalog of historic items
CREATE TABLE circuit_heritage_artifacts_registry
(
    artifactId                INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId                 INTEGER,
    artifactName              TEXT,
    acquisitionDate           DATE,
    origin                    TEXT,
    era                       TEXT,
    material                  TEXT,
    condition                 TEXT,
    displayLocation           TEXT,
    curator                   TEXT,
    valuation                 REAL,
    insurancePolicy           TEXT,
    loanStatus                TEXT,
    loanStartDate             DATE,
    loanEndDate               DATE,
    restorationHistory        TEXT,
    description               TEXT,
    photoUrl                  TEXT,
    catalogNumber             TEXT,
    notes                     TEXT,
    publicAccess              BOOLEAN
);

INSERT INTO circuit_heritage_artifacts_registry (artifactId, circuitId, artifactName, acquisitionDate, origin, era, material, condition, displayLocation, curator, valuation, insurancePolicy, loanStatus, loanStartDate, loanEndDate, restorationHistory, description, photoUrl, catalogNumber, notes, publicAccess)
VALUES (1, 1, 'FirstCheckeredFlag', '2000-05-10', 'Italy', '2000s', 'Fabric', 'Good', 'MuseumHallA', 'LauraMiller', 50000.00, 'Policy123', 'Owned', NULL, NULL, 'Cleaned 2015', 'Original race flag from first GP', 'http://circuit.example.com/flag.jpg', 'CF001', 'Iconic symbol', 1);

INSERT INTO circuit_heritage_artifacts_registry (artifactId, circuitId, artifactName, acquisitionDate, origin, era, material, condition, displayLocation, curator, valuation, insurancePolicy, loanStatus, loanStartDate, loanEndDate, restorationHistory, description, photoUrl, catalogNumber, notes, publicAccess)
VALUES (2, 2, 'VintageSteeringWheel', '1995-09-23', 'Germany', '1990s', 'Aluminum', 'Fair', 'ExhibitRoomB', 'MarkTanner', 30000.00, 'Policy456', 'OnLoan', '2023-01-01', '2024-12-31', 'Repainted 2020', 'Steering wheel used by champion driver', 'http://circuit.example.com/steering.jpg', 'CF002', 'Loan to museum', 0);

INSERT INTO circuit_heritage_artifacts_registry (artifactId, circuitId, artifactName, acquisitionDate, origin, era, material, condition, displayLocation, curator, valuation, insurancePolicy, loanStatus, loanStartDate, loanEndDate, restorationHistory, description, photoUrl, catalogNumber, notes, publicAccess)
VALUES (3, 3, 'HistoricPitBoard', '2010-03-15', 'UK', '2010s', 'Wood', 'Excellent', 'PitLaneDisplay', 'SophieLee', 15000.00, 'Policy789', 'Owned', NULL, NULL, 'Polished 2018', 'Pit board from classic race', 'http://circuit.example.com/pitboard.jpg', 'CF003', 'Featured in guided tours', 1);

-- Broadcast Technology Inventory – equipment used for live coverage
CREATE TABLE broadcast_technology_inventory
(
    techId                    INTEGER PRIMARY KEY AUTOINCREMENT,
    deviceType                TEXT,
    model                     TEXT,
    serialNumber              TEXT,
    purchaseDate              DATE,
    warrantyEndDate           DATE,
    firmwareVersion           TEXT,
    location                  TEXT,
    status                    TEXT,
    assignedTeam              TEXT,
    capacityGb                INTEGER,
    interface                 TEXT,
    powerConsumptionWatts    INTEGER,
    maintenanceIntervalMonths INTEGER,
    lastMaintenanceDate       DATE,
    vendor                    TEXT,
    cost                      REAL,
    depreciationRate          REAL,
    notes                     TEXT,
    complianceStandard        TEXT,
    calibrated                BOOLEAN
);

INSERT INTO broadcast_technology_inventory (techId, deviceType, model, serialNumber, purchaseDate, warrantyEndDate, firmwareVersion, location, status, assignedTeam, capacityGb, interface, powerConsumptionWatts, maintenanceIntervalMonths, lastMaintenanceDate, vendor, cost, depreciationRate, notes, complianceStandard, calibrated)
VALUES (1, 'Camera', 'CamX2000', 'SN001122', '2022-06-01', '2025-06-01', 'v3.2', 'BroadcastTruck1', 'Active', 'TeamA', 2, 'SDI', 150, 12, '2024-02-15', 'VisionTech', 25000.00, 0.15, 'Main feed camera', 'ISO9001', 1);

INSERT INTO broadcast_technology_inventory (techId, deviceType, model, serialNumber, purchaseDate, warrantyEndDate, firmwareVersion, location, status, assignedTeam, capacityGb, interface, powerConsumptionWatts, maintenanceIntervalMonths, lastMaintenanceDate, vendor, cost, depreciationRate, notes, complianceStandard, calibrated)
VALUES (2, 'AudioMixer', 'MixPro500', 'SN003344', '2021-09-15', '2024-09-15', 'v2.8', 'ControlRoom', 'Active', 'TeamB', 0, 'XLR', 80, 6, '2024-01-10', 'SoundInc', 12000.00, 0.18, 'Live commentary mixer', 'IECStandard', 1);

INSERT INTO broadcast_technology_inventory (techId, deviceType, model, serialNumber, purchaseDate, warrantyEndDate, firmwareVersion, location, status, assignedTeam, capacityGb, interface, powerConsumptionWatts, maintenanceIntervalMonths, lastMaintenanceDate, vendor, cost, depreciationRate, notes, complianceStandard, calibrated)
VALUES (3, 'Encoder', 'EncodeX7', 'SN005566', '2023-03-20', '2026-03-20', 'v1.5', 'BroadcastTruck2', 'Active', 'TeamC', 4, 'IP', 200, 12, '2024-03-01', 'Encode Solutions', 18000.00, 0.12, '4K streaming encoder', 'SMPTE', 1);

-- Fan Loyalty Program Features – characteristics of loyalty program tiers
CREATE TABLE fan_loyalty_program_features
(
    featureId               INTEGER PRIMARY KEY AUTOINCREMENT,
    programId               INTEGER,
    featureName             TEXT,
    description             TEXT,
    tierLevel               INTEGER,
    pointsMultiplier        REAL,
    eligibleCategories      TEXT,
    startDate               DATE,
    endDate                 DATE,
    activationStatus        TEXT,
    rewardType              TEXT,
    redemptionMethod        TEXT,
    validityPeriodDays      INTEGER,
    usageLimitPerMonth      INTEGER,
    exclusive               BOOLEAN,
    promotionalCode         TEXT,
    analyticsTag            TEXT,
    createdBy               TEXT,
    createdDate             DATE,
    lastModifiedBy          TEXT,
    lastModifiedDate        DATE
);

INSERT INTO fan_loyalty_program_features (featureId, programId, featureName, description, tierLevel, pointsMultiplier, eligibleCategories, startDate, endDate, activationStatus, rewardType, redemptionMethod, validityPeriodDays, usageLimitPerMonth, exclusive, promotionalCode, analyticsTag, createdBy, createdDate, lastModifiedBy, lastModifiedDate)
VALUES (1, 301, 'SilverBoost', 'Extra points on merchandise', 2, 1.5, 'Merchandise', '2024-01-01', '2025-12-31', 'Active', 'Points', 'Online', 365, 5, 0, 'SB2024', 'tag_silver', 'AdminUser', '2024-01-01', 'AdminUser', '2024-01-01');

INSERT INTO fan_loyalty_program_features (featureId, programId, featureName, description, tierLevel, pointsMultiplier, eligibleCategories, startDate, endDate, activationStatus, rewardType, redemptionMethod, validityPeriodDays, usageLimitPerMonth, exclusive, promotionalCode, analyticsTag, createdBy, createdDate, lastModifiedBy, lastModifiedDate)
VALUES (2, 301, 'GoldAccess', 'Priority access to ticket sales', 3, 2.0, 'Tickets', '2024-01-01', '2025-12-31', 'Active', 'Access', 'Phone', 730, 2, 1, 'GA2024', 'tag_gold', 'AdminUser', '2024-01-01', 'AdminUser', '2024-01-01');

INSERT INTO fan_loyalty_program_features (featureId, programId, featureName, description, tierLevel, pointsMultiplier, eligibleCategories, startDate, endDate, activationStatus, rewardType, redemptionMethod, validityPeriodDays, usageLimitPerMonth, exclusive, promotionalCode, analyticsTag, createdBy, createdDate, lastModifiedBy, lastModifiedDate)
VALUES (3, 301, 'PlatinumVIP', 'All‑inclusive VIP experiences', 4, 3.0, 'All', '2024-01-01', '2025-12-31', 'Active', 'Experience', 'InPerson', 1095, 1, 1, 'PV2024', 'tag_platinum', 'AdminUser', '2024-01-01', 'AdminUser', '2024-01-01');

-- Additional tables created as per request are now available for use.