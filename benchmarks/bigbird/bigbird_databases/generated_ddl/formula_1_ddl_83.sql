-- engine_test_stats
CREATE TABLE engine_test_stats (
    engineTestId INTEGER PRIMARY KEY AUTOINCREMENT,
    testDate DATE,
    circuitId INTEGER,
    engineManufacturer TEXT,
    horsepower REAL,
    torque REAL,
    rpmLimit INTEGER,
    fuelType TEXT,
    testDurationMinutes INTEGER,
    tempCelsius REAL,
    humidityPercent REAL,
    emissionCO REAL,
    emissionNOx REAL,
    wearScore REAL,
    reliabilityScore REAL,
    notes TEXT,
    oilPressure REAL,
    coolantTemp REAL,
    boostPressure REAL,
    throttlePosition REAL,
    vibrationLevel REAL,
    testOutcome TEXT
);
INSERT INTO engine_test_stats VALUES (1,'2023-03-15',1,'Mercedes',750.5,650.2,15000,'Petrol',45,23.5,45.0,0.12,0.03,8.5,9.2,'Initial run',85.0,90.5,1.2,75.0,0.02,'Pass');
INSERT INTO engine_test_stats VALUES (2,'2023-04-10',2,'Ferrari',720.0,620.0,14800,'Petrol',50,22.0,40.0,0.10,0.025,8.0,8.8,'Follow up',84.5,89.0,1.1,78.0,0.03,'Pass');
INSERT INTO engine_test_stats VALUES (3,'2023-05-05',3,'Renault',680.0,600.0,14500,'Hybrid',55,21.5,38.5,0.09,0.02,7.8,8.5,'Final test',83.0,88.5,1.0,80.0,0.01,'Fail');

-- aerodynamic_analysis
CREATE TABLE aerodynamic_analysis (
    analysisId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    carModel TEXT,
    windTunnelSpeed REAL,
    dragCoefficient REAL,
    downforce REAL,
    frontWingAngle REAL,
    rearWingAngle REAL,
    diffuserAngle REAL,
    sidepodHeight REAL,
    noseLength REAL,
    floorHeight REAL,
    testDate DATE,
    engineerName TEXT,
    simulationSoftware TEXT,
    meshResolution INTEGER,
    cpuHoursUsed INTEGER,
    notes TEXT,
    resultScore REAL,
    airDensity REAL,
    temperatureC REAL,
    humidityPercent REAL
);
INSERT INTO aerodynamic_analysis VALUES (1,101,'MC20',30.0,0.32,1500.0,15.0,10.0,5.0,12.5,1.2,0.5,'2023-02-20','Alice Smith','CFDPro',250000,120,'Baseline run',85.5,1.225,22.0,55.0);
INSERT INTO aerodynamic_analysis VALUES (2,102,'SF23',32.5,0.30,1550.0,14.0,11.0,5.5,13.0,1.1,0.45,'2023-03-10','Bob Johnson','AeroSim',260000,130,'Adjusted rear wing',88.0,1.220,21.5,58.0);
INSERT INTO aerodynamic_analysis VALUES (3,103,'RB19',31.0,0.31,1525.0,13.5,12.0,5.2,12.8,1.15,0.48,'2023-04-05','Carol Lee','FlowStar',255000,125,'Optimized diffuser',87.2,1.218,22.5,56.0);

