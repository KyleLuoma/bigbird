-- Safety inspections performed before each race
CREATE TABLE safety_inspections
(
    inspectionId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    circuitId INTEGER,
    inspectorId INTEGER,
    inspectionDate DATE,
    startTime TEXT,
    endTime TEXT,
    weatherCondition TEXT,
    trackSurfaceTemp REAL,
    humidity REAL,
    visibility REAL,
    barriersIntact INTEGER,
    runoffClear INTEGER,
    flagStationOk INTEGER,
    medicalTeamReady INTEGER,
    fireExtinguishersOk INTEGER,
    signageOk INTEGER,
    notes TEXT,
    overallStatus TEXT,
    createdAt DATE,
    updatedAt DATE
);
INSERT INTO safety_inspections (raceId,circuitId,inspectorId,inspectionDate,startTime,endTime,weatherCondition,trackSurfaceTemp,humidity,visibility,barriersIntact,runoffClear,flagStationOk,medicalTeamReady,fireExtinguishersOk,signageOk,notes,overallStatus,createdAt,updatedAt) VALUES (101,5,12,'2025-03-10','07:00','09:30','Clear',32.5,45.0,10.0,1,1,1,1,1,1,'All good','Pass','2025-03-08','2025-03-09');
INSERT INTO safety_inspections (raceId,circuitId,inspectorId,inspectionDate,startTime,endTime,weatherCondition,trackSurfaceTemp,humidity,visibility,barriersIntact,runoffClear,flagStationOk,medicalTeamReady,fireExtinguishersOk,signageOk,notes,overallStatus,createdAt,updatedAt) VALUES (102,7,15,'2025-04-12','06:45','09:15','Cloudy',30.2,55.0,9.5,1,0,1,1,1,1,'Runoff area blocked','Fail','2025-04-10','2025-04-11');
INSERT INTO safety_inspections (raceId,circuitId,inspectorId,inspectionDate,startTime,endTime,weatherCondition,trackSurfaceTemp,humidity,visibility,barriersIntact,runoffClear,flagStationOk,medicalTeamReady,fireExtinguishersOk,signageOk,notes,overallStatus,createdAt,updatedAt) VALUES (103,3,9,'2025-05-05','07:15','10:00','Sunny',35.0,40.0,10.0,1,1,1,1,1,1,'No issues','Pass','2025-05-03','2025-05-04');

-- Logistics shipments for race equipment
CREATE TABLE logistics_shipments
(
    shipmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    supplierName TEXT,
    itemDescription TEXT,
    quantity INTEGER,
    weightKg REAL,
    containerNumber TEXT,
    departurePort TEXT,
    arrivalPort TEXT,
    departureDate DATE,
    arrivalDate DATE,
    customsClearance TEXT,
    carrierName TEXT,
    driverName TEXT,
    driverLicense TEXT,
    vehicleNumber TEXT,
    temperatureControlled INTEGER,
    sealed INTEGER,
    receivedBy TEXT,
    inspectionResult TEXT,
    createdAt DATE,
    updatedAt DATE
);
INSERT INTO logistics_shipments (raceId,supplierName,itemDescription,quantity,weightKg,containerNumber,departurePort,arrivalPort,departureDate,arrivalDate,customsClearance,carrierName,driverName,driverLicense,vehicleNumber,temperatureControlled,sealed,receivedBy,inspectionResult,createdAt,updatedAt) VALUES (101,'FastParts','Engine blocks',4,1200.5,'CNU12345','Rotterdam','Monaco','2025-03-01','2025-03-08','Cleared','TransLog','John Doe','DL123456','VAN001',0,1,'Mike Smith','Pass','2025-02-28','2025-03-02');
INSERT INTO logistics_shipments (raceId,supplierName,itemDescription,quantity,weightKg,containerNumber,departurePort,arrivalPort,departureDate,arrivalDate,customsClearance,carrierName,driverName,driverLicense,vehicleNumber,temperatureControlled,sealed,receivedBy,inspectionResult,createdAt,updatedAt) VALUES (102,'SpeedGear','Tyre sets',12,850.0,'CNU67890','Hamburg','Silverstone','2025-04-02','2025-04-09','Pending','QuickShip','Alice Brown','DL987654','VAN042',0,0,'Laura Chen','Fail','2025-04-01','2025-04-03');
INSERT INTO logistics_shipments (raceId,supplierName,itemDescription,quantity,weightKg,containerNumber,departurePort,arrivalPort,departureDate,arrivalDate,customsClearance,carrierName,driverName,driverLicense,vehicleNumber,temperatureControlled,sealed,receivedBy,inspectionResult,createdAt,updatedAt) VALUES (103,'AeroTech','Fuel tanks',2,500.0,'CNU54321','Antwerp','Monaco','2025-04-28','2025-05-04','Cleared','AirFreight','Bob Lee','DL112233','VAN099',1,1,'Sam Patel','Pass','2025-04-27','2025-04-29');

