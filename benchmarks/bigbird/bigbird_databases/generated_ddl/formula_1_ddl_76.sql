-- Race physiology monitoring data
CREATE TABLE race_physiology_monitoring (
    monitorId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    driverId INTEGER,
    heartRate REAL,
    bloodOxygen REAL,
    bodyTemp REAL,
    respirationRate REAL,
    hydrationLevel REAL,
    fatigueScore REAL,
    stressLevel REAL,
    lactateLevel REAL,
    glucoseLevel REAL,
    timestamp TEXT,
    deviceId TEXT,
    sensorLocation TEXT,
    measurementMode TEXT,
    dataQuality TEXT,
    comments TEXT,
    recordedBy TEXT,
    validationStatus TEXT,
    lastUpdated TEXT,
    recordSource TEXT
);

INSERT INTO race_physiology_monitoring (monitorId, raceId, driverId, heartRate, bloodOxygen, bodyTemp, respirationRate, hydrationLevel, fatigueScore, stressLevel, lactateLevel, glucoseLevel, timestamp, deviceId, sensorLocation, measurementMode, dataQuality, comments, recordedBy, validationStatus, lastUpdated, recordSource)
VALUES (1, 101, 10, 85.2, 98.5, 36.7, 16, 0.85, 2.1, 3.0, 1.8, 5.6, '2025-03-15T14:32:00', 'DEV001', 'chest', 'continuous', 'high', 'none', 'tech_jane', 'validated', '2025-03-15T15:00:00', 'sensor_network');

INSERT INTO race_physiology_monitoring (monitorId, raceId, driverId, heartRate, bloodOxygen, bodyTemp, respirationRate, hydrationLevel, fatigueScore, stressLevel, lactateLevel, glucoseLevel, timestamp, deviceId, sensorLocation, measurementMode, dataQuality, comments, recordedBy, validationStatus, lastUpdated, recordSource)
VALUES (2, 102, 12, 92.5, 97.2, 37.1, 18, 0.78, 3.4, 4.2, 2.0, 6.1, '2025-04-02T11:20:00', 'DEV002', 'wrist', 'interval', 'medium', 'spike at lap3', 'tech_mike', 'pending', '2025-04-02T11:45:00', 'sensor_network');

INSERT INTO race_physiology_monitoring (monitorId, raceId, driverId, heartRate, bloodOxygen, bodyTemp, respirationRate, hydrationLevel, fatigueScore, stressLevel, lactateLevel, glucoseLevel, timestamp, deviceId, sensorLocation, measurementMode, dataQuality, comments, recordedBy, validationStatus, lastUpdated, recordSource)
VALUES (3, 103, 15, 78.0, 99.0, 36.5, 15, 0.90, 1.7, 2.5, 1.5, 5.0, '2025-05-10T09:05:00', 'DEV003', 'ear', 'continuous', 'high', 'steady', 'tech_lara', 'validated', '2025-05-10T09:30:00', 'sensor_network');

-- Circuit noise modulation logs
CREATE TABLE circuit_noise_modulation_logs (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    modulationStart TEXT,
    modulationEnd TEXT,
    frequencyHz REAL,
    amplitudeDb REAL,
    sourceType TEXT,
    equipmentId TEXT,
    operatorName TEXT,
    reasonCode TEXT,
    approvalStatus TEXT,
    notes TEXT,
    recordedAt TEXT,
    verifiedBy TEXT,
    verificationStatus TEXT,
    temperatureC REAL,
    humidityPct REAL,
    windSpeedKph REAL,
    windDirection TEXT,
    pressureHpa REAL,
    dataVersion INTEGER,
    lastEdited TEXT,
    editReason TEXT
);

INSERT INTO circuit_noise_modulation_logs (logId, circuitId, modulationStart, modulationEnd, frequencyHz, amplitudeDb, sourceType, equipmentId, operatorName, reasonCode, approvalStatus, notes, recordedAt, verifiedBy, verificationStatus, temperatureC, humidityPct, windSpeedKph, windDirection, pressureHpa, dataVersion, lastEdited, editReason)
VALUES (1, 5, '2025-06-01T08:00:00', '2025-06-01T09:30:00', 1500.0, 85.2, 'speaker_array', 'EQ001', 'alice_smith', 'test', 'approved', 'pre‑race test', '2025-06-01T09:35:00', 'bob_jones', 'verified', 22.5, 55.0, 12.4, 'NE', 1013.2, 1, '2025-06-01T10:00:00', 'initial_entry');

