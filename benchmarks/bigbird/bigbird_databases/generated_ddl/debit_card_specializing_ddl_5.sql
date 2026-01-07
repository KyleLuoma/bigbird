-- Fuel distribution network details
CREATE TABLE fuel_distribution_network (
    NetworkID INTEGER PRIMARY KEY AUTOINCREMENT,
    Region TEXT,
    HubCode TEXT,
    HubCapacity INTEGER,
    MainPipelineLength REAL,
    SecondaryPipelineLength REAL,
    StorageTankCount INTEGER,
    AvgDeliveryTime REAL,
    MaxPressure INTEGER,
    MinPressure INTEGER,
    OperatorName TEXT,
    ContactNumber TEXT,
    LastInspectionDate DATE,
    ComplianceStatus TEXT,
    TemperatureControl INTEGER,
    FuelType TEXT,
    DistanceToNearestStation REAL,
    DailyThroughput REAL,
    MaintenanceWindow TEXT,
    IsActive INTEGER
);

INSERT INTO fuel_distribution_network (Region, HubCode, HubCapacity, MainPipelineLength, SecondaryPipelineLength,
    StorageTankCount, AvgDeliveryTime, MaxPressure, MinPressure, OperatorName, ContactNumber,
    LastInspectionDate, ComplianceStatus, TemperatureControl, FuelType, DistanceToNearestStation,
    DailyThroughput, MaintenanceWindow, IsActive)
VALUES ('NorthAmerica', 'HUB01', 50000, 1200.5, 300.2, 12, 4.5, 2500, 500, 'EnergyCo', '5551234567',
    '2023-06-15', 'Compliant', 1, 'Diesel', 15.2, 18000.0, '02:00-04:00', 1);

INSERT INTO fuel_distribution_network (Region, HubCode, HubCapacity, MainPipelineLength, SecondaryPipelineLength,
    StorageTankCount, AvgDeliveryTime, MaxPressure, MinPressure, OperatorName, ContactNumber,
    LastInspectionDate, ComplianceStatus, TemperatureControl, FuelType, DistanceToNearestStation,
    DailyThroughput, MaintenanceWindow, IsActive)
VALUES ('Europe', 'HUBEU2', 42000, 950.0, 210.7, 9, 3.8, 2400, 450, 'EuroFuel', '447890123456',
    '2023-08-01', 'Pending', 0, 'Petrol', 22.5, 15000.0, '01:00-03:00', 1);

INSERT INTO fuel_distribution_network (Region, HubCode, HubCapacity, MainPipelineLength, SecondaryPipelineLength,
    StorageTankCount, AvgDeliveryTime, MaxPressure, MinPressure, OperatorName, ContactNumber,
    LastInspectionDate, ComplianceStatus, TemperatureControl, FuelType, DistanceToNearestStation,
    DailyThroughput, MaintenanceWindow, IsActive)
VALUES ('Asia', 'HUBAS3', 60000, 1400.8, 350.4, 15, 5.0, 2600, 550, 'AsiaEnergy', '8613800012345',
    '2023-07-20', 'Compliant', 1, 'Kerosene', 10.0, 20000.0, '03:00-05:00', 1);


-- Advertising budget allocation per channel
CREATE TABLE advertising_budget_allocation (
    BudgetID INTEGER PRIMARY KEY AUTOINCREMENT,
    FiscalYear INTEGER,
    Quarter INTEGER,
    Channel TEXT,
    SubChannel TEXT,
    BudgetAmount REAL,
    SpentAmount REAL,
    RemainingAmount REAL,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    Currency TEXT,
    CampaignName TEXT,
    TargetAudience TEXT,
    ReachEstimate INTEGER,
    ClickThroughRate REAL,
    ConversionRate REAL,
    CostPerClick REAL,
    CostPerAcquisition REAL,
    Impressions INTEGER,
    Clicks INTEGER,
    Conversions INTEGER
);

INSERT INTO advertising_budget_allocation (FiscalYear, Quarter, Channel, SubChannel, BudgetAmount,
    SpentAmount, RemainingAmount, ApprovedBy, ApprovalDate, Currency, CampaignName,
    TargetAudience, ReachEstimate, ClickThroughRate, ConversionRate, CostPerClick,
    CostPerAcquisition, Impressions, Clicks, Conversions)
