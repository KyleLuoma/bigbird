-- Green energy installation sites
CREATE TABLE green_energy_installations (
    installationId INTEGER PRIMARY KEY,
    siteName TEXT,
    capacityMW REAL,
    installationDate DATE,
    provider TEXT,
    contractStart DATE,
    contractEnd DATE,
    maintenanceFreqDays INTEGER,
    avgOutputMW REAL,
    status TEXT,
    region TEXT,
    latitude REAL,
    longitude REAL,
    gridConnectionPoint TEXT,
    renewableType TEXT,
    financingModel TEXT,
    expectedLifetimeYears INTEGER,
    currentOutputMW REAL,
    emissionsOffsetTon INTEGER,
    notes TEXT
);

INSERT INTO green_energy_installations (installationId, siteName, capacityMW, installationDate, provider, contractStart, contractEnd, maintenanceFreqDays, avgOutputMW, status, region, latitude, longitude, gridConnectionPoint, renewableType, financingModel, expectedLifetimeYears, currentOutputMW, emissionsOffsetTon, notes) VALUES (1, SunValley, 50.5, '2022-05-01', SolarCo, '2022-01-01', '2032-01-01', 180, 48.2, Operational, West, 34.05, -118.25, GCP001, Solar, Lease, 25, 48.0, 1200, InitialPhase);
INSERT INTO green_energy_installations (installationId, siteName, capacityMW, installationDate, provider, contractStart, contractEnd, maintenanceFreqDays, avgOutputMW, status, region, latitude, longitude, gridConnectionPoint, renewableType, financingModel, expectedLifetimeYears, currentOutputMW, emissionsOffsetTon, notes) VALUES (2, WindHarbor, 120.0, '2021-09-15', WindWorks, '2021-06-01', '2036-06-01', 365, 115.6, Operational, East, 40.71, -74.00, GCP002, Wind, PowerPurchase, 30, 116.0, 3500, PeakProduction);
INSERT INTO green_energy_installations (installationId, siteName, capacityMW, installationDate, provider, contractStart, contractEnd, maintenanceFreqDays, avgOutputMW, status, region, latitude, longitude, gridConnectionPoint, renewableType, financingModel, expectedLifetimeYears, currentOutputMW, emissionsOffsetTon, notes) VALUES (3, HydroCrest, 200.0, '2020-03-20', HydroFlow, '2020-01-01', '2040-01-01', 730, 190.0, Operational, Central, 41.88, -87.62, GCP003, Hydro, GovernmentGrant, 20, 189.5, 8000, FullCapacity);


-- Audience engagement surveys
CREATE TABLE audience_engagement_surveys (
    surveyId INTEGER PRIMARY KEY,
    eventName TEXT,
    surveyDate DATE,
    totalResponses INTEGER,
    netPromoterScore INTEGER,
    satisfactionScore INTEGER,
    preferredViewingMode TEXT,
    ageGroup18_25 INTEGER,
    ageGroup26_35 INTEGER,
    ageGroup36_45 INTEGER,
    ageGroup46_60 INTEGER,
    ageGroup60plus INTEGER,
    genderMale INTEGER,
    genderFemale INTEGER,
    genderOther INTEGER,
    favoriteDriver TEXT,
    favoriteTeam TEXT,
    feedbackComments TEXT,
    regionNorthAmerica INTEGER,
    regionEurope INTEGER,
    regionAsia INTEGER,
    regionOther INTEGER,
    surveyMethod TEXT
);

