-- Building energy audit records for hospital facilities
CREATE TABLE BuildingEnergyAudit (
    AuditID INTEGER PRIMARY KEY,
    BuildingID INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    HVACScore INTEGER,
    LightingScore INTEGER,
    InsulationScore INTEGER,
    RenewableEnergyPresence TEXT,
    AnnualEnergyConsumption REAL,
    BenchmarkEnergyConsumption REAL,
    PotentialSavings REAL,
    Comments TEXT,
    FloorArea INTEGER,
    NumberOfFloors INTEGER,
    YearBuilt INTEGER,
    CertificationLevel TEXT,
    CO2Emissions REAL,
    ElectricityCost REAL,
    GasCost REAL,
    WaterCost REAL,
    MaintenanceStatus TEXT,
    FollowUpDate DATE,
    ActionPlanID INTEGER,
    EnergyStarRating INTEGER,
    Notes TEXT,
    CreatedAt DATE
);

INSERT INTO BuildingEnergyAudit (AuditID, BuildingID, AuditDate, AuditorName, HVACScore, LightingScore, InsulationScore, RenewableEnergyPresence, AnnualEnergyConsumption, BenchmarkEnergyConsumption, PotentialSavings, Comments, FloorArea, NumberOfFloors, YearBuilt, CertificationLevel, CO2Emissions, ElectricityCost, GasCost, WaterCost, MaintenanceStatus, FollowUpDate, ActionPlanID, EnergyStarRating, Notes, CreatedAt)
VALUES (1, 101, '2023-06-15', 'Alice Smith', 85, 90, 80, 'Yes', 1200.5, 1500.0, 300.5, 'Good overall', 25000, 5, 1995, 'Gold', 15.2, 5000.0, 2000.0, 1500.0, 'Completed', '2023-12-01', 10, 5, 'N/A', '2023-06-15');

INSERT INTO BuildingEnergyAudit (AuditID, BuildingID, AuditDate, AuditorName, HVACScore, LightingScore, InsulationScore, RenewableEnergyPresence, AnnualEnergyConsumption, BenchmarkEnergyConsumption, PotentialSavings, Comments, FloorArea, NumberOfFloors, YearBuilt, CertificationLevel, CO2Emissions, ElectricityCost, GasCost, WaterCost, MaintenanceStatus, FollowUpDate, ActionPlanID, EnergyStarRating, Notes, CreatedAt)
VALUES (2, 102, '2023-07-20', 'Bob Lee', 78, 82, 75, 'No', 1400.0, 1500.0, 100.0, 'Needs insulation upgrade', 30000, 6, 1980, 'Silver', 18.5, 5500.0, 2500.0, 1600.0, 'Pending', '2024-01-15', 11, 4, 'Schedule upgrade', '2023-07-20');

INSERT INTO BuildingEnergyAudit (AuditID, BuildingID, AuditDate, AuditorName, HVACScore, LightingScore, InsulationScore, RenewableEnergyPresence, AnnualEnergyConsumption, BenchmarkEnergyConsumption, PotentialSavings, Comments, FloorArea, NumberOfFloors, YearBuilt, CertificationLevel, CO2Emissions, ElectricityCost, GasCost, WaterCost, MaintenanceStatus, FollowUpDate, ActionPlanID, EnergyStarRating, Notes, CreatedAt)
VALUES (3, 103, '2023-08-05', 'Clara Zhou', 92, 95, 88, 'Yes', 1100.0, 1500.0, 400.0, 'Excellent performance', 22000, 4, 2005, 'Platinum', 12.0, 4800.0, 1900.0, 1400.0, 'Completed', '2023-11-20', 12, 6, 'Consider solar expansion', '2023-08-05');

