-- Table storing archived media files for each race
CREATE TABLE race_media_archive (
    archiveId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    mediaType TEXT,
    fileName TEXT,
    fileSizeMB REAL,
    durationSec INTEGER,
    resolution TEXT,
    codec TEXT,
    uploadDate DATE,
    uploaderId INTEGER,
    description TEXT,
    tags TEXT,
    checksum TEXT,
    isPublic INTEGER,
    viewCount INTEGER,
    likeCount INTEGER,
    dislikeCount INTEGER,
    commentCount INTEGER,
    storageLocation TEXT,
    retentionPeriodDays INTEGER,
    createdAt DATETIME,
    updatedAt DATETIME
);
INSERT INTO race_media_archive (raceId,mediaType,fileName,fileSizeMB,durationSec,resolution,codec,uploadDate,uploaderId,description,tags,checksum,isPublic,viewCount,likeCount,dislikeCount,commentCount,storageLocation,retentionPeriodDays,createdAt,updatedAt) VALUES (1,'video','race1.mp4',500.5,7200,'1920x1080','H264','2024-05-01',101,'Qualifying session','qualifying,2024','abc123',1,1000,100,5,20,'s3://media',365,'2024-05-01 10:00:00','2024-05-01 10:00:00');
INSERT INTO race_media_archive (raceId,mediaType,fileName,fileSizeMB,durationSec,resolution,codec,uploadDate,uploaderId,description,tags,checksum,isPublic,viewCount,likeCount,dislikeCount,commentCount,storageLocation,retentionPeriodDays,createdAt,updatedAt) VALUES (2,'audio','race2.mp3',30.2,3600,'','MP3','2024-05-02',102,'Race commentary','commentary,2024','def456',0,500,30,2,10,'s3://media',180,'2024-05-02 11:00:00','2024-05-02 11:00:00');
INSERT INTO race_media_archive (raceId,mediaType,fileName,fileSizeMB,durationSec,resolution,codec,uploadDate,uploaderId,description,tags,checksum,isPublic,viewCount,likeCount,dislikeCount,commentCount,storageLocation,retentionPeriodDays,createdAt,updatedAt) VALUES (3,'image','race3.jpg',5.0,0,'','JPEG','2024-05-03',103,'Podium photo','podium,2024','ghi789',1,2000,150,3,25,'s3://media',365,'2024-05-03 12:00:00','2024-05-03 12:00:00');

-- Table tracking technology upgrades at circuits
CREATE TABLE circuit_technology_upgrades (
    upgradeId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    upgradeDate DATE,
    upgradeType TEXT,
    vendor TEXT,
    costUSD REAL,
    description TEXT,
    projectManagerId INTEGER,
    approvalStatus TEXT,
    expectedImpact TEXT,
    durationDays INTEGER,
    startDate DATE,
    endDate DATE,
    safetyCertification TEXT,
    warrantyPeriodMonths INTEGER,
    maintenanceContractId INTEGER,
    hardwareSerial TEXT,
    softwareVersion TEXT,
    complianceDocId INTEGER,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    budgetCategory TEXT,
    fundingSource TEXT
);
INSERT INTO circuit_technology_upgrades (circuitId,upgradeDate,upgradeType,vendor,costUSD,description,projectManagerId,approvalStatus,expectedImpact,durationDays,startDate,endDate,safetyCertification,warrantyPeriodMonths,maintenanceContractId,hardwareSerial,softwareVersion,complianceDocId,notes,createdAt,updatedAt,budgetCategory,fundingSource) VALUES (10,'2024-03-01','Timing System','TimingCo',250000,'Install new high precision timing',201,'Approved','Improve lap time accuracy',30,'2024-03-01','2024-03-31','ISO9001',24,301,'TS-001','v2.1',401,'All tests passed','2024-03-01 08:00:00','2024-03-01 08:00:00','Infrastructure','Team Budget');
INSERT INTO circuit_technology_upgrades (circuitId,upgradeDate,upgradeType,vendor,costUSD,description,projectManagerId,approvalStatus,expectedImpact,durationDays,startDate,endDate,safetyCertification,warrantyPeriodMonths,maintenanceContractId,hardwareSerial,softwareVersion,complianceDocId,notes,createdAt,updatedAt,budgetCategory,fundingSource) VALUES (11,'2024-04-15','LED Lighting','LightWorks',120000,'Upgrade pit lane lighting',202,'Pending','Better visibility at night',15,'2024-04-15','2024-04-30','CE',12,302,'LED-789','v3.0',402,'Installation scheduled','2024-04-15 09:00:00','2024-04-15 09:00:00','Facilities','Sponsor Fund');
INSERT INTO circuit_technology_upgrades (circuitId,upgradeDate,upgradeType,vendor,costUSD,description,projectManagerId,approvalStatus,expectedImpact,durationDays,startDate,endDate,safetyCertification,warrantyPeriodMonths,maintenanceContractId,hardwareSerial,softwareVersion,complianceDocId,notes,createdAt,updatedAt,budgetCategory,fundingSource) VALUES (12,'2024-05-10','Telemetry Network','NetTech',300000,'Deploy 5G telemetry network',203,'Approved','Higher data throughput',45,'2024-05-10','2024-06-24','ISO27001',36,303,'TN-555','v1.0',403,'Network tested','2024-05-10 07:30:00','2024-05-10 07:30:00','IT','Corporate Investment');

