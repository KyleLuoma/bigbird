-- Community resources available to students and families
CREATE TABLE community_resources (
    ResourceID INTEGER PRIMARY KEY,
    ResourceName TEXT NOT NULL,
    Category TEXT,
    ProviderName TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    AddressLine1 TEXT,
    AddressLine2 TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    ServiceHours TEXT,
    EligibilityCriteria TEXT,
    AgeRange TEXT,
    CostLevel TEXT,
    LanguagesSupported TEXT,
    OnlineAccess INTEGER,
    PhysicalLocation INTEGER,
    Capacity INTEGER,
    IsNonProfit INTEGER,
    AccreditationStatus TEXT,
    LastVerified DATE
);

INSERT INTO community_resources VALUES (1,'AfterSchoolTutoring','Education','LearningCenter','5551234567','info@learningcenter.org','123 Main St','','Springfield','IL','62704','Mon-Fri 3-6pm','LowIncome','5-18','Free','English,Spanish',1,1,30,1,'Accredited','2023-12-01');
INSERT INTO community_resources VALUES (2,'YouthMentalHealth','Health','WellnessOrg','5559876543','contact@wellness.org','456 Oak Ave','Suite 200','Riverdale','CA','90210','Mon-Fri 9-5pm','All','12-20','SlidingScale','English',0,1,20,1,'Certified','2024-01-15');
INSERT INTO community_resources VALUES (3,'CollegePrepWorkshops','College','FuturePaths','5555551212','admin@futurepaths.com','789 Pine Rd','','Lakeview','TX','75001','Sat 10am-2pm','GraduatingSeniors','17-19','Free','English,French',1,0,0,0,'Approved','2023-11-20');

-- Transportation routes serving schools and districts
CREATE TABLE transportation_routes (
    RouteID INTEGER PRIMARY KEY,
    RouteNumber TEXT NOT NULL,
    RouteName TEXT,
    StartingPoint TEXT,
    EndingPoint TEXT,
    TotalMiles REAL,
    AverageDuration INTEGER,
    VehicleType TEXT,
    Capacity INTEGER,
    DriverName TEXT,
    DriverLicense TEXT,
    ScheduleMonday TEXT,
    ScheduleTuesday TEXT,
    ScheduleWednesday TEXT,
    ScheduleThursday TEXT,
    ScheduleFriday TEXT,
    ScheduleSaturday TEXT,
    ScheduleSunday TEXT,
    FuelType TEXT,
    MaintenanceStatus TEXT,
    LastInspection DATE,
    ActiveFlag INTEGER,
    Notes TEXT
);

INSERT INTO transportation_routes VALUES (101,'R1','North Loop','North Campus','Central Hub',12.5,35,'Bus',50,'John Doe','D1234567','6:00-8:00','6:00-8:00','6:00-8:00','6:00-8:00','6:00-8:00','None','None','Diesel','Good','2023-10-05',1,'Routine service');
INSERT INTO transportation_routes VALUES (102,'R2','East Express','East Side','West Side',8.2,20,'Van',15,'Jane Smith','D7654321','7:00-8:30','7:00-8:30','7:00-8:30','7:00-8:30','7:00-8:30','None','None','Electric','Excellent','2023-12-12',1,'Battery replaced 2023');
INSERT INTO transportation_routes VALUES (103,'R3','South Shuttle','South Park','North Park',15.0,45,'Bus',40,'Mike Lee','D1122334','5:30-7:30','5:30-7:30','5:30-7:30','5:30-7:30','5:30-7:30','None','None','Hybrid','NeedsMaintenance','2023-08-20',0,'Awaiting repairs');

-- Extracurricular activities offered by schools
CREATE TABLE extracurricular_activities (
    ActivityID INTEGER PRIMARY KEY,
    ActivityName TEXT NOT NULL,
    Category TEXT,
    AdvisorName TEXT,
    AdvisorEmail TEXT,
    MeetingDay TEXT,
    MeetingTime TEXT,
    Location TEXT,
    MaxParticipants INTEGER,
    MinGrade TEXT,
    MaxGrade TEXT,
    EquipmentNeeded TEXT,
    CompetitionLevel TEXT,
    Season TEXT,
    IsFunded INTEGER,
    FundingSource TEXT,
    AnnualBudget REAL,
    StudentCount INTEGER,
    AlumniSupport INTEGER,
    Recognition TEXT,
    LastUpdated DATE,
    Notes TEXT
);

INSERT INTO extracurricular_activities VALUES (201,'Robotics Club','STEM','Dr Allen','allen@school.edu','Tuesday','3:30-5:00','Room 210',30,'9','12','Robots,Tools','Regional','Fall',1,'Grant','5000',25,1,'State Finalist','2024-01-10','New sponsor added');
INSERT INTO extracurricular_activities VALUES (202,'Jazz Band','Arts','Ms Rivera','rivera@school.edu','Thursday','2:00-4:00','Music Hall',20,'10','12','Instruments, Sheet Music','National','Winter',0,'','0',15,0,'','2023-11-05','Need new saxophones');
INSERT INTO extracurricular_activities VALUES (203,'Debate Team','Language','Mr Patel','patel@school.edu','Monday','4:00-6:00','Room 105',25,'9','12','Podium, Timer','International','Year-round',1,'School Funds','2000',22,1,'Regional Champion','2024-02-01','Travel budget increased');

-- Staff professional development courses
CREATE TABLE staff_professional_development (
    CourseID INTEGER PRIMARY KEY,
    CourseTitle TEXT NOT NULL,
    Department TEXT,
    InstructorName TEXT,
    InstructorEmail TEXT,
    StartDate DATE,
    EndDate DATE,
    DurationHours INTEGER,
    DeliveryMode TEXT,
    TargetAudience TEXT,
    Credits INTEGER,
    CostPerParticipant REAL,
    MaxParticipants INTEGER,
    RegistrationDeadline DATE,
    Venue TEXT,
    MaterialsProvided INTEGER,
    OnlineLink TEXT,
    EvaluationScore REAL,
    CertificationAwarded INTEGER,
    FundingSource TEXT,
    SeatsFilled INTEGER,
    Comments TEXT
);

INSERT INTO staff_professional_development VALUES (301,'Inclusive Teaching Strategies','Instruction','Dr Greene','greene@ed.org','2024-03-01','2024-03-05',20,'InPerson','Teachers',2,150.00,25,'2024-02-20','Main Auditorium',1,'','4.5',1,'District Budget',20,'Highly rated');
INSERT INTO staff_professional_development VALUES (302,'Data Analytics for Educators','Administration','Ms Lee','lee@analytics.com','2024-04-10','2024-04-12',15,'Hybrid','Admins, Data Coaches',1,200.00,15,'2024-04-01','Room 300',1,'http://pdonline.edu/analytics','4.8',1,'Grant',12,'Full seats');
INSERT INTO staff_professional_development VALUES (303,'Mental Health First Aid','Support Services','Mr Kim','kim@health.org','2024-05-15','2024-05-16',12,'Online','Counselors, Staff',1,0.00,30,'2024-05-05','',1,'http://mhfa.edu','4.2',1,'State Funding',28,'Certificate included');

-- Facility maintenance records
CREATE TABLE facility_maintenance (
    MaintenanceID INTEGER PRIMARY KEY,
    FacilityName TEXT NOT NULL,
    MaintenanceType TEXT,
    ContractorName TEXT,
    ContractNumber TEXT,
    ScheduledDate DATE,
    CompletionDate DATE,
    EstimatedCost REAL,
    ActualCost REAL,
    WorkDescription TEXT,
    SafetyHazardFlag INTEGER,
    InspectionPassed INTEGER,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    AssignedStaff TEXT,
    PriorityLevel TEXT,
    Status TEXT,
    WarrantyApplicable INTEGER,
    WarrantyExpires DATE,
    Notes TEXT,
    LastUpdated DATE,
    PhotoReference TEXT
);

INSERT INTO facility_maintenance VALUES (401,'Gymnasium','Roof Repair','BuildCo','BC-2023-07','2024-02-10','2024-02-12',12000.00,11800.00,'Replaced damaged tiles and sealed joints',0,1,0,NULL,'Tom Harris','High','Completed',1,'2026-02-10','All good','2024-02-13','gym_roof_0214.jpg');
INSERT INTO facility_maintenance VALUES (402,'Science Lab','HVAC Upgrade','CoolAir','CA-2024-02','2024-03-01','2024-03-03',25000.00,26000.00,'Installed new central units and ductwork',0,1,0,NULL,'Lisa Monroe','Medium','Completed',1,'2029-03-01','Minor delay due to parts','2024-03-04','lab_hvac_0303.jpg');
INSERT INTO facility_maintenance VALUES (403,'Library','Carpet Cleaning','CleanIt','CI-2024-05','2024-04-20',NULL,3000.00,'Full deep-clean of all carpeted areas',0,1,0,NULL,'Raj Patel','Low','Completed',0,NULL,'No issues','2024-04-21','library_clean_0420.jpg');

-- Library collections inventory
CREATE TABLE library_collections (
    ItemID INTEGER PRIMARY KEY,
    Title TEXT NOT NULL,
    Creator TEXT,
    PublicationYear INTEGER,
    ISBN TEXT,
    MaterialType TEXT,
    Genre TEXT,
    Language TEXT,
    ShelfLocation TEXT,
    CopiesOwned INTEGER,
    CopiesAvailable INTEGER,
    TimesCheckedOut INTEGER,
    LastAcquired DATE,
    ConditionRating INTEGER,
    DeweyDecimal TEXT,
    AgeGroup TEXT,
    DigitalFormat INTEGER,
    AccessURL TEXT,
    PurchasePrice REAL,
    CurrentValue REAL,
    DonorName TEXT,
    Notes TEXT
);

INSERT INTO library_collections VALUES (501,'The Great Gatsby','F Scott Fitzgerald',1925,'9780743273565','Book','Fiction','English','FIC FIT',8,5,120,'2020-09-15',9,'813.52','Adult',0,'','15.00','18.00','Community Donation','Classic novel');
INSERT INTO library_collections VALUES (502,'Introduction to Algorithms','Cormen',2009,'9780262033848','Book','Education','English','006 CORM',5,3,45,'2021-02-01',8,'005.1','College',0,'','80.00','85.00','Library Fund','Core textbook');
INSERT INTO library_collections VALUES (503,'Planet Earth Documentary','BBC',2016,'','DVD','Documentary','English','DOC BBC',12,11,30,'2017-07-20',10,'', 'All',0,'','25.00','30.00','Grant','Award-winning series');

-- Health services provided to students
CREATE TABLE health_services (
    ServiceID INTEGER PRIMARY KEY,
    ServiceName TEXT NOT NULL,
    ProviderOrganization TEXT,
    ProviderContact TEXT,
    ServiceType TEXT,
    Frequency TEXT,
    Eligibility TEXT,
    AgeRange TEXT,
    CostToStudent REAL,
    InsuranceAccepted INTEGER,
    Location TEXT,
    HoursAvailable TEXT,
    ReferralRequired INTEGER,
    Confidential BOOLEAN,
    DocumentationRequired TEXT,
    LastUpdated DATE,
    ActiveFlag INTEGER,
    FundingSource TEXT,
    AverageWaitDays INTEGER,
    Capacity INTEGER,
    Notes TEXT,
    ContactEmail TEXT
);

