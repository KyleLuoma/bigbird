-- Environmental Monitoring Stations
CREATE TABLE environmental_monitoring_stations
(
    stationId               INTEGER PRIMARY KEY AUTOINCREMENT,
    stationCode             TEXT NOT NULL,
    name                    TEXT,
    location                TEXT,
    latitude                REAL,
    longitude               REAL,
    altitude                INTEGER,
    installedDate           DATE,
    sensorTypes             TEXT,
    reportingFrequency      INTEGER,            -- minutes
    batteryStatus           TEXT,
    maintenanceDueDate      DATE,
    dataEndpointURL         TEXT,
    operatorName            TEXT,
    contactPhone            TEXT,
    calibrationDate         DATE,
    firmwareVersion         TEXT,
    dataRetentionPeriod     INTEGER,            -- days
    isActive                INTEGER,            -- 0/1
    notes                   TEXT
);

INSERT INTO environmental_monitoring_stations
(stationCode, name, location, latitude, longitude, altitude, installedDate, sensorTypes,
 reportingFrequency, batteryStatus, maintenanceDueDate, dataEndpointURL, operatorName,
 contactPhone, calibrationDate, firmwareVersion, dataRetentionPeriod, isActive, notes)
VALUES
('EM01', 'North Ridge', 'North Valley', 45.1234, -122.5678, 150, '2022-03-15', 'Temp,Humidity,Wind',
 15, 'Good', '2023-09-10', 'http://data.example.com/em01', 'EnviroTech',
 '5551234567', '2022-03-15', 'v1.2', 365, 1, 'Primary station for north region');

INSERT INTO environmental_monitoring_stations
(stationCode, name, location, latitude, longitude, altitude, installedDate, sensorTypes,
 reportingFrequency, batteryStatus, maintenanceDueDate, dataEndpointURL, operatorName,
 contactPhone, calibrationDate, firmwareVersion, dataRetentionPeriod, isActive, notes)
VALUES
('EM02', 'South Plains', 'South Plains', 44.9876, -122.3456, 120, '2022-06-20', 'Temp,Precipitation',
 30, 'Fair', '2023-12-01', 'http://data.example.com/em02', 'GreenEnv',
 '5559876543', '2022-06-20', 'v1.3', 365, 1, 'Covers southern sector');

INSERT INTO environmental_monitoring_stations
(stationCode, name, location, latitude, longitude, altitude, installedDate, sensorTypes,
 reportingFrequency, batteryStatus, maintenanceDueDate, dataEndpointURL, operatorName,
 contactPhone, calibrationDate, firmwareVersion, dataRetentionPeriod, isActive, notes)
VALUES
('EM03', 'East Ridge', 'East Hills', 45.5555, -122.1111, 180, '2023-01-10', 'Wind,Pressure',
 10, 'Excellent', '2024-01-10', 'http://data.example.com/em03', 'AtmosCo',
 '5552223333', '2023-01-10', 'v2.0', 365, 1, 'High wind monitoring');


-- Sponsor Campaigns
CREATE TABLE sponsor_campaigns
(
    campaignId              INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId               INTEGER,
    campaignName            TEXT,
    startDate               DATE,
    endDate                 DATE,
    budget                  REAL,
    targetAudience          TEXT,
    channel                 TEXT,
    impressions             INTEGER,
    clicks                  INTEGER,
    conversions             INTEGER,
    cpm                     REAL,
    cpc                     REAL,
    creativeType            TEXT,
    geographicScope         TEXT,
    language                TEXT,
    platform                TEXT,
    status                  TEXT,
    metricsUrl              TEXT,
    notes                   TEXT,
    complianceFlag          INTEGER          -- 0/1
);

INSERT INTO sponsor_campaigns
(sponsorId, campaignName, startDate, endDate, budget, targetAudience, channel,
 impressions, clicks, conversions, cpm, cpc, creativeType, geographicScope,
 language, platform, status, metricsUrl, notes, complianceFlag)
VALUES
(10, 'SpeedBoost Summer', '2023-06-01', '2023-08-31', 250000.00, 'YoungAdults', 'SocialMedia',
 5000000, 120000, 8500, 50.00, 2.08, 'Video', 'Global', 'English', 'Instagram', 'Active',
 'http://metrics.example.com/cb01', 'High engagement summer drive', 1);