-- Table for driver community forum posts
CREATE TABLE driver_community_forums (
    postId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    forumId INTEGER,
    title TEXT,
    body TEXT,
    postDate DATETIME,
    editDate DATETIME,
    viewCount INTEGER,
    likeCount INTEGER,
    dislikeCount INTEGER,
    replyCount INTEGER,
    isPinned INTEGER,
    isClosed INTEGER,
    tags TEXT,
    attachmentUrl TEXT,
    attachmentSizeKB INTEGER,
    ipAddress TEXT,
    deviceType TEXT,
    osVersion TEXT,
    browser TEXT,
    moderationStatus TEXT,
    moderatorId INTEGER,
    lastModeratorAction DATETIME,
    createdAt DATETIME,
    updatedAt DATETIME,
    reportedCount INTEGER,
    category TEXT,
    subCategory TEXT,
    priorityLevel INTEGER
);
INSERT INTO driver_community_forums (driverId,forumId,title,body,postDate,editDate,viewCount,likeCount,dislikeCount,replyCount,isPinned,isClosed,tags,attachmentUrl,attachmentSizeKB,ipAddress,deviceType,osVersion,browser,moderationStatus,moderatorId,lastModeratorAction,createdAt,updatedAt,reportedCount,category,subCategory,priorityLevel) VALUES (1,10,'Best braking techniques','Share your braking tips here','2024-04-01 12:00:00','2024-04-01 12:00:00',150,25,0,5,0,0,'braking,technique','http://files.example.com/brake.pdf',250,'192.168.1.10','Desktop','Windows10','Chrome','Approved',1001,'2024-04-01 12:30:00','2024-04-01 12:00:00','2024-04-01 12:30:00',0,'Driving','Techniques',2);
INSERT INTO driver_community_forums (driverId,forumId,title,body,postDate,editDate,viewCount,likeCount,dislikeCount,replyCount,isPinned,isClosed,tags,attachmentUrl,attachmentSizeKB,ipAddress,deviceType,osVersion,browser,moderationStatus,moderatorId,lastModeratorAction,createdAt,updatedAt,reportedCount,category,subCategory,priorityLevel) VALUES (2,11,'Race strategy discussion','Open thread for race strategy','2024-04-02 14:15:00','2024-04-02 14:15:00',200,40,2,10,1,0,'strategy,race','',0,'192.168.1.11','Mobile','iOS14','Safari','Pending',NULL,NULL,'2024-04-02 14:15:00','2024-04-02 14:15:00',1,'Strategy','General',3);
INSERT INTO driver_community_forums (driverId,forumId,title,body,postDate,editDate,viewCount,likeCount,dislikeCount,replyCount,isPinned,isClosed,tags,attachmentUrl,attachmentSizeKB,ipAddress,deviceType,osVersion,browser,moderationStatus,moderatorId,lastModeratorAction,createdAt,updatedAt,reportedCount,category,subCategory,priorityLevel) VALUES (3,12,'Fitness routine','My weekly fitness schedule','2024-04-03 09:45:00','2024-04-03 10:00:00',120,15,0,3,0,0,'fitness,health','http://files.example.com/fitness.docx',180,'192.168.1.12','Tablet','Android11','Firefox','Approved',1002,'2024-04-03 10:05:00','2024-04-03 09:45:00','2024-04-03 10:05:00',0,'Health','Fitness',1);

