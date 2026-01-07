-- Digital signage devices used around the venue
CREATE TABLE digital_signage_inventory (
    signageId INTEGER PRIMARY KEY AUTOINCREMENT,
    location TEXT NOT NULL,
    model TEXT,
    manufacturer TEXT,
    serialNumber TEXT,
    installationDate DATE,
    lastServiceDate DATE,
    firmwareVersion TEXT,
    resolution TEXT,
    brightness INTEGER,
    powerConsumption REAL,
    networkIP TEXT,
    macAddress TEXT,
    status TEXT,
    warrantyEndDate DATE,
    notes TEXT,
    responsibleTeam TEXT,
    maintenanceContractId INTEGER,
    lastCalibrationDate DATE,
    calibrationTechnician TEXT,
    imageAssetPath TEXT,
    uptimeHours INTEGER
);
INSERT INTO digital_signage_inventory (location, model, manufacturer, serialNumber, installationDate, lastServiceDate, firmwareVersion, resolution, brightness, powerConsumption, networkIP, macAddress, status, warrantyEndDate, notes, responsibleTeam, maintenanceContractId, lastCalibrationDate, calibrationTechnician, imageAssetPath, uptimeHours) VALUES ('MainGate', 'SS100', 'SignCo', 'SN001', '2022-05-10', '2023-03-01', 'v1.4', '1920x1080', 800, 45.5, '10.0.0.5', 'AA:BB:CC:DD:EE:01', 'Active', '2025-05-10', 'None', 'Facilities', 101, '2023-02-20', 'JohnDoe', '/assets/signage1.png', 3500);
INSERT INTO digital_signage_inventory (location, model, manufacturer, serialNumber, installationDate, lastServiceDate, firmwareVersion, resolution, brightness, powerConsumption, networkIP, macAddress, status, warrantyEndDate, notes, responsibleTeam, maintenanceContractId, lastCalibrationDate, calibrationTechnician, imageAssetPath, uptimeHours) VALUES ('PitLane', 'SS200', 'VisionTech', 'SN002', '2021-09-12', '2023-01-15', 'v2.1', '2560x1440', 950, 60.0, '10.0.0.6', 'AA:BB:CC:DD:EE:02', 'Active', '2024-09-12', 'Brightness adjusted', 'IT', 102, '2023-01-10', 'JaneSmith', '/assets/signage2.png', 4200);
INSERT INTO digital_signage_inventory (location, model, manufacturer, serialNumber, installationDate, lastServiceDate, firmwareVersion, resolution, brightness, powerConsumption, networkIP, macAddress, status, warrantyEndDate, notes, responsibleTeam, maintenanceContractId, lastCalibrationDate, calibrationTechnician, imageAssetPath, uptimeHours) VALUES ('HospitalityLounge', 'SS300', 'BrightDisplay', 'SN003', '2023-02-20', '2023-06-05', 'v1.0', '1280x720', 600, 30.2, '10.0.0.7', 'AA:BB:CC:DD:EE:03', 'Pending', '2026-02-20', 'Awaiting installation', 'Operations', 103, '2023-06-01', 'MikeLee', '/assets/signage3.png', 1500);

