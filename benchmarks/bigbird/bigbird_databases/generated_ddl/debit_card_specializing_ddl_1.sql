-- Marketing campaigns table
CREATE TABLE marketing_campaigns
(
    CampaignID INTEGER PRIMARY KEY,
    CampaignName TEXT,
    StartDate DATE,
    EndDate DATE,
    Budget REAL,
    TargetRegion TEXT,
    MediaChannel TEXT,
    Impressions INTEGER,
    ClickThroughs INTEGER,
    Conversions INTEGER,
    CostPerClick REAL,
    CostPerAcquisition REAL,
    AudienceSegment TEXT,
    CreativeVersion TEXT,
    FrequencyCap INTEGER,
    DailyCap INTEGER,
    IsActive INTEGER,
    CreatedBy TEXT,
    ApprovedBy TEXT,
    Notes TEXT
);

INSERT INTO marketing_campaigns (CampaignID, CampaignName, StartDate, EndDate, Budget, TargetRegion, MediaChannel, Impressions, ClickThroughs, Conversions, CostPerClick, CostPerAcquisition, AudienceSegment, CreativeVersion, FrequencyCap, DailyCap, IsActive, CreatedBy, ApprovedBy, Notes) VALUES (1, 'SummerFuelPromo', '2023-06-01', '2023-08-31', 50000.0, 'NorthAmerica', 'Online', 1000000, 25000, 3000, 0.5, 16.67, 'Commuters', 'V1', 3, 1000, 1, 'Alice', 'Bob', 'Initial launch');
INSERT INTO marketing_campaigns (CampaignID, CampaignName, StartDate, EndDate, Budget, TargetRegion, MediaChannel, Impressions, ClickThroughs, Conversions, CostPerClick, CostPerAcquisition, AudienceSegment, CreativeVersion, FrequencyCap, DailyCap, IsActive, CreatedBy, ApprovedBy, Notes) VALUES (2, 'WinterFuelDrive', '2023-12-01', '2024-02-28', 75000.0, 'Europe', 'TV', 2000000, 40000, 5000, 0.6, 15.0, 'Family', 'V2', 2, 1500, 1, 'Carol', 'Dave', 'Seasonal push');
INSERT INTO marketing_campaigns (CampaignID, CampaignName, StartDate, EndDate, Budget, TargetRegion, MediaChannel, Impressions, ClickThroughs, Conversions, CostPerClick, CostPerAcquisition, AudienceSegment, CreativeVersion, FrequencyCap, DailyCap, IsActive, CreatedBy, ApprovedBy, Notes) VALUES (3, 'EcoFuelAwareness', '2023-04-15', '2023-07-15', 30000.0, 'Asia', 'Social', 800000, 12000, 1500, 0.4, 20.0, 'EcoFriendly', 'V3', 4, 800, 0, 'Eve', 'Frank', 'Post‑campaign analysis');

-- Maintenance schedules table
CREATE TABLE maintenance_schedules
(
    ScheduleID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    EquipmentID INTEGER,
    MaintenanceType TEXT,
    ScheduledDate DATE,
    PlannedDurationHours INTEGER,
    TechnicianID INTEGER,
    PriorityLevel INTEGER,
    EstimatedCost REAL,
    PartsNeeded TEXT,
    SafetyChecklistPassed INTEGER,
    CreatedOn DATE,
    UpdatedOn DATE,
    Status TEXT,
    Remarks TEXT,
    VendorID INTEGER,
    ContractNumber TEXT,
    WarrantyValidUntil DATE,
    IsRecurring INTEGER,
    RecurrenceIntervalDays INTEGER
);

