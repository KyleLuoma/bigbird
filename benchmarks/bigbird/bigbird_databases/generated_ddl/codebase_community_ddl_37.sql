-- Table storing supplemental resources linked to learning modules
CREATE TABLE learning_module_resources
(
    Id INTEGER PRIMARY KEY,
    ModuleId INTEGER,
    ResourceType TEXT,
    Url TEXT,
    Title TEXT,
    Description TEXT,
    FileSizeBytes INTEGER,
    MimeType TEXT,
    LanguageCode TEXT,
    UploadedByUserId INTEGER,
    UploadDate DATETIME,
    IsActive INTEGER,
    AccessLevel TEXT,
    Version INTEGER,
    Checksum TEXT,
    LicenseKey TEXT,
    ExpirationDate DATETIME,
    DurationSeconds INTEGER,
    ThumbnailUrl TEXT,
    Tags TEXT,
    MetadataJson TEXT
);
INSERT INTO learning_module_resources (Id, ModuleId, ResourceType, Url, Title, Description, FileSizeBytes, MimeType, LanguageCode, UploadedByUserId, UploadDate, IsActive, AccessLevel, Version, Checksum, LicenseKey, ExpirationDate, DurationSeconds, ThumbnailUrl, Tags, MetadataJson) VALUES (1, 101, 'video', 'https://example.com/video1.mp4', 'Intro Video', 'Introductory video for module', 10485760, 'video/mp4', 'en', 12, '2023-01-10 08:00:00', 1, 'public', 1, 'abc123', 'LIC001', '2024-01-10 00:00:00', 300, 'https://example.com/thumb1.jpg', 'intro,video', '{"quality":"hd"}');
INSERT INTO learning_module_resources (Id, ModuleId, ResourceType, Url, Title, Description, FileSizeBytes, MimeType, LanguageCode, UploadedByUserId, UploadDate, IsActive, AccessLevel, Version, Checksum, LicenseKey, ExpirationDate, DurationSeconds, ThumbnailUrl, Tags, MetadataJson) VALUES (2, 101, 'pdf', 'https://example.com/guide1.pdf', 'Module Guide', 'Detailed guide document', 2097152, 'application/pdf', 'en', 12, '2023-01-09 14:30:00', 1, 'public', 1, 'def456', 'LIC001', '2024-01-10 00:00:00', 0, 'https://example.com/thumb2.jpg', 'guide,document', '{"pages":50}');
INSERT INTO learning_module_resources (Id, ModuleId, ResourceType, Url, Title, Description, FileSizeBytes, MimeType, LanguageCode, UploadedByUserId, UploadDate, IsActive, AccessLevel, Version, Checksum, LicenseKey, ExpirationDate, DurationSeconds, ThumbnailUrl, Tags, MetadataJson) VALUES (3, 102, 'audio', 'https://example.com/podcast1.mp3', 'Podcast Episode', 'First episode audio', 5242880, 'audio/mpeg', 'en', 15, '2023-02-01 10:15:00', 1, 'restricted', 1, 'ghi789', 'LIC002', '2025-02-01 00:00:00', 1800, 'https://example.com/thumb3.jpg', 'podcast,audio', '{"quality":"high"}');

