```sql
/* ---------------------------------------------------------------------------
   Track lighting schedules for circuits and races (22 columns)
   --------------------------------------------------------------------------- */
CREATE TABLE track_lighting_schedules (
    scheduleId                 INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId                  INTEGER NOT NULL,
    raceYear                   INTEGER,
    raceRound                  INTEGER,
    lightingMode               TEXT,
    startTime                  TEXT,
    endTime                    TEXT,
    lumens                     INTEGER,
    colorTemperature           INTEGER,
    energyConsumption          REAL,
    controlSystem              TEXT,
    operatorName               TEXT,
    maintenanceDueDate         DATE,
    notes                      TEXT,
    createdAt                  DATE,
    updatedAt                  DATE,
    isActive                   INTEGER,
    weatherImpactFactor       REAL,
    safetyCompliance           TEXT,
    backupGeneratorAvailable   INTEGER,
    regionCode                 TEXT,
    vendorId                   INTEGER
);
INSERT INTO track_lighting_schedules (circuitId, raceYear, raceRound, lightingMode, startTime, endTime, lumens, colorTemperature, energyConsumption, controlSystem, operatorName, maintenanceDueDate, notes, createdAt, updatedAt, isActive, weatherImpactFactor, safetyCompliance, backupGeneratorAvailable, regionCode, vendorId)
VALUES (1, 2024, 3, 'LED', '18:00', '22:00', 120000, 5600, 350.5, 'DMX', 'John Doe', '2025-01-01', 'Initial setup', '2024-01-10', '2024-01-10', 1, 0.85, 'Compliant', 1, 'EU', 45);
INSERT INTO track_lighting_schedules (circuitId, raceYear, raceRound, lightingMode, startTime, endTime, lumens, colorTemperature, energyConsumption, controlSystem, operatorName, maintenanceDueDate, notes, createdAt, updatedAt, isActive, weatherImpactFactor, safetyCompliance, backupGeneratorAvailable, regionCode, vendorId)
VALUES (2, 2025, 5, 'Halogen', '19:00', '23:30', 95000, 3200, 420.0, 'Analog', 'Maria Silva', '2025-12-15', 'Upgrade pending', '2024-02-12', '2024-02-12', 0, 0.70, 'Pending', 0, 'NA', 12);
INSERT INTO track_lighting_schedules (circuitId, raceYear, raceRound, lightingMode, startTime, endTime, lumens, colorTemperature, energyConsumption, controlSystem, operatorName, maintenanceDueDate, notes, createdAt, updatedAt, isActive, weatherImpactFactor, safetyCompliance, backupGeneratorAvailable, regionCode, vendorId)
VALUES (3, 2024, 8, 'Laser', '17:30', '21:45', 130000, 6000, 390.2, 'DMX', 'Liu Wei', '2024-11-30', 'Routine check', '2024-03-05', '2024-03-05', 1, 0.90, 'Compliant', 1, 'AS', 78);

/* ---------------------------------------------------------------------------
   Driver academy enrollments (22 columns)
   --------------------------------------------------------------------------- */
CREATE TABLE driver_academy_enrollments (
    enrollmentId        INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId            INTEGER NOT NULL,
    academyId           INTEGER,
    enrollmentDate      DATE,
    graduationDate      DATE,
    programLevel        TEXT,
    tuitionFee          REAL,
    scholarshipAmount   REAL,
    mentorName          TEXT,
    trainingHours       INTEGER,
    physicalTestScore   REAL,
    mentalTestScore     REAL,
    technicalTestScore  REAL,
    status              TEXT,
    lastEvaluationDate  DATE,
    nextEvaluationDate  DATE,
    contractSigned      INTEGER,
    sponsorId           INTEGER,
    residencyCountry    TEXT,
    contactEmail        TEXT,
    emergencyContactName TEXT,
    emergencyContactPhone TEXT
);
INSERT INTO driver_academy_enrollments (driverId, academyId, enrollmentDate, graduationDate, programLevel, tuitionFee, scholarshipAmount, mentorName, trainingHours, physicalTestScore, mentalTestScore, technicalTestScore, status, lastEvaluationDate, nextEvaluationDate, contractSigned, sponsorId, residencyCountry, contactEmail, emergencyContactName, emergencyContactPhone)
VALUES (10, 5, '2023-09-01', '2024-06-30', 'Advanced', 15000.00, 5000.00, 'Alex Ferguson', 300, 88.5, 92.0, 90.0, 'Active', '2024-02-15', '2024-08-01', 1, 3, 'Germany', 'driver10@example.com', 'Anna Schmidt', '49123456789');
INSERT INTO driver_academy_enrollments (driverId, academyId, enrollmentDate, graduationDate, programLevel, tuitionFee, scholarshipAmount, mentorName, trainingHours, physicalTestScore, mentalTestScore, technicalTestScore, status, lastEvaluationDate, nextEvaluationDate, contractSigned, sponsorId, residencyCountry, contactEmail, emergencyContactName, emergencyContactPhone)
VALUES (22, 7, '2022-01-15', '2022-12-20', 'Intermediate', 12000.00, 2000.00, 'Javier Gomez', 250, 85.0, 88.5, 87.0, 'Graduated', '2022-12-15', NULL, 1, 5, 'Spain', 'driver22@example.com', 'Luis Garcia', '34987654321');
INSERT INTO driver_academy_enrollments (driverId, academyId, enrollmentDate, graduationDate, programLevel, tuitionFee, scholarshipAmount, mentorName, trainingHours, physicalTestScore, mentalTestScore, technicalTestScore, status, lastEvaluationDate, nextEvaluationDate, contractSigned, sponsorId, residencyCountry, contactEmail, emergencyContactName, emergencyContactPhone)
VALUES (35, 9, '2024-04-10', NULL, 'Beginner', 8000.00, 0.00, 'Sofia Rossi', 180, 78.0, 80.5, 79.0, 'Enrolled', '2024-04-15', '2025-04-15', 0, NULL, 'Italy', 'driver35@example.com', 'Marco Bianchi', '39011223344');

/* ---------------------------------------------------------------------------
   Circuit noise permit applications (21 columns)
   --------------------------------------------------------------------------- */
CREATE TABLE circuit_noise_permit_applications (
    applicationId            INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId                INTEGER NOT NULL,
    applicantName            TEXT,
    submissionDate           DATE,
    permitNumber             TEXT,
    maxDecibels              INTEGER,
    measurementMethod        TEXT,
    approvedDate             DATE,
    expiryDate               DATE,
    noiseZone                TEXT,
    mitigationPlan           TEXT,
    inspectorName            TEXT,
    inspectionDate           DATE,
    status                   TEXT,
    comments                 TEXT,
    reviewedBy               TEXT,
    reviewScore              REAL,
    feePaid                  REAL,
    complianceDocumentUrl    TEXT,
    createdAt                DATE,
    updatedAt                DATE
);
INSERT INTO circuit_noise_permit_applications (circuitId, applicantName, submissionDate, permitNumber, maxDecibels, measurementMethod, approvedDate, expiryDate, noiseZone, mitigationPlan, inspectorName, inspectionDate, status, comments, reviewedBy, reviewScore, feePaid, complianceDocumentUrl, createdAt, updatedAt)
VALUES (1, 'City Council', '2023-10-01', 'NP-2023-001', 95, 'Sound Level Meter', '2023-11-15', '2025-11-14', 'Zone A', 'Tree barriers', 'Helen Baker', '2023-11-01', 'Approved', 'All standards met', 'Mark Lee', 9.5, 2500.00, 'http://example.com/docs/np001.pdf', '2023-10-02', '2023-11-16');
INSERT INTO circuit_noise_permit_applications (circuitId, applicantName, submissionDate, permitNumber, maxDecibels, measurementMethod, approvedDate, expiryDate, noiseZone, mitigationPlan, inspectorName, inspectionDate, status, comments, reviewedBy, reviewScore, feePaid, complianceDocumentUrl, createdAt, updatedAt)
VALUES (2, 'Event Organizers', '2024-02-05', 'NP-2024-014', 88, 'Acoustic Modeling', NULL, NULL, 'Zone B', 'Acoustic panels', 'Samuel Torres', NULL, 'Pending', 'Awaiting environmental report', 'Laura Kim', NULL, 1800.00, 'http://example.com/docs/np014.pdf', '2024-02-06', '2024-02-06');
INSERT INTO circuit_noise_permit_applications (circuitId, applicantName, submissionDate, permitNumber, maxDecibels, measurementMethod, approvedDate, expiryDate, noiseZone, mitigationPlan, inspectorName, inspectionDate, status, comments, reviewedBy, reviewScore, feePaid, complianceDocumentUrl, createdAt, updatedAt)
VALUES (3, 'Racing Association', '2022-07-10', 'NP-2022-077', 92, 'Microphone Array', '2022-08-20', '2024-08-19', 'Zone C', 'Noise curtains', 'Diana Schultz', '2022-08-15', 'Revoked', 'Exceeded limits in 2023', 'Tom Reed', 4.0, 3000.00, 'http://example.com/docs/np077.pdf', '2022-07-11', '2023-09-01');

/* ---------------------------------------------------------------------------
   Race hospitality package options (21 columns)
   --------------------------------------------------------------------------- */
CREATE TABLE race_hospitality_package_options (
    packageId                INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId                  INTEGER NOT NULL,
    packageName             TEXT,
    description             TEXT,
    price                   REAL,
    currency                TEXT,
    inclusiveMeals          INTEGER,
    inclusiveDrinks         INTEGER,
    vipLoungeAccess        INTEGER,
    pitLaneTours            INTEGER,
    driverMeetAndGreet      INTEGER,
    schedulePDFUrl          TEXT,
    maxGuests               INTEGER,
    bookingDeadline         DATE,
    availabilityStatus      TEXT,
    createdBy               TEXT,
    createdAt               DATE,
    updatedAt               DATE,
    isFeatured              INTEGER,
    promotionalCode         TEXT,
    discountPercentage      REAL
);
INSERT INTO race_hospitality_package_options (raceId, packageName, description, price, currency, inclusiveMeals, inclusiveDrinks, vipLoungeAccess, pitLaneTours, driverMeetAndGreet, schedulePDFUrl, maxGuests, bookingDeadline, availabilityStatus, createdBy, createdAt, updatedAt, isFeatured, promotionalCode, discountPercentage)
VALUES (101, 'Gold Elite', 'All‑inclusive experience with premium catering', 1500.00, 'USD', 5, 12, 1, 2, 1, 'http://example.com/schedules/gold101.pdf', 8, '2024-06-01', 'Open', 'Alice Johnson', '2024-01-15', '2024-01-15', 1, 'GOLD2024', 10.0);
INSERT INTO race_hospitality_package_options (raceId, packageName, description, price, currency, inclusiveMeals, inclusiveDrinks, vipLoungeAccess, pitLaneTours, driverMeetAndGreet, schedulePDFUrl, maxGuests, bookingDeadline, availabilityStatus, createdBy, createdAt, updatedAt, isFeatured, promotionalCode, discountPercentage)
VALUES (102, 'Silver Standard', 'Standard hospitality with buffet and lounge access', 800.00, 'EUR', 3, 6, 1, 1, 0, 'http://example.com/schedules/silver102.pdf', 12, '2024-07-15', 'Limited', 'Martin Schmidt', '2024-02-01', '2024-02-01', 0, NULL, 0.0);
INSERT INTO race_hospitality_package_options (raceId, packageName, description, price, currency, inclusiveMeals, inclusiveDrinks, vipLoungeAccess, pitLaneTours, driverMeetAndGreet, schedulePDFUrl, maxGuests, bookingDeadline, availabilityStatus, createdBy, createdAt, updatedAt, isFeatured, promotionalCode, discountPercentage)
VALUES (103, 'Bronze Access', 'Basic package with access to fan zone', 300.00, 'GBP', 1, 2, 0, 0, 0, 'http://example.com/schedules/bronze103.pdf', 20, '2024-08-10', 'Open', 'Sophie Evans', '2024-03-20', '2024-03-20', 0, 'BRNZ20', 5.0);

/* ---------------------------------------------------------------------------
   Constructor hiring records (20 columns)
   --------------------------------------------------------------------------- */
CREATE TABLE constructor_hiring_records (
    recordId               INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId          INTEGER NOT NULL,
    employeeId             INTEGER,
    hireDate               DATE,
    terminationDate        DATE,
    positionTitle          TEXT,
    department             TEXT,
    salary                 REAL,
    bonus                  REAL,
    contractType           TEXT,
    workLocation           TEXT,
    managerId              INTEGER,
    employmentStatus       TEXT,
    performanceRating      REAL,
    lastPromotionDate     DATE,
    nextReviewDate        DATE,
    notes                  TEXT,
    createdAt              DATE,
    updatedAt              DATE,
    isActive               INTEGER,
    employeeEmail          TEXT
);
INSERT INTO constructor_hiring_records (constructorId, employeeId, hireDate, terminationDate, positionTitle, department, salary, bonus, contractType, workLocation, managerId, employmentStatus, performanceRating, lastPromotionDate, nextReviewDate, notes, createdAt, updatedAt, isActive, employeeEmail)
VALUES (2, 457, '2021-03-15', NULL, 'Aerodynamic Engineer', 'R&D', 95000.00, 15000.00, 'Permanent', 'UK', 12, 'Active', 4.7, '2023-11-01', '2024-11-01', 'Lead on 2022 car project', '2021-03-15', '2024-01-02', 1, 'engineer457@team.com');
INSERT INTO constructor_hiring_records (constructorId, employeeId, hireDate, terminationDate, positionTitle, department, salary, bonus, contractType, workLocation, managerId, employmentStatus, performanceRating, lastPromotionDate, nextReviewDate, notes, createdAt, updatedAt, isActive, employeeEmail)
VALUES (5, 892, '2019-07-01', '2023-05-31', 'Chief Mechanic', 'Operations', 85000.00, 10000.00, 'Fixed-term', 'Germany', 9, 'Terminated', 3.9, '2022-02-20', '2023-02-20', 'Handled 2021 season mechanics', '2019-07-01', '2023-05-31', 0, 'mechanic892@team.com');
INSERT INTO constructor_hiring_records (constructorId, employeeId, hireDate, terminationDate, positionTitle, department, salary, bonus, contractType, workLocation, managerId, employmentStatus, performanceRating, lastPromotionDate, nextReviewDate, notes, createdAt, updatedAt, isActive, employeeEmail)
VALUES (3, 311, '2024-01-10', NULL, 'Data Analyst', 'Analytics', 72000.00, 8000.00, 'Permanent', 'Italy', 5, 'Probation', 4.2, NULL, '2024-07-10', 'Onboarding phase', '2024-01-10', '2024-01-10', 1, 'analyst311@team.com');

/* ---------------------------------------------------------------------------
   Season rule changes (20 columns)
   --------------------------------------------------------------------------- */
CREATE TABLE season_rule_changes (
    changeId               INTEGER PRIMARY KEY AUTOINCREMENT,
    seasonYear             INTEGER NOT NULL,
    ruleCategory           TEXT,
    description            TEXT,
    effectiveDate          DATE,
    previousVersion        TEXT,
    newVersion             TEXT,
    impactedTeams          INTEGER,
    impactedDrivers        INTEGER,
    amendmentNumber        INTEGER,
    approvedBy             TEXT,
    approvalDate           DATE,
    status                 TEXT,
    comments               TEXT,
    documentationUrl       TEXT,
    createdAt              DATE,
    updatedAt              DATE,
    isActive               INTEGER,
    impactScore            REAL,
    regulatoryBody         TEXT
);
INSERT INTO season_rule_changes (seasonYear, ruleCategory, description, effectiveDate, previousVersion, newVersion, impactedTeams, impactedDrivers, amendmentNumber, approvedBy, approvalDate, status, comments, documentationUrl, createdAt, updatedAt, isActive, impactScore, regulatoryBody)
VALUES (2024, 'Power Units', 'Limit on hybrid battery capacity to 4 MJ', '2024-03-01', 'V2', 'V3', 10, 22, 3, 'FIA Committee', '2024-01-20', 'Implemented', 'Positive reception', 'http://fia.com/rules/2024/battery', '2024-01-21', '2024-03-01', 1, 8.5, 'FIA');
INSERT INTO season_rule_changes (seasonYear, ruleCategory, description, effectiveDate, previousVersion, newVersion, impactedTeams, impactedDrivers, amendmentNumber, approvedBy, approvalDate, status, comments, documentationUrl, createdAt, updatedAt, isActive, impactScore, regulatoryBody)
VALUES (2025, 'Aerodynamics', 'Ban of front wing canards exceeding 15cm', '2025-01-01', 'V1', 'V2', 12, 24, 1, 'Technical Board', '2024-12-05', 'Pending', 'Teams evaluating designs', 'http://fia.com/rules/2025/wing', '2024-12-06', '2024-12-06', 0, 7.0, 'FIA');
INSERT INTO season_rule_changes (seasonYear, ruleCategory, description, effectiveDate, previousVersion, newVersion, impactedTeams, impactedDrivers, amendmentNumber, approvedBy, approvalDate, status, comments, documentationUrl, createdAt, updatedAt, isActive, impactScore, regulatoryBody)
VALUES (2023, 'Safety', 'Mandatory additional fire suppression system in pit lane', '2023-04-15', 'N/A', 'V1', 10, 20, 2, 'Safety Commission', '2023-02-28', 'Implemented', 'Improved pit lane safety metrics', 'http://fia.com/rules/2023/fire', '2023-03-01', '2023-04-15', 1, 9.2, 'FIA');

/* ---------------------------------------------------------------------------
   Fan mobile app usage (21 columns)
   --------------------------------------------------------------------------- */
CREATE TABLE fan_mobile_app_usage (
    usageId                INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId                  INTEGER NOT NULL,
    appVersion             TEXT,
    deviceType             TEXT,
    osVersion              TEXT,
    sessionStart           TEXT,
    sessionEnd             TEXT,
    pagesViewed            INTEGER,
    featuresUsed           TEXT,
    networkType            TEXT,
    dataConsumedMB         REAL,
    locationCountry        TEXT,
    locationCity           TEXT,
    pushNotificationsEnabled INTEGER,
    lastLogin              DATE,
    totalSessions          INTEGER,
    averageSessionDuration REAL,
    inAppPurchases         REAL,
    feedbackScore          REAL,
    createdAt              DATE,
    updatedAt              DATE
);
INSERT INTO fan_mobile_app_usage (fanId, appVersion, deviceType, osVersion, sessionStart, sessionEnd, pagesViewed, featuresUsed, networkType, dataConsumedMB, locationCountry, locationCity, pushNotificationsEnabled, lastLogin, totalSessions, averageSessionDuration, inAppPurchases, feedbackScore, createdAt, updatedAt)
VALUES (1001, '3.2.1', 'Smartphone', 'iOS 16.5', '2024-04-01 14:05:00', '2024-04-01 14:30:00', 12, 'LiveTiming,News', 'WiFi', 45.6, 'USA', 'New York', 1, '2024-04-01', 5, 25.0, 0.00, 4.8, '2024-04-01', '2024-04-01');
INSERT INTO fan_mobile_app_usage (fanId, appVersion, deviceType, osVersion, sessionStart, sessionEnd, pagesViewed, featuresUsed, networkType, dataConsumedMB, locationCountry, locationCity, pushNotificationsEnabled, lastLogin, totalSessions, averageSessionDuration, inAppPurchases, feedbackScore, createdAt, updatedAt)
VALUES (1002, '3.2.1', 'Tablet', 'Android 13', '2024-04-02 09:15:00', '2024-04-02 09:45:00', 8, 'Schedule,Merch', '4G', 30.2, 'UK', 'London', 0, '2024-04-02', 3, 30.0, 15.99, 4.2, '2024-04-02', '2024-04-02');
INSERT INTO fan_mobile_app_usage (fanId, appVersion, deviceType, osVersion, sessionStart, sessionEnd, pagesViewed, featuresUsed, networkType, dataConsumedMB, locationCountry, locationCity, pushNotificationsEnabled, lastLogin, totalSessions, averageSessionDuration, inAppPurchases, feedbackScore, createdAt, updatedAt)
VALUES (1003, '3.1.9', 'Smartwatch', 'watchOS 9.3', '2024-04-03 18:00:00', '2024-04-03 18:05:00', 2, 'LiveTiming', 'Cellular', 5.0, 'Germany', 'Berlin', 1, '2024-04-03', 10, 5.0, 0.00, 5.0, '2024-04-03', '2024-04-03');

/* ---------------------------------------------------------------------------
   Broadcast advertiser rates (20 columns)
   --------------------------------------------------------------------------- */
CREATE TABLE broadcast_advertiser_rates (
    rateId               INTEGER PRIMARY KEY AUTOINCREMENT,
    advertiserId         INTEGER NOT NULL,
    broadcastYear        INTEGER,
    broadcastSeason      TEXT,
    adSlot               TEXT,
    durationSeconds      INTEGER,
    rateUSD              REAL,
    rateEUR              REAL,
    rateGBP              REAL,
    audienceReach        INTEGER,
    demographicTarget    TEXT,
    packageName          TEXT,
    discountPercentage   REAL,
    contractStartDate    DATE,
    contractEndDate      DATE,
    paymentTerms         TEXT,
    createdBy            TEXT,
    createdAt            DATE,
    updatedAt            DATE,
    isActive             INTEGER,
    notes                TEXT
);
INSERT INTO broadcast_advertiser_rates (advertiserId, broadcastYear, broadcastSeason, adSlot, durationSeconds, rateUSD, rateEUR, rateGBP, audienceReach, demographicTarget, packageName, discountPercentage, contractStartDate, contractEndDate, paymentTerms, createdBy, createdAt, updatedAt, isActive, notes)
VALUES (2001, 2024, 'Spring', 'Midroll', 30, 12000.00, 11000.00, 9500.00, 5000000, '18-34', 'Premium', 5.0, '2024-03-01', '2024-08-31', 'Net30', 'Emma Clarke', '2024-02-20', '2024-02-20', 1, 'First year contract');
INSERT INTO broadcast_advertiser_rates (advertiserId, broadcastYear, broadcastSeason, adSlot, durationSeconds, rateUSD, rateEUR, rateGBP, audienceReach, demographicTarget, packageName, discountPercentage, contractStartDate, contractEndDate, paymentTerms, createdBy, createdAt, updatedAt, isActive, notes)
VALUES (2002, 2024, 'Summer', 'PreRoll', 15, 8000.00, 7500.00, 6500.00, 3000000, '25-44', 'Standard', 0.0, '2024-06-01', '2024-11-30', 'Net45', 'Liam Patel', '2024-05-15', '2024-05-15', 1, NULL);
INSERT INTO broadcast_advertiser_rates (advertiserId, broadcastYear, broadcastSeason, adSlot, durationSeconds, rateUSD, rateEUR, rateGBP, audienceReach, demographicTarget, packageName, discountPercentage, contractStartDate, contractEndDate, paymentTerms, createdBy, createdAt, updatedAt, isActive, notes)
VALUES (2003, 2025, 'Fall', 'Midroll', 45, 15000.00, 13800.00, 11900.00, 6000000, 'Male 30-50', 'Exclusive', 7.5, '2025-09-01', '2026-02-28', 'Net60', 'Olivia Reed', '2025-08-10', '2025-08-10', 0, 'Awaiting final approval');

/* ---------------------------------------------------------------------------
   Medical emergency crew roster (20 columns)
   --------------------------------------------------------------------------- */
CREATE TABLE medical_emergency_crew_roster (
    crewId               INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId              INTEGER NOT NULL,
    crewMemberName       TEXT,
    role                 TEXT,
    certificationLevel   TEXT,
    yearsExperience      INTEGER,
    shiftStart           TEXT,
    shiftEnd             TEXT,
    contactPhone         TEXT,
    contactEmail         TEXT,
    assignedStation      TEXT,
    vehicleId            INTEGER,
    equipmentList        TEXT,
    status               TEXT,
    lastTrainingDate     DATE,
    nextTrainingDate     DATE,
    active               INTEGER,
    notes                TEXT,
    createdAt            DATE,
    updatedAt            DATE,
    supervisorName       TEXT
);
INSERT INTO medical_emergency_crew_roster (eventId, crewMemberName, role, certificationLevel, yearsExperience, shiftStart, shiftEnd, contactPhone, contactEmail, assignedStation, vehicleId, equipmentList, status, lastTrainingDate, nextTrainingDate, active, notes, createdAt, updatedAt, supervisorName)
VALUES (101, 'Dr. Alan Green', 'Physician', 'Level 3', 12, '08:00', '20:00', '441234567890', 'alan.green@med.org', 'Station A', 7, 'Defibrillator,Trauma Kit', 'On Duty', '2023-11-20', '2024-11-20', 1, 'Lead medical officer', '2024-01-05', '2024-01-05', 'Sophie Turner');
INSERT INTO medical_emergency_crew_roster (eventId, crewMemberName, role, certificationLevel, yearsExperience, shiftStart, shiftEnd, contactPhone, contactEmail, assignedStation, vehicleId, equipmentList, status, lastTrainingDate, nextTrainingDate, active, notes, createdAt, updatedAt, supervisorName)
VALUES (101, 'Nurse Emily Ho', 'Paramedic', 'Level 2', 8, '12:00', '00:00', '441234567891', 'emily.ho@med.org', 'Station B', 9, 'ECG Monitor,Bandages', 'On Duty', '2023-12-05', '2024-12-05', 1, 'Specialist in spinal injuries', '2024-01-06', '2024-01-06', 'Sophie Turner');
INSERT INTO medical_emergency_crew_roster (eventId, crewMemberName, role, certificationLevel, yearsExperience, shiftStart, shiftEnd, contactPhone, contactEmail, assignedStation, vehicleId, equipmentList, status, lastTrainingDate, nextTrainingDate, active, notes, createdAt, updatedAt, supervisorName)
VALUES (102, 'Paramedic Marco Diaz', 'Responder', 'Level 1', 5, '10:00', '22:00', '441234567892', 'marco.diaz@med.org', 'Station C', 12, 'Oxygen Kit,Stretcher', 'Reserve', '2023-10-15', '2024-10-15', 0, 'Available on call', '2024-01-07', '2024-01-07', 'Liam O\'Connor');

/* ---------------------------------------------------------------------------
   Logistics vehicle maintenance (20 columns)
   --------------------------------------------------------------------------- */
CREATE TABLE logistics_vehicle_maintenance (
    maintenanceId        INTEGER PRIMARY KEY AUTOINCREMENT,
    vehicleId            INTEGER NOT NULL,
    serviceDate          DATE,
    odometer             INTEGER,
    serviceType          TEXT,
    providerName         TEXT,
    cost                 REAL,
    partsReplaced        TEXT,
    warrantyExpiry       DATE,
    nextServiceDue       DATE,
    technicianName       TEXT,
    serviceLocation      TEXT,
    mileageSinceLastService INTEGER,
    downtimeHours        INTEGER,
    notes                TEXT,
    createdAt            DATE,
    updatedAt            DATE,
    isCompleted          INTEGER,
    complianceChecked    INTEGER,
    serviceOrderNumber   TEXT
);
INSERT INTO logistics_vehicle_maintenance (vehicleId, serviceDate, odometer, serviceType, providerName, cost, partsReplaced, warrantyExpiry, nextServiceDue, technicianName, serviceLocation, mileageSinceLastService, downtimeHours, notes, createdAt, updatedAt, isCompleted, complianceChecked, serviceOrderNumber)
VALUES (34, '2024-02-20', 152000, 'Engine Tune‑up', 'AutoTech Ltd', 1250.00, 'Spark Plugs,Air Filter', '2026-02-20', '2025-08-20', 'John Smith', 'Garage A', 15000, 4, 'All systems normal', '2024-02-20', '2024-02-20', 1, 1, 'SO-2024-034');
INSERT INTO logistics_vehicle_maintenance (vehicleId, serviceDate, odometer, serviceType, providerName, cost, partsReplaced, warrantyExpiry, nextServiceDue, technicianName, serviceLocation, mileageSinceLastService, downtimeHours, notes, createdAt, updatedAt, isCompleted, complianceChecked, serviceOrderNumber)
VALUES (57, '2024-03-15', 98000, 'Brake Replacement', 'BrakeWorks Inc', 2100.00, 'Brake Pads,Discs', '2025-03-15', '2025-09-15', 'Anne Lee', 'Service Center B', 10000, 6, 'Replaced front brakes', '2024-03-15', '2024-03-15', 1, 1, 'SO-2024-057');
INSERT INTO logistics_vehicle_maintenance (vehicleId, serviceDate, odometer, serviceType, providerName, cost, partsReplaced, warrantyExpiry, nextServiceDue, technicianName, serviceLocation, mileageSinceLastService, downtimeHours, notes, createdAt, updatedAt, isCompleted, complianceChecked, serviceOrderNumber)
VALUES (89, '2023-12-05', 210000, 'Tire Rotation', 'TirePro Services', 350.00, 'None', '2024-12-05', '2024-06-05', 'Mike Daniels', 'Garage C', 20000, 2, 'Rotation completed, no issues', '2023-12-05', '2023-12-05', 1, 1, 'SO-2023-089');
```