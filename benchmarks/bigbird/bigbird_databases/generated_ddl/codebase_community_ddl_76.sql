-- User social profiles linking external accounts
CREATE TABLE user_social_profiles (
    Id INTEGER NOT NULL PRIMARY KEY,
    UserId INTEGER NULL,
    Platform TEXT NULL,
    AccountHandle TEXT NULL,
    ProfileUrl TEXT NULL,
    CreatedDate DATETIME NULL,
    IsVerified INTEGER NULL,
    FollowersCount INTEGER NULL,
    FollowingCount INTEGER NULL,
    PostsCount INTEGER NULL,
    Bio TEXT NULL,
    Location TEXT NULL,
    LastSynced DATETIME NULL,
    SyncStatus TEXT NULL,
    PrivacySetting TEXT NULL,
    AccessToken TEXT NULL,
    RefreshToken TEXT NULL,
    TokenExpiry DATETIME NULL,
    IsActive INTEGER NULL,
    MetadataJson TEXT NULL,
    FOREIGN KEY (UserId) REFERENCES users (Id) ON UPDATE CASCADE ON DELETE CASCADE
);
INSERT INTO user_social_profiles (Id, UserId, Platform, AccountHandle, ProfileUrl, CreatedDate, IsVerified, FollowersCount, FollowingCount, PostsCount, Bio, Location, LastSynced, SyncStatus, PrivacySetting, AccessToken, RefreshToken, TokenExpiry, IsActive, MetadataJson) VALUES (1, 101, 'Twitter', 'user101', 'https://twitter.com/user101', '2022-05-10 12:00:00', 1, 1500, 200, 350, 'Tech enthusiast', 'NYC', '2023-03-01 08:30:00', 'Synced', 'Public', 'token123', 'ref456', '2023-12-31 23:59:59', 1, '{"key":"value"}');
INSERT INTO user_social_profiles (Id, UserId, Platform, AccountHandle, ProfileUrl, CreatedDate, IsVerified, FollowersCount, FollowingCount, PostsCount, Bio, Location, LastSynced, SyncStatus, PrivacySetting, AccessToken, RefreshToken, TokenExpiry, IsActive, MetadataJson) VALUES (2, 202, 'LinkedIn', 'professional202', 'https://linkedin.com/in/professional202', '2021-11-20 09:15:00', 1, 800, 500, 120, 'Software architect', 'SF', '2023-02-20 14:45:00', 'Synced', 'ConnectionsOnly', 'lktoken789', 'lktref012', '2024-06-30 00:00:00', 1, '{"dept":"engineering"}');
INSERT INTO user_social_profiles (Id, UserId, Platform, AccountHandle, ProfileUrl, CreatedDate, IsVerified, FollowersCount, FollowingCount, PostsCount, Bio, Location, LastSynced, SyncStatus, PrivacySetting, AccessToken, RefreshToken, TokenExpiry, IsActive, MetadataJson) VALUES (3, 303, 'GitHub', 'dev303', 'https://github.com/dev303', '2020-02-01 16:20:00', 0, 2500, 150, 60, 'Open source contributor', 'Berlin', '2023-01-10 10:00:00', 'Pending', 'Private', 'ghtoken345', 'ghref678', '2025-01-01 00:00:00', 1, '{"repos":42}');

