-- Table describing the electrical status of each venue power grid
CREATE TABLE venue_power_grid_status
(
    gridStatusId        INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId             INTEGER,
    gridOperator        TEXT,
    voltageLevelKV      REAL,
    frequencyHz         REAL,
    phaseCount          INTEGER,
    transformerCount    INTEGER,
    backupGeneratorQty  INTEGER,
    loadMW              REAL,
    demandResponseFlag  TEXT,
    outageScheduled     TEXT,
    outageStartDate     DATE,
    outageEndDate       DATE,
    maintenanceWindow   TEXT,
    substationId        INTEGER,
    feederId            INTEGER,
    sensorCount         INTEGER,
    smartMeterPct       REAL,
    renewablePct        REAL,
    carbonIntensityGCO2 REAL,
    lastInspectionDate  DATE,
    notes               TEXT
);
INSERT INTO venue_power_grid_status VALUES (1, 101, 'GridCo', 220.0, 50.0, 3, 2, 1, 150.5, 'Y', 'N', '2025-06-01', '2025-06-03', '02:00-04:00', 501, 3001, 120, 85.5, 12.3, 0.45, '2025-05-20', 'All systems nominal');
INSERT INTO venue_power_grid_status VALUES (2, 102, 'PowerNet', 110.0, 60.0, 1, 1, 0, 80.0, 'N', 'Y', '2025-07-15', '2025-07-16', '03:00-05:00', 502, 3002, 60, 70.0, 20.0, 0.60, '2025-07-01', 'Planned outage for maintenance');
INSERT INTO venue_power_grid_status VALUES (3, 103, 'ElecGrid', 330.0, 55.0, 3, 3, 2, 200.0, 'Y', 'N', '2025-08-10', '2025-08-12', '01:00-03:00', 503, 3003, 150, 90.0, 15.0, 0.30, '2025-07-25', 'High renewable integration');

-- Table describing streaming server nodes used for broadcast
CREATE TABLE broadcast_streaming_nodes
(
    nodeId                INTEGER PRIMARY KEY AUTOINCREMENT,
    nodeLabel             TEXT,
    ipAddress             TEXT,
    locationCity          TEXT,
    locationCountry       TEXT,
    cpuCores              INTEGER,
    memoryGB              REAL,
    storageTB             REAL,
    bandwidthGbps         REAL,
    operatingSystem       TEXT,
    nodeRole              TEXT,
    status                TEXT,
    lastRestart           DATE,
    firmwareVersion       TEXT,
    maxConcurrentStreams  INTEGER,
    avgLatencyMs          REAL,
    packetLossPct         REAL,
    encryptionEnabled     TEXT,
    cdnIntegration        TEXT,
    monitoringEndpoint    TEXT,
    maintenanceWindow    TEXT,
    notes                 TEXT
);
INSERT INTO broadcast_streaming_nodes VALUES (1, 'NodeA', '192.168.1.10', 'London', 'UK', 32, 128.0, 10.0, 10.0, 'Linux', 'Edge', 'Active', '2025-04-15', 'v1.2.3', 5000, 45.2, 0.02, 'Y', 'Akamai', 'http://monitor.nodea.com', 'Sun 02:00-04:00', 'Primary EU node');
INSERT INTO broadcast_streaming_nodes VALUES (2, 'NodeB', '192.168.2.20', 'NewYork', 'USA', 48, 256.0, 20.0, 40.0, 'Linux', 'Origin', 'Active', '2025-04-10', 'v1.3.0', 8000, 30.5, 0.01, 'Y', 'Cloudfront', 'http://monitor.nodeb.com', 'Sat 01:00-03:00', 'Primary NA node');
INSERT INTO broadcast_streaming_nodes VALUES (3, 'NodeC', '192.168.3.30', 'Tokyo', 'JP', 24, 96.0, 5.0, 20.0, 'FreeBSD', 'Edge', 'Standby', '2025-03-20', 'v1.1.8', 3000, 60.0, 0.05, 'N', 'Fastly', 'http://monitor.nodec.com', 'Tue 03:00-05:00', 'Backup APAC node');

