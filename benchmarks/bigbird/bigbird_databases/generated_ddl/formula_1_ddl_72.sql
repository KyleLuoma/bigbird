-- Aerodrome Operations Table
CREATE TABLE aerodrome_operations (
    operationId INTEGER PRIMARY KEY AUTOINCREMENT,
    airportCode TEXT NOT NULL,
    runwayId TEXT,
    operationDate DATE NOT NULL,
    startTime TEXT,
    endTime TEXT,
    aircraftType TEXT,
    flightNumber TEXT,
    operator TEXT,
    purpose TEXT,
    weatherCondition TEXT,
    windSpeed REAL,
    visibility REAL,
    temperature REAL,
    humidity REAL,
    runwayStatus TEXT,
    groundCrewCount INTEGER,
    fuelDispensed REAL,
    cargoWeight REAL,
    passengerCount INTEGER,
    notes TEXT
);

INSERT INTO aerodrome_operations
    (airportCode, runwayId, operationDate, startTime, endTime, aircraftType, flightNumber, operator, purpose, weatherCondition, windSpeed, visibility, temperature, humidity, runwayStatus, groundCrewCount, fuelDispensed, cargoWeight, passengerCount, notes)
VALUES
    ('JFK','04L','2025-03-01','08:15','08:45','Boeing737','AA123','AmericanAirlines','Commercial','Clear',5.2,10.0,15.3,40,'Open',12,1200.5,8500.0,150,'On time departure'),
    ('LHR','09R','2025-03-02','14:00','14:30','AirbusA320','BA456','BritishAirways','Cargo','Cloudy',8.1,8.5,12.0,55,'Closed for maintenance',0,0,0,0,'Runway closed for inspections'),
    ('NRT','16L','2025-03-03','22:10','22:45','Boeing777','JL789','JapanAirlines','Commercial','Rain',12.3,5.0,18.5,70,'Open',15,2500.0,12000.0,200,'Delayed due to weather');

-- Satellite Imagery Metadata Table
CREATE TABLE satellite_imagery_metadata (
    imageId INTEGER PRIMARY KEY AUTOINCREMENT,
    satelliteName TEXT NOT NULL,
    captureDate DATE NOT NULL,
    captureTime TEXT,
    sensorType TEXT,
    resolution REAL,
    orbitNumber INTEGER,
    sunElevation REAL,
    cloudCover REAL,
    format TEXT,
    fileSize REAL,
    checksum TEXT,
    geographicRegion TEXT,
    northBound REAL,
    southBound REAL,
    eastBound REAL,
    westBound REAL,
    processingLevel TEXT,
    provider TEXT,
    usageRights TEXT,
    archivalLocation TEXT
);

INSERT INTO satellite_imagery_metadata
    (satelliteName, captureDate, captureTime, sensorType, resolution, orbitNumber, sunElevation, cloudCover, format, fileSize, checksum, geographicRegion, northBound, southBound, eastBound, westBound, processingLevel, provider, usageRights, archivalLocation)
VALUES
    ('Sentinel2','2025-04-10','10:45','Multispectral',10.0,1453,45.2,3.5,'GeoTIFF',2.4,'abc123def','Europe',55.0,45.0,10.0,0.0,'Level-2A','ESA','Open','/archive/2025/04/10/'),
    ('Landsat8','2025-04-11','11:20','Panchromatic',15.0,3021,50.1,0.0,'GeoTIFF',1.8,'def456ghi','NorthAmerica',49.0,38.0,-70.0,-80.0,'Level-1','USGS','Restricted','/archive/2025/04/11/'),
    ('WorldView3','2025-04-12','09:30','RGB',0.3,8765,60.0,12.0,'JPEG2000',0.9,'ghi789jkl','Asia',35.0,25.0,120.0,110.0,'Level-3','Maxar','Commercial','/archive/2025/04/12/');

-- Esports Participant Statistics Table
CREATE TABLE esports_participant_stats (
    participantId INTEGER PRIMARY KEY AUTOINCREMENT,
    gamerTag TEXT NOT NULL,
    gameTitle TEXT,
    teamName TEXT,
    country TEXT,
    age INTEGER,
    rank INTEGER,
    winRate REAL,
    averageScore REAL,
    matchesPlayed INTEGER,
    matchesWon INTEGER,
    matchesLost INTEGER,
    averageKDA REAL,
    preferredRole TEXT,
    streamingPlatform TEXT,
    followers INTEGER,
    sponsor TEXT,
    contractStart DATE,
    contractEnd DATE,
    lastActive DATE,
    notes TEXT
);

