-- IoT sensor readings extended table
CREATE TABLE iot_sensor_readings_ext (
    ReadingId INTEGER PRIMARY KEY,
    DeviceId INTEGER,
    SensorTypeId INTEGER,
    MeasuredValue REAL,
    UnitCode INTEGER,
    ReadingTimestamp BIGINT,
    Latitude REAL,
    Longitude REAL,
    FirmwareVersion INTEGER,
    BatteryLevel INTEGER,
    SignalStrength INTEGER,
    DataQualityScore INTEGER,
    CalibrationDate BIGINT,
    ManufacturerId INTEGER,
    LocationId INTEGER,
    StatusFlag INTEGER,
    AlertThreshold REAL,
    AlertTriggered INTEGER,
    CreatedByUserId INTEGER,
    UpdatedByUserId INTEGER,
    CreatedAt BIGINT,
    UpdatedAt BIGINT
);
INSERT INTO iot_sensor_readings_ext (ReadingId, DeviceId, SensorTypeId, MeasuredValue, UnitCode, ReadingTimestamp, Latitude, Longitude, FirmwareVersion, BatteryLevel, SignalStrength, DataQualityScore, CalibrationDate, ManufacturerId, LocationId, StatusFlag, AlertThreshold, AlertTriggered, CreatedByUserId, UpdatedByUserId, CreatedAt, UpdatedAt) VALUES (1, 101, 5, 23.5, 1, 1700000000, 37.7749, -122.4194, 3, 85, -70, 95, 1690000000, 10, 200, 0, 30.0, 0, 1001, 1002, 1700000000, 1700000100);
INSERT INTO iot_sensor_readings_ext (ReadingId, DeviceId, SensorTypeId, MeasuredValue, UnitCode, ReadingTimestamp, Latitude, Longitude, FirmwareVersion, BatteryLevel, SignalStrength, DataQualityScore, CalibrationDate, ManufacturerId, LocationId, StatusFlag, AlertThreshold, AlertTriggered, CreatedByUserId, UpdatedByUserId, CreatedAt, UpdatedAt) VALUES (2, 102, 3, 48.2, 2, 1700000200, 40.7128, -74.0060, 4, 78, -65, 88, 1690000200, 12, 201, 1, 45.0, 1, 1003, 1004, 1700000200, 1700000300);
INSERT INTO iot_sensor_readings_ext (ReadingId, DeviceId, SensorTypeId, MeasuredValue, UnitCode, ReadingTimestamp, Latitude, Longitude, FirmwareVersion, BatteryLevel, SignalStrength, DataQualityScore, CalibrationDate, ManufacturerId, LocationId, StatusFlag, AlertThreshold, AlertTriggered, CreatedByUserId, UpdatedByUserId, CreatedAt, UpdatedAt) VALUES (3, 103, 7, 12.9, 1, 1700000400, 34.0522, -118.2437, 5, 92, -80, 97, 1690000400, 15, 202, 0, 20.0, 0, 1005, 1006, 1700000400, 1700000500);