-- Table tracking partner organization attendance at events
CREATE TABLE partner_event_attendance
(
    Id INTEGER PRIMARY KEY,
    EventId INTEGER,
    PartnerId INTEGER,
    ContactName TEXT,
    ContactEmail TEXT,
    AttendanceStatus TEXT,
    RSVPDate DATETIME,
    CheckInTime DATETIME,
    BadgeNumber TEXT,
    SeatsReserved INTEGER,
    MealPreference TEXT,
    AccommodationRequired INTEGER,
    ArrivalDate DATETIME,
    DepartureDate DATETIME,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    PaymentStatus TEXT,
    InvoiceNumber TEXT,
    DiscountCode TEXT,
    FeedbackScore INTEGER,
    SurveyCompleted INTEGER
);
INSERT INTO partner_event_attendance (Id, EventId, PartnerId, ContactName, ContactEmail, AttendanceStatus, RSVPDate, CheckInTime, BadgeNumber, SeatsReserved, MealPreference, AccommodationRequired, ArrivalDate, DepartureDate, Notes, CreatedAt, UpdatedAt, PaymentStatus, InvoiceNumber, DiscountCode, FeedbackScore, SurveyCompleted) VALUES (1, 2001, 501, 'Alice Smith', 'alice@example.com', 'confirmed', '2023-03-01 09:00:00', '2023-03-15 08:45:00', 'B123', 5, 'vegetarian', 1, '2023-03-14 12:00:00', '2023-03-16 18:00:00', 'N/A', '2023-02-20 10:00:00', '2023-02-20 10:00:00', 'paid', 'INV1001', 'DISC10', 9, 1);
INSERT INTO partner_event_attendance (Id, EventId, PartnerId, ContactName, ContactEmail, AttendanceStatus, RSVPDate, CheckInTime, BadgeNumber, SeatsReserved, MealPreference, AccommodationRequired, ArrivalDate, DepartureDate, Notes, CreatedAt, UpdatedAt, PaymentStatus, InvoiceNumber, DiscountCode, FeedbackScore, SurveyCompleted) VALUES (2, 2001, 502, 'Bob Jones', 'bob@example.com', 'waitlist', '2023-03-02 11:30:00', NULL, 'B124', 2, 'none', 0, NULL, NULL, 'Will confirm later', '2023-02-21 11:00:00', '2023-02-21 11:00:00', 'pending', 'INV1002', '', NULL, 0);
INSERT INTO partner_event_attendance (Id, EventId, PartnerId, ContactName, ContactEmail, AttendanceStatus, RSVPDate, CheckInTime, BadgeNumber, SeatsReserved, MealPreference, AccommodationRequired, ArrivalDate, DepartureDate, Notes, CreatedAt, UpdatedAt, PaymentStatus, InvoiceNumber, DiscountCode, FeedbackScore, SurveyCompleted) VALUES (3, 2002, 503, 'Carol Lee', 'carol@example.com', 'canceled', '2023-04-10 14:00:00', NULL, 'B125', 0, 'vegan', 0, NULL, NULL, 'Cancelled due to travel', '2023-03-01 09:30:00', '2023-03-01 09:30:00', 'refunded', 'INV1003', 'DISC5', NULL, 0);

