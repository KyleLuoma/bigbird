-- Track weather conditions observed during races
CREATE TABLE track_weather_conditions
(
    weatherId          INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId             INTEGER NOT NULL,
    temperatureC       REAL,
    humidityPct        REAL,
    windSpeedKph       REAL,
    windDirectionDeg   REAL,
    precipitationMm    REAL,
    pressureHpa        REAL,
    visibilityKm       REAL,
    dewPointC          REAL,
    heatIndexC         REAL,
    uvIndex            REAL,
    cloudCoverPct      REAL,
    weatherCategory    TEXT,
    observationTime    TEXT,
    sensorId           INTEGER,
    dataSource         TEXT,
    latitude           REAL,
    longitude          REAL,
    altitudeMeters     REAL,
    notes              TEXT
);
INSERT INTO track_weather_conditions (weatherId, raceId, temperatureC, humidityPct, windSpeedKph, precipitationMm) VALUES (1, 101, 27.5, 55, 12.3, 0);
INSERT INTO track_weather_conditions (weatherId, raceId, temperatureC, humidityPct, windSpeedKph, precipitationMm) VALUES (2, 102, 22.1, 70, 8.4, 2.3);
INSERT INTO track_weather_conditions (weatherId, raceId, temperatureC, humidityPct, windSpeedKph, precipitationMm) VALUES (3, 103, 30.0, 40, 15.0, 0);


-- Analysis of pit stop strategies per driver
CREATE TABLE pit_stop_strategy_analysis
(
    strategyId            INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId                INTEGER NOT NULL,
    driverId              INTEGER NOT NULL,
    totalStops            INTEGER,
    avgStopTimeSec        REAL,
    minStopTimeSec        REAL,
    maxStopTimeSec        REAL,
    tyreCompoundUsed      TEXT,
    fuelAddedLiters       REAL,
    positionBeforeStop    INTEGER,
    positionAfterStop     INTEGER,
    pitLaneEntryTime      TEXT,
    pitLaneExitTime       TEXT,
    crewMemberCount       INTEGER,
    equipmentVersion      TEXT,
    weatherImpactScore    REAL,
    trackTemperatureC     REAL,
    tyreWearPercentage    REAL,
    strategyNotes         TEXT,
    createdAt             TEXT,
    updatedAt             TEXT,
    analysisVersion       TEXT,
    riskAssessmentScore   REAL,
    predictedGainSeconds  REAL
);
INSERT INTO pit_stop_strategy_analysis (strategyId, raceId, driverId, totalStops, avgStopTimeSec) VALUES (1, 101, 12, 2, 3.2);
INSERT INTO pit_stop_strategy_analysis (strategyId, raceId, driverId, totalStops, avgStopTimeSec) VALUES (2, 102, 23, 3, 2.9);
INSERT INTO pit_stop_strategy_analysis (strategyId, raceId, driverId, totalStops, avgStopTimeSec) VALUES (3, 103, 34, 1, 4.1);


-- Packages offered to teams for hospitality at the venue
CREATE TABLE team_hospitality_packages
(
    packageId           INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId              INTEGER NOT NULL,
    packageName         TEXT,
    priceUsd            REAL,
    seatingArea         TEXT,
    loungeAccess        BOOLEAN,
    complimentaryMeals INTEGER,
    premiumDrinks       INTEGER,
    merchandiseVoucher  REAL,
    vipParkingSpots     INTEGER,
    privateSuite        BOOLEAN,
    reservationDate    TEXT,
    expirationDate      TEXT,
    includedTransport   TEXT,
    hostStaffCount      INTEGER,
    brandSponsor        TEXT,
    packageTier         TEXT,
    maxGuests           INTEGER,
    minStayNights       INTEGER,
    specialAmenities   TEXT,
    notes               TEXT,
    createdAt           TEXT,
    updatedAt           TEXT,
    isActive            BOOLEAN,
    contractId          INTEGER,
    renewalDate         TEXT
);
INSERT INTO team_hospitality_packages (packageId, teamId, packageName, priceUsd) VALUES (1, 5, PremiumSuite, 15000);
INSERT INTO team_hospitality_packages (packageId, teamId, packageName, priceUsd) VALUES (2, 8, ExecutiveLounge, 8000);
INSERT INTO team_hospitality_packages (packageId, teamId, packageName, priceUsd) VALUES (3, 12, StandardAccess, 3000);


