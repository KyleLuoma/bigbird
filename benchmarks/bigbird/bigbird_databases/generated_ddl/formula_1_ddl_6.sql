-- Venue accommodations information
CREATE TABLE venue_accommodations (
    accommodationId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    name TEXT,
    type TEXT,
    capacity INTEGER,
    rooms INTEGER,
    suites INTEGER,
    floorArea REAL,
    address TEXT,
    city TEXT,
    region TEXT,
    country TEXT,
    phone TEXT,
    email TEXT,
    checkInTime TEXT,
    checkOutTime TEXT,
    wifiAvailable INTEGER,
    parkingSpaces INTEGER,
    nearbyTransport TEXT,
    rating REAL,
    notes TEXT
);
INSERT INTO venue_accommodations (accommodationId,venueId,name,type,capacity,rooms,suites,floorArea,address,city,region,country,phone,email,checkInTime,checkOutTime,wifiAvailable,parkingSpaces,nearbyTransport,rating,notes) VALUES (1,101,'GrandHotel','Hotel',200,120,10,3500.5,'123 Main St','Melbourne','Victoria','Australia','0300112233','info@grandhotel.com','14:00','12:00',1,50,'Tram',4.5,'Open year round');
INSERT INTO venue_accommodations (accommodationId,venueId,name,type,capacity,rooms,suites,floorArea,address,city,region,country,phone,email,checkInTime,checkOutTime,wifiAvailable,parkingSpaces,nearbyTransport,rating,notes) VALUES (2,102,'SpeedyLodge','Motel',80,40,2,1200,'45 Speedway Ave','Monaco','Monaco','Monaco','3771234567','contact@speedylodge.com','15:00','11:00',1,20,'Bus',4.0,'Renovated 2022');
INSERT INTO venue_accommodations (accommodationId,venueId,name,type,capacity,rooms,suites,floorArea,address,city,region,country,phone,email,checkInTime,checkOutTime,wifiAvailable,parkingSpaces,nearbyTransport,rating,notes) VALUES (3,103,'PitStopResort','Resort',350,200,15,5600,'78 Race Rd','Silverstone','England','UK','0123456789','reservations@pitstopresort.co.uk','13:00','12:00',1,100,'Train',4.8,'Includes spa facilities');

-- Sponsor benefits details
CREATE TABLE sponsor_benefits (
    benefitId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    benefitName TEXT,
    description TEXT,
    activationDate DATE,
    expirationDate DATE,
    tierLevel TEXT,
    visibilityScore REAL,
    mediaSlots INTEGER,
    hospitalityTickets INTEGER,
    productPlacement TEXT,
    brandingArea TEXT,
    digitalImpressions INTEGER,
    onSiteStaff INTEGER,
    exclusiveRights INTEGER,
    logoSize TEXT,
    customActivations TEXT,
    budgetAllocation REAL,
    createdAt TEXT,
    updatedAt TEXT,
    notes TEXT
);
INSERT INTO sponsor_benefits (benefitId,sponsorId,benefitName,description,activationDate,expirationDate,tierLevel,visibilityScore,mediaSlots,hospitalityTickets,productPlacement,brandingArea,digitalImpressions,onSiteStaff,exclusiveRights,logoSize,customActivations,budgetAllocation,createdAt,updatedAt,notes) VALUES (1,201,'TitleSponsor','Primary branding on all assets','2023-01-01','2025-12-31','Platinum',95.2,20,50,'Engine','TracksideBillboard',500000,10,1,'Large','TracksideLED',2500000,'2023-01-01','2023-02-01','Renewable contract');
INSERT INTO sponsor_benefits (benefitId,sponsorId,benefitName,description,activationDate,expirationDate,tierLevel,visibilityScore,mediaSlots,hospitalityTickets,productPlacement,brandingArea,digitalImpressions,onSiteStaff,exclusiveRights,logoSize,customActivations,budgetAllocation,createdAt,updatedAt,notes) VALUES (2,202,'HospitalityPackage','VIP lounge access','2023-03-01','2024-03-01','Gold',80.5,10,30,'Drink','LoungeBanner',200000,5,0,'Medium','PremiumBar',800000,'2023-03-01','2023-03-15','Limited to 2024');
INSERT INTO sponsor_benefits (benefitId,sponsorId,benefitName,description,activationDate,expirationDate,tierLevel,visibilityScore,mediaSlots,hospitalityTickets,productPlacement,brandingArea,digitalImpressions,onSiteStaff,exclusiveRights,logoSize,customActivations,budgetAllocation,createdAt,updatedAt,notes) VALUES (3,203,'TechPartner','Data analytics integration','2024-01-01','2026-12-31','Silver',70.0,5,10,'Software','PitLaneScreens',150000,3,0,'Small','LiveAnalytics',600000,'2024-01-01','2024-01-10','First-year trial');

