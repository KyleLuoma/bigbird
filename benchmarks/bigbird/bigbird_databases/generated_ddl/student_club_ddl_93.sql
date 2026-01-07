-- Campus event schedule detailing rooms, times and logistics
CREATE TABLE campus_event_schedule
(
    schedule_id            TEXT PRIMARY KEY,
    event_id               TEXT,
    event_date             TEXT,
    start_time             TEXT,
    end_time               TEXT,
    room_number            TEXT,
    building_name          TEXT,
    capacity               INTEGER,
    expected_attendance    INTEGER,
    setup_required         TEXT,
    cleanup_required       TEXT,
    audio_visual_needs     TEXT,
    catering_required      TEXT,
    security_level         TEXT,
    sponsor_id             TEXT,
    coordinator_name       TEXT,
    coordinator_contact    TEXT,
    notes                  TEXT,
    created_at             TEXT,
    updated_at             TEXT
);

INSERT INTO campus_event_schedule VALUES
('sch001','ev001','2024-05-10','09:00','12:00','101','MainHall',200,180,'yes','yes','projector','no','high','sp001','AliceSmith','5551234','Initial setup','2024-01-15','2024-02-01');

INSERT INTO campus_event_schedule VALUES
('sch002','ev002','2024-06-20','14:00','17:00','202','ScienceCenter',150,130,'no','yes','sound_system','yes','medium','sp002','BobJones','5555678','Catering needed','2024-02-10','2024-03-05');

INSERT INTO campus_event_schedule VALUES
('sch003','ev003','2024-07-05','10:00','13:00','303','Library',80,75,'yes','no','none','no','low','sp003','CarolLee','5559012','Minor audio needs','2024-03-20','2024-04-10');

-- Detailed information about faculty research grants
CREATE TABLE faculty_research_grant_detail
(
    grant_detail_id   TEXT PRIMARY KEY,
    grant_id          TEXT,
    faculty_id        TEXT,
    title             TEXT,
    amount_awarded    REAL,
    start_date        TEXT,
    end_date          TEXT,
    funding_agency    TEXT,
    project_status    TEXT,
    project_summary   TEXT,
    total_expenditure REAL,
    reporting_deadline TEXT,
    primary_field     TEXT,
    secondary_field   TEXT,
    collaborators     TEXT,
    indirect_cost_rate REAL,
    created_by        TEXT,
    created_date      TEXT,
    modified_by       TEXT,
    modified_date     TEXT
);

INSERT INTO faculty_research_grant_detail VALUES
('gd001','gr001','fac001','QuantumComputing','250000','2023-01-01','2025-12-31','NSF','active','Study of quantum algorithms','50000','2024-06-30','ComputerScience','Physics','fac002;fac003',0.15,'admin','2023-01-02','admin','2023-06-01');

INSERT INTO faculty_research_grant_detail VALUES
('gd002','gr002','fac004','RenewableEnergyStorage','180000','2022-07-15','2024-07-14','DOE','completed','Battery technology development','180000','2024-07-01','Engineering','Chemistry','fac005',0.12,'admin','2022-07-16','admin','2024-07-15');

INSERT INTO faculty_research_grant_detail VALUES
('gd003','gr003','fac006','AIHealthcare','300000','2024-03-01','2027-02-28','NIH','pending','AI tools for disease detection','0','2025-03-01','Medicine','ComputerScience','fac007;fac008',0.20,'admin','2024-03-02','admin','2024-03-10');

-- Information about student exchange program participation
CREATE TABLE student_exchange_program_detail
(
    exchange_id           TEXT PRIMARY KEY,
    student_id            TEXT,
    home_university       TEXT,
    host_university       TEXT,
    program_name          TEXT,
    start_date            TEXT,
    end_date              TEXT,
    scholarship_amount    REAL,
    language_preparation  TEXT,
    housing_type          TEXT,
    housing_address       TEXT,
    academic_credits      INTEGER,
    program_status        TEXT,
    advisor_name          TEXT,
    advisor_contact       TEXT,
    emergency_contact     TEXT,
    travel_insurance      TEXT,
    orientation_complete  TEXT,
    created_at            TEXT,
    updated_at            TEXT
);