-- Performance metrics for vendor contracts
CREATE TABLE vendor_contract_performance
(
    performanceId        INTEGER PRIMARY KEY AUTOINCREMENT,
    vendorId             INTEGER NOT NULL,
    contractId           INTEGER NOT NULL,
    startDate            TEXT,
    endDate              TEXT,
    deliveryOnTimePct    REAL,
    qualityScore         REAL,
    complianceScore      REAL,
    incidentsReported    INTEGER,
    totalSpendUsd        REAL,
    paymentTermDays      INTEGER,
    serviceLevelAgreement TEXT,
    escalationContacts   TEXT,
    performanceNotes     TEXT,
    auditDate            TEXT,
    auditorName          TEXT,
    correctiveActions    TEXT,
    riskLevel            TEXT,
    renewalProbability   REAL,
    satisfactionScore    REAL,
    createdAt            TEXT,
    updatedAt            TEXT,
    isActive             BOOLEAN,
    contractType         TEXT,
    primaryContactEmail  TEXT,
    secondaryContactPhone TEXT
);
INSERT INTO vendor_contract_performance (performanceId, vendorId, contractId, deliveryOnTimePct, qualityScore) VALUES (1, 101, 5001, 96.5, 89.2);
INSERT INTO vendor_contract_performance (performanceId, vendorId, contractId, deliveryOnTimePct, qualityScore) VALUES (2, 102, 5002, 88.0, 92.7);
INSERT INTO vendor_contract_performance (performanceId, vendorId, contractId, deliveryOnTimePct, qualityScore) VALUES (3, 103, 5003, 99.1, 95.4);


-- Green initiatives implemented at circuits
CREATE TABLE circuit_green_initiatives
(
    initiativeId          INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId            INTEGER NOT NULL,
    initiativeName       TEXT,
    startYear            INTEGER,
    endYear              INTEGER,
    carbonReductionTon   REAL,
    waterSavingsLiters   REAL,
    renewableEnergyPct   REAL,
    wasteRecycledTon     REAL,
    certificationBody    TEXT,
    certificationLevel   TEXT,
    budgetUsd            REAL,
    sponsorPartner       TEXT,
    description          TEXT,
    status               TEXT,
    createdAt            TEXT,
    updatedAt            TEXT,
    isActive             BOOLEAN,
    reportingFrequency   TEXT,
    impactAssessmentScore REAL,
    stakeholderFeedback  TEXT,
    responsibleDept      TEXT,
    targetYear           INTEGER,
    notes                TEXT,
    verificationDate     TEXT,
    auditedBy            TEXT
);
INSERT INTO circuit_green_initiatives (initiativeId, circuitId, initiativeName, startYear, carbonReductionTon) VALUES (1, 3, SolarPanelInstallation, 2018, 1200);
INSERT INTO circuit_green_initiatives (initiativeId, circuitId, initiativeName, startYear, carbonReductionTon) VALUES (2, 7, RainwaterHarvesting, 2020, 500);
INSERT INTO circuit_green_initiatives (initiativeId, circuitId, initiativeName, startYear, carbonReductionTon) VALUES (3, 12, ZeroWasteProgram, 2019, 800);