-- Table defining scheduled maintenance for devices
CREATE TABLE device_maintenance_schedule
(
    Id INTEGER PRIMARY KEY,
    DeviceId INTEGER,
    ScheduledDate DATETIME,
    MaintenanceType TEXT,
    TechnicianId INTEGER,
    EstimatedDurationMinutes INTEGER,
    ActualDurationMinutes INTEGER,
    PartsRequired TEXT,
    PartsUsed TEXT,
    Cost DECIMAL,
    MaintenanceStatus TEXT,
    Remarks TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    NextDueDate DATETIME,
    MaintenanceLevel TEXT,
    Priority INTEGER,
    WarrantyCovered INTEGER,
    ServiceProvider TEXT,
    ServiceContractId INTEGER,
    FollowUpNeeded INTEGER,
    FollowUpDate DATETIME
);
INSERT INTO device_maintenance_schedule (Id, DeviceId, ScheduledDate, MaintenanceType, TechnicianId, EstimatedDurationMinutes, ActualDurationMinutes, PartsRequired, PartsUsed, Cost, MaintenanceStatus, Remarks, CreatedAt, UpdatedAt, NextDueDate, MaintenanceLevel, Priority, WarrantyCovered, ServiceProvider, ServiceContractId, FollowUpNeeded, FollowUpDate) VALUES (1, 3001, '2023-05-01 08:00:00', 'firmware_update', 45, 60, 45, 'firmware_v2.bin', 'firmware_v2.bin', 0.00, 'completed', 'Update successful', '2023-04-20 10:00:00', '2023-05-01 09:45:00', '2024-05-01 08:00:00', 'critical', 1, 1, 'TechCo', 9001, 0, NULL);
INSERT INTO device_maintenance_schedule (Id, DeviceId, ScheduledDate, MaintenanceType, TechnicianId, EstimatedDurationMinutes, ActualDurationMinutes, PartsRequired, PartsUsed, Cost, MaintenanceStatus, Remarks, CreatedAt, UpdatedAt, NextDueDate, MaintenanceLevel, Priority, WarrantyCovered, ServiceProvider, ServiceContractId, FollowUpNeeded, FollowUpDate) VALUES (2, 3002, '2023-06-15 13:30:00', 'hardware_inspection', 46, 30, 35, 'thermal_pad,fan', 'thermal_pad,fan', 150.00, 'completed', 'Replaced fan', '2023-06-01 11:00:00', '2023-06-15 14:05:00', '2024-06-15 13:30:00', 'standard', 2, 0, 'RepairPlus', 9002, 1, '2023-06-20 10:00:00');
INSERT INTO device_maintenance_schedule (Id, DeviceId, ScheduledDate, MaintenanceType, TechnicianId, EstimatedDurationMinutes, ActualDurationMinutes, PartsRequired, PartsUsed, Cost, MaintenanceStatus, Remarks, CreatedAt, UpdatedAt, NextDueDate, MaintenanceLevel, Priority, WarrantyCovered, ServiceProvider, ServiceContractId, FollowUpNeeded, FollowUpDate) VALUES (3, 3003, '2023-07-10 09:00:00', 'calibration', 47, 45, NULL, 'calibration_kit', NULL, 0.00, 'scheduled', 'Pending calibration', '2023-06-25 15:00:00', '2023-06-25 15:00:00', '2024-07-10 09:00:00', 'standard', 3, 1, 'CalibTech', 9003, 0, NULL);

-- Table recording content licensing agreements
CREATE TABLE content_license_agreements
(
    Id INTEGER PRIMARY KEY,
    ContentId INTEGER,
    LicenseeId INTEGER,
    LicenseType TEXT,
    EffectiveDate DATETIME,
    ExpirationDate DATETIME,
    Territory TEXT,
    RoyaltyPercentage DECIMAL,
    FixedFee DECIMAL,
    PaymentFrequency TEXT,
    RenewalOption TEXT,
    TerminationClause TEXT,
    IsExclusive INTEGER,
    RightsGranted TEXT,
    RightsReserved TEXT,
    GoverningLaw TEXT,
    SignatureDate DATETIME,
    SignedBy TEXT,
    AmendmentCount INTEGER,
    LastAmendmentDate DATETIME,
    LicenseStatus TEXT,
    Notes TEXT
);
INSERT INTO content_license_agreements (Id, ContentId, LicenseeId, LicenseType, EffectiveDate, ExpirationDate, Territory, RoyaltyPercentage, FixedFee, PaymentFrequency, RenewalOption, TerminationClause, IsExclusive, RightsGranted, RightsReserved, GoverningLaw, SignatureDate, SignedBy, AmendmentCount, LastAmendmentDate, LicenseStatus, Notes) VALUES (1, 4001, 601, 'exclusive', '2023-01-01 00:00:00', '2025-12-31 23:59:59', 'global', 5.0, 10000.00, 'annual', 'auto', '30_day_notice', 1, 'distribution,edit', 'reproduction', 'NY', '2022-12-15 10:00:00', 'John Doe', 0, NULL, 'active', 'Initial agreement');
INSERT INTO content_license_agreements (Id, ContentId, LicenseeId, LicenseType, EffectiveDate, ExpirationDate, Territory, RoyaltyPercentage, FixedFee, PaymentFrequency, RenewalOption, TerminationClause, IsExclusive, RightsGranted, RightsReserved, GoverningLaw, SignatureDate, SignedBy, AmendmentCount, LastAmendmentDate, LicenseStatus, Notes) VALUES (2, 4002, 602, 'non_exclusive', '2023-06-01 00:00:00', '2024-05-31 23:59:59', 'EU', 2.5, 5000.00, 'monthly', 'manual', 'termination_on_breach', 0, 'viewing', 'commercial_use', 'DE', '2023-05-20 14:30:00', 'Jane Smith', 1, '2024-01-10 09:00:00', 'active', 'Amended to extend term');
INSERT INTO content_license_agreements (Id, ContentId, LicenseeId, LicenseType, EffectiveDate, ExpirationDate, Territory, RoyaltyPercentage, FixedFee, PaymentFrequency, RenewalOption, TerminationClause, IsExclusive, RightsGranted, RightsReserved, GoverningLaw, SignatureDate, SignedBy, AmendmentCount, LastAmendmentDate, LicenseStatus, Notes) VALUES (3, 4003, 603, 'royalty_free', '2022-03-15 00:00:00', '2023-03-14 23:59:59', 'US', 0.0, 0.00, 'none', 'none', 'none', 0, 'internal_use', 'none', 'CA', '2022-03-01 11:45:00', 'Mike Lee', 0, NULL, 'expired', 'One year pilot');

