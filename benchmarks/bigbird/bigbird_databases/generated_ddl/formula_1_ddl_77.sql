-- Table storing detailed surveys of hospitality guests at events
CREATE TABLE hospitality_feedback_surveys
(
    surveyId                 INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId                  INTEGER NOT NULL,
    guestId                  INTEGER NOT NULL,
    overallRating            INTEGER,
    foodRating               INTEGER,
    serviceRating            INTEGER,
    amenitiesRating          INTEGER,
    cleanlinessRating        INTEGER,
    staffFriendliness        INTEGER,
    waitTimeMinutes          INTEGER,
    complaintFlag            INTEGER,
    comments                 TEXT,
    surveyDate               DATE,
    drinkRating              INTEGER,
    entertainmentRating      INTEGER,
    valueForMoneyRating      INTEGER,
    likelihoodToReturn       INTEGER,
    preferredContactMethod   TEXT,
    emailOptIn               INTEGER,
    surveyVersion            TEXT,
    deviceUsed               TEXT,
    locationWithinVenue      TEXT
);

INSERT INTO hospitality_feedback_surveys (surveyId, eventId, guestId, overallRating, foodRating, serviceRating, amenitiesRating, cleanlinessRating, staffFriendliness, waitTimeMinutes, complaintFlag, comments, surveyDate, drinkRating, entertainmentRating, valueForMoneyRating, likelihoodToReturn, preferredContactMethod, emailOptIn, surveyVersion, deviceUsed, locationWithinVenue) VALUES (1, 101, 1001, 5, 4, 5, 4, 5, 5, 10, 0, 'Great experience', '2025-07-10', 5, 5, 5, 9, 'email', 1, 'v1', 'tablet', 'main hall');
INSERT INTO hospitality_feedback_surveys (surveyId, eventId, guestId, overallRating, foodRating, serviceRating, amenitiesRating, cleanlinessRating, staffFriendliness, waitTimeMinutes, complaintFlag, comments, surveyDate, drinkRating, entertainmentRating, valueForMoneyRating, likelihoodToReturn, preferredContactMethod, emailOptIn, surveyVersion, deviceUsed, locationWithinVenue) VALUES (2, 102, 1002, 4, 3, 4, 3, 4, 4, 12, 0, 'Very good service', '2025-07-11', 4, 4, 4, 8, 'phone', 1, 'v1', 'mobile', 'vip lounge');
INSERT INTO hospitality_feedback_surveys (surveyId, eventId, guestId, overallRating, foodRating, serviceRating, amenitiesRating, cleanlinessRating, staffFriendliness, waitTimeMinutes, complaintFlag, comments, surveyDate, drinkRating, entertainmentRating, valueForMoneyRating, likelihoodToReturn, preferredContactMethod, emailOptIn, surveyVersion, deviceUsed, locationWithinVenue) VALUES (3, 103, 1003, 3, 2, 3, 2, 3, 3, 20, 1, 'Long wait times', '2025-07-12', 3, 3, 3, 5, 'email', 0, 'v1', 'kiosk', 'entrance area');

-- Table recording licenses granted to trackside vendors
CREATE TABLE trackside_vendor_licenses
(
    licenseId            INTEGER PRIMARY KEY AUTOINCREMENT,
    vendorId             INTEGER NOT NULL,
    vendorName           TEXT NOT NULL,
    licenseNumber        TEXT NOT NULL,
    issueDate            DATE,
    expiryDate           DATE,
    permittedAreas       TEXT,
    maxBoothSizeSqM      REAL,
    feeAmount            REAL,
    paymentStatus        TEXT,
    complianceScore      INTEGER,
    inspectionDate       DATE,
    inspectorId          INTEGER,
    notes                TEXT,
    licenseType          TEXT,
    renewalRequired      INTEGER,
    contactPhone         TEXT,
    contactEmail         TEXT,
    addressLine1         TEXT,
    city                 TEXT,
    state                TEXT,
    zipCode              TEXT,
    country              TEXT
);

