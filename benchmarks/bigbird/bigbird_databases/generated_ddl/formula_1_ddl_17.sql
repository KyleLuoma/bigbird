-- Track electrical grid information for each circuit
CREATE TABLE track_electrical_grid (
    gridId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    sectionName TEXT,
    voltageLevel REAL,
    maxCurrent REAL,
    transformerId TEXT,
    substationName TEXT,
    installationDate DATE,
    lastInspectionDate DATE,
    status TEXT,
    capacityMW REAL,
    faultCount INTEGER,
    maintenanceSchedule TEXT,
    cableType TEXT,
    insulationRating TEXT,
    groundingResistance REAL,
    loadFactor REAL,
    peakLoadMW REAL,
    averageLoadMW REAL,
    notes TEXT
);

INSERT INTO track_electrical_grid VALUES
(1, 1, 'North Loop', 400.0, 1500.0, 'TX-01', 'Main Substation', '2010-05-12', '2023-02-15', 'Operational', 120.5, 2, 'Annual', 'Copper', 'Class A', 0.5, 0.85, 115.0, 78.3, 'No issues'),
(2, 2, 'South Straight', 380.0, 1400.0, 'TX-02', 'South Sub', '2012-08-20', '2022-11-03', 'Operational', 110.0, 0, 'Biannual', 'Aluminum', 'Class B', 0.6, 0.80, 108.0, 70.5, 'Routine check completed'),
(3, 3, 'East Curve', 410.0, 1600.0, 'TX-03', 'East Sub', '2015-03-07', '2023-01-22', 'Under Maintenance', 130.0, 1, 'Quarterly', 'Copper', 'Class A', 0.4, 0.88, 119.0, 82.1, 'Transformer upgrade pending');

-- Hospitality staff shift assignments
CREATE TABLE hospitality_staff_shifts (
    shiftId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    staffId INTEGER,
    role TEXT,
    shiftDate DATE,
    startTime TEXT,
    endTime TEXT,
    hoursWorked REAL,
    breakDuration INTEGER,
    assignedSection TEXT,
    languageSkills TEXT,
    uniformSize TEXT,
    certificationIds TEXT,
    shiftStatus TEXT,
    supervisorId INTEGER,
    notes TEXT,
    overtimeFlag INTEGER,
    mealProvided INTEGER,
    transportMode TEXT,
    shiftRating INTEGER
);

INSERT INTO hospitality_staff_shifts VALUES
(1, 101, 5001, ' concierge ', '2023-05-10', '08:00', '16:00', 8.0, 30, 'VIP Lounge', 'English,Spanish', 'L', 'CERT001,CERT005', 'Completed', 3001, 'All guests assisted', 0, 1, 'Shuttle', 9),
(2, 102, 5002, ' catering ', '2023-05-11', '10:00', '18:00', 8.0, 45, 'Main Hall', 'English,French', 'M', 'CERT002', 'Completed', 3002, 'Buffet service smooth', 0, 1, 'Car', 8),
(3, 103, 5003, ' security ', '2023-05-12', '12:00', '20:00', 8.0, 30, 'Parking Area', 'English', 'S', 'CERT003', 'In Progress', 3003, 'Patrol routes established', 1, 0, 'Bike', 7);

-- Venue accreditation records
CREATE TABLE venue_accreditation_records (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    accreditingBody TEXT,
    accreditationType TEXT,
    issueDate DATE,
    expiryDate DATE,
    accreditationLevel TEXT,
    auditorName TEXT,
    auditScore REAL,
    complianceStatus TEXT,
    notes TEXT,
    documentUrl TEXT,
    lastUpdated DATE,
    renewalRequiredFlag INTEGER,
    renewalNoticeDate DATE,
    policyVersion TEXT,
    scopeDescription TEXT,
    regionalOffice TEXT,
    contactEmail TEXT,
    phoneNumber TEXT,
    address TEXT
);