-- Employee benefit claims table
CREATE TABLE employee_benefit_claims (
    ClaimId INTEGER PRIMARY KEY,
    EmployeeId INTEGER,
    BenefitTypeId INTEGER,
    ClaimAmount REAL,
    ClaimDate BIGINT,
    ApprovalStatus INTEGER,
    ApprovedByUserId INTEGER,
    ApprovalDate BIGINT,
    ReimbursementMethodId INTEGER,
    TaxableAmount REAL,
    NonTaxableAmount REAL,
    DescriptionCode INTEGER,
    DocumentId INTEGER,
    CreatedAt BIGINT,
    UpdatedAt BIGINT,
    ProcessedFlag INTEGER,
    PaymentReference INTEGER,
    CurrencyCode INTEGER,
    ExchangeRate REAL,
    CreatedByUserId INTEGER,
    UpdatedByUserId INTEGER,
    Notes TEXT
);
INSERT INTO employee_benefit_claims (ClaimId, EmployeeId, BenefitTypeId, ClaimAmount, ClaimDate, ApprovalStatus, ApprovedByUserId, ApprovalDate, ReimbursementMethodId, TaxableAmount, NonTaxableAmount, DescriptionCode, DocumentId, CreatedAt, UpdatedAt, ProcessedFlag, PaymentReference, CurrencyCode, ExchangeRate, CreatedByUserId, UpdatedByUserId, Notes) VALUES (1, 5001, 2, 250.75, 1699000000, 1, 2001, 1699000500, 3, 200.00, 50.75, 10, 30001, 1699000000, 1699000600, 1, 40001, 1, 1.0, 2002, 2003, NULL);
INSERT INTO employee_benefit_claims (ClaimId, EmployeeId, BenefitTypeId, ClaimAmount, ClaimDate, ApprovalStatus, ApprovedByUserId, ApprovalDate, ReimbursementMethodId, TaxableAmount, NonTaxableAmount, DescriptionCode, DocumentId, CreatedAt, UpdatedAt, ProcessedFlag, PaymentReference, CurrencyCode, ExchangeRate, CreatedByUserId, UpdatedByUserId, Notes) VALUES (2, 5002, 4, 1200.00, 1699100000, 0, NULL, NULL, 2, 1200.00, 0.00, 12, 30002, 1699100000, 1699100100, 0, NULL, 2, 0.85, 2004, 2005, NULL);
INSERT INTO employee_benefit_claims (ClaimId, EmployeeId, BenefitTypeId, ClaimAmount, ClaimDate, ApprovalStatus, ApprovedByUserId, ApprovalDate, ReimbursementMethodId, TaxableAmount, NonTaxableAmount, DescriptionCode, DocumentId, CreatedAt, UpdatedAt, ProcessedFlag, PaymentReference, CurrencyCode, ExchangeRate, CreatedByUserId, UpdatedByUserId, Notes) VALUES (3, 5003, 1, 75.50, 1699200000, 1, 2006, 1699200300, 1, 75.50, 0.00, 11, 30003, 1699200000, 1699200400, 1, 40003, 1, 1.0, 2007, 2008, NULL);

-- Digital asset usage statistics table
CREATE TABLE digital_asset_usage_stats (
    AssetId INTEGER,
    UserId INTEGER,
    SessionId INTEGER,
    StartTimestamp BIGINT,
    EndTimestamp BIGINT,
    BytesTransferred BIGINT,
    AccessCount INTEGER,
    DeviceId INTEGER,
    PlatformId INTEGER,
    RegionId INTEGER,
    CostCenterId INTEGER,
    LicenseTypeId INTEGER,
    IsPremium INTEGER,
    QualityScore INTEGER,
    DownloadSpeed REAL,
    UploadSpeed REAL,
    ErrorCount INTEGER,
    RetryCount INTEGER,
    LastAccessed BIGINT,
    CreatedAt BIGINT,
    UpdatedAt BIGINT,
    SourceId INTEGER,
    DestinationId INTEGER,
    PRIMARY KEY (AssetId, SessionId)
);
INSERT INTO digital_asset_usage_stats (AssetId, UserId, SessionId, StartTimestamp, EndTimestamp, BytesTransferred, AccessCount, DeviceId, PlatformId, RegionId, CostCenterId, LicenseTypeId, IsPremium, QualityScore, DownloadSpeed, UploadSpeed, ErrorCount, RetryCount, LastAccessed, CreatedAt, UpdatedAt, SourceId, DestinationId) VALUES (10001, 601, 20001, 1700000000, 1700000600, 5000000, 3, 301, 1, 10, 5, 2, 1, 92, 15.5, 3.2, 0, 0, 1700000600, 1700000000, 1700000600, 4001, 5001);
INSERT INTO digital_asset_usage_stats (AssetId, UserId, SessionId, StartTimestamp, EndTimestamp, BytesTransferred, AccessCount, DeviceId, PlatformId, RegionId, CostCenterId, LicenseTypeId, IsPremium, QualityScore, DownloadSpeed, UploadSpeed, ErrorCount, RetryCount, LastAccessed, CreatedAt, UpdatedAt, SourceId, DestinationId) VALUES (10002, 602, 20002, 1700001200, 1700001800, 8000000, 5, 302, 2, 11, 6, 3, 0, 85, 12.0, 2.5, 1, 2, 1700001800, 1700001200, 1700001800, 4002, 5002);
INSERT INTO digital_asset_usage_stats (AssetId, UserId, SessionId, StartTimestamp, EndTimestamp, BytesTransferred, AccessCount, DeviceId, PlatformId, RegionId, CostCenterId, LicenseTypeId, IsPremium, QualityScore, DownloadSpeed, UploadSpeed, ErrorCount, RetryCount, LastAccessed, CreatedAt, UpdatedAt, SourceId, DestinationId) VALUES (10003, 603, 20003, 1700002400, 1700003000, 3000000, 2, 303, 1, 12, 7, 1, 1, 78, 9.8, 1.8, 0, 1, 1700003000, 1700002400, 1700003000, 4003, 5003);

