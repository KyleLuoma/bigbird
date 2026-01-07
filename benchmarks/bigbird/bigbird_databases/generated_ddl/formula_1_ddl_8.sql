-- Post race surveys capturing fan feedback
CREATE TABLE post_race_surveys (
    surveyId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventName TEXT NOT NULL,
    eventDate DATE NOT NULL,
    location TEXT,
    fanId INTEGER,
    age INTEGER,
    gender TEXT,
    satisfactionScore INTEGER,
    entertainmentScore INTEGER,
    safetyScore INTEGER,
    foodScore INTEGER,
    merchandiseScore INTEGER,
    likelihoodToRecommend INTEGER,
    comments TEXT,
    emailOptIn BOOLEAN,
    deviceUsed TEXT,
    timeTakenMinutes INTEGER,
    responseChannel TEXT,
    surveyVersion TEXT,
    createdAt DATE,
    updatedAt DATE
);

INSERT INTO post_race_surveys (eventName, eventDate, location, fanId, age, gender, satisfactionScore, entertainmentScore, safetyScore, foodScore, merchandiseScore, likelihoodToRecommend, comments, emailOptIn, deviceUsed, timeTakenMinutes, responseChannel, surveyVersion, createdAt, updatedAt) VALUES ('Grand Prix 2025', '2025-07-12', 'Monaco', 101, 34, 'Male', 9, 8, 10, 7, 8, 9, 'Great atmosphere and organization', 1, 'Mobile', 12, 'Online', 'v1', '2025-07-13', '2025-07-13');
INSERT INTO post_race_surveys (eventName, eventDate, location, fanId, age, gender, satisfactionScore, entertainmentScore, safetyScore, foodScore, merchandiseScore, likelihoodToRecommend, comments, emailOptIn, deviceUsed, timeTakenMinutes, responseChannel, surveyVersion, createdAt, updatedAt) VALUES ('Grand Prix 2025', '2025-07-12', 'Monaco', 102, 27, 'Female', 8, 9, 9, 8, 9, 8, 'Loved the race but food queues were long', 0, 'Desktop', 10, 'Email', 'v1', '2025-07-13', '2025-07-13');
INSERT INTO post_race_surveys (eventName, eventDate, location, fanId, age, gender, satisfactionScore, entertainmentScore, safetyScore, foodScore, merchandiseScore, likelihoodToRecommend, comments, emailOptIn, deviceUsed, timeTakenMinutes, responseChannel, surveyVersion, createdAt, updatedAt) VALUES ('Grand Prix 2025', '2025-07-12', 'Monaco', 103, 45, 'Male', 7, 7, 8, 6, 7, 6, 'Could improve seating comfort', 1, 'Tablet', 15, 'SMS', 'v1', '2025-07-13', '2025-07-13');

-- Equipment maintenance schedule for race facilities
CREATE TABLE equipment_maintenance_schedule (
    scheduleId INTEGER PRIMARY KEY AUTOINCREMENT,
    equipmentType TEXT NOT NULL,
    serialNumber TEXT NOT NULL,
    manufacturer TEXT,
    purchaseDate DATE,
    warrantyExpiration DATE,
    lastServiceDate DATE,
    nextServiceDue DATE,
    serviceIntervalDays INTEGER,
    serviceProvider TEXT,
    technicianName TEXT,
    technicianContact TEXT,
    maintenanceNotes TEXT,
    status TEXT,
    location TEXT,
    assignedTeam TEXT,
    priorityLevel INTEGER,
    cost REAL,
    createdBy TEXT,
    createdAt DATE,
    updatedBy TEXT,
    updatedAt DATE
);