-- Social engagement metrics for drivers
CREATE TABLE driver_social_engagement
(
    engagementId          INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId              INTEGER NOT NULL,
    platformName          TEXT,
    followersCount        INTEGER,
    postsPerMonth         INTEGER,
    avgLikesPerPost       REAL,
    avgCommentsPerPost    REAL,
    engagementRatePct     REAL,
    verifiedBadge         BOOLEAN,
    lastUpdated           TEXT,
    campaignParticipation TEXT,
    brandCollaboration    TEXT,
    audienceDemographics  TEXT,
    sentimentScore        REAL,
    viralPostsCount       INTEGER,
    totalReachMillions    REAL,
    videoViewsMillions    REAL,
    storiesViews          INTEGER,
    profileCompletionPct  REAL,
    influencerTier        TEXT,
    createdAt             TEXT,
    updatedAt             TEXT,
    isActive              BOOLEAN,
    primaryContactEmail   TEXT,
    preferredLanguage     TEXT,
    notes                 TEXT,
    analyticsProvider     TEXT
);
INSERT INTO driver_social_engagement (engagementId, driverId, platformName, followersCount, avgLikesPerPost) VALUES (1, 12, Instagram, 250000, 4500);
INSERT INTO driver_social_engagement (engagementId, driverId, platformName, followersCount, avgLikesPerPost) VALUES (2, 23, Twitter, 180000, 3200);
INSERT INTO driver_social_engagement (engagementId, driverId, platformName, followersCount, avgLikesPerPost) VALUES (3, 34, TikTok, 300000, 5100);


-- Metrics tracking sponsor relationships
CREATE TABLE sponsor_relationship_metrics
(
    metricId               INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId              INTEGER NOT NULL,
    contractId             INTEGER NOT NULL,
    activationCount        INTEGER,
    impressionsMillions    REAL,
    engagementPct          REAL,
    leadGenerationCount    INTEGER,
    salesAttributionUsd    REAL,
    renewalLikelihoodPct   REAL,
    brandFitScore          REAL,
    activationStartDate    TEXT,
    activationEndDate      TEXT,
    activationType         TEXT,
    audienceReachMillions  REAL,
    digitalTouchpoints     INTEGER,
    onSiteActivations      INTEGER,
    exclusiveRights        BOOLEAN,
    coBrandingOpportunities INTEGER,
    sponsorFeedbackScore   REAL,
    createdAt              TEXT,
    updatedAt              TEXT,
    isActive               BOOLEAN,
    contractValueUsd       REAL,
    paymentTermsDays       INTEGER,
    regionalFocus          TEXT,
    notes                  TEXT,
    complianceStatus       TEXT,
    performanceReviewDate  TEXT,
    managerContactEmail    TEXT
);
INSERT INTO sponsor_relationship_metrics (metricId, sponsorId, contractId, activationCount, impressionsMillions) VALUES (1, 201, 9001, 12, 45.3);
INSERT INTO sponsor_relationship_metrics (metricId, sponsorId, contractId, activationCount, impressionsMillions) VALUES (2, 202, 9002, 8, 30.7);
INSERT INTO sponsor_relationship_metrics (metricId, sponsorId, contractId, activationCount, impressionsMillions) VALUES (3, 203, 9003, 15, 60.2);


-- Logs of race media production activities
CREATE TABLE race_media_production_logs
(
    logId                 INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId                INTEGER NOT NULL,
    productionTeamId      INTEGER,
    startTime             TEXT,
    endTime               TEXT,
    cameraCount           INTEGER,
    droneCount            INTEGER,
    totalFootageHours     REAL,
    editedHours           REAL,
    version               TEXT,
    broadcastQualityScore REAL,
    audioChannels         INTEGER,
    graphicsPackagesUsed  TEXT,
    colorCorrectionLevel  TEXT,
    streamingPlatform     TEXT,
    latencyMs             REAL,
    dataTransferGb        REAL,
    backupStorageLocation TEXT,
    notes                 TEXT,
    createdAt             TEXT,
    updatedAt             TEXT,
    isFinalized           BOOLEAN,
    complianceChecked     BOOLEAN,
    reviewerName          TEXT,
    approvalDate          TEXT,
    fileChecksum          TEXT,
    distributionChannels  TEXT,
    archivingStatus       TEXT,
    productionBudgetUsd   REAL,
    sponsorTaggingCount   INTEGER
);
INSERT INTO race_media_production_logs (logId, raceId, cameraCount, droneCount, totalFootageHours) VALUES (1, 101, 12, 3, 5.6);
INSERT INTO race_media_production_logs (logId, raceId, cameraCount, droneCount, totalFootageHours) VALUES (2, 102, 10, 2, 4.2);
INSERT INTO race_media_production_logs (logId, raceId, cameraCount, droneCount, totalFootageHours) VALUES (3, 103, 14, 4, 6.1);


