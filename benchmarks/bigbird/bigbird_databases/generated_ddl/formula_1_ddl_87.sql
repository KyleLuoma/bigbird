-- Driver career progression details
CREATE TABLE driver_career_progression (
    progressionId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    seasonYear INTEGER,
    teamName TEXT,
    carNumber INTEGER,
    role TEXT,
    pointsEarned REAL,
    podiums INTEGER,
    wins INTEGER,
    polePositions INTEGER,
    fastestLaps INTEGER,
    injuries TEXT,
    contractStart DATE,
    contractEnd DATE,
    sponsorships TEXT,
    avgLapTime REAL,
    totalLaps INTEGER,
    comments TEXT,
    updatedAt DATETIME,
    sourceUrl TEXT
);

INSERT INTO driver_career_progression (driverId,seasonYear,teamName,carNumber,role,pointsEarned,podiums,wins,polePositions,fastestLaps,injuries,contractStart,contractEnd,sponsorships,avgLapTime,totalLaps,comments,updatedAt,sourceUrl) VALUES (1,2022,'Red Racing',44,'Lead Driver',215.5,10,3,2,1,'None','2022-01-01','2025-12-31','BrandX,BrandY',1.342,58,'Promising season','2025-01-10 08:30:00','http://example.com/driver1');
INSERT INTO driver_career_progression (driverId,seasonYear,teamName,carNumber,role,pointsEarned,podiums,wins,polePositions,fastestLaps,injuries,contractStart,contractEnd,sponsorships,avgLapTime,totalLaps,comments,updatedAt,sourceUrl) VALUES (2,2023,'Blue Speed',77,'Reserve Driver',78.0,2,0,1,0,'Minor concussion','2023-03-15','2026-03-14','BrandZ',1.410,22,'Improving consistency','2025-01-11 09:15:00','http://example.com/driver2');
INSERT INTO driver_career_progression (driverId,seasonYear,teamName,carNumber,role,pointsEarned,podiums,wins,polePositions,fastestLaps,injuries,contractStart,contractEnd,sponsorships,avgLapTime,totalLaps,comments,updatedAt,sourceUrl) VALUES (3,2021,'Green Motors',12,'Lead Driver',180.0,5,1,3,1,'None','2021-02-01','2024-01-31','BrandA,BrandB',1.375,44,'Steady performance','2025-01-12 10:00:00','http://example.com/driver3');

-- Constructor technical inspections
CREATE TABLE constructor_technical_inspections (
    inspectionId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER,
    raceId INTEGER,
    inspectionDate DATE,
    inspectorName TEXT,
    engineCompliance BOOLEAN,
    chassisCompliance BOOLEAN,
    fuelSystemCompliance BOOLEAN,
    aerodynamicCompliance BOOLEAN,
    weight REAL,
    dimensions TEXT,
    notes TEXT,
    correctiveActions TEXT,
    followUpDate DATE,
    passed BOOLEAN,
    reportUrl TEXT,
    temperature REAL,
    humidity REAL,
    pressure REAL,
    createdAt DATETIME
);

INSERT INTO constructor_technical_inspections (constructorId,raceId,inspectionDate,inspectorName,engineCompliance,chassisCompliance,fuelSystemCompliance,aerodynamicCompliance,weight,dimensions,notes,correctiveActions,followUpDate,passed,reportUrl,temperature,humidity,pressure,createdAt) VALUES (1,101,'2025-03-20','Alice Smith',1,1,1,1,740.5,'2.5x1.5x1.2','All systems nominal','N/A','2025-03-27',1,'http://example.com/inspect1',22.5,45.0,1013.2,'2025-03-20 07:00:00');
INSERT INTO constructor_technical_inspections (constructorId,raceId,inspectionDate,inspectorName,engineCompliance,chassisCompliance,fuelSystemCompliance,aerodynamicCompliance,weight,dimensions,notes,correctiveActions,followUpDate,passed,reportUrl,temperature,humidity,pressure,createdAt) VALUES (2,102,'2025-04-05','Bob Johnson',1,0,1,1,755.0,'2.6x1.4x1.3','Chassis flex detected','Reinforce side panels','2025-04-12',0,'http://example.com/inspect2',19.8,50.0,1011.5,'2025-04-05 08:15:00');
INSERT INTO constructor_technical_inspections (constructorId,raceId,inspectionDate,inspectorName,engineCompliance,chassisCompliance,fuelSystemCompliance,aerodynamicCompliance,weight,dimensions,notes,correctiveActions,followUpDate,passed,reportUrl,temperature,humidity,pressure,createdAt) VALUES (3,103,'2025-05-01','Clara Lee',1,1,0,1,738.2,'2.4x1.6x1.1','Fuel system leak observed','Replace seal','2025-05-08',0,'http://example.com/inspect3',24.0,40.0,1012.8,'2025-05-01 06:45:00');

