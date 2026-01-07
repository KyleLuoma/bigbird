-- Sponsor Influence Analysis
CREATE TABLE sponsor_influence_analysis (
    analysisId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    raceYear INTEGER,
    circuitId INTEGER,
    influenceScore REAL,
    socialMediaMentions INTEGER,
    tvAdSpend REAL,
    brandVisibilityIndex REAL,
    fanEngagementScore REAL,
    productPlacementCount INTEGER,
    logoImpressions INTEGER,
    mediaCoverageHours REAL,
    audienceReach INTEGER,
    demographicTargetScore REAL,
    campaignStartDate DATE,
    campaignEndDate DATE,
    regionalFocus TEXT,
    marketingChannel TEXT,
    budgetAllocated REAL,
    comments TEXT,
    createdAt DATE
);

INSERT INTO sponsor_influence_analysis (sponsorId, raceYear, circuitId, influenceScore, socialMediaMentions, tvAdSpend, brandVisibilityIndex, fanEngagementScore, productPlacementCount, logoImpressions, mediaCoverageHours, audienceReach, demographicTargetScore, campaignStartDate, campaignEndDate, regionalFocus, marketingChannel, budgetAllocated, comments, createdAt)
VALUES (101, 2023, 5, 87.5, 12000, 250000.00, 92.3, 78.4, 15, 500000, 48.5, 2000000, 85.0, '2023-03-01', '2023-03-31', 'Europe', 'Digital', 300000.00, 'High impact campaign', '2023-04-01');

INSERT INTO sponsor_influence_analysis (sponsorId, raceYear, circuitId, influenceScore, socialMediaMentions, tvAdSpend, brandVisibilityIndex, fanEngagementScore, productPlacementCount, logoImpressions, mediaCoverageHours, audienceReach, demographicTargetScore, campaignStartDate, campaignEndDate, regionalFocus, marketingChannel, budgetAllocated, comments, createdAt)
VALUES (102, 2024, 8, 73.2, 8500, 180000.00, 78.9, 65.1, 10, 320000, 36.2, 1500000, 70.5, '2024-05-15', '2024-06-15', 'Asia', 'Television', 200000.00, 'Mid tier campaign', '2024-07-01');

INSERT INTO sponsor_influence_analysis (sponsorId, raceYear, circuitId, influenceScore, socialMediaMentions, tvAdSpend, brandVisibilityIndex, fanEngagementScore, productPlacementCount, logoImpressions, mediaCoverageHours, audienceReach, demographicTargetScore, campaignStartDate, campaignEndDate, regionalFocus, marketingChannel, budgetAllocated, comments, createdAt)
VALUES (103, 2025, 12, 65.0, 4000, 90000.00, 62.5, 50.0, 5, 150000, 24.0, 900000, 55.0, '2025-09-01', '2025-09-30', 'NorthAmerica', 'Print', 120000.00, 'Local market focus', '2025-10-01');

-- Driver Training Modules
CREATE TABLE driver_training_modules (
    moduleId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    moduleName TEXT,
    description TEXT,
    durationMinutes INTEGER,
    difficultyLevel TEXT,
    completionStatus TEXT,
    score REAL,
    trainerId INTEGER,
    trainingCenterId INTEGER,
    startDate DATE,
    endDate DATE,
    certificationAwarded TEXT,
    videoLink TEXT,
    slidesLink TEXT,
    assessmentType TEXT,
    maxScore REAL,
    passingScore REAL,
    feedback TEXT,
    createdAt DATE
);

INSERT INTO driver_training_modules (driverId, moduleName, description, durationMinutes, difficultyLevel, completionStatus, score, trainerId, trainingCenterId, startDate, endDate, certificationAwarded, videoLink, slidesLink, assessmentType, maxScore, passingScore, feedback, createdAt)
VALUES (201, 'Advanced Cornering', 'Techniques for high speed cornering', 180, 'Advanced', 'Completed', 92.5, 301, 401, '2023-02-10', '2023-02-12', 'Cornering Pro', 'http://videos.example.com/advcorner', 'http://slides.example.com/advcorner', 'Practical', 100.0, 80.0, 'Excellent control', '2023-02-13');

