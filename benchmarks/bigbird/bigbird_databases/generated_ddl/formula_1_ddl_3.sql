-- Grand Prix Committees
CREATE TABLE grand_prix_committees (
    committeeId INTEGER PRIMARY KEY AUTOINCREMENT,
    gpYear INTEGER NOT NULL,
    committeeName TEXT NOT NULL,
    chairPerson TEXT NOT NULL,
    contactEmail TEXT NOT NULL,
    phoneNumber TEXT,
    addressLine1 TEXT,
    addressLine2 TEXT,
    city TEXT,
    state TEXT,
    zipCode TEXT,
    country TEXT,
    budgetAllocated REAL,
    numMembers INTEGER,
    meetingFrequency TEXT,
    lastMeetingDate DATE,
    notes TEXT,
    website TEXT,
    socialMediaHandle TEXT,
    establishedYear INTEGER
);

INSERT INTO grand_prix_committees (committeeId, gpYear, committeeName, chairPerson, contactEmail, phoneNumber, addressLine1, addressLine2, city, state, zipCode, country, budgetAllocated, numMembers, meetingFrequency, lastMeetingDate, notes, website, socialMediaHandle, establishedYear)
VALUES (1, 2024, 'GP_Committee_2024', 'John_Doe', 'john.doe@example.com', '1234567890', '123_Main_St', '', 'London', 'England', 'SW1A1AA', 'UK', 500000.00, 12, 'Monthly', '2024-03-15', 'First_meeting_notes', 'http://gpcommittee2024.com', '@gp2024', 2010);

INSERT INTO grand_prix_committees (committeeId, gpYear, committeeName, chairPerson, contactEmail, phoneNumber, addressLine1, addressLine2, city, state, zipCode, country, budgetAllocated, numMembers, meetingFrequency, lastMeetingDate, notes, website, socialMediaHandle, establishedYear)
VALUES (2, 2025, 'GP_Committee_2025', 'Maria_Smith', 'maria.smith@example.com', '0987654321', '456_Elm_Road', 'Suite_2', 'Monaco', '', '98000', 'Monaco', 750000.00, 15, 'Quarterly', '2025-02-20', 'Planning_phase', 'http://gpcommittee2025.com', '@gp2025', 2012);

INSERT INTO grand_prix_committees (committeeId, gpYear, committeeName, chairPerson, contactEmail, phoneNumber, addressLine1, addressLine2, city, state, zipCode, country, budgetAllocated, numMembers, meetingFrequency, lastMeetingDate, notes, website, socialMediaHandle, establishedYear)
VALUES (3, 2026, 'GP_Committee_2026', 'Liu_Wang', 'liu.wang@example.com', '5551234567', '789_Oak_Avenue', '', 'Shanghai', '', '200001', 'China', 620000.00, 13, 'BiMonthly', '2026-01-10', 'Kickoff_meeting', 'http://gpcommittee2026.com', '@gp2026', 2014);


-- Circuit Security Devices
CREATE TABLE circuit_security_devices (
    deviceId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    deviceType TEXT NOT NULL,
    manufacturer TEXT,
    modelNumber TEXT,
    serialNumber TEXT,
    installationDate DATE,
    lastMaintenanceDate DATE,
    firmwareVersion TEXT,
    ipAddress TEXT,
    macAddress TEXT,
    locationDescription TEXT,
    status TEXT,
    batteryLevel INTEGER,
    signalStrength INTEGER,
    warrantyExpiry DATE,
    assignedTechnician TEXT,
    calibrationDate DATE,
    notes TEXT,
    encryptionKey TEXT,
    FOREIGN KEY (circuitId) REFERENCES circuits(circuitId)
);

