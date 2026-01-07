-- Demographic information of spectators attending each race
CREATE TABLE spectator_demographics (
    demographicId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    ageGroup TEXT,
    gender TEXT,
    nationality TEXT,
    ticketCategory TEXT,
    seatSection TEXT,
    arrivalTime TEXT,
    departureTime TEXT,
    travelMode TEXT,
    accommodationType TEXT,
    mealsPurchased INTEGER,
    merchandiseSpent REAL,
    socialMediaPlatform TEXT,
    engagementScore REAL,
    surveyCompleted INTEGER,
    vipStatus TEXT,
    accessibilityNeeds TEXT,
    repeatAttendance INTEGER,
    averageSpendPerVisit REAL
);

INSERT INTO spectator_demographics (raceId, ageGroup, gender, nationality, ticketCategory, seatSection, arrivalTime, departureTime, travelMode, accommodationType, mealsPurchased, merchandiseSpent, socialMediaPlatform, engagementScore, surveyCompleted, vipStatus, accessibilityNeeds, repeatAttendance, averageSpendPerVisit) VALUES (1, '18-25', 'Male', 'UK', 'General', 'A12', '08:30', '18:45', 'Car', 'Hotel', 2, 45.60, 'Twitter', 0.72, 1, 'None', 'None', 3, 120.75);
INSERT INTO spectator_demographics (raceId, ageGroup, gender, nationality, ticketCategory, seatSection, arrivalTime, departureTime, travelMode, accommodationType, mealsPurchased, merchandiseSpent, socialMediaPlatform, engagementScore, surveyCompleted, vipStatus, accessibilityNeeds, repeatAttendance, averageSpendPerVisit) VALUES (2, '26-35', 'Female', 'Germany', 'Premium', 'B05', '07:45', '20:10', 'Train', 'Apartment', 3, 78.20, 'Instagram', 0.85, 1, 'VIP', 'Wheelchair', 1, 210.40);
INSERT INTO spectator_demographics (raceId, ageGroup, gender, nationality, ticketCategory, seatSection, arrivalTime, departureTime, travelMode, accommodationType, mealsPurchased, merchandiseSpent, socialMediaPlatform, engagementScore, surveyCompleted, vipStatus, accessibilityNeeds, repeatAttendance, averageSpendPerVisit) VALUES (3, '36-45', 'Male', 'France', 'General', 'C22', '09:15', '19:00', 'Plane', 'Hotel', 1, 32.10, 'Facebook', 0.65, 0, 'None', 'None', 5, 95.30);

-- Inventory of technology devices placed along the track side
CREATE TABLE trackside_technology_inventory (
    techId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    deviceType TEXT,
    manufacturer TEXT,
    modelNumber TEXT,
    serialNumber TEXT,
    installationDate DATE,
    lastServiceDate DATE,
    firmwareVersion TEXT,
    connectivityType TEXT,
    powerSource TEXT,
    coverageArea TEXT,
    dataBandwidth REAL,
    status TEXT,
    warrantyExpiration DATE,
    calibrationDate DATE,
    locationDescription TEXT,
    notes TEXT,
    maintenanceContractId INTEGER,
    depreciationValue REAL
);