INSERT INTO maintenance_schedules (ScheduleID, GasStationID, EquipmentID, MaintenanceType, ScheduledDate, PlannedDurationHours, TechnicianID, PriorityLevel, EstimatedCost, PartsNeeded, SafetyChecklistPassed, CreatedOn, UpdatedOn, Status, Remarks, VendorID, ContractNumber, WarrantyValidUntil, IsRecurring, RecurrenceIntervalDays) VALUES (101, 10, 2001, 'PumpCalibration', '2023-09-15', 4, 501, 2, 1200.0, 'Seal, Gasket', 1, '2023-07-01', '2023-07-15', 'Scheduled', 'Follow safety protocol', 301, 'CN12345', '2025-12-31', 0, NULL);
INSERT INTO maintenance_schedules (ScheduleID, GasStationID, EquipmentID, MaintenanceType, ScheduledDate, PlannedDurationHours, TechnicianID, PriorityLevel, EstimatedCost, PartsNeeded, SafetyChecklistPassed, CreatedOn, UpdatedOn, Status, Remarks, VendorID, ContractNumber, WarrantyValidUntil, IsRecurring, RecurrenceIntervalDays) VALUES (102, 12, 2005, 'FilterReplacement', '2023-10-01', 2, 502, 1, 300.0, 'Filter', 1, '2023-08-20', '2023-08-25', 'Pending', 'Urgent due to wear', 302, 'CN54321', '2024-06-30', 1, 180);
INSERT INTO maintenance_schedules (ScheduleID, GasStationID, EquipmentID, MaintenanceType, ScheduledDate, PlannedDurationHours, TechnicianID, PriorityLevel, EstimatedCost, PartsNeeded, SafetyChecklistPassed, CreatedOn, UpdatedOn, Status, Remarks, VendorID, ContractNumber, WarrantyValidUntil, IsRecurring, RecurrenceIntervalDays) VALUES (103, 15, 2010, 'ElectricalInspection', '2023-11-10', 3, 503, 3, 800.0, 'None', 0, '2023-09-05', '2023-09-07', 'InProgress', 'Awaiting parts', 303, 'CN67890', '2026-03-15', 0, NULL);

-- Employee training records table
CREATE TABLE employee_training
(
    TrainingID INTEGER PRIMARY KEY,
    EmployeeID INTEGER,
    TrainingModule TEXT,
    InstructorName TEXT,
    CompletionDate DATE,
    Score REAL,
    CertificationIssued INTEGER,
    CertificationNumber TEXT,
    ValidUntil DATE,
    TrainingHours INTEGER,
    TrainingLocation TEXT,
    Department TEXT,
    TrainingCost REAL,
    FeedbackScore REAL,
    MaterialProvided INTEGER,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    Remarks TEXT,
    ApprovedBy TEXT,
    IsMandatory INTEGER,
    TrainingType TEXT,
    Language TEXT
);

INSERT INTO employee_training (TrainingID, EmployeeID, TrainingModule, InstructorName, CompletionDate, Score, CertificationIssued, CertificationNumber, ValidUntil, TrainingHours, TrainingLocation, Department, TrainingCost, FeedbackScore, MaterialProvided, FollowUpRequired, FollowUpDate, Remarks, ApprovedBy, IsMandatory, TrainingType, Language) VALUES (1001, 2001, 'SafetyBasics', 'John Smith', '2023-03-10', 92.5, 1, 'CERT1001', '2025-03-10', 8, 'HQRoom1', 'Operations', 250.0, 4.5, 1, 0, NULL, 'Excellent attendance', 'Maria', 1, 'Onsite', 'English');
INSERT INTO employee_training (TrainingID, EmployeeID, TrainingModule, InstructorName, CompletionDate, Score, CertificationIssued, CertificationNumber, ValidUntil, TrainingHours, TrainingLocation, Department, TrainingCost, FeedbackScore, MaterialProvided, FollowUpRequired, FollowUpDate, Remarks, ApprovedBy, IsMandatory, TrainingType, Language) VALUES (1002, 2005, 'FuelHandling', 'Laura Lee', '2023-05-22', 88.0, 1, 'CERT1002', '2026-05-22', 6, 'Online', 'Logistics', 180.0, 4.2, 1, 1, '2023-11-22', 'Needs refresher', 'James', 1, 'Virtual', 'English');
INSERT INTO employee_training (TrainingID, EmployeeID, TrainingModule, InstructorName, CompletionDate, Score, CertificationIssued, CertificationNumber, ValidUntil, TrainingHours, TrainingLocation, Department, TrainingCost, FeedbackScore, MaterialProvided, FollowUpRequired, FollowUpDate, Remarks, ApprovedBy, IsMandatory, TrainingType, Language) VALUES (1003, 2010, 'CustomerService', 'Ana Gomez', '2023-07-15', 95.0, 1, 'CERT1003', '2025-07-15', 4, 'HQRoom2', 'CustomerSupport', 120.0, 4.8, 1, 0, NULL, 'Highly engaged', 'Steve', 0, 'Onsite', 'Spanish');

