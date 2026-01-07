-- Table storing staff assigned to support race events
CREATE TABLE event_support_staff (
    staffId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER,
    role TEXT,
    firstName TEXT,
    lastName TEXT,
    shiftStart TEXT,
    shiftEnd TEXT,
    contactNumber TEXT,
    email TEXT,
    badgeNumber TEXT,
    qualifications TEXT,
    yearsExperience INTEGER,
    languagePrimary TEXT,
    languageSecondary TEXT,
    certificationDate DATE,
    assignedSection TEXT,
    supervisorId INTEGER,
    notes TEXT,
    availabilityStatus TEXT,
    hourlyRate REAL,
    emergencyContactName TEXT,
    emergencyContactPhone TEXT
);

INSERT INTO event_support_staff VALUES (1, 101, 'Medical', 'Anna', 'Lee', '08:00', '16:00', '5551234', 'anna.lee@example.com', 'MED001', 'FirstAid', 5, 'English', 'Spanish', '2019-06-15', 'MedicalTent', 10, 'N/A', 'Active', 22.5, 'John Doe', '5559876');
INSERT INTO event_support_staff VALUES (2, 102, 'Security', 'Mark', 'Smith', '09:00', '17:00', '5552345', 'mark.smith@example.com', 'SEC101', 'CrowdControl', 3, 'English', 'French', '2020-01-20', 'GateA', 11, 'N/A', 'Active', 18.0, 'Lisa Ray', '5558765');
INSERT INTO event_support_staff VALUES (3, 103, 'Logistics', 'Priya', 'Kaur', '07:30', '15:30', '5553456', 'priya.kaur@example.com', 'LOG500', 'SupplyChain', 7, 'English', 'Hindi', '2018-03-10', 'Warehouse', 12, 'N/A', 'Active', 20.0, 'Sam Lee', '5557654');


-- Table describing transport services for spectators
CREATE TABLE spectator_transport_services (
    serviceId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    providerName TEXT,
    vehicleType TEXT,
    capacity INTEGER,
    routeName TEXT,
    scheduleStart TEXT,
    scheduleEnd TEXT,
    contactPhone TEXT,
    email TEXT,
    costPerRide REAL,
    discountAvailable INTEGER,
    wheelchairAccessible INTEGER,
    petFriendly INTEGER,
    ticketBundleId INTEGER,
    operatingDays TEXT,
    driverName TEXT,
    driverLicenseNumber TEXT,
    vehiclePlate TEXT,
    insurancePolicyNumber TEXT,
    maintenanceDueDate DATE,
    notes TEXT
);

INSERT INTO spectator_transport_services VALUES (1, 101, 'CityShuttle', 'Bus', 40, 'CircuitLoop', '06:00', '22:00', '5554001', 'info@cityshuttle.com', 5.0, 1, 1, 0, 2001, 'MonTueWedThuFriSatSun', 'Carlos Ruiz', 'DL123456', 'AB-1234', 'INS001', '2025-01-15', 'N/A');
INSERT INTO spectator_transport_services VALUES (2, 102, 'EcoRide', 'Van', 12, 'ParkingLotA', '07:30', '20:30', '5554002', 'contact@ecoride.com', 8.5, 0, 1, 1, 2002, 'MonTueWedThuFri', 'Emily Zhang', 'DL654321', 'CD-5678', 'INS002', '2024-11-30', 'N/A');
INSERT INTO spectator_transport_services VALUES (3, 103, 'RapidTransit', 'Tram', 60, 'MainLine', '05:00', '23:00', '5554003', 'support@rapidtransit.com', 4.0, 1, 0, 0, 2003, 'MonTueWedThuFriSatSun', 'Lars Jensen', 'DL789012', 'EF-9012', 'INS003', '2025-02-20', 'N/A');


-- Table storing digital maps of venues
CREATE TABLE digital_venue_maps (
    mapId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    mapVersion TEXT,
    fileName TEXT,
    fileSizeBytes INTEGER,
    uploadDate DATE,
    creatorUserId INTEGER,
    mapScale REAL,
    coordinateSystem TEXT,
    northReference TEXT,
    mapType TEXT,
    isInteractive INTEGER,
    layersCount INTEGER,
    legendAvailable INTEGER,
    sourceDataProvider TEXT,
    lastEditedDate DATE,
    editorUserId INTEGER,
    approvalStatus TEXT,
    approvedByUserId INTEGER,
    comments TEXT,
    downloadCount INTEGER,
    rating REAL
);

