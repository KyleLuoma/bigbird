-- Circuit water usage statistics
CREATE TABLE circuit_water_usage (
    usageId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    usageDate TEXT,
    totalLiters REAL,
    irrigationLiters REAL,
    coolingLiters REAL,
    precipitationLiters REAL,
    groundwaterLevel REAL,
    surfaceTemp REAL,
    humidity REAL,
    windSpeed REAL,
    waterQualityIndex REAL,
    maintenanceFlag TEXT,
    operatorName TEXT,
    shift TEXT,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    sourceSystem TEXT,
    dataQualityScore REAL,
    auditFlag TEXT
);
INSERT INTO circuit_water_usage (circuitId, usageDate, totalLiters, irrigationLiters, coolingLiters, precipitationLiters, groundwaterLevel, surfaceTemp, humidity, windSpeed, waterQualityIndex, maintenanceFlag, operatorName, shift, notes, createdAt, updatedAt, sourceSystem, dataQualityScore, auditFlag) VALUES (1, '2024-01-01', 120000, 30000, 50000, 10000, 5.2, 22.5, 45, 12.3, 95.6, 'No', 'JohnDoe', 'Day', 'Normal', '2024-01-01', '2024-01-01', 'SCADA', 0.98, 'Y');
INSERT INTO circuit_water_usage (circuitId, usageDate, totalLiters, irrigationLiters, coolingLiters, precipitationLiters, groundwaterLevel, surfaceTemp, humidity, windSpeed, waterQualityIndex, maintenanceFlag, operatorName, shift, notes, createdAt, updatedAt, sourceSystem, dataQualityScore, auditFlag) VALUES (2, '2024-01-02', 95000, 20000, 40000, 8000, 4.8, 21.0, 48, 10.5, 92.3, 'Yes', 'JaneSmith', 'Night', 'Check valves', '2024-01-02', '2024-01-02', 'SCADA', 0.95, 'N');
INSERT INTO circuit_water_usage (circuitId, usageDate, totalLiters, irrigationLiters, coolingLiters, precipitationLiters, groundwaterLevel, surfaceTemp, humidity, windSpeed, waterQualityIndex, maintenanceFlag, operatorName, shift, notes, createdAt, updatedAt, sourceSystem, dataQualityScore, auditFlag) VALUES (3, '2024-01-03', 110500, 25000, 45000, 9000, 5.0, 23.1, 44, 13.2, 94.1, 'No', 'MikeLee', 'Day', 'Routine', '2024-01-03', '2024-01-03', 'SCADA', 0.97, 'Y');

-- Driver nutrition daily log
CREATE TABLE driver_nutrition_log (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    logDate TEXT,
    calories INTEGER,
    proteinGrams INTEGER,
    carbsGrams INTEGER,
    fatGrams INTEGER,
    hydrationLiters REAL,
    supplementCount INTEGER,
    mealCount INTEGER,
    breakfastCalories INTEGER,
    lunchCalories INTEGER,
    dinnerCalories INTEGER,
    snackCalories INTEGER,
    dietType TEXT,
    fastingHours INTEGER,
    sleepHours REAL,
    weightKg REAL,
    moodScore INTEGER,
    comment TEXT,
    recordedAt TEXT
);
INSERT INTO driver_nutrition_log (driverId, logDate, calories, proteinGrams, carbsGrams, fatGrams, hydrationLiters, supplementCount, mealCount, breakfastCalories, lunchCalories, dinnerCalories, snackCalories, dietType, fastingHours, sleepHours, weightKg, moodScore, comment, recordedAt) VALUES (10, '2024-01-01', 3200, 180, 350, 80, 3.2, 2, 5, 800, 1200, 1100, 200, 'HighProtein', 0, 7.5, 78.5, 8, 'Felt strong', '2024-01-01');
INSERT INTO driver_nutrition_log (driverId, logDate, calories, proteinGrams, carbsGrams, fatGrams, hydrationLiters, supplementCount, mealCount, breakfastCalories, lunchCalories, dinnerCalories, snackCalories, dietType, fastingHours, sleepHours, weightKg, moodScore, comment, recordedAt) VALUES (22, '2024-01-02', 3000, 150, 320, 70, 2.8, 1, 4, 750, 1150, 1050, 150, 'Balanced', 12, 6.8, 82.0, 7, 'Tired after race', '2024-01-02');
INSERT INTO driver_nutrition_log (driverId, logDate, calories, proteinGrams, carbsGrams, fatGrams, hydrationLiters, supplementCount, mealCount, breakfastCalories, lunchCalories, dinnerCalories, snackCalories, dietType, fastingHours, sleepHours, weightKg, moodScore, comment, recordedAt) VALUES (35, '2024-01-03', 3400, 200, 380, 90, 3.5, 3, 6, 850, 1300, 1150, 250, 'HighCarb', 0, 8.0, 77.3, 9, 'Great focus', '2024-01-03');

