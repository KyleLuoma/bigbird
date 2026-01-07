-- Volunteer Training Programs for Grand Prix Events
CREATE TABLE volunteer_training_programs
(
    programId            INTEGER PRIMARY KEY AUTOINCREMENT,
    programName          TEXT NOT NULL,
    description          TEXT,
    startDate            DATE,
    endDate              DATE,
    location             TEXT,
    trainerName          TEXT,
    contactEmail         TEXT,
    maxParticipants      INTEGER,
    durationHours        REAL,
    certificationProvided TEXT,
    materialLink         TEXT,
    evaluationScore      REAL,
    programType          TEXT,
    language             TEXT,
    prerequisiteLevel    TEXT,
    createdAt            DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt            DATETIME DEFAULT CURRENT_TIMESTAMP,
    status               TEXT,
    budgetUSD            REAL
);
INSERT INTO volunteer_training_programs (programName, description, startDate, endDate, location, trainerName, contactEmail, maxParticipants, durationHours, certificationProvided, materialLink, evaluationScore, programType, language, prerequisiteLevel, status, budgetUSD) VALUES ('Safety Basics', 'Introductory safety procedures', '2025-02-01', '2025-02-03', 'Melbourne', 'Alex Turner', 'alex.turner@example.com', 150, 8.0, 'Safety Certificate', 'http://example.com/materials/safety', 4.5, 'Online', 'English', 'None', 'Active', 1200.00);
INSERT INTO volunteer_training_programs (programName, description, startDate, endDate, location, trainerName, contactEmail, maxParticipants, durationHours, certificationProvided, materialLink, evaluationScore, programType, language, prerequisiteLevel, status, budgetUSD) VALUES ('Logistics Coordination', 'Advanced logistics handling', '2025-03-10', '2025-03-12', 'Monaco', 'Sofia Martinez', 'sofia.martinez@example.com', 80, 12.5, 'Logistics Cert', 'http://example.com/materials/logistics', 4.8, 'InPerson', 'French', 'Basic', 'Planned', 2500.00);
INSERT INTO volunteer_training_programs (programName, description, startDate, endDate, location, trainerName, contactEmail, maxParticipants, durationHours, certificationProvided, materialLink, evaluationScore, programType, language, prerequisiteLevel, status, budgetUSD) VALUES ('Media Relations', 'Managing media interactions', '2025-04-05', '2025-04-07', 'Singapore', 'Ken Liu', 'ken.liu@example.com', 60, 10.0, 'Media Certificate', 'http://example.com/materials/media', 4.2, 'Hybrid', 'English', 'Intermediate', 'Active', 1800.00);

-- Renewable Energy Sources Used at Circuits
CREATE TABLE renewable_energy_sources
(
    sourceId            INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId           INTEGER,
    sourceType          TEXT,
    capacityMW          REAL,
    installationDate    DATE,
    providerCompany     TEXT,
    contractStartDate   DATE,
    contractEndDate     DATE,
    annualGenerationGWh REAL,
    carbonOffsetTons    REAL,
    status              TEXT,
    maintenanceCycleDays INTEGER,
    lastInspectionDate DATE,
    nextInspectionDue   DATE,
    gridConnectionPoint TEXT,
    region              TEXT,
    subsidyAmountUSD    REAL,
    createdAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    notes               TEXT,
    reliabilityScore    REAL
);
INSERT INTO renewable_energy_sources (circuitId, sourceType, capacityMW, installationDate, providerCompany, contractStartDate, contractEndDate, annualGenerationGWh, carbonOffsetTons, status, maintenanceCycleDays, lastInspectionDate, nextInspectionDue, gridConnectionPoint, region, subsidyAmountUSD, notes, reliabilityScore) VALUES (1, 'Solar', 5.2, '2022-06-15', 'SunPower Inc', '2022-07-01', '2032-07-01', 9.1, 8.4, 'Operational', 180, '2024-01-20', '2024-07-20', 'NodeA', 'Europe', 500000, 'No issues', 0.95);
INSERT INTO renewable_energy_sources (circuitId, sourceType, capacityMW, installationDate, providerCompany, contractStartDate, contractEndDate, annualGenerationGWh, carbonOffsetTons, status, maintenanceCycleDays, lastInspectionDate, nextInspectionDue, gridConnectionPoint, region, subsidyAmountUSD, notes, reliabilityScore) VALUES (2, 'Wind', 12.0, '2020-03-10', 'WindTech Ltd', '2020-04-01', '2030-04-01', 25.3, 22.0, 'Operational', 365, '2023-11-05', '2024-11-05', 'NodeB', 'NorthAmerica', 750000, 'Minor blade wear', 0.89);
INSERT INTO renewable_energy_sources (circuitId, sourceType, capacityMW, installationDate, providerCompany, contractStartDate, contractEndDate, annualGenerationGWh, carbonOffsetTons, status, maintenanceCycleDays, lastInspectionDate, nextInspectionDue, gridConnectionPoint, region, subsidyAmountUSD, notes, reliabilityScore) VALUES (3, 'Hydro', 8.5, '2019-09-22', 'HydroFlow Corp', '2019-10-01', '2029-10-01', 18.7, 16.2, 'Under Maintenance', 730, '2024-02-14', '2025-02-14', 'NodeC', 'Asia', 600000, 'Turbine upgrade pending', 0.78);

