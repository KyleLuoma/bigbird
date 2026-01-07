-- Facilities and services available at each circuit
CREATE TABLE circuit_facilities (
    facilityId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    facilityName TEXT NOT NULL,
    facilityType TEXT,
    capacity INTEGER,
    openingHours TEXT,
    closingHours TEXT,
    hasVIP BOOLEAN,
    isIndoor BOOLEAN,
    maintenanceSchedule TEXT,
    lastRenovationYear INTEGER,
    contactPhone TEXT,
    contactEmail TEXT,
    accessibilityInfo TEXT,
    parkingSpots INTEGER,
    nearbyHotels INTEGER,
    avgRating REAL,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    status TEXT,
    foreign key (circuitId) references circuits(circuitId)
);

INSERT INTO circuit_facilities (circuitId, facilityName, facilityType, capacity, openingHours, closingHours, hasVIP, isIndoor, maintenanceSchedule, lastRenovationYear, contactPhone, contactEmail, accessibilityInfo, parkingSpots, nearbyHotels, avgRating, notes, createdAt, updatedAt, status) VALUES (1, 'GrandstandA', 'Grandstand', 50000, '08:00', '20:00', 1, 0, 'Quarterly', 2019, '1234567890', 'info@grandstanda.com', 'Wheelchair', 2000, 5, 4.5, 'Renovated recently', '2023-01-01', '2023-06-15', 'Active');
INSERT INTO circuit_facilities (circuitId, facilityName, facilityType, capacity, openingHours, closingHours, hasVIP, isIndoor, maintenanceSchedule, lastRenovationYear, contactPhone, contactEmail, accessibilityInfo, parkingSpots, nearbyHotels, avgRating, notes, createdAt, updatedAt, status) VALUES (2, 'PitLaneGarage', 'Garage', 120, '06:00', '22:00', 0, 0, 'Monthly', 2015, '0987654321', 'garage@circuit2.com', 'Standard', 500, 2, 4.0, 'Spacious', '2022-05-10', '2023-04-20', 'Active');
INSERT INTO circuit_facilities (circuitId, facilityName, facilityType, capacity, openingHours, closingHours, hasVIP, isIndoor, maintenanceSchedule, lastRenovationYear, contactPhone, contactEmail, accessibilityInfo, parkingSpots, nearbyHotels, avgRating, notes, createdAt, updatedAt, status) VALUES (3, 'MediaCenter', 'Media', 300, '07:00', '23:00', 0, 1, 'Biannual', 2020, '5551234567', 'media@circuit3.com', 'AssistiveListening', 100, 3, 4.8, 'High speed internet', '2023-02-14', '2023-08-01', 'Active');

-- Contracts between drivers and teams
CREATE TABLE driver_contracts (
    contractId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER NOT NULL,
    constructorId INTEGER NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL,
    salary REAL,
    bonusStructure TEXT,
    clauses TEXT,
    contractStatus TEXT,
    negotiationNotes TEXT,
    agentName TEXT,
    agentContact TEXT,
    signingLocation TEXT,
    contractVersion INTEGER,
    amendmentCount INTEGER,
    confidentialityLevel TEXT,
    terminationFee REAL,
    performanceMetrics TEXT,
    renewalOption BOOLEAN,
    createdAt DATE,
    updatedAt DATE,
    foreign key (driverId) references drivers(driverId),
    foreign key (constructorId) references constructors(constructorId)
);

INSERT INTO driver_contracts (driverId, constructorId, startDate, endDate, salary, bonusStructure, clauses, contractStatus, negotiationNotes, agentName, agentContact, signingLocation, contractVersion, amendmentCount, confidentialityLevel, terminationFee, performanceMetrics, renewalOption, createdAt, updatedAt) VALUES (10, 3, '2022-01-01', '2025-12-31', 2500000, 'Wins5Percent', 'NoRaceSharing', 'Active', 'NegotiatedViaEmail', 'JohnDoe', '5557778888', 'LondonOffice', 1, 0, 'High', 500000, 'PodiumFinishes', 1, '2022-01-01', '2023-01-15');
INSERT INTO driver_contracts (driverId, constructorId, startDate, endDate, salary, bonusStructure, clauses, contractStatus, negotiationNotes, agentName, agentContact, signingLocation, contractVersion, amendmentCount, confidentialityLevel, terminationFee, performanceMetrics, renewalOption, createdAt, updatedAt) VALUES (12, 4, '2021-03-15', '2024-03-14', 1800000, 'Points2Percent', 'ImageRights', 'Pending', 'FaceToFaceMeeting', 'JaneSmith', '5559991111', 'MonacoHotel', 1, 1, 'Medium', 300000, 'Top5Finishes', 0, '2021-03-15', '2022-07-20');
INSERT INTO driver_contracts (driverId, constructorId, startDate, endDate, salary, bonusStructure, clauses, contractStatus, negotiationNotes, agentName, agentContact, signingLocation, contractVersion, amendmentCount, confidentialityLevel, terminationFee, performanceMetrics, renewalOption, createdAt, updatedAt) VALUES (15, 2, '2023-06-01', '2026-05-31', 3200000, 'Wins10Percent', 'Exclusivity', 'Active', 'VirtualNegotiation', 'MikeBrown', '5553332222', 'NewYorkHQ', 1, 0, 'VeryHigh', 750000, 'Championships', 1, '2023-06-01', '2023-06-15');

