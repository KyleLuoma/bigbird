-- School security access controls
CREATE TABLE school_security_access_controls (
    AccessID INTEGER PRIMARY KEY,
    CDSCode TEXT,
    Area TEXT,
    ControlType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    InstallationDate DATE,
    LastMaintenanceDate DATE,
    FirmwareVersion TEXT,
    AccessLevel INTEGER,
    IsActive INTEGER,
    CardNumber TEXT,
    BiometricID TEXT,
    EncryptionKey TEXT,
    WarrantyExpiration DATE,
    PowerSource TEXT,
    NetworkIP TEXT,
    MACAddress TEXT,
    LocationLatitude REAL,
    LocationLongitude REAL,
    Notes TEXT
);

INSERT INTO school_security_access_controls (AccessID, CDSCode, Area, ControlType, Manufacturer, ModelNumber, InstallationDate, LastMaintenanceDate, FirmwareVersion, AccessLevel, IsActive, CardNumber, BiometricID, EncryptionKey, WarrantyExpiration, PowerSource, NetworkIP, MACAddress, LocationLatitude, LocationLongitude, Notes)
VALUES (1, '001', 'Main Entrance', 'Card Reader', 'SecureTech', 'SR-1000', '2020-01-15', '2022-12-01', 'v1.2.3', 5, 1, 'CARD12345', 'BIO001', 'ENCKEY001', '2025-01-15', 'Mains', '192.168.1.10', 'AA:BB:CC:DD:EE:01', 34.0522, -118.2437, 'Installed during 2020 security upgrade');

INSERT INTO school_security_access_controls (AccessID, CDSCode, Area, ControlType, Manufacturer, ModelNumber, InstallationDate, LastMaintenanceDate, FirmwareVersion, AccessLevel, IsActive, CardNumber, BiometricID, EncryptionKey, WarrantyExpiration, PowerSource, NetworkIP, MACAddress, LocationLatitude, LocationLongitude, Notes)
VALUES (2, '002', 'Science Wing', 'Biometric', 'BioLock', 'BL-200', '2021-03-10', '2023-03-09', 'v3.0.1', 8, 1, 'CARD67890', 'BIO002', 'ENCKEY002', '2026-03-10', 'Battery', '192.168.1.11', 'AA:BB:CC:DD:EE:02', 34.0530, -118.2440, 'Biometric scanner for lab access');

INSERT INTO school_security_access_controls (AccessID, CDSCode, Area, ControlType, Manufacturer, ModelNumber, InstallationDate, LastMaintenanceDate, FirmwareVersion, AccessLevel, IsActive, CardNumber, BiometricID, EncryptionKey, WarrantyExpiration, PowerSource, NetworkIP, MACAddress, LocationLatitude, LocationLongitude, Notes)
VALUES (3, '003', 'Gymnasium', 'Keypad', 'EntrySafe', 'KS-300', '2019-09-05', '2022-09-04', 'v2.5.0', 3, 1, 'CARD11223', 'BIO003', 'ENCKEY003', '2024-09-05', 'Mains', '192.168.1.12', 'AA:BB:CC:DD:EE:03', 34.0540, -118.2450, 'Keypad for staff entrance');

-- District sustainability reporting
CREATE TABLE district_sustainability_reporting (
    ReportID INTEGER PRIMARY KEY,
    DistrictCode TEXT,
    ReportYear INTEGER,
    TotalEnergyConsumption REAL,
    RenewableEnergyPercentage REAL,
    WaterUsageLiters REAL,
    WasteGeneratedKg REAL,
    CO2EmissionsTon REAL,
    GreenBuildingCount INTEGER,
    LEEDCertifiedBuildings INTEGER,
    SolarCapacityMW REAL,
    WindCapacityMW REAL,
    SustainabilityScore INTEGER,
    ReportPreparedBy TEXT,
    ReportDate DATE,
    Comments TEXT,
    DataSource TEXT,
    VerificationStatus TEXT,
    LastUpdate DATE,
    AuditLog TEXT,
    Region TEXT,
    ClimateZone TEXT
);

