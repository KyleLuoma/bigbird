-- Track maintenance tasks related to circuit upkeep
CREATE TABLE track_maintenance_tasks (
    taskId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    scheduledDate DATE,
    taskType TEXT,
    description TEXT,
    priority INTEGER,
    durationHours INTEGER,
    crewLead TEXT,
    equipmentList TEXT,
    status TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    costEstimate REAL,
    approvedBy TEXT,
    externalVendor TEXT,
    safetyCheckRequired INTEGER,
    weatherImpact TEXT,
    lastInspectedBy TEXT,
    inspectionNotes TEXT,
    repairNeeded INTEGER,
    followUpDate DATE
);

INSERT INTO track_maintenance_tasks VALUES (1, 5, '2025-03-15', ' resurfacing', 'full track resurfacing', 1, 120, 'JohnDoe', 'paver_grader', 'planned', 'none', '2025-02-01 09:00:00', '2025-02-01 09:00:00', 250000.00, 'JaneSmith', 'PaveCo', 1, 'high', 'MikeR', 'pending', 1, '2025-04-01');
INSERT INTO track_maintenance_tasks VALUES (2, 3, '2025-04-10', 'inspection', 'pre‑race safety inspection', 2, 8, 'AliceLee', 'camera_drone', 'completed', 'all clear', '2025-04-01 08:30:00', '2025-04-10 12:00:00', 5000.00, 'BobKim', NULL, 1, 'low', 'SamT', 'checked', 0, NULL);
INSERT INTO track_maintenance_tasks VALUES (3, 7, '2025-05-20', 'lighting', 'upgrade track lighting', 3, 48, 'CarlosM', 'light_arrays', 'in_progress', 'phase 2', '2025-05-01 10:15:00', '2025-05-10 14:45:00', 75000.00, 'NinaP', 'LightWorks', 0, 'medium', 'LauraV', 'wiring ok', 0, '2025-06-15');

-- Broadcast team staffing details
CREATE TABLE broadcast_team_staff (
    staffId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    role TEXT,
    firstName TEXT,
    lastName TEXT,
    employeeNumber TEXT,
    hireDate DATE,
    contractStart DATE,
    contractEnd DATE,
    shiftStart TIME,
    shiftEnd TIME,
    contactEmail TEXT,
    phoneExtension TEXT,
    assignedCamera TEXT,
    languagePrimary TEXT,
    languageSecondary TEXT,
    certificationLevel TEXT,
    yearsExperience INTEGER,
    status TEXT,
    notes TEXT,
    lastEvaluationDate DATE,
    salaryBand TEXT,
    travelAllowance REAL
);

INSERT INTO broadcast_team_staff VALUES (1, 101, 'director', 'Mark', 'Taylor', 'E1001', '2020-06-15', '2025-01-01', '2028-12-31', '08:00:00', '17:00:00', 'mark.taylor@f1broadcast.com', '210', 'CamA', 'English', 'Spanish', 'Level3', 10, 'active', 'lead on all feeds', '2024-12-01', 'BandB', 15000.00);
INSERT INTO broadcast_team_staff VALUES (2, 102, 'camera_operator', 'Lara', 'Nguyen', 'E1023', '2022-03-01', '2025-01-01', '2027-12-31', '09:00:00', '18:00:00', 'lara.nguyen@f1broadcast.com', '215', 'CamC', 'English', NULL, 'Level2', 5, 'active', 'specializes in high‑speed shots', '2024-11-15', 'BandC', 12000.00);
INSERT INTO broadcast_team_staff VALUES (3, 103, 'commentator', 'Raj', 'Patel', 'E1050', '2018-09-20', '2025-01-01', '2030-12-31', '07:00:00', '16:00:00', 'raj.patel@f1broadcast.com', '220', NULL, 'English', 'Hindi', 'Level4', 12, 'active', 'main race commentator', '2024-10-20', 'BandA', 18000.00);