-- Health inspection records for venue facilities
CREATE TABLE venue_health_inspections (
    inspectionId INTEGER PRIMARY KEY AUTOINCREMENT,
    facilityName TEXT NOT NULL,
    inspectionDate DATE,
    inspectorName TEXT,
    inspectionType TEXT,
    overallScore INTEGER,
    hygieneScore INTEGER,
    fireSafetyScore INTEGER,
    structuralScore INTEGER,
    foodSafetyScore INTEGER,
    waterQualityScore INTEGER,
    comments TEXT,
    correctiveActionRequired TEXT,
    deadline DATE,
    followUpDate DATE,
    status TEXT,
    documentReference TEXT,
    createdAt DATE,
    updatedAt DATE,
    region TEXT,
    complianceLevel TEXT,
    auditTeam TEXT,
    riskCategory TEXT
);
INSERT INTO venue_health_inspections (facilityName, inspectionDate, inspectorName, inspectionType, overallScore, hygieneScore, fireSafetyScore, structuralScore, foodSafetyScore, waterQualityScore, comments, correctiveActionRequired, deadline, followUpDate, status, documentReference, createdAt, updatedAt, region, complianceLevel, auditTeam, riskCategory) VALUES ('GrandStadium', '2023-04-10', 'AliceWalker', 'Annual', 88, 90, 85, 87, 80, 92, 'All good', 'None', '2023-05-10', '2023-04-20', 'Closed', 'DOC001', '2023-04-10', '2023-04-10', 'North', 'High', 'TeamA', 'Low');
INSERT INTO venue_health_inspections (facilityName, inspectionDate, inspectorName, inspectionType, overallScore, hygieneScore, fireSafetyScore, structuralScore, foodSafetyScore, waterQualityScore, comments, correctiveActionRequired, deadline, followUpDate, status, documentReference, createdAt, updatedAt, region, complianceLevel, auditTeam, riskCategory) VALUES ('PitLane', '2023-05-15', 'BobMiller', 'Quarterly', 75, 70, 78, 80, 68, 72, 'Minor issues noted', 'Replace fire extinguishers', '2023-06-15', '2023-05-30', 'Open', 'DOC002', '2023-05-15', '2023-05-15', 'South', 'Medium', 'TeamB', 'Medium');
INSERT INTO venue_health_inspections (facilityName, inspectionDate, inspectorName, inspectionType, overallScore, hygieneScore, fireSafetyScore, structuralScore, foodSafetyScore, waterQualityScore, comments, correctiveActionRequired, deadline, followUpDate, status, documentReference, createdAt, updatedAt, region, complianceLevel, auditTeam, riskCategory) VALUES ('HospitalityHall', '2023-06-20', 'ClaraNg', 'Special', 92, 95, 90, 93, 88, 96, 'Excellent condition', 'None', '2023-07-20', '2023-07-01', 'Closed', 'DOC003', '2023-06-20', '2023-06-20', 'East', 'High', 'TeamC', 'Low');

-- Distribution details for media content assets
CREATE TABLE media_content_distribution (
    distributionId INTEGER PRIMARY KEY AUTOINCREMENT,
    assetId TEXT NOT NULL,
    assetName TEXT,
    format TEXT,
    resolution TEXT,
    codec TEXT,
    fileSizeMB REAL,
    sourcePlatform TEXT,
    targetPlatform TEXT,
    distributionDate DATE,
    distributionTime TEXT,
    deliveryMethod TEXT,
    bandwidthMbps REAL,
    latencyMs INTEGER,
    checksum TEXT,
    encryptionEnabled INTEGER,
    region TEXT,
    language TEXT,
    audienceSegment TEXT,
    accessLevel TEXT,
    status TEXT,
    notes TEXT,
    createdBy TEXT,
    approvedBy TEXT,
    approvedDate DATE,
    expiryDate DATE
);
INSERT INTO media_content_distribution (assetId, assetName, format, resolution, codec, fileSizeMB, sourcePlatform, targetPlatform, distributionDate, distributionTime, deliveryMethod, bandwidthMbps, latencyMs, checksum, encryptionEnabled, region, language, audienceSegment, accessLevel, status, notes, createdBy, approvedBy, approvedDate, expiryDate) VALUES ('AS001', 'OpeningCeremony', 'MP4', '1920x1080', 'H264', 2500.5, 'InternalCMS', 'YouTube', '2023-07-01', '14:00', 'Streaming', 15.2, 120, 'CHK001', 1, 'Global', 'English', 'General', 'Public', 'Active', 'None', 'MediaTeam', 'Director', '2023-06-28', '2024-07-01');
INSERT INTO media_content_distribution (assetId, assetName, format, resolution, codec, fileSizeMB, sourcePlatform, targetPlatform, distributionDate, distributionTime, deliveryMethod, bandwidthMbps, latencyMs, checksum, encryptionEnabled, region, language, audienceSegment, accessLevel, status, notes, createdBy, approvedBy, approvedDate, expiryDate) VALUES ('AS002', 'DriverInterview', 'MOV', '1280x720', 'ProRes', 1200.0, 'InternalCMS', 'Website', '2023-07-02', '10:30', 'Download', 8.5, 80, 'CHK002', 0, 'Europe', 'German', 'Fans', 'Restricted', 'Scheduled', 'Requires login', 'ContentTeam', 'Manager', '2023-06-30', '2023-12-31');
INSERT INTO media_content_distribution (assetId, assetName, format, resolution, codec, fileSizeMB, sourcePlatform, targetPlatform, distributionDate, distributionTime, deliveryMethod, bandwidthMbps, latencyMs, checksum, encryptionEnabled, region, language, audienceSegment, accessLevel, status, notes, createdBy, approvedBy, approvedDate, expiryDate) VALUES ('AS003', 'TechnicalBriefing', 'PDF', 'N/A', 'N/A', 15.3, 'DocsRepo', 'Email', '2023-07-03', '09:00', 'Attachment', 0, 0, 'CHK003', 1, 'Asia', 'English', 'Team', 'Internal', 'Sent', 'Sent to all teams', 'AdminTeam', 'Supervisor', '2023-07-01', '2025-07-01');

