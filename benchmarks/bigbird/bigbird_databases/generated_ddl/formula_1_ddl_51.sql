-- Visitor flow statistics for each venue per hour
CREATE TABLE venue_visitor_flow (
    visitorFlowId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    date DATE,
    hour INTEGER,
    totalVisitors INTEGER,
    maleVisitors INTEGER,
    femaleVisitors INTEGER,
    avgAge REAL,
    peakHour INTEGER,
    entryGateCount INTEGER,
    exitGateCount INTEGER,
    visitorCountNorth INTEGER,
    visitorCountSouth INTEGER,
    visitorCountEast INTEGER,
    visitorCountWest INTEGER,
    vipVisitors INTEGER,
    staffVisitors INTEGER,
    mediaVisitors INTEGER,
    sponsorVisitors INTEGER,
    weatherCondition TEXT,
    transportMode TEXT,
    parkingUtilization REAL,
    securityIncidents INTEGER,
    notes TEXT
);

INSERT INTO venue_visitor_flow (venueId, date, hour, totalVisitors, maleVisitors, femaleVisitors, avgAge, peakHour, entryGateCount, exitGateCount, visitorCountNorth, visitorCountSouth, visitorCountEast, visitorCountWest, vipVisitors, staffVisitors, mediaVisitors, sponsorVisitors, weatherCondition, transportMode, parkingUtilization, securityIncidents, notes) VALUES (101, '2024-03-01', 10, 5000, 2600, 2400, 34.5, 18, 5, 5, 1200, 1300, 1100, 1400, 200, 150, 100, 300, 'Sunny', 'Car', 0.78, 0, 'Normal day');
INSERT INTO venue_visitor_flow (venueId, date, hour, totalVisitors, maleVisitors, femaleVisitors, avgAge, peakHour, entryGateCount, exitGateCount, visitorCountNorth, visitorCountSouth, visitorCountEast, visitorCountWest, vipVisitors, staffVisitors, mediaVisitors, sponsorVisitors, weatherCondition, transportMode, parkingUtilization, securityIncidents, notes) VALUES (102, '2024-03-01', 14, 7200, 3500, 3700, 33.2, 14, 7, 7, 1800, 1700, 1800, 1900, 350, 200, 120, 400, 'Cloudy', 'Bus', 0.85, 1, 'Minor incident at gate');
INSERT INTO venue_visitor_flow (venueId, date, hour, totalVisitors, maleVisitors, femaleVisitors, avgAge, peakHour, entryGateCount, exitGateCount, visitorCountNorth, visitorCountSouth, visitorCountEast, visitorCountWest, vipVisitors, staffVisitors, mediaVisitors, sponsorVisitors, weatherCondition, transportMode, parkingUtilization, securityIncidents, notes) VALUES (103, '2024-03-02', 20, 3000, 1500, 1500, 35.0, 20, 3, 3, 800, 700, 600, 900, 100, 80, 50, 150, 'Rainy', 'Train', 0.65, 0, 'Rain reduced attendance');

-- Analytics dashboard snapshot for each team per season
CREATE TABLE team_analytics_dashboard (
    dashboardId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    seasonYear INTEGER,
    winRate REAL,
    podiumRate REAL,
    avgLapTime REAL,
    avgPitStopTime REAL,
    totalPoints INTEGER,
    fastestLapCount INTEGER,
    reliabilityScore REAL,
    driverConsistencyScore REAL,
    constructorReliabilityScore REAL,
    fuelEfficiency REAL,
    tyreWearScore REAL,
    aerodynamicsScore REAL,
    strategySuccessRate REAL,
    mechanicalDNFs INTEGER,
    strategicDNFs INTEGER,
    championshipPosition INTEGER,
    marketingSpend REAL,
    fanEngagementScore REAL,
    socialMediaMentions INTEGER,
    sponsorshipValue REAL,
    notes TEXT
);