INSERT INTO trackside_vendor_licenses (licenseId, vendorId, vendorName, licenseNumber, issueDate, expiryDate, permittedAreas, maxBoothSizeSqM, feeAmount, paymentStatus, complianceScore, inspectionDate, inspectorId, notes, licenseType, renewalRequired, contactPhone, contactEmail, addressLine1, city, state, zipCode, country) VALUES (1, 201, 'FastFoodCo', 'LIC12345', '2024-01-01', '2025-01-01', 'Paddock', 12, 1500, 'paid', 95, '2024-06-15', 301, 'All good', 'temporary', 0, '5551234567', 'info@fastfoodco.com', '123 Raceway Rd', 'Speedville', 'CA', '90001', 'USA');
INSERT INTO trackside_vendor_licenses (licenseId, vendorId, vendorName, licenseNumber, issueDate, expiryDate, permittedAreas, maxBoothSizeSqM, feeAmount, paymentStatus, complianceScore, inspectionDate, inspectorId, notes, licenseType, renewalRequired, contactPhone, contactEmail, addressLine1, city, state, zipCode, country) VALUES (2, 202, 'GearGear', 'LIC67890', '2023-05-10', '2024-05-10', 'Starting Grid', 8, 800, 'unpaid', 88, '2023-12-01', 302, 'Pending fee', 'seasonal', 1, '5559876543', 'sales@geargear.com', '456 Circuit Ave', 'Racetown', 'TX', '73301', 'USA');
INSERT INTO trackside_vendor_licenses (licenseId, vendorId, vendorName, licenseNumber, issueDate, expiryDate, permittedAreas, maxBoothSizeSqM, feeAmount, paymentStatus, complianceScore, inspectionDate, inspectorId, notes, licenseType, renewalRequired, contactPhone, contactEmail, addressLine1, city, state, zipCode, country) VALUES (3, 203, 'TechSupply', 'LIC24680', '2022-09-15', '2023-09-15', 'Pit Lane', 5, 500, 'paid', 92, '2022-11-20', 303, 'Equipment check passed', 'annual', 1, '5552468098', 'contact@techsupply.com', '789 Motorway', 'Speed City', 'NY', '10001', 'USA');

-- Inventory of media technology assets used in broadcasting
CREATE TABLE media_technology_inventory
(
    assetId                INTEGER PRIMARY KEY AUTOINCREMENT,
    assetType              TEXT NOT NULL,
    manufacturer           TEXT,
    model                  TEXT,
    serialNumber           TEXT,
    purchaseDate           DATE,
    warrantyEndDate        DATE,
    location               TEXT,
    status                 TEXT,
    lastMaintenanceDate    DATE,
    nextMaintenanceDue     DATE,
    firmwareVersion        TEXT,
    ipAddress              TEXT,
    macAddress             TEXT,
    assignedToStaffId      INTEGER,
    depreciationValue      REAL,
    purchaseCost           REAL,
    warrantyProvider       TEXT,
    supportContact         TEXT,
    notes                  TEXT,
    assetTag               TEXT,
    rackUnit               INTEGER,
    powerRequirementWatts REAL
);

