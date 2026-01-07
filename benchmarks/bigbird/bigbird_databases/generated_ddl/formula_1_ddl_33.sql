-- Table for contracts with catering vendors used for hospitality services
CREATE TABLE catering_vendor_contracts (
    contractId INTEGER PRIMARY KEY AUTOINCREMENT,
    vendorId INTEGER,
    vendorName TEXT,
    contractStartDate DATE,
    contractEndDate DATE,
    contractValue REAL,
    contractCurrency TEXT,
    cuisineType TEXT,
    mealsPerEvent INTEGER,
    averageCostPerMeal REAL,
    paymentTerms TEXT,
    serviceLevelAgreement TEXT,
    contractStatus TEXT,
    renewalOption TEXT,
    contactPerson TEXT,
    contactPhone TEXT,
    contactEmail TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    auditUser TEXT,
    auditTimestamp DATETIME
);
INSERT INTO catering_vendor_contracts VALUES (1,101,'VendorA','2023-01-01','2023-12-31',250000,'USD','Italian',1500,165.5,'Net30','Gold','Active','Auto','JohnDoe','5551234','john@example.com','First year contract','2023-01-01 08:00:00','2023-01-01 08:00:00','system','2023-01-01 08:00:00');
INSERT INTO catering_vendor_contracts VALUES (2,102,'VendorB','2023-02-15','2024-02-14',300000,'USD','Asian',1800,166.7,'Net45','Silver','Pending','Manual','JaneSmith','5555678','jane@example.com','Renewal pending','2023-02-15 09:30:00','2023-02-15 09:30:00','system','2023-02-15 09:30:00');
INSERT INTO catering_vendor_contracts VALUES (3,103,'VendorC','2022-07-01','2023-06-30',200000,'EUR','Mediterranean',1400,142.3,'Net15','Bronze','Expired','None','MikeBrown','5559012','mike@example.com','Contract completed','2022-07-01 07:45:00','2023-07-01 07:45:00','system','2023-07-01 07:45:00');

-- Table defining advertising slots located along the race track
CREATE TABLE trackside_advertising_slots (
    slotId INTEGER PRIMARY KEY AUTOINCREMENT,
    locationDescriptor TEXT,
    startMeter INTEGER,
    endMeter INTEGER,
    widthCm INTEGER,
    heightCm INTEGER,
    surfaceType TEXT,
    illumination TEXT,
    maxWeightKg INTEGER,
    rentalPrice REAL,
    currency TEXT,
    availableFrom DATE,
    availableTo DATE,
    reserved BOOLEAN,
    clientId INTEGER,
    clientName TEXT,
    contractId INTEGER,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    auditUser TEXT,
    auditTimestamp DATETIME,
    exposureRating INTEGER
);
INSERT INTO trackside_advertising_slots VALUES (1,'Turn1',150,170,300,200,'Concrete','LED',500,12000,'USD','2023-03-01','2023-09-30',0,201,'AutoCorp',45,'Prime corner slot','2023-03-01 08:00:00','2023-03-01 08:00:00','admin','2023-03-01 08:00:00',9);
INSERT INTO trackside_advertising_slots VALUES (2,'StraightA',500,550,350,250,'Asphalt','None',400,8500,'USD','2023-04-15','2023-12-31',1,202,'TechNova',46,'High‑visibility straight','2023-04-15 09:15:00','2023-04-15 09:15:00','admin','2023-04-15 09:15:00',7);
INSERT INTO trackside_advertising_slots VALUES (3,'PitLaneEntry',20,45,250,150,'Concrete','Fluorescent',300,6000,'USD','2023-05-01','2024-04-30',0,203,'FuelMax',47,'Pit lane advertising','2023-05-01 07:30:00','2023-05-01 07:30:00','admin','2023-05-01 07:30:00',6);

-- Table recording enrollment of fans into loyalty programs
CREATE TABLE fan_loyalty_program_enrollments (
    enrollmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    programId INTEGER,
    enrollmentDate DATE,
    tier TEXT,
    pointsBalance INTEGER,
    expirationDate DATE,
    communicationPref TEXT,
    marketingOptIn BOOLEAN,
    lastActivityDate DATE,
    totalVisits INTEGER,
    averageSpend REAL,
    preferredTrack TEXT,
    primaryContactMethod TEXT,
    status TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    auditUser TEXT,
    auditTimestamp DATETIME,
    sourceChannel TEXT,
    referralCode TEXT
);
INSERT INTO fan_loyalty_program_enrollments VALUES (1,1001,10,'2023-01-10','Gold',5420,'2024-01-09','Email',1,'2023-12-20',25,135.75,'Silverstone','Email','Active','High engagement fan','2023-01-10 08:00:00','2023-12-20 10:00:00','system','2023-12-20 10:00:00','Website','REF123');
INSERT INTO fan_loyalty_program_enrollments VALUES (2,1002,10,'2023-02-05','Silver',2300,'2024-02-04','SMS',1,'2023-11-15',12,98.20,'Monaco','SMS','Active','Frequent visitor','2023-02-05 09:30:00','2023-11-15 14:20:00','system','2023-11-15 14:20:00','MobileApp','REF456');
INSERT INTO fan_loyalty_program_enrollments VALUES (3,1003,11,'2023-03-12','Bronze',800,'2024-03-11','Push',0,'2023-10-02',5,45.60,'Spa','Push','Inactive','Low activity','2023-03-12 07:45:00','2023-10-02 11:15:00','system','2023-10-02 11:15:00','Email','REF789');