INSERT INTO team_analytics_dashboard (teamId, seasonYear, winRate, podiumRate, avgLapTime, avgPitStopTime, totalPoints, fastestLapCount, reliabilityScore, driverConsistencyScore, constructorReliabilityScore, fuelEfficiency, tyreWearScore, aerodynamicsScore, strategySuccessRate, mechanicalDNFs, strategicDNFs, championshipPosition, marketingSpend, fanEngagementScore, socialMediaMentions, sponsorshipValue, notes) VALUES (1, 2024, 0.45, 0.60, 89.342, 2.85, 312, 12, 0.92, 0.88, 0.94, 3.5, 0.81, 0.87, 0.78, 1, 0, 3, 4.2, 78.5, 15000, 12.5, 'Top three team');
INSERT INTO team_analytics_dashboard (teamId, seasonYear, winRate, podiumRate, avgLapTime, avgPitStopTime, totalPoints, fastestLapCount, reliabilityScore, driverConsistencyScore, constructorReliabilityScore, fuelEfficiency, tyreWearScore, aerodynamicsScore, strategySuccessRate, mechanicalDNFs, strategicDNFs, championshipPosition, marketingSpend, fanEngagementScore, socialMediaMentions, sponsorshipValue, notes) VALUES (2, 2024, 0.30, 0.45, 90.112, 3.01, 245, 8, 0.88, 0.81, 0.90, 3.8, 0.78, 0.83, 0.70, 2, 1, 7, 3.5, 65.2, 11000, 9.3, 'Midfield performance');
INSERT INTO team_analytics_dashboard (teamId, seasonYear, winRate, podiumRate, avgLapTime, avgPitStopTime, totalPoints, fastestLapCount, reliabilityScore, driverConsistencyScore, constructorReliabilityScore, fuelEfficiency, tyreWearScore, aerodynamicsScore, strategySuccessRate, mechanicalDNFs, strategicDNFs, championshipPosition, marketingSpend, fanEngagementScore, socialMediaMentions, sponsorshipValue, notes) VALUES (3, 2024, 0.10, 0.20, 91.540, 3.25, 123, 3, 0.80, 0.70, 0.85, 4.2, 0.70, 0.75, 0.60, 3, 2, 12, 2.1, 40.0, 5000, 5.1, 'Developing team');

-- Fuel quality inspection records per race
CREATE TABLE fuel_quality_inspections (
    inspectionId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    fuelSupplierId INTEGER,
    fuelType TEXT,
    octaneRating REAL,
    ethanolContent REAL,
    sulfurContent REAL,
    temperatureC REAL,
    density REAL,
    inspectionDate DATE,
    inspectedBy TEXT,
    passFail TEXT,
    notes TEXT,
    voltage REAL,
    flowRate REAL,
    batchNumber TEXT,
    containerId INTEGER,
    storageTemperature REAL,
    impurityLevel REAL,
    corrosionPotential REAL,
    safetyRating INTEGER
);

INSERT INTO fuel_quality_inspections (raceId, fuelSupplierId, fuelType, octaneRating, ethanolContent, sulfurContent, temperatureC, density, inspectionDate, inspectedBy, passFail, notes, voltage, flowRate, batchNumber, containerId, storageTemperature, impurityLevel, corrosionPotential, safetyRating) VALUES (1001, 200, 'Premium', 102.5, 0.0, 0.001, 25.0, 0.745, '2024-03-01', 'JohnDoe', 'Pass', 'All parameters within limits', 12.5, 150.0, 'BATCH001', 3001, 22.0, 0.02, 0.5, 9);
INSERT INTO fuel_quality_inspections (raceId, fuelSupplierId, fuelType, octaneRating, ethanolContent, sulfurContent, temperatureC, density, inspectionDate, inspectedBy, passFail, notes, voltage, flowRate, batchNumber, containerId, storageTemperature, impurityLevel, corrosionPotential, safetyRating) VALUES (1002, 201, 'Standard', 98.0, 5.0, 0.002, 27.0, 0.740, '2024-03-02', 'JaneSmith', 'Pass', 'Ethanol within allowed range', 12.2, 148.0, 'BATCH002', 3002, 23.0, 0.03, 0.6, 8);
INSERT INTO fuel_quality_inspections (raceId, fuelSupplierId, fuelType, octaneRating, ethanolContent, sulfurContent, temperatureC, density, inspectionDate, inspectedBy, passFail, notes, voltage, flowRate, batchNumber, containerId, storageTemperature, impurityLevel, corrosionPotential, safetyRating) VALUES (1003, 202, 'EcoBlend', 95.0, 10.0, 0.0015, 24.5, 0.738, '2024-03-03', 'MikeLee', 'Fail', 'Sulfur exceeds limit', 11.9, 145.0, 'BATCH003', 3003, 21.5, 0.05, 0.8, 5);

