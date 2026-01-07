-- School artifacts inventory – physical items owned by schools
CREATE TABLE school_artifacts_inventory (
    ArtifactID TEXT PRIMARY KEY,
    CDSCode TEXT,
    ArtifactName TEXT,
    Category TEXT,
    AcquisitionDate TEXT,
    Condition TEXT,
    ValueUSD REAL,
    LocationRoom TEXT,
    DisplayStatus TEXT,
    Description TEXT,
    Photographer TEXT,
    PhotoDate TEXT,
    InsurancePolicy TEXT,
    InsuredValue REAL,
    DonorName TEXT,
    DonorRelation TEXT,
    ConservationStatus TEXT,
    LastConservationDate TEXT,
    Notes TEXT,
    CreatedAt DATE
);
INSERT INTO school_artifacts_inventory VALUES ('A001','CDS001','Historic_Mural','Art','2010-05-12','Good',15000,'Room101','On_Display','Mural_of_local_history','John_Doe','2010-05-15','POL123',15000,'Alumni_Trust','Donation','Preserved','2018-09-01','Initial_entry','2022-01-01');
INSERT INTO school_artifacts_inventory VALUES ('A002','CDS002','Bronze_Statue','Sculpture','2005-03-20','Fair',8000,'Courtyard','Outdoor','Statue_of_founder','Jane_Smith','2005-03-22','POL456',8000,'Community_Party','Gift','Needs_Restoration','2020-04-10','Restoration_planned','2022-02-15');
INSERT INTO school_artifacts_inventory VALUES ('A003','CDS003','Vintage_Maps','Document','1998-11-05','Excellent',2000,'Library','Storage','World_Maps_1900s','Mike_Lee','1998-11-07','POL789',2000,'Historical_Society','Purchase','Archived','2021-12-01','Digitalized','2022-03-05');

-- District climate data – annual weather statistics per district
CREATE TABLE district_climate_data (
    RecordID TEXT PRIMARY KEY,
    DistrictCode TEXT,
    Year INTEGER,
    AvgTempC REAL,
    AvgPrecipMM REAL,
    MaxTempC REAL,
    MinTempC REAL,
    HeatingDegreeDays INTEGER,
    CoolingDegreeDays INTEGER,
    CO2EmissionsTonnes REAL,
    RenewableEnergyPct REAL,
    EnergyConsumptionMWh REAL,
    WeatherStationID TEXT,
    ObservationCount INTEGER,
    DataSource TEXT,
    DataQualityFlag TEXT,
    CreatedDate TEXT,
    UpdatedDate TEXT,
    Notes TEXT,
    AnalystName TEXT
);
INSERT INTO district_climate_data VALUES ('R001','D001',2021,12.3,850.5,35.2, -5.1,3200,1500,12500.5,18.2,34000,'WS1001',365,'NOAA','A','2022-01-10','2022-06-12','Annual_summary','Emily_Jones');
INSERT INTO district_climate_data VALUES ('R002','D002',2021,13.1,920.0,38.0, -3.5,3100,1600,13200.0,20.5,35500,'WS1002',365,'State_Env_Agency','B','2022-01-12','2022-06-15','Includes_extreme_events','Mark_Taylor');
INSERT INTO district_climate_data VALUES ('R003','D003',2021,11.8,780.3,33.5, -7.2,3400,1400,11900.8,16.0,33000,'WS1003',365,'University_Research','A','2022-01-15','2022-06-20','Data_verified','Sofia_Khan');

-- Teacher virtual training – online professional development sessions
CREATE TABLE teacher_virtual_training (
    TrainingID TEXT PRIMARY KEY,
    TeacherID TEXT,
    TrainingTitle TEXT,
    Provider TEXT,
    Platform TEXT,
    StartDate TEXT,
    EndDate TEXT,
    Hours REAL,
    CertificationEarned TEXT,
    CompletionStatus TEXT,
    Score REAL,
    Feedback TEXT,
    CertificateURL TEXT,
    CostUSD REAL,
    FundingSource TEXT,
    SessionLink TEXT,
    AccessCode TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    ReviewerName TEXT
);
INSERT INTO teacher_virtual_training VALUES ('T001','TCH001','Advanced_Math_Techniques','EduCorp','Zoom','2022-02-01','2022-02-05',12.0,'Math_Tech_Cert','Completed',92.5,'Very_useful','http://certs.edu/adv_math','300','School_Budget','http://zoom.edu/adv_math','ABC123','2022-02-01','2022-02-06','N/A','Laura_Martin');
INSERT INTO teacher_virtual_training VALUES ('T002','TCH002','Inclusive_Classroom_Strategies','InclusionNow','Microsoft_Teams','2022-03-10','2022-03-12',8.0,'Inclusion_Cert','Completed',88.0,'Helpful','http://certs.edu/incl_class','200','Grant_Funded','http://teams.edu/incl_class','DEF456','2022-03-10','2022-03-13','Follow_up_needed','James_OBrien');
INSERT INTO teacher_virtual_training VALUES ('T003','TCH003','STEM_Integration','TechEd','Google_Meet','2022-04-15','2022-04-18',10.0,'STEM_Cert','In_Progress',NULL,'Pending','',250,'School_Budget','http://meet.edu/stem','GHI789','2022-04-15','2022-04-18','Midway','Karen_Lee');