INSERT INTO trackside_technology_inventory (circuitId, deviceType, manufacturer, modelNumber, serialNumber, installationDate, lastServiceDate, firmwareVersion, connectivityType, powerSource, coverageArea, dataBandwidth, status, warrantyExpiration, calibrationDate, locationDescription, notes, maintenanceContractId, depreciationValue) VALUES (1, 'Camera', 'VisionTech', 'VTX-200', 'SN123456', '2022-03-15', '2023-06-10', '1.4.2', 'Ethernet', 'Solar', 'Sector 1', 150.5, 'Active', '2025-03-15', '2024-01-20', 'North Turn 1', 'No issues', 101, 12000.00);
INSERT INTO trackside_technology_inventory (circuitId, deviceType, manufacturer, modelNumber, serialNumber, installationDate, lastServiceDate, firmwareVersion, connectivityType, powerSource, coverageArea, dataBandwidth, status, warrantyExpiration, calibrationDate, locationDescription, notes, maintenanceContractId, depreciationValue) VALUES (2, 'Lidar', 'RangePro', 'LD-500', 'SN789012', '2021-11-02', '2023-02-28', '3.1.0', 'WiFi', 'Mains', 'Sector 3', 200.0, 'Active', '2024-11-02', '2023-12-01', 'South Straight', 'Calibration needed', 102, 18000.00);
INSERT INTO trackside_technology_inventory (circuitId, deviceType, manufacturer, modelNumber, serialNumber, installationDate, lastServiceDate, firmwareVersion, connectivityType, powerSource, coverageArea, dataBandwidth, status, warrantyExpiration, calibrationDate, locationDescription, notes, maintenanceContractId, depreciationValue) VALUES (3, 'Telemetry Hub', 'DataStream', 'TH-900', 'SN345678', '2020-07-20', '2023-05-15', '2.9.8', '4G', 'Battery', 'Full Circuit', 500.0, 'Inactive', '2023-07-20', '2023-05-20', 'Pit Lane', 'Awaiting replacement', 103, 25000.00);

-- Records of virtual simulation sessions used for race preparation
CREATE TABLE race_virtual_simulation_sessions (
    simulationId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    sessionDate DATE,
    simulationSoftware TEXT,
    version TEXT,
    participantType TEXT,
    participantId INTEGER,
    scenario TEXT,
    weatherCondition TEXT,
    trackCondition TEXT,
    lapCount INTEGER,
    averageSpeed REAL,
    bestLapTime TEXT,
    fuelUsageLiters REAL,
    tireWearPercentage REAL,
    resultOutcome TEXT,
    notes TEXT,
    createdBy TEXT,
    approvalStatus TEXT,
    dataArchivePath TEXT
);

INSERT INTO race_virtual_simulation_sessions (raceId, sessionDate, simulationSoftware, version, participantType, participantId, scenario, weatherCondition, trackCondition, lapCount, averageSpeed, bestLapTime, fuelUsageLiters, tireWearPercentage, resultOutcome, notes, createdBy, approvalStatus, dataArchivePath) VALUES (1, '2024-02-10', 'SimRacePro', '5.2', 'Team', 201, 'Qualifying Simulation', 'Dry', 'Optimal', 15, 210.5, '01:22.345', 85.0, 12.5, 'Success', 'All targets met', 'engineer_jones', 'Approved', '/archives/sim1.zip');
INSERT INTO race_virtual_simulation_sessions (raceId, sessionDate, simulationSoftware, version, participantType, participantId, scenario, weatherCondition, trackCondition, lapCount, averageSpeed, bestLapTime, fuelUsageLiters, tireWearPercentage, resultOutcome, notes, createdBy, approvalStatus, dataArchivePath) VALUES (2, '2024-03-05', 'VirtualDrive', '3.8', 'Driver', 302, 'Race Pace', 'Rain', 'Wet', 20, 190.3, '01:30.210', 92.5, 18.0, 'Partial', 'Reduced grip observed', 'driver_smith', 'Pending', '/archives/sim2.zip');
INSERT INTO race_virtual_simulation_sessions (raceId, sessionDate, simulationSoftware, version, participantType, participantId, scenario, weatherCondition, trackCondition, lapCount, averageSpeed, bestLapTime, fuelUsageLiters, tireWearPercentage, resultOutcome, notes, createdBy, approvalStatus, dataArchivePath) VALUES (3, '2024-04-12', 'RaceSimX', '7.0', 'Team', 403, 'Strategy Test', 'Cloudy', 'Damp', 12, 205.0, '01:25.777', 88.3, 15.2, 'Success', 'Strategy validated', 'strategist_lee', 'Approved', '/archives/sim3.zip');

