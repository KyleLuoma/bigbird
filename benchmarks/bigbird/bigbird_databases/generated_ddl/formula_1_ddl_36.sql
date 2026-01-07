-- Broadcast language tracks for race audio/subtitle management
CREATE TABLE broadcast_language_tracks (
    trackId INTEGER PRIMARY KEY,
    raceId INTEGER NOT NULL,
    languageCode TEXT NOT NULL,
    audioUrl TEXT,
    subtitleUrl TEXT,
    isLive INTEGER,
    durationSec INTEGER,
    creator TEXT,
    createdDate DATE,
    updatedDate DATE,
    bitrateKbps INTEGER,
    codec TEXT,
    channelNumber INTEGER,
    region TEXT,
    provider TEXT,
    licenseType TEXT,
    accessLevel TEXT,
    format TEXT,
    qualityRating INTEGER,
    notes TEXT
);

INSERT INTO broadcast_language_tracks (trackId, raceId, languageCode, audioUrl, subtitleUrl, isLive, durationSec, creator, createdDate, updatedDate, bitrateKbps, codec, channelNumber, region, provider, licenseType, accessLevel, format, qualityRating, notes) VALUES (1, 101, 'EN', 'http://audio1.com', 'http://sub1.com', 1, 3600, 'AudioTeam', '2023-01-01', '2023-01-02', 256, 'AAC', 5, 'Europe', 'ProviderX', 'Standard', 'Public', 'Stereo', 5, 'First track');
INSERT INTO broadcast_language_tracks (trackId, raceId, languageCode, audioUrl, subtitleUrl, isLive, durationSec, creator, createdDate, updatedDate, bitrateKbps, codec, channelNumber, region, provider, licenseType, accessLevel, format, qualityRating, notes) VALUES (2, 102, 'FR', 'http://audio2.com', 'http://sub2.com', 0, 3400, 'AudioTeam', '2023-02-10', '2023-02-11', 192, 'MP3', 6, 'France', 'ProviderY', 'Standard', 'Public', 'Mono', 4, 'French track');
INSERT INTO broadcast_language_tracks (trackId, raceId, languageCode, audioUrl, subtitleUrl, isLive, durationSec, creator, createdDate, updatedDate, bitrateKbps, codec, channelNumber, region, provider, licenseType, accessLevel, format, qualityRating, notes) VALUES (3, 103, 'DE', 'http://audio3.com', 'http://sub3.com', 1, 3800, 'AudioTeam', '2023-03-15', '2023-03-16', 320, 'AAC', 7, 'Germany', 'ProviderZ', 'Premium', 'Subscribers', 'Stereo', 5, 'German live track');

-- Fan loyalty challenges for seasonal engagement
CREATE TABLE fan_loyalty_challenges (
    challengeId INTEGER PRIMARY KEY,
    seasonYear INTEGER NOT NULL,
    name TEXT NOT NULL,
    startDate DATE,
    endDate DATE,
    description TEXT,
    pointsReward INTEGER,
    tier TEXT,
    maxParticipants INTEGER,
    isActive INTEGER,
    createdBy TEXT,
    createdDate DATE,
    updatedBy TEXT,
    updatedDate DATE,
    eligibilityCriteria TEXT,
    sponsorId INTEGER,
    badgeUrl TEXT,
    challengeType TEXT,
    difficultyLevel TEXT,
    rewardItem TEXT
);