INSERT INTO equipment_maintenance_schedule (equipmentType, serialNumber, manufacturer, purchaseDate, warrantyExpiration, lastServiceDate, nextServiceDue, serviceIntervalDays, serviceProvider, technicianName, technicianContact, maintenanceNotes, status, location, assignedTeam, priorityLevel, cost, createdBy, createdAt, updatedBy, updatedAt) VALUES ('TimingGate', 'TG-00123', 'TimingTech', '2020-03-15', '2025-03-15', '2023-09-01', '2024-09-01', 365, 'TechServ', 'John Doe', '555-1234', 'Calibration required', 'Pending', 'Sector A', 'Team Alpha', 1, 2500.00, 'admin', '2023-09-02', 'admin', '2023-09-02');
INSERT INTO equipment_maintenance_schedule (equipmentType, serialNumber, manufacturer, purchaseDate, warrantyExpiration, lastServiceDate, nextServiceDue, serviceIntervalDays, serviceProvider, technicianName, technicianContact, maintenanceNotes, status, location, assignedTeam, priorityLevel, cost, createdBy, createdAt, updatedBy, updatedAt) VALUES ('PitLaneLight', 'PL-04567', 'LightWorks', '2019-06-20', '2024-06-20', '2023-08-15', '2024-08-15', 180, 'BrightFix', 'Anna Smith', '555-5678', 'LED replacement', 'Completed', 'Pit Lane', 'Team Beta', 2, 1200.00, 'admin', '2023-08-16', 'admin', '2023-08-16');
INSERT INTO equipment_maintenance_schedule (equipmentType, serialNumber, manufacturer, purchaseDate, warrantyExpiration, lastServiceDate, nextServiceDue, serviceIntervalDays, serviceProvider, technicianName, technicianContact, maintenanceNotes, status, location, assignedTeam, priorityLevel, cost, createdBy, createdAt, updatedBy, updatedAt) VALUES ('FireExtinguisher', 'FE-09876', 'SafetyCorp', '2018-01-10', '2023-01-10', '2023-01-05', '2024-01-05', 365, 'SafeGuard', 'Mike Lee', '555-9012', 'Pressure test passed', 'Pending', 'Garage', 'Team Gamma', 3, 300.00, 'admin', '2023-01-06', 'admin', '2023-01-06');

-- Broadcast technology inventory
CREATE TABLE broadcast_technology_inventory (
    inventoryId INTEGER PRIMARY KEY AUTOINCREMENT,
    techCategory TEXT NOT NULL,
    modelNumber TEXT NOT NULL,
    firmwareVersion TEXT,
    purchaseDate DATE,
    depreciationYears INTEGER,
    currentStatus TEXT,
    location TEXT,
    assignedChannel TEXT,
    bandwidthMbps REAL,
    powerConsumptionWatts REAL,
    maintenanceCycleDays INTEGER,
    lastCalibrationDate DATE,
    nextCalibrationDue DATE,
    vendorName TEXT,
    warrantyEnd DATE,
    supportContact TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    createdBy TEXT,
    updatedBy TEXT
);

INSERT INTO broadcast_technology_inventory (techCategory, modelNumber, firmwareVersion, purchaseDate, depreciationYears, currentStatus, location, assignedChannel, bandwidthMbps, powerConsumptionWatts, maintenanceCycleDays, lastCalibrationDate, nextCalibrationDue, vendorName, warrantyEnd, supportContact, notes, createdAt, updatedAt, createdBy, updatedBy) VALUES ('Camera', 'CAM-XYZ100', 'v2.3', '2021-04-12', 5, 'Active', 'Studio A', 'Channel 1', 150.5, 250.0, 180, '2023-07-01', '2024-01-01', 'MediaEquip', '2026-04-12', 'support@mediaequip.com', '4K UltraHD camera', '2023-07-02', '2023-07-02', 'admin', 'admin');
INSERT INTO broadcast_technology_inventory (techCategory, modelNumber, firmwareVersion, purchaseDate, depreciationYears, currentStatus, location, assignedChannel, bandwidthMbps, powerConsumptionWatts, maintenanceCycleDays, lastCalibrationDate, nextCalibrationDue, vendorName, warrantyEnd, supportContact, notes, createdAt, updatedAt, createdBy, updatedBy) VALUES ('AudioMixer', 'MIX-800', 'v1.9', '2020-09-20', 6, 'Active', 'Control Room', 'Channel 2', 100.0, 150.0, 365, '2023-06-15', '2024-06-15', 'SoundPro', '2025-09-20', 'help@soundpro.com', 'Digital mixing console', '2023-06-16', '2023-06-16', 'admin', 'admin');
INSERT INTO broadcast_technology_inventory (techCategory, modelNumber, firmwareVersion, purchaseDate, depreciationYears, currentStatus, location, assignedChannel, bandwidthMbps, powerConsumptionWatts, maintenanceCycleDays, lastCalibrationDate, nextCalibrationDue, vendorName, warrantyEnd, supportContact, notes, createdAt, updatedAt, createdBy, updatedBy) VALUES ('Encoder', 'ENC-5000', 'v3.0', '2022-01-05', 4, 'Spare', 'Warehouse', 'Channel 3', 200.0, 300.0, 730, '2023-01-10', '2025-01-10', 'EncodeIt', '2026-01-05', 'tech@encodeit.com', 'High bitrate encoder', '2023-01-11', '2023-01-11', 'admin', 'admin');

