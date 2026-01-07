-- Table storing security incidents that occurred at a venue
CREATE TABLE venue_security_incidents
(
    incidentId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    date DATE,
    time TEXT,
    incidentType TEXT,
    description TEXT,
    severity INTEGER,
    reportedBy TEXT,
    resolved INTEGER,
    resolutionTime TEXT,
    policeInvolved INTEGER,
    cameraFootageLink TEXT,
    witnessCount INTEGER,
    injuries INTEGER,
    propertyDamage REAL,
    lockdownInitiated INTEGER,
    evacuationOrder INTEGER,
    followUpAction TEXT,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT
);

INSERT INTO venue_security_incidents (venueId,date,time,incidentType,description,severity,reportedBy,resolved,resolutionTime,policeInvolved,cameraFootageLink,witnessCount,injuries,propertyDamage,lockdownInitiated,evacuationOrder,followUpAction,notes,createdAt,updatedAt) VALUES (101,'2024-03-15','22:35','UnauthorizedAccess','Gate breach detected',3,'SecurityGuard01',0,NULL,1,'http://media.example.com/vid123',5,0,0.0,0,0,'Review procedures','',datetime('now'),datetime('now'));
INSERT INTO venue_security_incidents (venueId,date,time,incidentType,description,severity,reportedBy,resolved,resolutionTime,policeInvolved,cameraFootageLink,witnessCount,injuries,propertyDamage,lockdownInitiated,evacuationOrder,followUpAction,notes,createdAt,updatedAt) VALUES (102,'2024-04-02','09:12','FireAlarm','Minor smoke in pantry',2,'FacilitiesMgr',1,'09:30',0,'http://media.example.com/vid124',2,0,150.75,0,0,'Performed safety drill','All clear',datetime('now'),datetime('now'));
INSERT INTO venue_security_incidents (venueId,date,time,incidentType,description,severity,reportedBy,resolved,resolutionTime,policeInvolved,cameraFootageLink,witnessCount,injuries,propertyDamage,lockdownInitiated,evacuationOrder,followUpAction,notes,createdAt,updatedAt) VALUES (103,'2024-05-20','17:45','MedicalEmergency','Spectator fainted',4,'FirstAidTeam',1,'18:05',0,'http://media.example.com/vid125',1,1,0.0,0,0,'Provided medical aid','Recovered',datetime('now'),datetime('now'));

-- Table linking teams with media outlets for public relations
CREATE TABLE team_media_relations
(
    relationId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    mediaOutletId INTEGER,
    contactName TEXT,
    contactPhone TEXT,
    contactEmail TEXT,
    preferredChannel TEXT,
    contractStart DATE,
    contractEnd DATE,
    exclusivity INTEGER,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    pressPasses INTEGER,
    socialMediaHandles TEXT,
    interviewSlots INTEGER,
    liaisonAssigned TEXT,
    mediaCoverageScore REAL,
    lastInteraction DATE,
    upcomingEvents TEXT,
    budgetAllocated REAL,
    status TEXT
);

INSERT INTO team_media_relations (teamId,mediaOutletId,contactName,contactPhone,contactEmail,preferredChannel,contractStart,contractEnd,exclusivity,notes,createdAt,updatedAt,pressPasses,socialMediaHandles,interviewSlots,liaisonAssigned,mediaCoverageScore,lastInteraction,upcomingEvents,budgetAllocated,status) VALUES (201,301,'Alice Johnson','5551234','alice@example.com','Email','2023-01-01','2024-12-31',1,'Annual contract',datetime('now'),datetime('now'),10,'@teamA_official',5,'John Smith',85.5,'2024-03-10','Season opener',25000.0,'Active');
INSERT INTO team_media_relations (teamId,mediaOutletId,contactName,contactPhone,contactEmail,preferredChannel,contractStart,contractEnd,exclusivity,notes,createdAt,updatedAt,pressPasses,socialMediaHandles,interviewSlots,liaisonAssigned,mediaCoverageScore,lastInteraction,upcomingEvents,budgetAllocated,status) VALUES (202,302,'Bob Lee','5555678','bob@example.com','Phone','2022-06-15','2025-06-14',0,'Special coverage for new driver',datetime('now'),datetime('now'),8,'@teamB_official',3,'Emily Davis',78.0,'2024-02-20','Midseason race',18000.0,'Active');
INSERT INTO team_media_relations (teamId,mediaOutletId,contactName,contactPhone,contactEmail,preferredChannel,contractStart,contractEnd,exclusivity,notes,createdAt,updatedAt,pressPasses,socialMediaHandles,interviewSlots,liaisonAssigned,mediaCoverageScore,lastInteraction,upcomingEvents,budgetAllocated,status) VALUES (203,303,'Carol Smith','5559012','carol@example.com','Email','2024-03-01','2026-02-28',1,'Launch of new sponsorship',datetime('now'),datetime('now'),12,'@teamC_official',6,'Mark Taylor',92.3,'2024-04-05','Finale race',30000.0,'Pending');