-- Hospitality rooms for team guests
CREATE TABLE hospitality_rooms
(
    roomId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    hotelName TEXT,
    roomNumber TEXT,
    roomType TEXT,
    bedCount INTEGER,
    occupancyStatus TEXT,
    checkInDate DATE,
    checkOutDate DATE,
    guestName TEXT,
    guestNationality TEXT,
    ratePerNight REAL,
    breakfastIncluded INTEGER,
    wifiAvailable INTEGER,
    minibarAvailable INTEGER,
    cleaningStatus TEXT,
    specialRequests TEXT,
    createdAt DATE,
    updatedAt DATE,
    notes TEXT,
    isPaid INTEGER
);
INSERT INTO hospitality_rooms (raceId,hotelName,roomNumber,roomType,bedCount,occupancyStatus,checkInDate,checkOutDate,guestName,guestNationality,ratePerNight,breakfastIncluded,wifiAvailable,minibarAvailable,cleaningStatus,specialRequests,createdAt,updatedAt,notes,isPaid) VALUES (101,'Grand Monaco','101A','Deluxe',2,'Occupied','2025-03-09','2025-03-12','Laura Gomez','Spain',350.0,1,1,1,'Cleaned','Late check‑in','2025-03-01','2025-03-05','',1);
INSERT INTO hospitality_rooms (raceId,hotelName,roomNumber,roomType,bedCount,occupancyStatus,checkInDate,checkOutDate,guestName,guestNationality,ratePerNight,breakfastIncluded,wifiAvailable,minibarAvailable,cleaningStatus,specialRequests,createdAt,updatedAt,notes,isPaid) VALUES (102,'Silverstone Lodge','202B','Suite',3,'Vacant','2025-04-12','2025-04-15','Mark Liu','Canada',420.0,1,1,0,'Pending','Extra pillows','2025-04-02','2025-04-06','',0);
INSERT INTO hospitality_rooms (raceId,hotelName,roomNumber,roomType,bedCount,occupancyStatus,checkInDate,checkOutDate,guestName,guestNationality,ratePerNight,breakfastIncluded,wifiAvailable,minibarAvailable,cleaningStatus,specialRequests,createdAt,updatedAt,notes,isPaid) VALUES (103,'Circuit Hotel','303C','Standard',1,'Occupied','2025-05-03','2025-05-06','Ana Silva','Brazil',210.0,0,1,1,'Cleaned','Quiet room','2025-04-25','2025-04-28','',1);

