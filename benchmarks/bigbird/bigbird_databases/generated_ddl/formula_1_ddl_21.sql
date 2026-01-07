-- Drone surveillance logs for external monitoring
CREATE TABLE drone_surveillance_logs (
    droneLogId INTEGER PRIMARY KEY AUTOINCREMENT,
    flightDate DATE,
    operatorName TEXT,
    batteryLevel REAL,
    altitudeMeters INTEGER,
    speedKph REAL,
    gpsLatitude REAL,
    gpsLongitude REAL,
    videoResolution TEXT,
    footageDurationSec INTEGER,
    cloudCoveragePct REAL,
    windSpeedKph REAL,
    temperatureC REAL,
    humidityPct REAL,
    payloadWeightKg REAL,
    cameraAngleDeg INTEGER,
    signalStrengthDbm REAL,
    missionType TEXT,
    notes TEXT,
    complianceStatus TEXT
);
INSERT INTO drone_surveillance_logs (flightDate,operatorName,batteryLevel,altitudeMeters,speedKph,gpsLatitude,gpsLongitude,videoResolution,footageDurationSec,cloudCoveragePct,windSpeedKph,temperatureC,humidityPct,payloadWeightKg,cameraAngleDeg,signalStrengthDbm,missionType,notes,complianceStatus) VALUES ('2025-04-12','Alice Smith',89.5,1200,150.2,45.4215,-75.6972,'4K',3600,12.4,8.2,22.5,55.0,0.75,45, -68.3,'Aerial inspection','No anomalies','PASS');
INSERT INTO drone_surveillance_logs (flightDate,operatorName,batteryLevel,altitudeMeters,speedKph,gpsLatitude,gpsLongitude,videoResolution,footageDurationSec,cloudCoveragePct,windSpeedKph,temperatureC,humidityPct,payloadWeightKg,cameraAngleDeg,signalStrengthDbm,missionType,notes,complianceStatus) VALUES ('2025-04-13','Bob Johnson',77.0,900,130.0,46.1300,-73.5580,'1080p',2400,25.0,12.5,18.0,60.0,0.50,30,-70.1,'Security patrol','Low battery warning','PASS');
INSERT INTO drone_surveillance_logs (flightDate,operatorName,batteryLevel,altitudeMeters,speedKph,gpsLatitude,gpsLongitude,videoResolution,footageDurationSec,cloudCoveragePct,windSpeedKph,temperatureC,humidityPct,payloadWeightKg,cameraAngleDeg,signalStrengthDbm,missionType,notes,complianceStatus) VALUES ('2025-04-14','Carol Lee',95.2,1500,165.3,44.9778,-93.2650,'4K',4200,5.0,6.8,24.3,48.0,1.10,60,-66.5,'Event coverage','Clear weather','PASS');

-- Energy consumption forecasts for venues
CREATE TABLE energy_consumption_forecasts (
    forecastId INTEGER PRIMARY KEY AUTOINCREMENT,
    forecastDate DATE,
    venueId INTEGER,
    predictedEnergyMwh REAL,
    renewablePct REAL,
    peakLoadMw REAL,
    offPeakLoadMw REAL,
    temperatureC REAL,
    humidityPct REAL,
    windSpeedKph REAL,
    solarIrradianceWm2 REAL,
    forecastSource TEXT,
    confidenceLevel REAL,
    notes TEXT,
    createdTimestamp TEXT,
    updatedTimestamp TEXT,
    version INTEGER,
    regionCode TEXT,
    scenario TEXT,
    anomalyFlag TEXT
);
INSERT INTO energy_consumption_forecasts (forecastDate,venueId,predictedEnergyMwh,renewablePct,peakLoadMw,offPeakLoadMw,temperatureC,humidityPct,windSpeedKph,solarIrradianceWm2,forecastSource,confidenceLevel,notes,createdTimestamp,updatedTimestamp,version,regionCode,scenario,anomalyFlag) VALUES ('2025-05-01',101,2500.5,45.2,120.8,80.3,22.1,58.0,12.5,560.0,'ModelA',0.92,'Baseline forecast','2025-04-20 08:00:00','2025-04-20 08:00:00',1,'NA','Normal','NO');
INSERT INTO energy_consumption_forecasts (forecastDate,venueId,predictedEnergyMwh,renewablePct,peakLoadMw,offPeakLoadMw,temperatureC,humidityPct,windSpeedKph,solarIrradianceWm2,forecastSource,confidenceLevel,notes,createdTimestamp,updatedTimestamp,version,regionCode,scenario,anomalyFlag) VALUES ('2025-05-02',102,2600.0,48.0,125.0,85.0,23.5,55.0,10.0,600.0,'ModelB',0.94,'Slight increase expected','2025-04-21 09:15:00','2025-04-21 09:15:00',1,'EU','Heatwave','NO');
INSERT INTO energy_consumption_forecasts (forecastDate,venueId,predictedEnergyMwh,renewablePct,peakLoadMw,offPeakLoadMw,temperatureC,humidityPct,windSpeedKph,solarIrradianceWm2,forecastSource,confidenceLevel,notes,createdTimestamp,updatedTimestamp,version,regionCode,scenario,anomalyFlag) VALUES ('2025-05-03',103,2400.8,42.5,115.2,78.9,19.8,62.0,15.3,530.0,'ModelA',0.88,'Cooler night expected','2025-04-22 07:45:00','2025-04-22 07:45:00',1,'AS','Normal','NO');