-- Table recording weather alerts issued for specific races
CREATE TABLE race_weather_alerts
(
    alertId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    alertType TEXT,
    severity INTEGER,
    issuedAt TEXT,
    expiresAt TEXT,
    description TEXT,
    issuedBy TEXT,
    affectedLaps INTEGER,
    mitigationPlan TEXT,
    windSpeed REAL,
    temperature REAL,
    humidity REAL,
    precipitation REAL,
    visibility REAL,
    alertStatus TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    region TEXT,
    advisoryLevel INTEGER,
    notes TEXT
);

INSERT INTO race_weather_alerts (raceId,alertType,severity,issuedAt,expiresAt,description,issuedBy,affectedLaps,mitigationPlan,windSpeed,temperature,humidity,precipitation,visibility,alertStatus,createdAt,updatedAt,region,advisoryLevel,notes) VALUES (401,'HighWind',3,'2024-04-10 08:00','2024-04-10 12:00','Sustained winds over 30 mph','MetsOffice',10,'Adjust tyre pressures','35.0','18.0','70','0.0','800','Active',datetime('now'),datetime('now'),'North',2,'Monitor gusts');
INSERT INTO race_weather_alerts (raceId,alertType,severity,issuedAt,expiresAt,description,issuedBy,affectedLaps,mitigationPlan,windSpeed,temperature,humidity,precipitation,visibility,alertStatus,createdAt,updatedAt,region,advisoryLevel,notes) VALUES (402,'HeavyRain',4,'2024-05-05 14:30','2024-05-05 16:45','Rainfall exceeding 10 mm/hr','MetsOffice',5,'Temporary suspension','12.0','22.0','85','12.5','200','Pending',datetime('now'),datetime('now'),'East',3,'Track drying equipment ready');
INSERT INTO race_weather_alerts (raceId,alertType,severity,issuedAt,expiresAt,description,issuedBy,affectedLaps,mitigationPlan,windSpeed,temperature,humidity,precipitation,visibility,alertStatus,createdAt,updatedAt,region,advisoryLevel,notes) VALUES (403,'ExtremeHeat',2,'2024-06-20 10:15','2024-06-20 14:00','Temperature above 35C','MetsOffice',0,'Increase hydration stations','5.0','36.0','40','0.0','1000','Active',datetime('now'),datetime('now'),'South',1,'Provide extra cooling');

-- Catalog of products offered by sponsors
CREATE TABLE sponsor_product_catalog
(
    catalogId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    productName TEXT,
    productCategory TEXT,
    launchDate DATE,
    price REAL,
    sku TEXT,
    inventoryCount INTEGER,
    description TEXT,
    imageUrl TEXT,
    websiteUrl TEXT,
    promoCode TEXT,
    discountPercent REAL,
    region TEXT,
    availableOnline INTEGER,
    warrantyPeriod INTEGER,
    rating REAL,
    reviewCount INTEGER,
    createdAt TEXT,
    updatedAt TEXT,
    discontinued INTEGER,
    notes TEXT
);