INSERT INTO driver_training_modules (driverId, moduleName, description, durationMinutes, difficultyLevel, completionStatus, score, trainerId, trainingCenterId, startDate, endDate, certificationAwarded, videoLink, slidesLink, assessmentType, maxScore, passingScore, feedback, createdAt)
VALUES (202, 'Data Telemetry Analysis', 'Interpreting car telemetry data', 120, 'Intermediate', 'Completed', 85.0, 302, 402, '2023-05-05', '2023-05-06', 'Telemetry Analyst', 'http://videos.example.com/telemetry', 'http://slides.example.com/telemetry', 'Exam', 100.0, 70.0, 'Good grasp of concepts', '2023-05-07');

INSERT INTO driver_training_modules (driverId, moduleName, description, durationMinutes, difficultyLevel, completionStatus, score, trainerId, trainingCenterId, startDate, endDate, certificationAwarded, videoLink, slidesLink, assessmentType, maxScore, passingScore, feedback, createdAt)
VALUES (203, 'Physical Conditioning', 'Fitness program for endurance', 90, 'Beginner', 'InProgress', NULL, 303, 403, '2023-08-01', '2023-08-31', NULL, 'http://videos.example.com/fitness', 'http://slides.example.com/fitness', 'Attendance', 0.0, 0.0, NULL, '2023-09-01');

-- Circuit Noise Modelling
CREATE TABLE circuit_noise_modelling (
    modelId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    modelVersion TEXT,
    createdDate DATE,
    noiseBaseline REAL,
    predictedPeak REAL,
    predictedAvg REAL,
    weatherCondition TEXT,
    trafficVolume INTEGER,
    constructionImpact INTEGER,
    surroundingArea TEXT,
    measurementMethod TEXT,
    sensorCount INTEGER,
    calibrationDate DATE,
    modelAccuracy REAL,
    notes TEXT,
    analystId INTEGER,
    validationStatus TEXT,
    lastUpdated DATE,
    dataSource TEXT,
    confidenceInterval REAL
);

INSERT INTO circuit_noise_modelling (circuitId, modelVersion, createdDate, noiseBaseline, predictedPeak, predictedAvg, weatherCondition, trafficVolume, constructionImpact, surroundingArea, measurementMethod, sensorCount, calibrationDate, modelAccuracy, notes, analystId, validationStatus, lastUpdated, dataSource, confidenceInterval)
VALUES (5, 'v1.0', '2023-01-15', 68.5, 82.0, 70.2, 'Clear', 1200, 0, 'Urban', 'Acoustic', 15, '2022-12-20', 0.92, 'Initial model', 501, 'Pending', '2023-02-01', 'Internal', 0.05);

INSERT INTO circuit_noise_modelling (circuitId, modelVersion, createdDate, noiseBaseline, predictedPeak, predictedAvg, weatherCondition, trafficVolume, constructionImpact, surroundingArea, measurementMethod, sensorCount, calibrationDate, modelAccuracy, notes, analystId, validationStatus, lastUpdated, dataSource, confidenceInterval)
VALUES (8, 'v1.2', '2023-03-10', 70.0, 85.5, 73.1, 'Rain', 950, 1, 'Suburban', 'MicrophoneArray', 20, '2023-02-28', 0.88, 'Adjusted for construction', 502, 'Approved', '2023-03-20', 'External', 0.07);

INSERT INTO circuit_noise_modelling (circuitId, modelVersion, createdDate, noiseBaseline, predictedPeak, predictedAvg, weatherCondition, trafficVolume, constructionImpact, surroundingArea, measurementMethod, sensorCount, calibrationDate, modelAccuracy, notes, analystId, validationStatus, lastUpdated, dataSource, confidenceInterval)
VALUES (12, 'v2.0', '2023-06-05', 65.3, 78.0, 68.9, 'Windy', 1100, 0, 'Rural', 'Satellite', 12, '2023-05-30', 0.95, 'High accuracy model', 503, 'Approved', '2023-06-15', 'Internal', 0.03);

-- Race Fan Interaction Logs
CREATE TABLE race_fan_interaction_logs (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    fanId INTEGER,
    interactionType TEXT,
    interactionDetail TEXT,
    timestamp DATETIME,
    platform TEXT,
    location TEXT,
    rewardEarned TEXT,
    pointsAwarded INTEGER,
    campaignId INTEGER,
    responseTimeSec INTEGER,
    satisfactionScore REAL,
    deviceType TEXT,
    ipAddress TEXT,
    sessionId TEXT,
    appVersion TEXT,
    marketingChannel TEXT,
    feedback TEXT,
    createdAt DATE,
    updatedAt DATE
);

