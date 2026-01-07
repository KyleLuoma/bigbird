-- Circuit Access Control Logs
CREATE TABLE circuit_access_control_logs
(
    logId                     INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId                 INTEGER NOT NULL,
    eventTimestamp            TEXT NOT NULL,
    gateId                    TEXT NOT NULL,
    staffId                   INTEGER,
    accessLevel               TEXT,
    cardId                    TEXT,
    vehiclePlate              TEXT,
    purpose                   TEXT,
    authorizedBy              TEXT,
    notes                     TEXT,
    ipAddress                 TEXT,
    deviceSerial              TEXT,
    temperatureCelsius        REAL,
    humidityPercent           REAL,
    windSpeedKph              REAL,
    visibilityMeters          REAL,
    weatherCondition          TEXT,
    securityProtocolVersion   TEXT,
    auditResult               TEXT
);

INSERT INTO circuit_access_control_logs (circuitId,eventTimestamp,gateId,staffId,accessLevel,cardId,vehiclePlate,purpose,authorizedBy,notes,ipAddress,deviceSerial,temperatureCelsius,humidityPercent,windSpeedKph,visibilityMeters,weatherCondition,securityProtocolVersion,auditResult) VALUES (1,'2024-03-15T08:12:00','G01',101,'Level1','CARD123','ABC1234','Vehicle Entry','SecChief','All good','192.168.1.10','DEV001',22.5,45.0,12.3,2000,'Clear','v1.0','Pass');
INSERT INTO circuit_access_control_logs (circuitId,eventTimestamp,gateId,staffId,accessLevel,cardId,vehiclePlate,purpose,authorizedBy,notes,ipAddress,deviceSerial,temperatureCelsius,humidityPercent,windSpeedKph,visibilityMeters,weatherCondition,securityProtocolVersion,auditResult) VALUES (2,'2024-03-15T09:45:30','G02',102,'Level2','CARD124','XYZ5678','Staff Access','OperationsMgr','Checked','192.168.1.11','DEV002',21.0,50.0,8.0,1500,'Cloudy','v1.0','Pass');
INSERT INTO circuit_access_control_logs (circuitId,eventTimestamp,gateId,staffId,accessLevel,cardId,vehiclePlate,purpose,authorizedBy,notes,ipAddress,deviceSerial,temperatureCelsius,humidityPercent,windSpeedKph,visibilityMeters,weatherCondition,securityProtocolVersion,auditResult) VALUES (3,'2024-03-15T10:20:45','G03',103,'Level3','CARD125','LMN3456','Delivery','LogisticsLead','Delayed','192.168.1.12','DEV003',23.2,55.0,10.5,1800,'Rain','v1.0','Fail');

-- Driver Media Interviews
CREATE TABLE driver_media_interviews
(
    interviewId               INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId                  INTEGER NOT NULL,
    interviewDate             TEXT NOT NULL,
    mediaOutlet               TEXT,
    interviewerName           TEXT,
    interviewFormat           TEXT,
    durationMinutes           INTEGER,
    language                  TEXT,
    transcriptUrl             TEXT,
    videoUrl                  TEXT,
    audienceReach             INTEGER,
    topicSummary              TEXT,
    keyQuotes                 TEXT,
    ratingScore               REAL,
    published                 INTEGER,
    copyrightNotice           TEXT,
    editVersion               INTEGER,
    tags                      TEXT,
    location                  TEXT,
    notes                     TEXT,
    archivePath               TEXT
);

