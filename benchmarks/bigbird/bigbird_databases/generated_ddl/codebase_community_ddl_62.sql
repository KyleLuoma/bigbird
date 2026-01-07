-- Server maintenance tasks table
CREATE TABLE server_maintenance_tasks
(
    TaskId               INTEGER PRIMARY KEY,
    ServerId             INTEGER,
    TaskName             TEXT,
    ScheduledStart       DATETIME,
    ScheduledEnd         DATETIME,
    ActualStart          DATETIME,
    ActualEnd            DATETIME,
    TechnicianId         INTEGER,
    MaintenanceType      TEXT,
    PriorityLevel        INTEGER,
    Description          TEXT,
    IsCritical           INTEGER,
    CreatedAt            DATETIME,
    UpdatedAt            DATETIME,
    DurationMinutes      INTEGER,
    Status               TEXT,
    RetryCount           INTEGER,
    NotificationSent     INTEGER,
    CostEstimate         NUMERIC,
    DowntimeImpact       TEXT
);

INSERT INTO server_maintenance_tasks VALUES (1, 101, 'OS_Update', '2023-02-01 02:00:00', '2023-02-01 04:00:00', '2023-02-01 02:05:00', '2023-02-01 03:55:00', 12, 'Software', 1, 'Update OS to latest patch', 1, '2023-01-15 09:00:00', '2023-01-20 11:30:00', 115, 'Completed', 0, 1, 250.00, 'Low');
INSERT INTO server_maintenance_tasks VALUES (2, 202, 'Disk_Cleanup', '2023-03-10 01:00:00', '2023-03-10 02:30:00', NULL, NULL, 15, 'Hardware', 2, 'Remove old log files', 0, '2023-02-28 14:20:00', '2023-03-01 08:45:00', 90, 'Pending', 0, 0, 0.00, 'Medium');
INSERT INTO server_maintenance_tasks VALUES (3, 303, 'Firmware_Upgrade', '2023-04-05 23:00:00', '2023-04-06 01:00:00', '2023-04-05 23:10:00', '2023-04-06 00:55:00', 9, 'Software', 1, 'Upgrade firmware to version 3.2', 1, '2023-03-20 10:00:00', '2023-03-25 12:15:00', 115, 'Completed', 1, 1, 180.75, 'Low');

-- API gateway routes table
CREATE TABLE api_gateway_routes
(
    RouteId               INTEGER PRIMARY KEY,
    HttpMethod            TEXT,
    PathPattern           TEXT,
    ServiceName           TEXT,
    Version               TEXT,
    AuthRequired          INTEGER,
    RateLimitPerMinute    INTEGER,
    CacheTTLSeconds       INTEGER,
    TimeoutMs             INTEGER,
    CreatedBy             INTEGER,
    CreatedAt             DATETIME,
    UpdatedBy             INTEGER,
    UpdatedAt             DATETIME,
    IsDeprecated          INTEGER,
    DeprecationDate       DATETIME,
    Description           TEXT,
    BackendUrl            TEXT,
    MaxPayloadSizeKb      INTEGER,
    CircuitBreakerEnabled INTEGER,
    LoggingLevel          TEXT
);

INSERT INTO api_gateway_routes VALUES (101, 'GET', '/users/*/profile', 'UserService', 'v1', 1, 1000, 60, 3000, 5, '2023-01-01 08:00:00', 5, '2023-02-01 09:15:00', 0, NULL, 'Fetch user profile', 'http://users.internal/api', 512, 1, 'INFO');
INSERT INTO api_gateway_routes VALUES (102, 'POST', '/orders/create', 'OrderService', 'v2', 1, 500, 30, 5000, 7, '2023-01-10 10:30:00', 7, '2023-02-15 11:45:00', 0, NULL, 'Create new order', 'http://orders.internal/api', 1024, 1, 'DEBUG');
INSERT INTO api_gateway_routes VALUES (103, 'DELETE', '/inventory/*', 'InventoryService', 'v1', 1, 200, 0, 4000, 9, '2023-01-20 14:20:00', 9, '2023-02-20 15:00:00', 1, '2023-12-31 23:59:59', 'Remove inventory item', 'http://inventory.internal/api', 256, 0, 'WARN');

