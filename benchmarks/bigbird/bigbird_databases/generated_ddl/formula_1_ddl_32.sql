-- Sponsor influence scores per year
CREATE TABLE sponsor_influence_scores (
    sponsorInfluenceId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    year INTEGER,
    brandRecognitionScore REAL,
    socialMediaEngagement REAL,
    eventPresenceScore REAL,
    mediaSpend REAL,
    partnershipDepth INTEGER,
    globalReachIndex REAL,
    customerAffinity REAL,
    productPlacementCount INTEGER,
    sponsorshipROI REAL,
    influencerCollaborationScore REAL,
    audienceDemographicFit REAL,
    brandAffinityGrowth REAL,
    marketShareImpact REAL,
    activationFrequency INTEGER,
    digitalFootprintScore REAL,
    traditionalMediaScore REAL,
    sustainabilityScore REAL,
    complianceRating TEXT
);

INSERT INTO sponsor_influence_scores VALUES (1,10,2023,85.5,73.2,90.0,12.5,5,78.9,88.0,150,4.2,65.0,70.5,6.3,5.1,12,80.2,68.4,85.0,'Compliant');
INSERT INTO sponsor_influence_scores VALUES (2,12,2022,78.0,68.5,82.0,10.0,4,72.5,81.0,120,3.8,60.0,65.0,5.8,4.5,10,75.0,62.0,78.0,'Pending');
INSERT INTO sponsor_influence_scores VALUES (3,15,2021,82.3,71.0,88.5,11.2,6,75.0,85.5,138,4.0,62.5,68.0,6.0,5.0,11,78.5,65.5,80.5,'Approved');

-- Fan travel itineraries for race events
CREATE TABLE fan_travel_itineraries (
    itineraryId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    raceId INTEGER,
    travelMode TEXT,
    departureCity TEXT,
    arrivalCity TEXT,
    departureDate DATE,
    arrivalDate DATE,
    accommodationName TEXT,
    roomType TEXT,
    nights INTEGER,
    airline TEXT,
    flightNumber TEXT,
    seatClass TEXT,
    travelCost REAL,
    accommodationCost REAL,
    totalCost REAL,
    loyaltyProgramLevel TEXT,
    travelAgency TEXT,
    specialRequests TEXT
);

INSERT INTO fan_travel_itineraries VALUES (1,101,2001,Air,NewYork,Monaco,2023-05-01,2023-05-02,HotelMonteCarlo,Deluxe,2,AirOne,AO123,Business,850.0,400.0,1250.0,Gold,TravelCo,None);
INSERT INTO fan_travel_itineraries VALUES (2,102,2002,Train,Berlin,Rome,2023-06-10,2023-06-11,GrandHotel,Standard,1,NA,NA,Economy,300.0,200.0,500.0,Silver,EuroTrips,VegetarianMeal);
INSERT INTO fan_travel_itineraries VALUES (3,103,2003,Car,London,Spa,2023-07-15,2023-07-16,CityInn,Suite,3,NA,NA,NA,150.0,250.0,400.0,Bronze,AutoRentals,ExtraLuggage);

-- Race security patrol logs
CREATE TABLE race_security_patrols (
    patrolId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    patrolNumber INTEGER,
    startTime TEXT,
    endTime TEXT,
    routeDescription TEXT,
    leadOfficerId INTEGER,
    officersCount INTEGER,
    incidentsReported INTEGER,
    equipmentUsed TEXT,
    communicationChannel TEXT,
    weatherCondition TEXT,
    visibility REAL,
    notes TEXT,
    patrolStatus TEXT,
    shiftLength INTEGER,
    areaCoveredSqM REAL,
    patrolType TEXT,
    checkpointsCount INTEGER,
    complianceScore REAL
);

INSERT INTO race_security_patrols VALUES (1,2001,1,08:00,12:00,NorthSector,501,5,0,Radio,ChannelA,Clear,10.0,None,Active,240,15000.0,Patrol,8,96.5);
INSERT INTO race_security_patrols VALUES (2,2002,2,09:30,14:00,EastSector,502,4,1,Drone,ChannelB,Rain,8.5,MinorIncidentFound,Active,270,18000.0,Patrol,10,92.0);
INSERT INTO race_security_patrols VALUES (3,2003,3,07:45,11:30,WestSector,503,6,0,Vehicle,ChannelC,Clear,12.0,None,Active,225,13000.0,Patrol,7,98.0);

-- Circuit hydrological data records
CREATE TABLE circuit_hydrological_data (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    date DATE,
    precipitationMm REAL,
    humidityPercent REAL,
    waterTableDepthCm REAL,
    runoffVolumeL REAL,
    drainageStatus TEXT,
    soilMoisturePercent REAL,
    pondingDepthCm REAL,
    floodRiskLevel TEXT,
    groundwaterLevelMeters REAL,
    waterQualityIndex REAL,
    irrigationUsageLiters REAL,
    evaporationRateMm REAL,
    weatherStationId INTEGER,
    measurementMethod TEXT,
    dataSource TEXT,
    analystId INTEGER,
    notes TEXT
);

