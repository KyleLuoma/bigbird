-- Parking facilities information for each venue
CREATE TABLE parking_facilities
(
    facilityId            INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId               INTEGER,
    name                  TEXT NOT NULL,
    location              TEXT,
    capacity              INTEGER,
    totalSpots            INTEGER,
    coveredSpots          INTEGER,
    electricChargingSpots INTEGER,
    handicapSpots         INTEGER,
    securityLevel         TEXT,
    hourlyRate            REAL,
    dailyRate             REAL,
    monthlyRate           REAL,
    surveillanceCameras   INTEGER,
    lightingType          TEXT,
    entryGateCount        INTEGER,
    exitGateCount         INTEGER,
    managerName           TEXT,
    contactPhone          TEXT,
    operationalHours      TEXT,
    maintenanceSchedule   TEXT,
    notes                 TEXT
);

INSERT INTO parking_facilities (venueId,name,location,capacity,totalSpots,coveredSpots,electricChargingSpots,handicapSpots,securityLevel,hourlyRate,dailyRate,monthlyRate,surveillanceCameras,lightingType,entryGateCount,exitGateCount,managerName,contactPhone,operationalHours,maintenanceSchedule,notes) VALUES (1,'Main Grandstand Parking','Northwest Edge',5000,5000,2000,150,50,'High',5.0,30.0,600.0,30,'LED',4,4,'John Doe','1234567890','05:00-23:00','Weekly','Close to main entrance');
INSERT INTO parking_facilities (venueId,name,location,capacity,totalSpots,coveredSpots,electricChargingSpots,handicapSpots,securityLevel,hourlyRate,dailyRate,monthlyRate,surveillanceCameras,lightingType,entryGateCount,exitGateCount,managerName,contactPhone,operationalHours,maintenanceSchedule,notes) VALUES (2,'East Lot','Eastside',2000,2100,800,80,20,'Medium',3.5,25.0,400.0,20,'Halogen',2,2,'Maria Smith','0987654321','06:00-22:00','Biweekly','Shuttle service available');
INSERT INTO parking_facilities (venueId,name,location,capacity,totalSpots,coveredSpots,electricChargingSpots,handicapSpots,securityLevel,hourlyRate,dailyRate,monthlyRate,surveillanceCameras,lightingType,entryGateCount,exitGateCount,managerName,contactPhone,operationalHours,maintenanceSchedule,notes) VALUES (3,'South Overflow','South perimeter',800,1000,0,30,15,'Low',2.0,15.0,250.0,15,'LED',1,1,'Liu Chen','5551234567','07:00-21:00','Monthly','Open grass area');

-- Venue amenities such as lounges, restaurants, and restrooms
CREATE TABLE venue_amenities
(
    amenityId           INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId             INTEGER,
    amenityType         TEXT NOT NULL,
    name                TEXT NOT NULL,
    floorLevel          INTEGER,
    capacity            INTEGER,
    openingTime         TEXT,
    closingTime         TEXT,
    wheelchairAccessible INTEGER,
    wifiAvailable       INTEGER,
    averageRating       REAL,
    totalReviews        INTEGER,
    contactEmail        TEXT,
    phoneNumber         TEXT,
    managerContact      TEXT,
    hasParkingAccess   INTEGER,
    nearbyExitGate      TEXT,
    cleaningFrequency   TEXT,
    lastRenovationYear  INTEGER,
    sustainabilityScore INTEGER,
    notes               TEXT,
    operationalDays     TEXT,
    specialFeatures    TEXT
);

INSERT INTO venue_amenities (venueId,amenityType,name,floorLevel,capacity,openingTime,closingTime,wheelchairAccessible,wifiAvailable,averageRating,totalReviews,contactEmail,phoneNumber,managerContact,hasParkingAccess,nearbyExitGate,cleaningFrequency,lastRenovationYear,sustainabilityScore,notes,operationalDays,specialFeatures) VALUES (1,'Lounge','VIP Lounge A',2,150,'09:00','23:00',1,1,4.8,120,'vipA@example.com','1112223333','Emily Zhang',1,'Gate 3','Daily',2019,85,'Premium furnishings','Mon-Fri,Sat-Sun','Live music');
INSERT INTO venue_amenities (venueId,amenityType,name,floorLevel,capacity,openingTime,closingTime,wheelchairAccessible,wifiAvailable,averageRating,totalReviews,contactEmail,phoneNumber,managerContact,hasParkingAccess,nearbyExitGate,cleaningFrequency,lastRenovationYear,sustainabilityScore,notes,operationalDays,specialFeatures) VALUES (2,'Restaurant','Speedy Bites',1,80,'10:00','22:00',1,1,4.2,85,'speedy@example.com','2223334444','Carlos Ruiz',0,'Gate 1','TwiceDaily',2021,78,'Family friendly menu','Mon-Sun','Kids play area');
INSERT INTO venue_amenities (venueId,amenityType,name,floorLevel,capacity,openingTime,closingTime,wheelchairAccessible,wifiAvailable,averageRating,totalReviews,contactEmail,phoneNumber,managerContact,hasParkingAccess,nearbyExitGate,cleaningFrequency,lastRenovationYear,sustainabilityScore,notes,operationalDays,specialFeatures) VALUES (3,'Restroom','North Restroom',0,0,'00:00','23:59',1,0,4.0,200,'northrest@example.com','3334445555','Sam Patel',0,'Gate 5','Hourly',2018,70,'Eco-friendly fixtures','24/7','Hand sanitizer stations');

