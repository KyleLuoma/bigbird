```sql
-- Research data repository information
CREATE TABLE research_data_repository (
    Id                INTEGER PRIMARY KEY,
    ProjectId         INTEGER,
    DatasetName       TEXT,
    Description       TEXT,
    CreatedDate       DATETIME,
    UpdatedDate       DATETIME,
    FilePath          TEXT,
    FileSizeBytes     INTEGER,
    RecordCount       INTEGER,
    OwnerUserId       INTEGER,
    AccessLevel       TEXT,
    Format            TEXT,
    Compression       TEXT,
    Encryption        TEXT,
    TagList           TEXT,
    License           TEXT,
    DOI               TEXT,
    FundingAgency     TEXT,
    FundingAmount     REAL,
    ReviewStatus      TEXT
);

INSERT INTO research_data_repository VALUES (1, 101, 'GenomicsData', 'Whole genome sequencing', '2023-01-15 08:00:00', '2023-02-01 12:30:00', '/data/genomics/001.fasta', 2500000000, 15000, 10, 'Public', 'FASTA', 'gzip', 'AES256', 'genomics,sequence', 'CC0', '10.1234/xyz', 'NIH', 500000.00, 'Pending');
INSERT INTO research_data_repository VALUES (2, 102, 'ClimateObservations', 'Monthly climate metrics', '2022-06-10 09:15:00', '2022-07-20 10:45:00', '/data/climate/2022.csv', 8500000, 1200, 12, 'Restricted', 'CSV', 'none', 'none', 'climate,temperature', 'CC-BY', '10.5678/abc', 'NOAA', 250000.00, 'Approved');
INSERT INTO research_data_repository VALUES (3, 103, 'SocialMediaSentiment', 'Tweets sentiment scores', '2023-03-05 14:20:00', '2023-03-22 16:00:00', '/data/social/sentiment.parquet', 420000000, 500000, 15, 'Private', 'Parquet', 'snappy', 'RSA2048', 'sentiment,ml', 'Proprietary', '10.9012/def', 'Google', 750000.00, 'UnderReview');

--------------------------------------------------------------------

-- Scholarship application forms
CREATE TABLE scholarship_application_forms (
    Id                     INTEGER PRIMARY KEY,
    ApplicantId            INTEGER,
    ScholarshipName        TEXT,
    ApplicationDate        DATETIME,
    Status                 TEXT,
    GPA                    REAL,
    Major                  TEXT,
    Institution            TEXT,
    EssayText              TEXT,
    RecommendationCount    INTEGER,
    RecommendationIds      TEXT,
    ReviewScore            REAL,
    DecisionDate           DATETIME,
    AwardAmount            REAL,
    Currency               TEXT,
    IsInternational        BOOLEAN,
    ResidencyState         TEXT,
    Email                  TEXT,
    Phone                  TEXT,
    UploadedDocsPath       TEXT,
    Notes                  TEXT
);

INSERT INTO scholarship_application_forms VALUES (1, 2001, 'STEMFuture', '2023-01-10 09:00:00', 'Submitted', 3.9, 'ComputerScience', 'StateUniversity', 'MyGoalsAre...', 2, '3001,3002', NULL, NULL, 15000.00, 'USD', 0, 'CA', 'applicant1@example.com', '5551234567', '/docs/app1/', 'First submission');
INSERT INTO scholarship_application_forms VALUES (2, 2002, 'ArtsLeader', '2023-01-12 11:30:00', 'Reviewed', 3.7, 'FineArts', 'CityCollege', 'ArtChangeWorld', 3, '3010,3011,3012', 85.5, '2023-02-01 15:45:00', 12000.00, 'USD', 1, 'NY', 'artist2@example.com', '5559876543', '/docs/app2/', 'Reviewed by committee');
INSERT INTO scholarship_application_forms VALUES (3, 2003, 'GlobalHealth', '2023-01-15 14:20:00', 'Accepted', 4.0, 'PublicHealth', 'NationalInstitute', 'HealthForAll', 2, '3020,3021', 92.0, '2023-02-10 10:00:00', 20000.00, 'USD', 0, 'TX', 'student3@example.com', '5555551212', '/docs/app3/', 'Accepted with full scholarship');

--------------------------------------------------------------------

-- Laboratory test results
CREATE TABLE lab_test_results (
    Id                INTEGER PRIMARY KEY,
    SampleId          TEXT,
    TestName          TEXT,
    ResultValue       REAL,
    Unit              TEXT,
    ReferenceLow      REAL,
    ReferenceHigh     REAL,
    ResultDate        DATETIME,
    TechnicianId      INTEGER,
    LabLocation       TEXT,
    Methodology       TEXT,
    InstrumentId      TEXT,
    CalibrationDate   DATETIME,
    QualityFlag       TEXT,
    Comment           TEXT,
    BatchNumber       TEXT,
    ReagentLot        TEXT,
    AnalystId         INTEGER,
    ApprovalStatus    TEXT,
    ApprovedBy        INTEGER
);

INSERT INTO lab_test_results VALUES (1, 'SMP001', 'Glucose', 5.4, 'mmol/L', 3.9, 6.1, '2023-02-10 08:15:00', 401, 'LabA', 'Enzymatic', 'INST100', '2023-01-20 00:00:00', 'Pass', 'Normal', 'B001', 'RL1001', 501, 'Approved', 601);
INSERT INTO lab_test_results VALUES (2, 'SMP002', 'Hemoglobin', 13.2, 'g/dL', 12.0, 16.0, '2023-02-11 09:45:00', 402, 'LabB', 'Spectrophotometry', 'INST200', '2023-01-22 00:00:00', 'Pass', 'Within range', 'B002', 'RL1002', 502, 'Approved', 602);
INSERT INTO lab_test_results VALUES (3, 'SMP003', 'Cholesterol', 250.0, 'mg/dL', 125.0, 200.0, '2023-02-12 10:30:00', 403, 'LabC', 'Colorimetric', 'INST300', '2023-01-25 00:00:00', 'Flag', 'High cholesterol', 'B003', 'RL1003', 503, 'Pending', NULL);

--------------------------------------------------------------------

-- Conference paper reviews
CREATE TABLE conference_paper_reviews (
    ReviewId                INTEGER PRIMARY KEY,
    PaperId                 INTEGER,
    ReviewerId              INTEGER,
    ReviewDate              DATETIME,
    ScoreOverall            REAL,
    ScoreOriginality        REAL,
    ScoreClarity            REAL,
    ScoreMethodology        REAL,
    Comments                TEXT,
    ConfidentialComments    TEXT,
    Recommendation          TEXT,
    ConflictOfInterest      BOOLEAN,
    ReviewVersion           INTEGER,
    IsFinal                 BOOLEAN,
    EvaluationKeywords      TEXT,
    ReviewDurationMinutes   INTEGER,
    EmailSent               BOOLEAN,
    NotificationStatus      TEXT,
    RevisionsRequested      INTEGER,
    Decision                TEXT
);

INSERT INTO conference_paper_reviews VALUES (1, 9001, 601, '2023-03-01 10:00:00', 4.5, 5.0, 4.0, 4.5, 'Well written and novel', 'No major concerns', 'Accept', 0, 1, 1, 'AI,ML,Data', 90, 1, 'Sent', 0, 'Accepted');
INSERT INTO conference_paper_reviews VALUES (2, 9002, 602, '2023-03-02 11:30:00', 3.2, 3.0, 3.5, 3.0, 'Needs more experiments', 'Potential conflict due to coauthor', 'Minor Revision', 1, 0, 0, 'Security,Privacy', 120, 1, 'Sent', 1, 'Pending');
INSERT INTO conference_paper_reviews VALUES (3, 9003, 603, '2023-03-03 14:45:00', 2.0, 2.5, 1.5, 2.0, 'Results unclear', 'No conflicts', 'Reject', 0, 1, 1, 'Networks,Graph', 60, 1, 'Sent', 0, 'Rejected');

--------------------------------------------------------------------

-- Digital exhibit catalog
CREATE TABLE digital_exhibit_catalog (
    ExhibitId          INTEGER PRIMARY KEY,
    Title              TEXT,
    Description        TEXT,
    ArtistName         TEXT,
    CreationYear       INTEGER,
    MediaType          TEXT,
    Dimensions         TEXT,
    Location           TEXT,
    AcquisitionDate    DATETIME,
    Cost               REAL,
    Condition          TEXT,
    CatalogNumber      TEXT,
    ExhibitStatus      TEXT,
    DisplayStartDate   DATETIME,
    DisplayEndDate     DATETIME,
    CuratorId          INTEGER,
    Tags               TEXT,
    ImagePath          TEXT,
    AudioGuidePath     TEXT,
    RelatedExhibitIds  TEXT
);

INSERT INTO digital_exhibit_catalog VALUES (1, 'Starry Night', 'Digital reinterpretation of Van Gogh', 'JaneDoe', 2021, 'DigitalPainting', '1920x1080', 'Gallery1', '2021-05-10 00:00:00', 5000.00, 'Excellent', 'CAT001', 'OnDisplay', '2023-06-01 00:00:00', '2023-12-31 23:59:59', 701, 'Impressionism,Digital', '/images/starry.png', '/audio/starry.mp3', '2,3');
INSERT INTO digital_exhibit_catalog VALUES (2, 'Virtual Sculpture', '3D modeled sculpture', 'JohnSmith', 2020, '3DModel', '200x200x500mm', 'Gallery2', '2020-09-15 00:00:00', 12000.00, 'Good', 'CAT002', 'InStorage', NULL, NULL, 702, 'Sculpture,VR', '/images/virtual_sculpture.png', NULL, '1');
INSERT INTO digital_exhibit_catalog VALUES (3, 'Interactive Installation', 'Touch-responsive light artwork', 'AliceWang', 2022, 'Installation', 'Variable', 'MainHall', '2022-03-20 00:00:00', 30000.00, 'Excellent', 'CAT003', 'OnDisplay', '2023-07-15 00:00:00', '2024-01-15 23:59:59', 703, 'Interactive,Light', '/images/interactive.png', '/audio/interactive.mp3', '1');

--------------------------------------------------------------------

-- Clinical trial sites
CREATE TABLE clinical_trial_sites (
    SiteId               INTEGER PRIMARY KEY,
    TrialId              INTEGER,
    InstitutionName      TEXT,
    Country              TEXT,
    City                 TEXT,
    StartDate            DATETIME,
    EndDate              DATETIME,
    PI_Name              TEXT,
    PI_Contact           TEXT,
    EnrollmentTarget     INTEGER,
    EnrollmentActual     INTEGER,
    IRB_ApprovalDate    DATETIME,
    IRB_Number           TEXT,
    MonitoringPlan       TEXT,
    SiteStatus           TEXT,
    Budget               REAL,
    Currency             TEXT,
    ContractSignedDate   DATETIME,
    SiteCoordinatorId    INTEGER,
    Notes                TEXT
);

INSERT INTO clinical_trial_sites VALUES (1, 4001, 'Health Institute A', 'USA', 'Boston', '2023-01-01 00:00:00', '2024-12-31 23:59:59', 'DrAlice', 'alice@hia.org', 200, 150, '2022-12-15 00:00:00', 'IRB12345', 'Standard', 'Active', 250000.00, 'USD', '2022-11-20 00:00:00', 801, 'Enrollments on track');
INSERT INTO clinical_trial_sites VALUES (2, 4002, 'Medical Center B', 'Canada', 'Toronto', '2023-02-15 00:00:00', '2025-02-14 23:59:59', 'DrBob', 'bob@mcb.ca', 300, 0, '2023-01-30 00:00:00', 'IRB67890', 'Intensive', 'Pending', 350000.00, 'CAD', '2023-01-10 00:00:00', 802, 'Awaiting IRB clearance');
INSERT INTO clinical_trial_sites VALUES (3, 4003, 'University Hospital C', 'UK', 'London', '2023-03-10 00:00:00', '2024-09-30 23:59:59', 'DrCarol', 'carol@uhc.uk', 150, 0, '2023-02-20 00:00:00', 'IRB54321', 'Remote', 'Approved', 180000.00, 'GBP', '2023-02-05 00:00:00', 803, 'Site preparation ongoing');

--------------------------------------------------------------------

-- Environmental policy documents
CREATE TABLE environmental_policy_documents (
    DocId                 INTEGER PRIMARY KEY,
    Title                 TEXT,
    EffectiveDate         DATETIME,
    ExpirationDate        DATETIME,
    Scope                 TEXT,
    Jurisdiction          TEXT,
    PolicyType            TEXT,
    VersionNumber         INTEGER,
    AuthorId              INTEGER,
    ReviewerId            INTEGER,
    ApprovalDate          DATETIME,
    Status                TEXT,
    Summary               TEXT,
    FullTextPath          TEXT,
    RelatedRegulationIds  TEXT,
    ImpactScore           REAL,
    AmendmentCount        INTEGER,
    LastAmendmentDate    DATETIME,
    PublicAccessUrl       TEXT,
    Tags                  TEXT
);

INSERT INTO environmental_policy_documents VALUES (1, 'Air Quality Management', '2022-01-01 00:00:00', '2025-12-31 23:59:59', 'National', 'USA', 'Regulation', 3, 901, 902, '2021-12-15 00:00:00', 'Active', 'Limits emissions from factories', '/policies/air_quality.pdf', 'R100,R101', 85.5, 2, '2023-05-10 00:00:00', 'http://gov.example.com/air', 'air,emissions,regulation');
INSERT INTO environmental_policy_documents VALUES (2, 'Water Conservation Act', '2021-06-01 00:00:00', '2030-05-31 23:59:59', 'State', 'California', 'Statute', 5, 903, 904, '2021-05-20 00:00:00', 'Active', 'Promotes water reuse', '/policies/water_conservation.pdf', 'R200', 78.0, 1, '2022-11-01 00:00:00', 'http://gov.example.com/water', 'water,conservation,policy');
INSERT INTO environmental_policy_documents VALUES (3, 'Renewable Energy Incentive', '2023-03-01 00:00:00', '2028-02-28 23:59:59', 'Regional', 'EU', 'Directive', 1, 905, 906, '2023-02-15 00:00:00', 'Draft', 'Support solar and wind projects', '/policies/renewable_energy.pdf', 'R300,R301,R302', 92.3, 0, NULL, 'http://eu.example.com/renewable', 'energy,renewable,policy');

--------------------------------------------------------------------

-- Software component registry
CREATE TABLE software_component_registry (
    ComponentId      INTEGER PRIMARY KEY,
    Name             TEXT,
    Version          TEXT,
    Language         TEXT,
    License          TEXT,
    RepositoryUrl    TEXT,
    MaintainerId     INTEGER,
    ReleaseDate      DATETIME,
    DeprecatedFlag   BOOLEAN,
    DeprecationDate DATETIME,
    SupportedOS      TEXT,
    DependencyList   TEXT,
    BuildNumber      INTEGER,
    Checksum         TEXT,
    SizeKB           INTEGER,
    DocumentationPath TEXT,
    IssueTrackerUrl  TEXT,
    LastCommitDate   DATETIME,
    OwnerTeam        TEXT,
    CriticalityLevel TEXT
);

INSERT INTO software_component_registry VALUES (1, 'AuthLib', '2.3.1', 'Java', 'Apache-2.0', 'https://github.com/example/authlib', 1001, '2023-01-15 00:00:00', 0, NULL, 'Linux,Windows', 'JWT,OAuth2', 451, 'abc123def456', 2048, '/docs/authlib/', 'https://github.com/example/authlib/issues', '2023-02-20 10:30:00', 'SecurityTeam', 'High');
INSERT INTO software_component_registry VALUES (2, 'DataViz', '1.0.0', 'Python', 'MIT', 'https://github.com/example/dataviz', 1002, '2022-11-01 00:00:00', 1, '2024-01-01 00:00:00', 'Linux', 'NumPy,Pandas,Matplotlib', 120, 'def789ghi012', 5120, '/docs/dataviz/', 'https://github.com/example/dataviz/issues', '2023-03-05 14:00:00', 'AnalyticsTeam', 'Medium');
INSERT INTO software_component_registry VALUES (3, 'CacheEngine', '5.4.0', 'C++', 'GPL-3.0', 'https://github.com/example/cacheengine', 1003, '2021-06-20 00:00:00', 0, NULL, 'Linux,macOS', 'Boost,spdlog', 789, 'ghi345jkl678', 10240, '/docs/cacheengine/', 'https://github.com/example/cacheengine/issues', '2022-12-10 09:15:00', 'InfraTeam', 'Critical');

--------------------------------------------------------------------

-- User behavior heatmaps
CREATE TABLE user_behavior_heatmaps (
    HeatmapId                 INTEGER PRIMARY KEY,
    UserId                    INTEGER,
    PageUrl                   TEXT,
    SessionId                 TEXT,
    CaptureDate               DATETIME,
    DurationSeconds           INTEGER,
    ClickCount                INTEGER,
    ScrollDepthPercent        INTEGER,
    MouseMoveCount            INTEGER,
    DeviceType                TEXT,
    Browser                   TEXT,
    OS                        TEXT,
    Resolution                TEXT,
    ReferrerUrl               TEXT,
    CampaignId                INTEGER,
    ConversionFlag            BOOLEAN,
    HeatmapDataPath           TEXT,
    AnonymizedFlag            BOOLEAN,
    DataVersion               INTEGER,
    Notes                     TEXT
);

INSERT INTO user_behavior_heatmaps VALUES (1, 2001, '/home', 'sessA123', '2023-04-01 09:00:00', 300, 15, 80, 250, 'Desktop', 'Chrome', 'Windows', '1920x1080', 'https://search.example.com', 501, 0, '/heatmaps/2001_home.json', 1, 2, 'First visit heatmap');
INSERT INTO user_behavior_heatmaps VALUES (2, 2002, '/product/42', 'sessB456', '2023-04-02 10:30:00', 420, 22, 95, 340, 'Mobile', 'Safari', 'iOS', '375x667', 'https://ads.example.com', 502, 1, '/heatmaps/2002_product42.json', 1, 2, 'Converted after view');
INSERT INTO user_behavior_heatmaps VALUES (3, 2003, '/search?q=analytics', 'sessC789', '2023-04-03 14:15:00', 180, 8, 60, 120, 'Tablet', 'Firefox', 'Android', '800x1280', 'https://ref.example.com', 503, 0, '/heatmaps/2003_search.json', 1, 2, 'Exploratory session');

--------------------------------------------------------------------

-- Knowledge graph ontology
CREATE TABLE knowledge_graph_ontology (
    OntologyId          INTEGER PRIMARY KEY,
    Name                TEXT,
    Description         TEXT,
    Namespace           TEXT,
    Version             TEXT,
    CreatedBy           INTEGER,
    CreatedDate         DATETIME,
    ModifiedBy          INTEGER,
    ModifiedDate        DATETIME,
    Status              TEXT,
    TripleCount         INTEGER,
    ClassCount          INTEGER,
    PropertyCount       INTEGER,
    RelationshipTypes   TEXT,
    License             TEXT,
    DocumentationUrl    TEXT,
    SourceDatasetIds    TEXT,
    ValidationScore     REAL,
    LastValidationDate  DATETIME,
    DeprecationFlag    BOOLEAN,
    Notes               TEXT
);

INSERT INTO knowledge_graph_ontology VALUES (1, 'HealthcareOntology', 'Ontology for medical concepts', 'http://example.org/health', '1.0', 1101, '2022-05-01 00:00:00', 1102, '2023-01-15 00:00:00', 'Active', 1250000, 4500, 12000, 'hasSymptom,treatedBy,locatedIn', 'CC0', 'http://example.org/docs/health_ontology', 'DS100,DS101', 96.8, '2023-03-20 00:00:00', 0, 'Used in clinical decision support');
INSERT INTO knowledge_graph_ontology VALUES (2, 'FinanceOntology', 'Financial instruments and entities', 'http://example.org/finance', '2.1', 1103, '2021-09-10 00:00:00', 1104, '2022-11-05 00:00:00', 'Active', 980000, 3200, 8500, 'owns,issuedBy,relatedTo', 'CC-BY', 'http://example.org/docs/finance_ontology', 'DS200', 89.4, '2022-12-01 00:00:00', 0, 'Supports regulatory reporting');
INSERT INTO knowledge_graph_ontology VALUES (3, 'EducationOntology', 'Academic courses and qualifications', 'http://example.org/education', '0.9', 1105, '2023-02-20 00:00:00', 1106, '2023-04-10 00:00:00', 'Draft', 450000, 1500, 4000, 'prerequisiteFor,awardedBy,hasLevel', 'CC-BY-SA', 'http://example.org/docs/education_ontology', 'DS300,DS301', 78.2, '2023-05-05 00:00:00', 0, 'Under development for LMS integration');
```