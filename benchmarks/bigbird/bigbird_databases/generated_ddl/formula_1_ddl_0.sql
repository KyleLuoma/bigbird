-- Weather observations per race day
CREATE TABLE weather_observations (
    observationId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    observationDate DATE,
    observationTime TEXT,
    temperatureC REAL,
    humidityPct REAL,
    windSpeedKph REAL,
    windDirection TEXT,
    pressurehPa REAL,
    precipitationMm REAL,
    visibilityKm REAL,
    trackTemperatureC REAL,
    airTemperatureC REAL,
    dewPointC REAL,
    cloudCoverPct REAL,
    weatherDesc TEXT,
    sensorId TEXT,
    updatedAt TEXT,
    notes TEXT,
    dataQualityScore REAL
);
INSERT INTO weather_observations (raceId, observationDate, observationTime, temperatureC, humidityPct, windSpeedKph, windDirection, pressurehPa, precipitationMm, visibilityKm, trackTemperatureC, airTemperatureC, dewPointC, cloudCoverPct, weatherDesc, sensorId, updatedAt, notes, dataQualityScore) VALUES (1, '2024-03-15', '14:00', 22.5, 55.0, 12.3, 'NW', 1012.3, 0.0, 10.0, 25.0, 23.0, 10.0, 20.0, 'Clear', 'S001', '2024-03-15 14:05', 'No issues', 0.98);
INSERT INTO weather_observations (raceId, observationDate, observationTime, temperatureC, humidityPct, windSpeedKph, windDirection, pressurehPa, precipitationMm, visibilityKm, trackTemperatureC, airTemperatureC, dewPointC, cloudCoverPct, weatherDesc, sensorId, updatedAt, notes, dataQualityScore) VALUES (2, '2024-04-20', '10:30', 16.8, 70.2, 8.5, 'E', 1008.7, 2.1, 8.5, 18.0, 17.0, 12.0, 45.0, 'LightRain', 'S002', '2024-04-20 10:40', 'Rain affecting grip', 0.92);
INSERT INTO weather_observations (raceId, observationDate, observationTime, temperatureC, humidityPct, windSpeedKph, windDirection, pressurehPa, precipitationMm, visibilityKm, trackTemperatureC, airTemperatureC, dewPointC, cloudCoverPct, weatherDesc, sensorId, updatedAt, notes, dataQualityScore) VALUES (3, '2024-05-05', '16:15', 28.0, 40.0, 15.0, 'S', 1015.0, 0.0, 12.0, 30.0, 28.0, 8.0, 10.0, 'Sunny', 'S003', '2024-05-05 16:20', 'Optimal conditions', 0.99);

-- Sponsor organization registry
CREATE TABLE sponsors (
    sponsorId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorName TEXT,
    industry TEXT,
    headquartersCountry TEXT,
    foundedYear INTEGER,
    ceoName TEXT,
    revenueMillionUSD REAL,
    employeeCount INTEGER,
    logoUrl TEXT,
    brandColorPrimary TEXT,
    brandColorSecondary TEXT,
    websiteUrl TEXT,
    contactPerson TEXT,
    contactPhone TEXT,
    contactEmail TEXT,
    globalReachScore REAL,
    sustainabilityRating TEXT,
    partnershipLevel TEXT,
    activeSinceYear INTEGER,
    notes TEXT,
    lastAuditDate DATE,
    complianceStatus TEXT
);
INSERT INTO sponsors (sponsorName, industry, headquartersCountry, foundedYear, ceoName, revenueMillionUSD, employeeCount, logoUrl, brandColorPrimary, brandColorSecondary, websiteUrl, contactPerson, contactPhone, contactEmail, globalReachScore, sustainabilityRating, partnershipLevel, activeSinceYear, notes, lastAuditDate, complianceStatus) VALUES ('SpeedTech', 'Technology', 'Germany', 1998, 'Anna Mueller', 850.4, 3200, 'http://speedtech.com/logo.png', '#0011FF', '#FFEE00', 'http://speedtech.com', 'Markus Braun', '49123456789', 'markus.b@speedtech.com', 9.2, 'A', 'Platinum', 2005, 'Key partner for telemetry', '2023-12-01', 'Compliant');
INSERT INTO sponsors (sponsorName, industry, headquartersCountry, foundedYear, ceoName, revenueMillionUSD, employeeCount, logoUrl, brandColorPrimary, brandColorSecondary, websiteUrl, contactPerson, contactPhone, contactEmail, globalReachScore, sustainabilityRating, partnershipLevel, activeSinceYear, notes, lastAuditDate, complianceStatus) VALUES ('EcoFuel', 'Energy', 'USA', 2005, 'Laura Smith', 420.7, 1500, 'http://ecofuel.com/logo.png', '#00AA00', '#004400', 'http://ecofuel.com', 'James Lee', '14085551234', 'james.l@ecofuel.com', 8.5, 'B', 'Gold', 2010, 'Provides biofuel', '2024-01-15', 'Compliant');
INSERT INTO sponsors (sponsorName, industry, headquartersCountry, foundedYear, ceoName, revenueMillionUSD, employeeCount, logoUrl, brandColorPrimary, brandColorSecondary, websiteUrl, contactPerson, contactPhone, contactEmail, globalReachScore, sustainabilityRating, partnershipLevel, activeSinceYear, notes, lastAuditDate, complianceStatus) VALUES ('AeroDynamics', 'Aerospace', 'UK', 1992, 'Thomas Reed', 1220.3, 4100, 'http://aerodynamics.co.uk/logo.png', '#FF4500', '#222222', 'http://aerodynamics.co.uk', 'Emily Clarke', '447911223344', 'emily.c@aerodynamics.co.uk', 9.0, 'A', 'Silver', 2000, 'Aerodynamic consulting', '2023-11-20', 'Compliant');