-- Sponsor community outreach programmes
CREATE TABLE sponsor_community_outreach
(
    outreachId            INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId             INTEGER,
    programName           TEXT NOT NULL,
    startDate             DATE,
    endDate               DATE,
    targetRegion          TEXT,
    beneficiaryCount      INTEGER,
    budgetUSD             REAL,
    volunteersNeeded      INTEGER,
    volunteerHoursPlanned INTEGER,
    primaryContactName    TEXT,
    primaryContactEmail   TEXT,
    status                TEXT,
    impactScore           INTEGER,
    mediaCoverageLinks    TEXT,
    notes                 TEXT,
    evaluationMethod      TEXT,
    followUpActions       TEXT,
    reportedResults       TEXT,
    partnershipLevel      TEXT,
    sustainabilityFocus   TEXT,
    communityFeedbackScore INTEGER,
    registrationDate      DATE,
    lastUpdated           DATE,
    externalPartners      TEXT
);

INSERT INTO sponsor_community_outreach (sponsorId,programName,startDate,endDate,targetRegion,beneficiaryCount,budgetUSD,volunteersNeeded,volunteerHoursPlanned,primaryContactName,primaryContactEmail,status,impactScore,mediaCoverageLinks,notes,evaluationMethod,followUpActions,reportedResults,partnerhipLevel,sustainabilityFocus,communityFeedbackScore,registrationDate,lastUpdated,externalPartners) VALUES (101,'Green Track Initiative','2023-04-01','2023-10-31','Northern Region',1200,50000,30,450,'Alice Green','alice.green@example.com','Completed',92,'link1.com;link2.com','Planted trees around circuits','Survey','Prepare next year plan','Reduced carbon by 15%','Gold','Environmental','88','2023-03-20','2023-11-01','Local NGOs');
INSERT INTO sponsor_community_outreach (sponsorId,programName,startDate,endDate,targetRegion,beneficiaryCount,budgetUSD,volunteersNeeded,volunteerHoursPlanned,primaryContactName,primaryContactEmail,status,impactScore,mediaCoverageLinks,notes,evaluationMethod,followUpActions,reportedResults,partnerhipLevel,sustainabilityFocus,communityFeedbackScore,registrationDate,lastUpdated,externalPartners) VALUES (102,'Youth STEM Workshops','2024-01-15','2024-06-30','Eastern Province',800,75000,40,640,'Brian Tech','brian.tech@example.com','Ongoing',0,'','Hands‑on engineering sessions','Pre‑post test','Scale to more schools','Pending','Silver','Education','0','2023-12-10','2024-01-01','Tech Universities');
INSERT INTO sponsor_community_outreach (sponsorId,programName,startDate,endDate,targetRegion,beneficiaryCount,budgetUSD,volunteersNeeded,volunteerHoursPlanned,primaryContactName,primaryContactEmail,status,impactScore,mediaCoverageLinks,notes,evaluationMethod,followUpActions,reportedResults,partnerhipLevel,sustainabilityFocus,communityFeedbackScore,registrationDate,lastUpdated,externalPartners) VALUES (103,'Health & Safety Campaign','2023-09-01','2024-02-28','Central District',4500,30000,25,300,'Clara Health','clara.health@example.com','Planned',0,'','Distribute safety kits','Focus groups','','Prepare distribution','Bronze','Health','0','2023-08-15','2023-09-05','Public Health Agency');