INSERT INTO media_technology_inventory (assetId, assetType, manufacturer, model, serialNumber, purchaseDate, warrantyEndDate, location, status, lastMaintenanceDate, nextMaintenanceDue, firmwareVersion, ipAddress, macAddress, assignedToStaffId, depreciationValue, purchaseCost, warrantyProvider, supportContact, notes, assetTag, rackUnit, powerRequirementWatts) VALUES (1, 'camera', 'Sony', 'PXW-Z90', 'SN001', '2023-03-10', '2025-03-10', 'Media Center', 'operational', '2024-12-01', '2025-06-01', '1.2.3', '192.168.10.10', '00:1A:2B:3C:4D:5E', 401, 2000, 3000, 'SonyWarranty', 'support@sony.com', 'Primary broadcast camera', 'CAM001', 2, 150);
INSERT INTO media_technology_inventory (assetId, assetType, manufacturer, model, serialNumber, purchaseDate, warrantyEndDate, location, status, lastMaintenanceDate, nextMaintenanceDue, firmwareVersion, ipAddress, macAddress, assignedToStaffId, depreciationValue, purchaseCost, warrantyProvider, supportContact, notes, assetTag, rackUnit, powerRequirementWatts) VALUES (2, 'audio_mixer', 'Yamaha', 'CL5', 'SN002', '2022-07-22', '2024-07-22', 'Audio Booth', 'operational', '2024-01-15', '2024-07-15', '2.0.0', '192.168.10.20', '00:1A:2B:3C:4D:5F', 402, 1500, 2500, 'YamahaWarranty', 'tech@yamaha.com', 'Main stage mixer', 'MIX001', 3, 250);
INSERT INTO media_technology_inventory (assetId, assetType, manufacturer, model, serialNumber, purchaseDate, warrantyEndDate, location, status, lastMaintenanceDate, nextMaintenanceDue, firmwareVersion, ipAddress, macAddress, assignedToStaffId, depreciationValue, purchaseCost, warrantyProvider, supportContact, notes, assetTag, rackUnit, powerRequirementWatts) VALUES (3, 'server', 'Dell', 'PowerEdge R740', 'SN003', '2021-11-05', '2024-11-05', 'Data Center', 'maintenance', '2024-03-10', '2024-09-10', '3.1.4', '192.168.20.30', '00:1A:2B:3C:4D:60', 403, 5000, 8000, 'DellProSupport', 'support@dell.com', 'Live streaming server', 'SRV001', 10, 450);

-- Records of sponsor engagement marketing campaigns
CREATE TABLE sponsor_engagement_campaigns
(
    campaignId               INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId                INTEGER NOT NULL,
    campaignName             TEXT NOT NULL,
    startDate                DATE,
    endDate                  DATE,
    budget                   REAL,
    targetAudience           TEXT,
    channelsUsed             TEXT,
    primaryGoal              TEXT,
    secondaryGoal            TEXT,
    expectedReach            INTEGER,
    actualReach              INTEGER,
    impressions              INTEGER,
    clicks                   INTEGER,
    conversions              INTEGER,
    costPerClick             REAL,
    costPerConversion        REAL,
    createdBy                TEXT,
    approvedBy               TEXT,
    status                   TEXT,
    notes                    TEXT,
    creativeAssetId          INTEGER,
    landingPageUrl           TEXT,
    promoCode                TEXT,
    measurementMethod        TEXT
);

INSERT INTO sponsor_engagement_campaigns (campaignId, sponsorId, campaignName, startDate, endDate, budget, targetAudience, channelsUsed, primaryGoal, secondaryGoal, expectedReach, actualReach, impressions, clicks, conversions, costPerClick, costPerConversion, createdBy, approvedBy, status, notes, creativeAssetId, landingPageUrl, promoCode, measurementMethod) VALUES (1, 301, 'SpeedBoost Summer', '2025-06-01', '2025-08-31', 50000, 'young adults', 'social_media,tv', 'brand_awareness', 'lead_generation', 2000000, 1850000, 2500000, 12000, 3000, 4.17, 16.67, 'alice', 'bob', 'active', 'Mid‑season adjustment made', 101, 'http://sponsor.com/summer', 'SUMMER20', 'cpc');
INSERT INTO sponsor_engagement_campaigns (campaignId, sponsorId, campaignName, startDate, endDate, budget, targetAudience, channelsUsed, primaryGoal, secondaryGoal, expectedReach, actualReach, impressions, clicks, conversions, costPerClick, costPerConversion, createdBy, approvedBy, status, notes, creativeAssetId, landingPageUrl, promoCode, measurementMethod) VALUES (2, 302, 'TurboTech Launch', '2025-09-15', '2025-12-15', 75000, 'enthusiasts', 'email,web', 'product_launch', 'sales', 1500000, 1580000, 1800000, 15000, 5000, 5.00, 15.00, 'carol', 'dave', 'planned', 'Awaiting creative assets', 102, 'http://turbo.com/launch', 'LAUNCH30', 'cpa');
INSERT INTO sponsor_engagement_campaigns (campaignId, sponsorId, campaignName, startDate, endDate, budget, targetAudience, channelsUsed, primaryGoal, secondaryGoal, expectedReach, actualReach, impressions, clicks, conversions, costPerClick, costPerConversion, createdBy, approvedBy, status, notes, creativeAssetId, landingPageUrl, promoCode, measurementMethod) VALUES (3, 303, 'EcoDrive Initiative', '2025-01-01', '2025-03-31', 30000, 'environmentalists', 'print,online', 'awareness', 'engagement', 800000, 820000, 950000, 8000, 1200, 3.75, 25.00, 'eve', 'frank', 'completed', 'Exceeded reach targets', 103, 'http://ecodrive.org', 'GREEN10', 'cpm');