-- Medical staff roster per event
CREATE TABLE medical_staff (
    staffId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER,
    firstName TEXT,
    lastName TEXT,
    role TEXT,
    certificationLevel TEXT,
    yearsExperience INTEGER,
    shiftStart TEXT,
    shiftEnd TEXT,
    assignedArea TEXT,
    phone TEXT,
    email TEXT,
    nationality TEXT,
    licenseNumber TEXT,
    bloodType TEXT,
    emergencyContact TEXT,
    notes TEXT,
    addedAt TEXT,
    updatedAt TEXT,
    isActive INTEGER,
    teamAffiliation TEXT
);
INSERT INTO medical_staff (eventId, firstName, lastName, role, certificationLevel, yearsExperience, shiftStart, shiftEnd, assignedArea, phone, email, nationality, licenseNumber, bloodType, emergencyContact, notes, addedAt, updatedAt, isActive, teamAffiliation) VALUES (1, 'Carlos', 'Mendoza', 'Physician', 'Level3', 12, '08:00', '20:00', 'PitLane', '54112345678', 'carlos.m@med.org', 'Argentina', 'MED12345', 'O+', 'Maria:5551234', 'No incidents', '2024-03-01 09:00', '2024-03-10 17:00', 1, 'TeamA');
INSERT INTO medical_staff (eventId, firstName, lastName, role, certificationLevel, yearsExperience, shiftStart, shiftEnd, assignedArea, phone, email, nationality, licenseNumber, bloodType, emergencyContact, notes, addedAt, updatedAt, isActive, teamAffiliation) VALUES (2, 'Sophie', 'Legrand', 'Paramedic', 'Level2', 7, '09:00', '21:00', 'Grandstand', '33612345678', 'sophie.l@med.org', 'France', 'MED54321', 'A-', 'Jean:5559876', 'Assisted 3 drivers', '2024-04-01 10:00', '2024-04-20 18:00', 1, 'TeamB');
INSERT INTO medical_staff (eventId, firstName, lastName, role, certificationLevel, yearsExperience, shiftStart, shiftEnd, assignedArea, phone, email, nationality, licenseNumber, bloodType, emergencyContact, notes, addedAt, updatedAt, isActive, teamAffiliation) VALUES (3, 'Liu', 'Wei', 'Trainer', 'Level1', 4, '07:00', '19:00', 'MedicalCenter', '8613912345678', 'liu.w@med.org', 'China', 'MED67890', 'B+', 'Zhang:5554321', 'Conducted safety drills', '2024-05-01 08:00', '2024-05-05 16:00', 1, 'TeamC');