INSERT INTO digital_venue_maps VALUES (1, 10, 'v1.0', 'circuit_main.pdf', 2048000, '2023-05-10', 1001, 1.0, 'WGS84', 'TrueNorth', 'Topographic', 1, 5, 1, 'GeoSurveyCo', '2023-05-12', 1002, 'Approved', 1003, 'Initial release', 1500, 4.5);
INSERT INTO digital_venue_maps VALUES (2, 11, 'v2.1', 'circuit_expanded.svg', 3072000, '2024-02-18', 1004, 0.5, 'UTM', 'MagneticNorth', 'Satellite', 1, 8, 1, 'MapMakersInc', '2024-02-20', 1005, 'Pending', NULL, 'Added new paddock area', 300, 0.0);
INSERT INTO digital_venue_maps VALUES (3, 12, 'v1.3', 'circuit_modern.png', 1024000, '2023-11-05', 1006, 2.0, 'WGS84', 'TrueNorth', 'Hybrid', 0, 3, 0, 'InternalTeam', '2023-11-07', 1007, 'Rejected', NULL, 'Insufficient resolution', 45, 0.0);


-- Table archiving photographs from events
CREATE TABLE archival_photographs (
    photoId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER,
    photographerName TEXT,
    captureDate DATE,
    locationDescription TEXT,
    cameraModel TEXT,
    lensInfo TEXT,
    aperture TEXT,
    shutterSpeed TEXT,
    iso INTEGER,
    fileName TEXT,
    fileSizeBytes INTEGER,
    resolution TEXT,
    format TEXT,
    copyrightHolder TEXT,
    usageRights TEXT,
    archiveLocation TEXT,
    tags TEXT,
    rating INTEGER,
    notes TEXT,
    digitizedDate DATE,
    digitizedBy TEXT
);

INSERT INTO archival_photographs VALUES (1, 101, 'Tom Hardy', '2023-07-02', 'Main Straight', 'Canon EOSR5', '24-70mm', 'f/2.8', '1/2000', 200, 'photo001.jpg', 3500000, '6000x4000', 'JPEG', 'F1 Photography', 'Editorial', 'ArchiveRoomA', 'start,finish', 5, 'Clear weather', '2023-07-10', 'Anna Lee');
INSERT INTO archival_photographs VALUES (2, 102, 'Laura Kim', '2024-03-15', 'Pit Lane', 'Nikon Z7', '70-200mm', 'f/4', '1/800', 400, 'photo002.jpg', 2800000, '6000x4000', 'JPEG', 'SpeedShots Ltd', 'Commercial', 'ArchiveRoomB', 'pit,team', 4, 'Team in action', '2024-03-20', 'Mark Smith');
INSERT INTO archival_photographs VALUES (3, 103, 'David Chen', '2022-10-20', 'Grandstand', 'Sony A7III', '16-35mm', 'f/5.6', '1/500', 800, 'photo003.jpg', 2200000, '6000x4000', 'JPEG', 'EyeCapture', 'Public', 'ArchiveRoomC', 'crowd,cheer', 3, 'Fans waving flags', '2022-10-25', 'Priya Kaur');


-- Table logging broadcast engineering activities
CREATE TABLE broadcast_engineering_logs (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId INTEGER,
    timestamp TEXT,
    engineerName TEXT,
    equipmentId TEXT,
    status TEXT,
    voltage REAL,
    current REAL,
    temperature REAL,
    signalStrength REAL,
    frequency REAL,
    errorCode TEXT,
    resolution TEXT,
    bitrate REAL,
    codec TEXT,
    latencyMs INTEGER,
    packetLossPercent REAL,
    notes TEXT,
    actionTaken TEXT,
    resolvedFlag INTEGER,
    resolutionDate DATE,
    resolvedBy TEXT
);

INSERT INTO broadcast_engineering_logs VALUES (1, 5001, '2023-09-01T09:15:00', 'Evan Turner', 'EQ-1001', 'OK', 12.5, 1.2, 35.0, -65.0, 5.0, 'NONE', '1080p', 4500.0, 'H264', 120, 0.0, 'All systems nominal', 'N/A', 1, '2023-09-01', 'Evan Turner');
INSERT INTO broadcast_engineering_logs VALUES (2, 5002, '2024-04-12T14:30:00', 'Mia Liu', 'EQ-2002', 'Warning', 13.0, 1.5, 38.5, -70.0, 5.5, 'E101', '720p', 3000.0, 'HEVC', 200, 0.2, 'Intermittent signal drop', 'Reset transmitter', 1, '2024-04-12', 'Mia Liu');
INSERT INTO broadcast_engineering_logs VALUES (3, 5003, '2022-11-20T18:45:00', 'Liam O\'Connor', 'EQ-3003', 'Error', 11.8, 1.0, 40.0, -80.0, 6.0, 'E202', '4K', 8000.0, 'AV1', 350, 1.5, 'Encoder failure', 'Switched to backup encoder', 1, '2022-11-20', 'Liam O\'Connor');