INSERT INTO sponsor_campaigns
(sponsorId, campaignName, startDate, endDate, budget, targetAudience, channel,
 impressions, clicks, conversions, cpm, cpc, creativeType, geographicScope,
 language, platform, status, metricsUrl, notes, complianceFlag)
VALUES
(12, 'EcoRace Winter', '2023-12-01', '2024-02-28', 180000.00, 'EcoConscious', 'DisplayAds',
 3000000, 75000, 4200, 60.00, 2.40, 'Banner', 'NorthAmerica', 'English', 'GoogleAds',
 'Completed', 'http://metrics.example.com/cb02', 'Focused on sustainability', 1);

INSERT INTO sponsor_campaigns
(sponsorId, campaignName, startDate, endDate, budget, targetAudience, channel,
 impressions, clicks, conversions, cpm, cpc, creativeType, geographicScope,
 language, platform, status, metricsUrl, notes, complianceFlag)
VALUES
(15, 'TurboTech Launch', '2024-03-15', '2024-06-15', 320000.00, 'TechEnthusiasts', 'Email',
 2000000, 98000, 11000, 160.00, 3.27, 'Newsletter', 'Europe', 'English', 'MailChimp',
 'Active', 'http://metrics.example.com/cb03', 'New product introduction', 1);


-- Fan Experience Zones
CREATE TABLE fan_experience_zones
(
    zoneId                  INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId                 INTEGER,
    zoneName                TEXT,
    areaSqM                 REAL,
    capacity                INTEGER,
    theme                   TEXT,
    interactiveFeatures     TEXT,
    primaryAttraction       TEXT,
    openingHours            TEXT,
    accessibilityFeatures   TEXT,
    safetyProtocol          TEXT,
    staffCount              INTEGER,
    maintenanceSchedule     TEXT,
    wifiAvailable           INTEGER,   -- 0/1
    powerOutlets            INTEGER,
    cateringAvailable       INTEGER,   -- 0/1
    ticketingRequired      INTEGER,   -- 0/1
    sponsorId               INTEGER,
    activationStartDate     DATE,
    activationEndDate       DATE,
    notes                   TEXT
);

INSERT INTO fan_experience_zones
(venueId, zoneName, areaSqM, capacity, theme, interactiveFeatures,
 primaryAttraction, openingHours, accessibilityFeatures, safetyProtocol,
 staffCount, maintenanceSchedule, wifiAvailable, powerOutlets,
 cateringAvailable, ticketingRequired, sponsorId, activationStartDate,
 activationEndDate, notes)
VALUES
(1, 'Pit Lane Play', 1500.5, 5000, 'Motorsport', 'VRSim,RacingSimulators',
 'Pit Crew Challenge', '08:00-22:00', 'Ramp,Elevator', 'FireExtinguishers,FirstAid',
 25, 'Monthly', 1, 120, 1, 0, 7, '2024-04-01', '2024-10-31',
 'High‑energy interactive zone');

INSERT INTO fan_experience_zones
(venueId, zoneName, areaSqM, capacity, theme, interactiveFeatures,
 primaryAttraction, openingHours, accessibilityFeatures, safetyProtocol,
 staffCount, maintenanceSchedule, wifiAvailable, powerOutlets,
 cateringAvailable, ticketingRequired, sponsorId, activationStartDate,
 activationEndDate, notes)
VALUES
(2, 'Heritage Plaza', 2000, 3000, 'History', 'ARExhibits,Storytelling',
 'Classic Car Parade', '09:00-20:00', 'WideAisles,SignLanguage',
 'SecurityCameras,Patrols', 18, 'Quarterly', 1, 80, 0, 1, 12,
 '2024-05-15', '2025-05-14', 'Celebrates circuit legacy');

INSERT INTO fan_experience_zones
(venueId, zoneName, areaSqM, capacity, theme, interactiveFeatures,
 primaryAttraction, openingHours, accessibilityFeatures, safetyProtocol,
 staffCount, maintenanceSchedule, wifiAvailable, powerOutlets,
 cateringAvailable, ticketingRequired, sponsorId, activationStartDate,
 activationEndDate, notes)