-- Student fundraising events – school‑organized fundraising activities
CREATE TABLE student_fundraising_events (
    EventID TEXT PRIMARY KEY,
    SchoolCode TEXT,
    EventName TEXT,
    EventType TEXT,
    StartDate TEXT,
    EndDate TEXT,
    GoalAmountUSD REAL,
    RaisedAmountUSD REAL,
    CoordinatorName TEXT,
    CoordinatorEmail TEXT,
    VolunteerCount INTEGER,
    StudentParticipants INTEGER,
    Location TEXT,
    Description TEXT,
    SponsorList TEXT,
    OnlineLink TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    Status TEXT
);
INSERT INTO student_fundraising_events VALUES ('E001','SCH001','Winter_Wonderland','Gala','2022-12-01','2022-12-02',5000,4500,'Amy_Clark','amy.clark@school.org',30,120,'Gymnasium','Winter_theme_gala','Local_Businesses','http://school.org/winterfest','2022-10-01','2022-12-03','Nearly_met_goal','Closed');
INSERT INTO student_fundraising_events VALUES ('E002','SCH002','Spring_Sprint','Fun_Run','2023-04-10','2023-04-10',3000,3200,'Brian_Kim','brian.kim@school.org',20,200,'Track_Field','5k_run_for_books','Community_Sponsors','http://school.org/spruns','2023-02-15','2023-04-11','Exceeded_goal','Closed');
INSERT INTO student_fundraising_events VALUES ('E003','SCH003','Art_Auction','Auction','2023-05-20','2023-05-20',4000,1500,'Cara_Ng','cara.ng@school.org',15,80,'Auditorium','Student_artwork_auction','Parents_Association','http://school.org/artauction','2023-03-01','2023-05-21','Below_target','Open');

-- Community grant opportunities – external funding programs
CREATE TABLE community_grant_opportunities (
    GrantID TEXT PRIMARY KEY,
    AgencyName TEXT,
    ProgramName TEXT,
    FundingArea TEXT,
    EligibilityCriteria TEXT,
    ApplicationDeadline TEXT,
    AwardAmountUSD REAL,
    GrantPeriodMonths INTEGER,
    ContactPerson TEXT,
    ContactEmail TEXT,
    Phone TEXT,
    Website TEXT,
    RequiredDocuments TEXT,
    MatchingFundsRequired TEXT,
    ReviewProcess TEXT,
    ScoreWeight TEXT,
    Status TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    Category TEXT
);
INSERT INTO community_grant_opportunities VALUES ('G001','State_Education_Dept','STEM_Innovation_Grant','STEM','Public_Schools','2023-09-30',25000,24,'Linda_Perez','linda.perez@sed.gov','555-1234','http://sed.gov/grants','Proposal,Budget','Yes','Panel_Review','70%_Impact','Open','2023-01-15','2023-02-01','First_round','Education');
INSERT INTO community_grant_opportunities VALUES ('G002','National_Foundation','Arts_Community_Grant','Arts','Nonprofits','2023-11-15',15000,12,'Mark_Davis','mark.davis@nfd.org','555-5678','http://nfd.org/grants','Letter_of_Intention','No','Scoring_Rubric','50%_Artistry','Open','2023-02-20','2023-03-05','Focus_on_youth','Culture');
INSERT INTO community_grant_opportunities VALUES ('G003','Federal_Agencies','Healthy_Schools_Initiative','Health','K-12_Public','2023-10-01',50000,36,'Susan_Lee','susan.lee@fda.gov','555-9012','http://fda.gov/healthy','Application_Form,Plan','Yes','Committee_Review','80%_Outcomes','Closed','2023-03-10','2023-04-12','Awarded_to_7_schools','Health');