-- Table describing virtual reality assets used during races
CREATE TABLE race_virtual_reality_assets
(
    vrAssetId          INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId             INTEGER,
    assetName          TEXT,
    assetType          TEXT,
    fileFormat         TEXT,
    fileSizeMB         REAL,
    resolutionWidth    INTEGER,
    resolutionHeight   INTEGER,
    frameRateFps       INTEGER,
    creatorTeam        TEXT,
    creationDate       DATE,
    lastUpdated        DATE,
    licenseType        TEXT,
    usageCount         INTEGER,
    avgViewDurationSec REAL,
    vrPlatform         TEXT,
    isInteractive      TEXT,
    downloadUrl        TEXT,
    checksumSHA256     TEXT,
    viewerRating       REAL,
    comments           TEXT,
    status             TEXT,
    notes              TEXT
);
INSERT INTO race_virtual_reality_assets VALUES (1, 301, 'GrandPrixVR', 'FullRace', 'mp4', 1500.0, 3840, 2160, 60, 'TeamA', '2025-01-10', '2025-05-01', 'RoyaltyFree', 1200, 300.5, 'Oculus', 'Y', 'http://vr.assets.com/grandprix', 'abc123def456', 4.8, 'High quality', 'Active', 'Used in 2025 season');
INSERT INTO race_virtual_reality_assets VALUES (2, 302, 'PitLaneTour', 'Tour', 'webm', 350.0, 1920, 1080, 30, 'TeamB', '2025-02-15', '2025-04-20', 'CreativeCommons', 800, 180.0, 'SteamVR', 'N', 'http://vr.assets.com/pitlane', 'def789ghi012', 4.2, 'Educational', 'Active', 'Include driver commentary');
INSERT INTO race_virtual_reality_assets VALUES (3, 303, 'CircuitFlyover', 'Flyover', 'mp4', 800.0, 2560, 1440, 45, 'TeamC', '2025-03-05', '2025-05-10', 'LicensePaid', 950, 250.0, 'HTC Vive', 'Y', 'http://vr.assets.com/flyover', 'ghi345jkl678', 4.5, 'Spectator view', 'Active', 'Used for fan engagement');

-- Table describing metrics for fan loyalty challenges
CREATE TABLE fan_loyalty_challenge_metrics
(
    challengeId          INTEGER PRIMARY KEY AUTOINCREMENT,
    challengeName        TEXT,
    startDate            DATE,
    endDate              DATE,
    targetPoints         INTEGER,
    totalParticipants    INTEGER,
    averagePointsEarned  INTEGER,
    highestPoints        INTEGER,
    lowestPoints         INTEGER,
    redemptionRatePct    REAL,
    prizeTier1           TEXT,
    prizeTier2           TEXT,
    prizeTier3           TEXT,
    sponsorName          TEXT,
    sponsorContribution REAL,
    engagementScore      REAL,
    socialShares         INTEGER,
    videoViews           INTEGER,
    feedbackScore        REAL,
    status               TEXT,
    notes                TEXT,
    createdBy            TEXT,
    lastModified         DATE
);
INSERT INTO fan_loyalty_challenge_metrics VALUES (1, 'Speedster Sprint', '2025-06-01', '2025-06-30', 5000, 12000, 350, 12000, 50, 12.5, 'VIP Suite', 'Merch Pack', 'Signed Cap', 'AutoCo', 25000.0, 85.2, 3400, 15000, 4.6, 'Closed', 'Successful Q2 challenge', 'Admin', '2025-07-01');
INSERT INTO fan_loyalty_challenge_metrics VALUES (2, 'Pit Stop Puzzle', '2025-07-01', '2025-07-31', 4000, 9500, 280, 9500, 30, 10.2, 'Luxury Watch', 'Electronics Bundle', 'Gift Card', 'TechCorp', 18000.0, 78.4, 2100, 8000, 4.3, 'Closed', 'July challenge with tech sponsor', 'Admin', '2025-08-01');
INSERT INTO fan_loyalty_challenge_metrics VALUES (3, 'Grand Prix Quiz', '2025-08-01', '2025-08-31', 6000, 15000, 420, 15000, 60, 15.0, 'Race Car Ride', 'Travel Voucher', 'Premium Helmet', 'TravelCo', 30000.0, 89.1, 4700, 20000, 4.9, 'Open', 'Upcoming August challenge', 'Admin', '2025-09-01');