-- Broadcast rights agreements
CREATE TABLE broadcast_rights (
    rightsId INTEGER PRIMARY KEY AUTOINCREMENT,
    region TEXT,
    network TEXT,
    startDate DATE,
    endDate DATE,
    contractValue REAL,
    language TEXT,
    hdAvailable INTEGER,
    ultraHdAvailable INTEGER,
    liveStreaming INTEGER,
    delayedStreaming INTEGER,
    commentaryTeam TEXT,
    audioLanguages TEXT,
    blackoutDays INTEGER,
    exclusivityFlag INTEGER,
    digitalPlatform TEXT,
    archiveAccess INTEGER,
    renewalOption INTEGER,
    notes TEXT,
    createdOn TEXT
);
INSERT INTO broadcast_rights (rightsId,region,network,startDate,endDate,contractValue,language,hdAvailable,ultraHdAvailable,liveStreaming,delayedStreaming,commentaryTeam,audioLanguages,blackoutDays,exclusivityFlag,digitalPlatform,archiveAccess,renewalOption,notes,createdOn) VALUES (1,'Europe','EuroSport','2023-01-01','2027-12-31',12000000,'English',1,1,1,0,'TeamA','English,German',2,1,'EuroPlatform',1,1,'Primary EU broadcaster','2023-01-01');
INSERT INTO broadcast_rights (rightsId,region,network,startDate,endDate,contractValue,language,hdAvailable,ultraHdAvailable,liveStreaming,delayedStreaming,commentaryTeam,audioLanguages,blackoutDays,exclusivityFlag,digitalPlatform,archiveAccess,renewalOption,notes,createdOn) VALUES (2,'Asia','AsiaLive','2024-04-01','2028-03-31',9500000,'Mandarin',1,0,1,1,'TeamB','Mandarin,English',0,0,'AsiaStream',1,0,'Includes supplemental content','2024-04-01');
INSERT INTO broadcast_rights (rightsId,region,network,startDate,endDate,contractValue,language,hdAvailable,ultraHdAvailable,liveStreaming,delayedStreaming,commentaryTeam,audioLanguages,blackoutDays,exclusivityFlag,digitalPlatform,archiveAccess,renewalOption,notes,createdOn) VALUES (3,'NorthAmerica','SpeedChannel','2025-01-01','2030-12-31',15000000,'English',1,1,1,1,'TeamC','English,Spanish',1,1,'SpeedApp',1,1,'Multi‑platform distribution','2025-01-01');