-- Fan loyalty points tracking
CREATE TABLE fan_loyalty_points (
    fanId INTEGER,
    seasonYear INTEGER,
    totalPoints INTEGER,
    tier TEXT,
    lastEarnedDate DATE,
    pointsEarnedThisSeason INTEGER,
    pointsRedeemed INTEGER,
    averagePointsPerEvent REAL,
    favoriteTeamId INTEGER,
    favoriteDriverId INTEGER,
    membershipStartDate DATE,
    membershipRenewalDate DATE,
    emailOptIn INTEGER,
    smsOptIn INTEGER,
    lastLogin DATETIME,
    preferredLanguage TEXT,
    primaryDevice TEXT,
    referralCode TEXT,
    promoCodeUsed TEXT,
    eventAttendanceCount INTEGER,
    merchandisePurchaseCount INTEGER,
    averageSpendPerPurchase REAL,
    primaryContactMethod TEXT,
    status TEXT
);

INSERT INTO fan_loyalty_points VALUES (10001, 2025, 4520, 'Gold', '2025-04-12', 1500, 300, 75.5, 2, 45, '2020-01-15', '2025-01-15', 1, 0, '2025-04-20 14:30:00', 'English', 'MobileApp', 'REF123', 'PROMO10', 12, 5, 75.00, 'Email', 'active');
INSERT INTO fan_loyalty_points VALUES (10002, 2025, 2100, 'Silver', '2025-03-08', 800, 120, 40.0, 5, 12, '2021-06-10', '2025-06-10', 1, 1, '2025-04-18 09:15:00', 'Spanish', 'WebPortal', 'REF456', 'PROMO20', 8, 3, 60.00, 'SMS', 'active');
INSERT INTO fan_loyalty_points VALUES (10003, 2025, 850, 'Bronze', '2025-02-20', 300, 0, 15.0, 8, 30, '2022-11-05', '2025-11-05', 0, 1, '2025-04-19 20:45:00', 'French', 'MobileApp', 'REF789', NULL, 4, 1, 45.00, 'Push', 'inactive');

-- Sponsor agreement details
CREATE TABLE sponsor_agreement_details (
    agreementId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    seasonYear INTEGER,
    contractStart DATE,
    contractEnd DATE,
    totalValue REAL,
    activationLevel TEXT,
    brandingSlots INTEGER,
    hospitalityPackages INTEGER,
    exclusiveRights TEXT,
    paymentSchedule TEXT,
    invoicingContact TEXT,
    legalContact TEXT,
    complianceScore INTEGER,
    renewalOption TEXT,
    terminationClause TEXT,
    performanceMetrics TEXT,
    auditFrequency TEXT,
    signedBy TEXT,
    signedDate DATE,
    notes TEXT,
    amendmentCount INTEGER,
    lastAmendmentDate DATE,
    status TEXT,
    createdAt DATETIME,
    updatedAt DATETIME
);

INSERT INTO sponsor_agreement_details VALUES (1, 2001, 2025, '2025-01-01', '2025-12-31', 750000.00, 'Platinum', 12, 4, 'title_sponsor', 'quarterly', 'finance@corp.com', 'legal@corp.com', 95, 'auto', '30_day_notice', 'impressions_clicks', 'annual', 'JohnDoe', '2024-12-15', 'none', 0, NULL, 'active', '2024-12-01 10:00:00', '2024-12-15 15:30:00');
INSERT INTO sponsor_agreement_details VALUES (2, 2002, 2025, '2025-03-01', '2026-02-28', 350000.00, 'Gold', 6, 2, 'fuel_partner', 'semi_annual', 'acct@energy.com', 'legal@energy.com', 88, 'optional', '60_day_notice', 'fuel_consumption', 'biannual', 'AliceLee', '2024-11-20', 'early_renewal_bonus', 1, '2025-01-10', 'active', '2024-11-20 09:45:00', '2025-01-10 14:20:00');
INSERT INTO sponsor_agreement_details VALUES (3, 2003, 2025, '2025-05-15', '2027-05-14', 500000.00, 'Silver', 8, 3, 'tires_supplier', 'annual', 'ops@tires.com', 'legal@tires.com', 92, 'auto', '45_day_notice', 'lap_times', 'annual', 'CarlosM', '2024-10-30', 'include_demo_products', 2, '2025-03-05', 'active', '2024-10-30 11:30:00', '2025-03-05 13:00:00');

