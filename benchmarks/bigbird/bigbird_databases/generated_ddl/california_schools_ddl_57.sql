-- District fiscal year budget information
CREATE TABLE district_fiscal_year_budget
(
    BudgetYear               TEXT    NOT NULL PRIMARY KEY,
    DistrictCode             TEXT    NULL,
    TotalRevenue             REAL    NULL,
    TotalExpenditure         REAL    NULL,
    PersonnelCosts           REAL    NULL,
    FacilitiesCosts          REAL    NULL,
    TransportationCosts      REAL    NULL,
    GrantsReceived           REAL    NULL,
    LocalTaxRevenue          REAL    NULL,
    StateFunding             REAL    NULL,
    FederalFunding           REAL    NULL,
    UnrestrictedFunds        REAL    NULL,
    RestrictedFunds          REAL    NULL,
    DebtService              REAL    NULL,
    CapitalOutlay            REAL    NULL,
    NetSurplus               REAL    NULL,
    AdjustedBudget           REAL    NULL,
    ApprovedBy               TEXT    NULL,
    ApprovalDate             DATE    NULL,
    LastUpdate               DATE    NULL,
    Comments                 TEXT    NULL
);

INSERT INTO district_fiscal_year_budget VALUES
('FY2022','D001',150000000,140000000,80000000,20000000,15000000,5000000,30000000,40000000,20000000,6000000,4000000,10000000,15000000,5000000,'JohnDoe','2022-02-15','2022-12-31','Initial submission');

INSERT INTO district_fiscal_year_budget VALUES
('FY2023','D001',155000000,145000000,82000000,21000000,16000000,5200000,31000000,41000000,21000000,6200000,4200000,10500000,15500000,5200000,'JaneSmith','2023-02-20','2023-12-31','Revised after mid‑year review');

INSERT INTO district_fiscal_year_budget VALUES
('FY2023','D002',90000000,85000000,50000000,12000000,9000000,3000000,18000000,25000000,12000000,3500000,2500000,6000000,9000000,3000000,'MikeBrown','2023-03-01','2023-12-31','Initial budget for district 2');

-- State education policy documents
CREATE TABLE state_education_policy_documents
(
    DocumentID          TEXT    NOT NULL PRIMARY KEY,
    StateCode           TEXT    NULL,
    Title               TEXT    NULL,
    Category            TEXT    NULL,
    EffectiveDate       DATE    NULL,
    ExpirationDate      DATE    NULL,
    Version             INTEGER NULL,
    Status              TEXT    NULL,
    AuthoringAgency     TEXT    NULL,
    Summary             TEXT    NULL,
    URL                 TEXT    NULL,
    FileHash            TEXT    NULL,
    ReviewDate          DATE    NULL,
    RevisionNumber      INTEGER NULL,
    Keywords            TEXT    NULL,
    Language            TEXT    NULL,
    ConfidentialityLevel TEXT   NULL,
    PublicationDate     DATE    NULL,
    LastModified        DATE    NULL,
    RecordStatus        TEXT    NULL,
    Comments            TEXT    NULL
);

INSERT INTO state_education_policy_documents VALUES
('DOC001','CA','Student Data Privacy','Privacy','2022-07-01','2025-07-01',1,'Active','Dept of Ed','Policy on handling student data','http://state.ca/edu/doc001','AB12CD34','2022-06-15',1,'privacy,student,data','English','Public','2022-07-01','2022-07-01','Current','Initial release');

INSERT INTO state_education_policy_documents VALUES
('DOC002','CA','Remote Learning Guidelines','Instruction','2021-09-01','2024-09-01',2,'Active','Dept of Ed','Guidelines for remote instruction','http://state.ca/edu/doc002','EF56GH78','2021-08-20',2,'remote,learning,online','English','Public','2021-09-01','2021-09-01','Current','Updated for hybrid models');

INSERT INTO state_education_policy_documents VALUES
('DOC003','NY','Special Education Funding Formula','Finance','2023-01-01','2026-01-01',1,'Draft','Dept of Ed','Proposed formula for SE funding','http://state.ny/edu/doc003','IJ90KL12','2022-12-10',1,'specialeducation,funding','English','Confidential','2023-01-01','2022-12-15','Pending','Under review');