-- Race sponsor asset deployments
CREATE TABLE race_sponsor_assets (
    assetId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    assetType TEXT,
    description TEXT,
    location TEXT,
    startDate DATE,
    endDate DATE,
    dimensions TEXT,
    brandingColor TEXT,
    visibilityScore REAL,
    installedBy TEXT,
    maintenanceCycleDays INTEGER,
    lastMaintenance DATE,
    status TEXT,
    cost REAL,
    createdAt TEXT,
    updatedAt TEXT,
    complianceFlag INTEGER,
    notes TEXT,
    imageUrl TEXT
);
INSERT INTO race_sponsor_assets (assetId,sponsorId,assetType,description,location,startDate,endDate,dimensions,brandingColor,visibilityScore,installedBy,maintenanceCycleDays,lastMaintenance,status,cost,createdAt,updatedAt,complianceFlag,notes,imageUrl) VALUES (1,201,'Billboard','Trackside sponsor billboard','Turn1','2023-03-01','2023-12-31','12x6','Red',92.3,'TechInstallCo',180,'2023-07-01','Active',50000,'2023-03-01','2023-08-01',1,'Weather resistant','/images/billboard1.png');
INSERT INTO race_sponsor_assets (assetId,sponsorId,assetType,description,location,startDate,endDate,dimensions,brandingColor,visibilityScore,installedBy,maintenanceCycleDays,lastMaintenance,status,cost,createdAt,updatedAt,complianceFlag,notes,imageUrl) VALUES (2,202,'PitWall','Digital pit wall display','PitLane','2024-01-15','2025-01-14','8x4','Blue',88.0,'DisplayWorks',365,'2024-06-15','Planned',75000,'2024-01-15','2024-02-01',0,'Pending approval','/images/pitwall.png');
INSERT INTO race_sponsor_assets (assetId,sponsorId,assetType,description,location,startDate,endDate,dimensions,brandingColor,visibilityScore,installedBy,maintenanceCycleDays,lastMaintenance,status,cost,createdAt,updatedAt,complianceFlag,notes,imageUrl) VALUES (3,203,'Banner','Sponsor banner on podium','Podium','2023-09-01','2026-08-31','6x2','Green',80.5,'BannerMakers',90,'2023-12-01','Active',20000,'2023-09-01','2023-09-10',1,'Replaces previous banner','/images/podium_banner.png');

-- Transport routes for race logistics
CREATE TABLE transport_routes (
    routeId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    routeName TEXT,
    startLocation TEXT,
    endLocation TEXT,
    distanceKm REAL,
    estimatedTimeMin INTEGER,
    vehicleType TEXT,
    capacity INTEGER,
    driverName TEXT,
    contactNumber TEXT,
    scheduleDay TEXT,
    departureTime TEXT,
    arrivalTime TEXT,
    tollsApplicable INTEGER,
    roadCondition TEXT,
    securityLevel INTEGER,
    notes TEXT,
    createdOn TEXT,
    updatedOn TEXT
);
INSERT INTO transport_routes (routeId,raceId,routeName,startLocation,endLocation,distanceKm,estimatedTimeMin,vehicleType,capacity,driverName,contactNumber,scheduleDay,departureTime,arrivalTime,tollsApplicable,roadCondition,securityLevel,notes,createdOn,updatedOn) VALUES (1,301,'TeamGearRoute','TeamWarehouse','CircuitPaddock','120.5',95,'Truck',30,'JohnDoe','0400123456','Monday','08:00','09:35',1,'Good',3,'Handles all team equipment','2023-02-01','2023-02-02');
INSERT INTO transport_routes (routeId,raceId,routeName,startLocation,endLocation,distanceKm,estimatedTimeMin,vehicleType,capacity,driverName,contactNumber,scheduleDay,departureTime,arrivalTime,tollsApplicable,roadCondition,securityLevel,notes,createdOn,updatedOn) VALUES (2,302,'MediaVanRoute','MediaCenter','Grandstand','45.2',40,'Van',10,'AliceSmith','0400987654','Wednesday','10:15','10:55',0,'Fair',2,'Cameras and interview kits','2023-04-10','2023-04-11');
INSERT INTO transport_routes (routeId,raceId,routeName,startLocation,endLocation,distanceKm,estimatedTimeMin,vehicleType,capacity,driverName,contactNumber,scheduleDay,departureTime,arrivalTime,tollsApplicable,roadCondition,securityLevel,notes,createdOn,updatedOn) VALUES (3,303,'VIPShuttle','HotelCentral','VIPLounge','8.0',15,'MiniBus',20,'BobLee','0400555123','Friday','17:00','17:15',0,'Excellent',4,'Exclusive passenger transport','2023-06-20','2023-06-21');