INSERT INTO student_exchange_program_detail VALUES
('ex001','stu001','UniversityA','UniversityB','Spring2024Exchange','2024-02-01','2024-06-30','15000','yes','Dormitory','123CampusDr','12','approved','DrSmith','5551111','JaneDoe','yes','yes','2024-01-10','2024-01-20');

INSERT INTO student_exchange_program_detail VALUES
('ex002','stu002','UniversityC','UniversityD','Fall2024Exchange','2024-09-01','2025-01-31','12000','no','OffCampusApartment','456CollegeAve','15','pending','DrLee','5552222','JohnDoe','yes','no','2024-02-05','2024-02-12');

INSERT INTO student_exchange_program_detail VALUES
('ex003','stu003','UniversityE','UniversityF','Summer2024Exchange','2024-06-15','2024-08-15','8000','yes','HostFamily','789FamilySt','6','approved','DrKim','5553333','AliceBrown','yes','yes','2024-03-01','2024-03-07');

-- Metrics used to evaluate sustainability initiatives
CREATE TABLE sustainability_initiative_metric
(
    metric_id                TEXT PRIMARY KEY,
    initiative_id           TEXT,
    metric_name             TEXT,
    metric_type             TEXT,
    target_value            REAL,
    current_value           REAL,
    measurement_unit        TEXT,
    measurement_frequency   TEXT,
    data_source             TEXT,
    responsible_party       TEXT,
    last_measured_date      TEXT,
    next_measurement_date   TEXT,
    trend_direction         TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    approved_by             TEXT,
    approval_date           TEXT,
    verification_status     TEXT,
    verification_date       TEXT
);

INSERT INTO sustainability_initiative_metric VALUES
('m001','init001','EnergyConsumption','kwh','500000','450000','kwh','monthly','meter_readings','FacilitiesDept','2024-02-28','2024-03-31','decreasing','On track','2024-01-15','2024-02-01','DirectorA','2024-01-20','verified','2024-02-28');

INSERT INTO sustainability_initiative_metric VALUES
('m002','init002','WaterUsage','gallons','200000','210000','gallons','monthly','water_sensors','FacilitiesDept','2024-02-28','2024-03-31','increasing','Needs attention','2024-01-16','2024-02-02','DirectorB','2024-01-21','pending','');

INSERT INTO sustainability_initiative_metric VALUES
('m003','init003','WasteDiversion','percent','75','70','percent','quarterly','waste_audit','SustainabilityOffice','2024-01-31','2024-04-30','increasing','Improving','2024-01-10','2024-01-25','DirectorC','2024-01-15','verified','2024-01-31');

-- Energy meter readings captured across campus buildings
CREATE TABLE campus_energy_meter_reading
(
    reading_id          TEXT PRIMARY KEY,
    meter_id            TEXT,
    building_code       TEXT,
    floor_number        INTEGER,
    reading_date        TEXT,
    reading_time        TEXT,
    kwh_consumed        REAL,
    peak_demand         REAL,
    voltage             REAL,
    current             REAL,
    power_factor        REAL,
    tariff_type         TEXT,
    reading_status      TEXT,
    created_by          TEXT,
    created_at          TEXT,
    verified_by         TEXT,
    verified_at         TEXT,
    notes               TEXT,
    anomaly_flag        TEXT,
    anomaly_description TEXT
);

INSERT INTO campus_energy_meter_reading VALUES
('r001','mtr001','BLD01',1,'2024-02-28','23:00',1200.5,5.2,120.0,10.0,0.95,'standard','complete','tech01','2024-03-01','manager01','2024-03-02','','no','');

INSERT INTO campus_energy_meter_reading VALUES
('r002','mtr002','BLD02',3,'2024-02-28','23:00',850.3,4.1,118.0,9.5,0.96,'standard','complete','tech02','2024-03-01','manager02','2024-03-02','','no','');

INSERT INTO campus_energy_meter_reading VALUES
('r003','mtr003','BLD03',5,'2024-02-28','23:00',300.0,2.0,115.0,5.0,0.92,'offpeak','complete','tech03','2024-03-01','manager03','2024-03-02','','yes','spike_detected');

