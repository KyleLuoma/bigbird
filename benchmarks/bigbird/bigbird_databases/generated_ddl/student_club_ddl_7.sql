-- Faculty profile information
CREATE TABLE faculty_profile
(
    faculty_id               TEXT PRIMARY KEY,
    first_name               TEXT,
    last_name                TEXT,
    email                    TEXT,
    department               TEXT,
    title                    TEXT,
    office_number            TEXT,
    phone                    TEXT,
    hire_date                TEXT,
    termination_date         TEXT,
    research_area            TEXT,
    tenure_status            TEXT,
    salary                   REAL,
    office_hours             TEXT,
    bio                      TEXT,
    website                  TEXT,
    education_level          TEXT,
    number_of_publications  INTEGER,
    h_index                  INTEGER,
    awards                   TEXT
);

INSERT INTO faculty_profile VALUES ('F001','Alice','Smith','alice.smith@univ.edu','Computer Science','Professor','CS-210','5551234567','2010-08-15','','Artificial Intelligence','Tenured',120000,'MonWedFri 10-12','Expert in machine learning','http://alice.example.com','PhD',45,30,'Best Teacher 2019');
INSERT INTO faculty_profile VALUES ('F002','Bob','Johnson','bob.johnson@univ.edu','Mathematics','Associate Professor','MTH-102','5559876543','2015-01-10','','Topology','Tenure Track',95000,'TueThu 14-16','Specialist in geometric topology','http://bob.example.com','PhD',20,15,'Research Grant 2020');
INSERT INTO faculty_profile VALUES ('F003','Carol','Lee','carol.lee@univ.edu','History','Assistant Professor','HIST-305','5555551212','2020-09-01','','Modern European History','Tenure Track',80000,'Mon 13-15','Focus on 19th century social movements','http://carol.example.com','MA',10,5,'Teaching Excellence 2022');

-- Research project details
CREATE TABLE research_project
(
    project_id                TEXT PRIMARY KEY,
    project_name              TEXT,
    lead_faculty_id           TEXT,
    start_date                TEXT,
    end_date                  TEXT,
    funding_amount            REAL,
    funding_source            TEXT,
    status                    TEXT,
    description               TEXT,
    department                TEXT,
    field_of_study            TEXT,
    num_students              INTEGER,
    num_publications_expected INTEGER,
    milestones                TEXT,
    ethics_approval           TEXT,
    data_sharing_plan         TEXT,
    primary_contact_email     TEXT,
    budget_code               TEXT,
    location                  TEXT,
    related_grant_id          TEXT
);

INSERT INTO research_project VALUES ('P001','AI for Climate','F001','2022-01-01','2025-12-31',2500000,'National Science Fund','Active','Develop AI models for climate prediction','Computer Science','Artificial Intelligence',5,12,'Phase1 complete; Phase2 ongoing','Approved','Open access repository','ai.project@univ.edu','BC1001','Campus Lab A','G001');
INSERT INTO research_project VALUES ('P002','Topology in Data Analysis','F002','2021-06-15','2024-06-14',1200000,'Math Innovation Grant','Active','Apply topological methods to big data sets','Mathematics','Applied Topology',3,8,'Data collection; Model validation','Pending','Restricted to collaborators','topology.project@univ.edu','BC2002','Math Center B','G002');
INSERT INTO research_project VALUES ('P003','Digital Archives Preservation','F003','2023-03-01','2026-02-28',900000,'Cultural Heritage Fund','Planning','Preserve digital historical documents','History','Digital Humanities',4,6,'Framework design; Pilot testing','Approved','Public digital library','history.project@univ.edu','BC3003','Archive Lab C','G003');

-- Scholarship program catalog
CREATE TABLE scholarship_program
(
    scholarship_id            TEXT PRIMARY KEY,
    name                      TEXT,
    amount                    REAL,
    eligibility_criteria      TEXT,
    application_deadline      TEXT,
    award_cycle               TEXT,
    number_of_awards          INTEGER,
    sponsoring_organization   TEXT,
    renewable                 TEXT,
    duration_years            INTEGER,
    fund_source               TEXT,
    contact_email             TEXT,
    website                   TEXT,
    required_gpa              REAL,
    field_of_study            TEXT,
    residency_requirement    TEXT,
    spin_off                  TEXT,
    tax_status                TEXT,
    notes                     TEXT,
    created_date              TEXT,
    last_updated              TEXT
);

