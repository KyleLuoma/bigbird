-- Project tasks and assignments
CREATE TABLE project_tasks
(
    TaskId INTEGER PRIMARY KEY,
    ProjectId INTEGER,
    Title TEXT,
    Description TEXT,
    CreatedDate DATETIME,
    DueDate DATETIME,
    Status TEXT,
    Priority TEXT,
    AssignedUserId INTEGER,
    CreatedByUserId INTEGER,
    EstimatedHours INTEGER,
    ActualHours INTEGER,
    PercentComplete INTEGER,
    IsBillable BOOLEAN,
    BillingRate DECIMAL,
    Department TEXT,
    TaskType TEXT,
    SourceSystem TEXT,
    ApprovalStatus TEXT,
    LastUpdateDate DATETIME,
    UpdatedByUserId INTEGER,
    Tags TEXT
);

INSERT INTO project_tasks VALUES (1, 101, 'Design UI', 'Create mockups for new feature', '2025-01-02 09:00:00', '2025-01-15 17:00:00', 'Open', 'High', 12, 5, 40, 0, 0, 1, 150.00, 'Design', 'Feature', 'Internal', 'Pending', '2025-01-02 09:00:00', 5, 'ui,mockup');
INSERT INTO project_tasks VALUES (2, 101, 'Implement Backend', 'Develop API endpoints', '2025-01-03 10:00:00', '2025-01-20 18:00:00', 'InProgress', 'Medium', 13, 5, 80, 20, 25, 1, 200.00, 'Engineering', 'Development', 'Internal', 'Approved', '2025-01-10 14:30:00', 13, 'api,backend');
INSERT INTO project_tasks VALUES (3, 102, 'Test Release', 'Execute regression tests', '2025-01-05 08:30:00', '2025-01-12 12:00:00', 'Planned', 'Low', 14, 6, 30, 0, 0, 0, 0.00, 'Quality', 'Testing', 'External', 'Pending', '2025-01-05 08:30:00', 6, 'test,release');

-- Supplier orders tracking
CREATE TABLE supplier_orders
(
    OrderId INTEGER PRIMARY KEY,
    SupplierId INTEGER,
    OrderNumber TEXT,
    OrderDate DATE,
    ExpectedDeliveryDate DATE,
    DeliveryDate DATE,
    TotalAmount DECIMAL,
    Currency TEXT,
    PaymentTerms TEXT,
    OrderStatus TEXT,
    CreatedByUserId INTEGER,
    ApprovedByUserId INTEGER,
    ShippingMethod TEXT,
    WarehouseId INTEGER,
    ContactName TEXT,
    ContactPhone TEXT,
    BillingAddress TEXT,
    ShippingAddress TEXT,
    IsUrgent BOOLEAN,
    Notes TEXT,
    CreatedTimestamp DATETIME
);

INSERT INTO supplier_orders VALUES (1001, 200, 'PO-2025-001', '2025-01-01', '2025-01-10', NULL, 12500.00, 'USD', 'Net30', 'Pending', 7, NULL, 'Air', 3, 'John Doe', '5551234', '123 Billing St', '456 Shipping Ave', 0, 'First order for Q1', '2025-01-01 09:15:00');
INSERT INTO supplier_orders VALUES (1002, 201, 'PO-2025-002', '2025-01-03', '2025-01-12', '2025-01-11', 8300.50, 'USD', 'Prepaid', 'Shipped', 8, 9, 'Sea', 2, 'Jane Smith', '5555678', '789 Billing Rd', '321 Shipping Ln', 1, 'Urgent restock', '2025-01-03 10:45:00');
INSERT INTO supplier_orders VALUES (1003, 202, 'PO-2025-003', '2025-01-05', '2025-01-15', NULL, 4520.75, 'EUR', 'Net45', 'Cancelled', 10, NULL, 'Ground', 4, 'Mike Lee', '5559012', '654 Billing Blvd', '987 Shipping Pkwy', 0, 'Cancelled due to price change', '2025-01-05 11:30:00');