INSERT INTO venue_accreditation_records VALUES
(1, 101, 'ISO', 'Safety', '2020-01-15', '2025-01-14', 'Level 1', 'John Doe', 95.2, 'Compliant', 'All standards met', 'http://docs/acc1.pdf', '2023-03-01', 0, NULL, 'v2.1', 'Full venue operations', 'Europe', 'accr@example.com', '1234567890', '123 Main St'),
(2, 102, 'LEED', 'Environmental', '2019-06-20', '2024-06-19', 'Gold', 'Jane Smith', 88.5, 'Compliant', 'Energy saving measures applied', 'http://docs/acc2.pdf', '2023-02-15', 1, '2024-05-01', 'v3.0', 'Building and grounds', 'North America', 'leedadm@example.com', '0987654321', '456 Oak Ave'),
(3, 103, 'FIFA', 'Stadium', '2021-09-10', '2026-09-09', 'Category 4', 'Mike Brown', 92.0, 'Compliant', 'Seating capacity verified', 'http://docs/acc3.pdf', '2023-01-20', 0, NULL, 'v1.5', 'Match day operations', 'Asia', 'fifacontact@example.com', '1122334455', '789 Pine Rd');

-- Sponsor product placements at events
CREATE TABLE sponsor_product_placements (
    placementId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    eventId INTEGER,
    locationDescription TEXT,
    productName TEXT,
    placementType TEXT,
    startDate DATE,
    endDate DATE,
    impressionsEstimated INTEGER,
    cost REAL,
    contractId INTEGER,
    brandingGuidelines TEXT,
    mediaCoverage TEXT,
    activationDetails TEXT,
    staffAssigned INTEGER,
    safetyApproval INTEGER,
    status TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    legalReviewStatus TEXT
);

INSERT INTO sponsor_product_placements VALUES
(1, 2001, 301, 'Pit Lane Wall', 'Energy Drink X', 'Banner', '2023-04-01', '2023-04-03', 500000, 25000.00, 9001, 'Blue background', 'TV, Online', 'Free sample booth', 12, 1, 'Active', 'High visibility', '2023-02-10', '2023-02-12', 'Approved'),
(2, 2002, 302, 'Garage Entrance', 'Performance Tire Y', 'Signage', '2023-05-10', '2023-05-12', 300000, 18000.00, 9002, 'Red and black theme', 'Print, Social', 'Demo area', 8, 1, 'Planned', 'Pending installation', '2023-03-05', '2023-03-07', 'Pending'),
(3, 2003, 303, 'Fan Zone', 'Mobile App Z', 'Digital Screen', '2023-06-15', '2023-06-17', 450000, 22000.00, 9003, 'White overlay', 'Social', 'QR code engagement', 10, 1, 'Completed', 'Measured 200k interactions', '2023-04-01', '2023-04-04', 'Approved');

-- Driver social media activity tracking
CREATE TABLE driver_social_media_activity (
    activityId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    platform TEXT,
    username TEXT,
    postDate DATE,
    postTime TEXT,
    contentType TEXT,
    contentUrl TEXT,
    likesCount INTEGER,
    commentsCount INTEGER,
    sharesCount INTEGER,
    reachEstimate INTEGER,
    sentimentScore REAL,
    campaignTag TEXT,
    sponsorId INTEGER,
    verifiedFlag INTEGER,
    deviceUsed TEXT,
    locationTag TEXT,
    hashtags TEXT,
    mentions TEXT,
    notes TEXT
);

INSERT INTO driver_social_media_activity VALUES
(1, 101, 'Twitter', 'fastF1Mike', '2023-05-01', '14:30', 'Image', 'http://img.com/track1.jpg', 1200, 45, 30, 50000, 0.85, '#RaceDay', 2001, 1, 'iPhone', 'Monaco', '#F1 #Speed', '@TeamA', 'High engagement post'),
(2, 102, 'Instagram', 'SpeedySara', '2023-05-03', '09:15', 'Video', 'http://vid.com/qualifying.mp4', 2500, 80, 60, 80000, 0.90, '#Quali', 2002, 1, 'Android', 'Silverstone', '#F1 #Qualifying', '@TeamB', 'Story highlight added'),
(3, 103, 'Facebook', 'RacingRex', '2023-05-05', '18:45', 'Text', NULL, 800, 20, 10, 30000, 0.70, '#PostRace', 2003, 0, 'PC', 'Spa', '#F1 #Results', '@TeamC', 'Post-race analysis');