-- Sponsor engagement metrics per race
CREATE TABLE sponsor_engagement_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    raceId INTEGER,
    brandExposureCount INTEGER,
    productPlacementCount INTEGER,
    socialMediaMentions INTEGER,
    activationEvents INTEGER,
    hospitalityGuests INTEGER,
    signageAreaSqM REAL,
    logoVisibilityScore REAL,
    activationCost REAL,
    ROI REAL,
    audienceReach INTEGER,
    demographicScore REAL,
    engagementRate REAL,
    satisfactionScore REAL,
    contractYear INTEGER,
    remark TEXT,
    recordedAt TEXT,
    lastUpdated TEXT,
    dataSource TEXT
);
INSERT INTO sponsor_engagement_metrics (sponsorId, raceId, brandExposureCount, productPlacementCount, socialMediaMentions, activationEvents, hospitalityGuests, signageAreaSqM, logoVisibilityScore, activationCost, ROI, audienceReach, demographicScore, engagementRate, satisfactionScore, contractYear, remark, recordedAt, lastUpdated, dataSource) VALUES (5, 101, 3500, 45, 1200, 8, 150, 250.5, 87.3, 500000, 1.25, 2000000, 92.5, 0.78, 4.5, 2024, 'Strong partnership', '2024-01-01', '2024-01-01', 'CRM');
INSERT INTO sponsor_engagement_metrics (sponsorId, raceId, brandExposureCount, productPlacementCount, socialMediaMentions, activationEvents, hospitalityGuests, signageAreaSqM, logoVisibilityScore, activationCost, ROI, audienceReach, demographicScore, engagementRate, satisfactionScore, contractYear, remark, recordedAt, lastUpdated, dataSource) VALUES (12, 102, 2800, 30, 950, 5, 120, 190.2, 81.0, 350000, 1.10, 1500000, 88.0, 0.65, 4.0, 2024, 'Stable ROI', '2024-01-02', '2024-01-02', 'CRM');
INSERT INTO sponsor_engagement_metrics (sponsorId, raceId, brandExposureCount, productPlacementCount, socialMediaMentions, activationEvents, hospitalityGuests, signageAreaSqM, logoVisibilityScore, activationCost, ROI, audienceReach, demographicScore, engagementRate, satisfactionScore, contractYear, remark, recordedAt, lastUpdated, dataSource) VALUES (9, 103, 4100, 60, 1500, 10, 200, 300.8, 92.5, 750000, 1.40, 2500000, 95.2, 0.85, 4.8, 2024, 'Excellent performance', '2024-01-03', '2024-01-03', 'CRM');