INSERT INTO sponsor_product_catalog (sponsorId,productName,productCategory,launchDate,price,sku,inventoryCount,description,imageUrl,websiteUrl,promoCode,discountPercent,region,availableOnline,warrantyPeriod,rating,reviewCount,createdAt,updatedAt,discontinued,notes) VALUES (501,'TurboBoost','Performance','2023-09-01',199.99,'TB001',500,'High flow turbocharger','http://img.example.com/tb1.png','http://www.example.com/turbo','SPRING23',10.0,'Global',1,24,4.5,120,datetime('now'),datetime('now'),0,'Best seller');
INSERT INTO sponsor_product_catalog (sponsorId,productName,productCategory,launchDate,price,sku,inventoryCount,description,imageUrl,websiteUrl,promoCode,discountPercent,region,availableOnline,warrantyPeriod,rating,reviewCount,createdAt,updatedAt,discontinued,notes) VALUES (502,'EcoFuel','Fuel','2022-05-15',3.49,'EF100',2000,'Renewable racing fuel','http://img.example.com/ef100.png','http://www.example.com/ecofuel','SUMMER22',5.0,'EU',1,12,4.2,85,datetime('now'),datetime('now'),0,'Low emissions');
INSERT INTO sponsor_product_catalog (sponsorId,productName,productCategory,launchDate,price,sku,inventoryCount,description,imageUrl,websiteUrl,promoCode,discountPercent,region,availableOnline,warrantyPeriod,rating,reviewCount,createdAt,updatedAt,discontinued,notes) VALUES (503,'RacingHelmetX','Safety','2024-01-20',79.99,'RHX01',300,'Lightweight composite helmet','http://img.example.com/rhx.png','http://www.example.com/helmet','NEWYEAR24',15.0,'NorthAmerica',1,18,4.8,45,datetime('now'),datetime('now'),0,'Enhanced ventilation');

-- Applications providing fan experience features
CREATE TABLE fan_experience_apps
(
    appId INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    platform TEXT,
    version TEXT,
    releaseDate DATE,
    developer TEXT,
    downloadCount INTEGER,
    rating REAL,
    reviews INTEGER,
    sizeMB REAL,
    requiredOS TEXT,
    languageSupport TEXT,
    inAppPurchase INTEGER,
    dataUsageMB REAL,
    privacyPolicyUrl TEXT,
    supportEmail TEXT,
    activeUsers INTEGER,
    lastUpdate TEXT,
    features TEXT,
    category TEXT,
    status TEXT,
    createdAt TEXT
);

INSERT INTO fan_experience_apps (name,platform,version,releaseDate,developer,downloadCount,rating,reviews,sizeMB,requiredOS,languageSupport,inAppPurchase,dataUsageMB,privacyPolicyUrl,supportEmail,activeUsers,lastUpdate,features,category,status,createdAt) VALUES ('RacePulse','iOS','1.2.3','2023-11-05','AppStudioX',150000,4.6,3200,45.2,'iOS13','EN,ES,FR',1,12.5,'http://www.example.com/privacy','support@example.com',90000,'2024-01-15','Live timing,AR replay','Entertainment','Active',datetime('now'));
INSERT INTO fan_experience_apps (name,platform,version,releaseDate,developer,downloadCount,rating,reviews,sizeMB,requiredOS,languageSupport,inAppPurchase,dataUsageMB,privacyPolicyUrl,supportEmail,activeUsers,lastUpdate,features,category,status,createdAt) VALUES ('PitLaneGuide','Android','2.0.0','2022-06-20','MotorsportApps',85000,4.3,2100,38.7,'Android9','EN,DE',0,9.8,'http://www.example.com/privacy','help@example.com',60000,'2023-12-01','Pit stop timers,crew info','Utility','Active',datetime('now'));
INSERT INTO fan_experience_apps (name,platform,version,releaseDate,developer,downloadCount,rating,reviews,sizeMB,requiredOS,languageSupport,inAppPurchase,dataUsageMB,privacyPolicyUrl,supportEmail,activeUsers,lastUpdate,features,category,status,createdAt) VALUES ('VRGrandPrix','iOS','0.9.5','2024-02-10','XRInnovations',25000,4.8,500,120.0,'iOS15','EN',1,45.0,'http://www.example.com/privacy','vrsupport@example.com',20000,'2024-02-20','Virtual track tours,Driver avatars','Gaming','Beta',datetime('now'));

-- Records of transport routes used for race logistics
CREATE TABLE logistics_transport_routes
(
    routeId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    startLocation TEXT,
    endLocation TEXT,
    distanceKm REAL,
    averageTimeMinutes REAL,
    transportMode TEXT,
    carrierCompany TEXT,
    vehicleType TEXT,
    capacity INTEGER,
    scheduleStart TEXT,
    scheduleEnd TEXT,
    driverAssigned TEXT,
    fuelCost REAL,
    tollCost REAL,
    securityLevel INTEGER,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    routeStatus TEXT,
    incidentCount INTEGER,
    lastInspection DATE
);