-- Financial data for constructors per season
CREATE TABLE constructor_financials (
    financialId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER NOT NULL,
    seasonYear INTEGER NOT NULL,
    totalRevenue REAL,
    totalExpenses REAL,
    netProfit REAL,
    sponsorshipIncome REAL,
    prizeMoney REAL,
    developmentSpend REAL,
    staffCosts REAL,
    marketingSpend REAL,
    facilityInvestments REAL,
    debtOutstanding REAL,
    cashOnHand REAL,
    financialRating TEXT,
    auditStatus TEXT,
    auditorName TEXT,
    comments TEXT,
    createdAt DATE,
    updatedAt DATE,
    foreign key (constructorId) references constructors(constructorId),
    foreign key (seasonYear) references seasons(year)
);

INSERT INTO constructor_financials (constructorId, seasonYear, totalRevenue, totalExpenses, netProfit, sponsorshipIncome, prizeMoney, developmentSpend, staffCosts, marketingSpend, facilityInvestments, debtOutstanding, cashOnHand, financialRating, auditStatus, auditorName, comments, createdAt, updatedAt) VALUES (3, 2022, 150000000, 120000000, 30000000, 50000000, 20000000, 25000000, 30000000, 8000000, 5000000, 10000000, 20000000, 'A', 'Clean', 'AuditCo', 'Strong performance', '2023-01-10', '2023-01-10');
INSERT INTO constructor_financials (constructorId, seasonYear, totalRevenue, totalExpenses, netProfit, sponsorshipIncome, prizeMoney, developmentSpend, staffCosts, marketingSpend, facilityInvestments, debtOutstanding, cashOnHand, financialRating, auditStatus, auditorName, comments, createdAt, updatedAt) VALUES (4, 2021, 100000000, 95000000, 5000000, 30000000, 12000000, 18000000, 25000000, 6000000, 4000000, 2000000, 8000000, 'B', 'Qualified', 'FinancePlus', 'Margin tight', '2022-02-20', '2022-02-20');
INSERT INTO constructor_financials (constructorId, seasonYear, totalRevenue, totalExpenses, netProfit, sponsorshipIncome, prizeMoney, developmentSpend, staffCosts, marketingSpend, facilityInvestments, debtOutstanding, cashOnHand, financialRating, auditStatus, auditorName, comments, createdAt, updatedAt) VALUES (5, 2023, 180000000, 130000000, 50000000, 60000000, 25000000, 30000000, 35000000, 9000000, 7000000, 15000000, 25000000, 'A', 'Clean', 'AuditExperts', 'Record profit', '2024-03-05', '2024-03-05');

-- Logistics details for each race
CREATE TABLE race_logistics (
    logisticsId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    transportCompany TEXT,
    cargoWeight INTEGER,
    numberOfTrucks INTEGER,
    cateringProvider TEXT,
    mealsPrepared INTEGER,
    medicalTeams INTEGER,
    securityPersonnel INTEGER,
    volunteerCount INTEGER,
    equipmentInventory TEXT,
    wasteManagementPlan TEXT,
    powerSupplyKW INTEGER,
    waterSupplyLiters INTEGER,
    humidityControl BOOLEAN,
    emergencyProcedures TEXT,
    logisticNotes TEXT,
    createdAt DATE,
    updatedAt DATE,
    foreign key (raceId) references races(raceId)
);