INSERT INTO health_services VALUES (601,'Vision Screening','EyeCare Plus','5551112222','Screening','Annual','All Students','5-18',0.00,1,'School Nurse Office','Mon-Fri 8-12',0,1,'Parental Consent','2024-01-05',1,'District Budget',14,200,'Standard program','vision@eyeplus.org');
INSERT INTO health_services VALUES (602,'Mental Health Counseling','WellMind','5553334444','Counseling','Weekly','Students in need','12-18',0.00,1,'Counselor Suite','Mon-Wed 13-17',1,1,'Referral Form','2023-12-20',1,'State Grant',7,60,'Confidential','contact@wellmind.org');
INSERT INTO health_services VALUES (603,'Dental Checkup','SmileBright','5555556666','Preventive','Biannual','All Students','6-15',15.00,0,'Mobile Clinic','Tue & Thu 9-12',0,1,'Insurance Card','2024-02-10',1,'Parent Paid','30',40,'Limited slots','info@smilebright.com');

-- Technology inventory for school district
CREATE TABLE technology_inventory (
    AssetID INTEGER PRIMARY KEY,
    AssetTag TEXT NOT NULL,
    AssetType TEXT,
    Brand TEXT,
    Model TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyExp DATE,
    AssignedTo TEXT,
    Location TEXT,
    CurrentStatus TEXT,
    OperatingSystem TEXT,
    Processor TEXT,
    RAM_GB INTEGER,
    Storage_GB INTEGER,
    PeripheralCount INTEGER,
    NetworkMAC TEXT,
    IPAddress TEXT,
    SoftwareLicenseCount INTEGER,
    LastMaintenance DATE,
    DepreciationYears INTEGER,
    Notes TEXT,
    CustodianName TEXT,
    CustodianEmail TEXT
);

INSERT INTO technology_inventory VALUES (701,'AT-001','Laptop','Dell','Latitude 5420','SN12345','2022-08-15','2025-08-15','Teacher','Room 210','InUse','Windows 10','Intel i5',8,256,2,'00:1A:2B:3C:4D:5E','192.168.1.45',1,'2023-11-20',3,'Replaced battery','John Doe','jdoe@school.edu');
INSERT INTO technology_inventory VALUES (702,'AT-002','Projector','Epson','PowerLite X41','SN67890','2021-01-10','2024-01-10','Room','Auditorium','InUse','N/A','N/A',0,0,1,'00:1A:2B:3C:4D:5F','192.168.1.46',0,'2023-09-15',3,'Lens cleaned','Emily Smith','esmith@school.edu');
INSERT INTO technology_inventory VALUES (703,'AT-003','Tablet','Apple','iPad Air','SN54321','2023-03-05','2026-03-05','Student','Library','InUse','iPadOS','A14',4,64,0,'00:1A:2B:3C:4D:60','192.168.1.47',1,'2023-12-01',3,'Assigned to 10th grade','Mark Lee','mlee@school.edu');

-- Cafeteria menu items and nutrition info
CREATE TABLE cafeteria_menu (
    MenuItemID INTEGER PRIMARY KEY,
    ItemName TEXT NOT NULL,
    Category TEXT,
    PortionSize TEXT,
    Calories INTEGER,
    TotalFat_g REAL,
    SaturatedFat_g REAL,
    TransFat_g REAL,
    Cholesterol_mg INTEGER,
    Sodium_mg INTEGER,
    TotalCarbohydrate_g REAL,
    DietaryFiber_g REAL,
    Sugars_g REAL,
    Protein_g REAL,
    VitaminA_% INTEGER,
    VitaminC_% INTEGER,
    Calcium_% INTEGER,
    Iron_% INTEGER,
    ServingsPerDay INTEGER,
    SeasonalFlag INTEGER,
    Availability TEXT,
    Notes TEXT
);

INSERT INTO cafeteria_menu VALUES (801,'Grilled Chicken Sandwich','Entree','1 sandwich',450,12.5,3.0,0.0,75,800,45.0,4.0,6.0,30,15,25,20,10,2,0,'YearRound','Whole grain bun');
INSERT INTO cafeteria_menu VALUES (802,'Fresh Fruit Cup','Side','1 cup',80,0.2,0.0,0.0,0,15,20.0,2.0,15.0,1,10,30,5,2,3,0,'Seasonal','Apples, grapes, berries');
INSERT INTO cafeteria_menu VALUES (803,'Vegetable Stir Fry','Entree','1 plate',350,8.0,1.5,0.0,0,500,55.0,6.0,8.0,12,5,20,15,8,4,0,'YearRound','Served with brown rice');

-- Alumni engagement records
CREATE TABLE alumni_engagement (
    AlumniID INTEGER PRIMARY KEY,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL,
    GraduationYear INTEGER,
    DegreeEarned TEXT,
    CurrentEmployer TEXT,
    JobTitle TEXT,
    Email TEXT,
    Phone TEXT,
    LinkedInProfile TEXT,
    MailingAddress TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    InvolvementLevel TEXT,
    LastEventAttended DATE,
    DonationTotal REAL,
    VolunteerHours INTEGER,
    MentorFlag INTEGER,
    NewsletterSubscribed INTEGER,
    PreferredContactMethod TEXT,
    UpdateTimestamp DATE,
    Notes TEXT,
    ReferralSource TEXT
);

INSERT INTO alumni_engagement VALUES (901,'Alice','Brown',2010,'BSc Computer Science','TechCorp','Senior Engineer','alice.brown@example.com','5557778888','linkedin.com/in/alicebrown','123 Oak St','Springfield','IL','62704','High','2023-09-12',1500.00,20,1,1,'Email','2024-01-02','Wants to lead mentorship program','Alumni Association');
INSERT INTO alumni_engagement VALUES (902,'Brian','Clark',2015,'BA History','Heritage Museum','Curator','brian.clark@example.com','5559990000','linkedin.com/in/brianclark','456 Pine Rd','Riverdale','CA','90210','Medium','2022-05-18',500.00,5,0,1,'Phone','2023-12-15','Interested in speaking events','Career Fair');
INSERT INTO alumni_engagement VALUES (903,'Catherine','Davis',2005,'MBA','FinanceCo','Director of Operations','catherine.davis@example.com','5551231234','linkedin.com/in/catherinedavis','789 Maple Ave','Lakeview','TX','75001','Low','2021-11-30',250.00,2,0,0,'Mail','2023-11-01','Would like to receive quarterly newsletter','Friend Referral');-- Student counseling sessions tracking
CREATE TABLE student_counseling_sessions
(
    session_id           TEXT    NOT NULL PRIMARY KEY,
    student_id           TEXT    NOT NULL,
    counselor_id         TEXT    NOT NULL,
    session_date         DATE    NOT NULL,
    start_time           TEXT    NOT NULL,
    end_time             TEXT    NOT NULL,
    session_type         TEXT    NOT NULL,
    reason_code          TEXT    NULL,
    notes_summary        TEXT    NULL,
    follow_up_required   INTEGER NOT NULL,
    follow_up_date       DATE    NULL,
    location_room        TEXT    NULL,
    confidentiality_flag INTEGER NOT NULL,
    duration_minutes     INTEGER NOT NULL,
    referral_source      TEXT    NULL,
    outcome_code         TEXT    NULL,
    attendance_status    TEXT    NOT NULL,
    created_timestamp    DATE    NOT NULL,
    updated_timestamp    DATE    NOT NULL,
    is_deleted           INTEGER NOT NULL
);

INSERT INTO student_counseling_sessions
    (session_id, student_id, counselor_id, session_date, start_time, end_time, session_type,
     reason_code, notes_summary, follow_up_required, follow_up_date, location_room,
     confidentiality_flag, duration_minutes, referral_source, outcome_code,
     attendance_status, created_timestamp, updated_timestamp, is_deleted)
VALUES
    ('SCS001','STU1001','CNSL001','2025-02-15','09:00','09:45','Individual','RC01','Discussed academic stress',1,'2025-03-01','Room101',0,45,'Teacher','OC01','Attended','2025-02-15','2025-02-15',0);

INSERT INTO student_counseling_sessions
    (session_id, student_id, counselor_id, session_date, start_time, end_time, session_type,
     reason_code, notes_summary, follow_up_required, follow_up_date, location_room,
     confidentiality_flag, duration_minutes, referral_source, outcome_code,
     attendance_status, created_timestamp, updated_timestamp, is_deleted)
VALUES
    ('SCS002','STU1002','CNSL002','2025-03-10','13:30','14:15','Group','RC02','Career planning workshop',0,NULL,'Auditorium',0,45,'Counselor','OC02','Attended','2025-03-10','2025-03-10',0);

INSERT INTO student_counseling_sessions
    (session_id, student_id, counselor_id, session_date, start_time, end_time, session_type,
     reason_code, notes_summary, follow_up_required, follow_up_date, location_room,
     confidentiality_flag, duration_minutes, referral_source, outcome_code,
     attendance_status, created_timestamp, updated_timestamp, is_deleted)
VALUES
    ('SCS003','STU1003','CNSL001','2025-04-05','10:15','10:45','Individual','RC03','Family conflict mediation',1,'2025-04-20','Room102',1,30,'Parent','OC03','Attended','2025-04-05','2025-04-05',0);



-- Grant funding requests submitted by schools
CREATE TABLE grant_funding_requests
(
    request_id            TEXT    NOT NULL PRIMARY KEY,
    school_cds            TEXT    NOT NULL,
    grant_program         TEXT    NOT NULL,
    fiscal_year           TEXT    NOT NULL,
    request_date          DATE    NOT NULL,
    amount_requested      REAL    NOT NULL,
    amount_awarded        REAL    NULL,
    status                TEXT    NOT NULL,
    project_title         TEXT    NOT NULL,
    project_description   TEXT    NULL,
    lead_contact_name     TEXT    NOT NULL,
    lead_contact_email    TEXT    NOT NULL,
    lead_contact_phone    TEXT    NULL,
    submission_method     TEXT    NOT NULL,
    review_score          INTEGER NULL,
    award_cycle           TEXT    NULL,
    funding_source        TEXT    NOT NULL,
    is_multi_year         INTEGER NOT NULL,
    start_date            DATE    NULL,
    end_date              DATE    NULL,
    created_timestamp     DATE    NOT NULL,
    updated_timestamp     DATE    NOT NULL,
    is_deleted            INTEGER NOT NULL
);

INSERT INTO grant_funding_requests
    (request_id, school_cds, grant_program, fiscal_year, request_date, amount_requested,
     amount_awarded, status, project_title, project_description, lead_contact_name,
     lead_contact_email, lead_contact_phone, submission_method, review_score,
     award_cycle, funding_source, is_multi_year, start_date, end_date,
     created_timestamp, updated_timestamp, is_deleted)
VALUES
    ('GFR001','CDS001','TechUpgrade','2025','2025-01-20',50000,NULL,'Pending','Classroom 1to1 Devices',
     'Provide each student with a tablet for blended learning','Alice Johnson','alice.johnson@email.com',
     '5551234567','Online',NULL,'Round1','StateEducation',0,NULL,NULL,'2025-01-20','2025-01-20',0);

