-- Venue sustainability reports
CREATE TABLE venue_sustainability_reports (
    reportId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    year INTEGER,
    wasteKg REAL,
    recyclingKg REAL,
    energyMwh REAL,
    waterUsageLiters REAL,
    carbonEmissionsTons REAL,
    certificationLevel TEXT,
    auditorName TEXT,
    auditDate DATE,
    notes TEXT,
    renewableEnergyPct REAL,
    greenBuildingScore INTEGER,
    sustainableTransportScore INTEGER,
    foodWasteKg REAL,
    paperUsageKg REAL,
    compostedKg REAL,
    hvacEfficiencyPct REAL,
    lightingEfficiencyPct REAL,
    waterReusePct REAL,
    totalScore INTEGER
);
INSERT INTO venue_sustainability_reports (venueId,year,wasteKg,recyclingKg,energyMwh,waterUsageLiters,carbonEmissionsTons,certificationLevel,auditorName,auditDate,notes,renewableEnergyPct,greenBuildingScore,sustainableTransportScore,foodWasteKg,paperUsageKg,compostedKg,hvacEfficiencyPct,lightingEfficiencyPct,waterReusePct,totalScore) VALUES (101,2022,1200.5,800.2,350.0,125000.0,12.4,Gold,JohnDoe,2022-03-15,InitialAudit,45.0,88,76,150.0,200.0,90.0,92.5,88.0,30.0,85);
INSERT INTO venue_sustainability_reports (venueId,year,wasteKg,recyclingKg,energyMwh,waterUsageLiters,carbonEmissionsTons,certificationLevel,auditorName,auditDate,notes,renewableEnergyPct,greenBuildingScore,sustainableTransportScore,foodWasteKg,paperUsageKg,compostedKg,hvacEfficiencyPct,lightingEfficiencyPct,waterReusePct,totalScore) VALUES (102,2023,1100.0,850.0,340.0,120000.0,11.8,Platinum,JaneSmith,2023-04-20,FollowUp,48.0,91,80,140.0,190.0,95.0,94.0,90.0,32.0,89);
INSERT INTO venue_sustainability_reports (venueId,year,wasteKg,recyclingKg,energyMwh,waterUsageLiters,carbonEmissionsTons,certificationLevel,auditorName,auditDate,notes,renewableEnergyPct,greenBuildingScore,sustainableTransportScore,foodWasteKg,paperUsageKg,compostedKg,hvacEfficiencyPct,lightingEfficiencyPct,waterReusePct,totalScore) VALUES (103,2021,1300.0,750.0,360.0,130000.0,13.0,Silver,EmilyBrown,2021-02-10,AnnualReview,42.0,85,70,160.0,210.0,85.0,90.0,85.0,28.0,80);