-- Contracts with food service vendors for hospital cafeterias
CREATE TABLE FoodServiceVendorContract (
    ContractID INTEGER PRIMARY KEY,
    VendorID INTEGER,
    VendorName TEXT,
    ContractStartDate DATE,
    ContractEndDate DATE,
    MenuType TEXT,
    ServiceFrequency TEXT,
    PricePerMeal REAL,
    MaximumMealsPerDay INTEGER,
    MinimumNoticeDays INTEGER,
    PaymentTerms TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ComplianceStatus TEXT,
    HealthInspectionScore INTEGER,
    OrganicPercentage REAL,
    GlutenFreeOption TEXT,
    VeganOption TEXT,
    SeasonalMenuFlag TEXT,
    RenewalOption TEXT,
    PenaltyClause TEXT,
    CreatedOn DATE
);

INSERT INTO FoodServiceVendorContract (ContractID, VendorID, VendorName, ContractStartDate, ContractEndDate, MenuType, ServiceFrequency, PricePerMeal, MaximumMealsPerDay, MinimumNoticeDays, PaymentTerms, ContactPerson, ContactPhone, ComplianceStatus, HealthInspectionScore, OrganicPercentage, GlutenFreeOption, VeganOption, SeasonalMenuFlag, RenewalOption, PenaltyClause, CreatedOn)
VALUES (201, 301, 'FreshBite Catering', '2023-01-01', '2025-12-31', 'Standard', 'Daily', 7.5, 500, 30, 'Net30', 'Dana White', '5551234567', 'Compliant', 92, 20.5, 'Yes', 'No', 'Yes', 'Auto', 'LateDelivery', '2023-01-01');

INSERT INTO FoodServiceVendorContract (ContractID, VendorID, VendorName, ContractStartDate, ContractEndDate, MenuType, ServiceFrequency, PricePerMeal, MaximumMealsPerDay, MinimumNoticeDays, PaymentTerms, ContactPerson, ContactPhone, ComplianceStatus, HealthInspectionScore, OrganicPercentage, GlutenFreeOption, VeganOption, SeasonalMenuFlag, RenewalOption, PenaltyClause, CreatedOn)
VALUES (202, 302, 'Healthy Plates Ltd', '2022-06-15', '2024-06-14', 'LowCalorie', 'Weekdays', 8.2, 400, 14, 'Net45', 'Evan Green', '5559876543', 'Compliant', 88, 35.0, 'Yes', 'Yes', 'No', 'Manual', 'TerminationFee', '2022-06-15');

INSERT INTO FoodServiceVendorContract (ContractID, VendorID, VendorName, ContractStartDate, ContractEndDate, MenuType, ServiceFrequency, PricePerMeal, MaximumMealsPerDay, MinimumNoticeDays, PaymentTerms, ContactPerson, ContactPhone, ComplianceStatus, HealthInspectionScore, OrganicPercentage, GlutenFreeOption, VeganOption, SeasonalMenuFlag, RenewalOption, PenaltyClause, CreatedOn)
VALUES (203, 303, 'Global Foods Inc', '2023-03-01', '2026-02-28', 'International', 'Daily', 9.0, 600, 45, 'Net60', 'Fiona Black', '5552223344', 'Pending', 80, 10.0, 'No', 'No', 'Yes', 'Auto', 'ForceMajeure', '2023-03-01');

-- Log of firmware updates applied to medical devices
CREATE TABLE MedicalDeviceFirmwareUpdateLog (
    UpdateLogID INTEGER PRIMARY KEY,
    DeviceID INTEGER,
    DeviceType TEXT,
    SerialNumber TEXT,
    FirmwareVersion TEXT,
    UpdateDate DATE,
    UpdatedBy TEXT,
    UpdateMethod TEXT,
    Status TEXT,
    ReleaseNotes TEXT,
    Checksum TEXT,
    RollbackVersion TEXT,
    DurationMinutes INTEGER,
    BatteryImpact REAL,
    NetworkUsed TEXT,
    ErrorCode INTEGER,
    ErrorMessage TEXT,
    ComplianceFlag TEXT,
    RegulatoryApproval TEXT,
    Location TEXT,
    CreatedAt DATE
);