INSERT INTO circuit_noise_modulation_logs (logId, circuitId, modulationStart, modulationEnd, frequencyHz, amplitudeDb, sourceType, equipmentId, operatorName, reasonCode, approvalStatus, notes, recordedAt, verifiedBy, verificationStatus, temperatureC, humidityPct, windSpeedKph, windDirection, pressureHpa, dataVersion, lastEdited, editReason)
VALUES (2, 7, '2025-07-15T14:15:00', '2025-07-15T15:00:00', 2000.5, 88.0, 'vibration_pad', 'EQ023', 'charles_k', 'maintenance', 'pending', 'routine check', '2025-07-15T15:05:00', 'diana_l', 'unverified', 28.1, 62.0, 8.7, 'S', 1008.5, 1, '2025-07-15T15:20:00', 'added_by_tech');

INSERT INTO circuit_noise_modulation_logs (logId, circuitId, modulationStart, modulationEnd, frequencyHz, amplitudeDb, sourceType, equipmentId, operatorName, reasonCode, approvalStatus, notes, recordedAt, verifiedBy, verificationStatus, temperatureC, humidityPct, windSpeedKph, windDirection, pressureHpa, dataVersion, lastEdited, editReason)
VALUES (3, 9, '2025-08-20T10:00:00', '2025-08-20T11:45:00', 1750.3, 86.5, 'speaker_array', 'EQ045', 'emily_r', 'event', 'approved', 'post‑race celebration', '2025-08-20T11:50:00', 'frank_m', 'verified', 24.3, 58.0, 10.2, 'W', 1011.0, 2, '2025-08-20T12:10:00', 'updated_amplitude');

-- Driver contractual bonus history
CREATE TABLE driver_contractual_bonus_history (
    bonusId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    contractYear INTEGER,
    bonusType TEXT,
    amountUsd REAL,
    performanceMetric TEXT,
    metricValue REAL,
    qualifyingThreshold REAL,
    achievedFlag INTEGER,
    awardDate TEXT,
    approvedBy TEXT,
    notes TEXT,
    currency TEXT,
    paymentMethod TEXT,
    taxWithheldPct REAL,
    netAmountUsd REAL,
    bonusStatus TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    auditTrail TEXT,
    sourceSystem TEXT,
    version INTEGER
);

INSERT INTO driver_contractual_bonus_history (bonusId, driverId, contractYear, bonusType, amountUsd, performanceMetric, metricValue, qualifyingThreshold, achievedFlag, awardDate, approvedBy, notes, currency, paymentMethod, taxWithheldPct, netAmountUsd, bonusStatus, createdAt, updatedAt, auditTrail, sourceSystem, version)
VALUES (1, 10, 2025, 'wins', 500000, 'wins', 4, 3, 1, '2025-11-01', 'legal_jane', 'exceeded win target', 'USD', 'wire', 30.0, 350000, 'paid', '2025-11-02', '2025-11-02', 'created', 'HRIS', 1);

INSERT INTO driver_contractual_bonus_history (bonusId, driverId, contractYear, bonusType, amountUsd, performanceMetric, metricValue, qualifyingThreshold, achievedFlag, awardDate, approvedBy, notes, currency, paymentMethod, taxWithheldPct, netAmountUsd, bonusStatus, createdAt, updatedAt, auditTrail, sourceSystem, version)
VALUES (2, 12, 2025, 'podiums', 250000, 'podiums', 7, 5, 1, '2025-11-15', 'legal_mike', 'met podium quota', 'USD', 'wire', 30.0, 175000, 'paid', '2025-11-16', '2025-11-16', 'created', 'HRIS', 1);

INSERT INTO driver_contractual_bonus_history (bonusId, driverId, contractYear, bonusType, amountUsd, performanceMetric, metricValue, qualifyingThreshold, achievedFlag, awardDate, approvedBy, notes, currency, paymentMethod, taxWithheldPct, netAmountUsd, bonusStatus, createdAt, updatedAt, auditTrail, sourceSystem, version)
VALUES (3, 15, 2025, 'qualifying', 100000, 'qualifying_points', 95.0, 90.0, 1, '2025-11-20', 'legal_lara', 'surpassed qualifying points', 'USD', 'wire', 30.0, 70000, 'paid', '2025-11-21', '2025-11-21', 'created', 'HRIS', 1);