-- Research grant awards table
CREATE TABLE research_grant_awards (
    GrantAwardId INTEGER PRIMARY KEY,
    GrantId INTEGER,
    ResearcherId INTEGER,
    InstitutionId INTEGER,
    AwardAmount REAL,
    AwardDate BIGINT,
    CurrencyCode INTEGER,
    DurationMonths INTEGER,
    StatusId INTEGER,
    FundingAgencyId INTEGER,
    ProgramCode INTEGER,
    ReviewScore REAL,
    ReviewCommitteeId INTEGER,
    PublicationFlag INTEGER,
    PatentFlag INTEGER,
    CreatedAt BIGINT,
    UpdatedAt BIGINT,
    ApprovedByUserId INTEGER,
    DisbursementCount INTEGER,
    DisbursementAmount REAL,
    NextReviewDate BIGINT,
    IsRenewable INTEGER,
    Notes TEXT
);
INSERT INTO research_grant_awards (GrantAwardId, GrantId, ResearcherId, InstitutionId, AwardAmount, AwardDate, CurrencyCode, DurationMonths, StatusId, FundingAgencyId, ProgramCode, ReviewScore, ReviewCommitteeId, PublicationFlag, PatentFlag, CreatedAt, UpdatedAt, ApprovedByUserId, DisbursementCount, DisbursementAmount, NextReviewDate, IsRenewable, Notes) VALUES (1, 9001, 1101, 2101, 150000.00, 1698000000, 1, 36, 2, 3101, 101, 89.5, 4101, 1, 0, 1698000000, 1698003600, 5001, 3, 50000.00, 1700600000, 1, NULL);
INSERT INTO research_grant_awards (GrantAwardId, GrantId, ResearcherId, InstitutionId, AwardAmount, AwardDate, CurrencyCode, DurationMonths, StatusId, FundingAgencyId, ProgramCode, ReviewScore, ReviewCommitteeId, PublicationFlag, PatentFlag, CreatedAt, UpdatedAt, ApprovedByUserId, DisbursementCount, DisbursementAmount, NextReviewDate, IsRenewable, Notes) VALUES (2, 9002, 1102, 2102, 250000.00, 1698100000, 2, 48, 1, 3102, 102, 92.0, 4102, 0, 1, 1698100000, 1698103600, 5002, 4, 60000.00, 1701200000, 0, NULL);
INSERT INTO research_grant_awards (GrantAwardId, GrantId, ResearcherId, InstitutionId, AwardAmount, AwardDate, CurrencyCode, DurationMonths, StatusId, FundingAgencyId, ProgramCode, ReviewScore, ReviewCommitteeId, PublicationFlag, PatentFlag, CreatedAt, UpdatedAt, ApprovedByUserId, DisbursementCount, DisbursementAmount, NextReviewDate, IsRenewable, Notes) VALUES (3, 9003, 1103, 2103, 100000.00, 1698200000, 1, 24, 3, 3103, 103, 85.0, 4103, 1, 1, 1698200000, 1698203600, 5003, 2, 40000.00, 1701800000, 1, NULL);