INSERT INTO grant_funding_requests
    (request_id, school_cds, grant_program, fiscal_year, request_date, amount_requested,
     amount_awarded, status, project_title, project_description, lead_contact_name,
     lead_contact_email, lead_contact_phone, submission_method, review_score,
     award_cycle, funding_source, is_multi_year, start_date, end_date,
     created_timestamp, updated_timestamp, is_deleted)
VALUES
    ('GFR002','CDS002','STEMInitiative','2025','2025-02-15',75000,60000,'Awarded','Robotics Lab Expansion',
     'Upgrade robotics equipment and curriculum','Bob Smith','bob.smith@email.com','5559876543','Paper',85,'Round2','FederalScience',1,'2025-09-01','2028-08-31','2025-02-15','2025-02-20',0);

INSERT INTO grant_funding_requests
    (request_id, school_cds, grant_program, fiscal_year, request_date, amount_requested,
     amount_awarded, status, project_title, project_description, lead_contact_name,
     lead_contact_email, lead_contact_phone, submission_method, review_score,
     award_cycle, funding_source, is_multi_year, start_date, end_date,
     created_timestamp, updated_timestamp, is_deleted)
VALUES
    ('GFR003','CDS003','ArtsFund','2025','2025-03-05',30000,NULL,'Pending','Music Program Enrichment',
     'Purchase instruments and hire specialists','Carol Lee','carol.lee@email.com','5553210987','Online',NULL,'Round1','StateArts',0,NULL,NULL,'2025-03-05','2025-03-05',0);



-- Procurement orders for school facilities
CREATE TABLE procurement_orders
(
    order_id               TEXT    NOT NULL PRIMARY KEY,
    school_cds             TEXT    NOT NULL,
    vendor_id              TEXT    NOT NULL,
    order_date             DATE    NOT NULL,
    expected_delivery_date DATE    NULL,
    total_amount           REAL    NOT NULL,
    tax_amount             REAL    NULL,
    shipping_cost          REAL    NULL,
    order_status           TEXT    NOT NULL,
    payment_method         TEXT    NOT NULL,
    approved_by            TEXT    NOT NULL,
    approver_email         TEXT    NOT NULL,
    purchase_category      TEXT    NOT NULL,
    item_count             INTEGER NOT NULL,
    priority_level         TEXT    NOT NULL,
    contract_number        TEXT    NULL,
    is_recurring           INTEGER NOT NULL,
    delivery_location      TEXT    NOT NULL,
    notes                  TEXT    NULL,
    created_timestamp      DATE    NOT NULL,
    updated_timestamp      DATE    NOT NULL,
    is_deleted             INTEGER NOT NULL
);

INSERT INTO procurement_orders
    (order_id, school_cds, vendor_id, order_date, expected_delivery_date, total_amount,
     tax_amount, shipping_cost, order_status, payment_method, approved_by,
     approver_email, purchase_category, item_count, priority_level,
     contract_number, is_recurring, delivery_location, notes,
     created_timestamp, updated_timestamp, is_deleted)
VALUES
    ('PO001','CDS001','VEND100','2025-04-01','2025-04-15',12000,900,150,'Submitted','Check','Dana White','dana.white@email.com',
     'Furniture','20','High','CNTR001',0,'Main Campus','Office desks replacement','2025-04-01','2025-04-01',0);

INSERT INTO procurement_orders
    (order_id, school_cds, vendor_id, order_date, expected_delivery_date, total_amount,
     tax_amount, shipping_cost, order_status, payment_method, approved_by,
     approver_email, purchase_category, item_count, priority_level,
     contract_number, is_recurring, delivery_location, notes,
     created_timestamp, updated_timestamp, is_deleted)
VALUES
    ('PO002','CDS002','VEND200','2025-04-10',NULL,5000,375,80,'Pending','CreditCard','Evan Green','evan.green@email.com',
     'Software','5','Medium','CNTR005',1,'IT Dept','License renewal for math software','2025-04-10','2025-04-12',0);

INSERT INTO procurement_orders
    (order_id, school_cds, vendor_id, order_date, expected_delivery_date, total_amount,
     tax_amount, shipping_cost, order_status, payment_method, approved_by,
     approver_email, purchase_category, item_count, priority_level,
     contract_number, is_recurring, delivery_location, notes,
     created_timestamp, updated_timestamp, is_deleted)
VALUES
    ('PO003','CDS003','VEND300','2025-04-18','2025-05-05',7500,562.5,100,'Approved','BankTransfer','Fiona Blue','fiona.blue@email.com',
     'SafetyEquipment','15','Low','CNTR010',0,'Gymnasium','First aid kits and safety cones','2025-04-18','2025-04-18',0);



-- Cafeteria daily menu offerings
CREATE TABLE cafeteria_menus
(
    menu_id            TEXT    NOT NULL PRIMARY KEY,
    school_cds         TEXT    NOT NULL,
    menu_date          DATE    NOT NULL,
    breakfast_item1    TEXT    NULL,
    breakfast_item2    TEXT    NULL,
    breakfast_item3    TEXT    NULL,
    lunch_item1        TEXT    NULL,
    lunch_item2        TEXT    NULL,
    lunch_item3        TEXT    NULL,
    dinner_item1       TEXT    NULL,
    dinner_item2       TEXT    NULL,
    dinner_item3       TEXT    NULL,
    calories_estimate  INTEGER NULL,
    veg_option         TEXT    NULL,
    gluten_free_option TEXT    NULL,
    dairy_free_option  TEXT    NULL,
    protein_source     TEXT    NULL,
    special_notes      TEXT    NULL,
    created_timestamp  DATE    NOT NULL,
    updated_timestamp  DATE    NOT NULL,
    is_deleted         INTEGER NOT NULL,
    created_by         TEXT    NOT NULL,
    updated_by         TEXT    NOT NULL,
    menu_type          TEXT    NOT NULL
);

INSERT INTO cafeteria_menus
    (menu_id, school_cds, menu_date, breakfast_item1, breakfast_item2, breakfast_item3,
     lunch_item1, lunch_item2, lunch_item3, dinner_item1, dinner_item2, dinner_item3,
     calories_estimate, veg_option, gluten_free_option, dairy_free_option, protein_source,
     special_notes, created_timestamp, updated_timestamp, is_deleted, created_by,
     updated_by, menu_type)
VALUES
    ('CM001','CDS001','2025-04-20','Oatmeal','FruitSalad','Milk',
     'TurkeySandwich','CarrotSticks','Apple','Spaghetti','Meatballs','GreenBeans',
     1500,'Yes','No','Yes','Turkey','No allergens','2025-04-20','2025-04-20',0,'ChefAnna','ChefAnna','Standard');

INSERT INTO cafeteria_menus
    (menu_id, school_cds, menu_date, breakfast_item1, breakfast_item2, breakfast_item3,
     lunch_item1, lunch_item2, lunch_item3, dinner_item1, dinner_item2, dinner_item3,
     calories_estimate, veg_option, gluten_free_option, dairy_free_option, protein_source,
     special_notes, created_timestamp, updated_timestamp, is_deleted, created_by,
     updated_by, menu_type)
VALUES
    ('CM002','CDS002','2025-04-21','Pancakes','ScrambledEggs','OrangeJuice',
     'VeggieWrap','Hummus','Cucumber','GrilledFish','Rice','SteamedBroccoli',
     1400,'Yes','Yes','No','Fish','Low sodium','2025-04-21','2025-04-21',0,'ChefBen','ChefBen','Standard');

INSERT INTO cafeteria_menus
    (menu_id, school_cds, menu_date, breakfast_item1, breakfast_item2, breakfast_item3,
     lunch_item1, lunch_item2, lunch_item3, dinner_item1, dinner_item2, dinner_item3,
     calories_estimate, veg_option, gluten_free_option, dairy_free_option, protein_source,
     special_notes, created_timestamp, updated_timestamp, is_deleted, created_by,
     updated_by, menu_type)
VALUES
    ('CM003','CDS003','2025-04-22','Bagel','CreamCheese','AppleJuice',
     'ChickenSalad','WholeGrainRoll','MixedFruit','BeefStirFry','Noodles','MixedVeggies',
     1550,'No','No','Yes','Chicken','Contains nuts','2025-04-22','2025-04-22',0,'ChefCara','ChefCara','Standard');



-- Transportation vehicle inventory
CREATE TABLE transportation_vehicles
(
    vehicle_id            TEXT    NOT NULL PRIMARY KEY,
    school_cds            TEXT    NOT NULL,
    vehicle_type          TEXT    NOT NULL,
    make                  TEXT    NOT NULL,
    model                 TEXT    NOT NULL,
    year_manufactured     INTEGER NOT NULL,
    license_plate         TEXT    NOT NULL,
    vin_number            TEXT    NOT NULL,
    capacity_seats        INTEGER NOT NULL,
    fuel_type             TEXT    NOT NULL,
    mileage_current       REAL    NOT NULL,
    mileage_last_service  REAL    NULL,
    service_interval_miles REAL   NOT NULL,
    last_service_date     DATE    NULL,
    next_service_due      DATE    NULL,
    is_active             INTEGER NOT NULL,
    assigned_driver_id    TEXT    NULL,
    insurance_policy_num  TEXT    NULL,
    registration_expiry   DATE    NULL,
    gps_enabled           INTEGER NOT NULL,
    eco_friendly_feature  TEXT    NULL,
    notes                 TEXT    NULL,
    created_timestamp     DATE    NOT NULL,
    updated_timestamp     DATE    NOT NULL,
    is_deleted            INTEGER NOT NULL
);

INSERT INTO transportation_vehicles
    (vehicle_id, school_cds, vehicle_type, make, model, year_manufactured, license_plate,
     vin_number, capacity_seats, fuel_type, mileage_current, mileage_last_service,
     service_interval_miles, last_service_date, next_service_due, is_active,
     assigned_driver_id, insurance_policy_num, registration_expiry, gps_enabled,
     eco_friendly_feature, notes, created_timestamp, updated_timestamp, is_deleted)
VALUES
    ('TV001','CDS001','Bus','BlueBird','Vision','2018','ABC1234','1HGCM82633A004352',55,'Diesel',45200,40000,5000,'2025-03-01','2025-09-01',1,'DR001','INS12345','2025-12-31',1,'Hybrid','Replaced brakes 2025','2025-04-01','2025-04-01',0);

INSERT INTO transportation_vehicles
    (vehicle_id, school_cds, vehicle_type, make, model, year_manufactured, license_plate,
     vin_number, capacity_seats, fuel_type, mileage_current, mileage_last_service,
     service_interval_miles, last_service_date, next_service_due, is_active,
     assigned_driver_id, insurance_policy_num, registration_expiry, gps_enabled,
     eco_friendly_feature, notes, created_timestamp, updated_timestamp, is_deleted)
VALUES
    ('TV002','CDS002','Van','Ford','Transit','2020','XYZ5678','2HGFA16528H123456',15,'Electric',12000,8000,10000,'2025-02-15','2025-08-15',1,'DR002','INS67890','2025-11-30',1,'ZeroEmission','Battery check due','2025-04-02','2025-04-02',0);