-- Table for reviews of advertiser creatives
CREATE TABLE advertiser_creative_reviews
(
    Id INTEGER PRIMARY KEY,
    CreativeId INTEGER,
    ReviewerUserId INTEGER,
    ReviewDate DATETIME,
    Rating INTEGER,
    Comments TEXT,
    ApprovalStatus TEXT,
    SuggestedChanges TEXT,
    ReviewDurationMinutes INTEGER,
    Platform TEXT,
    AudienceSegment TEXT,
    ClickThroughRate DECIMAL,
    ConversionRate DECIMAL,
    CostPerClick DECIMAL,
    CostPerConversion DECIMAL,
    BudgetAllocated DECIMAL,
    BudgetUsed DECIMAL,
    CampaignId INTEGER,
    CreativeVersion INTEGER,
    ReviewRound INTEGER,
    FollowUpRequired INTEGER,
    FollowUpDate DATETIME
);
INSERT INTO advertiser_creative_reviews (Id, CreativeId, ReviewerUserId, ReviewDate, Rating, Comments, ApprovalStatus, SuggestedChanges, ReviewDurationMinutes, Platform, AudienceSegment, ClickThroughRate, ConversionRate, CostPerClick, CostPerConversion, BudgetAllocated, BudgetUsed, CampaignId, CreativeVersion, ReviewRound, FollowUpRequired, FollowUpDate) VALUES (1, 8001, 71, '2023-08-01 10:15:00', 4, 'Good visual but CTA weak', 'pending', 'Improve CTA text', 45, 'web', 'young_adults', 0.025, 0.003, 0.50, 5.00, 2000.00, 1500.00, 9001, 1, 1, 1, '2023-08-10 09:00:00');
INSERT INTO advertiser_creative_reviews (Id, CreativeId, ReviewerUserId, ReviewDate, Rating, Comments, ApprovalStatus, SuggestedChanges, ReviewDurationMinutes, Platform, AudienceSegment, ClickThroughRate, ConversionRate, CostPerClick, CostPerConversion, BudgetAllocated, BudgetUsed, CampaignId, CreativeVersion, ReviewRound, FollowUpRequired, FollowUpDate) VALUES (2, 8002, 72, '2023-08-02 14:30:00', 5, 'Excellent performance', 'approved', '', 30, 'mobile', 'professionals', 0.040, 0.006, 0.45, 4.80, 3000.00, 3000.00, 9002, 2, 1, 0, NULL);
INSERT INTO advertiser_creative_reviews (Id, CreativeId, ReviewerUserId, ReviewDate, Rating, Comments, ApprovalStatus, SuggestedChanges, ReviewDurationMinutes, Platform, AudienceSegment, ClickThroughRate, ConversionRate, CostPerClick, CostPerConversion, BudgetAllocated, BudgetUsed, CampaignId, CreativeVersion, ReviewRound, FollowUpRequired, FollowUpDate) VALUES (3, 8003, 73, '2023-08-03 09:45:00', 3, 'Image low resolution', 'rejected', 'Replace image with higher resolution', 60, 'social', 'students', 0.015, 0.001, 0.60, 6.00, 1500.00, 500.00, 9003, 1, 2, 1, '2023-08-12 11:00:00');