-- Environmental research studies related to race venues
CREATE TABLE environmental_research_studies
(
    studyId                INTEGER PRIMARY KEY AUTOINCREMENT,
    studyName              TEXT NOT NULL,
    leadScientist          TEXT,
    institution            TEXT,
    startDate              DATE,
    endDate                DATE,
    fundingSource          TEXT,
    totalBudget            REAL,
    methodology            TEXT,
    variablesMeasured      TEXT,
    dataCollectionFrequency TEXT,
    sampleSize             INTEGER,
    regionCovered          TEXT,
    findingsSummary        TEXT,
    publicationUrl         TEXT,
    status                 TEXT,
    peerReviewScore        INTEGER,
    ethicalApprovalId      TEXT,
    dataRepositoryUrl      TEXT,
    notes                  TEXT,
    relatedProjectId       INTEGER
);

INSERT INTO environmental_research_studies (studyId, studyName, leadScientist, institution, startDate, endDate, fundingSource, totalBudget, methodology, variablesMeasured, dataCollectionFrequency, sampleSize, regionCovered, findingsSummary, publicationUrl, status, peerReviewScore, ethicalApprovalId, dataRepositoryUrl, notes, relatedProjectId) VALUES (1, 'AirQualityImpact2025', 'Dr. Green', 'University of Motors', '2025-02-01', '2025-11-30', 'GovGrant', 120000, 'field_sampling', 'PM2.5,NOx,CO2', 'hourly', 5000, 'Circuit A', 'Improved filtration reduces PM2.5 by 15%', 'http://research.org/air2025', 'completed', 9, 'EA-2025-01', 'http://datarepo.org/air2025', 'Data validated', 201);
INSERT INTO environmental_research_studies (studyId, studyName, leadScientist, institution, startDate, endDate, fundingSource, totalBudget, methodology, variablesMeasured, dataCollectionFrequency, sampleSize, regionCovered, findingsSummary, publicationUrl, status, peerReviewScore, ethicalApprovalId, dataRepositoryUrl, notes, relatedProjectId) VALUES (2, 'NoisePollutionStudy', 'Prof. Echo', 'Acoustic Institute', '2025-04-15', '2025-12-15', 'PrivateFund', 85000, 'continuous_monitoring', 'dB_levels', 'continuous', 3000, 'Circuit B', 'Peak noise exceeds limits during race start', 'http://research.org/noise2025', 'in_progress', 7, 'EA-2025-02', 'http://datarepo.org/noise2025', 'Sensors calibrated', 202);
INSERT INTO environmental_research_studies (studyId, studyName, leadScientist, institution, startDate, endDate, fundingSource, totalBudget, methodology, variablesMeasured, dataCollectionFrequency, sampleSize, regionCovered, findingsSummary, publicationUrl, status, peerReviewScore, ethicalApprovalId, dataRepositoryUrl, notes, relatedProjectId) VALUES (3, 'WaterRunoffAnalysis', 'Dr. Stream', 'HydroTech Labs', '2025-01-10', '2025-09-30', 'EUGrant', 95000, 'soil_sampling', 'runoff_volume,contaminant_levels', 'weekly', 2000, 'Circuit C', 'Runoff treatment reduces contaminants by 20%', 'http://research.org/water2025', 'completed', 8, 'EA-2025-03', 'http://datarepo.org/water2025', 'Follow‑up study planned', 203);