-- External resources referenced by posts
CREATE TABLE post_external_resources (
    Id INTEGER NOT NULL PRIMARY KEY,
    PostId INTEGER NULL,
    ResourceType TEXT NULL,
    ResourceUrl TEXT NULL,
    Description TEXT NULL,
    AddedDate DATETIME NULL,
    IsOfficial INTEGER NULL,
    License TEXT NULL,
    AccessLevel TEXT NULL,
    ClickCount INTEGER NULL,
    Rating REAL NULL,
    ReviewerUserId INTEGER NULL,
    ReviewDate DATETIME NULL,
    Metadata TEXT NULL,
    IsActive INTEGER NULL,
    ExpirationDate DATETIME NULL,
    TagList TEXT NULL,
    SourceName TEXT NULL,
    SourceContact TEXT NULL,
    FileSizeBytes INTEGER NULL,
    FOREIGN KEY (PostId) REFERENCES posts (Id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (ReviewerUserId) REFERENCES users (Id) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO post_external_resources (Id, PostId, ResourceType, ResourceUrl, Description, AddedDate, IsOfficial, License, AccessLevel, ClickCount, Rating, ReviewerUserId, ReviewDate, Metadata, IsActive, ExpirationDate, TagList, SourceName, SourceContact, FileSizeBytes) VALUES (1, 5001, 'PDF', 'https://example.com/doc1.pdf', 'Whitepaper on indexing', '2023-01-15 09:00:00', 1, 'CCBY', 'Public', 120, 4.5, 101, '2023-01-20 10:30:00', '{"summary":"indexing"}', 1, NULL, 'search,indexing', 'ExampleCorp', 'info@example.com', 1048576);
INSERT INTO post_external_resources (Id, PostId, ResourceType, ResourceUrl, Description, AddedDate, IsOfficial, License, AccessLevel, ClickCount, Rating, ReviewerUserId, ReviewDate, Metadata, IsActive, ExpirationDate, TagList, SourceName, SourceContact, FileSizeBytes) VALUES (2, 5002, 'Video', 'https://videos.example.com/intro.mp4', 'Intro tutorial', '2023-02-10 14:20:00', 0, 'Proprietary', 'Registered', 85, 4.0, 202, '2023-02-12 08:15:00', '{"duration":"5m"}', 1, NULL, 'tutorial,video', 'VideoHub', 'support@videohub.com', 5242880);
INSERT INTO post_external_resources (Id, PostId, ResourceType, ResourceUrl, Description, AddedDate, IsOfficial, License, AccessLevel, ClickCount, Rating, ReviewerUserId, ReviewDate, Metadata, IsActive, ExpirationDate, TagList, SourceName, SourceContact, FileSizeBytes) VALUES (3, 5003, 'Dataset', 'https://data.example.org/set.csv', 'Sample dataset', '2023-03-05 11:45:00', 1, 'ODC-By', 'Public', 200, 4.8, 303, '2023-03-06 12:00:00', '{"rows":1000}', 1, '2024-12-31 23:59:59', 'data,statistics', 'OpenDataOrg', 'contact@opendata.org', 2097152);

-- Mappings between internal tags and external identifiers
CREATE TABLE tag_external_mappings (
    Id INTEGER NOT NULL PRIMARY KEY,
    TagId INTEGER NULL,
    ExternalSystem TEXT NULL,
    ExternalId TEXT NULL,
    MappingDate DATETIME NULL,
    IsActive INTEGER NULL,
    ConfidenceScore REAL NULL,
    SourceUrl TEXT NULL,
    Notes TEXT NULL,
    CreatedByUserId INTEGER NULL,
    CreatedDate DATETIME NULL,
    UpdatedByUserId INTEGER NULL,
    UpdatedDate DATETIME NULL,
    Metadata TEXT NULL,
    IsPrimary INTEGER NULL,
    SynonymFlag INTEGER NULL,
    RelatedTagId INTEGER NULL,
    RelationType TEXT NULL,
    Weight REAL NULL,
    Language TEXT NULL,
    FOREIGN KEY (TagId) REFERENCES tags (Id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (CreatedByUserId) REFERENCES users (Id),
    FOREIGN KEY (UpdatedByUserId) REFERENCES users (Id),
    FOREIGN KEY (RelatedTagId) REFERENCES tags (Id)
);
INSERT INTO tag_external_mappings (Id, TagId, ExternalSystem, ExternalId, MappingDate, IsActive, ConfidenceScore, SourceUrl, Notes, CreatedByUserId, CreatedDate, UpdatedByUserId, UpdatedDate, Metadata, IsPrimary, SynonymFlag, RelatedTagId, RelationType, Weight, Language) VALUES (1, 10, 'GoogleAds', 'GA-001', '2023-01-01 00:00:00', 1, 0.95, 'https://ads.google.com/tag/GA-001', 'Primary mapping', 101, '2023-01-02 08:00:00', 101, '2023-01-05 09:30:00', '{"category":"marketing"}', 1, 0, NULL, NULL, 1.0, 'en');
INSERT INTO tag_external_mappings (Id, TagId, ExternalSystem, ExternalId, MappingDate, IsActive, ConfidenceScore, SourceUrl, Notes, CreatedByUserId, CreatedDate, UpdatedByUserId, UpdatedDate, Metadata, IsPrimary, SynonymFlag, RelatedTagId, RelationType, Weight, Language) VALUES (2, 20, 'TwitterHashtag', 'tw123', '2023-02-15 12:30:00', 1, 0.88, 'https://twitter.com/hashtag/tw123', 'Related to campaign', 202, '2023-02-16 10:00:00', 202, '2023-02-20 14:45:00', '{"trend":"yes"}', 0, 1, 10, 'related', 0.7, 'en');
INSERT INTO tag_external_mappings (Id, TagId, ExternalSystem, ExternalId, MappingDate, IsActive, ConfidenceScore, SourceUrl, Notes, CreatedByUserId, CreatedDate, UpdatedByUserId, UpdatedDate, Metadata, IsPrimary, SynonymFlag, RelatedTagId, RelationType, Weight, Language) VALUES (3, 30, 'InternalTool', 'IT-XYZ', '2023-03-10 09:15:00', 0, 0.60, 'https://internal.example.com/tools/IT-XYZ', 'Deprecated mapping', 303, '2023-03-11 11:20:00', 303, '2023-03-15 13:00:00', '{"status":"deprecated"}', 0, 0, NULL, NULL, 0.5, 'en');

-- Content quality audit records for posts
CREATE TABLE content_quality_audit (
    AuditId INTEGER NOT NULL PRIMARY KEY,
    PostId INTEGER NULL,
    AuditorUserId INTEGER NULL,
    AuditDate DATETIME NULL,
    Score REAL NULL,
    Comments TEXT NULL,
    IsApproved INTEGER NULL,
    ReviewRound INTEGER NULL,
    Category TEXT NULL,
    Subcategory TEXT NULL,
    Severity TEXT NULL,
    ActionTaken TEXT NULL,
    FollowUpDate DATETIME NULL,
    RelatedTagId INTEGER NULL,
    ExternalReference TEXT NULL,
    Metadata TEXT NULL,
    IsResolved INTEGER NULL,
    ResolutionDate DATETIME NULL,
    ResolvedByUserId INTEGER NULL,
    ResolutionComments TEXT NULL,
    FOREIGN KEY (PostId) REFERENCES posts (Id),
    FOREIGN KEY (AuditorUserId) REFERENCES users (Id),
    FOREIGN KEY (ResolvedByUserId) REFERENCES users (Id),
    FOREIGN KEY (RelatedTagId) REFERENCES tags (Id)
);
INSERT INTO content_quality_audit (AuditId, PostId, AuditorUserId, AuditDate, Score, Comments, IsApproved, ReviewRound, Category, Subcategory, Severity, ActionTaken, FollowUpDate, RelatedTagId, ExternalReference, Metadata, IsResolved, ResolutionDate, ResolvedByUserId, ResolutionComments) VALUES (1, 5001, 101, '2023-04-01 10:00:00', 8.5, 'Well structured answer', 1, 1, 'Clarity', 'Formatting', 'Low', 'None', NULL, NULL, NULL, '{"notes":"good"}', 1, '2023-04-01 12:00:00', 101, 'Approved without changes');
INSERT INTO content_quality_audit (AuditId, PostId, AuditorUserId, AuditDate, Score, Comments, IsApproved, ReviewRound, Category, Subcategory, Severity, ActionTaken, FollowUpDate, RelatedTagId, ExternalReference, Metadata, IsResolved, ResolutionDate, ResolvedByUserId, ResolutionComments) VALUES (2, 5002, 202, '2023-04-05 14:30:00', 5.0, 'Missing references', 0, 2, 'Accuracy', 'Citation', 'Medium', 'Add citations', '2023-04-10 00:00:00', 20, 'REF-2023-04', '{"needs":"citations"}', 0, NULL, NULL, NULL);
INSERT INTO content_quality_audit (AuditId, PostId, AuditorUserId, AuditDate, Score, Comments, IsApproved, ReviewRound, Category, Subcategory, Severity, ActionTaken, FollowUpDate, RelatedTagId, ExternalReference, Metadata, IsResolved, ResolutionDate, ResolvedByUserId, ResolutionComments) VALUES (3, 5003, 303, '2023-04-08 09:15:00', 7.0, 'Good but lengthy', 1, 1, 'Readability', 'Length', 'Low', 'Edit for brevity', '2023-04-12 00:00:00', 30, NULL, '{"suggested_trim":true}', 1, '2023-04-13 11:00:00', 303, 'Trimmed excess sections');

-- User learning journal entries
CREATE TABLE user_learning_journal_entries (
    EntryId INTEGER NOT NULL PRIMARY KEY,
    UserId INTEGER NULL,
    EntryDate DATETIME NULL,
    Title TEXT NULL,
    Content TEXT NULL,
    MoodScore INTEGER NULL,
    DurationMinutes INTEGER NULL,
    Tags TEXT NULL,
    RelatedPostId INTEGER NULL,
    SharedWithUserId INTEGER NULL,
    IsPublic INTEGER NULL,
    AttachmentUrl TEXT NULL,
    Location TEXT NULL,
    Weather TEXT NULL,
    HeartRate INTEGER NULL,
    Steps INTEGER NULL,
    CaloriesBurned INTEGER NULL,
    Reflection TEXT NULL,
    IsPinned INTEGER NULL,
    Metadata TEXT NULL,
    FOREIGN KEY (UserId) REFERENCES users (Id),
    FOREIGN KEY (RelatedPostId) REFERENCES posts (Id),
    FOREIGN KEY (SharedWithUserId) REFERENCES users (Id)
);
INSERT INTO user_learning_journal_entries (EntryId, UserId, EntryDate, Title, Content, MoodScore, DurationMinutes, Tags, RelatedPostId, SharedWithUserId, IsPublic, AttachmentUrl, Location, Weather, HeartRate, Steps, CaloriesBurned, Reflection, IsPinned, Metadata) VALUES (1, 101, '2023-05-01 08:00:00', 'SQL Basics', 'Reviewed SELECT and FROM clauses', 8, 45, 'sql,basics', 5001, NULL, 1, NULL, 'Home Office', 'Sunny', 72, 3000, 250, 'Need to practice joins', 0, '{"focus":"queries"}');
INSERT INTO user_learning_journal_entries (EntryId, UserId, EntryDate, Title, Content, MoodScore, DurationMinutes, Tags, RelatedPostId, SharedWithUserId, IsPublic, AttachmentUrl, Location, Weather, HeartRate, Steps, CaloriesBurned, Reflection, IsPinned, Metadata) VALUES (2, 202, '2023-05-03 19:30:00', 'Advanced Indexing', 'Studied composite indexes', 7, 60, 'sql,indexing', 5002, 101, 0, NULL, 'Cafe', 'Rainy', 68, 2000, 180, 'Indexes improve performance', 0, '{"topic":"performance"}');
INSERT INTO user_learning_journal_entries (EntryId, UserId, EntryDate, Title, Content, MoodScore, DurationMinutes, Tags, RelatedPostId, SharedWithUserId, IsPublic, AttachmentUrl, Location, Weather, HeartRate, Steps, CaloriesBurned, Reflection, IsPinned, Metadata) VALUES (3, 303, '2023-05-05 22:15:00', 'Data Modeling', 'Designed ER diagram for new project', 9, 90, 'modeling,er', NULL, 202, 1, NULL, 'Home', 'Clear', 65, 1500, 120, 'Clearer understanding of relationships', 1, '{"diagram":"v1"}');

-- Collaboration details for posts
CREATE TABLE post_collaboration_details (
    CollabId INTEGER NOT NULL PRIMARY KEY,
    PostId INTEGER NULL,
    CollaboratorUserId INTEGER NULL,
    Role TEXT NULL,
    JoinedDate DATETIME NULL,
    LeftDate DATETIME NULL,
    ContributionScore REAL NULL,
    Comments TEXT NULL,
    IsLead INTEGER NULL,
    HoursCommitted INTEGER NULL,
    FilesShared TEXT NULL,
    ReviewStatus TEXT NULL,
    ApprovalDate DATETIME NULL,
    RejectionReason TEXT NULL,
    IsActive INTEGER NULL,
    Metadata TEXT NULL,
    LastUpdated DATETIME NULL,
    UpdatedByUserId INTEGER NULL,
    NotificationSent INTEGER NULL,
    CollaborationLevel TEXT NULL,
    FOREIGN KEY (PostId) REFERENCES posts (Id),
    FOREIGN KEY (CollaboratorUserId) REFERENCES users (Id),
    FOREIGN KEY (UpdatedByUserId) REFERENCES users (Id)
);
INSERT INTO post_collaboration_details (CollabId, PostId, CollaboratorUserId, Role, JoinedDate, LeftDate, ContributionScore, Comments, IsLead, HoursCommitted, FilesShared, ReviewStatus, ApprovalDate, RejectionReason, IsActive, Metadata, LastUpdated, UpdatedByUserId, NotificationSent, CollaborationLevel) VALUES (1, 5001, 101, 'Editor', '2023-04-01 09:00:00', NULL, 85.0, 'Improved code snippets', 1, 20, 'edit1.diff;edit2.diff', 'Approved', '2023-04-02 11:00:00', NULL, 1, '{"edits":2}', '2023-04-02 11:05:00', 101, 1, 'High');
INSERT INTO post_collaboration_details (CollabId, PostId, CollaboratorUserId, Role, JoinedDate, LeftDate, ContributionScore, Comments, IsLead, HoursCommitted, FilesShared, ReviewStatus, ApprovalDate, RejectionReason, IsActive, Metadata, LastUpdated, UpdatedByUserId, NotificationSent, CollaborationLevel) VALUES (2, 5002, 202, 'Reviewer', '2023-04-05 10:30:00', NULL, 75.0, 'Checked references', 0, 10, 'review_notes.txt', 'Pending', NULL, NULL, 1, '{"checks":5}', '2023-04-07 08:00:00', 202, 0, 'Medium');
INSERT INTO post_collaboration_details (CollabId, PostId, CollaboratorUserId, Role, JoinedDate, LeftDate, ContributionScore, Comments, IsLead, HoursCommitted, FilesShared, ReviewStatus, ApprovalDate, RejectionReason, IsActive, Metadata, LastUpdated, UpdatedByUserId, NotificationSent, CollaborationLevel) VALUES (3, 5003, 303, 'Contributor', '2023-04-10 14:20:00', '2023-04-12 16:00:00', 60.0, 'Added examples', 0, 5, 'example1.txt;example2.txt', 'Rejected', NULL, 'Insufficient relevance', 0, '{"examples":2}', '2023-04-12 16:05:00', 303, 1, 'Low');

-- Extended semantic hierarchy for tags
CREATE TABLE tag_semantic_hierarchy_ext (
    HierarchyId INTEGER NOT NULL PRIMARY KEY,
    TagId INTEGER NULL,
    ParentTagId INTEGER NULL,
    Depth INTEGER NULL,
    Path TEXT NULL,
    IsRoot INTEGER NULL,
    CreatedDate DATETIME NULL,
    CreatedByUserId INTEGER NULL,
    UpdatedDate DATETIME NULL,
    UpdatedByUserId INTEGER NULL,
    Description TEXT NULL,
    SynonymGroupId INTEGER NULL,
    Category TEXT NULL,
    Subcategory TEXT NULL,
    Confidence REAL NULL,
    SourceSystem TEXT NULL,
    IsActive INTEGER NULL,
    Metadata TEXT NULL,
    LastVerifiedDate DATETIME NULL,
    VerifiedByUserId INTEGER NULL,
    Version INTEGER NULL,
    FOREIGN KEY (TagId) REFERENCES tags (Id),
    FOREIGN KEY (ParentTagId) REFERENCES tags (Id),
    FOREIGN KEY (CreatedByUserId) REFERENCES users (Id),
    FOREIGN KEY (UpdatedByUserId) REFERENCES users (Id),
    FOREIGN KEY (VerifiedByUserId) REFERENCES users (Id)
);
INSERT INTO tag_semantic_hierarchy_ext (HierarchyId, TagId, ParentTagId, Depth, Path, IsRoot, CreatedDate, CreatedByUserId, UpdatedDate, UpdatedByUserId, Description, SynonymGroupId, Category, Subcategory, Confidence, SourceSystem, IsActive, Metadata, LastVerifiedDate, VerifiedByUserId, Version) VALUES (1, 10, NULL, 0, '10', 1, '2023-01-01 00:00:00', 101, '2023-02-01 00:00:00', 101, 'Top level tag', NULL, 'Technology', NULL, 1.0, 'Manual', 1, '{"notes":"root"}', '2023-03-01 00:00:00', 101, 1);
INSERT INTO tag_semantic_hierarchy_ext (HierarchyId, TagId, ParentTagId, Depth, Path, IsRoot, CreatedDate, CreatedByUserId, UpdatedDate, UpdatedByUserId, Description, SynonymGroupId, Category, Subcategory, Confidence, SourceSystem, IsActive, Metadata, LastVerifiedDate, VerifiedByUserId, Version) VALUES (2, 20, 10, 1, '10/20', 0, '2023-01-15 12:00:00', 202, '2023-02-10 13:00:00', 202, 'Child of Technology', NULL, 'Programming', 'Languages', 0.92, 'ML', 1, '{"derived":true}', '2023-03-05 09:00:00', 202, 2);
INSERT INTO tag_semantic_hierarchy_ext (HierarchyId, TagId, ParentTagId, Depth, Path, IsRoot, CreatedDate, CreatedByUserId, UpdatedDate, UpdatedByUserId, Description, SynonymGroupId, Category, Subcategory, Confidence, SourceSystem, IsActive, Metadata, LastVerifiedDate, VerifiedByUserId, Version) VALUES (3, 30, 20, 2, '10/20/30', 0, '2023-02-01 08:30:00', 303, '2023-03-01 10:45:00', 303, 'Specific language tag', NULL, 'Programming', 'Languages', 0.85, 'UserInput', 1, '{"popularity":"high"}', '2023-04-01 07:30:00', 303, 3);

-- Summary statistics for forum threads
CREATE TABLE forum_thread_activity_summary (
    SummaryId INTEGER NOT NULL PRIMARY KEY,
    ThreadId INTEGER NULL,
    TotalPosts INTEGER NULL,
    UniqueAuthors INTEGER NULL,
    FirstPostDate DATETIME NULL,
    LastPostDate DATETIME NULL,
    AvgPostLength REAL NULL,
    MaxPostLength INTEGER NULL,
    MinPostLength INTEGER NULL,
    TotalViews INTEGER NULL,
    TotalLikes INTEGER NULL,
    TotalDislikes INTEGER NULL,
    SpamFlagCount INTEGER NULL,
    ModeratorActions INTEGER NULL,
    IsClosed INTEGER NULL,
    ClosureDate DATETIME NULL,
    ClosureReason TEXT NULL,
    Tags TEXT NULL,
    ActiveUserCount INTEGER NULL,
    PeakHour INTEGER NULL,
    CreatedDate DATETIME NULL,
    UpdatedDate DATETIME NULL,
    Metadata TEXT NULL,
    FOREIGN KEY (ThreadId) REFERENCES posts (Id)
);
INSERT INTO forum_thread_activity_summary (SummaryId, ThreadId, TotalPosts, UniqueAuthors, FirstPostDate, LastPostDate, AvgPostLength, MaxPostLength, MinPostLength, TotalViews, TotalLikes, TotalDislikes, SpamFlagCount, ModeratorActions, IsClosed, ClosureDate, ClosureReason, Tags, ActiveUserCount, PeakHour, CreatedDate, UpdatedDate, Metadata) VALUES (1, 8001, 45, 30, '2023-03-01 09:00:00', '2023-04-10 18:30:00', 250.5, 1024, 120, 15000, 300, 5, 2, 1, 0, NULL, NULL, 'sql,performance', 20, 14, '2023-03-01 09:00:00', '2023-04-10 18:31:00', '{"status":"active"}');
INSERT INTO forum_thread_activity_summary (SummaryId, ThreadId, TotalPosts, UniqueAuthors, FirstPostDate, LastPostDate, AvgPostLength, MaxPostLength, MinPostLength, TotalViews, TotalLikes, TotalDislikes, SpamFlagCount, ModeratorActions, IsClosed, ClosureDate, ClosureReason, Tags, ActiveUserCount, PeakHour, CreatedDate, UpdatedDate, Metadata) VALUES (2, 8002, 12, 10, '2023-04-01 11:15:00', '2023-04-05 16:45:00', 180.0, 800, 150, 5000, 80, 1, 0, 0, 1, '2023-04-06 09:00:00', 'OffTopic', 'javascript,ui', 8, 16, '2023-04-01 11:15:00', '2023-04-06 09:01:00', '{"closed":true}');
INSERT INTO forum_thread_activity_summary (SummaryId, ThreadId, TotalPosts, UniqueAuthors, FirstPostDate, LastPostDate, AvgPostLength, MaxPostLength, MinPostLength, TotalViews, TotalLikes, TotalDislikes, SpamFlagCount, ModeratorActions, IsClosed, ClosureDate, ClosureReason, Tags, ActiveUserCount, PeakHour, CreatedDate, UpdatedDate, Metadata) VALUES (3, 8003, 78, 50, '2023-01-10 08:00:00', '2023-04-15 20:20:00', 300.2, 1500, 200, 25000, 450, 10, 5, 3, 0, NULL, NULL, 'python,data-science', 35, 19, '2023-01-10 08:00:00', '2023-04-15 20:21:00', '{"engagement":"high"}');

-- Extended assets for advertising campaigns
CREATE TABLE advertisement_campaign_assets_ext (
    AssetId INTEGER NOT NULL PRIMARY KEY,
    CampaignId INTEGER NULL,
    AssetType TEXT NULL,
    FileName TEXT NULL,
    FileUrl TEXT NULL,
    UploadedDate DATETIME NULL,
    FileSize INTEGER NULL,
    Width INTEGER NULL,
    Height INTEGER NULL,
    DurationSeconds INTEGER NULL,
    MimeType TEXT NULL,
    IsActive INTEGER NULL,
    TargetAudience TEXT NULL,
    GeoTarget TEXT NULL,
    LanguageTarget TEXT NULL,
    DeviceTarget TEXT NULL,
    ClickThroughRate REAL NULL,
    ConversionRate REAL NULL,
    CostPerClick REAL NULL,
    CostPerImpression REAL NULL,
    TotalSpend REAL NULL,
    Metadata TEXT NULL,
    ExpirationDate DATETIME NULL,
    CreatedByUserId INTEGER NULL,
    FOREIGN KEY (CampaignId) REFERENCES ad_campaigns (Id) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (CreatedByUserId) REFERENCES users (Id)
);
INSERT INTO advertisement_campaign_assets_ext (AssetId, CampaignId, AssetType, FileName, FileUrl, UploadedDate, FileSize, Width, Height, DurationSeconds, MimeType, IsActive, TargetAudience, GeoTarget, LanguageTarget, DeviceTarget, ClickThroughRate, ConversionRate, CostPerClick, CostPerImpression, TotalSpend, Metadata, ExpirationDate, CreatedByUserId) VALUES (1, 1001, 'Image', 'banner1.png', 'https://ads.example.com/banners/banner1.png', '2023-02-01 10:00:00', 204800, 728, 90, NULL, 'image/png', 1, 'Developers', 'US,CA', 'en', 'Desktop', 0.025, 0.004, 0.50, 0.01, 1500.00, '{"campaign":"Q1"}', '2023-12-31 23:59:59', 101);
INSERT INTO advertisement_campaign_assets_ext (AssetId, CampaignId, AssetType, FileName, FileUrl, UploadedDate, FileSize, Width, Height, DurationSeconds, MimeType, IsActive, TargetAudience, GeoTarget, LanguageTarget, DeviceTarget, ClickThroughRate, ConversionRate, CostPerClick, CostPerImpression, TotalSpend, Metadata, ExpirationDate, CreatedByUserId) VALUES (2, 1002, 'Video', 'promo.mp4', 'https://ads.example.com/videos/promo.mp4', '2023-03-10 15:30:00', 5242880, 1280, 720, 30, 'video/mp4', 1, 'Marketers', 'EU,UK', 'en,fr', 'Mobile', 0.018, 0.003, 0.60, 0.015, 2000.00, '{"campaign":"Spring"}', '2024-06-30 23:59:59', 202);
INSERT INTO advertisement_campaign_assets_ext (AssetId, CampaignId, AssetType, FileName, FileUrl, UploadedDate, FileSize, Width, Height, DurationSeconds, MimeType, IsActive, TargetAudience, GeoTarget, LanguageTarget, DeviceTarget, ClickThroughRate, ConversionRate, CostPerClick, CostPerImpression, TotalSpend, Metadata, ExpirationDate, CreatedByUserId) VALUES (3, 1003, 'HTML', 'interactive.html', 'https://ads.example.com/html/interactive.html', '2023-04-20 09:45:00', 102400, NULL, NULL, NULL, 'text/html', 0, 'Students', 'AU,NZ', 'en', 'Desktop', NULL, NULL, NULL, NULL, 0.00, '{"status":"draft"}', NULL, 303);

-- Extended properties for knowledge graph nodes
CREATE TABLE knowledge_graph_node_properties_ext2 (
    PropId INTEGER NOT NULL PRIMARY KEY,
    NodeId INTEGER NULL,
    PropertyName TEXT NULL,
    PropertyValue TEXT NULL,
    DataType TEXT NULL,
    CreatedDate DATETIME NULL,
    CreatedByUserId INTEGER NULL,
    UpdatedDate DATETIME NULL,
    UpdatedByUserId INTEGER NULL,
    IsActive INTEGER NULL,
    ValidFrom DATETIME NULL,
    ValidTo DATETIME NULL,
    ConfidenceScore REAL NULL,
    SourceSystem TEXT NULL,
    SourceReference TEXT NULL,
    Version INTEGER NULL,
    IsInherited INTEGER NULL,
    InheritanceDepth INTEGER NULL,
    Metadata TEXT NULL,
    ValidationStatus TEXT NULL,
    Comments TEXT NULL,
    FOREIGN KEY (NodeId) REFERENCES knowledge_graph_nodes (Id),
    FOREIGN KEY (CreatedByUserId) REFERENCES users (Id),
    FOREIGN KEY (UpdatedByUserId) REFERENCES users (Id)
);
INSERT INTO knowledge_graph_node_properties_ext2 (PropId, NodeId, PropertyName, PropertyValue, DataType, CreatedDate, CreatedByUserId, UpdatedDate, UpdatedByUserId, IsActive, ValidFrom, ValidTo, ConfidenceScore, SourceSystem, SourceReference, Version, IsInherited, InheritanceDepth, Metadata, ValidationStatus, Comments) VALUES (1, 50001, 'definition', 'A recursive function example', 'string', '2023-01-05 12:00:00', 101, '2023-02-10 09:30:00', 101, 1, '2023-01-05 12:00:00', NULL, 0.98, 'ManualEntry', 'def-001', 1, 0, 0, '{"source":"user"}', 'Validated', 'No issues');
INSERT INTO knowledge_graph_node_properties_ext2 (PropId, NodeId, PropertyName, PropertyValue, DataType, CreatedDate, CreatedByUserId, UpdatedDate, UpdatedByUserId, IsActive, ValidFrom, ValidTo, ConfidenceScore, SourceSystem, SourceReference, Version, IsInherited, InheritanceDepth, Metadata, ValidationStatus, Comments) VALUES (2, 50002, 'synonyms', 'recursion;self-call', 'string', '2023-01-10 08:15:00', 202, '2023-02-12 10:45:00', 202, 1, '2023-01-10 08:15:00', NULL, 0.92, 'AutoExtract', 'syn-045', 1, 1, 1, '{"generated":true}', 'Pending', 'Awaiting review');
INSERT INTO knowledge_graph_node_properties_ext2 (PropId, NodeId, PropertyName, PropertyValue, DataType, CreatedDate, CreatedByUserId, UpdatedDate, UpdatedByUserId, IsActive, ValidFrom, ValidTo, ConfidenceScore, SourceSystem, SourceReference, Version, IsInherited, InheritanceDepth, Metadata, ValidationStatus, Comments) VALUES (3, 50003, 'relatedConcepts', 'function;algorithm', 'string', '2023-01-20 14:00:00', 303, '2023-02-20 16:30:00', 303, 1, '2023-01-20 14:00:00', NULL, 0.85, 'Ontology', 'rel-210', 2, 0, 0, '{"linked":true}', 'Validated', 'Linked to algorithm node');