INSERT INTO race_fan_interaction_logs (raceId, fanId, interactionType, interactionDetail, timestamp, platform, location, rewardEarned, pointsAwarded, campaignId, responseTimeSec, satisfactionScore, deviceType, ipAddress, sessionId, appVersion, marketingChannel, feedback, createdAt, updatedAt)
VALUES (101, 1001, 'Quiz', 'Predict podium', '2023-04-02 14:23:00', 'MobileApp', 'Online', 'Hat', 50, 2001, 12, 4.5, 'iPhone', '192.168.1.10', 'sessA1', '1.3.0', 'Social', 'Fun and engaging', '2023-04-02', '2023-04-02');

INSERT INTO race_fan_interaction_logs (raceId, fanId, interactionType, interactionDetail, timestamp, platform, location, rewardEarned, pointsAwarded, campaignId, responseTimeSec, satisfactionScore, deviceType, ipAddress, sessionId, appVersion, marketingChannel, feedback, createdAt, updatedAt)
VALUES (102, 1002, 'Poll', 'Favorite driver', '2023-05-15 09:45:00', 'WebPortal', 'Stadium', 'T-Shirt', 30, 2002, 8, 4.0, 'Android', '192.168.2.20', 'sessB2', '2.1.0', 'Email', 'Quick response', '2023-05-15', '2023-05-15');

INSERT INTO race_fan_interaction_logs (raceId, fanId, interactionType, interactionDetail, timestamp, platform, location, rewardEarned, pointsAwarded, campaignId, responseTimeSec, satisfactionScore, deviceType, ipAddress, sessionId, appVersion, marketingChannel, feedback, createdAt, updatedAt)
VALUES (103, 1003, 'LiveChat', 'Ask question to commentator', '2023-06-20 18:10:00', 'MobileApp', 'Online', 'VIP Pass', 100, 2003, 20, 5.0, 'iPad', '192.168.3.30', 'sessC3', '3.0.1', 'PushNotification', 'Very helpful', '2023-06-20', '2023-06-20');

-- Media Content Rights
CREATE TABLE media_content_rights (
    rightId INTEGER PRIMARY KEY AUTOINCREMENT,
    mediaId INTEGER,
    territory TEXT,
    startDate DATE,
    endDate DATE,
    exclusiveFlag INTEGER,
    licenseFee REAL,
    royaltyRate REAL,
    rightsHolder TEXT,
    distributor TEXT,
    usageType TEXT,
    platform TEXT,
    contractReference TEXT,
    notes TEXT,
    renewalDate DATE,
    status TEXT,
    createdBy INTEGER,
    createdAt DATE,
    updatedAt DATE,
    auditTrail TEXT,
    complianceStatus TEXT
);

INSERT INTO media_content_rights (mediaId, territory, startDate, endDate, exclusiveFlag, licenseFee, royaltyRate, rightsHolder, distributor, usageType, platform, contractReference, notes, renewalDate, status, createdBy, createdAt, updatedAt, auditTrail, complianceStatus)
VALUES (301, 'Global', '2023-01-01', '2025-12-31', 1, 500000.00, 12.5, 'F1 Media', 'GlobalDistrib', 'Broadcast', 'Television', 'CTR-2023-001', 'First contract', '2025-12-01', 'Active', 401, '2023-01-02', '2023-01-02', 'Initial entry', 'Compliant');

INSERT INTO media_content_rights (mediaId, territory, startDate, endDate, exclusiveFlag, licenseFee, royaltyRate, rightsHolder, distributor, usageType, platform, contractReference, notes, renewalDate, status, createdBy, createdAt, updatedAt, auditTrail, complianceStatus)
VALUES (302, 'Europe', '2023-06-01', '2024-05-31', 0, 150000.00, 8.0, 'EuroSport', 'EuroDistrib', 'Streaming', 'Online', 'CTR-2023-002', 'Non-exclusive', '2024-05-01', 'Pending', 402, '2023-06-02', '2023-06-02', 'Reviewed by legal', 'Pending');

INSERT INTO media_content_rights (mediaId, territory, startDate, endDate, exclusiveFlag, licenseFee, royaltyRate, rightsHolder, distributor, usageType, platform, contractReference, notes, renewalDate, status, createdBy, createdAt, updatedAt, auditTrail, complianceStatus)
VALUES (303, 'Asia', '2024-01-01', '2026-12-31', 1, 300000.00, 10.0, 'AsiaSports', 'AsiaDistrib', 'HighlightReel', 'Mobile', 'CTR-2024-001', 'Exclusive mobile rights', '2026-12-01', 'Draft', 403, '2024-01-02', '2024-01-02', 'Draft created', 'Draft');