-- Environmental audits table
CREATE TABLE environmental_audits
(
    AuditID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    EmissionLevel REAL,
    SoilContaminationLevel REAL,
    WaterLeakDetected INTEGER,
    WasteDisposalCompliance INTEGER,
    Remarks TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    CorrectiveActionPlan TEXT,
    EstimatedFixCost REAL,
    DocumentationLink TEXT,
    AuditScore REAL,
    IsPass INTEGER,
    Region TEXT,
    AuditType TEXT,
    WeatherCondition TEXT,
    TemperatureC REAL,
    HumidityPercent REAL
);

INSERT INTO environmental_audits (AuditID, GasStationID, AuditDate, AuditorName, EmissionLevel, SoilContaminationLevel, WaterLeakDetected, WasteDisposalCompliance, Remarks, FollowUpRequired, FollowUpDate, CorrectiveActionPlan, EstimatedFixCost, DocumentationLink, AuditScore, IsPass, Region, AuditType, WeatherCondition, TemperatureC, HumidityPercent) VALUES (5001, 10, '2023-04-20', 'Helen Green', 0.02, 0.001, 0, 1, 'All clear', 0, NULL, NULL, 0.0, 'doc5001.pdf', 95.0, 1, 'Midwest', 'Annual', 'Sunny', 22.5, 45.0);
INSERT INTO environmental_audits (AuditID, GasStationID, AuditDate, AuditorName, EmissionLevel, SoilContaminationLevel, WaterLeakDetected, WasteDisposalCompliance, Remarks, FollowUpRequired, FollowUpDate, CorrectiveActionPlan, EstimatedFixCost, DocumentationLink, AuditScore, IsPass, Region, AuditType, WeatherCondition, TemperatureC, HumidityPercent) VALUES (5002, 12, '2023-07-10', 'Mark Brown', 0.05, 0.003, 1, 0, 'Minor leak observed', 1, '2023-09-15', 'Replace pipe segment', 1500.0, 'doc5002.pdf', 78.0, 0, 'Southwest', 'Quarterly', 'Rainy', 18.0, 70.0);
INSERT INTO environmental_audits (AuditID, GasStationID, AuditDate, AuditorName, EmissionLevel, SoilContaminationLevel, WaterLeakDetected, WasteDisposalCompliance, Remarks, FollowUpRequired, FollowUpDate, CorrectiveActionPlan, EstimatedFixCost, DocumentationLink, AuditScore, IsPass, Region, AuditType, WeatherCondition, TemperatureC, HumidityPercent) VALUES (5003, 15, '2023-10-05', 'Susan Lee', 0.01, 0.0005, 0, 1, 'Excellent compliance', 0, NULL, NULL, 0.0, 'doc5003.pdf', 99.0, 1, 'Northeast', 'Annual', 'Cloudy', 10.0, 55.0);

-- Insurance policies table
CREATE TABLE insurance_policies
(
    PolicyID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    ProviderName TEXT,
    PolicyNumber TEXT,
    CoverageType TEXT,
    CoverageAmount REAL,
    Premium REAL,
    EffectiveDate DATE,
    ExpirationDate DATE,
    Deductible REAL,
    ClaimHistoryCount INTEGER,
    LastClaimDate DATE,
    IsActive INTEGER,
    BrokerName TEXT,
    Underwriter TEXT,
    RiskScore REAL,
    PolicyStatus TEXT,
    RenewalNoticeSent INTEGER,
    RenewalDate DATE,
    Remarks TEXT,
    LiabilityLimit REAL,
    PropertyLimit REAL,
    BusinessInterruptedLimit REAL
);