VALUES (2023, 2, 'Online', 'SocialMedia', 150000.0, 95000.0, 55000.0, 'MiaLee', '2023-03-01',
    'USD', 'SpringPromo', 'Adults18-35', 2000000, 1.8, 0.4, 0.45, 12.5, 5000000, 90000, 36000);

INSERT INTO advertising_budget_allocation (FiscalYear, Quarter, Channel, SubChannel, BudgetAmount,
    SpentAmount, RemainingAmount, ApprovedBy, ApprovalDate, Currency, CampaignName,
    TargetAudience, ReachEstimate, ClickThroughRate, ConversionRate, CostPerClick,
    CostPerAcquisition, Impressions, Clicks, Conversions)
VALUES (2023, 3, 'TV', 'PrimeTime', 250000.0, 180000.0, 70000.0, 'JohnDoe', '2023-06-15',
    'USD', 'SummerLaunch', 'Family', 800000, 0.6, 0.2, 0.0, 25.0, 3000000, 18000, 3600);

INSERT INTO advertising_budget_allocation (FiscalYear, Quarter, Channel, SubChannel, BudgetAmount,
    SpentAmount, RemainingAmount, ApprovedBy, ApprovalDate, Currency, CampaignName,
    TargetAudience, ReachEstimate, ClickThroughRate, ConversionRate, CostPerClick,
    CostPerAcquisition, Impressions, Clicks, Conversions)
VALUES (2024, 1, 'Print', 'Magazine', 90000.0, 30000.0, 60000.0, 'AnaSmith', '2023-12-10',
    'USD', 'WinterDeals', 'Seniors', 350000, 0.2, 0.1, 0.0, 15.0, 1200000, 2400, 240);


-- Employee benefits plan information
CREATE TABLE employee_benefits_plan (
    PlanID INTEGER PRIMARY KEY AUTOINCREMENT,
    PlanName TEXT,
    EligibilityCriteria TEXT,
    CoverageLevel TEXT,
    SalaryContributionPercent REAL,
    EmployerContributionPercent REAL,
    EffectiveDate DATE,
    ExpirationDate DATE,
    MaxDependents INTEGER,
    HealthInsuranceProvider TEXT,
    DentalInsuranceProvider TEXT,
    VisionInsuranceProvider TEXT,
    LifeInsuranceCoverage REAL,
    DisabilityInsuranceCoverage REAL,
    RetirementPlanType TEXT,
    MatchingContributionPercent REAL,
    AnnualLeaveDays INTEGER,
    SickLeaveDays INTEGER,
    WellnessProgram TEXT,
    RemoteWorkEligibility INTEGER,
    IsActive INTEGER
);

INSERT INTO employee_benefits_plan (PlanName, EligibilityCriteria, CoverageLevel,
    SalaryContributionPercent, EmployerContributionPercent, EffectiveDate, ExpirationDate,
    MaxDependents, HealthInsuranceProvider, DentalInsuranceProvider, VisionInsuranceProvider,
    LifeInsuranceCoverage, DisabilityInsuranceCoverage, RetirementPlanType,
    MatchingContributionPercent, AnnualLeaveDays, SickLeaveDays, WellnessProgram,
    RemoteWorkEligibility, IsActive)
VALUES ('StandardPackage', 'FullTime', 'Premium', 2.5, 5.0, '2023-01-01', '2025-12-31',
    3, 'HealthPlus', 'DentalCare', 'VisionClear', 500000.0, 300000.0, '401K', 4.0,
    20, 10, 'GymMembership', 1, 1);

INSERT INTO employee_benefits_plan (PlanName, EligibilityCriteria, CoverageLevel,
    SalaryContributionPercent, EmployerContributionPercent, EffectiveDate, ExpirationDate,
    MaxDependents, HealthInsuranceProvider, DentalInsuranceProvider, VisionInsuranceProvider,
    LifeInsuranceCoverage, DisabilityInsuranceCoverage, RetirementPlanType,
    MatchingContributionPercent, AnnualLeaveDays, SickLeaveDays, WellnessProgram,
    RemoteWorkEligibility, IsActive)
VALUES ('ExecutivePackage', 'Executive', 'Executive', 5.0, 10.0, '2023-01-01', '2028-12-31',
    5, 'EliteHealth', 'EliteDental', 'EliteVision', 2000000.0, 1500000.0, '403B', 6.0,
    30, 15, 'WellnessRetreat', 1, 1);