-- Metrics for sustainability reports
CREATE TABLE sustainability_report_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    reportYear INTEGER NOT NULL,
    carbonEmissionsTonnes REAL,
    waterUsageCubicMeters REAL,
    wasteGeneratedTonnes REAL,
    recyclingRatePercent REAL,
    renewableEnergyUsedMWh REAL,
    energyConsumptionMWh REAL,
    avgTemperatureC REAL,
    avgHumidityPercent REAL,
    noiseLevelDbA REAL,
    wildlifeImpactScore REAL,
    greenCertifications INTEGER,
    offsetCreditsPurchased INTEGER,
    transportationEmissionsTonnes REAL,
    accommodationEmissionsTonnes REAL,
    cateringEmissionsTonnes REAL,
    fanTravelEmissionsTonnes REAL,
    totalEnergySavingsMWh REAL,
    netZeroTargetYear INTEGER,
    reportingAgency TEXT,
    validationStatus TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    region TEXT,
    auditorName TEXT
);
INSERT INTO sustainability_report_metrics (reportYear, carbonEmissionsTonnes, waterUsageCubicMeters, wasteGeneratedTonnes, recyclingRatePercent, renewableEnergyUsedMWh, energyConsumptionMWh, avgTemperatureC, avgHumidityPercent, noiseLevelDbA, wildlifeImpactScore, greenCertifications, offsetCreditsPurchased, transportationEmissionsTonnes, accommodationEmissionsTonnes, cateringEmissionsTonnes, fanTravelEmissionsTonnes, totalEnergySavingsMWh, netZeroTargetYear, reportingAgency, validationStatus, notes, createdAt, updatedAt, region, auditorName) VALUES (2022, 1500.75, 32000.5, 800.2, 45.0, 500.0, 3000.0, 22.5, 55.0, 68.5, 78.0, 3, 1200, 300.5, 200.0, 150.0, 400.0, 250.0, 2035, 'GlobalEnvAgency', 'Validated', 'Yearly report', '2023-01-15', '2023-01-15', 'NorthAmerica', 'JohnAudit');
INSERT INTO sustainability_report_metrics (reportYear, carbonEmissionsTonnes, waterUsageCubicMeters, wasteGeneratedTonnes, recyclingRatePercent, renewableEnergyUsedMWh, energyConsumptionMWh, avgTemperatureC, avgHumidityPercent, noiseLevelDbA, wildlifeImpactScore, greenCertifications, offsetCreditsPurchased, transportationEmissionsTonnes, accommodationEmissionsTonnes, cateringEmissionsTonnes, fanTravelEmissionsTonnes, totalEnergySavingsMWh, netZeroTargetYear, reportingAgency, validationStatus, notes, createdAt, updatedAt, region, auditorName) VALUES (2023, 1400.20, 31000.0, 750.0, 48.5, 600.0, 2900.0, 23.0, 53.0, 66.0, 80.0, 4, 1300, 280.0, 190.0, 140.0, 380.0, 260.0, 2035, 'GlobalEnvAgency', 'Pending', 'Preliminary data', '2024-02-10', '2024-02-10', 'Europe', 'MariaAudit');
INSERT INTO sustainability_report_metrics (reportYear, carbonEmissionsTonnes, waterUsageCubicMeters, wasteGeneratedTonnes, recyclingRatePercent, renewableEnergyUsedMWh, energyConsumptionMWh, avgTemperatureC, avgHumidityPercent, noiseLevelDbA, wildlifeImpactScore, greenCertifications, offsetCreditsPurchased, transportationEmissionsTonnes, accommodationEmissionsTonnes, cateringEmissionsTonnes, fanTravelEmissionsTonnes, totalEnergySavingsMWh, netZeroTargetYear, reportingAgency, validationStatus, notes, createdAt, updatedAt, region, auditorName) VALUES (2024, 1350.00, 30500.0, 720.0, 50.0, 650.0, 2850.0, 22.8, 54.0, 65.0, 82.0, 5, 1400, 270.0, 180.0, 130.0, 360.0, 270.0, 2035, 'GlobalEnvAgency', 'Draft', 'Data collection ongoing', '2025-03-20', '2025-03-20', 'Asia', 'LiAudit');