INSERT INTO insurance_policies (PolicyID, GasStationID, ProviderName, PolicyNumber, CoverageType, CoverageAmount, Premium, EffectiveDate, ExpirationDate, Deductible, ClaimHistoryCount, LastClaimDate, IsActive, BrokerName, Underwriter, RiskScore, PolicyStatus, RenewalNoticeSent, RenewalDate, Remarks, LiabilityLimit, PropertyLimit, BusinessInterruptedLimit) VALUES (8001, 10, 'Acme Insurance', 'POL10001', 'Comprehensive', 2000000.0, 15000.0, '2023-01-01', '2024-01-01', 5000.0, 2, '2023-06-20', 1, 'BrokerOne', 'UnderwriterA', 0.35, 'Active', 1, '2023-12-15', 'Renewal pending', 1000000.0, 500000.0, 300000.0);
INSERT INTO insurance_policies (PolicyID, GasStationID, ProviderName, PolicyNumber, CoverageType, CoverageAmount, Premium, EffectiveDate, ExpirationDate, Deductible, ClaimHistoryCount, LastClaimDate, IsActive, BrokerName, Underwriter, RiskScore, PolicyStatus, RenewalNoticeSent, RenewalDate, Remarks, LiabilityLimit, PropertyLimit, BusinessInterruptedLimit) VALUES (8002, 12, 'Global Assurance', 'POL20002', 'Liability', 1500000.0, 12000.0, '2022-07-01', '2023-07-01', 4000.0, 1, '2023-02-10', 0, 'BrokerTwo', 'UnderwriterB', 0.45, 'Expired', 0, NULL, 'Policy lapsed', 800000.0, 0.0, 0.0);
INSERT INTO insurance_policies (PolicyID, GasStationID, ProviderName, PolicyNumber, CoverageType, CoverageAmount, Premium, EffectiveDate, ExpirationDate, Deductible, ClaimHistoryCount, LastClaimDate, IsActive, BrokerName, Underwriter, RiskScore, PolicyStatus, RenewalNoticeSent, RenewalDate, Remarks, LiabilityLimit, PropertyLimit, BusinessInterruptedLimit) VALUES (8003, 15, 'SecureCo', 'POL30003', 'Property', 1000000.0, 9000.0, '2023-03-15', '2024-03-15', 3000.0, 0, NULL, 1, 'BrokerThree', 'UnderwriterC', 0.25, 'Active', 1, '2024-02-20', 'No claims', 500000.0, 1000000.0, 200000.0);

-- Asset depreciation table
CREATE TABLE asset_depreciation
(
    AssetID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    AssetType TEXT,
    PurchaseDate DATE,
    PurchaseCost REAL,
    UsefulLifeYears INTEGER,
    SalvageValue REAL,
    DepreciationMethod TEXT,
    AnnualDepreciation REAL,
    AccumulatedDepreciation REAL,
    BookValue REAL,
    LastDepreciationDate DATE,
    DepartmentResponsible TEXT,
    AssetTag TEXT,
    WarrantyExpiration DATE,
    MaintenanceContractID INTEGER,
    IsDisposed INTEGER,
    DisposalDate DATE,
    DisposalProceeds REAL,
    Notes TEXT,
    TaxDepreciationAllowed INTEGER,
    TaxDepreciationMethod TEXT,
    TaxDepreciationRate REAL
);