-- Preservation records for historic artifacts located at circuits
CREATE TABLE circuit_heritage_preservation (
    preservationId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    artifactName TEXT,
    artifactType TEXT,
    acquisitionDate DATE,
    originCountry TEXT,
    description TEXT,
    conditionScore INTEGER,
    displayedLocation TEXT,
    conservationMethod TEXT,
    lastRestorationDate DATE,
    curatorName TEXT,
    insuranceValue REAL,
    publicAccessFlag INTEGER,
    relatedEventId INTEGER,
    photoReference TEXT,
    digitalRecordUrl TEXT,
    preservationStatus TEXT,
    notes TEXT,
    complianceCode TEXT
);

INSERT INTO circuit_heritage_preservation (circuitId, artifactName, artifactType, acquisitionDate, originCountry, description, conditionScore, displayedLocation, conservationMethod, lastRestorationDate, curatorName, insuranceValue, publicAccessFlag, relatedEventId, photoReference, digitalRecordUrl, preservationStatus, notes, complianceCode) VALUES (1, 'Original Starting Grid Sign', 'Signage', '1998-05-20', 'Italy', 'First official grid sign of the circuit', 85, 'Museum Hall A', 'Climate Controlled', '2022-09-15', 'Marta Rossi', 15000.00, 1, 12, 'grid_sign.jpg', 'http://archive.circuit1.org/grid_sign', 'Good', 'No issues', 'HC-01');
INSERT INTO circuit_heritage_preservation (circuitId, artifactName, artifactType, acquisitionDate, originCountry, description, conditionScore, displayedLocation, conservationMethod, lastRestorationDate, curatorName, insuranceValue, publicAccessFlag, relatedEventId, photoReference, digitalRecordUrl, preservationStatus, notes, complianceCode) VALUES (2, 'Classic Pit Board', 'Equipment', '2005-11-03', 'UK', 'Manual pit board used in early 2000s', 78, 'Exhibit Room 3', 'Dust Cover', '2021-06-30', 'John Patel', 8000.00, 0, 23, 'pit_board.png', 'http://archive.circuit2.org/pit_board', 'Fair', 'Limited visibility', 'HC-02');
INSERT INTO circuit_heritage_preservation (circuitId, artifactName, artifactType, acquisitionDate, originCountry, description, conditionScore, displayedLocation, conservationMethod, lastRestorationDate, curatorName, insuranceValue, publicAccessFlag, relatedEventId, photoReference, digitalRecordUrl, preservationStatus, notes, complianceCode) VALUES (3, 'Vintage Safety Car', 'Vehicle', '2010-02-14', 'Germany', 'First safety car model used at the circuit', 92, 'Outdoor Display', 'Protective Coating', '2023-03-10', 'Lena Schmidt', 45000.00, 1, 34, 'safety_car.jpg', 'http://archive.circuit3.org/safety_car', 'Excellent', 'Recent cleaning performed', 'HC-03');

-- Agreements between racing teams and their sponsors
CREATE TABLE team_sponsorship_agreements (
    agreementId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER NOT NULL,
    sponsorId INTEGER NOT NULL,
    contractStart DATE,
    contractEnd DATE,
    monetaryValue REAL,
    exclusivityFlag INTEGER,
    brandingPlacement TEXT,
    activationEvents INTEGER,
    performanceBonus REAL,
    renewalOption INTEGER,
    terminationClause TEXT,
    contactPerson TEXT,
    contactEmail TEXT,
    signedBy TEXT,
    signedDate DATE,
    complianceAuditDate DATE,
    notes TEXT,
    digitalContractUrl TEXT,
    status TEXT
);

