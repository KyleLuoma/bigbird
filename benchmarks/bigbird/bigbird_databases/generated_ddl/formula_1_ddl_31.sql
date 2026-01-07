-- Venue Maintenance Logs
CREATE TABLE venue_maintenance_logs (
    logId               INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId             INTEGER NOT NULL,
    maintenanceDate     DATE NOT NULL,
    system              TEXT NOT NULL,
    issueDescription    TEXT,
    resolution          TEXT,
    technicianId        INTEGER,
    cost                REAL,
    downtimeHours       REAL,
    priority            TEXT,
    scheduledFlag       INTEGER,
    vendorId            INTEGER,
    partsUsed           TEXT,
    notes               TEXT,
    createdAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt           DATETIME,
    complianceStatus    TEXT,
    auditTrail          TEXT,
    externalReference   TEXT,
    workOrderNumber     TEXT,
    safetyCheckPassed   INTEGER
);
INSERT INTO venue_maintenance_logs (venueId,maintenanceDate,system,issueDescription,resolution,technicianId,cost,downtimeHours,priority,scheduledFlag,vendorId,partsUsed,notes,updatedAt,complianceStatus,auditTrail,externalReference,workOrderNumber,safetyCheckPassed) VALUES (1,'2025-03-15','HVAC','Air_filter_clogged','Replaced_filter',101,250.00,2.5,'High',1,55,'Filter_A123','Routine check',NULL,'Compliant','Log123','EXT001','WO1001',1);
INSERT INTO venue_maintenance_logs (venueId,maintenanceDate,system,issueDescription,resolution,technicianId,cost,downtimeHours,priority,scheduledFlag,vendorId,partsUsed,notes,updatedAt,complianceStatus,auditTrail,externalReference,workOrderNumber,safetyCheckPassed) VALUES (2,'2025-04-01','Electrical','Circuit_breaker_trip','Reset_breaker',102,0.00,0.0,'Medium',0,60,'','Checked after storm',NULL,'Compliant','Log124','EXT002','WO1002',1);
INSERT INTO venue_maintenance_logs (venueId,maintenanceDate,system,issueDescription,resolution,technicianId,cost,downtimeHours,priority,scheduledFlag,vendorId,partsUsed,notes,updatedAt,complianceStatus,auditTrail,externalReference,workOrderNumber,safetyCheckPassed) VALUES (3,'2025-04-20','Plumbing','Pipe_leak_in_restroom','Repaired_pipe',103,1200.00,4.0,'Critical',1,70,'Pipe_B456','Leak caused water damage',NULL,'Compliant','Log125','EXT003','WO1003',1);

-- Sponsor Social Campaigns
CREATE TABLE sponsor_social_campaigns (
    campaignId          INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId           INTEGER NOT NULL,
    platform            TEXT NOT NULL,
    campaignName        TEXT NOT NULL,
    startDate           DATE NOT NULL,
    endDate             DATE NOT NULL,
    budget              REAL,
    impressions         INTEGER,
    clicks              INTEGER,
    conversions         INTEGER,
    cpc                 REAL,
    cpm                 REAL,
    targetAudience      TEXT,
    creativeType        TEXT,
    hashtags            TEXT,
    adCopy              TEXT,
    landingPageUrl      TEXT,
    status              TEXT,
    createdBy           TEXT,
    approvedBy          TEXT,
    notes               TEXT
);
INSERT INTO sponsor_social_campaigns (sponsorId,platform,campaignName,startDate,endDate,budget,impressions,clicks,conversions,cpc,cpm,targetAudience,creativeType,hashtags,adCopy,landingPageUrl,status,createdBy,approvedBy,notes) VALUES (10,'Instagram','FastLane_Promo','2025-05-01','2025-05-31',50000.00,2000000,15000,3000,0.033,25.00,'Young_Adults','Video','#FastLane #Racing','Experience_speed_now','https://fastlane.com/promo','Active','Alice','Bob','Initial launch');
INSERT INTO sponsor_social_campaigns (sponsorId,platform,campaignName,startDate,endDate,budget,impressions,clicks,conversions,cpc,cpm,targetAudience,creativeType,hashtags,adCopy,landingPageUrl,status,createdBy,approvedBy,notes) VALUES (12,'Twitter','GearShift_Challenge','2025-06-10','2025-07-10',32000.00,1500000,12000,2500,0.027,21.33,'Motorsport_Fans','Image','#GearShift #Challenge','Join_the_challenge_today','https://gearshift.com/challenge','Paused','Carol','Dave','Performance review pending');
INSERT INTO sponsor_social_campaigns (sponsorId,platform,campaignName,startDate,endDate,budget,impressions,clicks,conversions,cpc,cpm,targetAudience,creativeType,hashtags,adCopy,landingPageUrl,status,createdBy,approvedBy,notes) VALUES (15,'Facebook','TurboBoost_Deal','2025-08-01','2025-08-15',20000.00,800000,5000,800,0.040,25.00,'Car_Enthusiasts','Carousel','#TurboBoost','Boost_your_performance','https://turboboost.com/deal','Completed','Eve','Frank','Campaign ended successfully');