INSERT INTO race_logistics (raceId, transportCompany, cargoWeight, numberOfTrucks, cateringProvider, mealsPrepared, medicalTeams, securityPersonnel, volunteerCount, equipmentInventory, wasteManagementPlan, powerSupplyKW, waterSupplyLiters, humidityControl, emergencyProcedures, logisticNotes, createdAt, updatedAt) VALUES (101, 'FastTrans', 25000, 12, 'GourmetCatering', 1800, 5, 150, 200, 'Tyres,SpareParts,Tools', 'RecyclableOnly', 800, 50000, 1, 'StandardProtocol', 'All set', '2023-04-01', '2023-04-10');
INSERT INTO race_logistics (raceId, transportCompany, cargoWeight, numberOfTrucks, cateringProvider, mealsPrepared, medicalTeams, securityPersonnel, volunteerCount, equipmentInventory, wasteManagementPlan, powerSupplyKW, waterSupplyLiters, humidityControl, emergencyProcedures, logisticNotes, createdAt, updatedAt) VALUES (102, 'LogiMove', 30000, 15, 'SpeedEats', 2200, 6, 180, 250, 'Engines,Chassis,SpareParts', 'CompostAndRecycle', 950, 60000, 0, 'EnhancedProtocol', 'Delayed due to weather', '2023-05-05', '2023-05-12');
INSERT INTO race_logistics (raceId, transportCompany, cargoWeight, numberOfTrucks, cateringProvider, mealsPrepared, medicalTeams, securityPersonnel, volunteerCount, equipmentInventory, wasteManagementPlan, powerSupplyKW, waterSupplyLiters, humidityControl, emergencyProcedures, logisticNotes, createdAt, updatedAt) VALUES (103, 'RapidHaul', 21000, 10, 'PrimeCater', 1500, 4, 120, 180, 'Tyres,Electronics', 'ZeroWaste', 750, 45000, 1, 'StandardProtocol', 'Smooth operation', '2023-06-01', '2023-06-08');

-- Fan engagement program data
CREATE TABLE fan_engagement (
    engagementId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER NOT NULL,
    raceId INTEGER NOT NULL,
    loyaltyTier TEXT,
    pointsEarned INTEGER,
    merchandisePurchased INTEGER,
    socialMediaMentions INTEGER,
    eventAttendance BOOLEAN,
    feedbackScore REAL,
    promoCodeUsed TEXT,
    newsletterSubscribed BOOLEAN,
    mobileAppVersion TEXT,
    favoriteDriverId INTEGER,
    favoriteConstructorId INTEGER,
    createdAt DATE,
    updatedAt DATE,
    foreign key (raceId) references races(raceId)
);

INSERT INTO fan_engagement (fanId, raceId, loyaltyTier, pointsEarned, merchandisePurchased, socialMediaMentions, eventAttendance, feedbackScore, promoCodeUsed, newsletterSubscribed, mobileAppVersion, favoriteDriverId, favoriteConstructorId, createdAt, updatedAt) VALUES (1001, 101, 'Gold', 1500, 3, 20, 1, 4.8, 'SAVE20', 1, 'v3.2', 10, 3, '2023-04-12', '2023-04-15');
INSERT INTO fan_engagement (fanId, raceId, loyaltyTier, pointsEarned, merchandisePurchased, socialMediaMentions, eventAttendance, feedbackScore, promoCodeUsed, newsletterSubscribed, mobileAppVersion, favoriteDriverId, favoriteConstructorId, createdAt, updatedAt) VALUES (1002, 102, 'Silver', 800, 1, 5, 0, 3.9, 'WELCOME10', 0, 'v3.3', 12, 4, '2023-05-08', '2023-05-09');
INSERT INTO fan_engagement (fanId, raceId, loyaltyTier, pointsEarned, merchandisePurchased, socialMediaMentions, eventAttendance, feedbackScore, promoCodeUsed, newsletterSubscribed, mobileAppVersion, favoriteDriverId, favoriteConstructorId, createdAt, updatedAt) VALUES (1003, 103, 'Platinum', 2500, 5, 35, 1, 5.0, 'VIPACCESS', 1, 'v3.4', 15, 2, '2023-06-05', '2023-06-06');

-- Recorded medical incidents during races
CREATE TABLE medical_incidents (
    incidentId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    driverId INTEGER NOT NULL,
    incidentTime TEXT,
    injurySeverity TEXT,
    treatmentProvided TEXT,
    hospitalTransfer BOOLEAN,
    ambulanceId TEXT,
    notes TEXT,
    reportedBy TEXT,
    createdAt DATE,
    updatedAt DATE,
    foreign key (raceId) references races(raceId),
    foreign key (driverId) references drivers(driverId)
);

