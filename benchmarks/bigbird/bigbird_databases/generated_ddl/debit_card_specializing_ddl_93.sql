-- Vehicle reservation system related to fleet usage (does not reference base tables)
CREATE TABLE vehicle_reservation_system
(
    ReservationID      INTEGER PRIMARY KEY,
    VehicleID          INTEGER,
    DriverID           INTEGER,
    StartDate          DATE,
    EndDate            DATE,
    StartLocation      TEXT,
    EndLocation        TEXT,
    Purpose            TEXT,
    MileageEstimate    INTEGER,
    ReservedBy         TEXT,
    Department         TEXT,
    ApprovalStatus     TEXT,
    CreatedTimestamp   TEXT,
    UpdatedTimestamp   TEXT,
    FuelType           TEXT,
    Capacity           INTEGER,
    Notes              TEXT,
    PriorityLevel      TEXT,
    EstimatedCost      REAL,
    Currency           TEXT
);

INSERT INTO vehicle_reservation_system (ReservationID, VehicleID, DriverID, StartDate, EndDate, StartLocation, EndLocation, Purpose, MileageEstimate, ReservedBy, Department, ApprovalStatus, CreatedTimestamp, UpdatedTimestamp, FuelType, Capacity, Notes, PriorityLevel, EstimatedCost, Currency)
VALUES (1, 101, 1001, '2024-06-01', '2024-06-05', 'HQ', 'BranchA', 'ClientVisit', 350, 'alice', 'Sales', 'Approved', '2024-05-20 08:00', '2024-05-21 09:15', 'Electric', 5, 'N/A', 'High', 1250.00, 'USD');

INSERT INTO vehicle_reservation_system (ReservationID, VehicleID, DriverID, StartDate, EndDate, StartLocation, EndLocation, Purpose, MileageEstimate, ReservedBy, Department, ApprovalStatus, CreatedTimestamp, UpdatedTimestamp, FuelType, Capacity, Notes, PriorityLevel, EstimatedCost, Currency)
VALUES (2, 102, 1002, '2024-07-10', '2024-07-12', 'Depot', 'SiteB', 'Maintenance', 120, 'bob', 'Engineering', 'Pending', '2024-06-30 11:30', '2024-07-01 12:00', 'Diesel', 4, 'Needs GPS', 'Medium', 300.00, 'USD');

INSERT INTO vehicle_reservation_system (ReservationID, VehicleID, DriverID, StartDate, EndDate, StartLocation, EndLocation, Purpose, MileageEstimate, ReservedBy, Department, ApprovalStatus, CreatedTimestamp, UpdatedTimestamp, FuelType, Capacity, Notes, PriorityLevel, EstimatedCost, Currency)
VALUES (3, 103, 1003, '2024-08-15', '2024-08-20', 'Warehouse', 'RetailStore', 'Delivery', 800, 'carol', 'Logistics', 'Approved', '2024-08-01 09:45', '2024-08-02 10:10', 'Hybrid', 6, 'Load secured', 'Low', 2000.00, 'USD');

-- Energy analytics for fuel stations (adjacent but not overlapping)
CREATE TABLE fuel_station_energy_analytics
(
    AnalyticsID            INTEGER PRIMARY KEY,
    StationID              INTEGER,
    AnalysisDate           DATE,
    TotalEnergyConsumed    REAL,
    RenewableContribution  REAL,
    GridVoltage            REAL,
    GridFrequency          REAL,
    PowerFactor            REAL,
    PeakDemand             REAL,
    OffPeakDemand          REAL,
    AverageLoad            REAL,
    TemperatureC           REAL,
    Humidity               REAL,
    WindSpeed              REAL,
    SolarGeneration        REAL,
    BatteryStorageLevel    REAL,
    CO2Emissions           REAL,
    EnergyCost             REAL,
    Currency               TEXT,
    AnalystName            TEXT,
    Remarks                TEXT
);

INSERT INTO fuel_station_energy_analytics (AnalyticsID, StationID, AnalysisDate, TotalEnergyConsumed, RenewableContribution, GridVoltage, GridFrequency, PowerFactor, PeakDemand, OffPeakDemand, AverageLoad, TemperatureC, Humidity, WindSpeed, SolarGeneration, BatteryStorageLevel, CO2Emissions, EnergyCost, Currency, AnalystName, Remarks)
VALUES (1, 201, '2024-05-01', 15000.5, 3500.2, 230.5, 60.0, 0.95, 820.0, 450.0, 635.0, 22.5, 55.0, 12.3, 500.0, 1200.0, 2500.0, 3200.0, 'USD', 'dave', 'Normal month');

