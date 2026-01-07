-- Driver Academy Programs
CREATE TABLE driver_academy_programs
(
    programId           INTEGER PRIMARY KEY AUTOINCREMENT,
    programName         TEXT NOT NULL,
    startDate           DATE,
    endDate             DATE,
    location            TEXT,
    capacity            INTEGER,
    instructorId        INTEGER,
    curriculumVersion   TEXT,
    eligibilityCriteria TEXT,
    cost                REAL,
    scholarshipAvailable TEXT,
    maxHours            INTEGER,
    certificationAwarded TEXT,
    contactEmail        TEXT,
    phoneNumber         TEXT,
    sponsorId           INTEGER,
    programType         TEXT,
    language            TEXT,
    createdAt           TEXT,
    updatedAt           TEXT,
    notes               TEXT
);

INSERT INTO driver_academy_programs (programName,startDate,endDate,location,capacity,instructorId,curriculumVersion,eligibilityCriteria,cost,scholarshipAvailable,maxHours,certificationAwarded,contactEmail,phoneNumber,sponsorId,programType,language,createdAt,updatedAt,notes) VALUES ('RookieBoost','2024-01-10','2024-04-20','Monaco','30','101','v1.0','age>=18',15000,'yes','120','FIALevel1','info@rookieboost.com','1234567890','201','FullTime','English','2023-12-01','2023-12-01','Initial launch');
INSERT INTO driver_academy_programs (programName,startDate,endDate,location,capacity,instructorId,curriculumVersion,eligibilityCriteria,cost,scholarshipAvailable,maxHours,certificationAwarded,contactEmail,phoneNumber,sponsorId,programType,language,createdAt,updatedAt,notes) VALUES ('SpeedLab','2024-03-15','2024-06-30','Silverstone','25','102','v2.1','previousRace>5',20000,'no','150','FIALevel2','contact@speedlab.com','0987654321','202','PartTime','German','2024-01-15','2024-01-15','Second cohort');
INSERT INTO driver_academy_programs (programName,startDate,endDate,location,capacity,instructorId,curriculumVersion,eligibilityCriteria,cost,scholarshipAvailable,maxHours,certificationAwarded,contactEmail,phoneNumber,sponsorId,programType,language,createdAt,updatedAt,notes) VALUES ('EvoDrive','2024-05-01','2024-09-15','Spa','40','103','v3.0','licenseA',18000,'yes','180','FIALevel3','support@evodrive.com','1122334455','203','FullTime','French','2024-02-20','2024-02-20','Pilot program');

-- Race Track Access Records
CREATE TABLE race_track_access_records
(
    accessRecordId      INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId              INTEGER,
    circuitId           INTEGER,
    personnelId         INTEGER,
    accessStartTime     TEXT,
    accessEndTime       TEXT,
    accessType          TEXT,
    purpose             TEXT,
    vehiclePlate        TEXT,
    badgeNumber         TEXT,
    authorizedBy        TEXT,
    securityLevel       TEXT,
    temperature         REAL,
    humidity            REAL,
    windSpeed           REAL,
    notes               TEXT,
    createdAt           TEXT,
    updatedAt           TEXT,
    ipAddress           TEXT,
    locationZone        TEXT
);