-- Venue Utility Billing
CREATE TABLE venue_utility_billing (
    billId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    billingPeriodStart DATE,
    billingPeriodEnd DATE,
    electricityKWh REAL,
    electricityCost REAL,
    waterCubicMeters REAL,
    waterCost REAL,
    gasTherms REAL,
    gasCost REAL,
    wasteTonnes REAL,
    wasteCost REAL,
    recyclingTonnes REAL,
    recyclingCredit REAL,
    totalAmount REAL,
    dueDate DATE,
    paidFlag INTEGER,
    paymentDate DATE,
    invoiceNumber TEXT,
    billingCompany TEXT,
    notes TEXT
);

INSERT INTO venue_utility_billing (venueId, billingPeriodStart, billingPeriodEnd, electricityKWh, electricityCost, waterCubicMeters, waterCost, gasTherms, gasCost, wasteTonnes, wasteCost, recyclingTonnes, recyclingCredit, totalAmount, dueDate, paidFlag, paymentDate, invoiceNumber, billingCompany, notes)
VALUES (1, '2023-01-01', '2023-01-31', 12000.5, 1800.75, 2500.0, 350.00, 800.0, 120.00, 15.0, 300.00, 10.0, 50.00, 3170.75, '2023-02-15', 0, NULL, 'INV-2023-001', 'UtilityCo', 'January billing');

INSERT INTO venue_utility_billing (venueId, billingPeriodStart, billingPeriodEnd, electricityKWh, electricityCost, waterCubicMeters, waterCost, gasTherms, gasCost, wasteTonnes, wasteCost, recyclingTonnes, recyclingCredit, totalAmount, dueDate, paidFlag, paymentDate, invoiceNumber, billingCompany, notes)
VALUES (2, '2023-02-01', '2023-02-28', 11500.0, 1725.00, 2400.0, 336.00, 790.0, 118.50, 14.5, 290.00, 9.5, 48.00, 3016.00, '2023-03-15', 1, '2023-03-10', 'INV-2023-002', 'UtilityCo', 'Paid on time');

INSERT INTO venue_utility_billing (venueId, billingPeriodStart, billingPeriodEnd, electricityKWh, electricityCost, waterCubicMeters, waterCost, gasTherms, gasCost, wasteTonnes, wasteCost, recyclingTonnes, recyclingCredit, totalAmount, dueDate, paidFlag, paymentDate, invoiceNumber, billingCompany, notes)
VALUES (3, '2023-03-01', '2023-03-31', 11800.8, 1770.12, 2450.5, 343.07, 795.0, 119.25, 15.2, 304.00, 10.2, 51.00, 3112.64, '2023-04-15', 0, NULL, 'INV-2023-003', 'UtilityCo', 'Pending payment');

-- Team Financial Audits
CREATE TABLE team_financial_audits (
    auditId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    fiscalYear INTEGER,
    auditorId INTEGER,
    auditStartDate DATE,
    auditEndDate DATE,
    revenue REAL,
    expenses REAL,
    profit REAL,
    assets REAL,
    liabilities REAL,
    equity REAL,
    auditScore REAL,
    complianceIssues TEXT,
    recommendations TEXT,
    auditReportLink TEXT,
    approvedFlag INTEGER,
    approvalDate DATE,
    createdAt DATE,
    updatedAt DATE,
    notes TEXT
);

INSERT INTO team_financial_audits (teamId, fiscalYear, auditorId, auditStartDate, auditEndDate, revenue, expenses, profit, assets, liabilities, equity, auditScore, complianceIssues, recommendations, auditReportLink, approvedFlag, approvalDate, createdAt, updatedAt, notes)
VALUES (21, 2023, 501, '2023-04-01', '2023-04-30', 8500000.00, 7200000.00, 1300000.00, 12000000.00, 5000000.00, 7000000.00, 92.5, 'None', 'Invest in R&D', 'http://reports.example.com/audit21_2023.pdf', 1, '2023-05-05', '2023-05-01', '2023-05-01', 'Audit completed successfully');

INSERT INTO team_financial_audits (teamId, fiscalYear, auditorId, auditStartDate, auditEndDate, revenue, expenses, profit, assets, liabilities, equity, auditScore, complianceIssues, recommendations, auditReportLink, approvedFlag, approvalDate, createdAt, updatedAt, notes)
VALUES (22, 2023, 502, '2023-04-15', '2023-05-15', 9200000.00, 8000000.00, 1200000.00, 13000000.00, 6000000.00, 7000000.00, 88.0, 'Late filing of tax', 'Improve tax reporting', 'http://reports.example.com/audit22_2023.pdf', 0, NULL, '2023-05-20', '2023-05-20', 'Pending approval');