VALUES
(3, 'Eco Zone', 1200, 2000, 'Sustainability', 'RenewableDemo,Workshops',
 'Solar Car Showcase', '10:00-18:00', 'WheelchairAccess,BrailleSigns',
 'FirstAidStations,EvacuationPlan', 12, 'BiMonthly', 1, 60, 1, 0, 9,
 '2024-06-01', '2024-12-31', 'Focus on green technologies');


-- Broadcast Media Assets
CREATE TABLE broadcast_media_assets
(
    assetId                 INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId                  INTEGER,
    assetType               TEXT,
    fileName                TEXT,
    fileFormat              TEXT,
    resolution              TEXT,
    durationSeconds         INTEGER,
    fileSizeMB              REAL,
    producedBy              TEXT,
    productionDate          DATE,
    language                TEXT,
    subtitlesAvailable      INTEGER,   -- 0/1
    rightsHolder            TEXT,
    licenseStart            DATE,
    licenseEnd              DATE,
    streamingUrl            TEXT,
    compressionCodec        TEXT,
    checksum                TEXT,
    isPublic                INTEGER,   -- 0/1
    notes                   TEXT,
    archived                INTEGER    -- 0/1
);

INSERT INTO broadcast_media_assets
(raceId, assetType, fileName, fileFormat, resolution, durationSeconds,
 fileSizeMB, producedBy, productionDate, language, subtitlesAvailable,
 rightsHolder, licenseStart, licenseEnd, streamingUrl, compressionCodec,
 checksum, isPublic, notes, archived)
VALUES
(101, 'Highlight', 'race101_highlights.mp4', 'MP4', '1920x1080', 420,
 1500.75, 'MediaWorks', '2023-07-15', 'English', 1,
 'F1TV', '2023-07-01', '2024-07-01',
 'http://stream.example.com/race101', 'H.264', 'abc123def', 1,
 'Post‑race highlights', 0);

INSERT INTO broadcast_media_assets
(raceId, assetType, fileName, fileFormat, resolution, durationSeconds,
 fileSizeMB, producedBy, productionDate, language, subtitlesAvailable,
 rightsHolder, licenseStart, licenseEnd, streamingUrl, compressionCodec,
 checksum, isPublic, notes, archived)
VALUES
(102, 'FullRace', 'race102_full.mkv', 'MKV', '3840x2160', 7200,
 12000.00, 'GrandBroadcast', '2023-08-20', 'English', 1,
 'F1TV', '2023-08-01', '2025-08-01',
 'http://stream.example.com/race102', 'HEVC', 'def456ghi', 0,
 'Full race in 4K', 0);

INSERT INTO broadcast_media_assets
(raceId, assetType, fileName, fileFormat, resolution, durationSeconds,
 fileSizeMB, producedBy, productionDate, language, subtitlesAvailable,
 rightsHolder, licenseStart, licenseEnd, streamingUrl, compressionCodec,
 checksum, isPublic, notes, archived)
VALUES
(103, 'Interview', 'driver_interview_103.wav', 'WAV', 'N/A', 600,
 55.20, 'StudioOne', '2023-09-05', 'English', 0,
 'F1TV', '2023-09-01', '2024-09-01',
 'http://audio.example.com/interview103', 'PCM', 'ghi789jkl', 1,
 'Pre‑race driver interview', 0);


-- Logistics Vehicle Registry
CREATE TABLE logistics_vehicle_registry
(
    vehicleId               INTEGER PRIMARY KEY AUTOINCREMENT,
    registrationNumber      TEXT,
    vehicleType             TEXT,
    make                    TEXT,
    model                   TEXT,
    year                    INTEGER,
    capacityKg              INTEGER,
    fuelType                TEXT,
    mileage                 INTEGER,
    lastServiceDate         DATE,
    nextServiceDue          DATE,
    assignedTeamId          INTEGER,
    insurancePolicyNumber   TEXT,
    insuranceExpiry         DATE,
    gpsEnabled              INTEGER,   -- 0/1
    telematicsInstalled     INTEGER,   -- 0/1
    status                  TEXT,
    location                TEXT,
    notes                   TEXT,
    decommissionDate        DATE
);