-- Sponsor activation events
CREATE TABLE sponsor_activation_events (
    activationId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorName TEXT NOT NULL,
    eventName TEXT NOT NULL,
    eventDate DATE NOT NULL,
    venue TEXT,
    targetAudience TEXT,
    activationType TEXT,
    budget REAL,
    expectedReach INTEGER,
    actualReach INTEGER,
    engagementScore INTEGER,
    qrcodesScanned INTEGER,
    socialMediaMentions INTEGER,
    onsiteStaff INTEGER,
    feedbackScore INTEGER,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    createdBy TEXT,
    approvedBy TEXT,
    status TEXT,
    contractReference TEXT
);

INSERT INTO sponsor_activation_events (sponsorName, eventName, eventDate, venue, targetAudience, activationType, budget, expectedReach, actualReach, engagementScore, qrcodesScanned, socialMediaMentions, onsiteStaff, feedbackScore, notes, createdAt, updatedAt, createdBy, approvedBy, status, contractReference) VALUES ('SpeedFuel', 'SpeedFuel Pit Stop Challenge', '2025-06-20', 'Pit Lane', 'Fans', 'Interactive', 50000.00, 20000, 18500, 85, 1500, 320, 25, 90, 'High participation rate', '2025-06-01', '2025-06-15', 'marketing', 'director', 'Completed', 'CF-2025-001');
INSERT INTO sponsor_activation_events (sponsorName, eventName, eventDate, venue, targetAudience, activationType, budget, expectedReach, actualReach, engagementScore, qrcodesScanned, socialMediaMentions, onsiteStaff, feedbackScore, notes, createdAt, updatedAt, createdBy, approvedBy, status, contractReference) VALUES ('TurboTech', 'TurboTech VR Experience', '2025-07-10', 'Fan Zone', 'Young Adults', 'Experience', 75000.00, 30000, 29500, 92, 2100, 450, 30, 95, 'VR setup ran smoothly', '2025-06-20', '2025-07-05', 'events', 'director', 'Ongoing', 'CF-2025-002');
INSERT INTO sponsor_activation_events (sponsorName, eventName, eventDate, venue, targetAudience, activationType, budget, expectedReach, actualReach, engagementScore, qrcodesScanned, socialMediaMentions, onsiteStaff, feedbackScore, notes, createdAt, updatedAt, createdBy, approvedBy, status, contractReference) VALUES ('EcoDrive', 'EcoDrive Green Parade', '2025-08-15', 'Main Plaza', 'General Public', 'Showcase', 60000.00, 25000, 24000, 88, 1800, 380, 28, 89, 'Positive feedback on sustainability messaging', '2025-07-10', '2025-07-30', 'sustainability', 'director', 'Planned', 'CF-2025-003');

-- Official certification records
CREATE TABLE official_certification_records (
    certId INTEGER PRIMARY KEY AUTOINCREMENT,
    officialName TEXT NOT NULL,
    role TEXT,
    certificationBody TEXT,
    certificationNumber TEXT,
    issueDate DATE,
    expiryDate DATE,
    renewalReminderDate DATE,
    status TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    createdBy TEXT,
    updatedBy TEXT,
    requiredTrainingHours INTEGER,
    completedTrainingHours INTEGER,
    lastTrainingDate DATE,
    complianceScore INTEGER,
    attachedDocumentPath TEXT,
    digitalSignature TEXT,
    auditTrail TEXT
);