INSERT INTO team_sponsorship_agreements (teamId, sponsorId, contractStart, contractEnd, monetaryValue, exclusivityFlag, brandingPlacement, activationEvents, performanceBonus, renewalOption, terminationClause, contactPerson, contactEmail, signedBy, signedDate, complianceAuditDate, notes, digitalContractUrl, status) VALUES (11, 201, '2023-01-01', '2025-12-31', 2500000.00, 1, 'Sidepod', 12, 150000.00, 1, '30 day notice', 'Alice Green', 'alice.green@sponsorcorp.com', 'CEO John Doe', '2022-12-15', '2024-01-20', 'First year milestone met', 'http://contracts.team11.com/agr001.pdf', 'Active');
INSERT INTO team_sponsorship_agreements (teamId, sponsorId, contractStart, contractEnd, monetaryValue, exclusivityFlag, brandingPlacement, activationEvents, performanceBonus, renewalOption, terminationClause, contactPerson, contactEmail, signedBy, signedDate, complianceAuditDate, notes, digitalContractUrl, status) VALUES (12, 202, '2022-06-15', '2024-06-14', 1800000.00, 0, 'Helmet', 8, 100000.00, 0, 'Mutual agreement', 'Bob Lee', 'bob.lee@sportspromo.com', 'Director Jane Smith', '2022-05-30', '2023-07-01', 'Negotiated additional digital exposure', 'http://contracts.team12.com/agr002.pdf', 'Active');
INSERT INTO team_sponsorship_agreements (teamId, sponsorId, contractStart, contractEnd, monetaryValue, exclusivityFlag, brandingPlacement, activationEvents, performanceBonus, renewalOption, terminationClause, contactPerson, contactEmail, signedBy, signedDate, complianceAuditDate, notes, digitalContractUrl, status) VALUES (13, 203, '2024-03-01', '2027-02-28', 3200000.00, 1, 'Rear Wing', 15, 200000.00, 1, 'Force majeure clause', 'Clara Zhou', 'clara.zhou@globalauto.com', 'President Mark Allen', '2024-02-20', '2025-03-10', 'Added VR activation', 'http://contracts.team13.com/agr003.pdf', 'Pending');

-- Social impact metrics tracked for each driver
CREATE TABLE driver_social_impact_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER NOT NULL,
    metricDate DATE,
    followersCount INTEGER,
    engagementRate REAL,
    charityDonations REAL,
    communityEventsParticipated INTEGER,
    mediaMentions INTEGER,
    positiveSentimentScore REAL,
    negativeSentimentScore REAL,
    brandEndorsements INTEGER,
    sustainabilityScore REAL,
    educationInitiatives INTEGER,
    healthAwarenessCampaigns INTEGER,
    awardCount INTEGER,
    viralPostId TEXT,
    averageReach INTEGER,
    impactScore REAL,
    notes TEXT,
    source TEXT
);

INSERT INTO driver_social_impact_metrics (driverId, metricDate, followersCount, engagementRate, charityDonations, communityEventsParticipated, mediaMentions, positiveSentimentScore, negativeSentimentScore, brandEndorsements, sustainabilityScore, educationInitiatives, healthAwarenessCampaigns, awardCount, viralPostId, averageReach, impactScore, notes, source) VALUES (301, '2024-01-31', 850000, 0.047, 12000.00, 5, 42, 0.88, 0.04, 3, 0.76, 2, 1, 4, 'VP12345', 250000, 78.5, 'Strong Q1 performance', 'SocialAnalyticsCo');
INSERT INTO driver_social_impact_metrics (driverId, metricDate, followersCount, engagementRate, charityDonations, communityEventsParticipated, mediaMentions, positiveSentimentScore, negativeSentimentScore, brandEndorsements, sustainabilityScore, educationInitiatives, healthAwarenessCampaigns, awardCount, viralPostId, averageReach, impactScore, notes, source) VALUES (302, '2024-01-31', 640000, 0.053, 9500.00, 3, 30, 0.91, 0.03, 2, 0.82, 1, 2, 3, 'VP67890', 190000, 81.2, 'Positive post on safety', 'MediaMetricsLtd');
INSERT INTO driver_social_impact_metrics (driverId, metricDate, followersCount, engagementRate, charityDonations, communityEventsParticipated, mediaMentions, positiveSentimentScore, negativeSentimentScore, brandEndorsements, sustainabilityScore, educationInitiatives, healthAwarenessCampaigns, awardCount, viralPostId, averageReach, impactScore, notes, source) VALUES (303, '2024-01-31', 720000, 0.049, 11000.00, 4, 35, 0.85, 0.05, 4, 0.79, 3, 1, 5, 'VP24680', 210000, 79.0, 'Engagement boosted after charity race', 'InsightAnalytics');