-- Telemetry anomaly events
CREATE TABLE telemetry_anomaly_events (
    anomalyId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    driverId INTEGER,
    eventTimestamp TEXT,
    sensorId TEXT,
    anomalyType TEXT,
    severity TEXT,
    description TEXT,
    resolvedFlag TEXT,
    resolutionTimestamp TEXT,
    engineerId INTEGER,
    correctiveAction TEXT,
    impactScore REAL,
    lapNumber INTEGER,
    speed REAL,
    rpm INTEGER,
    gForceX REAL,
    gForceY REAL,
    gForceZ REAL,
    dataPacketId INTEGER
);
INSERT INTO telemetry_anomaly_events (raceId, driverId, eventTimestamp, sensorId, anomalyType, severity, description, resolvedFlag, resolutionTimestamp, engineerId, correctiveAction, impactScore, lapNumber, speed, rpm, gForceX, gForceY, gForceZ, dataPacketId) VALUES (101, 10, '2024-01-01T15:23:10', 'S001', 'Outlier', 'High', 'Speed spike', 'Yes', '2024-01-01T15:30:00', 2001, 'Filter applied', 0.85, 12, 312.5, 12000, 1.2, 0.3, 0.1, 556677);
INSERT INTO telemetry_anomaly_events (raceId, driverId, eventTimestamp, sensorId, anomalyType, severity, description, resolvedFlag, resolutionTimestamp, engineerId, correctiveAction, impactScore, lapNumber, speed, rpm, gForceX, gForceY, gForceZ, dataPacketId) VALUES (102, 22, '2024-01-02T14:10:45', 'S045', 'Dropout', 'Medium', 'Signal loss', 'No', NULL, 2005, 'Investigate wiring', 0.60, 8, 295.0, 11500, 0.9, 0.2, -0.1, 556688);
INSERT INTO telemetry_anomaly_events (raceId, driverId, eventTimestamp, sensorId, anomalyType, severity, description, resolvedFlag, resolutionTimestamp, engineerId, correctiveAction, impactScore, lapNumber, speed, rpm, gForceX, gForceY, gForceZ, dataPacketId) VALUES (103, 35, '2024-01-03T16:05:20', 'S012', 'Noise', 'Low', 'Minor fluctuation', 'Yes', '2024-01-03T16:07:00', 2010, 'Calibration', 0.30, 20, 330.2, 13000, 1.0, 0.4, 0.0, 556699);

-- Hospitality service requests
CREATE TABLE hospitality_service_requests (
    requestId INTEGER PRIMARY KEY AUTOINCREMENT,
    hospitalityRoomId INTEGER,
    guestId INTEGER,
    requestDate TEXT,
    requestTime TEXT,
    requestType TEXT,
    priorityLevel TEXT,
    status TEXT,
    assignedStaffId INTEGER,
    completionDate TEXT,
    completionTime TEXT,
    notes TEXT,
    cost REAL,
    rating INTEGER,
    feedback TEXT,
    channel TEXT,
    responseTimeMinutes INTEGER,
    escalationFlag TEXT,
    satisfactionScore REAL,
    vendorId INTEGER,
    invoiceNumber TEXT
);
INSERT INTO hospitality_service_requests (hospitalityRoomId, guestId, requestDate, requestTime, requestType, priorityLevel, status, assignedStaffId, completionDate, completionTime, notes, cost, rating, feedback, channel, responseTimeMinutes, escalationFlag, satisfactionScore, vendorId, invoiceNumber) VALUES (101, 5001, '2024-01-01', '08:15', 'RoomService', 'High', 'Closed', 3001, '2024-01-01', '08:45', 'Breakfast delivered', 25.0, 5, 'Excellent', 'App', 30, 'No', 4.9, 7001, 'INV1001');
INSERT INTO hospitality_service_requests (hospitalityRoomId, guestId, requestDate, requestTime, requestType, priorityLevel, status, assignedStaffId, completionDate, completionTime, notes, cost, rating, feedback, channel, responseTimeMinutes, escalationFlag, satisfactionScore, vendorId, invoiceNumber) VALUES (102, 5002, '2024-01-02', '14:20', 'Technical', 'Medium', 'InProgress', 3005, NULL, NULL, 'Projector issue', 0.0, NULL, NULL, 'Phone', 45, 'Yes', NULL, 7003, 'INV1002');
INSERT INTO hospitality_service_requests (hospitalityRoomId, guestId, requestDate, requestTime, requestType, priorityLevel, status, assignedStaffId, completionDate, completionTime, notes, cost, rating, feedback, channel, responseTimeMinutes, escalationFlag, satisfactionScore, vendorId, invoiceNumber) VALUES (103, 5003, '2024-01-03', '19:05', 'Cleaning', 'Low', 'Closed', 3010, '2024-01-03', '19:30', 'Room tidied', 0.0, 4, 'Good', 'App', 25, 'No', 4.5, 7005, 'INV1003');