-- Table of labels attached to knowledge graph nodes
CREATE TABLE knowledge_graph_labels
(
    Id INTEGER PRIMARY KEY,
    NodeId INTEGER,
    Label TEXT,
    LanguageCode TEXT,
    CreatedByUserId INTEGER,
    CreatedAt DATETIME,
    UpdatedByUserId INTEGER,
    UpdatedAt DATETIME,
    ConfidenceScore DECIMAL,
    Source TEXT,
    IsPrimary INTEGER,
    IsDeprecated INTEGER,
    DeprecationReason TEXT,
    SynonymGroupId INTEGER,
    TagCategory TEXT,
    VisibilityScope TEXT,
    AssociatedEntityId INTEGER,
    MetadataJson TEXT,
    ImportBatchId INTEGER,
    ApprovalStatus TEXT,
    ReviewComments TEXT,
    Version INTEGER
);
INSERT INTO knowledge_graph_labels (Id, NodeId, Label, LanguageCode, CreatedByUserId, CreatedAt, UpdatedByUserId, UpdatedAt, ConfidenceScore, Source, IsPrimary, IsDeprecated, DeprecationReason, SynonymGroupId, TagCategory, VisibilityScope, AssociatedEntityId, MetadataJson, ImportBatchId, ApprovalStatus, ReviewComments, Version) VALUES (1, 10001, 'ArtificialIntelligence', 'en', 81, '2023-01-05 12:00:00', 81, '2023-01-05 12:00:00', 0.98, 'auto', 1, 0, NULL, 10, 'technology', 'public', NULL, '{"domain":"computer_science"}', 5001, 'approved', '', 1);
INSERT INTO knowledge_graph_labels (Id, NodeId, Label, LanguageCode, CreatedByUserId, CreatedAt, UpdatedByUserId, UpdatedAt, ConfidenceScore, Source, IsPrimary, IsDeprecated, DeprecationReason, SynonymGroupId, TagCategory, VisibilityScope, AssociatedEntityId, MetadataJson, ImportBatchId, ApprovalStatus, ReviewComments, Version) VALUES (2, 10002, 'MachineLearning', 'en', 82, '2023-02-10 09:30:00', 82, '2023-02-10 09:30:00', 0.95, 'manual', 0, 0, NULL, 10, 'technology', 'public', NULL, '{"domain":"computer_science"}', 5002, 'approved', '', 1);
INSERT INTO knowledge_graph_labels (Id, NodeId, Label, LanguageCode, CreatedByUserId, CreatedAt, UpdatedByUserId, UpdatedAt, ConfidenceScore, Source, IsPrimary, IsDeprecated, DeprecationReason, SynonymGroupId, TagCategory, VisibilityScope, AssociatedEntityId, MetadataJson, ImportBatchId, ApprovalStatus, ReviewComments, Version) VALUES (3, 10003, 'DeepLearning', 'en', 83, '2023-03-15 14:45:00', 84, '2023-04-01 10:20:00', 0.92, 'auto', 0, 0, NULL, 10, 'technology', 'public', NULL, '{"domain":"computer_science"}', 5003, 'pending', 'awaiting review', 1);

