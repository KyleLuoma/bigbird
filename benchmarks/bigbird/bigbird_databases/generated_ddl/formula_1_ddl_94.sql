-- Track Acoustic Profile
CREATE TABLE track_acoustic_profile (
    profileId INTEGER PRIMARY KEY AUTOINCREMENT,
    trackId INTEGER,
    soundLevelAvg REAL,
    soundLevelMax REAL,
    frequencyLow REAL,
    frequencyHigh REAL,
    measurementDate DATE,
    equipmentUsed TEXT,
    technician TEXT,
    notes TEXT,
    windSpeed REAL,
    humidity REAL,
    temperature REAL,
    pressure REAL,
    locationZone TEXT,
    dataSource TEXT,
    calibrationDate DATE,
    analyst TEXT,
    qualityScore REAL,
    sampleCount INTEGER,
    recordingDuration INTEGER,
    complianceStatus TEXT
);
INSERT INTO track_acoustic_profile (trackId, soundLevelAvg, soundLevelMax, frequencyLow, frequencyHigh, measurementDate, equipmentUsed, technician, notes, windSpeed, humidity, temperature, pressure, locationZone, dataSource, calibrationDate, analyst, qualityScore, sampleCount, recordingDuration, complianceStatus) VALUES (1, 85.5, 110.2, 20.0, 20000.0, '2023-06-15', 'SoundMeterX', 'JohnDoe', 'Initial measurement', 5.2, 45.0, 22.3, 1013.2, 'North', 'Internal', '2023-06-10', 'AliceSmith', 98.7, 1200, 3600, 'Compliant');
INSERT INTO track_acoustic_profile (trackId, soundLevelAvg, soundLevelMax, frequencyLow, frequencyHigh, measurementDate, equipmentUsed, technician, notes, windSpeed, humidity, temperature, pressure, locationZone, dataSource, calibrationDate, analyst, qualityScore, sampleCount, recordingDuration, complianceStatus) VALUES (2, 78.3, 105.0, 15.0, 18000.0, '2023-07-01', 'AcousticPro', 'MarkLee', 'Summer check', 3.8, 50.0, 24.0, 1012.0, 'South', 'External', '2023-06-28', 'BobBrown', 96.4, 1100, 3400, 'Compliant');
INSERT INTO track_acoustic_profile (trackId, soundLevelAvg, soundLevelMax, frequencyLow, frequencyHigh, measurementDate, equipmentUsed, technician, notes, windSpeed, humidity, temperature, pressure, locationZone, dataSource, calibrationDate, analyst, qualityScore, sampleCount, recordingDuration, complianceStatus) VALUES (3, 82.1, 108.7, 18.0, 19000.0, '2023-08-20', 'NoiseAnalyzer', 'SaraKim', 'Post‑rain measurement', 6.0, 70.0, 20.5, 1011.5, 'East', 'Internal', '2023-08-18', 'TomWhite', 97.2, 1150, 3500, 'Compliant');