-- Table storing fuel efficiency records for official race vehicles
CREATE TABLE vehicle_fuel_efficiency_records (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    vehicleId INTEGER,
    vehicleType TEXT,
    raceId INTEGER,
    lapNumber INTEGER,
    fuelConsumedLiters REAL,
    distanceKm REAL,
    efficiencyKmPerLitre REAL,
    avgSpeedKph REAL,
    weatherCondition TEXT,
    trackTemperatureC REAL,
    ambientTemperatureC REAL,
    humidityPercent REAL,
    notes TEXT,
    recordedAt DATETIME,
    createdAt DATETIME,
    updatedAt DATETIME,
    auditUser TEXT,
    auditTimestamp DATETIME,
    fuelProvider TEXT,
    fuelGrade TEXT,
    measurementMethod TEXT
);
INSERT INTO vehicle_fuel_efficiency_records VALUES (1,501,'PaddockCar',101,12,8.5,150.0,17.65,210.5,'Sunny',28.0,22.0,45.0,'Standard lap','2023-06-01 10:00:00','2023-06-01 10:00:00','2023-06-01 10:00:00','system','2023-06-01 10:00:00','FuelCo','Premium','Onboard');
INSERT INTO vehicle_fuel_efficiency_records VALUES (2,502,'SafetyCar',101,5,4.2,80.0,19.05,180.0,'Cloudy',24.0,20.0,55.0,'Short stint','2023-06-01 10:15:00','2023-06-01 10:15:00','2023-06-01 10:15:00','system','2023-06-01 10:15:00','FuelCo','Standard','External');
INSERT INTO vehicle_fuel_efficiency_records VALUES (3,503,'MedicalCar',102,3,3.1,60.0,19.35,170.0,'Rain',18.0,16.0,80.0,'Emergency run','2023-07-15 14:30:00','2023-07-15 14:30:00','2023-07-15 14:30:00','system','2023-07-15 14:30:00','FuelCo','Standard','Onboard');

-- Table describing audio tracks used in broadcast productions
CREATE TABLE broadcast_audio_tracks (
    trackId INTEGER PRIMARY KEY AUTOINCREMENT,
    trackName TEXT,
    composer TEXT,
    durationSeconds INTEGER,
    genre TEXT,
    usageType TEXT,
    associatedRaceId INTEGER,
    language TEXT,
    licensingStatus TEXT,
    copyrightHolder TEXT,
    fileFormat TEXT,
    bitrateKbps INTEGER,
    sampleRateHz INTEGER,
    channelConfig TEXT,
    volumeLevelDb REAL,
    isDefault BOOLEAN,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    auditUser TEXT,
    auditTimestamp DATETIME,
    regionRestrictions TEXT,
    externalReferenceId TEXT
);
INSERT INTO broadcast_audio_tracks VALUES (1,'RaceStart','JohnDoe',45,'Electronic','Intro',101,'English','Cleared','JohnDoe Productions','MP3',192,44100,'Stereo',-3.2,1,'Main intro track','2023-01-01 08:00:00','2023-01-01 08:00:00','admin','2023-01-01 08:00:00','None','REF001');
INSERT INTO broadcast_audio_tracks VALUES (2,'VictoryLap','JaneSmith',30,'Orchestral','Closing',101,'English','Cleared','JaneMusic Ltd','WAV',1411,48000,'Stereo',-2.0,0,'Victory celebration','2023-01-01 08:05:00','2023-01-01 08:05:00','admin','2023-01-01 08:05:00','EU','REF002');
INSERT INTO broadcast_audio_tracks VALUES (3,'PitLaneAction','MikeBrown',20,'Rock','Ambient',102,'English','Cleared','RockHouse','AAC',256,44100,'Stereo',-4.5,0,'Pit lane background','2023-02-01 09:00:00','2023-02-01 09:00:00','admin','2023-02-01 09:00:00','None','REF003');