INSERT INTO employee_benefits_plan (PlanName, EligibilityCriteria, CoverageLevel,
    SalaryContributionPercent, EmployerContributionPercent, EffectiveDate, ExpirationDate,
    MaxDependents, HealthInsuranceProvider, DentalInsuranceProvider, VisionInsuranceProvider,
    LifeInsuranceCoverage, DisabilityInsuranceCoverage, RetirementPlanType,
    MatchingContributionPercent, AnnualLeaveDays, SickLeaveDays, WellnessProgram,
    RemoteWorkEligibility, IsActive)
VALUES ('PartTimeFlex', 'PartTime', 'Basic', 1.0, 2.0, '2023-04-01', '2026-03-31',
    2, 'BasicHealth', 'BasicDental', 'BasicVision', 100000.0, 50000.0, 'IRA', 2.0,
    10, 5, 'HealthCheck', 0, 1);


-- Sustainability initiatives tracking
CREATE TABLE sustainability_initiatives (
    InitiativeID INTEGER PRIMARY KEY AUTOINCREMENT,
    InitiativeName TEXT,
    StartDate DATE,
    EndDate DATE,
    Category TEXT,
    TargetMetric TEXT,
    BaselineValue REAL,
    TargetValue REAL,
    CurrentValue REAL,
    ResponsibleDept TEXT,
    LeadPerson TEXT,
    BudgetAllocated REAL,
    FundingSource TEXT,
    Status TEXT,
    RiskLevel TEXT,
    StakeholderCount INTEGER,
    PartnerOrganizations TEXT,
    CO2ReductionTonnes REAL,
    WaterSavedLiters REAL,
    EnergySavedMWh REAL,
    ReportingFrequency TEXT
);

INSERT INTO sustainability_initiatives (InitiativeName, StartDate, EndDate, Category,
    TargetMetric, BaselineValue, TargetValue, CurrentValue, ResponsibleDept,
    LeadPerson, BudgetAllocated, FundingSource, Status, RiskLevel,
    StakeholderCount, PartnerOrganizations, CO2ReductionTonnes, WaterSavedLiters,
    EnergySavedMWh, ReportingFrequency)
VALUES ('SolarRoofUpgrade', '2023-05-01', '2025-04-30', 'RenewableEnergy',
    'SolarCapacityMW', 0.0, 15.0, 5.0, 'Facilities', 'LauraKim', 2500000.0,
    'Internal', 'InProgress', 'Medium', 8, 'SolarTechInc', 12.5, 0.0, 30.0, 'Quarterly');

INSERT INTO sustainability_initiatives (InitiativeName, StartDate, EndDate, Category,
    TargetMetric, BaselineValue, TargetValue, CurrentValue, ResponsibleDept,
    LeadPerson, BudgetAllocated, FundingSource, Status, RiskLevel,
    StakeholderCount, PartnerOrganizations, CO2ReductionTonnes, WaterSavedLiters,
    EnergySavedMWh, ReportingFrequency)
VALUES ('ZeroWasteProgram', '2022-01-01', '2024-12-31', 'WasteManagement',
    'LandfillDiversionPct', 45.0, 90.0, 70.0, 'Operations', 'MarkTian', 800000.0,
    'Grant', 'Completed', 'Low', 12, 'EcoPartners', 0.0, 1500000.0, 0.0, 'Annual');

INSERT INTO sustainability_initiatives (InitiativeName, StartDate, EndDate, Category,
    TargetMetric, BaselineValue, TargetValue, CurrentValue, ResponsibleDept,
    LeadPerson, BudgetAllocated, FundingSource, Status, RiskLevel,
    StakeholderCount, PartnerOrganizations, CO2ReductionTonnes, WaterSavedLiters,
    EnergySavedMWh, ReportingFrequency)
VALUES ('EcoCommuteIncentive', '2023-09-01', '2026-08-31', 'Transportation',
    'EmployeeCarpoolPct', 10.0, 40.0, 22.0, 'HR', 'SofiaRossi', 300000.0,
    'Corporate', 'Planning', 'High', 5, 'RideShareCo', 3.2, 50000.0, 5.5, 'Biannual');


-- Corporate event calendar
CREATE TABLE corporate_event_calendar (
    EventID INTEGER PRIMARY KEY AUTOINCREMENT,
    EventName TEXT,
    EventDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    Location TEXT,
    City TEXT,
    Country TEXT,
    Organizer TEXT,
    ExpectedAttendees INTEGER,
    EventType TEXT,
    Sponsor TEXT,
    Budget REAL,
    ActualCost REAL,
    IsVirtual INTEGER,
    Platform TEXT,
    RegistrationLink TEXT,
    Description TEXT,
    CateringProvided INTEGER,
    AudioVisualNeeded INTEGER,
    SafetyPlan TEXT
);