-- Community sustainability metrics
CREATE TABLE community_sustainability_metrics
(
    MetricID                 TEXT    NOT NULL PRIMARY KEY,
    CommunityID              TEXT    NULL,
    Year                     INTEGER NULL,
    Population               INTEGER NULL,
    AvgHouseholdIncome       REAL    NULL,
    RenewableEnergyPct       REAL    NULL,
    WaterConservationPct     REAL    NULL,
    RecyclingRatePct         REAL    NULL,
    GreenSpaceAcres          REAL    NULL,
    AirQualityIndex          REAL    NULL,
    NoiseLevelDb             REAL    NULL,
    CarbonFootprintTons      REAL    NULL,
    SustainableTransportPct  REAL    NULL,
    LEEDCertifiedBuildings   INTEGER NULL,
    EnergyStarBuildings      INTEGER NULL,
    ClimateActionPlan        TEXT    NULL,
    FundingSource            TEXT    NULL,
    DataCollectedBy          TEXT    NULL,
    CollectionDate           DATE    NULL,
    LastUpdate               DATE    NULL,
    Notes                    TEXT    NULL
);

INSERT INTO community_sustainability_metrics VALUES
('MTR001','C001',2022,55000,72000,18.5,12.3,45.7,150.2,42.1,58.0,12.5,22.0,5,12,'PlanA','StateGrant','EnvDept','2022-10-05','2022-12-01','Baseline data');

INSERT INTO community_sustainability_metrics VALUES
('MTR002','C002',2022,82000,84000,22.0,15.0,50.3,210.5,38.7,55.5,10.2,30.5,8,15,'PlanB','FederalGrant','EnvDept','2022-11-01','2022-12-15','Includes new solar projects');

INSERT INTO community_sustainability_metrics VALUES
('MTR003','C001',2023,56000,73500,19.0,13.0,46.5,151.0,41.8,57.2,12.8,23.0,6,13,'PlanA','StateGrant','EnvDept','2023-10-05','2023-12-01','Updated after new wind turbines');

-- School IT asset inventory
CREATE TABLE school_it_asset_inventory
(
    AssetID               TEXT    NOT NULL PRIMARY KEY,
    CDSCode               TEXT    NULL,
    AssetType             TEXT    NULL,
    Manufacturer          TEXT    NULL,
    Model                 TEXT    NULL,
    SerialNumber          TEXT    NULL,
    PurchaseDate          DATE    NULL,
    WarrantyEndDate       DATE    NULL,
    Cost                  REAL    NULL,
    DepreciationYears    INTEGER NULL,
    CurrentValue          REAL    NULL,
    AssignedTo            TEXT    NULL,
    Location              TEXT    NULL,
    Status                TEXT    NULL,
    LastMaintenanceDate   DATE    NULL,
    MaintenanceProvider   TEXT    NULL,
    AssetTag              TEXT    NULL,
    NetworkIP             TEXT    NULL,
    MACAddress            TEXT    NULL,
    OSVersion             TEXT    NULL,
    SoftwareLicensed      TEXT    NULL
);

INSERT INTO school_it_asset_inventory VALUES
('ASSET001','12345','Laptop','Dell','Latitude5400','SN123456','2021-08-15','2024-08-15',1200,3,800,'TeacherA','Room101','Active','2023-06-10','TechServ','LT001','10.0.0.15','00-1A-2B-3C-4D-5E','Win10','Office365');

INSERT INTO school_it_asset_inventory VALUES
('ASSET002','12345','Desktop','HP','EliteDesk','SN789012','2020-01-20','2025-01-20',1500,5,1300,'AdminB','Office202','Active','2023-05-22','TechServ','DT002','10.0.0.20','00-1C-2D-3E-4F-5A','Win11','Office365');

INSERT INTO school_it_asset_inventory VALUES
('ASSET003','67890','Projector','Epson','PowerLite','SN345678','2019-09-10','2022-09-10',800,4,300,'Room202','Room202','InRepair','2023-02-14','AVServ','PJ003','10.0.1.5','00-1E-2F-3A-4B-5C','N/A','N/A');