-- Interactive zones for fan experience
CREATE TABLE fan_experience_interactive_zones (
    zoneId INTEGER PRIMARY KEY AUTOINCREMENT,
    zoneName TEXT NOT NULL,
    location TEXT,
    activationDate DATE,
    deactivationDate DATE,
    theme TEXT,
    sponsor TEXT,
    capacity INTEGER,
    avgVisitorsPerDay INTEGER,
    totalInteractions INTEGER,
    interactiveElements INTEGER,
    averageDwellTimeSeconds INTEGER,
    maxConcurrentUsers INTEGER,
    safetyRating INTEGER,
    maintenanceFrequencyDays INTEGER,
    lastMaintenanceDate DATE,
    techProvider TEXT,
    powerRequirementKw REAL,
    networkBandwidthMbps REAL,
    accessibilityFeatures TEXT,
    feedbackScore INTEGER,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    region TEXT,
    managerName TEXT
);
INSERT INTO fan_experience_interactive_zones (zoneName, location, activationDate, deactivationDate, theme, sponsor, capacity, avgVisitorsPerDay, totalInteractions, interactiveElements, averageDwellTimeSeconds, maxConcurrentUsers, safetyRating, maintenanceFrequencyDays, lastMaintenanceDate, techProvider, powerRequirementKw, networkBandwidthMbps, accessibilityFeatures, feedbackScore, notes, createdAt, updatedAt, region, managerName) VALUES ('VRPitLane', 'PitLane', '2023-06-01', NULL, 'VirtualReality', 'TechSponsor', 150, 2000, 50000, 5, 300, 120, 9, 30, '2023-09-15', 'VRTech', 12.5, 200.0, 'Wheelchair', 85, 'High engagement', '2023-06-01', '2023-09-15', 'South', 'EmilyR');
INSERT INTO fan_experience_interactive_zones (zoneName, location, activationDate, deactivationDate, theme, sponsor, capacity, avgVisitorsPerDay, totalInteractions, interactiveElements, averageDwellTimeSeconds, maxConcurrentUsers, safetyRating, maintenanceFrequencyDays, lastMaintenanceDate, techProvider, powerRequirementKw, networkBandwidthMbps, accessibilityFeatures, feedbackScore, notes, createdAt, updatedAt, region, managerName) VALUES ('ARGrandstand', 'GrandStadium', '2023-05-15', NULL, 'AugmentedReality', 'ARInc', 500, 3500, 80000, 8, 420, 250, 8, 45, '2023-09-10', 'ARSystems', 20.0, 350.0, 'AudioAssist', 78, 'Positive feedback', '2023-05-15', '2023-09-10', 'North', 'MarkT');
INSERT INTO fan_experience_interactive_zones (zoneName, location, activationDate, deactivationDate, theme, sponsor, capacity, avgVisitorsPerDay, totalInteractions, interactiveElements, averageDwellTimeSeconds, maxConcurrentUsers, safetyRating, maintenanceFrequencyDays, lastMaintenanceDate, techProvider, powerRequirementKw, networkBandwidthMbps, accessibilityFeatures, feedbackScore, notes, createdAt, updatedAt, region, managerName) VALUES ('SimRacingHub', 'HospitalityHall', '2023-07-01', NULL, 'SimRacing', 'GearCo', 100, 1200, 30000, 3, 600, 80, 7, 20, '2023-08-20', 'SimTech', 8.0, 150.0, 'Braille', 82, 'Needs more headsets', '2023-07-01', '2023-08-20', 'East', 'SofiaL');

