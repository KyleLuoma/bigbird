-- Ambulance Log records for emergency dispatches
CREATE TABLE AmbulanceLog
(
    LogID INTEGER PRIMARY KEY,
    DispatchDate DATE,
    DispatchTime TEXT,
    CallType TEXT,
    CallerLocation TEXT,
    DestinationHospital TEXT,
    PatientAge INTEGER,
    PatientSex TEXT,
    ConditionSeverity INTEGER,
    EMSUnitID TEXT,
    CrewCount INTEGER,
    TransportDuration INTEGER,
    MilesTravelled REAL,
    EquipmentUsed TEXT,
    MedsAdministered TEXT,
    Narrative TEXT,
    WeatherCondition TEXT,
    TrafficLevel TEXT,
    Outcome TEXT,
    FollowUpRequired INTEGER
);

INSERT INTO AmbulanceLog VALUES (1, '2025-01-10', '08:15', 'Cardiac', '123 Main St', 'Central Hospital', 68, 'Male', 5, 'EMS01', 3, 25, 12.4, 'Defibrillator', 'Aspirin', 'Patient recovered en route', 'Clear', 'Moderate', 'Stable', 0);
INSERT INTO AmbulanceLog VALUES (2, '2025-02-05', '14:30', 'Trauma', '456 Oak Ave', 'North Medical Center', 34, 'Female', 4, 'EMS03', 4, 40, 22.1, 'Spine Board', 'Painkiller', 'No change in vitals', 'Rain', 'Heavy', 'Critical', 1);
INSERT INTO AmbulanceLog VALUES (3, '2025-03-22', '22:05', 'Respiratory', '789 Pine Rd', 'East Health', 52, 'Male', 3, 'EMS02', 2, 15, 8.7, 'Oxygen', 'Bronchodilator', 'Improved breathing', 'Snow', 'Light', 'Improved', 0);

-- Usage records for medical supplies across departments
CREATE TABLE MedicalSupplyUsage
(
    UsageID INTEGER PRIMARY KEY,
    UsageDate DATE,
    Department TEXT,
    SupplyCategory TEXT,
    ItemCode TEXT,
    ItemDescription TEXT,
    QuantityUsed INTEGER,
    UnitCost REAL,
    TotalCost REAL,
    SupplierName TEXT,
    BatchNumber TEXT,
    ExpirationDate DATE,
    ReceivedBy TEXT,
    ApprovedBy TEXT,
    UsageReason TEXT,
    StorageLocation TEXT,
    StockLevelBefore INTEGER,
    StockLevelAfter INTEGER,
    ReorderFlag INTEGER,
    Comments TEXT
);

INSERT INTO MedicalSupplyUsage VALUES (101, '2025-01-12', 'Surgery', 'Bandage', 'BND001', 'Elastic Bandage Large', 30, 0.75, 22.5, 'MediSupplyCo', 'BN202412', '2026-12-31', 'Alice', 'DrSmith', 'PostOp Dressing', 'StoreA1', 200, 170, 0, 'Sufficient stock');
INSERT INTO MedicalSupplyUsage VALUES (102, '2025-02-18', 'ICU', 'IVFluid', 'IVF010', 'Normal Saline 500ml', 50, 1.20, 60.0, 'HealthDistributors', 'IV202411', '2027-11-30', 'Bob', 'DrLee', 'Fluid Resuscitation', 'StoreB3', 120, 70, 1, 'Reorder needed soon');
INSERT INTO MedicalSupplyUsage VALUES (103, '2025-03-05', 'ER', 'Gloves', 'GLV100', 'Latex Gloves Medium', 200, 0.05, 10.0, 'SafeGloveInc', 'GL202510', '2025-10-15', 'Carol', 'DrKim', 'Routine Exam', 'StoreC2', 800, 600, 0, 'Stock stable');

-- Staff members involved in clinical research projects
CREATE TABLE ClinicalResearchStaff
(
    StaffID INTEGER PRIMARY KEY,
    FirstName TEXT,
    LastName TEXT,
    Role TEXT,
    Department TEXT,
    HireDate DATE,
    Email TEXT,
    Phone TEXT,
    Certification TEXT,
    CertificationDate DATE,
    ClearanceLevel INTEGER,
    SupervisorID INTEGER,
    ProjectCode TEXT,
    ShiftPattern TEXT,
    HoursPerWeek INTEGER,
    Salary REAL,
    ContractType TEXT,
    AvailabilityStatus TEXT,
    TrainingCompleted TEXT,
    Notes TEXT
);