-- Sponsor media content inventory
CREATE TABLE sponsor_media_content_inventory (
    contentId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    campaignName TEXT,
    contentType TEXT,
    fileName TEXT,
    fileFormat TEXT,
    fileSizeMb REAL,
    durationSec INTEGER,
    launchDate TEXT,
    expirationDate TEXT,
    targetRegion TEXT,
    platform TEXT,
    impressionsGoal INTEGER,
    actualImpressions INTEGER,
    clickThroughRate REAL,
    cpmUsd REAL,
    status TEXT,
    createdBy TEXT,
    createdAt TEXT,
    approvedBy TEXT,
    approvedAt TEXT,
    notes TEXT,
    version INTEGER
);

INSERT INTO sponsor_media_content_inventory (contentId, sponsorId, campaignName, contentType, fileName, fileFormat, fileSizeMb, durationSec, launchDate, expirationDate, targetRegion, platform, impressionsGoal, actualImpressions, clickThroughRate, cpmUsd, status, createdBy, createdAt, approvedBy, approvedAt, notes, version)
VALUES (1, 200, 'speedBoost2025', 'video', 'speedboost_intro', 'mp4', 50.2, 30, '2025-04-01', '2025-07-01', 'global', 'social_media', 1000000, 850000, 0.025, 12.5, 'active', 'media_anna', '2025-03-20', 'media_john', '2025-03-22', 'initial_upload', 1);

INSERT INTO sponsor_media_content_inventory (contentId, sponsorId, campaignName, contentType, fileName, fileFormat, fileSizeMb, durationSec, launchDate, expirationDate, targetRegion, platform, impressionsGoal, actualImpressions, clickThroughRate, cpmUsd, status, createdBy, createdAt, approvedBy, approvedAt, notes, version)
VALUES (2, 215, 'greenTrack2025', 'banner', 'greentrack_banner', 'png', 2.5, NULL, '2025-05-15', '2025-09-15', 'europe', 'website', 500000, 470000, 0.015, 9.0, 'active', 'media_mike', '2025-05-01', 'media_sara', '2025-05-03', 'banner_updated', 1);

INSERT INTO sponsor_media_content_inventory (contentId, sponsorId, campaignName, contentType, fileName, fileFormat, fileSizeMb, durationSec, launchDate, expirationDate, targetRegion, platform, impressionsGoal, actualImpressions, clickThroughRate, cpmUsd, status, createdBy, createdAt, approvedBy, approvedAt, notes, version)
VALUES (3, 230, 'fuelSaver2025', 'infographic', 'fuelsaver_chart', 'pdf', 1.8, NULL, '2025-06-10', '2025-12-10', 'north_america', 'email', 300000, 310000, 0.018, 8.5, 'active', 'media_lucas', '2025-05-28', 'media_amy', '2025-05-30', 'final_version', 1);

-- Logistics airport transfers
CREATE TABLE logistics_airport_transfers (
    transferId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    flightNumber TEXT,
    airline TEXT,
    departureAirport TEXT,
    arrivalAirport TEXT,
    departureTime TEXT,
    arrivalTime TEXT,
    passengerCount INTEGER,
    cargoWeightKg REAL,
    vehicleId TEXT,
    driverId INTEGER,
    transferStatus TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    notes TEXT,
    contactPerson TEXT,
    contactPhone TEXT,
    customsClearanceFlag INTEGER,
    securityCheckFlag INTEGER,
    estimatedCostUsd REAL,
    actualCostUsd REAL,
    approvalCode TEXT,
    version INTEGER
);

INSERT INTO logistics_airport_transfers (transferId, raceId, flightNumber, airline, departureAirport, arrivalAirport, departureTime, arrivalTime, passengerCount, cargoWeightKg, vehicleId, driverId, transferStatus, createdAt, updatedAt, notes, contactPerson, contactPhone, customsClearanceFlag, securityCheckFlag, estimatedCostUsd, actualCostUsd, approvalCode, version)
VALUES (1, 101, 'AA123', 'AmericanAirlines', 'JFK', 'LHR', '2025-03-14T07:30:00', '2025-03-14T19:45:00', 12, 2500.0, 'VHL001', 45, 'scheduled', '2025-02-20', '2025-02-20', 'team equipment', 'john_doe', '5551234', 1, 1, 15000.0, 15200.0, 'APPR001', 1);