-- pit_stop_performance
CREATE TABLE pit_stop_performance (
    pitStopPerfId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    driverId INTEGER,
    stopNumber INTEGER,
    lap INTEGER,
    entryTime TEXT,
    exitTime TEXT,
    durationMilliseconds INTEGER,
    tyreCompound TEXT,
    tyreChangeCount INTEGER,
    fuelAddedLiters REAL,
    crewMemberCount INTEGER,
    pitCrewLeader TEXT,
    pitBoxNumber INTEGER,
    equipmentUsed TEXT,
    notes TEXT,
    penaltyFlag TEXT,
    pitLaneSpeed REAL,
    weatherCondition TEXT,
    temperatureC REAL,
    humidityPercent REAL
);
INSERT INTO pit_stop_performance VALUES (1,101,11,1,12,'13:05','13:07',2500,'Soft',4,15.0,5,'John Doe',23,'AirJack',NULL,'None',80.0,'Dry',23.0,40.0);
INSERT INTO pit_stop_performance VALUES (2,101,12,2,18,'13:45','13:47',2400,'Medium',4,12.5,5,'Mike Roe',24,'WheelGun',NULL,'None',78.0,'Dry',23.0,40.0);
INSERT INTO pit_stop_performance VALUES (3,102,13,1,10,'14:10','14:12',2600,'Hard',4,18.0,5,'Steve Kim',22,'AirJack',NULL,'None',82.0,'Wet',19.0,85.0);

-- fan_experience_zone
CREATE TABLE fan_experience_zone (
    zoneId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    zoneName TEXT,
    areaSqM REAL,
    capacity INTEGER,
    interactiveFeatures TEXT,
    avgDwellTimeSeconds INTEGER,
    footfallDaily INTEGER,
    sponsorName TEXT,
    sponsorLevel TEXT,
    wifiSSID TEXT,
    wifiBandwidthMbps REAL,
    lightingType TEXT,
    soundSystemType TEXT,
    concessionCount INTEGER,
    merchandiseStallCount INTEGER,
    accessibilityRating INTEGER,
    maintenanceSchedule TEXT,
    openingTime TEXT,
    closingTime TEXT,
    notes TEXT,
    securityRating INTEGER
);
INSERT INTO fan_experience_zone VALUES (1,1,'Pit Lane Plaza',1500.0,2000,'AR Games, VR Simulators',300,15000,'Shell','Gold','PitLaneWiFi',150.0,'LED','Dolby',8,5,9,'Monthly','09:00','22:00','High traffic area',8);
INSERT INTO fan_experience_zone VALUES (2,1,'Grandstand Lounge',1200.0,1800,'Live Stats Boards',250,12000,'RedBull','Platinum','LoungeWiFi',200.0,'LED','Bose',6,4,10,'Quarterly','10:00','23:00','Premium seating',9);
INSERT INTO fan_experience_zone VALUES (3,2,'Family Zone',800.0,1500,'Kids Play Area, Photo Booth',180,8000,'CocaCola','Silver','FamilyWiFi',100.0,'Fluorescent','JBL',4,3,8,'BiMonthly','08:30','21:30','Family friendly',7);

-- venue_security_log
CREATE TABLE venue_security_log (
    securityLogId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    eventDate DATE,
    shift TEXT,
    guardId INTEGER,
    checkpointName TEXT,
    incidentsReported INTEGER,
    incidentDetails TEXT,
    responseTimeSeconds INTEGER,
    camerasActive INTEGER,
    alarmTriggered INTEGER,
    doorStatus TEXT,
    accessCardId INTEGER,
    notes TEXT,
    supervisorName TEXT,
    patrolRoute TEXT,
    weatherCondition TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    complianceScore REAL
);
INSERT INTO venue_security_log VALUES (1,1,'2023-06-01','Morning',101,'Main Gate',0,NULL,30,12,0,'Closed',5001,NULL,'Laura Green','Perimeter Loop','Sunny',28.0,35.0,98.5);
INSERT INTO venue_security_log VALUES (2,1,'2023-06-01','Evening',102,'Parking Lot',1,'Unauthorized vehicle',45,12,1,'Open',5002,'Investigated','Lot Patrol','Cloudy',24.0,55.0,96.0);
INSERT INTO venue_security_log VALUES (3,2,'2023-06-02','Night',103,'North Entrance',0,NULL,25,10,0,'Closed',5003,NULL,'Mark Brown','North Loop','Clear',22.0,40.0,99.0);