-- Table tracking merchandise sales at races
CREATE TABLE race_merchandise_sales (
    saleId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    merchandiseItemId INTEGER,
    itemName TEXT,
    category TEXT,
    size TEXT,
    color TEXT,
    quantitySold INTEGER,
    unitPrice REAL,
    totalRevenue REAL,
    saleDate DATE,
    customerId INTEGER,
    paymentMethod TEXT,
    transactionId TEXT,
    discountApplied REAL,
    employeeId INTEGER,
    cashRegisterId INTEGER,
    notes TEXT,
    onlineOrderFlag INTEGER,
    shippingMethod TEXT,
    trackingNumber TEXT,
    returnFlag INTEGER,
    returnDate DATE
);

INSERT INTO race_merchandise_sales VALUES (1, 101, 3001, 'TeamCap', 'Apparel', 'OneSize', 'Red', 150, 20.0, 3000.0, '2023-07-02', 9001, 'CreditCard', 'TXN1001', 0.0, 501, 1, 'N/A', 0, 'N/A', 'N/A', 0, NULL);
INSERT INTO race_merchandise_sales VALUES (2, 102, 3002, 'DriverJersey', 'Apparel', 'L', 'Blue', 80, 75.0, 6000.0, '2024-03-16', 9002, 'PayPal', 'TXN1002', 5.0, 502, 2, 'Discount applied', 1, 'Standard', 'TRK123456', 0, NULL);
INSERT INTO race_merchandise_sales VALUES (3, 103, 3003, 'ModelCar', 'Collectible', 'N/A', 'Silver', 30, 45.0, 1350.0, '2022-10-21', 9003, 'Cash', 'TXN1003', 0.0, 503, 3, 'Limited edition', 0, 'N/A', 'N/A', 1, '2022-11-01');


-- Table documenting security incidents during events
CREATE TABLE security_incident_reports (
    incidentId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    incidentType TEXT,
    description TEXT,
    reportedBy TEXT,
    reportDate DATE,
    severityLevel INTEGER,
    location TEXT,
    actionTaken TEXT,
    resolvedDate DATE,
    resolvedBy TEXT,
    witnessNames TEXT,
    cameraFootageAvailable INTEGER,
    footageFile TEXT,
    ticketNumber TEXT,
    fineAmount REAL,
    officerInCharge TEXT,
    patrolUnit TEXT,
    notes TEXT,
    escalationFlag INTEGER,
    escalationDate DATE,
    followUpRequired INTEGER,
    followUpDate DATE
);

INSERT INTO security_incident_reports VALUES (1, 101, 'UnauthorizedEntry', 'Spectator accessed restricted area', 'OfficerA', '2023-07-02', 2, 'GateB', 'Removed and warned', '2023-07-02', 'OfficerA', 'John Doe', 1, 'footage001.mp4', 'TCK001', 0.0, 'OfficerA', 'Unit5', 'No further action', 0, NULL, 0, NULL);
INSERT INTO security_incident_reports VALUES (2, 102, 'Disturbance', 'Group causing noise near pit lane', 'OfficerB', '2024-03-16', 3, 'PitLaneWest', 'Separated groups', '2024-03-16', 'OfficerB', 'Alice Smith;Bob Lee', 0, NULL, 'TCK002', 150.0, 'OfficerB', 'Unit3', 'Issued fine', 0, NULL, 0, NULL);
INSERT INTO security_incident_reports VALUES (3, 103, 'VehicleCollision', 'Support truck collided with barrier', 'OfficerC', '2022-10-22', 4, 'GarageArea', 'Investigated, repair scheduled', '2022-10-25', 'OfficerC', 'Mike Turner', 1, 'footage003.mp4', 'TCK003', 1200.0, 'OfficerC', 'Unit7', 'Insurance claim filed', 1, '2022-11-01', 1, '2022-11-10');


-- Table logging climate control system data for venues
CREATE TABLE climate_control_logs (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    systemId TEXT,
    timestamp TEXT,
    temperatureSetpoint REAL,
    humiditySetpoint REAL,
    actualTemperature REAL,
    actualHumidity REAL,
    fanSpeed INTEGER,
    compressorStatus TEXT,
    valvePosition INTEGER,
    energyConsumptionKw REAL,
    alarmCode TEXT,
    maintenanceRequiredFlag INTEGER,
    technicianId INTEGER,
    notes TEXT,
    overrideFlag INTEGER,
    overrideReason TEXT,
    correctiveAction TEXT,
    nextMaintenanceDate DATE,
    sensorCalibrationDate DATE
);