INSERT INTO audience_engagement_surveys (surveyId, eventName, surveyDate, totalResponses, netPromoterScore, satisfactionScore, preferredViewingMode, ageGroup18_25, ageGroup26_35, ageGroup36_45, ageGroup46_60, ageGroup60plus, genderMale, genderFemale, genderOther, favoriteDriver, favoriteTeam, feedbackComments, regionNorthAmerica, regionEurope, regionAsia, regionOther, surveyMethod) VALUES (1, GrandPrix2023, '2023-07-12', 4520, 68, 82, LiveStream, 1200, 1500, 800, 600, 420, 2300, 2100, 120, Verstappen, RedBull, GreatExperience, 2100, 1300, 800, 320, Online);
INSERT INTO audience_engagement_surveys (surveyId, eventName, surveyDate, totalResponses, netPromoterScore, satisfactionScore, preferredViewingMode, ageGroup18_25, ageGroup26_35, ageGroup36_45, ageGroup46_60, ageGroup60plus, genderMale, genderFemale, genderOther, favoriteDriver, favoriteTeam, feedbackComments, regionNorthAmerica, regionEurope, regionAsia, regionOther, surveyMethod) VALUES (2, GrandPrix2022, '2022-06-15', 3890, 72, 85, TVBroadcast, 1100, 1400, 700, 500, 190, 2100, 1700, 90, Hamilton, Mercedes, ExcellentCoverage, 1900, 1200, 700, 90, InPerson);
INSERT INTO audience_engagement_surveys (surveyId, eventName, surveyDate, totalResponses, netPromoterScore, satisfactionScore, preferredViewingMode, ageGroup18_25, ageGroup26_35, ageGroup36_45, ageGroup46_60, ageGroup60plus, genderMale, genderFemale, genderOther, favoriteDriver, favoriteTeam, feedbackComments, regionNorthAmerica, regionEurope, regionAsian, regionOther, surveyMethod) VALUES (3, GrandPrix2021, '2021-05-20', 4100, 65, 78, MobileApp, 1150, 1450, 750, 550, 200, 2200, 1750, 150, Leclerc, Ferrari, GoodButImprove, 2000, 1250, 750, 100, Email);


-- Race day logistics summary (non‑referential)
CREATE TABLE race_day_logistics_summary (
    summaryId INTEGER PRIMARY KEY,
    eventYear INTEGER,
    eventRound INTEGER,
    totalStaff INTEGER,
    totalVolunteers INTEGER,
    totalVehicles INTEGER,
    totalMaterials INTEGER,
    securityIncidents INTEGER,
    medicalIncidents INTEGER,
    weatherCondition TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    windSpeedKph REAL,
    trackAccessTime TEXT,
    pitLaneReadyTime TEXT,
    broadcastStartTime TEXT,
    cateringMealsServed INTEGER,
    merchandiseUnitsSold INTEGER,
    wasteTonnes REAL,
    carbonOffsetTonnes REAL,
    notes TEXT,
    preparedBy TEXT
);

INSERT INTO race_day_logistics_summary (summaryId, eventYear, eventRound, totalStaff, totalVolunteers, totalVehicles, totalMaterials, securityIncidents, medicalIncidents, weatherCondition, temperatureC, humidityPercent, windSpeedKph, trackAccessTime, pitLaneReadyTime, broadcastStartTime, cateringMealsServed, merchandiseUnitsSold, wasteTonnes, carbonOffsetTonnes, notes, preparedBy) VALUES (1, 2023, 5, 350, 800, 120, 2500, 2, 1, Sunny, 27.5, 45.0, 12.3, 06:30, 07:15, 08:00, 4200, 15000, 3.2, 5.0, SmoothOperations, LogisticsLead);
INSERT INTO race_day_logistics_summary (summaryId, eventYear, eventRound, totalStaff, totalVolunteers, totalVehicles, totalMaterials, securityIncidents, medicalIncidents, weatherCondition, temperatureC, humidityPercent, windSpeedKph, trackAccessTime, pitLaneReadyTime, broadcastStartTime, cateringMealsServed, merchandiseUnitsSold, wasteTonnes, carbonOffsetTonnes, notes, preparedBy) VALUES (2, 2022, 12, 400, 950, 140, 2700, 0, 0, Cloudy, 22.0, 55.0, 8.5, 06:15, 07:00, 07:45, 5000, 18000, 2.9, 6.2, NoIncidents, OpsManager);
INSERT INTO race_day_logistics_summary (summaryId, eventYear, eventRound, totalStaff, totalVolunteers, totalVehicles, totalMaterials, securityIncidents, medicalIncidents, weatherCondition, temperatureC, humidityPercent, windSpeedKph, trackAccessTime, pitLaneReadyTime, broadcastStartTime, cateringMealsServed, merchandiseUnitsSold, wasteTonnes, carbonOffsetTonnes, notes, preparedBy) VALUES (3, 2021, 3, 330, 770, 110, 2400, 1, 2, Rain, 18.3, 78.0, 15.0, 07:00, 07:45, 08:30, 3800, 13000, 4.1, 4.5, MinorDelays, SiteCoordinator);