INSERT INTO transportation_vehicles
    (vehicle_id, school_cds, vehicle_type, make, model, year_manufactured, license_plate,
     vin_number, capacity_seats, fuel_type, mileage_current, mileage_last_service,
     service_interval_miles, last_service_date, next_service_due, is_active,
     assigned_driver_id, insurance_policy_num, registration_expiry, gps_enabled,
     eco_friendly_feature, notes, created_timestamp, updated_timestamp, is_deleted)
VALUES
    ('TV003','CDS003','MiniBus','Thomas','Safeway','2019','LMN3456','3FA6P0J73HR123789',30,'Gasoline',27500,25000,7500,'2025-01-20','2025-07-20',0,NULL,'INS54321','2025-10-15',0,NULL,'Out of service for repairs','2025-04-03','2025-04-03',0);



-- Afterschool program catalog
CREATE TABLE afterschool_programs
(
    program_id           TEXT    NOT NULL PRIMARY KEY,
    school_cds           TEXT    NOT NULL,
    program_name         TEXT    NOT NULL,
    program_category     TEXT    NOT NULL,
    start_date           DATE    NOT NULL,
    end_date             DATE    NOT NULL,
    meeting_days         TEXT    NOT NULL,
    start_time           TEXT    NOT NULL,
    end_time             TEXT    NOT NULL,
    instructor_id        TEXT    NOT NULL,
    max_enrollment       INTEGER NOT NULL,
    current_enrollment   INTEGER NOT NULL,
    age_range            TEXT    NOT NULL,
    cost_per_student     REAL    NULL,
    scholarship_available INTEGER NOT NULL,
    equipment_needed     TEXT    NULL,
    prerequisite_skills  TEXT    NULL,
    safety_plan_document TEXT    NULL,
    registration_deadline DATE   NOT NULL,
    program_status       TEXT    NOT NULL,
    created_timestamp    DATE    NOT NULL,
    updated_timestamp    DATE    NOT NULL,
    is_deleted           INTEGER NOT NULL,
    created_by           TEXT    NOT NULL,
    updated_by           TEXT    NOT NULL,
    external_partner     TEXT    NULL
);

INSERT INTO afterschool_programs
    (program_id, school_cds, program_name, program_category, start_date, end_date,
     meeting_days, start_time, end_time, instructor_id, max_enrollment,
     current_enrollment, age_range, cost_per_student, scholarship_available,
     equipment_needed, prerequisite_skills, safety_plan_document,
     registration_deadline, program_status, created_timestamp, updated_timestamp,
     is_deleted, created_by, updated_by, external_partner)
VALUES
    ('AP001','CDS001','Robotics Club','STEM','2025-09-01','2026-06-15','Mon,Wed','15:30','17:00','INS001',30,12,'10-15',50,1,'Robotics kits','Basic coding','RoboticsSafety.pdf','2025-08-15','Active','2025-04-05','2025-04-05',0,'CoordinatorAnna','CoordinatorAnna','TechCorp');

INSERT INTO afterschool_programs
    (program_id, school_cds, program_name, program_category, start_date, end_date,
     meeting_days, start_time, end_time, instructor_id, max_enrollment,
     current_enrollment, age_range, cost_per_student, scholarship_available,
     equipment_needed, prerequisite_skills, safety_plan_document,
     registration_deadline, program_status, created_timestamp, updated_timestamp,
     is_deleted, created_by, updated_by, external_partner)
VALUES
    ('AP002','CDS002','Jazz Ensemble','Arts','2025-09-05','2026-05-20','Tue,Thu','16:00','18:00','INS002',20,8,'12-18',30,0,'Instruments','Basic music theory','EnsembleSafety.pdf','2025-08-20','Active','2025-04-06','2025-04-06',0,'CoordinatorBen','CoordinatorBen','LocalMusicCenter');

INSERT INTO afterschool_programs
    (program_id, school_cds, program_name, program_category, start_date, end_date,
     meeting_days, start_time, end_time, instructor_id, max_enrollment,
     current_enrollment, age_range, cost_per_student, scholarship_available,
     equipment_needed, prerequisite_skills, safety_plan_document,
     registration_deadline, program_status, created_timestamp, updated_timestamp,
     is_deleted, created_by, updated_by, external_partner)
VALUES
    ('AP003','CDS003','Community Service Club','Civic','2025-09-10','2026-06-01','Fri','14:00','16:00','INS003',25,15,'13-19',0,1,'Volunteer forms','None','ServiceSafety.pdf','2025-08-25','Active','2025-04-07','2025-04-07',0,'CoordinatorCara','CoordinatorCara','VolunteerOrg');



-- School board meeting minutes archive
CREATE TABLE school_board_meetings
(
    meeting_id           TEXT    NOT NULL PRIMARY KEY,
    district_name        TEXT    NOT NULL,
    meeting_date         DATE    NOT NULL,
    start_time           TEXT    NOT NULL,
    end_time             TEXT    NOT NULL,
    location             TEXT    NOT NULL,
    chairperson_id       TEXT    NOT NULL,
    quorum_present       INTEGER NOT NULL,
    agenda_document      TEXT    NULL,
    minutes_document     TEXT    NULL,
    public_attendance    INTEGER NOT NULL,
    remote_participants  INTEGER NOT NULL,
    decisions_made       INTEGER NOT NULL,
    resolutions_passed   INTEGER NOT NULL,
    action_items         TEXT    NULL,
    next_meeting_date    DATE    NULL,
    meeting_type         TEXT    NOT NULL,
    created_timestamp    DATE    NOT NULL,
    updated_timestamp    DATE    NOT NULL,
    is_deleted           INTEGER NOT NULL,
    created_by           TEXT    NOT NULL,
    updated_by           TEXT    NOT NULL,
    confidentiality_flag INTEGER NOT NULL,
    special_notes        TEXT    NULL,
    audio_recording_path TEXT    NULL
);

INSERT INTO school_board_meetings
    (meeting_id, district_name, meeting_date, start_time, end_time, location,
     chairperson_id, quorum_present, agenda_document, minutes_document,
     public_attendance, remote_participants, decisions_made, resolutions_passed,
     action_items, next_meeting_date, meeting_type, created_timestamp,
     updated_timestamp, is_deleted, created_by, updated_by,
     confidentiality_flag, special_notes, audio_recording_path)
VALUES
    ('SBM001','NorthDistrict','2025-03-15','18:00','20:00','District Office','CH001',15,'AgendaMar2025.pdf','MinutesMar2025.pdf',120,30,12,10,'Update facilities plan','2025-06-15','Regular','2025-04-08','2025-04-08',0,'AdminJohn','AdminJohn',0,'All topics covered','AudioMar2025.wav');

INSERT INTO school_board_meetings
    (meeting_id, district_name, meeting_date, start_time, end_time, location,
     chairperson_id, quorum_present, agenda_document, minutes_document,
     public_attendance, remote_participants, decisions_made, resolutions_passed,
     action_items, next_meeting_date, meeting_type, created_timestamp,
     updated_timestamp, is_deleted, created_by, updated_by,
     confidentiality_flag, special_notes, audio_recording_path)
VALUES
    ('SBM002','SouthDistrict','2025-04-20','17:30','19:30','Community Center','CH002',12,'AgendaApr2025.pdf','MinutesApr2025.pdf',95,20,9,8,'Approve new curriculum','2025-07-20','Special','2025-04-09','2025-04-09',0,'AdminLisa','AdminLisa',0,'Guest speaker present','AudioApr2025.wav');

INSERT INTO school_board_meetings
    (meeting_id, district_name, meeting_date, start_time, end_time, location,
     chairperson_id, quorum_present, agenda_document, minutes_document,
     public_attendance, remote_participants, decisions_made, resolutions_passed,
     action_items, next_meeting_date, meeting_type, created_timestamp,
     updated_timestamp, is_deleted, created_by, updated_by,
     confidentiality_flag, special_notes, audio_recording_path)
VALUES
    ('SBM003','EastDistrict','2025-05-10','19:00','21:00','Virtual','CH003',10,NULL,NULL,60,40,7,5,'Discuss budget reallocation','2025-08-10','Virtual','2025-04-10','2025-04-10',0,'AdminMark','AdminMark',0,'Technical issues noted','AudioMay2025.wav');



-- Emergency drill log for schools
CREATE TABLE emergency_drill_log
(
    drill_id                TEXT    NOT NULL PRIMARY KEY,
    school_cds              TEXT    NOT NULL,
    drill_type              TEXT    NOT NULL,
    drill_date              DATE    NOT NULL,
    start_time              TEXT    NOT NULL,
    end_time                TEXT    NOT NULL,
    coordinator_id          TEXT    NOT NULL,
    participants_count      INTEGER NOT NULL,
    staff_participation_pct REAL    NOT NULL,
    student_participation_pct REAL NOT NULL,
    drill_success_rating    INTEGER NOT NULL,
    issues_reported         TEXT    NULL,
    corrective_actions      TEXT    NULL,
    drill_plan_document     TEXT    NULL,
    after_action_report     TEXT    NULL,
    next_scheduled_drill    DATE    NULL,
    location                TEXT    NOT NULL,
    is_virtual              INTEGER NOT NULL,
    created_timestamp       DATE    NOT NULL,
    updated_timestamp       DATE    NOT NULL,
    is_deleted              INTEGER NOT NULL,
    created_by              TEXT    NOT NULL,
    updated_by              TEXT    NOT NULL,
    notes                   TEXT    NULL
);

INSERT INTO emergency_drill_log
    (drill_id, school_cds, drill_type, drill_date, start_time, end_time,
     coordinator_id, participants_count, staff_participation_pct,
     student_participation_pct, drill_success_rating, issues_reported,
     corrective_actions, drill_plan_document, after_action_report,
     next_scheduled_drill, location, is_virtual, created_timestamp,
     updated_timestamp, is_deleted, created_by, updated_by, notes)
VALUES
    ('EDL001','CDS001','Fire','2025-02-10','09:15','09:45','COORD001',300,95.0,98.0,9,NULL,NULL,'FirePlan2025.pdf','FireAAR2025.pdf','2025-08-10','Gymnasium',0,'2025-04-11','2025-04-11',0,'SafetyOfficerA','SafetyOfficerA','All clear');

INSERT INTO emergency_drill_log
    (drill_id, school_cds, drill_type, drill_date, start_time, end_time,
     coordinator_id, participants_count, staff_participation_pct,
     student_participation_pct, drill_success_rating, issues_reported,
     corrective_actions, drill_plan_document, after_action_report,
     next_scheduled_drill, location, is_virtual, created_timestamp,
     updated_timestamp, is_deleted, created_by, updated_by, notes)
VALUES
    ('EDL002','CDS002','Lockdown','2025-03-05','13:00','13:30','COORD002',250,90.0,92.0,8,'Delayed alarm','Update alarm system','LockdownPlan2025.pdf','LockdownAAR2025.pdf','2025-09-05','Classrooms',0,'2025-04-12','2025-04-12',0,'SafetyOfficerB','SafetyOfficerB','Minor delay');

INSERT INTO emergency_drill_log
    (drill_id, school_cds, drill_type, drill_date, start_time, end_time,
     coordinator_id, participants_count, staff_participation_pct,
     student_participation_pct, drill_success_rating, issues_reported,
     corrective_actions, drill_plan_document, after_action_report,
     next_scheduled_drill, location, is_virtual, created_timestamp,
     updated_timestamp, is_deleted, created_by, updated_by, notes)