-- Air Quality Measurements
CREATE TABLE air_quality_measurements (
    measurementId       INTEGER PRIMARY KEY AUTOINCREMENT,
    stationId           INTEGER NOT NULL,
    timestamp           DATETIME NOT NULL,
    pm25                REAL,
    pm10                REAL,
    o3                  REAL,
    no2                 REAL,
    so2                 REAL,
    co                  REAL,
    temperature         REAL,
    humidity            REAL,
    windSpeed           REAL,
    windDirection       TEXT,
    aqi                 INTEGER,
    aqiCategory         TEXT,
    sensorStatus        TEXT,
    batteryLevel        REAL,
    calibrationDate     DATE,
    firmwareVersion     TEXT,
    notes               TEXT,
    recordedBy          TEXT
);
INSERT INTO air_quality_measurements (stationId,timestamp,pm25,pm10,o3,no2,so2,co,temperature,humidity,windSpeed,windDirection,aqi,aqiCategory,sensorStatus,batteryLevel,calibrationDate,firmwareVersion,notes,recordedBy) VALUES (101,'2025-05-10 08:00:00',12.5,25.0,30.2,18.0,4.1,0.5,22.3,55.0,5.2,'NE','42','Good','Active',95.0,'2025-01-01','v1.2','Routine measurement','SystemA');
INSERT INTO air_quality_measurements (stationId,timestamp,pm25,pm10,o3,no2,so2,co,temperature,humidity,windSpeed,windDirection,aqi,aqiCategory,sensorStatus,batteryLevel,calibrationDate,firmwareVersion,notes,recordedBy) VALUES (102,'2025-05-10 08:15:00',35.0,55.0,45.0,30.0,6.5,0.8,24.0,60.0,6.0','SW','85','Moderate','Active',90.0,'2025-02-15','v1.3','Elevated particulate levels','SystemB');
INSERT INTO air_quality_measurements (stationId,timestamp,pm25,pm10,o3,no2,so2,co,temperature,humidity,windSpeed,windDirection,aqi,aqiCategory,sensorStatus,batteryLevel,calibrationDate,firmwareVersion,notes,recordedBy) VALUES (103,'2025-05-10 08:30:00',80.0,120.0,60.0,40.0,10.0,1.2,26.5,70.0,4.5','NW','150','Unhealthy','Maintenance Required',75.0,'2025-03-10','v1.4','Sensor requires cleaning','SystemC');

-- Team Logistics Inventory
CREATE TABLE team_logistics_inventory (
    itemId              INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId              INTEGER NOT NULL,
    itemName            TEXT NOT NULL,
    category            TEXT,
    quantityOnHand      INTEGER,
    reorderLevel        INTEGER,
    supplierId          INTEGER,
    purchaseDate        DATE,
    costPerUnit         REAL,
    warrantyExpDate     DATE,
    location            TEXT,
    barcode             TEXT,
    serialNumber        TEXT,
    status              TEXT,
    lastAuditDate       DATE,
    nextAuditDue        DATE,
    responsiblePerson   TEXT,
    notes               TEXT,
    createdAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt           DATETIME
);
INSERT INTO team_logistics_inventory (teamId,itemName,category,quantityOnHand,reorderLevel,supplierId,purchaseDate,costPerUnit,warrantyExpDate,location,barcode,serialNumber,status,lastAuditDate,nextAuditDue,responsiblePerson,notes,updatedAt) VALUES (1,'Carbon_Fiber_Panel','Materials',120,30,200,'2024-11-15',45.00,'2026-11-15','Warehouse_A','CFP123456','SN001','Available','2025-01-10','2025-07-10','Mike','Stock checked','2025-02-01 09:00:00');
INSERT INTO team_logistics_inventory (teamId,itemName,category,quantityOnHand,reorderLevel,supplierId,purchaseDate,costPerUnit,warrantyExpDate,location,barcode,serialNumber,status,lastAuditDate,nextAuditDue,responsiblePerson,notes,updatedAt) VALUES (2,'Telemetry_Radio','Electronics',15,5,210,'2025-02-20',3000.00,'2028-02-20','Warehouse_B','TR987654','SN010','In Use','2025-03-01','2025-09-01','Sara','Calibration pending','2025-03-15 14:30:00');
INSERT INTO team_logistics_inventory (teamId,itemName,category,quantityOnHand,reorderLevel,supplierId,purchaseDate,costPerUnit,warrantyExpDate,location,barcode,serialNumber,status,lastAuditDate,nextAuditDue,responsiblePerson,notes,updatedAt) VALUES (3,'Pit_Stop_Cones','Safety',250,50,220,'2023-08-05',5.00,'2027-08-05','Warehouse_C','PSC555777','SN020','Available','2024-12-20','2025-06-20','John','Ready for upcoming season','2025-01-05 12:15:00');

-- Broadcast Ad Breaks
CREATE TABLE broadcast_ad_breaks (
    breakId             INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId         INTEGER NOT NULL,
    breakNumber         INTEGER NOT NULL,
    startTime           TIME NOT NULL,
    endTime             TIME NOT NULL,
    durationSeconds     INTEGER,
    sponsorId           INTEGER,
    adContentId         INTEGER,
    commercialType      TEXT,
    targetDemo          TEXT,
    ratingImpact        REAL,
    notes               TEXT,
    createdAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt           DATETIME,
    approvedBy          TEXT,
    complianceFlag      INTEGER,
    externalReference   TEXT,
    breakLengthMinutes  INTEGER,
    breakPlatform       TEXT,
    adCreativeName      TEXT,
    adCreativeVersion   TEXT
);
INSERT INTO broadcast_ad_breaks (broadcastId,breakNumber,startTime,endTime,durationSeconds,sponsorId,adContentId,commercialType,targetDemo,ratingImpact,notes,updatedAt,approvedBy,complianceFlag,externalReference,breakLengthMinutes,breakPlatform,adCreativeName,adCreativeVersion) VALUES (5001,1,'00:15:00','00:16:30',90,10,3001,'Video','Adults_18_34',0.12,'First break of race','2025-02-20 10:00:00','Laura',1,'BRK001',2,'TV','FastLane_Ad','v1');
INSERT INTO broadcast_ad_breaks (broadcastId,breakNumber,startTime,endTime,durationSeconds,sponsorId,adContentId,commercialType,targetDemo,ratingImpact,notes,updatedAt,approvedBy,complianceFlag,externalReference,breakLengthMinutes,breakPlatform,adCreativeName,adCreativeVersion) VALUES (5001,2,'00:45:00','00:46:15',75,12,3002,'Image','Fans_25_44',0.09,'Mid‑race break','2025-02-20 10:05:00','Mark',1,'BRK002',2,'TV','GearShift_Ad','v2');
INSERT INTO broadcast_ad_breaks (broadcastId,breakNumber,startTime,endTime,durationSeconds,sponsorId,adContentId,commercialType,targetDemo,ratingImpact,notes,updatedAt,approvedBy,complianceFlag,externalReference,breakLengthMinutes,breakPlatform,adCreativeName,adCreativeVersion) VALUES (5002,1,'00:10:00','00:11:00',60,15,3003,'Carousel','General','0.08','Pre‑race ad','2025-02-21 09:30:00','Nina',1,'BRK003',1,'Online','TurboBoost_Ad','v1');

-- Fan Reward Catalog
CREATE TABLE fan_reward_catalog (
    rewardId            INTEGER PRIMARY KEY AUTOINCREMENT,
    programId           INTEGER NOT NULL,
    rewardName          TEXT NOT NULL,
    description         TEXT,
    pointsRequired      INTEGER,
    tier                TEXT,
    validityStart       DATE,
    validityEnd         DATE,
    stockQuantity       INTEGER,
    redemptionLimit     INTEGER,
    imageUrl            TEXT,
    category            TEXT,
    eligibilityCriteria TEXT,
    termsUrl            TEXT,
    createdAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt           DATETIME,
    activeFlag          INTEGER,
    sortOrder           INTEGER,
    externalId          TEXT,
    redemptionMethod    TEXT,
    notes               TEXT
);
INSERT INTO fan_reward_catalog (programId,rewardName,description,pointsRequired,tier,validityStart,validityEnd,stockQuantity,redemptionLimit,imageUrl,category,eligibilityCriteria,termsUrl,updatedAt,activeFlag,sortOrder,externalId,redemptionMethod,notes) VALUES (1,'Grand_Prix_Ticket','Access_to_main_event',15000,'Platinum','2025-06-01','2025-06-30',500,1,'https://img.com/ticket.png','Tickets','Loyalty_1Year','https://terms.com/ticket','2025-02-01 08:00:00',1,1,'RWD001','Digital','Limited availability');
INSERT INTO fan_reward_catalog (programId,rewardName,description,pointsRequired,tier,validityStart,validityEnd,stockQuantity,redemptionLimit,imageUrl,category,eligibilityCriteria,termsUrl,updatedAt,activeFlag,sortOrder,externalId,redemptionMethod,notes) VALUES (1,'Official_Merch_Kit','Team_gear_including_jersey',8000,'Gold','2025-07-01','2025-07-31',2000,5,'https://img.com/merch.png','Merchandise','All_members','https://terms.com/merch','2025-02-01 08:30:00',1,2,'RWD002','Physical','Ships worldwide');
INSERT INTO fan_reward_catalog (programId,rewardName,description,pointsRequired,tier,validityStart,validityEnd,stockQuantity,redemptionLimit,imageUrl,category,eligibilityCriteria,termsUrl,updatedAt,activeFlag,sortOrder,externalId,redemptionMethod,notes) VALUES (1,'Virtual_Race_Simulation','One_hour_simulation_experience',5000,'Silver','2025-08-01','2025-08-31',1000,2,'https://img.com/sim.png','Experiences','Active_members','https://terms.com/sim','2025-02-01 09:00:00',1,3,'RWD003','Digital','VR_ready');

-- Energy Consumption Forecast
CREATE TABLE energy_consumption_forecast (
    forecastId          INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId             INTEGER NOT NULL,
    forecastingDate     DATE NOT NULL,
    forecastMonth       TEXT NOT NULL,
    predictedKWh        REAL,
    predictedCost       REAL,
    peakDemandKW        REAL,
    offPeakDemandKW     REAL,
    weatherFactor       REAL,
    eventFactor         REAL,
    historicalGrowthRate REAL,
    confidenceIntervalLow REAL,
    confidenceIntervalHigh REAL,
    modelVersion        TEXT,
    createdBy           TEXT,
    createdAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    approvedBy          TEXT,
    approvedAt          DATETIME,
    notes               TEXT,
    dataSource          TEXT,
    adjustedFlag        INTEGER
);
INSERT INTO energy_consumption_forecast (venueId,forecastingDate,forecastMonth,predictedKWh,predictedCost,peakDemandKW,offPeakDemandKW,weatherFactor,eventFactor,historicalGrowthRate,confidenceIntervalLow,confidenceIntervalHigh,modelVersion,createdBy,approvedBy,approvedAt,notes,dataSource,adjustedFlag) VALUES (1,'2025-06-01','2025-06',250000.0,30000.0,500.0,300.0,1.05,1.10,0.02,240000.0,260000.0,'v2.1','Emily','John','2025-02-10','Forecast includes upcoming race','Internal','0');
INSERT INTO energy_consumption_forecast (venueId,forecastingDate,forecastMonth,predictedKWh,predictedCost,peakDemandKW,offPeakDemandKW,weatherFactor,eventFactor,historicalGrowthRate,confidenceIntervalLow,confidenceIntervalHigh,modelVersion,createdBy,approvedBy,approvedAt,notes,dataSource,adjustedFlag) VALUES (2,'2025-07-01','2025-07',300000.0,36000.0,550.0,320.0,0.95,1.00,0.025,285000.0,315000.0,'v2.1','Emily','John','2025-02-12','Adjusted for cooler temperatures','Internal','1');
INSERT INTO energy_consumption_forecast (venueId,forecastingDate,forecastMonth,predictedKWh,predictedCost,peakDemandKW,offPeakDemandKW,weatherFactor,eventFactor,historicalGrowthRate,confidenceIntervalLow,confidenceIntervalHigh,modelVersion,createdBy,approvedBy,approvedAt,notes,dataSource,adjustedFlag) VALUES (3,'2025-08-01','2025-08',275000.0,33000.0,520.0,310.0,1.00,1.05,0.022,265000.0,285000.0,'v2.1','Emily','John','2025-02-15','Includes projected fan attendance','Internal','0');

-- Medical Equipment Maintenance
CREATE TABLE medical_equipment_maintenance (
    maintenanceId       INTEGER PRIMARY KEY AUTOINCREMENT,
    equipmentId         INTEGER NOT NULL,
    equipmentName       TEXT NOT NULL,
    maintenanceDate     DATE NOT NULL,
    technicianId        INTEGER,
    maintenanceType     TEXT,
    partsReplaced       TEXT,
    downtimeHours       REAL,
    nextDueDate         DATE,
    cost                REAL,
    complianceStatus    TEXT,
    safetyCheckPassed   INTEGER,
    notes               TEXT,
    createdAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt           DATETIME,
    warrantyStatus      TEXT,
    serviceProvider     TEXT,
    calibrationDue      DATE,
    firmwareVersion     TEXT,
    lastCalibrationDate DATE,
    externalReference   TEXT
);
INSERT INTO medical_equipment_maintenance (equipmentId,equipmentName,maintenanceDate,technicianId,maintenanceType,partsReplaced,downtimeHours,nextDueDate,cost,complianceStatus,safetyCheckPassed,notes,updatedAt,warrantyStatus,serviceProvider,calibrationDue,firmwareVersion,lastCalibrationDate,externalReference) VALUES (501,'Defibrillator_X1','2025-03-20',301,'Preventive','Battery_Pack',2.0,'2025-09-20',150.00,'Compliant',1,'No issues detected','2025-03-20 09:00:00','Valid','MedTech Services','2025-09-20','v3.4','2025-01-15','MEQ001');
INSERT INTO medical_equipment_maintenance (equipmentId,equipmentName,maintenanceDate,technicianId,maintenanceType,partsReplaced,downtimeHours,nextDueDate,cost,complianceStatus,safetyCheckPassed,notes,updatedAt,warrantyStatus,serviceProvider,calibrationDue,firmwareVersion,lastCalibrationDate,externalReference) VALUES (502,'Ventilator_Z2','2025-04-10',302,'Corrective','Air_Filter,Valve',4.5,'2025-10-10',450.00,'Compliant',1,'Replaced worn valve','2025-04-10 11:30:00','Valid','HealthEquip Co','2025-10-10','v5.1','2025-02-20','MEQ002');
INSERT INTO medical_equipment_maintenance (equipmentId,equipmentName,maintenanceDate,technicianId,maintenanceType,partsReplaced,downtimeHours,nextDueDate,cost,complianceStatus,safetyCheckPassed,notes,updatedAt,warrantyStatus,serviceProvider,calibrationDue,firmwareVersion,lastCalibrationDate,externalReference) VALUES (503,'ECG_Machine_A3','2025-02-28',303,'Preventive','Lead_Wires',1.0,'2025-08-28',200.00,'Compliant',1,'Lead calibration performed','2025-02-28 08:45:00','Expired','MediCare Ltd','2025-08-28','v2.9','2024-12-05','MEQ003');

-- Digital Content Tagging
CREATE TABLE digital_content_tagging (
    tagId               INTEGER PRIMARY KEY AUTOINCREMENT,
    contentId           INTEGER NOT NULL,
    contentType         TEXT NOT NULL,
    tagKey              TEXT NOT NULL,
    tagValue            TEXT,
    createdBy            TEXT,
    createdAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedBy            TEXT,
    updatedAt            DATETIME,
    confidenceScore      REAL,
    sourceSystem        TEXT,
    isAutomated         INTEGER,
    notes               TEXT,
    relevanceScore      REAL,
    moderationStatus    TEXT,
    moderationComments  TEXT,
    version             TEXT,
    expirationDate      DATE,
    parentTagId         INTEGER,
    relatedContentIds   TEXT,
    taxonomy            TEXT
);
INSERT INTO digital_content_tagging (contentId,contentType,tagKey,tagValue,createdBy,updatedBy,confidenceScore,sourceSystem,isAutomated,notes,relevanceScore,moderationStatus,moderationComments,version,expirationDate,parentTagId,relatedContentIds,taxonomy) VALUES (1001,'Video','Genre','Motorsport','Alice','Bob',0.98,'CMS','1','Auto‑generated','0.95','Approved','', 'v1','2026-01-01',NULL,'2002,2003','Entertainment>Sports>Motorsport');
INSERT INTO digital_content_tagging (contentId,contentType,tagKey,tagValue,createdBy,updatedBy,confidenceScore,sourceSystem,isAutomated,notes,relevanceScore,moderationStatus,moderationComments,version,expirationDate,parentTagId,relatedContentIds,taxonomy) VALUES (1002,'Article','Topic','Safety','Carol','Dave',0.92,'CMS','1','Manual entry','0.88','Pending','Needs review','v1','2025-12-31',NULL,'2004','Info>Safety');
INSERT INTO digital_content_tagging (contentId,contentType,tagKey,tagValue,createdBy,updatedBy,confidenceScore,sourceSystem,isAutomated,notes,relevanceScore,moderationStatus,moderationComments,version,expirationDate,parentTagId,relatedContentIds,taxonomy) VALUES (1003,'Image','Camera','Canon_EOS_R5','Eve','Eve',0.85,'AssetMgr','0','Uploaded by photographer','0.80','Approved','', 'v2','2025-11-30',NULL,'2005','Media>Photography');

-- Transport Route Schedules
CREATE TABLE transport_route_schedules (
    scheduleId          INTEGER PRIMARY KEY AUTOINCREMENT,
    routeId             INTEGER NOT NULL,
    vehicleId           INTEGER NOT NULL,
    departureTime       TIME NOT NULL,
    arrivalTime         TIME NOT NULL,
    estimatedDuration   INTEGER,
    distanceKm          REAL,
    driverId            INTEGER,
    vehicleType         TEXT,
    capacity            INTEGER,
    occupiedSeats       INTEGER,
    status              TEXT,
    weatherImpact       TEXT,
    trafficLevel        TEXT,
    notes               TEXT,
    createdAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt           DATETIME,
    lastModifiedBy      TEXT,
    routeVersion        TEXT,
    complianceFlag      INTEGER,
    externalSystemId    TEXT
);
INSERT INTO transport_route_schedules (routeId,vehicleId,departureTime,arrivalTime,estimatedDuration,distanceKm,driverId,vehicleType,capacity,occupiedSeats,status,weatherImpact,trafficLevel,notes,updatedAt,lastModifiedBy,routeVersion,complianceFlag,externalSystemId) VALUES (301,401,'08:00:00','08:45:00',45,30.5,501,'Shuttle',50,45,'OnTime','Clear','Low','Morning shuttle to venue','2025-02-01 07:30:00','LogisticsTeam','v1',1,'EXT_R001');
INSERT INTO transport_route_schedules (routeId,vehicleId,departureTime,arrivalTime,estimatedDuration,distanceKm,driverId,vehicleType,capacity,occupiedSeats,status,weatherImpact,trafficLevel,notes,updatedAt,lastModifiedBy,routeVersion,complianceFlag,externalSystemId) VALUES (302,402,'12:30:00','13:20:00',50,40.0,502,'Bus',60,55,'Delayed','Rain','Medium','Afternoon bus delayed due to traffic','2025-02-01 12:00:00','LogisticsTeam','v1',0,'EXT_R002');
INSERT INTO transport_route_schedules (routeId,vehicleId,departureTime,arrivalTime,estimatedDuration,distanceKm,driverId,vehicleType,capacity,occupiedSeats,status,weatherImpact,trafficLevel,notes,updatedAt,lastModifiedBy,routeVersion,complianceFlag,externalSystemId) VALUES (303,403,'18:15:00','19:00:00',45,35.2,503,'Van',20,18,'OnTime','Clear','Low','Evening van for staff','2025-02-01 17:45:00','LogisticsTeam','v1',1,'EXT_R003');