INSERT INTO ClinicalResearchStaff VALUES (1001, 'Emily', 'Clark', 'Coordinator', 'Oncology', '2021-06-15', 'eclark@hospital.org', '5551234', 'GCP', '2022-01-20', 3, 1000, 'ONC001', 'Day', 40, 65000, 'FullTime', 'Available', 'Yes', '');
INSERT INTO ClinicalResearchStaff VALUES (1002, 'James', 'Miller', 'DataManager', 'Cardiology', '2020-03-10', 'jmiller@hospital.org', '5555678', 'CDM', '2021-04-12', 2, 1000, 'CAR002', 'Night', 35, 58000, 'Contract', 'OnLeave', 'Yes', '');
INSERT INTO ClinicalResearchStaff VALUES (1003, 'Sofia', 'Nguyen', 'Investigator', 'Neurology', '2019-11-01', 'snguyen@hospital.org', '5559012', 'MD', '2020-02-05', 4, NULL, 'NEU003', 'Rotating', 45, 98000, 'FullTime', 'Available', 'Yes', '');

-- Energy consumption records for hospital facilities
CREATE TABLE FacilityEnergyUsage
(
    RecordID INTEGER PRIMARY KEY,
    RecordDate DATE,
    BuildingCode TEXT,
    Wing TEXT,
    Floor INTEGER,
    EnergyType TEXT,
    ConsumptionKWh REAL,
    CostUSD REAL,
    PeakDemandKW REAL,
    RenewablePercentage REAL,
    WeatherImpactScore REAL,
    MaintenanceFlag INTEGER,
    Notes TEXT,
    OperatorID INTEGER,
    Shift TEXT,
    VoltageLevel REAL,
    CurrentAmps REAL,
    PowerFactor REAL,
    CO2EmissionKg REAL,
    BenchmarkComparison TEXT
);

INSERT INTO FacilityEnergyUsage VALUES (5001, '2025-01-31', 'B001', 'North', 2, 'Electric', 4520.5, 620.75, 210.3, 15.2, 0.8, 0, 'Normal operation', 200, 'Day', 230.0, 20.5, 0.96, 3400.1, 'WithinTarget');
INSERT INTO FacilityEnergyUsage VALUES (5002, '2025-02-28', 'B002', 'South', 1, 'Gas', 3100.0, 410.20, 150.0, 5.0, 1.2, 1, 'Minor leak repaired', 201, 'Night', 240.0, 15.2, 0.94, 2500.0, 'AboveTarget');
INSERT INTO FacilityEnergyUsage VALUES (5003, '2025-03-31', 'B001', 'East', 3, 'Electric', 4980.8, 685.40, 225.7, 18.5, 0.6, 0, 'Solar boost', 200, 'Day', 230.0, 22.0, 0.97, 3700.5, 'WithinTarget');

-- Requests for patient intra‑hospital transport
CREATE TABLE PatientTransportRequest
(
    RequestID INTEGER PRIMARY KEY,
    RequestDate DATE,
    PatientMRN TEXT,
    FromLocation TEXT,
    ToLocation TEXT,
    TransportMode TEXT,
    RequestedTime TEXT,
    PriorityLevel INTEGER,
    RequestedBy TEXT,
    ApprovedBy TEXT,
    TransportStatus TEXT,
    EstimatedDuration INTEGER,
    ActualDuration INTEGER,
    TransportDriverID TEXT,
    VehicleID TEXT,
    EquipmentNeeded TEXT,
    SpecialInstructions TEXT,
    FollowUpNotes TEXT,
    BillingCode TEXT,
    CancelledFlag INTEGER
);

INSERT INTO PatientTransportRequest VALUES (3001, '2025-01-20', 'MRN00123', 'WardA', 'Radiology', 'Stretcher', '09:00', 2, 'NurseAmy', 'DrBrown', 'Completed', 15, 17, 'DRV05', 'VEH12', 'Oxygen', 'Keep upright', 'No issues', 'BRC101', 0);
INSERT INTO PatientTransportRequest VALUES (3002, '2025-02-14', 'MRN00456', 'ICU', 'Surgery', 'Wheelchair', '13:30', 1, 'NurseBob', 'DrWhite', 'Cancelled', 0, 0, NULL, NULL, NULL, 'Patient stable', 'BRC202', 1);
INSERT INTO PatientTransportRequest VALUES (3003, '2025-03-07', 'MRN00789', 'ER', 'Cardiology', 'Stretcher', '18:45', 3, 'NurseCara', 'DrGreen', 'InProgress', 20, NULL, 'DRV08', 'VEH15', 'Monitor', 'Arrive promptly', '', 'BRC303', 0);