INSERT INTO district_sustainability_reporting (ReportID, DistrictCode, ReportYear, TotalEnergyConsumption, RenewableEnergyPercentage, WaterUsageLiters, WasteGeneratedKg, CO2EmissionsTon, GreenBuildingCount, LEEDCertifiedBuildings, SolarCapacityMW, WindCapacityMW, SustainabilityScore, ReportPreparedBy, ReportDate, Comments, DataSource, VerificationStatus, LastUpdate, AuditLog, Region, ClimateZone)
VALUES (101, 'D001', 2022, 1250000.5, 18.7, 45000000, 32000, 2500.3, 12, 5, 2.5, 0.8, 82, 'Jane Doe', '2023-02-15', 'Annual sustainability report', 'Internal', 'Verified', '2023-02-20', 'No issues', 'North', 'Temperate');

INSERT INTO district_sustainability_reporting (ReportID, DistrictCode, ReportYear, TotalEnergyConsumption, RenewableEnergyPercentage, WaterUsageLiters, WasteGeneratedKg, CO2EmissionsTon, GreenBuildingCount, LEEDCertifiedBuildings, SolarCapacityMW, WindCapacityMW, SustainabilityScore, ReportPreparedBy, ReportDate, Comments, DataSource, VerificationStatus, LastUpdate, AuditLog, Region, ClimateZone)
VALUES (102, 'D002', 2022, 980000.0, 22.1, 38000000, 28000, 2100.0, 9, 3, 1.8, 1.2, 88, 'John Smith', '2023-02-16', 'Improved renewable adoption', 'External', 'Pending', '2023-02-21', 'Awaiting external verification', 'South', 'Arid');

INSERT INTO district_sustainability_reporting (ReportID, DistrictCode, ReportYear, TotalEnergyConsumption, RenewableEnergyPercentage, WaterUsageLiters, WasteGeneratedKg, CO2EmissionsTon, GreenBuildingCount, LEEDCertifiedBuildings, SolarCapacityMW, WindCapacityMW, SustainabilityScore, ReportPreparedBy, ReportDate, Comments, DataSource, VerificationStatus, LastUpdate, AuditLog, Region, ClimateZone)
VALUES (103, 'D003', 2022, 1125000.3, 15.4, 42000000, 31000, 2350.7, 11, 4, 2.2, 0.9, 79, 'Alice Green', '2023-02-17', 'Focus on waste reduction', 'Internal', 'Verified', '2023-02-22', 'Completed', 'East', 'Continental');

-- Community nutrition programs
CREATE TABLE community_nutrition_programs (
    ProgramID INTEGER PRIMARY KEY,
    CommunityID TEXT,
    ProgramName TEXT,
    StartDate DATE,
    EndDate DATE,
    TargetPopulation TEXT,
    MealsPerDay INTEGER,
    AvgCaloriesPerMeal INTEGER,
    FundingSource TEXT,
    AnnualBudget REAL,
    CoordinatorName TEXT,
    CoordinatorPhone TEXT,
    CoordinatorEmail TEXT,
    LocationAddress TEXT,
    ZipCode TEXT,
    ServiceArea TEXT,
    EligibilityCriteria TEXT,
    ParticipationRate REAL,
    OutcomeMeasure TEXT,
    EvaluationDate DATE,
    Notes TEXT,
    IsActive INTEGER
);

INSERT INTO community_nutrition_programs (ProgramID, CommunityID, ProgramName, StartDate, EndDate, TargetPopulation, MealsPerDay, AvgCaloriesPerMeal, FundingSource, AnnualBudget, CoordinatorName, CoordinatorPhone, CoordinatorEmail, LocationAddress, ZipCode, ServiceArea, EligibilityCriteria, ParticipationRate, OutcomeMeasure, EvaluationDate, Notes, IsActive)
VALUES (201, 'C001', 'Summer Food Hub', '2022-06-01', '2022-08-31', 'Low Income Families', 3, 650, 'State Grant', 75000.00, 'Maria Lopez', '5551234567', 'mlopez@example.com', '123 Main St', '90001', 'Urban', 'Income < 200% FPL', 0.85, 'Weight gain reduction', '2022-09-15', 'Program met targets', 1);