INSERT INTO fuel_station_energy_analytics (AnalyticsID, StationID, AnalysisDate, TotalEnergyConsumed, RenewableContribution, GridVoltage, GridFrequency, PowerFactor, PeakDemand, OffPeakDemand, AverageLoad, TemperatureC, Humidity, WindSpeed, SolarGeneration, BatteryStorageLevel, CO2Emissions, EnergyCost, Currency, AnalystName, Remarks)
VALUES (2, 202, '2024-05-01', 13200.0, 3000.0, 228.0, 60.2, 0.96, 790.0, 420.0, 605.0, 24.0, 60.0, 10.0, 450.0, 1150.0, 2300.0, 2950.0, 'USD', 'erin', 'Higher solar output');

INSERT INTO fuel_station_energy_analytics (AnalyticsID, StationID, AnalysisDate, TotalEnergyConsumed, RenewableContribution, GridVoltage, GridFrequency, PowerFactor, PeakDemand, OffPeakDemand, AverageLoad, TemperatureC, Humidity, WindSpeed, SolarGeneration, BatteryStorageLevel, CO2Emissions, EnergyCost, Currency, AnalystName, Remarks)
VALUES (3, 203, '2024-05-01', 16000.8, 4000.5, 231.0, 59.9, 0.94, 860.0, 470.0, 665.0, 20.0, 50.0, 14.5, 600.0, 1300.0, 2800.0, 3500.0, 'USD', 'frank', 'Peak demand spike');

-- Customer engagement touchpoints (does not reference base CustomerID)
CREATE TABLE customer_engagement_touchpoints
(
    TouchpointID          INTEGER PRIMARY KEY,
    Channel               TEXT,
    ContactMethod         TEXT,
    InteractionDate       DATE,
    InteractionTime       TEXT,
    CustomerSegment       TEXT,
    CampaignID            INTEGER,
    RepresentativeID      INTEGER,
    Outcome               TEXT,
    SatisfactionScore     INTEGER,
    FollowUpRequired      TEXT,
    FollowUpDate          DATE,
    Notes                 TEXT,
    DurationMinutes       INTEGER,
    Location              TEXT,
    DeviceUsed            TEXT,
    Language              TEXT,
    SentimentScore        REAL,
    NetPromoterScore     INTEGER,
    ReferralSource        TEXT
);

INSERT INTO customer_engagement_touchpoints (TouchpointID, Channel, ContactMethod, InteractionDate, InteractionTime, CustomerSegment, CampaignID, RepresentativeID, Outcome, SatisfactionScore, FollowUpRequired, FollowUpDate, Notes, DurationMinutes, Location, DeviceUsed, Language, SentimentScore, NetPromoterScore, ReferralSource)
VALUES (1, 'Email', 'Direct', '2024-04-15', '14:30', 'Premium', 301, 5001, 'Converted', 9, 'No', NULL, 'Welcome email', 2, 'Online', 'Desktop', 'EN', 0.85, 70, 'SocialMedia');

INSERT INTO customer_engagement_touchpoints (TouchpointID, Channel, ContactMethod, InteractionDate, InteractionTime, CustomerSegment, CampaignID, RepresentativeID, Outcome, SatisfactionScore, FollowUpRequired, FollowUpDate, Notes, DurationMinutes, Location, DeviceUsed, Language, SentimentScore, NetPromoterScore, ReferralSource)
VALUES (2, 'Phone', 'Inbound', '2024-04-18', '10:15', 'Standard', 302, 5002, 'InfoProvided', 7, 'Yes', '2024-04-25', 'Asked about pricing', 15, 'CallCenter', 'Phone', 'EN', 0.65, 50, 'Referral');

INSERT INTO customer_engagement_touchpoints (TouchpointID, Channel, ContactMethod, InteractionDate, InteractionTime, CustomerSegment, CampaignID, RepresentativeID, Outcome, SatisfactionScore, FollowUpRequired, FollowUpDate, Notes, DurationMinutes, Location, DeviceUsed, Language, SentimentScore, NetPromoterScore, ReferralSource)
VALUES (3, 'Chat', 'Live', '2024-04-20', '16:45', 'New', 303, 5003, 'Escalated', 5, 'Yes', '2024-04-28', 'Issue with account login', 8, 'Website', 'Laptop', 'EN', 0.40, 30, 'AdCampaign');