INSERT INTO team_financial_audits (teamId, fiscalYear, auditorId, auditStartDate, auditEndDate, revenue, expenses, profit, assets, liabilities, equity, auditScore, complianceIssues, recommendations, auditReportLink, approvedFlag, approvalDate, createdAt, updatedAt, notes)
VALUES (23, 2022, 503, '2022-04-10', '2022-04-30', 7800000.00, 6600000.00, 1200000.00, 11500000.00, 4800000.00, 6700000.00, 90.0, 'Minor bookkeeping errors', 'Standardize ledger entries', 'http://reports.example.com/audit23_2022.pdf', 1, '2022-05-10', '2022-05-01', '2022-05-01', 'Historical audit');

-- Transport Security Checkpoints
CREATE TABLE transport_security_checkpoints (
    checkpointId INTEGER PRIMARY KEY AUTOINCREMENT,
    location TEXT,
    venueId INTEGER,
    securityLevel INTEGER,
    staffCount INTEGER,
    equipmentList TEXT,
    operatingHours TEXT,
    lastInspectionDate DATE,
    nextInspectionDue DATE,
    incidentCount INTEGER,
    falseAlarmCount INTEGER,
    cameraCount INTEGER,
    badgeRequirement TEXT,
    accessControlType TEXT,
    notes TEXT,
    createdBy INTEGER,
    createdAt DATE,
    updatedAt DATE,
    status TEXT,
    complianceScore REAL
);

INSERT INTO transport_security_checkpoints (location, venueId, securityLevel, staffCount, equipmentList, operatingHours, lastInspectionDate, nextInspectionDue, incidentCount, falseAlarmCount, cameraCount, badgeRequirement, accessControlType, notes, createdBy, createdAt, updatedAt, status, complianceScore)
VALUES ('Gate A', 1, 3, 8, 'MetalDetector,Scanner', '06:00-22:00', '2023-03-01', '2023-09-01', 2, 0, 4, 'Required', 'BadgeSwipe', 'Main entry point', 601, '2023-03-02', '2023-03-02', 'Active', 0.96);

INSERT INTO transport_security_checkpoints (location, venueId, securityLevel, staffCount, equipmentList, operatingHours, lastInspectionDate, nextInspectionDue, incidentCount, falseAlarmCount, cameraCount, badgeRequirement, accessControlType, notes, createdBy, createdAt, updatedAt, status, complianceScore)
VALUES ('Parking Lot South', 2, 2, 5, 'BarrierGate,RFIDReader', '07:00-23:00', '2023-02-15', '2023-08-15', 1, 1, 2, 'Optional', 'TicketScan', 'Overflow parking area', 602, '2023-02-16', '2023-02-16', 'Active', 0.89);

INSERT INTO transport_security_checkpoints (location, venueId, securityLevel, staffCount, equipmentList, operatingHours, lastInspectionDate, nextInspectionDue, incidentCount, falseAlarmCount, cameraCount, badgeRequirement, accessControlType, notes, createdBy, createdAt, updatedAt, status, complianceScore)
VALUES ('Service Entrance', 3, 4, 3, 'BiometricScanner,Turnstile', '05:00-21:00', '2023-01-20', '2023-07-20', 0, 0, 3, 'Required', 'Biometric', 'Staff and vendor access', 603, '2023-01-21', '2023-01-21', 'Active', 0.98);

-- Weather Extreme Events
CREATE TABLE weather_extreme_events (
    eventId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    eventType TEXT,
    startDate DATE,
    endDate DATE,
    maxWindSpeed REAL,
    totalPrecipitation REAL,
    temperatureRange TEXT,
    impactDescription TEXT,
    raceAffectedFlag INTEGER,
    mitigationActions TEXT,
    reportedBy INTEGER,
    reportDate DATE,
    severityLevel TEXT,
    alertIssuedFlag INTEGER,
    responseTimeHours REAL,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    dataSource TEXT
);