-- Customer churn predictions table
CREATE TABLE customer_churn_predictions (
    PredictionId INTEGER PRIMARY KEY,
    CustomerId INTEGER,
    PredictionDate BIGINT,
    ChurnProbability REAL,
    ModelVersion INTEGER,
    FeatureSetId INTEGER,
    DataWindowDays INTEGER,
    PredictedReasonCode INTEGER,
    ConfidenceScore REAL,
    CreatedAt BIGINT,
    UpdatedAt BIGINT,
    AnalystId INTEGER,
    ReviewFlag INTEGER,
    ActionPlanId INTEGER,
    NextContactDate BIGINT,
    CurrentSubscriptionId INTEGER,
    RecentActivityScore REAL,
    DaysSinceLastLogin INTEGER,
    AvgMonthlySpend REAL,
    DiscountOffered REAL,
    RetentionOfferId INTEGER,
    IsHighRisk INTEGER,
    Comments TEXT
);
INSERT INTO customer_churn_predictions (PredictionId, CustomerId, PredictionDate, ChurnProbability, ModelVersion, FeatureSetId, DataWindowDays, PredictedReasonCode, ConfidenceScore, CreatedAt, UpdatedAt, AnalystId, ReviewFlag, ActionPlanId, NextContactDate, CurrentSubscriptionId, RecentActivityScore, DaysSinceLastLogin, AvgMonthlySpend, DiscountOffered, RetentionOfferId, IsHighRisk, Comments) VALUES (1, 701, 1700000000, 0.78, 3, 1201, 30, 5, 0.90, 1700000000, 1700000600, 8001, 0, 9001, 1700600000, 2001, 45.2, 15, 120.5, 10.0, 3001, 1, NULL);
INSERT INTO customer_churn_predictions (PredictionId, CustomerId, PredictionDate, ChurnProbability, ModelVersion, FeatureSetId, DataWindowDays, PredictedReasonCode, ConfidenceScore, CreatedAt, UpdatedAt, AnalystId, ReviewFlag, ActionPlanId, NextContactDate, CurrentSubscriptionId, RecentActivityScore, DaysSinceLastLogin, AvgMonthlySpend, DiscountOffered, RetentionOfferId, IsHighRisk, Comments) VALUES (2, 702, 1700100000, 0.35, 3, 1202, 30, 2, 0.85, 1700100000, 1700100600, 8002, 1, 9002, 1700700000, 2002, 78.4, 5, 200.0, 5.0, 3002, 0, NULL);
INSERT INTO customer_churn_predictions (PredictionId, CustomerId, PredictionDate, ChurnProbability, ModelVersion, FeatureSetId, DataWindowDays, PredictedReasonCode, ConfidenceScore, CreatedAt, UpdatedAt, AnalystId, ReviewFlag, ActionPlanId, NextContactDate, CurrentSubscriptionId, RecentActivityScore, DaysSinceLastLogin, AvgMonthlySpend, DiscountOffered, RetentionOfferId, IsHighRisk, Comments) VALUES (3, 703, 1700200000, 0.92, 3, 1203, 30, 8, 0.95, 1700200000, 1700200600, 8003, 0, 9003, 1700800000, 2003, 30.0, 25, 80.0, 15.0, 3003, 1, NULL);

-- Server inventory audit table
CREATE TABLE server_inventory_audit (
    AuditId INTEGER PRIMARY KEY,
    ServerId INTEGER,
    AuditTimestamp BIGINT,
    AuditorUserId INTEGER,
    CpuUtilization REAL,
    MemoryUtilization REAL,
    DiskUtilization REAL,
    NetworkIn BIGINT,
    NetworkOut BIGINT,
    TemperatureC REAL,
    PowerState INTEGER,
    FirmwareVersion INTEGER,
    RackLocationId INTEGER,
    UptimeSeconds BIGINT,
    IncidentCount INTEGER,
    PatchLevel INTEGER,
    SecurityScore INTEGER,
    BackupStatus INTEGER,
    VirtualizationFlag INTEGER,
    OSVersionId INTEGER,
    CreatedAt BIGINT,
    UpdatedAt BIGINT,
    Notes TEXT
);
INSERT INTO server_inventory_audit (AuditId, ServerId, AuditTimestamp, AuditorUserId, CpuUtilization, MemoryUtilization, DiskUtilization, NetworkIn, NetworkOut, TemperatureC, PowerState, FirmwareVersion, RackLocationId, UptimeSeconds, IncidentCount, PatchLevel, SecurityScore, BackupStatus, VirtualizationFlag, OSVersionId, CreatedAt, UpdatedAt, Notes) VALUES (1, 801, 1700000000, 9001, 65.5, 70.2, 55.1, 1200000, 950000, 38.5, 1, 12, 301, 864000, 0, 5, 88, 1, 1, 4001, 1700000000, 1700000600, NULL);
INSERT INTO server_inventory_audit (AuditId, ServerId, AuditTimestamp, AuditorUserId, CpuUtilization, MemoryUtilization, DiskUtilization, NetworkIn, NetworkOut, TemperatureC, PowerState, FirmwareVersion, RackLocationId, UptimeSeconds, IncidentCount, PatchLevel, SecurityScore, BackupStatus, VirtualizationFlag, OSVersionId, CreatedAt, UpdatedAt, Notes) VALUES (2, 802, 1700100000, 9002, 78.0, 80.5, 60.0, 1500000, 1100000, 42.0, 1, 13, 302, 1728000, 1, 6, 82, 0, 0, 4002, 1700100000, 1700100600, NULL);
INSERT INTO server_inventory_audit (AuditId, ServerId, AuditTimestamp, AuditorUserId, CpuUtilization, MemoryUtilization, DiskUtilization, NetworkIn, NetworkOut, TemperatureC, PowerState, FirmwareVersion, RackLocationId, UptimeSeconds, IncidentCount, PatchLevel, SecurityScore, BackupStatus, VirtualizationFlag, OSVersionId, CreatedAt, UpdatedAt, Notes) VALUES (3, 803, 1700200000, 9003, 55.3, 60.0, 48.7, 900000, 800000, 36.8, 0, 11, 303, 432000, 0, 4, 90, 1, 1, 4003, 1700200000, 1700200600, NULL);

