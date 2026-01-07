-- Venue historical preservation details
CREATE TABLE venue_historical_preservation (
    preservationId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER NOT NULL,
    buildingName TEXT NOT NULL,
    constructionYear INTEGER,
    architect TEXT,
    heritageStatus TEXT,
    description TEXT,
    preservationPlanUrl TEXT,
    lastInspectedDate DATE,
    nextInspectionDue DATE,
    fundingSource TEXT,
    allocatedBudget REAL,
    contactPerson TEXT,
    contactEmail TEXT,
    phoneNumber TEXT,
    gpsLatitude REAL,
    gpsLongitude REAL,
    areaSqM REAL,
    photoArchiveUrl TEXT,
    notes TEXT
);

INSERT INTO venue_historical_preservation (venueId, buildingName, constructionYear, architect, heritageStatus, description, preservationPlanUrl, lastInspectedDate, nextInspectionDue, fundingSource, allocatedBudget, contactPerson, contactEmail, phoneNumber, gpsLatitude, gpsLongitude, areaSqM, photoArchiveUrl, notes)
VALUES (1, 'MainGrandstand', 1975, 'JohnDoeArchitect', 'NationalHeritage', 'Historic grandstand with wooden beams', 'http://example.com/plan1', '2023-06-15', '2025-06-15', 'GovernmentGrant', 250000.00, 'Alice Smith', 'alice@example.com', '5551234567', 42.3456, -71.0987, 1500.5, 'http://example.com/photos1', 'No issues');

INSERT INTO venue_historical_preservation (venueId, buildingName, constructionYear, architect, heritageStatus, description, preservationPlanUrl, lastInspectedDate, nextInspectionDue, fundingSource, allocatedBudget, contactPerson, contactEmail, phoneNumber, gpsLatitude, gpsLongitude, areaSqM, photoArchiveUrl, notes)
VALUES (2, 'OldPitBuilding', 1960, 'MariaConstruction', 'RegionalHeritage', 'Pit building renovated in 2010', 'http://example.com/plan2', '2022-09-10', '2024-09-10', 'PrivateDonor', 120000.00, 'Bob Jones', 'bob@example.com', '5559876543', 41.9876, -70.5432, 800.0, 'http://example.com/photos2', 'Roof repair needed');

INSERT INTO venue_historical_preservation (venueId, buildingName, constructionYear, architect, heritageStatus, description, preservationPlanUrl, lastInspectedDate, nextInspectionDue, fundingSource, allocatedBudget, contactPerson, contactEmail, phoneNumber, gpsLatitude, gpsLongitude, areaSqM, photoArchiveUrl, notes)
VALUES (3, 'HistoricControlTower', 1955, 'SamEngineering', 'NationalHeritage', 'Control tower with original instrumentation', 'http://example.com/plan3', '2021-12-01', '2023-12-01', 'HeritageFund', 340000.00, 'Clara Lee', 'clara@example.com', '5552223333', 43.2100, -72.1100, 500.2, 'http://example.com/photos3', 'Electronics upgrade scheduled');

-- Race nutrition plan details
CREATE TABLE race_nutrition_plan (
    planId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    mealTime TEXT,
    calories INTEGER,
    proteinGrams INTEGER,
    carbsGrams INTEGER,
    fatGrams INTEGER,
    hydrationLiters REAL,
    supplementDetails TEXT,
    chefName TEXT,
    dietaryRestrictions TEXT,
    deliveryTime TIME,
    kitchenStaffCount INTEGER,
    temperatureC REAL,
    notes TEXT,
    createdBy TEXT,
    createdDate DATE,
    approvedBy TEXT,
    approvedDate DATE,
    comments TEXT
);