-- Environmental noise mitigation projects per circuit
CREATE TABLE environmental_noise_mitigation (
    mitigationId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    projectName TEXT,
    startDate DATE,
    endDate DATE,
    noiseReductionDb REAL,
    costMillion REAL,
    contractor TEXT,
    status TEXT,
    affectedArea TEXT,
    sensorsDeployed INTEGER,
    avgNoiseBefore REAL,
    avgNoiseAfter REAL,
    communityFeedbackScore REAL,
    regulatoryApprovalDate DATE,
    mitigationTech TEXT,
    equipmentCount INTEGER,
    maintenanceSchedule TEXT,
    notes TEXT,
    fundingSource TEXT,
    projectLead TEXT
);

INSERT INTO environmental_noise_mitigation (circuitId, projectName, startDate, endDate, noiseReductionDb, costMillion, contractor, status, affectedArea, sensorsDeployed, avgNoiseBefore, avgNoiseAfter, communityFeedbackScore, regulatoryApprovalDate, mitigationTech, equipmentCount, maintenanceSchedule, notes, fundingSource, projectLead) VALUES (10, 'Barrier Expansion', '2023-06-01', '2023-12-15', 8.5, 2.3, 'AcousticWorks', 'Completed', 'Northwest', 12, 78.0, 69.5, 4.2, '2023-05-20', 'Acoustic Barriers', 30, 'Annual', 'Successful reduction', 'City Grant', 'AliceBrown');
INSERT INTO environmental_noise_mitigation (circuitId, projectName, startDate, endDate, noiseReductionDb, costMillion, contractor, status, affectedArea, sensorsDeployed, avgNoiseBefore, avgNoiseAfter, communityFeedbackScore, regulatoryApprovalDate, mitigationTech, equipmentCount, maintenanceSchedule, notes, fundingSource, projectLead) VALUES (11, 'Tree Planting Initiative', '2024-01-10', '2024-09-30', 3.2, 0.9, 'GreenEarth', 'InProgress', 'East Side', 8, 72.0, 68.8, 3.8, '2023-12-15', 'Vegetation', 50, 'Biannual', 'Ongoing', 'Corporate Sponsorship', 'BobSmith');
INSERT INTO environmental_noise_mitigation (circuitId, projectName, startDate, endDate, noiseReductionDb, costMillion, contractor, status, affectedArea, sensorsDeployed, avgNoiseBefore, avgNoiseAfter, communityFeedbackScore, regulatoryApprovalDate, mitigationTech, equipmentCount, maintenanceSchedule, notes, fundingSource, projectLead) VALUES (12, 'Sound Absorbing Pavement', '2024-03-01', '2024-08-20', 5.1, 1.5, 'TechPave', 'Planned', 'Grandstand', 6, 80.0, 74.9, 4.0, '2024-02-10', 'Porous Asphalt', 20, 'Quarterly', 'Design phase', 'EU Funds', 'ClaraLee');

-- Real‑time telemetry alerts generated during races
CREATE TABLE race_telemetry_alerts (
    alertId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    driverId INTEGER,
    timestamp TEXT,
    alertType TEXT,
    severity INTEGER,
    description TEXT,
    resolved INTEGER,
    resolutionTime INTEGER,
    telemetrySource TEXT,
    sensorId INTEGER,
    value REAL,
    threshold REAL,
    unit TEXT,
    channel TEXT,
    priority INTEGER,
    acknowledgedBy TEXT,
    acknowledgmentTime TEXT,
    actionTaken TEXT,
    notes TEXT,
    autoGenerated INTEGER
);

INSERT INTO race_telemetry_alerts (raceId, driverId, timestamp, alertType, severity, description, resolved, resolutionTime, telemetrySource, sensorId, value, threshold, unit, channel, priority, acknowledgedBy, acknowledgmentTime, actionTaken, notes, autoGenerated) VALUES (1001, 201, '2024-03-01 12:15:32', 'EngineTempHigh', 4, 'Engine temperature exceeds 120C', 0, NULL, 'EngineControl', 45, 122.5, 120.0, 'C', 'Engine', 1, 'TeamLead', '2024-03-01 12:16:00', 'Reduced engine mapping', 'First occurrence', 1);
INSERT INTO race_telemetry_alerts (raceId, driverId, timestamp, alertType, severity, description, resolved, resolutionTime, telemetrySource, sensorId, value, threshold, unit, channel, priority, acknowledgedBy, acknowledgmentTime, actionTaken, notes, autoGenerated) VALUES (1002, 202, '2024-03-02 14:07:10', 'BrakeWearLow', 3, 'Brake pad wear below 10%', 1, 30, 'BrakeSystem', 12, 9.2, 10.0, '%', 'Brakes', 2, 'PitCrew', '2024-03-02 14:07:45', 'Replaced brake pads', 'Issue resolved quickly', 1);
INSERT INTO race_telemetry_alerts (raceId, driverId, timestamp, alertType, severity, description, resolved, resolutionTime, telemetrySource, sensorId, value, threshold, unit, channel, priority, acknowledgedBy, acknowledgmentTime, actionTaken, notes, autoGenerated) VALUES (1003, 203, '2024-03-03 09:55:05', 'TirePressureDrop', 2, 'Front left tire pressure dropped', 0, NULL, 'TirePressure', 7, 18.0, 20.0, 'psi', 'Tires', 3, NULL, NULL, 'Monitoring', 'Potential leak', 1);