-- Media Licensing Agreements
CREATE TABLE media_licensing_agreements (
    agreementId INTEGER PRIMARY KEY AUTOINCREMENT,
    mediaCompany TEXT,
    contentTitle TEXT,
    licenseStartDate DATE,
    licenseEndDate DATE,
    territory TEXT,
    exclusiveFlag TEXT,
    feeAmount REAL,
    paymentTerms TEXT,
    renewalOption TEXT,
    contactPerson TEXT,
    contactEmail TEXT,
    agreementStatus TEXT,
    notes TEXT,
    contractFilePath TEXT,
    approvalDate DATE,
    signedBy TEXT,
    versionNumber INTEGER,
    auditTrail TEXT,
    royaltyRate REAL,
    distributionChannel TEXT
);
INSERT INTO media_licensing_agreements (mediaCompany, contentTitle, licenseStartDate, licenseEndDate, territory, exclusiveFlag, feeAmount, paymentTerms, renewalOption, contactPerson, contactEmail, agreementStatus, notes, contractFilePath, approvalDate, signedBy, versionNumber, auditTrail, royaltyRate, distributionChannel) VALUES ('GlobalMedia', 'RaceHighlights2023', '2023-01-01', '2025-12-31', 'Worldwide', 'Yes', 250000.00, 'Net30', 'Auto', 'EmmaClark', 'emma.clark@globalmedia.com', 'Active', 'First license', '/contracts/gh2023.pdf', '2023-01-02', 'JohnMiller', 1, 'InitialCreation', 5.0, 'Streaming');
INSERT INTO media_licensing_agreements (mediaCompany, contentTitle, licenseStartDate, licenseEndDate, territory, exclusiveFlag, feeAmount, paymentTerms, renewalOption, contactPerson, contactEmail, agreementStatus, notes, contractFilePath, approvalDate, signedBy, versionNumber, auditTrail, royaltyRate, distributionChannel) VALUES ('SportNet', 'DriverInterviewSeries', '2022-05-15', '2024-05-14', 'EU', 'No', 120000.00, 'Net45', 'Manual', 'LiamOwen', 'liam.owen@sportnet.com', 'Pending', 'Awaiting signatures', '/contracts/si2022.pdf', '2022-05-10', 'NinaPerez', 2, 'Revision1', 3.5, 'Broadcast');
INSERT INTO media_licensing_agreements (mediaCompany, contentTitle, licenseStartDate, licenseEndDate, territory, exclusiveFlag, feeAmount, paymentTerms, renewalOption, contactPerson, contactEmail, agreementStatus, notes, contractFilePath, approvalDate, signedBy, versionNumber, auditTrail, royaltyRate, distributionChannel) VALUES ('FastTV', 'PitLaneLive', '2024-02-01', '2026-01-31', 'NorthAmerica', 'Yes', 340000.00, 'Net60', 'Auto', 'OliviaChen', 'olivia.chen@fasttv.com', 'Active', 'Renewed 2024', '/contracts/pl2024.pdf', '2024-01-28', 'RajPatel', 3, 'Renewal2024', 4.2, 'Cable');

-- Sponsor Influencer Metrics
CREATE TABLE sponsor_influencer_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    influencerId INTEGER,
    campaignName TEXT,
    platform TEXT,
    followerCount INTEGER,
    engagementRate REAL,
    impressions INTEGER,
    clicks INTEGER,
    conversionRate REAL,
    costPerClick REAL,
    startDate DATE,
    endDate DATE,
    contentType TEXT,
    sentimentScore REAL,
    videoViews INTEGER,
    storyViews INTEGER,
    postDate DATE,
    contractId INTEGER,
    payoutAmount REAL,
    notes TEXT
);
INSERT INTO sponsor_influencer_metrics (sponsorId, influencerId, campaignName, platform, followerCount, engagementRate, impressions, clicks, conversionRate, costPerClick, startDate, endDate, contentType, sentimentScore, videoViews, storyViews, postDate, contractId, payoutAmount, notes) VALUES (101, 501, 'TurboBoostLaunch', 'Instagram', 250000, 4.5, 800000, 12000, 1.5, 0.25, '2023-03-01', '2023-03-31', 'Video', 0.92, 150000, 50000, '2023-03-15', 3001, 18000.00, 'High engagement');
INSERT INTO sponsor_influencer_metrics (sponsorId, influencerId, campaignName, platform, followerCount, engagementRate, impressions, clicks, conversionRate, costPerClick, startDate, endDate, contentType, sentimentScore, videoViews, storyViews, postDate, contractId, payoutAmount, notes) VALUES (102, 502, 'EcoTyreAwareness', 'TikTok', 180000, 6.2, 600000, 18000, 2.0, 0.30, '2023-04-10', '2023-04-20', 'Short', 0.88, 200000, 80000, '2023-04-15', 3002, 22000.00, 'Positive sentiment');
INSERT INTO sponsor_influencer_metrics (sponsorId, influencerId, campaignName, platform, followerCount, engagementRate, impressions, clicks, conversionRate, costPerClick, startDate, endDate, contentType, sentimentScore, videoViews, storyViews, postDate, contractId, payoutAmount, notes) VALUES (103, 503, 'FuelSaveDrive', 'YouTube', 320000, 3.8, 1000000, 25000, 2.5, 0.35, '2023-05-05', '2023-05-25', 'LongForm', 0.81, 350000, 120000, '2023-05-20', 3003, 30000.00, 'Steady performance');

