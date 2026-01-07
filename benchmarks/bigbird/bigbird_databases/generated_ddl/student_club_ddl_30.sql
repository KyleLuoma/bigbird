-- Energy sources used by campus facilities
CREATE TABLE campus_energy_source
(
    source_id            TEXT PRIMARY KEY,
    source_name          TEXT,
    source_type          TEXT,
    capacity_mw          REAL,
    installation_date    TEXT,
    status               TEXT,
    vendor               TEXT,
    contract_number      TEXT,
    maintenance_contact  TEXT,
    avg_efficiency       REAL,
    renewable            TEXT,
    carbon_offset_tons   INTEGER,
    location             TEXT,
    notes                TEXT,
    last_audit_date      TEXT,
    audit_score          REAL,
    warranty_end_date    TEXT,
    cost_usd             INTEGER,
    depreciation_years   INTEGER,
    operational_since    TEXT
);

INSERT INTO campus_energy_source VALUES ('es001','SolarArrayNorth','Solar',5.2,'2020-03-15','Active','SunPower','CN-1001','JohnDoe','22.5','true',1200,'NorthCampus','Initial deployment','2023-01-10',95.2,'2028-03-15',2500000,20,'2020-03-15');
INSERT INTO campus_energy_source VALUES ('es002','WindTurbineEast','Wind',3.8,'2019-07-22','Active','WindCo','CN-1002','JaneSmith','19.8','true',800,'EastCampus','Annual maintenance','2023-02-05',89.7,'2024-07-22',1800000,15,'2019-07-22');
INSERT INTO campus_energy_source VALUES ('es003','NaturalGasPlant','Fossil',10.0,'2015-11-01','Active','EnergyCorp','CN-1003','MikeBrown','35.0','false',0,'CentralCampus','Scheduled upgrade','2023-03-12',78.4','2030-11-01',5000000,25,'2015-11-01');

-- Log of accesses to research datasets
CREATE TABLE research_data_access_log
(
    access_id            TEXT PRIMARY KEY,
    dataset_id           TEXT,
    researcher_id        TEXT,
    access_timestamp     TEXT,
    access_type          TEXT,
    purpose_description  TEXT,
    approved_by          TEXT,
    approval_timestamp   TEXT,
    ip_address           TEXT,
    accessed_rows        INTEGER,
    data_size_mb         REAL,
    confidentiality_level TEXT,
    encryption_used      TEXT,
    download_method      TEXT,
    device_type          TEXT,
    os_version           TEXT,
    browser_version      TEXT,
    location_city        TEXT,
    location_state       TEXT,
    notes                TEXT
);

INSERT INTO research_data_access_log VALUES ('ra001','ds100','r001','2023-07-15T09:12:00','Read','Genetics analysis','admin01','2023-07-14T16:45:00','192.168.1.45',2500,12.5,'High','AES256','HTTPS','Laptop','Windows10','Chrome89','Springfield','IL','No issues');
INSERT INTO research_data_access_log VALUES ('ra002','ds200','r002','2023-07-16T14:30:00','Export','Machine learning training','admin02','2023-07-16T13:00:00','10.0.0.12',10000,45.0,'Medium','AES128','SFTP','Desktop','Ubuntu20.04','Firefox85','Madison','WI','Exported subset');
INSERT INTO research_data_access_log VALUES ('ra003','ds300','r003','2023-07-17T11:05:00','Read','Quantum simulation','admin03','2023-07-16T10:20:00','172.16.5.8',500,3.2,'Low','None','SSH','Workstation','macOS11','Safari14','AnnArbor','MI','Read only');

-- Faculty grant review records
CREATE TABLE faculty_grant_review
(
    review_id            TEXT PRIMARY KEY,
    faculty_id           TEXT,
    grant_cycle          TEXT,
    proposal_id          TEXT,
    review_date          TEXT,
    reviewer_id          TEXT,
    score_numerical      REAL,
    score_qualitative    TEXT,
    funding_recommended  TEXT,
    comments             TEXT,
    conflict_of_interest TEXT,
    recommendation_status TEXT,
    budget_requested_usd INTEGER,
    budget_approved_usd  INTEGER,
    department           TEXT,
    college              TEXT,
    funding_source       TEXT,
    project_title        TEXT,
    project_duration_months INTEGER,
    post_review_notes    TEXT,
    archived_flag        TEXT
);

INSERT INTO faculty_grant_review VALUES ('gr001','f001','2023','prop100','2023-03-10','revA',87.5,'Excellent','Yes','Strong methodology','No','Approved',150000,140000,'Engineering','CollegeOfScience','NSF','Advanced Robotics','24','All criteria met','false');
INSERT INTO faculty_grant_review VALUES ('gr002','f002','2023','prop101','2023-03-12','revB',73.0,'Good','Yes','Promising but needs more detail','No','Conditional',90000,85000,'Biology','CollegeOfArts','NIH','Cellular Imaging','36','Requested additional data','false');
INSERT INTO faculty_grant_review VALUES ('gr003','f003','2023','prop102','2023-03-15','revC',62.5,'Fair','No','Insufficient preliminary results','Yes','Rejected',60000,0,'History','CollegeOfHumanities','UCLA','Digital Archives','12','Conflict disclosed','true');

-- Student housing application records
CREATE TABLE student_housing_application
(
    application_id       TEXT PRIMARY KEY,
    student_id           TEXT,
    term                 TEXT,
    application_date     TEXT,
    preferred_hall       TEXT,
    room_type_preference TEXT,
    roommate_request_id  TEXT,
    special_needs        TEXT,
    pet_allergy          TEXT,
    guarantor_name       TEXT,
    guarantor_phone      TEXT,
    income_verification  TEXT,
    lease_duration_months INTEGER,
    deposit_amount_usd   INTEGER,
    move_in_date         TEXT,
    move_out_date        TEXT,
    scholarship_assigned TEXT,
    housing_status      TEXT,
    notes                TEXT,
    last_updated         TEXT
);

INSERT INTO student_housing_application VALUES ('ha001','s001','Fall2023','2023-04-01','MapleHall','Single','rm001','None','No','AliceParent','5551234567','Verified',12,1200,'2023-08-20','2024-08-19','Yes','Pending','First year student','2023-04-01');
INSERT INTO student_housing_application VALUES ('ha002','s002','Spring2024','2023-09-15','OakHall','Double','rm002','Wheelchair Accessible','No','BobGuardian','5559876543','Pending',12,1200,'2024-01-10','2025-01-09','No','Approved','Transfer student','2023-09-15');
INSERT INTO student_housing_application VALUES ('ha003','s003','Fall2023','2023-05-20','PineHall','Suite','rm003','Allergy to pets','Yes','CarolParent','5555551212','Verified',12,1500,'2023-08-20','2024-08-19','Yes','Rejected','Application incomplete','2023-05-20');

-- Library digital rights metadata
CREATE TABLE library_digital_rights
(
    rights_id            TEXT PRIMARY KEY,
    item_id              TEXT,
    title                TEXT,
    creator              TEXT,
    publication_year     INTEGER,
    format_type          TEXT,
    access_level         TEXT,
    license_type         TEXT,
    license_expiration   TEXT,
    usage_allowed        TEXT,
    redistribution_allowed TEXT,
    archival_allowed     TEXT,
    geographic_restriction TEXT,
    user_group_restriction TEXT,
    embargo_period_days  INTEGER,
    cost_per_view_usd    REAL,
    digital_object_identifier TEXT,
    checksum_sha256      TEXT,
    last_review_date     TEXT,
    notes                TEXT
);

INSERT INTO library_digital_rights VALUES ('dr001','itm100','Quantum Computing Basics','DrSmith',2021,'PDF','Open','CC-BY','2025-12-31','Yes','Yes','Yes','None','All','0',0.0,'10.1234/qtc2021','abc123def456ghi789jkl012mno345pqr678stu901vwx','2023-01-15','No restrictions');
INSERT INTO library_digital_rights VALUES ('dr002','itm101','Advanced Nanotech','ProfLee',2020,'EPUB','Restricted','Institutional','2024-06-30','Yes','No','Yes','US','Faculty','365',0.5,'10.5678/advnano2020','def456ghi789jkl012mno345pqr678stu901vwxabc123','2022-11-10','Limited to faculty');
INSERT INTO library_digital_rights VALUES ('dr003','itm102','Historical Maps Collection','ArchiveDept',2019,'TIFF','Closed','Custom','2023-12-31','No','No','Yes','EU','Researchers','730',2.0,'10.9012/histmaps2019','ghi789jkl012mno345pqr678stu901vwxabc123def456','2023-02-20','Require special permission');

-- Environmental stewardship program details
CREATE TABLE environmental_stewardship_program
(
    program_id           TEXT PRIMARY KEY,
    program_name         TEXT,
    start_date           TEXT,
    end_date             TEXT,
    coordinator_id       TEXT,
    budget_usd           INTEGER,
    target_reduction_percent REAL,
    activities_planned   TEXT,
    volunteers_needed    INTEGER,
    partners_involved    TEXT,
    reporting_frequency  TEXT,
    status               TEXT,
    carbon_savings_tons  INTEGER,
    water_savings_gallons INTEGER,
    waste_diverted_percent REAL,
    education_sessions   INTEGER,
    outreach_events      INTEGER,
    certifications_obtained TEXT,
    evaluation_score     REAL,
    notes                TEXT
);

INSERT INTO environmental_stewardship_program VALUES ('esp001','CampusZeroWaste','2023-01-01','2023-12-31','c001',200000,30.0,'Recycling, Composting','150','GreenClub,Facilities','Quarterly','Active',1200,50000,45.5,12,8,'ISO14001','88.5','On track');
INSERT INTO environmental_stewardship_program VALUES ('esp002','RenewableEnergyPush','2023-03-15','2024-03-14','c002',350000,25.0,'Solar panel installation','80','EnergyDept,StudentGov','Biannual','Planning',0,0,0.0,0,0,'','0.0','Planning stage');
INSERT INTO environmental_stewardship_program VALUES ('esp003','WaterConservation','2022-06-01','2023-05-31','c003',150000,20.0,'Low-flow fixtures, Awareness campaigns','100','Facilities,HealthServices','Monthly','Completed',800,200000,30.0,5,4,'LEED','92.0','Successful');

-- Technology asset audit records
CREATE TABLE technology_asset_audit
(
    audit_id            TEXT PRIMARY KEY,
    asset_tag           TEXT,
    asset_type          TEXT,
    manufacturer        TEXT,
    model_number        TEXT,
    serial_number       TEXT,
    purchase_date       TEXT,
    warranty_expiration TEXT,
    assigned_to         TEXT,
    location_building   TEXT,
    location_room       TEXT,
    last_maintenance_date TEXT,
    maintenance_vendor  TEXT,
    condition_rating    REAL,
    depreciation_percent REAL,
    current_value_usd   INTEGER,
    disposal_status     TEXT,
    disposal_date       TEXT,
    notes               TEXT,
    audit_timestamp     TEXT
);

INSERT INTO technology_asset_audit VALUES ('ta001','AT1001','Laptop','Dell','XPS13','SN12345','2021-02-10','2024-02-10','f001','ScienceHall','217','2023-06-15','TechServ','8.5','30','900','InUse',NULL,'No issues','2023-07-01');
INSERT INTO technology_asset_audit VALUES ('ta002','AT2001','Projector','Epson','EB-X05','SN67890','2020-09-05','2023-09-05','r001','Auditorium','Main','2023-04-20','AVSupport','7.0','40','500','ScheduledDisposal','2023-12-01','Needs bulb replacement','2023-07-01');
INSERT INTO technology_asset_audit VALUES ('ta003','AT3001','Server','HP','ProLiant','SN54321','2019-01-20','2022-01-20','it001','DataCenter','Rack12','2023-05-30','DataTech','9.0','60','2500','Retired','2023-06-15','Decommissioned and archived','2023-07-01');

-- Health service test result records
CREATE TABLE health_service_test_result
(
    test_id               TEXT PRIMARY KEY,
    patient_id            TEXT,
    test_type             TEXT,
    specimen_collected_at TEXT,
    result_date           TEXT,
    result_value          TEXT,
    reference_range       TEXT,
    units                 TEXT,
    performed_by          TEXT,
    lab_location          TEXT,
    technician_id         TEXT,
    quality_control_flag  TEXT,
    billing_code          TEXT,
    insurance_approved    TEXT,
    follow_up_required    TEXT,
    notes                 TEXT,
    confidentiality_level TEXT,
    audit_trail_id        TEXT,
    archived_flag         TEXT,
    last_updated          TEXT
);

INSERT INTO health_service_test_result VALUES ('ht001','p001','CBC','2023-06-10T08:30:00','2023-06-11','Normal','4.5-11.0','x10^9/L','LabA','ClinicLab','t001','Pass','80053','Yes','No','All parameters within range','High','audit1001','false','2023-06-12');
INSERT INTO health_service_test_result VALUES ('ht002','p002','Lipid Panel','2023-06-12T09:15:00','2023-06-13','Elevated LDL','<100','mg/dL','LabB','WellnessCenter','t002','Pass','80061','Yes','Yes','Recommend diet consult','Medium','audit1002','false','2023-06-14');
INSERT INTO health_service_test_result VALUES ('ht003','p003','COVID-19 PCR','2023-06-14T10:00:00','2023-06-14','Positive','Negative','N/A','LabC','HealthCenter','t003','Pass','U07.1','Yes','Yes','Isolation protocol initiated','High','audit1003','false','2023-06-15');

-- Community volunteer profile records
CREATE TABLE community_volunteer_profile
(
    volunteer_id          TEXT PRIMARY KEY,
    first_name            TEXT,
    last_name             TEXT,
    email                 TEXT,
    phone                 TEXT,
    address_line1         TEXT,
    address_line2         TEXT,
    city                  TEXT,
    state                 TEXT,
    zip_code              INTEGER,
    date_of_birth         TEXT,
    registration_date     TEXT,
    total_hours_served    INTEGER,
    skills                TEXT,
    availability_weekdays TEXT,
    availability_weekends TEXT,
    background_check_status TEXT,
    emergency_contact_name TEXT,
    emergency_contact_phone TEXT,
    notes                 TEXT
);

INSERT INTO community_volunteer_profile VALUES ('cv001','Emily','Johnson','emily.johnson@example.com','5551112222','123 Maple St','Apt 4','Springfield','IL',62704,'1995-04-12','2022-01-15',120,'EventPlanning,FirstAid','MonTueWed','SatSun','Clear','Robert Johnson','5553334444','Active volunteer');
INSERT INTO community_volunteer_profile VALUES ('cv002','Michael','Smith','michael.smith@example.com','5552223333','456 Oak Ave','', 'Madison','WI',53703,'1988-09-30','2021-06-10',85,'Tutoring,ITSupport','TueThuFri','Sat','Clear','Laura Smith','5554445555','Prefers tech projects');
INSERT INTO community_volunteer_profile VALUES ('cv003','Sarah','Lee','sarah.lee@example.com','5553334444','789 Pine Rd','Suite 2B','Ann Arbor','MI',48104,'2000-02-20','2023-03-05',45,'FoodService,Logistics','MonWedFri','Sun','Pending','David Lee','5555556666','New volunteer');

-- Sustainability goal tracking metrics
CREATE TABLE sustainability_goal_tracking
(
    goal_id               TEXT PRIMARY KEY,
    fiscal_year           TEXT,
    goal_description      TEXT,
    target_value          REAL,
    unit_of_measure       TEXT,
    current_value         REAL,
    progress_percent      REAL,
    responsible_department TEXT,
    start_date            TEXT,
    end_date              TEXT,
    data_source           TEXT,
    last_updated          TEXT,
    notes                 TEXT,
    validation_status     TEXT,
    corrective_action_required TEXT,
    budget_allocated_usd  INTEGER,
    budget_spent_usd      INTEGER,
    risk_level            TEXT,
    stakeholder_engagement TEXT,
    reporting_frequency   TEXT
);

INSERT INTO sustainability_goal_tracking VALUES ('sg001','2023','Reduce campus electricity consumption','15.0','Percent',12.5,83.3,'Facilities','2023-01-01','2023-12-31','EnergyMeters','2023-07-01','On track','No','150000','75000','Medium','High','Quarterly');
INSERT INTO sustainability_goal_tracking VALUES ('sg002','2023','Increase recycling rate','75.0','Percent',68.0,90.7,'Environmental Services','2023-01-01','2023-12-31','WasteAudit','2023-07-01','Challenges with paper waste','Yes','120000','85000','Low','Medium','Quarterly');
INSERT INTO sustainability_goal_tracking VALUES ('sg003','2023','Achieve LEED Gold certification','1','Count',0,0.0,'Planning','2023-01-01','2024-06-30','CertificationBody','2023-07-01','Application submitted','No','200000','50000','High','Very High','Biannual');