INSERT INTO fan_loyalty_challenges (challengeId, seasonYear, name, startDate, endDate, description, pointsReward, tier, maxParticipants, isActive, createdBy, createdDate, updatedBy, updatedDate, eligibilityCriteria, sponsorId, badgeUrl, challengeType, difficultyLevel, rewardItem) VALUES (1, 2023, 'Speed Sprint', '2023-04-01', '2023-04-07', 'Complete a lap in under 90 seconds', 500, 'Gold', 1000, 1, 'Admin', '2023-03-20', 'Admin', '2023-03-21', 'All fans', 12, 'http://badge1.com', 'TimeTrial', 'Hard', 'T-Shirt');
INSERT INTO fan_loyalty_challenges (challengeId, seasonYear, name, startDate, endDate, description, pointsReward, tier, maxParticipants, isActive, createdBy, createdDate, updatedBy, updatedDate, eligibilityCriteria, sponsorId, badgeUrl, challengeType, difficultyLevel, rewardItem) VALUES (2, 2023, 'Pit Stop Trivia', '2023-05-01', '2023-05-05', 'Answer pit stop questions correctly', 300, 'Silver', 2000, 1, 'Admin', '2023-04-15', 'Admin', '2023-04-16', 'Registered fans', 14, 'http://badge2.com', 'Quiz', 'Medium', 'Cap');
INSERT INTO fan_loyalty_challenges (challengeId, seasonYear, name, startDate, endDate, description, pointsReward, tier, maxParticipants, isActive, createdBy, createdDate, updatedBy, updatedDate, eligibilityCriteria, sponsorId, badgeUrl, challengeType, difficultyLevel, rewardItem) VALUES (3, 2023, 'Grand Prix Puzzle', '2023-06-01', '2023-06-10', 'Solve the circuit puzzle', 800, 'Platinum', 500, 0, 'Admin', '2023-05-20', 'Admin', '2023-05-21', 'Premium fans', 16, 'http://badge3.com', 'Puzzle', 'Hard', 'Helmet');

-- Driver community events for fan interaction
CREATE TABLE driver_community_events (
    eventId INTEGER PRIMARY KEY,
    driverId INTEGER NOT NULL,
    eventName TEXT NOT NULL,
    eventDate DATE,
    location TEXT,
    organizer TEXT,
    eventType TEXT,
    participantsCount INTEGER,
    isCharitable INTEGER,
    fundraisingGoal REAL,
    amountRaised REAL,
    description TEXT,
    createdAt DATE,
    updatedAt DATE,
    socialMediaTag TEXT,
    sponsorId INTEGER,
    liveStreamUrl TEXT,
    contactEmail TEXT,
    contactPhone TEXT,
    eventStatus TEXT,
    notes TEXT
);

INSERT INTO driver_community_events (eventId, driverId, eventName, eventDate, location, organizer, eventType, participantsCount, isCharitable, fundraisingGoal, amountRaised, description, createdAt, updatedAt, socialMediaTag, sponsorId, liveStreamUrl, contactEmail, contactPhone, eventStatus, notes) VALUES (1, 45, 'Drive Day', '2023-07-15', 'Monaco', 'TeamPR', 'MeetAndGreet', 150, 1, 50000, 34000, 'Fans meet the driver', '2023-06-01', '2023-06-10', '#DriveDay', 22, 'http://stream1.com', 'info@team.com', '1234567890', 'Scheduled', 'First event');
INSERT INTO driver_community_events (eventId, driverId, eventName, eventDate, location, organizer, eventType, participantsCount, isCharitable, fundraisingGoal, amountRaised, description, createdAt, updatedAt, socialMediaTag, sponsorId, liveStreamUrl, contactEmail, contactPhone, eventStatus, notes) VALUES (2, 62, 'Tech Talk', '2023-08-20', 'Zurich', 'TechClub', 'Workshop', 80, 0, 20000, 0, 'Discuss car tech', '2023-07-05', '2023-07-12', '#TechTalk', 30, 'http://stream2.com', 'tech@team.com', '0987654321', 'Planned', 'Invite only');
INSERT INTO driver_community_events (eventId, driverId, eventName, eventDate, location, organizer, eventType, participantsCount, isCharitable, fundraisingGoal, amountRaised, description, createdAt, updatedAt, socialMediaTag, sponsorId, liveStreamUrl, contactEmail, contactPhone, eventStatus, notes) VALUES (3, 27, 'Charity Run', '2023-09-05', 'Berlin', 'CharityOrg', 'Run', 300, 1, 100000, 45000, 'Run for kids hospitals', '2023-08-01', '2023-08-15', '#CharityRun', 18, 'http://stream3.com', 'charity@team.com', '1122334455', 'Confirmed', 'Pending sponsors');