-- Features of the fan experience mobile application
CREATE TABLE fan_experience_app_features
(
    featureId             INTEGER PRIMARY KEY AUTOINCREMENT,
    appVersion            TEXT,
    featureName           TEXT,
    enabled               BOOLEAN,
    rolloutDate           TEXT,
    userAdoptionPct       REAL,
    avgSessionTimeSec     REAL,
    crashRatePct          REAL,
    apiCallsPerSession    INTEGER,
    dataUsageMb           REAL,
    platform              TEXT,
    supportedLanguages   TEXT,
    pushNotificationEnabled BOOLEAN,
    inAppPurchaseAvailable BOOLEAN,
    adDisplayCount        INTEGER,
    gamificationLevel    TEXT,
    liveTimingIntegration BOOLEAN,
    ARFeatureEnabled      BOOLEAN,
    socialSharingEnabled  BOOLEAN,
    feedbackCollectedCount INTEGER,
    createdAt             TEXT,
    updatedAt             TEXT,
    isBeta                BOOLEAN,
    developerContactEmail TEXT,
    priorityLevel         TEXT,
    notes                 TEXT,
    analyticsProvider     TEXT,
    complianceStatus      TEXT,
    lastTestedDate        TEXT,
    versionCode           INTEGER
);
INSERT INTO fan_experience_app_features (featureId, appVersion, featureName, enabled) VALUES (1, 1.0, LiveTiming, 1);
INSERT INTO fan_experience_app_features (featureId, appVersion, featureName, enabled) VALUES (2, 1.0, ARCircuitTour, 0);
INSERT INTO fan_experience_app_features (featureId, appVersion, featureName, enabled) VALUES (3, 1.1, SocialFeed, 1);


-- Summary of logistics fuel consumption per event
CREATE TABLE logistics_fuel_consumption_summary
(
    summaryId            INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId              INTEGER NOT NULL,
    totalFuelLiters      REAL,
    dieselLiters         REAL,
    gasolineLiters       REAL,
    electricKwh          REAL,
    averageFuelCostUsd   REAL,
    fuelProviderId       INTEGER,
    consumptionStartDate TEXT,
    consumptionEndDate   TEXT,
    vehicleCount         INTEGER,
    heavyVehicleLiters   REAL,
    lightVehicleLiters   REAL,
    emissionsTonCO2      REAL,
    costPerLiterUsd      REAL,
    fuelQualityScore     REAL,
    supplierRating       REAL,
    contractReference    TEXT,
    verifiedBy           TEXT,
    verificationDate     TEXT,
    notes                TEXT,
    createdAt            TEXT,
    updatedAt            TEXT,
    isApproved           BOOLEAN,
    auditTrailId         INTEGER,
    region               TEXT,
    complianceFlag       BOOLEAN,
    reconciliationStatus TEXT,
    totalDistanceKm      REAL,
    averageConsumptionLper100km REAL
);
INSERT INTO logistics_fuel_consumption_summary (summaryId, eventId, totalFuelLiters, dieselLiters, gasolineLiters) VALUES (1, 101, 12500, 8000, 4500);
INSERT INTO logistics_fuel_consumption_summary (summaryId, eventId, totalFuelLiters, dieselLiters, gasolineLiters) VALUES (2, 102, 13800, 9000, 4800);
INSERT INTO logistics_fuel_consumption_summary (summaryId, eventId, totalFuelLiters, dieselLiters, gasolineLiters) VALUES (3, 103, 11200, 7000, 4200);