-- Venue energy consumption daily records
CREATE TABLE venue_energy_consumption_daily (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    date DATE,
    electricityKWh REAL,
    gasTherms REAL,
    waterLiters REAL,
    renewablePercentage REAL,
    peakDemandKW REAL,
    offPeakDemandKW REAL,
    carbonEmissionsKg REAL,
    HVACUsageHours REAL,
    lightingUsageHours REAL,
    equipmentUsageHours REAL,
    occupancy INTEGER,
    eventsCount INTEGER,
    notes TEXT,
    createdBy TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    sourceFile TEXT
);

INSERT INTO venue_energy_consumption_daily (venueId,date,electricityKWh,gasTherms,waterLiters,renewablePercentage,peakDemandKW,offPeakDemandKW,carbonEmissionsKg,HVACUsageHours,lightingUsageHours,equipmentUsageHours,occupancy,eventsCount,notes,createdBy,createdAt,updatedAt,sourceFile) VALUES (10,'2025-01-15',4520.5,320.0,12500.0,45.0,850.0,400.0,2100.0,12.5,8.0,5.5,3400,3,'Normal day','energy_admin','2025-01-16 07:00:00','2025-01-16 07:05:00','energy_jan15.csv');
INSERT INTO venue_energy_consumption_daily (venueId,date,electricityKWh,gasTherms,waterLiters,renewablePercentage,peakDemandKW,offPeakDemandKW,carbonEmissionsKg,HVACUsageHours,lightingUsageHours,equipmentUsageHours,occupancy,eventsCount,notes,createdBy,createdAt,updatedAt,sourceFile) VALUES (10,'2025-01-16',4780.2,330.5,13000.0,50.0,870.0,420.0,2250.0,13.0,8.5,6.0,3600,2,'Increased usage due to event','energy_admin','2025-01-17 07:00:00','2025-01-17 07:04:00','energy_jan16.csv');
INSERT INTO venue_energy_consumption_daily (venueId,date,electricityKWh,gasTherms,waterLiters,renewablePercentage,peakDemandKW,offPeakDemandKW,carbonEmissionsKg,HVACUsageHours,lightingUsageHours,equipmentUsageHours,occupancy,eventsCount,notes,createdBy,createdAt,updatedAt,sourceFile) VALUES (10,'2025-01-17',4300.0,310.0,12000.0,48.0,840.0,395.0,1980.0,12.0,7.8,5.2,3350,1,'Low attendance','energy_admin','2025-01-18 07:00:00','2025-01-18 07:02:00','energy_jan17.csv');

-- Race media social interactions
CREATE TABLE race_media_social_interactions (
    interactionId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    platform TEXT,
    postId TEXT,
    authorHandle TEXT,
    postDate DATE,
    likes INTEGER,
    shares INTEGER,
    comments INTEGER,
    sentimentScore REAL,
    engagementRate REAL,
    reach INTEGER,
    videoViews INTEGER,
    hashtagUsed TEXT,
    campaignName TEXT,
    contentType TEXT,
    url TEXT,
    verified BOOLEAN,
    language TEXT,
    createdAt DATETIME
);