INSERT INTO weather_extreme_events (circuitId, eventType, startDate, endDate, maxWindSpeed, totalPrecipitation, temperatureRange, impactDescription, raceAffectedFlag, mitigationActions, reportedBy, reportDate, severityLevel, alertIssuedFlag, responseTimeHours, notes, createdAt, updatedAt, dataSource)
VALUES (5, 'HighWind', '2023-04-10', '2023-04-10', 85.0, 0.0, '15-20C', 'Wind gusts caused delays', 1, 'Delay start, extra barriers', 701, '2023-04-11', 'Severe', 1, 2.5, 'First occurrence this season', '2023-04-11', '2023-04-11', 'Internal');

INSERT INTO weather_extreme_events (circuitId, eventType, startDate, endDate, maxWindSpeed, totalPrecipitation, temperatureRange, impactDescription, raceAffectedFlag, mitigationActions, reportedBy, reportDate, severityLevel, alertIssuedFlag, responseTimeHours, notes, createdAt, updatedAt, dataSource)
VALUES (8, 'HeavyRain', '2023-07-22', '2023-07-22', 30.0, 120.5, '10-12C', 'Flooding of pit lane', 1, 'Evacuate pit lane, reschedule sessions', 702, '2023-07-23', 'Critical', 1, 4.0, 'Cancelled qualifying', '2023-07-23', '2023-07-23', 'MeteorologicalAgency');

INSERT INTO weather_extreme_events (circuitId, eventType, startDate, endDate, maxWindSpeed, totalPrecipitation, temperatureRange, impactDescription, raceAffectedFlag, mitigationActions, reportedBy, reportDate, severityLevel, alertIssuedFlag, responseTimeHours, notes, createdAt, updatedAt, dataSource)
VALUES (12, 'ExtremeHeat', '2023-08-15', '2023-08-15', 15.0, 0.0, '38-42C', 'Track surface degradation', 0, 'Increase cooling sprays', 703, '2023-08-16', 'Moderate', 0, 1.0, 'No race impact', '2023-08-16', '2023-08-16', 'Internal');

-- Digital Engagement Metrics
CREATE TABLE digital_engagement_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    platform TEXT,
    campaignId INTEGER,
    date DATE,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    spend REAL,
    cpc REAL,
    cpm REAL,
    ctr REAL,
    conversionRate REAL,
    revenue REAL,
    roi REAL,
    audienceAgeRange TEXT,
    audienceGender TEXT,
    deviceCategory TEXT,
    geographicRegion TEXT,
    adFormat TEXT,
    creativeId INTEGER,
    notes TEXT
);

INSERT INTO digital_engagement_metrics (platform, campaignId, date, impressions, clicks, conversions, spend, cpc, cpm, ctr, conversionRate, revenue, roi, audienceAgeRange, audienceGender, deviceCategory, geographicRegion, adFormat, creativeId, notes)
VALUES ('Facebook', 2001, '2023-03-01', 500000, 12000, 2400, 15000.00, 1.25, 30.00, 2.4, 20.0, 48000.00, 3.2, '25-34', 'All', 'Mobile', 'Europe', 'Video', 901, 'Strong engagement');

INSERT INTO digital_engagement_metrics (platform, campaignId, date, impressions, clicks, conversions, spend, cpc, cpm, ctr, conversionRate, revenue, roi, audienceAgeRange, audienceGender, deviceCategory, geographicRegion, adFormat, creativeId, notes)
VALUES ('GoogleAds', 2002, '2023-04-15', 750000, 18000, 3000, 22000.00, 1.22, 29.33, 2.4, 16.7, 60000.00, 2.7, '35-44', 'Male', 'Desktop', 'NorthAmerica', 'Display', 902, 'Cost effective');

INSERT INTO digital_engagement_metrics (platform, campaignId, date, impressions, clicks, conversions, spend, cpc, cpm, ctr, conversionRate, revenue, roi, audienceAgeRange, audienceGender, deviceCategory, geographicRegion, adFormat, creativeId, notes)
VALUES ('Twitter', 2003, '2023-05-20', 300000, 6000, 900, 8000.00, 1.33, 26.67, 2.0, 15.0, 18000.00, 2.25, '18-24', 'Female', 'Mobile', 'Asia', 'Carousel', 903, 'Increasing traction');

-- Venue Utility Billing (Duplicate name avoided, already created) 

-- Team Financial Audits (Already created) 

-- Additional tables continue below

-- Sponsor Influence Analysis (already created) 

-- Driver Training Modules (already created) 

-- Circuit Noise Modelling (already created) 

-- Race Fan Interaction Logs (already created) 

-- Media Content Rights (already created) 

-- Transport Security Checkpoints (already created) 

-- Weather Extreme Events (already created) 

-- Digital Engagement Metrics (already created) 

-- *** End of Script ***