-- Table for audits of waste management during events
CREATE TABLE environmental_waste_audit (
    auditId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER,
    venueId INTEGER,
    auditDate DATE,
    totalWasteKg REAL,
    recyclableKg REAL,
    compostKg REAL,
    hazardousKg REAL,
    landfillKg REAL,
    wasteDiversionRatePercent REAL,
    auditorName TEXT,
    auditorCompany TEXT,
    certificationLevel TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    auditUser TEXT,
    auditTimestamp DATETIME,
    wasteProcessingPartner TEXT,
    contractReference TEXT,
    complianceStatus TEXT,
    followUpRequired BOOLEAN
);
INSERT INTO environmental_waste_audit VALUES (1,101,10,'2023-03-15',1200.5,800.2,250.0,30.0,120.3,66.7,'AliceGreen','EcoAudit Ltd','Level2','Good segregation','2023-03-15 08:00:00','2023-03-15 08:00:00','system','2023-03-15 08:00:00','GreenWasteCo','WR001','Compliant',0);
INSERT INTO environmental_waste_audit VALUES (2,102,11,'2023-04-20',950.0,600.0,200.0,20.0,130.0,73.7,'BobBlue','SustainCheck','Level3','Excellent performance','2023-04-20 09:30:00','2023-04-20 09:30:00','system','2023-04-20 09:30:00','EcoCycle','WR002','Compliant',0);
INSERT INTO environmental_waste_audit VALUES (3,103,12,'2023-05-10',1300.0,700.0,300.0,40.0,260.0,53.8,'CarolRed','EnviroAudit','Level1','Needs improvement in hazardous handling','2023-05-10 07:45:00','2023-05-10 07:45:00','system','2023-05-10 07:45:00','CleanEarth','WR003','Non‑Compliant',1);

-- Table assigning security staff to specific track zones
CREATE TABLE security_staff_assignments (
    assignmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    staffId INTEGER,
    staffName TEXT,
    zoneId INTEGER,
    zoneName TEXT,
    shiftStart DATETIME,
    shiftEnd DATETIME,
    role TEXT,
    badgeNumber TEXT,
    contactPhone TEXT,
    contactEmail TEXT,
    status TEXT,
    equipmentIssued TEXT,
    briefed BOOLEAN,
    incidentCount INTEGER,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    auditUser TEXT,
    auditTimestamp DATETIME,
    supervisorId INTEGER,
    supervisorName TEXT,
    trainingLevel TEXT
);
INSERT INTO security_staff_assignments VALUES (1,301,'JohnGuard',1,'MainGate','2023-06-01 06:00:00','2023-06-01 14:00:00','GateKeeper','BG001','5552001','johng@example.com','Active','Radio,Flashlight',1,0,'No incidents','2023-06-01 06:00:00','2023-06-01 06:00:00','admin','2023-06-01 06:00:00',401,'SarahLead','Level2');
INSERT INTO security_staff_assignments VALUES (2,302,'MikePatrol',2,'PaddockPerimeter','2023-06-01 14:00:00','2023-06-01 22:00:00','Patrol','BP002','5552002','mikep@example.com','Active','Radio',1,1,'Minor flagging incident','2023-06-01 14:00:00','2023-06-01 14:00:00','admin','2023-06-01 14:00:00',402,'TomLead','Level3');
INSERT INTO security_staff_assignments VALUES (3,303,'LauraWatch',3,'VIPLounge','2023-06-01 22:00:00','2023-06-02 06:00:00','Liaison','VL003','5552003','lauraw@example.com','Active','Radio,Walkie',1,0,'All clear','2023-06-01 22:00:00','2023-06-01 22:00:00','admin','2023-06-01 22:00:00',403,'EmmaLead','Level2');

-- Table describing digital signage content deployed around the venue
CREATE TABLE digital_signage_content (
    contentId INTEGER PRIMARY KEY AUTOINCREMENT,
    displayId INTEGER,
    locationDescriptor TEXT,
    contentType TEXT,
    fileName TEXT,
    fileFormat TEXT,
    resolution TEXT,
    durationSeconds INTEGER,
    startDate DATE,
    endDate DATE,
    schedulePattern TEXT,
    language TEXT,
    targetAudience TEXT,
    isActive BOOLEAN,
    createdBy TEXT,
    approvedBy TEXT,
    approvalDate DATE,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    auditUser TEXT,
    auditTimestamp DATETIME,
    networkSegment TEXT,
    hardwareVersion TEXT
);
INSERT INTO digital_signage_content VALUES (1,401,'EntranceEast','Video','welcome.mp4','MP4','1920x1080',30,'2023-03-01','2023-12-31','Daily06-22','English','AllFans',1,'MarketingTeam','CommsLead','2023-02-20','Welcome video for entrants','2023-02-20 08:00:00','2023-02-20 08:00:00','admin','2023-02-20 08:00:00','SegmentA','v2.1');
INSERT INTO digital_signage_content VALUES (2,402,'PaddockCenter','Image','sponsor_banner.jpg','JPG','1280x720',0,'2023-04-01','2023-09-30','Continuous','English','SponsorFans',1,'SponsorTeam','SponsorMgr','2023-03-28','Sponsor banner display','2023-03-28 09:15:00','2023-03-28 09:15:00','admin','2023-03-28 09:15:00','SegmentB','v1.0');
INSERT INTO digital_signage_content VALUES (3,403,'GrandstandNorth','Ticker','race_info.txt','TXT','N/A',0,'2023-05-01','2023-11-30','Live','English','Attendees',1,'OpsTeam','OpsLead','2023-04-25','Live race ticker updates','2023-04-25 07:45:00','2023-04-25 07:45:00','admin','2023-04-25 07:45:00','SegmentC','v3.0');