-- sustainability_metric
CREATE TABLE sustainability_metric (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    metricDate DATE,
    carbonEmissionTonnes REAL,
    waterUsageCubicMeters REAL,
    wasteGeneratedKg REAL,
    recyclingRatePercent REAL,
    energyConsumptionMWh REAL,
    renewableEnergyPercent REAL,
    noiseLevelDb REAL,
    airQualityIndex INTEGER,
    vegetationCoveragePercent REAL,
    sustainabilityScore REAL,
    notes TEXT,
    auditorName TEXT,
    complianceStatus TEXT,
    initiativesImplemented TEXT,
    targetCarbonEmission REAL,
    targetWasteReductionPercent REAL,
    targetEnergyEfficiency REAL,
    certification TEXT
);
INSERT INTO sustainability_metric VALUES (1,1,'2023-01-31',12.5,3500.0,800.0,45.0,500.0,30.0,72.0,85,65.0,78.0,'Yearly review','Emily White','Compliant','SolarPanels,RecycleProgram',10.0,50.0,0.85,'ISO14001');
INSERT INTO sustainability_metric VALUES (2,2,'2023-01-31',10.8,3000.0,750.0,48.0,470.0,35.0,70.0,90,68.0,80.0,'Yearly review','James Black','Compliant','WindTurbines,ZeroWaste',9.5,55.0,0.88,'ISO14001');
INSERT INTO sustainability_metric VALUES (3,3,'2023-01-31',13.2,3800.0,820.0,42.0,520.0,28.0,73.0,80,63.0,76.0,'Yearly review','Sofia Green','Compliant','LEDLighting,WaterReuse',11.0,48.0,0.82,'ISO14001');

-- broadcast_advertiser_detail
CREATE TABLE broadcast_advertiser_detail (
    advertiserId INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId INTEGER,
    advertiserName TEXT,
    campaignName TEXT,
    startDate DATE,
    endDate DATE,
    adSlot TEXT,
    durationSeconds INTEGER,
    costUSD REAL,
    impressions INTEGER,
    clickThroughRate REAL,
    targetAudience TEXT,
    productCategory TEXT,
    creativeType TEXT,
    agencyName TEXT,
    contactEmail TEXT,
    contractNumber TEXT,
    paymentStatus TEXT,
    notes TEXT,
    region TEXT,
    language TEXT,
    adFrequencyPerHour INTEGER
);
INSERT INTO broadcast_advertiser_detail VALUES (1,1001,'Apple','iPhone Launch','2023-09-01','2023-09-15','Primetime','30',500000.0,2000000,0.025,'Tech Enthusiasts','Electronics','Video','MediaWorks','contact@apple.com','CN001','Paid','High impact campaign','NorthAmerica','English',5);
INSERT INTO broadcast_advertiser_detail VALUES (2,1002,'Toyota','Hybrid Drive','2023-10-01','2023-10-20','Midday','45',350000.0,1500000,0.018,'Eco Drivers','Automotive','Animated','AdCreative','contact@toyota.com','CN002','Pending','Seasonal push','Europe','English',3);
INSERT INTO broadcast_advertiser_detail VALUES (3,1003,'CocaCola','Summer Refresh','2023-07-01','2023-07-31','Evening','15',250000.0,1800000,0.022,'General','Beverage','Static','CreativeHub','contact@cocacola.com','CN003','Paid','Summer branding','Asia','Mandarin',4);

-- logistics_fuel_shipment
CREATE TABLE logistics_fuel_shipment (
    shipmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    supplierName TEXT,
    fuelType TEXT,
    volumeLiters REAL,
    shipmentDate DATE,
    arrivalTime TEXT,
    departureTime TEXT,
    temperatureC REAL,
    pressureBar REAL,
    transporterId INTEGER,
    driverName TEXT,
    vehiclePlate TEXT,
    sealNumber TEXT,
    complianceDoc TEXT,
    notes TEXT,
    costUSD REAL,
    fuelDensityKgPerL REAL,
    octaneRating INTEGER,
    sulfurContentPPM REAL,
    customsClearanceStatus TEXT
);
INSERT INTO logistics_fuel_shipment VALUES (1,101,'Shell','Petrol',50000.0,'2023-06-10','08:00','10:00',15.0,1.5,301,'Alan Turner','AB123CD','SN001','DOC123','On time',45000.0,0.75,95,10.5,'Cleared');
INSERT INTO logistics_fuel_shipment VALUES (2,102,'BP','Diesel',60000.0,'2023-07-12','09:30','11:45',16.0,1.6,302,'Brian Lee','CD456EF','SN002','DOC124','Delayed due to traffic',54000.0,0.78,98,12.0,'Cleared');
INSERT INTO logistics_fuel_shipment VALUES (3,103,'Total','Hybrid',45000.0,'2023-08-15','07:45','09:30',14.5,1.4,303,'Clara Zhang','EF789GH','SN003','DOC125','No issues',41000.0,0.73,92,9.8,'Pending');