-- Venue Waste Reduction Projects
CREATE TABLE venue_waste_reduction_projects (
    projectId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    projectName TEXT,
    startDate DATE,
    endDate DATE,
    wasteType TEXT,
    reductionTarget REAL,
    actualReduction REAL,
    measurementMethod TEXT,
    responsibleTeam TEXT,
    budget REAL,
    fundingSource TEXT,
    status TEXT,
    description TEXT,
    stakeholderEngagement TEXT,
    carbonSavings REAL,
    recyclablePercentage REAL,
    hazardousWasteHandled REAL,
    reportingFrequency TEXT,
    lastReportDate DATE,
    notes TEXT
);
INSERT INTO venue_waste_reduction_projects (venueId, projectName, startDate, endDate, wasteType, reductionTarget, actualReduction, measurementMethod, responsibleTeam, budget, fundingSource, status, description, stakeholderEngagement, carbonSavings, recyclablePercentage, hazardousWasteHandled, reportingFrequency, lastReportDate, notes) VALUES (10, 'PlasticsZero', '2022-01-01', '2022-12-31', 'Plastic', 30.0, 28.5, 'WeightScale', 'SustainabilityTeam', 50000.00, 'Corporate', 'Completed', 'Eliminate single use plastics', 'All vendors', 120.0, 85.0, 0.0, 'Quarterly', '2022-12-15', 'Met most targets');
INSERT INTO venue_waste_reduction_projects (venueId, projectName, startDate, endDate, wasteType, reductionTarget, actualReduction, measurementMethod, responsibleTeam, budget, fundingSource, status, description, stakeholderEngagement, carbonSavings, recyclablePercentage, hazardousWasteHandled, reportingFrequency, lastReportDate, notes) VALUES (11, 'FoodWasteCompost', '2023-03-01', '2024-02-28', 'Organic', 40.0, 35.0, 'VolumeMeter', 'OperationsTeam', 75000.00, 'Grant', 'Ongoing', 'Compost food waste from concessions', 'Catering partners', 200.0, 70.0, 0.0, 'Monthly', '2023-11-30', 'Improving collection bins');
INSERT INTO venue_waste_reduction_projects (venueId, projectName, startDate, endDate, wasteType, reductionTarget, actualReduction, measurementMethod, responsibleTeam, budget, fundingSource, status, description, stakeholderEngagement, carbonSavings, recyclablepercentage, hazardouswastehandled, reportingfrequency, lastreportdate, notes) VALUES (12, 'ElectronicRecycling', '2023-06-15', '2024-06-14', 'E‑Waste', 25.0, 20.0, 'ItemCount', 'FacilitiesTeam', 60000.00, 'Sponsor', 'Planned', 'Collect and recycle old electronics', 'Tech sponsors', 150.0, 60.0, 0.0, 'Biannual', '2023-12-01', 'Partnership with recycling firm');