-- Table logging medical emergency response incidents during races
CREATE TABLE medical_emergency_responses (
    responseId INTEGER PRIMARY KEY AUTOINCREMENT,
    incidentId INTEGER,
    raceId INTEGER,
    lapNumber INTEGER,
    timestamp DATETIME,
    responderTeam TEXT,
    responderId INTEGER,
    responderName TEXT,
    injurySeverity TEXT,
    bodyPartAffected TEXT,
    treatmentProvided TEXT,
    transportMethod TEXT,
    destinationFacility TEXT,
    outcome TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    auditUser TEXT,
    auditTimestamp DATETIME,
    weatherCondition TEXT,
    trackCondition TEXT,
    followUpRequired BOOLEAN
);
INSERT INTO medical_emergency_responses VALUES (1,10001,101,23,'2023-06-01 10:12:45','RapidResponseTeam',501,'DrAllen','Moderate','Leg','Bandage and Ice','Stretcher','OnsiteMedicalCenter','Recovered','Driver fell on oil spill','2023-06-01 10:12:45','2023-06-01 10:30:00','system','2023-06-01 10:30:00','Sunny','Dry',0);
INSERT INTO medical_emergency_responses VALUES (2,10002,101,45,'2023-06-01 11:05:12','RapidResponseTeam',502,'DrBaker','Severe','Head','NeuroEvaluation','Ambulance','CityHospital','Hospitalized','Collision with barrier','2023-06-01 11:05:12','2023-06-01 11:45:00','system','2023-06-01 11:45:00','Cloudy','Wet',1);
INSERT INTO medical_emergency_responses VALUES (3,10003,102,12,'2023-07-15 09:22:30','RapidResponseTeam',503,'DrCarter','Minor','Arm','FirstAid','Wheelchair','MedicalTent','Discharged','Minor cut from debris','2023-07-15 09:22:30','2023-07-15 09:40:00','system','2023-07-15 09:40:00','Rain','Wet',0);

-- Table capturing historical weather data for each race event
CREATE TABLE race_historical_weather (
    weatherId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    observationDate DATE,
    temperatureC REAL,
    humidityPercent REAL,
    windSpeedKph REAL,
    windDirection TEXT,
    precipitationMm REAL,
    visibilityKm REAL,
    pressureHpa REAL,
    weatherDescription TEXT,
    cloudCoverPercent REAL,
    dewPointC REAL,
    heatIndexC REAL,
    uvIndex INTEGER,
    sunriseTime TEXT,
    sunsetTime TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    auditUser TEXT,
    auditTimestamp DATETIME,
    dataSource TEXT,
    notes TEXT
);
INSERT INTO race_historical_weather VALUES (1,101,'2023-06-01',22.5,55.0,12.3,'NE',0.0,15.0,1013.2,'Clear',10.0,12.0,24.0,5,'05:45','20:35','2023-06-01 07:00:00','2023-06-01 07:00:00','system','2023-06-01 07:00:00','WeatherStationA','No anomalies');
INSERT INTO race_historical_weather VALUES (2,102,'2023-07-15',18.3,70.0,8.5,'SW',2.1,12.0,1009.5,'Partly Cloudy',45.0,13.5,20.0,6,'05:55','20:45','2023-07-15 07:10:00','2023-07-15 07:10:00','system','2023-07-15 07:10:00','WeatherStationB','Light rain observed');
INSERT INTO race_historical_weather VALUES (3,103,'2023-09-10',25.0,40.0,15.0,'N',0.0,20.0,1018.0,'Sunny',5.0,16.0,30.0,8,'06:05','20:55','2023-09-10 07:20:00','2023-09-10 07:20:00','system','2023-09-10 07:20:00','WeatherStationC','Heat wave conditions');