-- Digital marketing campaigns for sponsors
CREATE TABLE digital_marketing_campaigns (
    campaignId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    name TEXT,
    startDate DATE,
    endDate DATE,
    budget REAL,
    platform TEXT,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    cpc REAL,
    conversions INTEGER,
    conversionValue REAL,
    creativeType TEXT,
    audienceSegment TEXT,
    geoTarget TEXT,
    deviceTarget TEXT,
    status TEXT,
    createdAt TEXT,
    updatedAt TEXT
);
INSERT INTO digital_marketing_campaigns (campaignId,sponsorId,name,startDate,endDate,budget,platform,impressions,clicks,ctr,cpc,conversions,conversionValue,creativeType,audienceSegment,geoTarget,deviceTarget,status,createdAt,updatedAt) VALUES (1,201,'SpeedBoostLaunch','2023-05-01','2023-07-31',300000,'SocialMedia',5000000,25000,0.5,0.012,3200,800000,'Video','MotorsportFans','Europe','Mobile','Active','2023-05-01','2023-05-15');
INSERT INTO digital_marketing_campaigns (campaignId,sponsorId,name,startDate,endDate,budget,platform,impressions,clicks,ctr,cpc,conversions,conversionValue,creativeType,audienceSegment,geoTarget,deviceTarget,status,createdAt,updatedAt) VALUES (2,202,'EcoTyrePromo','2023-09-01','2023-12-31',150000,'DisplayAds',2000000,8000,0.4,0.018,950,120000,'Banner','EcoDrivers','NorthAmerica','Desktop','Planned','2023-08-20','2023-09-01');
INSERT INTO digital_marketing_campaigns (campaignId,sponsorId,name,startDate,endDate,budget,platform,impressions,clicks,ctr,cpc,conversions,conversionValue,creativeType,audienceSegment,geoTarget,deviceTarget,status,createdAt,updatedAt) VALUES (3,203,'TechPartnerSeries','2024-01-15','2024-04-15',250000,'VideoStreaming',3500000,15000,0.43,0.011,2100,450000,'Interactive','TechEnthusiasts','Asia','Mobile','Draft','2023-12-01','2023-12-10');

-- Race emergency resource inventory
CREATE TABLE race_emergency_resources (
    resourceId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    resourceType TEXT,
    quantity INTEGER,
    location TEXT,
    supplier TEXT,
    contactNumber TEXT,
    readyState INTEGER,
    lastInspection DATE,
    nextInspection DATE,
    complianceStatus TEXT,
    notes TEXT,
    createdOn TEXT,
    updatedOn TEXT,
    priorityLevel INTEGER,
    deployedFlag INTEGER,
    maintenanceProvider TEXT,
    costPerUnit REAL,
    totalCost REAL,
    serialNumber TEXT
);
INSERT INTO race_emergency_resources (resourceId,raceId,resourceType,quantity,location,supplier,contactNumber,readyState,lastInspection,nextInspection,complianceStatus,notes,createdOn,updatedOn,priorityLevel,deployedFlag,maintenanceProvider,costPerUnit,totalCost,serialNumber) VALUES (1,301,'FireExtinguisher',30,'Paddock','SafetyEquipCo','0400222333',1,'2023-06-01','2023-12-01','Compliant','Standard ABC rating','2023-05-20','2023-06-01',5,0,'TechServ',150,4500,'FE-301-A');
INSERT INTO race_emergency_resources (resourceId,raceId,resourceType,quantity,location,supplier,contactNumber,readyState,lastInspection,nextInspection,complianceStatus,notes,createdOn,updatedOn,priorityLevel,deployedFlag,maintenanceProvider,costPerUnit,totalCost,serialNumber) VALUES (2,302,'Defibrillator',5,'MedicalCenter','MedTech','0400444555',1,'2023-04-15','2023-10-15','Compliant','Battery replaced 2023','2023-04-10','2023-04-15',4,0,'MediMaintain',2000,10000,'DF-302-B');
INSERT INTO race_emergency_resources (resourceId,raceId,resourceType,quantity,location,supplier,contactNumber,readyState,lastInspection,nextInspection,complianceStatus,notes,createdOn,updatedOn,priorityLevel,deployedFlag,maintenanceProvider,costPerUnit,totalCost,serialNumber) VALUES (3,303,'SpillContainmentKit',12,'PitLane','EnviroSafe','0400666777',1,'2023-05-20','2023-11-20','Compliant','Includes absorbent pads','2023-05-01','2023-05-20',3,0,'EnviroMaintain',800,9600,'SK-303-C');