INSERT INTO esports_participant_stats
    (gamerTag, gameTitle, teamName, country, age, rank, winRate, averageScore, matchesPlayed, matchesWon, matchesLost, averageKDA, preferredRole, streamingPlatform, followers, sponsor, contractStart, contractEnd, lastActive, notes)
VALUES
    ('AceBlade','Valorant','TeamNova','USA',22,15,0.68,78.4,120,82,38,3.5,'Duelist','Twitch',45000,'HyperX','2024-01-01','2025-12-31','2025-03-28','Top fragger in season 3'),
    ('ShadowPixel','League of Legends','EagleEyes','KR',19,8,0.74,92.1,200,148,52,4.2,'Mid','YouTube',72000,'Nike','2023-06-15','2026-06-14','2025-03-27','MVP of Spring Split'),
    ('NovaStar','CS:GO','Firebolt','DE',24,23,0.61,65.7,85,52,33,2.9,'AWPer','TikTok',31000,'Razer','2024-09-10','2025-09-09','2025-03-26','Rising star in Europe');

-- Waste Recycling Facilities Table
CREATE TABLE waste_recycling_facilities (
    facilityId INTEGER PRIMARY KEY AUTOINCREMENT,
    facilityName TEXT NOT NULL,
    location TEXT,
    city TEXT,
    state TEXT,
    country TEXT,
    capacityTonnes REAL,
    currentLoadTonnes REAL,
    operationalSince DATE,
    managerName TEXT,
    contactNumber TEXT,
    email TEXT,
    recyclingTypes TEXT,
    hazardousMaterialHandling TEXT,
    wasteProcessingMethod TEXT,
    dailyThroughput INTEGER,
    staffCount INTEGER,
    energySource TEXT,
    complianceStatus TEXT,
    lastInspectionDate DATE,
    notes TEXT
);

INSERT INTO waste_recycling_facilities
    (facilityName, location, city, state, country, capacityTonnes, currentLoadTonnes, operationalSince, managerName, contactNumber, email, recyclingTypes, hazardousMaterialHandling, wasteProcessingMethod, dailyThroughput, staffCount, energySource, complianceStatus, lastInspectionDate, notes)
VALUES
    ('GreenCycle Plant','Industrial Zone','Chicago','IL','USA',5000.0,3200.5,'2015-04-20','Laura Smith','3125551234','l.smith@greencycle.com','Plastic,Metal,Glass','Yes','MechanicalSorting',1200,45,'Solar','Compliant','2025-02-15','Awarded best recycling facility 2023'),
    ('EcoRenew Center','Harbor Area','Rotterdam','South Holland','Netherlands',7500.0,6800.0,'2010-09-12','Pieter Janssen','0205556789','p.janssen@ecorenew.nl','Paper,Organic','No','Composting',1500,60,'Wind','Compliant','2025-01-30','Expansion project underway'),
    ('RecyclePlus Facility','East Side','Sydney','NSW','Australia',4000.0,2100.3,'2018-07-05','Emma Liu','0295559876','e.liu@recycleplus.au','Electronic,Metal','Yes','Shredding',900,30,'Grid','Pending','2024-12-20','Pending compliance renewal');

-- Medical Research Study Participants Table
CREATE TABLE medical_research_study_participants (
    participantId INTEGER PRIMARY KEY AUTOINCREMENT,
    studyId INTEGER NOT NULL,
    enrollmentDate DATE,
    gender TEXT,
    dob DATE,
    ethnicity TEXT,
    consentSigned INTEGER,
    healthStatus TEXT,
    baselineScore REAL,
    followUpScore REAL,
    adverseEvents TEXT,
    medicationList TEXT,
    investigatorName TEXT,
    siteLocation TEXT,
    contactPhone TEXT,
    email TEXT,
    randomizationGroup TEXT,
    outcomeMeasure TEXT,
    dataAccessLevel TEXT,
    notes TEXT
);

INSERT INTO medical_research_study_participants
    (studyId, enrollmentDate, gender, dob, ethnicity, consentSigned, healthStatus, baselineScore, followUpScore, adverseEvents, medicationList, investigatorName, siteLocation, contactPhone, email, randomizationGroup, outcomeMeasure, dataAccessLevel, notes)
VALUES
    (101,'2024-05-10','Female','1985-03-22','Hispanic',1,'Good',78.5,82.1,'None','Aspirin','Dr. Chen','Boston Medical Center','6175551111','jane.doe@example.com','Placebo','BloodPressure','Restricted','N/A'),
    (102,'2024-06-15','Male','1990-11-08','Asian',1,'Fair',65.2,70.4,'Mild Headache','Metformin','Dr. Patel','Seattle Health Institute','2065552222','john.smith@example.com','Treatment','Cholesterol','Open','Follow-up required'),
    (103,'2024-07-20','Other','1978-02-14','Caucasian',1,'Excellent',88.0,90.5,'None','None','Dr. Rossi','Chicago Research Lab','3125553333','alex.taylor@example.com','Treatment','BMI','Restricted','Completed study');