INSERT INTO circuit_security_devices (deviceId, circuitId, deviceType, manufacturer, modelNumber, serialNumber, installationDate, lastMaintenanceDate, firmwareVersion, ipAddress, macAddress, locationDescription, status, batteryLevel, signalStrength, warrantyExpiry, assignedTechnician, calibrationDate, notes, encryptionKey)
VALUES (1, 1, 'CCTV', 'SecureCam', 'SC-900', 'SN001', '2022-06-01', '2023-06-01', 'v1.2.3', '192.168.1.10', 'AA:BB:CC:DD:EE:01', 'North_Entrance', 'Active', 95, 80, '2025-06-01', 'Tech_Alice', '2023-06-01', 'No_issues', 'KEY12345');

INSERT INTO circuit_security_devices (deviceId, circuitId, deviceType, manufacturer, modelNumber, serialNumber, installationDate, lastMaintenanceDate, firmwareVersion, ipAddress, macAddress, locationDescription, status, batteryLevel, signalStrength, warrantyExpiry, assignedTechnician, calibrationDate, notes, encryptionKey)
VALUES (2, 2, 'Radar', 'TrackGuard', 'TG-200', 'SN002', '2021-04-15', '2023-04-15', 'v3.5.0', '192.168.1.20', 'AA:BB:CC:DD:EE:02', 'East_Sector', 'Active', 100, 90, '2024-04-15', 'Tech_Bob', '2023-04-15', 'Calibrated', 'KEY67890');

INSERT INTO circuit_security_devices (deviceId, circuitId, deviceType, manufacturer, modelNumber, serialNumber, installationDate, lastMaintenanceDate, firmwareVersion, ipAddress, macAddress, locationDescription, status, batteryLevel, signalStrength, warrantyExpiry, assignedTechnician, calibrationDate, notes, encryptionKey)
VALUES (3, 3, 'Access_Control', 'EntrySafe', 'ES-300', 'SN003', '2020-09-30', '2023-09-30', 'v2.1.0', '192.168.1.30', 'AA:BB:CC:DD:EE:03', 'Pit_Entry', 'Inactive', 0, 0, '2023-09-30', 'Tech_Charlie', '2023-09-30', 'Decommissioned', 'KEY00000');


-- Press Release Archive
CREATE TABLE press_release_archive (
    releaseId INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    releaseDate DATE NOT NULL,
    author TEXT,
    summary TEXT,
    body TEXT,
    relatedRaceId INTEGER,
    relatedCircuitId INTEGER,
    tags TEXT,
    url TEXT,
    language TEXT,
    region TEXT,
    distributionChannel TEXT,
    approvalStatus TEXT,
    approvedBy TEXT,
    version INTEGER,
    isFeatured INTEGER,
    contactPhone TEXT,
    contactEmail TEXT,
    embargoDate DATE,
    FOREIGN KEY (relatedRaceId) REFERENCES races(raceId),
    FOREIGN KEY (relatedCircuitId) REFERENCES circuits(circuitId)
);

INSERT INTO press_release_archive (releaseId, title, releaseDate, author, summary, body, relatedRaceId, relatedCircuitId, tags, url, language, region, distributionChannel, approvalStatus, approvedBy, version, isFeatured, contactPhone, contactEmail, embargoDate)
VALUES (1, 'New_Rules_Announcement', '2024-01-15', 'Emma_Clark', 'Summary_of_rules', 'Full_body_text', 1, 1, 'rules,2024', 'http://press.example.com/2024/rules', 'EN', 'EU', 'Online', 'Approved', 'John_Doe', 1, 1, '1112223333', 'press@example.com', '2024-01-14');

INSERT INTO press_release_archive (releaseId, title, releaseDate, author, summary, body, relatedRaceId, relatedCircuitId, tags, url, language, region, distributionChannel, approvalStatus, approvedBy, version, isFeatured, contactPhone, contactEmail, embargoDate)
VALUES (2, 'Season_Opening_Statement', '2024-03-01', 'Liam_Nguyen', 'Opening_statement_summary', 'Full_body_text_season_opening', 2, 2, 'season,opening', 'http://press.example.com/2024/season_opening', 'EN', 'ASIA', 'Print', 'Pending', 'Maria_Smith', 1, 0, '2223334444', 'season@example.com', '2024-02-28');