-- Digital media assets held by the library
CREATE TABLE library_digital_media_asset
(
    asset_id            TEXT PRIMARY KEY,
    title               TEXT,
    creator             TEXT,
    media_type          TEXT,
    publication_year    INTEGER,
    format              TEXT,
    file_size_mb        REAL,
    checksum            TEXT,
    access_level        TEXT,
    department          TEXT,
    collection_name     TEXT,
    license_type        TEXT,
    expiration_date     TEXT,
    url                 TEXT,
    download_count      INTEGER,
    last_accessed       TEXT,
    added_by            TEXT,
    added_date          TEXT,
    metadata_schema     TEXT,
    notes               TEXT,
    retention_policy    TEXT
);

INSERT INTO library_digital_media_asset VALUES
('da001','DigitalHistoryArchive','HistOrg','video','2021','mp4',2500.0','abc123def','public','History','Archival','cc','2025-12-31','http://library.edu/da001',150,'2024-02-20','librarian01','2021-01-15','dublin_core','Stored for research','7_years');

INSERT INTO library_digital_media_asset VALUES
('da002','SciencePodcastSeries','SciPod','audio','2022','mp3',500.0','def456ghi','restricted','Science','Podcast','cc','2024-06-30','http://library.edu/da002',80,'2024-02-18','librarian02','2022-03-10','dublin_core','Limited access','5_years');

INSERT INTO library_digital_media_asset VALUES
('da003','ArtImageCollection','ArtDept','image','2020','tiff',1200.0','ghi789jkl','public','Art','Images','public_domain','2028-01-01','http://library.edu/da003',300,'2024-02-22','librarian03','2020-05-05','dublin_core','High resolution','10_years');

-- Vendor performance reviews for contracted services
CREATE TABLE vendor_performance_review
(
    review_id               TEXT PRIMARY KEY,
    vendor_id               TEXT,
    contract_id             TEXT,
    review_period_start     TEXT,
    review_period_end       TEXT,
    score_quality           INTEGER,
    score_timeliness        INTEGER,
    score_compliance        INTEGER,
    score_communication     INTEGER,
    overall_score           INTEGER,
    reviewer_name           TEXT,
    reviewer_department     TEXT,
    comments                TEXT,
    recommendations         TEXT,
    follow_up_actions       TEXT,
    review_date             TEXT,
    next_review_date        TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    status                  TEXT,
    escalation_required     TEXT
);

INSERT INTO vendor_performance_review VALUES
('vr001','ven001','con001','2023-01-01','2023-12-31',9,8,10,7,34,'JohnDoe','Procurement','Exceeded expectations','Continue current terms','Annual review','2024-01-15','2025-01-15','2024-01-10','2024-01-12','closed','no');

INSERT INTO vendor_performance_review VALUES
('vr002','ven002','con002','2023-06-01','2024-05-31',6,5,7,6,24,'JaneSmith','Facilities','Met basic requirements','Consider alternative vendor','Quarterly check','2024-02-20','2025-02-20','2024-02-10','2024-02-12','open','yes');

INSERT INTO vendor_performance_review VALUES
('vr003','ven003','con003','2022-09-01','2023-08-31',8,9,9,8,34,'MikeBrown','IT','Highly reliable','Extend contract','Biannual review','2024-03-05','2025-03-05','2024-03-01','2024-03-03','closed','no');

-- Projects inside the technology incubator
CREATE TABLE technology_incubator_project
(
    project_id                TEXT PRIMARY KEY,
    startup_name              TEXT,
    founder_name              TEXT,
    founding_year             INTEGER,
    industry_sector           TEXT,
    funding_stage             TEXT,
    total_funding             REAL,
    incubator_entry_date      TEXT,
    incubator_exit_date       TEXT,
    mentor_assigned           TEXT,
    office_space_number       TEXT,
    equipment_provided        TEXT,
    progress_status           TEXT,
    milestones_achieved       INTEGER,
    next_milestone_due        TEXT,
    pitch_deck_url            TEXT,
    demo_video_url            TEXT,
    market_analysis_url       TEXT,
    created_at                TEXT,
    updated_at                TEXT,
    notes                     TEXT
);

INSERT INTO technology_incubator_project VALUES
('tp001','EcoTech','LauraGreen','2022','CleanTech','seed',250000,'2023-01-15','2024-12-31','MentorA','OS101','3Dprinter','on_track',3,'2024-06-30','http://incubator.edu/pitch1','http://incubator.edu/demo1','http://incubator.edu/market1','2023-01-10','2023-06-01','Prototype completed');

INSERT INTO technology_incubator_project VALUES
('tp002','HealthAI','DavidLee','2021','HealthTech','series_a',750000,'2022-05-01','2025-04-30','MentorB','OS202','GPUcluster','ahead_of_schedule',5,'2024-09-15','http://incubator.edu/pitch2','http://incubator.edu/demo2','http://incubator.edu/market2','2022-04-20','2022-10-15','Regulatory approval pending');

INSERT INTO technology_incubator_project VALUES
('tp003','EduGames','SofiaMartinez','2023','EdTech','pre_seed',100000,'2023-09-10','2024-08-09','MentorC','OS303','VRkits','early_stage',1,'2024-12-01','http://incubator.edu/pitch3','http://incubator.edu/demo3','http://incubator.edu/market3','2023-09-01','2023-12-01','Beta testing in schools');

-- Visits to the campus health service
CREATE TABLE campus_health_service_visit
(
    visit_id                TEXT PRIMARY KEY,
    patient_id              TEXT,
    service_type            TEXT,
    visit_date              TEXT,
    visit_time              TEXT,
    provider_id             TEXT,
    diagnosis_code          TEXT,
    prescription_details    TEXT,
    follow_up_date          TEXT,
    billing_code            TEXT,
    insurance_provider      TEXT,
    copay_amount            REAL,
    total_charges           REAL,
    visit_status            TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    referral_source         TEXT,
    urgency_level           TEXT,
    room_number             TEXT
);

INSERT INTO campus_health_service_visit VALUES
('hv001','pat001','GeneralCheckup','2024-02-15','09:30','prov001','Z00','None','2024-03-01','B001','HealthIns','15','100','completed','Routine annual exam','2024-02-10','2024-02-15','CampusHealth','low','R101');

INSERT INTO campus_health_service_visit VALUES
('hv002','pat002','DentalCleaning','2024-02-18','11:00','prov002','D111','Fluoride','2024-06-18','D002','DentalPlan','20','150','completed','First time patient','2024-02-12','2024-02-18','DentalClinic','medium','D202');

INSERT INTO campus_health_service_visit VALUES
('hv003','pat003','PhysicalTherapy','2024-02-20','14:00','prov003','M54','Ibuprofen','2024-04-20','PT001','PhysioIns','10','80','in_progress','Follow-up for back pain','2024-02-15','2024-02-20','ReferralPhysician','high','PT303');

-- Participants in community outreach events
CREATE TABLE community_outreach_event_participant
(
    participation_id      TEXT PRIMARY KEY,
    event_id              TEXT,
    participant_id        TEXT,
    organization_name     TEXT,
    role                  TEXT,
    registration_date     TEXT,
    attendance_status     TEXT,
    contact_email         TEXT,
    contact_phone         TEXT,
    t_shirt_size          TEXT,
    dietary_restrictions TEXT,
    volunteer_hours       REAL,
    background_check_completed TEXT,
    emergency_contact_name TEXT,
    emergency_contact_phone TEXT,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    feedback_score        INTEGER,
    badge_number          TEXT
);

INSERT INTO community_outreach_event_participant VALUES
('cp001','ev001','part001','LocalNGO','Volunteer','2024-01-10','attended','john.doe@example.com','5551112','M','none',4.5,'yes','JaneDoe','5552211','Great effort','2024-01-05','2024-02-01',5,'B001');

INSERT INTO community_outreach_event_participant VALUES
('cp002','ev001','part002','CommunityCenter','Coordinator','2024-01-08','attended','alice.smith@example.com','5552223','L','vegetarian',6.0,'yes','BobBrown','5553322','Excellent coordination','2024-01-06','2024-02-02',4,'B002');

INSERT INTO community_outreach_event_participant VALUES
('cp003','ev002','part003','YouthClub','Speaker','2024-02-12','no_show','mike.jones@example.com','5553334','S','none',0,'no','SaraWhite','5554433','Did not attend','2024-02-05','2024-02-15',0,'B003');