-- 3D Models of Circuit Infrastructure
CREATE TABLE circuit_3d_models
(
    modelId               INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId             INTEGER,
    modelName             TEXT,
    fileFormat            TEXT,
    fileSizeMB            REAL,
    version               TEXT,
    createdBy             TEXT,
    creationDate          DATE,
    lastModifiedBy        TEXT,
    lastModifiedDate      DATE,
    polygonCount          INTEGER,
    textureCount          INTEGER,
    uvMapQuality          TEXT,
    levelOfDetail         TEXT,
    approvedStatus        TEXT,
    approvalDate          DATE,
    reviewerName          TEXT,
    usageLicense          TEXT,
    downloadLink          TEXT,
    notes                 TEXT,
    isActive              INTEGER,
    metadataHash          TEXT
);
INSERT INTO circuit_3d_models (circuitId, modelName, fileFormat, fileSizeMB, version, createdBy, creationDate, lastModifiedBy, lastModifiedDate, polygonCount, textureCount, uvMapQuality, levelOfDetail, approvedStatus, approvalDate, reviewerName, usageLicense, downloadLink, notes, isActive, metadataHash) VALUES (1, 'Melbourne_Track_Main', 'OBJ', 125.4, 'v1.2', 'DesignTeamA', '2023-05-01', 'DesignTeamA', '2023-07-15', 850000, 120, 'High', 'LOD2', 'Approved', '2023-08-01', 'Laura Chen', 'CC-BY', 'http://example.com/models/melbourne_main.obj', 'Ready for VR', 1, 'a1b2c3d4');
INSERT INTO circuit_3d_models (circuitId, modelName, fileFormat, fileSizeMB, version, createdBy, creationDate, lastModifiedBy, lastModifiedDate, polygonCount, textureCount, uvMapQuality, levelOfDetail, approvedStatus, approvalDate, reviewerName, usageLicense, downloadLink, notes, isActive, metadataHash) VALUES (2, 'Monaco_PitLane', 'FBX', 87.2, 'v3.0', 'DesignTeamB', '2022-11-20', 'DesignTeamB', '2023-01-10', 620000, 95, 'Medium', 'LOD3', 'Pending', NULL, NULL, 'Internal', 'http://example.com/models/monaco_pit.fbx', 'Awaiting review', 0, 'd4e5f6g7');
INSERT INTO circuit_3d_models (circuitId, modelName, fileFormat, fileSizeMB, version, createdBy, creationDate, lastModifiedBy, lastModifiedDate, polygonCount, textureCount, uvMapQuality, levelOfDetail, approvedStatus, approvalDate, reviewerName, usageLicense, downloadLink, notes, isActive, metadataHash) VALUES (3, 'Singapore_SpectatorStands', 'GLTF', 152.0, 'v2.5', 'DesignTeamC', '2024-02-14', 'DesignTeamC', '2024-03-01', 970000, 140, 'High', 'LOD1', 'Approved', '2024-03-10', 'Mark Patel', 'CC0', 'http://example.com/models/singapore_stands.gltf', 'Used in mobile app', 1, 'h8i9j0k1');