INSERT INTO medical_incidents (raceId, driverId, incidentTime, injurySeverity, treatmentProvided, hospitalTransfer, ambulanceId, notes, reportedBy, createdAt, updatedAt) VALUES (101, 10, '00:45:32', 'Minor', 'Bandage', 0, 'AMB001', 'Scrape on left elbow', 'MedicalTeamA', '2023-04-01', '2023-04-01');
INSERT INTO medical_incidents (raceId, driverId, incidentTime, injurySeverity, treatmentProvided, hospitalTransfer, ambulanceId, notes, reportedBy, createdAt, updatedAt) VALUES (102, 12, '01:12:07', 'Moderate', 'Stitches', 1, 'AMB002', 'Collision resulting in arm fracture', 'MedicalTeamB', '2023-05-05', '2023-05-05');
INSERT INTO medical_incidents (raceId, driverId, incidentTime, injurySeverity, treatmentProvided, hospitalTransfer, ambulanceId, notes, reportedBy, createdAt, updatedAt) VALUES (103, 15, '00:30:15', 'None', 'Observation', 0, 'AMB003', 'Dizziness reported, vitals normal', 'MedicalTeamC', '2023-06-02', '2023-06-02');

-- Environmental sensor readings per race
CREATE TABLE environmental_readings (
    readingId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    timestamp TEXT,
    temperatureC REAL,
    humidityPct REAL,
    windSpeedKph REAL,
    windDirection TEXT,
    noiseLevelDb REAL,
    airQualityIndex INTEGER,
    precipitationMm REAL,
    solarRadiationWm2 REAL,
    sensorLocation TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    foreign key (raceId) references races(raceId)
);

INSERT INTO environmental_readings (raceId, timestamp, temperatureC, humidityPct, windSpeedKph, windDirection, noiseLevelDb, airQualityIndex, precipitationMm, solarRadiationWm2, sensorLocation, notes, createdAt, updatedAt) VALUES (101, '2023-04-01T09:15:00', 22.5, 55.0, 12.3, 'NE', 78.0, 42, 0.0, 500.0, 'TrackSideNorth', 'Clear skies', '2023-04-01', '2023-04-01');
INSERT INTO environmental_readings (raceId, timestamp, temperatureC, humidityPct, windSpeedKph, windDirection, noiseLevelDb, airQualityIndex, precipitationMm, solarRadiationWm2, sensorLocation, notes, createdAt, updatedAt) VALUES (102, '2023-05-05T10:30:00', 18.2, 68.0, 8.5, 'SW', 74.5, 35, 2.1, 420.0, 'GrandstandEast', 'Light rain', '2023-05-05', '2023-05-05');
INSERT INTO environmental_readings (raceId, timestamp, temperatureC, humidityPct, windSpeedKph, windDirection, noiseLevelDb, airQualityIndex, precipitationMm, solarRadiationWm2, sensorLocation, notes, createdAt, updatedAt) VALUES (103, '2023-06-02T11:45:00', 25.0, 45.0, 15.0, 'N', 80.2, 30, 0.0, 560.0, 'PitLane', 'Hot and windy', '2023-06-02', '2023-06-02');

-- Significant telemetry events captured during races
CREATE TABLE telemetry_events (
    eventId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    driverId INTEGER NOT NULL,
    lap INTEGER,
    eventType TEXT,
    value REAL,
    unit TEXT,
    timestamp TEXT,
    severity TEXT,
    description TEXT,
    createdAt DATE,
    updatedAt DATE,
    foreign key (raceId) references races(raceId),
    foreign key (driverId) references drivers(driverId)
);

INSERT INTO telemetry_events (raceId, driverId, lap, eventType, value, unit, timestamp, severity, description, createdAt, updatedAt) VALUES (101, 10, 12, 'Throttle', 98.5, 'Percent', '00:18:45', 'High', 'Full throttle exit', '2023-04-01', '2023-04-01');
INSERT INTO telemetry_events (raceId, driverId, lap, eventType, value, unit, timestamp, severity, description, createdAt, updatedAt) VALUES (102, 12, 7, 'BrakeTemp', 420.0, 'Celsius', '00:10:22', 'Critical', 'Brake overheating', '2023-05-05', '2023-05-05');
INSERT INTO telemetry_events (raceId, driverId, lap, eventType, value, unit, timestamp, severity, description, createdAt, updatedAt) VALUES (103, 15, 20, 'GForce', 5.2, 'g', '00:30:15', 'Moderate', 'High lateral G-force in corner', '2023-06-02', '2023-06-02');