-- Table describing supplier product catalog entries
CREATE TABLE supplier_product_catalog
(
    Id INTEGER PRIMARY KEY,
    SupplierId INTEGER,
    ProductSKU TEXT,
    ProductName TEXT,
    Category TEXT,
    SubCategory TEXT,
    Description TEXT,
    UnitPrice DECIMAL,
    CurrencyCode TEXT,
    MinimumOrderQty INTEGER,
    LeadTimeDays INTEGER,
    StockLevel INTEGER,
    Discontinued INTEGER,
    WarrantyMonths INTEGER,
    ComplianceCertifications TEXT,
    WeightKg DECIMAL,
    DimensionsCm TEXT,
    ImageUrl TEXT,
    DataSheetUrl TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Status TEXT,
    Notes TEXT
);
INSERT INTO supplier_product_catalog (Id, SupplierId, ProductSKU, ProductName, Category, SubCategory, Description, UnitPrice, CurrencyCode, MinimumOrderQty, LeadTimeDays, StockLevel, Discontinued, WarrantyMonths, ComplianceCertifications, WeightKg, DimensionsCm, ImageUrl, DataSheetUrl, CreatedAt, UpdatedAt, Status, Notes) VALUES (1, 901, 'SKU-001', 'HighSpeed Router', 'Networking', 'Routers', 'Enterprise grade router', 250.00, 'USD', 10, 14, 150, 0, 24, 'FCC,CE', 1.2, '30x20x10', 'https://example.com/img1.jpg', 'https://example.com/ds1.pdf', '2023-01-01 08:00:00', '2023-04-01 09:00:00', 'active', '');
INSERT INTO supplier_product_catalog (Id, SupplierId, ProductSKU, ProductName, Category, SubCategory, Description, UnitPrice, CurrencyCode, MinimumOrderQty, LeadTimeDays, StockLevel, Discontinued, WarrantyMonths, ComplianceCertifications, WeightKg, DimensionsCm, ImageUrl, DataSheetUrl, CreatedAt, UpdatedAt, Status, Notes) VALUES (2, 902, 'SKU-002', 'Solid State Drive 1TB', 'Storage', 'SSD', '1TB NVMe SSD', 120.00, 'USD', 20, 7, 300, 0, 12, 'RoHS', 0.08, '8x6x1', 'https://example.com/img2.jpg', 'https://example.com/ds2.pdf', '2023-02-15 10:30:00', '2023-05-10 11:45:00', 'active', '');
INSERT INTO supplier_product_catalog (Id, SupplierId, ProductSKU, ProductName, Category, SubCategory, Description, UnitPrice, CurrencyCode, MinimumOrderQty, LeadTimeDays, StockLevel, Discontinued, WarrantyMonths, ComplianceCertifications, WeightKg, DimensionsCm, ImageUrl, DataSheetUrl, CreatedAt, UpdatedAt, Status, Notes) VALUES (3, 903, 'SKU-003', 'Wireless Mouse', 'Peripherals', 'Mouse', 'Ergonomic wireless mouse', 25.00, 'USD', 50, 5, 500, 0, 6, 'None', 0.09, '10x6x4', 'https://example.com/img3.jpg', 'https://example.com/ds3.pdf', '2023-03-20 14:00:00', '2023-06-01 15:20:00', 'active', 'Best seller');