INSERT INTO community_nutrition_programs (ProgramID, CommunityID, ProgramName, StartDate, EndDate, TargetPopulation, MealsPerDay, AvgCaloriesPerMeal, FundingSource, AnnualBudget, CoordinatorName, CoordinatorPhone, CoordinatorEmail, LocationAddress, ZipCode, ServiceArea, EligibilityCriteria, ParticipationRate, OutcomeMeasure, EvaluationDate, Notes, IsActive)
VALUES (202, 'C002', 'Winter Warm Meals', '2022-12-01', '2023-02-28', 'Elderly', 2, 700, 'Private Donation', 50000.00, 'James Patel', '5559876543', 'jpatel@example.com', '456 Oak Ave', '90002', 'Suburban', 'Age > 65', 0.78, 'Improved nutrition scores', '2023-03-10', 'High satisfaction', 1);

INSERT INTO community_nutrition_programs (ProgramID, CommunityID, ProgramName, StartDate, EndDate, TargetPopulation, MealsPerDay, AvgCaloriesPerMeal, FundingSource, AnnualBudget, CoordinatorName, CoordinatorPhone, CoordinatorEmail, LocationAddress, ZipCode, ServiceArea, EligibilityCriteria, ParticipationRate, OutcomeMeasure, EvaluationDate, Notes, IsActive)
VALUES (203, 'C003', 'AfterSchool Snack Program', '2023-01-15', '2023-06-15', 'Elementary Students', 1, 300, 'Federal Grant', 120000.00, 'Sofia Rivera', '5552223344', 'srivera@example.com', '789 Pine Rd', '90003', 'Rural', 'School enrollment only', 0.92, 'Increased attendance', '2023-06-30', 'Expanded to 5 schools', 1);

-- Facility HVAC system components
CREATE TABLE facility_hvac_system_components (
    ComponentID INTEGER PRIMARY KEY,
    FacilityID TEXT,
    SystemType TEXT,
    ComponentName TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    InstallationDate DATE,
    WarrantyExpiration DATE,
    CapacityBTU REAL,
    EfficiencyRating REAL,
    PowerRequirementKW REAL,
    LastInspectionDate DATE,
    InspectionStatus TEXT,
    MaintenanceFrequencyMonths INTEGER,
    LastMaintenanceDate DATE,
    ConditionScore INTEGER,
    LocationRoom TEXT,
    SupplyAirFlowCFM REAL,
    ReturnAirFlowCFM REAL,
    ControlType TEXT,
    Notes TEXT
);

INSERT INTO facility_hvac_system_components (ComponentID, FacilityID, SystemType, ComponentName, Manufacturer, ModelNumber, SerialNumber, InstallationDate, WarrantyExpiration, CapacityBTU, EfficiencyRating, PowerRequirementKW, LastInspectionDate, InspectionStatus, MaintenanceFrequencyMonths, LastMaintenanceDate, ConditionScore, LocationRoom, SupplyAirFlowCFM, ReturnAirFlowCFM, ControlType, Notes)
VALUES (301, 'F001', 'Heating', 'Boiler', 'HeatCo', 'BC-500', 'SN12345', '2018-04-20', '2028-04-20', 150000.0, 0.92, 45.0, '2023-01-10', 'Pass', 12, '2023-01-01', 9, 'MechanicalRoom1', 1200.0, 1150.0, 'Digital', 'Routine service completed');

INSERT INTO facility_hvac_system_components (ComponentID, FacilityID, SystemType, ComponentName, Manufacturer, ModelNumber, SerialNumber, InstallationDate, WarrantyExpiration, CapacityBTU, EfficiencyRating, PowerRequirementKW, LastInspectionDate, InspectionStatus, MaintenanceFrequencyMonths, LastMaintenanceDate, ConditionScore, LocationRoom, SupplyAirFlowCFM, ReturnAirFlowCFM, ControlType, Notes)
VALUES (302, 'F002', 'Cooling', 'Chiller', 'CoolTech', 'CH-300', 'SN54321', '2019-07-15', '2029-07-15', 200000.0, 0.88, 60.0, '2023-02-12', 'Pass', 12, '2023-02-01', 8, 'MechanicalRoom2', 1500.0, 1480.0, 'Analog', 'Pending filter replacement');