-- Environmental monitoring stations
CREATE TABLE environmental_monitoring_stations (
    stationId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    stationCode TEXT,
    latitude REAL,
    longitude REAL,
    elevation INTEGER,
    installationDate DATE,
    sensorPackage TEXT,
    temperatureCelsius REAL,
    humidityPercent REAL,
    windSpeedKph REAL,
    windDirection TEXT,
    precipitationMm REAL,
    airQualityIndex INTEGER,
    noiseLevelDb REAL,
    soilMoisturePercent REAL,
    solarRadiationWm2 REAL,
    batteryLevelPercent INTEGER,
    lastCalibrationDate DATE,
    maintenanceDueDate DATE,
    dataTransmissionMethod TEXT,
    status TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME
);

INSERT INTO environmental_monitoring_stations VALUES (1, 5, 'STN_A1', 34.0522, -118.2437, 120, '2024-06-01', 'multi', 22.5, 55.0, 12.3, 'NE', 0.0, 42, 68.5, 30.2, 85, '2025-03-01', '2025-09-01', 'cellular', 'active', 'no issues', '2024-06-01 08:00:00', '2025-03-15 09:30:00');
INSERT INTO environmental_monitoring_stations VALUES (2, 3, 'STN_B3', 51.5074, -0.1278, 35, '2023-09-15', 'air_only', 18.0, 70.0, 8.5, 'W', 0.2, 58, 55.0, 0.0, 60, '2025-01-20', '2025-07-20', 'satellite', 'active', 'calibration needed soon', '2023-09-15 07:45:00', '2025-01-20 10:10:00');
INSERT INTO environmental_monitoring_stations VALUES (3, 7, 'STN_C7', 48.8566, 2.3522, 45, '2022-11-10', 'soil_water', 16.8, 65.0, 10.0, 'S', 0.0, 50, 60.5, 120.3, 40, '2024-12-05', '2025-06-05', 'wifi', 'maintenance', 'sensor replacement planned', '2022-11-10 09:20:00', '2024-12-05 14:45:00');

-- Medical facility resources
CREATE TABLE medical_facility_resources (
    resourceId INTEGER PRIMARY KEY AUTOINCREMENT,
    facilityName TEXT,
    location TEXT,
    capacity INTEGER,
    staffedBy INTEGER,
    ambulanceCount INTEGER,
    defibrillatorCount INTEGER,
    medicalKitTypes TEXT,
    ventilatorCount INTEGER,
    traumaRoomCount INTEGER,
    imagingEquipment TEXT,
    pharmacyStockLevel INTEGER,
    bloodBankUnits INTEGER,
    isolationRoomCount INTEGER,
    sanitationScore INTEGER,
    operatingHours TEXT,
    contactNumber TEXT,
    emergencyContact TEXT,
    lastInspectionDate DATE,
    nextInspectionDue DATE,
    complianceStatus TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME
);

INSERT INTO medical_facility_resources VALUES (1, 'MainMedicalCenter', 'CircuitA_Main', 50, 20, 3, 5, 'basic_advanced', 4, 2, 'Xray_MRI', 85, 12, 3, 96, '24x7', '5551234', '5555678', '2024-12-01', '2025-12-01', 'compliant', 'all good', '2024-12-01 08:15:00', '2025-04-10 09:00:00');
INSERT INTO medical_facility_resources VALUES (2, 'AuxiliaryClinic', 'CircuitB_North', 20, 8, 1, 2, 'basic', 1, 1, 'Ultrasound', 60, 5, 1, 88, '08:00-20:00', '5552233', '5556677', '2024-11-15', '2025-11-15', 'compliant', 'needs restock of bandages', '2024-11-15 07:45:00', '2025-03-08 10:30:00');
INSERT INTO medical_facility_resources VALUES (3, 'RemoteFirstAid', 'CircuitC_East', 10, 4, 0, 1, 'basic', 0, 0, 'None', 30, 2, 0, 80, '06:00-22:00', '5553322', '5557788', '2024-10-20', '2025-10-20', 'compliant', 'check ventilator backup', '2024-10-20 09:05:00', '2025-02-14 11:20:00');

-- Logistics vehicle assignments
CREATE TABLE logistics_vehicle_assignments (
    assignmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    vehicleId INTEGER,
    driverId INTEGER,
    raceId INTEGER,
    departureTime DATETIME,
    arrivalTime DATETIME,
    cargoDescription TEXT,
    cargoWeightKg INTEGER,
    temperatureControlled INTEGER,
    sealNumber TEXT,
    routePlan TEXT,
    mileage INTEGER,
    fuelConsumedLiters REAL,
    maintenanceStatus TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    assignedBy TEXT,
    status TEXT,
    expectedDeliveryDate DATE,
    actualDeliveryDate DATE,
    delayReason TEXT,
    priorityLevel INTEGER,
    complianceCheck INTEGER
);