-- Logs for equipment calibration activities
CREATE TABLE equipment_calibration_logs (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    equipmentId TEXT NOT NULL,
    equipmentType TEXT,
    calibrationDate DATE,
    calibratedBy TEXT,
    calibrationMethod TEXT,
    calibrationResult TEXT,
    toleranceValue REAL,
    measuredValue REAL,
    deviation REAL,
    nextCalibrationDue DATE,
    calibrationCertificateId TEXT,
    notes TEXT,
    status TEXT,
    location TEXT,
    department TEXT,
    validationType TEXT,
    referenceStandard TEXT,
    equipmentSerialNumber TEXT,
    manufacturer TEXT,
    modelNumber TEXT,
    calibrationDurationMinutes INTEGER,
    createdAt DATE,
    updatedAt DATE,
    region TEXT,
    auditorName TEXT
);
INSERT INTO equipment_calibration_logs (equipmentId, equipmentType, calibrationDate, calibratedBy, calibrationMethod, calibrationResult, toleranceValue, measuredValue, deviation, nextCalibrationDue, calibrationCertificateId, notes, status, location, department, validationType, referenceStandard, equipmentSerialNumber, manufacturer, modelNumber, calibrationDurationMinutes, createdAt, updatedAt, region, auditorName) VALUES ('EQ001', 'SpeedGun', '2023-08-01', 'TechJohn', 'Laser', 'Pass', 0.5, 125.3, 0.2, '2024-08-01', 'CERT001', 'Routine check', 'Active', 'PitLane', 'Technical', 'Full', 'ISO17025', 'SN001', 'SpeedTech', 'SG100', 45, '2023-08-01', '2023-08-01', 'South', 'LauraK');
INSERT INTO equipment_calibration_logs (equipmentId, equipmentType, calibrationDate, calibratedBy, calibrationMethod, calibrationResult, toleranceValue, measuredValue, deviation, nextCalibrationDue, calibrationCertificateId, notes, status, location, department, validationType, referenceStandard, equipmentSerialNumber, manufacturer, modelNumber, calibrationDurationMinutes, createdAt, updatedAt, region, auditorName) VALUES ('EQ002', 'PressureSensor', '2023-07-20', 'TechAnna', 'Electronic', 'Pass', 1.0, 101.5, -0.5, '2024-07-20', 'CERT002', 'No issues', 'Active', 'HospitalityHall', 'Facilities', 'Partial', 'ISO9001', 'SN002', 'PressureCo', 'PS200', 30, '2023-07-20', '2023-07-20', 'East', 'MikeD');
INSERT INTO equipment_calibration_logs (equipmentId, equipmentType, calibrationDate, calibratedBy, calibrationMethod, calibrationResult, toleranceValue, measuredValue, deviation, nextCalibrationDue, calibrationCertificateId, notes, status, location, department, validationType, referenceStandard, equipmentSerialNumber, manufacturer, modelNumber, calibrationDurationMinutes, createdAt, updatedAt, region, auditorName) VALUES ('EQ003', 'ThermalCamera', '2023-06-15', 'TechSara', 'Infrared', 'Fail', 0.2, 30.9, 0.3, '2024-06-15', 'CERT003', 'Recalibration needed', 'Inactive', 'GrandStadium', 'Security', 'Full', 'ISO17025', 'SN003', 'ThermoVis', 'TC300', 60, '2023-06-15', '2023-06-15', 'North', 'JamesP');

-- Maintenance schedule for transportation fleet
CREATE TABLE transportation_fleet_maintenance (
    maintenanceId INTEGER PRIMARY KEY AUTOINCREMENT,
    vehicleId TEXT NOT NULL,
    vehicleType TEXT,
    licensePlate TEXT,
    maintenanceDate DATE,
    mileage INTEGER,
    serviceType TEXT,
    serviceProvider TEXT,
    costUSD REAL,
    partsReplaced TEXT,
    technicianName TEXT,
    nextServiceDue DATE,
    nextServiceMileage INTEGER,
    maintenanceStatus TEXT,
    notes TEXT,
    scheduledBy TEXT,
    approvalStatus TEXT,
    createdAt DATE,
    updatedAt DATE,
    region TEXT,
    fuelType TEXT,
    engineHours INTEGER,
    warrantyRemainingMonths INTEGER,
    insuranceProvider TEXT,
    insurancePolicyNumber TEXT,
    depotLocation TEXT,
    vehicleModel TEXT,
    vehicleYear INTEGER
);
INSERT INTO transportation_fleet_maintenance (vehicleId, vehicleType, licensePlate, maintenanceDate, mileage, serviceType, serviceProvider, costUSD, partsReplaced, technicianName, nextServiceDue, nextServiceMileage, maintenanceStatus, notes, scheduledBy, approvalStatus, createdAt, updatedAt, region, fuelType, engineHours, warrantyRemainingMonths, insuranceProvider, insurancePolicyNumber, depotLocation, vehicleModel, vehicleYear) VALUES ('V001', 'Truck', 'ABC1234', '2023-07-05', 150000, 'EngineOverhaul', 'AutoWorks', 2500.00, 'OilFilter;TimingBelt', 'JohnTech', '2024-07-05', 200000, 'Completed', 'Engine rebuilt', 'LogisticsMgr', 'Approved', '2023-07-05', '2023-07-05', 'South', 'Diesel', 1200, 12, 'InsureCo', 'POL001', 'DepotA', 'VolvoFH', 2018);
INSERT INTO transportation_fleet_maintenance (vehicleId, vehicleType, licensePlate, maintenanceDate, mileage, serviceType, serviceProvider, costUSD, partsReplaced, technicianName, nextServiceDue, nextServiceMileage, maintenanceStatus, notes, scheduledBy, approvalStatus, createdAt, updatedAt, region, fuelType, engineHours, warrantyRemainingMonths, insuranceProvider, insurancePolicyNumber, depotLocation, vehicleModel, vehicleYear) VALUES ('V002', 'Van', 'XYZ5678', '2023-08-12', 80000, 'BrakeInspection', 'QuickFix', 300.00, 'BrakePads;Rotors', 'AnnaTech', '2024-08-12', 120000, 'Completed', 'Brake pads replaced', 'OpsCoordinator', 'Approved', '2023-08-12', '2023-08-12', 'East', 'Petrol', 600, 24, 'SafeGuard', 'POL002', 'DepotB', 'FordTransit', 2020);
INSERT INTO transportation_fleet_maintenance (vehicleId, vehicleType, licensePlate, maintenanceDate, mileage, serviceType, serviceProvider, costUSD, partsReplaced, technicianName, nextServiceDue, nextServiceMileage, maintenanceStatus, notes, scheduledBy, approvalStatus, createdAt, updatedAt, region, fuelType, engineHours, warrantyRemainingMonths, insuranceProvider, insurancePolicyNumber, depotLocation, vehicleModel, vehicleYear) VALUES ('V003', 'Bus', 'LMN9012', '2023-09-01', 250000, 'FullService', 'BusCare', 1800.00, 'Filters;Belts', 'MikeTech', '2024-09-01', 300000, 'Completed', 'All systems checked', 'TransportLead', 'Approved', '2023-09-01', '2023-09-01', 'North', 'Diesel', 2000, 6, 'ProtectIns', 'POL003', 'DepotC', 'MercedesSprinter', 2015);