INSERT INTO facility_hvac_system_components (ComponentID, FacilityID, SystemType, ComponentName, Manufacturer, ModelNumber, SerialNumber, InstallationDate, WarrantyExpiration, CapacityBTU, EfficiencyRating, PowerRequirementKW, LastInspectionDate, InspectionStatus, MaintenanceFrequencyMonths, LastMaintenanceDate, ConditionScore, LocationRoom, SupplyAirFlowCFM, ReturnAirFlowCFM, ControlType, Notes)
VALUES (303, 'F003', 'Ventilation', 'AirHandler', 'VentAir', 'AH-250', 'SN67890', '2020-03-01', '2030-03-01', 100000.0, 0.90, 30.0, '2023-03-05', 'Pass', 12, '2023-03-01', 7, 'MechanicalRoom3', 800.0, 790.0, 'Digital', 'Noise level within limits');

-- Student service learning projects
CREATE TABLE student_service_learning_projects (
    ProjectID INTEGER PRIMARY KEY,
    SchoolCDSCode TEXT,
    ProjectName TEXT,
    StartDate DATE,
    EndDate DATE,
    PartnerOrganization TEXT,
    ServiceHoursRequired INTEGER,
    StudentCount INTEGER,
    SupervisorName TEXT,
    SupervisorEmail TEXT,
    FundingAmount REAL,
    OutcomeDescription TEXT,
    EvaluationScore INTEGER,
    IsCommunityBased INTEGER,
    ProjectCategory TEXT,
    GradeLevel TEXT,
    SubmissionDate DATE,
    ApprovalStatus TEXT,
    Notes TEXT,
    ImpactMetric REAL,
    DataCollectedDate DATE,
    ContactPhone TEXT
);

INSERT INTO student_service_learning_projects (ProjectID, SchoolCDSCode, ProjectName, StartDate, EndDate, PartnerOrganization, ServiceHoursRequired, StudentCount, SupervisorName, SupervisorEmail, FundingAmount, OutcomeDescription, EvaluationScore, IsCommunityBased, ProjectCategory, GradeLevel, SubmissionDate, ApprovalStatus, Notes, ImpactMetric, DataCollectedDate, ContactPhone)
VALUES (401, '001', 'Park Clean-Up', '2023-04-01', '2023-04-15', 'City Parks Dept', 20, 35, 'Laura Kim', 'lkim@example.com', 5000.00, 'Removed 2 tons of litter', 88, 1, 'Environmental', '9-12', '2023-02-20', 'Approved', 'Students received community service credit', 0.95, '2023-04-16', '5551112222');

INSERT INTO student_service_learning_projects (ProjectID, SchoolCDSCode, ProjectName, StartDate, EndDate, PartnerOrganization, ServiceHoursRequired, StudentCount, SupervisorName, SupervisorEmail, FundingAmount, OutcomeDescription, EvaluationScore, IsCommunityBased, ProjectCategory, GradeLevel, SubmissionDate, ApprovalStatus, Notes, ImpactMetric, DataCollectedDate, ContactPhone)
VALUES (402, '002', 'Senior Tech Help', '2023-05-05', '2023-06-20', 'Golden Years Center', 30, 20, 'Mark Chen', 'mchen@example.com', 3000.00, 'Provided tech tutoring to seniors', 91, 1, 'Social', '6-8', '2023-03-10', 'Pending', 'Awaiting final report', 0.89, '2023-06-21', '5553334444');

INSERT INTO student_service_learning_projects (ProjectID, SchoolCDSCode, ProjectName, StartDate, EndDate, PartnerOrganization, ServiceHoursRequired, StudentCount, SupervisorName, SupervisorEmail, FundingAmount, OutcomeDescription, EvaluationScore, IsCommunityBased, ProjectCategory, GradeLevel, SubmissionDate, ApprovalStatus, Notes, ImpactMetric, DataCollectedDate, ContactPhone)
VALUES (403, '003', 'Food Drive', '2023-11-01', '2023-12-15', 'Community Food Bank', 15, 50, 'Nina Patel', 'npatel@example.com', 2000.00, 'Collected 5,000 lbs of food', 85, 1, 'Humanitarian', 'K-12', '2023-09-01', 'Approved', 'Logistics coordinated by parent volunteers', 0.92, '2023-12-16', '5555556666');