-- Circuit security audit records
CREATE TABLE circuit_security_audit (
    auditId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    auditDate TEXT,
    auditorName TEXT,
    overallScore REAL,
    perimeterScore REAL,
    cameraCoverageScore REAL,
    accessControlScore REAL,
    personnelScore REAL,
    incidentResponseScore REAL,
    emergencyPlanScore REAL,
    cyberSecurityScore REAL,
    findingsCount INTEGER,
    recommendationsCount INTEGER,
    followUpDate TEXT,
    status TEXT,
    remarks TEXT,
    region TEXT,
    complianceLevel TEXT,
    auditVersion TEXT,
    documentedBy TEXT
);
INSERT INTO circuit_security_audit (circuitId, auditDate, auditorName, overallScore, perimeterScore, cameraCoverageScore, accessControlScore, personnelScore, incidentResponseScore, emergencyPlanScore, cyberSecurityScore, findingsCount, recommendationsCount, followUpDate, status, remarks, region, complianceLevel, auditVersion, documentedBy) VALUES (1, '2024-01-01', 'AliceBrown', 88.5, 90.0, 85.0, 87.5, 89.0, 86.0, 88.0, 84.5, 3, 5, '2024-02-01', 'Open', 'Needs camera upgrade', 'Europe', 'Level2', 'V1.0', 'SecurityTeam');
INSERT INTO circuit_security_audit (circuitId, auditDate, auditorName, overallScore, perimeterScore, cameraCoverageScore, accessControlScore, personnelScore, incidentResponseScore, emergencyPlanScore, cyberSecurityScore, findingsCount, recommendationsCount, followUpDate, status, remarks, region, complianceLevel, auditVersion, documentedBy) VALUES (2, '2024-01-15', 'BobCarter', 92.0, 93.5, 90.0, 92.5, 94.0, 91.0, 93.0, 89.5, 1, 2, '2024-02-15', 'Closed', 'All good', 'Asia', 'Level3', 'V1.1', 'SecurityTeam');
INSERT INTO circuit_security_audit (circuitId, auditDate, auditorName, overallScore, perimeterScore, cameraCoverageScore, accessControlScore, personnelScore, incidentResponseScore, emergencyPlanScore, cyberSecurityScore, findingsCount, recommendationsCount, followUpDate, status, remarks, region, complianceLevel, auditVersion, documentedBy) VALUES (3, '2024-01-20', 'CarolDavis', 85.0, 86.0, 80.0, 84.0, 85.5, 83.0, 84.5, 81.0, 4, 6, '2024-02-20', 'Open', 'Upgrade access cards', 'NorthAmerica', 'Level2', 'V1.0', 'SecurityTeam');

-- Race eco certifications
CREATE TABLE race_eco_certifications (
    certId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    certificationBody TEXT,
    certificationLevel TEXT,
    carbonOffsetTons REAL,
    wasteDivertedPercent REAL,
    energyRenewablePercent REAL,
    waterConservedLiters REAL,
    sustainabilityScore REAL,
    complianceDate TEXT,
    expirationDate TEXT,
    auditorId INTEGER,
    notes TEXT,
    verificationMethod TEXT,
    publicAnnouncementDate TEXT,
    mediaCoverageScore REAL,
    sponsorContribution REAL,
    greenTechUsed TEXT,
    greenTransportCount INTEGER,
    carbonNeutralFlag TEXT
);
INSERT INTO race_eco_certifications (raceId, certificationBody, certificationLevel, carbonOffsetTons, wasteDivertedPercent, energyRenewablePercent, waterConservedLiters, sustainabilityScore, complianceDate, expirationDate, auditorId, notes, verificationMethod, publicAnnouncementDate, mediaCoverageScore, sponsorContribution, greenTechUsed, greenTransportCount, carbonNeutralFlag) VALUES (101, 'EcoSport', 'Gold', 120.5, 85.0, 78.5, 250000, 92.3, '2024-01-01', '2025-01-01', 4001, 'Excellent performance', 'OnsiteAudit', '2024-01-02', 88.0, 500000, 'SolarPanels', 30, 'Yes');
INSERT INTO race_eco_certifications (raceId, certificationBody, certificationLevel, carbonOffsetTons, wasteDivertedPercent, energyRenewablePercent, waterConservedLiters, sustainabilityScore, complianceDate, expirationDate, auditorId, notes, verificationMethod, publicAnnouncementDate, mediaCoverageScore, sponsorContribution, greenTechUsed, greenTransportCount, carbonNeutralFlag) VALUES (102, 'GreenRace', 'Silver', 95.0, 78.0, 70.0, 200000, 85.6, '2024-01-15', '2025-01-15', 4002, 'Good overall', 'DocumentReview', '2024-01-16', 80.5, 350000, 'WindTurbines', 20, 'No');
INSERT INTO race_eco_certifications (raceId, certificationBody, certificationLevel, carbonOffsetTons, wasteDivertedPercent, energyRenewablePercent, waterConservedLiters, sustainabilityScore, complianceDate, expirationDate, auditorId, notes, verificationMethod, publicAnnouncementDate, mediaCoverageScore, sponsorContribution, greenTechUsed, greenTransportCount, carbonNeutralFlag) VALUES (103, 'SustainMotors', 'Platinum', 150.0, 90.0, 85.0, 300000, 96.1, '2024-01-20', '2025-01-20', 4003, 'Outstanding', 'FullAudit', '2024-01-21', 92.0, 650000, 'HybridGenerators', 45, 'Yes');