INSERT INTO race_media_social_interactions (raceId,platform,postId,authorHandle,postDate,likes,shares,comments,sentimentScore,engagementRate,reach,videoViews,hashtagUsed,campaignName,contentType,url,verified,language,createdAt) VALUES (101,'Twitter','t12345','racingFan1','2025-03-20',1500,200,80,0.78,0.12,25000,0,'#GrandPrix','SeasonLaunch','Text','http://twitter.com/racingFan1/t12345',1,'en','2025-03-20 09:15:00');
INSERT INTO race_media_social_interactions (raceId,platform,postId,authorHandle,postDate,likes,shares,comments,sentimentScore,engagementRate,reach,videoViews,hashtagUsed,campaignName,contentType,url,verified,language,createdAt) VALUES (101,'Instagram','i98765','photoPro','2025-03-20',2300,150,95,0.85,0.15,30000,12000,'#GrandPrix','SeasonLaunch','Image','http://instagram.com/p/i98765',1,'en','2025-03-20 10:30:00');
INSERT INTO race_media_social_interactions (raceId,platform,postId,authorHandle,postDate,likes,shares,comments,sentimentScore,engagementRate,reach,videoViews,hashtagUsed,campaignName,contentType,url,verified,language,createdAt) VALUES (101,'YouTube','y54321','RacingChannel','2025-03-20',5000,400,210,0.92,0.20,80000,45000,'#GrandPrix','SeasonLaunch','Video','http://youtube.com/watch?v=y54321',1,'en','2025-03-20 11:45:00');

-- Fan loyalty engagement metrics
CREATE TABLE fan_loyalty_engagement_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    seasonYear INTEGER,
    eventsAttended INTEGER,
    merchandiseSpent REAL,
    socialPosts INTEGER,
    likesGiven INTEGER,
    commentsMade INTEGER,
    referrals INTEGER,
    loyaltyTier TEXT,
    pointsEarned INTEGER,
    pointsRedeemed INTEGER,
    avgAttendanceRate REAL,
    surveyScore REAL,
    newsletterOpens INTEGER,
    appUsageHours REAL,
    vipAccess BOOLEAN,
    feedbackScore REAL,
    lastUpdate DATE,
    sourceSystem TEXT
);

INSERT INTO fan_loyalty_engagement_metrics (fanId,seasonYear,eventsAttended,merchandiseSpent,socialPosts,likesGiven,commentsMade,referrals,loyaltyTier,pointsEarned,pointsRedeemed,avgAttendanceRate,surveyScore,newsletterOpens,appUsageHours,vipAccess,feedbackScore,lastUpdate,sourceSystem) VALUES (1001,2025,12,845.75,45,320,220,5,Gold,1500,800,0.92,4.5,30,12.5,1,4.8,'2025-01-10','LoyaltyPortal');
INSERT INTO fan_loyalty_engagement_metrics (fanId,seasonYear,eventsAttended,merchandiseSpent,socialPosts,likesGiven,commentsMade,referrals,loyaltyTier,pointsEarned,pointsRedeemed,avgAttendanceRate,surveyScore,newsletterOpens,appUsageHours,vipAccess,feedbackScore,lastUpdate,sourceSystem) VALUES (1002,2025,8,430.20,30,210,150,2,Silver,900,400,0.78,4.0,22,8.0,0,4.2,'2025-01-12','LoyaltyPortal');
INSERT INTO fan_loyalty_engagement_metrics (fanId,seasonYear,eventsAttended,merchandiseSpent,socialPosts,likesGiven,commentsMade,referrals,loyaltyTier,pointsEarned,pointsRedeemed,avgAttendanceRate,surveyScore,newsletterOpens,appUsageHours,vipAccess,feedbackScore,lastUpdate,sourceSystem) VALUES (1003,2025,15,1275.00,60,500,340,10,Platinum,2100,1800,0.97,4.9,45,20.0,1,5.0,'2025-01-15','LoyaltyPortal');