-- driver_fitness_assessment
CREATE TABLE driver_fitness_assessment (
    assessmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    assessmentDate DATE,
    weightKg REAL,
    heightCm REAL,
    bodyFatPercent REAL,
    VO2Max REAL,
    reactionTimeMs REAL,
    heartRateResting INTEGER,
    heartRateMax INTEGER,
    flexibilityScore REAL,
    strengthScore REAL,
    enduranceScore REAL,
    injuryHistory TEXT,
    nutritionPlan TEXT,
    sleepHoursPerNight REAL,
    hydrationLitersPerDay REAL,
    stressLevel INTEGER,
    notes TEXT,
    assessorName TEXT,
    clinicLocation TEXT,
    followUpDate DATE
);
INSERT INTO driver_fitness_assessment VALUES (1,11,'2023-05-01',78.5,180.0,12.0,55.0,210.0,50,190,8.5,9.0,8.8,'None','HighProtein','7.5','2.5',3,'Fit','DrSmith','TeamClinic','2023-06-01');
INSERT INTO driver_fitness_assessment VALUES (2,12,'2023-05-03',82.0,182.0,13.5,52.0,215.0,52,188,8.0,8.5,8.5,'AnkleSprain','Balanced','7.0','2.7',4,'Recovering','DrJones','TeamClinic','2023-06-05');
INSERT INTO driver_fitness_assessment VALUES (3,13,'2023-05-05',76.0,178.0,11.5,57.0,205.0,48,192,9.0,9.2,9.0,'None','LowCarb','8.0','2.8',2,'Excellent','DrLee','TeamClinic','2023-06-10');

-- circuit_environment_sensor
CREATE TABLE circuit_environment_sensor (
    sensorId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    sensorType TEXT,
    installDate DATE,
    latitude REAL,
    longitude REAL,
    elevationM INTEGER,
    measurementFrequencyHz INTEGER,
    calibrationDate DATE,
    status TEXT,
    lastReadingValue REAL,
    unit TEXT,
    notes TEXT,
    maintenanceDueDate DATE,
    manufacturer TEXT,
    firmwareVersion TEXT,
    batteryLevelPercent INTEGER,
    connectivityType TEXT,
    dataEndpointURL TEXT,
    alertThresholdHigh REAL,
    alertThresholdLow REAL,
    sensorAlias TEXT
);
INSERT INTO circuit_environment_sensor VALUES (1,1,'Temperature','2022-01-15',34.5678,-118.1234,250,1,'2023-01-01','Active',23.5,'C','Main pit lane','2023-12-31','EnviroTech','v1.2',95,'WiFi','http://data.circuit1/temp','30.0','15.0','TempPitLane');
INSERT INTO circuit_environment_sensor VALUES (2,2,'Noise','2022-02-20',35.6789,-119.2345,260,1,'2023-02-01','Active',68.0,'dB','Grandstand area','2024-01-15','SoundSensors','v2.0',90,'Cellular','http://data.circuit2/noise','80.0','50.0','NoiseGrandstand');
INSERT INTO circuit_environment_sensor VALUES (3,3,'AirQuality','2022-03-10',36.7890,-120.3456,270,1,'2023-03-01','Active',42.0,'AQI','Entry gate','2024-02-20','AirMon','v3.1',92,'LoRa','http://data.circuit3/air','100.0','30.0','AQIGate');