INSERT INTO logistics_transport_routes (raceId,startLocation,endLocation,distanceKm,averageTimeMinutes,transportMode,carrierCompany,vehicleType,capacity,scheduleStart,scheduleEnd,driverAssigned,fuelCost,tollCost,securityLevel,notes,createdAt,updatedAt,routeStatus,incidentCount,lastInspection) VALUES (501,'WarehouseA','CircuitX',120.5,180.0,'Truck','TransLogistics','SemiTrailer',20000,'2024-04-01 06:00','2024-04-01 09:00','Mike Turner',450.75,30.0,2,'Arrive early for setup',datetime('now'),datetime('now'),'Planned',0,'2024-03-20');
INSERT INTO logistics_transport_routes (raceId,startLocation,endLocation,distanceKm,averageTimeMinutes,transportMode,carrierCompany,vehicleType,capacity,scheduleStart,scheduleEnd,driverAssigned,fuelCost,tollCost,securityLevel,notes,createdAt,updatedAt,routeStatus,incidentCount,lastInspection) VALUES (502,'PortB','CircuitY',85.0,110.0,'Ship','SeaFreight','CargoShip',50000,'2024-05-10 02:00','2024-05-10 05:30','Laura Chen',1200.00,200.0,3,'Customs cleared',datetime('now'),datetime('now'),'InTransit',1,'2024-04-28');
INSERT INTO logistics_transport_routes (raceId,startLocation,endLocation,distanceKm,averageTimeMinutes,transportMode,carrierCompany,vehicleType,capacity,scheduleStart,scheduleEnd,driverAssigned,fuelCost,tollCost,securityLevel,notes,createdAt,updatedAt,routeStatus,incidentCount,lastInspection) VALUES (503,'DepotC','CircuitZ',45.2,60.0,'Van','RapidMove','CargoVan',5000,'2024-06-15 08:30','2024-06-15 09:30','Samir Patel',75.20,5.0,1,'No issues',datetime('now'),datetime('now'),'Completed',0,'2024-06-10');

-- Historical events that took place at circuits
CREATE TABLE circuit_heritage_events
(
    eventId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    eventName TEXT,
    eventDate DATE,
    description TEXT,
    organizer TEXT,
    attendance INTEGER,
    ticketRevenue REAL,
    sponsorId INTEGER,
    historicalSignificance TEXT,
    memorabiliaProvided INTEGER,
    mediaCoverageScore REAL,
    photosTaken INTEGER,
    videoHours REAL,
    legacyImpact TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    eventCategory TEXT,
    venueSection TEXT,
    specialGuests TEXT,
    awardsGiven INTEGER,
    notes TEXT
);

INSERT INTO circuit_heritage_events (circuitId,eventName,eventDate,description,organizer,attendance,ticketRevenue,sponsorId,historicalSignificance,memoirabiliaProvided,mediaCoverageScore,photosTaken,videoHours,legacyImpact,createdAt,updatedAt,eventCategory,venueSection,specialGuests,awardsGiven,notes) VALUES (601,'Centennial Grand Prix','1975-07-20','100th anniversary race','HistoricMotors','150000',7500000,701,'First race after rule change',1,92.5,12000,85.5,'Inspired new safety standards',datetime('now'),datetime('now'),'Celebration','Main Grandstand','Sir Jackie Stewart',5,'Very well attended');
INSERT INTO circuit_heritage_events (circuitId,eventName,eventDate,description,organizer,attendance,ticketRevenue,sponsorId,historicalSignificance,memoirabiliaProvided,mediaCoverageScore,photosTaken,videoHours,legacyImpact,createdAt,updatedAt,eventCategory,venueSection,specialGuests,awardsGiven,notes) VALUES (602,'Night Race Inauguration','1999-09-12','First ever night race at the circuit','NightRacingCo','80000',2400000,702,'Pioneered LED lighting',1,85.0,8000,40.0,'Boosted evening viewership',datetime('now'),datetime('now'),'Innovation','Pit Lane','Michele Alboreto',3,'Positive fan feedback');
INSERT INTO circuit_heritage_events (circuitId,eventName,eventDate,description,organizer,attendance,ticketRevenue,sponsorId,historicalSignificance,memoirabiliaProvided,mediaCoverageScore,photosTaken,videoHours,legacyImpact,createdAt,updatedAt,eventCategory,venueSection,specialGuests,awardsGiven,notes) VALUES (603,'Eco Sprint','2022-05-05','Sustainable racing demonstration','GreenMotors','60000',1800000,703,'Showcased biofuel cars',1,78.2,5000,25.0,'Highlighted environmental initiatives',datetime('now'),datetime('now'),'Sustainability','Eco Zone','Lewis Hamilton',2,'Received awards for green tech');