-- Table recording sponsor event feedback
CREATE TABLE sponsor_event_feedback (
    feedbackId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    eventId INTEGER,
    attendeeId INTEGER,
    rating INTEGER,
    comments TEXT,
    feedbackDate DATE,
    responseTimeHours INTEGER,
    followUpNeeded INTEGER,
    followUpComments TEXT,
    netPromoterScore INTEGER,
    brandRecallScore INTEGER,
    engagementLevel TEXT,
    surveyMethod TEXT,
    location TEXT,
    boothNumber TEXT,
    productDemoPerformed INTEGER,
    leadGenerated INTEGER,
    leadQualityScore INTEGER,
    mediaCaptured INTEGER,
    photoCount INTEGER,
    videoCount INTEGER,
    socialMentions INTEGER,
    createdAt DATETIME,
    updatedAt DATETIME,
    surveyVersion TEXT,
    reporterId INTEGER,
    verificationStatus TEXT,
    verifiedBy INTEGER,
    verificationDate DATE
);
INSERT INTO sponsor_event_feedback (sponsorId,eventId,attendeeId,rating,comments,feedbackDate,responseTimeHours,followUpNeeded,followUpComments,netPromoterScore,brandRecallScore,engagementLevel,surveyMethod,location,boothNumber,productDemoPerformed,leadGenerated,leadQualityScore,mediaCaptured,photoCount,videoCount,socialMentions,createdAt,updatedAt,surveyVersion,reporterId,verificationStatus,verifiedBy,verificationDate) VALUES (201,301,501,9,'Great visibility and traffic','2024-04-10',48,0,'',8,7,'High','Online','Main Hall','A12',1,1,9,1,30,5,0,'2024-04-10 08:00:00','2024-04-10 08:00:00','v1',601,'Verified',701,'2024-04-11');
INSERT INTO sponsor_event_feedback (sponsorId,eventId,attendeeId,rating,comments,feedbackDate,responseTimeHours,followUpNeeded,followUpComments,netPromoterScore,brandRecallScore,engagementLevel,surveyMethod,location,boothNumber,productDemoPerformed,leadGenerated,leadQualityScore,mediaCaptured,photoCount,videoCount,socialMentions,createdAt,updatedAt,surveyVersion,reporterId,verificationStatus,verifiedBy,verificationDate) VALUES (202,302,502,7,'Average footfall','2024-04-11',72,1,'Need to send thank you email',5,4,'Medium','Paper','Exhibit Hall','B07',0,0,0,0,0,0,0,'2024-04-11 09:30:00','2024-04-11 09:30:00','v1',602,'Pending',NULL,NULL);
INSERT INTO sponsor_event_feedback (sponsorId,eventId,attendeeId,rating,comments,feedbackDate,responseTimeHours,followUpNeeded,followUpComments,netPromoterScore,brandRecallScore,engagementLevel,surveyMethod,location,boothNumber,productDemoPerformed,leadGenerated,leadQualityScore,mediaCaptured,photoCount,videoCount,socialMentions,createdAt,updatedAt,surveyVersion,reporterId,verificationStatus,verifiedBy,verificationDate) VALUES (203,303,503,10,'Excellent brand exposure','2024-04-12',24,0,'',9,9,'Very High','Online','Main Hall','C03',1,1,10,1,45,12,2,'2024-04-12 10:15:00','2024-04-12 10:15:00','v2',603,'Verified',704,'2024-04-13');