-- Clinical trial results table
CREATE TABLE clinical_trial_results (
    ResultId INTEGER PRIMARY KEY,
    TrialId INTEGER,
    ParticipantId INTEGER,
    VisitNumber INTEGER,
    MeasurementCode INTEGER,
    MeasurementValue REAL,
    MeasurementUnits INTEGER,
    ResultTimestamp BIGINT,
    ClinicianId INTEGER,
    SiteId INTEGER,
    AdverseEventFlag INTEGER,
    SeverityScore INTEGER,
    TreatmentArmId INTEGER,
    DosageMg REAL,
    OutcomeCode INTEGER,
    FollowUpRequired INTEGER,
    CreatedAt BIGINT,
    UpdatedAt BIGINT,
    DataEntryUserId INTEGER,
    ValidationStatus INTEGER,
    Comments TEXT,
    SourceSystemId INTEGER
);
INSERT INTO clinical_trial_results (ResultId, TrialId, ParticipantId, VisitNumber, MeasurementCode, MeasurementValue, MeasurementUnits, ResultTimestamp, ClinicianId, SiteId, AdverseEventFlag, SeverityScore, TreatmentArmId, DosageMg, OutcomeCode, FollowUpRequired, CreatedAt, UpdatedAt, DataEntryUserId, ValidationStatus, Comments, SourceSystemId) VALUES (1, 1001, 2001, 1, 301, 5.6, 1, 1699000000, 4001, 5001, 0, 0, 1, 50.0, 10, 0, 1699000000, 1699000600, 6001, 1, NULL, 7001);
INSERT INTO clinical_trial_results (ResultId, TrialId, ParticipantId, VisitNumber, MeasurementCode, MeasurementValue, MeasurementUnits, ResultTimestamp, ClinicianId, SiteId, AdverseEventFlag, SeverityScore, TreatmentArmId, DosageMg, OutcomeCode, FollowUpRequired, CreatedAt, UpdatedAt, DataEntryUserId, ValidationStatus, Comments, SourceSystemId) VALUES (2, 1002, 2002, 2, 302, 120.0, 2, 1699100000, 4002, 5002, 1, 3, 2, 75.0, 20, 1, 1699100000, 1699100600, 6002, 0, NULL, 7002);
INSERT INTO clinical_trial_results (ResultId, TrialId, ParticipantId, VisitNumber, MeasurementCode, MeasurementValue, MeasurementUnits, ResultTimestamp, ClinicianId, SiteId, AdverseEventFlag, SeverityScore, TreatmentArmId, DosageMg, OutcomeCode, FollowUpRequired, CreatedAt, UpdatedAt, DataEntryUserId, ValidationStatus, Comments, SourceSystemId) VALUES (3, 1003, 2003, 3, 303, 0.0, 3, 1699200000, 4003, 5003, 0, 0, 1, 100.0, 30, 0, 1699200000, 1699200600, 6003, 1, NULL, 7003);