-- Medical equipment inventory for venue health facilities
CREATE TABLE medical_equipment_inventory (
    equipmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    equipmentType TEXT,
    serialNumber TEXT,
    manufacturer TEXT,
    purchaseDate DATE,
    warrantyEndDate DATE,
    status TEXT,
    lastMaintenanceDate DATE,
    nextMaintenanceDue DATE,
    calibrationDate DATE,
    calibratedBy TEXT,
    locationRoom TEXT,
    quantity INTEGER,
    unitCost REAL,
    totalCost REAL,
    depreciationPct REAL,
    disposalDate DATE,
    disposalReason TEXT,
    notes TEXT
);
INSERT INTO medical_equipment_inventory (venueId,equipmentType,serialNumber,manufacturer,purchaseDate,warrantyEndDate,status,lastMaintenanceDate,nextMaintenanceDue,calibrationDate,calibratedBy,locationRoom,quantity,unitCost,totalCost,depreciationPct,disposalDate,disposalReason,notes) VALUES (201,'Defibrillator','DEF123456','MedTech','2020-01-15','2025-01-15','Operational','2024-06-10','2025-06-10','2024-06-01','TechnicianA','Room101',5,1500.00,7500.00,10.0,NULL,NULL,'Routine check OK');
INSERT INTO medical_equipment_inventory (venueId,equipmentType,serialNumber,manufacturer,purchaseDate,warrantyEndDate,status,lastMaintenanceDate,nextMaintenanceDue,calibrationDate,calibratedBy,locationRoom,quantity,unitCost,totalCost,depreciationPct,disposalDate,disposalReason,notes) VALUES (202,'Ventilator','VEN987654','HealthAir','2019-03-20','2024-03-20','Under Repair','2024-03-01','2025-03-01','2024-02-28','TechnicianB','Room202',2,8000.00,16000.00,15.0,NULL,NULL,'Spare parts pending');
INSERT INTO medical_equipment_inventory (venueId,equipmentType,serialNumber,manufacturer,purchaseDate,warrantyEndDate,status,lastMaintenanceDate,nextMaintenanceDue,calibrationDate,calibratedBy,locationRoom,quantity,unitCost,totalCost,depreciationPct,disposalDate,disposalReason,notes) VALUES (203,'ECG Machine','ECG555777','CardioPro','2021-07-10','2026-07-10','Operational','2024-05-05','2025-05-05','2024-05-01','TechnicianC','Room303',3,3200.00,9600.00,8.0,NULL,NULL,'No issues');