-- Teacher technology integration logs
CREATE TABLE teacher_technology_integration_logs (
    LogID INTEGER PRIMARY KEY,
    TeacherID TEXT,
    SchoolCDSCode TEXT,
    Date DATE,
    TechnologyUsed TEXT,
    IntegrationPurpose TEXT,
    LessonTopic TEXT,
    DurationMinutes INTEGER,
    StudentEngagementScore INTEGER,
    TechnicalIssuesEncountered TEXT,
    ResolutionStatus TEXT,
    TrainingProvidedBy TEXT,
    FollowUpDate DATE,
    ObservedOutcome TEXT,
    ResourcesLinked TEXT,
    ClassroomLocation TEXT,
    GradeLevel TEXT,
    Notes TEXT,
    IsSuccessful INTEGER,
    FeedbackScore INTEGER,
    RecordedBy TEXT,
    ReviewStatus TEXT
);

INSERT INTO teacher_technology_integration_logs (LogID, TeacherID, SchoolCDSCode, Date, TechnologyUsed, IntegrationPurpose, LessonTopic, DurationMinutes, StudentEngagementScore, TechnicalIssuesEncountered, ResolutionStatus, TrainingProvidedBy, FollowUpDate, ObservedOutcome, ResourcesLinked, ClassroomLocation, GradeLevel, Notes, IsSuccessful, FeedbackScore, RecordedBy, ReviewStatus)
VALUES (501, 'T001', '001', '2023-03-12', 'Interactive Whiteboard', 'Visual Learning', 'Photosynthesis', 45, 82, 'None', 'N/A', 'EdTech Dept', '2023-03-20', 'Higher quiz scores', 'SlideDeck1,VideoA', 'Room101', '9', 'Smooth session', 1, 4, 'Admin1', 'Reviewed');

INSERT INTO teacher_technology_integration_logs (LogID, TeacherID, SchoolCDSCode, Date, TechnologyUsed, IntegrationPurpose, LessonTopic, DurationMinutes, StudentEngagementScore, TechnicalIssuesEncountered, ResolutionStatus, TrainingProvidedBy, FollowUpDate, ObservedOutcome, ResourcesLinked, ClassroomLocation, GradeLevel, Notes, IsSuccessful, FeedbackScore, RecordedBy, ReviewStatus)
VALUES (502, 'T002', '002', '2023-04-05', 'Student Response System', 'Formative Assessment', 'Algebra I', 30, 76, 'Lag in response', 'Issue Resolved', 'Tech Support', '2023-04-12', 'Improved participation', 'QuizBank5', 'Room202', '10', 'Minor delay', 1, 3, 'Admin2', 'Pending');

INSERT INTO teacher_technology_integration_logs (LogID, TeacherID, SchoolCDSCode, Date, TechnologyUsed, IntegrationPurpose, LessonTopic, DurationMinutes, StudentEngagementScore, TechnicalIssuesEncountered, ResolutionStatus, TrainingProvidedBy, FollowUpDate, ObservedOutcome, ResourcesLinked, ClassroomLocation, GradeLevel, Notes, IsSuccessful, FeedbackScore, RecordedBy, ReviewStatus)
VALUES (503, 'T003', '003', '2023-05-20', 'Virtual Reality Headsets', 'Immersive Exploration', 'Ancient Egypt', 60, 90, 'Headset battery low', 'Recharged', 'VR Vendor', '2023-05-27', 'High enthusiasm', 'VRScene3', 'Room303', '11', 'Battery issue addressed', 1, 5, 'Admin3', 'Approved');

-- Regional air quality forecast models
CREATE TABLE regional_air_quality_forecast_models (
    ModelID INTEGER PRIMARY KEY,
    RegionName TEXT,
    ModelVersion TEXT,
    ForecastDate DATE,
    PM25Forecast REAL,
    OzoneForecast REAL,
    NO2Forecast REAL,
    SO2Forecast REAL,
    COForecast REAL,
    AQIForecast INTEGER,
    DataSource TEXT,
    CalibrationDate DATE,
    RMSE REAL,
    MAE REAL,
    Bias REAL,
    ModelOwner TEXT,
    RunTimeSeconds REAL,
    GridResolutionKm REAL,
    VariablesIncluded TEXT,
    UpdateFrequency TEXT,
    ValidationStatus TEXT,
    Comments TEXT,
    IsActive INTEGER
);