INSERT INTO race_track_access_records (raceId,circuitId,personnelId,accessStartTime,accessEndTime,accessType,purpose,vehiclePlate,badgeNumber,authorizedBy,securityLevel,temperature,humidity,windSpeed,notes,createdAt,updatedAt,ipAddress,locationZone) VALUES (101,1,5001,'2024-07-10 08:00','2024-07-10 12:00','Vehicle','EngineInspection','ABC123','B001','ChiefSec','High',22.5,55,12,'Engine check before session','2024-06-01','2024-06-01','192.168.1.10','Paddock');
INSERT INTO race_track_access_records (raceId,circuitId,personnelId,accessStartTime,accessEndTime,accessType,purpose,vehiclePlate,badgeNumber,authorizedBy,securityLevel,temperature,humidity,windSpeed,notes,createdAt,updatedAt,ipAddress,locationZone) VALUES (102,2,5002,'2024-08-15 13:30','2024-08-15 14:15','Pedestrian','MediaInterview','N/A','B023','MediaDir','Medium',25.0,48,8,'Press interview in pit lane','2024-07-05','2024-07-05','192.168.1.11','PitLane');
INSERT INTO race_track_access_records (raceId,circuitId,personnelId,accessStartTime,accessEndTime,accessType,purpose,vehiclePlate,badgeNumber,authorizedBy,securityLevel,temperature,humidity,windSpeed,notes,createdAt,updatedAt,ipAddress,locationZone) VALUES (103,3,5003,'2024-09-20 09:45','2024-09-20 11:00','Vehicle','FuelDelivery','DEF456','B045','OpsMgr','High',21.0,60,15,'Fuel truck entering service area','2024-08-10','2024-08-10','192.168.1.12','FuelDepot');

-- Sponsor Event Invitations
CREATE TABLE sponsor_event_invitations
(
    invitationId        INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId           INTEGER,
    eventId             INTEGER,
    inviteDate          DATE,
    inviteeName         TEXT,
    inviteeRole         TEXT,
    responseStatus      TEXT,
    rsvpDate            DATE,
    seatNumber          TEXT,
    hospitalityPackage  TEXT,
    specialRequests     TEXT,
    createdBy           TEXT,
    createdAt           TEXT,
    updatedAt           TEXT,
    contactPhone        TEXT,
    contactEmail        TEXT,
    eventLocation       TEXT,
    eventTime           TEXT,
    invitationCode      TEXT,
    notes               TEXT
);

INSERT INTO sponsor_event_invitations (sponsorId,eventId,inviteDate,inviteeName,inviteeRole,responseStatus,rsvpDate,seatNumber, hospitalityPackage,specialRequests,createdBy,createdAt,updatedAt,contactPhone,contactEmail,eventLocation,eventTime,invitationCode,notes) VALUES (301,501,'2024-03-01','John Doe','CEO','Accepted','2024-03-10','A12','Gold','Vegetarian','System','2024-02-20','2024-02-20','5551234567','jdoe@corp.com','Monaco','19:00','INV001','First invitation');
INSERT INTO sponsor_event_invitations (sponsorId,eventId,inviteDate,inviteeName,inviteeRole,responseStatus,rsvpDate,seatNumber, hospitalityPackage,specialRequests,createdBy,createdAt,updatedAt,contactPhone,contactEmail,eventLocation,eventTime,invitationCode,notes) VALUES (302,502,'2024-04-15','Alice Smith','MarketingDirector','Pending',NULL,'B34','Silver','WheelchairAccess','System','2024-04-01','2024-04-01','5559876543','asmith@brand.com','Silverstone','18:30','INV002','Second invitation');
INSERT INTO sponsor_event_invitations (sponsorId,eventId,inviteDate,inviteeName,inviteeRole,responseStatus,rsvpDate,seatNumber, hospitalityPackage,specialRequests,createdBy,createdAt,updatedAt,contactPhone,contactEmail,eventLocation,eventTime,invitationCode,notes) VALUES (303,503,'2024-05-10','Carlos Ruiz','RegionalHead','Declined',NULL,'C07','Bronze','None','System','2024-04-25','2024-04-25','5552223333','cruiz@global.com','Spa','20:00','INV003','Third invitation');

-- Broadcast Advertiser Segments
CREATE TABLE broadcast_advertiser_segments
(
    segmentId           INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId         INTEGER,
    advertiserId        INTEGER,
    startTime           TEXT,
    endTime             TEXT,
    adDuration          INTEGER,
    adType              TEXT,
    productCategory     TEXT,
    targetAudience      TEXT,
    impressions         INTEGER,
    cost                REAL,
    createdAt           TEXT,
    updatedAt           TEXT,
    segmentName         TEXT,
    creativeVersion     TEXT,
    viewabilityScore    REAL,
    clickThroughRate    REAL,
    frequencyCap        INTEGER,
    placementType       TEXT,
    notes               TEXT
);