-- Warehouse inventory details
CREATE TABLE warehouse_inventory
(
    InventoryId INTEGER PRIMARY KEY,
    WarehouseId INTEGER,
    ProductSku TEXT,
    ProductName TEXT,
    Category TEXT,
    QuantityOnHand INTEGER,
    QuantityReserved INTEGER,
    QuantityAvailable INTEGER,
    UnitCost DECIMAL,
    TotalValue DECIMAL,
    LocationCode TEXT,
    BinNumber TEXT,
    ShelfLevel TEXT,
    ReceivedDate DATE,
    ExpirationDate DATE,
    SupplierId INTEGER,
    BatchNumber TEXT,
    SerialNumber TEXT,
    IsSerialized BOOLEAN,
    ReorderLevel INTEGER,
    ReorderQuantity INTEGER,
    LastCountDate DATE,
    LastCountByUserId INTEGER,
    Comments TEXT
);

INSERT INTO warehouse_inventory VALUES (5001, 1, 'SKU-1001', 'Widget A', 'Gadgets', 150, 20, 130, 12.50, 1875.00, 'A1', 'B12', 'S3', '2025-01-02', NULL, 200, 'BATCH-01', NULL, 0, 50, 100, '2025-01-10', 5, 'Regular stock');
INSERT INTO warehouse_inventory VALUES (5002, 2, 'SKU-1002', 'Gizmo B', 'Widgets', 80, 5, 75, 22.00, 1760.00, 'B2', 'C05', 'S1', '2025-01-04', '2026-01-04', 201, 'BATCH-02', 'SN-0001', 1, 30, 60, '2025-01-12', 6, 'Serialized items');
INSERT INTO warehouse_inventory VALUES (5003, 1, 'SKU-1003', 'Doohickey C', 'Accessories', 200, 0, 200, 5.75, 1150.00, 'C3', 'D07', 'S2', '2025-01-06', NULL, 202, 'BATCH-03', NULL, 0, 80, 150, '2025-01-14', 7, 'New arrival');

-- Customer interactions log
CREATE TABLE customer_interactions
(
    InteractionId INTEGER PRIMARY KEY,
    CustomerId INTEGER,
    InteractionType TEXT,
    InteractionDate DATETIME,
    Channel TEXT,
    AgentUserId INTEGER,
    Subject TEXT,
    Details TEXT,
    FollowUpDate DATE,
    FollowUpUserId INTEGER,
    Outcome TEXT,
    SatisfactionScore INTEGER,
    DurationMinutes INTEGER,
    IsEscalated BOOLEAN,
    TicketId INTEGER,
    CampaignId INTEGER,
    ProductId INTEGER,
    Region TEXT,
    FeedbackText TEXT,
    CreatedTimestamp DATETIME,
    UpdatedTimestamp DATETIME,
    ResolvedByUserId INTEGER,
    ResolutionNotes TEXT
);

INSERT INTO customer_interactions VALUES (3001, 4001, 'SupportCall', '2025-01-07 09:30:00', 'Phone', 12, 'Login issue', 'User cannot login after password reset', '2025-01-08', 13, 'Resolved', 5, 15, 0, 9001, 101, 501, 'NorthAmerica', 'Great service', '2025-01-07 09:30:00', '2025-01-08 10:00:00', 13, 'Password reset completed');
INSERT INTO customer_interactions VALUES (3002, 4002, 'Email', '2025-01-08 14:20:00', 'Email', 14, 'Feature request', 'Request for dark mode', NULL, NULL, 'Pending', NULL, NULL, 0, NULL, 102, 502, 'Europe', 'Looking forward to this', '2025-01-08 14:20:00', '2025-01-08 14:20:00', NULL, NULL);
INSERT INTO customer_interactions VALUES (3003, 4003, 'Chat', '2025-01-09 11:45:00', 'WebChat', 15, 'Billing question', 'Clarification on invoice #12345', '2025-01-10', 16, 'Escalated', 3, 10, 1, 9002, 103, 503, 'Asia', 'Response time was slow', '2025-01-09 11:45:00', '2025-01-10 09:00:00', 16, 'Escalated to finance team');