-- Track maintenance logs
CREATE TABLE track_maintenance_logs (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    trackName TEXT,
    maintenanceDate DATE,
    description TEXT,
    crewLead TEXT,
    crewSize INTEGER,
    equipmentUsed TEXT,
    hoursSpent REAL,
    surfaceCondition TEXT,
    drainageStatus TEXT,
    safetyInspectionPassed INTEGER,
    notes TEXT,
    reportedBy TEXT,
    approvedBy TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    costUSD REAL,
    materialUsed TEXT,
    weatherDuring TEXT,
    temperatureC REAL,
    humidityPct REAL
);
INSERT INTO track_maintenance_logs (trackName, maintenanceDate, description, crewLead, crewSize, equipmentUsed, hoursSpent, surfaceCondition, drainageStatus, safetyInspectionPassed, notes, reportedBy, approvedBy, createdAt, updatedAt, costUSD, materialUsed, weatherDuring, temperatureC, humidityPct) VALUES ('Silverstone', '2024-03-10', 'Resurfacing main straight', 'John Doe', 8, 'Grader, Roller', 16.5, 'Smooth', 'Clear', 1, 'Completed ahead of schedule', 'Mike', 'Laura', '2024-03-10 08:00', '2024-03-11 18:00', 250000.0, 'AsphaltMixA', 'Cloudy', 14.0, 65.0);
INSERT INTO track_maintenance_logs (trackName, maintenanceDate, description, crewLead, crewSize, equipmentUsed, hoursSpent, surfaceCondition, drainageStatus, safetyInspectionPassed, notes, reportedBy, approvedBy, createdAt, updatedAt, costUSD, materialUsed, weatherDuring, temperatureC, humidityPct) VALUES ('Monaco', '2024-04-05', 'Barrier replacement at turn 7', 'Anna Rossi', 5, 'Cranes, Welders', 12.0, 'Intact', 'Good', 1, 'No issues', 'Sophie', 'Pierre', '2024-04-05 07:00', '2024-04-05 19:00', 85000.0, 'SteelGuard', 'Sunny', 18.0, 55.0);
INSERT INTO track_maintenance_logs (trackName, maintenanceDate, description, crewLead, crewSize, equipmentUsed, hoursSpent, surfaceCondition, drainageStatus, safetyInspectionPassed, notes, reportedBy, approvedBy, createdAt, updatedAt, costUSD, materialUsed, weatherDuring, temperatureC, humidityPct) VALUES ('Spa', '2024-05-20', 'Gravel removal from pit lane', 'Marco Bianchi', 4, 'Sweeper', 6.0, 'Clean', 'Excellent', 1, 'All cleared', 'Luca', 'Giulia', '2024-05-20 06:30', '2024-05-20 12:30', 15000.0, 'Gravel', 'Rain', 12.0, 80.0);

-- Broadcast media coverage details
CREATE TABLE broadcast_media (
    broadcastId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceName TEXT,
    network TEXT,
    country TEXT,
    language TEXT,
    startTime TEXT,
    endTime TEXT,
    commentator1 TEXT,
    commentator2 TEXT,
    director TEXT,
    producer TEXT,
    format TEXT,
    resolution TEXT,
    bitrateKbps INTEGER,
    transmissionType TEXT,
    satellite TEXT,
    feedUrl TEXT,
    contractCostUSD REAL,
    ratings REAL,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT
);
INSERT INTO broadcast_media (raceName, network, country, language, startTime, endTime, commentator1, commentator2, director, producer, format, resolution, bitrateKbps, transmissionType, satellite, feedUrl, contractCostUSD, ratings, notes, createdAt, updatedAt) VALUES ('Monaco Grand Prix', 'SkySport', 'UK', 'English', '2024-05-26 14:00', '2024-05-26 18:00', 'James Hunt', 'Mia Val', 'David Lee', 'Sophie Kim', 'HD', '1920x1080', 8000, 'Satellite', 'Astra1', 'http://feeds.skysport.com/monaco', 1200000.0, 8.7, 'High viewership in Europe', '2024-04-01 09:00', '2024-04-15 12:00');
INSERT INTO broadcast_media (raceName, network, country, language, startTime, endTime, commentator1, commentator2, director, producer, format, resolution, bitrateKbps, transmissionType, satellite, feedUrl, contractCostUSD, ratings, notes, createdAt, updatedAt) VALUES ('Silverstone GP', 'EuroTV', 'Germany', 'German', '2024-07-12 13:00', '2024-07-12 17:00', 'Felix Braun', 'Laura Schmidt', 'Kurt Müller', 'Hans Becker', 'FullHD', '1920x1080', 7500, 'Fiber', 'Eutelsat', 'http://stream.eurotv.de/silverstone', 950000.0, 7.9, 'Strong domestic audience', '2024-05-20 10:30', '2024-06-05 14:45');
INSERT INTO broadcast_media (raceName, network, country, language, startTime, endTime, commentator1, commentator2, director, producer, format, resolution, bitrateKbps, transmissionType, satellite, feedUrl, contractCostUSD, ratings, notes, createdAt, updatedAt) VALUES ('Suzuka Race', 'NipponTV', 'Japan', 'Japanese', '2024-09-22 15:00', '2024-09-22 19:00', 'Kenji Sato', 'Yuki Tanaka', 'Hiroshi Watanabe', 'Mika Suzuki', 'HD', '1280x720', 5000, 'Cable', 'JCSAT', 'http://live.nippon.tv/suzuka', 800000.0, 8.2, 'Peak primetime slot', '2024-07-01 08:15', '2024-07-20 11:40');