-- Fan Loyalty Reward Catalog
CREATE TABLE fan_loyalty_reward_catalog
(
    rewardId            INTEGER PRIMARY KEY AUTOINCREMENT,
    rewardCode          TEXT,
    rewardName          TEXT,
    description         TEXT,
    pointCost           INTEGER,
    tierLevel           TEXT,
    availabilityStart   DATE,
    availabilityEnd     DATE,
    maxRedemptions      INTEGER,
    currentRedemptions  INTEGER,
    isLimitedEdition   INTEGER,
    imageUrl            TEXT,
    category            TEXT,
    giftable            INTEGER,
    expirationPeriodDays INTEGER,
    createdAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    termsAndConditions  TEXT,
    regionalRestrictions TEXT,
    stockQuantity       INTEGER,
    supplierName        TEXT,
    shippingWeightKg    REAL,
    dimensionsCm        TEXT,
    isActive            INTEGER,
    rewardType          TEXT
);
INSERT INTO fan_loyalty_reward_catalog (rewardCode, rewardName, description, pointCost, tierLevel, availabilityStart, availabilityEnd, maxRedemptions, currentRedemptions, isLimitedEdition, imageUrl, category, giftable, expirationPeriodDays, termsAndConditions, regionalRestrictions, stockQuantity, supplierName, shippingWeightKg, dimensionsCm, isActive, rewardType) VALUES ('GRAND01', 'Grand Prix Hat', 'Official event hat', 5000, 'Gold', '2025-01-01', '2025-12-31', 1000, 250, 0, 'http://example.com/images/hat.png', 'Apparel', 1, 365, 'Non‑transferable', 'None', 750, 'MerchCo', 0.2, '15x15x5', 1, 'Physical');
INSERT INTO fan_loyalty_reward_catalog (rewardCode, rewardName, description, pointCost, tierLevel, availabilityStart, availabilityEnd, maxRedemptions, currentRedemptions, isLimitedEdition, imageUrl, category, giftable, expirationPeriodDays, termsAndConditions, regionalRestrictions, stockQuantity, supplierName, shippingWeightKg, dimensionsCm, isActive, rewardType) VALUES ('VIPPASS', 'VIP Access Pass', 'Backstage access for one race', 20000, 'Platinum', '2025-03-01', '2025-03-15', 50, 10, 1, 'http://example.com/images/vip.png', 'Experience', 0, 30, 'Invite only', 'EU', 50, 'EventOps', 0.0, 'N/A', 1, 'Digital');
INSERT INTO fan_loyalty_reward_catalog (rewardCode, rewardName, description, pointCost, tierLevel, availabilityStart, availabilityEnd, maxRedemptions, currentRedemptions, isLimitedEdition, imageUrl, category, giftable, expirationPeriodDays, termsAndConditions, regionalRestrictions, stockQuantity, supplierName, shippingWeightKg, dimensionsCm, isActive, rewardType) VALUES ('DIGI10', '10% Discount Code', 'Online store discount', 3000, 'Silver', '2025-01-01', '2025-12-31', NULL, 0, 0, 'http://example.com/images/discount.png', 'Digital', 1, 180, 'One use per account', 'None', NULL, 'E‑Commerce', 0.0, 'N/A', 1, 'Digital');

-- Official Accreditation Documents for Race Personnel
CREATE TABLE official_accreditation_documents
(
    accreditationId     INTEGER PRIMARY KEY AUTOINCREMENT,
    officialId          INTEGER,
    documentType        TEXT,
    documentNumber      TEXT,
    issueDate           DATE,
    expiryDate          DATE,
    issuingAuthority    TEXT,
    verificationStatus  TEXT,
    verifiedBy          TEXT,
    verificationDate    DATE,
    documentFilePath    TEXT,
    notes               TEXT,
    isActive            INTEGER,
    renewalRequired     INTEGER,
    renewalNoticeSent   DATE,
    securityClearanceLevel INTEGER,
    confidentialityLevel TEXT,
    attachedImagesCount INTEGER,
    lastAccessed        DATETIME,
    createdAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt           DATETIME DEFAULT CURRENT_TIMESTAMP,
    digitalSignature    TEXT,
    hashValue           TEXT
);
INSERT INTO official_accreditation_documents (officialId, documentType, documentNumber, issueDate, expiryDate, issuingAuthority, verificationStatus, verifiedBy, verificationDate, documentFilePath, notes, isActive, renewalRequired, renewalNoticeSent, securityClearanceLevel, confidentialityLevel, attachedImagesCount, lastAccessed, digitalSignature, hashValue) VALUES (101, 'Passport', 'P1234567', '2022-01-15', '2032-01-14', 'Government', 'Verified', 'AdminUser', '2022-01-20', '/files/passport_101.pdf', 'Verified on arrival', 1, 1, '2029-12-01', 3, 'Confidential', 2, '2024-11-05 10:23:00', 'sig101', 'hash101');
INSERT INTO official_accreditation_documents (officialId, documentType, documentNumber, issueDate, expiryDate, issuingAuthority, verificationStatus, verifiedBy, verificationDate, documentFilePath, notes, isActive, renewalRequired, renewalNoticeSent, securityClearanceLevel, confidentialityLevel, attachedImagesCount, lastAccessed, digitalSignature, hashValue) VALUES (102, 'DriverLicense', 'DL987654', '2021-06-01', '2026-05-31', 'StateDMV', 'Pending', NULL, NULL, '/files/dl_102.pdf', 'Pending verification', 0, 1, NULL, 2, 'Restricted', 1, NULL, NULL, NULL);
INSERT INTO official_accreditation_documents (officialId, documentType, documentNumber, issueDate, expiryDate, issuingAuthority, verificationStatus, verifiedBy, verificationDate, documentFilePath, notes, isActive, renewalRequired, renewalNoticeSent, securityClearanceLevel, confidentialityLevel, attachedImagesCount, lastAccessed, digitalSignature, hashValue) VALUES (103, 'SecurityClearance', 'SC-2025-09', '2025-02-20', '2028-02-19', 'SecurityAgency', 'Verified', 'SecAdmin', '2025-02-21', '/files/sc_103.pdf', 'Clearance for pit lane', 1, 0, NULL, 5, 'TopSecret', 3, '2025-04-10 14:05:00', 'sig103', 'hash103');