INSERT INTO driver_media_interviews (driverId,interviewDate,mediaOutlet,interviewerName,interviewFormat,durationMinutes,language,transcriptUrl,videoUrl,audienceReach,topicSummary,keyQuotes,ratingScore,published,copyrightNotice,editVersion,tags,location,notes,archivePath) VALUES (1,'2024-02-20','MotorsportDaily','Jane Smith','Video','30','English','/transcripts/1.txt','/videos/1.mp4',250000,'Season outlook','Hard work pays off',4.5,1,'All rights reserved',1,'season,outlook','Monaco','No issues','/archive/driver1/2024/');
INSERT INTO driver_media_interviews (driverId,interviewDate,mediaOutlet,interviewerName,interviewFormat,durationMinutes,language,transcriptUrl,videoUrl,audienceReach,topicSummary,keyQuotes,ratingScore,published,copyrightNotice,editVersion,tags,location,notes,archivePath) VALUES (2,'2024-03-01','RacingWeekly','Mike Johnson','Podcast','45','English','/transcripts/2.txt','/videos/2.mp4',150000,'Tech innovations','New engine maps',4.2,1,'All rights reserved',1,'technology,engine','Silverstone','Trim audio','/archive/driver2/2024/');
INSERT INTO driver_media_interviews (driverId,interviewDate,mediaOutlet,interviewerName,interviewFormat,durationMinutes,language,transcriptUrl,videoUrl,audienceReach,topicSummary,keyQuotes,ratingScore,published,copyrightNotice,editVersion,tags,location,notes,archivePath) VALUES (3,'2024-04-05','GlobalRacing','Laura Chen','Written','10','English','/transcripts/3.txt','',80000,'Personal story','Never give up',4.8,1,'All rights reserved',1,'profile,personal','Spa','Approved','/archive/driver3/2024/');

-- Constructor Technology Partners
CREATE TABLE constructor_technology_partners
(
    partnershipId            INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId           INTEGER NOT NULL,
    partnerName             TEXT NOT NULL,
    partnershipStartDate    TEXT NOT NULL,
    partnershipEndDate      TEXT,
    technologyFocus         TEXT,
    contractValueUSD        REAL,
    contactPerson           TEXT,
    contactEmail            TEXT,
    contactPhone            TEXT,
    jurisdiction            TEXT,
    agreementDocumentUrl    TEXT,
    status                  TEXT,
    renewalOption           INTEGER,
    confidentialityLevel    TEXT,
    riskAssessmentScore     REAL,
    integrationLevel        TEXT,
    supportHoursPerMonth    INTEGER,
    dataSharingPolicy       TEXT,
    notes                   TEXT,
    lastReviewedDate        TEXT
);

INSERT INTO constructor_technology_partners (constructorId,partnerName,partnershipStartDate,partnershipEndDate,technologyFocus,contractValueUSD,contactPerson,contactEmail,contactPhone,jurisdiction,agreementDocumentUrl,status,renewalOption,confidentialityLevel,riskAssessmentScore,integrationLevel,supportHoursPerMonth,dataSharingPolicy,notes,lastReviewedDate) VALUES (1,'AeroDynamics Ltd','2022-01-01',NULL,'Aerodynamics',1250000,'John Doe','john.doe@aerodyn.com','+123456789','UK','/docs/partner1.pdf','Active',1,'High',3.2,'Full','40','Restricted','Renewal pending','2024-02-10');
INSERT INTO constructor_technology_partners (constructorId,partnerName,partnershipStartDate,partnershipEndDate,technologyFocus,contractValueUSD,contactPerson,contactEmail,contactPhone,jurisdiction,agreementDocumentUrl,status,renewalOption,confidentialityLevel,riskAssessmentScore,integrationLevel,supportHoursPerMonth,dataSharingPolicy,notes,lastReviewedDate) VALUES (2,'TelemetryX','2023-06-15','2025-06-14','Telemetry',800000,'Alice Green','alice.green@telemetryx.com','+198765432','USA','/docs/partner2.pdf','Active',0,'Medium',2.8,'Partial','30','Open','Performance review scheduled','2024-03-01');
INSERT INTO constructor_technology_partners (constructorId,partnerName,partnershipStartDate,partnershipEndDate,technologyFocus,contractValueUSD,contactPerson,contactEmail,contactPhone,jurisdiction,agreementDocumentUrl,status,renewalOption,confidentialityLevel,riskAssessmentScore,integrationLevel,supportHoursPerMonth,dataSharingPolicy,notes,lastReviewedDate) VALUES (3,'FuelTech','2021-09-01','2024-09-01','Fuel Management',950000,'Mark Lee','mark.lee@fueltech.com','+1122334455','Germany','/docs/partner3.pdf','Expiring',1,'High',3.5,'Full','50','Restricted','Negotiations ongoing','2024-01-20');