-- Telemetry data quality issues
CREATE TABLE telemetry_data_quality_issues (
    issueId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    driverId INTEGER,
    lap INTEGER,
    sensorId TEXT,
    timestamp DATETIME,
    issueType TEXT,
    severity INTEGER,
    description TEXT,
    corrected BOOLEAN,
    correctionMethod TEXT,
    reportedBy TEXT,
    detectionAlgorithm TEXT,
    falsePositive BOOLEAN,
    impactScore REAL,
    dataValue REAL,
    expectedRange TEXT,
    resolutionDate DATE,
    notes TEXT,
    createdAt DATETIME
);

INSERT INTO telemetry_data_quality_issues (raceId,driverId,lap,sensorId,timestamp,issueType,severity,description,corrected,correctionMethod,reportedBy,detectionAlgorithm,falsePositive,impactScore,dataValue,expectedRange,resolutionDate,notes,createdAt) VALUES (101,1,12,'S001','2025-03-20 14:22:10','MissingData',3,'No data received','0','N/A','engineTeam','ThresholdCheck',0,0.85,0.0,'0.0-100.0','2025-03-21','Investigating sensor failure','2025-03-20 15:00:00');
INSERT INTO telemetry_data_quality_issues (raceId,driverId,lap,sensorId,timestamp,issueType,severity,description,corrected,correctionMethod,reportedBy,detectionAlgorithm,falsePositive,impactScore,dataValue,expectedRange,resolutionDate,notes,createdAt) VALUES (101,2,18,'S015','2025-03-20 14:45:05','Outlier','2','Spike beyond expected','1','Clamped','dataOps','AnomalyDetector',0,0.60,250.0,'0-200','2025-03-20','Value clipped to max','2025-03-20 15:10:00');
INSERT INTO telemetry_data_quality_issues (raceId,driverId,lap,sensorId,timestamp,issueType,severity,description,corrected,correctionMethod,reportedBy,detectionAlgorithm,falsePositive,impactScore,dataValue,expectedRange,resolutionDate,notes,createdAt) VALUES (101,3,5,'S007','2025-03-20 14:10:33','Latency','1','Delay of 120ms','1','TimeSync','sensorTeam','LatencyMonitor',0,0.30,1.2,'0-2','2025-03-20','Delay within tolerance','2025-03-20 14:50:00');

-- Logistics fuel transport routes
CREATE TABLE logistics_fuel_transport_routes (
    routeId INTEGER PRIMARY KEY AUTOINCREMENT,
    shipmentId INTEGER,
    originFacility TEXT,
    destinationFacility TEXT,
    departureDate DATE,
    arrivalDate DATE,
    vehicleId TEXT,
    driverId INTEGER,
    fuelQuantityLiters REAL,
    fuelType TEXT,
    distanceKm REAL,
    estimatedTimeHours REAL,
    actualTimeHours REAL,
    temperatureC REAL,
    humidityPercent REAL,
    securityLevel TEXT,
    complianceStatus TEXT,
    notes TEXT,
    createdBy TEXT,
    createdAt DATETIME
);

INSERT INTO logistics_fuel_transport_routes (shipmentId,originFacility,destinationFacility,departureDate,arrivalDate,vehicleId,driverId,fuelQuantityLiters,fuelType,distanceKm,estimatedTimeHours,actualTimeHours,temperatureC,humidityPercent,securityLevel,complianceStatus,notes,createdBy,createdAt) VALUES (5001,'FuelDepotA','CircuitOne','2025-04-01','2025-04-02','VAN123',201,50000,'Premium',650.0,10.5,11.0,22.0,55,'High','Compliant','No issues','logistics_manager','2025-04-01 06:00:00');
INSERT INTO logistics_fuel_transport_routes (shipmentId,originFacility,destinationFacility,departureDate,arrivalDate,vehicleId,driverId,fuelQuantityLiters,fuelType,distanceKm,estimatedTimeHours,actualTimeHours,temperatureC,humidityPercent,securityLevel,complianceStatus,notes,createdBy,createdAt) VALUES (5002,'FuelDepotB','CircuitTwo','2025-04-03','2025-04-04','TRK456',202,75000,'EcoBlend',900.0,14.0,13.8,18.5,60,'Medium','Compliant','Minor delay due to traffic','logistics_manager','2025-04-03 07:30:00');
INSERT INTO logistics_fuel_transport_routes (shipmentId,originFacility,destinationFacility,departureDate,arrivalDate,vehicleId,driverId,fuelQuantityLiters,fuelType,distanceKm,estimatedTimeHours,actualTimeHours,temperatureC,humidityPercent,securityLevel,complianceStatus,notes,createdBy,createdAt) VALUES (5003,'FuelDepotC','CircuitThree','2025-04-05','2025-04-06','TRK789',203,60000,'Standard',720.0,12.0,12.5,20.0,50,'High','Pending','Awaiting customs clearance','logistics_manager','2025-04-05 08:15:00');