INSERT INTO press_release_archive (releaseId, title, releaseDate, author, summary, body, relatedRaceId, relatedCircuitId, tags, url, language, region, distributionChannel, approvalStatus, approvedBy, version, isFeatured, contactPhone, contactEmail, embargoDate)
VALUES (3, 'Safety_Initiative_Launch', '2024-05-20', 'Olivia_Tan', 'Safety_initiative_summary', 'Full_body_text_safety', NULL, 3, 'safety,initiative', 'http://press.example.com/2024/safety', 'EN', 'NA', 'Online', 'Approved', 'Liu_Wang', 2, 1, '3334445555', 'safety@example.com', '2024-05-19');


-- Fuel Supplier Contracts
CREATE TABLE fuel_supplier_contracts (
    contractId INTEGER PRIMARY KEY AUTOINCREMENT,
    supplierName TEXT NOT NULL,
    contractStart DATE NOT NULL,
    contractEnd DATE NOT NULL,
    fuelType TEXT,
    pricePerLiter REAL,
    volumeCommitted INTEGER,
    discountRate REAL,
    paymentTerms TEXT,
    contactPerson TEXT,
    contactPhone TEXT,
    contactEmail TEXT,
    fuelQualityStandard TEXT,
    auditFrequency INTEGER,
    penaltyClause TEXT,
    renewalOption TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    isActive INTEGER
);

INSERT INTO fuel_supplier_contracts (contractId, supplierName, contractStart, contractEnd, fuelType, pricePerLiter, volumeCommitted, discountRate, paymentTerms, contactPerson, contactPhone, contactEmail, fuelQualityStandard, auditFrequency, penaltyClause, renewalOption, notes, createdAt, updatedAt, isActive)
VALUES (1, 'FuelCo_International', '2023-01-01', '2026-12-31', 'Petrol', 1.23, 500000, 0.05, 'Net30', 'James_Kent', '4445556666', 'james.kent@fuelco.com', 'ISO_9001', 12, 'Late_delivery_penalty', 'Option_to_extend', 'Primary_supplier', '2023-01-01', '2024-01-01', 1);

INSERT INTO fuel_supplier_contracts (contractId, supplierName, contractStart, contractEnd, fuelType, pricePerLiter, volumeCommitted, discountRate, paymentTerms, contactPerson, contactPhone, contactEmail, fuelQualityStandard, auditFrequency, penaltyClause, renewalOption, notes, createdAt, updatedAt, isActive)
VALUES (2, 'EcoFuel_Solutions', '2024-04-01', '2027-03-31', 'Biofuel', 1.45, 300000, 0.07, 'Net45', 'Sofia_Ramirez', '5556667777', 'sofia.ramirez@ecofuel.com', 'ISO_14001', 6, 'Quality_failure_penalty', 'Option_to_renew', 'Eco_friendly_option', '2024-04-01', '2024-06-01', 1);

INSERT INTO fuel_supplier_contracts (contractId, supplierName, contractStart, contractEnd, fuelType, pricePerLiter, volumeCommitted, discountRate, paymentTerms, contactPerson, contactPhone, contactEmail, fuelQualityStandard, auditFrequency, penaltyClause, renewalOption, notes, createdAt, updatedAt, isActive)
VALUES (3, 'RapidFuel_LLC', '2022-07-15', '2025-07-14', 'Diesel', 1.10, 400000, 0.03, 'Net60', 'Mark_Taylor', '6667778888', 'mark.taylor@rapidfuel.com', 'ISO_50001', 12, 'Late_payment_penalty', 'No_renewal', 'Backup_supplier', '2022-07-15', '2023-07-15', 0);


-- Race Telemetry Devices
CREATE TABLE race_telemetry_devices (
    deviceId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    driverId INTEGER NOT NULL,
    deviceSerial TEXT,
    firmwareVersion TEXT,
    sensorCount INTEGER,
    samplingRateHz INTEGER,
    dataRetentionDays INTEGER,
    batteryCapacityMah INTEGER,
    ipAddress TEXT,
    macAddress TEXT,
    installedBy TEXT,
    installDate DATE,
    lastCalibration DATE,
    status TEXT,
    lastDataUpload TIMESTAMP,
    dataVolumeGB REAL,
    encryptionEnabled INTEGER,
    notes TEXT,
    vendorName TEXT,
    FOREIGN KEY (raceId) REFERENCES races(raceId),
    FOREIGN KEY (driverId) REFERENCES drivers(driverId)
);