-- Circuit traffic flow statistics collected by sensors
CREATE TABLE circuit_traffic_flow_stats (
    statId INTEGER PRIMARY KEY,
    circuitId INTEGER NOT NULL,
    statDate DATE,
    hourOfDay INTEGER,
    vehicleCount INTEGER,
    averageSpeed REAL,
    congestionLevel TEXT,
    incidentCount INTEGER,
    sensorId TEXT,
    dataSource TEXT,
    temperature REAL,
    humidity REAL,
    windSpeed REAL,
    precipitation REAL,
    trafficSignalStatus TEXT,
    laneClosureCount INTEGER,
    pedestrianCount INTEGER,
    bikeCount INTEGER,
    publicTransportCount INTEGER,
    emissionLevel REAL,
    notes TEXT
);

INSERT INTO circuit_traffic_flow_stats (statId, circuitId, statDate, hourOfDay, vehicleCount, averageSpeed, congestionLevel, incidentCount, sensorId, dataSource, temperature, humidity, windSpeed, precipitation, trafficSignalStatus, laneClosureCount, pedestrianCount, bikeCount, publicTransportCount, emissionLevel, notes) VALUES (1, 3, '2023-04-10', 9, 1500, 45.2, 'Medium', 0, 'SEN001', 'Radar', 22.5, 60, 5.2, 0, 'Green', 0, 200, 50, 30, 12.5, 'Normal morning traffic');
INSERT INTO circuit_traffic_flow_stats (statId, circuitId, statDate, hourOfDay, vehicleCount, averageSpeed, congestionLevel, incidentCount, sensorId, dataSource, temperature, humidity, windSpeed, precipitation, trafficSignalStatus, laneClosureCount, pedestrianCount, bikeCount, publicTransportCount, emissionLevel, notes) VALUES (2, 3, '2023-04-10', 18, 1800, 38.7, 'High', 2, 'SEN002', 'Camera', 18.0, 70, 8.1, 0.3, 'Red', 1, 150, 30, 20, 15.2, 'Evening rush with minor incident');
INSERT INTO circuit_traffic_flow_stats (statId, circuitId, statDate, hourOfDay, vehicleCount, averageSpeed, congestionLevel, incidentCount, sensorId, dataSource, temperature, humidity, windSpeed, precipitation, trafficSignalStatus, laneClosureCount, pedestrianCount, bikeCount, publicTransportCount, emissionLevel, notes) VALUES (3, 3, '2023-04-11', 2, 800, 55.0, 'Low', 0, 'SEN003', 'Radar', 16.0, 55, 3.0, 0, 'Green', 0, 100, 20, 10, 8.0, 'Late night low traffic');

-- Constructor patent filings for technical innovations
CREATE TABLE constructor_patent_filings (
    filingId INTEGER PRIMARY KEY,
    constructorId INTEGER NOT NULL,
    patentNumber TEXT,
    title TEXT,
    filingDate DATE,
    publicationDate DATE,
    status TEXT,
    jurisdiction TEXT,
    inventors TEXT,
    abstract TEXT,
    claimsCount INTEGER,
    pages INTEGER,
    ipcClassification TEXT,
    priorityDate DATE,
    legalRepresentative TEXT,
    feePaid REAL,
    isFamilyMember INTEGER,
    relatedTechnology TEXT,
    techDomain TEXT,
    notes TEXT,
    url TEXT
);