INSERT INTO official_certification_records (officialName, role, certificationBody, certificationNumber, issueDate, expiryDate, renewalReminderDate, status, notes, createdAt, updatedAt, createdBy, updatedBy, requiredTrainingHours, completedTrainingHours, lastTrainingDate, complianceScore, attachedDocumentPath, digitalSignature, auditTrail) VALUES ('Laura Chen', 'Steward', 'FIA', 'ST-2023-045', '2023-02-01', '2026-02-01', '2025-12-01', 'Active', 'No issues', '2023-02-02', '2023-02-02', 'admin', 'admin', 40, 40, '2023-01-15', 100, '/docs/chen_cert.pdf', 'sig123', 'created');
INSERT INTO official_certification_records (officialName, role, certificationBody, certificationNumber, issueDate, expiryDate, renewalReminderDate, status, notes, createdAt, updatedAt, createdBy, updatedBy, requiredTrainingHours, completedTrainingHours, lastTrainingDate, complianceScore, attachedDocumentPath, digitalSignature, auditTrail) VALUES ('Markus Vogel', 'Safety Officer', 'FIA', 'SO-2022-012', '2022-05-10', '2025-05-10', '2025-03-10', 'Active', 'Completed recent safety drill', '2022-05-11', '2022-05-11', 'admin', 'admin', 30, 30, '2022-04-20', 95, '/docs/vogel_cert.pdf', 'sig124', 'created');
INSERT INTO official_certification_records (officialName, role, certificationBody, certificationNumber, issueDate, expiryDate, renewalReminderDate, status, notes, createdAt, updatedAt, createdBy, updatedBy, requiredTrainingHours, completedTrainingHours, lastTrainingDate, complianceScore, attachedDocumentPath, digitalSignature, auditTrail) VALUES ('Sofia Ramirez', 'Medical Director', 'FIA', 'MD-2021-078', '2021-09-05', '2024-09-05', '2024-07-05', 'Active', 'Awaiting renewal', '2021-09-06', '2021-09-06', 'admin', 'admin', 50, 45, '2023-08-01', 88, '/docs/ramirez_cert.pdf', 'sig125', 'created');

-- Venue noise permit logs
CREATE TABLE venue_noise_permit_logs (
    permitId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueName TEXT NOT NULL,
    permitNumber TEXT NOT NULL,
    issueDate DATE,
    expiryDate DATE,
    maxDbAllowed REAL,
    measurementMethod TEXT,
    complianceStatus TEXT,
    inspectorName TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    createdBy TEXT,
    updatedBy TEXT,
    frequencyHz REAL,
    durationHours INTEGER,
    monitoringDevice TEXT,
    averageDbMeasured REAL,
    peakDbMeasured REAL,
    correctiveActionTaken TEXT,
    followUpDate DATE
);

INSERT INTO venue_noise_permit_logs (venueName, permitNumber, issueDate, expiryDate, maxDbAllowed, measurementMethod, complianceStatus, inspectorName, notes, createdAt, updatedAt, createdBy, updatedBy, frequencyHz, durationHours, monitoringDevice, averageDbMeasured, peakDbMeasured, correctiveActionTaken, followUpDate) VALUES ('Monaco Circuit', 'NP-2023-001', '2023-01-15', '2024-01-15', 95.0, 'SoundLevelMeter', 'Compliant', 'John Inspector', 'All readings within limits', '2023-01-16', '2023-01-16', 'admin', 'admin', 1000.0, 8, 'SLM-ModelX', 88.5, 94.2, 'None', '2023-07-01');
INSERT INTO venue_noise_permit_logs (venueName, permitNumber, issueDate, expiryDate, maxDbAllowed, measurementMethod, complianceStatus, inspectorName, notes, createdAt, updatedAt, createdBy, updatedBy, frequencyHz, durationHours, monitoringDevice, averageDbMeasured, peakDbMeasured, correctiveActionTaken, followUpDate) VALUES ('Silverstone', 'NP-2023-045', '2023-03-10', '2024-03-10', 92.0, 'DigitalMeter', 'Non-Compliant', 'Emily Auditor', 'Peak exceeded during night session', '2023-03-11', '2023-03-11', 'admin', 'admin', 500.0, 12, 'DM-500', 89.0, 95.5, 'Installed additional barriers', '2023-09-10');
INSERT INTO venue_noise_permit_logs (venueName, permitNumber, issueDate, expiryDate, maxDbAllowed, measurementMethod, complianceStatus, inspectorName, notes, createdAt, updatedAt, createdBy, updatedBy, frequencyHz, durationHours, monitoringDevice, averageDbMeasured, peakDbMeasured, correctiveActionTaken, followUpDate) VALUES ('Spa Francorchamps', 'NP-2023-078', '2023-05-20', '2024-05-20', 94.0, 'CalibratedMeter', 'Compliant', 'Liam Surveyor', 'Stable readings throughout event', '2023-05-21', '2023-05-21', 'admin', 'admin', 750.0, 10, 'CM-300', 90.2, 93.8, 'None', '2023-11-20');