INSERT INTO logistics_vehicle_registry
(registrationNumber, vehicleType, make, model, year, capacityKg, fuelType,
 mileage, lastServiceDate, nextServiceDue, assignedTeamId,
 insurancePolicyNumber, insuranceExpiry, gpsEnabled, telematicsInstalled,
 status, location, notes, decommissionDate)
VALUES
('VAN001', 'Van', 'Ford', 'Transit', 2020, 1500, 'Diesel',
 48000, '2023-06-01', '2023-12-01', 3,
 'POL123456', '2024-06-30', 1, 1, 'Active', 'Garage A',
 'Primary transport for equipment', NULL);

INSERT INTO logistics_vehicle_registry
(registrationNumber, vehicleType, make, model, year, capacityKg, fuelType,
 mileage, lastServiceDate, nextServiceDue, assignedTeamId,
 insurancePolicyNumber, insuranceExpiry, gpsEnabled, telematicsInstalled,
 status, location, notes, decommissionDate)
VALUES
('TRK002', 'Truck', 'Volvo', 'FH16', 2019, 20000, 'Diesel',
 95000, '2023-04-15', '2024-04-15', 5,
 'POL654321', '2025-04-30', 1, 1, 'InService', 'Depot B',
 'Heavy load for pit equipment', NULL);

INSERT INTO logistics_vehicle_registry
(registrationNumber, vehicleType, make, model, year, capacityKg, fuelType,
 mileage, lastServiceDate, nextServiceDue, assignedTeamId,
 insurancePolicyNumber, insuranceExpiry, gpsEnabled, telematicsInstalled,
 status, location, notes, decommissionDate)
VALUES
('CAR003', 'Car', 'Toyota', 'Corolla', 2022, 450, 'Petrol',
 15000, '2023-08-20', '2024-08-20', 2,
 'POL789012', '2024-12-31', 1, 0, 'Active', 'Lot C',
 'Driver shuttle', NULL);


-- Venue Security Patrols
CREATE TABLE venue_security_patrols
(
    patrolId                INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId                 INTEGER,
    patrolTeam              TEXT,
    startTime               TEXT,
    endTime                 TEXT,
    routeDescription        TEXT,
    numberOfOfficers        INTEGER,
    equipmentList           TEXT,
    incidentsReported       INTEGER,
    observations            TEXT,
    weatherConditions       TEXT,
    shiftSupervisor         TEXT,
    patrolFrequency         INTEGER,   -- minutes between patrols
    isActive                INTEGER,   -- 0/1
    lastModified            DATE,
    notes                   TEXT,
    gpsTrackUrl             TEXT,
    patrolType              TEXT,
    contactNumber           TEXT,
    complianceScore         REAL
);

INSERT INTO venue_security_patrols
(venueId, patrolTeam, startTime, endTime, routeDescription,
 numberOfOfficers, equipmentList, incidentsReported, observations,
 weatherConditions, shiftSupervisor, patrolFrequency, isActive,
 lastModified, notes, gpsTrackUrl, patrolType, contactNumber,
 complianceScore)
VALUES
(1, 'Alpha', '08:00', '12:00', 'North Gate to Pit Lane',
 4, 'Radio,Flashlight,FirstAid', 0, 'All clear',
 'Sunny', 'John Smith', 30, 1,
 '2024-04-01', 'Morning patrol', 'http://gps.example.com/patrol1',
 'Foot', '5551112222', 98.5);

INSERT INTO venue_security_patrols
(venueId, patrolTeam, startTime, endTime, routeDescription,
 numberOfOfficers, equipmentList, incidentsReported, observations,
 weatherConditions, shiftSupervisor, patrolFrequency, isActive,
 lastModified, notes, gpsTrackUrl, patrolType, contactNumber,
 complianceScore)
VALUES
(2, 'Bravo', '14:00', '18:00', 'Grandstand perimeter',
 5, 'Radio,TwoWayWalkie', 1, 'Minor crowding near Gate 3',
 'Cloudy', 'Emily Davis', 45, 1,
 '2024-04-02', 'Afternoon patrol', 'http://gps.example.com/patrol2',
 'Vehicle', '5553334444', 92.0);