INSERT INTO corporate_event_calendar (EventName, EventDate, StartTime, EndTime,
    Location, City, Country, Organizer, ExpectedAttendees, EventType, Sponsor,
    Budget, ActualCost, IsVirtual, Platform, RegistrationLink, Description,
    CateringProvided, AudioVisualNeeded, SafetyPlan)
VALUES ('AnnualShareholdersMeeting', '2024-05-20', '09:00', '12:00',
    'Grand Hall', 'NewYork', 'USA', 'FinanceDept', 500, 'Meeting', 'Corporate', 
    150000.0, 140000.0, 0, '', 'http://register.sharehold2024.com',
    'Presentation of yearly results', 1, 1, 'Standard');

INSERT INTO corporate_event_calendar (EventName, EventDate, StartTime, EndTime,
    Location, City, Country, Organizer, ExpectedAttendees, EventType, Sponsor,
    Budget, ActualCost, IsVirtual, Platform, RegistrationLink, Description,
    CateringProvided, AudioVisualNeeded, SafetyPlan)
VALUES ('TechInnovationSummit', '2023-11-10', '10:00', '16:00',
    'Convention Center', 'Berlin', 'Germany', 'R&DDept', 1200, 'Conference', 'TechPartner',
    300000.0, 310000.0, 0, '', 'http://register.techsummit2023.com',
    'Showcase of new technologies', 1, 1, 'Standard');

INSERT INTO corporate_event_calendar (EventName, EventDate, StartTime, EndTime,
    Location, City, Country, Organizer, ExpectedAttendees, EventType, Sponsor,
    Budget, ActualCost, IsVirtual, Platform, RegistrationLink, Description,
    CateringProvided, AudioVisualNeeded, SafetyPlan)
VALUES ('GlobalVirtualTownhall', '2024-02-15', '14:00', '15:30',
    '', 'Online', '', 'HRDept', 4000, 'Townhall', 'Corporate',
    50000.0, 45000.0, 1, 'Zoom', 'http://join.townhall2024.com',
    'Company wide updates and Q&A', 0, 0, 'Standard');


-- Third party logistics partners
CREATE TABLE third_party_logistics_partners (
    PartnerID INTEGER PRIMARY KEY AUTOINCREMENT,
    PartnerName TEXT,
    ServiceType TEXT,
    ContractStartDate DATE,
    ContractEndDate DATE,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    CoverageRegion TEXT,
    ServiceLevelAgreement TEXT,
    WeeklyCapacity INTEGER,
    DailyCapacity INTEGER,
    PricePerUnit REAL,
    Currency TEXT,
    PerformanceScore REAL,
    PenaltyClause TEXT,
    InsuranceProvider TEXT,
    InsurancePolicyNumber TEXT,
    IsPreferred INTEGER,
    Rating INTEGER,
    Notes TEXT
);

INSERT INTO third_party_logistics_partners (PartnerName, ServiceType, ContractStartDate,
    ContractEndDate, ContactPerson, ContactPhone, ContactEmail, CoverageRegion,
    ServiceLevelAgreement, WeeklyCapacity, DailyCapacity, PricePerUnit, Currency,
    PerformanceScore, PenaltyClause, InsuranceProvider, InsurancePolicyNumber,
    IsPreferred, Rating, Notes)
VALUES ('LogiTrans Global', 'Freight', '2022-01-01', '2025-12-31', 'EthanB', '5559876543',
    'ethanb@logitrans.com', 'NorthAmerica', 'Gold', 20000, 3000, 1.25, 'USD',
    92.5, 'LatePenalty', 'SafeInsure', 'POL123456', 1, 5, 'Strategic partner');

INSERT INTO third_party_logistics_partners (PartnerName, ServiceType, ContractStartDate,
    ContractEndDate, ContactPerson, ContactPhone, ContactEmail, CoverageRegion,
    ServiceLevelAgreement, WeeklyCapacity, DailyCapacity, PricePerUnit, Currency,
    PerformanceScore, PenaltyClause, InsuranceProvider, InsurancePolicyNumber,
    IsPreferred, Rating, Notes)