-- Transportation fleet utilization records
CREATE TABLE transportation_fleet_utilization (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    vehicleId TEXT NOT NULL,
    fleetType TEXT,
    routeName TEXT,
    departureTime TEXT,
    arrivalTime TEXT,
    distanceKm REAL,
    fuelUsedLiters REAL,
    driverName TEXT,
    occupancy INTEGER,
    cargoWeightKg REAL,
    maintenanceFlag BOOLEAN,
    notes TEXT,
    recordedDate DATE,
    createdAt DATE,
    updatedAt DATE,
    createdBy TEXT,
    updatedBy TEXT,
    averageSpeedKph REAL,
    emissionsKgCO2 REAL,
    weatherCondition TEXT
);

INSERT INTO transportation_fleet_utilization (vehicleId, fleetType, routeName, departureTime, arrivalTime, distanceKm, fuelUsedLiters, driverName, occupancy, cargoWeightKg, maintenanceFlag, notes, recordedDate, createdAt, updatedAt, createdBy, updatedBy, averageSpeedKph, emissionsKgCO2, weatherCondition) VALUES ('VAN-001', 'Shuttle', 'Hotel to Circuit', '08:00', '08:45', 35.2, 5.8, 'Carlos Mendes', 20, 0, 0, 'On time', '2025-07-12', '2025-07-12', '2025-07-12', 'logistics', 'logistics', 47.0, 14.5, 'Clear');
INSERT INTO transportation_fleet_utilization (vehicleId, fleetType, routeName, departureTime, arrivalTime, distanceKm, fuelUsedLiters, driverName, occupancy, cargoWeightKg, maintenanceFlag, notes, recordedDate, createdAt, updatedAt, createdBy, updatedBy, averageSpeedKph, emissionsKgCO2, weatherCondition) VALUES ('BUS-023', 'Bus', 'Fan Zone Loop', '10:15', '11:30', 12.5, 9.2, 'Anna Patel', 45, 150, 0, 'Minor delay due to traffic', '2025-07-12', '2025-07-12', '2025-07-12', 'logistics', 'logistics', 45.0, 22.0, 'Partly Cloudy');
INSERT INTO transportation_fleet_utilization (vehicleId, fleetType, routeName, departureTime, arrivalTime, distanceKm, fuelUsedLiters, driverName, occupancy, cargoWeightKg, maintenanceFlag, notes, recordedDate, createdAt, updatedAt, createdBy, updatedBy, averageSpeedKph, emissionsKgCO2, weatherCondition) VALUES ('TRK-005', 'Truck', 'Equipment Transport', '13:00', '14:30', 55.0, 12.0, 'Miguel Santos', 2, 800, 1, 'Scheduled maintenance after trip', '2025-07-12', '2025-07-12', '2025-07-12', 'logistics', 'logistics', 36.7, 35.0, 'Rain');

-- Digital content distribution records
CREATE TABLE digital_content_distribution (
    distributionId INTEGER PRIMARY KEY AUTOINCREMENT,
    contentTitle TEXT NOT NULL,
    contentType TEXT,
    format TEXT,
    fileSizeMb REAL,
    sourceSystem TEXT,
    distributionChannel TEXT,
    targetPlatform TEXT,
    scheduledDate DATE,
    actualReleaseDate DATE,
    status TEXT,
    views INTEGER,
    downloads INTEGER,
    averageWatchTimeSeconds INTEGER,
    geographicRegion TEXT,
    language TEXT,
    checksum TEXT,
    encryptionKey TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    createdBy TEXT,
    updatedBy TEXT
);