-- Rules and parameters for fan loyalty program
CREATE TABLE fan_loyalty_program_rules
(
    ruleId                     INTEGER PRIMARY KEY AUTOINCREMENT,
    programName                TEXT NOT NULL,
    tierLevel                  INTEGER,
    pointsEarnedPerDollar      INTEGER,
    pointsRequiredForUpgrade   INTEGER,
    benefitsDescription        TEXT,
    expirationPolicy           TEXT,
    rolloverAllowed            INTEGER,
    maxPointsCap               INTEGER,
    redemptionRate             REAL,
    eligibilityCriteria        TEXT,
    startDate                  DATE,
    endDate                    DATE,
    createdBy                  TEXT,
    lastModifiedBy             TEXT,
    lastModifiedDate           DATE,
    notes                      TEXT,
    activeFlag                 INTEGER,
    regionalApplicability      TEXT,
    partnerBenefits            TEXT,
    tierName                   TEXT
);

INSERT INTO fan_loyalty_program_rules (ruleId, programName, tierLevel, pointsEarnedPerDollar, pointsRequiredForUpgrade, benefitsDescription, expirationPolicy, rolloverAllowed, maxPointsCap, redemptionRate, eligibilityCriteria, startDate, endDate, createdBy, lastModifiedBy, lastModifiedDate, notes, activeFlag, regionalApplicability, partnerBenefits, tierName) VALUES (1, 'GrandPrixFans', 1, 1, 1000, 'Priority seating, merchandise discount', '12_months', 1, 5000, 0.01, 'attended 2 races', '2025-01-01', '2026-12-31', 'admin', 'admin', '2025-01-01', 'Initial tier', 1, 'global', 'hotel_partner', 'Bronze');
INSERT INTO fan_loyalty_program_rules (ruleId, programName, tierLevel, pointsEarnedPerDollar, pointsRequiredForUpgrade, benefitsDescription, expirationPolicy, rolloverAllowed, maxPointsCap, redemptionRate, eligibilityCriteria, startDate, endDate, createdBy, lastModifiedBy, lastModifiedDate, notes, activeFlag, regionalApplicability, partnerBenefits, tierName) VALUES (2, 'GrandPrixFans', 2, 2, 3000, 'VIP lounge access, free tickets', '18_months', 1, 10000, 0.015, 'attended 5 races', '2025-01-01', '2026-12-31', 'admin', 'admin', '2025-01-01', 'Silver tier added', 1, 'global', 'airline_partner', 'Silver');
INSERT INTO fan_loyalty_program_rules (ruleId, programName, tierLevel, pointsEarnedPerDollar, pointsRequiredForUpgrade, benefitsDescription, expirationPolicy, rolloverAllowed, maxPointsCap, redemptionRate, eligibilityCriteria, startDate, endDate, createdBy, lastModifiedBy, lastModifiedDate, notes, activeFlag, regionalApplicability, partnerBenefits, tierName) VALUES (3, 'GrandPrixFans', 3, 3, 6000, 'All‑access pass, meet‑and‑greet', '24_months', 0, 20000, 0.02, 'attended 10 races', '2025-01-01', '2026-12-31', 'admin', 'admin', '2025-01-01', 'Gold tier', 1, 'global', 'car_rental_partner', 'Gold');