-- Driver legal case records
CREATE TABLE driver_legal_cases (
    caseId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    caseNumber TEXT,
    courtName TEXT,
    filingDate TEXT,
    caseStatus TEXT,
    allegationType TEXT,
    outcome TEXT,
    judgmentAmount REAL,
    legalCounsel TEXT,
    hearingDate TEXT,
    resolutionDate TEXT,
    penaltyPoints INTEGER,
    licenseSuspensionMonths INTEGER,
    mediaCoverageScore REAL,
    publicStatement TEXT,
    settlementFlag TEXT,
    settlementAmount REAL,
    appealFlag TEXT,
    appealDate TEXT
);
INSERT INTO driver_legal_cases (driverId, caseNumber, courtName, filingDate, caseStatus, allegationType, outcome, judgmentAmount, legalCounsel, hearingDate, resolutionDate, penaltyPoints, licenseSuspensionMonths, mediaCoverageScore, publicStatement, settlementFlag, settlementAmount, appealFlag, appealDate) VALUES (10, 'C2024001', 'SupremeCourt', '2024-01-05', 'Closed', 'Doping', 'Guilty', 200000, 'LawFirmA', '2024-02-10', '2024-03-01', 5, 12, 88.5, 'Denied all allegations', 'No', 0, 'No', NULL);
INSERT INTO driver_legal_cases (driverId, caseNumber, courtName, filingDate, caseStatus, allegationType, outcome, judgmentAmount, legalCounsel, hearingDate, resolutionDate, penaltyPoints, licenseSuspensionMonths, mediaCoverageScore, publicStatement, settlementFlag, settlementAmount, appealFlag, appealDate) VALUES (22, 'C2024002', 'DistrictCourt', '2024-02-15', 'Open', 'ContractBreach', 'Pending', 0, 'LawFirmB', '2024-04-20', NULL, 0, 0, 70.0, 'Will defend vigorously', 'Yes', 150000, 'Yes', '2024-05-10');
INSERT INTO driver_legal_cases (driverId, caseNumber, courtName, filingDate, caseStatus, allegationType, outcome, judgmentAmount, legalCounsel, hearingDate, resolutionDate, penaltyPoints, licenseSuspensionMonths, mediaCoverageScore, publicStatement, settlementFlag, settlementAmount, appealFlag, appealDate) VALUES (35, 'C2024003', 'AppellateCourt', '2024-03-01', 'Closed', 'TrafficViolation', 'NotGuilty', 0, 'LawFirmC', '2024-04-05', '2024-04-15', 0, 0, 55.0, 'Statement released', 'No', 0, 'No', NULL);