-- Regional transportation infrastructure projects
CREATE TABLE regional_transportation_infrastructure_projects
(
    ProjectID               TEXT    NOT NULL PRIMARY KEY,
    RegionCode              TEXT    NULL,
    ProjectName             TEXT    NULL,
    ProjectType             TEXT    NULL,
    FundingSource           TEXT    NULL,
    StartDate               DATE    NULL,
    EndDate                 DATE    NULL,
    EstimatedCost           REAL    NULL,
    ActualCost              REAL    NULL,
    Contractor              TEXT    NULL,
    Status                  TEXT    NULL,
    MilepostStart           REAL    NULL,
    MilepostEnd             REAL    NULL,
    LaneCount               INTEGER NULL,
    BridgeCount             INTEGER NULL,
    TunnelCount             INTEGER NULL,
    EnvironmentalImpactScore REAL   NULL,
    PublicComments          TEXT    NULL,
    UpdatedBy               TEXT    NULL,
    UpdateDate              DATE    NULL,
    Notes                   TEXT    NULL
);

INSERT INTO regional_transportation_infrastructure_projects VALUES
('PRJ001','R01','Highway 5 Expansion','Roadway','FederalGrant','2022-05-01','2025-12-31',250000000,260000000,'BuildCo','InProgress',0.0,120.5,120.5,4,2,0,78.5,'Community supports','PlannerA','2023-03-10','Phase 1 completed');