-- Circuit weather microclimate records
CREATE TABLE circuit_weather_microclimate_records (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    date DATE,
    time TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    windSpeedKph REAL,
    windDirection TEXT,
    precipitationMm REAL,
    pressureHpa REAL,
    dewPointC REAL,
    visibilityKm REAL,
    cloudCoverPercent INTEGER,
    heatIndexC REAL,
    uvIndex INTEGER,
    airQualityIndex INTEGER,
    sensorId TEXT,
    notes TEXT,
    recordedBy TEXT,
    createdAt DATETIME
);

INSERT INTO circuit_weather_microclimate_records (circuitId,date,time,temperatureC,humidityPercent,windSpeedKph,windDirection,precipitationMm,pressureHpa,dewPointC,visibilityKm,cloudCoverPercent,heatIndexC,uvIndex,airQualityIndex,sensorId,notes,recordedBy,createdAt) VALUES (1,'2025-03-20','14:00','22.5','55','12','NE','0.0','1015','13.2','15','20','23.0','5','42','WX001','Clear day','weather_station','2025-03-20 14:05:00');
INSERT INTO circuit_weather_microclimate_records (circuitId,date,time,temperatureC,humidityPercent,windSpeedKph,windDirection,precipitationMm,pressureHpa,dewPointC,visibilityKm,cloudCoverPercent,heatIndexC,uvIndex,airQualityIndex,sensorId,notes,recordedBy,createdAt) VALUES (1,'2025-03-20','15:00','23.0','58','15','E','0.2','1014','14.0','14','30','24.0','6','50','WX001','Light drizzle','weather_station','2025-03-20 15:05:00');
INSERT INTO circuit_weather_microclimate_records (circuitId,date,time,temperatureC,humidityPercent,windSpeedKph,windDirection,precipitationMm,pressureHpa,dewPointC,visibilityKm,cloudCoverPercent,heatIndexC,uvIndex,airQualityIndex,sensorId,notes,recordedBy,createdAt) VALUES (1,'2025-03-20','16:00','21.8','60','10','SE','0.0','1013','12.8','16','40','22.5','5','45','WX001','Overcast','weather_station','2025-03-20 16:05:00');

-- Hospitality event sponsorships
CREATE TABLE hospitality_event_sponsorships (
    sponsorshipId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER,
    sponsorId INTEGER,
    sponsorshipLevel TEXT,
    amountPaid REAL,
    contractStart DATE,
    contractEnd DATE,
    brandingLocation TEXT,
    activationDetails TEXT,
    contactPerson TEXT,
    contactEmail TEXT,
    invoiced BOOLEAN,
    paymentStatus TEXT,
    deliverables TEXT,
    remarks TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    approvedBy TEXT,
    approvalDate DATE,
    sourceUrl TEXT
);