-- Driver safety training session logs
CREATE TABLE driver_safety_training_sessions (
    sessionId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    sessionDate DATE,
    trainerId INTEGER,
    durationMinutes INTEGER,
    moduleName TEXT,
    complianceScore REAL,
    safetyGearProvided INTEGER,
    practicalExercises INTEGER,
    theoryScore REAL,
    videoReview INTEGER,
    feedback TEXT,
    certificationIssued INTEGER,
    certificationNumber TEXT,
    location TEXT,
    weatherCondition TEXT,
    attendance INTEGER,
    remarks TEXT,
    nextDueDate DATE,
    sponsorId INTEGER,
    cost REAL
);

INSERT INTO driver_safety_training_sessions (driverId, sessionDate, trainerId, durationMinutes, moduleName, complianceScore, safetyGearProvided, practicalExercises, theoryScore, videoReview, feedback, certificationIssued, certificationNumber, location, weatherCondition, attendance, remarks, nextDueDate, sponsorId, cost) VALUES (201, '2024-02-15', 301, 180, 'HighSpeedEvacuation', 0.95, 1, 4, 88.0, 1, 'Excellent engagement', 1, 'CERT001', 'HQ Training Center', 'Clear', 1, 'No issues', '2025-02-15', 401, 2500);
INSERT INTO driver_safety_training_sessions (driverId, sessionDate, trainerId, durationMinutes, moduleName, complianceScore, safetyGearProvided, practicalExercises, theoryScore, videoReview, feedback, certificationIssued, certificationNumber, location, weatherCondition, attendance, remarks, nextDueDate, sponsorId, cost) VALUES (202, '2024-03-10', 302, 150, 'FireResponse', 0.89, 1, 3, 81.5, 1, 'Good but needs faster reaction', 1, 'CERT002', 'Remote Facility', 'Cloudy', 1, 'Minor delay in drill', '2025-03-10', 402, 2100);
INSERT INTO driver_safety_training_sessions (driverId, sessionDate, trainerId, durationMinutes, moduleName, complianceScore, safetyGearProvided, practicalExercises, theoryScore, videoReview, feedback, certificationIssued, certificationNumber, location, weatherCondition, attendance, remarks, nextDueDate, sponsorId, cost) VALUES (203, '2024-01-20', 303, 200, 'MedicalEmergency', 0.92, 1, 5, 85.0, 1, 'Very thorough', 1, 'CERT003', 'Main Campus', 'Sunny', 1, 'All equipment functional', '2025-01-20', 403, 3000);

-- Lighting schedule for circuits
CREATE TABLE circuit_lighting_schedule (
    scheduleId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    date DATE,
    startTime TEXT,
    endTime TEXT,
    lightingMode TEXT,
    intensityLevel INTEGER,
    zonesLit INTEGER,
    energyConsumptionKWh REAL,
    maintenanceFlag INTEGER,
    notes TEXT,
    operatorId INTEGER,
    weatherImpact TEXT,
    emergencyBackupUsed INTEGER,
    backupDuration INTEGER,
    lampType TEXT,
    lampCount INTEGER,
    controlSystemVersion TEXT,
    scheduledBy TEXT,
    approvalDate DATE,
    cost REAL
);