-- Detailed maintenance logs for gas stations (different from previous list)
CREATE TABLE gas_station_maintenance_log_v2
(
    LogID                 INTEGER PRIMARY KEY,
    StationID             INTEGER,
    MaintenanceDate       DATE,
    TechnicianID          INTEGER,
    MaintenanceType       TEXT,
    DurationHours         REAL,
    PartsUsed             TEXT,
    Cost                  REAL,
    Currency              TEXT,
    DowntimeMinutes       INTEGER,
    ServiceProvider       TEXT,
    ChecklistCompleted    TEXT,
    IssueDescription      TEXT,
    Resolution            TEXT,
    FollowUpRequired      TEXT,
    FollowUpDate          DATE,
    SafetyChecked         TEXT,
    Comments              TEXT,
    ApprovedBy            TEXT,
    ApprovalDate          DATE
);

INSERT INTO gas_station_maintenance_log_v2 (LogID, StationID, MaintenanceDate, TechnicianID, MaintenanceType, DurationHours, PartsUsed, Cost, Currency, DowntimeMinutes, ServiceProvider, ChecklistCompleted, IssueDescription, Resolution, FollowUpRequired, FollowUpDate, SafetyChecked, Comments, ApprovedBy, ApprovalDate)
VALUES (1, 301, '2024-03-10', 7001, 'FuelPumpCalibration', 3.5, 'PumpSeal,Valve', 450.00, 'USD', 20, 'TechCo', 'Yes', 'Inaccurate dispense volume', 'Recalibrated pump', 'No', NULL, 'Yes', 'All good', 'manager1', '2024-03-11');

INSERT INTO gas_station_maintenance_log_v2 (LogID, StationID, MaintenanceDate, TechnicianID, MaintenanceType, DurationHours, PartsUsed, Cost, Currency, DowntimeMinutes, ServiceProvider, ChecklistCompleted, IssueDescription, Resolution, FollowUpRequired, FollowUpDate, SafetyChecked, Comments, ApprovedBy, ApprovalDate)
VALUES (2, 302, '2024-04-05', 7002, 'AirCompressorService', 2.0, 'Filter,Oil', 300.00, 'USD', 15, 'MaintainIt', 'Yes', 'Noise increase', 'Replaced filter', 'Yes', '2024-04-12', 'Yes', 'Scheduled follow up', 'manager2', '2024-04-06');

INSERT INTO gas_station_maintenance_log_v2 (LogID, StationID, MaintenanceDate, TechnicianID, MaintenanceType, DurationHours, PartsUsed, Cost, Currency, DowntimeMinutes, ServiceProvider, ChecklistCompleted, IssueDescription, Resolution, FollowUpRequired, FollowUpDate, SafetyChecked, Comments, ApprovedBy, ApprovalDate)
VALUES (3, 303, '2024-05-20', 7003, 'ElectricalInspection', 4.0, 'CircuitBreaker', 600.00, 'USD', 30, 'ElectroSafe', 'Yes', 'Frequent tripping', 'Replaced breaker', 'No', NULL, 'Yes', 'No further issues', 'manager3', '2024-05-21');

-- Supply chain metrics for products (does not reuse base ProductID)
CREATE TABLE product_supply_chain_metrics
(
    MetricID               INTEGER PRIMARY KEY,
    ProductID              INTEGER,
    SupplierID             INTEGER,
    LeadTimeDays           INTEGER,
    OrderQuantity          INTEGER,
    ReceivedQuantity       INTEGER,
    DeliveryDate           DATE,
    QualityScore           INTEGER,
    DefectRate             REAL,
    CostPerUnit            REAL,
    Currency               TEXT,
    WarehouseID            INTEGER,
    StockOnHand            INTEGER,
    ReorderLevel           INTEGER,
    SafetyStock            INTEGER,
    ForecastDemand         INTEGER,
    SeasonalityFactor      REAL,
    TransportationMode     TEXT,
    ShipmentContainerID    TEXT,
    ComplianceStatus       TEXT
);