-- Feedback records for catering services
CREATE TABLE catering_service_feedback (
    feedbackId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER NOT NULL,
    serviceDate DATE,
    menuName TEXT,
    dishName TEXT,
    rating INTEGER,
    comments TEXT,
    servedBy TEXT,
    temperatureC REAL,
    portionSize TEXT,
    allergenInfo TEXT,
    dietaryTag TEXT,
    serviceDurationMinutes INTEGER,
    staffCount INTEGER,
    cleanlinessScore INTEGER,
    wasteGeneratedKg REAL,
    refillCount INTEGER,
    napkinUsageCount INTEGER,
    beverageProvided TEXT,
    feedbackChannel TEXT,
    followUpAction TEXT,
    status TEXT,
    createdAt DATE,
    updatedAt DATE,
    region TEXT,
    managerOnDuty TEXT,
    eventLocation TEXT,
    attendeeCount INTEGER
);
INSERT INTO catering_service_feedback (eventId, serviceDate, menuName, dishName, rating, comments, servedBy, temperatureC, portionSize, allergenInfo, dietaryTag, serviceDurationMinutes, staffCount, cleanlinessScore, wasteGeneratedKg, refillCount, napkinUsageCount, beverageProvided, feedbackChannel, followUpAction, status, createdAt, updatedAt, region, managerOnDuty, eventLocation, attendeeCount) VALUES (101, '2023-07-10', 'GrandLunch', 'GrilledChicken', 4, 'Tasty but a bit salty', 'CaterTeamA', 65.0, 'Medium', 'None', 'GlutenFree', 90, 8, 9, 12.5, 3, 150, 'Soda', 'Survey', 'Adjust seasoning', 'Closed', '2023-07-11', '2023-07-11', 'South', 'LauraM', 'GrandStadium', 5000);
INSERT INTO catering_service_feedback (eventId, serviceDate, menuName, dishName, rating, comments, servedBy, temperatureC, portionSize, allergenInfo, dietaryTag, serviceDurationMinutes, staffCount, cleanlinessScore, wasteGeneratedKg, refillCount, napkinUsageCount, beverageProvided, feedbackChannel, followUpAction, status, createdAt, updatedAt, region, managerOnDuty, eventLocation, attendeeCount) VALUES (102, '2023-08-05', 'VIPDinner', 'LobsterBisque', 5, 'Excellent presentation', 'CaterTeamB', 55.0, 'Small', 'Shellfish', 'Seafood', 60, 5, 10, 5.0, 1, 30, 'Wine', 'Email', 'Maintain quality', 'Closed', '2023-08-06', '2023-08-06', 'East', 'MarkJ', 'HospitalityLounge', 200);
INSERT INTO catering_service_feedback (eventId, serviceDate, menuName, dishName, rating, comments, servedBy, temperatureC, portionSize, allergenInfo, dietaryTag, serviceDurationMinutes, staffCount, cleanlinessScore, wasteGeneratedKg, refillCount, napkinUsageCount, beverageProvided, feedbackChannel, followUpAction, status, createdAt, updatedAt, region, managerOnDuty, eventLocation, attendeeCount) VALUES (103, '2023-09-01', 'SnackBar', 'VegWrap', 3, 'Could use more sauce', 'CaterTeamC', 45.0, 'Large', 'None', 'Vegetarian', 30, 3, 7, 2.0, 2, 70, 'Water', 'App', 'Review recipe', 'Open', '2023-09-02', '2023-09-02', 'North', 'SofiaL', 'PitLane', 1200);