-- Hospitality Event Budget Tracking
CREATE TABLE hospitality_event_budget
(
    budgetId                INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId                 INTEGER,
    fiscalYear              INTEGER,
    totalAllocatedUSD       REAL,
    totalSpentUSD           REAL,
    remainingBalanceUSD     REAL,
    approvedBy              TEXT,
    approvalDate            DATE,
    financeOwner            TEXT,
    costCenterCode          TEXT,
    cateringBudgetUSD       REAL,
    entertainmentBudgetUSD  REAL,
    decorBudgetUSD          REAL,
    mediaBudgetUSD          REAL,
    transportationBudgetUSD REAL,
    contingencyReserveUSD   REAL,
    notes                   TEXT,
    createdAt               DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt               DATETIME DEFAULT CURRENT_TIMESTAMP,
    budgetStatus            TEXT,
    lastReviewedBy          TEXT,
    lastReviewDate          DATE,
    variancePercentage      REAL
);
INSERT INTO hospitality_event_budget (eventId, fiscalYear, totalAllocatedUSD, totalSpentUSD, remainingBalanceUSD, approvedBy, approvalDate, financeOwner, costCenterCode, cateringBudgetUSD, entertainmentBudgetUSD, decorBudgetUSD, mediaBudgetUSD, transportationBudgetUSD, contingencyReserveUSD, notes, budgetStatus, lastReviewedBy, lastReviewDate, variancePercentage) VALUES (201, 2025, 500000, 215000, 285000, 'CFO_Jane', '2024-12-01', 'FinanceTeamA', 'CC1001', 120000, 80000, 50000, 40000, 30000, 20000, 'Initial allocation', 'Open', 'FinanceLead', '2025-01-15', 0.0);
INSERT INTO hospitality_event_budget (eventId, fiscalYear, totalAllocatedUSD, totalSpentUSD, remainingBalanceUSD, approvedBy, approvalDate, financeOwner, costCenterCode, cateringBudgetUSD, entertainmentBudgetUSD, decorBudgetUSD, mediaBudgetUSD, transportationBudgetUSD, contingencyReserveUSD, notes, budgetStatus, lastReviewedBy, lastReviewDate, variancePercentage) VALUES (202, 2025, 750000, 460000, 290000, 'CFO_Jane', '2024-12-10', 'FinanceTeamB', 'CC1002', 200000, 150000, 80000, 70000, 50000, 30000, 'Mid‑year update', 'Open', 'FinanceLead', '2025-06-30', 2.5);
INSERT INTO hospitality_event_budget (eventId, fiscalYear, totalAllocatedUSD, totalSpentUSD, remainingBalanceUSD, approvedBy, approvalDate, financeOwner, costCenterCode, cateringBudgetUSD, entertainmentBudgetUSD, decorBudgetUSD, mediaBudgetUSD, transportationBudgetUSD, contingencyReserveUSD, notes, budgetStatus, lastReviewedBy, lastReviewDate, variancePercentage) VALUES (203, 2025, 300000, 295000, 5000, 'CFO_Jane', '2024-12-20', 'FinanceTeamC', 'CC1003', 100000, 60000, 30000, 25000, 40000, 15000, 'Near final spend', 'Closed', 'FinanceLead', '2025-11-20', -1.7);