-- Device telemetry readings
CREATE TABLE device_telemetry
(
    TelemetryId INTEGER PRIMARY KEY,
    DeviceId INTEGER,
    Timestamp DATETIME,
    TemperatureC DECIMAL,
    HumidityPct DECIMAL,
    BatteryLevelPct INTEGER,
    SignalStrengthDbm INTEGER,
    CpuUsagePct INTEGER,
    MemoryUsagePct INTEGER,
    DiskFreeMb INTEGER,
    UptimeSeconds INTEGER,
    FirmwareVersion TEXT,
    Latitude DECIMAL,
    Longitude DECIMAL,
    AltitudeMeters DECIMAL,
    AccelerometerX DECIMAL,
    AccelerometerY DECIMAL,
    AccelerometerZ DECIMAL,
    GyroX DECIMAL,
    GyroY DECIMAL,
    GyroZ DECIMAL,
    EventCode INTEGER,
    EventDescription TEXT,
    IsAlert BOOLEAN,
    AlertSeverity TEXT,
    ProcessedFlag BOOLEAN
);

INSERT INTO device_telemetry VALUES (7001, 9001, '2025-01-11 08:00:00', 22.5, 45.0, 87, -70, 12, 30, 10240, 86400, 'v1.2.3', 37.7749, -122.4194, 15.0, 0.01, -0.02, 0.00, 0.00, 0.01, -0.01, 100, 'Heartbeat', 0, 'Low', 0);
INSERT INTO device_telemetry VALUES (7002, 9002, '2025-01-11 08:05:00', 24.0, 50.0, 65, -68, 35, 55, 8000, 43200, 'v1.2.4', 40.7128, -74.0060, 10.0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 200, 'BatteryLow', 1, 'High', 0);
INSERT INTO device_telemetry VALUES (7003, 9003, '2025-01-11 08:10:00', 19.8, 40.0, 92, -72, 8, 20, 12000, 172800, 'v1.2.3', 51.5074, -0.1278, 25.0, 0.02, 0.01, -0.01, 0.01, -0.01, 0.02, 300, 'TemperatureAlert', 1, 'Medium', 0);

-- Event sessions schedule
CREATE TABLE event_sessions
(
    SessionId INTEGER PRIMARY KEY,
    EventId INTEGER,
    SessionTitle TEXT,
    StartTime DATETIME,
    EndTime DATETIME,
    SpeakerUserId INTEGER,
    RoomName TEXT,
    Capacity INTEGER,
    RegisteredCount INTEGER,
    WaitlistCount INTEGER,
    IsLiveStreamed BOOLEAN,
    StreamUrl TEXT,
    RecordingUrl TEXT,
    Description TEXT,
    TrackName TEXT,
    Language TEXT,
    SponsorName TEXT,
    Category TEXT,
    IsKeynote BOOLEAN,
    CreatedByUserId INTEGER,
    CreatedTimestamp DATETIME,
    UpdatedByUserId INTEGER,
    UpdatedTimestamp DATETIME
);

INSERT INTO event_sessions VALUES (4001, 501, 'Opening Keynote', '2025-02-01 09:00:00', '2025-02-01 10:00:00', 20, 'Main Hall', 500, 480, 20, 1, 'https://stream.example.com/keynote', NULL, 'Kickoff for the conference', 'General', 'English', 'TechCorp', 'Keynote', 1, 5, '2025-01-15 12:00:00', 5, '2025-01-20 08:30:00');
INSERT INTO event_sessions VALUES (4002, 501, 'AI Workshop', '2025-02-01 10:30:00', '2025-02-01 12:30:00', 21, 'Room A', 100, 95, 5, 0, NULL, NULL, 'Hands‑on AI techniques', 'Workshops', 'English', 'DataLabs', 'Workshop', 0, 6, '2025-01-16 09:15:00', 6, '2025-01-22 11:00:00');
INSERT INTO event_sessions VALUES (4003, 502, 'Panel Discussion', '2025-02-02 14:00:00', '2025-02-02 15:30:00', 22, 'Room B', 150, 140, 10, 1, 'https://stream.example.com/panel', 'https://recordings.example.com/panel', 'Future of Cloud Computing', 'Panels', 'English', 'CloudInc', 'Panel', 0, 7, '2025-01-17 14:45:00', 7, '2025-01-23 13:20:00');