INSERT INTO circuit_hydrological_data VALUES (1,1,2023-04-20,5.2,78.0,120.0,3500.0,Good,45.0,2.0,Low,3.5,85.0,12000.0,4.5,10,Manual,Field,301,Normal);
INSERT INTO circuit_hydrological_data VALUES (2,2,2023-05-15,12.0,85.0,140.0,7200.0,Moderate,52.0,5.5,Medium,4.0,78.0,15000.0,6.0,12,Automatic,Station,302,ReviewNeeded);
INSERT INTO circuit_hydrological_data VALUES (3,3,2023-06-10,0.0,60.0,100.0,0.0,Excellent,38.0,0.0,Low,2.8,92.0,8000.0,3.2,14,Manual,Field,303,NoIssues);

-- Team performance metrics per race
CREATE TABLE team_performance_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    raceId INTEGER,
    lapTimeAvg REAL,
    topSpeedKmh REAL,
    pitStopAvgSeconds REAL,
    tyreDegradationRate REAL,
    fuelConsumptionLPerLap REAL,
    overtakesMade INTEGER,
    overtakesLost INTEGER,
    safetyCarTimeLossSeconds REAL,
    positionGained INTEGER,
    positionLost INTEGER,
    strategyEfficiencyScore REAL,
    driverConsistencyScore REAL,
    mechanicalReliabilityScore REAL,
    weatherImpactFactor REAL,
    telemetrySignalQuality REAL,
    crewPerformanceScore REAL,
    penaltyCount INTEGER,
    finalScore REAL
);

INSERT INTO team_performance_metrics VALUES (1,10,2001,92.5,340.0,2.8,0.03,2.4,5,2,3.0,2,0,85.0,90.0,95.0,0.8,0.95,88.0,1,87.5);
INSERT INTO team_performance_metrics VALUES (2,12,2002,95.0,330.0,3.0,0.035,2.6,3,4,4.5,1,1,80.0,85.0,90.0,1.1,0.92,82.0,2,78.0);
INSERT INTO team_performance_metrics VALUES (3,15,2003,89.8,345.0,2.5,0.028,2.3,7,1,2.0,3,0,88.0,92.0,97.0,0.7,0.97,90.0,0,90.5);

-- Broadcast latency logs for race streams
CREATE TABLE broadcast_latency_logs (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    broadcastChannel TEXT,
    segmentName TEXT,
    startTimestamp TEXT,
    endTimestamp TEXT,
    latencyMs INTEGER,
    packetLossPercent REAL,
    bitrateKbps INTEGER,
    resolution TEXT,
    frameRate INTEGER,
    audioSyncDelayMs INTEGER,
    videoSyncDelayMs INTEGER,
    encoderId INTEGER,
    serverLocation TEXT,
    networkProvider TEXT,
    congestionLevel TEXT,
    errorCode INTEGER,
    notes TEXT,
    auditTimestamp TEXT
);

INSERT INTO broadcast_latency_logs VALUES (1,2001,Channel1,Opening,2023-05-01 09:00:00,2023-05-01 09:30:00,120,0.2,4500,1080p,60,5,10,US-East,ProviderA,Low,0,None,2023-05-01 10:00:00);
INSERT INTO broadcast_latency_logs VALUES (2,2002,Channel2,MidRace,2023-06-15 11:00:00,2023-06-15 11:45:00,250,0.5,4000,720p,50,12,15,EU-Central,ProviderB,Medium,101,MinorGlitch,2023-06-15 12:00:00);
INSERT INTO broadcast_latency_logs VALUES (3,2003,Channel3,Finale,2023-07-20 14:00:00,2023-07-20 14:20:00,90,0.1,5000,4K,60,3,8,AP-South,ProviderC,Low,0,None,2023-07-20 15:00:00);

-- Weather station calibration records
CREATE TABLE weather_station_calibrations (
    calibrationId INTEGER PRIMARY KEY AUTOINCREMENT,
    stationId INTEGER,
    calibrationDate DATE,
    technicianId INTEGER,
    temperatureOffsetC REAL,
    humidityOffsetPercent REAL,
    pressureOffsetHpa REAL,
    windSpeedOffsetMs REAL,
    precipitationOffsetMm REAL,
    sensorSerialNumber TEXT,
    firmwareVersion TEXT,
    calibrationMethod TEXT,
    calibrationCertificate TEXT,
    notes TEXT,
    nextDueDate DATE,
    calibratedBy TEXT,
    calibrationStatus TEXT,
    calibrationType TEXT,
    standardReference TEXT,
    accuracyRating TEXT,
    complianceLevel TEXT
);

INSERT INTO weather_station_calibrations VALUES (1,10,2023-03-01,501,0.2,0.5,1.0,0.1,0.0,SN12345,1.0.3,Manual,CertA,InitialCalibration,2024-03-01,JohnDoe,Completed,Standard,ISO9001,High,Compliant);
INSERT INTO weather_station_calibrations VALUES (2,12,2023-04-15,502,-0.1,0.3,0.8,0.05,0.0,SN67890,1.0.4,Automatic,CertB,AnnualCheck,2025-04-15,JaneSmith,Pending,Standard,ISO9002,Medium,Pending);
INSERT INTO weather_station_calibrations VALUES (3,14,2023-05-20,503,0.0,0.0,0.0,0.0,0.0,SN54321,1.0.5,Manual,CertC,CalibrationAfterRepair,2024-05-20,AlexLee,Completed,Standard,ISO9001,High,Compliant);