-- Table describing logistics for team mobility (crew transport, equipment movement)
CREATE TABLE team_mobility_logistics
(
    mobilityId          INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId              INTEGER,
    eventId             INTEGER,
    transportMode       TEXT,
    vehicleCount        INTEGER,
    driverCount         INTEGER,
    cargoWeightTon      REAL,
    departureDate       DATE,
    arrivalDate         DATE,
    departureLocation   TEXT,
    arrivalLocation     TEXT,
    fuelConsumedLiters  REAL,
    distanceKm          REAL,
    carbonEmissionsKg   REAL,
    costUSD             REAL,
    coordinatorName     TEXT,
    contactPhone        TEXT,
    insuranceProvider   TEXT,
    insurancePolicyNo   TEXT,
    notes               TEXT,
    status              TEXT,
    lastUpdated         DATE
);
INSERT INTO team_mobility_logistics VALUES (1, 201, 301, 'Truck', 5, 3, 12.5, '2025-06-10', '2025-06-12', 'London Depot', 'Monaco Circuit', 850.0, 1500.0, 2000.0, 18000.0, 'JohnDoe', '441234567890', 'InsureCo', 'POL12345', 'All equipment arrived on time', 'Completed', '2025-06-13');
INSERT INTO team_mobility_logistics VALUES (2, 202, 302, 'Air', 2, 4, 8.0, '2025-07-05', '2025-07-06', 'Berlin Airport', 'Silverstone', 300.0, 800.0, 1200.0, 25000.0, 'JaneSmith', '447890123456', 'CoverAll', 'POL67890', 'Priority cargo handled', 'Completed', '2025-07-07');
INSERT INTO team_mobility_logistics VALUES (3, 203, 303, 'Rail', 3, 2, 10.0, '2025-08-01', '2025-08-03', 'Vienna Station', 'Spa Francorchamps', 500.0, 1200.0, 1500.0, 22000.0, 'MikeBrown', '449876543210', 'SafeTransit', 'POL54321', 'Delayed due to strikes', 'Delayed', '2025-08-04');

-- Table describing water quality readings for circuits with water features
CREATE TABLE circuit_water_quality_readings
(
    readingId            INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId            INTEGER,
    sampleDate           DATE,
    sampleTime           TEXT,
    locationDescription  TEXT,
    temperatureC         REAL,
    pHLevel              REAL,
    turbidityNTU         REAL,
    dissolvedOxygenMgL   REAL,
    conductivityUsCm     REAL,
    chlorinePPM          REAL,
    fluoridePPM          REAL,
    nitratePPM           REAL,
    phosphatePPM         REAL,
    bacteriaCFUPer100ml  INTEGER,
    algaeCountPerL       INTEGER,
    hardnessPPM          REAL,
    totalSuspendedSolids REAL,
    samplingMethod      TEXT,
    analystName          TEXT,
    remarks              TEXT,
    status               TEXT,
    lastVerified         DATE
);
INSERT INTO circuit_water_quality_readings VALUES (1, 101, '2025-05-20', '08:00', 'Lake West', 15.2, 7.5, 3.1, 8.4, 250.0, 0.2, 0.1, 12.0, 0.5, 150, 2000, 180.0, 20.5, 'GrabSample', 'Alice', 'Within limits', 'Accepted', '2025-05-21');
INSERT INTO circuit_water_quality_readings VALUES (2, 102, '2025-06-10', '09:30', 'River Bend', 18.7, 7.2, 4.5, 7.9, 300.0, 0.3, 0.0, 15.0, 0.8, 200, 2500, 210.0, 25.0, 'Automated', 'Bob', 'Slightly high nitrate', 'Reviewed', '2025-06-11');
INSERT INTO circuit_water_quality_readings VALUES (3, 103, '2025-07-01', '07:45', 'Pond East', 12.5, 7.8, 2.0, 9.0, 220.0, 0.1, 0.05, 8.0, 0.3, 120, 1800, 150.0, 18.0, 'Manual', 'Carol', 'Excellent quality', 'Accepted', '2025-07-02');