INSERT INTO digital_content_distribution (contentTitle, contentType, format, fileSizeMb, sourceSystem, distributionChannel, targetPlatform, scheduledDate, actualReleaseDate, status, views, downloads, averageWatchTimeSeconds, geographicRegion, language, checksum, encryptionKey, notes, createdAt, updatedAt, createdBy, updatedBy) VALUES ('Grand Prix Highlights', 'Video', 'MP4', 1500.0, 'ProductionSuite', 'Streaming', 'Website', '2025-07-20', '2025-07-20', 'Published', 120000, 5000, 300, 'Global', 'English', 'abc123checksum', 'key123', 'High engagement', '2025-07-15', '2025-07-20', 'media', 'media');
INSERT INTO digital_content_distribution (contentTitle, contentType, format, fileSizeMb, sourceSystem, distributionChannel, targetPlatform, scheduledDate, actualReleaseDate, status, views, downloads, averageWatchTimeSeconds, geographicRegion, language, checksum, encryptionKey, notes, createdAt, updatedAt, createdBy, updatedBy) VALUES ('Driver Interview Series', 'Audio', 'MP3', 250.0, 'InterviewHub', 'Podcast', 'Spotify', '2025-07-22', '2025-07-22', 'Published', 45000, 0, 1800, 'Europe', 'English', 'def456checksum', 'key456', 'Positive feedback', '2025-07-18', '2025-07-22', 'media', 'media');
INSERT INTO digital_content_distribution (contentTitle, contentType, format, fileSizeMb, sourceSystem, distributionChannel, targetPlatform, scheduledDate, actualReleaseDate, status, views, downloads, averageWatchTimeSeconds, geographicRegion, language, checksum, encryptionKey, notes, createdAt, updatedAt, createdBy, updatedBy) VALUES ('Technical Analysis Report', 'Document', 'PDF', 12.5, 'AnalyticsDept', 'Download', 'PartnerPortal', '2025-07-25', '2025-07-26', 'Published', 0, 3200, 0, 'North America', 'English', 'ghi789checksum', 'key789', 'Downloaded by teams', '2025-07-24', '2025-07-26', 'media', 'media');

-- Event analytics metrics
CREATE TABLE event_analytics_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventName TEXT NOT NULL,
    eventDate DATE,
    metricCategory TEXT,
    metricName TEXT,
    valueNumeric REAL,
    valueText TEXT,
    percentile REAL,
    benchmark REAL,
    deviation REAL,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    createdBy TEXT,
    updatedBy TEXT,
    sourceSystem TEXT,
    dataQualityScore INTEGER,
    confidenceLevel REAL,
    aggregationLevel TEXT,
    responsibleAnalyst TEXT,
    reviewDate DATE,
    actionRequired TEXT,
    status TEXT
);

INSERT INTO event_analytics_metrics (eventName, eventDate, metricCategory, metricName, valueNumeric, valueText, percentile, benchmark, deviation, notes, createdAt, updatedAt, createdBy, updatedBy, sourceSystem, dataQualityScore, confidenceLevel, aggregationLevel, responsibleAnalyst, reviewDate, actionRequired, status) VALUES ('Grand Prix 2025', '2025-07-12', 'Attendance', 'TotalFans', 250000, NULL, 95.0, 240000, 4.2, 'Record attendance', '2025-07-13', '2025-07-13', 'analytics', 'analytics', 'TicketSystem', 98, 0.99, 'Event', 'Maria Gomez', '2025-07-20', 'None', 'Verified');
INSERT INTO event_analytics_metrics (eventName, eventDate, metricCategory, metricName, valueNumeric, valueText, percentile, benchmark, deviation, notes, createdAt, updatedAt, createdBy, updatedBy, sourceSystem, dataQualityScore, confidenceLevel, aggregationLevel, responsibleAnalyst, reviewDate, actionRequired, status) VALUES ('Grand Prix 2025', '2025-07-12', 'Engagement', 'SocialMediaMentions', 4800, NULL, 88.0, 4500, 6.7, 'Higher than expected', '2025-07-13', '2025-07-13', 'analytics', 'analytics', 'SocialPlatform', 95, 0.97, 'Daily', 'Luis Fernandez', '2025-07-21', 'Monitor trend', 'Reviewed');
INSERT INTO event_analytics_metrics (eventName, eventDate, metricCategory, metricName, valueNumeric, valueText, percentile, benchmark, deviation, notes, createdAt, updatedAt, createdBy, updatedBy, sourceSystem, dataQualityScore, confidenceLevel, aggregationLevel, responsibleAnalyst, reviewDate, actionRequired, status) VALUES ('Grand Prix 2025', '2025-07-12', 'Performance', 'AverageLapTime', 92.5, NULL, 80.0, 95.0, -2.6, 'Slightly faster laps', '2025-07-13', '2025-07-13', 'analytics', 'analytics', 'TimingSystem', 97, 0.98, 'Lap', 'Erik Johansson', '2025-07-22', 'None', 'Confirmed');