-- Renewable Energy Production Table
CREATE TABLE renewable_energy_production (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    plantId INTEGER NOT NULL,
    plantName TEXT,
    plantType TEXT,
    location TEXT,
    country TEXT,
    capacityMW REAL,
    actualGenerationMW REAL,
    generationDate DATE,
    startTime TEXT,
    endTime TEXT,
    fuelSource TEXT,
    carbonEmissionFactor REAL,
    operationalHours INTEGER,
    downtimeMinutes INTEGER,
    maintenanceFlag INTEGER,
    gridConnectionStatus TEXT,
    revenueUSD REAL,
    costUSD REAL,
    netProfitUSD REAL,
    notes TEXT
);

INSERT INTO renewable_energy_production
    (plantId, plantName, plantType, location, country, capacityMW, actualGenerationMW, generationDate, startTime, endTime, fuelSource, carbonEmissionFactor, operationalHours, downtimeMinutes, maintenanceFlag, gridConnectionStatus, revenueUSD, costUSD, netProfitUSD, notes)
VALUES
    (201,'Sunshine PV Farm','Solar','Arizona','USA',150.0,140.5,'2025-03-15','06:00','18:00','Solar',0.0,12,30,0,'Connected',2100000,500000,1600000,'Peak summer production'),
    (202,'Windy Ridge','Wind','Gansu','China',300.0,285.3,'2025-03-15','00:00','23:59','Wind',0.0,24,45,1,'Connected',4500000,800000,3700000,'Scheduled turbine maintenance'),
    (203,'HydroFlow','Hydro','Alberta','Canada',200.0,190.2,'2025-03-15','05:00','23:00','Hydro',0.0,18,15,0,'Connected',3100000,600000,2500000,'Snow melt season');

-- Logistics Container Inventory Table
CREATE TABLE logistics_container_inventory (
    containerId INTEGER PRIMARY KEY AUTOINCREMENT,
    containerNumber TEXT NOT NULL,
    sizeTEU INTEGER,
    type TEXT,
    status TEXT,
    currentLocation TEXT,
    arrivalDate DATE,
    departureDate DATE,
    contentsDescription TEXT,
    weightKG REAL,
    volumeM3 REAL,
    ownerCompany TEXT,
    consignee TEXT,
    carrier TEXT,
    sealNumber TEXT,
    lastInspectionDate DATE,
    temperatureControlled INTEGER,
    humidityControlled INTEGER,
    specialHandling TEXT,
    notes TEXT
);

INSERT INTO logistics_container_inventory
    (containerNumber, sizeTEU, type, status, currentLocation, arrivalDate, departureDate, contentsDescription, weightKG, volumeM3, ownerCompany, consignee, carrier, sealNumber, lastInspectionDate, temperatureControlled, humidityControlled, specialHandling, notes)
VALUES
    ('CONT0012345',40,'Dry','InTransit','Port of Rotterdam','2025-02-20','2025-03-02','Electronics,Consumer Goods',12000.5,68.3,'GlobalTrade Ltd','AutoParts Inc','Maersk','SEAL123', '2025-02-18',0,0,'None','Standard shipment'),
    ('CONT0098765',20,'Reefer','Stored','Los Angeles Warehouse','2025-02-25','2025-03-10','Fresh Produce,Pharmaceuticals',8000.0,45.0,'FreshFoods Co','HealthPharma','CMA CGM','SEAL987', '2025-02-24',1,1,'ColdChain','Perishable goods'),
    ('CONT0054321',45,'OpenTop','Delivered','Sydney Port','2025-01-15','2025-01-30','Construction Materials,Steel',25000.0,150.0,'BuildIt Corp','UrbanConstruct','Hapag-Lloyd','SEAL555', '2025-01-14',0,0,'Oversized','Completed delivery');

-- Broadcast Social Media Engagement Table
CREATE TABLE broadcast_social_media_engagement (
    postId INTEGER PRIMARY KEY AUTOINCREMENT,
    platform TEXT NOT NULL,
    broadcastId INTEGER,
    postDate DATE,
    postTime TEXT,
    contentType TEXT,
    videoLengthSec INTEGER,
    viewCount INTEGER,
    likeCount INTEGER,
    shareCount INTEGER,
    commentCount INTEGER,
    reach INTEGER,
    audienceDemographic TEXT,
    sponsorTag TEXT,
    adSpendUSD REAL,
    clickThroughRate REAL,
    conversionRate REAL,
    sentimentScore REAL,
    tags TEXT,
    notes TEXT
);