-- Broadcast schedule information per race weekend
CREATE TABLE broadcast_schedule (
    scheduleId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    channelName TEXT,
    startTime TEXT,
    endTime TEXT,
    region TEXT,
    language TEXT,
    presenter TEXT,
    commentator TEXT,
    productionCompany TEXT,
    feedType TEXT,
    broadcastDelaySeconds INTEGER,
    hdAvailable BOOLEAN,
    streamingUrl TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    foreign key (raceId) references races(raceId)
);

INSERT INTO broadcast_schedule (raceId, channelName, startTime, endTime, region, language, presenter, commentator, productionCompany, feedType, broadcastDelaySeconds, hdAvailable, streamingUrl, notes, createdAt, updatedAt) VALUES (101, 'GlobalSports', '09:00', '12:30', 'Europe', 'English', 'AliceWalker', 'BobSmith', 'MediaCorp', 'Live', 0, 1, 'http://stream.global/101', 'Opening ceremony included', '2023-04-01', '2023-04-01');
INSERT INTO broadcast_schedule (raceId, channelName, startTime, endTime, region, language, presenter, commentator, productionCompany, feedType, broadcastDelaySeconds, hdAvailable, streamingUrl, notes, createdAt, updatedAt) VALUES (102, 'SpeedChannel', '10:15', '13:45', 'Asia', 'English', 'ChenLee', 'DavidPark', 'FastMedia', 'Live', 5, 1, 'http://stream.speed/102', 'Delayed due to technical issue', '2023-05-05', '2023-05-05');
INSERT INTO broadcast_schedule (raceId, channelName, startTime, endTime, region, language, presenter, commentator, productionCompany, feedType, broadcastDelaySeconds, hdAvailable, streamingUrl, notes, createdAt, updatedAt) VALUES (103, 'RaceLive', '08:30', '11:00', 'America', 'Spanish', 'EvaGomez', 'FernandoLopez', 'LiveWorks', 'Live', 0, 0, 'http://stream.racelive/103', 'Standard definition only', '2023-06-02', '2023-06-02');

-- Merchandise inventory tracking
CREATE TABLE merchandise_inventory (
    inventoryId INTEGER PRIMARY KEY AUTOINCREMENT,
    itemCode TEXT NOT NULL,
    itemName TEXT NOT NULL,
    category TEXT,
    size TEXT,
    colour TEXT,
    quantityOnHand INTEGER,
    reorderLevel INTEGER,
    supplierName TEXT,
    wholesaleCost REAL,
    retailPrice REAL,
    lastRestocked DATE,
    nextRestock DATE,
    warehouseLocation TEXT,
    salesChannel TEXT,
    promotionActive BOOLEAN,
    discountPercent REAL,
    onlineOnly BOOLEAN,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE
);

INSERT INTO merchandise_inventory (itemCode, itemName, category, size, colour, quantityOnHand, reorderLevel, supplierName, wholesaleCost, retailPrice, lastRestocked, nextRestock, warehouseLocation, salesChannel, promotionActive, discountPercent, onlineOnly, notes, createdAt, updatedAt) VALUES ('TSH001', 'TeamCap', 'Apparel', 'OneSize', 'Red', 350, 100, 'SportGearCo', 5.00, 12.99, '2023-03-20', '2023-04-15', 'WH1', 'Online', 1, 10.0, 1, 'Best seller', '2023-03-20', '2023-04-01');
INSERT INTO merchandise_inventory (itemCode, itemName, category, size, colour, quantityOnHand, reorderLevel, supplierName, wholesaleCost, retailPrice, lastRestocked, nextRestock, warehouseLocation, salesChannel, promotionActive, discountPercent, onlineOnly, notes, createdAt, updatedAt) VALUES ('JKT002', 'RacingJacket', 'Apparel', 'L', 'Black', 120, 30, 'GearMakers', 25.00, 59.99, '2023-02-10', '2023-03-05', 'WH2', 'Retail', 0, 0, 0, 'Limited edition', '2023-02-10', '2023-03-01');
INSERT INTO merchandise_inventory (itemCode, itemName, category, size, colour, quantityOnHand, reorderLevel, supplierName, wholesaleCost, retailPrice, lastRestocked, nextRestock, warehouseLocation, salesChannel, promotionActive, discountPercent, onlineOnly, notes, createdAt, updatedAt) VALUES ('MUG003', 'OfficialMug', 'Accessories', 'OneSize', 'White', 500, 150, 'PrintWorks', 2.00, 8.99, '2023-01-25', '2023-02-20', 'WH1', 'Both', 1, 5.0, 0, 'Includes logo', '2023-01-25', '2023-02-01');