-- Table defining a whitelist of IP addresses for site access
CREATE TABLE site_access_whitelist
(
    Id INTEGER PRIMARY KEY,
    IPAddress TEXT,
    CIDRRange TEXT,
    Description TEXT,
    AddedByUserId INTEGER,
    AddedAt DATETIME,
    ExpirationDate DATETIME,
    IsPermanent INTEGER,
    ReasonCode TEXT,
    Department TEXT,
    ContactPerson TEXT,
    ContactEmail TEXT,
    ApprovedByUserId INTEGER,
    ApprovedAt DATETIME,
    RevokedByUserId INTEGER,
    RevokedAt DATETIME,
    RevocationReason TEXT,
    Notes TEXT,
    AuditLogId INTEGER,
    LastCheckedAt DATETIME,
    Status TEXT,
    Tag TEXT
);
INSERT INTO site_access_whitelist (Id, IPAddress, CIDRRange, Description, AddedByUserId, AddedAt, ExpirationDate, IsPermanent, ReasonCode, Department, ContactPerson, ContactEmail, ApprovedByUserId, ApprovedAt, RevokedByUserId, RevokedAt, RevocationReason, Notes, AuditLogId, LastCheckedAt, Status, Tag) VALUES (1, '192.168.1.10', '192.168.1.0/24', 'Office workstation', 101, '2023-01-10 09:00:00', NULL, 1, 'internal', 'IT', 'Alice', 'alice@example.com', 102, '2023-01-10 09:15:00', NULL, NULL, NULL, '', 2001, '2023-06-01 12:00:00', 'active', 'office');
INSERT INTO site_access_whitelist (Id, IPAddress, CIDRRange, Description, AddedByUserId, AddedAt, ExpirationDate, IsPermanent, ReasonCode, Department, ContactPerson, ContactEmail, ApprovedByUserId, ApprovedAt, RevokedByUserId, RevokedAt, RevocationReason, Notes, AuditLogId, LastCheckedAt, Status, Tag) VALUES (2, '203.0.113.45', NULL, 'Vendor VPN', 103, '2023-02-20 11:30:00', '2023-08-20 00:00:00', 0, 'vendor', 'Procurement', 'Bob', 'bob@example.com', 104, '2023-02-20 12:00:00', NULL, NULL, NULL, '', 2002, '2023-05-15 08:45:00', 'active', 'vpn');
INSERT INTO site_access_whitelist (Id, IPAddress, CIDRRange, Description, AddedByUserId, AddedAt, ExpirationDate, IsPermanent, ReasonCode, Department, ContactPerson, ContactEmail, ApprovedByUserId, ApprovedAt, RevokedByUserId, RevokedAt, RevocationReason, Notes, AuditLogId, LastCheckedAt, Status, Tag) VALUES (3, '10.0.0.5', '10.0.0.0/8', 'Legacy system', 105, '2022-12-01 08:15:00', NULL, 1, 'legacy', 'Operations', 'Carol', 'carol@example.com', 106, '2022-12-01 08:45:00', 107, '2023-09-01 10:00:00', 'decommissioned', 'System retired', 2003, '2023-08-30 16:20:00', 'revoked', 'legacy');

-- Table collecting user responses to content surveys
CREATE TABLE user_content_surveys
(
    Id INTEGER PRIMARY KEY,
    SurveyId INTEGER,
    UserId INTEGER,
    ContentId INTEGER,
    SurveyDate DATETIME,
    SatisfactionScore INTEGER,
    DifficultyLevel INTEGER,
    Comments TEXT,
    TimeSpentMinutes INTEGER,
    CompletionStatus TEXT,
    DeviceType TEXT,
    Browser TEXT,
    OS TEXT,
    Latitude DECIMAL,
    Longitude DECIMAL,
    NetworkType TEXT,
    ReferralSource TEXT,
    IncentiveGiven INTEGER,
    IncentiveAmount DECIMAL,
    FollowUpRequired INTEGER,
    FollowUpDate DATETIME,
    SurveyVersion INTEGER
);
INSERT INTO user_content_surveys (Id, SurveyId, UserId, ContentId, SurveyDate, SatisfactionScore, DifficultyLevel, Comments, TimeSpentMinutes, CompletionStatus, DeviceType, Browser, OS, Latitude, Longitude, NetworkType, ReferralSource, IncentiveGiven, IncentiveAmount, FollowUpRequired, FollowUpDate, SurveyVersion) VALUES (1, 3001, 201, 4001, '2023-07-01 10:20:00', 8, 3, 'Very helpful', 15, 'completed', 'desktop', 'chrome', 'windows', 37.7749, -122.4194, 'wifi', 'email', 1, 5.00, 0, NULL, 1);
INSERT INTO user_content_surveys (Id, SurveyId, UserId, ContentId, SurveyDate, SatisfactionScore, DifficultyLevel, Comments, TimeSpentMinutes, CompletionStatus, DeviceType, Browser, OS, Latitude, Longitude, NetworkType, ReferralSource, IncentiveGiven, IncentiveAmount, FollowUpRequired, FollowUpDate, SurveyVersion) VALUES (2, 3002, 202, 4002, '2023-07-02 14:45:00', 6, 4, 'Too technical', 25, 'completed', 'mobile', 'safari', 'ios', 40.7128, -74.0060, 'cellular', 'social', 1, 3.00, 1, '2023-07-10 09:00:00', 1);
INSERT INTO user_content_surveys (Id, SurveyId, UserId, ContentId, SurveyDate, SatisfactionScore, DifficultyLevel, Comments, TimeSpentMinutes, CompletionStatus, DeviceType, Browser, OS, Latitude, Longitude, NetworkType, ReferralSource, IncentiveGiven, IncentiveAmount, FollowUpRequired, FollowUpDate, SurveyVersion) VALUES (3, 3003, 203, 4003, '2023-07-03 08:30:00', 9, 2, 'Clear and concise', 10, 'completed', 'tablet', 'firefox', 'android', 34.0522, -118.2437, 'wifi', 'referral', 0, 0.00, 0, NULL, 1);