-- Training sessions attended by drivers
CREATE TABLE driver_training_sessions
(
    sessionId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    sessionType TEXT,
    date DATE,
    durationMinutes INTEGER,
    instructorName TEXT,
    location TEXT,
    vehicleUsed TEXT,
    lapsCompleted INTEGER,
    averageSpeed REAL,
    maxSpeed REAL,
    feedbackScore REAL,
    passed INTEGER,
    certificationId INTEGER,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    trainingProgram TEXT,
    simulationUsed INTEGER,
    physicalFitnessScore REAL,
    mentalFocusScore REAL,
    weatherConditions TEXT
);

INSERT INTO driver_training_sessions (driverId,sessionType,date,durationMinutes,instructorName,location,vehicleUsed,lapsCompleted,averageSpeed,maxSpeed,feedbackScore,passed,certificationId,notes,createdAt,updatedAt,trainingProgram,simulationUsed,physicalFitnessScore,mentalFocusScore,weatherConditions) VALUES (1001,'WetTrack','2024-03-10',180,'Mark Rivera','SimCenterA','Formula2','25',150.2,180.5,4.7,1,301,'Improved braking',datetime('now'),datetime('now'),'Advanced Wet Handling',1,88.5,92.0,'Rainy');
INSERT INTO driver_training_sessions (driverId,sessionType,date,durationMinutes,instructorName,location,vehicleUsed,lapsCompleted,averageSpeed,maxSpeed,feedbackScore,passed,certificationId,notes,createdAt,updatedAt,trainingProgram,simulationUsed,physicalFitnessScore,mentalFocusScore,weatherConditions) VALUES (1002,'Fitness','2024-04-01',120,'Laura Kim','GymY','N/A','0',0,0,4.9,1,302,'Excellent stamina',datetime('now'),datetime('now'),'Physical Conditioning',0,95.0,90.0,'Clear');
INSERT INTO driver_training_sessions (driverId,sessionType,date,durationMinutes,instructorName,location,vehicleUsed,lapsCompleted,averageSpeed,maxSpeed,feedbackScore,passed,certificationId,notes,createdAt,updatedAt,trainingProgram,simulationUsed,physicalFitnessScore,mentalFocusScore,weatherConditions) VALUES (1003,'Simulator','2024-05-15',90,'Alberto Ruiz','VirtualLab','SimCar','0',0,0,4.5,1,303,'Better cornering inputs',datetime('now'),datetime('now'),'Virtual Racing',1,80.0,85.0,'Indoor');

-- Innovation projects run by constructors
CREATE TABLE constructor_innovation_projects
(
    projectId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER,
    projectName TEXT,
    startDate DATE,
    endDate DATE,
    budget REAL,
    status TEXT,
    leadEngineer TEXT,
    technologyFocus TEXT,
    patentsFiled INTEGER,
    milestonesAchieved INTEGER,
    collaborationPartners TEXT,
    externalFunding REAL,
    internalFunding REAL,
    riskLevel INTEGER,
    expectedImpact TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    phase INTEGER,
    description TEXT,
    demoDate DATE,
    outcome TEXT
);