-- Race Ceremony Schedule
CREATE TABLE race_ceremony_schedule
(
    ceremonyId              INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId                  INTEGER NOT NULL,
    ceremonyName            TEXT NOT NULL,
    startTime               TEXT NOT NULL,
    endTime                 TEXT,
    location                TEXT,
    presenterName           TEXT,
    sponsorName             TEXT,
    broadcastChannel        TEXT,
    broadcastDelaySeconds   INTEGER,
    audienceCapacity        INTEGER,
    ticketed                INTEGER,
    vipAccess               INTEGER,
    lightingPlan            TEXT,
    soundPlan               TEXT,
    securityBriefingTime    TEXT,
    rehearsalRequired       INTEGER,
    notes                   TEXT,
    createdBy               TEXT,
    createdDate             TEXT,
    lastModifiedDate        TEXT
);

INSERT INTO race_ceremony_schedule (raceId,ceremonyName,startTime,endTime,location,presenterName,sponsorName,broadcastChannel,broadcastDelaySeconds,audienceCapacity,ticketed,vipAccess,lightingPlan,soundPlan,securityBriefingTime,rehearsalRequired,notes,createdBy,createdDate,lastModifiedDate) VALUES (1,'National Anthem','2024-05-01 13:00','2024-05-01 13:10','Main Plaza','Emma Brown','EnergyCo','Channel1',5,5000,1,1,'Standard','Standard','12:30',1,'No issues','admin','2024-02-01','2024-02-10');
INSERT INTO race_ceremony_schedule (raceId,ceremonyName,startTime,endTime,location,presenterName,sponsorName,broadcastChannel,broadcastDelaySeconds,audienceCapacity,ticketed,vipAccess,lightingPlan,soundPlan,securityBriefingTime,rehearsalRequired,notes,createdBy,createdDate,lastModifiedDate) VALUES (2,'Winner Presentation','2024-06-15 16:30','2024-06-15 16:45','Podium Area','Liam Smith','AutoParts','Channel2',3,3000,1,1,'Dynamic','Enhanced','15:00',1,'Check trophy availability','event_coordinator','2024-03-05','2024-03-12');
INSERT INTO race_ceremony_schedule (raceId,ceremonyName,startTime,endTime,location,presenterName,sponsorName,broadcastChannel,broadcastDelaySeconds,audienceCapacity,ticketed,vipAccess,lightingPlan,soundPlan,securityBriefingTime,rehearsalRequired,notes,createdBy,createdDate,lastModifiedDate) VALUES (3,'Driver Parade','2024-07-20 11:00','2024-07-20 11:20','Track Entrance','Sophie Lee','TechCorp','Channel3',2,4000,0,0,'Parade','Standard','09:30',0,'No tickets required','operations','2024-04-01','2024-04-08');

-- Fan Virtual Experience Metrics
CREATE TABLE fan_virtual_experience_metrics
(
    sessionId               INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId                   INTEGER NOT NULL,
    raceId                  INTEGER NOT NULL,
    deviceType              TEXT,
    headsetModel            TEXT,
    sessionStart            TEXT,
    sessionEnd              TEXT,
    totalDurationSeconds    INTEGER,
    averageFPS              REAL,
    latencyMs               REAL,
    droppedFrames           INTEGER,
    interactionCount        INTEGER,
    mostViewedAngle         TEXT,
    feedbackScore           REAL,
    reportedIssues          TEXT,
    vrZone                  TEXT,
    bandwidthMbps           REAL,
    cpuUsagePercent         REAL,
    gpuUsagePercent         REAL,
    memoryUsageMb           REAL,
    notes                   TEXT
);