-- Team aerodynamics data
CREATE TABLE team_aerodynamics_data (
    aeroDataId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    seasonYear INTEGER,
    carModel TEXT,
    windTunnelSpeedMps REAL,
    downforceNewton REAL,
    dragCoefficient REAL,
    frontWingAngleDeg REAL,
    rearWingAngleDeg REAL,
    diffuserAngleDeg REAL,
    rakeAngleDeg REAL,
    frontWingEndplateType TEXT,
    rearWingFlapSetting TEXT,
    underbodyVentilation TEXT,
    sidepodDesign TEXT,
    lcScaleModel TEXT,
    testDate DATE,
    engineerName TEXT,
    notes TEXT,
    simulationSoftware TEXT,
    cpuHoursUsed REAL,
    resultScore INTEGER,
    validationStatus TEXT
);
INSERT INTO team_aerodynamics_data (teamId,seasonYear,carModel,windTunnelSpeedMps,downforceNewton,dragCoefficient,frontWingAngleDeg,rearWingAngleDeg,diffuserAngleDeg,rakeAngleDeg,frontWingEndplateType,rearWingFlapSetting,underbodyVentilation,sidepodDesign,lcScaleModel,testDate,engineerName,notes,simulationSoftware,cpuHoursUsed,resultScore,validationStatus) VALUES (201,2022,ModelX,45.0,15000.0,0.32,3.5,7.2,5.0,1.0,CarbonFiber,Medium,Active,Compact,1:20,2022-02-10,AliceGreen,PreliminaryRun,CFDSolver,120.5,88,Pending);
INSERT INTO team_aerodynamics_data (teamId,seasonYear,carModel,windTunnelSpeedMps,downforceNewton,dragCoefficient,frontWingAngleDeg,rearWingAngleDeg,diffuserAngleDeg,rakeAngleDeg,frontWingEndplateType,rearWingFlapSetting,underbodyVentilation,sidepodDesign,lcScaleModel,testDate,engineerName,notes,simulationSoftware,cpuHoursUsed,resultScore,validationStatus) VALUES (202,2023,ModelY,46.5,15500.0,0.30,3.8,7.0,5.2,0.9,Aluminum,High,Passive,Extended,1:25,2023-03-12,BobWhite,FinalTesting,FlowSim,135.0,92,Approved);
INSERT INTO team_aerodynamics_data (teamId,seasonYear,carModel,windTunnelSpeedMps,downforceNewton,dragCoefficient,frontWingAngleDeg,rearWingAngleDeg,diffuserAngleDeg,rakeAngleDeg,frontWingEndplateType,rearWingFlapSetting,underbodyVentilation,sidepodDesign,lcScaleModel,testDate,engineerName,notes,simulationSoftware,cpuHoursUsed,resultScore,validationStatus) VALUES (203,2021,ModelZ,44.2,14800.0,0.33,3.6,7.3,4.9,1.1,CarbonFiber,Low,Active,Compact,1:22,2021-01-20,CharlieBlack,Iteration1,AirFlowPro,110.0,85,Pending);