-- Table describing metadata for weather satellite images
CREATE TABLE weather_satellite_image_metadata
(
    imageId                INTEGER PRIMARY KEY AUTOINCREMENT,
    satelliteName          TEXT,
    captureDate            DATE,
    captureTime            TEXT,
    orbitNumber            INTEGER,
    imageResolutionM       REAL,
    cloudCoveragePct       REAL,
    sunElevationDeg        REAL,
    sunAzimuthDeg          REAL,
    sensorType             TEXT,
    bandCount              INTEGER,
    fileSizeMB             REAL,
    fileFormat             TEXT,
    geographicCoverage     TEXT,
    northLatitude          REAL,
    southLatitude          REAL,
    eastLongitude          REAL,
    westLongitude          REAL,
    processingLevel        TEXT,
    creatorTeam            TEXT,
    checksumMD5            TEXT,
    usageRights            TEXT,
    notes                  TEXT,
    status                 TEXT
);
INSERT INTO weather_satellite_image_metadata VALUES (1, 'GeoSatX', '2025-04-15', '12:30', 10234, 0.5, 12.3, 45.0, 180.0, 'Multispectral', 12, 2500.0, 'tif', 'Europe', 55.0, 35.0, 10.0, -5.0, 'Level1', 'TeamA', 'abc123def456', 'PublicDomain', 'Clear sky over Europe', 'Available');
INSERT INTO weather_satellite_image_metadata VALUES (2, 'AeroSat', '2025-05-20', '03:15', 20456, 1.0, 45.0, 30.0, 220.0, 'Infrared', 8, 1800.0, 'jpg', 'NorthAmerica', 60.0, 20.0, -70.0, -130.0, 'Level2', 'TeamB', 'def789ghi012', 'Restricted', 'Cloudy conditions over USA', 'Available');
INSERT INTO weather_satellite_image_metadata VALUES (3, 'CloudWatch', '2025-06-10', '22:45', 30578, 0.3, 5.0, 60.0, 150.0, 'Visible', 5, 3000.0, 'png', 'Asia', 45.0, 10.0, 120.0, 80.0, 'Level1', 'TeamC', 'ghi345jkl678', 'PublicDomain', 'Clear image of Asian continent', 'Available');

-- Table describing translations of media content
CREATE TABLE media_content_translation_log
(
    translationId        INTEGER PRIMARY KEY AUTOINCREMENT,
    mediaId              INTEGER,
    sourceLanguage       TEXT,
    targetLanguage       TEXT,
    translatorTeam       TEXT,
    translationStartDate DATE,
    translationEndDate   DATE,
    wordCount            INTEGER,
    fileSizeMB           REAL,
    format               TEXT,
    qualityCheckPassed   TEXT,
    reviewerName         TEXT,
    reviewDate           DATE,
    notes                TEXT,
    status               TEXT,
    checksumSHA1         TEXT,
    platform             TEXT,
    distributionRegion   TEXT,
    costUSD              REAL,
    complianceFlag       TEXT,
    versionNumber        INTEGER,
    lastUpdated          DATE,
    comments             TEXT
);
INSERT INTO media_content_translation_log VALUES (1, 1001, 'en', 'fr', 'TeamLang', '2025-02-01', '2025-02-05', 2500, 12.5, 'mp4', 'Y', 'Emily', '2025-02-06', 'French version ready', 'Completed', 'a1b2c3d4e5', 'Web', 'EU', 1500.0, 'Y', 1, '2025-02-07', 'No issues');
INSERT INTO media_content_translation_log VALUES (2, 1002, 'en', 'de', 'TeamLang', '2025-03-10', '2025-03-14', 3000, 15.0, 'avi', 'Y', 'Lukas', '2025-03-15', 'German version approved', 'Completed', 'f6g7h8i9j0', 'Mobile', 'EU', 1800.0, 'Y', 1, '2025-03-16', 'Checked subtitles');
INSERT INTO media_content_translation_log VALUES (3, 1003, 'en', 'zh', 'TeamLang', '2025-04-20', '2025-04-25', 4000, 20.0, 'mkv', 'N', 'Wei', '2025-04-26', 'Pending final QC', 'InProgress', 'k1l2m3n4o5', 'Web', 'APAC', 2500.0, 'N', 0, '2025-04-27', 'Voiceover pending');