INSERT INTO regional_air_quality_forecast_models (ModelID, RegionName, ModelVersion, ForecastDate, PM25Forecast, OzoneForecast, NO2Forecast, SO2Forecast, COForecast, AQIForecast, DataSource, CalibrationDate, RMSE, MAE, Bias, ModelOwner, RunTimeSeconds, GridResolutionKm, VariablesIncluded, UpdateFrequency, ValidationStatus, Comments, IsActive)
VALUES (601, 'Central Valley', 'v1.2', '2023-06-01', 12.5, 0.045, 0.030, 0.010, 0.5, 45, 'EPA', '2023-05-20', 1.2, 0.9, 0.05, 'EnviroLab', 35.0, 5.0, 'Temp,Wind,Traffic', 'Daily', 'Validated', 'Model performs within expected range', 1);

INSERT INTO regional_air_quality_forecast_models (ModelID, RegionName, ModelVersion, ForecastDate, PM25Forecast, OzoneForecast, NO2Forecast, SO2Forecast, COForecast, AQIForecast, DataSource, CalibrationDate, RMSE, MAE, Bias, ModelOwner, RunTimeSeconds, GridResolutionKm, VariablesIncluded, UpdateFrequency, ValidationStatus, Comments, IsActive)
VALUES (602, 'Coastal Plains', 'v2.0', '2023-06-01', 8.3, 0.060, 0.025, 0.008, 0.4, 38, 'State Dept', '2023-05-22', 0.9, 0.7, -0.02, 'AirScience', 28.0, 3.0, 'Temp,Humidity,ShipTraffic', 'Hourly', 'Validated', 'Improved ozone prediction', 1);

INSERT INTO regional_air_quality_forecast_models (ModelID, RegionName, ModelVersion, ForecastDate, PM25Forecast, OzoneForecast, NO2Forecast, SO2Forecast, COForecast, AQIForecast, DataSource, CalibrationDate, RMSE, MAE, Bias, ModelOwner, RunTimeSeconds, GridResolutionKm, VariablesIncluded, UpdateFrequency, ValidationStatus, Comments, IsActive)
VALUES (603, 'Mountain Ridge', 'v1.5', '2023-06-01', 15.0, 0.030, 0.040, 0.015, 0.6, 55, 'University Lab', '2023-05-25', 1.5, 1.1, 0.10, 'EcoResearch', 42.0, 7.0, 'Temp,Altitude,Wildfire', 'Daily', 'Pending', 'Awaiting peer review', 0);

-- School arts material inventory
CREATE TABLE school_arts_material_inventory (
    ItemID INTEGER PRIMARY KEY,
    SchoolCDSCode TEXT,
    Category TEXT,
    ItemName TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    PurchaseDate DATE,
    Cost REAL,
    Quantity INTEGER,
    Condition TEXT,
    StorageLocation TEXT,
    AssignedTo TEXT,
    LastMaintenanceDate DATE,
    MaintenanceNotes TEXT,
    WarrantyExpiration DATE,
    DepreciationRate REAL,
    AssetTag TEXT,
    FundSource TEXT,
    ProjectCode TEXT,
    IsReusable INTEGER,
    Notes TEXT,
    CurrentValue REAL
);

INSERT INTO school_arts_material_inventory (ItemID, SchoolCDSCode, Category, ItemName, Manufacturer, ModelNumber, PurchaseDate, Cost, Quantity, Condition, StorageLocation, AssignedTo, LastMaintenanceDate, MaintenanceNotes, WarrantyExpiration, DepreciationRate, AssetTag, FundSource, ProjectCode, IsReusable, Notes, CurrentValue)
VALUES (701, '001', 'Painting', 'Acrylic Paint Set', 'ColorWorks', 'CP-100', '2021-09-10', 250.00, 30, 'Good', 'ArtRoomA', 'Ms. Lee', '2023-02-15', 'No issues', '2024-09-10', 0.10, 'TAG701', 'Arts Grant', 'PRJ01', 1, 'Used in 2022 mural project', 200.00);