INSERT INTO asset_depreciation (AssetID, GasStationID, AssetType, PurchaseDate, PurchaseCost, UsefulLifeYears, SalvageValue, DepreciationMethod, AnnualDepreciation, AccumulatedDepreciation, BookValue, LastDepreciationDate, DepartmentResponsible, AssetTag, WarrantyExpiration, MaintenanceContractID, IsDisposed, DisposalDate, DisposalProceeds, Notes, TaxDepreciationAllowed, TaxDepreciationMethod, TaxDepreciationRate) VALUES (3001, 10, 'FuelPump', '2020-05-01', 250000.0, 10, 25000.0, 'StraightLine', 22500.0, 67500.0, 182500.0, '2023-01-01', 'Operations', 'FP-1001', '2023-05-01', 4001, 0, NULL, 0.0, 'No issues', 1, 'MACRS', 0.2);
INSERT INTO asset_depreciation (AssetID, GasStationID, AssetType, PurchaseDate, PurchaseCost, UsefulLifeYears, SalvageValue, DepreciationMethod, AnnualDepreciation, AccumulatedDepreciation, BookValue, LastDepreciationDate, DepartmentResponsible, AssetTag, WarrantyExpiration, MaintenanceContractID, IsDisposed, DisposalDate, DisposalProceeds, Notes, TaxDepreciationAllowed, TaxDepreciationMethod, TaxDepreciationRate) VALUES (3002, 12, 'Canopy', '2018-03-15', 120000.0, 15, 12000.0, 'DecliningBalance', 18000.0, 54000.0, 66000.0, '2023-01-01', 'Facilities', 'CN-2002', '2022-03-15', 4002, 0, NULL, 0.0, 'Routine check', 1, 'MACRS', 0.18);
INSERT INTO asset_depreciation (AssetID, GasStationID, AssetType, PurchaseDate, PurchaseCost, UsefulLifeYears, SalvageValue, DepreciationMethod, AnnualDepreciation, AccumulatedDepreciation, BookValue, LastDepreciationDate, DepartmentResponsible, AssetTag, WarrantyExpiration, MaintenanceContractID, IsDisposed, DisposalDate, DisposalProceeds, Notes, TaxDepreciationAllowed, TaxDepreciationMethod, TaxDepreciationRate) VALUES (3003, 15, 'ATM', '2021-11-01', 80000.0, 8, 8000.0, 'StraightLine', 9000.0, 27000.0, 53000.0, '2023-01-01', 'Finance', 'ATM-3003', '2023-11-01', 4003, 0, NULL, 0.0, 'Installed', 1, 'MACRS', 0.25);

-- Logistics routes table
CREATE TABLE logistics_routes
(
    RouteID INTEGER PRIMARY KEY,
    OriginStationID INTEGER,
    DestinationStationID INTEGER,
    VehicleType TEXT,
    AverageDistanceKM REAL,
    AvgTravelTimeMin INTEGER,
    FuelEfficiencyKMPerL REAL,
    MaxLoadKg INTEGER,
    TypicalLoadKg INTEGER,
    RouteStatus TEXT,
    PreferredCarrier TEXT,
    LastReviewed DATE,
    ReviewFrequencyDays INTEGER,
    RiskLevel TEXT,
    TemperatureControlRequired INTEGER,
    HazardousMaterialAllowed INTEGER,
    ContractID INTEGER,
    CostPerKm REAL,
    TotalAnnualCost REAL,
    Notes TEXT,
    IsActive INTEGER,
    CreatedBy TEXT,
    CreatedOn DATE,
    UpdatedBy TEXT,
    UpdatedOn DATE,
    EstimatedCO2KgPerKm REAL,
    RegulatoryCompliance TEXT
);

INSERT INTO logistics_routes (RouteID, OriginStationID, DestinationStationID, VehicleType, AverageDistanceKM, AvgTravelTimeMin, FuelEfficiencyKMPerL, MaxLoadKg, TypicalLoadKg, RouteStatus, PreferredCarrier, LastReviewed, ReviewFrequencyDays, RiskLevel, TemperatureControlRequired, HazardousMaterialAllowed, ContractID, CostPerKm, TotalAnnualCost, Notes, IsActive, CreatedBy, CreatedOn, UpdatedBy, UpdatedOn, EstimatedCO2KgPerKm, RegulatoryCompliance) VALUES (9001, 10, 12, 'Truck', 150.5, 120, 8.2, 20000, 15000, 'Active', 'CarrierX', '2023-06-01', 180, 'Low', 0, 0, 6001, 0.75, 55000.0, 'Seasonal adjustments', 1, 'Alice', '2022-01-15', 'Bob', '2023-05-20', 2.1, 'ISO9001');
INSERT INTO logistics_routes (RouteID, OriginStationID, DestinationStationID, VehicleType, AverageDistanceKM, AvgTravelTimeMin, FuelEfficiencyKMPerL, MaxLoadKg, TypicalLoadKg, RouteStatus, PreferredCarrier, LastReviewed, ReviewFrequencyDays, RiskLevel, TemperatureControlRequired, HazardousMaterialAllowed, ContractID, CostPerKm, TotalAnnualCost, Notes, IsActive, CreatedBy, CreatedOn, UpdatedBy, UpdatedOn, EstimatedCO2KgPerKm, RegulatoryCompliance) VALUES (9002, 12, 15, 'Van', 85.0, 70, 10.5, 5000, 4000, 'Active', 'CarrierY', '2023-07-15', 365, 'Medium', 1, 0, 6002, 0.65, 30000.0, 'Requires refrigeration', 1, 'Carol', '2021-03-10', 'Dave', '2023-07-01', 1.8, 'ISO14001');
INSERT INTO logistics_routes (RouteID, OriginStationID, DestinationStationID, VehicleType, AverageDistanceKM, AvgTravelTimeMin, FuelEfficiencyKMPerL, MaxLoadKg, TypicalLoadKg, RouteStatus, PreferredCarrier, LastReviewed, ReviewFrequencyDays, RiskLevel, TemperatureControlRequired, HazardousMaterialAllowed, ContractID, CostPerKm, TotalAnnualCost, Notes, IsActive, CreatedBy, CreatedOn, UpdatedBy, UpdatedOn, EstimatedCO2KgPerKm, RegulatoryCompliance) VALUES (9003, 15, 10, 'ReeferTruck', 160.0, 130, 7.0, 18000, 13000, 'Planned', 'CarrierZ', '2023-05-10', 180, 'High', 1, 1, 6003, 0.85, 60000.0, 'Hazardous goods route', 0, 'Eve', '2022-11-05', 'Frank', '2023-04-30', 2.5, 'ISO45001');