INSERT INTO MedicalDeviceFirmwareUpdateLog (UpdateLogID, DeviceID, DeviceType, SerialNumber, FirmwareVersion, UpdateDate, UpdatedBy, UpdateMethod, Status, ReleaseNotes, Checksum, RollbackVersion, DurationMinutes, BatteryImpact, NetworkUsed, ErrorCode, ErrorMessage, ComplianceFlag, RegulatoryApproval, Location, CreatedAt)
VALUES (1001, 501, 'InfusionPump', 'SN12345', 'v2.3.1', '2023-05-10', 'TechA', 'Remote', 'Success', 'Improved flow control', 'ABCD1234', 'v2.2.9', 15, 0.2, 'WiFi', 0, '', 'Yes', 'Approved', 'Ward3', '2023-05-10');

INSERT INTO MedicalDeviceFirmwareUpdateLog (UpdateLogID, DeviceID, DeviceType, SerialNumber, FirmwareVersion, UpdateDate, UpdatedBy, UpdateMethod, Status, ReleaseNotes, Checksum, RollbackVersion, DurationMinutes, BatteryImpact, NetworkUsed, ErrorCode, ErrorMessage, ComplianceFlag, RegulatoryApproval, Location, CreatedAt)
VALUES (1002, 502, 'Ventilator', 'SN67890', 'v1.9.0', '2023-06-01', 'TechB', 'Onsite', 'Failed', 'Bug fix for alarm', 'EFGH5678', 'v1.8.5', 30, 0.5, 'Ethernet', 101, 'Checksum mismatch', 'No', 'Pending', 'ICU1', '2023-06-01');

INSERT INTO MedicalDeviceFirmwareUpdateLog (UpdateLogID, DeviceID, DeviceType, SerialNumber, FirmwareVersion, UpdateDate, UpdatedBy, UpdateMethod, Status, ReleaseNotes, Checksum, RollbackVersion, DurationMinutes, BatteryImpact, NetworkUsed, ErrorCode, ErrorMessage, ComplianceFlag, RegulatoryApproval, Location, CreatedAt)
VALUES (1003, 503, 'ECGMonitor', 'SN11223', 'v3.0.0', '2023-07-15', 'TechC', 'Remote', 'Success', 'Added new lead configurations', 'IJKL9012', 'v2.9.8', 10, 0.1, 'Cellular', 0, '', 'Yes', 'Approved', 'Cardiology', '2023-07-15');

-- Attendance records for community health workshops
CREATE TABLE CommunityHealthWorkshopAttendance (
    AttendanceID INTEGER PRIMARY KEY,
    WorkshopID INTEGER,
    ParticipantID INTEGER,
    ParticipantName TEXT,
    Age INTEGER,
    Gender TEXT,
    AttendanceDate DATE,
    Location TEXT,
    WorkshopTopic TEXT,
    DurationHours REAL,
    SatisfactionScore INTEGER,
    FeedbackComments TEXT,
    ReferralSource TEXT,
    FollowUpNeeded TEXT,
    HealthScreeningDone TEXT,
    VaccinationGiven TEXT,
    MaterialsReceived TEXT,
    TransportMode TEXT,
    IncomeBracket TEXT,
    CreatedAt DATE
);

INSERT INTO CommunityHealthWorkshopAttendance (AttendanceID, WorkshopID, ParticipantID, ParticipantName, Age, Gender, AttendanceDate, Location, WorkshopTopic, DurationHours, SatisfactionScore, FeedbackComments, ReferralSource, FollowUpNeeded, HealthScreeningDone, VaccinationGiven, MaterialsReceived, TransportMode, IncomeBracket, CreatedAt)
VALUES (3011, 401, 1001, 'John Doe', 45, 'Male', '2023-04-12', 'CommunityCenterA', 'Nutrition', 3.0, 9, 'Very useful', 'Flyer', 'No', 'Yes', 'Flu', 'Handout', 'Bus', 'Middle', '2023-04-12');