-- Energy grid information for each venue
CREATE TABLE venue_energy_grid (
    gridId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER NOT NULL,
    gridOperator TEXT,
    connectionDate DATE,
    capacityMW REAL,
    currentLoadMW REAL,
    renewablePercentage REAL,
    peakDemandMW REAL,
    averageDemandMW REAL,
    outageHistory INTEGER,
    maintenanceSchedule TEXT,
    voltageLevel TEXT,
    frequencyHz REAL,
    substationLocation TEXT,
    transformerCount INTEGER,
    monitoringSystem TEXT,
    complianceStandard TEXT,
    lastInspectionDate DATE,
    notes TEXT,
    dataFeedUrl TEXT
);

INSERT INTO venue_energy_grid (venueId, gridOperator, connectionDate, capacityMW, currentLoadMW, renewablePercentage, peakDemandMW, averageDemandMW, outageHistory, maintenanceSchedule, voltageLevel, frequencyHz, substationLocation, transformerCount, monitoringSystem, complianceStandard, lastInspectionDate, notes, dataFeedUrl) VALUES (1, 'NationalGrid', '2015-04-20', 120.0, 85.3, 45.5, 110.0, 78.2, 2, 'Quarterly', 'High', 50.0, 'Substation A', 8, 'SCADA', 'ISO9001', '2023-11-15', 'All systems nominal', 'http://energy.venue1.com/feed');
INSERT INTO venue_energy_grid (venueId, gridOperator, connectionDate, capacityMW, currentLoadMW, renewablePercentage, peakDemandMW, averageDemandMW, outageHistory, maintenanceSchedule, voltageLevel, frequencyHz, substationLocation, transformerCount, monitoringSystem, complianceStandard, lastInspectionDate, notes, dataFeedUrl) VALUES (2, 'PowerCo', '2017-08-10', 95.5, 60.1, 30.2, 90.0, 55.0, 1, 'Biannual', 'Medium', 49.9, 'Substation B', 6, 'EMS', 'ISO14001', '2024-02-20', 'Planned solar integration', 'http://energy.venue2.com/feed');
INSERT INTO venue_energy_grid (venueId, gridOperator, connectionDate, capacityMW, currentLoadMW, renewablePercentage, peakDemandMW, averageDemandMW, outageHistory, maintenanceSchedule, voltageLevel, frequencyHz, substationLocation, transformerCount, monitoringSystem, complianceStandard, lastInspectionDate, notes, dataFeedUrl) VALUES (3, 'EcoEnergy', '2019-01-05', 150.0, 102.4, 60.0, 145.0, 120.5, 0, 'Monthly', 'High', 50.0, 'Substation C', 10, 'Advanced SCADA', 'ISO50001', '2023-09-30', 'Battery storage added', 'http://energy.venue3.com/feed');

-- Localization information for broadcast content
CREATE TABLE broadcast_content_localization (
    localizationId INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId INTEGER NOT NULL,
    languageCode TEXT,
    translatorName TEXT,
    translationStart DATE,
    translationEnd DATE,
    subtitleFilePath TEXT,
    dubbedAudioFilePath TEXT,
    qualityReviewScore REAL,
    approvalStatus TEXT,
    notes TEXT,
    versionNumber INTEGER,
    localizedTitle TEXT,
    localizedDescription TEXT,
    complianceFlag INTEGER,
    createdBy TEXT,
    createdDate DATE,
    lastModifiedBy TEXT,
    lastModifiedDate DATE,
    externalVendorId INTEGER
);

