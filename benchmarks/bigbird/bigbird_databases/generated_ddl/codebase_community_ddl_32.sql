-- Knowledge base chapters
CREATE TABLE knowledge_base_chapters
(
    ChapterId INTEGER PRIMARY KEY,
    KnowledgeBaseId INTEGER,
    Title TEXT,
    ChapterNumber INTEGER,
    Summary TEXT,
    AuthorId INTEGER,
    CreatedDate DATETIME,
    UpdatedDate DATETIME,
    WordCount INTEGER,
    SectionCount INTEGER,
    IsPublished BOOLEAN,
    LanguageCode TEXT,
    AccessLevel TEXT,
    ReviewStatus TEXT,
    ReviewDate DATETIME,
    ReviewerId INTEGER,
    Category TEXT,
    SubCategory TEXT,
    Tags TEXT,
    EstimatedReadTimeMinutes INTEGER,
    VersionNumber INTEGER,
    ChangeLog TEXT
);

INSERT INTO knowledge_base_chapters VALUES (1, 100, 'Getting Started', 1, 'Introduction to platform', 10, '2023-01-05', '2023-02-01', 1200, 5, 1, 'en', 'public', 'approved', '2023-02-01', 20, 'Setup', 'Basics', 'setup,beginner', 10, 1, 'initial draft');
INSERT INTO knowledge_base_chapters VALUES (2, 100, 'Advanced Features', 2, 'Deep dive into features', 11, '2023-01-15', '2023-02-10', 2500, 8, 0, 'en', 'internal', 'pending', NULL, NULL, 'Features', 'Advanced', 'features,advanced', 20, 1, '');
INSERT INTO knowledge_base_chapters VALUES (3, 101, 'API Overview', 1, 'Overview of API endpoints', 12, '2023-03-01', '2023-03-05', 1800, 6, 1, 'en', 'public', 'approved', '2023-03-05', 22, 'API', 'Reference', 'api,overview', 15, 2, 'added new endpoints');