INSERT INTO fan_virtual_experience_metrics (fanId,raceId,deviceType,headsetModel,sessionStart,sessionEnd,totalDurationSeconds,averageFPS,latencyMs,droppedFrames,interactionCount,mostViewedAngle,feedbackScore,reportedIssues,vrZone,bandwidthMbps,cpuUsagePercent,gpuUsagePercent,memoryUsageMb,notes) VALUES (101,1,'Oculus','Quest2','2024-05-01 13:05','2024-05-01 13:35',1800,72.5,30.2,12,45,'StartLine',4.6,'None','ZoneA',25.1,55.0,60.0,2100,'Smooth experience');
INSERT INTO fan_virtual_experience_metrics (fanId,raceId,deviceType,headsetModel,sessionStart,sessionEnd,totalDurationSeconds,averageFPS,latencyMs,droppedFrames,interactionCount,mostViewedAngle,feedbackScore,reportedIssues,vrZone,bandwidthMbps,cpuUsagePercent,gpuUsagePercent,memoryUsageMb,notes) VALUES (102,2,'HTC','VivePro','2024-06-15 16:40','2024-06-15 17:20',2400,68.0,45.0,30,60,'PitLane',4.2,'Audio lag','ZoneB',22.5,60.0,65.0,2500,'Minor audio issue');
INSERT INTO fan_virtual_experience_metrics (fanId,raceId,deviceType,headsetModel,sessionStart,sessionEnd,totalDurationSeconds,averageFPS,latencyMs,droppedFrames,interactionCount,mostViewedAngle,feedbackScore,reportedIssues,vrZone,bandwidthMbps,cpuUsagePercent,gpuUsagePercent,memoryUsageMb,notes) VALUES (103,3,'Valve','Index','2024-07-20 11:10','2024-07-20 11:45',2100,75.0,20.0,5,55,'Grandstand',4.9,'None','ZoneC',30.0,50.0,58.0,1900,'Excellent');

-- Driver Endurance Tests
CREATE TABLE driver_endurance_tests
(
    testId                  INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId                INTEGER NOT NULL,
    testDate                TEXT NOT NULL,
    durationMinutes         INTEGER,
    averageHeartRateBpm     INTEGER,
    maxHeartRateBpm         INTEGER,
    totalDistanceKm         REAL,
    avgSpeedKph             REAL,
    lactateLevelMmolL       REAL,
    hydrationLevelPercent  REAL,
    sleepHoursPrior         REAL,
    nutritionScore          REAL,
    mentalFocusScore        REAL,
    reactionTimeMs          REAL,
    staminaRating           TEXT,
    notes                   TEXT,
    conductedBy             TEXT,
    equipmentUsed           TEXT,
    environmentTemperatureC REAL,
    humidityPercent         REAL,
    result                  TEXT
);

INSERT INTO driver_endurance_tests (driverId,testDate,durationMinutes,averageHeartRateBpm,maxHeartRateBpm,totalDistanceKm,avgSpeedKph,lactateLevelMmolL,hydrationLevelPercent,sleepHoursPrior,nutritionScore,mentalFocusScore,reactionTimeMs,staminaRating,notes,conductedBy,equipmentUsed,environmentTemperatureC,humidityPercent,result) VALUES (1,'2024-01-20',180,115,175,30.5,10.2,2.1,85.0,7.5,8.5,9.0,250,High,'No issues','Dr. Allen','HR Monitor','20.0',45.0,'Pass');
INSERT INTO driver_endurance_tests (driverId,testDate,durationMinutes,averageHeartRateBpm,maxHeartRateBpm,totalDistanceKm,avgSpeedKph,lactateLevelMmolL,hydrationLevelPercent,sleepHoursPrior,nutritionScore,mentalFocusScore,reactionTimeMs,staminaRating,notes,conductedBy,equipmentUsed,environmentTemperatureC,humidityPercent,result) VALUES (2,'2024-02-15',200,120,180,35.0,10.5,2.5,80.0,6.0,8.0,8.5,260,Medium,'Mild dehydration','Dr. Rivera','GPS Tracker','22.0',50.0,'Pass with caution');
INSERT INTO driver_endurance_tests (driverId,testDate,durationMinutes,averageHeartRateBpm,maxHeartRateBpm,totalDistanceKm,avgSpeedKph,lactateLevelMmolL,hydrationLevelPercent,sleepHoursPrior,nutritionScore,mentalFocusScore,reactionTimeMs,staminaRating,notes,conductedBy,equipmentUsed,environmentTemperatureC,humidityPercent,result) VALUES (3,'2024-03-10',170,110,170,28.0,9.8,1.9,88.0,8.0,9.0,9.2,240,High,'Excellent','Dr. Kim','Wearable Sensors','18.0',40.0,'Pass');

-- Sponsor Research Projects
CREATE TABLE sponsor_research_projects
(
    projectId               INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId               INTEGER NOT NULL,
    projectName             TEXT NOT NULL,
    startDate               TEXT NOT NULL,
    endDate                 TEXT,
    researchArea            TEXT,
    budgetUSD               REAL,
    leadScientist           TEXT,
    status                  TEXT,
    milestonesCompleted     INTEGER,
    totalMilestones         INTEGER,
    publicationsCount       INTEGER,
    patentsFiled            INTEGER,
    dataSharingAgreement    TEXT,
    confidentialityLevel    TEXT,
    riskAssessmentScore     REAL,
    collaborationPartners   TEXT,
    deliverables            TEXT,
    notes                   TEXT,
    lastReviewDate          TEXT,
    createdBy               TEXT
);