INSERT INTO race_telemetry_devices (deviceId, raceId, driverId, deviceSerial, firmwareVersion, sensorCount, samplingRateHz, dataRetentionDays, batteryCapacityMah, ipAddress, macAddress, installedBy, installDate, lastCalibration, status, lastDataUpload, dataVolumeGB, encryptionEnabled, notes, vendorName)
VALUES (1, 1, 1, 'TM1001', 'v2.0', 12, 1000, 30, 5000, '10.0.0.1', 'AA:BB:CC:DD:EE:10', 'Tech_Alice', '2024-03-01', '2024-03-02', 'Active', '2024-03-10 12:30:00', 12.5, 1, 'All_ok', 'TelemetryCorp');

INSERT INTO race_telemetry_devices (deviceId, raceId, driverId, deviceSerial, firmwareVersion, sensorCount, samplingRateHz, dataRetentionDays, batteryCapacityMah, ipAddress, macAddress, installedBy, installDate, lastCalibration, status, lastDataUpload, dataVolumeGB, encryptionEnabled, notes, vendorName)
VALUES (2, 2, 2, 'TM1002', 'v2.1', 14, 1200, 45, 6000, '10.0.0.2', 'AA:BB:CC:DD:EE:11', 'Tech_Bob', '2024-04-01', '2024-04-02', 'Active', '2024-04-12 14:45:00', 15.8, 1, 'Calibration_needed', 'TelemetryCorp');

INSERT INTO race_telemetry_devices (deviceId, raceId, driverId, deviceSerial, firmwareVersion, sensorCount, samplingRateHz, dataRetentionDays, batteryCapacityMah, ipAddress, macAddress, installedBy, installDate, lastCalibration, status, lastDataUpload, dataVolumeGB, encryptionEnabled, notes, vendorName)
VALUES (3, 3, 3, 'TM1003', 'v1.9', 10, 800, 20, 4500, '10.0.0.3', 'AA:BB:CC:DD:EE:12', 'Tech_Charlie', '2024-05-01', '2024-05-02', 'Inactive', '2024-05-15 09:20:00', 9.2, 0, 'Device_decommissioned', 'TelemetryCorp');


-- Hospitality Services
CREATE TABLE hospitality_services (
    serviceId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueName TEXT NOT NULL,
    serviceType TEXT,
    providerName TEXT,
    contactPhone TEXT,
    contactEmail TEXT,
    capacity INTEGER,
    pricePerPerson REAL,
    includedMeals TEXT,
    availableFrom DATE,
    availableTo DATE,
    specialRequirements TEXT,
    rating INTEGER,
    reviewsCount INTEGER,
    website TEXT,
    socialMediaHandle TEXT,
    contractStart DATE,
    contractEnd DATE,
    isActive INTEGER,
    notes TEXT
);

INSERT INTO hospitality_services (serviceId, venueName, serviceType, providerName, contactPhone, contactEmail, capacity, pricePerPerson, includedMeals, availableFrom, availableTo, specialRequirements, rating, reviewsCount, website, socialMediaHandle, contractStart, contractEnd, isActive, notes)
VALUES (1, 'Grand_Premier_Hotel', 'Lounge', 'EliteHospitality', '7778889999', 'contact@elite.com', 200, 150.00, 'Breakfast,Lunch', '2024-03-01', '2024-03-02', 'Wheelchair_access', 5, 120, 'http://elite.com', '@elite', '2023-01-01', '2025-12-31', 1, 'Primary_lounge');