-- Event sponsors
CREATE TABLE event_sponsors
(
    SponsorId INTEGER PRIMARY KEY,
    EventId INTEGER,
    SponsorName TEXT,
    ContactPerson TEXT,
    ContactEmail TEXT,
    SponsorshipLevel TEXT,
    AmountSponsored DECIMAL,
    ContractStartDate DATETIME,
    ContractEndDate DATETIME,
    LogoUrl TEXT,
    WebsiteUrl TEXT,
    PaymentStatus TEXT,
    InvoiceNumber TEXT,
    TaxId TEXT,
    AddressLine1 TEXT,
    AddressLine2 TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    Country TEXT,
    IsActive BOOLEAN,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO event_sponsors VALUES (1, 5001, 'TechCorp', 'Alice Smith', 'alice@techcorp.com', 'Gold', 50000, '2023-01-01', '2023-12-31', 'http://logo.techcorp.com/logo.png', 'http://techcorp.com', 'Paid', 'INV1001', 'TAX12345', '123 Tech St', '', 'SanFrancisco', 'CA', '94105', 'USA', 1, 'Primary sponsor', '2023-01-01', '2023-01-10');
INSERT INTO event_sponsors VALUES (2, 5002, 'DataSolutions', 'Bob Jones', 'bob@datasolutions.com', 'Silver', 30000, '2023-02-01', '2023-11-30', 'http://logo.datasolutions.com/logo.png', 'http://datasolutions.com', 'Pending', 'INV1002', 'TAX67890', '456 Data Ave', 'Suite 200', 'NewYork', 'NY', '10001', 'USA', 1, '', '2023-02-01', '2023-02-05');
INSERT INTO event_sponsors VALUES (3, 5003, 'CloudNet', 'Carol Lee', 'carol@cloudnet.com', 'Bronze', 15000, '2023-03-15', '2023-09-15', 'http://logo.cloudnet.com/logo.png', 'http://cloudnet.com', 'Paid', 'INV1003', 'TAX11223', '789 Cloud Rd', '', 'Austin', 'TX', '73301', 'USA', 0, 'Sponsor withdrew', '2023-03-15', '2023-04-01');

-- Media transcriptions
CREATE TABLE media_transcriptions
(
    TranscriptionId INTEGER PRIMARY KEY,
    MediaId INTEGER,
    LanguageCode TEXT,
    TranscriberId INTEGER,
    TranscriptionText TEXT,
    WordCount INTEGER,
    DurationSeconds INTEGER,
    AccuracyScore DECIMAL,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsVerified BOOLEAN,
    VerificationDate DATETIME,
    VerifiedBy INTEGER,
    SourceUrl TEXT,
    TranscriptFormat TEXT,
    FileSizeBytes INTEGER,
    StorageLocation TEXT,
    IsPublic BOOLEAN,
    Tags TEXT,
    Category TEXT,
    Notes TEXT,
    LicenseType TEXT,
    RightsHolder TEXT,
    ProjectId INTEGER
);

INSERT INTO media_transcriptions VALUES (1, 2001, 'en', 15, 'This is a sample transcription text', 500, 300, 0.95, '2023-04-01', '2023-04-02', 1, '2023-04-03', 20, 'http://media.example.com/video1.mp4', 'txt', 2048, '/transcripts/2001.txt', 1, 'sample,example', 'Lecture', '', 'CC-BY', 'MediaCorp', 3001);
INSERT INTO media_transcriptions VALUES (2, 2002, 'es', 16, 'Este es un texto de transcripción de ejemplo', 600, 350, 0.92, '2023-04-05', '2023-04-06', 0, NULL, NULL, 'http://media.example.com/video2.mp4', 'srt', 3072, '/transcripts/2002.srt', 0, 'ejemplo,prueba', 'Interview', '', 'AllRightsReserved', 'MediaCo', 3002);
INSERT INTO media_transcriptions VALUES (3, 2003, 'fr', 17, 'Ceci est un texte de transcription exemple', 550, 320, 0.94, '2023-04-10', '2023-04-11', 1, '2023-04-12', 21, 'http://media.example.com/video3.mp4', 'vtt', 2560, '/transcripts/2003.vtt', 1, 'exemple,video', 'Podcast', '', 'CC0', 'MediaGlobal', 3003);

-- Survey responses
CREATE TABLE survey_responses
(
    ResponseId INTEGER PRIMARY KEY,
    SurveyId INTEGER,
    RespondentId INTEGER,
    ResponseDate DATETIME,
    Question1Answer TEXT,
    Question2Answer TEXT,
    Question3Answer TEXT,
    Question4Answer TEXT,
    Question5Answer TEXT,
    Question6Answer TEXT,
    Question7Answer TEXT,
    Question8Answer TEXT,
    Question9Answer TEXT,
    Question10Answer TEXT,
    OverallRating INTEGER,
    Comments TEXT,
    DeviceType TEXT,
    Browser TEXT,
    OperatingSystem TEXT,
    IPAddress TEXT,
    Latitude DECIMAL,
    Longitude DECIMAL,
    IsComplete BOOLEAN,
    SurveyVersion INTEGER,
    CompletionTimeSeconds INTEGER,
    ReferralSource TEXT
);

INSERT INTO survey_responses VALUES (1, 4001, 101, '2023-05-01', 'Yes', 'No', 'Maybe', 'OptionA', 'OptionB', 'OptionC', 'OptionD', 'OptionE', 'OptionF', 'OptionG', 4, 'Good survey', 'Desktop', 'Chrome', 'Windows', '192.168.1.10', 37.7749, -122.4194, 1, 1, 120, 'Email');
INSERT INTO survey_responses VALUES (2, 4001, 102, '2023-05-02', 'No', 'Yes', 'No', 'OptionB', 'OptionA', 'OptionD', 'OptionC', 'OptionF', 'OptionE', 'OptionG', 3, 'Average experience', 'Mobile', 'Safari', 'iOS', '10.0.0.5', 40.7128, -74.0060, 1, 1, 150, 'SocialMedia');
INSERT INTO survey_responses VALUES (3, 4002, 103, '2023-05-03', 'Maybe', 'Maybe', 'Yes', 'OptionC', 'OptionD', 'OptionA', 'OptionB', 'OptionE', 'OptionF', 'OptionG', 5, 'Excellent', 'Tablet', 'Firefox', 'Android', '172.16.0.3', 34.0522, -118.2437, 0, 2, 0, '');

-- Learning path reviews
CREATE TABLE learning_path_reviews
(
    ReviewId INTEGER PRIMARY KEY,
    LearningPathId INTEGER,
    ReviewerUserId INTEGER,
    ReviewDate DATETIME,
    OverallScore INTEGER,
    ContentQualityScore INTEGER,
    DifficultyScore INTEGER,
    UsefulnessScore INTEGER,
    EngagementScore INTEGER,
    Comments TEXT,
    Recommend BOOLEAN,
    TimeSpentHours DECIMAL,
    Completed BOOLEAN,
    CompletionDate DATETIME,
    ReviewVersion INTEGER,
    Tags TEXT,
    LanguageCode TEXT,
    DeviceUsed TEXT,
    BrowserUsed TEXT,
    OSUsed TEXT,
    IPAddress TEXT,
    Latitude DECIMAL,
    Longitude DECIMAL,
    IsPublic BOOLEAN,
    ModeratorNote TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO learning_path_reviews VALUES (1, 6001, 201, '2023-06-01', 5, 5, 3, 4, 5, 'Very helpful learning path', 1, 12.5, 1, '2023-06-05', 1, 'AI,ML', 'en', 'Desktop', 'Chrome', 'Windows', '203.0.113.10', 51.5074, -0.1278, 1, '', '2023-06-01', '2023-06-02');
INSERT INTO learning_path_reviews VALUES (2, 6002, 202, '2023-06-02', 3, 3, 4, 2, 3, 'Content needs improvement', 0, 8.0, 0, NULL, 1, 'DataScience', 'en', 'Mobile', 'Safari', 'iOS', '198.51.100.20', 48.8566, 2.3522, 0, 'Needs revision', '2023-06-02', '2023-06-03');
INSERT INTO learning_path_reviews VALUES (3, 6003, 203, '2023-06-03', 4, 4, 4, 4, 4, 'Good overall', 1, 10.0, 1, '2023-06-07', 2, 'DevOps,Cloud', 'en', 'Tablet', 'Firefox', 'Android', '192.0.2.30', 35.6895, 139.6917, 1, '', '2023-06-03', '2023-06-04');

-- Product pricing tiers
CREATE TABLE product_pricing_tiers
(
    TierId INTEGER PRIMARY KEY,
    ProductId INTEGER,
    TierName TEXT,
    Description TEXT,
    MonthlyPrice DECIMAL,
    AnnualPrice DECIMAL,
    CurrencyCode TEXT,
    MaxUsers INTEGER,
    StorageLimitGB INTEGER,
    SupportLevel TEXT,
    IncludedFeatures TEXT,
    AdditionalUserCost DECIMAL,
    OveragesAllowed BOOLEAN,
    OveragesCostPerGB DECIMAL,
    TrialPeriodDays INTEGER,
    IsDefault BOOLEAN,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsActive BOOLEAN,
    PromoCode TEXT,
    DiscountPercentage DECIMAL,
    BillingCycle TEXT,
    Region TEXT,
    TaxApplicable BOOLEAN,
    MinimumCommitMonths INTEGER,
    Customizable BOOLEAN,
    Notes TEXT
);

INSERT INTO product_pricing_tiers VALUES (1, 7001, 'Basic', 'Entry level tier', 19.99, 199.99, 'USD', 5, 50, 'Standard', 'FeatureA,FeatureB', 5.00, 1, 0.10, 14, 1, '2023-01-01', '2023-01-01', 1, NULL, 0, 'monthly', 'global', 1, 12, 0, '');
INSERT INTO product_pricing_tiers VALUES (2, 7001, 'Pro', 'Professional tier', 49.99, 499.99, 'USD', 25, 200, 'Premium', 'FeatureA,FeatureB,FeatureC', 4.00, 1, 0.08, 30, 0, '2023-01-01', '2023-06-01', 1, 'PRO2023', 10, 'annual', 'global', 1, 12, 1, 'Includes priority support');
INSERT INTO product_pricing_tiers VALUES (3, 7002, 'Enterprise', 'Full feature tier', 99.99, 999.99, 'USD', 100, 1000, 'Enterprise', 'AllFeatures', 3.00, 1, 0.05, 60, 0, '2023-01-01', '2023-03-15', 1, NULL, 0, 'monthly', 'global', 1, 12, 1, 'Custom SLA available');

-- Warehouse audit logs
CREATE TABLE warehouse_audit_logs
(
    LogId INTEGER PRIMARY KEY,
    WarehouseId INTEGER,
    AuditDate DATETIME,
    AuditorId INTEGER,
    Section TEXT,
    ShelfNumber INTEGER,
    ItemId INTEGER,
    QuantityBefore INTEGER,
    QuantityAfter INTEGER,
    Reason TEXT,
    Notes TEXT,
    IsDiscrepancy BOOLEAN,
    DiscrepancyAmount INTEGER,
    ResolutionStatus TEXT,
    ResolvedBy INTEGER,
    ResolutionDate DATETIME,
    IsVerified BOOLEAN,
    VerifiedBy INTEGER,
    VerificationDate DATETIME,
    PhotoUrl TEXT,
    TemperatureCelsius DECIMAL,
    HumidityPercent DECIMAL,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsActive BOOLEAN
);

INSERT INTO warehouse_audit_logs VALUES (1, 8001, '2023-07-01', 301, 'ColdStorage', 12, 5001, 100, 95, 'Routine check', '', 1, 5, 'Pending', NULL, NULL, 0, NULL, NULL, 'http://photos.warehouse.com/8001/1.jpg', -5.0, 70.0, '2023-07-01', '2023-07-01', 1);
INSERT INTO warehouse_audit_logs VALUES (2, 8002, '2023-07-02', 302, 'DryGoods', 5, 5002, 200, 200, 'Stock count', 'All good', 0, 0, 'N/A', NULL, NULL, 1, 303, '2023-07-03', 'http://photos.warehouse.com/8002/2.jpg', 22.5, 45.0, '2023-07-02', '2023-07-02', 1);
INSERT INTO warehouse_audit_logs VALUES (3, 8001, '2023-07-03', 304, 'ColdStorage', 12, 5001, 95, 90, 'Leak detected', 'Leak caused loss', 1, 5, 'Resolved', 305, '2023-07-04', 1, 306, '2023-07-05', 'http://photos.warehouse.com/8001/3.jpg', -4.5, 68.0, '2023-07-03', '2023-07-05', 1);

-- Customer payment methods
CREATE TABLE customer_payment_methods
(
    PaymentMethodId INTEGER PRIMARY KEY,
    CustomerId INTEGER,
    MethodType TEXT,
    Provider TEXT,
    AccountNumberMasked TEXT,
    ExpirationDate DATETIME,
    BillingAddressLine1 TEXT,
    BillingAddressLine2 TEXT,
    BillingCity TEXT,
    BillingState TEXT,
    BillingZipCode TEXT,
    BillingCountry TEXT,
    IsDefault BOOLEAN,
    IsVerified BOOLEAN,
    VerificationDate DATETIME,
    CardholderName TEXT,
    CvvHash TEXT,
    PaymentToken TEXT,
    Status TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    LastUsedAt DATETIME,
    FailureCount INTEGER,
    IsActive BOOLEAN,
    Notes TEXT
);

INSERT INTO customer_payment_methods VALUES (1, 901, 'CreditCard', 'Visa', 'XXXXXXXXXXXX1234', '2025-12-31', '123 Main St', '', 'Springfield', 'IL', '62704', 'USA', 1, 1, '2023-01-10', 'John Doe', 'hash123', 'tokenabc', 'Active', '2023-01-01', '2023-06-01', '2023-06-15', 0, 1, '');
INSERT INTO customer_payment_methods VALUES (2, 902, 'PayPal', 'PayPal', 'user@example.com', NULL, '', '', '', '', '', '', 1, 1, '2023-02-20', 'Jane Smith', '', 'tokenxyz', 'Active', '2023-02-01', '2023-05-20', '2023-05-25', 1, 1, 'First failed attempt');
INSERT INTO customer_payment_methods VALUES (3, 903, 'BankTransfer', 'Chase', 'XXXXXX7890', NULL, '456 Oak Ave', 'Apt 2', 'Metropolis', 'NY', '10001', 'USA', 0, 0, NULL, 'Alice Johnson', '', 'tokenlmn', 'PendingVerification', '2023-03-01', '2023-04-10', NULL, 0, 0, '');

-- Advertiser creative assets
CREATE TABLE advertiser_creative_assets
(
    AssetId INTEGER PRIMARY KEY,
    AdvertiserId INTEGER,
    AssetName TEXT,
    AssetType TEXT,
    FileUrl TEXT,
    ThumbnailUrl TEXT,
    WidthPixels INTEGER,
    HeightPixels INTEGER,
    FileSizeBytes INTEGER,
    MIMEType TEXT,
    UploadDate DATETIME,
    LastModified DATETIME,
    IsActive BOOLEAN,
    CampaignId INTEGER,
    LandingPageUrl TEXT,
    TargetAudience TEXT,
    LanguageCode TEXT,
    CreativeTag TEXT,
    PerformanceScore DECIMAL,
    ClickThroughRate DECIMAL,
    ConversionRate DECIMAL,
    CostPerClick DECIMAL,
    CostPerConversion DECIMAL,
    Notes TEXT,
    ApprovedBy INTEGER,
    ApprovalDate DATETIME,
    IsApproved BOOLEAN,
    RejectionReason TEXT
);

INSERT INTO advertiser_creative_assets VALUES (1, 1001, 'SummerSaleBanner', 'Image', 'http://cdn.ad.com/banners/summer.jpg', 'http://cdn.ad.com/banners/summer_thumb.jpg', 1200, 600, 250000, 'image/jpeg', '2023-08-01', '2023-08-02', 1, 4001, 'http://advertiser.com/summer', 'Adults', 'en', 'Seasonal', 85.5, 0.012, 0.003, 0.50, 5.00, '', 2001, '2023-08-03', 1, '');
INSERT INTO advertiser_creative_assets VALUES (2, 1002, 'WinterPromoVideo', 'Video', 'http://cdn.ad.com/videos/winter.mp4', 'http://cdn.ad.com/videos/winter_thumb.jpg', 1920, 1080, 5000000, 'video/mp4', '2023-09-10', '2023-09-12', 1, 4002, 'http://advertiser.com/winter', 'All', 'en', 'Promo', 78.0, 0.009, 0.002, 0.45, 4.50, '', 2002, '2023-09-13', 1, '');
INSERT INTO advertiser_creative_assets VALUES (3, 1003, 'SpringBannerSVG', 'Image', 'http://cdn.ad.com/banners/spring.svg', 'http://cdn.ad.com/banners/spring_thumb.png', 800, 400, 150000, 'image/svg+xml', '2023-10-05', '2023-10-06', 0, 4003, 'http://advertiser.com/spring', 'YoungAdults', 'en', 'Seasonal', 65.0, 0.007, 0.0015, 0.40, 3.80, 'Pending design review', 2003, '2023-10-07', 0, 'Design not approved');

-- API subscription plans
CREATE TABLE api_subscription_plans
(
    PlanId INTEGER PRIMARY KEY,
    PlanName TEXT,
    Description TEXT,
    MonthlyCost DECIMAL,
    AnnualCost DECIMAL,
    CurrencyCode TEXT,
    MaxRequestsPerMonth INTEGER,
    MaxConcurrentConnections INTEGER,
    RateLimitPerSecond INTEGER,
    IncludedEndpoints TEXT,
    SupportLevel TEXT,
    TrialPeriodDays INTEGER,
    IsFreeTier BOOLEAN,
    RequiresApproval BOOLEAN,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsActive BOOLEAN,
    BillingCycle TEXT,
    Region TEXT,
    TaxApplicable BOOLEAN,
    MinimumCommitMonths INTEGER,
    CustomFeaturesAllowed BOOLEAN,
    SLAResponseTimeMs INTEGER,
    DataRetentionDays INTEGER,
    PromoCode TEXT,
    DiscountPercentage DECIMAL,
    Notes TEXT
);

INSERT INTO api_subscription_plans VALUES (1, 'Free', 'Basic free tier', 0.00, 0.00, 'USD', 10000, 5, 10, 'GET:/status,GET:/info', 'Community', 30, 1, 0, '2023-01-01', '2023-01-01', 1, 'monthly', 'global', 0, 0, 0, 0, 0, NULL, 0, '');
INSERT INTO api_subscription_plans VALUES (2, 'Pro', 'Professional plan with higher limits', 49.99, 499.99, 'USD', 1000000, 50, 100, 'GET:/*,POST:/data', 'Standard', 14, 0, 0, '2023-01-01', '2023-06-01', 1, 'monthly', 'global', 1, 12, 1, 200, 30, 'PRO2023', 10, '');
INSERT INTO api_subscription_plans VALUES (3, 'Enterprise', 'Enterprise level with custom SLAs', 199.99, 1999.99, 'USD', 10000000, 200, 500, 'ALL', 'Premium', 0, 0, 1, '2023-01-01', '2023-03-15', 1, 'annual', 'global', 1, 12, 1, 100, 90, NULL, 0, 'Custom contracts available');