INSERT INTO CommunityHealthWorkshopAttendance (AttendanceID, WorkshopID, ParticipantID, ParticipantName, Age, Gender, AttendanceDate, Location, WorkshopTopic, DurationHours, SatisfactionScore, FeedbackComments, ReferralSource, FollowUpNeeded, HealthScreeningDone, VaccinationGiven, MaterialsReceived, TransportMode, IncomeBracket, CreatedAt)
VALUES (3012, 401, 1002, 'Jane Smith', 30, 'Female', '2023-04-12', 'CommunityCenterA', 'Nutrition', 3.0, 8, 'Good content', 'Friend', 'Yes', 'No', 'None', 'Brochure', 'Car', 'Low', '2023-04-12');

INSERT INTO CommunityHealthWorkshopAttendance (AttendanceID, WorkshopID, ParticipantID, ParticipantName, Age, Gender, AttendanceDate, Location, WorkshopTopic, DurationHours, SatisfactionScore, FeedbackComments, ReferralSource, FollowUpNeeded, HealthScreeningDone, VaccinationGuiven, MaterialsReceived, TransportMode, IncomeBracket, CreatedAt)
VALUES (3013, 401, 1003, 'Carlos Ruiz', 55, 'Male', '2023-04-12', 'CommunityCenterA', 'Nutrition', 3.0, 7, 'Needs more detail', 'Radio', 'Yes', 'Yes', 'COVID', 'Pamphlet', 'Bike', 'High', '2023-04-12');

-- Maintenance records for the hospital transportation fleet
CREATE TABLE TransportationFleetMaintenance (
    MaintenanceID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    VehicleType TEXT,
    LicensePlate TEXT,
    ServiceDate DATE,
    Mileage INTEGER,
    ServiceProvider TEXT,
    ServiceType TEXT,
    Cost REAL,
    PartsReplaced TEXT,
    NextServiceDue DATE,
    InspectionResult TEXT,
    TechnicianName TEXT,
    DowntimeHours INTEGER,
    FuelEfficiency REAL,
    EmissionStandard TEXT,
    WarrantyStatus TEXT,
    InsurancePolicyNumber TEXT,
    GPSInstalled TEXT,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Status TEXT
);

INSERT INTO TransportationFleetMaintenance (MaintenanceID, VehicleID, VehicleType, LicensePlate, ServiceDate, Mileage, ServiceProvider, ServiceType, Cost, PartsReplaced, NextServiceDue, InspectionResult, TechnicianName, DowntimeHours, FuelEfficiency, EmissionStandard, WarrantyStatus, InsurancePolicyNumber, GPSInstalled, Notes, CreatedBy, CreatedAt, UpdatedAt, Status)
VALUES (4011, 701, 'Ambulance', 'AMB1234', '2023-03-20', 15000, 'AutoCare', 'EngineTune', 1200.0, 'SparkPlugs', '2023-09-20', 'Pass', 'Mike Lee', 4, 12.5, 'Euro5', 'Active', 'POL12345', 'Yes', 'Replaced spark plugs', 'TechA', '2023-03-20', '2023-03-20', 'Completed');

INSERT INTO TransportationFleetMaintenance (MaintenanceID, VehicleID, VehicleType, LicensePlate, ServiceDate, Mileage, ServiceProvider, ServiceType, Cost, PartsReplaced, NextServiceDue, InspectionResult, TechnicianName, DowntimeHours, FuelEfficiency, EmissionStandard, WarrantyStatus, InsurancePolicyNumber, GPSInstalled, Notes, CreatedBy, CreatedAt, UpdatedAt, Status)
VALUES (4012, 702, 'Van', 'VAN5678', '2023-04-10', 30000, 'FleetService', 'BrakeCheck', 800.0, 'BrakePads', '2023-10-10', 'Pass', 'Sara Kim', 2, 15.0, 'Euro6', 'Expired', 'POL67890', 'Yes', 'Brake pads worn', 'TechB', '2023-04-10', '2023-04-10', 'Completed');