INSERT INTO broadcast_advertiser_segments (broadcastId,advertiserId,startTime,endTime,adDuration,adType,productCategory,targetAudience,impressions,cost,createdAt,updatedAt,segmentName,creativeVersion,viewabilityScore,clickThroughRate,frequencyCap,placementType,notes) VALUES (801,401,'00:15:00','00:15:30',30,'Video','EnergyDrink','YoungAdults',150000,25000,'2024-02-10','2024-02-10','PreRaceBoost','v1','0.92','0.04','3','PreRoll','First segment');
INSERT INTO broadcast_advertiser_segments (broadcastId,advertiserId,startTime,endTime,adDuration,adType,productCategory,targetAudience,impressions,cost,createdAt,updatedAt,segmentName,creativeVersion,viewabilityScore,clickThroughRate,frequencyCap,placementType,notes) VALUES (802,402,'01:05:00','01:05:20',20,'Banner','LuxuryWatch','HighIncome',80000,18000,'2024-03-12','2024-03-12','MidRaceBanner','v2','0.88','0.02','2','MidRoll','Second segment');
INSERT INTO broadcast_advertiser_segments (broadcastId,advertiserId,startTime,endTime,adDuration,adType,productCategory,targetAudience,impressions,cost,createdAt,updatedAt,segmentName,creativeVersion,viewabilityScore,clickThroughRate,frequencyCap,placementType,notes) VALUES (803,403,'02:30:00','02:30:45',45,'Audio','ElectricCar','EcoConscious',120000,30000,'2024-04-08','2024-04-08','PostRaceAudio','v3','0.95','0.05','1','PostRoll','Third segment');

-- Team Aero Design Documents
CREATE TABLE team_aero_design_documents
(
    documentId          INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId              INTEGER,
    docTitle            TEXT,
    versionNumber       TEXT,
    releaseDate         DATE,
    authorId            INTEGER,
    docType             TEXT,
    confidentialityLevel TEXT,
    filePath            TEXT,
    fileSizeBytes       INTEGER,
    checksum            TEXT,
    approvedBy          TEXT,
    approvalDate        DATE,
    status              TEXT,
    relatedProjectId    INTEGER,
    notes               TEXT,
    createdAt           TEXT,
    updatedAt           TEXT,
    revisionCount       INTEGER,
    externalReference   TEXT
);

INSERT INTO team_aero_design_documents (teamId,docTitle,versionNumber,releaseDate,authorId,docType,confidentialityLevel,filePath,fileSizeBytes,checksum,approvedBy,approvalDate,status,relatedProjectId,notes,createdAt,updatedAt,revisionCount,externalReference) VALUES (601,'FrontWingDesign','v1.0','2024-01-20',701,'PDF','Confidential','/docs/wing_v1.pdf',204800,'abc123def','ChiefEng','2024-01-22','Approved',9001,'Initial design','2024-01-21','2024-01-21',1,'REF001');
INSERT INTO team_aero_design_documents (teamId,docTitle,versionNumber,releaseDate,authorId,docType,confidentialityLevel,filePath,fileSizeBytes,checksum,approvedBy,approvalDate,status,relatedProjectId,notes,createdAt,updatedAt,revisionCount,externalReference) VALUES (602,'RearDiffuserSpec','v2.1','2024-03-15',702,'DOCX','Restricted','/docs/diffuser_v2_1.docx',307200,'def456ghi','LeadAero','2024-03-18','Pending',9002,'Updated aerodynamic analyses','2024-03-16','2024-03-16',2,'REF002');
INSERT INTO team_aero_design_documents (teamId,docTitle,versionNumber,releaseDate,authorId,docType,confidentialityLevel,filePath,fileSizeBytes,checksum,approvedBy,approvalDate,status,relatedProjectId,notes,createdAt,updatedAt,revisionCount,externalReference) VALUES (603,'SidePodOptimization','v3.4','2024-05-05',703,'XLSX','Public','/docs/sidepod_opt_v3_4.xlsx',102400,'ghi789jkl','AeroMgr','2024-05-07','Approved',9003,'Final version for simulation','2024-05-06','2024-05-06',4,'REF003');