-- Media accreditation records
CREATE TABLE media_accreditations
(
    accreditationId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    mediaOutlet TEXT,
    reporterName TEXT,
    reporterContact TEXT,
    credentialType TEXT,
    issueDate DATE,
    expiryDate DATE,
    accessLevel TEXT,
    parkingPass INTEGER,
    loungeAccess INTEGER,
    cameraAllowed INTEGER,
    microphoneAllowed INTEGER,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    accreditationStatus TEXT,
    photoId TEXT,
    badgeNumber TEXT,
    email TEXT,
    phone TEXT
);
INSERT INTO media_accreditations (raceId,mediaOutlet,reporterName,reporterContact,credentialType,issueDate,expiryDate,accessLevel,parkingPass,loungeAccess,cameraAllowed,microphoneAllowed,notes,createdAt,updatedAt,accreditationStatus,photoId,badgeNumber,email,phone) VALUES (101,'Racing Daily','Tom Reed','555-1234','Full','2025-03-01','2025-04-01','AllAreas',1,1,1,0,'','2025-02-20','2025-02-21','Active','IMG001','BAD1001','tom.reed@racingdaily.com','5551234');
INSERT INTO media_accreditations (raceId,mediaOutlet,reporterName,reporterContact,credentialType,issueDate,expiryDate,accessLevel,parkingPass,loungeAccess,cameraAllowed,microphoneAllowed,notes,createdAt,updatedAt,accreditationStatus,photoId,badgeNumber,email,phone) VALUES (102,'Speed Press','Eva Green','555-5678','Limited','2025-04-10','2025-05-10','Paddock',0,1,0,0,'No camera','2025-04-01','2025-04-02','Active','IMG002','BAD1002','eva.green@speedpress.com','5555678');
INSERT INTO media_accreditations (raceId,mediaOutlet,reporterName,reporterContact,credentialType,issueDate,expiryDate,accessLevel,parkingPass,loungeAccess,cameraAllowed,microphoneAllowed,notes,createdAt,updatedAt,accreditationStatus,photoId,badgeNumber,email,phone) VALUES (103,'Track TV','Liam Wong','555-9012','Full','2025-05-01','2025-06-01','AllAreas',1,1,1,1,'','2025-04-20','2025-04-21','Pending','IMG003','BAD1003','liam.wong@tracktv.com','5559012');

-- Ticket sales data
CREATE TABLE ticket_sales
(
    saleId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    vendorName TEXT,
    ticketCategory TEXT,
    price REAL,
    quantitySold INTEGER,
    totalAmount REAL,
    saleDate DATE,
    buyerName TEXT,
    buyerEmail TEXT,
    buyerPhone TEXT,
    paymentMethod TEXT,
    transactionId TEXT,
    seatSection TEXT,
    seatRow TEXT,
    seatNumber TEXT,
    discountCode TEXT,
    isRefunded INTEGER,
    refundDate DATE,
    notes TEXT,
    createdAt DATE
);
INSERT INTO ticket_sales (raceId,vendorName,ticketCategory,price,quantitySold,totalAmount,saleDate,buyerName,buyerEmail,buyerPhone,paymentMethod,transactionId,seatSection,seatRow,seatNumber,discountCode,isRefunded,refundDate,notes,createdAt) VALUES (101,'TicketMaster','Premium',250.0,3,750.0,'2025-03-05','John Doe','john.doe@example.com','5551111','CreditCard','TXN1001','A','12','5','SPRING','0',NULL,'','2025-03-01');
INSERT INTO ticket_sales (raceId,vendorName,ticketCategory,price,quantitySold,totalAmount,saleDate,buyerName,buyerEmail,buyerPhone,paymentMethod,transactionId,seatSection,seatRow,seatNumber,discountCode,isRefunded,refundDate,notes,createdAt) VALUES (102,'EventBrite','Standard',120.0,2,240.0,'2025-04-08','Anna Kim','anna.kim@example.com','5552222','PayPal','TXN1002','B','08','22','',0,NULL,'','2025-04-02');
INSERT INTO ticket_sales (raceId,vendorName,ticketCategory,price,quantitySold,totalAmount,saleDate,buyerName,buyerEmail,buyerPhone,paymentMethod,transactionId,seatSection,seatRow,seatNumber,discountCode,isRefunded,refundDate,notes,createdAt) VALUES (103,'BoxOffice','VIP',400.0,1,400.0,'2025-05-02','Carlos Ruiz','carlos.ruiz@example.com','5553333','BankTransfer','TXN1003','C','01','1','VIP2025',1,'2025-05-10','Refund issued','2025-04-28');