INSERT INTO TransportationFleetMaintenance (MaintenanceID, VehicleID, VehicleType, LicensePlate, ServiceDate, Mileage, ServiceProvider, ServiceType, Cost, PartsReplaced, NextServiceDue, InspectionResult, TechnicianName, DowntimeHours, FuelEfficiency, EmissionStandard, WarrantyStatus, InsurancePolicyNumber, GPSInstalled, Notes, CreatedBy, CreatedAt, UpdatedAt, Status)
VALUES (4013, 703, 'PatientTransport', 'PTX9012', '2023-05-05', 12000, 'HealthFleet', 'TireRotation', 300.0, 'Tires', '2023-11-05', 'Pass', 'Tom Zhao', 1, 20.0, 'Euro5', 'Active', 'POL11223', 'No', 'Rotation completed', 'TechC', '2023-05-05', '2023-05-05', 'Completed');

-- Air quality monitoring stations installed throughout the hospital
CREATE TABLE HospitalAirQualityMonitoringStation (
    StationID INTEGER PRIMARY KEY,
    BuildingID INTEGER,
    StationName TEXT,
    InstallationDate DATE,
    SensorType TEXT,
    PM25 REAL,
    PM10 REAL,
    CO2 REAL,
    VOC REAL,
    Temperature REAL,
    Humidity REAL,
    BatteryLevel REAL,
    CalibrationDate DATE,
    MaintenanceStatus TEXT,
    AlertThresholdPM25 REAL,
    AlertThresholdCO2 REAL,
    NetworkID TEXT,
    Latitude REAL,
    Longitude REAL,
    Status TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO HospitalAirQualityMonitoringStation (StationID, BuildingID, StationName, InstallationDate, SensorType, PM25, PM10, CO2, VOC, Temperature, Humidity, BatteryLevel, CalibrationDate, MaintenanceStatus, AlertThresholdPM25, AlertThresholdCO2, NetworkID, Latitude, Longitude, Status, CreatedAt, UpdatedAt)
VALUES (5011, 101, 'NorthWing1', '2022-01-15', 'Optical', 12.5, 25.0, 600.0, 0.4, 22.0, 45.0, 95.0, '2023-01-10', 'Good', 35.0, 800.0, 'NET01', 40.7128, -74.0060, 'Active', '2022-01-15', '2023-06-01');

INSERT INTO HospitalAirQualityMonitoringStation (StationID, BuildingID, StationName, InstallationDate, SensorType, PM25, PM10, CO2, VOC, Temperature, Humidity, BatteryLevel, CalibrationDate, MaintenanceStatus, AlertThresholdPM25, AlertThresholdCO2, NetworkID, Latitude, Longitude, Status, CreatedAt, UpdatedAt)
VALUES (5012, 102, 'SouthWingA', '2022-03-20', 'Electrochemical', 15.0, 30.0, 750.0, 0.6, 23.5, 50.0, 88.0, '2023-02-18', 'Good', 35.0, 800.0, 'NET02', 40.7138, -74.0050, 'Active', '2022-03-20', '2023-06-01');

INSERT INTO HospitalAirQualityMonitoringStation (StationID, BuildingID, StationName, InstallationDate, SensorType, PM25, PM10, CO2, VOC, Temperature, Humidity, BatteryLevel, CalibrationDate, MaintenanceStatus, AlertThresholdPM25, AlertThresholdCO2, NetworkID, Latitude, Longitude, Status, CreatedAt, UpdatedAt)
VALUES (5013, 103, 'LabComplex3', '2022-05-10', 'Laser', 10.0, 20.0, 550.0, 0.3, 21.0, 40.0, 92.0, '2023-04-12', 'Good', 35.0, 800.0, 'NET03', 40.7148, -74.0040, 'Active', '2022-05-10', '2023-06-01');

-- Eligibility criteria definitions for research grant applications
CREATE TABLE ResearchGrantEligibilityCriteria (
    CriteriaID INTEGER PRIMARY KEY,
    GrantID INTEGER,
    EligibilityType TEXT,
    MinimumScore INTEGER,
    MaximumScore INTEGER,
    RequiredExperienceYears INTEGER,
    PreferredInstitution TEXT,
    FundingLimit REAL,
    GeographicRestriction TEXT,
    FieldOfStudy TEXT,
    CollaborativeRequirement TEXT,
    OpenAccessRequirement TEXT,
    EthicsApprovalRequired TEXT,
    DataManagementPlanRequired TEXT,
    BudgetJustificationRequired TEXT,
    PublicationRecordRequired TEXT,
    ReviewCommittee TEXT,
    ApplicationDeadline DATE,
    CreatedAt DATE,
    Notes TEXT
);

INSERT INTO ResearchGrantEligibilityCriteria (CriteriaID, GrantID, EligibilityType, MinimumScore, MaximumScore, RequiredExperienceYears, PreferredInstitution, FundingLimit, GeographicRestriction, FieldOfStudy, CollaborativeRequirement, OpenAccessRequirement, EthicsApprovalRequired, DataManagementPlanRequired, BudgetJustificationRequired, PublicationRecordRequired, ReviewCommittee, ApplicationDeadline, CreatedAt, Notes)
VALUES (6011, 801, 'Primary', 80, 100, 5, 'UniversityA', 500000.0, 'National', 'Oncology', 'MultiCenter', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'CommitteeA', '2023-12-31', '2023-01-01', 'First round criteria');

INSERT INTO ResearchGrantEligibilityCriteria (CriteriaID, GrantID, EligibilityType, MinimumScore, MaximumScore, RequiredExperienceYears, PreferredInstitution, FundingLimit, GeographicRestriction, FieldOfStudy, CollaborativeRequirement, OpenAccessRequirement, EthicsApprovalRequired, DataManagementPlanRequired, BudgetJustificationRequired, PublicationRecordRequired, ReviewCommittee, ApplicationDeadline, CreatedAt, Notes)
VALUES (6012, 802, 'Secondary', 70, 89, 2, 'InstituteB', 250000.0, 'Regional', 'Cardiology', 'SingleCenter', 'No', 'Yes', 'No', 'Yes', 'No', 'CommitteeB', '2024-03-15', '2023-02-15', 'Secondary tier');

INSERT INTO ResearchGrantEligibilityCriteria (CriteriaID, GrantID, EligibilityType, MinimumScore, MaximumScore, RequiredExperienceYears, PreferredInstitution, FundingLimit, GeographicRestriction, FieldOfStudy, CollaborativeRequirement, OpenAccessRequirement, EthicsApprovalRequired, DataManagementPlanRequired, BudgetJustificationRequired, PublicationRecordRequired, ReviewCommittee, ApplicationDeadline, CreatedAt, Notes)
VALUES (6013, 803, 'Special', 90, 100, 10, 'HospitalC', 1000000.0, 'International', 'Neurology', 'Consortium', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'CommitteeC', '2024-06-30', '2023-03-10', 'High impact grants');

-- Metrics tracking implementation of clinical guidelines
CREATE TABLE ClinicalGuidelineImplementationMetric (
    MetricID INTEGER PRIMARY KEY,
    GuidelineID INTEGER,
    MetricName TEXT,
    TargetValue REAL,
    CurrentValue REAL,
    MeasurementPeriod TEXT,
    DataSource TEXT,
    ComplianceStatus TEXT,
    LastUpdated DATE,
    ResponsibleDept TEXT,
    Comments TEXT,
    ThresholdLow REAL,
    ThresholdHigh REAL,
    AlertSent TEXT,
    ReviewFrequency TEXT,
    Owner TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    Version INTEGER,
    Status TEXT
);

INSERT INTO ClinicalGuidelineImplementationMetric (MetricID, GuidelineID, MetricName, TargetValue, CurrentValue, MeasurementPeriod, DataSource, ComplianceStatus, LastUpdated, ResponsibleDept, Comments, ThresholdLow, ThresholdHigh, AlertSent, ReviewFrequency, Owner, CreatedAt, UpdatedAt, Notes, Version, Status)
VALUES (7011, 901, 'AntibioticUseRate', 10.0, 12.5, 'Monthly', 'EHR', 'NonCompliant', '2023-06-01', 'Pharmacy', 'Above target', 5.0, 10.0, 'Yes', 'Quarterly', 'DrSmith', '2023-01-01', '2023-06-01', 'Needs reduction', 1, 'Active');

INSERT INTO ClinicalGuidelineImplementationMetric (MetricID, GuidelineID, MetricName, TargetValue, CurrentValue, MeasurementPeriod, DataSource, ComplianceStatus, LastUpdated, ResponsibleDept, Comments, ThresholdLow, ThresholdHigh, AlertSent, ReviewFrequency, Owner, CreatedAt, UpdatedAt, Notes, Version, Status)
VALUES (7012, 902, 'FallPreventionScore', 95.0, 93.0, 'Quarterly', 'SafetyReports', 'Compliant', '2023-06-01', 'Nursing', 'Slight dip', 90.0, 95.0, 'No', 'Quarterly', 'NurseLee', '2023-01-01', '2023-06-01', 'Maintain training', 1, 'Active');

INSERT INTO ClinicalGuidelineImplementationMetric (MetricID, GuidelineID, MetricName, TargetValue, CurrentValue, MeasurementPeriod, DataSource, ComplianceStatus, LastUpdated, ResponsibleDept, Comments, ThresholdLow, ThresholdHigh, AlertSent, ReviewFrequency, Owner, CreatedAt, UpdatedAt, Notes, Version, Status)
VALUES (7013, 903, 'HandHygieneCompliance', 98.0, 97.5, 'Monthly', 'Observation', 'Compliant', '2023-06-01', 'InfectionControl', 'Near target', 95.0, 98.0, 'No', 'Monthly', 'DrChen', '2023-01-01', '2023-06-01', 'Continue monitoring', 1, 'Active');

-- Inventory of items stored at waste management facilities
CREATE TABLE WasteManagementFacilityInventory (
    ItemID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    ItemName TEXT,
    Category TEXT,
    Quantity INTEGER,
    Unit TEXT,
    StorageLocation TEXT,
    ExpirationDate DATE,
    SafetyDataSheetAvailable TEXT,
    SupplierName TEXT,
    PurchaseDate DATE,
    CostPerUnit REAL,
    TotalCost REAL,
    HazardLevel TEXT,
    RecyclingPotential TEXT,
    LastInspectionDate DATE,
    InspectionResult TEXT,
    ResponsibleStaff TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Status TEXT
);

INSERT INTO WasteManagementFacilityInventory (ItemID, FacilityID, ItemName, Category, Quantity, Unit, StorageLocation, ExpirationDate, SafetyDataSheetAvailable, SupplierName, PurchaseDate, CostPerUnit, TotalCost, HazardLevel, RecyclingPotential, LastInspectionDate, InspectionResult, ResponsibleStaff, Notes, CreatedAt, UpdatedAt, Status)
VALUES (8011, 901, 'SharpsContainer', 'Containment', 150, 'Units', 'ZoneA', '2025-12-31', 'Yes', 'MedSuppliesCo', '2023-01-10', 5.0, 750.0, 'High', 'No', '2023-05-01', 'Pass', 'Jack', 'New stock', '2023-01-10', '2023-05-01', 'Active');

INSERT INTO WasteManagementFacilityInventory (ItemID, FacilityID, ItemName, Category, Quantity, Unit, StorageLocation, ExpirationDate, SafetyDataSheetAvailable, SupplierName, PurchaseDate, CostPerUnit, TotalCost, HazardLevel, RecyclingPotential, LastInspectionDate, InspectionResult, ResponsibleStaff, Notes, CreatedAt, UpdatedAt, Status)
VALUES (8012, 902, 'ChemicalNeutralizer', 'Reagent', 80, 'Liters', 'ZoneB', '2024-06-30', 'Yes', 'ChemCorp', '2023-02-15', 12.5, 1000.0, 'Medium', 'Yes', '2023-06-01', 'Pass', 'Lara', 'Stored in cool area', '2023-02-15', '2023-06-01', 'Active');

INSERT INTO WasteManagementFacilityInventory (ItemID, FacilityID, ItemName, Category, Quantity, Unit, StorageLocation, ExpirationDate, SafetyDataSheetAvailable, SupplierName, PurchaseDate, CostPerUnit, TotalCost, HazardLevel, RecyclingPotential, LastInspectionDate, InspectionResult, ResponsibleStaff, Notes, CreatedAt, UpdatedAt, Status)
VALUES (8013, 903, 'BiohazardBag', 'Containment', 500, 'Units', 'ZoneC', '2026-01-31', 'Yes', 'Safebox', '2023-03-20', 1.2, 600.0, 'Low', 'No', '2023-07-01', 'Pass', 'Mona', 'Restocked', '2023-03-20', '2023-07-01', 'Active');

-- Usage statistics for the telehealth platform
CREATE TABLE TelehealthPlatformUsageStats (
    StatID INTEGER PRIMARY KEY,
    PlatformName TEXT,
    Date DATE,
    ActiveUsers INTEGER,
    NewRegistrations INTEGER,
    SessionsConducted INTEGER,
    AverageSessionDuration REAL,
    VideoQualityScore REAL,
    AudioQualityScore REAL,
    DropRate REAL,
    ErrorCount INTEGER,
    FeatureChatUsed INTEGER,
    FeatureFileShareUsed INTEGER,
    FeatureScreenShareUsed INTEGER,
    MobileAppUsage INTEGER,
    WebAppUsage INTEGER,
    GeographicRegion TEXT,
    ComplianceFlag TEXT,
    CreatedAt DATE,
    Notes TEXT
);

INSERT INTO TelehealthPlatformUsageStats (StatID, PlatformName, Date, ActiveUsers, NewRegistrations, SessionsConducted, AverageSessionDuration, VideoQualityScore, AudioQualityScore, DropRate, ErrorCount, FeatureChatUsed, FeatureFileShareUsed, FeatureScreenShareUsed, MobileAppUsage, WebAppUsage, GeographicRegion, ComplianceFlag, CreatedAt, Notes)
VALUES (9011, 'HealthConnect', '2023-06-01', 350, 45, 420, 18.5, 9.2, 8.8, 0.02, 5, 400, 150, 100, 300, 120, 'NorthRegion', 'Yes', '2023-06-01', 'Stable growth');

INSERT INTO TelehealthPlatformUsageStats (StatID, PlatformName, Date, ActiveUsers, NewRegistrations, SessionsConducted, AverageSessionDuration, VideoQualityScore, AudioQualityScore, DropRate, ErrorCount, FeatureChatUsed, FeatureFileShareUsed, FeatureScreenShareUsed, MobileAppUsage, WebAppUsage, GeographicRegion, ComplianceFlag, CreatedAt, Notes)
VALUES (9012, 'HealthConnect', '2023-07-01', 380, 50, 460, 19.0, 9.3, 9.0, 0.015, 4, 420, 160, 110, 320, 130, 'NorthRegion', 'Yes', '2023-07-01', 'Improved video quality');

INSERT INTO TelehealthPlatformUsageStats (StatID, PlatformName, Date, ActiveUsers, NewRegistrations, SessionsConducted, AverageSessionDuration, VideoQualityScore, AudioQualityScore, DropRate, ErrorCount, FeatureChatUsed, FeatureFileShareUsed, FeatureScreenShareUsed, MobileAppUsage, WebAppUsage, GeographicRegion, ComplianceFlag, CreatedAt, Notes)
VALUES (9013, 'HealthConnect', '2023-08-01', 410, 55, 500, 20.2, 9.4, 9.1, 0.01, 3, 440, 170, 120, 340, 140, 'NorthRegion', 'Yes', '2023-08-01', 'Steady increase');