-- Records of volunteer scheduling and assignments
CREATE TABLE volunteer_management_records (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    volunteerId INTEGER NOT NULL,
    volunteerName TEXT,
    assignmentId INTEGER,
    assignmentName TEXT,
    shiftDate DATE,
    shiftStartTime TEXT,
    shiftEndTime TEXT,
    role TEXT,
    department TEXT,
    supervisorName TEXT,
    contactPhone TEXT,
    contactEmail TEXT,
    trainingCompleted INTEGER,
    certification TEXT,
    notes TEXT,
    status TEXT,
    createdAt DATE,
    updatedAt DATE,
    region TEXT,
    hoursAllocated INTEGER,
    hoursWorked INTEGER,
    overtimeHours INTEGER,
    preferredLanguage TEXT,
    availabilityDays TEXT,
    uniformSize TEXT,
    emergencyContactName TEXT,
    emergencyContactPhone TEXT,
    transportMethod TEXT,
    shiftLocation TEXT,
    specialRequirements TEXT
);
INSERT INTO volunteer_management_records (volunteerId, volunteerName, assignmentId, assignmentName, shiftDate, shiftStartTime, shiftEndTime, role, department, supervisorName, contactPhone, contactEmail, trainingCompleted, certification, notes, status, createdAt, updatedAt, region, hoursAllocated, hoursWorked, overtimeHours, preferredLanguage, availabilityDays, uniformSize, emergencyContactName, emergencyContactPhone, transportMethod, shiftLocation, specialRequirements) VALUES (201, 'AliceBrown', 301, 'GateControl', '2023-07-15', '08:00', '12:00', 'GateAgent', 'Security', 'JohnSmith', '5551234567', 'alice@example.com', 1, 'FirstAid', 'Excellent punctuality', 'Confirmed', '2023-07-01', '2023-07-01', 'South', 4, 4, 0, 'English', 'MonTueWed', 'M', 'BobBrown', '5559876543', 'Car', 'MainGate', 'None');
INSERT INTO volunteer_management_records (volunteerId, volunteerName, assignmentId, assignmentName, shiftDate, shiftStartTime, shiftEndTime, role, department, supervisorName, contactPhone, contactEmail, trainingCompleted, certification, notes, status, createdAt, updatedAt, region, hoursAllocated, hoursWorked, overtimeHours, preferredLanguage, availabilityDays, uniformSize, emergencyContactName, emergencyContactPhone, transportMethod, shiftLocation, specialRequirements) VALUES (202, 'CarlosDiaz', 302, 'MerchandiseStand', '2023-08-20', '10:00', '14:00', 'StandAttendant', 'Retail', 'MariaLee', '5552345678', 'carlos@example.com', 1, 'CustomerService', 'Friendly with fans', 'Confirmed', '2023-08-01', '2023-08-01', 'East', 4, 4, 0, 'Spanish', 'TueThuFri', 'L', 'AnaDiaz', '5553456789', 'Bus', 'MerchZone', 'Allergy to latex');
INSERT INTO volunteer_management_records (volunteerId, volunteerName, assignmentId, assignmentName, shiftDate, shiftStartTime, shiftEndTime, role, department, supervisorName, contactPhone, contactEmail, trainingCompleted, certification, notes, status, createdAt, updatedAt, region, hoursAllocated, hoursWorked, overtimeHours, preferredLanguage, availabilityDays, uniformSize, emergencyContactName, emergencyContactPhone, transportMethod, shiftLocation, specialRequirements) VALUES (203, 'EmilyClark', 303, 'MedicalTent', '2023-09-05', '12:00', '18:00', 'Assistant', 'Medical', 'DavidKing', '5554567890', 'emily@example.com', 1, 'CPR', 'Calm under pressure', 'Pending', '2023-09-01', '2023-09-01', 'North', 6, 0, 0, 'English', 'MonWedFri', 'S', 'PeterClark', '5555678901', 'Bike', 'MedicalTent', 'Requires wheelchair access');