-- Safety incidents table
CREATE TABLE safety_incidents
(
    IncidentID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    IncidentDate DATE,
    IncidentTime TEXT,
    IncidentType TEXT,
    Description TEXT,
    SeverityLevel INTEGER,
    InjuredPersonID INTEGER,
    WitnessCount INTEGER,
    ImmediateActionTaken TEXT,
    FollowUpAction TEXT,
    ReportedBy TEXT,
    ReportedOn DATE,
    ClosedOn DATE,
    IsClosed INTEGER,
    RootCause TEXT,
    CorrectiveMeasure TEXT,
    EstimatedLoss REAL,
    RegulatoryFine REAL,
    InsuranceClaimFiled INTEGER,
    ClaimAmount REAL,
    Notes TEXT,
    IsReportable INTEGER,
    Department TEXT,
    Shift TEXT
);

INSERT INTO safety_incidents (IncidentID, GasStationID, IncidentDate, IncidentTime, IncidentType, Description, SeverityLevel, InjuredPersonID, WitnessCount, ImmediateActionTaken, FollowUpAction, ReportedBy, ReportedOn, ClosedOn, IsClosed, RootCause, CorrectiveMeasure, EstimatedLoss, RegulatoryFine, InsuranceClaimFiled, ClaimAmount, Notes, IsReportable, Department, Shift) VALUES (7001, 10, '2023-03-12', '14:30', 'SlipFall', 'Employee slipped on wet floor near pump', 2, 2001, 3, 'Provided first aid', 'Placed non‑slip mats', 'Alice', '2023-03-12', '2023-03-20', 1, 'Wet surface', 'Install mats', 500.0, 0.0, 0, 0.0, 'Recovered fully', 1, 'Operations', 'Day');
INSERT INTO safety_incidents (IncidentID, GasStationID, IncidentDate, IncidentTime, IncidentType, Description, SeverityLevel, InjuredPersonID, WitnessCount, ImmediateActionTaken, FollowUpAction, ReportedBy, ReportedOn, ClosedOn, IsClosed, RootCause, CorrectiveMeasure, EstimatedLoss, RegulatoryFine, InsuranceClaimFiled, ClaimAmount, Notes, IsReportable, Department, Shift) VALUES (7002, 12, '2023-08-05', '09:15', 'Fire', 'Small fire in storage closet', 4, NULL, 2, 'Used fire extinguisher', 'Replaced faulty wiring', 'Bob', '2023-08-05', '2023-08-18', 1, 'Electrical fault', 'Upgrade wiring', 2000.0, 1500.0, 1, 3000.0, 'No injuries', 1, 'Facilities', 'Morning');
INSERT INTO safety_incidents (IncidentID, GasStationID, IncidentDate, IncidentTime, IncidentType, Description, SeverityLevel, InjuredPersonID, WitnessCount, ImmediateActionTaken, FollowUpAction, ReportedBy, ReportedOn, ClosedOn, IsClosed, RootCause, CorrectiveMeasure, EstimatedLoss, RegulatoryFine, InsuranceClaimFiled, ClaimAmount, Notes, IsReportable, Department, Shift) VALUES (7003, 15, '2023-11-22', '18:45', 'VehicleCollision', 'Delivery truck collided with pump', 3, NULL, 1, 'Secured area', 'Repair pump', 'Carol', '2023-11-22', NULL, 0, 'Driver error', 'Implement signage', 5000.0, 0.0, 0, 0.0, 'Investigation ongoing', 1, 'Logistics', 'Evening');