-- Knowledge base contributions
CREATE TABLE knowledge_base_contributions
(
    ContributionId INTEGER PRIMARY KEY,
    ArticleId INTEGER,
    ContributorUserId INTEGER,
    ContributionType TEXT,
    ContributionDate DATETIME,
    Title TEXT,
    Summary TEXT,
    Content TEXT,
    RevisionNumber INTEGER,
    IsApproved BOOLEAN,
    ApprovedByUserId INTEGER,
    ApprovalDate DATETIME,
    Tags TEXT,
    WordCount INTEGER,
    ReadingTimeMinutes INTEGER,
    Language TEXT,
    SourceUrl TEXT,
    IsExternal BOOLEAN,
    CommentCount INTEGER,
    RatingScore INTEGER,
    LastModifiedTimestamp DATETIME
);

INSERT INTO knowledge_base_contributions VALUES (6001, 8001, 30, 'Edit', '2025-01-20 10:00:00', 'How to reset password', 'Steps to reset a forgotten password', '1. Go to login page 2. Click Forgot Password ...', 3, 1, 31, '2025-01-20 12:00:00', 'password,reset', 250, 3, 'English', NULL, 0, 5, 4, '2025-01-20 12:00:00');
INSERT INTO knowledge_base_contributions VALUES (6002, 8002, 32, 'NewArticle', '2025-01-22 09:30:00', 'Understanding API throttling', 'Overview of throttling mechanisms', 'Throttling limits are imposed to protect ...', 1, 0, NULL, NULL, 'api,throttling', 400, 5, 'English', NULL, 0, 0, NULL, '2025-01-22 09:30:00');
INSERT INTO knowledge_base_contributions VALUES (6003, 8003, 33, 'Translation', '2025-01-23 14:15:00', 'Cómo configurar la autenticación', 'Guía paso a paso', 'Para configurar la autenticación ...', 2, 1, 34, '2025-01-23 15:00:00', 'autenticacion,configuracion', 300, 4, 'Spanish', NULL, 0, 2, 5, '2025-01-23 15:00:00');

-- Marketing assets metadata
CREATE TABLE marketing_assets_metadata
(
    AssetId INTEGER PRIMARY KEY,
    AssetType TEXT,
    FileName TEXT,
    FileSizeBytes INTEGER,
    MimeType TEXT,
    UploadedByUserId INTEGER,
    UploadDate DATETIME,
    CampaignId INTEGER,
    IsActive BOOLEAN,
    ExpirationDate DATE,
    WidthPx INTEGER,
    HeightPx INTEGER,
    DurationSeconds INTEGER,
    ResolutionDpi INTEGER,
    ColorMode TEXT,
    Tags TEXT,
    Description TEXT,
    UsageCount INTEGER,
    LastAccessed DATETIME,
    OwnerDepartment TEXT
);

INSERT INTO marketing_assets_metadata VALUES (9001, 'Image', 'banner_q1.png', 245678, 'image/png', 40, '2025-01-10 08:00:00', 110, 1, '2025-06-30', 1200, 400, NULL, 300, 'RGB', 'banner,q1,2025', 'Quarter 1 promotional banner', 15, '2025-01-20 10:00:00', 'Marketing');
INSERT INTO marketing_assets_metadata VALUES (9002, 'Video', 'intro_product.mp4', 10485760, 'video/mp4', 41, '2025-01-12 09:30:00', 111, 1, NULL, NULL, NULL, 180, 720, 'RGB', 'intro,product,2025', 'Product introduction video', 8, '2025-01-22 14:45:00', 'ProductTeam');
INSERT INTO marketing_assets_metadata VALUES (9003, 'Document', 'pricing_sheet.pdf', 53248, 'application/pdf', 42, '2025-01-15 11:20:00', 112, 0, '2025-04-30', NULL, NULL, NULL, NULL, 'CMYK', 'pricing,2025', 'Pricing details for Q2', 0, '2025-01-15 11:20:00', 'Finance');