-- Driver Cybersecurity Training
CREATE TABLE driver_cybersecurity_training (
    trainingId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    trainingDate DATE,
    trainerName TEXT,
    moduleTitle TEXT,
    durationMinutes INTEGER,
    completionStatus TEXT,
    score REAL,
    certificationId TEXT,
    renewalDueDate DATE,
    notes TEXT,
    trainingLocation TEXT,
    technologyUsed TEXT,
    dataPrivacyLevel TEXT,
    phishingSimulatedScore REAL,
    deviceCompliance TEXT,
    policyAcknowledged TEXT,
    feedbackScore REAL,
    trainingVersion TEXT,
    sponsorId INTEGER,
    externalProvider TEXT
);
INSERT INTO driver_cybersecurity_training (driverId, trainingDate, trainerName, moduleTitle, durationMinutes, completionStatus, score, certificationId, renewalDueDate, notes, trainingLocation, technologyUsed, dataPrivacyLevel, phishingSimulatedScore, deviceCompliance, policyAcknowledged, feedbackScore, trainingVersion, sponsorId, externalProvider) VALUES (201, '2023-02-10', 'CyberSecTeam', 'Secure Communication', 90, 'Completed', 92.5, 'CERT2023A', '2025-02-10', 'Good participation', 'TeamHQ', 'VPN', 'High', 95.0, 'Yes', 'Yes', 4.8, 'v1.2', 101, 'SecureTech');
INSERT INTO driver_cybersecurity_training (driverId, trainingDate, trainerName, moduleTitle, durationMinutes, completionStatus, score, certificationId, renewalDueDate, notes, trainingLocation, technologyUsed, dataPrivacyLevel, phishingSimulatedScore, deviceCompliance, policyAcknowledged, feedbackScore, trainingVersion, sponsorId, externalProvider) VALUES (202, '2023-03-05', 'InfoSecGroup', 'Data Protection Basics', 75, 'Completed', 88.0, 'CERT2023B', '2025-03-05', 'Needs follow‑up', 'Remote', 'EncryptionSuite', 'Medium', 89.0, 'Yes', 'Yes', 4.2, 'v1.0', 102, 'DataGuard');
INSERT INTO driver_cybersecurity_training (driverId, trainingDate, trainerName, moduleTitle, durationMinutes, completionStatus, score, certificationId, renewalDueDate, notes, trainingLocation, technologyUsed, dataPrivacyLevel, phishingSimulatedScore, deviceCompliance, policyAcknowledged, feedbackScore, trainingVersion, sponsorId, externalProvider) VALUES (203, '2023-04-12', 'SecureOps', 'Advanced Threat Detection', 120, 'Pending', 0.0, 'CERT2023C', '2025-04-12', 'Scheduled', 'HQ', 'ThreatIntel', 'High', 0.0, 'No', 'No', 0.0, 'v2.0', 103, 'ThreatSecure');

-- Circuit Solar Panel Maintenance
CREATE TABLE circuit_solar_panel_maintenance (
    maintenanceId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    panelArrayId TEXT,
    maintenanceDate DATE,
    technicianName TEXT,
    serviceType TEXT,
    issueReported TEXT,
    resolutionDetails TEXT,
    downtimeMinutes INTEGER,
    powerOutputBefore REAL,
    powerOutputAfter REAL,
    temperatureC REAL,
    humidityPercent REAL,
    radiationLevel REAL,
    safetyCheckPassed TEXT,
    notes TEXT,
    nextScheduledDate DATE,
    partsReplaced TEXT,
    cost REAL,
    warrantyStatus TEXT,
    maintenanceLogFile TEXT
);
INSERT INTO circuit_solar_panel_maintenance (circuitId, panelArrayId, maintenanceDate, technicianName, serviceType, issueReported, resolutionDetails, downtimeMinutes, powerOutputBefore, powerOutputAfter, temperatureC, humidityPercent, radiationLevel, safetyCheckPassed, notes, nextScheduledDate, partsReplaced, cost, warrantyStatus, maintenanceLogFile) VALUES (1, 'A1', '2023-07-01', 'MikeRossi', 'Inspection', 'None', 'Standard check completed', 30, 1500.0, 1495.0, 25.0, 40.0, 800.0, 'Yes', 'All good', '2024-01-01', 'Inverter', 1200.00, 'Valid', '/logs/solar_a1_20230701.pdf');
INSERT INTO circuit_solar_panel_maintenance (circuitId, panelArrayId, maintenanceDate, technicianName, serviceType, issueReported, resolutionDetails, downtimeMinutes, powerOutputBefore, powerOutputAfter, temperatureC, humidityPercent, radiationLevel, safetyCheckPassed, notes, nextScheduledDate, partsReplaced, cost, warrantyStatus, maintenanceLogFile) VALUES (2, 'B3', '2023-08-15', 'LauraChen', 'Cleaning', 'Dust accumulation', 'Panels cleaned, output restored', 45, 1380.0, 1470.0, 27.5, 45.0, 820.0, 'Yes', 'Significant gain after cleaning', '2024-02-15', 'None', 800.00, 'Valid', '/logs/solar_b3_20230815.pdf');
INSERT INTO circuit_solar_panel_maintenance (circuitId, panelArrayId, maintenanceDate, technicianName, serviceType, issueReported, resolutionDetails, downtimeMinutes, powerOutputBefore, powerOutputAfter, temperatureC, humidityPercent, radiationLevel, safetyCheckPassed, notes, nextScheduledDate, partsReplaced, cost, warrantyStatus, maintenanceLogFile) VALUES (3, 'C2', '2023-09-20', 'SamirKhan', 'Repair', 'Inverter fault', 'Inverter replaced, system back online', 120, 1200.0, 1490.0, 28.0, 50.0, 850.0, 'Yes', 'Performance back to nominal', '2024-03-20', 'InverterModelX', 2500.00, 'Expired', '/logs/solar_c2_20230920.pdf');