INSERT INTO race_nutrition_plan (raceId, mealTime, calories, proteinGrams, carbsGrams, fatGrams, hydrationLiters, supplementDetails, chefName, dietaryRestrictions, deliveryTime, kitchenStaffCount, temperatureC, notes, createdBy, createdDate, approvedBy, approvedDate, comments)
VALUES (101, 'Breakfast', 1200, 30, 150, 40, 2.5, 'ElectrolyteMix', 'ChefMario', 'GlutenFree', '08:00:00', 8, 22.0, 'High-carb start', 'NutritionTeam', '2024-03-01', 'HeadChef', '2024-03-02', 'Ready for race day');

INSERT INTO race_nutrition_plan (raceId, mealTime, calories, proteinGrams, carbsGrams, fatGrams, hydrationLiters, supplementDetails, chefName, dietaryRestrictions, deliveryTime, kitchenStaffCount, temperatureC, notes, createdBy, createdDate, approvedBy, approvedDate, comments)
VALUES (101, 'Lunch', 1800, 45, 200, 60, 3.0, 'VitaminBComplex', 'ChefLuigi', 'Vegan', '13:00:00', 10, 23.5, 'Protein boost after midday', 'NutritionTeam', '2024-03-01', 'HeadChef', '2024-03-02', 'All meals labeled');

INSERT INTO race_nutrition_plan (raceId, mealTime, calories, proteinGrams, carbsGrams, fatGrams, hydrationLiters, supplementDetails, chefName, dietaryRestrictions, deliveryTime, kitchenStaffCount, temperatureC, notes, createdBy, createdDate, approvedBy, approvedDate, comments)
VALUES (101, 'Dinner', 1500, 35, 180, 50, 2.8, 'Omega3Oil', 'ChefGiovanni', 'NutFree', '19:00:00', 7, 21.0, 'Light dinner before night race', 'NutritionTeam', '2024-03-01', 'HeadChef', '2024-03-02', 'Delivered to pit lane');

-- Driver media licence registry
CREATE TABLE driver_media_license (
    licenseId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER NOT NULL,
    mediaOutlet TEXT,
    licenseNumber TEXT,
    issueDate DATE,
    expiryDate DATE,
    authorizedContentTypes TEXT,
    region TEXT,
    contactPerson TEXT,
    contactPhone TEXT,
    contactEmail TEXT,
    feeAmount REAL,
    feeCurrency TEXT,
    renewalReminderSent BOOLEAN,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    status TEXT,
    complianceScore REAL,
    remarks TEXT
);

INSERT INTO driver_media_license (driverId, mediaOutlet, licenseNumber, issueDate, expiryDate, authorizedContentTypes, region, contactPerson, contactPhone, contactEmail, feeAmount, feeCurrency, renewalReminderSent, notes, createdAt, updatedAt, status, complianceScore, remarks)
VALUES (201, 'SpeedTV', 'ML-001234', '2022-05-10', '2025-05-10', 'Interview,Feature', 'Europe', 'Emily Clark', '5551112222', 'emily@speedtv.com', 5000.00, 'USD', 0, 'First issue', '2022-05-10 09:00:00', '2024-01-15 14:30:00', 'Active', 92.5, 'No incidents');

INSERT INTO driver_media_license (driverId, mediaOutlet, licenseNumber, issueDate, expiryDate, authorizedContentTypes, region, contactPerson, contactPhone, contactEmail, feeAmount, feeCurrency, renewalReminderSent, notes, createdAt, updatedAt, status, complianceScore, remarks)
VALUES (202, 'RacingDaily', 'ML-005678', '2021-03-20', '2024-03-20', 'Article,Photo', 'NorthAmerica', 'John Miller', '5553334444', 'john@racingdaily.com', 3000.00, 'USD', 1, 'Renewal pending', '2021-03-20 10:15:00', '2023-12-01 11:45:00', 'PendingRenewal', 85.0, 'Awaiting payment');