-- Compliance policy versions table
CREATE TABLE compliance_policy_versions
(
    PolicyId            INTEGER PRIMARY KEY,
    VersionNumber       TEXT,
    EffectiveDate       DATETIME,
    ExpirationDate      DATETIME,
    Scope               TEXT,
    OwnerTeam           TEXT,
    ReviewCycleDays     INTEGER,
    LastReviewedBy      INTEGER,
    LastReviewedAt      DATETIME,
    Status              TEXT,
    ChangeLog           TEXT,
    RiskLevel           TEXT,
    EnforcementMechanism TEXT,
    DocumentationUrl    TEXT,
    IsActive            INTEGER,
    CreatedAt           DATETIME,
    CreatedBy           INTEGER,
    UpdatedAt           DATETIME,
    UpdatedBy           INTEGER,
    ComplianceScore     NUMERIC
);

INSERT INTO compliance_policy_versions VALUES (1, '1.0', '2022-01-01 00:00:00', '2025-01-01 00:00:00', 'Global', 'ComplianceTeam', 180, 22, '2023-01-15 09:30:00', 'Approved', 'Initial release', 'Medium', 'Automated', 'http://docs.internal/policy/1.0', 1, '2022-01-01 08:00:00', 22, '2023-01-16 10:00:00', 22, 85.5);
INSERT INTO compliance_policy_versions VALUES (2, '1.1', '2023-06-01 00:00:00', '2026-06-01 00:00:00', 'EU', 'LegalTeam', 365, 33, '2023-06-10 11:20:00', 'Draft', 'Added GDPR clauses', 'High', 'Manual Review', 'http://docs.internal/policy/1.1', 0, '2023-05-20 07:45:00', 33, '2023-06-15 12:00:00', 33, 92.0);
INSERT INTO compliance_policy_versions VALUES (3, '2.0', '2024-01-01 00:00:00', '2027-01-01 00:00:00', 'APAC', 'RiskTeam', 90, 44, '2023-12-20 14:05:00', 'Pending', 'Revamp for new regulations', 'Low', 'Hybrid', 'http://docs.internal/policy/2.0', 0, '2023-12-01 09:00:00', 44, '2024-01-02 09:30:00', 44, 78.0);

-- Security incident details table
CREATE TABLE security_incident_details
(
    IncidentId          INTEGER PRIMARY KEY,
    DetectedAt         DATETIME,
    ReporterId         INTEGER,
    Severity           TEXT,
    Category           TEXT,
    AffectedSystem    TEXT,
    Description        TEXT,
    ResolutionStatus   TEXT,
    ResolvedAt         DATETIME,
    MitigationSteps    TEXT,
    ImpactScore        NUMERIC,
    IsFalsePositive    INTEGER,
    TicketId           INTEGER,
    SourceIp           TEXT,
    DestinationIp      TEXT,
    Protocol           TEXT,
    Port               INTEGER,
    AlertSignature     TEXT,
    AnalystNotes       TEXT,
    UpdatedAt          DATETIME
);

INSERT INTO security_incident_details VALUES (1001, '2023-03-05 13:45:00', 12, 'High', 'Malware', 'WebServer01', 'Detected ransomware activity', 'Resolved', '2023-03-06 09:00:00', 'Isolated server, restored from backup', 95.0, 0, 5678, '192.168.10.45', '10.0.0.12', 'TCP', 445, 'RANSOMWARE_DETECT', 'All files restored, monitoring enabled', '2023-03-06 10:15:00');
INSERT INTO security_incident_details VALUES (1002, '2023-04-12 08:20:00', 23, 'Medium', 'Phishing', 'EmailGateway', 'Spear phishing email delivered', 'Investigating', NULL, 'Quarantine email, notify users', 45.5, 0, 6721, '203.0.113.77', '10.0.5.22', 'SMTP', 25, 'PHISH_DETECT', 'Awaiting user response', '2023-04-12 09:00:00');
INSERT INTO security_incident_details VALUES (1003, '2023-05-01 22:10:00', 34, 'Low', 'Port Scan', 'Firewall', 'Multiple port scan attempts detected', 'Closed', '2023-05-02 01:30:00', 'Blocked source IP, added to blocklist', 12.0, 0, 7890, '198.51.100.33', '10.0.2.5', 'TCP', 22, 'PORTSCAN_DETECT', 'No further activity', '2023-05-02 02:00:00');