-- Race Network Infrastructure Inventory
CREATE TABLE race_network_infrastructure
(
    deviceId               INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId              INTEGER,
    deviceType             TEXT,
    manufacturer           TEXT,
    modelNumber            TEXT,
    serialNumber           TEXT,
    installationDate       DATE,
    firmwareVersion        TEXT,
    ipAddress              TEXT,
    macAddress             TEXT,
    subnetMask             TEXT,
    gateway                TEXT,
    macLocation            TEXT,
    status                 TEXT,
    lastMaintenanceDate    DATE,
    nextMaintenanceDue     DATE,
    uptimeHours            REAL,
    bandwidthGbps          REAL,
    powerSupplyType        TEXT,
    redundancyLevel        TEXT,
    notes                  TEXT,
    createdAt              DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt              DATETIME DEFAULT CURRENT_TIMESTAMP,
    decommissionDate       DATE,
    disposalMethod         TEXT
);
INSERT INTO race_network_infrastructure (circuitId, deviceType, manufacturer, modelNumber, serialNumber, installationDate, firmwareVersion, ipAddress, macAddress, subnetMask, gateway, macLocation, status, lastMaintenanceDate, nextMaintenanceDue, uptimeHours, bandwidthGbps, powerSupplyType, redundancyLevel, notes, decommissionDate, disposalMethod) VALUES (1, 'Router', 'Cisco', 'ISR4451', 'SN001122', '2020-03-01', '16.9.3', '192.168.10.1', '00:1A:2B:3C:4D:5E', '255.255.255.0', '192.168.10.254', 'ControlRoom', 'Operational', '2024-10-01', '2025-10-01', 25000.5, 10.0, 'DualPower', 'N+1', 'Core network router', NULL, NULL);
INSERT INTO race_network_infrastructure (circuitId, deviceType, manufacturer, modelNumber, serialNumber, installationDate, firmwareVersion, ipAddress, macAddress, subnetMask, gateway, macLocation, status, lastMaintenanceDate, nextMaintenanceDue, uptimeHours, bandwidthGbps, powerSupplyType, redundancyLevel, notes, decommissionDate, disposalMethod) VALUES (2, 'Switch', 'Juniper', 'EX4300', 'SN003344', '2021-07-15', '18.2R3', '192.168.20.5', '00:1B:2C:3D:4E:5F', '255.255.255.0', '192.168.20.1', 'PitLane', 'Operational', '2024-09-15', '2025-09-15', 18000.0, 1.0, 'PoE', 'N+2', 'Aggregates pit lane cameras', NULL, NULL);
INSERT INTO race_network_infrastructure (circuitId, deviceType, manufacturer, modelNumber, serialNumber, installationDate, firmwareVersion, ipAddress, macAddress, subnetMask, gateway, macLocation, status, lastMaintenanceDate, nextMaintenanceDue, uptimeHours, bandwidthGbps, powerSupplyType, redundancyLevel, notes, decommissionDate, disposalMethod) VALUES (3, 'AccessPoint', 'Aruba', 'AP-315', 'SN005566', '2022-11-05', '8.6.1', '192.168.30.20', '00:1C:2D:3E:4F:5A', '255.255.255.0', '192.168.30.1', 'Grandstand', 'Degraded', '2024-08-01', '2025-02-01', 9000.3, 0.3, 'DC', 'N+1', 'Intermittent signal issues', '2025-01-01', 'Recycle');