INSERT INTO school_arts_material_inventory (ItemID, SchoolCDSCode, Category, ItemName, Manufacturer, ModelNumber, PurchaseDate, Cost, Quantity, Condition, StorageLocation, AssignedTo, LastMaintenanceDate, MaintenanceNotes, WarrantyExpiration, DepreciationRate, AssetTag, FundSource, ProjectCode, IsReusable, Notes, CurrentValue)
VALUES (702, '002', 'Sculpture', 'Clay Modeling Kit', 'SculptCo', 'CK-250', '2020-03-05', 180.00, 20, 'Fair', 'ArtRoomB', 'Mr. Gomez', '2022-11-20', 'Replaced some tools', '2023-03-05', 0.12, 'TAG702', 'District Funds', 'PRJ02', 1, 'Student projects 2021-2022', 150.00);

INSERT INTO school_arts_material_inventory (ItemID, SchoolCDSCode, Category, ItemName, Manufacturer, ModelNumber, PurchaseDate, Cost, Quantity, Condition, StorageLocation, AssignedTo, LastMaintenanceDate, MaintenanceNotes, WarrantyExpiration, DepreciationRate, AssetTag, FundSource, ProjectCode, IsReusable, Notes, CurrentValue)
VALUES (703, '003', 'Theatre', 'Stage Lighting Kit', 'LightPro', 'SL-400', '2019-07-22', 1200.00, 5, 'Excellent', 'Theatre', 'Ms. Patel', '2023-01-10', 'Checked all bulbs', '2024-07-22', 0.08, 'TAG703', 'Capital Budget', 'PRJ03', 0, 'Installed for 2022 play', 1100.00);

-- District legal compliance training
CREATE TABLE district_legal_compliance_training (
    TrainingID INTEGER PRIMARY KEY,
    DistrictCode TEXT,
    TrainingName TEXT,
    Provider TEXT,
    StartDate DATE,
    EndDate DATE,
    DurationHours INTEGER,
    TargetAudience TEXT,
    Participants INTEGER,
    CompletionRate REAL,
    CertificationAwarded INTEGER,
    TrainerName TEXT,
    TrainerContact TEXT,
    TrainingMaterialLink TEXT,
    EvaluationScore INTEGER,
    FeedbackComments TEXT,
    FollowUpDate DATE,
    Status TEXT,
    BudgetAllocated REAL,
    ActualCost REAL,
    Notes TEXT,
    IsMandatory INTEGER
);

INSERT INTO district_legal_compliance_training (TrainingID, DistrictCode, TrainingName, Provider, StartDate, EndDate, DurationHours, TargetAudience, Participants, CompletionRate, CertificationAwarded, TrainerName, TrainerContact, TrainingMaterialLink, EvaluationScore, FeedbackComments, FollowUpDate, Status, BudgetAllocated, ActualCost, Notes, IsMandatory)
VALUES (801, 'D001', 'Title IX Awareness', 'LegalExperts Inc', '2023-03-01', '2023-03-02', 8, 'All Staff', 150, 0.98, 1, 'Karen Liu', '5557778888', 'http://legalexperts.com/t9material', 92, 'Very informative', '2023-04-01', 'Completed', 5000.00, 4800.00, 'Recorded for future reference', 1);

INSERT INTO district_legal_compliance_training (TrainingID, DistrictCode, TrainingName, Provider, StartDate, EndDate, DurationHours, TargetAudience, Participants, CompletionRate, CertificationAwarded, TrainerName, TrainerContact, TrainingMaterialLink, EvaluationScore, FeedbackComments, FollowUpDate, Status, BudgetAllocated, ActualCost, Notes, IsMandatory)
VALUES (802, 'D002', 'ADA Compliance Workshop', 'Accessibility Solutions', '2023-05-10', '2023-05-11', 6, 'Facilities Staff', 40, 0.95, 1, 'Luis Garcia', '5559990000', 'http://accesssol.com/ada', 88, 'Good practical examples', '2023-06-01', 'Completed', 3000.00, 3100.00, 'Materials updated 2024', 1);