-- Race Virtual Reality Experience
CREATE TABLE race_virtual_reality_experience (
    vrExperienceId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    platform TEXT,
    vrTitle TEXT,
    launchDate DATE,
    version TEXT,
    userCount INTEGER,
    averageSessionMinutes REAL,
    peakConcurrentUsers INTEGER,
    latencyMs REAL,
    hardwareRequired TEXT,
    contentRating TEXT,
    feedbackScore REAL,
    bugsReported INTEGER,
    patchesApplied INTEGER,
    developerTeam TEXT,
    sponsorId INTEGER,
    revenueGenerated REAL,
    complianceCheck TEXT,
    dataPrivacyPolicy TEXT,
    notes TEXT
);
INSERT INTO race_virtual_reality_experience (raceId, platform, vrTitle, launchDate, version, userCount, averageSessionMinutes, peakConcurrentUsers, latencyMs, hardwareRequired, contentRating, feedbackScore, bugsReported, patchesApplied, developerTeam, sponsorId, revenueGenerated, complianceCheck, dataPrivacyPolicy, notes) VALUES (101, 'OculusQuest', 'GrandPrixVR2023', '2023-06-20', '1.0', 15000, 35.2, 800, 45.0, 'VRHeadset2023', 'E', 4.5, 12, 3, 'VRStudioX', 101, 75000.00, 'Pass', 'Standard', 'Positive reception');
INSERT INTO race_virtual_reality_experience (raceId, platform, vrTitle, launchDate, version, userCount, averageSessionMinutes, peakConcurrentUsers, latencyMs, hardwareRequired, contentRating, feedbackScore, bugsReported, patchesApplied, developerTeam, sponsorId, revenueGenerated, complianceCheck, dataPrivacyPolicy, notes) VALUES (102, 'SteamVR', 'SpeedZoneVR', '2023-07-10', '1.1', 12000, 28.7, 650, 38.0, 'VivePro2', 'E', 4.3, 8, 2, 'VRStudioY', 102, 62000.00, 'Pass', 'Standard', 'Stable performance');
INSERT INTO race_virtual_reality_experience (raceId, platform, vrTitle, launchDate, version, userCount, averageSessionMinutes, peakConcurrentUsers, latencyMs, hardwareRequired, contentRating, feedbackScore, bugsReported, patchesApplied, developerTeam, sponsorId, revenueGenerated, complianceCheck, dataPrivacyPolicy, notes) VALUES (103, 'PlayStationVR', 'CircuitImmersion', '2023-08-05', '2.0', 18000, 42.0, 950, 50.0, 'PSVR2', 'E', 4.7, 5, 1, 'VRStudioZ', 103, 88000.00, 'Pass', 'Standard', 'High engagement');