INSERT INTO broadcast_content_localization (broadcastId, languageCode, translatorName, translationStart, translationEnd, subtitleFilePath, dubbedAudioFilePath, qualityReviewScore, approvalStatus, notes, versionNumber, localizedTitle, localizedDescription, complianceFlag, createdBy, createdDate, lastModifiedBy, lastModifiedDate, externalVendorId) VALUES (401, 'es', 'Maria Lopez', '2024-01-05', '2024-01-12', '/subs/401_es.srt', '/audio/401_es.mp3', 4.7, 'Approved', 'No issues', 1, 'Gran Premio', 'Transmisión completa del GP', 1, 'editor_john', '2024-01-13', 'editor_ana', '2024-01-14', 301);
INSERT INTO broadcast_content_localization (broadcastId, languageCode, translatorName, translationStart, translationEnd, subtitleFilePath, dubbedAudioFilePath, qualityReviewScore, approvalStatus, notes, versionNumber, localizedTitle, localizedDescription, complianceFlag, createdBy, createdDate, lastModifiedBy, lastModifiedDate, externalVendorId) VALUES (402, 'fr', 'Pierre Dupont', '2024-02-01', '2024-02-08', '/subs/402_fr.srt', '/audio/402_fr.mp3', 4.5, 'Pending', 'Awaiting final audio sync', 1, 'Grand Prix', 'Diffusion intégrale du Grand Prix', 1, 'editor_mia', '2024-02-09', 'editor_luc', '2024-02-10', 302);
INSERT INTO broadcast_content_localization (broadcastId, languageCode, translatorName, translationStart, translationEnd, subtitleFilePath, dubbedAudioFilePath, qualityReviewScore, approvalStatus, notes, versionNumber, localizedTitle, localizedDescription, complianceFlag, createdBy, createdDate, lastModifiedBy, lastModifiedDate, externalVendorId) VALUES (403, 'de', 'Klaus Meyer', '2024-03-03', '2024-03-10', '/subs/403_de.srt', '/audio/403_de.mp3', 4.8, 'Approved', 'All subtitles timed correctly', 1, 'Großer Preis', 'Komplette Übertragung des Rennens', 1, 'editor_sam', '2024-03-11', 'editor_ella', '2024-03-12', 303);

-- Photographic documentation of race incidents
CREATE TABLE race_incident_photography (
    photoId INTEGER PRIMARY KEY AUTOINCREMENT,
    incidentId INTEGER NOT NULL,
    photographerName TEXT,
    shotDate DATE,
    shotTime TEXT,
    cameraModel TEXT,
    lensSpecification TEXT,
    isoValue INTEGER,
    aperture TEXT,
    shutterSpeed TEXT,
    filePath TEXT,
    resolution TEXT,
    orientation TEXT,
    weatherCondition TEXT,
    lightingCondition TEXT,
    notes TEXT,
    approvedFlag INTEGER,
    usageRights TEXT,
    associatedMediaId INTEGER,
    tagList TEXT
);

INSERT INTO race_incident_photography (incidentId, photographerName, shotDate, shotTime, cameraModel, lensSpecification, isoValue, aperture, shutterSpeed, filePath, resolution, orientation, weatherCondition, lightingCondition, notes, approvedFlag, usageRights, associatedMediaId, tagList) VALUES (501, 'Laura Chen', '2024-04-15', '14:32', 'Nikon D850', '24-70mm f/2.8', 200, 'f/4', '1/800', '/photos/501.jpg', '8256x5504', 'Landscape', 'Sunny', 'Natural', 'Debris on track', 1, 'Limited', 701, 'debris,track');
INSERT INTO race_incident_photography (incidentId, photographerName, shotDate, shotTime, cameraModel, lensSpecification, isoValue, aperture, shutterSpeed, filePath, resolution, orientation, weatherCondition, lightingCondition, notes, approvedFlag, usageRights, associatedMediaId, tagList) VALUES (502, 'Mike O\'Neil', '2024-04-15', '15:10', 'Canon EOS R5', '70-200mm f/2.8', 400, 'f/5.6', '1/500', '/photos/502.jpg', '8192x5460', 'Portrait', 'Cloudy', 'Soft', 'Collision between cars', 1, 'Full', 702, 'collision,vehicles');
INSERT INTO race_incident_photography (incidentId, photographerName, shotDate, shotTime, cameraModel, lensSpecification, isoValue, aperture, shutterSpeed, filePath, resolution, orientation, weatherCondition, lightingCondition, notes, approvedFlag, usageRights, associatedMediaId, tagList) VALUES (503, 'Sofia Garcia', '2024-04-16', '09:45', 'Sony A7IV', '16-35mm f/2.8', 100, 'f/2.8', '1/2000', '/photos/503.jpg', '6000x4000', 'Landscape', 'Rainy', 'Artificial', 'Splash after safety car', 0, 'Restricted', 703, 'safetycar,splash');