INSERT INTO sponsor_research_projects (sponsorId,projectName,startDate,endDate,researchArea,budgetUSD,leadScientist,status,milestonesCompleted,totalMilestones,publicationsCount,patentsFiled,dataSharingAgreement,confidentialityLevel,riskAssessmentScore,collaborationPartners,deliverables,notes,lastReviewDate,createdBy) VALUES (1,'AeroFlow Optimization','2023-05-01','2025-04-30','Aerodynamics',2000000,'Dr. Vega','Active',3,5,2,1,'Yes','High',2.5,'UniversityX;SupplierY','Report, Prototype','On schedule','2024-02-20','project_manager');
INSERT INTO sponsor_research_projects (sponsorId,projectName,startDate,endDate,researchArea,budgetUSD,leadScientist,status,milestonesCompleted,totalMilestones,publicationsCount,patentsFiled,dataSharingAgreement,confidentialityLevel,riskAssessmentScore,collaborationPartners,deliverables,notes,lastReviewDate,createdBy) VALUES (2,'Fuel Efficiency Sensors','2024-01-15',NULL,'Fuel Management',1200000,'Dr. Patel','Planning',0,4,0,0,'No','Medium',3.0,'InstituteA;TechCo','Design Specs','Awaiting approval','2024-03-01','research_lead');
INSERT INTO sponsor_research_projects (sponsorId,projectName,startDate,endDate,researchArea,budgetUSD,leadScientist,status,milestonesCompleted,totalMilestones,publicationsCount,patentsFiled,dataSharingAgreement,confidentialityLevel,riskAssessmentScore,collaborationPartners,deliverables,notes,lastReviewDate,createdBy) VALUES (3,'Smart Tire Materials','2022-09-10','2024-09-09','Materials Science',950000,'Dr. Liu','Completed',4,4,5,3,'Yes','High',1.8,'LabB;PartnerC','Final Report, Patent','Delivered on time','2024-01-15','project_coordinator');

-- Track Electrical Usage
CREATE TABLE track_electrical_usage
(
    usageId                 INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId               INTEGER NOT NULL,
    recordDate              TEXT NOT NULL,
    totalConsumptionMWh    REAL,
    peakDemandMW            REAL,
    averageVoltageKV        REAL,
    averageCurrentKA        REAL,
    powerFactor             REAL,
    renewableSharePercent   REAL,
    outageDurationSeconds   INTEGER,
    criticalLoadMW          REAL,
    backupGeneratorStatus   TEXT,
    transformerLoadPercent  REAL,
    substationTemperatureC  REAL,
    humidityPercent         REAL,
    gridConnectionStatus    TEXT,
    maintenanceFlag         INTEGER,
    notes                   TEXT,
    recordedBy              TEXT,
    verificationTimestamp   TEXT,
    auditReference          TEXT
);

INSERT INTO track_electrical_usage (circuitId,recordDate,totalConsumptionMWh,peakDemandMW,averageVoltageKV,averageCurrentKA,powerFactor,renewableSharePercent,outageDurationSeconds,criticalLoadMW,backupGeneratorStatus,transformerLoadPercent,substationTemperatureC,humidityPercent,gridConnectionStatus,maintenanceFlag,notes,recordedBy,verificationTimestamp,auditReference) VALUES (1,'2024-04-01',150.5,12.3,0.4,30.8,0.98,45.0,0,'10.0','Online',85,'35.0',40,'Connected',0,'Normal operation','system','2024-04-01 08:00','AUD001');
INSERT INTO track_electrical_usage (circuitId,recordDate,totalConsumptionMWh,peakDemandMW,averageVoltageKV,averageCurrentKA,powerFactor,renewableSharePercent,outageDurationSeconds,criticalLoadMW,backupGeneratorStatus,transformerLoadPercent,substationTemperatureC,humidityPercent,gridConnectionStatus,maintenanceFlag,notes,recordedBy,verificationTimestamp,auditReference) VALUES (2,'2024-04-01',132.2,11.0,0.4,28.5,0.97,50.0,120,'9.5','Offline','70','33.0',45,'Disconnected',1,'Planned outage','system','2024-04-01 09:15','AUD002');
INSERT INTO track_electrical_usage (circuitId,recordDate,totalConsumptionMWh,peakDemandMW,averageVoltageKV,averageCurrentKA,powerFactor,renewableSharePercent,outageDurationSeconds,criticalLoadMW,backupGeneratorStatus,transformerLoadPercent,substationTemperatureC,humidityPercent,gridConnectionStatus,maintenanceFlag,notes,recordedBy,verificationTimestamp,auditReference) VALUES (3,'2024-04-01',145.8,12.0,0.4,29.9,0.99,48.0,30,'10.5','Online',78,'34.5',42,'Connected',0,'Minor voltage dip','system','2024-04-01 10:30','AUD003');