INSERT INTO venue_security_patrols
(venueId, patrolTeam, startTime, endTime, routeDescription,
 numberOfOfficers, equipmentList, incidentsReported, observations,
 weatherConditions, shiftSupervisor, patrolFrequency, isActive,
 lastModified, notes, gpsTrackUrl, patrolType, contactNumber,
 complianceScore)
VALUES
(3, 'Charlie', '20:00', '23:00', 'Parking lot and exit routes',
 3, 'Radio,Flashlight', 0, 'No issues',
 'ClearNight', 'Mike Lee', 60, 1,
 '2024-04-03', 'Evening patrol', 'http://gps.example.com/patrol3',
 'Foot', '5555556666', 95.3);


-- Circuit Maintenance Schedule
CREATE TABLE circuit_maintenance_schedule
(
    scheduleId              INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId               INTEGER,
    maintenanceType         TEXT,
    description             TEXT,
    scheduledStart          DATE,
    scheduledEnd            DATE,
    estimatedHours          INTEGER,
    crewLead                TEXT,
    crewMembers             INTEGER,
    requiredEquipment       TEXT,
    safetyMeasures          TEXT,
    status                  TEXT,
    priority                INTEGER,
    costEstimate            REAL,
    actualStart             DATE,
    actualEnd               DATE,
    downtimeMinutes         INTEGER,
    remarks                 TEXT,
    approvalOfficer         TEXT,
    isRecurring             INTEGER,   -- 0/1
    recurrencePattern       TEXT
);

INSERT INTO circuit_maintenance_schedule
(circuitId, maintenanceType, description, scheduledStart, scheduledEnd,
 estimatedHours, crewLead, crewMembers, requiredEquipment,
 safetyMeasures, status, priority, costEstimate, actualStart,
 actualEnd, downtimeMinutes, remarks, approvalOfficer,
 isRecurring, recurrencePattern)
VALUES
(1, 'Track resurfacing', 'Full asphalt replacement', '2024-07-01', '2024-07-21',
 320, 'Alice Johnson', 12, 'Paver,Roller,Compactor',
 'Dust suppression, PPE', 'Planned', 1, 500000.00, NULL, NULL,
 0, 'Critical for upcoming season', 'Robert King', 0, NULL);

INSERT INTO circuit_maintenance_schedule
(circuitId, maintenanceType, description, scheduledStart, scheduledEnd,
 estimatedHours, crewLead, crewMembers, requiredEquipment,
 safetyMeasures, status, priority, costEstimate, actualStart,
 actualEnd, downtimeMinutes, remarks, approvalOfficer,
 isRecurring, recurrencePattern)
VALUES
(2, 'Safety fence inspection', 'Check and repair barrier sections', '2024-05-10', '2024-05-12',
 48, 'Brian Lee', 6, 'Inspection tools, Replacement panels',
 'Lockout/tagout, Spotters', 'InProgress', 2, 75000.00, '2024-05-10', NULL,
 30, 'Minor repairs needed', 'Linda Patel', 1, 'Annual');

INSERT INTO circuit_maintenance_schedule
(circuitId, maintenanceType, description, scheduledStart, scheduledEnd,
 estimatedHours, crewLead, crewMembers, requiredEquipment,
 safetyMeasures, status, priority, costEstimate, actualStart,
 actualEnd, downtimeMinutes, remarks, approvalOfficer,
 isRecurring, recurrencePattern)
VALUES
(3, 'Lighting upgrade', 'LED conversion for pit lane lights', '2024-09-01', '2024-09-10',
 80, 'Carlos Mendes', 8, 'Ladders, Electric tools, LED units',
 'Electrical isolation, Fire extinguishers', 'Planned', 3, 120000.00, NULL, NULL,
 0, 'Energy saving initiative', 'Sophie Turner', 0, NULL);