-- Vendor contract information
CREATE TABLE vendor_contracts
(
    contractId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    vendorName TEXT,
    contractStart DATE,
    contractEnd DATE,
    serviceType TEXT,
    contactPerson TEXT,
    contactEmail TEXT,
    contactPhone TEXT,
    fee REAL,
    currency TEXT,
    paymentTerms TEXT,
    penaltyClause TEXT,
    insuranceRequired INTEGER,
    insuranceProvider TEXT,
    insurancePolicyNumber TEXT,
    performanceBond INTEGER,
    bondAmount REAL,
    status TEXT,
    lastReview DATE,
    notes TEXT
);
INSERT INTO vendor_contracts (raceId,vendorName,contractStart,contractEnd,serviceType,contactPerson,contactEmail,contactPhone,fee,currency,paymentTerms,penaltyClause,insuranceRequired,insuranceProvider,insurancePolicyNumber,performanceBond,bondAmount,status,lastReview,notes) VALUES (101,'FuelCo','2025-02-01','2025-04-30','Fuel Supply','Mike Ross','mike.ross@fuelco.com','5554444',15000.0,'USD','30days','Late delivery penalty','1','GlobalInsure','POL12345',1,5000.0,'Active','2025-03-15','');
INSERT INTO vendor_contracts (raceId,vendorName,contractStart,contractEnd,serviceType,contactPerson,contactEmail,contactPhone,fee,currency,paymentTerms,penaltyClause,insuranceRequired,insuranceProvider,insurancePolicyNumber,performanceBond,bondAmount,status,lastReview,notes) VALUES (102,'TechGear','2025-03-15','2025-06-15','Telemetry Equipment','Sarah Lee','sarah.lee@techgear.com','5555555',25000.0,'EUR','45days','Equipment damage','0',NULL,NULL,0,0.0,'Pending','2025-04-01','Awaiting signatures');
INSERT INTO vendor_contracts (raceId,vendorName,contractStart,contractEnd,serviceType,contactPerson,contactEmail,contactPhone,fee,currency,paymentTerms,penaltyClause,insuranceRequired,insuranceProvider,insurancePolicyNumber,performanceBond,bondAmount,status,lastReview,notes) VALUES (103,'HospitalityPlus','2025-04-01','2025-07-01','VIP Services','Laura Chen','laura.chen@hospitalityplus.com','5556666',18000.0,'GBP','60days','Cancellation fee','1','SecureInsure','POL67890',1,3000.0,'Active','2025-04-20','Renewal due Q3');

-- Official assignments for race duties
CREATE TABLE official_assignments
(
    assignmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    officialName TEXT,
    role TEXT,
    qualificationLevel TEXT,
    assignedDate DATE,
    startTime TEXT,
    endTime TEXT,
    nationality TEXT,
    badgeNumber TEXT,
    contactPhone TEXT,
    email TEXT,
    isOnDuty INTEGER,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    replacementFor INTEGER,
    shiftNumber INTEGER,
    areaAssigned TEXT,
    languageSpoken TEXT,
    yearsExperience INTEGER
);
INSERT INTO official_assignments (raceId,officialName,role,qualificationLevel,assignedDate,startTime,endTime,nationality,badgeNumber,contactPhone,email,isOnDuty,notes,createdAt,updatedAt,replacementFor,shiftNumber,areaAssigned,languageSpoken,yearsExperience) VALUES (101,'Peter Novak','Steward','Level2','2025-03-09','07:00','15:00','Czech','ST123','5557777','peter.novak@fia.com',1,'','2025-03-01','2025-03-02',NULL,1,'Paddock','English',12);
INSERT INTO official_assignments (raceId,officialName,role,qualificationLevel,assignedDate,startTime,endTime,nationality,badgeNumber,contactPhone,email,isOnDuty,notes,createdAt,updatedAt,replacementFor,shiftNumber,areaAssigned,languageSpoken,yearsExperience) VALUES (102,'Helena Ruiz','Timing Chief','Level3','2025-04-10','08:00','16:00','Spain','TC456','5558888','helena.ruiz@fia.com',1,'','2025-04-02','2025-04-03',NULL,2,'Timing Tower','Spanish',15);
INSERT INTO official_assignments (raceId,officialName,role,qualificationLevel,assignedDate,startTime,endTime,nationality,badgeNumber,contactPhone,email,isOnDuty,notes,createdAt,updatedAt,replacementFor,shiftNumber,areaAssigned,languageSpoken,yearsExperience) VALUES (103,'David Kim','Marshal','Level1','2025-05-03','06:30','14:30','SouthKorea','ML789','5559999','david.kim@fia.com',0,'Sick leave','2025-04-25','2025-04-26',2,1,'Marshalling','Korean',8);