-- Circuit historical incident logs
CREATE TABLE circuit_historical_incidents (
    incidentId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    incidentDate TEXT,
    incidentType TEXT,
    severity TEXT,
    description TEXT,
    casualties INTEGER,
    injuries INTEGER,
    propertyDamageCost REAL,
    responseTeamId INTEGER,
    responseTimeMinutes INTEGER,
    investigationLead TEXT,
    reportDate TEXT,
    findings TEXT,
    recommendations TEXT,
    closureDate TEXT,
    status TEXT,
    weatherCondition TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    windSpeedKph REAL
);
INSERT INTO circuit_historical_incidents (circuitId, incidentDate, incidentType, severity, description, casualties, injuries, propertyDamageCost, responseTeamId, responseTimeMinutes, investigationLead, reportDate, findings, recommendations, closureDate, status, weatherCondition, temperatureC, humidityPercent, windSpeedKph) VALUES (1, '2023-07-12', 'Fire', 'High', 'Fuel spill ignited', 0, 3, 75000, 5001, 12, 'InvestigatorA', '2023-07-20', 'Cause identified', 'Improve fuel handling', '2023-07-25', 'Closed', 'Clear', 30.5, 45, 15);
INSERT INTO circuit_historical_incidents (circuitId, incidentDate, incidentType, severity, description, casualties, injuries, propertyDamageCost, responseTeamId, responseTimeMinutes, investigationLead, reportDate, findings, recommendations, closureDate, status, weatherCondition, temperatureC, humidityPercent, windSpeedKph) VALUES (2, '2023-09-05', 'Collision', 'Medium', 'Two cars collided on straight', 0, 2, 120000, 5002, 8, 'InvestigatorB', '2023-09-12', 'Driver error', 'Add safety barriers', '2023-09-18', 'Closed', 'Rainy', 22.0, 80, 25);
INSERT INTO circuit_historical_incidents (circuitId, incidentDate, incidentType, severity, description, casualties, injuries, propertyDamageCost, responseTeamId, responseTimeMinutes, investigationLead, reportDate, findings, recommendations, closureDate, status, weatherCondition, temperatureC, humidityPercent, windSpeedKph) VALUES (3, '2023-11-20', 'MechanicalFailure', 'Low', 'Engine failure caused stoppage', 0, 0, 30000, 5003, 5, 'InvestigatorC', '2023-11-25', 'Component fatigue', 'Routine inspections', '2023-11-30', 'Closed', 'Clear', 15.2, 50, 10);

-- Team aerodynamic simulations
CREATE TABLE team_aerodynamic_simulations (
    simulationId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    circuitId INTEGER,
    simulationDate TEXT,
    windTunnelModel TEXT,
    airflowSpeed REAL,
    downforce REAL,
    dragCoefficient REAL,
    liftCoefficient REAL,
    rpmRangeStart INTEGER,
    rpmRangeEnd INTEGER,
    temperatureC REAL,
    humidityPercent REAL,
    simulationSoftware TEXT,
    softwareVersion TEXT,
    engineerId INTEGER,
    runtimeMinutes INTEGER,
    resultFilePath TEXT,
    validationScore REAL,
    notes TEXT,
    approvedFlag TEXT
);
INSERT INTO team_aerodynamic_simulations (teamId, circuitId, simulationDate, windTunnelModel, airflowSpeed, downforce, dragCoefficient, liftCoefficient, rpmRangeStart, rpmRangeEnd, temperatureC, humidityPercent, simulationSoftware, softwareVersion, engineerId, runtimeMinutes, resultFilePath, validationScore, notes, approvedFlag) VALUES (1, 1, '2024-01-10', 'WT-Alpha', 45.0, 1200.5, 0.32, 0.18, 5000, 13000, 22.0, 55, 'AeroSim', 'v3.2', 6001, 180, '/simulations/team1_2024_01_10.dat', 0.94, 'Baseline run', 'Yes');
INSERT INTO team_aerodynamic_simulations (teamId, circuitId, simulationDate, windTunnelModel, airflowSpeed, downforce, dragCoefficient, liftCoefficient, rpmRangeStart, rpmRangeEnd, temperatureC, humidityPercent, simulationSoftware, softwareVersion, engineerId, runtimeMinutes, resultFilePath, validationScore, notes, approvedFlag) VALUES (2, 2, '2024-01-12', 'WT-Beta', 48.5, 1300.0, 0.30, 0.20, 5200, 13500, 21.5, 60, 'AeroSim', 'v3.2', 6002, 200, '/simulations/team2_2024_01_12.dat', 0.96, 'Adjusted rear wing', 'Yes');
INSERT INTO team_aerodynamic_simulations (teamId, circuitId, simulationDate, windTunnelModel, airflowSpeed, downforce, dragCoefficient, liftCoefficient, rpmRangeStart, rpmRangeEnd, temperatureC, humidityPercent, simulationSoftware, softwareVersion, engineerId, runtimeMinutes, resultFilePath, validationScore, notes, approvedFlag) VALUES (3, 3, '2024-01-15', 'WT-Gamma', 46.0, 1250.8, 0.31, 0.19, 5100, 13200, 23.0, 58, 'AeroSim', 'v3.2', 6003, 190, '/simulations/team3_2024_01_15.dat', 0.93, 'Reduced front splitter', 'No');