-- Facility water usage – daily water consumption per facility
CREATE TABLE facility_water_usage (
    UsageID TEXT PRIMARY KEY,
    FacilityID TEXT,
    Date TEXT,
    WaterVolumeLiters REAL,
    PeakFlowLPS REAL,
    AvgTempC REAL,
    MeterReadingStart REAL,
    MeterReadingEnd REAL,
    BillingAmountUSD REAL,
    CostPerLiterUSD REAL,
    SourceType TEXT,
    ConservationMeasureApplied TEXT,
    MaintenanceComment TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    AuditorName TEXT,
    AuditScore INTEGER,
    Notes TEXT,
    SubmeterID TEXT,
    Shift TEXT
);
INSERT INTO facility_water_usage VALUES ('WU001','FAC001','2022-12-01',35000,12.5,10.2,120000,155000,4200,0.12,'Municipal','Low_Flow_Fixtures','No_issues','2022-12-02','2022-12-03','Mike_Jones',95,'Monthly_reading','SUB001','Day');
INSERT INTO facility_water_usage VALUES ('WU002','FAC002','2022-12-01',42000,14.0,9.8,200000,242000,5000,0.119,'Well','Rainwater_Harvest','Leak_repaired','2022-12-02','2022-12-03','Sara_Kim',88,'Monthly_reading','SUB002','Night');
INSERT INTO facility_water_usage VALUES ('WU003','FAC003','2022-12-01',28000,10.0,11.0,80000,108000,3400,0.121,'Reclaimed','Greywater_Reuse','Routine_check','2022-12-02','2022-12-03','Tom_Liu',92,'Monthly_reading','SUB003','Day');