-- Fan attendance statistics
CREATE TABLE fan_attendance (
    attendanceId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventName TEXT,
    venue TEXT,
    eventDate DATE,
    totalTickets INTEGER,
    domesticTickets INTEGER,
    internationalTickets INTEGER,
    averageAge REAL,
    genderRatioMale REAL,
    genderRatioFemale REAL,
    familyTickets INTEGER,
    corporateTickets INTEGER,
    seasonTicketHolders INTEGER,
    attendanceNotes TEXT,
    recordedAt TEXT,
    updatedAt TEXT,
    weatherImpactScore REAL,
    parkingUtilizationPct REAL,
    merchandiseSalesUSD REAL,
    concessionsSalesUSD REAL,
    securityIncidentsReported INTEGER,
    publicTransportUsagePct REAL,
    volunteerCount INTEGER
);
INSERT INTO fan_attendance (eventName, venue, eventDate, totalTickets, domesticTickets, internationalTickets, averageAge, genderRatioMale, genderRatioFemale, familyTickets, corporateTickets, seasonTicketHolders, attendanceNotes, recordedAt, updatedAt, weatherImpactScore, parkingUtilizationPct, merchandiseSalesUSD, concessionsSalesUSD, securityIncidentsReported, publicTransportUsagePct, volunteerCount) VALUES ('Monaco Grand Prix', 'Circuit de Monaco', '2024-05-26', 150000, 90000, 60000, 34.5, 0.58, 0.42, 20000, 15000, 30000, 'Record crowds despite rain', '2024-05-27 08:00', '2024-06-01 09:30', 0.7, 85.0, 1200000.0, 850000.0, 3, 65.0, 250);
INSERT INTO fan_attendance (eventName, venue, eventDate, totalTickets, domesticTickets, internationalTickets, averageAge, genderRatioMale, genderRatioFemale, familyTickets, corporateTickets, seasonTicketHolders, attendanceNotes, recordedAt, updatedAt, weatherImpactScore, parkingUtilizationPct, merchandiseSalesUSD, concessionsSalesUSD, securityIncidentsReported, publicTransportUsagePct, volunteerCount) VALUES ('Silverstone GP', 'Silverstone Circuit', '2024-07-12', 130000, 100000, 30000, 36.2, 0.60, 0.40, 18000, 12000, 25000, 'Hot weather boosted outdoor sales', '2024-07-13 07:45', '2024-07-20 10:15', 0.9, 78.0, 950000.0, 700000.0, 2, 70.0, 300);
INSERT INTO fan_attendance (eventName, venue, eventDate, totalTickets, domesticTickets, internationalTickets, averageAge, genderRatioMale, genderRatioFemale, familyTickets, corporateTickets, seasonTicketHolders, attendanceNotes, recordedAt, updatedAt, weatherImpactScore, parkingUtilizationPct, merchandiseSalesUSD, concessionsSalesUSD, securityIncidentsReported, publicTransportUsagePct, volunteerCount) VALUES ('Suzuka Race', 'Suzuka Circuit', '2024-09-22', 115000, 80000, 35000, 33.8, 0.55, 0.45, 15000, 10000, 22000, 'Cool temperatures, high fan satisfaction', '2024-09-23 08:30', '2024-09-30 11:00', 0.85, 80.0, 800000.0, 620000.0, 1, 68.0, 280);