-- Race emission monitoring data
CREATE TABLE race_emission_monitoring (
    monitorId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    pollutantType TEXT,
    measurementUnit TEXT,
    avgEmission REAL,
    maxEmission REAL,
    minEmission REAL,
    measurementDate DATE,
    measurementTime TEXT,
    sensorId TEXT,
    calibrationDate DATE,
    status TEXT,
    complianceFlag INTEGER,
    regulatoryLimit REAL,
    exceedanceAmount REAL,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    analystId INTEGER,
    dataSource TEXT,
    reliabilityScore REAL
);

INSERT INTO race_emission_monitoring VALUES
(1, 301, 'CO2', 'g/kWh', 450.5, 620.0, 300.0, '2023-04-02', '13:00', 'SEN-01', '2022-12-01', 'Checked', 1, 500.0, 120.0, 'Peak during lap 30', '2023-04-03', '2023-04-04', 4001, 'OnsiteSensor', 0.95),
(2, 302, 'NOx', 'mg/m3', 85.2, 110.0, 60.0, '2023-05-11', '11:30', 'SEN-02', '2022-11-15', 'Checked', 0, 100.0, 10.0, 'Within limits', '2023-05-12', '2023-05-13', 4002, 'ExternalLab', 0.92),
(3, 303, 'PM2.5', 'µg/m3', 35.0, 50.0, 20.0, '2023-06-16', '15:45', 'SEN-03', '2023-01-20', 'Checked', 1, 40.0, 10.0, 'Exceeds during pit stops', '2023-06-17', '2023-06-18', 4003, 'HybridSensor', 0.88);

-- Logistics fuel consumption records
CREATE TABLE logistics_fuel_consumption (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    shipmentId INTEGER,
    fuelType TEXT,
    volumeLiters REAL,
    departureDate DATE,
    arrivalDate DATE,
    originLocation TEXT,
    destinationLocation TEXT,
    carrierCompany TEXT,
    driverId INTEGER,
    consumptionRate REAL,
    totalCost REAL,
    temperatureC REAL,
    humidityPercent REAL,
    pressureKPa REAL,
    fuelQualityGrade TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    verifierId INTEGER,
    complianceFlag INTEGER
);

INSERT INTO logistics_fuel_consumption VALUES
(1, 7001, 'Diesel', 15000.0, '2023-04-01', '2023-04-03', 'Hamburg', 'Monaco', 'TransLogistics', 8001, 0.45, 18000.00, 12.5, 55.0, 101.3, 'Grade A', 'Delivered on schedule', '2023-04-04', '2023-04-05', 9001, 1),
(2, 7002, 'Petrol', 12000.0, '2023-05-10', '2023-05-12', 'Rotterdam', 'Silverstone', 'FastFreight', 8002, 0.48, 15000.00, 10.0, 60.0, 100.8, 'Grade B', 'Minor delay due to traffic', '2023-05-13', '2023-05-14', 9002, 1),
(3, 7003, 'Biofuel', 18000.0, '2023-06-15', '2023-06-18', 'Antwerp', 'Spa', 'EcoTrans', 8003, 0.42, 21000.00, 15.0, 50.0, 102.0, 'Grade C', 'Temperature spike recorded', '2023-06-19', '2023-06-20', 9003, 0);

-- Broadcast advertiser slot allocations
CREATE TABLE broadcast_advertiser_slots (
    slotId INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId INTEGER,
    advertiserId INTEGER,
    productName TEXT,
    slotStartTime TEXT,
    slotEndTime TEXT,
    durationSeconds INTEGER,
    priceUSD REAL,
    audienceRating REAL,
    regionTarget TEXT,
    dayOfWeek TEXT,
    slotType TEXT,
    creativeFormat TEXT,
    approvalStatus TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    salesRepId INTEGER,
    contractId INTEGER,
    impressionGuarantee INTEGER,
    viewabilityRate REAL
);