-- Race Legacy Documentation
CREATE TABLE race_legacy_documentation
(
    docId                   INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId                  INTEGER NOT NULL,
    documentType            TEXT NOT NULL,
    title                   TEXT,
    author                  TEXT,
    createdDate             TEXT,
    lastModifiedDate        TEXT,
    format                  TEXT,
    filePath                TEXT,
    checksum                TEXT,
    confidentialityLevel    TEXT,
    accessCount             INTEGER,
    relevantNotes           TEXT,
    archivalLocation        TEXT,
    digitalPreservation     TEXT,
    physicalLocation        TEXT,
    language                TEXT,
    version                 TEXT,
    relatedDocIds           TEXT,
    status                  TEXT
);

INSERT INTO race_legacy_documentation (raceId,documentType,title,author,createdDate,lastModifiedDate,format,filePath,checksum,confidentialityLevel,accessCount,relevantNotes,archivalLocation,digitalPreservation,physicalLocation,language,version,relatedDocIds,status) VALUES (1,'Report','Race 2023 Summary','John Doe','2023-12-01','2024-01-05','PDF','/archive/race1/summary.pdf','ABCD1234','Public',5,'Includes weather data','ArchiveRoomA','Yes','Shelf 12','English','v1.0','2,3','Complete');
INSERT INTO race_legacy_documentation (raceId,documentType,title,author,createdDate,lastModifiedDate,format,filePath,checksum,confidentialityLevel,accessCount,relevantNotes,archivalLocation,digitalPreservation,physicalLocation,language,version,relatedDocIds,status) VALUES (2,'Minutes','Steward Meeting Minutes','Jane Smith','2024-02-10','2024-02-12','DOCX','/archive/race2/minutes.docx','EFGH5678','Restricted',2,'Discussed incident 5','ArchiveRoomB','Yes','Cabinet 3','English','v1.0','4','Reviewed');
INSERT INTO race_legacy_documentation (raceId,documentType,title,author,createdDate,lastModifiedDate,format,filePath,checksum,confidentialityLevel,accessCount,relevantNotes,archivalLocation,digitalPreservation,physicalLocation,language,version,relatedDocIds,status) VALUES (3,'PhotoAlbum','Grand Prix 2024 Photos','Mike Lee','2024-07-21','2024-07-22','ZIP','/archive/race3/photos.zip','IJKL9012','Public',0,'High-resolution images','ArchiveRoomC','Yes','N/A','English','v1.0','','Pending');

-- Championship Point Systems
CREATE TABLE championship_point_systems
(
    systemId                INTEGER PRIMARY KEY AUTOINCREMENT,
    seasonYear              INTEGER NOT NULL,
    description             TEXT,
    pointsForPosition1      INTEGER,
    pointsForPosition2      INTEGER,
    pointsForPosition3      INTEGER,
    pointsForPosition4      INTEGER,
    pointsForPosition5      INTEGER,
    pointsForPosition6      INTEGER,
    pointsForPosition7      INTEGER,
    pointsForPosition8      INTEGER,
    pointsForPosition9      INTEGER,
    pointsForPosition10     INTEGER,
    pointsForPosition11     INTEGER,
    pointsForPosition12     INTEGER,
    pointsForPosition13     INTEGER,
    pointsForPosition14     INTEGER,
    pointsForPosition15     INTEGER,
    pointsForFastestLap     INTEGER,
    pointsForPolePosition   INTEGER,
    notes                   TEXT,
    createdBy               TEXT,
    createdDate             TEXT,
    lastUpdatedDate         TEXT
);

