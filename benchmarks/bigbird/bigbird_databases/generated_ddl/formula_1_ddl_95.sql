```sql
-- Vendor payment records
CREATE TABLE vendor_payment_records (
    paymentId            INTEGER PRIMARY KEY AUTOINCREMENT,
    vendorId             INTEGER,
    contractId           INTEGER,
    invoiceNumber        TEXT,
    invoiceDate          DATE,
    dueDate              DATE,
    paymentDate          DATE,
    amount               REAL,
    currency             TEXT,
    paymentMethod        TEXT,
    bankAccount          TEXT,
    status               TEXT,
    createdAt            DATE,
    updatedAt            DATE,
    notes                TEXT,
    taxAmount            REAL,
    taxRate              REAL,
    discount             REAL,
    netAmount            REAL,
    referenceCode        TEXT
);

INSERT INTO vendor_payment_records VALUES (1, 101, 5001, 'INV2024001', '2024-01-15', '2024-02-15', '2024-02-10', 150000.00, 'USD', 'WireTransfer', 'US00123456', 'Paid', '2024-01-15', '2024-02-10', 'First quarter payment', 15000.00, 10.0, 0.00, 135000.00, 'REF2024A');
INSERT INTO vendor_payment_records VALUES (2, 102, 5002, 'INV2024002', '2024-03-01', '2024-04-01', NULL, 75000.00, 'EUR', 'BankTransfer', 'EU9876543', 'Pending', '2024-03-01', '2024-03-01', 'Second quarter pending', 7500.00, 10.0, 500.00, 67000.00, 'REF2024B');
INSERT INTO vendor_payment_records VALUES (3, 103, 5003, 'INV2024003', '2024-05-20', '2024-06-20', '2024-06-18', 200000.00, 'GBP', 'Cheque', 'GB11223344', 'Paid', '2024-05-20', '2024-06-18', 'Final payment for project', 20000.00, 10.0, 0.00, 180000.00, 'REF2024C');

-- Circuit artifact loans
CREATE TABLE circuit_artifact_loans (
    loanId               INTEGER PRIMARY KEY AUTOINCREMENT,
    artifactId           INTEGER,
    borrowingMuseum      TEXT,
    loanStartDate        DATE,
    loanEndDate          DATE,
    conditionOnLoan      TEXT,
    conditionOnReturn    TEXT,
    insuranceValue       REAL,
    insuranceProvider    TEXT,
    loanAgreementFile    TEXT,
    contactPerson        TEXT,
    contactPhone         TEXT,
    contactEmail         TEXT,
    createdAt            DATE,
    updatedAt            DATE,
    notes                TEXT,
    curatorApproval      TEXT,
    transportMethod      TEXT,
    customsCleared       INTEGER,
    originatingInstitution TEXT
);

INSERT INTO circuit_artifact_loans VALUES (1, 2001, 'NationalMuseum', '2024-02-01', '2024-08-01', 'Excellent', 'Excellent', 50000.00, 'InsureCo', 'loan_agreement_2001.pdf', 'Alice Smith', '5551234567', 'alice.smith@example.com', '2024-01-20', '2024-08-02', 'Handled with care', 'Approved', 'AirFreight', 1, 'CircuitArchive');
INSERT INTO circuit_artifact_loans VALUES (2, 2002, 'CityArtGallery', '2024-03-15', '2024-09-15', 'Good', 'Good', 30000.00, 'SecureInsure', 'loan_agreement_2002.pdf', 'Bob Jones', '5559876543', 'bob.jones@example.com', '2024-03-01', '2024-09-16', 'No issues', 'Pending', 'RoadTransport', 0, 'CircuitArchive');
INSERT INTO circuit_artifact_loans VALUES (3, 2003, 'InternationalMuseum', '2024-04-10', '2025-04-10', 'Fair', 'Fair', 75000.00, 'GlobalCover', 'loan_agreement_2003.pdf', 'Carol Lee', '5555551212', 'carol.lee@example.com', '2024-04-01', '2025-04-11', 'Restoration needed after return', 'Approved', 'SeaFreight', 1, 'CircuitArchive');

-- Driver media contracts
CREATE TABLE driver_media_contracts (
    contractId           INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId             INTEGER,
    mediaCompany         TEXT,
    contractStart        DATE,
    contractEnd          DATE,
    fee                  REAL,
    royaltyPercent       REAL,
    exclusivity          TEXT,
    contentTypes         TEXT,
    territories          TEXT,
    renewalOption        TEXT,
    terminationClause    TEXT,
    createdAt            DATE,
    updatedAt            DATE,
    notes                TEXT,
    contractStatus       TEXT,
    paymentSchedule      TEXT,
    deliverableCount     INTEGER,
    deliverableDetails   TEXT,
    complianceRequirements TEXT
);

INSERT INTO driver_media_contracts VALUES (1, 10, 'SpeedMedia', '2023-01-01', '2025-12-31', 250000.00, 5.0, 'Exclusive', 'Interviews;Featurettes', 'Global', 'AutoRenew', '30DayNotice', '2023-01-01', '2024-06-01', 'First year incentive applied', 'Active', 'Quarterly', 12, 'Monthly interview releases', 'BrandGuidelines');
INSERT INTO driver_media_contracts VALUES (2, 12, 'FastTrack Studios', '2022-06-15', '2024-06-14', 180000.00, 3.0, 'NonExclusive', 'Documentaries', 'Europe;Asia', 'OneTime', 'TerminationOnBreaches', '2022-06-15', '2024-05-20', 'Include behind‑the‑scenes footage', 'Active', 'BiAnnual', 6, 'Two documentary specials per year', 'SafetyCompliance');
INSERT INTO driver_media_contracts VALUES (3, 15, 'RacingPulse', '2024-03-01', '2026-02-28', 300000.00, 7.0, 'Exclusive', 'LiveStreams;SocialMedia', 'NorthAmerica', 'AutoRenew', '30DayNotice', '2024-03-01', '2024-03-10', 'Priority for live events', 'Pending', 'Monthly', 24, 'Weekly live streams and monthly social posts', 'ContentApprovalProcess');

-- Race sponsor invoicing
CREATE TABLE race_sponsor_invoicing (
    invoiceId            INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId               INTEGER,
    sponsorId            INTEGER,
    invoiceNumber        TEXT,
    invoiceDate          DATE,
    dueDate              DATE,
    amount               REAL,
    currency             TEXT,
    invoiceStatus        TEXT,
    paymentDate          DATE,
    paymentMethod        TEXT,
    taxAmount            REAL,
    taxRate              REAL,
    discount             REAL,
    netAmount            REAL,
    createdAt            DATE,
    updatedAt            DATE,
    notes                TEXT,
    sponsorshipTier      TEXT,
    billingContact       TEXT,
    billingPhone         TEXT
);

INSERT INTO race_sponsor_invoicing VALUES (1, 101, 3001, 'INV-RACE-1001', '2024-04-01', '2024-04-30', 500000.00, 'USD', 'Unpaid', NULL, 'WireTransfer', 50000.00, 10.0, 0.00, 450000.00, '2024-04-01', '2024-04-15', 'Initial sponsorship invoice', 'Platinum', 'John Doe', '5551112222');
INSERT INTO race_sponsor_invoicing VALUES (2, 102, 3002, 'INV-RACE-1002', '2024-05-01', '2024-05-31', 250000.00, 'EUR', 'Paid', '2024-05-20', 'BankTransfer', 25000.00, 10.0, 5000.00, 220000.00, '2024-05-01', '2024-05-22', 'Second installment', 'Gold', 'Maria Rossi', '5553334444');
INSERT INTO race_sponsor_invoicing VALUES (3, 103, 3003, 'INV-RACE-1003', '2024-06-01', '2024-06-30', 750000.00, 'GBP', 'Unpaid', NULL, 'Cheque', 75000.00, 10.0, 10000.00, 665000.00, '2024-06-01', '2024-06-10', 'Final sponsorship payment', 'Silver', 'David Smith', '5557778888');

-- Fan experience survey responses
CREATE TABLE fan_experience_survey_responses (
    responseId           INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId                INTEGER,
    raceId               INTEGER,
    surveyDate           DATE,
    overallSatisfaction  INTEGER,
    venueComfort         INTEGER,
    foodQuality          INTEGER,
    merchandiseQuality   INTEGER,
    staffFriendliness    INTEGER,
    likelihoodToReturn   INTEGER,
    favoriteFeature      TEXT,
    improvementSuggestions TEXT,
    timeSpentHours       REAL,
    ageGroup             TEXT,
    gender               TEXT,
    nationality          TEXT,
    deviceUsed           TEXT,
    netPromoterScore     INTEGER,
    createdAt            DATE,
    updatedAt            DATE,
    comments             TEXT
);

INSERT INTO fan_experience_survey_responses VALUES (1, 50001, 101, '2024-04-03', 9, 8, 9, 7, 9, 8, 'Grandstands view', 'More vegan options', 5.5, '25-34', 'Male', 'USA', 'Mobile', 70, '2024-04-03', '2024-04-04', 'Great experience overall');
INSERT INTO fan_experience_survey_responses VALUES (2, 50002, 102, '2024-05-02', 7, 6, 7, 6, 7, 6, 'Pit lane walk', 'Improve restroom cleanliness', 4.0, '35-44', 'Female', 'UK', 'Tablet', 45, '2024-05-02', '2024-05-03', 'Good but could be better');
INSERT INTO fan_experience_survey_responses VALUES (3, 50003, 103, '2024-06-01', 8, 9, 8, 8, 9, 9, 'Live commentary', 'Add more family zones', 6.2, '18-24', 'NonBinary', 'Canada', 'Laptop', 80, '2024-06-01', '2024-06-02', 'Loved the atmosphere');

-- Circuit green certifications
CREATE TABLE circuit_green_certifications (
    certId               INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId            INTEGER,
    certifyingBody       TEXT,
    certificationDate    DATE,
    expiryDate           DATE,
    certificationLevel   TEXT,
    criteriaMet          TEXT,
    auditScore           REAL,
    carbonFootprint       REAL,
    renewableEnergyPercent REAL,
    wasteRecyclingRate   REAL,
    waterConservationRate REAL,
    stormwaterManagement TEXT,
    noiseReductionMeasures TEXT,
    biodiversityEnhancement TEXT,
    createdAt            DATE,
    updatedAt            DATE,
    notes                TEXT,
    certNumber           TEXT,
    auditorName          TEXT,
    auditorContact       TEXT
);

INSERT INTO circuit_green_certifications VALUES (1, 1, 'EcoRace', '2023-09-15', '2026-09-14', 'Platinum', 'All', 95.5, 12.3, 45.0, 78.0, 60.5, 'RetentionBasins', 'AcousticBarriers', 'NativePlanting', '2023-09-15', '2023-09-20', 'Excellent sustainability practices', 'CERT-PLAT-001', 'Laura Green', '5559990001');
INSERT INTO circuit_green_certifications VALUES (2, 2, 'SustainableSport', '2022-05-10', '2025-05-09', 'Gold', 'Most', 88.0, 15.0, 30.0, 65.0, 55.0, 'Swales', 'NoiseWalls', 'HabitatRestoration', '2022-05-10', '2022-05-15', 'Good progress on green initiatives', 'CERT-GOLD-002', 'Mark Brown', '5558887777');
INSERT INTO circuit_green_certifications VALUES (3, 3, 'GreenCircuit', '2024-01-20', '2027-01-19', 'Silver', 'Partial', 77.5, 20.5, 20.0, 50.0, 40.0, 'Bioswales', 'VegetativeScreens', 'TreeLines', '2024-01-20', '2024-01-25', 'Working towards higher standards', 'CERT-SILV-003', 'Emma White', '5557776666');

-- Team technology development
CREATE TABLE team_technology_development (
    devId                INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId               INTEGER,
    projectName          TEXT,
    startDate            DATE,
    endDate              DATE,
    techArea             TEXT,
    budget               REAL,
    leadEngineer         TEXT,
    status               TEXT,
    milestonesAchieved   INTEGER,
    totalMilestones      INTEGER,
    successMetric        REAL,
    partners             TEXT,
    hardwareUsed         TEXT,
    softwareUsed         TEXT,
    patentsFiled         INTEGER,
    patentsGranted       INTEGER,
    notes                TEXT,
    createdAt            DATE,
    updatedAt            DATE,
    riskLevel            TEXT
);

INSERT INTO team_technology_development VALUES (1, 10, 'HybridPowerUnit', '2023-03-01', '2025-12-31', 'Powertrain', 12000000.00, 'Ian Clarke', 'InProgress', 4, 8, 0.78, 'EngineCo;BatteryLtd', 'HybridEngineV2', 'SimulationSuiteX', 2, 0, 'Focus on efficiency', '2023-03-01', '2024-06-01', 'Medium');
INSERT INTO team_technology_development VALUES (2, 12, 'AerodynamicOptimization', '2022-01-15', '2024-11-30', 'Aerodynamics', 8000000.00, 'Sofia Martinez', 'Completed', 6, 6, 0.92, 'WindTunnelInc', 'CFDCluster', 'AeroDesignPro', 5, 3, 'Achieved 5% drag reduction', '2022-01-15', '2024-12-01', 'Low');
INSERT INTO team_technology_development VALUES (3, 15, 'DataAnalyticsPlatform', '2024-02-01', '2026-08-31', 'DataScience', 5000000.00, 'Liam Patel', 'Planning', 1, 4, 0.60, 'AnalyticsHub', 'BigDataCluster', 'MLToolkit', 0, 0, 'Initial architecture design', '2024-02-01', '2024-04-15', 'High');

-- Trackside lighting events
CREATE TABLE trackside_lighting_events (
    eventId              INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId            INTEGER,
    eventDate            DATE,
    startTime            TEXT,
    endTime              TEXT,
    lightingProfile      TEXT,
    intensityLevel       REAL,
    colorTemperature     REAL,
    energyConsumption    REAL,
    operatorName         TEXT,
    notes                TEXT,
    createdAt            DATE,
    updatedAt            DATE,
    weatherCondition     TEXT,
    visibilityRange      REAL,
    emergencyOverride    INTEGER,
    maintenanceRequired  INTEGER,
    reason               TEXT,
    approvedBy           TEXT,
    budget               REAL,
    vendorId             INTEGER
);

INSERT INTO trackside_lighting_events VALUES (1, 1, '2024-04-20', '18:00', '20:00', 'EveningShowcase', 85.5, 5600, 1200.00, 'Carlos Ruiz', 'Special lighting for night race', '2024-04-10', '2024-04-20', 'Clear', 10.0, 0, 0, 'Night event', 'Maria Lopez', 25000.00, 4001);
INSERT INTO trackside_lighting_events VALUES (2, 2, '2024-05-15', '19:30', '21:30', 'FestivalGlow', 78.0, 5300, 1100.00, 'Ana Patel', 'Pre‑race fan zone lighting', '2024-05-05', '2024-05-15', 'PartlyCloudy', 9.5, 0, 1, 'Testing new fixtures', 'John Kim', 18000.00, 4002);
INSERT INTO trackside_lighting_events VALUES (3, 3, '2024-06-10', '20:00', '22:00', 'GrandFinal', 90.0, 6000, 1300.00, 'Mike Chen', 'Finale illumination', '2024-06-01', '2024-06-10', 'Clear', 12.0, 0, 0, 'Championship closing', 'Emily Zhang', 30000.00, 4003);

-- Hospitality event surveys
CREATE TABLE hospitality_event_surveys (
    surveyId             INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId              INTEGER,
    respondentId         INTEGER,
    surveyDate           DATE,
    satisfactionScore    INTEGER,
    foodQualityScore     INTEGER,
    serviceScore         INTEGER,
    venueCleanlinessScore INTEGER,
    likelihoodToRecommend INTEGER,
    comments             TEXT,
    createdAt            DATE,
    updatedAt            DATE,
    overallRating        REAL,
    staffProfessionalism INTEGER,
    beverageQuality      INTEGER,
    waitTimeMinutes      REAL,
    ambienceScore        INTEGER,
    accessibilityScore   INTEGER,
    repeatAttendance     INTEGER,
    surveyMethod         TEXT,
    followUpRequired     INTEGER
);

INSERT INTO hospitality_event_surveys VALUES (1, 1001, 7001, '2024-04-05', 9, 8, 9, 9, 9, 'Excellent service and food', '2024-04-05', '2024-04-06', 9.2, 9, 8, 5.0, 9, 9, 1, 'Online', 0);
INSERT INTO hospitality_event_surveys VALUES (2, 1002, 7002, '2024-05-08', 7, 6, 7, 7, 6, 'Good but room for improvement', '2024-05-08', '2024-05-09', 7.0, 7, 6, 8.5, 6, 7, 0, 'Paper', 1);
INSERT INTO hospitality_event_surveys VALUES (3, 1003, 7003, '2024-06-12', 8, 9, 8, 8, 8, 'Loved the ambiance', '2024-06-12', '2024-06-13', 8.3, 8, 9, 6.0, 8, 8, 1, 'Phone', 0);

-- Race security incident analysis
CREATE TABLE race_security_incident_analysis (
    analysisId           INTEGER PRIMARY KEY AUTOINCREMENT,
    incidentId           INTEGER,
    raceId               INTEGER,
    analysisDate         DATE,
    severityLevel        TEXT,
    causeCategory        TEXT,
    responseTimeMinutes  REAL,
    numberOfPersonnel    INTEGER,
    equipmentUsed        TEXT,
    outcome              TEXT,
    recommendations      TEXT,
    createdAt            DATE,
    updatedAt            DATE,
    analystName          TEXT,
    analystTeam          TEXT,
    followUpActions      INTEGER,
    riskMitigationScore  REAL,
    incidentDescription  TEXT,
    notes                TEXT,
    status               TEXT,
    budgetImpact         REAL
);

INSERT INTO race_security_incident_analysis VALUES (1, 50001, 101, '2024-04-02', 'High', 'UnauthorizedEntry', 3.5, 12, 'PatrolVehicles;Drones', 'Suspect detained', 'Increase perimeter fencing', '2024-04-02', '2024-04-03', 'Laura King', 'SecurityOps', 1, 85.0, 'Individual attempted to access pit lane', 'Handled swiftly', 'Closed', 1500.00);
INSERT INTO race_security_incident_analysis VALUES (2, 50002, 102, '2024-05-04', 'Medium', 'CrowdDisturbance', 7.0, 8, 'PublicAddress;BarrierTeams', 'Crowd dispersed peacefully', 'Add more security staff at entry points', '2024-05-04', '2024-05-05', 'Mark Novak', 'EventSecurity', 1, 70.0, 'Minor altercation among spectators', 'No injuries', 'Closed', 800.00);
INSERT INTO race_security_incident_analysis VALUES (3, 50003, 103, '2024-06-06', 'Low', 'EquipmentFailure', 2.0, 5, 'BackupGenerators', 'Power restored within minutes', 'Schedule regular maintenance checks', '2024-06-06', '2024-06-07', 'Sophie Lee', 'InfrastructureTeam', 0, 55.0, 'Temporary loss of lighting on trackside', 'Issue resolved quickly', 'Closed', 500.00);
```