INSERT INTO driver_media_license (driverId, mediaOutlet, licenseNumber, issueDate, expiryDate, authorizedContentTypes, region, contactPerson, contactPhone, contactEmail, feeAmount, feeCurrency, renewalReminderSent, notes, createdAt, updatedAt, status, complianceScore, remarks)
VALUES (203, 'FastTrackOnline', 'ML-009999', '2023-01-05', '2026-01-05', 'Video,LiveStream', 'Asia', 'Sara Lee', '5557778888', 'sara@fasttrack.com', 4000.00, 'USD', 0, 'New licence', '2023-01-05 08:30:00', '2023-01-05 08:30:00', 'Active', 98.0, 'All clear');

-- Circuit drone operations log
CREATE TABLE circuit_drone_operations (
    operationId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    droneId TEXT,
    purpose TEXT,
    operatorName TEXT,
    flightDate DATE,
    startTime TIME,
    endTime TIME,
    altitudeMeters REAL,
    speedKmh REAL,
    videoUrl TEXT,
    photoCount INTEGER,
    batteryLevelStart INTEGER,
    batteryLevelEnd INTEGER,
    weatherCondition TEXT,
    windSpeedKmh REAL,
    notes TEXT,
    regulatoryApprovalId TEXT,
    complianceStatus TEXT,
    incidentReportUrl TEXT
);

INSERT INTO circuit_drone_operations (circuitId, droneId, purpose, operatorName, flightDate, startTime, endTime, altitudeMeters, speedKmh, videoUrl, photoCount, batteryLevelStart, batteryLevelEnd, weatherCondition, windSpeedKmh, notes, regulatoryApprovalId, complianceStatus, incidentReportUrl)
VALUES (10, 'DRN-001', 'TrackInspection', 'Mike Anderson', '2024-04-12', '09:15:00', '09:45:00', 120.5, 85.0, 'http://example.com/video1', 250, 98, 92, 'Clear', 5.2, 'No issues detected', 'RA-2024-001', 'Compliant', '');

INSERT INTO circuit_drone_operations (circuitId, droneId, purpose, operatorName, flightDate, startTime, endTime, altitudeMeters, speedKmh, videoUrl, photoCount, batteryLevelStart, batteryLevelEnd, weatherCondition, windSpeedKmh, notes, regulatoryApprovalId, complianceStatus, incidentReportUrl)
VALUES (11, 'DRN-002', 'CrowdMonitoring', 'Laura Smith', '2024-05-03', '14:00:00', '14:30:00', 80.0, 60.0, 'http://example.com/video2', 180, 95, 88, 'PartlyCloudy', 7.8, 'Minor wind gust at 14:20', 'RA-2024-002', 'Compliant', '');

INSERT INTO circuit_drone_operations (circuitId, droneId, purpose, operatorName, flightDate, startTime, endTime, altitudeMeters, speedKmh, videoUrl, photoCount, batteryLevelStart, batteryLevelEnd, weatherCondition, windSpeedKmh, notes, regulatoryApprovalId, complianceStatus, incidentReportUrl)
VALUES (12, 'DRN-003', 'EnvironmentalSurvey', 'Tom Rivera', '2024-06-20', '11:30:00', '12:10:00', 150.0, 70.0, 'http://example.com/video3', 300, 97, 90, 'Sunny', 3.1, 'Collected air quality data', 'RA-2024-003', 'Compliant', '');

-- Spectator mobile app usage tracking
CREATE TABLE spectator_mobile_app_usage (
    usageId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    userId INTEGER NOT NULL,
    deviceId TEXT,
    appVersion TEXT,
    sessionStart DATETIME,
    sessionEnd DATETIME,
    pagesViewed INTEGER,
    featuresUsed TEXT,
    dataConsumedMb REAL,
    networkType TEXT,
    osVersion TEXT,
    locationLat REAL,
    locationLng REAL,
    feedbackRating INTEGER,
    feedbackComment TEXT,
    crashCount INTEGER,
    pushNotificationsEnabled BOOLEAN,
    inAppPurchases INTEGER,
    loyaltyPointsEarned INTEGER,
    geoFenceTriggered BOOLEAN
);