-- Driver Licensing Authorities Registry
CREATE TABLE driver_licensing_authorities
(
    authorityId          INTEGER PRIMARY KEY AUTOINCREMENT,
    countryCode          TEXT,
    authorityName        TEXT,
    websiteUrl           TEXT,
    contactPhone         TEXT,
    contactEmail         TEXT,
    addressLine1         TEXT,
    addressLine2         TEXT,
    city                 TEXT,
    stateProvince        TEXT,
    postalCode           TEXT,
    establishedYear      INTEGER,
    jurisdictionScope    TEXT,
    complianceLevel      TEXT,
    lastAuditDate        DATE,
    auditScore           REAL,
    activeStatus         INTEGER,
    notes                TEXT,
    createdAt            DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt            DATETIME DEFAULT CURRENT_TIMESTAMP,
    dataSource           TEXT,
    legalFramework       TEXT,
    internationalRecog   TEXT,
    publicReportingURL   TEXT,
    responsibleOfficer   TEXT,
    officerContactPhone  TEXT,
    officerContactEmail  TEXT,
    numberOfIssuedLicenses INTEGER,
    expirationPolicy     TEXT
);
INSERT INTO driver_licensing_authorities (countryCode, authorityName, websiteUrl, contactPhone, contactEmail, addressLine1, addressLine2, city, stateProvince, postalCode, establishedYear, jurisdictionScope, complianceLevel, lastAuditDate, auditScore, activeStatus, notes, dataSource, legalFramework, internationalRecog, publicReportingURL, responsibleOfficer, officerContactPhone, officerContactEmail, numberOfIssuedLicenses, expirationPolicy) VALUES ('GB', 'UK Drivers Licensing Agency', 'http://ukdla.gov', '+44 20 1234 5678', 'info@ukdla.gov', '10 Downing St', '', 'London', 'England', 'SW1A 2AA', 1910, 'National', 'High', '2023-06-15', 96.5, 1, 'Member of EU driving standards', 'GovData', 'Road Safety Act', 'EU', 'http://ukdla.gov/report', 'John Smith', '+44 20 8765 4321', 'john.smith@ukdla.gov', 4523000, '5 years');
INSERT INTO driver_licensing_authorities (countryCode, authorityName, websiteUrl, contactPhone, contactEmail, addressLine1, addressLine2, city, stateProvince, postalCode, establishedYear, jurisdictionScope, complianceLevel, lastAuditDate, auditScore, activeStatus, notes, dataSource, legalFramework, internationalRecog, publicReportingURL, responsibleOfficer, officerContactPhone, officerContactEmail, numberOfIssuedLicenses, expirationPolicy) VALUES ('AU', 'Australian Transport Authority', 'http://ata.gov.au', '+61 2 9876 5432', 'contact@ata.gov.au', '1 Martin Pl', '', 'Canberra', 'ACT', '2600', 1995, 'National', 'Medium', '2022-12-01', 88.0, 1, 'Cooperates with NZ', 'OpenDataAU', 'Transport Act', 'Bilateral', 'http://ata.gov.au/report', 'Emma Brown', '+61 2 1234 5678', 'emma.brown@ata.gov.au', 2104500, '3 years');
INSERT INTO driver_licensing_authorities (countryCode, authorityName, websiteUrl, contactPhone, contactEmail, addressLine1, addressLine2, city, stateProvince, postalCode, establishedYear, jurisdictionScope, complianceLevel, lastAuditDate, auditScore, activeStatus, notes, dataSource, legalFramework, internationalRecog, publicReportingURL, responsibleOfficer, officerContactPhone, officerContactEmail, numberOfIssuedLicenses, expirationPolicy) VALUES ('JP', 'Japan Road Traffic Authority', 'http://jta.jp', '+81 3 2345 6789', 'info@jta.jp', '2-1-1 Kasumigaseki', '', 'Tokyo', '', '100-0013', 1947, 'National', 'High', '2024-03-20', 92.3, 1, 'Member of ICA', 'JPNOpenData', 'Road Traffic Law', 'International', 'http://jta.jp/report', 'Hiro Tanaka', '+81 3 9876 5432', 'hiro.tanaka@jta.jp', 6542000, '10 years');