-- Fan VR experience session data
CREATE TABLE fan_vr_experience_sessions (
    sessionId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    eventId INTEGER,
    vrDeviceModel TEXT,
    headsetSerial TEXT,
    sessionStart TEXT,
    sessionEnd TEXT,
    durationSec INTEGER,
    experienceMode TEXT,
    score INTEGER,
    interactionCount INTEGER,
    avgGazeAngleDeg REAL,
    latencyMs REAL,
    networkQuality TEXT,
    feedbackRating INTEGER,
    comments TEXT,
    firmwareVersion TEXT,
    batteryLevelStart REAL,
    batteryLevelEnd REAL,
    issuesReported TEXT
);
INSERT INTO fan_vr_experience_sessions (fanId,eventId,vrDeviceModel,headsetSerial,sessionStart,sessionEnd,durationSec,experienceMode,score,interactionCount,avgGazeAngleDeg,latencyMs,networkQuality,feedbackRating,comments,firmwareVersion,batteryLevelStart,batteryLevelEnd,issuesReported) VALUES (301,501,'OculusQuest2','HQ001','2025-04-20 14:00:00','2025-04-20 14:30:00',1800,'Race replay',850,45,12.5,28.0,'Excellent',9,'Smooth experience','v2.3',100.0,85.0,'None');
INSERT INTO fan_vr_experience_sessions (fanId,eventId,vrDeviceModel,headsetSerial,sessionStart,sessionEnd,durationSec,experienceMode,score,interactionCount,avgGazeAngleDeg,latencyMs,networkQuality,feedbackRating,comments,firmwareVersion,batteryLevelStart,batteryLevelEnd,issuesReported) VALUES (302,502,'HTCVive','HQ002','2025-04-21 10:15:00','2025-04-21 10:45:00',1800,'Pit lane tour',720,38,10.2,35.0,'Good',8,'Minor tracking lag','v2.4',100.0,78.0,'Tracking glitch');
INSERT INTO fan_vr_experience_sessions (fanId,eventId,vrDeviceModel,headsetSerial,sessionStart,sessionEnd,durationSec,experienceMode,score,interactionCount,avgGazeAngleDeg,latencyMs,networkQuality,feedbackRating,comments,firmwareVersion,batteryLevelStart,batteryLevelEnd,issuesReported) VALUES (303,503,'ValveIndex','HQ003','2025-04-22 16:00:00','2025-04-22 16:20:00',1200,'Qualifying simulation',640,30,14.0,22.0,'Excellent',10,'Very immersive','v2.5',100.0,90.0,'None');

-- Parcels customs clearance records
CREATE TABLE parcels_customs_clearance (
    parcelId INTEGER PRIMARY KEY AUTOINCREMENT,
    shipmentId INTEGER,
    customsRef TEXT,
    importDate DATE,
    exportDate DATE,
    originCountry TEXT,
    destinationCountry TEXT,
    weightKg REAL,
    volumeCbm REAL,
    declaredValueUSD REAL,
    dutyPaidUSD REAL,
    clearanceStatus TEXT,
    clearanceDate DATE,
    inspectorName TEXT,
    inspectionNotes TEXT,
    hazardClass TEXT,
    transportMode TEXT,
    carrierName TEXT,
    trackingNumber TEXT,
    notes TEXT
);
INSERT INTO parcels_customs_clearance (shipmentId,customsRef,importDate,exportDate,originCountry,destinationCountry,weightKg,volumeCbm,declaredValueUSD,dutyPaidUSD,clearanceStatus,clearanceDate,inspectorName,inspectionNotes,hazardClass,transportMode,carrierName,trackingNumber,notes) VALUES (401,'CR20250401','2025-04-01','2025-04-03','Germany','USA',120.5,0.85,25000.00,5000.00,'Cleared','2025-04-02','InspectorA','No issues','None','Air','AirCargoCo','TRK123456','Priority shipment');
INSERT INTO parcels_customs_clearance (shipmentId,customsRef,importDate,exportDate,originCountry,destinationCountry,weightKg,volumeCbm,declaredValueUSD,dutyPaidUSD,clearanceStatus,clearanceDate,inspectorName,inspectionNotes,hazardClass,transportMode,carrierName,trackingNumber,notes) VALUES (402,'CR20250402','2025-04-02','2025-04-04','China','USA',200.0,1.10,40000.00,8000.00,'Pending','2025-04-03','InspectorB','Requires additional documents','Battery','Sea','OceanicLogistics','TRK654321','Delayed for paperwork');
INSERT INTO parcels_customs_clearance (shipmentId,customsRef,importDate,exportDate,originCountry,destinationCountry,weightKg,volumeCbm,declaredValueUSD,dutyPaidUSD,clearanceStatus,clearanceDate,inspectorName,inspectionNotes,hazardClass,transportMode,carrierName,trackingNumber,notes) VALUES (403,'CR20250403','2025-04-03','2025-04-05','Japan','USA',95.0,0.65,18000.00,3600.00,'Cleared','2025-04-04','InspectorC','All compliance met','None','Air','SkyFreight','TRK789012','Standard processing');