INSERT INTO constructor_patent_filings (filingId, constructorId, patentNumber, title, filingDate, publicationDate, status, jurisdiction, inventors, abstract, claimsCount, pages, ipcClassification, priorityDate, legalRepresentative, feePaid, isFamilyMember, relatedTechnology, techDomain, notes, url) VALUES (1, 5, 'US20230001A', 'Hybrid Power Unit', '2023-01-05', '2023-07-12', 'Granted', 'US', 'John Doe;Jane Smith', 'Hybrid engine system', 25, 30, 'F02D', '2022-12-01', 'LawFirmA', 1500.00, 1, 'Energy Recovery', 'Powertrain', 'First patent', 'http://patents.com/US20230001A');
INSERT INTO constructor_patent_filings (filingId, constructorId, patentNumber, title, filingDate, publicationDate, status, jurisdiction, inventors, abstract, claimsCount, pages, ipcClassification, priorityDate, legalRepresentative, feePaid, isFamilyMember, relatedTechnology, techDomain, notes, url) VALUES (2, 7, 'EP20230045B', 'Aerodynamic Wing', '2023-02-10', '2023-08-20', 'Pending', 'EP', 'Alice Brown;Bob White', 'Advanced wing design', 18, 22, 'F02F', '2023-01-15', 'LawFirmB', 1200.00, 0, 'Downforce Optimization', 'Aerodynamics', 'Second filing', 'http://patents.com/EP20230045B');
INSERT INTO constructor_patent_filings (filingId, constructorId, patentNumber, title, filingDate, publicationDate, status, jurisdiction, inventors, abstract, claimsCount, pages, ipcClassification, priorityDate, legalRepresentative, feePaid, isFamilyMember, relatedTechnology, techDomain, notes, url) VALUES (3, 9, 'JP20230123C', 'Cooling System', '2023-03-12', '2023-09-30', 'Granted', 'JP', 'Carlos Tan;Diana Lee', 'Efficient cooling for power unit', 20, 28, 'F24F', '2023-02-20', 'LawFirmC', 1300.00, 1, 'Thermal Management', 'Cooling', 'Third patent', 'http://patents.com/JP20230123C');

-- Race eco certifications tracking sustainability measures
CREATE TABLE race_eco_certifications (
    certId INTEGER PRIMARY KEY,
    raceId INTEGER NOT NULL,
    certificationBody TEXT,
    level TEXT,
    certificationDate DATE,
    expirationDate DATE,
    carbonOffsetTons REAL,
    renewableEnergyPercent REAL,
    wasteDiversionPercent REAL,
    waterUsageLiters REAL,
    sustainabilityScore REAL,
    auditorName TEXT,
    auditReportUrl TEXT,
    notes TEXT,
    isActive INTEGER,
    verificationCode TEXT,
    complianceStatus TEXT,
    emissionReductionPlan TEXT,
    greenTechUsed TEXT,
    energySavedMWh REAL
);

INSERT INTO race_eco_certifications (certId, raceId, certificationBody, level, certificationDate, expirationDate, carbonOffsetTons, renewableEnergyPercent, wasteDiversionPercent, waterUsageLiters, sustainabilityScore, auditorName, auditReportUrl, notes, isActive, verificationCode, complianceStatus, emissionReductionPlan, greenTechUsed, energySavedMWh) VALUES (1, 101, 'ISO', 'Gold', '2023-04-01', '2024-04-01', 120.5, 85.0, 92.3, 450000, 88.7, 'AuditCo', 'http://reports.com/eco101', 'Strong performance', 1, 'VER123', 'Compliant', 'Use of electric vehicles', 'SolarPanels', 1500.0);
INSERT INTO race_eco_certifications (certId, raceId, certificationBody, level, certificationDate, expirationDate, carbonOffsetTons, renewableEnergyPercent, wasteDiversionPercent, waterUsageLiters, sustainabilityScore, auditorName, auditReportUrl, notes, isActive, verificationCode, complianceStatus, emissionReductionPlan, greenTechUsed, energySavedMWh) VALUES (2, 102, 'GreenSeal', 'Silver', '2023-05-15', '2024-05-15', 95.0, 70.0, 88.0, 380000, 81.2, 'EcoAuditors', 'http://reports.com/eco102', 'Good results', 1, 'VER124', 'Compliant', 'Reduced single-use plastics', 'WindTurbines', 1200.0);
INSERT INTO race_eco_certifications (certId, raceId, certificationBody, level, certificationDate, expirationDate, carbonOffsetTons, renewableEnergyPercent, wasteDiversionPercent, waterUsageLiters, sustainabilityScore, auditorName, auditReportUrl, notes, isActive, verificationCode, complianceStatus, emissionReductionPlan, greenTechUsed, energySavedMWh) VALUES (3, 103, 'EcoCert', 'Bronze', '2023-06-20', '2024-06-20', 80.0, 60.0, 85.0, 310000, 75.5, 'SustainCheck', 'http://reports.com/eco103', 'Needs improvement', 0, 'VER125', 'Pending', 'Introduce biofuels', 'LEDLighting', 900.0);