INSERT INTO scholarship_program VALUES ('S001','Tech Leaders','5000','STEM majors with GPA >=3.5','2024-04-30','Annual',10,'Tech Corp','Yes',4,'Corporate donation','scholarship@techcorp.com','http://techscholar.example.com',3.5,'Engineering','US citizens','No','Tax deductible','Focus on underrepresented groups','2023-01-01','2023-12-15');
INSERT INTO scholarship_program VALUES ('S002','Arts Excellence','3000','Arts majors with portfolio','2024-05-15','Annual',5,'Arts Foundation','No',2,'Foundation grant','arts.scholarship@arts.org','http://artsfund.example.com',3.0,'Fine Arts','US residents','No','Tax deductible','Open to all art disciplines','2022-06-01','2023-11-10');
INSERT INTO scholarship_program VALUES ('S003','Community Service','2000','Any major with 100+ volunteer hours','2024-06-01','Biannual',8,'Community Trust','Yes',3,'Trust endowment','service@communitytrust.org','http://service.scholar.example.com',2.5,'All','US residents','Yes','Tax deductible','Encourages civic engagement','2021-09-20','2023-08-05');

-- Student organization registry
CREATE TABLE student_organization
(
    org_id                  TEXT PRIMARY KEY,
    name                    TEXT,
    founded_date            TEXT,
    purpose                 TEXT,
    advisor_faculty_id      TEXT,
    meeting_location        TEXT,
    meeting_time            TEXT,
    membership_fee          REAL,
    number_of_members       INTEGER,
    website                 TEXT,
    email                   TEXT,
    social_media            TEXT,
    charter_approved        TEXT,
    budget_allocation       REAL,
    activity_focus          TEXT,
    awards_received         TEXT,
    status                  TEXT,
    description             TEXT,
    created_at              TEXT,
    last_modified           TEXT
);

INSERT INTO student_organization VALUES ('O001','Robotics Club','2015-09-01','Promote robotics education','F001','Engineering Lab','Fridays 16:00',50,120,'http://robotics.example.com','robotics@univ.edu','@roboticsclub','Yes',10000,'Robotics competitions','Firstplace Regional 2022','Active','Hands on projects and workshops','2020-01-10','2023-10-12');
INSERT INTO student_organization VALUES ('O002','Literary Society','2010-01-15','Foster appreciation of literature','F003','Library Conference Room','Wednesdays 14:00',0,80,'http://litSoc.example.com','literary@univ.edu','@litSoc','Yes',5000,'Poetry and prose','Best Campus Event 2021','Active','Monthly readings and author talks','2019-05-05','2023-09-01');
INSERT INTO student_organization VALUES ('O003','Eco Initiative','2018-04-20','Promote sustainability on campus','F002','Student Center','Mondays 10:00',20,60,'http://eco.initiative.com','eco@univ.edu','@ecoInit','Yes',8000,'Environmental projects','Green Campus Award 2022','Active','Recycling drives and green workshops','2021-03-12','2023-11-03');

-- Campus utility contracts
CREATE TABLE campus_utility
(
    utility_id               TEXT PRIMARY KEY,
    name                     TEXT,
    utility_type             TEXT,
    provider_company         TEXT,
    contract_start           TEXT,
    contract_end             TEXT,
    monthly_cost             REAL,
    annual_consumption       REAL,
    unit_of_measure          TEXT,
    service_area             TEXT,
    contact_phone            TEXT,
    contact_email            TEXT,
    sustainability_score     INTEGER,
    maintenance_schedule     TEXT,
    outage_history           TEXT,
    compliance_cert          TEXT,
    rating                   INTEGER,
    notes                    TEXT,
    created_date             TEXT,
    last_updated             TEXT
);

INSERT INTO campus_utility VALUES ('U001','Electricity','Power','EnergyCo','2022-01-01','2027-12-31',25000,3000000,'kWh','Entire Campus','5551112222','utility@energyco.com',85,'Quarterly inspection','None','ISO9001',4,'Stable supply','2022-01-01','2023-10-01');
INSERT INTO campus_utility VALUES ('U002','Water','Water','AquaSupply','2021-06-01','2026-05-31',8000,1200000,'Gallons','Dormitories and Labs','5553334444','water@aquasupply.com',78,'Biannual maintenance','Minor leak 2023-04','ISO14001',3,'Conservation program active','2021-06-01','2023-09-15');
INSERT INTO campus_utility VALUES ('U003','Campus WiFi','Internet','NetConnect','2023-03-01','2028-02-28',15000,0,'GB','All Buildings','5557778888','support@netconnect.com',90,'Monthly firmware updates','None','ISO27001',5,'High uptime','2023-03-01','2023-10-20');