-- Hardware failure reports table
CREATE TABLE hardware_failure_reports
(
    ReportId          INTEGER PRIMARY KEY,
    DeviceId          INTEGER,
    FailureType       TEXT,
    ReportedAt        DATETIME,
    DetectedBy        INTEGER,
    SeverityLevel     TEXT,
    SymptomDescription TEXT,
    RootCause         TEXT,
    RepairAction      TEXT,
    DowntimeMinutes   INTEGER,
    CostEstimate      NUMERIC,
    WarrantyClaim     INTEGER,
    ServiceProvider   TEXT,
    TicketNumber      TEXT,
    Location          TEXT,
    FirmwareVersion   TEXT,
    SerialNumber      TEXT,
    ReplacementPart   TEXT,
    FollowUpDate      DATETIME,
    UpdatedAt         DATETIME
);

INSERT INTO hardware_failure_reports VALUES (5001, 3001, 'PowerSupply', '2023-02-14 11:00:00', 7, 'Critical', 'Sudden shutdown', 'Capacitor failure', 'Replaced PSU', 180, 450.00, 1, 'VendorA', 'TCK1001', 'DataCenterA', 'v1.4.2', 'SN123456', 'PSU-2000', '2023-02-20 10:00:00', '2023-02-14 12:30:00');
INSERT INTO hardware_failure_reports VALUES (5002, 3002, 'DiskFailure', '2023-03-22 09:30:00', 9, 'High', 'Read errors', 'Bad sector accumulation', 'Replaced drive', 90, 320.00, 0, 'VendorB', 'TCK1002', 'DataCenterB', 'v2.0.1', 'SN789012', 'SSD-500GB', '2023-04-01 08:00:00', '2023-03-22 10:45:00');
INSERT INTO hardware_failure_reports VALUES (5003, 3003, 'FanMalfunction', '2023-04-10 15:20:00', 11, 'Medium', 'Overheating', 'Dust buildup', 'Cleaned fan and applied new thermal paste', 45, 80.00, 0, 'VendorC', 'TCK1003', 'DataCenterC', 'v3.3.5', 'SN345678', 'FAN-1200', '2023-04-20 14:00:00', '2023-04-10 16:00:00');

-- Cloud resource allocation table
CREATE TABLE cloud_resource_allocation
(
    AllocationId      INTEGER PRIMARY KEY,
    ResourceGroup     TEXT,
    ResourceType      TEXT,
    ResourceId        TEXT,
    AllocatedTo       TEXT,
    AllocationStart   DATETIME,
    AllocationEnd     DATETIME,
    CapacityUnits     NUMERIC,
    UtilizationPercent NUMERIC,
    CostPerHour       NUMERIC,
    BillingAccountId  INTEGER,
    Region            TEXT,
    Zone              TEXT,
    OwnerTeam         TEXT,
    CreatedAt         DATETIME,
    CreatedBy         INTEGER,
    UpdatedAt         DATETIME,
    UpdatedBy         INTEGER,
    IsActive          INTEGER,
    Tags              TEXT
);

INSERT INTO cloud_resource_allocation VALUES (9001, 'RG-Alpha', 'VM', 'vm-001', 'ProjectX', '2023-01-01 00:00:00', NULL, 4.0, 57.3, 0.24, 101, 'us-east-1', 'a', 'InfraTeam', '2022-12-15 09:30:00', 5, '2023-02-10 11:45:00', 5, 1, 'env=prod;app=web');
INSERT INTO cloud_resource_allocation VALUES (9002, 'RG-Beta', 'Database', 'db-123', 'AnalyticsTeam', '2023-03-15 08:00:00', NULL, 2.0, 82.1, 0.45, 102, 'eu-west-2', 'b', 'DataTeam', '2023-03-01 10:15:00', 7, '2023-04-01 12:00:00', 7, 1, 'env=staging;db=postgres');
INSERT INTO cloud_resource_allocation VALUES (9003, 'RG-Gamma', 'Storage', 'blob-xyz', 'BackupService', '2022-11-01 00:00:00', '2023-11-01 00:00:00', 10.0, 34.5, 0.08, 103, 'ap-southeast-1', 'c', 'OpsTeam', '2022-10-20 14:00:00', 9, '2023-01-20 09:30:00', 9, 0, 'env=archive;type=blob');