INSERT INTO regional_transportation_infrastructure_projects VALUES
('PRJ002','R02','River Bridge Replacement','Bridge','StateFund','2021-09-15','2024-06-30',120000000,115000000','BridgeMakers','Completed',45.0,45.0,2,1,0,85.0,'Minimal disruption','PlannerB','2024-07-01','Opened with ceremony');

INSERT INTO regional_transportation_infrastructure_projects VALUES
('PRJ003','R01','Subway Line 3','Rail','MunicipalBond','2023-01-10','2028-11-20',500000000,NULL,'TransitBuilders','Planned',200.0,250.0,4,0,5,92.0,'Public hearings scheduled','PlannerC','2023-02-20','Environmental study pending');

-- Environmental noise compliance records
CREATE TABLE environmental_noise_compliance
(
    RecordID               TEXT    NOT NULL PRIMARY KEY,
    SiteID                 TEXT    NULL,
    SiteName               TEXT    NULL,
    MonitoringDate         DATE    NULL,
    NoiseLevelDb           REAL    NULL,
    NoiseLimitDb           REAL    NULL,
    Exceedance             BOOLEAN NULL,
    MitigationAction       TEXT    NULL,
    ResponsibleParty       TEXT    NULL,
    FollowUpDate           DATE    NULL,
    Status                 TEXT    NULL,
    Latitude               REAL    NULL,
    Longitude              REAL    NULL,
    RecordedBy             TEXT    NULL,
    VerificationDate       DATE    NULL,
    Comments               TEXT    NULL,
    AuditTrail             TEXT    NULL,
    LastUpdated            DATE    NULL,
    SourceInstrument       TEXT    NULL,
    CalibrationDate        DATE    NULL,
    ComplianceScore        REAL    NULL
);

INSERT INTO environmental_noise_compliance VALUES
('NC001','ST001','Main St Near School','2023-04-12',68.5,70,0,'None','EnvDept','2023-05-01','Compliant',34.0522,-118.2437','Tech1','2023-04-15','Within limits','LogA','2023-04-20','SoundMeterX','2023-01-10',95.0);

INSERT INTO environmental_noise_compliance VALUES
('NC002','ST002','Industrial Park','2023-04-15',78.2,70,1,'Install barriers','EnvDept','2023-06-01','Non‑Compliant',34.1015,-118.3400','Tech2','2023-04-18','Exceeded limit','LogB','2023-04-22','SoundMeterY','2023-02-05',65.0);

INSERT INTO environmental_noise_compliance VALUES
('NC003','ST003','Parkside Playground','2023-04-20',62.0,70,0,'None','EnvDept','2023-05-15','Compliant',34.1500,-118.2500','Tech3','2023-04-22','Good condition','LogC','2023-04-25','SoundMeterZ','2023-03-01',98.0);

-- Parental engagement survey results
CREATE TABLE parental_engagement_survey_results
(
    SurveyID               TEXT    NOT NULL PRIMARY KEY,
    SchoolCDS              TEXT    NULL,
    Year                   INTEGER NULL,
    ParentID               TEXT    NULL,
    SurveyDate             DATE    NULL,
    OverallSatisfaction    INTEGER NULL,
    CommunicationRating    INTEGER NULL,
    VolunteerOpportunitiesRating INTEGER NULL,
    DecisionMakingInclusion INTEGER NULL,
    FeedbackComments       TEXT    NULL,
    RecommendScore         INTEGER NULL,
    SurveyMethod           TEXT    NULL,
    CompletedBy            TEXT    NULL,
    DataVerified           BOOLEAN NULL,
    LastModified           DATE    NULL,
    FollowUpAction         TEXT    NULL,
    ActionDueDate          DATE    NULL,
    SurveyVersion          INTEGER NULL,
    Notes                  TEXT    NULL,
    RespondentEmail        TEXT    NULL,
    RespondentPhone        TEXT    NULL
);

INSERT INTO parental_engagement_survey_results VALUES
('SURV001','12345',2023,'P001','2023-03-15',4,5,3,4,'More evening events','9','Online','AdminA',1,'2023-03-20','Send email reminder','2023-04-01',1,'First wave','parent1@example.com','5551234567');

INSERT INTO parental_engagement_survey_results VALUES
('SURV002','12345',2023,'P002','2023-03-18',5,4,5,5,'Great communication','10','Paper','AdminB',1,'2023-03-22','Invite to volunteer committee','2023-04-10',1,'Follow‑up needed','parent2@example.com','5559876543');

INSERT INTO parental_engagement_survey_results VALUES
('SURV003','67890',2023,'P003','2023-03-20',3,3,2,2,'Need more info on curriculum','6','Online','AdminC',0,'2023-03-25','Schedule info session','2023-04-15',1,'Low response','parent3@example.com','5555551212');

-- Student extracurricular award history
CREATE TABLE student_extracurricular_award_history
(
    AwardID                TEXT    NOT NULL PRIMARY KEY,
    StudentID              TEXT    NULL,
    SchoolCDS              TEXT    NULL,
    Year                   INTEGER NULL,
    ActivityName           TEXT    NULL,
    AwardTitle             TEXT    NULL,
    AwardLevel             TEXT    NULL,
    AwardDate              DATE    NULL,
    IssuingOrganization    TEXT    NULL,
    Description            TEXT    NULL,
    RecognizedBy           TEXT    NULL,
    CertificateNumber      TEXT    NULL,
    MonetaryValue          REAL    NULL,
    ScholarshipAwarded     BOOLEAN NULL,
    EligibilityCriteria    TEXT    NULL,
    NominationSource       TEXT    NULL,
    SelectionProcess       TEXT    NULL,
    Remarks                TEXT    NULL,
    RecordedBy             TEXT    NULL,
    RecordDate             DATE    NULL,
    Notes                  TEXT    NULL
);

INSERT INTO student_extracurricular_award_history VALUES
('AWD001','S001','12345',2022,'Debate','State Champion','State','2022-04-10','State Debate League','Best argument on public policy','CoachA','CERT001',0,0,'Open to all grades','TeacherNomination','PanelReview','Outstanding performance','AdminA','2022-04-12','First award');

INSERT INTO student_extracurricular_award_history VALUES
('AWD002','S002','12345',2023,'Science Fair','National Merit','National','2023-05-05','National Science Alliance','Innovative renewable energy project','CoachB','CERT002',500,1,'Top 5% nationally','SelfNomination','JudgesVote','Media coverage','AdminB','2023-05-07','Second award');

INSERT INTO student_extracurricular_award_history VALUES
('AWD003','S003','67890',2022,'Band','Gold Medal','District','2022-03-20','District Music Association','Best marching performance','CoachC','CERT003',0,0,'All band members','PeerNomination','CommitteeDecision','Highly praised','AdminC','2022-03-22','Third award');

-- Faculty research collaboration funding
CREATE TABLE faculty_research_collaboration_funding
(
    GrantID                TEXT    NOT NULL PRIMARY KEY,
    FacultyID              TEXT    NULL,
    Department             TEXT    NULL,
    GrantTitle             TEXT    NULL,
    FundingAgency          TEXT    NULL,
    FundingAmount          REAL    NULL,
    StartDate              DATE    NULL,
    EndDate                DATE    NULL,
    PI_Name                TEXT    NULL,
    CoPI_Names             TEXT    NULL,
    GrantNumber            TEXT    NULL,
    AwardStatus            TEXT    NULL,
    PrincipalInvestigator  TEXT    NULL,
    FundingType            TEXT    NULL,
    IndirectCostRate       REAL    NULL,
    TotalPersonnelCost     REAL    NULL,
    TotalEquipmentCost     REAL    NULL,
    TotalOtherCost         REAL    NULL,
    ReportingFrequency     TEXT    NULL,
    LastReportDate         DATE    NULL,
    Comments               TEXT    NULL
);

INSERT INTO faculty_research_collaboration_funding VALUES
('GRNT001','F001','Biology','Stem Cell Regeneration','NIH',750000,'2022-07-01','2025-06-30','DrSmith','DrLee,DrKim','NIH2022-001','Awarded','DrSmith','Federal',0.45,300000,150000,300000,'Annual','2023-07-01','First year report submitted');

INSERT INTO faculty_research_collaboration_funding VALUES
('GRNT002','F002','ComputerScience','AI for Education','NSF',500000,'2021-01-15','2024-01-14','DrJohnson','DrWhite','NSF2021-045','Awarded','DrJohnson','Federal',0.40,200000,100000,200000,'SemiAnnual','2022-12-15','Mid‑project review done');

INSERT INTO faculty_research_collaboration_funding VALUES
('GRNT003','F003','History','Digital Archiving of Local Newspapers','StateFund',250000,'2023-03-01','2026-02-28','DrBrown','DrGreen','STF2023-078','Pending','DrBrown','State',0.30,100000,50000,100000,'Annual','2023-09-01','Pending award decision');

-- School arts space utilization
CREATE TABLE school_arts_space_utilization
(
    RecordID                TEXT    NOT NULL PRIMARY KEY,
    SchoolCDS               TEXT    NULL,
    Year                    INTEGER NULL,
    SpaceName               TEXT    NULL,
    SpaceType               TEXT    NULL,
    SquareFeet              REAL    NULL,
    Capacity                INTEGER NULL,
    CurrentUsageHoursPerWeek REAL    NULL,
    ScheduledEvents         INTEGER NULL,
    MaintenanceStatus       TEXT    NULL,
    LastRenovationDate      DATE    NULL,
    AcousticRating          REAL    NULL,
    LightingRating          REAL    NULL,
    AccessibilityCompliance TEXT    NULL,
    SafetyInspectionDate    DATE    NULL,
    InspectorName           TEXT    NULL,
    Comments                TEXT    NULL,
    UpdatedBy               TEXT    NULL,
    UpdateDate              DATE    NULL,
    FundingSource           TEXT    NULL,
    FuturePlannedUse        TEXT    NULL
);

INSERT INTO school_arts_space_utilization VALUES
('UTIL001','12345',2022,'Main Auditorium','Theater',12000,800,30.5,45,'Good','2020-06-15',8.5,9.0','Compliant','2022-11-01','InspectorA','Well used for performances','AdminA','2022-12-01','DistrictArtsFund','Convert to virtual studio');

INSERT INTO school_arts_space_utilization VALUES
('UTIL002','12345',2022,'Art Studio 1','Studio',2500,40,12.0,20,'Excellent','2021-04-20',9.0,8.5','Compliant','2022-10-10','InspectorB','Needs new easels','AdminB','2022-11-15','GrantArtPlus','Expand to photography');

INSERT INTO school_arts_space_utilization VALUES
('UTIL003','67890',2022,'Music Lab','Lab',1800,30,15.0,25,'Fair','2019-09-30',7.5,8.2','Compliant','2022-09-05','InspectorC','Acoustic panels aging','AdminC','2022-10-20','StateMusicFund','Upgrade sound system');