-- Tyre inventory records
CREATE TABLE tyre_inventory (
    inventoryId INTEGER PRIMARY KEY AUTOINCREMENT,
    supplier TEXT,
    tyreModel TEXT,
    compound TEXT,
    size TEXT,
    quantityAvailable INTEGER,
    quantityAllocated INTEGER,
    restockDate DATE,
    expirationDate DATE,
    warehouseLocation TEXT,
    temperatureRangeC TEXT,
    humidityRangePct TEXT,
    lastInspectionDate DATE,
    inspectedBy TEXT,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    costPerTyreUSD REAL,
    totalValueUSD REAL,
    batchNumber TEXT,
    safetyRating TEXT,
    transportMethod TEXT
);
INSERT INTO tyre_inventory (supplier, tyreModel, compound, size, quantityAvailable, quantityAllocated, restockDate, expirationDate, warehouseLocation, temperatureRangeC, humidityRangePct, lastInspectionDate, inspectedBy, notes, createdAt, updatedAt, costPerTyreUSD, totalValueUSD, batchNumber, safetyRating, transportMethod) VALUES ('Pirelli', 'C2', 'Soft', '13.0/18.0', 1200, 800, '2024-04-01', '2025-04-01', 'Warehouse A', '-5 to 45', '10-90', '2024-03-20', 'Laura', 'All tyres certified', '2024-03-01 09:00', '2024-03-15 16:30', 250.0, 300000.0, 'B2024A', 'A', 'Truck');
INSERT INTO tyre_inventory (supplier, tyreModel, compound, size, quantityAvailable, quantityAllocated, restockDate, expirationDate, warehouseLocation, temperatureRangeC, humidityRangePct, lastInspectionDate, inspectedBy, notes, createdAt, updatedAt, costPerTyreUSD, totalValueUSD, batchNumber, safetyRating, transportMethod) VALUES ('Michelin', 'Pilot Sport', 'Medium', '12.5/19.0', 900, 600, '2024-05-10', '2025-05-10', 'Warehouse B', '-10 to 40', '15-85', '2024-04-05', 'Marco', 'Reserved for upcoming GP', '2024-04-01 10:00', '2024-04-20 14:45', 230.0, 207000.0, 'M2024B', 'A', 'Rail');
INSERT INTO tyre_inventory (supplier, tyreModel, compound, size, quantityAvailable, quantityAllocated, restockDate, expirationDate, warehouseLocation, temperatureRangeC, humidityRangePct, lastInspectionDate, inspectedBy, notes, createdAt, updatedAt, costPerTyreUSD, totalValueUSD, batchNumber, safetyRating, transportMethod) VALUES ('Bridgestone', 'Potenza', 'Hard', '13.5/20.5', 1500, 1100, '2024-06-15', '2025-06-15', 'Warehouse C', '-5 to 35', '20-80', '2024-05-30', 'Sofia', 'High wear resistance', '2024-05-01 08:30', '2024-05-25 12:00', 210.0, 315000.0, 'BR2024C', 'B', 'Air');