INSERT INTO climate_control_logs VALUES (1, 10, 'CC-01', '2023-07-02T10:00:00', 22.0, 45.0, 22.5, 44.0, 3, 'On', 70, 5.2, 'NONE', 0, 201, 'System stable', 0, NULL, NULL, '2024-01-15', '2023-06-01');
INSERT INTO climate_control_logs VALUES (2, 11, 'CC-02', '2024-03-16T14:30:00', 21.0, 50.0, 23.0, 48.5, 4, 'On', 80, 6.0, 'E01', 1, 202, 'Temp high, check filters', 1, 'Manual temp increase', 'Adjusted setpoint', '2024-09-20', '2024-02-10');
INSERT INTO climate_control_logs VALUES (3, 12, 'CC-03', '2022-10-21T18:45:00', 20.0, 40.0, 19.5, 39.0, 2, 'Off', 60, 4.5, 'NONE', 0, 203, 'Night mode', 0, NULL, NULL, '2023-04-30', '2022-09-15');


-- Table aggregating energy consumption metrics for venues
CREATE TABLE venue_energy_consumption (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    date DATE,
    hour INTEGER,
    electricityKw REAL,
    gasTherms REAL,
    waterLiters REAL,
    renewablePercentage REAL,
    peakDemandKw REAL,
    loadFactor REAL,
    carbonEmissionsKg REAL,
    costUsd REAL,
    meterReadingStart REAL,
    meterReadingEnd REAL,
    anomalyFlag INTEGER,
    notes TEXT,
    reportedBy TEXT,
    reportTimestamp TEXT,
    approvedBy TEXT,
    approvalTimestamp TEXT
);

INSERT INTO venue_energy_consumption VALUES (1, 10, '2023-07-02', 10, 120.5, 15.2, 5000, 30.0, 130.0, 0.85, 65.0, 250.0, 10000.0, 10120.5, 0, 'Normal operation', 'AnalystA', '2023-07-02T12:00:00', 'ManagerB', '2023-07-02T13:00:00');
INSERT INTO venue_energy_consumption VALUES (2, 11, '2024-03-16', 14, 140.0, 18.0, 4800, 35.0, 150.0, 0.88, 70.0, 300.0, 20000.0, 20140.0, 0, 'Peak usage due to event', 'AnalystC', '2024-03-16T16:00:00', 'ManagerD', '2024-03-16T17:00:00');
INSERT INTO venue_energy_consumption VALUES (3, 12, '2022-10-21', 9, 110.3, 12.5, 5200, 25.0, 115.0, 0.80, 60.0, 220.0, 15000.0, 15110.3, 1, 'Sensor anomaly detected', 'AnalystE', '2022-10-21T11:00:00', 'ManagerF', '2022-10-21T12:30:00');


-- Table recording fan loyalty program rewards
CREATE TABLE fan_experience_rewards (
    rewardId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    rewardName TEXT,
    tier TEXT,
    pointsRequired INTEGER,
    earnedDate DATE,
    redeemedFlag INTEGER,
    redemptionDate DATE,
    expirationDate DATE,
    rewardStatus TEXT,
    notes TEXT,
    redemptionLocation TEXT,
    voucherCode TEXT,
    emailSentFlag INTEGER,
    emailSentDate DATE,
    createdBy TEXT,
    createdDate DATE,
    lastUpdatedBy TEXT,
    lastUpdatedDate DATE,
    rewardCategory TEXT,
    rewardDescription TEXT
);

INSERT INTO fan_experience_rewards VALUES (1, 9001, 'VIP Pit Pass', 'Gold', 2000, '2023-06-01', 1, '2023-07-02', '2023-12-31', 'Redeemed', 'Enjoyed pit lane access', 'CircuitA', 'VIPPIT2023', 1, '2023-06-01', 'AdminA', '2023-05-20', 'AdminA', '2023-07-02', 'Access', 'Full access to pit lane during race weekend');
INSERT INTO fan_experience_rewards VALUES (2, 9002, 'Merchandise Discount', 'Silver', 800, '2024-02-10', 0, NULL, '2024-08-10', 'Active', 'Applicable on all store items', 'OnlineStore', 'DISC2024', 1, '2024-02-10', 'AdminB', '2024-01-15', 'AdminB', '2024-02-10', 'Discount', '10% off on all merchandise');
INSERT INTO fan_experience_rewards VALUES (3, 9003, 'Free Race Ticket', 'Platinum', 5000, '2022-09-20', 1, '2022-10-21', '2023-09-20', 'Redeemed', 'Ticket used for Grand Prix', 'StadiumGate', 'TICKET2022', 1, '2022-09-20', 'AdminC', '2022-08-30', 'AdminC', '2022-10-21', 'Ticket', 'One free entry ticket to the main race event');