-- Augmented reality content metadata
CREATE TABLE augmented_reality_content (
    arContentId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    contentType TEXT,
    assetPath TEXT,
    version INTEGER,
    createdBy TEXT,
    createDate DATE,
    lastModifiedBy TEXT,
    lastModifiedDate DATE,
    sizeMb REAL,
    resolution TEXT,
    supportedDevices TEXT,
    interactive INTEGER,
    description TEXT,
    metadataJson TEXT,
    approvalStatus TEXT,
    approvedBy TEXT,
    approvalDate DATE,
    usageCount INTEGER,
    tags TEXT
);
INSERT INTO augmented_reality_content (raceId,contentType,assetPath,version,createdBy,createDate,lastModifiedBy,lastModifiedDate,sizeMb,resolution,supportedDevices,interactive,description,metadataJson,approvalStatus,approvedBy,approvalDate,usageCount,tags) VALUES (601,'3DModel','/ar/models/car1.glb',1,'ArtistA','2025-03-10','ArtistA','2025-03-10',25.4,'2048x2048','Mobile,Headset',1,'High fidelity car model','{\"polyCount\":5000}','Approved','LeadDesigner','2025-03-12',150,'car,model');
INSERT INTO augmented_reality_content (raceId,contentType,assetPath,version,createdBy,createDate,lastModifiedBy,lastModifiedDate,sizeMb,resolution,supportedDevices,interactive,description,metadataJson,approvalStatus,approvedBy,approvalDate,usageCount,tags) VALUES (602,'Overlay','/ar/overlays/trackmap.png',2,'ArtistB','2025-03-15','ArtistB','2025-03-16',12.0,'4096x4096','Mobile,Headset',0,'Track layout overlay','{\"layers\":3}','Approved','LeadDesigner','2025-03-18',300,'track,overlay');
INSERT INTO augmented_reality_content (raceId,contentType,assetPath,version,createdBy,createDate,lastModifiedBy,lastModifiedDate,sizeMb,resolution,supportedDevices,interactive,description,metadataJson,approvalStatus,approvedBy,approvalDate,usageCount,tags) VALUES (603,'Animation','/ar/animations/pitstop.mp4',1,'ArtistC','2025-03-20','ArtistC','2025-03-21',45.6,'1920x1080','Headset',1,'Pit stop sequence animation','{\"durationSec\":15}','Pending','',NULL,0,'pitstop,animation');

