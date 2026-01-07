-- Crash analysis reports for race incidents
CREATE TABLE crash_analysis_reports (
    reportId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    driverId INTEGER,
    lap INTEGER,
    impactForce REAL,
    collisionType TEXT,
    weatherCondition TEXT,
    trackSection TEXT,
    vehicleSpeed REAL,
    damageSeverity TEXT,
    injuryLevel TEXT,
    responseTime INTEGER,
    medicalTeam TEXT,
    notes TEXT,
    createdDate DATE,
    updatedDate DATE,
    analystId INTEGER,
    resolutionStatus TEXT,
    followUpAction TEXT,
    externalReportLink TEXT
);

INSERT INTO crash_analysis_reports (raceId, driverId, lap, impactForce, collisionType, weatherCondition, trackSection, vehicleSpeed, damageSeverity, injuryLevel, responseTime, medicalTeam, notes, createdDate, updatedDate, analystId, resolutionStatus, followUpAction, externalReportLink) VALUES (101, 12, 23, 5.6, RearEnd, Dry, Turn3, 210.5, Moderate, Minor, 42, TeamA, Initial assessment completed, 2023-07-15, 2023-07-16, 7, Open, ReviewVideo, http://example.com/report/101);
INSERT INTO crash_analysis_reports (raceId, driverId, lap, impactForce, collisionType, weatherCondition, trackSection, vehicleSpeed, damageSeverity, injuryLevel, responseTime, medicalTeam, notes, createdDate, updatedDate, analystId, resolutionStatus, followUpAction, externalReportLink) VALUES (102, 9, 12, 8.2, SideSwipe, Wet, Straight1, 195.0, Severe, Major, 30, TeamB, Immediate medical attention required, 2023-08-02, 2023-08-03, 8, Closed, FinalReportSubmitted, http://example.com/report/102);
INSERT INTO crash_analysis_reports (raceId, driverId, lap, impactForce, collisionType, weatherCondition, trackSection, vehicleSpeed, damageSeverity, injuryLevel, responseTime, medicalTeam, notes, createdDate, updatedDate, analystId, resolutionStatus, followUpAction, externalReportLink) VALUES (103, 15, 45, 3.1, MinorContact, Dry, Chicane, 180.2, Low, None, 55, TeamC, No injuries reported, 2023-09-10, 2023-09-11, 9, Open, ScheduleFurtherTesting, http://example.com/report/103);

-- Fan social interaction tracking across platforms
CREATE TABLE fan_social_interaction (
    interactionId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    platform TEXT,
    postType TEXT,
    content TEXT,
    postDate DATE,
    likes INTEGER,
    shares INTEGER,
    comments INTEGER,
    reach INTEGER,
    campaignId INTEGER,
    sentimentScore REAL,
    location TEXT,
    deviceType TEXT,
    sessionDuration INTEGER,
    engagementLevel TEXT,
    promoCodeUsed TEXT,
    referralSource TEXT,
    videoLength INTEGER,
    audioLength INTEGER,
    metadata TEXT
);

INSERT INTO fan_social_interaction (fanId, platform, postType, content, postDate, likes, shares, comments, reach, campaignId, sentimentScore, location, deviceType, sessionDuration, engagementLevel, promoCodeUsed, referralSource, videoLength, audioLength, metadata) VALUES (2001, Instagram, Image, FanPicOfCar, 2023-06-20, 150, 20, 35, 5000, 301, 0.85, London, Mobile, 180, High, SUMMER2023, InfluencerA, 0, 0, profile=active);
INSERT INTO fan_social_interaction (fanId, platform, postType, content, postDate, likes, shares, comments, reach, campaignId, sentimentScore, location, deviceType, sessionDuration, engagementLevel, promoCodeUsed, referralSource, videoLength, audioLength, metadata) VALUES (2002, Twitter, Text, GreatRace, 2023-07-05, 240, 45, 60, 8000, 302, 0.92, NewYork, Desktop, 120, Medium, WINTER2023, OfficialHandle, 0, 0, sentiment=positive);
INSERT INTO fan_social_interaction (fanId, platform, postType, content, postDate, likes, shares, comments, reach, campaignId, sentimentScore, location, deviceType, sessionDuration, engagementLevel, promoCodeUsed, referralSource, videoLength, audioLength, metadata) VALUES (2003, TikTok, Video, PitStopClip, 2023-08-12, 320, 80, 110, 12000, 303, 0.78, Tokyo, Mobile, 250, High, SPRING2023, FanPage, 30, 0, hashtags=pitstop);

-- Feedback collected after race events
CREATE TABLE race_event_feedback (
    feedbackId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    category TEXT,
    question TEXT,
    response TEXT,
    rating INTEGER,
    submittedBy TEXT,
    submissionDate DATE,
    email TEXT,
    phone TEXT,
    attendanceStatus TEXT,
    weatherImpact TEXT,
    transportFeedback TEXT,
    foodQuality TEXT,
    venueCleanliness TEXT,
    staffFriendliness TEXT,
    securityRating INTEGER,
    overallExperience INTEGER,
    suggestions TEXT,
    followUpFlag INTEGER,
    processedBy TEXT
);

INSERT INTO race_event_feedback (raceId, category, question, response, rating, submittedBy, submissionDate, email, phone, attendanceStatus, weatherImpact, transportFeedback, foodQuality, venueCleanliness, staffFriendliness, securityRating, overallExperience, suggestions, followUpFlag, processedBy) VALUES (101, Facilities, HowWasVenueCleanliness, Very clean, 9, JohnDoe, 2023-07-16, john@example.com, 1234567890, Attended, Sunny, Excellent, Good, Excellent, Friendly, 8, 9, Add more signage, 0, AdminA);
INSERT INTO race_event_feedback (raceId, category, question, response, rating, submittedBy, submissionDate, email, phone, attendanceStatus, weatherImpact, transportFeedback, foodQuality, venueCleanliness, staffFriendliness, securityRating, overallExperience, suggestions, followUpFlag, processedBy) VALUES (102, Transportation, HowWasParking, Difficult to find spot, 6, JaneSmith, 2023-08-03, jane@example.com, 0987654321, Attended, Rainy, Moderate, Average, Good, Courteous, 7, 7, Improve parking signage, 1, AdminB);
INSERT INTO race_event_feedback (raceId, category, question, response, rating, submittedBy, submissionDate, email, phone, attendanceStatus, weatherImpact, transportFeedback, foodQuality, venueCleanliness, staffFriendliness, securityRating, overallExperience, suggestions, followUpFlag, processedBy) VALUES (103, Overall, OverallSatisfaction, Excellent event, 10, MikeLee, 2023-09-11, mike@example.com, 5551234567, Attended, Cloudy, Excellent, Great, Excellent, VeryFriendly, 9, 10, No suggestions, 0, AdminC);

-- Utility usage tracking for circuits
CREATE TABLE circuit_utility_usage (
    usageId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    utilityType TEXT,
    monthlyConsumption REAL,
    peakDemand REAL,
    averageDemand REAL,
    billingPeriod TEXT,
    cost REAL,
    providerName TEXT,
    meterReadingStart REAL,
    meterReadingEnd REAL,
    readingDate DATE,
    maintenanceSchedule TEXT,
    outageCount INTEGER,
    outageDuration INTEGER,
    sustainabilityScore REAL,
    notes TEXT,
    lastInspectionDate DATE,
    inspectionResult TEXT,
    energySource TEXT
);

INSERT INTO circuit_utility_usage (circuitId, utilityType, monthlyConsumption, peakDemand, averageDemand, billingPeriod, cost, providerName, meterReadingStart, meterReadingEnd, readingDate, maintenanceSchedule, outageCount, outageDuration, sustainabilityScore, notes, lastInspectionDate, inspectionResult, energySource) VALUES (1, Electricity, 3500.5, 450.2, 300.1, 2023-07, 12000.75, PowerCo, 1000.0, 4500.5, 2023-07-31, Quarterly, 2, 45, 85.5, Upgraded meters, 2023-06-20, Pass, Grid;
INSERT INTO circuit_utility_usage (circuitId, utilityType, monthlyConsumption, peakDemand, averageDemand, billingPeriod, cost, providerName, meterReadingStart, meterReadingEnd, readingDate, maintenanceSchedule, outageCount, outageDuration, sustainabilityScore, notes, lastInspectionDate, inspectionResult, energySource) VALUES (2, Water, 1200.0, 150.0, 100.0, 2023-07, 3000.00, AquaSupply, 500.0, 1700.0, 2023-07-31, Monthly, 0, 0, 92.0, No leaks detected, 2023-07-05, Pass, Municipal;
INSERT INTO circuit_utility_usage (circuitId, utilityType, monthlyConsumption, peakDemand, averageDemand, billingPeriod, cost, providerName, meterReadingStart, meterReadingEnd, readingDate, maintenanceSchedule, outageCount, outageDuration, sustainabilityScore, notes, lastInspectionDate, inspectionResult, energySource) VALUES (3, Gas, 800.75, 95.3, 70.2, 2023-07, 2500.50, GasCorp, 200.0, 1000.75, 2023-07-31, Biannual, 1, 30, 78.0, Leak inspection pending, 2023-05-15, Fail, NaturalGas;

-- Budget allocations for teams
CREATE TABLE team_budget_allocations (
    allocationId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    fiscalYear INTEGER,
    department TEXT,
    budgetAmount REAL,
    spentAmount REAL,
    remainingAmount REAL,
    approvalStatus TEXT,
    approvedBy TEXT,
    approvalDate DATE,
    projectCode TEXT,
    expenseCategory TEXT,
    vendorName TEXT,
    invoiceNumber TEXT,
    paymentDueDate DATE,
    actualPaymentDate DATE,
    comment TEXT,
    auditFlag INTEGER,
    revisionNumber INTEGER,
    lastUpdated DATE,
    updatedBy TEXT
);

INSERT INTO team_budget_allocations (teamId, fiscalYear, department, budgetAmount, spentAmount, remainingAmount, approvalStatus, approvedBy, approvalDate, projectCode, expenseCategory, vendorName, invoiceNumber, paymentDueDate, actualPaymentDate, comment, auditFlag, revisionNumber, lastUpdated, updatedBy) VALUES (10, 2023, Engineering, 1500000.00, 820000.00, 680000.00, Approved, DirectorA, 2023-01-15, PRJ001, Equipment, SupplierX, INV12345, 2023-02-28, 2023-02-25, Midyear review, 0, 2, 2023-06-10, FinanceA);
INSERT INTO team_budget_allocations (teamId, fiscalYear, department, budgetAmount, spentAmount, remainingAmount, approvalStatus, approvedBy, approvalDate, projectCode, expenseCategory, vendorName, invoiceNumber, paymentDueDate, actualPaymentDate, comment, auditFlag, revisionNumber, lastUpdated, updatedBy) VALUES (11, 2023, Marketing, 500000.00, 340000.00, 160000.00, Approved, DirectorB, 2023-01-20, PRJ002, Advertising, MediaCo, INV54321, 2023-03-15, 2023-03-10, Campaign Q2, 0, 1, 2023-06-12, FinanceB);
INSERT INTO team_budget_allocations (teamId, fiscalYear, department, budgetAmount, spentAmount, remainingAmount, approvalStatus, approvedBy, approvalDate, projectCode, expenseCategory, vendorName, invoiceNumber, paymentDueDate, actualPaymentDate, comment, auditFlag, revisionNumber, lastUpdated, updatedBy) VALUES (12, 2023, Operations, 800000.00, 450000.00, 350000.00, Pending, DirectorC, 2023-01-25, PRJ003, Logistics, TransportInc, INV67890, 2023-04-30, NULL, Awaiting funds, 1, 0, 2023-06-15, FinanceC);

-- Applications to driver academies
CREATE TABLE driver_academy_applications (
    applicationId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    seasonYear INTEGER,
    academyName TEXT,
    applicationDate DATE,
    status TEXT,
    testScore REAL,
    interviewScore REAL,
    physicalTestScore REAL,
    medicalClearance TEXT,
    scholarshipAmount REAL,
    parentContact TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zipCode TEXT,
    country TEXT,
    referenceName TEXT,
    referenceContact TEXT,
    notes TEXT,
    processedBy TEXT
);

INSERT INTO driver_academy_applications (driverId, seasonYear, academyName, applicationDate, status, testScore, interviewScore, physicalTestScore, medicalClearance, scholarshipAmount, parentContact, address, city, state, zipCode, country, referenceName, referenceContact, notes, processedBy) VALUES (5, 2024, SpeedAcademy, 2023-10-01, Pending, 88.5, 90.0, 85.0, Approved, 15000.00, Mom555, 12RacingSt, Milan, Lombardy, 20100, Italy, CoachLuca, 5551234, Strong potential, AdminX);
INSERT INTO driver_academy_applications (driverId, seasonYear, academyName, applicationDate, status, testScore, interviewScore, physicalTestScore, medicalClearance, scholarshipAmount, parentContact, address, city, state, zipCode, country, referenceName, referenceContact, notes, processedBy) VALUES (6, 2024, EliteRacing, 2023-09-20, Accepted, 92.0, 94.5, 90.2, Approved, 20000.00, Dad777, 34FastLane, Barcelona, Catalonia, 08001, Spain, MentorAna, 5556789, Recommended by former champion, AdminY);
INSERT INTO driver_academy_applications (driverId, seasonYear, academyName, applicationDate, status, testScore, interviewScore, physicalTestScore, medicalClearance, scholarshipAmount, parentContact, address, city, state, zipCode, country, referenceName, referenceContact, notes, processedBy) VALUES (7, 2024, FutureStars, 2023-11-05, Rejected, 75.0, 78.0, 70.5, Declined, 0.00, Uncle321, 9CircuitRd, Paris, Île-de-France, 75000, France, ScoutJean, 5554321, Needs more experience, AdminZ);

-- Sponsor product development projects
CREATE TABLE sponsor_product_development (
    devId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    productName TEXT,
    category TEXT,
    developmentStage TEXT,
    startDate DATE,
    expectedLaunchDate DATE,
    budget REAL,
    spent REAL,
    leadEngineer TEXT,
    teamSize INTEGER,
    partnerCompany TEXT,
    technologyUsed TEXT,
    regulatoryStatus TEXT,
    marketResearchScore REAL,
    riskLevel TEXT,
    notes TEXT,
    approvalDate DATE,
    approvedBy TEXT,
    launchStatus TEXT,
    postLaunchFeedback TEXT
);

INSERT INTO sponsor_product_development (sponsorId, productName, category, developmentStage, startDate, expectedLaunchDate, budget, spent, leadEngineer, teamSize, partnerCompany, technologyUsed, regulatoryStatus, marketResearchScore, riskLevel, notes, approvalDate, approvedBy, launchStatus, postLaunchFeedback) VALUES (101, TurboBoostX, Engine, Prototyping, 2023-02-01, 2024-05-15, 2500000.00, 1200000.00, EngineerA, 12, TechPartner1, CFD, Pending, 78.5, Medium, Initial testing completed, 2023-01-20, VPTech, OnTrack, NULL);
INSERT INTO sponsor_product_development (sponsorId, productName, category, developmentStage, startDate, expectedLaunchDate, budget, spent, leadEngineer, teamSize, partnerCompany, technologyUsed, regulatoryStatus, marketResearchScore, riskLevel, notes, approvalDate, approvedBy, launchStatus, postLaunchFeedback) VALUES (102, AeroWingZ, Aerodynamics, Testing, 2023-03-10, 2024-08-01, 1800000.00, 950000.00, EngineerB, 9, AeroLtd, WindTunnel, Approved, 85.0, Low, Positive wind tunnel results, 2023-02-15, VPDesign, Delayed, Awaiting redesign);
INSERT INTO sponsor_product_development (sponsorId, productName, category, developmentStage, startDate, expectedLaunchDate, budget, spent, leadEngineer, teamSize, partnerCompany, technologyUsed, regulatoryStatus, marketResearchScore, riskLevel, notes, approvalDate, approvedBy, launchStatus, postLaunchFeedback) VALUES (103, FuelSaver, FuelTech, Production, 2023-01-05, 2024-03-30, 3000000.00, 2600000.00, EngineerC, 15, FuelCo, NanoCoating, Approved, 90.2, Low, Ready for mass production, 2023-01-01, VPProducts, Launched, Positive market response);

-- Broadcast content localization details
CREATE TABLE broadcast_content_localization_details (
    locId INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId INTEGER,
    languageCode TEXT,
    translator TEXT,
    translationStartDate DATE,
    translationEndDate DATE,
    durationMinutes INTEGER,
    subtitleFile TEXT,
    audioTrackFile TEXT,
    qualityCheckStatus TEXT,
    reviewer TEXT,
    reviewDate DATE,
    region TEXT,
    distributionChannel TEXT,
    viewershipEstimate INTEGER,
    cost REAL,
    notes TEXT,
    approvalStatus TEXT,
    approvedBy TEXT,
    lastUpdated DATE,
    updatedBy TEXT
);

INSERT INTO broadcast_content_localization_details (broadcastId, languageCode, translator, translationStartDate, translationEndDate, durationMinutes, subtitleFile, audioTrackFile, qualityCheckStatus, reviewer, reviewDate, region, distributionChannel, viewershipEstimate, cost, notes, approvalStatus, approvedBy, lastUpdated, updatedBy) VALUES (5001, EN, TranslatorA, 2023-06-01, 2023-06-05, 120, sub_en.srt, audio_en.mp3, Passed, ReviewerX, 2023-06-06, Europe, TV, 5000000, 20000.00, Initial release, Approved, ManagerA, 2023-06-07, AdminA);
INSERT INTO broadcast_content_localization_details (broadcastId, languageCode, translator, translationStartDate, translationEndDate, durationMinutes, subtitleFile, audioTrackFile, qualityCheckStatus, reviewer, reviewDate, region, distributionChannel, viewershipEstimate, cost, notes, approvalStatus, approvedBy, lastUpdated, updatedBy) VALUES (5002, ES, TranslatorB, 2023-07-10, 2023-07-14, 120, sub_es.srt, audio_es.mp3, Passed, ReviewerY, 2023-07-15, SouthAmerica, Streaming, 3200000, 18000.00, Added regional slang, Approved, ManagerB, 2023-07-16, AdminB);
INSERT INTO broadcast_content_localization_details (broadcastId, languageCode, translator, translationStartDate, translationEndDate, durationMinutes, subtitleFile, audioTrackFile, qualityCheckStatus, reviewer, reviewDate, region, distributionChannel, viewershipEstimate, cost, notes, approvalStatus, approvedBy, lastUpdated, updatedBy) VALUES (5003, FR, TranslatorC, 2023-08-20, 2023-08-24, 120, sub_fr.srt, audio_fr.mp3, Passed, ReviewerZ, 2023-08-25, Europe, TV, 4000000, 19000.00, Adjusted timing, Approved, ManagerC, 2023-08-26, AdminC);

-- Logistics container tracking details
CREATE TABLE logistics_container_tracking (
    trackId INTEGER PRIMARY KEY AUTOINCREMENT,
    containerId TEXT,
    shipmentId INTEGER,
    originPort TEXT,
    destinationPort TEXT,
    departureDate DATE,
    arrivalDate DATE,
    currentLocation TEXT,
    status TEXT,
    weightKg REAL,
    volumeM3 REAL,
    carrierName TEXT,
    billOfLading TEXT,
    customsClearanceDate DATE,
    inspectionResult TEXT,
    temperatureControl TEXT,
    humidityLevel REAL,
    delayReason TEXT,
    expectedDeliveryDate DATE,
    lastUpdated DATE
);

INSERT INTO logistics_container_tracking (containerId, shipmentId, originPort, destinationPort, departureDate, arrivalDate, currentLocation, status, weightKg, volumeM3, carrierName, billOfLading, customsClearanceDate, inspectionResult, temperatureControl, humidityLevel, delayReason, expectedDeliveryDate, lastUpdated) VALUES (CONT001, 9001, Shanghai, Valencia, 2023-05-10, 2023-05-25, Valencia, Delivered, 12000.5, 45.2, CarrierOne, BL12345, 2023-05-12, Passed, Yes, 55.0, None, 2023-05-25, 2023-05-26);
INSERT INTO logistics_container_tracking (containerId, shipmentId, originPort, destinationPort, departureDate, arrivalDate, currentLocation, status, weightKg, volumeM3, carrierName, billOfLading, customsClearanceDate, inspectionResult, temperatureControl, humidityLevel, delayReason, expectedDeliveryDate, lastUpdated) VALUES (CONT002, 9002, Rotterdam, Dubai, 2023-06-01, 2023-06-18, Dubai, InTransit, 15000.0, 60.0, CarrierTwo, BL67890, 2023-06-03, Pending, No, 0.0, Weather, 2023-06-20, 2023-06-05);
INSERT INTO logistics_container_tracking (containerId, shipmentId, originPort, destinationPort, departureDate, arrivalDate, currentLocation, status, weightKg, volumeM3, carrierName, billOfLading, customsClearanceDate, inspectionResult, temperatureControl, humidityLevel, delayReason, expectedDeliveryDate, lastUpdated) VALUES (CONT003, 9003, LosAngeles, Tokyo, 2023-07-15, 2023-08-02, EnRoutePacific, Delayed, 18000.3, 70.5, CarrierThree, BL24680, NULL, Failed, Yes, 22.5, Mechanical, 2023-08-05, 2023-07-20);

-- Environmental research projects data
CREATE TABLE environmental_research_projects (
    projectId INTEGER PRIMARY KEY AUTOINCREMENT,
    projectName TEXT,
    leadScientist TEXT,
    startDate DATE,
    endDate DATE,
    budget REAL,
    fundingAgency TEXT,
    region TEXT,
    focusArea TEXT,
    methodology TEXT,
    dataCollected INTEGER,
    publications INTEGER,
    status TEXT,
    impactScore REAL,
    riskAssessment TEXT,
    collaboratingInstitutes TEXT,
    equipmentUsed TEXT,
    ethicalApproval TEXT,
    resultsSummary TEXT,
    notes TEXT
);

INSERT INTO environmental_research_projects (projectName, leadScientist, startDate, endDate, budget, fundingAgency, region, focusArea, methodology, dataCollected, publications, status, impactScore, riskAssessment, collaboratingInstitutes, equipmentUsed, ethicalApproval, resultsSummary, notes) VALUES (CarbonFootprintStudy, DrSmith, 2022-01-15, 2024-12-31, 750000.00, EcoFund, Europe, Emissions, Sampling, 12000, 5, Ongoing, 88.5, Low, UniA;UniB, GasAnalyzers, Approved, Preliminary results show reduction trends, No major issues);
INSERT INTO environmental_research_projects (projectName, leadScientist, startDate, endDate, budget, fundingAgency, region, focusArea, methodology, dataCollected, publications, status, impactScore, riskAssessment, collaboratingInstitutes, equipmentUsed, ethicalApproval, resultsSummary, notes) VALUES (WaterQualityMonitoring, DrLee, 2021-05-01, 2023-11-30, 500000.00, WaterGov, Asia, Water, SensorNetwork, 8500, 3, Completed, 92.0, Medium, InstituteX;InstituteY, WaterSensors, Approved, Water quality improved by 15%, Findings shared with local authorities);
INSERT INTO environmental_research_projects (projectName, leadScientist, startDate, endDate, budget, fundingAgency, region, focusArea, methodology, dataCollected, publications, status, impactScore, riskAssessment, collaboratingInstitutes, equipmentUsed, ethicalApproval, resultsSummary, notes) VALUES (BiodiversityIndex, DrGarcia, 2023-03-10, 2025-06-20, 600000.00, BioGrant, SouthAmerica, SpeciesSurvey, FieldTransects, 4000, 2, Ongoing, 80.0, High, UnivC;NGOZ, Drones, Pending, Early data indicates new species, Awaiting final analysis).