-- Telemetry summary aggregates
CREATE TABLE telemetry_summary (
    telemetryId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceName TEXT,
    lapCount INTEGER,
    avgSpeedKph REAL,
    maxSpeedKph REAL,
    avgFuelConsumptionLperLap REAL,
    totalDistanceKm REAL,
    pitStopCount INTEGER,
    avgPitStopTimeSec REAL,
    tyreWearAvgPct REAL,
    brakeTempAvgC REAL,
    engineTempAvgC REAL,
    gearboxTempAvgC REAL,
    gpsAccuracyAvgM REAL,
    dataQualityScore REAL,
    anomaliesDetected INTEGER,
    summaryNotes TEXT,
    generatedAt TEXT,
    analyst TEXT,
    version TEXT,
    dataSource TEXT,
    processingTimeSec REAL
);
INSERT INTO telemetry_summary (raceName, lapCount, avgSpeedKph, maxSpeedKph, avgFuelConsumptionLperLap, totalDistanceKm, pitStopCount, avgPitStopTimeSec, tyreWearAvgPct, brakeTempAvgC, engineTempAvgC, gearboxTempAvgC, gpsAccuracyAvgM, dataQualityScore, anomaliesDetected, summaryNotes, generatedAt, analyst, version, dataSource, processingTimeSec) VALUES ('Monaco Grand Prix', 78, 210.5, 330.2, 2.8, 16406.0, 3, 22.5, 13.4, 350.0, 95.0, 80.0, 0.5, 0.97, 2, 'Two minor sensor glitches', '2024-05-27 10:00', 'Alice', 'v1.2', 'TelemetryUnitA', 120.5);
INSERT INTO telemetry_summary (raceName, lapCount, avgSpeedKph, maxSpeedKph, avgFuelConsumptionLperLap, totalDistanceKm, pitStopCount, avgPitStopTimeSec, tyreWearAvgPct, brakeTempAvgC, engineTempAvgC, gearboxTempAvgC, gpsAccuracyAvgM, dataQualityScore, anomaliesDetected, summaryNotes, generatedAt, analyst, version, dataSource, processingTimeSec) VALUES ('Silverstone GP', 52, 240.3, 350.0, 3.1, 12496.0, 4, 24.0, 14.7, 380.0, 102.0, 85.0, 0.4, 0.99, 0, 'Clean data set', '2024-07-13 09:30', 'Bob', 'v1.0', 'TelemetryUnitB', 98.2);
INSERT INTO telemetry_summary (raceName, lapCount, avgSpeedKph, maxSpeedKph, avgFuelConsumptionLperLap, totalDistanceKm, pitStopCount, avgPitStopTimeSec, tyreWearAvgPct, brakeTempAvgC, engineTempAvgC, gearboxTempAvgC, gpsAccuracyAvgM, dataQualityScore, anomaliesDetected, summaryNotes, generatedAt, analyst, version, dataSource, processingTimeSec) VALUES ('Suzuka Race', 63, 225.7, 340.5, 3.0, 14219.0, 3, 21.8, 13.9, 365.0, 98.0, 82.0, 0.45, 0.96, 1, 'One telemetry dropout', '2024-09-23 11:15', 'Clara', 'v1.1', 'TelemetryUnitC', 110.0);