-- Environmental incident logs table
CREATE TABLE environmental_incident_logs (
    IncidentId INTEGER PRIMARY KEY,
    LocationId INTEGER,
    IncidentTypeId INTEGER,
    DetectedTimestamp BIGINT,
    ResolvedTimestamp BIGINT,
    SeverityLevel INTEGER,
    ReporterUserId INTEGER,
    DescriptionCode INTEGER,
    ImpactScore REAL,
    MitigationActionId INTEGER,
    FollowUpDate BIGINT,
    CreatedAt BIGINT,
    UpdatedAt BIGINT,
    IsClosed INTEGER,
    RegulatoryAgencyId INTEGER,
    NotificationSentFlag INTEGER,
    EstimatedCost REAL,
    WeatherConditionCode INTEGER,
    EnvironmentalMetricId INTEGER,
    SensorReadingId INTEGER,
    ResponseTeamId INTEGER,
    AuditTrailId INTEGER
);
INSERT INTO environmental_incident_logs (IncidentId, LocationId, IncidentTypeId, DetectedTimestamp, ResolvedTimestamp, SeverityLevel, ReporterUserId, DescriptionCode, ImpactScore, MitigationActionId, FollowUpDate, CreatedAt, UpdatedAt, IsClosed, RegulatoryAgencyId, NotificationSentFlag, EstimatedCost, WeatherConditionCode, EnvironmentalMetricId, SensorReadingId, ResponseTeamId, AuditTrailId) VALUES (1, 901, 11, 1698000000, 1698003600, 2, 10001, 15, 75.0, 20001, 1698007200, 1698000000, 1698007200, 1, 30001, 1, 15000.00, 5, 40001, 50001, 60001, 70001);
INSERT INTO environmental_incident_logs (IncidentId, LocationId, IncidentTypeId, DetectedTimestamp, ResolvedTimestamp, SeverityLevel, ReporterUserId, DescriptionCode, ImpactScore, MitigationActionId, FollowUpDate, CreatedAt, UpdatedAt, IsClosed, RegulatoryAgencyId, NotificationSentFlag, EstimatedCost, WeatherConditionCode, EnvironmentalMetricId, SensorReadingId, ResponseTeamId, AuditTrailId) VALUES (2, 902, 12, 1698100000, 1698105400, 3, 10002, 16, 90.5, 20002, 1698109000, 1698100000, 1698109000, 1, 30002, 1, 25000.00, 3, 40002, 50002, 60002, 70002);
INSERT INTO environmental_incident_logs (IncidentId, LocationId, IncidentTypeId, DetectedTimestamp, ResolvedTimestamp, SeverityLevel, ReporterUserId, DescriptionCode, ImpactScore, MitigationActionId, FollowUpDate, CreatedAt, UpdatedAt, IsClosed, RegulatoryAgencyId, NotificationSentFlag, EstimatedCost, WeatherConditionCode, EnvironmentalMetricId, SensorReadingId, ResponseTeamId, AuditTrailId) VALUES (3, 903, 13, 1698200000, NULL, 1, 10003, 17, 45.2, 20003, 1698203600, 1698200000, 1698203600, 0, 30003, 0, 5000.00, 2, 40003, 50003, 60003, 70003);

-- Vehicle fleet maintenance schedule table
CREATE TABLE vehicle_fleet_maintenance_schedule (
    ScheduleId INTEGER PRIMARY KEY,
    VehicleId INTEGER,
    MaintenanceTypeId INTEGER,
    ScheduledDate BIGINT,
    EstimatedDurationHours REAL,
    ServiceProviderId INTEGER,
    CostEstimate REAL,
    PriorityLevel INTEGER,
    CreatedByUserId INTEGER,
    CreatedAt BIGINT,
    UpdatedAt BIGINT,
    StatusFlag INTEGER,
    ActualStartDate BIGINT,
    ActualEndDate BIGINT,
    LaborHours REAL,
    PartsCost REAL,
    OdometerReading BIGINT,
    FuelLevelAtService REAL,
    DriverId INTEGER,
    ComplianceCheckFlag INTEGER,
    FollowUpTaskId INTEGER,
    Notes TEXT
);
INSERT INTO vehicle_fleet_maintenance_schedule (ScheduleId, VehicleId, MaintenanceTypeId, ScheduledDate, EstimatedDurationHours, ServiceProviderId, CostEstimate, PriorityLevel, CreatedByUserId, CreatedAt, UpdatedAt, StatusFlag, ActualStartDate, ActualEndDate, LaborHours, PartsCost, OdometerReading, FuelLevelAtService, DriverId, ComplianceCheckFlag, FollowUpTaskId, Notes) VALUES (1, 1101, 1, 1700000000, 4.0, 2101, 300.00, 2, 3101, 1700000000, 1700000600, 0, NULL, NULL, NULL, NULL, 150000, 80.0, 4101, 1, 5101, NULL);
INSERT INTO vehicle_fleet_maintenance_schedule (ScheduleId, VehicleId, MaintenanceTypeId, ScheduledDate, EstimatedDurationHours, ServiceProviderId, CostEstimate, PriorityLevel, CreatedByUserId, CreatedAt, UpdatedAt, StatusFlag, ActualStartDate, ActualEndDate, LaborHours, PartsCost, OdometerReading, FuelLevelAtService, DriverId, ComplianceCheckFlag, FollowUpTaskId, Notes) VALUES (2, 1102, 2, 1700100000, 6.5, 2102, 500.00, 1, 3102, 1700100000, 1700100600, 1, 1700101200, 1700104800, 5.0, 200.00, 250000, 60.5, 4102, 1, 5102, NULL);
INSERT INTO vehicle_fleet_maintenance_schedule (ScheduleId, VehicleId, MaintenanceTypeId, ScheduledDate, EstimatedDurationHours, ServiceProviderId, CostEstimate, PriorityLevel, CreatedByUserId, CreatedAt, UpdatedAt, StatusFlag, ActualStartDate, ActualEndDate, LaborHours, PartsCost, OdometerReading, FuelLevelAtService, DriverId, ComplianceCheckFlag, FollowUpTaskId, Notes) VALUES (3, 1103, 3, 1700200000, 3.0, 2103, 250.00, 3, 3103, 1700200000, 1700200600, 0, NULL, NULL, NULL, NULL, 90000, 90.0, 4103, 0, 5103, NULL);