-- Vendor contacts table
CREATE TABLE vendor_contacts
(
    VendorID INTEGER PRIMARY KEY,
    VendorName TEXT,
    ContactPerson TEXT,
    PhoneNumber TEXT,
    EmailAddress TEXT,
    StreetAddress TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    Country TEXT,
    PreferredLanguage TEXT,
    PrimaryProductCategory TEXT,
    ContractStartDate DATE,
    ContractEndDate DATE,
    PaymentTerms TEXT,
    CreditLimit REAL,
    Rating INTEGER,
    LastPerformanceReview DATE,
    IsActive INTEGER,
    Notes TEXT,
    TaxID TEXT,
    BankAccountNumber TEXT,
    RoutingNumber TEXT,
    InsuranceProvider TEXT,
    InsurancePolicyNumber TEXT,
    ComplianceStatus TEXT
);

INSERT INTO vendor_contacts (VendorID, VendorName, ContactPerson, PhoneNumber, EmailAddress, StreetAddress, City, State, ZipCode, Country, PreferredLanguage, PrimaryProductCategory, ContractStartDate, ContractEndDate, PaymentTerms, CreditLimit, Rating, LastPerformanceReview, IsActive, Notes, TaxID, BankAccountNumber, RoutingNumber, InsuranceProvider, InsurancePolicyNumber, ComplianceStatus) VALUES (4001, 'FuelSupplyCo', 'John Doe', '5551234567', 'john.doe@fuelsupplyco.com', '123 Main St', 'Springfield', 'IL', '62701', 'USA', 'English', 'Fuel', '2022-01-01', '2025-12-31', 'Net30', 500000.0, 5, '2023-06-01', 1, 'Preferred vendor', 'TAX12345', 'ACC001', 'RT001', 'InsureCo', 'POL123', 'Compliant');
INSERT INTO vendor_contacts (VendorID, VendorName, ContactPerson, PhoneNumber, EmailAddress, StreetAddress, City, State, ZipCode, Country, PreferredLanguage, PrimaryProductCategory, ContractStartDate, ContractEndDate, PaymentTerms, CreditLimit, Rating, LastPerformanceReview, IsActive, Notes, TaxID, BankAccountNumber, RoutingNumber, InsuranceProvider, InsurancePolicyNumber, ComplianceStatus) VALUES (4002, 'CleanEquipLtd', 'Jane Smith', '5559876543', 'jane.smith@cleanequipltd.com', '456 Oak Ave', 'Columbus', 'OH', '43215', 'USA', 'English', 'CleaningEquipment', '2021-05-15', '2024-05-14', 'Net45', 200000.0, 4, '2023-03-20', 1, 'On‑time deliveries', 'TAX67890', 'ACC002', 'RT002', 'SafeGuard', 'POL456', 'Compliant');
INSERT INTO vendor_contacts (VendorID, VendorName, ContactPerson, PhoneNumber, EmailAddress, StreetAddress, City, State, ZipCode, Country, PreferredLanguage, PrimaryProductCategory, ContractStartDate, ContractEndDate, PaymentTerms, CreditLimit, Rating, LastPerformanceReview, IsActive, Notes, TaxID, BankAccountNumber, RoutingNumber, InsuranceProvider, InsurancePolicyNumber, ComplianceStatus) VALUES (4003, 'TechServiceInc', 'Mike Lee', '5555551212', 'mike.lee@techserviceinc.com', '789 Pine Rd', 'Denver', 'CO', '80203', 'USA', 'English', 'ITSupport', '2023-02-01', '2026-01-31', 'Net60', 300000.0, 5, '2023-07-15', 1, 'Rapid response', 'TAX11223', 'ACC003', 'RT003', 'ProtectPlus', 'POL789', 'Compliant');