-- Renewable energy usage records for venue
CREATE TABLE renewable_energy_usage (
    usageId INTEGER PRIMARY KEY AUTOINCREMENT,
    sourceType TEXT NOT NULL,
    installationDate DATE,
    capacityMw REAL,
    annualGenerationMwh REAL,
    location TEXT,
    operatorCompany TEXT,
    maintenanceContractId INTEGER,
    lastInspectionDate DATE,
    nextInspectionDue DATE,
    avgEfficiencyPercent REAL,
    peakPowerMw REAL,
    totalOperatingHours INTEGER,
    carbonOffsetTonnes REAL,
    subsidyAmountUsd REAL,
    status TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    region TEXT,
    gridConnectionPoint TEXT,
    voltageKv REAL,
    currentPhase TEXT,
    inverterCount INTEGER,
    batteryStorageMwh REAL,
    decommissionDate DATE,
    renewableCertification TEXT,
    complianceLevel TEXT,
    monitoringSystem TEXT,
    ownerContact TEXT
);
INSERT INTO renewable_energy_usage (sourceType, installationDate, capacityMw, annualGenerationMwh, location, operatorCompany, maintenanceContractId, lastInspectionDate, nextInspectionDue, avgEfficiencyPercent, peakPowerMw, totalOperatingHours, carbonOffsetTonnes, subsidyAmountUsd, status, notes, createdAt, updatedAt, region, gridConnectionPoint, voltageKv, currentPhase, inverterCount, batteryStorageMwh, decommissionDate, renewableCertification, complianceLevel, monitoringSystem, ownerContact) VALUES ('Solar', '2020-03-15', 5.0, 6500.0, 'NorthRoof', 'SunPowerInc', 201, '2023-05-01', '2024-05-01', 18.5, 5.2, 20000, 3.5, 500000.0, 'Active', 'Optimal performance', '2023-03-20', '2023-03-20', 'North', 'NodeA', 0.4, 'Three', 12, 20.0, NULL, 'ISO14001', 'High', 'SCADA', 'contact@sunpower.com');
INSERT INTO renewable_energy_usage (sourceType, installationDate, capacityMw, annualGenerationMwh, location, operatorCompany, maintenanceContractId, lastInspectionDate, nextInspectionDue, avgEfficiencyPercent, peakPowerMw, totalOperatingHours, carbonOffsetTonnes, subsidyAmountUsd, status, notes, createdAt, updatedAt, region, gridConnectionPoint, voltageKv, currentPhase, inverterCount, batteryStorageMwh, decommissionDate, renewableCertification, complianceLevel, monitoringSystem, ownerContact) VALUES ('Wind', '2018-08-01', 10.0, 30000.0, 'EastField', 'WindCorp', 202, '2023-04-10', '2024-04-10', 22.0, 11.0, 35000, 8.0, 800000.0, 'Active', 'Slight noise increase', '2023-04-01', '2023-04-01', 'East', 'NodeB', 0.66, 'Three', 18, 5.0, NULL, 'ISO50001', 'Medium', 'SCADA', 'info@windcorp.com');
INSERT INTO renewable_energy_usage (sourceType, installationDate, capacityMw, annualGenerationMwh, location, operatorCompany, maintenanceContractId, lastInspectionDate, nextInspectionDue, avgEfficiencyPercent, peakPowerMw, totalOperatingHours, carbonOffsetTonnes, subsidyAmountUsd, status, notes, createdAt, updatedAt, region, gridConnectionPoint, voltageKv, currentPhase, inverterCount, batteryStorageMwh, decommissionDate, renewableCertification, complianceLevel, monitoringSystem, ownerContact) VALUES ('Geothermal', '2015-01-20', 3.0, 26000.0, 'SouthComplex', 'EcoHeat', 203, '2023-03-15', '2024-03-15', 15.0, 3.5, 40000, 5.5, 300000.0, 'Active', 'Stable output', '2023-03-01', '2023-03-01', 'South', 'NodeC', 0.5, 'Two', 8, 15.0, NULL, 'ISO14001', 'High', 'SCADA', 'support@ecoheat.com');