INSERT INTO logistics_vehicle_assignments VALUES (1, 101, 301, 101, '2025-03-01 06:00:00', '2025-03-01 12:30:00', 'tyre_stock', 2000, 0, 'SL12345', 'RouteA', 350, 45.5, 'good', 'on time', '2025-02-20 08:00:00', '2025-02-20 09:30:00', 'LogisticsMgr', 'completed', '2025-03-01', '2025-03-01', NULL, 1, 1);
INSERT INTO logistics_vehicle_assignments VALUES (2, 102, 302, 102, '2025-04-10 07:15:00', '2025-04-10 14:45:00', 'fuel_tankers', 5000, 1, 'SL54321', 'RouteB', 420, 380.0, 'maintenance_due', 'delayed due to traffic', '2025-03-25 10:00:00', '2025-03-25 11:15:00', 'OpsLead', 'delayed', '2025-04-10', NULL, 'traffic_jam', 2, 0);
INSERT INTO logistics_vehicle_assignments VALUES (3, 103, 303, 103, '2025-05-20 05:45:00', '2025-05-20 11:20:00', 'medical_supplies', 800, 1, 'SL67890', 'RouteC', 280, 30.0, 'good', 'arrived early', '2025-05-01 09:20:00', '2025-05-01 10:00:00', 'SupplyMgr', 'completed', '2025-05-20', '2025-05-20', NULL, 1, 1);

-- Circuit security incident logs
CREATE TABLE circuit_security_incident_logs (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    incidentDate DATE,
    incidentTime TIME,
    incidentType TEXT,
    description TEXT,
    reportedBy TEXT,
    severityLevel INTEGER,
    responseTeam TEXT,
    responseTimeMinutes INTEGER,
    resolutionStatus TEXT,
    resolutionDetails TEXT,
    evidenceFile TEXT,
    followUpAction TEXT,
    followUpDueDate DATE,
    closedDate DATE,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    status TEXT,
    riskAssessmentScore INTEGER,
    escalationRequired INTEGER
);

INSERT INTO circuit_security_incident_logs VALUES (1, 5, '2025-02-18', '22:15:00', 'unauthorized_access', 'gate breach detected', 'SecOfficer1', 4, 'RapidResponseTeam', 12, 'resolved', 'perimeter reinforced', 'evidence1.jpg', 'install extra cameras', '2025-03-01', '2025-02-28', 'none', '2025-02-18 22:30:00', '2025-02-28 16:00:00', 'closed', 78, 0);
INSERT INTO circuit_security_incident_logs VALUES (2, 3, '2025-03-05', '09:40:00', 'vehicle_theft', 'security van stolen', 'SecOfficer2', 5, 'InvestigationTeam', 180, 'open', NULL, 'evidence2.jpg', 'review security protocols', '2025-04-15', NULL, 'high priority', '2025-03-05 10:00:00', '2025-03-10 14:20:00', 'open', 92, 1);
INSERT INTO circuit_security_incident_logs VALUES (3, 7, '2025-04-12', '15:30:00', 'vandalism', 'graffiti on fence', 'SecOfficer3', 2, 'MaintenanceCrew', 45, 'resolved', 'cleaned and repainted', 'evidence3.jpg', 'apply anti‑graffiti coating', '2025-04-30', '2025-04-20', 'minor issue', '2025-04-12 16:00:00', '2025-04-20 11:15:00', 'closed', 55, 0);

-- Driver hydration records
CREATE TABLE driver_hydration_records (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    raceId INTEGER,
    lapNumber INTEGER,
    fluidIntakeMl INTEGER,
    electrolyteLevelMg INTEGER,
    bodyWeightKg REAL,
    heartRateBpm INTEGER,
    temperatureCelsius REAL,
    notes TEXT,
    recordedAt DATETIME,
    createdAt DATETIME,
    updatedAt DATETIME,
    compliance INTEGER,
    hydrationScore INTEGER,
    postLapRecoveryTimeSec INTEGER,
    sponsorProvided INTEGER,
    beverageType TEXT,
    volumeRemainingMl INTEGER,
    temperatureOutsideCelsius REAL,
    humidityOutsidePercent REAL,
    windSpeedKph REAL,
    humidityInsidePercent REAL,
    ambientPressurehPa REAL,
    gearPosition TEXT,
    pitStopDurationSec INTEGER,
    staminaRating INTEGER
);