-- Table tracking fan experience transactions (e.g., purchases, upgrades)
CREATE TABLE fan_experience_transactions (
    transactionId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    eventId INTEGER,
    transactionDate DATETIME,
    transactionType TEXT,
    amountUSD REAL,
    currency TEXT,
    paymentMethod TEXT,
    productId INTEGER,
    productCategory TEXT,
    quantity INTEGER,
    discountCode TEXT,
    discountAmount REAL,
    taxAmount REAL,
    totalAmount REAL,
    receiptUrl TEXT,
    loyaltyPointsEarned INTEGER,
    loyaltyPointsRedeemed INTEGER,
    deviceUsed TEXT,
    ipAddress TEXT,
    location TEXT,
    promoCampaign TEXT,
    status TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    fraudCheckStatus TEXT,
    fraudCheckScore INTEGER,
    fraudReviewedBy INTEGER,
    fraudReviewDate DATE,
    notes TEXT
);
INSERT INTO fan_experience_transactions (fanId,eventId,transactionDate,transactionType,amountUSD,currency,paymentMethod,productId,productCategory,quantity,discountCode,discountAmount,taxAmount,totalAmount,receiptUrl,loyaltyPointsEarned,loyaltyPointsRedeemed,deviceUsed,ipAddress,location,promoCampaign,status,createdAt,updatedAt,fraudCheckStatus,fraudCheckScore,fraudReviewedBy,fraudReviewDate,notes) VALUES (1001,401,'2024-04-15 14:20:00','TicketPurchase',150.00,'USD','CreditCard',0,'Ticket',1,'SPRING20',30.00,12.00,132.00,'http://receipts.example.com/1001',132,0,'Desktop','203.0.113.5','NewYork','SpringSale','Completed','2024-04-15 14:20:00','2024-04-15 14:20:00','Clear',0,NULL,NULL,'');
INSERT INTO fan_experience_transactions (fanId,eventId,transactionDate,transactionType,amountUSD,currency,paymentMethod,productId,productCategory,quantity,discountCode,discountAmount,taxAmount,totalAmount,receiptUrl,loyaltyPointsEarned,loyaltyPointsRedeemed,deviceUsed,ipAddress,location,promoCampaign,status,createdAt,updatedAt,fraudCheckStatus,fraudCheckScore,fraudReviewedBy,fraudReviewDate,notes) VALUES (1002,402,'2024-04-16 09:45:00','MerchandisePurchase',45.99,'USD','PayPal',301,'Apparel',2,'',0.00,3.68,49.67,'http://receipts.example.com/1002',5,0,'Mobile','198.51.100.23','LosAngeles','', 'Completed','2024-04-16 09:45:00','2024-04-16 09:45:00','Clear',0,NULL,NULL,'');
INSERT INTO fan_experience_transactions (fanId,eventId,transactionDate,transactionType,amountUSD,currency,paymentMethod,productId,productCategory,quantity,discountCode,discountAmount,taxAmount,totalAmount,receiptUrl,loyaltyPointsEarned,loyaltyPointsRedeemed,deviceUsed,ipAddress,location,promoCampaign,status,createdAt,updatedAt,fraudCheckStatus,fraudCheckScore,fraudReviewedBy,fraudReviewDate,notes) VALUES (1003,403,'2024-04-17 18:30:00','UpgradePurchase',200.00,'USD','CreditCard',0,'Upgrade',1,'VIP2024',20.00,15.20,195.20,'http://receipts.example.com/1003',195,20,'Desktop','192.0.2.44','Chicago','VIPUpgrade','Pending','2024-04-17 18:30:00','2024-04-17 18:30:00','Review',75,9001,'2024-04-18','Potential duplicate');

-- Table storing broadcast quality metrics per race
CREATE TABLE race_broadcast_quality_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    broadcastProvider TEXT,
    startTime DATETIME,
    endTime DATETIME,
    averageBitrateMbps REAL,
    peakBitrateMbps REAL,
    bufferingEvents INTEGER,
    averageLatencyMs INTEGER,
    droppedFrames INTEGER,
    audioSyncMs INTEGER,
    videoResolution TEXT,
    codec TEXT,
    streamType TEXT,
    viewersConcurrent INTEGER,
    peakViewers INTEGER,
    geographicCoverage TEXT,
    errorRatePercent REAL,
    retransmissionCount INTEGER,
    adBreakCount INTEGER,
    adBreakDurationSec INTEGER,
    subtitleAvailability INTEGER,
    closedCaptionsAvailable INTEGER,
    createdAt DATETIME,
    updatedAt DATETIME,
    notes TEXT,
    qualityScore INTEGER,
    rating TEXT,
    monitoringTool TEXT,
    lastChecked DATETIME,
    complianceStatus TEXT
);
INSERT INTO race_broadcast_quality_metrics (raceId,broadcastProvider,startTime,endTime,averageBitrateMbps,peakBitrateMbps,bufferingEvents,averageLatencyMs,droppedFrames,audioSyncMs,videoResolution,codec,streamType,viewersConcurrent,peakViewers,geographicCoverage,errorRatePercent,retransmissionCount,adBreakCount,adBreakDurationSec,subtitleAvailability,closedCaptionsAvailable,createdAt,updatedAt,notes,qualityScore,rating,monitoringTool,lastChecked,complianceStatus) VALUES (1,'GlobalMedia','2024-05-01 12:00:00','2024-05-01 14:00:00',4.5,6.2,2,120,30,15,'1920x1080','H264','Live',50000,75000,'NorthAmerica,Europe',0.12,5,3,180,1,1,'2024-05-01 14:05:00','2024-05-01 14:05:00','All metrics within SLA',95,'Excellent','StreamWatch','2024-05-01 14:10:00','Compliant');
INSERT INTO race_broadcast_quality_metrics (raceId,broadcastProvider,startTime,endTime,averageBitrateMbps,peakBitrateMbps,bufferingEvents,averageLatencyMs,droppedFrames,audioSyncMs,videoResolution,codec,streamType,viewersConcurrent,peakViewers,geographicCoverage,errorRatePercent,retransmissionCount,adBreakCount,adBreakDurationSec,subtitleAvailability,closedCaptionsAvailable,createdAt,updatedAt,notes,qualityScore,rating,monitoringTool,lastChecked,complianceStatus) VALUES (2,'SpeedCast','2024-05-02 15:00:00','2024-05-02 17:30:00',3.8,5.5,5,200,45,20,'1280x720','VP9','Live',40000,65000,'Asia,Australia',0.25,8,2,120,0,0,'2024-05-02 17:35:00','2024-05-02 17:35:00','Higher buffering observed',78,'Fair','NetMonitor','2024-05-02 17:40:00','NonCompliant');
INSERT INTO race_broadcast_quality_metrics (raceId,broadcastProvider,startTime,endTime,averageBitrateMbps,peakBitrateMbps,bufferingEvents,averageLatencyMs,droppedFrames,audioSyncMs,videoResolution,codec,streamType,viewersConcurrent,peakViewers,geographicCoverage,errorRatePercent,retransmissionCount,adBreakCount,adBreakDurationSec,subtitleAvailability,closedCaptionsAvailable,createdAt,updatedAt,notes,qualityScore,rating,monitoringTool,lastChecked,complianceStatus) VALUES (3,'UltraStream','2024-05-03 10:00:00','2024-05-03 12:00:00',5.0,7.0,1,90,10,5,'1920x1080','H265','Live',60000,90000,'Global',0.05,3,4,240,1,1,'2024-05-03 12:05:00','2024-05-03 12:05:00','Outstanding performance',98,'Excellent','StreamAnalytics','2024-05-03 12:10:00','Compliant');