-- Race photography metadata
CREATE TABLE race_photography
(
    photoId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    photographerName TEXT,
    cameraModel TEXT,
    lensSpec TEXT,
    iso INTEGER,
    aperture TEXT,
    shutterSpeed TEXT,
    shotDate DATE,
    shotTime TEXT,
    location TEXT,
    imageFormat TEXT,
    resolution TEXT,
    fileSizeMB REAL,
    isApproved INTEGER,
    usageRights TEXT,
    notes TEXT,
    uploadedAt DATE,
    editedBy TEXT,
    editVersion INTEGER,
    rating INTEGER
);
INSERT INTO race_photography (raceId,photographerName,cameraModel,lensSpec,iso,aperture,shutterSpeed,shotDate,shotTime,location,imageFormat,resolution,fileSizeMB,isApproved,usageRights,notes,uploadedAt,editedBy,editVersion,rating) VALUES (101,'Marco Silva','Canon EOS 5D','24-70mm f/2.8',2000,'f/4','1/500','2025-03-10','09:15','Turn 1','JPEG','4000x3000',5.2,1,'Editorial','Excellent lighting','2025-03-11','Jenna Lee',1,9);
INSERT INTO race_photography (raceId,photographerName,cameraModel,lensSpec,iso,aperture,shutterSpeed,shotDate,shotTime,location,imageFormat,resolution,fileSizeMB,isApproved,usageRights,notes,uploadedAt,editedBy,editVersion,rating) VALUES (102,'Sofia Patel','Nikon D850','70-200mm f/2.8',3200,'f/2.8','1/1000','2025-04-12','11:30','Pit lane','RAW','6000x4000',12.8,0,'Restricted','Need color correction','2025-04-13','Mark Torres',0,6);
INSERT INTO race_photography (raceId,photographerName,cameraModel,lensSpec,iso,aperture,shutterSpeed,shotDate,shotTime,location,imageFormat,resolution,fileSizeMB,isApproved,usageRights,notes,uploadedAt,editedBy,editVersion,rating) VALUES (103,'Lars Jensen','Sony A7R IV','16-35mm f/2.8',2500,'f/5.6','1/250','2025-05-05','13:45','Finish line','JPEG','8000x6000',8.4,1,'Commercial','Ready for release','2025-05-06','Olivia Nguyen',2,8);