-- Circuit art installation registry
CREATE TABLE circuit_art_installations (
    artId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    title TEXT,
    artist TEXT,
    medium TEXT,
    installationDate DATE,
    removalDate DATE,
    dimensions TEXT,
    locationDescription TEXT,
    lightingRequired INTEGER,
    maintenancePlan TEXT,
    sponsorId INTEGER,
    visibilityScore REAL,
    catalogNumber TEXT,
    insuranceValue REAL,
    createdAt TEXT,
    updatedAt TEXT,
    notes TEXT,
    status TEXT,
    imagePath TEXT
);
INSERT INTO circuit_art_installations (artId,circuitId,title,artist,medium,installationDate,removalDate,dimensions,locationDescription,lightingRequired,maintenancePlan,sponsorId,visibilityScore,catalogNumber,insuranceValue,createdAt,updatedAt,notes,status,imagePath) VALUES (1,1,'Speed Pulse','Luca Ramos','Sculpture','2023-04-10','2024-09-30','3x3x6','Turn5','1','Quarterly','201',93.5,'ART001',15000,'2023-04-01','2023-04-12','Solar powered','Active','/art/speed_pulse.png');
INSERT INTO circuit_art_installations (artId,circuitId,title,artist,medium,installationDate,removalDate,dimensions,locationDescription,lightingRequired,maintenancePlan,sponsorId,visibilityScore,catalogNumber,insuranceValue,createdAt,updatedAt,notes,status,imagePath) VALUES (2,2,'Wind Flow','Aya Nakamura','Mural','2023-06-01','2025-05-31','200x50','Grandstand Wall','0','Annual','202',85.0,'ART002',8000,'2023-05-20','2023-06-05','Weather resistant paint','Active','/art/wind_flow.png');
INSERT INTO circuit_art_installations (artId,circuitId,title,artist,medium,installationDate,removalDate,dimensions,locationDescription,lightingRequired,maintenancePlan,sponsorId,visibilityScore,catalogNumber,insuranceValue,createdAt,updatedAt,notes,status,imagePath) VALUES (3,3,'Digital Wave','Mia Chen','LEDDisplay','2024-01-15','2024-12-31','5x2','Pit Lane Entrance','1','Monthly','203',90.2,'ART003',12000,'2024-01-01','2024-01-16','Programmable colors','Planned','/art/digital_wave.png');