-- Spectator Service Requests
CREATE TABLE spectator_service_requests
(
    requestId           INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId              INTEGER,
    spectatorId         INTEGER,
    requestType         TEXT,
    requestDetail       TEXT,
    requestDate         DATE,
    status              TEXT,
    resolvedDate        DATE,
    assignedStaffId     INTEGER,
    priority            TEXT,
    contactMethod       TEXT,
    contactInfo         TEXT,
    notes               TEXT,
    createdAt           TEXT,
    updatedAt           TEXT,
    locationSection     TEXT,
    seatNumber          TEXT,
    responseTimeMinutes INTEGER,
    satisfactionScore   INTEGER
);

INSERT INTO spectator_service_requests (raceId,spectatorId,requestType,requestDetail,requestDate,status,resolvedDate,assignedStaffId,priority,contactMethod,contactInfo,notes,createdAt,updatedAt,locationSection,seatNumber,responseTimeMinutes,satisfactionScore) VALUES (101,10001,'Food','Vegetarian meal request','2024-07-09','Resolved','2024-07-09',3001,'High','Email','spectator1@example.com','Delivered on time','2024-07-08','2024-07-09','Grandstand','A45',15,5);
INSERT INTO spectator_service_requests (raceId,spectatorId,requestType,requestDetail,requestDate,status,resolvedDate,assignedStaffId,priority,contactMethod,contactInfo,notes,createdAt,updatedAt,locationSection,seatNumber,responseTimeMinutes,satisfactionScore) VALUES (102,10002,'Accessibility','Wheelchair access assistance','2024-08-14','InProgress',NULL,3002,'Medium','Phone','5551112222','Staff scheduled for next day','2024-08-13','2024-08-14','VIP','C12',30,0);
INSERT INTO spectator_service_requests (raceId,spectatorId,requestType,requestDetail,requestDate,status,resolvedDate,assignedStaffId,priority,contactMethod,contactInfo,notes,createdAt,updatedAt,locationSection,seatNumber,responseTimeMinutes,satisfactionScore) VALUES (103,10003,'Merchandise','Size L jacket request','2024-09-19','Resolved','2024-09-20',3003,'Low','App','spectator3@app.com','Picked up at merchandise desk','2024-09-19','2024-09-20','Paddock','B07',45,4);

-- Race Media Social Shares
CREATE TABLE race_media_social_shares
(
    shareId             INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId              INTEGER,
    platform            TEXT,
    postId              TEXT,
    shareDate           DATE,
    contentSnippet      TEXT,
    reach               INTEGER,
    engagement          INTEGER,
    likes               INTEGER,
    comments            INTEGER,
    shares              INTEGER,
    videoUrl            TEXT,
    imageUrl            TEXT,
    campaignId          INTEGER,
    creatorId           INTEGER,
    tagList             TEXT,
    sentimentScore      REAL,
    createdAt           TEXT,
    updatedAt           TEXT,
    notes               TEXT,
    url                 TEXT
);

INSERT INTO race_media_social_shares (raceId,platform,postId,shareDate,contentSnippet,reach,engagement,likes,comments,shares,videoUrl,imageUrl,campaignId,creatorId,tagList,sentimentScore,createdAt,updatedAt,notes,url) VALUES (101,'Twitter','tw123','2024-07-10','Epic start to the race!','50000','1200','1100','80','20','https://vid.example.com/101','https://img.example.com/101','401','601','#F1 #Monaco','0.85','2024-07-10','2024-07-10','High engagement','https://social.example.com/tw123');
INSERT INTO race_media_social_shares (raceId,platform,postId,shareDate,contentSnippet,reach,engagement,likes,comments,shares,videoUrl,imageUrl,campaignId,creatorId,tagList,sentimentScore,createdAt,updatedAt,notes,url) VALUES (102,'Facebook','fb456','2024-08-16','Key overtaking moment captured','75000','2000','1800','150','50','https://vid.example.com/102','https://img.example.com/102','402','602','#F1 #Silverstone','0.90','2024-08-16','2024-08-16','Viral post','https://social.example.com/fb456');
INSERT INTO race_media_social_shares (raceId,platform,postId,shareDate,contentSnippet,reach,engagement,likes,comments,shares,videoUrl,imageUrl,campaignId,creatorId,tagList,sentimentScore,createdAt,updatedAt,notes,url) VALUES (103,'Instagram','ig789','2024-09-21','Podium celebration highlights','65000','1500','1400','100','30','https://vid.example.com/103','https://img.example.com/103','403','603','#F1 #Spa','0.88','2024-09-21','2024-09-21','Great visual','https://social.example.com/ig789');