-- Nutrition assessment records for in‑patient individuals
CREATE TABLE NutritionAssessment
(
    AssessmentID INTEGER PRIMARY KEY,
    AssessmentDate DATE,
    PatientID INTEGER,
    HeightCM INTEGER,
    WeightKG REAL,
    BMI REAL,
    NutritionalRiskScore INTEGER,
    DietType TEXT,
    Allergies TEXT,
    CalorieGoal INTEGER,
    ProteinGoalG INTEGER,
    FluidGoalML INTEGER,
    MicronutrientSupplements TEXT,
    AssessmentNotes TEXT,
    AssessorID INTEGER,
    FollowUpDate DATE,
    InterventionPlan TEXT,
    ComplianceLevel INTEGER,
    Outcome TEXT,
    ReviewRequired INTEGER
);

INSERT INTO NutritionAssessment VALUES (9001, '2025-01-15', 101, 170, 68.5, 23.7, 2, 'Regular', 'None', 2000, 75, 1800, 'VitaminD', 'Stable weight', 2001, '2025-02-15', 'Increase protein', 80, 'Improved', 0);
INSERT INTO NutritionAssessment VALUES (9002, '2025-02-10', 102, 160, 55.0, 21.5, 1, 'LowSodium', 'Penicillin', 1800, 65, 1500, 'Iron', 'Low appetite', 2002, '2025-03-10', 'Supplement meals', 70, 'Stable', 0);
INSERT INTO NutritionAssessment VALUES (9003, '2025-03-05', 103, 182, 85.0, 25.6, 3, 'Diabetic', 'Latex', 2200, 80, 2000, 'Calcium', 'Overweight', 2001, '2025-04-05', 'Calorie restriction', 60, 'Weight loss', 1);

-- Audits of infection control practices
CREATE TABLE InfectionControlAudit
(
    AuditID INTEGER PRIMARY KEY,
    AuditDate DATE,
    AuditedArea TEXT,
    AuditorName TEXT,
    HandHygieneCompliance REAL,
    PPECompliance REAL,
    SurfaceCleaningScore REAL,
    EquipmentSterilizationScore REAL,
    IsolationProtocolAdherence REAL,
    StaffTrainingStatus TEXT,
    ViolationCount INTEGER,
    CorrectiveActions TEXT,
    FollowUpDate DATE,
    RiskLevel TEXT,
    Notes TEXT,
    DepartmentHead TEXT,
    AuditDurationMinutes INTEGER,
    SamplingMethod TEXT,
    FindingsSummary TEXT,
    ActionOwner TEXT
);

INSERT INTO InfectionControlAudit VALUES (4001, '2025-01-25', 'ICU', 'Laura', 92.5, 88.0, 90.0, 85.5, 80.0, 'Completed', 2, 'Re‑educate staff', '2025-02-20', 'High', '', 'DrSmith', 120, 'Random', 'Minor gaps', 'NurseLee');
INSERT INTO InfectionControlAudit VALUES (4002, '2025-02-18', 'Surgery', 'Mark', 95.0, 93.0, 94.5, 92.0, 96.0, 'Completed', 0, 'None', '2025-03-15', 'Low', '', 'DrJones', 90, 'Targeted', 'Excellent compliance', 'SurgeonKim');
INSERT INTO InfectionControlAudit VALUES (4003, '2025-03-22', 'ER', 'Nina', 88.0, 85.5, 80.0, 78.0, 70.0, 'Pending', 4, 'Increase monitoring', '2025-04-18', 'Medium', '', 'DrLee', 110, 'Systematic', 'Needs improvement', 'AdminPat');

-- Staff wellness program details
CREATE TABLE StaffWellnessProgram
(
    ProgramID INTEGER PRIMARY KEY,
    ProgramName TEXT,
    StartDate DATE,
    EndDate DATE,
    TargetGroup TEXT,
    Coordinator TEXT,
    SessionsPerWeek INTEGER,
    SessionLengthMinutes INTEGER,
    ParticipationRate REAL,
    IncentivesOffered TEXT,
    HealthMetricsTracked TEXT,
    FeedbackScore REAL,
    BudgetUSD REAL,
    Sponsor TEXT,
    Location TEXT,
    MaxCapacity INTEGER,
    EnrollmentOpen INTEGER,
    EvaluationMethod TEXT,
    OutcomeSummary TEXT,
    NextPhasePlanned INTEGER
);