INSERT INTO product_supply_chain_metrics (MetricID, ProductID, SupplierID, LeadTimeDays, OrderQuantity, ReceivedQuantity, DeliveryDate, QualityScore, DefectRate, CostPerUnit, Currency, WarehouseID, StockOnHand, ReorderLevel, SafetyStock, ForecastDemand, SeasonalityFactor, TransportationMode, ShipmentContainerID, ComplianceStatus)
VALUES (1, 401, 9001, 12, 5000, 4950, '2024-06-15', 92, 0.01, 1.25, 'USD', 110, 1200, 800, 300, 6000, 1.05, 'Truck', 'C001', 'Compliant');

INSERT INTO product_supply_chain_metrics (MetricID, ProductID, SupplierID, LeadTimeDays, OrderQuantity, ReceivedQuantity, DeliveryDate, QualityScore, DefectRate, CostPerUnit, Currency, WarehouseID, StockOnHand, ReorderLevel, SafetyStock, ForecastDemand, SeasonalityFactor, TransportationMode, ShipmentContainerID, ComplianceStatus)
VALUES (2, 402, 9002, 18, 3000, 2980, '2024-06-20', 88, 0.015, 2.10, 'USD', 111, 800, 600, 250, 4000, 0.95, 'Rail', 'C002', 'Pending');

INSERT INTO product_supply_chain_metrics (MetricID, ProductID, SupplierID, LeadTimeDays, OrderQuantity, ReceivedQuantity, DeliveryDate, QualityScore, DefectRate, CostPerUnit, Currency, WarehouseID, StockOnHand, ReorderLevel, SafetyStock, ForecastDemand, SeasonalityFactor, TransportationMode, ShipmentContainerID, ComplianceStatus)
VALUES (3, 403, 9003, 7, 8000, 7950, '2024-06-18', 95, 0.008, 0.90, 'USD', 112, 2000, 1500, 500, 9000, 1.10, 'Ship', 'C003', 'Compliant');

-- Regional market demographics (no overlap with base)
CREATE TABLE regional_market_demographics
(
    RegionID                INTEGER PRIMARY KEY,
    RegionName              TEXT,
    Population              INTEGER,
    MedianAge               REAL,
    AvgHouseholdIncome      REAL,
    PrimaryIndustry         TEXT,
    UrbanizationRate        REAL,
    EducationLevelIndex     REAL,
    EmploymentRate          REAL,
    PovertyRate             REAL,
    HomeOwnershipRate       REAL,
    TransportationModeShare TEXT,
    ClimateZone             TEXT,
    AvgTemperatureC         REAL,
    AvgRainfallMM           REAL,
    ConsumerSpendingPerCapita REAL,
    NumberOfBusinesses      INTEGER,
    BroadbandPenetration    REAL,
    HealthIndex             REAL,
    CrimeRate               REAL
);

INSERT INTO regional_market_demographics (RegionID, RegionName, Population, MedianAge, AvgHouseholdIncome, PrimaryIndustry, UrbanizationRate, EducationLevelIndex, EmploymentRate, PovertyRate, HomeOwnershipRate, TransportationModeShare, ClimateZone, AvgTemperatureC, AvgRainfallMM, ConsumerSpendingPerCapita, NumberOfBusinesses, BroadbandPenetration, HealthIndex, CrimeRate)
VALUES (1, 'Northland', 1250000, 38.5, 55000.0, 'Manufacturing', 0.78, 0.72, 0.94, 0.11, 0.68, 'Car,PublicTransit', 'Temperate', 15.2, 850.0, 23000.0, 42000, 0.85, 78.5, 4.2);

INSERT INTO regional_market_demographics (RegionID, RegionName, Population, MedianAge, AvgHouseholdIncome, PrimaryIndustry, UrbanizationRate, EducationLevelIndex, EmploymentRate, PovertyRate, HomeOwnershipRate, TransportationModeShare, ClimateZone, AvgTemperatureC, AvgRainfallMM, ConsumerSpendingPerCapita, NumberOfBusinesses, BroadbandPenetration, HealthIndex, CrimeRate)
VALUES (2, 'Southridge', 820000, 41.2, 47000.0, 'Agriculture', 0.62, 0.65, 0.89, 0.15, 0.73, 'Car,Bike', 'Mediterranean', 18.7, 600.0, 19000.0, 26000, 0.78, 71.3, 5.1);