-- Learning path completion table
CREATE TABLE learning_path_completion (
    CompletionId INTEGER PRIMARY KEY,
    LearningPathId INTEGER,
    UserId INTEGER,
    CompletionDate BIGINT,
    Score REAL,
    CertificateId INTEGER,
    DurationMinutes INTEGER,
    ModulesCompleted INTEGER,
    ModulesTotal INTEGER,
    PassFailFlag INTEGER,
    ReviewerUserId INTEGER,
    ReviewDate BIGINT,
    FeedbackScore REAL,
    IncentiveEarned REAL,
    CreatedAt BIGINT,
    UpdatedAt BIGINT,
    SourceSystemId INTEGER,
    VersionNumber INTEGER,
    IsRevoked INTEGER,
    RevocationDate BIGINT,
    RenewalEligibilityFlag INTEGER,
    NextLearningPathId INTEGER
);
INSERT INTO learning_path_completion (CompletionId, LearningPathId, UserId, CompletionDate, Score, CertificateId, DurationMinutes, ModulesCompleted, ModulesTotal, PassFailFlag, ReviewerUserId, ReviewDate, FeedbackScore, IncentiveEarned, CreatedAt, UpdatedAt, SourceSystemId, VersionNumber, IsRevoked, RevocationDate, RenewalEligibilityFlag, NextLearningPathId) VALUES (1, 1201, 1301, 1699000000, 88.5, 1401, 240, 12, 12, 1, 1501, 1699003600, 4.5, 100.00, 1699000000, 1699003600, 1601, 1, 0, NULL, 1, 1202);
INSERT INTO learning_path_completion (CompletionId, LearningPathId, UserId, CompletionDate, Score, CertificateId, DurationMinutes, ModulesCompleted, ModulesTotal, PassFailFlag, ReviewerUserId, ReviewDate, FeedbackScore, IncentiveEarned, CreatedAt, UpdatedAt, SourceSystemId, VersionNumber, IsRevoked, RevocationDate, RenewalEligibilityFlag, NextLearningPathId) VALUES (2, 1202, 1302, 1699100000, 92.0, 1402, 180, 8, 8, 1, 1502, 1699103600, 4.8, 150.00, 1699100000, 1699103600, 1602, 1, 0, NULL, 1, 1203);
INSERT INTO learning_path_completion (CompletionId, LearningPathId, UserId, CompletionDate, Score, CertificateId, DurationMinutes, ModulesCompleted, ModulesTotal, PassFailFlag, ReviewerUserId, ReviewDate, FeedbackScore, IncentiveEarned, CreatedAt, UpdatedAt, SourceSystemId, VersionNumber, IsRevoked, RevocationDate, RenewalEligibilityFlag, NextLearningPathId) VALUES (3, 1203, 1303, 1699200000, 76.5, 1403, 300, 9, 12, 0, 1503, 1699203600, 3.9, 0.00, 1699200000, 1699203600, 1603, 1, 0, NULL, 0, NULL);