-- Inspection records for logistics vehicles
CREATE TABLE logistics_vehicle_inspections
(
    inspectionId          INTEGER PRIMARY KEY AUTOINCREMENT,
    vehicleId             INTEGER NOT NULL,
    inspectionDate        DATE,
    inspectorId           INTEGER,
    mileage               INTEGER,
    oilLevel              TEXT,
    tirePressureFrontLeft REAL,
    tirePressureFrontRight REAL,
    tirePressureRearLeft  REAL,
    tirePressureRearRight REAL,
    brakeCondition        TEXT,
    suspensionCondition   TEXT,
    lightsFunctioning     INTEGER,
    emissionTestResult    TEXT,
    notes                 TEXT,
    nextInspectionDue     DATE,
    passedFlag            INTEGER,
    inspectionType        TEXT,
    location              TEXT,
    documentedBy          TEXT
);

INSERT INTO logistics_vehicle_inspections (inspectionId, vehicleId, inspectionDate, inspectorId, mileage, oilLevel, tirePressureFrontLeft, tirePressureFrontRight, tirePressureRearLeft, tirePressureRearRight, brakeCondition, suspensionCondition, lightsFunctioning, emissionTestResult, notes, nextInspectionDue, passedFlag, inspectionType, location, documentedBy) VALUES (1, 501, '2025-05-01', 601, 12000, 'full', 32.5, 32.5, 30.0, 30.0, 'good', 'good', 1, 'pass', 'No issues', '2025-11-01', 1, 'annual', 'Depot A', 'jane');
INSERT INTO logistics_vehicle_inspections (inspectionId, vehicleId, inspectionDate, inspectorId, mileage, oilLevel, tirePressureFrontLeft, tirePressureFrontRight, tirePressureRearLeft, tirePressureRearRight, brakeCondition, suspensionCondition, lightsFunctioning, emissionTestResult, notes, nextInspectionDue, passedFlag, inspectionType, location, documentedBy) VALUES (2, 502, '2025-06-15', 602, 8000, 'low', 31.0, 31.0, 29.5, 29.5, 'fair', 'fair', 1, 'pass', 'Oil topped up', '2025-12-15', 1, 'pre‑season', 'Depot B', 'mark');
INSERT INTO logistics_vehicle_inspections (inspectionId, vehicleId, inspectionDate, inspectorId, mileage, oilLevel, tirePressureFrontLeft, tirePressureFrontRight, tirePressureRearLeft, tirePressureRearRight, brakeCondition, suspensionCondition, lightsFunctioning, emissionTestResult, notes, nextInspectionDue, passedFlag, inspectionType, location, documentedBy) VALUES (3, 503, '2025-07-20', 603, 15000, 'full', 33.0, 33.0, 31.0, 31.0, 'good', 'good', 1, 'fail', 'Brake pads worn', '2025-10-20', 0, 'emergency', 'Depot C', 'sara');

-- Details of broadcast signal pathways
CREATE TABLE broadcast_signal_pathways
(
    pathwayId               INTEGER PRIMARY KEY AUTOINCREMENT,
    transmitterId           INTEGER NOT NULL,
    frequencyMHz            REAL,
    bandwidthMHz            REAL,
    modulationType          TEXT,
    powerWatts              REAL,
    antennaHeightMeters     REAL,
    antennaType             TEXT,
    coverageAreaKm2          REAL,
    latencyMs               REAL,
    jitterMs                REAL,
    packetLossPercent       REAL,
    redundancyMode          TEXT,
    encryptionEnabled       INTEGER,
    encryptionKeyId         TEXT,
    maintenanceSchedule     TEXT,
    lastMaintenanceDate     DATE,
    operatorId              INTEGER,
    status                  TEXT,
    notes                   TEXT,
    geographicRegion        TEXT,
    backupTransmitterId     INTEGER
);