-- Table documenting constructor innovation timeline events
CREATE TABLE constructor_innovation_timeline (
    innovationId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER,
    projectName TEXT,
    startDate DATE,
    endDate DATE,
    technologyArea TEXT,
    description TEXT,
    leadEngineerId INTEGER,
    budgetUSD REAL,
    status TEXT,
    milestones TEXT,
    patentsFiled INTEGER,
    patentsGranted INTEGER,
    collaborations TEXT,
    suppliersInvolved TEXT,
    testResultsSummary TEXT,
    prototypeLocation TEXT,
    deploymentDate DATE,
    performanceGainPercent REAL,
    costReductionPercent REAL,
    sustainabilityImpact TEXT,
    regulatoryApprovalStatus TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    notes TEXT,
    riskLevel TEXT,
    investmentRound TEXT,
    strategicImportance TEXT,
    governanceReviewDate DATE,
    governanceReviewerId INTEGER,
    governanceOutcome TEXT
);
INSERT INTO constructor_innovation_timeline (constructorId,projectName,startDate,endDate,technologyArea,description,leadEngineerId,budgetUSD,status,milestones,patentsFiled,patentsGranted,collaborations,suppliersInvolved,testResultsSummary,prototypeLocation,deploymentDate,performanceGainPercent,costReductionPercent,sustainabilityImpact,regulatoryApprovalStatus,createdAt,updatedAt,notes,riskLevel,investmentRound,strategicImportance,governanceReviewDate,governanceReviewerId,governanceOutcome) VALUES (10,'HybridPowerUnit','2023-01-10','2024-06-30','Hybrid Power','Developed next‑gen hybrid system',201,120000000,'InProgress','DesignComplete;PrototypeBuilt',5,2,'UniversityX;TechLab','SupplierA;SupplierB','Power output increased 10%','FacilityA','Positive','2024-07-15',10.0,5.0,'Reduced emissions','Pending','2024-04-01 09:00:00','2024-04-01 09:00:00','Key to future competitiveness','Medium','SeriesA','High','2024-05-01',301,'Approved');
INSERT INTO constructor_innovation_timeline (constructorId,projectName,startDate,endDate,technologyArea,description,leadEngineerId,budgetUSD,status,milestones,patentsFiled,patentsGranted,collaborations,suppliersInvolved,testResultsSummary,prototypeLocation,deploymentDate,performanceGainPercent,costReductionPercent,sustainabilityImpact,regulatoryApprovalStatus,createdAt,updatedAt,notes,riskLevel,investmentRound,strategicImportance,governanceReviewDate,governanceReviewerId,governanceOutcome) VALUES (11,'AdvancedAerodynamics','2022-05-01','2023-12-31','Aerodynamics','New front wing design',202,80000000,'Completed','WindTunnelTest;TrackTest',3,3,'AeroInstitute','SupplierC','Downforce increased 15%','WindTunnel1','Successful','2024-01-10',15.0,0.0','Improved fuel efficiency','Approved','2023-01-15 10:00:00','2023-01-15 10:00:00','Delivered on time','Low','SeriesB','Medium','2023-06-01',302,'Approved');
INSERT INTO constructor_innovation_timeline (constructorId,projectName,startDate,endDate,technologyArea,description,leadEngineerId,budgetUSD,status,milestones,patentsFiled,patentsGranted,collaborations,suppliersInvolved,testResultsSummary,prototypeLocation,deploymentDate,performanceGainPercent,costReductionPercent,sustainabilityImpact,regulatoryApprovalStatus,createdAt,updatedAt,notes,riskLevel,investmentRound,strategicImportance,governanceReviewDate,governanceReviewerId,governanceOutcome) VALUES (12,'SmartTelemetry','2024-02-01','2024-11-30','Telemetry','AI‑based data analysis platform',203,50000000,'InProgress','DataPipelineBuilt;AIModelTrained',2,0,'DataScienceLab','SupplierD','Latency reduced 30%','LabX','Promising','2025-02-20',0.0,0.0,'Enhanced data insight','Pending','2024-03-01 11:30:00','2024-03-01 11:30:00','Requires further testing','High','SeriesC','High','2024-07-15',303,'Pending');

-- Table for circuit environmental certifications
CREATE TABLE circuit_environmental_certifications (
    certId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    certificationName TEXT,
    issuingAuthority TEXT,
    issueDate DATE,
    expiryDate DATE,
    scope TEXT,
    criteriaMet TEXT,
    auditReportUrl TEXT,
    auditorName TEXT,
    auditDate DATE,
    complianceScore REAL,
    mitigationMeasures TEXT,
    renewableEnergyPercentage REAL,
    waterReusePercentage REAL,
    wasteDiversionPercentage REAL,
    carbonFootprintTonnes REAL,
    biodiversityImpact TEXT,
    communityEngagementScore REAL,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    verificationStatus TEXT,
    verificationDate DATE,
    verifierId INTEGER,
    nextAuditPlanned DATE,
    complianceLevel TEXT,
    region TEXT,
    sector TEXT,
    fundingSource TEXT
);
INSERT INTO circuit_environmental_certifications (circuitId,certificationName,issuingAuthority,issueDate,expiryDate,scope,criteriaMet,auditReportUrl,auditorName,auditDate,complianceScore,mitigationMeasures,renewableEnergyPercentage,waterReusePercentage,wasteDiversionPercentage,carbonFootprintTonnes,biodiversityImpact,communityEngagementScore,notes,createdAt,updatedAt,verificationStatus,verificationDate,verifierId,nextAuditPlanned,complianceLevel,region,sector,fundingSource) VALUES (10,'ISO14001','International Standards','2023-04-01','2026-04-01','Full','All','http://audit.example.com/10','AuditorA','2023-03-20',92.5,'Solar panels; Rainwater harvesting',45.0,30.0,70.0,150.0,'Neutral',85.0,'Good progress','2023-04-01 08:00:00','2023-04-01 08:00:00','Verified','2023-04-02',401,'2025-04-01','High','Europe','Sports','Corporate');
INSERT INTO circuit_environmental_certifications (circuitId,certificationName,issuingAuthority,issueDate,expiryDate,scope,criteriaMet,auditReportUrl,auditorName,auditDate,complianceScore,mitigationMeasures,renewableEnergyPercentage,waterReusePercentage,wasteDiversionPercentage,carbonFootprintTonnes,biodiversityImpact,communityEngagementScore,notes,createdAt,updatedAt,verificationStatus,verificationDate,verifierId,nextAuditPlanned,complianceLevel,region,sector,fundingSource) VALUES (11,'LEED Gold','USGBC','2022-09-15','2027-09-15','Building','Energy use < 50% of baseline','http://audit.example.com/11','AuditorB','2022-09-01',88.0,'LED lighting; Green roofs',60.0,40.0,80.0,120.0,'Positive',78.0,'Community outreach program','2022-09-15 09:00:00','2022-09-15 09:00:00','Verified','2022-09-16',402,'2026-09-15','High','NorthAmerica','Facilities','Grant');
INSERT INTO circuit_environmental_certifications (circuitId,certificationName,issuingAuthority,issueDate,expiryDate,scope,criteriaMet,auditReportUrl,auditorName,auditDate,complianceScore,mitigationMeasures,renewableEnergyPercentage,waterReusePercentage,wasteDiversionPercentage,carbonFootprintTonnes,biodiversityImpact,communityEngagementScore,notes,createdAt,updatedAt,verificationStatus,verificationDate,verifierId,nextAuditPlanned,complianceLevel,region,sector,fundingSource) VALUES (12,'BREEAM Excellent','BRE','2024-01-10','2029-01-10','Infrastructure','All','http://audit.example.com/12','AuditorC','2024-01-05',95.0,'Geothermal heating; Composting',55.0,35.0,85.0,110.0,'Positive',90.0,'High volunteer involvement','2024-01-10 07:30:00','2024-01-10 07:30:00','Verified','2024-01-11',403,'2028-01-10','Excellent','Asia','Construction','Investor');

-- Table tracking driver mental wellbeing sessions
CREATE TABLE driver_mental_wellbeing_sessions (
    sessionId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    sessionDate DATE,
    therapistId INTEGER,
    sessionType TEXT,
    durationMinutes INTEGER,
    focusArea TEXT,
    techniquesUsed TEXT,
    preSessionMoodScore INTEGER,
    postSessionMoodScore INTEGER,
    stressLevelBefore INTEGER,
    stressLevelAfter INTEGER,
    notes TEXT,
    followUpRequired INTEGER,
    followUpDate DATE,
    confidentialityLevel TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    consentGiven INTEGER,
    location TEXT,
    sessionMode TEXT,
    equipmentUsed TEXT,
    outcomeRating INTEGER,
    therapistNotes TEXT,
    assessmentTool TEXT,
    assessmentScore REAL,
    referralProvided INTEGER,
    referralDetails TEXT,
    nextAppointmentScheduled INTEGER,
    nextAppointmentDate DATE,
    programId INTEGER
);
INSERT INTO driver_mental_wellbeing_sessions (driverId,sessionDate,therapistId,sessionType,durationMinutes,focusArea,techniquesUsed,preSessionMoodScore,postSessionMoodScore,stressLevelBefore,stressLevelAfter,notes,followUpRequired,followUpDate,confidentialityLevel,createdAt,updatedAt,consentGiven,location,sessionMode,equipmentUsed,outcomeRating,therapistNotes,assessmentTool,assessmentScore,referralProvided,referralDetails,nextAppointmentScheduled,nextAppointmentDate,programId) VALUES (1,'2024-04-05',301,'OneOnOne',60,'Performance Anxiety','Breathing; Visualization',3,8,7,2,'Improved confidence',0,NULL,'High','2024-04-05 10:00:00','2024-04-05 10:00:00',1,'TeamRoom','InPerson','None',9,'Patient and focused','PSQI',5.2,0,NULL,1,'2024-04-20',101);
INSERT INTO driver_mental_wellbeing_sessions (driverId,sessionDate,therapistId,sessionType,durationMinutes,focusArea,techniquesUsed,preSessionMoodScore,postSessionMoodScore,stressLevelBefore,stressLevelAfter,notes,followUpRequired,followUpDate,confidentialityLevel,createdAt,updatedAt,consentGiven,location,sessionMode,equipmentUsed,outcomeRating,therapistNotes,assessmentTool,assessmentScore,referralProvided,referralDetails,nextAppointmentScheduled,nextAppointmentDate,programId) VALUES (2,'2024-04-10',302,'Group',90,'Team Cohesion','Mindfulness; Group Discussion',5,7,6,3,'Positive group dynamics',1,'2024-04-25','Medium','2024-04-10 14:00:00','2024-04-10 14:00:00',1,'ConferenceHall','Hybrid','Headset',8,'Active participation','GAD-7',6.8,0,NULL,1,'2024-04-30',102);
INSERT INTO driver_mental_wellbeing_sessions (driverId,sessionDate,therapistId,sessionType,durationMinutes,focusArea,techniquesUsed,preSessionMoodScore,postSessionMoodScore,stressLevelBefore,stressLevelAfter,notes,followUpRequired,followUpDate,confidentialityLevel,createdAt,updatedAt,consentGiven,location,sessionMode,equipmentUsed,outcomeRating,therapistNotes,assessmentTool,assessmentScore,referralProvided,referralDetails,nextAppointmentScheduled,nextAppointmentDate,programId) VALUES (3,'2024-04-12',303,'OneOnOne',45,'Sleep Hygiene','CBT; Sleep Diary',4,6,5,2,'Better sleep pattern',0,NULL,'High','2024-04-12 09:30:00','2024-04-12 09:30:00',1,'WellnessCenter','InPerson','None',7,'Encouraging','ISI',4.5,0,NULL,0,NULL,103);

-- Table summarizing sponsor brand valuation metrics
CREATE TABLE sponsor_brand_valuation (
    valuationId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    valuationDate DATE,
    brandEquityUSD REAL,
    marketSharePercent REAL,
    brandAwarenessScore INTEGER,
    consumerSentimentScore INTEGER,
    mediaImpressionCount INTEGER,
    socialEngagementScore INTEGER,
    sponsorshipROIPercent REAL,
    activationCount INTEGER,
    activationCostUSD REAL,
    reachAudienceCount INTEGER,
    frequencyPerViewer REAL,
    adRecallScore INTEGER,
    netPromoterScore INTEGER,
    brandConsistencyScore INTEGER,
    legalComplianceStatus TEXT,
    auditReference TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    analystId INTEGER,
    analysisMethod TEXT,
    confidenceLevel TEXT,
    notes TEXT,
    region TEXT,
    sector TEXT,
    currency TEXT,
    exchangeRateToUSD REAL,
    fiscalYear INTEGER,
    valuationModel TEXT,
    adjustedBrandEquityUSD REAL
);
INSERT INTO sponsor_brand_valuation (sponsorId,valuationDate,brandEquityUSD,marketSharePercent,brandAwarenessScore,consumerSentimentScore,mediaImpressionCount,socialEngagementScore,sponsorshipROIPercent,activationCount,activationCostUSD,reachAudienceCount,frequencyPerViewer,adRecallScore,netPromoterScore,brandConsistencyScore,legalComplianceStatus,auditReference,createdAt,updatedAt,analystId,analysisMethod,confidenceLevel,notes,region,sector,currency,exchangeRateToUSD,fiscalYear,valuationModel,adjustedBrandEquityUSD) VALUES (201,'2024-03-31',250000000,12.5,85,78,5000000,90,18.5,4,200000,1500000,1.2,80,70,88,'Compliant','AUD001','2024-03-31 08:00:00','2024-03-31 08:00:00',301,'DCF','High','Valuation based on market data','Europe','Automotive','USD',1.0,2024,'DCF','260000000');
INSERT INTO sponsor_brand_valuation (sponsorId,valuationDate,brandEquityUSD,marketSharePercent,brandAwarenessScore,consumerSentimentScore,mediaImpressionCount,socialEngagementScore,sponsorshipROIPercent,activationCount,activationCostUSD,reachAudienceCount,frequencyPerViewer,adRecallScore,netPromoterScore,brandConsistencyScore,legalComplianceStatus,auditReference,createdAt,updatedAt,analystId,analysisMethod,confidenceLevel,notes,region,sector,currency,exchangeRateToUSD,fiscalYear,valuationModel,adjustedBrandEquityUSD) VALUES (202,'2024-04-15',180000000,9.0,78,70,3500000,80,12.0,3,150000,1200000,1.0,75,65,80,'Compliant','AUD002','2024-04-15 09:30:00','2024-04-15 09:30:00',302,'Multiples','Medium','Adjusted for recent campaign','NorthAmerica','Energy','USD',1.0,2024,'Multiples','190000000');
INSERT INTO sponsor_brand_valuation (sponsorId,valuationDate,brandEquityUSD,marketSharePercent,brandAwarenessScore,consumerSentimentScore,mediaImpressionCount,socialEngagementScore,sponsorshipROIPercent,activationCount,activationCostUSD,reachAudienceCount,frequencyPerViewer,adRecallScore,netPromoterScore,brandConsistencyScore,legalComplianceStatus,auditReference,createdAt,updatedAt,analystId,analysisMethod,confidenceLevel,notes,region,sector,currency,exchangeRateToUSD,fiscalYear,valuationModel,adjustedBrandEquityUSD) VALUES (203,'2024-05-05',300000000,15.0,90,85,7000000,95,22.0,5,250000,2000000,1.5,85,80,92,'Compliant','AUD003','2024-05-05 10:15:00','2024-05-05 10:15:00',303,'RealOptions','High','Included future market scenarios','Asia','Technology','USD',1.0,2024,'RealOptions','320000000');