-- Venue seating plan details
CREATE TABLE venue_seating_plans (
    planId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    sectionCode TEXT,
    rowStart INTEGER,
    rowEnd INTEGER,
    seatStart INTEGER,
    seatEnd INTEGER,
    seatCount INTEGER,
    tier TEXT,
    viewRating REAL,
    accessibility INTEGER,
    priceCategory TEXT,
    lastUpdated DATE,
    createdBy TEXT,
    notes TEXT,
    mapFilePath TEXT,
    latitude REAL,
    longitude REAL,
    elevationMeters INTEGER,
    capacityUtilizationPct REAL,
    reservationPolicy TEXT
);
INSERT INTO venue_seating_plans (venueId,sectionCode,rowStart,rowEnd,seatStart,seatEnd,seatCount,tier,viewRating,accessibility,priceCategory,lastUpdated,createdBy,notes,mapFilePath,latitude,longitude,elevationMeters,capacityUtilizationPct,reservationPolicy) VALUES (701,'A','1','20','1','30',600,'Premium',9.5,1,'VIP','2025-04-01','PlannerA','Front rows near pit','/maps/venueA_sectionA.png',40.7128,-74.0060,15,85.0,'Advance');
INSERT INTO venue_seating_plans (venueId,sectionCode,rowStart,rowEnd,seatStart,seatEnd,seatCount,tier,viewRating,accessibility,priceCategory,lastUpdated,createdBy,notes,mapFilePath,latitude,longitude,elevationMeters,capacityUtilizationPct,reservationPolicy) VALUES (702,'B','21','40','31','60',900,'Standard',8.0,0,'General','2025-04-02','PlannerB','Middle section','/maps/venueB_sectionB.png',34.0522,-118.2437,20,78.0,'Onsite');
INSERT INTO venue_seating_plans (venueId,sectionCode,rowStart,rowEnd,seatStart,seatEnd,seatCount,tier,viewRating,accessibility,priceCategory,lastUpdated,createdBy,notes,mapFilePath,latitude,longitude,elevationMeters,capacityUtilizationPct,reservationPolicy) VALUES (703,'C','41','60','61','90',750,'Economy',7.2,0,'Budget','2025-04-03','PlannerC','Upper level','/maps/venueC_sectionC.png',51.5074,-0.1278,10,65.0,'Walkup');

-- Traffic incident reports around event venues
CREATE TABLE traffic_incident_reports (
    incidentId INTEGER PRIMARY KEY AUTOINCREMENT,
    date DATE,
    time TEXT,
    location TEXT,
    incidentType TEXT,
    severity INTEGER,
    vehiclesInvolved INTEGER,
    injuries INTEGER,
    fatalities INTEGER,
    description TEXT,
    responseUnits TEXT,
    clearanceTimeMin INTEGER,
    weatherCondition TEXT,
    roadSurface TEXT,
    trafficImpact TEXT,
    reportOfficer TEXT,
    reportNumber TEXT,
    latitude REAL,
    longitude REAL,
    notes TEXT
);
INSERT INTO traffic_incident_reports (date,time,location,incidentType,severity,vehiclesInvolved,injuries,fatalities,description,responseUnits,clearanceTimeMin,weatherCondition,roadSurface,trafficImpact,reportOfficer,reportNumber,latitude,longitude,notes) VALUES ('2025-04-10','08:15','Main St near Gate 3','Collision',3,2,1,0,'Side‑impact between two cars','Unit12,Unit15',45,'Clear','Dry','Partial road closure','OfficerA','IR20250410A',40.7306,-73.9352,'No further action');
INSERT INTO traffic_incident_reports (date,time,location,incidentType,severity,vehiclesInvolved,injuries,fatalities,description,responseUnits,clearanceTimeMin,weatherCondition,roadSurface,trafficImpact,reportOfficer,reportNumber,latitude,longitude,notes) VALUES ('2025-04-11','14:30','Highway 99 Exit 7','Stall',2,1,0,0,'Truck stalled causing backup','Unit22',30,'Rain','Wet','Slow traffic','OfficerB','IR20250411B',36.7783,-119.4179,'Tow dispatched');
INSERT INTO traffic_incident_reports (date,time,location,incidentType,severity,vehiclesInvolved,injuries,fatalities,description,responseUnits,clearanceTimeMin,weatherCondition,roadSurface,trafficImpact,reportOfficer,reportNumber,latitude,longitude,notes) VALUES ('2025-04-12','22:05','Parking Lot A','Pedestrian',1,1,0,0,'Pedestrian slipped on wet surface','Unit05',15,'Clear','Wet','Lot closed for cleaning','OfficerC','IR20250412C',34.0522,-118.2437,'No injuries');