INSERT INTO logistics_airport_transfers (transferId, raceId, flightNumber, airline, departureAirport, arrivalAirport, departureTime, arrivalTime, passengerCount, cargoWeightKg, vehicleId, driverId, transferStatus, createdAt, updatedAt, notes, contactPerson, contactPhone, customsClearanceFlag, securityCheckFlag, estimatedCostUsd, actualCostUsd, approvalCode, version)
VALUES (2, 102, 'DL456', 'Delta', 'LAX', 'CDG', '2025-04-02T09:15:00', '2025-04-02T22:30:00', 8, 1800.5, 'VHL023', 52, 'completed', '2025-03-10', '2025-04-03', 'spare parts', 'sarah_lee', '5555678', 1, 1, 13000.0, 12950.0, 'APPR002', 1);

INSERT INTO logistics_airport_transfers (transferId, raceId, flightNumber, airline, departureAirport, arrivalAirport, departureTime, arrivalTime, passengerCount, cargoWeightKg, vehicleId, driverId, transferStatus, createdAt, updatedAt, notes, contactPerson, contactPhone, customsClearanceFlag, securityCheckFlag, estimatedCostUsd, actualCostUsd, approvalCode, version)
VALUES (3, 103, 'BA789', 'BritishAirways', 'SYD', 'FRA', '2025-05-20T06:45:00', '2025-05-20T18:10:00', 15, 3200.0, 'VHL045', 61, 'delayed', '2025-04-28', '2025-05-21', 'engine components', 'mike_chen', '5559012', 0, 1, 17000.0, 17250.0, 'APPR003', 1);

-- Fan loyalty tier definitions
CREATE TABLE fan_loyalty_tier_definitions (
    tierId INTEGER PRIMARY KEY AUTOINCREMENT,
    tierName TEXT,
    minPoints INTEGER,
    maxPoints INTEGER,
    benefitsSummary TEXT,
    exclusiveEvents TEXT,
    discountRatePct REAL,
    earlyAccessFlag INTEGER,
    merchVoucherUsd REAL,
    prioritySupportFlag INTEGER,
    tierIconFile TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    notes TEXT,
    status TEXT,
    version INTEGER,
    lastReviewedBy TEXT,
    lastReviewedAt TEXT,
    eligibilityCriteria TEXT,
    renewalPeriodMonths INTEGER,
    tierLevel INTEGER,
    programName TEXT
);

INSERT INTO fan_loyalty_tier_definitions (tierId, tierName, minPoints, maxPoints, benefitsSummary, exclusiveEvents, discountRatePct, earlyAccessFlag, merchVoucherUsd, prioritySupportFlag, tierIconFile, createdAt, updatedAt, notes, status, version, lastReviewedBy, lastReviewedAt, eligibilityCriteria, renewalPeriodMonths, tierLevel, programName)
VALUES (1, 'bronze', 0, 999, 'basic_access', 'none', 5.0, 0, 10.0, 0, 'bronze.png', '2024-01-01', '2024-06-01', 'initial tier', 'active', 1, 'admin_jane', '2025-01-01', 'all_purchases', 12, 1, 'GrandPrixLoyalty');

INSERT INTO fan_loyalty_tier_definitions (tierId, tierName, minPoints, maxPoints, benefitsSummary, exclusiveEvents, discountRatePct, earlyAccessFlag, merchVoucherUsd, prioritySupportFlag, tierIconFile, createdAt, updatedAt, notes, status, version, lastReviewedBy, lastReviewedAt, eligibilityCriteria, renewalPeriodMonths, tierLevel, programName)
VALUES (2, 'silver', 1000, 4999, 'mid_access', 'meet_greets', 10.0, 1, 25.0, 1, 'silver.png', '2024-01-01', '2024-06-01', 'mid tier', 'active', 1, 'admin_mike', '2025-01-01', 'all_purchases', 12, 2, 'GrandPrixLoyalty');