-- Grand Prix Media Analytics Summary
CREATE TABLE grand_prix_media_analytics
(
    analyticsId               INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId                    INTEGER,
    platform                  TEXT,
    impressions               INTEGER,
    uniqueViewers             INTEGER,
    avgWatchTimeSeconds       REAL,
    peakConcurrentViewers     INTEGER,
    clickThroughRatePercent   REAL,
    engagementScore           REAL,
    sentimentScore            REAL,
    negativeComments          INTEGER,
    positiveComments          INTEGER,
    shareCount                INTEGER,
    hashtagUsageCount         INTEGER,
    geographicRegion          TEXT,
    deviceType                TEXT,
    browserFamily             TEXT,
    osFamily                  TEXT,
    streamQualityAverage      TEXT,
    adRevenueUSD              REAL,
    sponsorExposureCount      INTEGER,
    dataCollectedAt           DATETIME,
    createdAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    notes                     TEXT,
    anomalyFlag               INTEGER
);
INSERT INTO grand_prix_media_analytics (raceId, platform, impressions, uniqueViewers, avgWatchTimeSeconds, peakConcurrentViewers, clickThroughRatePercent, engagementScore, sentimentScore, negativeComments, positiveComments, shareCount, hashtagUsageCount, geographicRegion, deviceType, browserFamily, osFamily, streamQualityAverage, adRevenueUSD, sponsorExposureCount, dataCollectedAt, notes, anomalyFlag) VALUES (1001, 'YouTube', 4520000, 820000, 210.5, 150000, 4.2, 78.5, 0.85, 340, 1270, 5600, 8450, 'Europe', 'Mobile', 'Chrome', 'Android', '1080p', 125000.00, 320, '2025-04-20 12:00:00', 'Strong P5 performance', 0);
INSERT INTO grand_prix_media_analytics (raceId, platform, impressions, uniqueViewers, avgWatchTimeSeconds, peakConcurrentViewers, clickThroughRatePercent, engagementScore, sentimentScore, negativeComments, positiveComments, shareCount, hashtagUsageCount, geographicRegion, deviceType, browserFamily, osFamily, streamQualityAverage, adRevenueUSD, sponsorExposureCount, dataCollectedAt, notes, anomalyFlag) VALUES (1002, 'Twitch', 1780000, 410000, 185.0, 90000, 3.8, 71.2, 0.78, 210, 950, 3400, 4100, 'NorthAmerica', 'Desktop', 'Firefox', 'Windows', '720p', 47000.00, 210, '2025-04-21 13:30:00', 'Higher engagement during qualifying', 0);
INSERT INTO grand_prix_media_analytics (raceId, platform, impressions, uniqueViewers, avgWatchTimeSeconds, peakConcurrentViewers, clickThroughRatePercent, engagementScore, sentimentScore, negativeComments, positiveComments, shareCount, hashtagUsageCount, geographicRegion, deviceType, browserFamily, osFamily, streamQualityAverage, adRevenueUSD, sponsorExposureCount, dataCollectedAt, notes, anomalyFlag) VALUES (1003, 'Facebook', 3250000, 610000, 172.3, 120000, 2.9, 65.4, 0.71, 480, 1100, 4150, 6200, 'Asia', 'Tablet', 'Safari', 'iOS', '1080p', 89000.00, 285, '2025-04-22 15:45:00', 'Spike in share count after race finish', 0);

-- Waste Management Logs for Event Venues
CREATE TABLE waste_management_logs
(
    logId                     INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId                   INTEGER,
    dateRecorded              DATE,
    wasteType                 TEXT,
    quantityKg                REAL,
    collectionMethod          TEXT,
    contractorName            TEXT,
    contractorContact         TEXT,
    disposalFacility          TEXT,
    disposalMethod            TEXT,
    recycledPercentage        REAL,
    hazardousFlag             INTEGER,
    notes                     TEXT,
    createdAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    inspectionPassed          INTEGER,
    inspectorName             TEXT,
    inspectionDate            DATE,
    complianceScore           REAL,
    correctiveActionRequired  INTEGER,
    correctiveActionDetails   TEXT,
    nextScheduledCollection   DATE,
    temperatureCelsius        REAL,
    humidityPercent           REAL,
    windSpeedKph              REAL
);
INSERT INTO waste_management_logs (venueId, dateRecorded, wasteType, quantityKg, collectionMethod, contractorName, contractorContact, disposalFacility, disposalMethod, recycledPercentage, hazardousFlag, notes, inspectionPassed, inspectorName, inspectionDate, complianceScore, correctiveActionRequired, correctiveActionDetails, nextScheduledCollection, temperatureCelsius, humidityPercent, windSpeedKph) VALUES (10, '2025-03-15', 'General', 12500.5, 'Truck', 'EcoWaste Ltd', '+44 20 5555 1234', 'GreenLand Facility', 'Landfill', 12.3, 0, 'Routine collection', 1, 'Laura Green', '2025-03-16', 98.7, 0, NULL, '2025-04-01', 22.5, 45.0, 12.3);
INSERT INTO waste_management_logs (venueId, dateRecorded, wasteType, quantityKg, collectionMethod, contractorName, contractorContact, disposalFacility, disposalMethod, recycledPercentage, hazardousFlag, notes, inspectionPassed, inspectorName, inspectionDate, complianceScore, correctiveActionRequired, correctiveActionDetails, nextScheduledCollection, temperatureCelsius, humidityPercent, windSpeedKph) VALUES (11, '2025-03-17', 'Plastic', 3400.0, 'Bin', 'CleanSort Inc', '+61 2 7777 8888', 'Recycle Center', 'Mechanical Recycling', 85.0, 0, 'High recycling rate', 1, 'Mark Lee', '2025-03-18', 99.2, 0, NULL, '2025-04-05', 24.0, 50.0, 8.0);
INSERT INTO waste_management_logs (venueId, dateRecorded, wasteType, quantityKg, collectionMethod, contractorName, contractorContact, disposalFacility, disposalMethod, recycledPercentage, hazardousFlag, notes, inspectionPassed, inspectorName, inspectionDate, complianceScore, correctiveActionRequired, correctiveActionDetails, nextScheduledCollection, temperatureCelsius, humidityPercent, windSpeedKph) VALUES (12, '2025-03-20', 'Hazardous', 120.7, 'Specialized', 'SafeEnv Services', '+81 3 9999 0000', 'HazMat Facility', 'Incineration', 0.0, 1, 'Battery collection', 0, 'Sofia Tan', '2025-03-21', 73.4, 1, 'Require proper labeling', '2025-04-10', 19.8, 55.0, 15.2);