-- Safety car deployment records
CREATE TABLE safety_car_deployments (
    deploymentId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceName TEXT,
    lapNumber INTEGER,
    startTime TEXT,
    endTime TEXT,
    durationSec REAL,
    cause TEXT,
    affectedDriversCount INTEGER,
    incidentLocation TEXT,
    weatherDuring TEXT,
    notes TEXT,
    reportedBy TEXT,
    verified INTEGER,
    createdAt TEXT,
    updatedAt TEXT,
    safetyCarModel TEXT,
    operatingTeam TEXT,
    speedLimitKph INTEGER,
    lapsUnderSafetyCar INTEGER,
    penaltyApplied TEXT,
    marshalsInvolved INTEGER,
    communicationChannel TEXT
);
INSERT INTO safety_car_deployments (raceName, lapNumber, startTime, endTime, durationSec, cause, affectedDriversCount, incidentLocation, weatherDuring, notes, reportedBy, verified, createdAt, updatedAt, safetyCarModel, operatingTeam, speedLimitKph, lapsUnderSafetyCar, penaltyApplied, marshalsInvolved, communicationChannel) VALUES ('Monaco Grand Prix', 42, '15:30', '15:45', 900.0, 'Oil spill', 7, 'Turn 4', 'Sunny', 'Quick cleanup', 'Sam', 1, '2024-05-27 08:00', '2024-05-27 09:00', 'SC-200', 'TeamX', 80, 2, 'None', 5, 'Radio');
INSERT INTO safety_car_deployments (raceName, lapNumber, startTime, endTime, durationSec, cause, affectedDriversCount, incidentLocation, weatherDuring, notes, reportedBy, verified, createdAt, updatedAt, safetyCarModel, operatingTeam, speedLimitKph, lapsUnderSafetyCar, penaltyApplied, marshalsInvolved, communicationChannel) VALUES ('Silverstone GP', 30, '14:10', '14:22', 720.0, 'Debris', 5, 'St. Mary's Straight', 'Cloudy', 'Debris cleared by marshals', 'Liam', 1, '2024-07-13 07:30', '2024-07-13 08:15', 'SC-300', 'TeamY', 70, 1, '5s penalty to driver 22', 4, 'Radio');
INSERT INTO safety_car_deployments (raceName, lapNumber, startTime, endTime, durationSec, cause, affectedDriversCount, incidentLocation, weatherDuring, notes, reportedBy, verified, createdAt, updatedAt, safetyCarModel, operatingTeam, speedLimitKph, lapsUnderSafetyCar, penaltyApplied, marshalsInvolved, communicationChannel) VALUES ('Suzuka Race', 55, '16:05', '16:18', 780.0, 'Collision', 9, 'Turn 8', 'Rain', 'Red flag considered but avoided', 'Yuki', 1, '2024-09-23 09:00', '2024-09-23 09:45', 'SC-250', 'TeamZ', 75, 2, 'Drive-through to involved drivers', 6, 'Radio');

-- Environmental impact metrics per event
CREATE TABLE environmental_impact (
    impactId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventName TEXT,
    eventDate DATE,
    carbonFootprintTonnes REAL,
    wasteGeneratedKg REAL,
    recyclingRatePct REAL,
    energyConsumedMWh REAL,
    waterUsedCubicM REAL,
    noiseLevelDb REAL,
    airQualityIndex INTEGER,
    floraImpactScore REAL,
    faunaImpactScore REAL,
    mitigationActions TEXT,
    certifyingBody TEXT,
    certificationLevel TEXT,
    reportUrl TEXT,
    auditor TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    notes TEXT,
    fundingUSD REAL,
    publicAwarenessScore REAL,
    transportEmissionTonnes REAL
);
INSERT INTO environmental_impact (eventName, eventDate, carbonFootprintTonnes, wasteGeneratedKg, recyclingRatePct, energyConsumedMWh, waterUsedCubicM, noiseLevelDb, airQualityIndex, floraImpactScore, faunaImpactScore, mitigationActions, certifyingBody, certificationLevel, reportUrl, auditor, createdAt, updatedAt, notes, fundingUSD, publicAwarenessScore, transportEmissionTonnes) VALUES ('Monaco Grand Prix', '2024-05-26', 45.2, 12000, 65.0, 800, 4500, 95, 42, 3.5, 2.8, 'Tree planting, waste sorting', 'EcoAudit', 'Gold', 'http://reports.org/monaco2024.pdf', 'Olivia Green', '2024-06-01 10:00', '2024-06-10 12:00', 'Positive community feedback', 500000.0, 78.0, 12.5);
INSERT INTO environmental_impact (eventName, eventDate, carbonFootprintTonnes, wasteGeneratedKg, recyclingRatePct, energyConsumedMWh, waterUsedCubicM, noiseLevelDb, airQualityIndex, floraImpactScore, faunaImpactScore, mitigationActions, certifyingBody, certificationLevel, reportUrl, auditor, createdAt, updatedAt, notes, fundingUSD, publicAwarenessScore, transportEmissionTonnes) VALUES ('Silverstone GP', '2024-07-12', 55.0, 15000, 70.0, 950, 5200, 98, 38, 4.0, 3.0, 'Renewable energy, carbon offset', 'GreenCheck', 'Platinum', 'http://reports.org/silverstone2024.pdf', 'Ethan Brown', '2024-07-20 09:30', '2024-07-28 11:15', 'Excellent waste management', 600000.0, 82.0, 14.0);
INSERT INTO environmental_impact (eventName, eventDate, carbonFootprintTonnes, wasteGeneratedKg, recyclingRatePct, energyConsumedMWh, waterUsedCubicM, noiseLevelDb, airQualityIndex, floraImpactScore, faunaImpactScore, mitigationActions, certifyingBody, certificationLevel, reportUrl, auditor, createdAt, updatedAt, notes, fundingUSD, publicAwarenessScore, transportEmissionTonnes) VALUES ('Suzuka Race', '2024-09-22', 48.5, 13000, 68.0, 870, 4800, 96, 40, 3.8, 2.9, 'Hybrid power, litter campaigns', 'EcoSeal', 'Silver', 'http://reports.org/suzuka2024.pdf', 'Mia Tanaka', '2024-09-30 08:45', '2024-10-05 10:20', 'Good community involvement', 550000.0, 80.0, 13.2);