-- Table linking tags to forum threads
CREATE TABLE forum_thread_tags
(
    Id INTEGER PRIMARY KEY,
    ThreadId INTEGER,
    Tag TEXT,
    AppliedByUserId INTEGER,
    AppliedAt DATETIME,
    Source TEXT,
    ConfidenceScore DECIMAL,
    IsAutoGenerated INTEGER,
    Reason TEXT,
    ContextSnippet TEXT,
    LanguageCode TEXT,
    Category TEXT,
    SubCategory TEXT,
    TagWeight INTEGER,
    TagStatus TEXT,
    ReviewUserId INTEGER,
    ReviewDate DATETIME,
    ReviewComments TEXT,
    Version INTEGER,
    DeprecatedAt DATETIME,
    ReplacementTag TEXT,
    Notes TEXT
);
INSERT INTO forum_thread_tags (Id, ThreadId, Tag, AppliedByUserId, AppliedAt, Source, ConfidenceScore, IsAutoGenerated, Reason, ContextSnippet, LanguageCode, Category, SubCategory, TagWeight, TagStatus, ReviewUserId, ReviewDate, ReviewComments, Version, DeprecatedAt, ReplacementTag, Notes) VALUES (1, 5001, 'sql', 301, '2023-06-01 12:00:00', 'manual', 0.99, 0, 'relevant', 'How to write sql queries', 'en', 'technology', 'databases', 100, 'active', 302, '2023-06-02 09:00:00', '', 1, NULL, NULL, '');
INSERT INTO forum_thread_tags (Id, ThreadId, Tag, AppliedByUserId, AppliedAt, Source, ConfidenceScore, IsAutoGenerated, Reason, ContextSnippet, LanguageCode, Category, SubCategory, TagWeight, TagStatus, ReviewUserId, ReviewDate, ReviewComments, Version, DeprecatedAt, ReplacementTag, Notes) VALUES (2, 5002, 'python', 303, '2023-06-05 15:30:00', 'auto', 0.85, 1, 'keyword detection', 'Example python code', 'en', 'technology', 'programming', 80, 'active', 304, '2023-06-06 10:20:00', 'Verified relevance', 1, NULL, NULL, '');
INSERT INTO forum_thread_tags (Id, ThreadId, Tag, AppliedByUserId, AppliedAt, Source, ConfidenceScore, IsAutoGenerated, Reason, ContextSnippet, LanguageCode, Category, SubCategory, TagWeight, TagStatus, ReviewUserId, ReviewDate, ReviewComments, Version, DeprecatedAt, ReplacementTag, Notes) VALUES (3, 5003, 'deprecated', 305, '2023-07-01 08:45:00', 'manual', 0.70, 0, 'outdated', 'Legacy function usage', 'en', 'technology', 'legacy', 60, 'deprecated', 306, '2023-07-02 11:00:00', 'Mark for removal', 1, '2024-01-01 00:00:00', 'legacy', 'Will be removed in next release');