INSERT INTO spectator_mobile_app_usage (raceId, userId, deviceId, appVersion, sessionStart, sessionEnd, pagesViewed, featuresUsed, dataConsumedMb, networkType, osVersion, locationLat, locationLng, feedbackRating, feedbackComment, crashCount, pushNotificationsEnabled, inAppPurchases, loyaltyPointsEarned, geoFenceTriggered)
VALUES (101, 1001, 'DEV-ABC123', '2.5.1', '2024-07-01 08:05:00', '2024-07-01 12:30:00', 45, 'LiveTiming,Chat', 85.6, 'WiFi', 'iOS14', 42.3611, -71.0578, 5, 'Great app', 0, 1, 2, 150, 1);

INSERT INTO spectator_mobile_app_usage (raceId, userId, deviceId, appVersion, sessionStart, sessionEnd, pagesViewed, featuresUsed, dataConsumedMb, networkType, osVersion, locationLat, locationLng, feedbackRating, feedbackComment, crashCount, pushNotificationsEnabled, inAppPurchases, loyaltyPointsEarned, geoFenceTriggered)
VALUES (101, 1002, 'DEV-XYZ789', '2.5.1', '2024-07-01 09:20:00', '2024-07-01 11:45:00', 30, 'Replay,Stats', 60.2, '4G', 'Android11', 41.9028, -73.9654, 4, 'Needs faster loading', 1, 1, 0, 1, 120, 0);

INSERT INTO spectator_mobile_app_usage (raceId, userId, deviceId, appVersion, sessionStart, sessionEnd, pagesViewed, featuresUsed, dataConsumedMb, networkType, osVersion, locationLat, locationLng, feedbackRating, feedbackComment, crashCount, pushNotificationsEnabled, inAppPurchases, loyaltyPointsEarned, geoFenceTriggered)
VALUES (101, 1003, 'DEV-LMN456', '2.5.1', '2024-07-01 10:00:00', '2024-07-01 13:15:00', 55, 'LiveTiming,Map,Chat', 102.3, '5G', 'iOS15', 43.6510, -79.3470, 5, 'Excellent features', 0, 1, 3, 4, 200, 1);

-- Broadcast content interaction log
CREATE TABLE broadcast_content_interaction (
    interactionId INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId INTEGER NOT NULL,
    viewerId INTEGER NOT NULL,
    interactionTimestamp DATETIME,
    interactionType TEXT,
    contentSection TEXT,
    durationSeconds INTEGER,
    deviceType TEXT,
    ipAddress TEXT,
    locationLat REAL,
    locationLng REAL,
    adClicked BOOLEAN,
    commentText TEXT,
    rating INTEGER,
    sharePlatform TEXT,
    shareTimestamp DATETIME,
    subscriptionStatus TEXT,
    videoQuality TEXT,
    bufferingEvents INTEGER,
    totalBufferingTime REAL,
    notes TEXT
);

INSERT INTO broadcast_content_interaction (broadcastId, viewerId, interactionTimestamp, interactionType, contentSection, durationSeconds, deviceType, ipAddress, locationLat, locationLng, adClicked, commentText, rating, sharePlatform, shareTimestamp, subscriptionStatus, videoQuality, bufferingEvents, totalBufferingTime, notes)
VALUES (301, 5001, '2024-07-01 08:30:15', 'Play', 'MainRace', 5400, 'SmartTV', '192.168.1.10', 42.3601, -71.0589, 0, '', 5, 'Twitter', '2024-07-01 09:45:00', 'Premium', '1080p', 2, 4.5, '');

INSERT INTO broadcast_content_interaction (broadcastId, viewerId, interactionTimestamp, interactionType, contentSection, durationSeconds, deviceType, ipAddress, locationLat, locationLng, adClicked, commentText, rating, sharePlatform, shareTimestamp, subscriptionStatus, videoQuality, bufferingEvents, totalBufferingTime, notes)
VALUES (301, 5002, '2024-07-01 09:10:05', 'Pause', 'PitStop', 300, 'Mobile', '10.0.0.5', 40.7128, -74.0060, 1, 'Great replay', 4, 'Facebook', '2024-07-01 09:45:10', 'Free', '720p', 5, 12.0, 'Ad was relevant');