-- Grand Prix heritage
CREATE TABLE grand_prix_heritage (
    heritageId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    year INTEGER,
    legacyTitle TEXT,
    historicWinner TEXT,
    winningCar TEXT,
    winningTeam TEXT,
    fastestLapTime TEXT,
    fastestLapDriver TEXT,
    notableEvent TEXT,
    ceremonyDetails TEXT,
    tributeArtist TEXT,
    memorabiliaCatalog TEXT,
    exhibitionLocation TEXT,
    ticketCollectorInfo TEXT,
    anniversaryEdition TEXT,
    broadcastArchiveLink TEXT,
    fanMemories TEXT,
    sponsorHistorical TEXT,
    photoArchiveRef TEXT,
    docReference TEXT,
    preservationStatus TEXT
);
INSERT INTO grand_prix_heritage (raceId,year,legacyTitle,historicWinner,winningCar,winningTeam,fastestLapTime,fastestLapDriver,notableEvent,ceremonyDetails,tributeArtist,memorabiliaCatalog,exhibitionLocation,ticketCollectorInfo,anniversaryEdition,broadcastArchiveLink,fanMemories,sponsorHistorical,photoArchiveRef,docReference,preservationStatus) VALUES (301,1967,FirstChampionship,JohnSmith,FastCar1,TeamAlpha,1:22.350,JohnSmith,FirstRun,GoldMedalCeremony,ArtistOne,CatalogA,HallOfFame,CollectorsClub,SilverEdition,http://archive1967.com,Memories1967,SponsorA,PhotoRef001,Doc001,Preserved);
INSERT INTO grand_prix_heritage (raceId,year,legacyTitle,historicWinner,winningCar,winningTeam,fastestLapTime,fastestLapDriver,notableEvent,ceremonyDetails,tributeArtist,memorabiliaCatalog,exhibitionLocation,ticketCollectorInfo,anniversaryEdition,broadcastArchiveLink,fanMemories,sponsorHistorical,photoArchiveRef,docReference,preservationStatus) VALUES (302,1985,MidEraClassic,LisaBrown,SpeedsterX,TeamBeta,1:18.900,LisaBrown,CloseFinish,SilverMedalCeremony,ArtistTwo,CatalogB,MainGallery,CollectorsClub85,GoldEdition,http://archive1985.com,Memories1985,SponsorB,PhotoRef045,Doc045,Restored);
INSERT INTO grand_prix_heritage (raceId,year,legacyTitle,historicWinner,winningCar,winningTeam,fastestLapTime,fastestLapDriver,notableEvent,ceremonyDetails,tributeArtist,memorabiliaCatalog,exhibitionLocation,ticketCollectorInfo,anniversaryEdition,broadcastArchiveLink,fanMemories,sponsorHistorical,photoArchiveRef,docReference,preservationStatus) VALUES (303,2000,MillenniumRace,AlexTurner,Turbo2000,TeamGamma,1:15.750,AlexTurner,RecordLap,PlatinumCeremony,ArtistThree,CatalogC,ExpoCenter,Collectors2000,PlatinumEdition,http://archive2000.com,Memories2000,SponsorC,PhotoRef099,Doc099,Digitized);

-- Fan loyalty rewards
CREATE TABLE fan_loyalty_rewards (
    rewardId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    programTier TEXT,
    pointsEarned INTEGER,
    pointsRedeemed INTEGER,
    rewardDescription TEXT,
    rewardDate DATE,
    expiryDate DATE,
    redeemedBy TEXT,
    redemptionLocation TEXT,
    status TEXT,
    voucherCode TEXT,
    createdAt DATE,
    updatedAt DATE,
    specialOffer TEXT,
    eventAccess TEXT,
    merchandiseItem TEXT,
    discountPercent REAL,
    bonusPoints INTEGER,
    notes TEXT,
    sponsorName TEXT
);
INSERT INTO fan_loyalty_rewards (fanId,programTier,pointsEarned,pointsRedeemed,rewardDescription,rewardDate,expiryDate,redeemedBy,redemptionLocation,status,voucherCode,createdAt,updatedAt,specialOffer,eventAccess,merchandiseItem,discountPercent,bonusPoints,notes,sponsorName) VALUES (401,Gold,1500,500,FreePitPass,2023-05-01,2024-05-01,JohnDoe,GateA,Claimed,VCH12345,2023-04-20,2023-04-21,VIPLounge,Yes,Cap,10.0,100,NoNotes,SponsorX);
INSERT INTO fan_loyalty_rewards (fanId,programTier,pointsEarned,pointsRedeemed,rewardDescription,rewardDate,expiryDate,redeemedBy,redemptionLocation,status,voucherCode,createdAt,updatedAt,specialOffer,eventAccess,merchandiseItem,discountPercent,bonusPoints,notes,sponsorName) VALUES (402,Silver,800,200,DiscountTicket,2023-06-15,2024-06-15,JaneSmith,GateB,Pending,VCH67890,2023-06-01,2023-06-02,EarlyBird,No,TShirt,15.0,50,FirstTimeUser,SponsorY);
INSERT INTO fan_loyalty_rewards (fanId,programTier,pointsEarned,pointsRedeemed,rewardDescription,rewardDate,expiryDate,redeemedBy,redemptionLocation,status,voucherCode,createdAt,updatedAt,specialOffer,eventAccess,merchandiseItem,discountPercent,bonusPoints,notes,sponsorName) VALUES (403,Bronze,300,0,WelcomePack,2023-07-10,2024-07-10,EmilyBrown,GateC,Claimed,VCH11223,2023-07-01,2023-07-02,Welcome,Yes,Poster,5.0,20,FirstReward,SponsorZ);

-- Media partner agreements
CREATE TABLE media_partner_agreements (
    agreementId INTEGER PRIMARY KEY AUTOINCREMENT,
    partnerId INTEGER,
    mediaType TEXT,
    startDate DATE,
    endDate DATE,
    contractValue REAL,
    exclusivityFlag TEXT,
    region TEXT,
    broadcastRights TEXT,
    digitalRights TEXT,
    onSiteAccessFlag INTEGER,
    brandingGuidelines TEXT,
    contactPerson TEXT,
    contactEmail TEXT,
    renewalOption TEXT,
    terminationClause TEXT,
    amendmentCount INTEGER,
    complianceScore INTEGER,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    status TEXT
);
INSERT INTO media_partner_agreements (partnerId,mediaType,startDate,endDate,contractValue,exclusivityFlag,region,broadcastRights,digitalRights,onSiteAccessFlag,brandingGuidelines,contactPerson,contactEmail,renewalOption,terminationClause,amendmentCount,complianceScore,notes,createdAt,updatedAt,status) VALUES (501,Television,2022-01-01,2025-12-31,2500000.00,Yes,Europe,Full,Full,1,GuidelinesV1,MarkLee,mark.lee@example.com,AutoRenew,30Days,2,95,InitialAgreement,2022-01-01,2022-01-02,Active);
INSERT INTO media_partner_agreements (partnerId,mediaType,startDate,endDate,contractValue,exclusivityFlag,region,broadcastRights,digitalRights,onSiteAccessFlag,brandingGuidelines,contactPerson,contactEmail,renewalOption,terminationClause,amendmentCount,complianceScore,notes,createdAt,updatedAt,status) VALUES (502,Online,2023-03-15,2026-03-14,1500000.00,No,Asia,Limited,Full,0,GuidelinesV2,SaraKim,sara.kim@example.com,ManualRenew,60Days,1,88,ExtendedScope,2023-03-15,2023-03-16,Pending);
INSERT INTO media_partner_agreements (partnerId,mediaType,startDate,endDate,contractValue,exclusivityFlag,region,broadcastRights,digitalRights,onSiteAccessFlag,brandingGuidelines,contactPerson,contactEmail,renewalOption,terminationClause,amendmentCount,complianceScore,notes,createdAt,updatedAt,status) VALUES (503,Radio,2021-06-01,2024-05-31,750000.00,Yes,NorthAmerica,Partial,Partial,1,GuidelinesV3,TomClark,tom.clark@example.com,AutoRenew,90Days,3,99,RenewalPending,2021-06-01,2021-06-02,Active);

-- Track incident logs
CREATE TABLE track_incident_logs (
    incidentLogId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    lap INTEGER,
    incidentType TEXT,
    severity INTEGER,
    description TEXT,
    involvedDriverId INTEGER,
    involvedConstructorId INTEGER,
    locationOnTrack TEXT,
    weatherCondition TEXT,
    temperatureC REAL,
    humidityPct REAL,
    responseTimeSec INTEGER,
    marshalsDispatched INTEGER,
    cleanupTimeSec INTEGER,
    safetyCarDeployedFlag INTEGER,
    penaltyIssued TEXT,
    videoReference TEXT,
    photoReference TEXT,
    reportedBy TEXT,
    timestamp DATETIME,
    status TEXT
);
INSERT INTO track_incident_logs (raceId,lap,incidentType,severity,description,involvedDriverId,involvedConstructorId,locationOnTrack,weatherCondition,temperatureC,humidityPct,responseTimeSec,marshalsDispatched,cleanupTimeSec,safetyCarDeployedFlag,penaltyIssued,videoReference,photoReference,reportedBy,timestamp,status) VALUES (601,12,Collision,3,Minor contact,101,11,Turn1,Rainy,18.5,85,45,2,120,1,DriveThrough,http://vid001.com,photo001.jpg,StewardA,2023-07-15 14:23:00,Closed);
INSERT INTO track_incident_logs (raceId,lap,incidentType,severity,description,involvedDriverId,involvedConstructorId,locationOnTrack,weatherCondition,temperatureC,humidityPct,responseTimeSec,marshalsDispatched,cleanupTimeSec,safetyCarDeployedFlag,penaltyIssued,videoReference,photoReference,reportedBy,timestamp,status) VALUES (602,27,Spill,2,Oil on track,102,12,Straight2,Sunny,22.0,40,30,1,90,0,None,http://vid002.com,photo002.jpg,StewardB,2023-08-02 11:05:00,Open);
INSERT INTO track_incident_logs (raceId,lap,incidentType,severity,description,involvedDriverId,involvedConstructorId,locationOnTrack,weatherCondition,temperatureC,humidityPct,responseTimeSec,marshalsDispatched,cleanupTimeSec,safetyCarDeployedFlag,penaltyIssued,videoReference,photoReference,reportedBy,timestamp,status) VALUES (603,5,Mechanical,4,Engine failure,103,13,Turn3,Cloudy,19.0,70,20,3,150,1,StopAndGo,http://vid003.com,photo003.jpg,StewardC,2023-09-10 09:45:00,Investigating);

-- Logistics fuel shipments
CREATE TABLE logistics_fuel_shipments (
    shipmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    supplierId INTEGER,
    circuitId INTEGER,
    raceId INTEGER,
    fuelType TEXT,
    volumeLiters REAL,
    shipmentDate DATE,
    arrivalTime TEXT,
    departureTime TEXT,
    temperatureC REAL,
    pressureBar REAL,
    carrierCompany TEXT,
    driverName TEXT,
    licensePlate TEXT,
    sealNumber TEXT,
    complianceCheckFlag INTEGER,
    notes TEXT,
    invoicedAmount REAL,
    invoiceNumber TEXT,
    paymentStatus TEXT,
    createdAt DATE,
    updatedAt DATE
);
INSERT INTO logistics_fuel_shipments (supplierId,circuitId,raceId,fuelType,volumeLiters,shipmentDate,arrivalTime,departureTime,temperatureC,pressureBar,carrierCompany,driverName,licensePlate,sealNumber,complianceCheckFlag,notes,invoicedAmount,invoiceNumber,paymentStatus,createdAt,updatedAt) VALUES (701,101,801,Petrol,25000.0,2023-04-20,08:00,10:00,15.0,1.5,FastLogistics,JohnDriver,AB123CD,SEAL001,1,NoIssues,50000.00,INV001,Paid,2023-04-19,2023-04-21);
INSERT INTO logistics_fuel_shipments (supplierId,circuitId,raceId,fuelType,volumeLiters,shipmentDate,arrivalTime,departureTime,temperatureC,pressureBar,carrierCompany,driverName,licensePlate,sealNumber,complianceCheckFlag,notes,invoicedAmount,invoiceNumber,paymentStatus,createdAt,updatedAt) VALUES (702,102,802,Diesel,30000.0,2023-05-05,09:30,11:30,17.0,1.6,QuickTransport,AnnaRider,XY987ZT,SEAL002,1,TemperatureChecked,60000.00,INV002,Pending,2023-05-04,2023-05-06);
INSERT INTO logistics_fuel_shipments (supplierId,circuitId,raceId,fuelType,volumeLiters,shipmentDate,arrivalTime,departureTime,temperatureC,pressureBar,carrierCompany,driverName,licensePlate,sealNumber,complianceCheckFlag,notes,invoicedAmount,invoiceNumber,paymentStatus,createdAt,updatedAt) VALUES (703,103,803,Hybrid,22000.0,2023-06-10,07:45,09:45,14.5,1.4,GreenLogistics,MarkPilot,CD456EF,SEAL003,0,PendingInspection,44000.00,INV003,Unpaid,2023-06-09,2023-06-11);

-- Hospitality survey responses
CREATE TABLE hospitality_survey_responses (
    surveyId INTEGER PRIMARY KEY AUTOINCREMENT,
    guestId INTEGER,
    eventId INTEGER,
    visitDate DATE,
    overallRating INTEGER,
    foodQualityRating INTEGER,
    serviceRating INTEGER,
    venueComfortRating INTEGER,
    staffFriendlinessRating INTEGER,
    waitTimeMinutes INTEGER,
    suggestions TEXT,
    wouldRecommendFlag INTEGER,
    likelihoodToReturn INTEGER,
    attendedVIPAreaFlag INTEGER,
    beverageRating INTEGER,
    cleanlinessRating INTEGER,
    entertainmentRating INTEGER,
    parkingConvenienceRating INTEGER,
    WiFiQualityRating INTEGER,
    staffHelpfulnessRating INTEGER,
    createdAt DATE,
    updatedAt DATE
);
INSERT INTO hospitality_survey_responses (guestId,eventId,visitDate,overallRating,foodQualityRating,serviceRating,venueComfortRating,staffFriendlinessRating,waitTimeMinutes,suggestions,wouldRecommendFlag,likelihoodToReturn,attendedVIPAreaFlag,beverageRating,cleanlinessRating,entertainmentRating,parkingConvenienceRating,WiFiQualityRating,staffHelpfulnessRating,createdAt,updatedAt) VALUES (901,1001,2023-07-01,9,8,9,8,9,5,MoreSeating,1,10,0,8,9,7,8,9,9,2023-07-02,2023-07-03);
INSERT INTO hospitality_survey_responses (guestId,eventId,visitDate,overallRating,foodQualityRating,serviceRating,venueComfortRating,staffFriendlinessRating,waitTimeMinutes,suggestions,wouldRecommendFlag,likelihoodToReturn,attendedVIPAreaFlag,beverageRating,cleanlinessRating,entertainmentRating,parkingConvenienceRating,WiFiQualityRating,staffHelpfulnessRating,createdAt,updatedAt) VALUES (902,1002,2023-07-05,7,6,7,6,7,10,ImproveAudio,1,8,1,6,7,5,6,7,7,2023-07-06,2023-07-07);
INSERT INTO hospitality_survey_responses (guestId,eventId,visitDate,overallRating,foodQualityRating,serviceRating,venueComfortRating,staffFriendlinessRating,waitTimeMinutes,suggestions,wouldRecommendFlag,likelihoodToReturn,attendedVIPAreaFlag,beverageRating,cleanlinessRating,entertainmentRating,parkingConvenienceRating,WiFiQualityRating,staffHelpfulnessRating,createdAt,updatedAt) VALUES (903,1003,2023-07-10,8,8,8,7,8,7,AddMoreVegOptions,1,9,0,8,8,6,7,8,8,2023-07-11,2023-07-12);

-- Officials conflict of interest
CREATE TABLE officials_conflict_of_interest (
    conflictId INTEGER PRIMARY KEY AUTOINCREMENT,
    officialId INTEGER,
    seasonYear INTEGER,
    conflictType TEXT,
    relatedEntityId INTEGER,
    description TEXT,
    disclosedDate DATE,
    resolutionStatus TEXT,
    resolutionDate DATE,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    reviewedBy TEXT,
    reviewDate DATE,
    severityLevel INTEGER,
    impactAssessment TEXT,
    mitigationPlan TEXT,
    complianceFlag INTEGER,
    legalReference TEXT,
    attachmentRef TEXT,
    status TEXT
);
INSERT INTO officials_conflict_of_interest (officialId,seasonYear,conflictType,relatedEntityId,description,disclosedDate,resolutionStatus,resolutionDate,notes,createdAt,updatedAt,reviewedBy,reviewDate,severityLevel,impactAssessment,mitigationPlan,complianceFlag,legalReference,attachmentRef,status) VALUES (1001,2022,Financial,2001,OwnershipInTeam,2022-03-10,Pending,NULL,InitialReport,2022-03-09,2022-03-11,AuditTeam,2022-03-15,3,Medium,Divestiture,1,Law123,Attach001,Open);
INSERT INTO officials_conflict_of_interest (officialId,seasonYear,conflictType,relatedEntityId,description,disclosedDate,resolutionStatus,resolutionDate,notes,createdAt,updatedAt,reviewedBy,reviewDate,severityLevel,impactAssessment,mitigationPlan,complianceFlag,legalReference,attachmentRef,status) VALUES (1002,2023,Family,2002,RelativeInSponsor,2023-04-20,Resolved,2023-05-01,ResolvedAfterReview,2023-04-19,2023-04-22,ComplianceDept,2023-04-25,2,Low,RecusalFromDecisions,1,Law456,Attach002,Closed);
INSERT INTO officials_conflict_of_interest (officialId,seasonYear,conflictType,relatedEntityId,description,disclosedDate,resolutionStatus,resolutionDate,notes,createdAt,updatedAt,reviewedBy,reviewDate,severityLevel,impactAssessment,mitigationPlan,complianceFlag,legalReference,attachmentRef,status) VALUES (1003,2021,Commercial,2003,ContractWithVendor,2021-07-05,Pending,NULL,AwaitingDocuments,2021-07-04,2021-07-06,LegalTeam,2021-07-10,4,High,TerminateContract,0,Law789,Attach003,Open);

-- Digital platform user stats
CREATE TABLE digital_platform_user_stats (
    statId INTEGER PRIMARY KEY AUTOINCREMENT,
    platformId INTEGER,
    date DATE,
    activeUsers INTEGER,
    newRegistrations INTEGER,
    sessions INTEGER,
    avgSessionDurationSec REAL,
    pageViews INTEGER,
    bounceRatePct REAL,
    conversionRatePct REAL,
    revenueUSD REAL,
    adImpressions INTEGER,
    adClicks INTEGER,
    clickThroughRatePct REAL,
    mobileUsersPct REAL,
    desktopUsersPct REAL,
    tabletUsersPct REAL,
    regionUSAPct REAL,
    regionEUROpct REAL,
    regionAPACpct REAL,
    deviceTypePrimary TEXT,
    topReferralSource TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE
);
INSERT INTO digital_platform_user_stats (platformId,date,activeUsers,newRegistrations,sessions,avgSessionDurationSec,pageViews,bounceRatePct,conversionRatePct,revenueUSD,adImpressions,adClicks,clickThroughRatePct,mobileUsersPct,desktopUsersPct,tabletUsersPct,regionUSAPct,regionEUROpct,regionAPACpct,deviceTypePrimary,topReferralSource,notes,createdAt,updatedAt) VALUES (1,2023-07-01,15000,500,30000,320.5,120000,45.0,2.5,25000.00,500000,12000,2.4,60.0,35.0,5.0,55.0,30.0,15.0,Mobile,Google,NoIssues,2023-07-01,2023-07-02);
INSERT INTO digital_platform_user_stats (platformId,date,activeUsers,newRegistrations,sessions,avgSessionDurationSec,pageViews,bounceRatePct,conversionRatePct,revenueUSD,adImpressions,adClicks,clickThroughRatePct,mobileUsersPct,desktopUsersPct,tabletUsersPct,regionUSAPct,regionEUROpct,regionAPACpct,deviceTypePrimary,topReferralSource,notes,createdAt,updatedAt) VALUES (2,2023-07-02,17000,600,34000,315.0,130000,42.0,3.0,27000.00,550000,13000,2.36,58.0,38.0,4.0,57.0,32.0,11.0,Desktop,Facebook,SeasonalPeak,2023-07-02,2023-07-03);
INSERT INTO digital_platform_user_stats (platformId,date,activeUsers,newRegistrations,sessions,avgSessionDurationSec,pageViews,bounceRatePct,conversionRatePct,revenueUSD,adImpressions,adClicks,clickThroughRatePct,mobileUsersPct,desktopUsersPct,tabletUsersPct,regionUSAPct,regionEUROpct,regionAPACpct,deviceTypePrimary,topReferralSource,notes,createdAt,updatedAt) VALUES (3,2023-07-03,16000,550,32000,318.0,125000,44.0,2.8,26000.00,525000,12500,2.38,59.0,36.0,5.0,56.0,31.0,13.0,Tablet,Twitter,StableTraffic,2023-07-03,2023-07-04);