INSERT INTO fan_loyalty_tier_definitions (tierId, tierName, minPoints, maxPoints, benefitsSummary, exclusiveEvents, discountRatePct, earlyAccessFlag, merchVoucherUsd, prioritySupportFlag, tierIconFile, createdAt, updatedAt, notes, status, version, lastReviewedBy, lastReviewedAt, eligibilityCriteria, renewalPeriodMonths, tierLevel, programName)
VALUES (3, 'gold', 5000, 9999, 'premium_access', 'vip_podium', 15.0, 1, 50.0, 1, 'gold.png', '2024-01-01', '2024-06-01', 'top tier', 'active', 1, 'admin_lara', '2025-01-01', 'all_purchases', 12, 3, 'GrandPrixLoyalty');

-- Broadcast cue sheet
CREATE TABLE broadcast_cue_sheet (
    cueId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    segmentName TEXT,
    startTime TEXT,
    endTime TEXT,
    description TEXT,
    presenter TEXT,
    producer TEXT,
    graphicsPackage TEXT,
    audioTrack TEXT,
    cueType TEXT,
    priorityLevel INTEGER,
    isLive INTEGER,
    externalReference TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    notes TEXT,
    status TEXT,
    version INTEGER,
    approvedBy TEXT,
    approvedAt TEXT,
    broadcastChannel TEXT,
    durationSec INTEGER
);

INSERT INTO broadcast_cue_sheet (cueId, raceId, segmentName, startTime, endTime, description, presenter, producer, graphicsPackage, audioTrack, cueType, priorityLevel, isLive, externalReference, createdAt, updatedAt, notes, status, version, approvedBy, approvedAt, broadcastChannel, durationSec)
VALUES (1, 101, 'pre_race', '2025-03-15T13:00:00', '2025-03-15T13:15:00', 'opening_introduction', 'host_alex', 'prod_jane', 'standard', 'music_intro', 'intro', 1, 1, 'REF001', '2025-02-20', '2025-02-20', 'first_cut', 'final', 1, 'chief_editor', '2025-02-21', 'Channel1', 900);

INSERT INTO broadcast_cue_sheet (cueId, raceId, segmentName, startTime, endTime, description, presenter, producer, graphicsPackage, audioTrack, cueType, priorityLevel, isLive, externalReference, createdAt, updatedAt, notes, status, version, approvedBy, approvedAt, broadcastChannel, durationSec)
VALUES (2, 101, 'mid_race_analysis', '2025-03-15T13:45:00', '2025-03-15T14:00:00', 'analysis_of_leaders', 'analyst_mike', 'prod_sara', 'advanced', 'sound_effects', 'analysis', 2, 1, 'REF002', '2025-02-22', '2025-02-22', 'needs_graphics', 'final', 1, 'chief_editor', '2025-02-23', 'Channel1', 900);

INSERT INTO broadcast_cue_sheet (cueId, raceId, segmentName, startTime, endTime, description, presenter, producer, graphicsPackage, audioTrack, cueType, priorityLevel, isLive, externalReference, createdAt, updatedAt, notes, status, version, approvedBy, approvedAt, broadcastChannel, durationSec)
VALUES (3, 101, 'post_race_wrap', '2025-03-15T14:30:00', '2025-03-15T14:45:00', 'final_results_and_interviews', 'host_alex', 'prod_jane', 'standard', 'music_outro', 'wrap', 1, 0, 'REF003', '2025-02-25', '2025-02-25', 'include_winner_clip', 'final', 1, 'chief_editor', '2025-02-26', 'Channel1', 900);

-- Venue accessibility equipment
CREATE TABLE venue_accessibility_equipment (
    equipmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    equipmentType TEXT,
    brand TEXT,
    model TEXT,
    serialNumber TEXT,
    installationDate TEXT,
    lastInspectionDate TEXT,
    conditionStatus TEXT,
    wheelchairAccessibleFlag INTEGER,
    brailleLabelsFlag INTEGER,
    audioAssistanceFlag INTEGER,
    maintenanceSchedule TEXT,
    nextMaintenanceDate TEXT,
    responsibleDept TEXT,
    contactPerson TEXT,
    contactPhone TEXT,
    warrantyExpiryDate TEXT,
    depreciationPct REAL,
    purchasePriceUsd REAL,
    currentValueUsd REAL,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    version INTEGER
);