INSERT INTO StaffWellnessProgram VALUES (6001, 'FitLife', '2025-01-01', '2025-12-31', 'AllStaff', 'Karen', 2, 45, 68.5, 'GymPass', 'BMI,Stress', 4.2, 15000, 'HRDept', 'WellnessCenter', 200, 1, 'Survey', 'Positive health impact', 1);
INSERT INTO StaffWellnessProgram VALUES (6002, 'MindfulMoments', '2025-03-01', '2025-09-30', 'Nurses', 'David', 1, 60, 55.0, 'MeditationApp', 'Stress,Sleep', 3.8, 8000, 'WellnessTeam', 'Room302', 120, 1, 'FocusGroup', 'Reduced burnout', 0);
INSERT INTO StaffWellnessProgram VALUES (6003, 'NutritionBoost', '2025-02-15', '2025-08-15', 'Physicians', 'Laura', 1, 30, 40.0, 'HealthySnacks', 'DietScore', 3.5, 5000, 'FoodServices', 'Cafeteria', 80, 0, 'PrePostSurvey', 'Improved diet awareness', 0);

-- Lease contracts for medical equipment
CREATE TABLE MedicalEquipmentLease
(
    LeaseID INTEGER PRIMARY KEY,
    EquipmentID TEXT,
    EquipmentType TEXT,
    LeaseStartDate DATE,
    LeaseEndDate DATE,
    LessorName TEXT,
    LesseeDepartment TEXT,
    MonthlyRate REAL,
    TotalCost REAL,
    MaintenanceIncluded INTEGER,
    ServiceContact TEXT,
    WarrantyExpiration DATE,
    SerialNumber TEXT,
    AssetTag TEXT,
    ConditionAtLease TEXT,
    ConditionNow TEXT,
    LeaseStatus TEXT,
    RenewalOption INTEGER,
    Notes TEXT,
    LastInspectionDate DATE
);

INSERT INTO MedicalEquipmentLease VALUES (7001, 'EQ001', 'MRI_Scanner', '2023-06-01', '2026-05-31', 'ImagingLeases', 'Radiology', 25000, 750000, 1, 'JohnDoe', '2028-06-01', 'SN12345', 'AT1001', 'New', 'Good', 'Active', 1, '', '2025-02-10');
INSERT INTO MedicalEquipmentLease VALUES (7002, 'EQ002', 'Ventilator', '2024-01-15', '2027-01-14', 'MedEquipCo', 'ICU', 8000, 240000, 1, 'JaneSmith', '2029-01-15', 'SN67890', 'AT1002', 'Good', 'Excellent', 'Active', 1, '', '2025-03-05');
INSERT INTO MedicalEquipmentLease VALUES (7003, 'EQ003', 'XRay_Machine', '2022-09-01', '2025-08-31', 'RadiologyAssets', 'Emergency', 12000, 360000, 0, 'MikeBrown', '2024-09-01', 'SN54321', 'AT1003', 'Fair', 'Fair', 'Expired', 0, 'Returned to lessor', '2024-12-20');

-- Community health survey responses
CREATE TABLE CommunityHealthSurvey
(
    SurveyID INTEGER PRIMARY KEY,
    SurveyDate DATE,
    CommunityName TEXT,
    RespondentID TEXT,
    Age INTEGER,
    Sex TEXT,
    HouseholdIncome INTEGER,
    EducationLevel TEXT,
    HealthStatus TEXT,
    ChronicConditions TEXT,
    SmokingStatus TEXT,
    AlcoholConsumption TEXT,
    PhysicalActivityLevel TEXT,
    DietaryHabits TEXT,
    AccessToCare TEXT,
    InsuranceStatus TEXT,
    VaccinationStatus TEXT,
    MentalHealthScore REAL,
    SurveyMode TEXT,
    FollowUpRecommended INTEGER
);

INSERT INTO CommunityHealthSurvey VALUES (8001, '2025-01-20', 'Lakeside', 'R001', 45, 'Male', 55000, 'College', 'Good', 'Hypertension', 'Never', 'Moderate', 'Active', 'Balanced', 'Yes', 'Private', 'Full', 78.5, 'Online', 0);
INSERT INTO CommunityHealthSurvey VALUES (8002, '2025-02-14', 'Riverbank', 'R002', 32, 'Female', 42000, 'HighSchool', 'Fair', 'Asthma', 'Former', 'Low', 'Sedentary', 'HighSugar', 'No', 'None', 'Partial', 62.0, 'Paper', 1);
INSERT INTO CommunityHealthSurvey VALUES (8003, '2025-03-08', 'Hillcrest', 'R003', 58, 'Male', 72000, 'Graduate', 'Excellent', 'None', 'Never', 'Low', 'VeryActive', 'LowFat', 'Yes', 'Employer', 'Full', 85.3, 'Phone', 0);