-- Venue waste and recycling statistics per event
CREATE TABLE venue_waste_recycling_stats (
    statId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    eventId INTEGER,
    date DATE,
    totalWasteKg REAL,
    recyclableKg REAL,
    compostKg REAL,
    landfillKg REAL,
    recyclingRatePercent REAL,
    compostRatePercent REAL,
    wastePerAttendeeKg REAL,
    recyclingPartner TEXT,
    compostPartner TEXT,
    wasteManagementCompany TEXT,
    numberOfBins INTEGER,
    averageCollectionTimeMin REAL,
    violationsCount INTEGER,
    notes TEXT,
    auditScore REAL,
    complianceStatus TEXT,
    nextAuditDate DATE
);

INSERT INTO venue_waste_recycling_stats VALUES (1,100,2001,2023-05-02,5000.0,3000.0,1500.0,500.0,60.0,30.0,0.5,GreenCycle,EcoCompost,WasteCo,200,5.0,0,AllGood,95.0,Compliant,2024-05-01);
INSERT INTO venue_waste_recycling_stats VALUES (2,101,2002,2023-06-16,6200.0,3500.0,1800.0,900.0,56.5,29.0,0.55,RecyclePlus,CompostNow,WasteManage,220,6.0,1,MinorIssue,88.0,Pending,2025-06-15);
INSERT INTO venue_waste_recycling_stats VALUES (3,102,2003,2023-07-21,4800.0,2800.0,1200.0,800.0,58.3,25.0,0.48,EnviroRecycle,GreenCompost,CleanWaste,210,4.5,0,Excellent,97.0,Compliant,2024-07-20);

-- Driver post‑race interview records
CREATE TABLE driver_post_race_interviews (
    interviewId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    raceId INTEGER,
    interviewDate DATE,
    interviewerName TEXT,
    mediaOutlet TEXT,
    interviewDurationSec INTEGER,
    topicsCovered TEXT,
    highlights TEXT,
    criticisms TEXT,
    futurePlans TEXT,
    sentimentScore REAL,
    quotes TEXT,
    transcriptUrl TEXT,
    videoUrl TEXT,
    rating INTEGER,
    audienceReach INTEGER,
    socialMediaShares INTEGER,
    followUpActions TEXT,
    notes TEXT
);

INSERT INTO driver_post_race_interviews VALUES (1,201,2001,2023-05-03,EmmaWhite,SportDaily,600,Performance,WonRace,TyreWear,NextSeason,0.85,EverythingWasGreat,http://transcript1.com,http://video1.com,9,150000,2500,ReviewStrategy,None);
INSERT INTO driver_post_race_interviews VALUES (2,202,2002,2023-06-17,JohnBlack,AutoNews,720,Strategy,FastLap,EngineIssue,OffSeasonPlans,0.78,NeedToImprove,http://transcript2.com,http://video2.com,7,120000,1800,UpgradeCar,None);
INSERT INTO driver_post_race_interviews VALUES (3,203,2003,2023-07-22,LisaGreen,MotorsportTV,480,Start,GoodStart,TrackConditions,StayFocused,0.92,GreatTeam,http://transcript3.com,http://video3.com,8,130000,2100,TrainingProgram,None);

-- Constructor technology investment projects
CREATE TABLE constructor_technology_investments (
    investmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER,
    fiscalYear INTEGER,
    projectName TEXT,
    technologyArea TEXT,
    investmentAmountMillions REAL,
    expectedROI REAL,
    partnerCompany TEXT,
    partnerCountry TEXT,
    startDate DATE,
    endDate DATE,
    status TEXT,
    riskLevel TEXT,
    patentsFiled INTEGER,
    engineersAllocated INTEGER,
    milestonesAchieved INTEGER,
    totalMilestones INTEGER,
    externalFunding REAL,
    internalFunding REAL,
    notes TEXT,
    complianceCheckPassed TEXT
);

INSERT INTO constructor_technology_investments VALUES (1,1,2023,HybridPowerUnit,Powertrain,45.0,12.5,EnergyTech,USA,2023-01-15,2025-12-31,InProgress,Medium,5,30,2,5,10.0,35.0,PhaseOneComplete,Yes);
INSERT INTO constructor_technology_investments VALUES (2,2,2022,AerodynamicWing,Aerodynamics,20.0,9.0,FlowDynamics,Germany,2022-03-01,2024-06-30,Completed,Low,3,20,5,5,5.0,15.0,SuccessFull,Yes);
INSERT INTO constructor_technology_investments VALUES (3,3,2024,DataAnalyticsPlatform,DataScience,15.0,15.5,InfoSys,UK,2024-02-10,2026-02-10,Planning,High,0,10,0,4,2.0,13.0,InitialPhase,No);