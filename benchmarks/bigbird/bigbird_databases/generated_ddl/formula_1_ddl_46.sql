```sql
-- Augmented reality experiences logged during race events
CREATE TABLE augmented_reality_experiences_log (
    arExpId                INTEGER PRIMARY KEY AUTOINCREMENT,
    raceYear               INTEGER,
    eventName              TEXT,
    arDeviceId             TEXT,
    participantId          INTEGER,
    experienceType         TEXT,
    startTime              TEXT,
    endTime                TEXT,
    durationSeconds        INTEGER,
    fps                    REAL,
    resolution             TEXT,
    softwareVersion        TEXT,
    hardwareModel          TEXT,
    contentId              TEXT,
    engagementScore        REAL,
    feedbackRating         INTEGER,
    comments               TEXT,
    locationLat            REAL,
    locationLng            REAL,
    createdAt              TEXT
);

INSERT INTO augmented_reality_experiences_log VALUES (1,2023,'GrandPrixAR','AR001',101,'VirtualPit','2023-05-15 14:30','2023-05-15 14:35',300,60.0,'1920x1080','v2.3','MetaLens','CNT123',85.5,4,'Great experience',45.123,-73.456,'2023-05-15');
INSERT INTO augmented_reality_experiences_log VALUES (2,2024,'SprintAR','AR002',102,'TrackOverlay','2024-03-10 10:00','2024-03-10 10:07',420,55.5,'2560x1440','v3.0','HoloFit','CNT456',78.2,3,'Good but laggy',46.234,-74.567,'2024-03-10');
INSERT INTO augmented_reality_experiences_log VALUES (3,2025,'QualiVision','AR003',103,'HelmetView','2025-07-20 09:15','2025-07-20 09:20',300,70.0,'3840x2160','v4.1','VisiHead','CNT789',92.0,5,'Excellent clarity',47.345,-75.678,'2025-07-20');

--------------------------------------------------------------------------------
-- Mobility services provided to fans attending races
CREATE TABLE fan_mobility_services (
    serviceId           INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId              INTEGER,
    fanId               INTEGER,
    transportMode       TEXT,
    vehicleId           TEXT,
    departureTime       TEXT,
    arrivalTime         TEXT,
    distanceKm          REAL,
    carbonFootprintKg   REAL,
    seatClass           TEXT,
    ticketReference     TEXT,
    serviceStatus       TEXT,
    driverName          TEXT,
    contactNumber       TEXT,
    specialAssistance   TEXT,
    baggageAllowanceKg  REAL,
    priceUsd            REAL,
    currency            TEXT,
    createdDate         TEXT,
    notes               TEXT
);

INSERT INTO fan_mobility_services VALUES (1,101,2001,'Shuttle','SH001','2023-06-01 08:00','2023-06-01 08:45',30.5,4.2,'Standard','TK12345','Confirmed','John Doe','5551234','Wheelchair','15',12.5,'USD','2023-05-20','N/A');
INSERT INTO fan_mobility_services VALUES (2,102,2002,'ElectricBus','EB102','2023-07-15 09:30','2023-07-15 10:15',45.0,6.0,'Premium','TK67890','Pending','Alice Smith','5555678','None','20',20.0,'USD','2023-07-01','First time user');
INSERT INTO fan_mobility_services VALUES (3,103,2003,'BikeShare','BS305','2023-08-20 07:45','2023-08-20 08:10',5.2,0.3,'Standard','TK54321','Confirmed','Bob Lee','5559012','None','5',5.0,'USD','2023-08-05','Eco friendly option');

--------------------------------------------------------------------------------
-- Green initiatives undertaken at venues
CREATE TABLE venue_green_initiatives (
    initiativeId          INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId               INTEGER,
    initiativeName        TEXT,
    startDate             TEXT,
    endDate               TEXT,
    category              TEXT,
    description           TEXT,
    budgetUsd             REAL,
    energySavedMwh        REAL,
    waterSavedLiters      REAL,
    wasteReducedKg        REAL,
    treesPlanted          INTEGER,
    certifications        TEXT,
    partnerOrganization   TEXT,
    status                TEXT,
    responsiblePerson    TEXT,
    contactEmail          TEXT,
    reportingFrequency    TEXT,
    lastReportDate        TEXT,
    notes                 TEXT
);

INSERT INTO venue_green_initiatives VALUES (1,301,'Solar Rooftop','2022-01-01','2024-12-31','Energy','Installation of solar panels on main arena roof',250000,350.5,0,0,0,'LEED Gold','SolarCo','Active','Emma Green','emma.green@venue.com','Quarterly','2023-09-30','Projected savings on track');
INSERT INTO venue_green_initiatives VALUES (2,302,'Zero Waste Program','2023-03-15','2025-03-14','Waste','Comprehensive recycling and composting across all concession areas',120000,0,0,5000,0,'ISO 14001','EcoPartners','Planning','Liam Waste','liam.waste@venue.com','Monthly','2023-10-01','Pilot phase in sector A');
INSERT INTO venue_green_initiatives VALUES (3,303,'Rainwater Harvesting','2021-06-01','2026-05-31','Water','Capture and reuse rainwater for landscaping',80000,0,150000,0,0,'LEED Silver','AquaTech','Completed','Noah Rivers','noah.rivers@venue.com','Annual','2024-01-15','System fully operational');

--------------------------------------------------------------------------------
-- Details of awards presented on the podium
CREATE TABLE podium_award_details (
    awardId               INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId                INTEGER,
    year                  INTEGER,
    position              INTEGER,
    driverId              INTEGER,
    constructorId         INTEGER,
    awardName             TEXT,
    trophyMaterial        TEXT,
    sponsor               TEXT,
    prizeMoneyUsd         REAL,
    ceremonyTime          TEXT,
    ceremonyLocation      TEXT,
    presenterName         TEXT,
    broadcastChannel      TEXT,
    awardImageUrl         TEXT,
    description           TEXT,
    createdAt             TEXT,
    updatedAt             TEXT,
    isInternational       INTEGER,
    notes                 TEXT,
    awardCategory         TEXT,
    awardSeries           TEXT
);

INSERT INTO podium_award_details VALUES (1,401,2023,1,101,201,'World Champion','Gold','Global Motors',2500000,'2023-11-20 20:00','Main Stadium','Maria Lopez','ChannelOne','http://example.com/img1.png','Season finale award','2023-11-01','2023-11-01',1,'First ever digital trophy','Championship','SeriesA');
INSERT INTO podium_award_details VALUES (2,402,2023,2,102,202,'Sprint Winner','Silver','SpeedCorp',500000,'2023-09-15 18:30','Secondary Arena','Javier Martinez','ChannelTwo','http://example.com/img2.png','Mid‑season sprint award','2023-09-01','2023-09-01',0,'No special conditions','Sprint','SeriesB');
INSERT INTO podium_award_details VALUES (3,403,2023,3,103,203,'Pole Position','Bronze','AeroTech',250000,'2023-07-10 16:45','Qualifying Hall','Sofia Nguyen','ChannelThree','http://example.com/img3.png','Best qualifying performance','2023-07-01','2023-07-01',0,'Award added this year','Qualifying','SeriesC');

--------------------------------------------------------------------------------
-- Trackside hologram display installations
CREATE TABLE trackside_hologram_displays (
    displayId               INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId               INTEGER,
    locationDescription     TEXT,
    modelNumber             TEXT,
    manufacturer            TEXT,
    installationDate        TEXT,
    resolution              TEXT,
    brightnessNits          REAL,
    powerConsumptionWatts   REAL,
    maintenanceIntervalDays INTEGER,
    lastServicedDate        TEXT,
    status                  TEXT,
    firmwareVersion         TEXT,
    remoteControlEnabled    INTEGER,
    displayAngleDegrees     REAL,
    dimensionsCm            TEXT,
    supportedFormats        TEXT,
    linkedContentId         TEXT,
    createdBy               TEXT,
    notes                   TEXT
);

INSERT INTO trackside_hologram_displays VALUES (1,501,'Turn 1 left side','HDL‑X1','HoloWorks','2022-05-10','3840x2160',1200,250,180,'2023-06-01','Operational','v1.4',1,45,'200x150','MP4,AVI','CNT001','TechTeam','First generation unit');
INSERT INTO trackside_hologram_displays VALUES (2,502,'Main straight center','HDL‑Z3','VisionTech','2023-01-20','1920x1080',900,180,365,'2023-12-15','Operational','v2.0',1,30,'180x120','MP4','CNT002','Engineering','Upgraded firmware');
INSERT INTO trackside_hologram_displays VALUES (3,503,'Turn 5 apex','HDL‑A7','FutureDisplay','2021-09-05','2560x1440',1100,220,90,'2022-11-20','Maintenance Required','v1.0',0,60,'210x160','AVI','CNT003','Maintenance','Spare parts pending');

--------------------------------------------------------------------------------
-- Timekeeper shift assignments for race timing
CREATE TABLE race_timekeeper_shifts (
    shiftId               INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId                INTEGER,
    shiftDate             TEXT,
    startTime             TEXT,
    endTime               TEXT,
    timekeeperName        TEXT,
    employeeId            INTEGER,
    shiftType             TEXT,
    equipmentId           TEXT,
    backupTimekeeper      TEXT,
    notes                 TEXT,
    createdAt             TEXT,
    updatedAt             TEXT,
    totalHours            REAL,
    breakDurationMinutes  INTEGER,
    verificationCode      TEXT,
    overtimeFlag          INTEGER,
    location              TEXT,
    supervisorName        TEXT,
    supervisorId          INTEGER
);

INSERT INTO race_timekeeper_shifts VALUES (1,601,'2023-06-10','08:00','16:00','Carlos Ramos',9001,'Day','EQ001','Ana Silva','All systems go','2023-05-20','2023-06-01',8.0,30,'VK123',0,'Timing Tower','Luis Gomez',300);
INSERT INTO race_timekeeper_shifts VALUES (2,602,'2023-07-15','14:00','22:00','Elena Petrova',9002,'Evening','EQ002','Mark Lee','Backup on standby','2023-07-01','2023-07-10',8.0,45,'VK124',1,'Control Room','Sofia Ruiz',301);
INSERT INTO race_timekeeper_shifts VALUES (3,603,'2023-08-20','22:00','06:00','Hiro Tanaka',9003,'Night','EQ003','Jenna Wu','Night shift extra vigilance','2023-08-01','2023-08-15',8.0,20,'VK125',0,'Remote Station','Tom Baker',302);

--------------------------------------------------------------------------------
-- Sponsor civic outreach programs
CREATE TABLE sponsor_civic_outreach (
    outreachId            INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId             INTEGER,
    programName           TEXT,
    startDate             TEXT,
    endDate               TEXT,
    targetCommunity       TEXT,
    budgetUsd             REAL,
    participantsCount     INTEGER,
    activitiesDescription TEXT,
    venue                 TEXT,
    contactPerson         TEXT,
    contactPhone          TEXT,
    status                TEXT,
    reportSubmitted       INTEGER,
    impactScore           REAL,
    mediaCoverageUrl      TEXT,
    createdAt             TEXT,
    updatedAt             TEXT,
    followUpDate          TEXT,
    notes                 TEXT,
    partnerNGO            TEXT
);

INSERT INTO sponsor_civic_outreach VALUES (1,701,'EcoDrive Initiative','2023-04-01','2023-09-30','Urban schools',50000,200,'Tree planting and recycling workshops','City Park','Marta Gomez','5551112','Completed',1,92.5,'http://example.com/coverage1','2023-04-05','2023-10-10','Pending final report','GreenFuture NGO');
INSERT INTO sponsor_civic_outreach VALUES (2,702,'Health on Wheels','2023-05-15','2023-12-15','Rural clinics',75000,150,'Mobile health screenings','Mobile Unit','Victor Lee','5553322','Ongoing',0,85.0,'http://example.com/coverage2','2023-05-20','2023-11-01','Schedule next visit','HealthAid Org');
INSERT INTO sponsor_civic_outreach VALUES (3,703,'STEM Mentorship','2023-03-01','2024-02-28','High school students',60000,120,'Robotics and coding camps','Tech Hub','Laura Kim','5554433','Planned',0,0.0,'','2023-03-05','2023-08-01','Awaiting sponsor approval','EduPartners');

--------------------------------------------------------------------------------
-- Driver cultural exchange programs
CREATE TABLE driver_cultural_exchange (
    exchangeId            INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId              INTEGER,
    hostCountry           TEXT,
    startDate             TEXT,
    endDate               TEXT,
    purpose               TEXT,
    programName           TEXT,
    sponsorId             INTEGER,
    stipendUsd            REAL,
    accommodations        TEXT,
    languageTrainingHours INTEGER,
    culturalActivities    TEXT,
    hostTeam              TEXT,
    mentorName            TEXT,
    evaluationScore       REAL,
    feedback              TEXT,
    createdAt             TEXT,
    updatedAt             TEXT,
    status                TEXT,
    documentationUrl      TEXT,
    notes                 TEXT
);

INSERT INTO driver_cultural_exchange VALUES (1,101,'Japan','2023-08-01','2023-08-21','Build international ties','East Asia Exchange',701,12000,'Hotel Grand','40','Tea ceremony and factory tour','Team Nippon','Kenichi Sato',88.5,'Positive experience','2023-07-15','2023-08-22','Completed','http://example.com/doc1','');
INSERT INTO driver_cultural_exchange VALUES (2,102,'Brazil','2024-01-10','2024-01-30','Market expansion','South America Outreach',702,15000,'Resort Villa','35','Samba workshop and track visit','Team Samba','Rafael Costa',91.0,'Highly engaging','2023-12-01','2024-02-01','Planned','http://example.com/doc2','');
INSERT INTO driver_cultural_exchange VALUES (3,103,'Germany','2023-05-05','2023-05-20','Technology sharing','Euro Tech Exchange',703,10000,'Apartment','30','Engineering seminars','Team German','Lars Weber',84.0,'Good learning outcomes','2023-04-20','2023-05-21','Completed','http://example.com/doc3','');

--------------------------------------------------------------------------------
-- Circuit heritage restoration projects
CREATE TABLE circuit_heritage_restorations (
    restorationId          INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId              INTEGER,
    artifactName           TEXT,
    restorationStartDate   TEXT,
    restorationEndDate     TEXT,
    conservatorName        TEXT,
    methodDescription      TEXT,
    materialsUsed          TEXT,
    costUsd                REAL,
    fundingSource          TEXT,
    heritageStatus         TEXT,
    documentationUrl       TEXT,
    photoUrl               TEXT,
    notes                  TEXT,
    approvedBy             TEXT,
    approvalDate           TEXT,
    currentCondition       TEXT,
    futurePreservationPlan TEXT,
    createdAt              TEXT,
    updatedAt              TEXT,
    isPublicAccess         INTEGER
);

INSERT INTO circuit_heritage_restorations VALUES (1,801,'Original Start/Finish Line','2022-03-01','2022-08-15','Ana Ribeiro','Gentle cleaning and protective coating','Silicone, acrylic','35000','Heritage Fund','Restored','http://example.com/docA','http://example.com/photoA','No major issues','Council Heritage Board','2022-09-01','Excellent','Annual monitoring','2022-02-20','2022-08-20',1);
INSERT INTO circuit_heritage_restorations VALUES (2,802,'Vintage Grandstand','2023-01-10','2023-06-30','Marco Liu','Structural reinforcement with steel frames','Steel, wood','75000','Private Sponsor','Repaired','http://example.com/docB','http://example.com/photoB','Awaiting final inspection','Architecture Committee','2023-07-10','Good','Scheduled repaint in 2025','2023-01-05','2023-07-01',0);
INSERT INTO circuit_heritage_restorations VALUES (3,803,'Historic Pit Wall','2021-09-15','2022-02-28','Sofia Patel','Surface restoration and signage update','Aluminum, vinyl','21000','Municipal Grant','Preserved','http://example.com/docC','http://example.com/photoC','Completed ahead of schedule','Historical Society','2022-03-15','Fair','Add digital guide in 2024','2021-09-01','2022-03-01',1);

--------------------------------------------------------------------------------
-- Media archival transcode records
CREATE TABLE media_archival_transcodes (
    transcodeId          INTEGER PRIMARY KEY AUTOINCREMENT,
    mediaAssetId         INTEGER,
    originalFormat       TEXT,
    targetFormat         TEXT,
    resolution           TEXT,
    bitrateKbps          INTEGER,
    durationSeconds      INTEGER,
    transcodingSoftware  TEXT,
    softwareVersion      TEXT,
    startTime            TEXT,
    endTime              TEXT,
    status               TEXT,
    errorMessage         TEXT,
    createdBy            TEXT,
    createdAt            TEXT,
    updatedAt            TEXT,
    storageLocation      TEXT,
    fileSizeMb           REAL,
    checksum             TEXT,
    notes                TEXT,
    isVerified           INTEGER
);

INSERT INTO media_archival_transcodes VALUES (1,9001,'RAW','MP4','3840x2160',12000,5400,'TranscodePro','3.2','2023-09-01 02:00','2023-09-01 06:30','Success','', 'MediaTeam','2023-09-01','2023-09-01','Archive/2023','3500.5','ABC123DEF','No issues',1);
INSERT INTO media_archival_transcodes VALUES (2,9002,'AVI','MKV','1920x1080',8000,3600,'FastEncode','1.8','2023-10-12 14:00','2023-10-12 15:45','Success','', 'MediaOps','2023-10-12','2023-10-12','Archive/2023','1500.0','XYZ789GHI','Batch processed',1);
INSERT INTO media_archival_transcodes VALUES (3,9003,'MOV','MP4','1280x720',5000,1800,'ConvertIt','2.5','2023-11-05 09:30','2023-11-05 10:15','Failed','Codec not supported','MediaSupport','2023-11-05','2023-11-05','Archive/2023','','DEF456JKL','Retry scheduled',0);
```