INSERT INTO regional_market_demographics (RegionID, RegionName, Population, MedianAge, AvgHouseholdIncome, PrimaryIndustry, UrbanizationRate, EducationLevelIndex, EmploymentRate, PovertyRate, HomeOwnershipRate, TransportationModeShare, ClimateZone, AvgTemperatureC, AvgRainfallMM, ConsumerSpendingPerCapita, NumberOfBusinesses, BroadbandPenetration, HealthIndex, CrimeRate)
VALUES (3, 'Eastview', 950000, 36.8, 62000.0, 'Technology', 0.85, 0.80, 0.96, 0.08, 0.71, 'PublicTransit,Walk', 'Continental', 12.5, 720.0, 25000.0, 53000, 0.92, 82.1, 3.7);

-- Employee performance reviews (extended version)
CREATE TABLE employee_performance_reviews_extended
(
    ReviewID                INTEGER PRIMARY KEY,
    EmployeeID              INTEGER,
    ReviewPeriodStart       DATE,
    ReviewPeriodEnd         DATE,
    ReviewerID              INTEGER,
    OverallRating           INTEGER,
    TechnicalSkillScore     INTEGER,
    CommunicationScore      INTEGER,
    LeadershipScore         INTEGER,
    InnovationScore         INTEGER,
    AttendanceScore         INTEGER,
    GoalAchievementScore    INTEGER,
    TrainingHours           INTEGER,
    CertificationCount      INTEGER,
    PromotionEligibility    TEXT,
    SalaryAdjustment        REAL,
    Currency                TEXT,
    Comments                TEXT,
    NextReviewDate          DATE,
    ReviewStatus            TEXT
);

INSERT INTO employee_performance_reviews_extended (ReviewID, EmployeeID, ReviewPeriodStart, ReviewPeriodEnd, ReviewerID, OverallRating, TechnicalSkillScore, CommunicationScore, LeadershipScore, InnovationScore, AttendanceScore, GoalAchievementScore, TrainingHours, CertificationCount, PromotionEligibility, SalaryAdjustment, Currency, Comments, NextReviewDate, ReviewStatus)
VALUES (1, 10001, '2023-01-01', '2023-12-31', 2001, 4, 5, 4, 3, 4, 5, 5, 40, 3, 'Yes', 5000.00, 'USD', 'Strong performer', '2024-01-01', 'Completed');

INSERT INTO employee_performance_reviews_extended (ReviewID, EmployeeID, ReviewPeriodStart, ReviewPeriodEnd, ReviewerID, OverallRating, TechnicalSkillScore, CommunicationScore, LeadershipScore, InnovationScore, AttendanceScore, GoalAchievementScore, TrainingHours, CertificationCount, PromotionEligibility, SalaryAdjustment, Currency, Comments, NextReviewDate, ReviewStatus)
VALUES (2, 10002, '2023-01-01', '2023-12-31', 2002, 3, 3, 4, 2, 3, 4, 3, 20, 1, 'No', 0.00, 'USD', 'Needs improvement in leadership', '2024-01-01', 'Completed');

INSERT INTO employee_performance_reviews_extended (ReviewID, EmployeeID, ReviewPeriodStart, ReviewPeriodEnd, ReviewerID, OverallRating, TechnicalSkillScore, CommunicationScore, LeadershipScore, InnovationScore, AttendanceScore, GoalAchievementScore, TrainingHours, CertificationCount, PromotionEligibility, SalaryAdjustment, Currency, Comments, NextReviewDate, ReviewStatus)
VALUES (3, 10003, '2023-01-01', '2023-12-31', 2003, 5, 5, 5, 5, 5, 5, 5, 60, 5, 'Yes', 8000.00, 'USD', 'Exceptional leadership', '2024-01-01', 'Completed');

-- Environmental incident response teams
CREATE TABLE environmental_incident_response_teams
(
    TeamID                  INTEGER PRIMARY KEY,
    IncidentID              INTEGER,
    ActivationDate          DATE,
    DeactivationDate        DATE,
    TeamLeader              TEXT,
    Members                 TEXT,
    Region                  TEXT,
    ResourcesAllocated      TEXT,
    EstimatedImpact         REAL,
    ContainmentStatus       TEXT,
    MitigationActions       TEXT,
    FollowUpActions         TEXT,
    ReportingOfficer        TEXT,
    ReportDate              DATE,
    FundingAmount           REAL,
    Currency                TEXT,
    PartnerOrganizations    TEXT,
    LessonsLearned          TEXT,
    Status                  TEXT,
    Remarks                 TEXT
);