INSERT INTO championship_point_systems (seasonYear,description,pointsForPosition1,pointsForPosition2,pointsForPosition3,pointsForPosition4,pointsForPosition5,pointsForPosition6,pointsForPosition7,pointsForPosition8,pointsForPosition9,pointsForPosition10,pointsForPosition11,pointsForPosition12,pointsForPosition13,pointsForPosition14,pointsForPosition15,pointsForFastestLap,pointsForPolePosition,notes,createdBy,createdDate,lastUpdatedDate) VALUES (2023,'Standard FIA system',25,18,15,12,10,8,6,4,2,1,0,0,0,0,0,1,1,'No changes','admin','2023-01-01','2023-12-31');
INSERT INTO championship_point_systems (seasonYear,description,pointsForPosition1,pointsForPosition2,pointsForPosition3,pointsForPosition4,pointsForPosition5,pointsForPosition6,pointsForPosition7,pointsForPosition8,pointsForPosition9,pointsForPosition10,pointsForPosition11,pointsForPosition12,pointsForPosition13,pointsForPosition14,pointsForPosition15,pointsForFastestLap,pointsForPolePosition,notes,createdBy,createdDate,lastUpdatedDate) VALUES (2024,'Experimental expanded points',30,24,20,16,12,10,8,6,4,2,1,1,0,0,0,2,2,'Extra points for top 5','admin','2024-01-01','2024-12-31');
INSERT INTO championship_point_systems (seasonYear,description,pointsForPosition1,pointsForPosition2,pointsForPosition3,pointsForPosition4,pointsForPosition5,pointsForPosition6,pointsForPosition7,pointsForPosition8,pointsForPosition9,pointsForPosition10,pointsForPosition11,pointsForPosition12,pointsForPosition13,pointsForPosition14,pointsForPosition15,pointsForFastestLap,pointsForPolePosition,notes,createdBy,createdDate,lastUpdatedDate) VALUES (2025,'Proposed endurance format',25,20,16,13,10,8,6,5,4,3,2,1,0,0,0,1,1,'Endurance bonus laps','admin','2025-01-01','2025-12-31');

-- Driver Media Profiles (expanded)
CREATE TABLE driver_media_profiles
(
    profileId               INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId                INTEGER NOT NULL,
    platform                TEXT NOT NULL,
    username                TEXT NOT NULL,
    followerCount           INTEGER,
    engagementRate          REAL,
    verified                INTEGER,
    averagePostFrequency   INTEGER,
    contentCategory         TEXT,
    lastPostDate            TEXT,
    bio                     TEXT,
    profileImageUrl         TEXT,
    bannerImageUrl          TEXT,
    contactEmail            TEXT,
    contactPhone            TEXT,
    languagePreference      TEXT,
    contentWarningLevel     TEXT,
    monetizationEnabled     INTEGER,
    sponsorshipTag          TEXT,
    analyticsDashboardUrl   TEXT,
    notes                   TEXT,
    createdBy               TEXT,
    createdDate             TEXT,
    lastUpdatedDate         TEXT
);