VALUES
    ('EDL003','CDS003','SevereWeather','2025-04-12','15:45','16:15','COORD003',280,92.0,95.0,7,NULL,'Practice communication protocol','WeatherPlan2025.pdf','WeatherAAR2025.pdf','2025-10-12','Playground',1,'2025-04-13','2025-04-13',0,'SafetyOfficerC','SafetyOfficerC','Virtual drill');



-- Energy consumption tracking per school
CREATE TABLE energy_consumption
(
    record_id            TEXT    NOT NULL PRIMARY KEY,
    school_cds           TEXT    NOT NULL,
    reporting_month      TEXT    NOT NULL,
    electricity_kwh      REAL    NOT NULL,
    gas_therms           REAL    NULL,
    water_gallons        REAL    NULL,
    renewable_percent    REAL    NOT NULL,
    peak_demand_kw       REAL    NULL,
    average_daily_kwh    REAL    NULL,
    carbon_emissions_t   REAL    NOT NULL,
    cost_usd             REAL    NOT NULL,
    billing_cycle_start  DATE    NOT NULL,
    billing_cycle_end    DATE    NOT NULL,
    meter_reading_start  REAL    NOT NULL,
    meter_reading_end    REAL    NOT NULL,
    data_source          TEXT    NOT NULL,
    verified_by          TEXT    NULL,
    verification_date    DATE    NULL,
    notes                TEXT    NULL,
    created_timestamp    DATE    NOT NULL,
    updated_timestamp    DATE    NOT NULL,
    is_deleted           INTEGER NOT NULL,
    created_by           TEXT    NOT NULL,
    updated_by           TEXT    NOT NULL
);

INSERT INTO energy_consumption
    (record_id, school_cds, reporting_month, electricity_kwh, gas_therms,
     water_gallons, renewable_percent, peak_demand_kw, average_daily_kwh,
     carbon_emissions_t, cost_usd, billing_cycle_start, billing_cycle_end,
     meter_reading_start, meter_reading_end, data_source, verified_by,
     verification_date, notes, created_timestamp, updated_timestamp,
     is_deleted, created_by, updated_by)