INSERT INTO broadcast_signal_pathways (pathwayId, transmitterId, frequencyMHz, bandwidthMHz, modulationType, powerWatts, antennaHeightMeters, antennaType, coverageAreaKm2, latencyMs, jitterMs, packetLossPercent, redundancyMode, encryptionEnabled, encryptionKeyId, maintenanceSchedule, lastMaintenanceDate, operatorId, status, notes, geographicRegion, backupTransmitterId) VALUES (1, 701, 6000.5, 10, 'OFDM', 5000, 45, 'panel', 1200, 15, 2, 0.1, 'dual', 1, 'EK-001', 'monthly', '2025-04-10', 801, 'active', 'Stable', 'North America', 702);
INSERT INTO broadcast_signal_pathways (pathwayId, transmitterId, frequencyMHz, bandwidthMHz, modulationType, powerWatts, antennaHeightMeters, antennaType, coverageAreaKm2, latencyMs, jitterMs, packetLossPercent, redundancyMode, encryptionEnabled, encryptionKeyId, maintenanceSchedule, lastMaintenanceDate, operatorId, status, notes, geographicRegion, backupTransmitterId) VALUES (2, 702, 6025.0, 12, 'QAM', 4500, 40, 'dish', 1100, 18, 3, 0.15, 'hot_spare', 0, NULL, 'quarterly', '2025-01-20', 802, 'standby', 'Ready for failover', 'North America', 703);
INSERT INTO broadcast_signal_pathways (pathwayId, transmitterId, frequencyMHz, bandwidthMHz, modulationType, powerWatts, antennaHeightMeters, antennaType, coverageAreaKm2, latencyMs, jitterMs, packetLossPercent, redundancyMode, encryptionEnabled, encryptionKeyId, maintenanceSchedule, lastMaintenanceDate, operatorId, status, notes, geographicRegion, backupTransmitterId) VALUES (3, 703, 6050.2, 8, 'ASK', 4800, 42, 'panel', 1150, 16, 2.5, 0.12, 'dual', 1, 'EK-003', 'monthly', '2025-03-05', 803, 'active', 'Minor interference observed', 'North America', 704);

-- Records of art commissions for circuit venues
CREATE TABLE circuit_artwork_commissions
(
    commissionId            INTEGER PRIMARY KEY AUTOINCREMENT,
    artistId                INTEGER NOT NULL,
    artistName              TEXT NOT NULL,
    artworkTitle            TEXT,
    medium                  TEXT,
    dimensions              TEXT,
    installationLocation    TEXT,
    commissionDate          DATE,
    installationDate        DATE,
    cost                    REAL,
    sponsorId               INTEGER,
    sponsorName             TEXT,
    status                  TEXT,
    curatorId               INTEGER,
    notes                   TEXT,
    maintenancePlan         TEXT,
    insurancePolicyNumber   TEXT,
    insuranceProvider       TEXT,
    valuation               REAL,
    contactPhone            TEXT,
    contactEmail            TEXT,
    websiteUrl              TEXT
);

INSERT INTO circuit_artwork_commissions (commissionId, artistId, artistName, artworkTitle, medium, dimensions, installationLocation, commissionDate, installationDate, cost, sponsorId, sponsorName, status, curatorId, notes, maintenancePlan, insurancePolicyNumber, insuranceProvider, valuation, contactPhone, contactEmail, websiteUrl) VALUES (1, 901, 'Alex Rivera', 'Speed Spirit', 'metal', '5x3m', 'Main Grandstand', '2024-09-01', '2024-10-15', 25000, 301, 'FastFoodCo', 'installed', 401, 'Needs quarterly cleaning', 'cleaning quarterly', 'IP-1001', 'SecureInsure', 30000, '5551112222', 'alex@artmail.com', 'http://alexriveraart.com');
INSERT INTO circuit_artwork_commissions (commissionId, artistId, artistName, artworkTitle, medium, dimensions, installationLocation, commissionDate, installationDate, cost, sponsorId, sponsorName, status, curatorId, notes, maintenancePlan, insurancePolicyNumber, insuranceProvider, valuation, contactPhone, contactEmail, websiteUrl) VALUES (2, 902, 'Morgan Lee', 'Racing Pulse', 'glass', '4x2m', 'Pit Lane Entrance', '2025-01-20', '2025-02-28', 18000, 302, 'GearGear', 'in_progress', 402, 'Fragile, handle with care', 'annual inspection', 'IP-1002', 'ArtGuard', 22000, '5553334444', 'morgan@creative.org', 'http://morganleeart.com');
INSERT INTO circuit_artwork_commissions (commissionId, artistId, artistName, artworkTitle, medium, dimensions, installationLocation, commissionDate, installationDate, cost, sponsorId, sponsorName, status, curatorId, notes, maintenancePlan, insurancePolicyNumber, insuranceProvider, valuation, contactPhone, contactEmail, websiteUrl) VALUES (3, 903, 'Samir Patel', 'Velocity Loop', 'sculpture', '6x4m', 'Circuit West Turn', '2025-03-10', '2025-04-05', 30000, 303, 'TechSupply', 'planned', 403, 'Requires structural assessment', 'biannual check', 'IP-1003', 'SecureCover', 35000, '5555556666', 'samir@sculpture.net', 'http://samirpatelsculpture.com');