INSERT INTO broadcast_content_interaction (broadcastId, viewerId, interactionTimestamp, interactionType, contentSection, durationSeconds, deviceType, ipAddress, locationLat, locationLng, adClicked, commentText, rating, sharePlatform, shareTimestamp, subscriptionStatus, videoQuality, bufferingEvents, totalBufferingTime, notes)
VALUES (301, 5003, '2024-07-01 10:20:45', 'Seek', 'Qualifying', 1200, 'Desktop', '172.16.0.2', 34.0522, -118.2437, 0, '', 5, 'LinkedIn', '2024-07-01 11:00:00', 'Premium', '4K', 1, 1.2, '');

-- Team gear inventory management
CREATE TABLE team_gear_inventory (
    gearId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER NOT NULL,
    gearType TEXT,
    description TEXT,
    size TEXT,
    color TEXT,
    quantity INTEGER,
    supplierName TEXT,
    purchaseDate DATE,
    costPerUnit REAL,
    currency TEXT,
    warrantyMonths INTEGER,
    lastInspectedDate DATE,
    conditionRating INTEGER,
    storageLocation TEXT,
    barcode TEXT,
    assignedToMemberId INTEGER,
    usageCount INTEGER,
    notes TEXT,
    disposalStatus TEXT
);

INSERT INTO team_gear_inventory (teamId, gearType, description, size, color, quantity, supplierName, purchaseDate, costPerUnit, currency, warrantyMonths, lastInspectedDate, conditionRating, storageLocation, barcode, assignedToMemberId, usageCount, notes, disposalStatus)
VALUES (1, 'Helmet', 'Carbon fiber driver helmet', 'M', 'Red', 5, 'SafeGearCo', '2022-03-15', 350.00, 'USD', 24, '2024-01-10', 9, 'WarehouseA', 'HG-001', 201, 12, 'All helmets inspected', 'InUse');

INSERT INTO team_gear_inventory (teamId, gearType, description, size, color, quantity, supplierName, purchaseDate, costPerUnit, currency, warrantyMonths, lastInspectedDate, conditionRating, storageLocation, barcode, assignedToMemberId, usageCount, notes, disposalStatus)
VALUES (2, 'RacingSuit', 'Fire-resistant suit', 'L', 'Blue', 3, 'RaceWearLtd', '2021-07-20', 1200.00, 'USD', 36, '2023-12-05', 8, 'WarehouseB', 'RG-045', 202, 8, 'Minor wear on sleeves', 'InUse');

INSERT INTO team_gear_inventory (teamId, gearType, description, size, color, quantity, supplierName, purchaseDate, costPerUnit, currency, warrantyMonths, lastInspectedDate, conditionRating, storageLocation, barcode, assignedToMemberId, usageCount, notes, disposalStatus)
VALUES (3, 'Boots', 'High-grip racing boots', '42', 'Black', 4, 'FootTech', '2023-01-10', 400.00, 'USD', 12, '2024-02-15', 10, 'WarehouseC', 'BT-032', 203, 5, 'Newly purchased', 'InUse');

-- Fuel efficiency study results
CREATE TABLE fuel_efficiency_study_results (
    studyId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    carModel TEXT,
    engineType TEXT,
    fuelType TEXT,
    distanceKm REAL,
    fuelUsedLiters REAL,
    avgConsumptionLPer100km REAL,
    topSpeedKmh REAL,
    avgSpeedKmh REAL,
    temperatureC REAL,
    humidityPercent REAL,
    windSpeedKmh REAL,
    trackCondition TEXT,
    driverId INTEGER,
    analystName TEXT,
    analysisDate DATE,
    notes TEXT,
    confidenceLevel REAL,
    dataSource TEXT
);