VALUES ('EuroCargo Ltd', 'Warehousing', '2021-06-15', '2024-06-14', 'AnnaK', '447700112233',
    'anna.k@eurocargo.eu', 'Europe', 'Silver', 15000, 2500, 0.95, 'EUR',
    88.0, 'VolumePenalty', 'EuroShield', 'EURO987654', 0, 4, 'Seasonal contracts');

INSERT INTO third_party_logistics_partners (PartnerName, ServiceType, ContractStartDate,
    ContractEndDate, ContactPerson, ContactPhone, ContactEmail, CoverageRegion,
    ServiceLevelAgreement, WeeklyCapacity, DailyCapacity, PricePerUnit, Currency,
    PerformanceScore, PenaltyClause, InsuranceProvider, InsurancePolicyNumber,
    IsPreferred, Rating, Notes)
VALUES ('AsiaExpress', 'LastMile', '2023-03-01', '2026-02-28', 'LiWei', '8613800098765',
    'liwei@asiaexpress.cn', 'Asia', 'Bronze', 10000, 1500, 0.80, 'CNY',
    81.3, 'DelayPenalty', 'ChinaInsure', 'CN123789', 0, 3, 'Trial period');


-- Digital content assets repository
CREATE TABLE digital_content_assets (
    AssetID INTEGER PRIMARY KEY AUTOINCREMENT,
    AssetName TEXT,
    AssetType TEXT,
    FilePath TEXT,
    FileSizeKB INTEGER,
    UploadDate DATE,
    UploadedBy TEXT,
    Category TEXT,
    Tags TEXT,
    DurationSeconds INTEGER,
    WidthPixels INTEGER,
    HeightPixels INTEGER,
    Resolution TEXT,
    BitrateKbps INTEGER,
    Language TEXT,
    CopyrightHolder TEXT,
    UsageRights TEXT,
    Views INTEGER,
    Likes INTEGER,
    Shares INTEGER,
    IsActive INTEGER
);

INSERT INTO digital_content_assets (AssetName, AssetType, FilePath, FileSizeKB,
    UploadDate, UploadedBy, Category, Tags, DurationSeconds, WidthPixels,
    HeightPixels, Resolution, BitrateKbps, Language, CopyrightHolder,
    UsageRights, Views, Likes, Shares, IsActive)
VALUES ('SpringPromoVideo', 'Video', '/assets/videos/spring2023.mp4', 85000,
    '2023-03-10', 'mediaTeam', 'Marketing', 'spring,promo,2023', 120, 1920,
    1080, '1080p', 3500, 'English', 'Company', 'Unlimited', 15000, 800, 300, 1);

INSERT INTO digital_content_assets (AssetName, AssetType, FilePath, FileSizeKB,
    UploadDate, UploadedBy, Category, Tags, DurationSeconds, WidthPixels,
    HeightPixels, Resolution, BitrateKbps, Language, CopyrightHolder,
    UsageRights, Views, Likes, Shares, IsActive)
VALUES ('EmployeeHandbookPDF', 'Document', '/assets/docs/handbook2023.pdf', 2500,
    '2023-01-05', 'HRDept', 'HR', 'handbook,policy,2023', 0, 0,
    0, '', 0, 'English', 'Company', 'InternalOnly', 3000, 0, 0, 1);

INSERT INTO digital_content_assets (AssetName, AssetType, FilePath, FileSizeKB,
    UploadDate, UploadedBy, Category, Tags, DurationSeconds, WidthPixels,
    HeightPixels, Resolution, BitrateKbps, Language, CopyrightHolder,
    UsageRights, Views, Likes, Shares, IsActive)
VALUES ('AnnualReport2022', 'PDF', '/assets/reports/annual2022.pdf', 4200,
    '2023-02-28', 'FinanceDept', 'Finance', 'annual,report,2022', 0, 0,
    0, '', 0, 'English', 'Company', 'Public', 8000, 0, 0, 1);


-- Regulatory audit schedule
CREATE TABLE regulatory_audit_schedule (
    AuditID INTEGER PRIMARY KEY AUTOINCREMENT,
    RegulationCode TEXT,
    AuditScope TEXT,
    ScheduledDate DATE,
    AssignedAuditor TEXT,
    AuditType TEXT,
    PriorityLevel TEXT,
    EstimatedHours REAL,
    ActualHours REAL,
    FindingsCount INTEGER,
    SeverityAverage REAL,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    Status TEXT,
    Notes TEXT,
    DepartmentResponsible TEXT,
    ComplianceScore REAL,
    PenaltyPotential REAL,
    AuditCost REAL,
    Currency TEXT,
    DocumentationLink TEXT
);