VALUES
    ('EC001','CDS001','2024-12',45200,1200,30000,15.0,120.5,1465.0,35.2,7800,'2024-12-01','2024-12-31',1050000,1095200','UtilityCo','AuditorA','2025-01-05','Seasonally high usage','2025-04-14','2025-04-14',0,'EnergyMgrA','EnergyMgrA');

INSERT INTO energy_consumption
    (record_id, school_cds, reporting_month, electricity_kwh, gas_therms,
     water_gallons, renewable_percent, peak_demand_kw, average_daily_kwh,
     carbon_emissions_t, cost_usd, billing_cycle_start, billing_cycle_end,
     meter_reading_start, meter_reading_end, data_source, verified_by,
     verification_date, notes, created_timestamp, updated_timestamp,
     is_deleted, created_by, updated_by)
VALUES
    ('EC002','CDS002','2024-12',37800,950,25000,20.0,105.3,1219.0,28.5,6500,'2024-12-01','2024-12-31',820000,857800','UtilityCo','AuditorB','2025-01-06','Implemented solar panels','2025-04-15','2025-04-15',0,'EnergyMgrB','EnergyMgrB');

INSERT INTO energy_consumption
    (record_id, school_cds, reporting_month, electricity_kwh, gas_therms,
     water_gallons, renewable_percent, peak_demand_kw, average_daily_kwh,
     carbon_emissions_t, cost_usd, billing_cycle_start, billing_cycle_end,
     meter_reading_start, meter_reading_end, data_source, verified_by,
     verification_date, notes, created_timestamp, updated_timestamp,
     is_deleted, created_by, updated_by)
VALUES
    ('EC003','CDS003','2024-12',41000,NULL,28000,10.0,115.0,1322.5,32.0,7200,'2024-12-01','2024-12-31',950000,991000','UtilityCo','AuditorC','2025-01-07','Gas meter under maintenance','2025-04-16','2025-04-16',0,'EnergyMgrC','EnergyMgrC');



-- Parent-teacher conference scheduling
CREATE TABLE parent_teacher_conferences
(
    conference_id          TEXT    NOT NULL PRIMARY KEY,
    school_cds             TEXT    NOT NULL,
    teacher_id             TEXT    NOT NULL,
    parent_id              TEXT    NOT NULL,
    student_id             TEXT    NOT NULL,
    conference_date        DATE    NOT NULL,
    start_time             TEXT    NOT NULL,
    end_time               TEXT    NOT NULL,
    conference_type        TEXT    NOT NULL,
    location               TEXT    NOT NULL,
    language_interpreter   TEXT    NULL,
    special_accommodations TEXT    NULL,
    notes                  TEXT    NULL,
    confirmation_sent      INTEGER NOT NULL,
    confirmation_date      DATE    NULL,
    reminder_sent          INTEGER NOT NULL,
    reminder_date          DATE    NULL,
    attendance_status      TEXT    NOT NULL,
    created_timestamp      DATE    NOT NULL,
    updated_timestamp      DATE    NOT NULL,
    is_deleted             INTEGER NOT NULL,
    created_by             TEXT    NOT NULL,
    updated_by             TEXT    NOT NULL,
    feedback_score         INTEGER NULL,
    feedback_comments      TEXT NULL
);

INSERT INTO parent_teacher_conferences
    (conference_id, school_cds, teacher_id, parent_id, student_id, conference_date,
     start_time, end_time, conference_type, location, language_interpreter,
     special_accommodations, notes, confirmation_sent, confirmation_date,
     reminder_sent, reminder_date, attendance_status, created_timestamp,
     updated_timestamp, is_deleted, created_by, updated_by, feedback_score,
     feedback_comments)
VALUES
    ('PTC001','CDS001','TCH001','PAR001','STU001','2025-04-25','16:00','16:30','Individual','Room201','Spanish','Wheelchair access','Discuss progress','1','2025-04-10','1','2025-04-20','Attended','2025-04-05','2025-04-05',0,'AdminA','AdminA',5,'Very helpful');

INSERT INTO parent_teacher_conferences
    (conference_id, school_cds, teacher_id, parent_id, student_id, conference_date,
     start_time, end_time, conference_type, location, language_interpreter,
     special_accommodations, notes, confirmation_sent, confirmation_date,
     reminder_sent, reminder_date, attendance_status, created_timestamp,
     updated_timestamp, is_deleted, created_by, updated_by, feedback_score,
     feedback_comments)
VALUES
    ('PTC002','CDS002','TCH002','PAR002','STU002','2025-05-02','17:00','17:45','Group','Room305',NULL,NULL,'Reading strategies','1','2025-04-12','1','2025-04-26','NoShow','2025-04-06','2025-04-06',0,'AdminB','AdminB',NULL,NULL);

INSERT INTO parent_teacher_conferences
    (conference_id, school_cds, teacher_id, parent_id, student_id, conference_date,
     start_time, end_time, conference_type, location, language_interpreter,
     special_accommodations, notes, confirmation_sent, confirmation_date,
     reminder_sent, reminder_date, attendance_status, created_timestamp,
     updated_timestamp, is_deleted, created_by, updated_by, feedback_score,
     feedback_comments)
VALUES
    ('PTC003','CDS003','TCH003','PAR003','STU003','2025-05-10','15:30','16:15','Individual','Room110','Mandarin','Sign language','Discuss math scores','1','2025-04-15','1','2025-05-01','Attended','2025-04-07','2025-04-07',0,'AdminC','AdminC',4,'Good but short');-- Inventory of physical facilities and resources at each school
CREATE TABLE school_facilities_inventory (
    FacilityID TEXT PRIMARY KEY,
    CDSCode TEXT NOT NULL,
    FacilityName TEXT,
    FacilityType TEXT,
    ConstructionYear INTEGER,
    SquareFootage REAL,
    Capacity INTEGER,
    AccessibilityFeatures TEXT,
    HVACSystemType TEXT,
    RoofMaterial TEXT,
    FlooringMaterial TEXT,
    LightingControl TEXT,
    SecurityLevel TEXT,
    LastInspectionDate DATE,
    InspectionScore REAL,
    MaintenanceContractVendor TEXT,
    WarrantyExpiration DATE,
    EnergyStarRating TEXT,
    WiFiCoverage TEXT,
    SeatingArrangement TEXT,
    AudioVisualEquipment TEXT,
    KitchenAvailable INTEGER,
    GymnasiumAvailable INTEGER,
    LibraryAvailable INTEGER,
    PlaygroundAvailable INTEGER,
    SustainableFeatures TEXT,
    Notes TEXT
);
INSERT INTO school_facilities_inventory VALUES ('F001','001001','Main Hall','Auditorium',1995,12000.5,500,'Elevator;Ramp','Central','Tile','Carpet','Dimmable','High','2023-03-12',92.5,'ABC Facilities','2028-06-30','Gold','Full','Theater','Projector;SoundSystem',1,1,0,0,'SolarPanels','Renovated 2020');
INSERT INTO school_facilities_inventory VALUES ('F002','001002','Science Building','Laboratory',2008,8000.0,300,'Ramp','VRF','Metal','Vinyl','LED','Medium','2022-11-05',88.0,'XYZ Services','2027-01-15','Silver','Partial','LabStools','LabEquipment',0,0,0,0,'GreenRoof','Upgrade planned 2025');
INSERT INTO school_facilities_inventory VALUES ('F003','001003','North Playground','Outdoor',2015,5000.2,200,'AccessiblePlayground','None','Shingles','Concrete','Natural','Low','2023-01-20',95.0,'PlayGround Co','2030-12-31','Bronze','Full','BenchRows','None',0,0,0,1,'RecycledMaterials','New swing set installed');

-- Monthly utility usage for each district
CREATE TABLE district_utility_usage (
    RecordID TEXT PRIMARY KEY,
    DistrictCode TEXT NOT NULL,
    YearMonth TEXT NOT NULL,
    ElectricityKWh REAL,
    WaterGallons REAL,
    GasTherms REAL,
    RenewablePercentage REAL,
    PeakDemandKW REAL,
    AvgTempF REAL,
    HeatingDegreeDays INTEGER,
    CoolingDegreeDays INTEGER,
    BillingAmountUSD REAL,
    MeterReadDate DATE,
    ProviderElectric TEXT,
    ProviderWater TEXT,
    ProviderGas TEXT,
    CarbonEmissionsTons REAL,
    EnergyCostPerKWh REAL,
    WaterCostPerGallon REAL,
    GasCostPerTherm REAL,
    Notes TEXT
);
INSERT INTO district_utility_usage VALUES ('U001','D01','2023-01',125000.0,3500000.0,8000.0,22.5,4500.0,30.2,1200,400,47000.0,'2023-01-31','PowerCo','AquaSupply','GasCorp',3500.0,0.12,0.015,0.90','Normal winter usage');
INSERT INTO district_utility_usage VALUES ('U002','D01','2023-02',115000.0,3400000.0,7500.0,23.0,4300.0,28.5,1100,380,44000.0,'2023-02-28','PowerCo','AquaSupply','GasCorp',3300.0,0.11,0.014,0.88','Slightly lower heating demand');
INSERT INTO district_utility_usage VALUES ('U003','D02','2023-01',98000.0,3100000.0,6200.0,20.0,3800.0,35.0,1300,420,41000.0,'2023-01-31','EnergyPlus','WaterWorks','FuelInc',3100.0,0.13,0.016,0.92','Higher cooling degree days');

-- Records of community health outreach events
CREATE TABLE community_health_outreach (
    EventID TEXT PRIMARY KEY,
    CommunityPartner TEXT NOT NULL,
    EventDate DATE NOT NULL,
    Location TEXT,
    TargetPopulation TEXT,
    EstimatedAttendees INTEGER,
    ServicesProvided TEXT,
    StaffVolunteers INTEGER,
    HealthScreeningsPerformed INTEGER,
    VaccinationsAdministered INTEGER,
    EducationalMaterialsDispatched INTEGER,
    FollowUpCallsMade INTEGER,
    FundingSource TEXT,
    BudgetUSD REAL,
    OutcomeRating INTEGER,
    Notes TEXT
);
INSERT INTO community_health_outreach VALUES ('H001','HealthFirst','2023-04-10','North Community Center','Families','150','BloodPressureCheck;BMI;NutritionAdvice',12,150,20,300,120,'GrantA',8000.0,4,'Positive feedback from parents');
INSERT INTO community_health_outreach VALUES ('H002','WellnessGroup','2023-05-22','South Park','Seniors','80','VisionScreen;FallRiskAssessment',8,80,5,120,70,'GrantB',5000.0,3,'Need more volunteers next time');
INSERT INTO community_health_outreach VALUES ('H003','CommunityClinic','2023-06-15','East High School','Teenagers','200','STDTesting;MentalHealthCounseling',15,200,0,250,180,'GrantC',9500.0,5,'High engagement and follow‑up');

-- Records of student financial aid and scholarships
CREATE TABLE student_financial_aid_records (
    AidID TEXT PRIMARY KEY,
    CDSCode TEXT NOT NULL,
    StudentID TEXT NOT NULL,
    AidYear TEXT NOT NULL,
    AidType TEXT,
    AwardAmountUSD REAL,
    AwardDate DATE,
    DisbursementMethod TEXT,
    RenewalEligibility INTEGER,
    GPARequirement REAL,
    CommunityServiceHours INTEGER,
    ApplicationStatus TEXT,
    FundingSource TEXT,
    Notes TEXT
);
INSERT INTO student_financial_aid_records VALUES ('A001','001001','S12345','2023-2024','Scholarship',2500.0,'2023-02-15','Check',1,3.5,40,'Approved','FoundationX','Merit based scholarship');
INSERT INTO student_financial_aid_records VALUES ('A002','001002','S67890','2023-2024','Grant',1500.0,'2023-03-01','DirectDeposit',0,3.0,30,'Pending','StateFund','Need-based grant');
INSERT INTO student_financial_aid_records VALUES ('A003','001003','S54321','2023-2024','WorkStudy',1200.0,'2023-01-20','Payroll',1,2.8,20,'Approved','Federal','Work study program');

-- Professional network affiliations of teachers
CREATE TABLE teacher_professional_networks (
    NetworkID TEXT PRIMARY KEY,
    TeacherID TEXT NOT NULL,
    NetworkName TEXT NOT NULL,
    MembershipStartDate DATE,
    MembershipEndDate DATE,
    RoleInNetwork TEXT,
    LastActiveDate DATE,
    ContactEmail TEXT,
    CertificationsHeld TEXT,
    YearsInNetwork INTEGER,
    AreaOfExpertise TEXT,
    AnnualFeeUSD REAL,
    SponsoredEventsParticipated INTEGER,
    PublicationsCount INTEGER,
    Notes TEXT
);
INSERT INTO teacher_professional_networks VALUES ('N001','T1001','NationalMathAssociation','2018-09-01','9999-12-31','Member','2023-04-10','t1001@school.org','AdvancedTeaching',5,'Mathematics',120.0,3,2,'Active participant in webinars');
INSERT INTO teacher_professional_networks VALUES ('N002','T1002','ScienceEducatorsForum','2020-01-15','9999-12-31','CommitteeChair','2023-03-22','t1002@school.org','ResearchMethods',3,'Physics',95.0,5,1,'Leads curriculum development group');
INSERT INTO teacher_professional_networks VALUES ('N003','T1003','LiteracyLeaders','2017-05-20','2022-05-20','FormerPresident','2022-05-20','t1003@school.org','ReadingIntervention',5,'English',80.0,2,0,'Retired from network');

-- Feedback collected after school events
CREATE TABLE school_event_feedback (
    FeedbackID TEXT PRIMARY KEY,
    EventID TEXT NOT NULL,
    AttendeeID TEXT,
    Rating INTEGER,
    Comments TEXT,
    SubmissionDate DATE,
    FollowUpNeeded INTEGER,
    ContactMethod TEXT,
    EmailSent INTEGER,
    SurveyVersion TEXT,
    Notes TEXT
);
INSERT INTO school_event_feedback VALUES ('F001','EVT001','A001',5,'Excellent organization and content','2023-04-12',0,'Email',1,'V1','No follow‑up required');
INSERT INTO school_event_feedback VALUES ('F002','EVT001','A002',4,'Good but could improve seating','2023-04-13',1,'Phone',0,'V1','Will call to discuss');
INSERT INTO school_event_feedback VALUES ('F003','EVT002','A003',3,'Average experience','2023-05-20',0,'Email',1,'V2','Consider more interactive activities');

-- District‑level technology roadmap and milestones
CREATE TABLE district_technology_roadmap (
    MilestoneID TEXT PRIMARY KEY,
    DistrictCode TEXT NOT NULL,
    InitiativeName TEXT,
    StartDate DATE,
    EndDate DATE,
    Status TEXT,
    LeadOffice TEXT,
    BudgetUSD REAL,
    VendorsInvolved TEXT,
    ExpectedImpact TEXT,
    KeyPerformanceIndicators TEXT,
    RiskAssessment TEXT,
    Notes TEXT
);
INSERT INTO district_technology_roadmap VALUES ('M001','D01','1to1DeviceRefresh','2023-07-01','2025-06-30','InProgress','IT Office',2000000.0,'TechSupplyCo','Improved student outcomes','DeviceUtilizationRate','Low','Phase 1 completed');
INSERT INTO district_technology_roadmap VALUES ('M002','D01','NetworkUpgrade','2024-01-15','2024-12-31','Planned','Network Team',750000.0,'NetWorks Inc','Faster internet speeds','AverageLatency','Medium','Awaiting vendor contracts');
INSERT INTO district_technology_roadmap VALUES ('M003','D02','LearningManagementSystemMigration','2023-09-01','2024-03-31','Completed','E-Learning Dept',500000.0,'EduSoft','Unified LMS platform','UserAdoptionRate','Low','Successful rollout');

-- Tracking of environmental grant applications and awards
CREATE TABLE environmental_grants_tracking (
    GrantID TEXT PRIMARY KEY,
    SchoolCDSCode TEXT NOT NULL,
    GrantTitle TEXT,
    ApplicationDate DATE,
    AwardDate DATE,
    AmountUSD REAL,
    FundingAgency TEXT,
    ProjectDescription TEXT,
    Status TEXT,
    ReportingDueDate DATE,
    ProjectEndDate DATE,
    LeadCoordinator TEXT,
    SustainabilityScore INTEGER,
    Notes TEXT
);
INSERT INTO environmental_grants_tracking VALUES ('EG001','001001','GreenCampus Initiative','2023-02-10','2023-04-01',150000.0,'EcoFund','Solar panels and energy audit','Awarded','2024-02-28','2025-12-31','John Doe',85,'First-year progress on schedule');
INSERT INTO environmental_grants_tracking VALUES ('EG002','001002','Rainwater Harvest','2023-03-15','2023-05-20',90000.0,'WaterSave Org','Install collection tanks','Awarded','2024-03-15','2025-06-30','Jane Smith',78,'Delays due to permits');
INSERT INTO environmental_grants_tracking VALUES ('EG003','001003','Urban Garden Project','2023-01-05',NULL,60000.0,'City Grants','Create school garden','Pending','2024-01-01','2025-01-01','Mike Lee',0,'Awaiting board approval');

-- Preferences for parent communications
CREATE TABLE parent_communication_preferences (
    PreferenceID TEXT PRIMARY KEY,
    ParentID TEXT NOT NULL,
    PreferredLanguage TEXT,
    ContactMethod TEXT,
    EmailAddress TEXT,
    PhoneNumber TEXT,
    SMSOptIn INTEGER,
    NewsletterOptIn INTEGER,
    EmergencyAlertOptIn INTEGER,
    PreferredContactTime TEXT,
    Notes TEXT
);
INSERT INTO parent_communication_preferences VALUES ('P001','PA1001','English','Email','parent1@example.com','5551234567',1,1,1,'Evenings','Prefers email for all notices');
INSERT INTO parent_communication_preferences VALUES ('P002','PA1002','Spanish','Phone','parent2@example.com','5559876543',0,1,1,'Mornings','Wants phone calls for emergencies');
INSERT INTO parent_communication_preferences VALUES ('P003','PA1003','English','SMS','parent3@example.com','5555555555',1,0,1,'Afternoons','Does not want newsletters');

-- History of student field trips
CREATE TABLE student_field_trip_history (
    TripID TEXT PRIMARY KEY,
    CDSCode TEXT NOT NULL,
    TripName TEXT,
    Destination TEXT,
    TripDate DATE,
    GradeLevel TEXT,
    NumberOfStudents INTEGER,
    ChaperoneCount INTEGER,
    CostPerStudentUSD REAL,
    TotalCostUSD REAL,
    FundingSource TEXT,
    ActivityDescription TEXT,
    SafetyPlanApproved INTEGER,
    PostTripSurveyCompleted INTEGER,
    Notes TEXT
);
INSERT INTO student_field_trip_history VALUES ('FT001','001001','Science Museum Visit','State Science Museum','2023-03-10','6','45','5',25.0,1125.0,'District Budget','Hands‑on exhibits and labs',1,1,'All students attended');
INSERT INTO student_field_trip_history VALUES ('FT002','001002','Historical Site Tour','Old Fort','2023-05-22','8','30','4',20.0,800.0,'Grant','Guided tour and reenactments',1,0,'Survey pending');
INSERT INTO student_field_trip_history VALUES ('FT003','001003','Art Gallery Day','City Art Gallery','2023-09-15','5','25','3',15.0,525.0,'Parent Fees','Artwork analysis workshop',1,1,'Students created own sketches');-- Table storing information about art exhibits displayed in schools
CREATE TABLE school_art_exhibit_inventory
(
    ExhibitID                TEXT NOT NULL PRIMARY KEY,
    SchoolCDSCode            TEXT NULL,
    ExhibitName              TEXT NULL,
    ArtistName               TEXT NULL,
    Medium                   TEXT NULL,
    YearCreated              INTEGER NULL,
    EstimatedValue           REAL NULL,
    AcquisitionDate          DATE NULL,
    LocationRoom             TEXT NULL,
    DisplayStartDate         DATE NULL,
    DisplayEndDate           DATE NULL,
    CuratorName              TEXT NULL,
    InsurancePolicyNumber    TEXT NULL,
    ConditionRating          INTEGER NULL,
    LoanStatus               TEXT NULL,
    ExhibitCategory          TEXT NULL,
    Dimensions               TEXT NULL,
    ExhibitDescription       TEXT NULL,
    PublicAccess             INTEGER NULL,
    FundingSource            TEXT NULL,
    LastUpdated              DATE NULL
);

INSERT INTO school_art_exhibit_inventory VALUES
('EXH001','123456','Sunrise Murals','Lena Torres','Mural',2015,25000.00,'2015-03-12','Room101','2024-01-10','2024-06-10','Carlos Mendoza','POL12345',9,'Owned','Visual Arts','10x12 ft','A series of sunrise scenes','1','District Arts Fund','2024-01-01');

INSERT INTO school_art_exhibit_inventory VALUES
('EXH002','234567','Historic Portraits','James Kline','Oil Painting',1998,18000.00,'1999-07-20','Room202','2024-02-01','2024-07-01','Mia Roberts','POL67890',8,'On Loan','History','8x10 ft','Portraits of notable local figures','1','Community Donation','2024-01-15');

INSERT INTO school_art_exhibit_inventory VALUES
('EXH003','345678','Digital Sculpture','Aisha Patel','Digital',2021,12000.00,'2021-11-05','Room303','2024-03-15','2024-09-15','Ramon Lee','POL54321',7,'Owned','Digital Media','Variable','Interactive digital sculpture','0','Tech Grant','2024-01-20');

-- Table tracking major infrastructure projects across the district
CREATE TABLE district_infrastructure_projects
(
    ProjectID                TEXT NOT NULL PRIMARY KEY,
    ProjectName              TEXT NULL,
    ProjectType              TEXT NULL,
    Phase                    TEXT NULL,
    StartDate                DATE NULL,
    EstimatedCompletionDate  DATE NULL,
    ActualCompletionDate    DATE NULL,
    BudgetAllocated          REAL NULL,
    BudgetSpent              REAL NULL,
    ContractorName           TEXT NULL,
    ContractNumber           TEXT NULL,
    FundingSource            TEXT NULL,
    CountyCode               TEXT NULL,
    DistrictCode             TEXT NULL,
    Description              TEXT NULL,
    ImpactLevel              INTEGER NULL,
    EnvironmentalReviewScore INTEGER NULL,
    PermitNumber             TEXT NULL,
    ProjectManager           TEXT NULL,
    StakeholderCount         INTEGER NULL,
    StatusUpdateDate         DATE NULL
);

INSERT INTO district_infrastructure_projects VALUES
('PRJ001','North Wing Expansion','Construction','Planning','2023-05-01','2025-08-31',NULL,5000000.00,NULL,'BuildCo Ltd','CNTR001','State Bond','001','101','Expansion of north wing to add 20 classrooms',3,85,'PERM123','Laura Smith',12,'2024-01-10');

INSERT INTO district_infrastructure_projects VALUES
('PRJ002','Solar Panel Installation','Renewable Energy','Implementation','2024-01-15','2024-12-31','2024-12-20',2000000.00,1800000.00,'GreenEnergy Inc','CNTR002','Federal Grant','002','102','Install solar panels on 5 school rooftops',2,92,'PERM456','Mark Johnson',8,'2024-02-05');

INSERT INTO district_infrastructure_projects VALUES
('PRJ003','Roadway Safety Upgrade','Transportation','Design','2024-03-01','2024-11-30',NULL,750000.00,NULL,'SafeRoad LLC','CNTR003','Local Tax','001','101','Add crosswalks and speed bumps around school zones',4,78,'PERM789','Emily Davis',15,'2024-03-12');

-- Table recording publications authored by teachers
CREATE TABLE teacher_research_publications
(
    PublicationID            TEXT NOT NULL PRIMARY KEY,
    TeacherID                TEXT NULL,
    TeacherFirstName         TEXT NULL,
    TeacherLastName          TEXT NULL,
    Title                    TEXT NULL,
    JournalName              TEXT NULL,
    PublicationDate          DATE NULL,
    DOI                      TEXT NULL,
    Volume                   INTEGER NULL,
    Issue                    INTEGER NULL,
    PageStart                INTEGER NULL,
    PageEnd                  INTEGER NULL,
    SubjectArea              TEXT NULL,
    CoAuthors                TEXT NULL,
    FundingAgency            TEXT NULL,
    GrantNumber              TEXT NULL,
    PeerReviewed             INTEGER NULL,
    CitationCount            INTEGER NULL,
    AbstractText             TEXT NULL,
    Keywords                 TEXT NULL,
    OpenAccess               INTEGER NULL,
    LastUpdate               DATE NULL
);

INSERT INTO teacher_research_publications VALUES
('PUB001','T123','Anna','Lee','Integrating Technology into Literacy','Journal of EdTech','2023-06-15','10.1000/jedtech.2023.001',12,3,45,58,'Literacy','John Smith;Maria Gomez','National Ed Fund','NEF2021-07',1,24,'Study on tech tools in reading instruction','technology, literacy, instruction',1,'2024-01-05');

INSERT INTO teacher_research_publications VALUES
('PUB002','T456','Brian','Kumar','STEM Outreach Impact','Science Education Review','2022-11-20','10.2000/ser.2022.045',8,1,101,115,'STEM','Linda Chang','Science Advancement Grant','SAG2020-03',1,38,'Evaluation of STEM outreach programs','STEM, outreach, evaluation',0,'2024-01-12');

INSERT INTO teacher_research_publications VALUES
('PUB003','T789','Carla','Mendoza','Culturally Responsive Pedagogy','Education Quarterly','2024-02-10','10.3000/eq.2024.010',15,NULL,210,225,'Education','Diego Fernandez','Cultural Equity Initiative','CEI2023-11',1,5,'Analysis of culturally responsive teaching methods','cultural responsiveness, pedagogy',1,'2024-02-15');

-- Table tracking student exchange program details
CREATE TABLE student_exchange_programs
(
    ExchangeID               TEXT NOT NULL PRIMARY KEY,
    StudentID                TEXT NULL,
    StudentFirstName         TEXT NULL,
    StudentLastName          TEXT NULL,
    HomeSchoolCDSCode        TEXT NULL,
    HostSchoolCountry        TEXT NULL,
    HostSchoolName           TEXT NULL,
    ProgramStartDate         DATE NULL,
    ProgramEndDate           DATE NULL,
    DurationWeeks            INTEGER NULL,
    FundingSource            TEXT NULL,
    GrantAmount              REAL NULL,
    LanguageProficiencyLevel TEXT NULL,
    AcademicCreditEarned     INTEGER NULL,
    HostFamilyID             TEXT NULL,
    HostFamilyContactName    TEXT NULL,
    HostFamilyPhone          TEXT NULL,
    PreDepartureOrientation  INTEGER NULL,
    PostReturnSurveyComplete INTEGER NULL,
    EvaluationScore          INTEGER NULL,
    Remarks                  TEXT NULL,
    RecordCreatedDate        DATE NULL
);

INSERT INTO student_exchange_programs VALUES
('EXG001','S1001','Diana','Lopez','123456','Japan','Tokyo International School','2024-07-01','2024-12-31',26,'District Grant',15000.00,'Advanced',4,'HF001','Takashi Sato','5551234567',1,0,NULL,'', '2024-01-20');

INSERT INTO student_exchange_programs VALUES
('EXG002','S1002','Ethan','Brown','234567','Germany','Berlin Academy','2024-08-15','2025-02-15',26,'Family Sponsorship',12000.00,'Intermediate',3,'HF002','Klara Mueller','5559876543',1,0,NULL,'', '2024-02-02');

INSERT INTO student_exchange_programs VALUES
('EXG003','S1003','Fiona','O\'Connor','345678','Canada','Vancouver School','2024-09-01','2025-01-31',22,'Scholarship',8000.00,'Advanced',3,'HF003','James Fraser','5555555555',1,0,NULL,'', '2024-02-10');

-- Table documenting district-wide funding grants awarded to schools
CREATE TABLE school_funding_grants
(
    GrantID                  TEXT NOT NULL PRIMARY KEY,
    SchoolCDSCode            TEXT NULL,
    GrantTitle               TEXT NULL,
    GrantAgency              TEXT NULL,
    AwardDate                DATE NULL,
    GrantAmount              REAL NULL,
    FundingPeriodStart       DATE NULL,
    FundingPeriodEnd         DATE NULL,
    GrantPurpose             TEXT NULL,
    EligibilityCriteria     TEXT NULL,
    ReportingFrequency      TEXT NULL,
    ReportDueDate            DATE NULL,
    ContactPerson            TEXT NULL,
    ContactEmail             TEXT NULL,
    GrantStatus              TEXT NULL,
    RenewalOption            TEXT NULL,
    MatchingFundRequired     INTEGER NULL,
    MatchingFundAmount       REAL NULL,
    DisbursementSchedule     TEXT NULL,
    LastAuditDate            DATE NULL,
    AuditFindings            TEXT NULL,
    CreatedTimestamp         DATE NULL
);

INSERT INTO school_funding_grants VALUES
('GRNT001','123456','Technology Upgrade Grant','State Dept of Education','2023-04-01',500000.00,'2023-05-01','2025-04-30','Upgrade classroom tech','Public schools with STEM focus','Quarterly','2024-01-31','Laura Chen','lchen@stateed.gov','Active','Yes',1,50000.00,'50% upfront, 50% on completion','2024-03-15','No issues','2024-01-01');

INSERT INTO school_funding_grants VALUES
('GRNT002','234567','Green Energy Initiative','Federal Energy Agency','2022-09-15',750000.00,'2022-10-01','2026-09-30','Install solar panels','Schools with energy saving plans','Annual','2023-12-31','Michael Green','mgreen@fea.gov','Completed','No',0,NULL,'25% yearly','2025-12-01','Minor compliance note','2024-02-05');

INSERT INTO school_funding_grants VALUES
('GRNT003','345678','Arts Enrichment Fund','Private Arts Foundation','2024-01-20',200000.00,'2024-02-01','2025-01-31','Support arts programs','K-12 schools with arts curriculum','Semi-annual','2024-07-31','Sofia Rivera','srivera@artfund.org','Active','No',0,NULL,'Full amount at start','2024-04-10','N/A','2024-01-20');

-- Table storing environmental compliance audit results
CREATE TABLE environmental_compliance_audits
(
    AuditID                  TEXT NOT NULL PRIMARY KEY,
    SchoolCDSCode            TEXT NULL,
    AuditDate                DATE NULL,
    AuditorName              TEXT NULL,
    AuditScope               TEXT NULL,
    WasteManagementScore     INTEGER NULL,
    AirQualityScore          INTEGER NULL,
    WaterUsageScore          INTEGER NULL,
    EnergyEfficiencyScore    INTEGER NULL,
    HazardousMaterialsHandled INTEGER NULL,
    ComplianceStatus         TEXT NULL,
    ViolationsFound          INTEGER NULL,
    ViolationDetails         TEXT NULL,
    CorrectiveActionPlan     TEXT NULL,
    FollowUpDate             DATE NULL,
    OverallRating            INTEGER NULL,
    FundingImpact            TEXT NULL,
    Notes                    TEXT NULL,
    LastUpdated              DATE NULL,
    CreatedTimestamp         DATE NULL,
    InspectionType           TEXT NULL,
    SiteAreaSqFt             REAL NULL
);

INSERT INTO environmental_compliance_audits VALUES
('AUD001','123456','2024-02-10','Rebecca Owens','Full Facility','85','78','90','80',0,'Compliant',0,NULL,NULL,NULL,88,'No impact','All metrics meet standards','2024-02-12','2024-02-10','Annual','75000');

INSERT INTO environmental_compliance_audits VALUES
('AUD002','234567','2024-03-05','Carlos Mendes','Energy Systems','70','65','80','60',1,'Conditional',2,'Improper waste segregation; outdated HVAC filters','Replace filters, train staff on waste segregation','2024-04-15',72,'Potential funding reduction','Needs corrective actions','2024-03-07','2024-03-05','Quarterly','82000');

INSERT INTO environmental_compliance_audits VALUES
('AUD003','345678','2024-01-22','Linda Patel','Water Management','90','88','95','92',0,'Compliant',0,NULL,NULL,NULL,94,'Positive impact','Water usage reduced by 15%','2024-01-24','2024-01-22','Annual','68000');

-- Table logging technology training sessions for staff
CREATE TABLE technology_training_sessions
(
    SessionID                TEXT NOT NULL PRIMARY KEY,
    TrainingTitle            TEXT NULL,
    TrainerName              TEXT NULL,
    TrainerContact           TEXT NULL,
    TrainingDate             DATE NULL,
    StartTime                TEXT NULL,
    EndTime                  TEXT NULL,
    AudienceGroup            TEXT NULL,
    Location                 TEXT NULL,
    MaxParticipants          INTEGER NULL,
    ActualParticipants       INTEGER NULL,
    TrainingMode             TEXT NULL,
    MaterialsProvided        TEXT NULL,
    AssessmentScoreAvg       REAL NULL,
    CertificationAwarded     INTEGER NULL,
    FeedbackRatingAvg        REAL NULL,
    FollowUpRequired         INTEGER NULL,
    FollowUpDate             DATE NULL,
    Notes                    TEXT NULL,
    CreatedTimestamp         DATE NULL,
    UpdatedTimestamp         DATE NULL,
    SessionVersion           INTEGER NULL,
    CostCenterCode           TEXT NULL,
    ExternalVendor           TEXT NULL
);

INSERT INTO technology_training_sessions VALUES
('TS001','Blended Learning Tools','Amy Chen','amy.chen@techvendor.com','2024-02-14','09:00','12:00','Teachers','Room 305',30,28,'In-Person','Handouts, USB drives',4.2,1,4.5,0,NULL,'Positive response','2024-01-20','2024-02-15',1,'TC001','EduTech Solutions');

INSERT INTO technology_training_sessions VALUES
('TS002','Data Privacy Basics','Mark Johnson','mark.johnson@privacy.org','2024-03-01','13:00','15:00','Administrative Staff','Room 210',20,18,'Virtual','Slide deck, Quiz',4.8,1,4.7,0,NULL,'High engagement','2024-02-10','2024-03-02',1,'TC002','Privacy Consultants Inc');

INSERT INTO technology_training_sessions VALUES
('TS003','Advanced 3D Printing','Sofia Rivera','sofia.rivera@3dprintco.com','2024-04-10','10:00','13:00','STEM Teachers','Lab 1',15,15,'In-Person','Materials kits, Safety guide',4.5,1,4.6,1,'2024-05-01','Equipment maintenance needed','2024-03-15','2024-04-11',1,'TC003','3DPrint Co');

-- Table capturing details of parent community forums
CREATE TABLE parent_community_forums
(
    ForumID                  TEXT NOT NULL PRIMARY KEY,
    ForumDate                DATE NULL,
    StartTime                TEXT NULL,
    EndTime                  TEXT NULL,
    Location                 TEXT NULL,
    FacilitatorName          TEXT NULL,
    FacilitatorContact       TEXT NULL,
    TopicsCovered            TEXT NULL,
    AttendanceCount          INTEGER NULL,
    ParentRepresentatives    TEXT NULL,
    CommunityPartners        TEXT NULL,
    MaterialsDistributed     TEXT NULL,
    ActionItemsLogged        TEXT NULL,
    FollowUpMeetingPlanned   INTEGER NULL,
    FollowUpDate             DATE NULL,
    FeedbackScoreAvg         REAL NULL,
    Notes                    TEXT NULL,
    CreatedTimestamp         DATE NULL,
    UpdatedTimestamp         DATE NULL,
    ForumVersion             INTEGER NULL,
    DistrictCode             TEXT NULL,
    SponsorOrganization      TEXT NULL
);

INSERT INTO parent_community_forums VALUES
('PF001','2024-02-20','18:00','20:00','School Auditorium','Karen Lee','klee@school.org','Curriculum Updates; Safety Protocols','45','Karen Lee;Mike Smith','Local PTA;Health Dept','Agenda, Survey','Create safety task force','1','2024-03-05',4.2,'Positive engagement','2024-01-30','2024-02-21',1,'001','Community Health Org');

INSERT INTO parent_community_forums VALUES
('PF002','2024-03-15','17:30','19:30','Gymnasium','Samuel Ortiz','sortiz@school.org','Extracurricular Programs; Funding','30','Samuel Ortiz;Laura Gomez','Arts Council;Tech Partners','Flyers, Budget Outline','Explore grant opportunities','0',NULL,3.8,'Needs more funding info','2024-02-10','2024-03-16',1,'002','City Arts Council');

INSERT INTO parent_community_forums VALUES
('PF003','2024-04-10','19:00','21:00','Virtual Zoom','Natalie Kim','nkim@school.org','Remote Learning Strategies; Mental Health','60','Natalie Kim;James Patel','Counseling Center','Slides, Resource List','Develop wellness checklist','1','2024-05-01',4.5,'Highly useful','2024-03-20','2024-04-11',1,'003','Wellness Association');

-- Table monitoring usage of school parking lots
CREATE TABLE school_parking_lot_usage
(
    RecordID                 TEXT NOT NULL PRIMARY KEY,
    SchoolCDSCode            TEXT NULL,
    ParkingLotID             TEXT NULL,
    DateRecorded             DATE NULL,
    TimeSlot                 TEXT NULL,
    VehicleCount             INTEGER NULL,
    StaffVehicleCount       INTEGER NULL,
    StudentVehicleCount     INTEGER NULL,
    VisitorVehicleCount     INTEGER NULL,
    ReservedSpotCount        INTEGER NULL,
    HandicappedSpotCount     INTEGER NULL,
    ElectricChargingSpotCount INTEGER NULL,
    AvgOccupancyRate        REAL NULL,
    PeakOccupancyTime       TEXT NULL,
    WeatherCondition        TEXT NULL,
    IncidentsReported       INTEGER NULL,
    IncidentDetails          TEXT NULL,
    MaintenanceNeeded       INTEGER NULL,
    MaintenanceDetails       TEXT NULL,
    UpdatedTimestamp         DATE NULL,
    RecordedBy               TEXT NULL,
    DataSource               TEXT NULL,
    Comments                 TEXT NULL,
    LastVerifiedDate         DATE NULL
);

INSERT INTO school_parking_lot_usage VALUES
('PU001','123456','LOT_A','2024-02-14','08:00-10:00',120,20,80,20,5,2,3,0.78,'08:30','Clear',0,NULL,0,NULL,'2024-02-15','AutoSensor','Sensor System','No issues','2024-02-15');

INSERT INTO school_parking_lot_usage VALUES
('PU002','234567','LOT_B','2024-02-14','12:00-14:00',95,15,70,10,3,1,2,0.65,'13:00','Cloudy',1,'Minor fender bender near entrance',0,NULL,'2024-02-15','ManualEntry','Staff','Incident logged','2024-02-15');

INSERT INTO school_parking_lot_usage VALUES
('PU003','345678','LOT_C','2024-02-14','17:00-19:00',130,25,90,15,6,3,4,0.85,'18:00','Rain',0,NULL,1,'Spot 12 lighting needs replacement','2024-02-15','AutoSensor','Sensor System','Maintenance scheduled','2024-02-15');

-- Table documenting the district emergency response plan details
CREATE TABLE district_emergency_response_plan
(
    PlanID                   TEXT NOT NULL PRIMARY KEY,
    PlanName                 TEXT NULL,
    VersionNumber            INTEGER NULL,
    ApprovalDate             DATE NULL,
    EffectiveStartDate       DATE NULL,
    EffectiveEndDate         DATE NULL,
    PrimaryContactName       TEXT NULL,
    PrimaryContactPhone      TEXT NULL,
    PrimaryContactEmail      TEXT NULL,
    NotificationMethod       TEXT NULL,
    EvacuationRoutes         TEXT NULL,
    ShelterLocations         TEXT NULL,
    CriticalInfrastructure   TEXT NULL,
    CommunicationChannels    TEXT NULL,
    TrainingFrequency        TEXT NULL,
    LastDrillDate            DATE NULL,
    NextScheduledDrill       DATE NULL,
    ResourceInventory        TEXT NULL,
    BudgetAllocation         REAL NULL,
    FundingSource            TEXT NULL,
    ReviewCycleMonths        INTEGER NULL,
    LastReviewDate           DATE NULL,
    AmendmentsCount          INTEGER NULL,
    Status                   TEXT NULL,
    CreatedTimestamp         DATE NULL,
    UpdatedTimestamp         DATE NULL
);

INSERT INTO district_emergency_response_plan VALUES
('ERP001','District Wide Emergency Response','1','2023-01-10','2023-02-01','2030-12-31','Michael Reed','5551234000','mreed@district.edu','SMS;Email','RouteA;RouteB','Shelter1;Shelter2','Power Grid;Water Plant','Radio;Phone;Email','Annual','2024-02-05','2024-06-01','Generators;Medical Kits','250000.00','State Grant',12,'2023-12-01',3,'Active','2023-01-10','2024-01-15');

INSERT INTO district_emergency_response_plan VALUES
('ERP002','COVID-19 Continuity Plan','2','2021-03-15','2021-04-01','2025-03-31','Laura Kim','5559876000','lkim@district.edu','Email;Portal','Designated Isolation Rooms','Temporary Classroom Spaces','HVAC Systems','Video Conferencing;Phone','Biannual','2023-11-20','2024-04-15','PPE Stock; Air Purifiers','150000.00','Federal Relief',12,'2023-10-01',5,'Active','2021-03-15','2023-11-01');

INSERT INTO district_emergency_response_plan VALUES
('ERP003','Natural Disaster Flood Response','1','2022-06-01','2022-07-01','2030-06-30','David Ortiz','5557654321','dortiz@district.edu','SMS;Phone Call','Highway 5;River Bridge','High School Gym;Community Center','Stormwater Systems','Radio;SMS','Quarterly','2024-01-18','2024-05-20','Sandbags; Pumps','300000.00','State Emergency Fund',12,'2023-12-15',2,'Active','2022-06-01','2023-12-20');