-- Fan Mobile Interaction Log
CREATE TABLE fan_mobile_interaction_log (
    interactionId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    appVersion TEXT,
    deviceModel TEXT,
    osVersion TEXT,
    eventType TEXT,
    eventTimestamp DATETIME,
    locationLat REAL,
    locationLng REAL,
    networkType TEXT,
    sessionId TEXT,
    durationSeconds INTEGER,
    pagesViewed INTEGER,
    buttonClicks INTEGER,
    errorCode TEXT,
    feedbackText TEXT,
    campaignId INTEGER,
    pushNotificationId INTEGER,
    purchaseMade TEXT,
    purchaseAmount REAL,
    notes TEXT
);
INSERT INTO fan_mobile_interaction_log (fanId, appVersion, deviceModel, osVersion, eventType, eventTimestamp, locationLat, locationLng, networkType, sessionId, durationSeconds, pagesViewed, buttonClicks, errorCode, feedbackText, campaignId, pushNotificationId, purchaseMade, purchaseAmount, notes) VALUES (1001, '3.2.1', 'iPhone12', 'iOS16', 'AppOpen', '2023-09-01 10:15:00', 48.8566, 2.3522, 'WiFi', 'sessA123', 300, 12, 5, '', 'Great UI', 201, 301, 'Yes', 45.99, 'First purchase');
INSERT INTO fan_mobile_interaction_log (fanId, appVersion, deviceModel, osVersion, eventType, eventTimestamp, locationLat, locationLng, networkType, sessionId, durationSeconds, pagesViewed, buttonClicks, errorCode, feedbackText, campaignId, pushNotificationId, purchaseMade, purchaseAmount, notes) VALUES (1002, '3.2.1', 'SamsungS22', 'Android13', 'VideoPlay', '2023-09-01 11:05:30', 51.5074, -0.1278, '4G', 'sessB456', 180, 8, 3, 'ERR02', 'Buffering issue', 202, 302, 'No', 0.0, 'Experienced lag');
INSERT INTO fan_mobile_interaction_log (fanId, appVersion, deviceModel, osVersion, eventType, eventTimestamp, locationLat, locationLng, networkType, sessionId, durationSeconds, pagesViewed, buttonClicks, errorCode, feedbackText, campaignId, pushNotificationId, purchaseMade, purchaseAmount, notes) VALUES (1003, '3.2.1', 'GooglePixel6', 'Android13', 'PushOpen', '2023-09-01 12:20:45', 40.7128, -74.0060, 'WiFi', 'sessC789', 240, 10, 4, '', 'Loved the offer', 203, 303, 'Yes', 79.50, 'Redeemed discount');

-- Team AI Strategy Simulations
CREATE TABLE team_ai_strategy_simulations (
    simulationId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    seasonYear INTEGER,
    simulationName TEXT,
    modelVersion TEXT,
    inputDataSet TEXT,
    parametersJson TEXT,
    runDate DATE,
    runtimeSeconds INTEGER,
    predictedPoints REAL,
    accuracyScore REAL,
    hardwareUsed TEXT,
    gpuCount INTEGER,
    memoryGb REAL,
    notes TEXT,
    resultFilePath TEXT,
    approvalStatus TEXT,
    analystId INTEGER,
    scenarioDescription TEXT,
    riskLevel TEXT,
    costUsd REAL
);
INSERT INTO team_ai_strategy_simulations (teamId, seasonYear, simulationName, modelVersion, inputDataSet, parametersJson, runDate, runtimeSeconds, predictedPoints, accuracyScore, hardwareUsed, gpuCount, memoryGb, notes, resultFilePath, approvalStatus, analystId, scenarioDescription, riskLevel, costUsd) VALUES (301, 2023, 'QualifyingBoost', 'v2.3', 'qualifying_data_2022', '{\"learning_rate\":0.01}', '2023-06-30', 7200, 210.5, 0.92, 'GPUClusterA', 8, 64.0, 'Improved tyre strategy', '/results/qb_20230630.csv', 'Approved', 401, 'Assess tyre wear under wet conditions', 'Medium', 15000.00);
INSERT INTO team_ai_strategy_simulations (teamId, seasonYear, simulationName, modelVersion, inputDataSet, parametersJson, runDate, runtimeSeconds, predictedPoints, accuracyScore, hardwareUsed, gpuCount, memoryGb, notes, resultFilePath, approvalStatus, analystId, scenarioDescription, riskLevel, costUsd) VALUES (302, 2023, 'PitStopOptimization', 'v1.9', 'pit_data_2022', '{\"max_stops\":2}', '2023-07-15', 5400, 195.0, 0.88, 'GPUClusterB', 4, 32.0, 'Reduced pit time by 0.8s avg', '/results/ps_20230715.csv', 'Pending', 402, 'Test aggressive undercut strategies', 'High', 12000.00);
INSERT INTO team_ai_strategy_simulations (teamId, seasonYear, simulationName, modelVersion, inputDataSet, parametersJson, runDate, runtimeSeconds, predictedPoints, accuracyScore, hardwareUsed, gpuCount, memoryGb, notes, resultFilePath, approvalStatus, analystId, scenarioDescription, riskLevel, costUsd) VALUES (303, 2023, 'FuelLoadPlanner', 'v3.0', 'fuel_logs_2022', '{\"fuel_efficiency\":0.95}', '2023-08-05', 3600, 205.3, 0.90, 'GPUClusterC', 6, 48.0, 'Optimized fuel for finishing sprint', '/results/fl_20230805.csv', 'Approved', 403, 'Balance speed vs weight', 'Low', 13000.00);