INSERT INTO district_legal_compliance_training (TrainingID, DistrictCode, TrainingName, Provider, StartDate, EndDate, DurationHours, TargetAudience, Participants, CompletionRate, CertificationAwarded, TrainerName, TrainerContact, TrainingMaterialLink, EvaluationScore, FeedbackComments, FollowUpDate, Status, BudgetAllocated, ActualCost, Notes, IsMandatory)
VALUES (803, 'D003', 'Data Privacy Regulations', 'PrivacyPro', '2023-07-15', '2023-07-16', 7, 'IT Department', 25, 0.90, 0, 'Sofia Nguyen', '5552223333', 'http://privacypro.com/dptraining', 85, 'Need more hands‑on labs', '2023-08-10', 'Completed', 4000.00, 3950.00, 'Follow‑up session planned', 1);

-- Parent technology use surveys
CREATE TABLE parent_technology_use_surveys (
    SurveyID INTEGER PRIMARY KEY,
    SchoolCDSCode TEXT,
    SurveyDate DATE,
    ParentID TEXT,
    DeviceType TEXT,
    UsageFrequency TEXT,
    AvgDailyHours REAL,
    PrimaryPurpose TEXT,
    PreferredPlatform TEXT,
    LiteracyLevel TEXT,
    Concerns TEXT,
    RequestedSupport TEXT,
    SurveyMethod TEXT,
    CompletionStatus TEXT,
    FollowUpNeeded INTEGER,
    FollowUpDate DATE,
    Comments TEXT,
    DataValidated INTEGER,
    AnalystName TEXT,
    RecordTimestamp DATE,
    SurveyVersion TEXT,
    IsAnonymous INTEGER
);

INSERT INTO parent_technology_use_surveys (SurveyID, SchoolCDSCode, SurveyDate, ParentID, DeviceType, UsageFrequency, AvgDailyHours, PrimaryPurpose, PreferredPlatform, LiteracyLevel, Concerns, RequestedSupport, SurveyMethod, CompletionStatus, FollowUpNeeded, FollowUpDate, Comments, DataValidated, AnalystName, RecordTimestamp, SurveyVersion, IsAnonymous)
VALUES (901, '001', '2023-04-20', 'P001', 'Smartphone', 'Daily', 2.5, 'Communication', 'iOS', 'High', 'Privacy', 'Guides on app use', 'Online', 'Complete', 0, NULL, 'No issues', 1, 'Anna Lee', '2023-04-21', 'v1', 1);

INSERT INTO parent_technology_use_surveys (SurveyID, SchoolCDSCode, SurveyDate, ParentID, DeviceType, UsageFrequency, AvgDailyHours, PrimaryPurpose, PreferredPlatform, LiteracyLevel, Concerns, RequestedSupport, SurveyMethod, CompletionStatus, FollowUpNeeded, FollowUpDate, Comments, DataValidated, AnalystName, RecordTimestamp, SurveyVersion, IsAnonymous)
VALUES (902, '002', '2023-05-15', 'P002', 'Tablet', 'Weekly', 1.2, 'Homework Access', 'Android', 'Medium', 'Device cost', 'Subsidized tablets', 'Paper', 'Complete', 1, '2023-06-01', 'Will provide assistance', 1, 'Brian Kim', '2023-05-16', 'v1', 0);

INSERT INTO parent_technology_use_surveys (SurveyID, SchoolCDSCode, SurveyDate, ParentID, DeviceType, UsageFrequency, AvgDailyHours, PrimaryPurpose, PreferredPlatform, LiteracyLevel, Concerns, RequestedSupport, SurveyMethod, CompletionStatus, FollowUpNeeded, FollowUpDate, Comments, DataValidated, AnalystName, RecordTimestamp, SurveyVersion, IsAnonymous)
VALUES (903, '003', '2023-06-10', 'P003', 'Laptop', 'Monthly', 0.8, 'Student Monitoring', 'Windows', 'Low', 'Security', 'Training sessions', 'Online', 'Incomplete', 1, '2023-07-01', 'Need follow‑up call', 0, 'Catherine Wu', '2023-06-11', 'v1', 1);