-- Hospitality Service Packages
CREATE TABLE hospitality_service_packages
(
    packageId               INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId                 INTEGER,
    packageName             TEXT,
    price                   REAL,
    includedMeals           INTEGER,
    complimentaryDrinks     INTEGER,
    loungeAccess            INTEGER,   -- 0/1
    vipParking              INTEGER,   -- 0/1
    privateSuite            INTEGER,   -- 0/1
    cateringPartner         TEXT,
    menuDescription         TEXT,
    startDate               DATE,
    endDate                 DATE,
    maxGuests               INTEGER,
    reservationRequired     INTEGER,   -- 0/1
    contactEmail            TEXT,
    contactPhone            TEXT,
    cancellationPolicy      TEXT,
    notes                   TEXT,
    isActive                INTEGER,   -- 0/1
    bookingPlatform         TEXT
);

INSERT INTO hospitality_service_packages
(venueId, packageName, price, includedMeals, complimentaryDrinks,
 loungeAccess, vipParking, privateSuite, cateringPartner, menuDescription,
 startDate, endDate, maxGuests, reservationRequired, contactEmail,
 contactPhone, cancellationPolicy, notes, isActive, bookingPlatform)
VALUES
(1, 'Gold Experience', 2500.00, 3, 5, 1, 1, 1, 'GourmetCo',
 'Three‑course menu with premium wines', '2024-04-01', '2024-10-31',
 50, 1, 'gold@hospitality.com', '5557778888',
 'Full refund up to 30 days before event', 'Top tier package', 1,
 'HospitalityPortal');

INSERT INTO hospitality_service_packages
(venueId, packageName, price, includedMeals, complimentaryDrinks,
 loungeAccess, vipParking, privateSuite, cateringPartner, menuDescription,
 startDate, endDate, maxGuests, reservationRequired, contactEmail,
 contactPhone, cancellationPolicy, notes, isActive, bookingPlatform)
VALUES
(2, 'Silver Suite', 1500.00, 2, 3, 1, 0, 0, 'TasteBuds',
 'Two‑course menu with selection of soft drinks', '2024-05-01', '2024-09-30',
 30, 1, 'silver@hospitality.com', '5559990000',
 'Partial refund up to 14 days before event', 'Mid tier offering', 1,
 'VenueDirect');

INSERT INTO hospitality_service_packages
(venueId, packageName, price, includedMeals, complimentaryDrinks,
 loungeAccess, vipParking, privateSuite, cateringPartner, menuDescription,
 startDate, endDate, maxGuests, reservationRequired, contactEmail,
 contactPhone, cancellationPolicy, notes, isActive, bookingPlatform)
VALUES
(3, 'Bronze Access', 800.00, 1, 1, 0, 0, 0, 'FastFoodInc',
 'Single meal voucher', '2024-06-01', '2024-12-31',
 100, 0, 'bronze@hospitality.com', '5551112222',
 'No refunds', 'Entry level package', 1,
 'QuickBook');


-- Digital Marketing Metrics
CREATE TABLE digital_marketing_metrics
(
    metricId                INTEGER PRIMARY KEY AUTOINCREMENT,
    campaignId              INTEGER,
    platform                TEXT,
    impressions             INTEGER,
    clicks                  INTEGER,
    spend                   REAL,
    cpm                     REAL,
    cpc                     REAL,
    ctr                     REAL,
    conversionRate          REAL,
    revenueGenerated        REAL,
    date                    DATE,
    audienceSegment         TEXT,
    adFormat                TEXT,
    deviceType              TEXT,
    geographicRegion        TEXT,
    language                TEXT,
    viewThroughConversions  INTEGER,
    postClickConversions    INTEGER,
    qualityScore            REAL,
    notes                   TEXT
);

INSERT INTO digital_marketing_metrics
(campaignId, platform, impressions, clicks, spend, cpm, cpc, ctr,
 conversionRate, revenueGenerated, date, audienceSegment,
 adFormat, deviceType, geographicRegion, language,
 viewThroughConversions, postClickConversions, qualityScore, notes)
VALUES
(10, 'Instagram', 5000000, 120000, 250000.00, 50.00, 2.08, 2.40,
 1.50, 450000.00, '2023-07-15', 'YoungAdults', 'Video', 'Mobile',
 'NorthAmerica', 'English', 3000, 8500, 85.5, 'Strong summer push');