-- Fuel Supply Chain Events
CREATE TABLE fuel_supply_chain_events
(
    eventId             INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId              INTEGER,
    fuelSupplierId      INTEGER,
    eventType           TEXT,
    eventDate           DATE,
    quantityLiters      REAL,
    temperatureC        REAL,
    pressureBar         REAL,
    location            TEXT,
    transportMode       TEXT,
    vehicleId           INTEGER,
    driverId            INTEGER,
    complianceStatus    TEXT,
    notes               TEXT,
    recordedBy          TEXT,
    createdAt           TEXT,
    updatedAt           TEXT,
    incidentFlag        TEXT,
    severityLevel       INTEGER
);

INSERT INTO fuel_supply_chain_events (raceId,fuelSupplierId,eventType,eventDate,quantityLiters,temperatureC,pressureBar,location,transportMode,vehicleId,driverId,complianceStatus,notes,recordedBy,createdAt,updatedAt,incidentFlag,severityLevel) VALUES (101,801,'Delivery','2024-07-09',150000,25.0,3.5,'Monaco Service Yard','Truck',9001,5001,'Compliant','Standard delivery','OpsTeam','2024-07-09','2024-07-09','No',0);
INSERT INTO fuel_supply_chain_events (raceId,fuelSupplierId,eventType,eventDate,quantityLiters,temperatureC,pressureBar,location,transportMode,vehicleId,driverId,complianceStatus,notes,recordedBy,createdAt,updatedAt,incidentFlag,severityLevel) VALUES (102,802,'Spill','2024-08-15',5000,22.0,3.2,'Silverstone Tank','Truck',9002,5002,'NonCompliant','Minor spill contained','SafetyTeam','2024-08-15','2024-08-15','Yes',2);
INSERT INTO fuel_supply_chain_events (raceId,fuelSupplierId,eventType,eventDate,quantityLiters,temperatureC,pressureBar,location,transportMode,vehicleId,driverId,complianceStatus,notes,recordedBy,createdAt,updatedAt,incidentFlag,severityLevel) VALUES (103,803,'Inspection','2024-09-20',0,0,0,'Spa Inspection Point','Van',9003,5003,'Compliant','Pre‑race fuel quality check','QualityTeam','2024-09-20','2024-09-20','No',0);

-- Weather Station Daily Summaries
CREATE TABLE weather_station_daily_summaries
(
    summaryId           INTEGER PRIMARY KEY AUTOINCREMENT,
    stationId           INTEGER,
    date                DATE,
    avgTempC            REAL,
    maxTempC            REAL,
    minTempC            REAL,
    totalPrecipMm       REAL,
    avgWindSpeedKph     REAL,
    maxWindSpeedKph     REAL,
    dominantWindDir     TEXT,
    avgHumidityPct      REAL,
    sunshineHours       REAL,
    visibilityKm        REAL,
    pressureHpa         REAL,
    dewPointC           REAL,
    snowDepthCm         REAL,
    weatherCode         INTEGER,
    notes               TEXT,
    createdAt           TEXT,
    updatedAt           TEXT
);