INSERT INTO driver_hydration_records VALUES (1, 45, 101, 12, 250, 150, 78.5, 78, 36.5, 'steady', '2025-03-01 01:20:00', '2025-03-01 01:25:00', '2025-03-01 01:30:00', 1, 85, 30, 1, 'sport', 500, 22.0, 55.0, 10.0, 60.0, 1013.0, 'D', 5, 90);
INSERT INTO driver_hydration_records VALUES (2, 46, 102, 20, 300, 180, 80.2, 82, 37.0, 'slight dehydration', '2025-04-10 02:15:00', '2025-04-10 02:20:00', '2025-04-10 02:25:00', 0, 70, 45, 0, 'water', 400, 19.5, 60.0, 12.0, 58.0, 1010.0, 'R', 7, 78);
INSERT INTO driver_hydration_records VALUES (3, 47, 103, 5, 200, 130, 77.0, 75, 36.2, 'optimal', '2025-05-20 00:55:00', '2025-05-20 01:00:00', '2025-05-20 01:05:00', 1, 92, 20, 1, 'electrolyte', 600, 23.0, 50.0, 8.0, 62.0, 1015.0, 'N', 4, 95);

-- Constructor R&D budget
CREATE TABLE constructor_rnd_budget (
    budgetId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER,
    fiscalYear INTEGER,
    totalBudgetUsd REAL,
    aeroDevelopmentUsd REAL,
    powerUnitDevelopmentUsd REAL,
    softwareDevelopmentUsd REAL,
    testingFacilitiesUsd REAL,
    prototypeBuildUsd REAL,
    materialScienceUsd REAL,
    talentAcquisitionUsd REAL,
    externalPartnershipsUsd REAL,
    sustainabilityInitiativesUsd REAL,
    contingencyFundUsd REAL,
    approvedBy TEXT,
    approvalDate DATE,
    lastModified DATE,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    status TEXT,
    budgetVersion INTEGER,
    revisionReason TEXT,
    complianceCheck INTEGER,
    externalAuditScore INTEGER,
    currency TEXT,
    exchangeRateToUsd REAL,
    fiscalQuarter TEXT,
    allocationMethod TEXT,
    riskAssessmentScore INTEGER,
    stakeholderEngagementScore INTEGER,
    projectedReturnOnInvestment REAL,
    strategicPriorityLevel INTEGER,
    governanceOwner TEXT
);

INSERT INTO constructor_rnd_budget VALUES (1, 2, 2025, 12000000.00, 4000000.00, 3500000.00, 1500000.00, 800000.00, 600000.00, 500000.00, 700000.00, 300000.00, 200000.00, 500000.00, 'JaneSmith', '2024-12-01', '2025-03-01', 'increase aero funding', '2024-12-01 09:00:00', '2025-03-01 10:15:00', 'approved', 1, 'budget revision', 1, 95, 'USD', 1.0, 'Q4', 'percentage', 80, 85, 1.12, 2, 'EngineeringDirector');
INSERT INTO constructor_rnd_budget VALUES (2, 3, 2025, 9500000.00, 3000000.00, 2500000.00, 1200000.00, 600000.00, 500000.00, 450000.00, 550000.00, 250000.00, 150000.00, 400000.00, 'BobKim', '2024-11-15', '2025-02-20', 'focus on power unit', '2024-11-15 08:30:00', '2025-02-20 09:45:00', 'pending', 1, 'initial submission', 0, 88, 'USD', 1.0, 'Q3', 'fixed', 75, 78, 1.05, 3, 'TechnicalChief');
INSERT INTO constructor_rnd_budget VALUES (3, 4, 2025, 8000000.00, 2500000.00, 2000000.00, 1000000.00, 500000.00, 400000.00, 350000.00, 500000.00, 200000.00, 120000.00, 300000.00, 'AliceLee', '2024-10-20', '2025-01-30', 'sustainability push', '2024-10-20 07:45:00', '2025-01-30 11:00:00', 'approved', 2, 'annual update', 1, 90, 'USD', 1.0, 'Q2', 'percentage', 70, 80, 0.95, 1, 'R&DHead');