-- Medical research studies linked to driver health programs
CREATE TABLE medical_research_studies (
    studyId INTEGER PRIMARY KEY,
    title TEXT,
    startDate DATE,
    endDate DATE,
    principalInvestigator TEXT,
    institution TEXT,
    studyType TEXT,
    participantsCount INTEGER,
    methodology TEXT,
    primaryOutcome TEXT,
    secondaryOutcome TEXT,
    fundingAgency TEXT,
    budgetUSD REAL,
    ethicalApprovalDate DATE,
    status TEXT,
    resultsSummary TEXT,
    publicationUrl TEXT,
    notes TEXT,
    dataAccessLevel TEXT,
    complianceScore REAL
);

INSERT INTO medical_research_studies (studyId, title, startDate, endDate, principalInvestigator, institution, studyType, participantsCount, methodology, primaryOutcome, secondaryOutcome, fundingAgency, budgetUSD, ethicalApprovalDate, status, resultsSummary, publicationUrl, notes, dataAccessLevel, complianceScore) VALUES (1, 'Cardiovascular Fitness in Drivers', '2022-01-01', '2024-12-31', 'Dr Alice Heart', 'HealthUni', 'Longitudinal', 120, 'Wearable monitoring', 'VO2 max improvement', 'Recovery time reduction', 'HealthFund', 500000, '2021-11-15', 'Ongoing', 'Preliminary improvements noted', 'http://journals.com/study1', 'Requires follow-up', 'Public', 92.5);
INSERT INTO medical_research_studies (studyId, title, startDate, endDate, principalInvestigator, institution, studyType, participantsCount, methodology, primaryOutcome, secondaryOutcome, fundingAgency, budgetUSD, ethicalApprovalDate, status, resultsSummary, publicationUrl, notes, dataAccessLevel, complianceScore) VALUES (2, 'Sleep Quality and Reaction Time', '2023-03-01', '2025-02-28', 'Dr Bob Night', 'SleepLab', 'CrossSectional', 80, 'Polysomnography', 'Latency reduction', 'Error rate decrease', 'SleepResearchCouncil', 300000, '2023-01-20', 'Ongoing', 'Data collection phase', 'http://journals.com/study2', '', 'Restricted', 88.0);
INSERT INTO medical_research_studies (studyId, title, startDate, endDate, principalInvestigator, institution, studyType, participantsCount, methodology, primaryOutcome, secondaryOutcome, fundingAgency, budgetUSD, ethicalApprovalDate, status, resultsSummary, publicationUrl, notes, dataAccessLevel, complianceScore) VALUES (3, 'Nutrition Impact on Endurance', '2021-06-15', '2023-12-31', 'Dr Carol Fuel', 'NutriScience', 'RandomizedControl', 60, 'Dietary intervention', 'Stamina increase', 'Weight stability', 'FoodHealthOrg', 250000, '2021-04-10', 'Completed', 'Positive endurance outcomes', 'http://journals.com/study3', 'Published', 'Public', 94.3);

-- Venue solar panel inventory for renewable energy tracking
CREATE TABLE venue_solar_panel_inventory (
    inventoryId INTEGER PRIMARY KEY,
    venueId INTEGER NOT NULL,
    panelId TEXT,
    model TEXT,
    manufacturer TEXT,
    capacityKW REAL,
    installationDate DATE,
    orientation TEXT,
    tiltAngle REAL,
    inverterId TEXT,
    warrantyEndDate DATE,
    maintenanceSchedule TEXT,
    lastInspectionDate DATE,
    efficiencyPercent REAL,
    areaSqM REAL,
    locationDescription TEXT,
    serialNumber TEXT,
    status TEXT,
    notes TEXT,
    lastUpdated DATE,
    responsibleTech TEXT
);