INSERT INTO driver_media_profiles (driverId,platform,username,followerCount,engagementRate,verified,averagePostFrequency,contentCategory,lastPostDate,bio,profileImageUrl,bannerImageUrl,contactEmail,contactPhone,languagePreference,contentWarningLevel,monetizationEnabled,sponsorshipTag,analyticsDashboardUrl,notes,createdBy,createdDate,lastUpdatedDate) VALUES (1,'Instagram','speedking01',120000,4.5,1,5,'Motorsport','2024-04-10','Racing enthusiast','/images/driver1.jpg','/banners/driver1.png','driver1@team.com','+123456789','English','None',1,'TeamSponsor','/analytics/driver1','Active','admin','2024-01-01','2024-04-15');
INSERT INTO driver_media_profiles (driverId,platform,username,followerCount,engagementRate,verified,averagePostFrequency,contentCategory,lastPostDate,bio,profileImageUrl,bannerImageUrl,contactEmail,contactPhone,languagePreference,contentWarningLevel,monetizationEnabled,sponsorshipTag,analyticsDashboardUrl,notes,createdBy,createdDate,lastUpdatedDate) VALUES (2,'Twitter','fastlane_2',85000,3.8,0,7,'Live Updates','2024-04-12','Sharing race day insights','/images/driver2.jpg','/banners/driver2.png','driver2@team.com','+198765432','English','None',1,'TechPartner','/analytics/driver2','Pending verification','admin','2024-01-15','2024-04-16');
INSERT INTO driver_media_profiles (driverId,platform,username,followerCount,engagementRate,verified,averagePostFrequency,contentCategory,lastPostDate,bio,profileImageUrl,bannerImageUrl,contactEmail,contactPhone,languagePreference,contentWarningLevel,monetizationEnabled,sponsorshipTag,analyticsDashboardUrl,notes,createdBy,createdDate,lastUpdatedDate) VALUES (3,'YouTube','RacingGuru',200000,5.2,1,3,'Educational','2024-04-08','Technical analysis of races','/images/driver3.jpg','/banners/driver3.png','driver3@team.com','+1122334455','English','None',1,'GearSupplier','/analytics/driver3','High production value','admin','2024-02-01','2024-04-18');

-- Circuit Environmental Monitoring
CREATE TABLE circuit_environmental_monitoring
(
    monitorId               INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId               INTEGER NOT NULL,
    recordTimestamp         TEXT NOT NULL,
    temperatureCelsius      REAL,
    humidityPercent         REAL,
    windSpeedKph            REAL,
    windDirectionDegrees    REAL,
    precipitationMm         REAL,
    airQualityIndex         INTEGER,
    noiseLevelDb            REAL,
    soilMoisturePercent     REAL,
    solarRadiationWm2       REAL,
    uvIndex                 REAL,
    barometricPressurehPa  REAL,
    pollenCount             INTEGER,
    dustParticleConcentration INTEGER,
    sensorStatus            TEXT,
    maintenanceDueDate      TEXT,
    notes                   TEXT,
    dataSource              TEXT,
    calibratedBy            TEXT,
    lastCalibrationDate     TEXT,
    verificationStatus      TEXT
);

INSERT INTO circuit_environmental_monitoring (circuitId,recordTimestamp,temperatureCelsius,humidityPercent,windSpeedKph,windDirectionDegrees,precipitationMm,airQualityIndex,noiseLevelDb,soilMoisturePercent,solarRadiationWm2,uvIndex,barometricPressurehPa,pollenCount,dustParticleConcentration,sensorStatus,maintenanceDueDate,notes,dataSource,calibratedBy,lastCalibrationDate,verificationStatus) VALUES (1,'2024-04-01T08:00:00',22.5,45.0,12.3,180,0.0,42,68.0,20.0,540,5,1013.2,1200,15,'OK','2024-10-01','All sensors nominal','StationA','TechTeam','2024-01-15','Verified');
INSERT INTO circuit_environmental_monitoring (circuitId,recordTimestamp,temperatureCelsius,humidityPercent,windSpeedKph,windDirectionDegrees,precipitationMm,airQualityIndex,noiseLevelDb,soilMoisturePercent,solarRadiationWm2,uvIndex,barometricPressurehPa,pollenCount,dustParticleConcentration,sensorStatus,maintenanceDueDate,notes,dataSource,calibratedBy,lastCalibrationDate,verificationStatus) VALUES (2,'2024-04-01T08:15:00',20.0,55.0,8.0,90,2.5,55,72.0,25.0,460,6,1010.5,800,20,'OK','2024-11-15','Light rain detected','StationB','FieldEngineer','2024-02-20','Verified');
INSERT INTO circuit_environmental_monitoring (circuitId,recordTimestamp,temperatureCelsius,humidityPercent,windSpeedKph,windDirectionDegrees,precipitationMm,airQualityIndex,noiseLevelDb,soilMoisturePercent,solarRadiationWm2,uvIndex,barometricPressurehPa,pollenCount,dustParticleConcentration,sensorStatus,maintenanceDueDate,notes,dataSource,calibratedBy,lastCalibrationDate,verificationStatus) VALUES (3,'2024-04-01T08:30:00',25.0,40.0,10.5,270,0.0,35,65.0,18.0,580,7,1015.0,1500,12,'OK','2024-09-10','Clear sky','StationC','LabTech','2024-03-05','Verified');