INSERT INTO fuel_efficiency_study_results (raceId, carModel, engineType, fuelType, distanceKm, fuelUsedLiters, avgConsumptionLPer100km, topSpeedKmh, avgSpeedKmh, temperatureC, humidityPercent, windSpeedKmh, trackCondition, driverId, analystName, analysisDate, notes, confidenceLevel, dataSource)
VALUES (101, 'ModelX', 'V8Turbo', 'Petrol', 305.0, 85.5, 28.0, 330.0, 210.0, 22.5, 55.0, 8.0, 'Dry', 201, 'Ana Patel', '2024-04-20', 'Consistent performance', 0.95, 'TelemetrySystem');

INSERT INTO fuel_efficiency_study_results (raceId, carModel, engineType, fuelType, distanceKm, fuelUsedLiters, avgConsumptionLPer100km, topSpeedKmh, avgSpeedKmh, temperatureC, humidityPercent, windSpeedKmh, trackCondition, driverId, analystName, analysisDate, notes, confidenceLevel, dataSource)
VALUES (102, 'SpeedsterZ', 'Hybrid', 'Electric', 320.0, 70.0, 21.9, 340.0, 225.0, 24.0, 48.0, 5.5, 'Wet', 202, 'Liam Chen', '2024-05-12', 'Hybrid advantage evident', 0.97, 'TelemetrySystem');

INSERT INTO fuel_efficiency_study_results (raceId, carModel, engineType, fuelType, distanceKm, fuelUsedLiters, avgConsumptionLPer100km, topSpeedKmh, avgSpeedKmh, temperatureC, humidityPercent, windSpeedKmh, trackCondition, driverId, analystName, analysisDate, notes, confidenceLevel, dataSource)
VALUES (103, 'AeroForce', 'V6', 'Biofuel', 310.0, 78.0, 25.2, 325.0, 215.0, 21.0, 60.0, 9.5, 'Dry', 203, 'Nina Rossi', '2024-06-05', 'Biofuel efficiency within expectations', 0.93, 'TelemetrySystem');

-- Environmental restoration funding records
CREATE TABLE environmental_restoration_funding (
    fundingId INTEGER PRIMARY KEY AUTOINCREMENT,
    projectId INTEGER NOT NULL,
    sponsorId INTEGER NOT NULL,
    amount REAL,
    currency TEXT,
    startDate DATE,
    endDate DATE,
    purpose TEXT,
    allocatedTo TEXT,
    projectManager TEXT,
    contactEmail TEXT,
    status TEXT,
    approvalDate DATE,
    disbursementDate DATE,
    reportingFrequency TEXT,
    lastReportDate DATE,
    notes TEXT,
    impactScore REAL,
    sustainabilityMetric TEXT,
    auditUrl TEXT,
    remarks TEXT
);

INSERT INTO environmental_restoration_funding (projectId, sponsorId, amount, currency, startDate, endDate, purpose, allocatedTo, projectManager, contactEmail, status, approvalDate, disbursementDate, reportingFrequency, lastReportDate, notes, impactScore, sustainabilityMetric, auditUrl, remarks)
VALUES (501, 301, 750000.00, 'USD', '2024-01-01', '2025-12-31', 'Reforestation', 'CircuitAreaNorth', 'Emily Green', 'emily.green@sponsor.com', 'Active', '2023-12-15', '2024-01-10', 'Quarterly', '2024-04-01', 'Planting 2000 trees', 88.5, 'CarbonSequestration', 'http://example.com/audit1', '');

INSERT INTO environmental_restoration_funding (projectId, sponsorId, amount, currency, startDate, endDate, purpose, allocatedTo, projectManager, contactEmail, status, approvalDate, disbursementDate, reportingFrequency, lastReportDate, notes, impactScore, sustainabilityMetric, auditUrl, remarks)
VALUES (502, 302, 420000.00, 'USD', '2024-03-15', '2024-09-30', 'WetlandCleanup', 'CircuitAreaSouth', 'Carlos Ruiz', 'carlos.ruiz@sponsor.com', 'Pending', '2024-02-28', NULL, 'Monthly', NULL, 'Awaiting final permits', NULL, 'WaterQualityImprovement', '', '');