-- Driver community outreach events
CREATE TABLE driver_community_outreach
(
    outreachId               INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId                 INTEGER NOT NULL,
    driverName               TEXT NOT NULL,
    eventName                TEXT,
    eventDate                DATE,
    venue                    TEXT,
    city                     TEXT,
    state                    TEXT,
    country                  TEXT,
    participantsCount        INTEGER,
    causeBeneficiary         TEXT,
    fundsRaised              REAL,
    mediaCoverageUrl         TEXT,
    socialMediaHashtag       TEXT,
    organizerContact         TEXT,
    volunteerCount           INTEGER,
    hoursSpent               INTEGER,
    feedbackScore            REAL,
    notes                    TEXT,
    createdBy                TEXT,
    approvedBy               TEXT,
    status                   TEXT
);

INSERT INTO driver_community_outreach (outreachId, driverId, driverName, eventName, eventDate, venue, city, state, country, participantsCount, causeBeneficiary, fundsRaised, mediaCoverageUrl, socialMediaHashtag, organizerContact, volunteerCount, hoursSpent, feedbackScore, notes, createdBy, approvedBy, status) VALUES (1, 1001, 'Liam Speed', 'Kids Racing Day', '2025-06-15', 'Community Center', 'Springfield', 'IL', 'USA', 150, 'Youth Sports', 12000, 'http://news.com/kidsracing', '#SpeedForKids', 'john@outreach.org', 20, 30, 4.8, 'Excellent turnout', 'admin', 'manager', 'completed');
INSERT INTO driver_community_outreach (outreachId, driverId, driverName, eventName, eventDate, venue, city, state, country, participantsCount, causeBeneficiary, fundsRaised, mediaCoverageUrl, socialMediaHashtag, organizerContact, volunteerCount, hoursSpent, feedbackScore, notes, createdBy, approvedBy, status) VALUES (2, 1002, 'Emma Rally', 'Environmental Clean‑Up', '2025-07-20', 'River Park', 'Greenville', 'NC', 'USA', 80, 'River Conservation', 8000, 'http://news.com/cleanup', '#CleanTracks', 'sarah@green.org', 15, 25, 4.5, 'Positive community impact', 'admin', 'manager', 'completed');
INSERT INTO driver_community_outreach (outreachId, driverId, driverName, eventName, eventDate, venue, city, state, country, participantsCount, causeBeneficiary, fundsRaised, mediaCoverageUrl, socialMediaHashtag, organizerContact, volunteerCount, hoursSpent, feedbackScore, notes, createdBy, approvedBy, status) VALUES (3, 1003, 'Noah Velocity', 'STEM Workshop', '2025-08-05', 'Tech High School', 'Austin', 'TX', 'USA', 60, 'STEM Education', 5000, 'http://news.com/stemworkshop', '#STEMSpeed', 'mike@edu.org', 10, 20, 4.7, 'Engaging for students', 'admin', 'manager', 'planned');