-- Data pipeline schedule table
CREATE TABLE data_pipeline_schedule
(
    ScheduleId          INTEGER PRIMARY KEY,
    PipelineName        TEXT,
    Frequency           TEXT,
    CronExpression      TEXT,
    NextRun             DATETIME,
    LastRun             DATETIME,
    LastStatus          TEXT,
    MaxRuntimeMinutes   INTEGER,
    OwnerTeam           TEXT,
    NotificationEmail   TEXT,
    IsEnabled           INTEGER,
    CreatedAt           DATETIME,
    CreatedBy           INTEGER,
    UpdatedAt           DATETIME,
    UpdatedBy           INTEGER,
    RetryPolicy         TEXT,
    ConcurrencyLimit    INTEGER,
    DataVolumeGB        NUMERIC,
    SLAMinutes          INTEGER,
    Comments            TEXT
);

INSERT INTO data_pipeline_schedule VALUES (2001, 'UserActivityETL', 'Daily', '0 2 * * *', '2023-05-02 02:00:00', '2023-05-01 02:05:00', 'Success', 180, 'DataTeam', 'dataops@example.com', 1, '2023-01-10 09:00:00', 12, '2023-04-30 10:15:00', 12, 'ExponentialBackoff', 2, 150.5, 240, 'Runs after midnight');
INSERT INTO data_pipeline_schedule VALUES (2002, 'SalesMetricsRefresh', 'Hourly', '0 * * * *', '2023-05-02 13:00:00', '2023-05-02 12:00:00', 'Success', 60, 'AnalyticsTeam', 'analytics@example.com', 1, '2023-02-01 08:30:00', 14, '2023-05-02 12:05:00', 14, 'FixedRetry', 4, 45.2, 120, 'Refreshes sales KPIs');
INSERT INTO data_pipeline_schedule VALUES (2003, 'LogIngestion', 'Every15Min', '*/15 * * * *', '2023-05-02 12:45:00', '2023-05-02 12:30:00', 'Failed', 30, 'OpsTeam', 'ops@example.com', 0, '2023-03-15 11:00:00', 16, '2023-05-02 12:35:00', 16, 'ImmediateRetry', 8, 20.0, 15, 'Ingests system logs');

-- External service contracts table
CREATE TABLE external_service_contracts
(
    ContractId          INTEGER PRIMARY KEY,
    ServiceProvider     TEXT,
    ContractStart       DATETIME,
    ContractEnd         DATETIME,
    ServiceLevel        TEXT,
    MonthlyFee          NUMERIC,
    AnnualFee           NUMERIC,
    ContactPerson       TEXT,
    ContactEmail        TEXT,
    RenewalNoticeDays   INTEGER,
    IsAutoRenew         INTEGER,
    TermsUrl            TEXT,
    Scope               TEXT,
    SLAComplianceScore  NUMERIC,
    PenaltyClause       TEXT,
    CreatedAt           DATETIME,
    CreatedBy           INTEGER,
    UpdatedAt           DATETIME,
    UpdatedBy           INTEGER,
    Status              TEXT
);

INSERT INTO external_service_contracts VALUES (301, 'CloudCDNInc', '2022-06-01 00:00:00', '2025-05-31 23:59:59', 'Gold', 1200.00, 14400.00, 'AliceSmith', 'alice.smith@cloudcdn.com', 60, 1, 'http://contracts.cloudcdn.com/terms', 'Global CDN Delivery', 96.5, 'LatePaymentFee', '2022-05-10 09:00:00', 22, '2023-01-15 10:30:00', 22, 'Active');
INSERT INTO external_service_contracts VALUES (302, 'SecurityScanCo', '2023-01-01 00:00:00', '2024-12-31 23:59:59', 'Standard', 800.00, 9600.00, 'BobJones', 'bob.jones@secscan.com', 30, 0, 'http://contracts.secscan.com/terms', 'Quarterly vulnerability scans', 88.0, 'ServiceCredit', '2022-12-01 14:20:00', 33, '2023-03-20 15:45:00', 33, 'PendingRenewal');
INSERT INTO external_service_contracts VALUES (303, 'DataBackupLtd', '2021-09-15 00:00:00', '2024-09-14 23:59:59', 'Platinum', 1500.00, 18000.00, 'CarolLee', 'carol.lee@backup.com', 90, 1, 'http://contracts.backup.com/terms', 'Enterprise backup services', 99.2, 'NoPenalty', '2021-08-20 08:30:00', 44, '2023-02-10 09:10:00', 44, 'Active');