-- Digital ad placements table
CREATE TABLE digital_ad_placements
(
    PlacementID INTEGER PRIMARY KEY,
    CampaignID INTEGER,
    Platform TEXT,
    AdFormat TEXT,
    PlacementStart DATE,
    PlacementEnd DATE,
    DailyBudget REAL,
    CPM REAL,
    CPC REAL,
    CTR REAL,
    Impressions INTEGER,
    Clicks INTEGER,
    Conversions INTEGER,
    RevenueGenerated REAL,
    TargetAudience TEXT,
    GeoTargeting TEXT,
    DeviceTargeting TEXT,
    FrequencyCap INTEGER,
    CreativeID TEXT,
    LandingPageURL TEXT,
    IsActive INTEGER,
    CreatedOn DATE,
    CreatedBy TEXT,
    UpdatedOn DATE,
    UpdatedBy TEXT,
    ViewabilityScore REAL,
    BrandSafetyScore REAL,
    Notes TEXT
);

INSERT INTO digital_ad_placements (PlacementID, CampaignID, Platform, AdFormat, PlacementStart, PlacementEnd, DailyBudget, CPM, CPC, CTR, Impressions, Clicks, Conversions, RevenueGenerated, TargetAudience, GeoTargeting, DeviceTargeting, FrequencyCap, CreativeID, LandingPageURL, IsActive, CreatedOn, CreatedBy, UpdatedOn, UpdatedBy, ViewabilityScore, BrandSafetyScore, Notes) VALUES (10001, 1, 'GoogleAds', 'Banner', '2023-06-01', '2023-08-31', 1500.0, 5.0, 0.75, 0.02, 3000000, 60000, 8000, 120000.0, 'Drivers', 'US', 'Mobile', 3, 'CR001', 'http://fuelpromo.com', 1, '2023-05-20', 'Alice', '2023-07-01', 'Bob', 0.85, 0.95, 'High engagement');
INSERT INTO digital_ad_placements (PlacementID, CampaignID, Platform, AdFormat, PlacementStart, PlacementEnd, DailyBudget, CPM, CPC, CTR, Impressions, Clicks, Conversions, RevenueGenerated, TargetAudience, GeoTargeting, DeviceTargeting, FrequencyCap, CreativeID, LandingPageURL, IsActive, CreatedOn, CreatedBy, UpdatedOn, UpdatedBy, ViewabilityScore, BrandSafetyScore, Notes) VALUES (10002, 2, 'Facebook', 'Video', '2023-12-01', '2024-02-28', 2000.0, 8.0, 1.2, 0.015, 2500000, 37500, 5000, 90000.0, 'Families', 'EU', 'Desktop', 2, 'CR002', 'http://winterfuel.com', 1, '2023-11-10', 'Carol', '2024-01-15', 'Dave', 0.78, 0.92, 'Seasonal boost');
INSERT INTO digital_ad_placements (PlacementID, CampaignID, Platform, AdFormat, PlacementStart, PlacementEnd, DailyBudget, CPM, CPC, CTR, Impressions, Clicks, Conversions, RevenueGenerated, TargetAudience, GeoTargeting, DeviceTargeting, FrequencyCap, CreativeID, LandingPageURL, IsActive, CreatedOn, CreatedBy, UpdatedOn, UpdatedBy, ViewabilityScore, BrandSafetyScore, Notes) VALUES (10003, 3, 'Twitter', 'Carousel', '2023-04-15', '2023-07-15', 1200.0, 4.5, 0.6, 0.018, 1800000, 32400, 4000, 72000.0, 'EcoFriendly', 'Asia', 'Mobile', 4, 'CR003', 'http://ecofuel.com', 0, '2023-04-01', 'Eve', '2023-06-20', 'Frank', 0.82, 0.97, 'Paused for analysis');