-- Environmental Noise Readings Around Circuits
CREATE TABLE environmental_noise_readings
(
    readingId               INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId               INTEGER,
    timestamp               DATETIME,
    decibelLevelA           REAL,
    decibelLevelC           REAL,
    frequencyHz             REAL,
    measurementDeviceId     TEXT,
    operatorName            TEXT,
    weatherCondition        TEXT,
    temperatureCelsius      REAL,
    humidityPercent         REAL,
    windSpeedKph            REAL,
    windDirectionDegrees    REAL,
    comments                TEXT,
    calibrated              INTEGER,
    calibrationDate         DATE,
    calibrationTechnician   TEXT,
    sourceType              TEXT,
    isPeak                  INTEGER,
    alertFlag               INTEGER,
    createdAt               DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt               DATETIME DEFAULT CURRENT_TIMESTAMP,
    latitude                REAL,
    longitude               REAL,
    measurementMethod       TEXT,
    noiseCategory           TEXT,
    complianceThresholdDb   REAL,
    exceededDurationSeconds INTEGER
);
INSERT INTO environmental_noise_readings (circuitId, timestamp, decibelLevelA, decibelLevelC, frequencyHz, measurementDeviceId, operatorName, weatherCondition, temperatureCelsius, humidityPercent, windSpeedKph, windDirectionDegrees, comments, calibrated, calibrationDate, calibrationTechnician, sourceType, isPeak, alertFlag, latitude, longitude, measurementMethod, noiseCategory, complianceThresholdDb, exceededDurationSeconds) VALUES (1, '2025-04-10 14:30:00', 92.5, 89.0, 1000, 'ND-1001', 'Mike Ross', 'Sunny', 28.0, 40.0, 5.0, 180, 'Normal operation', 1, '2025-01-15', 'Anna Lee', 'Microphone', 0, 0, -37.8136, 144.9631, 'Fast', 'Environmental', 95.0, 0);
INSERT INTO environmental_noise_readings (circuitId, timestamp, decibelLevelA, decibelLevelC, frequencyHz, measurementDeviceId, operatorName, weatherCondition, temperatureCelsius, humidityPercent, windSpeedKph, windDirectionDegrees, comments, calibrated, calibrationDate, calibrationTechnician, sourceType, isPeak, alertFlag, latitude, longitude, measurementMethod, noiseCategory, complianceThresholdDb, exceededDurationSeconds) VALUES (2, '2025-04-10 15:45:00', 101.2, 98.5, 1500, 'ND-2002', 'Laura Kim', 'Cloudy', 22.5, 70.0, 12.0, 90, 'Peak during qualifying', 1, '2025-02-20', 'John Doe', 'SoundMeter', 1, 1, 43.7384, 7.4246, 'Detailed', 'Event', 100.0, 35);
INSERT INTO environmental_noise_readings (circuitId, timestamp, decibelLevelA, decibelLevelC, frequencyHz, measurementDeviceId, operatorName, weatherCondition, temperatureCelsius, humidityPercent, windSpeedKph, windDirectionDegrees, comments, calibrated, calibrationDate, calibrationTechnician, sourceType, isPeak, alertFlag, latitude, longitude, measurementMethod, noiseCategory, complianceThresholdDb, exceededDurationSeconds) VALUES (3, '2025-04-10 16:20:00', 85.0, 82.3, 800, 'ND-3003', 'Sam Patel', 'Rain', 19.0, 85.0, 8.0, 270, 'Reduced traffic', 1, '2025-03-05', 'Emily Zhang', 'Microphone', 0, 0, 35.6895, 139.6917, 'Fast', 'Environmental', 90.0, 0);