-- System performance metrics table
CREATE TABLE system_performance_metrics
(
    MetricId               INTEGER PRIMARY KEY,
    ServerId               INTEGER,
    CpuUsagePercent        NUMERIC,
    MemoryUsagePercent     NUMERIC,
    DiskReadOps            INTEGER,
    DiskWriteOps           INTEGER,
    NetworkInMbps          NUMERIC,
    NetworkOutMbps         NUMERIC,
    ProcessCount           INTEGER,
    ThreadCount            INTEGER,
    UptimeSeconds          INTEGER,
    RecordTimestamp        DATETIME,
    LoadAverage1           NUMERIC,
    LoadAverage5           NUMERIC,
    LoadAverage15          NUMERIC,
    TemperatureCelsius     NUMERIC,
    PowerConsumptionWatts NUMERIC,
    ErrorCount             INTEGER,
    WarningCount           INTEGER,
    UpdatedAt              DATETIME
);

INSERT INTO system_performance_metrics VALUES (4001, 101, 68.5, 73.2, 12000, 9500, 250.4, 210.7, 145, 320, 864000, '2023-05-01 12:00:00', 1.25, 1.10, 0.95, 45.2, 340.5, 2, 5, '2023-05-01 12:05:00');
INSERT INTO system_performance_metrics VALUES (4002, 202, 45.0, 60.3, 8000, 7600, 180.0, 170.5, 98, 210, 432000, '2023-05-01 12:10:00', 0.85, 0.90, 0.80, 38.7, 260.0, 0, 2, '2023-05-01 12:15:00');
INSERT INTO system_performance_metrics VALUES (4003, 303, 82.1, 88.9, 15000, 14000, 320.6, 300.2, 200, 420, 1296000, '2023-05-01 12:20:00', 2.10, 1.95, 1.80, 52.3, 420.7, 5, 9, '2023-05-01 12:25:00');

-- Data center environmental metrics table
CREATE TABLE data_center_environmental_metrics
(
    RecordId               INTEGER PRIMARY KEY,
    DataCenterId           INTEGER,
    TemperatureCelsius     NUMERIC,
    HumidityPercent        NUMERIC,
    PowerUsageKwh          NUMERIC,
    CoolingCapacityKw      NUMERIC,
    FireAlarmStatus        INTEGER,
    FloodSensorStatus      INTEGER,
    AirflowCfm             NUMERIC,
    NoiseLevelDb           NUMERIC,
    PduLoadPercent         NUMERIC,
    UPSBatteryHealthPercent NUMERIC,
    RecordTimestamp        DATETIME,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME,
    TechnicianId           INTEGER,
    MaintenanceRequired    INTEGER,
    EnergyCostUsd          NUMERIC,
    CarbonEmissionKg       NUMERIC,
    Note                   TEXT,
    Status                 TEXT
);

INSERT INTO data_center_environmental_metrics VALUES (6001, 1, 22.5, 45.0, 3500.0, 1200.0, 0, 0, 8000.0, 55.0, 70.0, 95.0, '2023-05-01 06:00:00', '2023-04-28 09:30:00', '2023-05-01 07:00:00', 10, 0, 4200.00, 3500.00, 'All systems normal', 'Operational');
INSERT INTO data_center_environmental_metrics VALUES (6002, 2, 24.0, 48.5, 4200.0, 1500.0, 1, 0, 8500.0, 60.0, 85.0, 90.0, '2023-05-01 06:30:00', '2023-04-29 10:15:00', '2023-05-01 07:30:00', 12, 1, 5000.00, 4100.00, 'Fire alarm triggered, reset performed', 'Alert');
INSERT INTO data_center_environmental_metrics VALUES (6003, 3, 21.8, 42.3, 3100.0, 1100.0, 0, 1, 7500.0, 52.0, 65.0, 97.0, '2023-05-01 07:00:00', '2023-04-30 08:45:00', '2023-05-01 08:00:00', 14, 0, 3800.00, 3300.00, 'Flood sensor activated due to minor leak', 'Maintenance');