INSERT INTO hospitality_services (serviceId, venueName, serviceType, providerName, contactPhone, contactEmail, capacity, pricePerPerson, includedMeals, availableFrom, availableTo, specialRequirements, rating, reviewsCount, website, socialMediaHandle, contractStart, contractEnd, isActive, notes)
VALUES (2, 'Circuit_Vip_Tent', 'VIP_Tent', 'LuxuryEvents', '8889990000', 'info@luxuryevents.com', 100, 300.00, 'All_meals', '2024-04-10', '2024-04-11', 'Security_required', 4, 85, 'http://luxuryevents.com', '@luxury', '2022-06-01', '2024-06-30', 1, 'Extra_security');

INSERT INTO hospitality_services (serviceId, venueName, serviceType, providerName, contactPhone, contactEmail, capacity, pricePerPerson, includedMeals, availableFrom, availableTo, specialRequirements, rating, reviewsCount, website, socialMediaHandle, contractStart, contractEnd, isActive, notes)
VALUES (3, 'Media_Center', 'Press_Room', 'MediaSolutions', '9990001111', 'press@mediasol.com', 50, 0.00, 'Coffee_Snacks', '2024-05-20', '2024-05-20', 'Live_stream_setup', 5, 200, 'http://mediasol.com', '@mediasol', '2021-01-01', '2026-12-31', 1, 'Press_zone');


-- Traffic Management
CREATE TABLE traffic_management (
    planId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    sector TEXT,
    entranceCount INTEGER,
    exitCount INTEGER,
    signageType TEXT,
    staffCount INTEGER,
    controlCenterPhone TEXT,
    controlCenterEmail TEXT,
    startTime TEXT,
    endTime TEXT,
    weatherImpact TEXT,
    contingencyPlan TEXT,
    lastUpdated DATE,
    approvedBy TEXT,
    notes TEXT,
    gpsCoordinates TEXT,
    laneClosures TEXT,
    publicNoticeUrl TEXT,
    isLive INTEGER,
    FOREIGN KEY (raceId) REFERENCES races(raceId)
);

INSERT INTO traffic_management (planId, raceId, sector, entranceCount, exitCount, signageType, staffCount, controlCenterPhone, controlCenterEmail, startTime, endTime, weatherImpact, contingencyPlan, lastUpdated, approvedBy, notes, gpsCoordinates, laneClosures, publicNoticeUrl, isLive)
VALUES (1, 1, 'North', 3, 2, 'Digital', 15, '1112223333', 'traffic@control.com', '07:00', '19:00', 'Low', 'Standard_procedure', '2024-03-01', 'John_Doe', 'All_clear', '45.0, -73.0', 'None', 'http://trafficnotice.com/2024/1', 1);

INSERT INTO traffic_management (planId, raceId, sector, entranceCount, exitCount, signageType, staffCount, controlCenterPhone, controlCenterEmail, startTime, endTime, weatherImpact, contingencyPlan, lastUpdated, approvedBy, notes, gpsCoordinates, laneClosures, publicNoticeUrl, isLive)
VALUES (2, 2, 'South', 4, 3, 'LED', 20, '2223334444', 'south@control.com', '06:30', '20:30', 'Medium', 'Rain_plan', '2024-04-01', 'Maria_Smith', 'Extra_staff_deployed', '46.5, -74.5', 'Lane_5,6', 'http://trafficnotice.com/2024/2', 1);

INSERT INTO traffic_management (planId, raceId, sector, entranceCount, exitCount, signageType, staffCount, controlCenterPhone, controlCenterEmail, startTime, endTime, weatherImpact, contingencyPlan, lastUpdated, approvedBy, notes, gpsCoordinates, laneClosures, publicNoticeUrl, isLive)
VALUES (3, 3, 'East', 2, 2, 'Standard', 12, '3334445555', 'east@control.com', '08:00', '18:00', 'High', 'Wind_protocol', '2024-05-01', 'Liu_Wang', 'Monitor_wind_speed', '47.0, -75.0', 'Lane_2', 'http://trafficnotice.com/2024/3', 0);