-- School transportation safety audits – periodic safety reviews of bus routes
CREATE TABLE school_transportation_safety_audits (
    AuditID TEXT PRIMARY KEY,
    RouteID TEXT,
    AuditDate TEXT,
    InspectorName TEXT,
    PassFail TEXT,
    ViolationsCount INTEGER,
    CriticalViolations INTEGER,
    NonCriticalViolations INTEGER,
    CorrectiveActionsTaken TEXT,
    FollowUpDate TEXT,
    Comments TEXT,
    VehicleID TEXT,
    DriverID TEXT,
    SafetyScore INTEGER,
    WeatherCondition TEXT,
    TrafficCondition TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    AuditType TEXT,
    AuditStatus TEXT
);
INSERT INTO school_transportation_safety_audits VALUES ('AU001','R001','2022-11-15','Karen_Wong','Pass',2,0,2','Seat_belts_checked;Lights_functional','2022-12-01','All_good','BUS1001','DRV2001',88,'Clear','Light','2022-11-15','2022-11-16','Routine_audit','Annual','Closed');
INSERT INTO school_transportation_safety_audits VALUES ('AU002','R002','2022-11-20','Luis_Garcia','Fail',5,2,3','Brake_issues_fixed;Mirror_replaced','2022-12-10','Brake_failure_observed','BUS1002','DRV2002',65,'Rain','Heavy','2022-11-20','2022-11-21','Follow_up_needed','Spot','Open');
INSERT INTO school_transportation_safety_audits VALUES ('AU003','R003','2022-12-05','Emily_Stone','Pass',1,0,1','Tire_pressure_checked','2022-12-15','Minor_wear','BUS1003','DRV2003',92,'Snow','Moderate','2022-12-05','2022-12-06','Seasonal_audit','Quarterly','Closed');

-- District policy feedback – stakeholder comments on district policies
CREATE TYPE policy_feedback_category AS ENUM ('Curriculum','Finance','Facilities','Safety','Equity');
CREATE TABLE district_policy_feedback (
    FeedbackID TEXT PRIMARY KEY,
    PolicyID TEXT,
    DistrictID TEXT,
    SubmittedBy TEXT,
    Role TEXT,
    FeedbackDate TEXT,
    RatingScore INTEGER,
    Comments TEXT,
    SuggestedChanges TEXT,
    AttachmentURL TEXT,
    Status TEXT,
    ReviewedBy TEXT,
    ReviewDate TEXT,
    ActionTaken TEXT,
    FollowUpDate TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Category TEXT,
    Priority TEXT,
    Tags TEXT
);
INSERT INTO district_policy_feedback VALUES ('PF001','POL100','D001','Alice_Brown','Teacher','2022-10-12',4,'Needs_more_tech_resources','Add_1to1_laptops','http://docs.org/pf001','Pending','John_Doe','2022-10-20','Reviewed','2022-11-01','2022-10-12','2022-10-21','Facilities','High','tech,hardware');
INSERT INTO district_policy_feedback VALUES ('PF002','POL200','D001','Mark_Taylor','Parent','2022-11-01',3,'Concerns_about_bus_routing','Adjust_pickup_times','http://docs.org/pf002','Open','Susan_Lee','2022-11-05','Under_review','2022-11-15','2022-11-01','2022-11-06','Safety','Medium','transport,logistics');
INSERT INTO district_policy_feedback VALUES ('PF003','POL300','D002','Nina_Khan','Administrator','2022-12-05',5,'Excellent_budget_allocation','Maintain_current_funding_levels','http://docs.org/pf003','Closed','Karen_Wong','2022-12-10','Approved','2022-12-20','2022-12-05','2022-12-06','Finance','Low','budget,allocation');

-- Technology licensing compliance – software license tracking
CREATE TABLE technology_licensing_compliance (
    LicenseID TEXT PRIMARY KEY,
    SoftwareName TEXT,
    Vendor TEXT,
    Version TEXT,
    LicenseKey TEXT,
    PurchaseDate TEXT,
    ExpirationDate TEXT,
    SeatsPurchased INTEGER,
    SeatsInUse INTEGER,
    ComplianceStatus TEXT,
    LastAuditDate TEXT,
    AuditorName TEXT,
    CostUSD REAL,
    RenewalReminderDate TEXT,
    Department TEXT,
    PrimaryContact TEXT,
    ContactEmail TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);
INSERT INTO technology_licensing_compliance VALUES ('L001','MathWorks_MATLAB','MathWorks','R2022a','ABCD-1234-EFGH-5678','2021-08-01','2023-08-01',200,180,'Compliant','2022-09-15','Laura_Martin',50000,'2023-07-01','Engineering','Tom_White','tom.white@school.org','Annual_review','2022-08-01','2022-09-16');
INSERT INTO technology_licensing_compliance VALUES ('L002','Adobe_Photoshop','Adobe','2022','XYZ9-8765-UVWX-4321','2022-01-15','2024-01-15',150,150,'Compliant','2022-10-10','Mike_Jones',30000,'2023-12-01','Art','Sara_Kim','sara.kim@school.org','License_renewal_pending','2022-01-15','2022-10-11');
INSERT INTO technology_licensing_compliance VALUES ('L003','Microsoft_Office','Microsoft','365','MNO1-2345-PQRS-6789','2020-05-01','2025-05-01',500,470,'Compliant','2022-11-20','Emily_Stone',75000,'2025-04-01','Administration','James_OBrien','james.obrien@school.org','Enterprise_agreement','2020-05-01','2022-11-21');

-- Parent engagement platform – records of parent interactions with digital portal
CREATE TABLE parent_engagement_platform (
    RecordID TEXT PRIMARY KEY,
    ParentID TEXT,
    StudentID TEXT,
    PlatformName TEXT,
    RegistrationDate TEXT,
    LastLoginDate TEXT,
    ActivityCount INTEGER,
    MessagesSent INTEGER,
    AlertsReceived INTEGER,
    SubscriptionLevel TEXT,
    PaymentStatus TEXT,
    RenewalDate TEXT,
    PreferredLanguage TEXT,
    MobileAppInstalled TEXT,
    NotificationPreferences TEXT,
    DataSharingConsent TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    Status TEXT
);
INSERT INTO parent_engagement_platform VALUES ('PE001','PAR001','STU001','School_Connect','2021-09-15','2022-12-20',45,12,5,'Premium','Paid','2023-09-15','English','Yes','All','Yes','2021-09-15','2022-12-20','Active_user','Active');
INSERT INTO parent_engagement_platform VALUES ('PE002','PAR002','STU002','FamilyPortal','2022-01-10','2022-12-18',30,8,3,'Standard','Unpaid','2023-01-10','Spanish','No','Essential','No','2022-01-10','2022-12-18','Pending_payment','Inactive');
INSERT INTO parent_engagement_platform VALUES ('PE003','PAR003','STU003','EduLink','2021-03-05','2022-12-22',60,20,10,'Premium','Paid','2023-03-05','French','Yes','All','Yes','2021-03-05','2022-12-22','High_engagement','Active');