-- Environmental compliance audits
CREATE TABLE environmental_compliance_audits (
    auditId INTEGER PRIMARY KEY AUTOINCREMENT,
    auditTitle TEXT NOT NULL,
    auditDate DATE,
    auditorName TEXT,
    scope TEXT,
    findings TEXT,
    severityLevel TEXT,
    correctiveAction TEXT,
    dueDate DATE,
    completionDate DATE,
    complianceStatus TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    createdBy TEXT,
    updatedBy TEXT,
    relatedRegulation TEXT,
    penaltyAmount REAL,
    followUpDate DATE,
    verificationStatus TEXT,
    documentationLink TEXT,
    riskScore INTEGER,
    overallRating TEXT
);

INSERT INTO environmental_compliance_audits (auditTitle, auditDate, auditorName, scope, findings, severityLevel, correctiveAction, dueDate, completionDate, complianceStatus, notes, createdAt, updatedAt, createdBy, updatedBy, relatedRegulation, penaltyAmount, followUpDate, verificationStatus, documentationLink, riskScore, overallRating) VALUES ('Noise Emission Audit', '2025-06-30', 'James Lee', 'Circuit perimeter', 'Peak levels exceeded by 3 dB', 'Medium', 'Install additional barriers', '2025-07-15', NULL, 'Pending', 'Awaiting corrective measures', '2025-07-01', '2025-07-01', 'env_team', 'env_team', 'NoiseRegulation2020', 15000.00, '2025-08-01', 'Not Verified', '/docs/noise_audit.pdf', 70, 'Fair');
INSERT INTO environmental_compliance_audits (auditTitle, auditDate, auditorName, scope, findings, severityLevel, correctiveAction, dueDate, completionDate, complianceStatus, notes, createdAt, updatedAt, createdBy, updatedBy, relatedRegulation, penaltyAmount, followUpDate, verificationStatus, documentationLink, riskScore, overallRating) VALUES ('Waste Management Audit', '2025-05-20', 'Elena Petrova', 'Temporary structures', 'Improper segregation observed', 'High', 'Re-train staff and reorganize bins', '2025-06-01', '2025-05-28', 'Compliant', 'Corrective action completed early', '2025-05-21', '2025-05-28', 'env_team', 'env_team', 'WasteRegulation2019', 0.00, '2025-07-01', 'Verified', '/docs/waste_audit.pdf', 40, 'Good');
INSERT INTO environmental_compliance_audits (auditTitle, auditDate, auditorName, scope, findings, severityLevel, correctiveAction, dueDate, completionDate, complianceStatus, notes, createdAt, updatedAt, createdBy, updatedBy, relatedRegulation, penaltyAmount, followUpDate, verificationStatus, documentationLink, riskScore, overallRating) VALUES ('Air Quality Audit', '2025-04-15', 'Carlos Mendes', 'Fuel consumption areas', 'No violations detected', 'Low', 'N/A', '2025-04-30', '2025-04-15', 'Compliant', 'All parameters within limits', '2025-04-16', '2025-04-15', 'env_team', 'env_team', 'AirQualityReg2021', 0.00, '2025-05-15', 'Verified', '/docs/air_quality_audit.pdf', 20, 'Excellent');