INSERT INTO broadcast_social_media_engagement
    (platform, broadcastId, postDate, postTime, contentType, videoLengthSec, viewCount, likeCount, shareCount, commentCount, reach, audienceDemographic, sponsorTag, adSpendUSD, clickThroughRate, conversionRate, sentimentScore, tags, notes)
VALUES
    ('Twitter',1,'2025-03-01','09:30','Highlight','120',15000,3400,500,120,20000,'18-34','BrandX',2000.0,0.025,0.004,0.78,'#GP2025 #Racing','High engagement post'),
    ('Facebook',2,'2025-03-02','14:00','Interview','300',8000,2100,300,80,12000,'35-54','BrandY',1500.0,0.018,0.003,0.72,'#DriverTalk','Positive sentiment'),
    ('Instagram',3,'2025-03-03','18:45','BehindTheScenes','60',22000,5600,800,200,35000,'12-24','BrandZ',2500.0,0.030,0.005,0.85,'#PitLane','Viral short clip');

-- Trackside Advertising Sales Table
CREATE TABLE trackside_advertising_sales (
    adSlotId INTEGER PRIMARY KEY AUTOINCREMENT,
    trackId INTEGER NOT NULL,
    locationDescription TEXT,
    vendorName TEXT,
    contractStart DATE,
    contractEnd DATE,
    priceUSD REAL,
    impressionsEstimated INTEGER,
    impressionsDelivered INTEGER,
    adType TEXT,
    durationSec INTEGER,
    materialFormat TEXT,
    approvalStatus TEXT,
    creativeAgency TEXT,
    paymentStatus TEXT,
    renewalOption INTEGER,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    createdBy TEXT,
    updatedBy TEXT
);

INSERT INTO trackside_advertising_sales
    (trackId, locationDescription, vendorName, contractStart, contractEnd, priceUSD, impressionsEstimated, impressionsDelivered, adType, durationSec, materialFormat, approvalStatus, creativeAgency, paymentStatus, renewalOption, notes, createdAt, updatedAt, createdBy, updatedBy)
VALUES
    (1,'Turn 1 - Right Curve','SpeedAds Ltd','2024-01-01','2024-12-31',50000,2000000,1950000,'Billboard','30','Vinyl','Approved','CreativeX','Paid',1,'Prime location at start/final lap','2024-01-01','2024-06-01','admin','admin'),
    (2,'Back Straight','TurboMedia','2024-03-15','2025-03-14',75000,3500000,3450000,'LED Screen','15','Digital','Pending','AdWorks','Pending',0,'High visibility during high-speed section','2024-03-15','2024-07-20','marketing','marketing'),
    (3,'Pit Lane Entrance','GearShift Promotions','2024-05-10','2025-05-09',30000,1200000,1180000,'Banner','20','Fabric','Approved','DesignHub','Paid',1,'Targeted at pit crew and staff','2024-05-10','2024-08-15','sales','sales');

-- Fan Virtual Experience Metrics Table
CREATE TABLE fan_virtual_experience_metrics (
    sessionId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER NOT NULL,
    experienceType TEXT,
    startTime TEXT,
    endTime TEXT,
    deviceType TEXT,
    platform TEXT,
    durationSec INTEGER,
    engagementScore REAL,
    itemsCollected INTEGER,
    achievementsUnlocked INTEGER,
    feedbackRating INTEGER,
    comments TEXT,
    location TEXT,
    networkLatencyMs INTEGER,
    frameRateFPS REAL,
    resolution TEXT,
    version TEXT,
    ipAddress TEXT,
    sessionDate DATE
);

INSERT INTO fan_virtual_experience_metrics
    (fanId, experienceType, startTime, endTime, deviceType, platform, durationSec, engagementScore, itemsCollected, achievementsUnlocked, feedbackRating, comments, location, networkLatencyMs, frameRateFPS, resolution, version, ipAddress, sessionDate)
VALUES
    (1001,'VR Race Replay','10:00','10:30','OculusQuest','VRApp',1800,87.5,12,3,5,'Very immersive','NewYork,USA',45,90.0,'1920x1080','1.2.0','192.168.1.10','2025-03-01'),
    (1002,'AR Track Tour','14:15','14:45','iPhone','ARApp',1800,78.2,8,2,4,'Great view of the paddock','London,UK',30,60.0,'1280x720','1.1.5','203.0.113.5','2025-03-02'),
    (1003,'3D Replay','18:20','18:50','PC','DesktopApp',1800,81.0,10,4,5,'Smooth experience','Sydney,AU',25,75.0,'2560x1440','2.0.0','10.0.0.5','2025-03-03');