INSERT INTO regulatory_audit_schedule (RegulationCode, AuditScope, ScheduledDate,
    AssignedAuditor, AuditType, PriorityLevel, EstimatedHours, ActualHours,
    FindingsCount, SeverityAverage, FollowUpRequired, FollowUpDate, Status,
    Notes, DepartmentResponsible, ComplianceScore, PenaltyPotential,
    AuditCost, Currency, DocumentationLink)
VALUES ('ENV-2023-01', 'Emissions', '2023-09-15', 'LauraKim', 'Internal', 'High',
    120.0, 130.5, 8, 2.1, 1, '2023-10-15', 'Completed', 'All actions addressed',
    'Operations', 96.5, 250000.0, 15000.0, 'USD', 'http://audit.docs/env2023');

INSERT INTO regulatory_audit_schedule (RegulationCode, AuditScope, ScheduledDate,
    AssignedAuditor, AuditType, PriorityLevel, EstimatedHours, ActualHours,
    FindingsCount, SeverityAverage, FollowUpRequired, FollowUpDate, Status,
    Notes, DepartmentResponsible, ComplianceScore, PenaltyPotential,
    AuditCost, Currency, DocumentationLink)
VALUES ('FIN-2022-07', 'FinancialReporting', '2023-07-01', 'JohnDoe', 'External', 'Medium',
    80.0, 78.0, 3, 1.5, 0, NULL, 'Completed', 'Minor adjustments made',
    'Finance', 98.2, 0.0, 20000.0, 'USD', 'http://audit.docs/fin2022');

INSERT INTO regulatory_audit_schedule (RegulationCode, AuditScope, ScheduledDate,
    AssignedAuditor, AuditType, PriorityLevel, EstimatedHours, ActualHours,
    FindingsCount, SeverityAverage, FollowUpRequired, FollowUpDate, Status,
    Notes, DepartmentResponsible, ComplianceScore, PenaltyPotential,
    AuditCost, Currency, DocumentationLink)
VALUES ('LAB-2023-03', 'WorkplaceSafety', '2023-11-20', 'MarkTian', 'Internal', 'Low',
    60.0, 55.0, 5, 1.8, 1, '2023-12-20', 'InProgress', 'Pending final review',
    'HR', 92.0, 50000.0, 12000.0, 'USD', 'http://audit.docs/lab2023');


-- Equipment maintenance logs
CREATE TABLE equipment_maintenance_logs (
    LogID INTEGER PRIMARY KEY AUTOINCREMENT,
    EquipmentID INTEGER,
    EquipmentType TEXT,
    SerialNumber TEXT,
    MaintenanceDate DATE,
    TechnicianID INTEGER,
    TechnicianName TEXT,
    MaintenanceType TEXT,
    DurationHours REAL,
    PartsReplaced TEXT,
    PartsCost REAL,
    LaborCost REAL,
    TotalCost REAL,
    DowntimeHours REAL,
    NextDueDate DATE,
    MaintenanceStatus TEXT,
    Remarks TEXT,
    IsCritical INTEGER,
    WarrantyCovered INTEGER,
    ServiceProvider TEXT
);

INSERT INTO equipment_maintenance_logs (EquipmentID, EquipmentType, SerialNumber,
    MaintenanceDate, TechnicianID, TechnicianName, MaintenanceType,
    DurationHours, PartsReplaced, PartsCost, LaborCost, TotalCost,
    DowntimeHours, NextDueDate, MaintenanceStatus, Remarks,
    IsCritical, WarrantyCovered, ServiceProvider)
VALUES (101, 'Pump', 'PMP-3001', '2023-04-12', 2001, 'EthanB', 'Preventive',
    3.5, 'Seal,Impeller', 450.0, 200.0, 650.0, 2.0, '2023-10-12', 'Completed',
    'No issues', 1, 1, 'EnergyServicesCo');

INSERT INTO equipment_maintenance_logs (EquipmentID, EquipmentType, SerialNumber,
    MaintenanceDate, TechnicianID, TechnicianName, MaintenanceType,
    DurationHours, PartsReplaced, PartsCost, LaborCost, TotalCost,
    DowntimeHours, NextDueDate, MaintenanceStatus, Remarks,
    IsCritical, WarrantyCovered, ServiceProvider)