INSERT INTO circuit_lighting_schedule (circuitId, date, startTime, endTime, lightingMode, intensityLevel, zonesLit, energyConsumptionKWh, maintenanceFlag, notes, operatorId, weatherImpact, emergencyBackupUsed, backupDuration, lampType, lampCount, controlSystemVersion, scheduledBy, approvalDate, cost) VALUES (10, '2024-04-01', '18:00', '23:00', 'EveningRace', 85, 5, 1200.5, 0, 'Standard setup', 501, 'Clear', 0, NULL, 'LED', 200, 'v3.2', 'JohnDoe', '2024-03-20', 15000);
INSERT INTO circuit_lighting_schedule (circuitId, date, startTime, endTime, lightingMode, intensityLevel, zonesLit, energyConsumptionKWh, maintenanceFlag, notes, operatorId, weatherImpact, emergencyBackupUsed, backupDuration, lampType, lampCount, controlSystemVersion, scheduledBy, approvalDate, cost) VALUES (11, '2024-04-15', '17:30', '22:30', 'NightPractice', 70, 4, 950.0, 1, 'Lamp #12 replaced', 502, 'Rainy', 1, 45, 'MetalHalide', 180, 'v3.2', 'JaneSmith', '2024-04-01', 13000);
INSERT INTO circuit_lighting_schedule (circuitId, date, startTime, endTime, lightingMode, intensityLevel, zonesLit, energyConsumptionKWh, maintenanceFlag, notes, operatorId, weatherImpact, emergencyBackupUsed, backupDuration, lampType, lampCount, controlSystemVersion, scheduledBy, approvalDate, cost) VALUES (12, '2024-05-05', '19:00', '00:00', 'Qualifying', 90, 6, 1400.8, 0, 'High intensity for night qualifying', 503, 'Clear', 0, NULL, 'LED', 220, 'v3.3', 'MikeLee', '2024-04-20', 17000);

-- Sponsor brand activation history
CREATE TABLE sponsor_brand_activation_history (
    activationId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    eventId INTEGER,
    activationDate DATE,
    activationType TEXT,
    location TEXT,
    audienceReach INTEGER,
    engagementScore REAL,
    budget REAL,
    productProvided TEXT,
    staffCount INTEGER,
    mediaImpressions INTEGER,
    socialMediaPosts INTEGER,
    hashtagsUsed TEXT,
    leadGenerated INTEGER,
    salesImpact REAL,
    notes TEXT,
    complianceStatus TEXT,
    approvalOfficer TEXT,
    contractReference TEXT,
    durationHours INTEGER
);

INSERT INTO sponsor_brand_activation_history (sponsorId, eventId, activationDate, activationType, location, audienceReach, engagementScore, budget, productProvided, staffCount, mediaImpressions, socialMediaPosts, hashtagsUsed, leadGenerated, salesImpact, notes, complianceStatus, approvalOfficer, contractReference, durationHours) VALUES (401, 1001, '2024-03-01', 'PaddockDisplay', 'Paddock Zone A', 15000, 78.5, 50000, 'EnergyDrink', 8, 200000, 150, '#RaceFuel', 120, 250000, 'High visibility booth', 'Approved', 'LauraKim', 'CTR-2023-01', 8);
INSERT INTO sponsor_brand_activation_history (sponsorId, eventId, activationDate, activationType, location, audienceReach, engagementScore, budget, productProvided, staffCount, mediaImpressions, socialMediaPosts, hashtagsUsed, leadGenerated, salesImpact, notes, complianceStatus, approvalOfficer, contractReference, durationHours) VALUES (402, 1002, '2024-04-10', 'VirtualReality', 'Fan Zone B', 12000, 85.0, 75000, 'VRHeadset', 5, 250000, 200, '#VRExperience', 200, 300000, 'Interactive VR demo', 'Approved', 'MarkLee', 'CTR-2023-02', 6);
INSERT INTO sponsor_brand_activation_history (sponsorId, eventId, activationDate, activationType, location, audienceReach, engagementScore, budget, productProvided, staffCount, mediaImpressions, socialMediaPosts, hashtagsUsed, leadGenerated, salesImpact, notes, complianceStatus, approvalOfficer, contractReference, durationHours) VALUES (403, 1003, '2024-05-05', 'ProductSampling', 'Grandstand C', 18000, 70.2, 40000, 'EnergyBar', 10, 180000, 120, '#FuelUp', 150, 220000, 'Free samples distributed', 'Approved', 'SaraNg', 'CTR-2023-03', 4);

-- Media content curation records
CREATE TABLE media_content_curation (
    curationId INTEGER PRIMARY KEY AUTOINCREMENT,
    mediaId INTEGER,
    curatorId INTEGER,
    curationDate DATE,
    category TEXT,
    subcategory TEXT,
    relevanceScore REAL,
    tags TEXT,
    description TEXT,
    source TEXT,
    licenseType TEXT,
    usageRights TEXT,
    durationSeconds INTEGER,
    fileSizeMB REAL,
    resolution TEXT,
    format TEXT,
    author TEXT,
    approverId INTEGER,
    approvalDate DATE,
    notes TEXT,
    status TEXT
);