-- Parking violation records
CREATE TABLE parking_violation
(
    violation_id           TEXT PRIMARY KEY,
    vehicle_plate          TEXT,
    violation_date         TEXT,
    violation_time         TEXT,
    location               TEXT,
    officer_id             TEXT,
    fine_amount            REAL,
    paid_status            TEXT,
    payment_date           TEXT,
    violation_type         TEXT,
    notes                  TEXT,
    recorded_by            TEXT,
    camera_id              TEXT,
    speed_recorded         REAL,
    lane                   TEXT,
    description            TEXT,
    adjudication_status    TEXT,
    appeal_deadline        TEXT,
    resolved_date          TEXT,
    fine_category          TEXT
);

INSERT INTO parking_violation VALUES ('V001','ABC1234','2023-09-10','09:15','Lot A','O101',50,'Unpaid','','Overstay','Exceeded 2 hour limit','','C001',0,'North','Vehicle parked beyond allowed time','Pending','2023-09-20','','Standard');
INSERT INTO parking_violation VALUES ('V002','XYZ5678','2023-10-02','14:45','Lot B','O102',75,'Paid','2023-10-05','No Permit','No valid permit displayed','O102','C002',0,'South','Parking without permit','Closed','2023-10-12','2023-10-06','Regulation');
INSERT INTO parking_violation VALUES ('V003','LMN9101','2023-11-01','08:30','Main Entrance','O103',120,'Unpaid','','Speeding in parking area','Speed 15 mph in 5 mph zone','O103','C003',15,'Entrance','Speeding violation','Open','2023-11-10','','Severity');

-- Library resource catalog
CREATE TABLE library_resource
(
    resource_id           TEXT PRIMARY KEY,
    title                 TEXT,
    resource_type         TEXT,
    author                TEXT,
    publisher             TEXT,
    publication_year      INTEGER,
    isbn                  TEXT,
    call_number           TEXT,
    location              TEXT,
    availability_status   TEXT,
    checkout_length_days  INTEGER,
    digital_access        TEXT,
    subject               TEXT,
    language              TEXT,
    edition               TEXT,
    pages                 INTEGER,
    summary               TEXT,
    acquisition_date      TEXT,
    cost                  REAL,
    vendor_id             TEXT
);