-- Audio Visual Inventory
CREATE TABLE audio_visual_inventory (
    avId INTEGER PRIMARY KEY AUTOINCREMENT,
    itemName TEXT NOT NULL,
    category TEXT,
    manufacturer TEXT,
    modelNumber TEXT,
    serialNumber TEXT,
    purchaseDate DATE,
    warrantyEnd DATE,
    location TEXT,
    condition TEXT,
    lastMaintenance DATE,
    assignedTo TEXT,
    calibrationDate DATE,
    firmwareVersion TEXT,
    supportsResolution TEXT,
    powerRequirements TEXT,
    rentalRatePerDay REAL,
    isAvailable INTEGER,
    notes TEXT,
    lastChecked DATE
);

INSERT INTO audio_visual_inventory (avId, itemName, category, manufacturer, modelNumber, serialNumber, purchaseDate, warrantyEnd, location, condition, lastMaintenance, assignedTo, calibrationDate, firmwareVersion, supportsResolution, powerRequirements, rentalRatePerDay, isAvailable, notes, lastChecked)
VALUES (1, 'Main_Scoreboard', 'Display', 'VisionTech', 'VT-9000', 'AV001', '2022-01-10', '2025-01-10', 'Control_Tower', 'Good', '2024-02-20', 'Tech_Alice', '2024-02-20', 'v5.4', '4K', '220V', 250.00, 1, 'No_issues', '2024-03-01');

INSERT INTO audio_visual_inventory (avId, itemName, category, manufacturer, modelNumber, serialNumber, purchaseDate, warrantyEnd, location, condition, lastMaintenance, assignedTo, calibrationDate, firmwareVersion, supportsResolution, powerRequirements, rentalRatePerDay, isAvailable, notes, lastChecked)
VALUES (2, 'Pit_Sound_System', 'Audio', 'SoundMax', 'SM-300', 'AV002', '2021-06-15', '2024-06-15', 'Pit_Zone', 'Fair', '2024-03-05', 'Tech_Bob', '2024-03-05', 'v3.2', 'Stereo', '110V', 150.00, 0, 'Speaker_damage', '2024-03-10');

INSERT INTO audio_visual_inventory (avId, itemName, category, manufacturer, modelNumber, serialNumber, purchaseDate, warrantyEnd, location, condition, lastMaintenance, assignedTo, calibrationDate, firmwareVersion, supportsResolution, powerRequirements, rentalRatePerDay, isAvailable, notes, lastChecked)
VALUES (3, 'Live_Stream_Camera', 'Camera', 'CamPro', 'CP-200', 'AV003', '2023-03-20', '2026-03-20', 'Media_Center', 'Excellent', '2024-01-15', 'Tech_Charlie', '2024-01-15', 'v2.9', '1080p', '12V', 80.00, 1, 'Ready_for_event', '2024-03-12');


-- Sustainable Initiatives
CREATE TABLE sustainable_initiatives (
    initiativeId INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT,
    startDate DATE,
    endDate DATE,
    targetReductionCO2 REAL,
    actualReductionCO2 REAL,
    budget REAL,
    responsibleDept TEXT,
    leadPerson TEXT,
    status TEXT,
    metricsCollected INTEGER,
    reportingFrequency TEXT,
    lastReportDate DATE,
    partnerOrganizations TEXT,
    certification TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    isActive INTEGER
);

INSERT INTO sustainable_initiatives (initiativeId, name, description, startDate, endDate, targetReductionCO2, actualReductionCO2, budget, responsibleDept, leadPerson, status, metricsCollected, reportingFrequency, lastReportDate, partnerOrganizations, certification, notes, createdAt, updatedAt, isActive)
VALUES (1, 'Zero_Emissions_Cycle', 'Aim_to_reduce_emissions', '2023-01-01', '2025-12-31', 1500.0, 1200.5, 800000.00, 'Operations', 'Anna_Kim', 'In_Progress', 24, 'Quarterly', '2024-02-15', 'GreenAlliance,EcoPartners', 'ISO_14001', 'On_track', '2023-01-01', '2024-03-01', 1);