INSERT INTO media_content_curation (mediaId, curatorId, curationDate, category, subcategory, relevanceScore, tags, description, source, licenseType, usageRights, durationSeconds, fileSizeMB, resolution, format, author, approverId, approvalDate, notes, status) VALUES (10001, 601, '2024-03-02', 'Video', 'RaceHighlights', 0.92, 'fast,win,team', 'Highlights of race 5', 'CameraCrew', 'Standard', 'Broadcast', 180, 250.5, '1920x1080', 'MP4', 'JohnDoe', 701, '2024-03-05', 'Ready for broadcast', 'Approved');
INSERT INTO media_content_curation (mediaId, curatorId, curationDate, category, subcategory, relevanceScore, tags, description, source, licenseType, usageRights, durationSeconds, fileSizeMB, resolution, format, author, approverId, approvalDate, notes, status) VALUES (10002, 602, '2024-04-01', 'Image', 'PitLane', 0.88, 'pit,stop,team', 'Pit stop action shot', 'PhotoTeam', 'CreativeCommons', 'Web', 0, 15.2, '3840x2160', 'JPEG', 'JaneSmith', 702, '2024-04-03', 'Used in social media', 'Approved');
INSERT INTO media_content_curation (mediaId, curatorId, curationDate, category, subcategory, relevanceScore, tags, description, source, licenseType, usageRights, durationSeconds, fileSizeMB, resolution, format, author, approverId, approvalDate, notes, status) VALUES (10003, 603, '2024-05-10', 'Audio', 'Interview', 0.95, 'driver,interview,postrace', 'Post‑race driver interview', 'FieldRecorder', 'Standard', 'Broadcast', 300, 45.0, 'N/A', 'WAV', 'MikeLee', 703, '2024-05-12', 'Scheduled for podcast', 'Approved');

-- Parking utilization statistics for venues
CREATE TABLE logistics_parking_utilization (
    utilizationId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    date DATE,
    totalSpaces INTEGER,
    occupiedSpaces INTEGER,
    reservedSpaces INTEGER,
    vipSpaces INTEGER,
    staffSpaces INTEGER,
    overflowSpaces INTEGER,
    occupancyRate REAL,
    averageParkingDurationMinutes INTEGER,
    peakHour INTEGER,
    lowestHour INTEGER,
    revenue REAL,
    securityIncidents INTEGER,
    maintenanceIssues INTEGER,
    weatherImpact TEXT,
    notes TEXT,
    updatedBy INTEGER,
    updateTimestamp TEXT,
    forecastOccupancyRate REAL
);

INSERT INTO logistics_parking_utilization (venueId, date, totalSpaces, occupiedSpaces, reservedSpaces, vipSpaces, staffSpaces, overflowSpaces, occupancyRate, averageParkingDurationMinutes, peakHour, lowestHour, revenue, securityIncidents, maintenanceIssues, weatherImpact, notes, updatedBy, updateTimestamp, forecastOccupancyRate) VALUES (101, '2024-03-01', 5000, 4100, 300, 150, 200, 50, 0.82, 120, 18, 8, 250000, 0, 2, 'Sunny', 'Normal operation', 801, '2024-03-02 08:00', 0.85);
INSERT INTO logistics_parking_utilization (venueId, date, totalSpaces, occupiedSpaces, reservedSpaces, vipSpaces, staffSpaces, overflowSpaces, occupancyRate, averageParkingDurationMinutes, peakHour, lowestHour, revenue, securityIncidents, maintenanceIssues, weatherImpact, notes, updatedBy, updateTimestamp, forecastOccupancyRate) VALUES (102, '2024-03-01', 6000, 5400, 400, 200, 250, 80, 0.90, 115, 14, 6, 300000, 1, 1, 'Cloudy', 'Slight delay at entry', 802, '2024-03-02 08:15', 0.88);
INSERT INTO logistics_parking_utilization (venueId, date, totalSpaces, occupiedSpaces, reservedSpaces, vipSpaces, staffSpaces, overflowSpaces, occupancyRate, averageParkingDurationMinutes, peakHour, lowestHour, revenue, securityIncidents, maintenanceIssues, weatherImpact, notes, updatedBy, updateTimestamp, forecastOccupancyRate) VALUES (103, '2024-03-02', 4500, 2800, 250, 100, 180, 30, 0.62, 130, 20, 10, 180000, 0, 3, 'Rainy', 'Reduced access due to rain', 803, '2024-03-03 07:50', 0.70);