INSERT INTO venue_solar_panel_inventory (inventoryId, venueId, panelId, model, manufacturer, capacityKW, installationDate, orientation, tiltAngle, inverterId, warrantyEndDate, maintenanceSchedule, lastInspectionDate, efficiencyPercent, areaSqM, locationDescription, serialNumber, status, notes, lastUpdated, responsibleTech) VALUES (1, 10, 'SP001', 'SunPowerX', 'SunPower', 250.0, '2020-05-10', 'South', 30.0, 'INV001', '2030-05-10', 'Annual', '2023-04-01', 22.5, 1500.0, 'NorthRoof', 'SN12345', 'Active', 'Operating nominally', '2023-04-15', 'TechA');
INSERT INTO venue_solar_panel_inventory (inventoryId, venueId, panelId, model, manufacturer, capacityKW, installationDate, orientation, tiltAngle, inverterId, warrantyEndDate, maintenanceSchedule, lastInspectionDate, efficiencyPercent, areaSqM, locationDescription, serialNumber, status, notes, lastUpdated, responsibleTech) VALUES (2, 10, 'SP002', 'SolarMax', 'SolarInc', 200.0, '2021-03-20', 'East', 25.0, 'INV002', '2031-03-20', 'BiAnnual', '2023-03-20', 21.0, 1200.0, 'SouthRoof', 'SN67890', 'Active', 'Slight degradation observed', '2023-04-10', 'TechB');
INSERT INTO venue_solar_panel_inventory (inventoryId, venueId, panelId, model, manufacturer, capacityKW, installationDate, orientation, tiltAngle, inverterId, warrantyEndDate, maintenanceSchedule, lastInspectionDate, efficiencyPercent, areaSqM, locationDescription, serialNumber, status, notes, lastUpdated, responsibleTech) VALUES (3, 12, 'SP003', 'EcoPanel', 'EcoEnergy', 300.0, '2019-11-05', 'West', 35.0, 'INV003', '2029-11-05', 'Annual', '2023-02-28', 23.2, 1800.0, 'EastWall', 'SN54321', 'Active', 'New installation', '2023-04-12', 'TechC');

-- Logistics drone deliveries for race equipment transport
CREATE TABLE logistics_drone_deliveries (
    deliveryId INTEGER PRIMARY KEY,
    raceId INTEGER NOT NULL,
    droneId TEXT,
    pilotId TEXT,
    payloadWeightKg REAL,
    deliveryTimeUTC DATETIME,
    departureTimeUTC DATETIME,
    arrivalTimeUTC DATETIME,
    originLocation TEXT,
    destinationLocation TEXT,
    weatherCondition TEXT,
    batteryLevelStart REAL,
    batteryLevelEnd REAL,
    distanceKm REAL,
    deliveryStatus TEXT,
    packageId TEXT,
    trackingUrl TEXT,
    notes TEXT,
    complianceCheck INTEGER,
    regulatoryApprovalId TEXT
);