INSERT INTO sustainable_initiatives (initiativeId, name, description, startDate, endDate, targetReductionCO2, actualReductionCO2, budget, responsibleDept, leadPerson, status, metricsCollected, reportingFrequency, lastReportDate, partnerOrganizations, certification, notes, createdAt, updatedAt, isActive)
VALUES (2, 'Renewable_Energy_Upgrade', 'Switch_to_solar_power', '2024-04-01', '2026-03-31', 800.0, 0.0, 500000.00, 'Facilities', 'Carlos_Mendoza', 'Planned', 0, 'Annually', NULL, 'SolarGroup', 'LEED', 'Phase_1_not_started', '2024-04-01', '2024-04-01', 1);

INSERT INTO sustainable_initiatives (initiativeId, name, description, startDate, endDate, targetReductionCO2, actualReductionCO2, budget, responsibleDept, leadPerson, status, metricsCollected, reportingFrequency, lastReportDate, partnerOrganizations, certification, notes, createdAt, updatedAt, isActive)
VALUES (3, 'Waste_Zero_Program', 'Eliminate_waste_to_landfill', '2022-07-01', '2024-12-31', 300.0, 250.0, 200000.00, 'Logistics', 'Emily_Stone', 'Completed', 36, 'Monthly', '2024-01-30', 'ZeroWasteOrg', 'ISO_9001', 'Success', '2022-07-01', '2024-01-30', 0);


-- Driver Media Profiles
CREATE TABLE driver_media_profiles (
    profileId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER NOT NULL,
    platform TEXT,
    username TEXT,
    followers INTEGER,
    engagementRate REAL,
    verified INTEGER,
    profileUrl TEXT,
    joinDate DATE,
    lastUpdate DATE,
    contentFocus TEXT,
    language TEXT,
    bio TEXT,
    contactEmail TEXT,
    contactPhone TEXT,
    tags TEXT,
    averageViewsPerPost REAL,
    sponsorshipsCount INTEGER,
    notes TEXT,
    isActive INTEGER,
    createdAt DATE,
    FOREIGN KEY (driverId) REFERENCES drivers(driverId)
);

INSERT INTO driver_media_profiles (profileId, driverId, platform, username, followers, engagementRate, verified, profileUrl, joinDate, lastUpdate, contentFocus, language, bio, contactEmail, contactPhone, tags, averageViewsPerPost, sponsorshipsCount, notes, isActive, createdAt)
VALUES (1, 1, 'Instagram', 'fast_lap1', 120000, 4.5, 1, 'http://instagram.com/fast_lap1', '2020-05-10', '2024-02-28', 'Racing_Life', 'EN', 'Passionate_driver', 'fast.lap1@example.com', '1231112222', 'speed,tech', 1500.0, 8, 'High_engagement', 1, '2020-05-10');

INSERT INTO driver_media_profiles (profileId, driverId, platform, username, followers, engagementRate, verified, profileUrl, joinDate, lastUpdate, contentFocus, language, bio, contactEmail, contactPhone, tags, averageViewsPerPost, sponsorshipsCount, notes, isActive, createdAt)
VALUES (2, 2, 'Twitter', 'drift_master', 85000, 3.8, 1, 'http://twitter.com/drift_master', '2019-03-20', '2024-03-01', 'Motorsport_Insights', 'EN', 'Driver_and_analyst', 'drift.master@example.com', '1243334444', 'analysis,news', 1100.0, 5, 'Consistent_growth', 1, '2019-03-20');

INSERT INTO driver_media_profiles (profileId, driverId, platform, username, followers, engagementRate, verified, profileUrl, joinDate, lastUpdate, contentFocus, language, bio, contactEmail, contactPhone, tags, averageViewsPerPost, sponsorshipsCount, notes, isActive, createdAt)
VALUES (3, 3, 'YouTube', 'track_queen', 200000, 5.2, 1, 'http://youtube.com/track_queen', '2021-11-01', '2024-02-15', 'Vlog_Racing', 'EN', 'Behind_the_scenes', 'track.queen@example.com', '1255556666', 'vlog,tech', 2500.0, 10, 'Top_channel', 1, '2021-11-01');