INSERT INTO digital_marketing_metrics
(campaignId, platform, impressions, clicks, spend, cpm, cpc, ctr,
 conversionRate, revenueGenerated, date, audienceSegment,
 adFormat, deviceType, geographicRegion, language,
 viewThroughConversions, postClickConversions, qualityScore, notes)
VALUES
(12, 'GoogleAds', 3000000, 75000, 180000.00, 60.00, 2.40, 2.50,
 1.20, 220000.00, '2023-12-10', 'EcoConscious', 'Banner', 'Desktop',
 'Europe', 'English', 2000, 4200, 78.0, 'Eco campaign final phase');

INSERT INTO digital_marketing_metrics
(campaignId, platform, impressions, clicks, spend, cpm, cpc, ctr,
 conversionRate, revenueGenerated, date, audienceSegment,
 adFormat, deviceType, geographicRegion, language,
 viewThroughConversions, postClickConversions, qualityScore, notes)
VALUES
(15, 'Twitter', 2000000, 98000, 130000.00, 65.00, 1.33, 4.90,
 2.80, 340000.00, '2024-03-20', 'TechEnthusiasts', 'Carousel', 'Mobile',
 'Asia', 'English', 2500, 11000, 82.3, 'Tech product launch');


-- Renewable Energy Installations
CREATE TABLE renewable_energy_installations
(
    installationId          INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId                 INTEGER,
    energyType              TEXT,
    capacityMW              REAL,
    installationDate        DATE,
    provider                TEXT,
    operatingStatus         TEXT,
    maintenanceCycleMonths INTEGER,
    lastInspectionDate      DATE,
    nextInspectionDate      DATE,
    avgOutputMW             REAL,
    carbonOffsetTonnes      REAL,
    gridConnectionPoint     TEXT,
    latitude                REAL,
    longitude               REAL,
    altitude                INTEGER,
    fundingSource           TEXT,
    contractDurationYears   INTEGER,
    warrantyEndDate         DATE,
    notes                   TEXT,
    isActive                INTEGER   -- 0/1
);

INSERT INTO renewable_energy_installations
(venueId, energyType, capacityMW, installationDate, provider,
 operatingStatus, maintenanceCycleMonths, lastInspectionDate,
 nextInspectionDate, avgOutputMW, carbonOffsetTonnes,
 gridConnectionPoint, latitude, longitude, altitude,
 fundingSource, contractDurationYears, warrantyEndDate,
 notes, isActive)
VALUES
(1, 'Solar', 5.0, '2022-04-15', 'SunPower',
 'Operational', 12, '2023-04-10', '2023-10-10',
 4.2, 1200.5, 'GridNodeA', 45.1234, -122.5678, 250,
 'PrivateInvestment', 20, '2042-04-15',
 'Primary solar array for venue', 1);

INSERT INTO renewable_energy_installations
(venueId, energyType, capacityMW, installationDate, provider,
 operatingStatus, maintenanceCycleMonths, lastInspectionDate,
 nextInspectionDate, avgOutputMW, carbonOffsetTonnes,
 gridConnectionPoint, latitude, longitude, altitude,
 fundingSource, contractDurationYears, warrantyEndDate,
 notes, isActive)
VALUES
(2, 'Wind', 3.5, '2021-09-01', 'WindGen',
 'Operational', 6, '2023-03-01', '2023-09-01',
 3.0, 950.0, 'GridNodeB', 44.9876, -122.3456, 180,
 'GovernmentGrant', 15, '2036-09-01',
 'Wind turbines on eastern hill', 1);

INSERT INTO renewable_energy_installations
(venueId, energyType, capacityMW, installationDate, provider,
 operatingStatus, maintenanceCycleMonths, lastInspectionDate,
 nextInspectionDate, avgOutputMW, carbonOffsetTonnes,
 gridConnectionPoint, latitude, longitude, altitude,
 fundingSource, contractDurationYears, warrantyEndDate,
 notes, isActive)
VALUES
(3, 'BatteryStorage', 2.0, '2023-01-20', 'EnergyVault',
 'Commissioning', 12, '2023-07-15', '2024-01-15',
 1.8, 0.0, 'GridNodeC', 45.5555, -122.1111, 200,
 'CorporateSponsorship', 10, '2033-01-20',
 'Battery system to buffer solar output', 1);