INSERT INTO environmental_restoration_funding (projectId, sponsorId, amount, currency, startDate, endDate, purpose, allocatedTo, projectManager, contactEmail, status, approvalDate, disbursementDate, reportingFrequency, lastReportDate, notes, impactScore, sustainabilityMetric, auditUrl, remarks)
VALUES (503, 303, 310000.00, 'USD', '2023-07-01', '2024-06-30', 'SolarPanelInstallation', 'CircuitParkingLot', 'Mia Patel', 'mia.patel@sponsor.com', 'Completed', '2023-06-20', '2023-07-05', 'Annually', '2024-05-20', 'Installed 150 kW solar array', 92.0, 'RenewableEnergy', 'http://example.com/audit3', 'Performance exceeded expectations');

-- Sponsor cultural events registry
CREATE TABLE sponsor_cultural_events (
    eventId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER NOT NULL,
    eventName TEXT,
    eventDate DATE,
    location TEXT,
    theme TEXT,
    expectedAttendance INTEGER,
    budget REAL,
    currency TEXT,
    organizerContact TEXT,
    organizerPhone TEXT,
    mediaPartner TEXT,
    sponsorshipLevel TEXT,
    benefitsProvided TEXT,
    ticketsAllocated INTEGER,
    merchandiseCount INTEGER,
    socialMediaHashtag TEXT,
    postEventReportUrl TEXT,
    feedbackScore REAL,
    notes TEXT,
    createdAt DATETIME
);

INSERT INTO sponsor_cultural_events (sponsorId, eventName, eventDate, location, theme, expectedAttendance, budget, currency, organizerContact, organizerPhone, mediaPartner, sponsorshipLevel, benefitsProvided, ticketsAllocated, merchandiseCount, socialMediaHashtag, postEventReportUrl, feedbackScore, notes, createdAt)
VALUES (301, 'HeritageFestival', '2024-08-10', 'CircuitMuseum', 'RacingHistory', 5000, 120000.00, 'USD', 'Laura Gomez', '5554445555', 'HeritageMedia', 'Gold', 'Branding,VIPLounge', 300, 1500, '#Heritage2024', 'http://example.com/report1', 8.7, 'High community interest', '2024-04-15 10:20:00');

INSERT INTO sponsor_cultural_events (sponsorId, eventName, eventDate, location, theme, expectedAttendance, budget, currency, organizerContact, organizerPhone, mediaPartner, sponsorshipLevel, benefitsProvided, ticketsAllocated, merchandiseCount, socialMediaHashtag, postEventReportUrl, feedbackScore, notes, createdAt)
VALUES (302, 'EcoRacingExpo', '2024-09-05', 'CircuitEcoPark', 'Sustainability', 3000, 90000.00, 'USD', 'Mark Liu', '5557778888', 'GreenMedia', 'Silver', 'BoothSpace,Speakers', 200, 800, '#EcoRacing2024', 'http://example.com/report2', 9.2, 'Excellent sponsor visibility', '2024-05-01 14:45:00');

INSERT INTO sponsor_cultural_events (sponsorId, eventName, eventDate, location, theme, expectedAttendance, budget, currency, organizerContact, organizerPhone, mediaPartner, sponsorshipLevel, benefitsProvided, ticketsAllocated, merchandiseCount, socialMediaHashtag, postEventReportUrl, feedbackScore, notes, createdAt)
VALUES (303, 'TechInnovationSummit', '2024-10-20', 'CircuitInnovationCenter', 'FutureTech', 4000, 150000.00, 'USD', 'Sofia Martinez', '5559990000', 'TechMedia', 'Platinum', 'KeynoteSlot,DemoArea', 250, 1200, '#TechSummit2024', 'http://example.com/report3', 9.5, 'Positive press coverage', '2024-06-10 09:30:00');