-- Digital asset metadata repository
CREATE TABLE digital_asset_metadata
(
    assetId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    assetType TEXT,
    fileName TEXT,
    fileExtension TEXT,
    fileSizeBytes INTEGER,
    checksum TEXT,
    createdBy TEXT,
    createdAt DATE,
    modifiedBy TEXT,
    modifiedAt DATE,
    description TEXT,
    tags TEXT,
    isPublic INTEGER,
    accessLevel TEXT,
    retentionPolicy TEXT,
    expiresAt DATE,
    relatedRaceEvent TEXT,
    version INTEGER,
    usageCount INTEGER,
    notes TEXT
);
INSERT INTO digital_asset_metadata (raceId,assetType,fileName,fileExtension,fileSizeBytes,checksum,createdBy,createdAt,modifiedBy,modifiedAt,description,tags,isPublic,accessLevel,retentionPolicy,expiresAt,relatedRaceEvent,version,usageCount,notes) VALUES (101,'Video','race101_highlights','mp4',104857600,'AB12CD34EF56','Maria Gomez','2025-03-15','Maria Gomez','2025-03-16','Highlights of race 101','highlights,race101',0,'Internal','5years','2030-12-31','Race101','1',0,'');
INSERT INTO digital_asset_metadata (raceId,assetType,fileName,fileExtension,fileSizeBytes,checksum,createdBy,createdAt,modifiedBy,modifiedAt,description,tags,isPublic,accessLevel,retentionPolicy,expiresAt,relatedRaceEvent,version,usageCount,notes) VALUES (102,'Document','safety_report_q2','pdf',5242880,'78GH9JK0LM1N','John Smith','2025-04-20','John Smith','2025-04-21','Quarterly safety report','safety,report,q2',1,'Public','3years','2028-06-30','Race102','1',5,'');
INSERT INTO digital_asset_metadata (raceId,assetType,fileName,fileExtension,fileSizeBytes,checksum,createdBy,createdAt,modifiedBy,modifiedAt,description,tags,isPublic,accessLevel,retentionPolicy,expiresAt,relatedRaceEvent,version,usageCount,notes) VALUES (103,'Image','circuit_layout','png',2097152,'ZX98CV76BN54','Laura Chen','2025-05-08','Laura Chen','2025-05-09','Circuit layout for race 103','layout,circuit',0,'Restricted','7years','2032-01-01','Race103','2',1,'');

-- Environmental impact assessments
CREATE TABLE environmental_impact
(
    impactId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    carbonEmissionsKg REAL,
    wasteGeneratedKg REAL,
    waterUsageLiters REAL,
    noiseLevelDb REAL,
    airQualityIndex INTEGER,
    recyclingRate REAL,
    renewableEnergyPct REAL,
    faunaDisturbance TEXT,
    floraImpact TEXT,
    mitigationMeasures TEXT,
    reportDate DATE,
    reportedBy TEXT,
    verified INTEGER,
    verificationDate DATE,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    impactScore INTEGER,
    region TEXT,
    temperatureChangeC REAL
);
INSERT INTO environmental_impact (raceId,carbonEmissionsKg,wasteGeneratedKg,waterUsageLiters,noiseLevelDb,airQualityIndex,recyclingRate,renewableEnergyPct,faunaDisturbance,floraImpact,mitigationMeasures,reportDate,reportedBy,verified,verificationDate,notes,createdAt,updatedAt,impactScore,region,temperatureChangeC) VALUES (101,12500.5,3400.2,250000.0,92.0,45,0.68,0.30,'Low','Minimal','Tree planting program','2025-03-20','Emily Davis',1,'2025-03-22','', '2025-03-15','2025-03-16',78,'Europe',1.2);
INSERT INTO environmental_impact (raceId,carbonEmissionsKg,wasteGeneratedKg,waterUsageLiters,noiseLevelDb,airQualityIndex,recyclingRate,renewableEnergyPct,faunaDisturbance,floraImpact,mitigationMeasures,reportDate,reportedBy,verified,verificationDate,notes,createdAt,updatedAt,impactScore,region,temperatureChangeC) VALUES (102,13800.0,4000.0,300000.0,95.0,50,0.60,0.25,'Moderate','Significant','Carbon offset purchases','2025-04-25','James Lee',0,NULL,'Pending verification','2025-04-20','2025-04-22',85,'Europe',1.5);
INSERT INTO environmental_impact (raceId,carbonEmissionsKg,wasteGeneratedKg,waterUsageLiters,noiseLevelDb,airQualityIndex,recyclingRate,renewableEnergyPct,faunaDisturbance,floraImpact,mitigationMeasures,reportDate,reportedBy,verified,verificationDate,notes,createdAt,updatedAt,impactScore,region,temperatureChangeC) VALUES (103,11500.7,3100.5,220000.0,89.0,42,0.72,0.35,'Low','Minimal','Reusable cup initiative','2025-05-10','Sofia Patel',1,'2025-05-12','', '2025-05-05','2025-05-07',70,'Europe',0.9);