INSERT INTO hospitality_event_sponsorships (eventId,sponsorId,sponsorshipLevel,amountPaid,contractStart,contractEnd,brandingLocation,activationDetails,contactPerson,contactEmail,invoiced,paymentStatus,deliverables,remarks,createdAt,updatedAt,approvedBy,approvalDate,sourceUrl) VALUES (301,401,'Gold',150000,'2025-01-01','2025-12-31','VIP Lounge','Product showcase and tasting','John Doe','john.doe@example.com',1,'Paid','Banner, Booth, Sampling','All deliverables met','2025-01-05 09:00:00','2025-01-06 10:00:00','Jane Smith','2025-01-04','http://sponsors.com/contract301');
INSERT INTO hospitality_event_sponsorships (eventId,sponsorId,sponsorshipLevel,amountPaid,contractStart,contractEnd,brandingLocation,activationDetails,contactPerson,contactEmail,invoiced,paymentStatus,deliverables,remarks,createdAt,updatedAt,approvedBy,approvalDate,sourceUrl) VALUES (302,402,'Silver',80000,'2025-02-15','2025-11-30','Executive Suite','Live demo and networking','Emily Clark','emily.clark@example.com',0,'Pending','Digital signage, Swag bags','Pending delivery','2025-02-20 08:30:00','2025-02-20 08:30:00','Mark Lee','2025-02-18','http://sponsors.com/contract302');
INSERT INTO hospitality_event_sponsorships (eventId,sponsorId,sponsorshipLevel,amountPaid,contractStart,contractEnd,brandingLocation,activationDetails,contactPerson,contactEmail,invoiced,paymentStatus,deliverables,remarks,createdAt,updatedAt,approvedBy,approvalDate,sourceUrl) VALUES (303,403,'Platinum',250000,'2025-03-01','2025-12-15','Main Hall','Stage naming rights','David Kim','david.kim@example.com',1,'Paid','Stage banner, Press release','Excellent partnership','2025-03-02 11:00:00','2025-03-02 11:00:00','Laura Chen','2025-02-28','http://sponsors.com/contract303');

-- Media broadcast error logs
CREATE TABLE media_broadcast_error_logs (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId INTEGER,
    errorTime DATETIME,
    errorCode TEXT,
    severity TEXT,
    description TEXT,
    affectedStream TEXT,
    resolutionStatus TEXT,
    resolvedAt DATETIME,
    technicianId INTEGER,
    errorCategory TEXT,
    impactLevel INTEGER,
    replayNeeded BOOLEAN,
    notes TEXT,
    sourceSystem TEXT,
    loggedBy TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    errorMetrics TEXT,
    correctionAction TEXT
);

INSERT INTO media_broadcast_error_logs (broadcastId,errorTime,errorCode,severity,description,affectedStream,resolutionStatus,resolvedAt,technicianId,errorCategory,impactLevel,replayNeeded,notes,sourceSystem,loggedBy,createdAt,updatedAt,errorMetrics,correctionAction) VALUES (9001,'2025-03-20 13:45:00','E101','High','Audio drop-out during live feed','AudioStream','Resolved','2025-03-20 14:00:00',301,'Audio','5',1,'Re-sync performed','BroadcastEngine','alice','2025-03-20 13:46:00','2025-03-20 14:05:00','PacketLoss=12%','Restart audio encoder');
INSERT INTO media_broadcast_error_logs (broadcastId,errorTime,errorCode,severity,description,affectedStream,resolutionStatus,resolvedAt,technicianId,errorCategory,impactLevel,replayNeeded,notes,sourceSystem,loggedBy,createdAt,updatedAt,errorMetrics,correctionAction) VALUES (9002,'2025-03-20 14:30:00','E205','Medium','Video lag observed','VideoStream','Pending',NULL,302,'Video','3',0,'Monitoring','StreamingServer','bob','2025-03-20 14:31:00','2025-03-20 14:31:00','Latency=250ms','Adjust buffer settings');
INSERT INTO media_broadcast_error_logs (broadcastId,errorTime,errorCode,severity,description,affectedStream,resolutionStatus,resolvedAt,technicianId,errorCategory,impactLevel,replayNeeded,notes,sourceSystem,loggedBy,createdAt,updatedAt,errorMetrics,correctionAction) VALUES (9003,'2025-03-20 15:10:00','E309','Low','Metadata mismatch in subtitles','SubtitleStream','Resolved','2025-03-20 15:20:00',303,'Metadata','1',0,'Subtitle file corrected','SubtitleEngine','carol','2025-03-20 15:11:00','2025-03-20 15:22:00','SyncError=0.2s','Replace subtitle file');