INSERT INTO logistics_drone_deliveries (deliveryId, raceId, droneId, pilotId, payloadWeightKg, deliveryTimeUTC, departureTimeUTC, arrivalTimeUTC, originLocation, destinationLocation, weatherCondition, batteryLevelStart, batteryLevelEnd, distanceKm, deliveryStatus, packageId, trackingUrl, notes, complianceCheck, regulatoryApprovalId) VALUES (1, 101, 'DRN01', 'PILOTA', 12.5, '2023-07-01 12:30:00', '2023-07-01 12:00:00', '2023-07-01 12:25:00', 'WarehouseA', 'CircuitPitA', 'Clear', 100.0, 80.0, 5.2, 'Delivered', 'PKG001', 'http://track.com/PKG001', 'No issues', 1, 'REG123');
INSERT INTO logistics_drone_deliveries (deliveryId, raceId, droneId, pilotId, payloadWeightKg, deliveryTimeUTC, departureTimeUTC, arrivalTimeUTC, originLocation, destinationLocation, weatherCondition, batteryLevelStart, batteryLevelEnd, distanceKm, deliveryStatus, packageId, trackingUrl, notes, complianceCheck, regulatoryApprovalId) VALUES (2, 102, 'DRN02', 'PILOTB', 8.0, '2023-08-15 09:45:00', '2023-08-15 09:20:00', '2023-08-15 09:40:00', 'WarehouseB', 'CircuitPitB', 'Windy', 95.0, 70.0, 7.5, 'Delivered', 'PKG002', 'http://track.com/PKG002', 'Minor delay due to wind', 1, 'REG124');
INSERT INTO logistics_drone_deliveries (deliveryId, raceId, droneId, pilotId, payloadWeightKg, deliveryTimeUTC, departureTimeUTC, arrivalTimeUTC, originLocation, destinationLocation, weatherCondition, batteryLevelStart, batteryLevelEnd, distanceKm, deliveryStatus, packageId, trackingUrl, notes, complianceCheck, regulatoryApprovalId) VALUES (3, 103, 'DRN03', 'PILOTC', 15.0, '2023-09-20 15:10:00', '2023-09-20 14:40:00', '2023-09-20 15:05:00', 'WarehouseC', 'CircuitPitC', 'Rain', 90.0, 60.0, 6.0, 'Failed', 'PKG003', 'http://track.com/PKG003', 'Landing gear issue', 0, 'REG125');

-- Sponsor charity contributions tracking social impact
CREATE TABLE sponsor_charity_contributions (
    contributionId INTEGER PRIMARY KEY,
    sponsorId INTEGER NOT NULL,
    charityId INTEGER NOT NULL,
    contributionDate DATE,
    amountUSD REAL,
    currency TEXT,
    purpose TEXT,
    campaignName TEXT,
    matchingFund REAL,
    receiptUrl TEXT,
    taxDeductible INTEGER,
    notes TEXT,
    approvedBy TEXT,
    approvalDate DATE,
    status TEXT,
    impactMetric TEXT,
    region TEXT,
    programType TEXT,
    contactPerson TEXT,
    contactEmail TEXT,
    verificationCode TEXT
);

INSERT INTO sponsor_charity_contributions (contributionId, sponsorId, charityId, contributionDate, amountUSD, currency, purpose, campaignName, matchingFund, receiptUrl, taxDeductible, notes, approvedBy, approvalDate, status, impactMetric, region, programType, contactPerson, contactEmail, verificationCode) VALUES (1, 22, 101, '2023-04-15', 50000, 'USD', 'Education', 'FutureDrivers', 25000, 'http://receipts.com/rc1', 1, 'First quarter donation', 'DirectorA', '2023-04-20', 'Approved', 'StudentsBenefited', 'Europe', 'Scholarship', 'AnnaSmith', 'anna.smith@sponsor.com', 'VER001');
INSERT INTO sponsor_charity_contributions (contributionId, sponsorId, charityId, contributionDate, amountUSD, currency, purpose, campaignName, matchingFund, receiptUrl, taxDeductible, notes, approvedBy, approvalDate, status, impactMetric, region, programType, contactPerson, contactEmail, verificationCode) VALUES (2, 24, 102, '2023-07-01', 75000, 'USD', 'Healthcare', 'RaceHealth', 0, 'http://receipts.com/rc2', 1, 'Mid-year health initiative', 'DirectorB', '2023-07-05', 'Approved', 'PatientsTreated', 'Asia', 'MedicalAid', 'BorisLee', 'boris.lee@sponsor.com', 'VER002');
INSERT INTO sponsor_charity_contributions (contributionId, sponsorId, charityId, contributionDate, amountUSD, currency, purpose, campaignName, matchingFund, receiptUrl, taxDeductible, notes, approvedBy, approvalDate, status, impactMetric, region, programType, contactPerson, contactEmail, verificationCode) VALUES (3, 26, 103, '2023-10-20', 60000, 'USD', 'Environment', 'GreenTrack', 30000, 'http://receipts.com/rc3', 1, 'End of year green project', 'DirectorC', '2023-10-25', 'Pending', 'TreesPlanted', 'NorthAmerica', 'Reforestation', 'CeliaM', 'celia.m@sponsor.com', 'VER003');