INSERT INTO library_resource VALUES ('R001','Introduction to Algorithms','Book','Cormen Thomas','MIT Press',2009,'9780262033848','QA76.6 .C66 2009','Main Library','Available',21,'Yes','Computer Science','English','3rd',1312,'Comprehensive algorithms textbook','2020-02-15',120.00','V001');
INSERT INTO library_resource VALUES ('R002','Modern Art Exhibition Catalog','Digital','Various','ArtHouse',2022,'','DIG001','Digital Commons','Available',0,'Yes','Art History','English','1st',0,'Online catalog of 2022 exhibition','2022-06-01',0.00','V002');
INSERT INTO library_resource VALUES ('R003','World History Volume I','Book','Houghton John','Oxford Press',2015,'9780198723493','D16 .H79 2015','East Wing','Checked Out',30,'No','History','English','2nd',864,'Survey of world history from ancient to modern era','2016-09-10',85.50','V001');

-- Accommodation booking system
CREATE TABLE accommodation_booking
(
    booking_id            TEXT PRIMARY KEY,
    guest_name            TEXT,
    check_in_date         TEXT,
    check_out_date        TEXT,
    room_number           TEXT,
    room_type             TEXT,
    rate_per_night        REAL,
    total_cost            REAL,
    payment_status        TEXT,
    special_requests      TEXT,
    booking_source        TEXT,
    contact_phone         TEXT,
    contact_email         TEXT,
    assigned_staff_id     TEXT,
    amenities_included    TEXT,
    deposit_amount        REAL,
    cancellation_policy   TEXT,
    created_timestamp     TEXT,
    modified_timestamp    TEXT,
    notes                 TEXT
);

INSERT INTO accommodation_booking VALUES ('B001','Emily Clark','2023-12-01','2023-12-05','101','Deluxe',150,600,'Paid','Late check‑out','Online','5551230987','emily.clark@example.com','S001','WiFi, Breakfast',100,'Free cancellation up to 48h','2023-10-01 09:15:00','2023-10-01 09:15:00','');
INSERT INTO accommodation_booking VALUES ('B002','Michael Brown','2024-01-10','2024-01-12','202','Standard',100,200,'Pending','Extra pillows','Phone','5559876543','michael.brown@example.com','S002','WiFi',50,'Non‑refundable','2023-11-20 14:30:00','2023-11-20 14:30:00','Requires airport shuttle');
INSERT INTO accommodation_booking VALUES ('B003','Sofia Garcia','2023-11-20','2023-11-25','303','Suite',250,1250,'Paid','Allergy‑free linens','TravelAgent','5555557777','sofia.garcia@example.com','S003','WiFi, Breakfast, Gym',200,'Free cancellation up to 72h','2023-09-15 11:45:00','2023-09-16 08:00:00','');

-- Health service visit records
CREATE TABLE health_service_visit
(
    visit_id               TEXT PRIMARY KEY,
    patient_id             TEXT,
    visit_date             TEXT,
    visit_time             TEXT,
    provider_id            TEXT,
    department             TEXT,
    visit_type             TEXT,
    diagnosis_code         TEXT,
    prescription_details   TEXT,
    follow_up_date         TEXT,
    billing_amount         REAL,
    insurance_provider     TEXT,
    copay_amount           REAL,
    notes                  TEXT,
    referral_source        TEXT,
    triage_level           TEXT,
    vital_signs_recorded   TEXT,
    lab_tests_ordered      TEXT,
    imaging_requested      TEXT,
    discharge_instructions TEXT
);

INSERT INTO health_service_visit VALUES ('VH001','PAT001','2023-09-14','10:30','PROV01','Primary Care','Checkup','Z00.00','Vitamin D 1000IU daily','2024-09-14',80,'HealthPlan A',20,'All vitals normal','Self','Low','BP 120/80, HR 70','Blood work','Chest X‑ray','Rest and hydration');
INSERT INTO health_service_visit VALUES ('VH002','PAT002','2023-10-05','14:00','PROV02','Dermatology','Consultation','L40.0','Topical steroid cream','2023-10-20',120,'HealthPlan B',30,'Skin rash improved','Referral from GP','Medium','BP 115/75, HR 68','Allergy panel','None','Apply cream twice daily');
INSERT INTO health_service_visit VALUES ('VH003','PAT003','2023-11-02','09:15','PROV03','Physiotherapy','Therapy','M54.5','Exercise program','2023-11-16',60,'HealthPlan C',15,'Improved mobility','Self','Low','BP 118/78, HR 72','None','None','Continue exercises at home');

-- Alumni donation tracking
CREATE TABLE alumni_donation
(
    donation_id            TEXT PRIMARY KEY,
    alumni_id              TEXT,
    donation_date          TEXT,
    amount                 REAL,
    campaign_name          TEXT,
    purpose                TEXT,
    payment_method         TEXT,
    receipt_number         TEXT,
    tax_deductible         TEXT,
    matched_amount         REAL,
    matching_agency        TEXT,
    recognition_level      TEXT,
    acknowledgment_sent    TEXT,
    notes                  TEXT,
    pledged_amount         REAL,
    pledge_fulfilled       TEXT,
    gift_anon_status      TEXT,
    employer_match         TEXT,
    contact_email          TEXT,
    contact_phone          TEXT,
    created_at             TEXT
);

INSERT INTO alumni_donation VALUES ('D001','A001','2023-08-15',5000,'Capital Campaign','Building renovation','Credit Card','RCPT1001','Yes',0,'','Gold','2023-08-20','First time donor','5000','Yes','No','Yes','alumni1@example.com','5551112222','2023-08-15');
INSERT INTO alumni_donation VALUES ('D002','A002','2023-09-10',2500,'Scholarship Fund','Student scholarships','Check','RCPT1002','Yes',2500,'Corporate Partner','Silver','2023-09-12','Matched by employer','5000','No','No','Yes','alumni2@example.com','5553334444','2023-09-10');
INSERT INTO alumni_donation VALUES ('D003','A003','2023-10-05',1000,'Research Grant','Lab equipment','Online','RCPT1003','Yes',0,'','Bronze','2023-10-07','Recurring annual donor','1000','Yes','Yes','No','alumni3@example.com','5555556666','2023-10-05');