-- Table describing hospitality room service requests
CREATE TABLE hospitality_room_service_requests
(
    requestId            INTEGER PRIMARY KEY AUTOINCREMENT,
    reservationId        INTEGER,
    guestName            TEXT,
    roomNumber           TEXT,
    requestDate          DATE,
    requestTime          TEXT,
    serviceType          TEXT,
    itemDescription      TEXT,
    quantity             INTEGER,
    specialInstructions  TEXT,
    status               TEXT,
    assignedStaffId      INTEGER,
    completionDate       DATE,
    completionTime       TEXT,
    rating               INTEGER,
    feedbackComments     TEXT,
    costUSD              REAL,
    taxAmountUSD         REAL,
    totalAmountUSD       REAL,
    paymentMethod        TEXT,
    invoiceNumber        TEXT,
    notes                TEXT,
    lastUpdated          DATE
);
INSERT INTO hospitality_room_service_requests VALUES (1, 5001, 'John Doe', 'A101', '2025-06-01', '12:30', 'Food', 'Club Sandwich', 2, 'No mayo', 'Completed', 301, '2025-06-01', '12:45', 5, 'Excellent service', 15.0, 1.5, 16.5, 'CreditCard', 'INV1001', 'Delivered promptly', '2025-06-01');
INSERT INTO hospitality_room_service_requests VALUES (2, 5002, 'Jane Smith', 'B202', '2025-06-02', '09:15', 'Beverage', 'Espresso', 1, 'Extra hot', 'Completed', 302, '2025-06-02', '09:25', 4, 'Good', 3.0, 0.3, 3.3, 'Cash', 'INV1002', 'Served at desk', '2025-06-02');
INSERT INTO hospitality_room_service_requests VALUES (3, 5003, 'Mike Brown', 'C303', '2025-06-03', '20:00', 'Housekeeping', 'Extra Towels', 3, 'Folded', 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Awaiting staff assignment', '2025-06-03');

-- Table describing logs of security drone patrols
CREATE TABLE security_drone_patrol_logs
(
    patrolLogId          INTEGER PRIMARY KEY AUTOINCREMENT,
    droneId              INTEGER,
    operatorName         TEXT,
    patrolDate           DATE,
    startTime            TEXT,
    endTime              TEXT,
    flightDurationSec    INTEGER,
    areaCoveredSqM       REAL,
    incidentsDetected    INTEGER,
    videoFootageUrl      TEXT,
    batteryStartPct      INTEGER,
    batteryEndPct        INTEGER,
    maxAltitudeM         REAL,
    averageSpeedKph      REAL,
    weatherCondition    TEXT,
    notes                TEXT,
    status               TEXT,
    maintenanceDueDate   DATE,
    firmwareVersion      TEXT,
    lastUpdated          DATE,
    complianceCheck      TEXT,
    auditReviewer        TEXT
);
INSERT INTO security_drone_patrol_logs VALUES (1, 101, 'Alice', '2025-05-20', '22:00', '22:30', 1800, 25000.0, 0, 'http://drone.logs.com/vid101', 100, 80, 120.0, 45.0, 'Clear', 'No incidents', 'Completed', '2025-12-01', 'v2.1', '2025-05-21', 'Y', 'Bob');
INSERT INTO security_drone_patrol_logs VALUES (2, 102, 'Bob', '2025-05-21', '23:00', '23:45', 2700, 30000.0, 2, 'http://drone.logs.com/vid102', 100, 70, 130.0, 50.0, 'Windy', 'Detected perimeter breach', 'Completed', '2025-12-01', 'v2.1', '2025-05-22', 'Y', 'Carol');
INSERT INTO security_drone_patrol_logs VALUES (3, 103, 'Carol', '2025-05-22', '21:30', '22:15', 2700, 28000.0, 1, 'http://drone.logs.com/vid103', 100, 75, 125.0, 48.0, 'Rain', 'Suspicious vehicle observed', 'Completed', '2025-12-01', 'v2.1', '2025-05-23', 'Y', 'David');