INSERT INTO venue_accessibility_equipment (equipmentId, venueId, equipmentType, brand, model, serialNumber, installationDate, lastInspectionDate, conditionStatus, wheelchairAccessibleFlag, brailleLabelsFlag, audioAssistanceFlag, maintenanceSchedule, nextMaintenanceDate, responsibleDept, contactPerson, contactPhone, warrantyExpiryDate, depreciationPct, purchasePriceUsd, currentValueUsd, notes, createdAt, updatedAt, version)
VALUES (1, 5, 'elevator', 'Schindler', 'E200', 'SN10001', '2022-01-15', '2025-01-10', 'good', 1, 1, 0, 'annual', '2025-12-01', 'Facilities', 'john_doe', '5551234', '2027-01-15', 20.0, 120000.0, 96000.0, 'no_issues', '2024-06-01', '2025-01-12', 1);

INSERT INTO venue_accessibility_equipment (equipmentId, venueId, equipmentType, brand, model, serialNumber, installationDate, lastInspectionDate, conditionStatus, wheelchairAccessibleFlag, brailleLabelsFlag, audioAssistanceFlag, maintenanceSchedule, nextMaintenanceDate, responsibleDept, contactPerson, contactPhone, warrantyExpiryDate, depreciationPct, purchasePriceUsd, currentValueUsd, notes, createdAt, updatedAt, version)
VALUES (2, 7, 'hearing_loop', 'Phonak', 'HL300', 'SN20002', '2021-06-20', '2025-02-05', 'excellent', 0, 0, 1, 'biennial', '2026-02-20', 'IT', 'sara_lee', '5555678', '2024-06-20', 15.0, 50000.0, 42500.0, 'installed_in_main_hall', '2023-03-01', '2025-02-06', 1);

INSERT INTO venue_accessibility_equipment (equipmentId, venueId, equipmentType, brand, model, serialNumber, installationDate, lastInspectionDate, conditionStatus, wheelchairAccessibleFlag, brailleLabelsFlag, audioAssistanceFlag, maintenanceSchedule, nextMaintenanceDate, responsibleDept, contactPerson, contactPhone, warrantyExpiryDate, depreciationPct, purchasePriceUsd, currentValueUsd, notes, createdAt, updatedAt, version)
VALUES (3, 9, 'ramp', 'Generic', 'RampX', 'SN30003', '2020-09-10', '2025-03-15', 'good', 1, 0, 0, 'monthly', '2025-09-10', 'Operations', 'mike_chen', '5559012', '2025-09-10', 25.0, 20000.0, 15000.0, 'covers_main_entrance', '2020-10-01', '2025-03-16', 1);

-- Team data science projects
CREATE TABLE team_data_science_projects (
    projectId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    projectName TEXT,
    description TEXT,
    startDate TEXT,
    endDate TEXT,
    leadScientist TEXT,
    dataSource TEXT,
    algorithmType TEXT,
    modelVersion TEXT,
    validationMetric REAL,
    deploymentStatus TEXT,
    notebookUrl TEXT,
    codeRepositoryUrl TEXT,
    computeResources TEXT,
    budgetUsd REAL,
    actualSpendUsd REAL,
    sponsorId INTEGER,
    collaborationFlag INTEGER,
    publicationsCount INTEGER,
    patentsFiled INTEGER,
    createdAt TEXT,
    updatedAt TEXT,
    notes TEXT,
    status TEXT,
    version INTEGER
);

INSERT INTO team_data_science_projects (projectId, teamId, projectName, description, startDate, endDate, leadScientist, dataSource, algorithmType, modelVersion, validationMetric, deploymentStatus, notebookUrl, codeRepositoryUrl, computeResources, budgetUsd, actualSpendUsd, sponsorId, collaborationFlag, publicationsCount, patentsFiled, createdAt, updatedAt, notes, status, version)
VALUES (1, 12, 'lap_time_prediction', 'predict_lap_times_using_telemetry', '2024-01-01', '2024-12-31', 'dr_smith', 'telemetry', 'regression', 'v1.0', 0.92, 'deployed', 'http://notebooks.example.com/ltp', 'http://repo.example.com/ltp', 'gpu_cluster', 250000.0, 260000.0, 215, 1, 3, 1, '2024-01-02', '2025-01-01', 'exceeded_budget', 'active', 1);