-- API client usage logs
CREATE TABLE api_client_usage
(
    UsageId INTEGER PRIMARY KEY,
    ClientId INTEGER,
    ApiEndpoint TEXT,
    RequestMethod TEXT,
    Timestamp DATETIME,
    ResponseStatusCode INTEGER,
    LatencyMs INTEGER,
    RequestSizeBytes INTEGER,
    ResponseSizeBytes INTEGER,
    AuthTokenId INTEGER,
    IpAddress TEXT,
    UserAgent TEXT,
    IsSuccessful BOOLEAN,
    ErrorCode INTEGER,
    ErrorMessage TEXT,
    RetryCount INTEGER,
    QuotaRemaining INTEGER,
    PlanId INTEGER,
    BillingPeriod TEXT,
    CostCenter TEXT,
    Notes TEXT,
    CreatedTimestamp DATETIME
);

INSERT INTO api_client_usage VALUES (11001, 5001, '/v1/users', 'GET', '2025-01-25 13:00:00', 200, 120, 0, 1024, 3001, '192.168.1.10', 'Mozilla/5.0', 1, NULL, NULL, 0, 9500, 3, '2025-01', 'CC101', 'Normal request', '2025-01-25 13:00:00');
INSERT INTO api_client_usage VALUES (11002, 5002, '/v1/orders', 'POST', '2025-01-25 13:05:00', 201, 250, 512, 2048, 3002, '192.168.1.11', 'curl/7.68.0', 1, NULL, NULL, 0, 8500, 4, '2025-01', 'CC102', 'Order creation', '2025-01-25 13:05:00');
INSERT INTO api_client_usage VALUES (11003, 5003, '/v1/payments', 'POST', '2025-01-25 13:10:00', 500, 500, 1024, 0, NULL, '192.168.1.12', 'PostmanRuntime/7.26.8', 0, 1001, 'Invalid token', 1, 7500, 2, '2025-01', 'CC103', 'Auth failure', '2025-01-25 13:10:00');

-- Learning assessment results
CREATE TABLE learning_assessment_results
(
    ResultId INTEGER PRIMARY KEY,
    LearnerUserId INTEGER,
    AssessmentId INTEGER,
    AttemptNumber INTEGER,
    StartTimestamp DATETIME,
    EndTimestamp DATETIME,
    Score INTEGER,
    MaxScore INTEGER,
    PercentCorrect INTEGER,
    TimeTakenSeconds INTEGER,
    IsPassed BOOLEAN,
    PassedOnFirstAttempt BOOLEAN,
    HintUsedCount INTEGER,
    RetryCount INTEGER,
    ProctoringId INTEGER,
    DeviceId INTEGER,
    Location TEXT,
    FeedbackComments TEXT,
    CertificateIssued BOOLEAN,
    CertificateId TEXT,
    IssuedDate DATE,
    ExpirationDate DATE,
    ReviewerUserId INTEGER
);

INSERT INTO learning_assessment_results VALUES (21001, 6001, 7001, 1, '2025-01-26 09:00:00', '2025-01-26 09:30:00', 85, 100, 85, 1800, 1, 1, 0, 0, NULL, 9001, 'Online', 'Well done', 1, 'CERT-001', '2025-01-27', NULL, 50);
INSERT INTO learning_assessment_results VALUES (21002, 6002, 7002, 2, '2025-01-27 10:15:00', '2025-01-27 11:00:00', 70, 100, 70, 2700, 0, 0, 2, 1, NULL, 9002, 'Remote', 'Needs improvement on topic X', 0, NULL, NULL, NULL, 51);
INSERT INTO learning_assessment_results VALUES (21003, 6003, 7003, 1, '2025-01-28 14:45:00', '2025-01-28 15:20:00', 92, 100, 92, 2100, 1, 1, 0, 0, NULL, 9003, 'Campus', 'Excellent grasp', 1, 'CERT-002', '2025-01-29', NULL, 52);