-- Broadcast network nodes for live streaming
CREATE TABLE broadcast_network_nodes
(
    nodeId               INTEGER PRIMARY KEY AUTOINCREMENT,
    nodeName             TEXT NOT NULL,
    ipAddress            TEXT NOT NULL,
    locationLatitude     REAL,
    locationLongitude    REAL,
    region               TEXT,
    bandwidthMbps        REAL,
    latencyMs            REAL,
    connectionType       TEXT,
    redundancyLevel      TEXT,
    maintenanceWindow    TEXT,
    firmwareVersion      TEXT,
    provider             TEXT,
    supportContact       TEXT,
    lastUpgradeDate      DATE,
    status               TEXT,
    maxConcurrentStreams INTEGER,
    encryptionMethod     TEXT,
    powerBackupHours     INTEGER,
    notes                TEXT,
    installationDate     DATE,
    lastHealthCheck      DATE,
    monitoringEndpoint   TEXT,
    capacityUtilization  REAL,
    operationalHours     TEXT
);

INSERT INTO broadcast_network_nodes (nodeName,ipAddress,locationLatitude,locationLongitude,region,bandwidthMbps,latencyMs,connectionType,redundancyLevel,maintenanceWindow,firmwareVersion,provider,supportContact,lastUpgradeDate,status,maxConcurrentStreams,encryptionMethod,powerBackupHours,notes,installationDate,lastHealthCheck,monitoringEndpoint,capacityUtilization,operationalHours) VALUES ('NodeAlpha','192.168.10.1',40.7128,-74.0060','East Coast',1000,15,'Fiber','Dual','02:00-04:00','v1.2.3','NetProviderA','techa@example.com','2023-05-10','Active',500,'AES256',12,'Primary uplink',2022-11-01,'2023-12-20','http://monitor.nodealpha.com',68.5,'24/7');
INSERT INTO broadcast_network_nodes (nodeName,ipAddress,locationLatitude,locationLongitude,region,bandwidthMbps,latencyMs,connectionType,redundancyLevel,maintenanceWindow,firmwareVersion,provider,supportContact,lastUpgradeDate,status,maxConcurrentStreams,encryptionMethod,powerBackupHours,notes,installationDate,lastHealthCheck,monitoringEndpoint,capacityUtilization,operationalHours) VALUES ('NodeBeta','192.168.20.5',34.0522,-118.2437','West Coast',800,20,'Fiber','Single','03:00-05:00','v1.1.9','NetProviderB','techb@example.com','2022-09-15','Active',400,'AES128',8,'Backup ready',2021-07-15','2023-12-01','http://monitor.nodebeta.com',72.1,'24/7');
INSERT INTO broadcast_network_nodes (nodeName,ipAddress,locationLatitude,locationLongitude,region,bandwidthMbps,latencyMs,connectionType,redundancyLevel,maintenanceWindow,firmwareVersion,provider,supportContact,lastUpgradeDate,status,maxConcurrentStreams,encryptionMethod,powerBackupHours,notes,installationDate,lastHealthCheck,monitoringEndpoint,capacityUtilization,operationalHours) VALUES ('NodeGamma','192.168.30.9',51.5074,-0.1278','Europe',1200,12,'Fiber','Quad','01:00-03:00','v1.3.0','NetProviderC','techc@example.com','2023-02-20','Active',600,'AES256',24,'High availability',2023-01-10','2023-12-15','http://monitor.nodegamma.com',65.3,'24/7');

-- Event security units deployed at venues
CREATE TABLE event_security_units
(
    unitId                INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId               INTEGER,
    unitName              TEXT NOT NULL,
    commanderName         TEXT,
    personnelCount        INTEGER,
    shiftStartTime        TEXT,
    shiftEndTime          TEXT,
    equipmentList         TEXT,
    vehicleCount          INTEGER,
    communicationChannel  TEXT,
    responseTimeSeconds   INTEGER,
    trainingLevel         TEXT,
    certificationStatus   TEXT,
    lastDrillDate         DATE,
    nextDrillScheduled    DATE,
    budgetUSD             REAL,
    operationalStatus     TEXT,
    incidentLogLink       TEXT,
    notes                 TEXT,
    contactPhone          TEXT,
    emailContact          TEXT,
    areaCoverageSqM       REAL,
    riskAssessmentScore   INTEGER,
    lastAuditDate         DATE,
    complianceStatus      TEXT
);

INSERT INTO event_security_units (venueId,unitName,commanderName,personnelCount,shiftStartTime,shiftEndTime,equipmentList,vehicleCount,communicationChannel,responseTimeSeconds,trainingLevel,certificationStatus,lastDrillDate,nextDrillScheduled,budgetUSD,operationalStatus,incidentLogLink,notes,contactPhone,emailContact,areaCoverageSqM,riskAssessmentScore,lastAuditDate,complianceStatus) VALUES (1,'SecureTeam Alpha','Mark Lee',45,'06:00','18:00','Radios;BodyCams;Batons',5,'ChannelA',45,'Advanced','Certified','2023-11-10','2024-02-15',150000,'Active','log_alpha.pdf','Ready for peak crowd','5551112222','alpha.sec@example.com',25000,78,'2023-12-01','Compliant');
INSERT INTO event_security_units (venueId,unitName,commanderName,personnelCount,shiftStartTime,shiftEndTime,equipmentList,vehicleCount,communicationChannel,responseTimeSeconds,trainingLevel,certificationStatus,lastDrillDate,nextDrillScheduled,budgetUSD,operationalStatus,incidentLogLink,notes,contactPhone,emailContact,areaCoverageSqM,riskAssessmentScore,lastAuditDate,complianceStatus) VALUES (2,'SecureTeam Beta','Nina Patel',38,'08:00','20:00','Radios;Drones;Tasers',3,'ChannelB',60,'Intermediate','Certified','2023-10-05','2024-01-20',120000,'Active','log_beta.pdf','Focus on entry points','5553334444','beta.sec@example.com',18000,65,'2023-11-20','Compliant');
INSERT INTO event_security_units (venueId,unitName,commanderName,personnelCount,shiftStartTime,shiftEndTime,equipmentList,vehicleCount,communicationChannel,responseTimeSeconds,trainingLevel,certificationStatus,lastDrillDate,nextDrillScheduled,budgetUSD,operationalStatus,incidentLogLink,notes,contactPhone,emailContact,areaCoverageSqM,riskAssessmentScore,lastAuditDate,complianceStatus) VALUES (3,'SecureTeam Gamma','Luis Gomez',52,'05:00','17:00','Radios;K9Units;ShieldBats',6,'ChannelC',40,'Advanced','Certified','2023-12-01','2024-03-10',170000,'Active','log_gamma.pdf','Extra patrols for night events','5557778888','gamma.sec@example.com',30000,82,'2024-01-05','Compliant');

-- Ticketing platform configurations
CREATE TABLE ticketing_platforms
(
    platformId            INTEGER PRIMARY KEY AUTOINCREMENT,
    platformName          TEXT NOT NULL,
    providerCompany       TEXT,
    apiEndpoint           TEXT,
    supportedCurrencies   TEXT,
    maxTicketsPerOrder    INTEGER,
    transactionFeePercent REAL,
    fraudDetectionLevel   TEXT,
    vpnSupport            INTEGER,
    mobileAppAvailable    INTEGER,
    webPortalUrl          TEXT,
    integrationStatus     TEXT,
    lastIntegrationDate   DATE,
    slaResponseHours      INTEGER,
    dataRetentionDays    INTEGER,
    encryptionStandard    TEXT,
    complianceCertifications TEXT,
    supportContactEmail   TEXT,
    supportContactPhone   TEXT,
    notes                 TEXT,
    activeSince           DATE,
    lastUpdate            DATE,
    averageTicketPriceUSD REAL,
    dailyTransactionCount INTEGER,
    peakConcurrency       INTEGER,
    maintenanceWindow     TEXT,
    version               TEXT
);

INSERT INTO ticketing_platforms (platformName,providerCompany,apiEndpoint,supportedCurrencies,maxTicketsPerOrder,transactionFeePercent,fraudDetectionLevel,vpnSupport,mobileAppAvailable,webPortalUrl,integrationStatus,lastIntegrationDate,slaResponseHours,dataRetentionDays,encryptionStandard,complianceCertifications,supportContactEmail,supportContactPhone,notes,activeSince,lastUpdate,averageTicketPriceUSD,dailyTransactionCount,peakConcurrency,maintenanceWindow,version) VALUES ('TicketFlow','TechTickets Ltd','https://api.ticketflow.com','USD;EUR;GBP',10,2.5,'High',1,1,'https://portal.ticketflow.com','Integrated','2023-04-15',24,365,'TLS1.3','PCI-DSS;ISO27001','support@ticketflow.com','5559001111','Scalable cloud solution','2022-09-01','2023-12-20',75.5,4500,1200,'02:00-04:00','v5.2');
INSERT INTO ticketing_platforms (platformName,providerCompany,apiEndpoint,supportedCurrencies,maxTicketsPerOrder,transactionFeePercent,fraudDetectionLevel,vpnSupport,mobileAppAvailable,webPortalUrl,integrationStatus,lastIntegrationDate,slaResponseHours,dataRetentionDays,encryptionStandard,complianceCertifications,supportContactEmail,supportContactPhone,notes,activeSince,lastUpdate,averageTicketPriceUSD,dailyTransactionCount,peakConcurrency,maintenanceWindow,version) VALUES ('GatePass','SecureGate Inc','https://api.gatepass.io','USD;CAD',8,3.0,'Medium',0,1,'https://gatepass.io','Pending','2024-01-10',48,730,'TLS1.2','PCI-DSS','help@gatepass.io','5558002222','Requires custom integration','2023-01-15','2024-01-01',68.0,3000,800,'03:00-05:00','v2.9');
INSERT INTO ticketing_platforms (platformName,providerCompany,apiEndpoint,supportedCurrencies,maxTicketsPerOrder,transactionFeePercent,fraudDetectionLevel,vpnSupport,mobileAppAvailable,webPortalUrl,integrationStatus,lastIntegrationDate,slaResponseHours,dataRetentionDays,encryptionStandard,complianceCertifications,supportContactEmail,supportContactPhone,notes,activeSince,lastUpdate,averageTicketPriceUSD,dailyTransactionCount,peakConcurrency,maintenanceWindow,version) VALUES ('EventZen','ZenEvents','https://api.eventzen.com','USD;JPY;AUD',12,2.0,'High',1,0,'https://dashboard.eventzen.com','Integrated','2022-11-05',12,180,'TLS1.3','PCI-DSS;ISO27001;SOC2','contact@eventzen.com','5557003333','Focus on boutique events','2020-06-20','2023-11-30',90.2,2000,500,'01:00-03:00','v4.0');

-- Volunteer profile records
CREATE TABLE volunteer_profiles
(
    volunteerId           INTEGER PRIMARY KEY AUTOINCREMENT,
    firstName             TEXT NOT NULL,
    lastName              TEXT NOT NULL,
    dateOfBirth           DATE,
    gender                TEXT,
    contactPhone          TEXT,
    emailAddress          TEXT,
    addressLine1          TEXT,
    addressLine2          TEXT,
    city                  TEXT,
    stateProvince         TEXT,
    postalCode            TEXT,
    country               TEXT,
    registrationDate      DATE,
    lastActiveDate        DATE,
    totalHoursContributed INTEGER,
    preferredRoles        TEXT,
    availabilityWeekdays  TEXT,
    availabilityWeekends  TEXT,
    languageSpoken        TEXT,
    emergencyContactName  TEXT,
    emergencyContactPhone TEXT,
    medicalConditions     TEXT,
    backgroundCheckStatus TEXT,
    trainingCompleted     TEXT,
    notes                 TEXT,
    shirtSize             TEXT,
    availabilityMonths    TEXT,
    skillSet              TEXT,
    interests             TEXT,
    socialMediaHandle     TEXT
);

INSERT INTO volunteer_profiles (firstName,lastName,dateOfBirth,gender,contactPhone,emailAddress,addressLine1,addressLine2,city,stateProvince,postalCode,country,registrationDate,lastActiveDate,totalHoursContributed,preferredRoles,availabilityWeekdays,availabilityWeekends,languageSpoken,emergencyContactName,emergencyContactPhone,medicalConditions,backgroundCheckStatus,trainingCompleted,notes,shirtSize,availabilityMonths,skillSet,interests,socialMediaHandle) VALUES ('Emma','Taylor','1990-05-12','Female','5551112222','emma.t@example.com','123 Maple St','','Springfield','IL','62704','USA','2022-03-01','2023-12-15',120,'Gate Staff;Information Desk','MonTueWedThuFri','SatSun','English;Spanish','Laura Taylor','5553334444','None','Cleared','FirstAid;CrowdManagement','Great attitude','M','JanFebMarAprMayJun','CustomerService;PublicSpeaking','Sports;Music','@emma_t');
INSERT INTO volunteer_profiles (firstName,lastName,dateOfBirth,gender,contactPhone,emailAddress,addressLine1,addressLine2,city,stateProvince,postalCode,country,registrationDate,lastActiveDate,totalHoursContributed,preferredRoles,availabilityWeekdays,availabilityWeekends,languageSpoken,emergencyContactName,emergencyContactPhone,medicalConditions,backgroundCheckStatus,trainingCompleted,notes,shirtSize,availabilityMonths,skillSet,interests,socialMediaHandle) VALUES ('Liam','Nguyen','1985-11-23','Male','5552223333','liam.n@example.com','456 Oak Ave','Apt 5B','Riverdale','CA','90210','USA','2021-07-15','2023-11-20',200,'Logistics;Parking','MonTueWed','Sat','English;Vietnamese','Mona Nguyen','5554445555','Asthma','Cleared','LogisticsManagement','Detail oriented','L','JulAugSepOctNovDec','InventoryManagement;Driving','Photography;Travel','@liam_n');
INSERT INTO volunteer_profiles (firstName,lastName,dateOfBirth,gender,contactPhone,emailAddress,addressLine1,addressLine2,city,stateProvince,postalCode,country,registrationDate,lastActiveDate,totalHoursContributed,preferredRoles,availabilityWeekdays,availabilityWeekends,languageSpoken,emergencyContactName,emergencyContactPhone,medicalConditions,backgroundCheckStatus,trainingCompleted,notes,shirtSize,availabilityMonths,skillSet,interests,socialMediaHandle) VALUES ('Aisha','Khan','1992-03-08','Female','5553336666','aisha.k@example.com','789 Pine Rd','','Houston','TX','77002','USA','2023-01-10','2023-12-22',80,'Hospitality;Merchandise','TueWedThuFri','Sun','English;Urdu','Amir Khan','5557778888','None','Pending','HospitalityBasics','Friendly and enthusiastic','S','MarAprMayJunJul','CustomerService;CashHandling','Cooking;Reading','@aisha_k');

-- Technology vendor contract details
CREATE TABLE technology_vendor_contracts
(
    contractId            INTEGER PRIMARY KEY AUTOINCREMENT,
    vendorId              INTEGER,
    vendorName            TEXT NOT NULL,
    serviceDescription    TEXT,
    contractStartDate     DATE,
    contractEndDate       DATE,
    totalValueUSD         REAL,
    paymentTerms          TEXT,
    serviceLevelAgreement TEXT,
    renewalOption         TEXT,
    contactPersonName     TEXT,
    contactPersonEmail    TEXT,
    contactPhone          TEXT,
    technicalContactName  TEXT,
    technicalContactEmail TEXT,
    technicalContactPhone TEXT,
    status                TEXT,
    performanceScore      INTEGER,
    lastReviewDate        DATE,
    nextReviewDueDate     DATE,
    complianceRequirements TEXT,
    riskRating            TEXT,
    terminationClause     TEXT,
    notes                 TEXT,
    createdAt             DATE,
    updatedAt             DATE,
    governingLaw          TEXT,
    disputeResolution     TEXT,
    confidentialityClause TEXT,
    auditFrequencyMonths  INTEGER,
    escalationProcedure   TEXT
);

INSERT INTO technology_vendor_contracts (vendorId,vendorName,serviceDescription,contractStartDate,contractEndDate,totalValueUSD,paymentTerms,serviceLevelAgreement,renewalOption,contactPersonName,contactPersonEmail,contactPhone,technicalContactName,technicalContactEmail,technicalContactPhone,status,performanceScore,lastReviewDate,nextReviewDueDate,complianceRequirements,riskRating,terminationClause,notes,createdAt,updatedAt,governingLaw,disputeResolution,confidentialityClause,auditFrequencyMonths,escalationProcedure) VALUES (201,'NetStream Solutions','Live streaming infrastructure','2022-01-01','2025-12-31',2500000,'Net30','99.9% uptime','Automatic','Sophie Lee','sophie.lee@netstream.com','5551230000','Mark Liu','mark.liu@netstream.com','5551231111','Active',92,'2023-12-01','2024-12-01','PCI-DSS;ISO27001','Low','30 days notice','Excellent service','2022-01-01','2023-12-15','USA','Arbitration','Standard confidentiality','12','Escalate to VP Operations');
INSERT INTO technology_vendor_contracts (vendorId,vendorName,serviceDescription,contractStartDate,contractEndDate,totalValueUSD,paymentTerms,serviceLevelAgreement,renewalOption,contactPersonName,contactPersonEmail,contactPhone,technicalContactName,technicalContactEmail,technicalContactPhone,status,performanceScore,lastReviewDate,nextReviewDueDate,complianceRequirements,riskRating,terminationClause,notes,createdAt,updatedAt,governingLaw,disputeResolution,confidentialityClause,auditFrequencyMonths,escalationProcedure) VALUES (202,'SecureLock Systems','Access control hardware','2021-06-15','2024-06-14',750000,'Net45','99% door coverage','Negotiable','Diego Morales','diego.m@securelock.com','5552345678','Ana Gomez','ana.g@securelock.com','5552346789','Active',85,'2023-11-10','2024-11-10','SOC2','Medium','60 days notice','Hardware upgrade scheduled','2021-06-15','2023-11-20','Canada','Mediation','Restricted access','6','Notify Security Manager');
INSERT INTO technology_vendor_contracts (vendorId,vendorName,serviceDescription,contractStartDate,contractEndDate,totalValueUSD,paymentTerms,serviceLevelAgreement,renewalOption,contactPersonName,contactPersonEmail,contactPhone,technicalContactName,technicalContactEmail,technicalContactPhone,status,performanceScore,lastReviewDate,nextReviewDueDate,complianceRequirements,riskRating,terminationClause,notes,createdAt,updatedAt,governingLaw,disputeResolution,confidentialityClause,auditFrequencyMonths,escalationProcedure) VALUES (203,'DataPulse Analytics','Telemetry data analytics','2023-03-01','2026-02-28',1800000,'Net60','95% data accuracy','Automatic','Olivia Chen','olivia.chen@datapulse.com','5553456789','Ravi Patel','ravi.p@dataPulse.com','5553457890','Pending',0,'2023-12-05','2024-12-05','GDPR','High','90 days notice','Pending kickoff','2023-03-01','2023-12-07','UK','Arbitration','High confidentiality','12','Escalate to Chief Data Officer');

-- Sustainability initiative metrics
CREATE TABLE sustainability_initiative_metrics
(
    metricId                 INTEGER PRIMARY KEY AUTOINCREMENT,
    initiativeName           TEXT NOT NULL,
    startDate                DATE,
    endDate                  DATE,
    carbonReductionTonnes    REAL,
    waterSavedCubicMeters    REAL,
    energySavedMWh           REAL,
    wasteDivertedTonnes      REAL,
    renewableEnergyPct       REAL,
    treesPlantedCount        INTEGER,
    participantCount         INTEGER,
    budgetUSD                REAL,
    costPerTonCO2e           REAL,
    certificationAchieved    TEXT,
    reportingFrequency       TEXT,
    lastReportDate           DATE,
    nextReportDueDate        DATE,
    stakeholderFeedbackScore INTEGER,
    mediaImpressions          INTEGER,
    socialReach               INTEGER,
    awardsReceived            TEXT,
    notes                     TEXT,
    createdAt                DATE,
    updatedAt                DATE,
    responsibleTeam          TEXT,
    goalDescription          TEXT,
    metricCalculationMethod  TEXT,
    verificationAgency       TEXT,
    impactRank               INTEGER,
    improvementPlan          TEXT
);

INSERT INTO sustainability_initiative_metrics (initiativeName,startDate,endDate,carbonReductionTonnes,waterSavedCubicMeters,energySavedMWh,wasteDivertedTonnes,renewableEnergyPct,treesPlantedCount,participantCount,budgetUSD,costPerTonCO2e,certificationAchieved,reportingFrequency,lastReportDate,nextReportDueDate,stakeholderFeedbackScore,mediaImpressions,socialReach,awardsReceived,notes,createdAt,updatedAt,responsibleTeam,goalDescription,metricCalculationMethod,verificationAgency,impactRank,improvementPlan) VALUES ('Zero Waste 2023','2023-01-01','2023-12-31',0,0,0,1200,0,0,5000,300000,0,'ISO14001','Annual','2023-12-15','2024-12-15',88,500000,200000,'Green Event Award','All waste diverted','2023-01-01','2023-12-20','Facilities Team','Eliminate landfill waste','Weight based measurement','EcoAudit Ltd','1','Implement compost stations');
INSERT INTO sustainability_initiative_metrics (initiativeName,startDate,endDate,carbonReductionTonnes,waterSavedCubicMeters,energySavedMWh,wasteDivertedTonnes,renewableEnergyPct,treesPlantedCount,participantCount,budgetUSD,costPerTonCO2e,certificationAchieved,reportingFrequency,lastReportDate,nextReportDueDate,stakeholderFeedbackScore,mediaImpressions,socialReach,awardsReceived,notes,createdAt,updatedAt,responsibleTeam,goalDescription,metricCalculationMethod,verificationAgency,impactRank,improvementPlan) VALUES ('Solar Power Integration','2022-06-01','2025-05-31',15.5,0,2500,0,45,0,0,800000,51612.9,'LEED','Quarterly','2023-09-30','2023-12-31',92,750000,300000,'Renewable Energy Champion','Phase 1 completed','2022-06-01','2023-10-01','Engineering Team','Increase renewable share','Metered production','EnergyAgency','2','Add battery storage');
INSERT INTO sustainability_initiative_metrics (initiativeName,startDate,endDate,carbonReductionTonnes,waterSavedCubicMeters,energySavedMWh,wasteDivertedTonnes,renewableEnergyPct,treesPlantedCount,participantCount,budgetUSD,costPerTonCO2e,certificationAchieved,reportingFrequency,lastReportDate,nextReportDueDate,stakeholderFeedbackScore,mediaImpressions,socialReach,awardsReceived,notes,createdAt,updatedAt,responsibleTeam,goalDescription,metricCalculationMethod,verificationAgency,impactRank,improvementPlan) VALUES ('Community Tree Planting','2023-04-15','2024-04-14',3.2,0,0,0,0,1500,800,120000,37500,'None','Biannual','2023-10-20','2024-04-20',85,250000,120000,'Local Green Initiative','Engaged schools','2023-04-15','2023-10-25','CSR Team','Plant 1500 trees','Count of saplings','EnviroWatch','3','Schedule maintenance for planted trees');

-- Media production staff roster
CREATE TABLE media_production_staff
(
    staffId               INTEGER PRIMARY KEY AUTOINCREMENT,
    firstName             TEXT NOT NULL,
    lastName              TEXT NOT NULL,
    role                  TEXT NOT NULL,
    department            TEXT,
    email                 TEXT,
    phone                 TEXT,
    hireDate              DATE,
    contractEndDate       DATE,
    hourlyRateUSD         REAL,
    weeklyHoursAllocated  INTEGER,
    certification         TEXT,
    equipmentSpecialty    TEXT,
    languageFluency       TEXT,
    previousExperience    TEXT,
    availability          TEXT,
    seniorityLevel        TEXT,
    managerId             INTEGER,
    status                TEXT,
    lastPerformanceScore  INTEGER,
    notes                 TEXT,
    shiftPattern          TEXT,
    workLocation          TEXT,
    travelRequired        INTEGER,
    overtimeEligible      INTEGER,
    remoteWorkOption      INTEGER,
    emergencyContactName  TEXT,
    emergencyContactPhone TEXT,
    createdAt             DATE,
    updatedAt             DATE,
    reportingLine         TEXT
);

INSERT INTO media_production_staff (firstName,lastName,role,department,email,phone,hireDate,contractEndDate,hourlyRateUSD,weeklyHoursAllocated,certification,equipmentSpecialty,languageFluency,previousExperience,availability,seniorityLevel,managerId,status,lastPerformanceScore,notes,shiftPattern,workLocation,travelRequired,overtimeEligible,remoteWorkOption,emergencyContactName,emergencyContactPhone,createdAt,updatedAt,reportingLine) VALUES ('Mia','Johnson','Camera Operator','Video','mia.j@example.com','5551112222','2021-05-10','2024-05-09',45.0,40,'MCR Certified','4K Cameras','English;French','Freelance for sports events','FullTime','Senior',5,'Active',95,'Excellent frame composition','Day','Studio A',0,1,0,'Laura Johnson','5553334444','2021-05-10','2023-12-20','Head of Production');
INSERT INTO media_production_staff (firstName,lastName,role,department,email,phone,hireDate,contractEndDate,hourlyRateUSD,weeklyHoursAllocated,certification,equipmentSpecialty,languageFluency,previousExperience,availability,seniorityLevel,managerId,status,lastPerformanceScore,notes,shiftPattern,workLocation,travelRequired,overtimeEligible,remoteWorkOption,emergencyContactName,emergencyContactPhone,createdAt,updatedAt,reportingLine) VALUES ('Noah','Kim','Audio Engineer','Audio','noah.k@example.com','5552223333','2022-02-01','2025-01-31',38.0,35,'ATSC Certified','Mixing Consoles','English;Korean','Live concert sound','FullTime','Mid',6,'Active',88,'Reliable under pressure','Evening','Studio B',1,1,0,'Sam Kim','5554445555','2022-02-01','2023-12-22','Audio Department Lead');
INSERT INTO media_production_staff (firstName,lastName,role,department,email,phone,hireDate,contractEndDate,hourlyRateUSD,weeklyHoursAllocated,certification,equipmentSpecialty,languageFluency,previousExperience,availability,seniorityLevel,managerId,status,lastPerformanceScore,notes,shiftPattern,workLocation,travelRequired,overtimeEligible,remoteWorkOption,emergencyContactName,emergencyContactPhone,createdAt,updatedAt,reportingLine) VALUES ('Olivia','Martinez','Graphics Designer','PostProduction','olivia.m@example.com','5553334444','2020-09-15','2023-09-14',42.0,30,'Adobe Certified','3D Rendering','English;Spanish','TV promo graphics','PartTime','Junior',7,'Active',90,'Creative and timely','Flexible','Remote',0,0,1,'Carlos Martinez','5555556666','2020-09-15','2023-12-01','Creative Director');