INSERT INTO environmental_incident_response_teams (TeamID, IncidentID, ActivationDate, DeactivationDate, TeamLeader, Members, Region, ResourcesAllocated, EstimatedImpact, ContainmentStatus, MitigationActions, FollowUpActions, ReportingOfficer, ReportDate, FundingAmount, Currency, PartnerOrganizations, LessonsLearned, Status, Remarks)
VALUES (1, 501, '2024-02-10', '2024-02-15', 'gina', 'alice,bob,carol', 'Northland', 'Boats,Skimmers', 1200.0, 'Contained', 'Deploy barriers, Skim oil', 'Monitor water quality', 'dave', '2024-02-16', 150000.00, 'USD', 'EnviroAid,CoastGuard', 'Need faster detection', 'Closed', 'Successful containment');

INSERT INTO environmental_incident_response_teams (TeamID, IncidentID, ActivationDate, DeactivationDate, TeamLeader, Members, Region, ResourcesAllocated, EstimatedImpact, ContainmentStatus, MitigationActions, FollowUpActions, ReportingOfficer, ReportDate, FundingAmount, Currency, PartnerOrganizations, LessonsLearned, Status, Remarks)
VALUES (2, 502, '2024-03-05', '2024-03-08', 'henry', 'diana,edward,frank', 'Southridge', 'AirFilters,Water Pumps', 300.0, 'Ongoing', 'Install filters, Reduce runoff', 'Schedule site inspection', 'erin', '2024-03-09', 80000.00, 'USD', 'CleanWaterOrg', 'Better community alerts needed', 'Open', 'Monitoring continues');

INSERT INTO environmental_incident_response_teams (TeamID, IncidentID, ActivationDate, DeactivationDate, TeamLeader, Members, Region, ResourcesAllocated, EstimatedImpact, ContainmentStatus, MitigationActions, FollowUpActions, ReportingOfficer, ReportDate, FundingAmount, Currency, PartnerOrganizations, LessonsLearned, Status, Remarks)
VALUES (3, 503, '2024-04-12', '2024-04-14', 'iris', 'george,haley,ian', 'Eastview', 'Fire Suppression Unit', 500.0, 'Contained', 'Extinguish fire, Soil remediation', 'Post‑incident soil testing', 'frank', '2024-04-15', 120000.00, 'USD', 'FireDept,EnviroWatch', 'Invest in early warning sensors', 'Closed', 'No residual damage');

-- Logistics drone fleet status
CREATE TABLE logistics_drone_fleet_status
(
    DroneID                INTEGER PRIMARY KEY,
    Model                  TEXT,
    SerialNumber           TEXT,
    DeploymentDate         DATE,
    LastMaintenanceDate    DATE,
    FlightHours            REAL,
    BatteryCycles          INTEGER,
    CurrentStatus          TEXT,
    LocationCoordinates    TEXT,
    PayloadCapacityKg      REAL,
    AvgSpeedKmH            REAL,
    MaxRangeKm             REAL,
    FirmwareVersion        TEXT,
    OperatorID             INTEGER,
    MissionCount           INTEGER,
    SuccessfulMissions     INTEGER,
    FailedMissions         INTEGER,
    MaintenanceDue         TEXT,
    NextInspectionDate     DATE,
    Notes                  TEXT
);

INSERT INTO logistics_drone_fleet_status (DroneID, Model, SerialNumber, DeploymentDate, LastMaintenanceDate, FlightHours, BatteryCycles, CurrentStatus, LocationCoordinates, PayloadCapacityKg, AvgSpeedKmH, MaxRangeKm, FirmwareVersion, OperatorID, MissionCount, SuccessfulMissions, FailedMissions, MaintenanceDue, NextInspectionDate, Notes)
VALUES (1, 'AeroX1', 'AX1-0001', '2023-01-15', '2024-03-01', 150.5, 45, 'Active', '34.05,-118.25', 2.5, 60.0, 120.0, 'v1.3.2', 3001, 200, 195, 5, 'No', '2024-09-01', 'Routine operation');