VALUES (202, 'Generator', 'GEN-4502', '2023-07-05', 2003, 'AnnaK', 'Corrective',
    5.0, 'FuelFilter', 180.0, 300.0, 480.0, 4.0, '2024-01-05', 'Completed',
    'Replaced filter due to contamination', 1, 0, 'PowerTech Ltd');

INSERT INTO equipment_maintenance_logs (EquipmentID, EquipmentType, SerialNumber,
    MaintenanceDate, TechnicianID, TechnicianName, MaintenanceType,
    DurationHours, PartsReplaced, PartsCost, LaborCost, TotalCost,
    DowntimeHours, NextDueDate, MaintenanceStatus, Remarks,
    IsCritical, WarrantyCovered, ServiceProvider)
VALUES (303, 'ConveyorBelt', 'CVB-777', '2023-09-20', 2005, 'LiWei', 'Inspection',
    2.0, '', 0.0, 120.0, 120.0, 0.5, '2024-03-20', 'Completed',
    'Belt tension optimal', 0, 1, 'MechanicsGroup');


-- Regional sales targets
CREATE TABLE regional_sales_targets (
    TargetID INTEGER PRIMARY KEY AUTOINCREMENT,
    Region TEXT,
    FiscalYear INTEGER,
    Quarter INTEGER,
    ProductLine TEXT,
    SalesTargetUnits INTEGER,
    SalesTargetRevenue REAL,
    GrowthTargetPercent REAL,
    PreviousYearUnits INTEGER,
    PreviousYearRevenue REAL,
    MarketShareTargetPercent REAL,
    LeadSource TEXT,
    AssignedManager TEXT,
    TargetApprovalDate DATE,
    Status TEXT,
    AchievedUnits INTEGER,
    AchievedRevenue REAL,
    VarianceUnits INTEGER,
    VarianceRevenue REAL,
    IncentiveBudget REAL,
    Currency TEXT,
    Notes TEXT
);

INSERT INTO regional_sales_targets (Region, FiscalYear, Quarter, ProductLine,
    SalesTargetUnits, SalesTargetRevenue, GrowthTargetPercent,
    PreviousYearUnits, PreviousYearRevenue, MarketShareTargetPercent,
    LeadSource, AssignedManager, TargetApprovalDate, Status,
    AchievedUnits, AchievedRevenue, VarianceUnits, VarianceRevenue,
    IncentiveBudget, Currency, Notes)
VALUES ('NorthAmerica', 2023, 2, 'FuelAdditives',
    120000, 3600000.0, 8.0, 110000, 3300000.0, 15.0,
    'Direct', 'MiaLee', '2023-01-10', 'InProgress',
    60000, 1800000.0, -60000, -1800000.0, 200000.0, 'USD', '');

INSERT INTO regional_sales_targets (Region, FiscalYear, Quarter, ProductLine,
    SalesTargetUnits, SalesTargetRevenue, GrowthTargetPercent,
    PreviousYearUnits, PreviousYearRevenue, MarketShareTargetPercent,
    LeadSource, AssignedManager, TargetApprovalDate, Status,
    AchievedUnits, AchievedRevenue, VarianceUnits, VarianceRevenue,
    IncentiveBudget, Currency, Notes)
VALUES ('Europe', 2023, 3, 'EngineOil',
    90000, 2700000.0, 6.5, 85000, 2550000.0, 12.0,
    'Partner', 'JohnDoe', '2023-04-15', 'InProgress',
    30000, 900000.0, -60000, -1800000.0, 150000.0, 'EUR', '');

INSERT INTO regional_sales_targets (Region, FiscalYear, Quarter, ProductLine,
    SalesTargetUnits, SalesTargetRevenue, GrowthTargetPercent,
    PreviousYearUnits, PreviousYearRevenue, MarketShareTargetPercent,
    LeadSource, AssignedManager, TargetApprovalDate, Status,
    AchievedUnits, AchievedRevenue, VarianceUnits, VarianceRevenue,
    IncentiveBudget, Currency, Notes)
VALUES ('Asia', 2024, 1, 'Lubricants',
    150000, 4500000.0, 10.0, 140000, 4200000.0, 18.0,
    'Online', 'SofiaRossi', '2023-12-01', 'Planned',
    0, 0.0, 150000, 4500000.0, 250000.0, 'CNY', '');