-- Fan experience zone specifications
CREATE TABLE fan_experience_zones (
    zoneId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    name TEXT,
    areaSqM REAL,
    capacity INTEGER,
    attractions TEXT,
    sponsorId INTEGER,
    openingTime TEXT,
    closingTime TEXT,
    ticketed INTEGER,
    pricePerTicket REAL,
    staffCount INTEGER,
    securityLevel INTEGER,
    wifiAvailable INTEGER,
    foodAvailable INTEGER,
    merchandiseAvailable INTEGER,
    accessibilityScore REAL,
    createdAt TEXT,
    updatedAt TEXT,
    notes TEXT
);
INSERT INTO fan_experience_zones (zoneId,raceId,name,areaSqM,capacity,attractions,sponsorId,openingTime,closingTime,ticketed,pricePerTicket,staffCount,securityLevel,wifiAvailable,foodAvailable,merchandiseAvailable,accessibilityScore,createdAt,updatedAt,notes) VALUES (1,301,'Pit Lane Plaza',2500,1500,'Simulators,LiveMusic',201,'09:00','19:00',1,45.5,30,3,1,1,1,9.2,'2023-03-01','2023-03-10','High foot traffic area');
INSERT INTO fan_experience_zones (zoneId,raceId,name,areaSqM,capacity,attractions,sponsorId,openingTime,closingTime,ticketed,pricePerTicket,staffCount,securityLevel,wifiAvailable,foodAvailable,merchandiseAvailable,accessibilityScore,createdAt,updatedAt,notes) VALUES (2,302,'Family Fun Zone',1800,1200,'KidsRides,FacePainting',202,'10:00','18:00',0,0,20,2,1,1,1,8.7,'2023-04-15','2023-04-20','Family friendly');
INSERT INTO fan_experience_zones (zoneId,raceId,name,areaSqM,capacity,attractions,sponsorId,openingTime,closingTime,ticketed,pricePerTicket,staffCount,securityLevel,wifiAvailable,foodAvailable,merchandiseAvailable,accessibilityScore,createdAt,updatedAt,notes) VALUES (3,303,'Virtual Reality Arena','1200',800,'VR Races,InteractiveDisplays',203,'11:00','20:00',1,60.0,25,4,1,0,1,9.5,'2023-05-05','2023-05-10','Cutting edge tech');

-- Regulatory audit log entries
CREATE TABLE regulatory_audit_logs (
    auditId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    auditorName TEXT,
    auditDate DATE,
    scope TEXT,
    findings TEXT,
    severityLevel TEXT,
    correctiveAction TEXT,
    dueDate DATE,
    status TEXT,
    comments TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    documentUrl TEXT,
    complianceScore REAL,
    penaltyAmount REAL,
    followUpDate DATE,
    riskCategory TEXT,
    auditType TEXT,
    referenceNumber TEXT
);
INSERT INTO regulatory_audit_logs (auditId,raceId,auditorName,auditDate,scope,findings,severityLevel,correctiveAction,dueDate,status,comments,createdAt,updatedAt,documentUrl,complianceScore,penaltyAmount,followUpDate,riskCategory,auditType,referenceNumber) VALUES (1,301,'Laura Greene','2023-08-10','SafetyEquipment','Fire extinguishers out of date','High','Replace all units','2023-09-30','Open','Awaiting supplier response','2023-08-12','2023-08-12','/docs/audit301.pdf',72.5,15000,'2023-10-15','Safety','Internal','AUD-301-01');
INSERT INTO regulatory_audit_logs (auditId,raceId,auditorName,auditDate,scope,findings,severityLevel,correctiveAction,dueDate,status,comments,createdAt,updatedAt,documentUrl,complianceScore,penaltyAmount,followUpDate,riskCategory,auditType,referenceNumber) VALUES (2,302,'Mark Davis','2023-09-05','Environmental','Noise levels exceed limits','Medium','Install sound barriers','2023-10-20','Open','Measurements taken during peak hours','2023-09-07','2023-09-07','/docs/audit302.pdf',81.0,0,'2023-11-01','Environmental','External','AUD-302-02');
INSERT INTO regulatory_audit_logs (auditId,raceId,auditorName,auditDate,scope,findings,severityLevel,correctiveAction,dueDate,status,comments,createdAt,updatedAt,documentUrl,complianceScore,penaltyAmount,followUpDate,riskCategory,auditType,referenceNumber) VALUES (3,303,'Sofia Lee','2023-10-12','Security','Insufficient CCTV coverage','Low','Add two cameras','2024-01-15','Closed','Cameras installed on 2023-12-01','2023-10-14','2023-10-14','/docs/audit303.pdf',88.3,0,'2024-02-01','Security','Internal','AUD-303-03');