-- Analysis of fuel consumption for each team in a race
CREATE TABLE fuel_consumption_analysis (
    analysisId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    teamId INTEGER NOT NULL,
    totalFuelLiters REAL,
    averageFuelPerLap REAL,
    peakFuelFlowLitersPerHour REAL,
    fuelEfficiencyKmPerLiter REAL,
    pitStopFuelAddedLiters REAL,
    fuelStrategy TEXT,
    weatherImpactScore REAL,
    tireCompound TEXT,
    engineMode TEXT,
    lapCount INTEGER,
    raceDurationMinutes INTEGER,
    carbonEmissionKg REAL,
    analysisDate DATE,
    analystName TEXT,
    notes TEXT,
    dataSource TEXT,
    confidenceLevel REAL,
    reportUrl TEXT
);

INSERT INTO fuel_consumption_analysis (raceId, teamId, totalFuelLiters, averageFuelPerLap, peakFuelFlowLitersPerHour, fuelEfficiencyKmPerLiter, pitStopFuelAddedLiters, fuelStrategy, weatherImpactScore, tireCompound, engineMode, lapCount, raceDurationMinutes, carbonEmissionKg, analysisDate, analystName, notes, dataSource, confidenceLevel, reportUrl) VALUES (1, 11, 320.5, 21.3, 45.0, 12.5, 35.0, 'Conservative', 0.2, 'Soft', 'Hybrid', 15, 95, 820.0, '2024-04-20', 'Ethan Hall', 'Optimal fuel usage', 'Telemetry', 0.95, 'http://analysis.race1.com/fuel');
INSERT INTO fuel_consumption_analysis (raceId, teamId, totalFuelLiters, averageFuelPerLap, peakFuelFlowLitersPerHour, fuelEfficiencyKmPerLiter, pitStopFuelAddedLiters, fuelStrategy, weatherImpactScore, tireCompound, engineMode, lapCount, raceDurationMinutes, carbonEmissionKg, analysisDate, analystName, notes, dataSource, confidenceLevel, reportUrl) VALUES (2, 12, 298.0, 19.8, 48.5, 11.8, 30.0, 'Aggressive', 0.5, 'Medium', 'Standard', 18, 110, 770.0, '2024-05-05', 'Nina Patel', 'Higher consumption due to rain', 'Telemetry', 0.89, 'http://analysis.race2.com/fuel');
INSERT INTO fuel_consumption_analysis (raceId, teamId, totalFuelLiters, averageFuelPerLap, peakFuelFlowLitersPerHour, fuelEfficiencyKmPerLiter, pitStopFuelAddedLiters, fuelStrategy, weatherImpactScore, tireCompound, engineMode, lapCount, raceDurationMinutes, carbonEmissionKg, analysisDate, analystName, notes, dataSource, confidenceLevel, reportUrl) VALUES (3, 13, 340.2, 22.7, 50.2, 13.0, 38.0, 'Balanced', 0.1, 'Hard', 'Hybrid', 20, 120, 860.0, '2024-05-20', 'Liam Zhou', 'Consistent performance', 'Telemetry', 0.97, 'http://analysis.race3.com/fuel');