-- Environmental Impact Mitigation
CREATE TABLE environmental_impact_mitigation (
    mitigationId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    initiativeName TEXT,
    startDate DATE,
    endDate DATE,
    impactArea TEXT,
    mitigationType TEXT,
    expectedReduction REAL,
    actualReduction REAL,
    monitoringMethod TEXT,
    responsibleDept TEXT,
    budget REAL,
    fundingSource TEXT,
    status TEXT,
    complianceDate DATE,
    notes TEXT,
    carbonOffsetPurchased REAL,
    waterSavedLiters REAL,
    wasteDivertedTons REAL,
    stakeholderComments TEXT,
    auditReportPath TEXT
);
INSERT INTO environmental_impact_mitigation (circuitId, initiativeName, startDate, endDate, impactArea, mitigationType, expectedReduction, actualReduction, monitoringMethod, responsibleDept, budget, fundingSource, status, complianceDate, notes, carbonOffsetPurchased, waterSavedLiters, wasteDivertedTons, stakeholderComments, auditReportPath) VALUES (1, 'RainwaterHarvest', '2023-01-01', '2023-12-31', 'Water', 'Capture', 500000.0, 480000.0, 'FlowMeter', 'Facilities', 200000.00, 'Grant', 'Completed', '2023-12-20', 'Exceeded target', 1500.0, 1200000.0, 30.0, 'Positive community feedback', '/audit/wh_202312.pdf');
INSERT INTO environmental_impact_mitigation (circuitId, initiativeName, startDate, endDate, impactArea, mitigationType, expectedReduction, actualReduction, monitoringMethod, responsibleDept, budget, fundingSource, status, complianceDate, notes, carbonOffsetPurchased, waterSavedLiters, wasteDivertedTons, stakeholderComments, auditReportPath) VALUES (2, 'SolarPanelUpgrade', '2023-04-15', '2024-04-14', 'Energy', 'Renewable', 200000.0, 165000.0, 'PowerMeter', 'Engineering', 350000.00, 'Corporate', 'Ongoing', NULL, 'Installation phase', 2000.0, 0.0, 0.0, 'Awaiting final approval', '/audit/sp_202404.pdf');
INSERT INTO environmental_impact_mitigation (circuitId, initiativeName, startDate, endDate, impactArea, mitigationType, expectedReduction, actualReduction, monitoringMethod, responsibleDept, budget, fundingSource, status, complianceDate, notes, carbonOffsetPurchased, waterSavedLiters, wasteDivertedTons, stakeholderComments, auditReportPath) VALUES (3, 'NoiseBarrierInstallation', '2022-06-01', '2023-06-01', 'Noise', 'Physical', 70.0, 68.5, 'DecibelMeter', 'Safety', 150000.00, 'Municipality', 'Completed', '2023-05-30', 'Reduced nearby residential complaints', 0.0, 0.0, 0.0, 'Residents appreciative', '/audit/nb_202305.pdf');