INSERT INTO broadcast_advertiser_slots VALUES
(1, 901, 2101, 'SportWatch Pro', '00:15:00', '00:17:30', 150, 5000.00, 8.5, 'Europe', 'Saturday', 'Pre-roll', 'Video', 'Approved', 'High demand slot', '2023-03-01', '2023-03-02', 3101, 8001, 200000, 0.92),
(2, 902, 2102, 'EnergyDrink X', '01:05:00', '01:07:00', 120, 3500.00, 7.8, 'North America', 'Sunday', 'Mid-roll', 'Graphic', 'Pending', 'Negotiating price', '2023-04-10', '2023-04-11', 3102, 8002, 150000, 0.88),
(3, 903, 2103, 'LuxuryCar Z', '02:30:00', '02:34:00', 240, 8000.00, 9.2, 'Asia', 'Friday', 'Post-roll', 'Video', 'Approved', 'Premium audience', '2023-05-20', '2023-05-21', 3103, 8003, 300000, 0.95);

-- Circuit maintenance equipment catalog
CREATE TABLE circuit_maintenance_equEquipment (
    equipmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    equipmentName TEXT,
    serialNumber TEXT,
    manufacturer TEXT,
    purchaseDate DATE,
    warrantyEndDate DATE,
    lastServiceDate DATE,
    serviceProvider TEXT,
    conditionStatus TEXT,
    locationOnTrack TEXT,
    powerRatingKW REAL,
    weightKg REAL,
    dimensionsCm TEXT,
    calibrationDueDate DATE,
    usageHours INTEGER,
    lastCalibrationDate DATE,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    assignedTeamId INTEGER
);

INSERT INTO circuit_maintenance_equEquipment VALUES
(1, 1, 'Track Sweeper', 'TS-001', 'CleanTech', '2018-03-10', '2023-03-09', '2023-02-20', 'MaintainCo', 'Good', 'Pit Lane', 5.0, 250.0, '200x120x150', '2023-08-01', 1200, '2023-02-20', 'Operates normally', '2023-03-01', '2023-03-02', 4001),
(2, 2, 'Grass Cutter', 'GC-015', 'GreenMow', '2019-07-22', '2024-07-21', '2023-01-15', 'GreenServ', 'Excellent', 'West Turn', 3.5, 180.0, '150x90x100', '2023-09-01', 800, '2023-01-15', 'Blade replacement due', '2023-02-01', '2023-02-02', 4002),
(3, 3, 'Hydraulic Jack', 'HJ-078', 'LiftPro', '2020-11-05', '2025-11-04', '2023-03-10', 'LiftFix', 'Fair', 'East Straight', 2.0, 100.0, '80x80x120', '2023-12-01', 500, '2023-03-10', 'Minor leak observed', '2023-04-01', '2023-04-02', 4003);

-- Team strategy meeting records
CREATE TABLE team_strategy_meetings (
    meetingId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    teamId INTEGER,
    meetingDate DATE,
    startTime TEXT,
    endTime TEXT,
    location TEXT,
    agenda TEXT,
    presenter TEXT,
    minutesDocumentUrl TEXT,
    decisionsMade TEXT,
    actionItemsCount INTEGER,
    nextMeetingDate DATE,
    confidentialityLevel TEXT,
    attendanceCount INTEGER,
    remoteLink TEXT,
    videoRecordingUrl TEXT,
    createdBy INTEGER,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE
);

INSERT INTO team_strategy_meetings VALUES
(1, 301, 501, '2023-04-01', '09:00', '11:00', 'Team HQ', 'Qualifying strategy', 'Alex Lead', 'http://docs/meet1.pdf', 'Stint plan approved', 5, '2023-04-02', 'High', 12, 'https://zoom.us/meet1', 'http://videos/meet1.mp4', 6001, 'All points covered', '2023-04-01', '2023-04-02'),
(2, 302, 502, '2023-05-10', '14:00', '16:30', 'Remote', 'Race day tactics', 'Maria Chief', 'http://docs/meet2.pdf', 'Pit stop timing adjusted', 7, '2023-05-11', 'Medium', 10, 'https://teams.microsoft.com/meet2', 'http://videos/meet2.mp4', 6002, 'Discussed weather impact', '2023-05-10', '2023-05-11'),
(3, 303, 503, '2023-06-15', '10:30', '13:00', 'Team Garage', 'Post‑race analysis', 'Liam Analyst', 'http://docs/meet3.pdf', 'Car setup changes recommended', 4, '2023-06-20', 'Low', 8, 'https://meet.google.com/meet3', 'http://videos/meet3.mp4', 6003, 'Reviewed telemetry data', '2023-06-15', '2023-06-16');