INSERT INTO team_data_science_projects (projectId, teamId, projectName, description, startDate, endDate, leadScientist, dataSource, algorithmType, modelVersion, validationMetric, deploymentStatus, notebookUrl, codeRepositoryUrl, computeResources, budgetUsd, actualSpendUsd, sponsorId, collaborationFlag, publicationsCount, patentsFiled, createdAt, updatedAt, notes, status, version)
VALUES (2, 15, 'driver_fatigue_detection', 'real_time_fatigue_monitoring', '2024-06-01', '2025-05-31', 'dr_jones', 'physiology', 'classification', 'v2.1', 0.88, 'testing', 'http://notebooks.example.com/fatigue', 'http://repo.example.com/fatigue', 'edge_devices', 180000.0, 175000.0, 230, 0, 2, 0, '2024-06-02', '2025-03-01', 'on_schedule', 'active', 1);

INSERT INTO team_data_science_projects (projectId, teamId, projectName, description, startDate, endDate, leadScientist, dataSource, algorithmType, modelVersion, validationMetric, deploymentStatus, notebookUrl, codeRepositoryUrl, computeResources, budgetUsd, actualSpendUsd, sponsorId, collaborationFlag, publicationsCount, patentsFiled, createdAt, updatedAt, notes, status, version)
VALUES (3, 18, 'sponsor_matchmaking_ai', 'optimise_sponsor_driver_pairings', '2023-09-15', '2024-09-14', 'dr_lee', 'historical', 'reinforcement', 'v0.9', 0.81, 'deployed', 'http://notebooks.example.com/sponsor_ai', 'http://repo.example.com/sponsor_ai', 'cloud', 220000.0, 215000.0, 200, 1, 4, 2, '2023-09-16', '2024-09-01', 'successful', 'retired', 1);

-- Environmental carbon offset transactions
CREATE TABLE environmental_carbon_offset_transactions (
    transactionId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    offsetProvider TEXT,
    projectName TEXT,
    projectLocation TEXT,
    carbonTons REAL,
    purchaseDate TEXT,
    verificationStatus TEXT,
    pricePerTonUsd REAL,
    totalCostUsd REAL,
    certificationId TEXT,
    contractReference TEXT,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    approvedBy TEXT,
    approvalDate TEXT,
    status TEXT,
    version INTEGER,
    auditLog TEXT,
    reportingPeriod TEXT
);

INSERT INTO environmental_carbon_offset_transactions (transactionId, raceId, offsetProvider, projectName, projectLocation, carbonTons, purchaseDate, verificationStatus, pricePerTonUsd, totalCostUsd, certificationId, contractReference, notes, createdAt, updatedAt, approvedBy, approvalDate, status, version, auditLog, reportingPeriod)
VALUES (1, 101, 'EcoCreditsInc', 'forest_restoration', 'Brazil', 500.0, '2025-02-20', 'verified', 12.5, 6250.0, 'CERT001', 'CONTR001', 'offset_for_race_101', '2025-02-21', '2025-02-21', 'director_jane', '2025-02-22', 'completed', 1, 'creation', '2025_Q1');

INSERT INTO environmental_carbon_offset_transactions (transactionId, raceId, offsetProvider, projectName, projectLocation, carbonTons, purchaseDate, verificationStatus, pricePerTonUsd, totalCostUsd, certificationId, contractReference, notes, createdAt, updatedAt, approvedBy, approvalDate, status, version, auditLog, reportingPeriod)
VALUES (2, 102, 'GreenEarth', 'wind_farm', 'Germany', 750.0, '2025-03-15', 'pending', 10.0, 7500.0, 'CERT002', 'CONTR002', 'preliminary_offset', '2025-03-16', '2025-03-16', 'director_mike', '2025-03-17', 'pending', 1, 'creation', '2025_Q1');

INSERT INTO environmental_carbon_offset_transactions (transactionId, raceId, offsetProvider, projectName, projectLocation, carbonTons, purchaseDate, verificationStatus, pricePerTonUsd, totalCostUsd, certificationId, contractReference, notes, createdAt, updatedAt, approvedBy, approvalDate, status, version, auditLog, reportingPeriod)
VALUES (3, 103, 'ClimateAction', 'solar_installation', 'Australia', 600.0, '2025-04-10', 'verified', 11.0, 6600.0, 'CERT003', 'CONTR003', 'offset_for_race_103', '2025-04-11', '2025-04-11', 'director_lara', '2025-04-12', 'completed', 1, 'creation', '2025_Q2');