-- Sponsor brand analytics per campaign
CREATE TABLE sponsor_brand_analytics (
    analyticsId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    campaignId INTEGER,
    metricName TEXT,
    metricValue REAL,
    periodStart DATE,
    periodEnd DATE,
    channel TEXT,
    audienceSegment TEXT,
    conversionRate REAL,
    costPerImpression REAL,
    costPerClick REAL,
    totalSpend REAL,
    roi REAL,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    dataSource TEXT,
    confidenceLevel REAL,
    flagged INTEGER
);
INSERT INTO sponsor_brand_analytics (sponsorId,campaignId,metricName,metricValue,periodStart,periodEnd,channel,audienceSegment,conversionRate,costPerImpression,costPerClick,totalSpend,roi,notes,createdAt,updatedAt,dataSource,confidenceLevel,flagged) VALUES (801,901,'BrandRecall',78.5,'2025-01-01','2025-03-31','Social','YoungAdults',0.045,0.12,0.75,150000.00,1.8,'Positive trend','2025-04-01 10:00:00','2025-04-01 10:00:00','AnalyticsTool','0.95',0);
INSERT INTO sponsor_brand_analytics (sponsorId,campaignId,metricName,metricValue,periodStart,periodEnd,channel,audienceSegment,conversionRate,costPerImpression,costPerClick,totalSpend,roi,notes,createdAt,updatedAt,dataSource,confidenceLevel,flagged) VALUES (802,902,'EngagementRate',62.3,'2025-02-01','2025-04-30','TV','General',0.032,0.20,1.10,200000.00,2.1,'Seasonal peaks','2025-04-02 11:30:00','2025-04-02 11:30:00','AnalyticsTool','0.92',0);
INSERT INTO sponsor_brand_analytics (sponsorId,campaignId,metricName,metricValue,periodStart,periodEnd,channel,audienceSegment,conversionRate,costPerImpression,costPerClick,totalSpend,roi,notes,createdAt,updatedAt,dataSource,confidenceLevel,flagged) VALUES (803,903,'ClickThrough',45.7,'2025-03-01','2025-05-31','Online','TechSavvy',0.058,0.15,0.85,180000.00,1.6,'Steady growth','2025-04-03 09:45:00','2025-04-03 09:45:00','AnalyticsTool','0.90',0);

-- Driver license issue history (non‑core, focuses on licensing administration)
CREATE TABLE driver_license_issue_history (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    licenseNumber TEXT,
    issueDate DATE,
    expiryDate DATE,
    issuingAuthority TEXT,
    licenseClass TEXT,
    status TEXT,
    restrictions TEXT,
    issuedBy TEXT,
    notes TEXT,
    verificationDate DATE,
    verifiedBy TEXT,
    verificationStatus TEXT,
    renewalCount INTEGER,
    lastRenewalDate DATE,
    penaltyPoints INTEGER,
    suspensionStart DATE,
    suspensionEnd DATE,
    reinstatementDate DATE
);
INSERT INTO driver_license_issue_history (driverId,licenseNumber,issueDate,expiryDate,issuingAuthority,licenseClass,status,restrictions,issuedBy,notes,verificationDate,verifiedBy,verificationStatus,renewalCount,lastRenewalDate,penaltyPoints,suspensionStart,suspensionEnd,reinstatementDate) VALUES (1,'DL1234567','2020-01-15','2030-01-15','MotorDept','A','Active','None','OfficerA','First issue','2025-01-10','OfficerB','Verified',2,'2025-01-15',0,NULL,NULL,NULL);
INSERT INTO driver_license_issue_history (driverId,licenseNumber,issueDate,expiryDate,issuingAuthority,licenseClass,status,restrictions,issuedBy,notes,verificationDate,verifiedBy,verificationStatus,renewalCount,lastRenewalDate,penaltyPoints,suspensionStart,suspensionEnd,reinstatementDate) VALUES (2,'DL7654321','2018-05-20','2028-05-20','MotorDept','B','Suspended','None','OfficerC','Speeding violation','2025-02-05','OfficerD','Verified',1,'2025-05-20',3,'2025-02-01','2025-02-28','2025-03-01');
INSERT INTO driver_license_issue_history (driverId,licenseNumber,issueDate,expiryDate,issuingAuthority,licenseClass,status,restrictions,issuedBy,notes,verificationDate,verifiedBy,verificationStatus,renewalCount,lastRenewalDate,penaltyPoints,suspensionStart,suspensionEnd,reinstatementDate) VALUES (3,'DL9988776','2015-09-10','2025-09-10','MotorDept','C','Active','Glasses','OfficerE','Medical restriction','2025-03-12','OfficerF','Verified',3,'2023-09-10',1,NULL,NULL,NULL);