INSERT INTO logistics_drone_fleet_status (DroneID, Model, SerialNumber, DeploymentDate, LastMaintenanceDate, FlightHours, BatteryCycles, CurrentStatus, LocationCoordinates, PayloadCapacityKg, AvgSpeedKmH, MaxRangeKm, FirmwareVersion, OperatorID, MissionCount, SuccessfulMissions, FailedMissions, MaintenanceDue, NextInspectionDate, Notes)
VALUES (2, 'SkyRunner', 'SR-0420', '2023-06-20', '2024-02-20', 98.0, 30, 'Active', '40.71,-74.00', 3.0, 55.0, 110.0, 'v2.0.1', 3002, 120, 118, 2, 'Yes', '2024-08-15', 'Battery replacement due');

INSERT INTO logistics_drone_fleet_status (DroneID, Model, SerialNumber, DeploymentDate, LastMaintenanceDate, FlightHours, BatteryCycles, CurrentStatus, LocationCoordinates, PayloadCapacityKg, AvgSpeedKmH, MaxRangeKm, FirmwareVersion, OperatorID, MissionCount, SuccessfulMissions, FailedMissions, MaintenanceDue, NextInspectionDate, Notes)
VALUES (3, 'ParcelBee', 'PB-7777', '2024-01-10', '2024-04-05', 45.2, 12, 'Grounded', '37.77,-122.42', 1.5, 45.0, 90.0, 'v1.0.0', 3003, 30, 25, 5, 'Yes', '2024-10-20', 'Investigating sensor fault');

-- Digital ad campaign assets
CREATE TABLE digital_ad_campaign_assets
(
    AssetID                INTEGER PRIMARY KEY,
    CampaignID             INTEGER,
    AssetType              TEXT,
    FileName               TEXT,
    FileSizeKB             INTEGER,
    Dimensions             TEXT,
    DurationSeconds        INTEGER,
    UploadDate             DATE,
    UploadedBy             TEXT,
    Status                 TEXT,
    TargetAudience         TEXT,
    Platform               TEXT,
    ClickThroughRate       REAL,
    ConversionRate         REAL,
    CostPerImpression      REAL,
    Currency               TEXT,
    LandingPageURL         TEXT,
    CreativeTag            TEXT,
    ApprovalStatus         TEXT,
    Comments               TEXT
);

INSERT INTO digital_ad_campaign_assets (AssetID, CampaignID, AssetType, FileName, FileSizeKB, Dimensions, DurationSeconds, UploadDate, UploadedBy, Status, TargetAudience, Platform, ClickThroughRate, ConversionRate, CostPerImpression, Currency, LandingPageURL, CreativeTag, ApprovalStatus, Comments)
VALUES (1, 801, 'Video', 'summer_sale.mp4', 8500, '1920x1080', 30, '2024-05-01', 'mike', 'Active', 'Adults', 'YouTube', 0.045, 0.008, 0.12, 'USD', 'https://example.com/summer', 'Tag001', 'Approved', 'Seasonal promo');

INSERT INTO digital_ad_campaign_assets (AssetID, CampaignID, AssetType, FileName, FileSizeKB, Dimensions, DurationSeconds, UploadDate, UploadedBy, Status, TargetAudience, Platform, ClickThroughRate, ConversionRate, CostPerImpression, Currency, LandingPageURL, CreativeTag, ApprovalStatus, Comments)
VALUES (2, 802, 'Image', 'banner_fall.jpg', 2500, '1200x628', NULL, '2024-05-10', 'sara', 'Active', 'YoungAdults', 'Facebook', 0.032, 0.005, 0.07, 'USD', 'https://example.com/fall', 'Tag002', 'Pending', 'Awaiting legal review');

INSERT INTO digital_ad_campaign_assets (AssetID, CampaignID, AssetType, FileName, FileSizeKB, Dimensions, DurationSeconds, UploadDate, UploadedBy, Status, TargetAudience, Platform, ClickThroughRate, ConversionRate, CostPerImpression, Currency, LandingPageURL, CreativeTag, ApprovalStatus, Comments)
VALUES (3, 803, 'HTML5', 'interactive_ad.html', 4200, '300x250', NULL, '2024-05-20', 'leo', 'Draft', 'All', 'GoogleAds', 0.028, 0.004, 0.06, 'USD', 'https://example.com/interactive', 'Tag003', 'Rejected', 'Creative not compliant');