INSERT INTO constructor_innovation_projects (constructorId,projectName,startDate,endDate,budget,status,leadEngineer,technologyFocus,patentsFiled,milestonesAchieved,collaborationPartners,externalFunding,internalFunding,riskLevel,expectedImpact,createdAt,updatedAt,phase,description,demoDate,outcome) VALUES (401,'HybridPowerUnit','2023-01-01','2024-12-31',12000000,'InProgress','Dr Eva Holt','Hybrid','5','3','EcoTechCo,UniLab','3000000','9000000',2,'Higher efficiency','datetime('now')','datetime('now')',2,'Development of a hybrid engine system','2024-11-20','Pending');
INSERT INTO constructor_innovation_projects (constructorId,projectName,startDate,endDate,budget,status,leadEngineer,technologyFocus,patentsFiled,milestonesAchieved,collaborationPartners,externalFunding,internalFunding,riskLevel,expectedImpact,createdAt,updatedAt,phase,description,demoDate,outcome) VALUES (402,'ActiveAerodynamics','2022-06-15','2025-06-14',8500000,'Planning','Mr Luis Gomez','Active aero','3','1','AeroDynamicsInc','1500000','7000000',3,'Dynamic downforce control','datetime('now')','datetime('now')',1,'Adjustable front wing prototypes','2025-05-10','Pending');
INSERT INTO constructor_innovation_projects (constructorId,projectName,startDate,endDate,budget,status,leadEngineer,technologyFocus,patentsFiled,milestonesAchieved,collaborationPartners,externalFunding,internalFunding,riskLevel,expectedImpact,createdAt,updatedAt,phase,description,demoDate,outcome) VALUES (403,'CarbonFiberChassis','2021-03-01','2023-12-31',6000000,'Completed','Ms Nina Patel','Materials','8','8','FiberWorks','0','6000000',1,'Weight reduction','datetime('now')','datetime('now')',3,'Fully carbon fiber monocoque','2023-11-05','Successful');

-- Advertising campaigns linked to broadcast slots
CREATE TABLE broadcast_advertising_campaigns
(
    campaignId INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId INTEGER,
    sponsorId INTEGER,
    campaignName TEXT,
    startDate DATE,
    endDate DATE,
    totalSpots INTEGER,
    spotDurationSeconds INTEGER,
    costPerSpot REAL,
    totalCost REAL,
    targetAudience TEXT,
    region TEXT,
    impressions INTEGER,
    clickThroughRate REAL,
    conversionRate REAL,
    creativeUrl TEXT,
    complianceApproved INTEGER,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    platform TEXT,
    adType TEXT,
    performanceScore REAL
);

INSERT INTO broadcast_advertising_campaigns (broadcastId,sponsorId,campaignName,startDate,endDate,totalSpots,spotDurationSeconds,costPerSpot,totalCost,targetAudience,region,impressions,clickThroughRate,conversionRate,creativeUrl,complianceApproved,notes,createdAt,updatedAt,platform,adType,performanceScore) VALUES (601,501,'SpeedBoostLaunch','2024-03-01','2024-03-31',150,30,5000.00,750000.00,'RacingFans','Global',20000000,0.04,0.015,'http://media.example.com/creative1','1','High engagement','datetime('now')','datetime('now')','TV','Video',88.5);
INSERT INTO broadcast_advertising_campaigns (broadcastId,sponsorId,campaignName,startDate,endDate,totalSpots,spotDurationSeconds,costPerSpot,totalCost,targetAudience,region,impressions,clickThroughRate,conversionRate,creativeUrl,complianceApproved,notes,createdAt,updatedAt,platform,adType,performanceScore) VALUES (602,502,'EcoFuelDrive','2024-04-15','2024-05-15',200,45,3000.00,600000.00,'EcoEnthusiasts','EU',15000000,0.03,0.012,'http://media.example.com/creative2','1','Positive sentiment','datetime('now')','datetime('now')','Streaming','Video',82.0);
INSERT INTO broadcast_advertising_campaigns (broadcastId,sponsorId,campaignName,startDate,endDate,totalSpots,spotDurationSeconds,costPerSpot,totalCost,targetAudience,region,impressions,clickThroughRate,conversionRate,creativeUrl,complianceApproved,notes,createdAt,updatedAt,platform,adType,performanceScore) VALUES (603,503,'HelmetSafety','2024-06-01','2024-06-30',120,60,4500.00,540000.00,'SafetyConscious','NorthAmerica',10000000,0.05,0.02,'http://media.example.com/creative3','1','Strong CTA','datetime('now')','datetime('now')','Radio','Audio',90.0);