INSERT INTO weather_station_daily_summaries (stationId,date,avgTempC,maxTempC,minTempC,totalPrecipMm,avgWindSpeedKph,maxWindSpeedKph,dominantWindDir,avgHumidityPct,sunshineHours,visibilityKm,pressureHpa,dewPointC,snowDepthCm,weatherCode,notes,createdAt,updatedAt) VALUES (101,'2024-07-09',24.5,30.2,18.7,0.0,12.5,25.0,'NE',55.0,9.0,20.0,1013,13.2,0,0,'Clear day','2024-07-09','2024-07-09');
INSERT INTO weather_station_daily_summaries (stationId,date,avgTempC,maxTempC,minTempC,totalPrecipMm,avgWindSpeedKph,maxWindSpeedKph,dominantWindDir,avgHumidityPct,sunshineHours,visibilityKm,pressureHpa,dewPointC,snowDepthCm,weatherCode,notes,createdAt,updatedAt) VALUES (102,'2024-08-15',19.0,25.5,13.2,5.2,15.0,30.0,'SW',70.0,5.5,18.0,1010,12.0,0,61,'Light rain','2024-08-15','2024-08-15');
INSERT INTO weather_station_daily_summaries (stationId,date,avgTempC,maxTempC,minTempC,totalPrecipMm,avgWindSpeedKph,maxWindSpeedKph,dominantWindDir,avgHumidityPct,sunshineHours,visibilityKm,pressureHpa,dewPointC,snowDepthCm,weatherCode,notes,createdAt,updatedAt) VALUES (103,'2024-09-20',22.3,28.0,16.5,0.0,10.0,22.0,'N',60.0,8.0,19.0,1015,11.5,0,0,'Partly cloudy','2024-09-20','2024-09-20');

-- Circuit Heritage Tour Guides
CREATE TABLE circuit_heritage_tour_guides
(
    guideId             INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId           INTEGER,
    guideName           TEXT,
    language            TEXT,
    tourStartTime       TEXT,
    tourEndTime         TEXT,
    maxGroupSize        INTEGER,
    contactPhone        TEXT,
    contactEmail        TEXT,
    experienceYears     INTEGER,
    certificationLevel  TEXT,
    salaryPerTour       REAL,
    availabilityDays    TEXT,
    notes               TEXT,
    createdAt           TEXT,
    updatedAt           TEXT,
    guideRating         REAL,
    photoUrl            TEXT,
    bio                 TEXT,
    tourFrequencyPerWeek INTEGER
);

INSERT INTO circuit_heritage_tour_guides (circuitId,guideName,language,tourStartTime,tourEndTime,maxGroupSize,contactPhone,contactEmail,experienceYears,certificationLevel,salaryPerTour,availabilityDays,notes,createdAt,updatedAt,guideRating,photoUrl,bio,tourFrequencyPerWeek) VALUES (1,'Marco Rossi','Italian','09:00','11:00',15,'5557778888','marco.rossi@guides.com',8,'Level2',120.00','MonTueWed','Specializes in classic cars','2024-01-15','2024-01-15',4.7,'/images/marco.jpg','Former racer turned guide',3);
INSERT INTO circuit_heritage_tour_guides (circuitId,guideName,language,tourStartTime,tourEndTime,maxGroupSize,contactPhone,contactEmail,experienceYears,certificationLevel,salaryPerTour,availabilityDays,notes,createdAt,updatedAt,guideRating,photoUrl,bio,tourFrequencyPerWeek) VALUES (2,'Emily Clarke','English','13:00','15:30',20,'5559990000','emily.clarke@guides.com',5,'Level1',150.00','ThuFriSat','Focus on technical history','2024-02-01','2024-02-01',4.5,'/images/emily.jpg','Engineer with passion for heritage','2');
INSERT INTO circuit_heritage_tour_guides (circuitId,guideName,language,tourStartTime,tourEndTime,maxGroupSize,contactPhone,contactEmail,experienceYears,certificationLevel,salaryPerTour,availabilityDays,notes,createdAt,updatedAt,guideRating,photoUrl,bio,tourFrequencyPerWeek) VALUES (3,'Liu Wei','Mandarin','10:30','12:30',12,'5553334444','liu.wei@guides.com',10,'Level3',200.00','MonWedFri','Expert on circuit architecture','2024-03-10','2024-03-10',4.9,'/images/liu.jpg','Architectural historian','4');