-- Augmented reality experiences
CREATE TABLE augmented_reality_experiences (
    arExpId INTEGER PRIMARY KEY,
    location TEXT,
    title TEXT,
    launchDate DATE,
    developer TEXT,
    platform TEXT,
    avgSessionMinutes REAL,
    maxConcurrentUsers INTEGER,
    totalUsers INTEGER,
    engagementRate REAL,
    adRevenueUSD REAL,
    sponsor TEXT,
    description TEXT,
    mediaUrl TEXT,
    version TEXT,
    status TEXT,
    region TEXT,
    minDeviceSpec TEXT,
    userFeedbackScore INTEGER,
    notes TEXT,
    maintenanceContact TEXT
);

INSERT INTO augmented_reality_experiences (arExpId, location, title, launchDate, developer, platform, avgSessionMinutes, maxConcurrentUsers, totalUsers, engagementRate, adRevenueUSD, sponsor, description, mediaUrl, version, status, region, minDeviceSpec, userFeedbackScore, notes, maintenanceContact) VALUES (1, PitLane, TurnByTurnAR, '2023-04-01', ARTech, Mobile, 5.6, 2000, 50000, 0.78, 12000.5, EnergyCo, InteractiveLapInfo, https://example.com/ar1, 1.0, Active, Europe, Android10, 85, HighEngagement, SupportTeam);
INSERT INTO augmented_reality_experiences (arExpId, location, title, launchDate, developer, platform, avgSessionMinutes, maxConcurrentUsers, totalUsers, engagementRate, adRevenueUSD, sponsor, description, mediaUrl, version, status, region, minDeviceSpec, userFeedbackScore, notes, maintenanceContact) VALUES (2, Grandstand, FanZoneAR, '2022-09-15', VisionAR, Tablet, 7.2, 1500, 30000, 0.65, 9500.0, AutoBrand, VirtualSponsorBooth, https://example.com/ar2, 2.1, Active, NorthAmerica, iOS13, 78, PositiveFeedback, ARSupport);
INSERT INTO augmented_reality_experiences (arExpId, location, title, launchDate, developer, platform, avgSessionMinutes, maxConcurrentUsers, totalUsers, engagementRate, adRevenueUSD, sponsor, description, mediaUrl, version, status, region, minDeviceSpec, userFeedbackScore, notes, maintenanceContact) VALUES (3, HospitalityLounge, VRMeetup, '2021-11-20', ImmersiveInc, VRHeadset, 12.0, 800, 12000, 0.55, 7200.3, TechGiant, VRNetworking, https://example.com/ar3, 3.0, Retired, Asia, VRv2, 82, ArchivedData, LegacyTeam);


-- Virtual fan interaction statistics
CREATE TABLE virtual_fan_interaction_stats (
    vfiId INTEGER PRIMARY KEY,
    sessionDate DATE,
    totalParticipants INTEGER,
    averageWatchTimeMinutes REAL,
    peakConcurrent INTEGER,
    chatMessages INTEGER,
    emojisSent INTEGER,
    pollResponses INTEGER,
    giveawayEntries INTEGER,
    sponsorEngagements INTEGER,
    revenueUSD REAL,
    platform TEXT,
    region TEXT,
    deviceType TEXT,
    networkLatencyMs INTEGER,
    videoQuality TEXT,
    feedbackScore INTEGER,
    notes TEXT,
    createdBy TEXT,
    lastUpdated DATE
);

INSERT INTO virtual_fan_interaction_stats (vfiId, sessionDate, totalParticipants, averageWatchTimeMinutes, peakConcurrent, chatMessages, emojisSent, pollResponses, giveawayEntries, sponsorEngagements, revenueUSD, platform, region, deviceType, networkLatencyMs, videoQuality, feedbackScore, notes, createdBy, lastUpdated) VALUES (1, '2023-08-05', 25000, 18.4, 8000, 45000, 12000, 3400, 1500, 2200, 34000.75, Web, Europe, Desktop, 85, HD, 88, StrongEngagement, AnalystA, '2023-08-06');
INSERT INTO virtual_fan_interaction_stats (vfiId, sessionDate, totalParticipants, averageWatchTimeMinutes, peakConcurrent, chatMessages, emojisSent, pollResponses, giveawayEntries, sponsorEngagements, revenueUSD, platform, region, deviceType, networkLatencyMs, videoQuality, feedbackScore, notes, createdBy, lastUpdated) VALUES (2, '2022-07-22', 21000, 15.2, 6500, 38000, 9500, 2900, 1300, 1900, 28500.10, MobileApp, NorthAmerica, Smartphone, 70, FullHD, 81, GoodRetention, AnalystB, '2022-07-23');
INSERT INTO virtual_fan_interaction_stats (vfiId, sessionDate, totalParticipants, averageWatchTimeMinutes, peakConcurrent, chatMessages, emojisSent, pollResponses, giveawayEntries, sponsorEngagements, revenueUSD, platform, region, deviceType, networkLatencyMs, videoQuality, feedbackScore, notes, createdBy, lastUpdated) VALUES (3, '2021-09-10', 18000, 12.7, 5000, 30000, 8000, 2600, 1100, 1700, 25000.00, TVBroadcast, Asia, SmartTV, 95, 4K, 79, ModerateGrowth, AnalystC, '2021-09-11');


-- Sponsor benefit usage tracking
CREATE TABLE sponsor_benefit_usage (
    sbUsageId INTEGER PRIMARY KEY,
    sponsorId INTEGER,
    eventYear INTEGER,
    benefitType TEXT,
    usageCount INTEGER,
    totalValueUSD REAL,
    activationDate DATE,
    expirationDate DATE,
    notes TEXT,
    createdBy TEXT,
    verified BOOLEAN,
    region TEXT,
    channel TEXT,
    audienceReach INTEGER,
    impressions INTEGER,
    clicks INTEGER,
    conversionRate REAL,
    costPerBenefitUSD REAL,
    status TEXT,
    complianceFlag BOOLEAN,
    auditDate DATE
);

INSERT INTO sponsor_benefit_usage (sbUsageId, sponsorId, eventYear, benefitType, usageCount, totalValueUSD, activationDate, expirationDate, notes, createdBy, verified, region, channel, audienceReach, impressions, clicks, conversionRate, costPerBenefitUSD, status, complianceFlag, auditDate) VALUES (1, 101, 2023, HospitalitySuite, 150, 75000.0, '2023-03-01', '2023-09-30', HighUtilisation, ManagerX, 1, Europe, Onsite, 500000, 1200000, 45000, 0.0375, 500.0, Active, 1, '2023-09-01');
INSERT INTO sponsor_benefit_usage (sbUsageId, sponsorId, eventYear, benefitType, usageCount, totalValueUSD, activationDate, expirationDate, notes, createdBy, verified, region, channel, audienceReach, impressions, clicks, conversionRate, costPerBenefitUSD, status, complianceFlag, auditDate) VALUES (2, 102, 2022, BrandActivation, 200, 120000.0, '2022-04-15', '2022-10-15', StrongEngagement, ManagerY, 1, NorthAmerica, Digital, 800000, 1800000, 72000, 0.04, 600.0, Completed, 1, '2022-10-20');
INSERT INTO sponsor_benefit_usage (sbUsageId, sponsorId, eventYear, benefitType, usageCount, totalValueUSD, activationDate, expirationDate, notes, createdBy, verified, region, channel, audienceReach, impressions, clicks, conversionRate, costPerBenefitUSD, status, complianceFlag, auditDate) VALUES (3, 103, 2021, MediaSpotlight, 95, 45000.0, '2021-05-10', '2021-11-10', ModerateUsage, ManagerZ, 1, Asia, Broadcast, 600000, 1500000, 55000, 0.0367, 474.0, Active, 1, '2021-11-15');


-- Venue accessibility assessments
CREATE TABLE venue_accessibility_assessments (
    vaAssessmentId INTEGER PRIMARY KEY,
    venueId INTEGER,
    assessmentDate DATE,
    wheelchairAccess BOOLEAN,
    brailleSigns BOOLEAN,
    audioGuides BOOLEAN,
    staffTrainingHours INTEGER,
    complianceScore REAL,
    violationsCount INTEGER,
    correctiveActions TEXT,
    nextReviewDate DATE,
    assessorName TEXT,
    notes TEXT,
    region TEXT,
    accessibilityFeaturesCount INTEGER,
    rampSlope REAL,
    elevatorCount INTEGER,
    seatingAccessible BOOLEAN,
    lightingLevelLux REAL,
    emergencyEvacPlan BOOLEAN,
    overallStatus TEXT
);

INSERT INTO venue_accessibility_assessments (vaAssessmentId, venueId, assessmentDate, wheelchairAccess, brailleSigns, audioGuides, staffTrainingHours, complianceScore, violationsCount, correctiveActions, nextReviewDate, assessorName, notes, region, accessibilityFeaturesCount, rampSlope, elevatorCount, seatingAccessible, lightingLevelLux, emergencyEvacPlan, overallStatus) VALUES (1, 201, '2023-02-15', 1, 1, 1, 40, 94.5, 0, NoneRequired, '2024-02-15', JohnDoe, FullCompliance, Europe, 12, 5.0, 4, 1, 350.0, 1, Approved);
INSERT INTO venue_accessibility_assessments (vaAssessmentId, venueId, assessmentDate, wheelchairAccess, brailleSigns, audioGuides, staffTrainingHours, complianceScore, violationsCount, correctiveActions, nextReviewDate, assessorName, notes, region, accessibilityFeaturesCount, rampSlope, elevatorCount, seatingAccessible, lightingLevelLux, emergencyEvacPlan, overallStatus) VALUES (2, 202, '2022-11-20', 1, 0, 1, 35, 88.0, 2, AddedBraille, '2023-11-20', JaneSmith, MinorIssues, NorthAmerica, 10, 6.2, 3, 0, 300.0, 1, Conditional);
INSERT INTO venue_accessibility_assessments (vaAssessmentId, venueId, assessmentDate, wheelchairAccess, brailleSigns, audioGuides, staffTrainingHours, complianceScore, violationsCount, correctiveActions, nextReviewDate, assessorName, notes, region, accessibilityFeaturesCount, rampSlope, elevatorCount, seatingAccessible, lightingLevelLux, emergencyEvacPlan, overallStatus) VALUES (3, 203, '2021-07-05', 0, 0, 0, 20, 70.0, 5, ComprehensiveUpgrade, '2022-07-05', AlexLee, NeedsImprovement, Asia, 6, 8.5, 2, 0, 250.0, 0, NotApproved);


-- Team innovation hub projects
CREATE TABLE team_innovation_hub_projects (
    projId INTEGER PRIMARY KEY,
    teamId INTEGER,
    projectName TEXT,
    startDate DATE,
    endDate DATE,
    status TEXT,
    budgetUSD REAL,
    leadEngineer TEXT,
    participants INTEGER,
    milestonesAchieved INTEGER,
    patentsFiled INTEGER,
    patentsGranted INTEGER,
    techDomain TEXT,
    collaborators TEXT,
    riskLevel TEXT,
    expectedImpact TEXT,
    actualImpact TEXT,
    fundingSource TEXT,
    notes TEXT,
    lastUpdate DATE,
    projectCode TEXT
);

INSERT INTO team_innovation_hub_projects (projId, teamId, projectName, startDate, endDate, status, budgetUSD, leadEngineer, participants, milestonesAchieved, patentsFiled, patentsGranted, techDomain, collaborators, riskLevel, expectedImpact, actualImpact, fundingSource, notes, lastUpdate, projectCode) VALUES (1, 301, AeroBoost, '2022-01-10', '2023-12-31', Completed, 2000000.0, EmilyClark, 15, 5, 3, 2, Aerodynamics, PartnerA|PartnerB, Medium, PerformanceGain, Achieved5Percent, Corporate, SuccessfulDelivery, '2024-01-05', AB2022);
INSERT INTO team_innovation_hub_projects (projId, teamId, projectName, startDate, endDate, status, budgetUSD, leadEngineer, participants, milestonesAchieved, patentsFiled, patentsGranted, techDomain, collaborators, riskLevel, expectedImpact, actualImpact, fundingSource, notes, lastUpdate, projectCode) VALUES (2, 302, PowerUnitRevamp, '2021-06-01', '2022-11-30', Completed, 3500000.0, MichaelBrown, 20, 4, 5, 3, PowerUnit, SupplierX|SupplierY, High, EfficiencyIncrease, Achieved3Percent, JointVenture, OnTime, '2022-12-01', PUR2021);
INSERT INTO team_innovation_hub_projects (projId, teamId, projectName, startDate, endDate, status, budgetUSD, leadEngineer, participants, milestonesAchieved, patentsFiled, patentsGranted, techDomain, collaborators, riskLevel, expectedImpact, actualImpact, fundingSource, notes, lastUpdate, projectCode) VALUES (3, 303, DataAnalyticsPlatform, '2023-03-15', NULL, Ongoing, 1500000.0, SarahMiller, 12, 2, 1, 0, DataScience, UniversityZ|TechHub, Low, InsightGeneration, InProgress, Grant, InitialPhase, '2023-09-20', DAP2023);


-- Environmental noise analysis
CREATE TABLE environmental_noise_analysis (
    enaId INTEGER PRIMARY KEY,
    location TEXT,
    measurementDate DATE,
    decibelLevel REAL,
    frequencyHz REAL,
    durationSeconds INTEGER,
    sourceType TEXT,
    weatherCondition TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    windSpeedKph REAL,
    noiseCategory TEXT,
    mitigationPlan TEXT,
    complianceStatus TEXT,
    measuredBy TEXT,
    notes TEXT,
    latitude REAL,
    longitude REAL,
    region TEXT,
    peakDecibel REAL
);

INSERT INTO environmental_noise_analysis (enaId, location, measurementDate, decibelLevel, frequencyHz, durationSeconds, sourceType, weatherCondition, temperatureC, humidityPercent, windSpeedKph, noiseCategory, mitigationPlan, complianceStatus, measuredBy, notes, latitude, longitude, region, peakDecibel) VALUES (1, GrandstandEast, '2023-05-10', 78.5, 500.0, 3600, Engines, Sunny, 26.0, 40.0, 10.0, Moderate, AcousticBarriers, Compliant, TechTeamA, NormalLevels, 34.05, -118.25, West, 85.0);
INSERT INTO environmental_noise_analysis (enaId, location, measurementDate, decibelLevel, frequencyHz, durationSeconds, sourceType, weatherCondition, temperatureC, humidityPercent, windSpeedKph, noiseCategory, mitigationPlan, complianceStatus, measuredBy, notes, latitude, longitude, region, peakDecibel) VALUES (2, PitLaneNorth, '2022-09-22', 82.0, 520.0, 5400, Crowd, Cloudy, 22.5, 55.0, 8.0, High, ScheduleAdjustments, NonCompliant, TechTeamB, ExceededLimits, 40.71, -74.00, East, 90.0);
INSERT INTO environmental_noise_analysis (enaId, location, measurementDate, decibelLevel, frequencyHz, durationSeconds, sourceType, weatherCondition, temperatureC, humidityPercent, windSpeedKph, noiseCategory, mitigationPlan, complianceStatus, measuredBy, notes, latitude, longitude, region, peakDecibel) VALUES (3, MediaCenter, '2021-11-05', 70.2, 480.0, 3000, Broadcast, Rain, 19.0, 70.0, 12.5, Low, NoiseCubes, Compliant, TechTeamC, WithinLimits, 41.88, -87.62, Central, 78.0);


-- Digital asset curation
CREATE TABLE digital_asset_curation (
    dacId INTEGER PRIMARY KEY,
    assetId INTEGER,
    assetType TEXT,
    title TEXT,
    creator TEXT,
    creationDate DATE,
    tags TEXT,
    category TEXT,
    language TEXT,
    durationSeconds INTEGER,
    fileSizeMB REAL,
    resolution TEXT,
    aspectRatio TEXT,
    licenseType TEXT,
    usageRights TEXT,
    geographicRestrictions TEXT,
    audienceRating TEXT,
    status TEXT,
    lastModified DATE,
    curatorName TEXT
);

INSERT INTO digital_asset_curation (dacId, assetId, assetType, title, creator, creationDate, tags, category, language, durationSeconds, fileSizeMB, resolution, aspectRatio, licenseType, usageRights, geographicRestrictions, audienceRating, status, lastModified, curatorName) VALUES (1, 1001, Photo, PitLaneAction, PhotoTeam, '2023-04-12', FastCars|Action, Racing, English, NULL, 3.2, 1920x1080, '16:9', RoyaltyFree, InternalUse, None, General, Active, '2023-04-13', CuratorA);
INSERT INTO digital_asset_curation (dacId, assetId, assetType, title, creator, creationDate, tags, category, language, durationSeconds, fileSizeMB, resolution, aspectRatio, licenseType, usageRights, geographicRestrictions, audienceRating, status, lastModified, curatorName) VALUES (2, 1002, Video, GrandPrixHighlights, VideoTeam, '2022-09-20', Highlights|Overtake, Racing, English, 1800, 1500.5, 3840x2160, '16:9', Standard, Broadcast, EuropeOnly, PG, Published, '2022-09-21', CuratorB);
INSERT INTO digital_asset_curation (dacId, assetId, assetType, title, creator, creationDate, tags, category, language, durationSeconds, fileSizeMB, resolution, aspectRatio, licenseType, usageRights, geographicRestrictions, audienceRating, status, lastModified, curatorName) VALUES (3, 1003, Audio, RaceCommentary, AudioTeam, '2021-05-05', Commentary|Live, Racing, English, 5400, 250.0, 1920x1080, '16:9', Broadcast, Public, Worldwide, G, Archived, '2021-05-06', CuratorC);