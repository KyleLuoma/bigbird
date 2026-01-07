-- Table storing archived digital media assets
CREATE TABLE media_archive
(
    asset_id               TEXT PRIMARY KEY,
    file_name              TEXT,
    file_type              TEXT,
    upload_date            TEXT,
    size_bytes             INTEGER,
    resolution             TEXT,
    duration_seconds       INTEGER,
    description            TEXT,
    tags                   TEXT,
    checksum               TEXT,
    storage_location       TEXT,
    uploader_id            TEXT,
    access_level           TEXT,
    is_active              TEXT,
    retention_policy       TEXT,
    category               TEXT,
    related_event_id       TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    notes                  TEXT
);
INSERT INTO media_archive VALUES ('A001','intro_video.mp4','mp4','20230101',10485760,'1920x1080',120,'Opening video','intro,video','abc123','s3://media/','U001','public','yes','5years','video','E001','20230101','20230102','initial upload');
INSERT INTO media_archive VALUES ('A002','logo.png','png','20230215',204800,'800x600',0,'Logo image','logo,brand','def456','s3://media/','U002','internal','yes','indefinite','image','E002','20230215','20230216','high resolution');
INSERT INTO media_archive VALUES ('A003','brochure.pdf','pdf','20230310',512000,'','0','Event brochure','brochure,marketing','ghi789','s3://media/','U003','public','yes','2years','document','E003','20230310','20230311','ready for distribution');

-- Table tracking equipment calibration records
CREATE TABLE equipment_calibration
(
    calibration_id         TEXT PRIMARY KEY,
    equipment_id           TEXT,
    calibration_date       TEXT,
    calibrated_by          TEXT,
    next_due_date          TEXT,
    status                 TEXT,
    method                 TEXT,
    technician_cert        TEXT,
    tolerance              TEXT,
    reading_value          REAL,
    unit                   TEXT,
    notes                  TEXT,
    location               TEXT,
    manufacturer           TEXT,
    model_number           TEXT,
    serial_number          TEXT,
    calibration_report_url TEXT,
    approval_status        TEXT,
    created_at             TEXT,
    updated_at             TEXT
);
INSERT INTO equipment_calibration VALUES ('C001','EQ001','20230105','TechA','20240105','completed','laser','CERT123','±0.01',0.98,'mm','Initial calibration','Lab1','AcmeCorp','X100','SN001','http://reports/c001','approved','20230105','20230106');
INSERT INTO equipment_calibration VALUES ('C002','EQ002','20230220','TechB','20240220','completed','electrical','CERT456','±0.05',5.12,'V','Routine check','Lab2','BetaInc','Y200','SN002','http://reports/c002','approved','20230220','20230221');
INSERT INTO equipment_calibration VALUES ('C003','EQ003','20230315','TechC','20240315','pending','thermal','CERT789','±0.1',22.5,'°C','Scheduled calibration','Lab3','GammaLtd','Z300','SN003','http://reports/c003','pending','20230315','20230316');

-- Table for planned transport routes
CREATE TABLE transport_route_plan
(
    route_plan_id      TEXT PRIMARY KEY,
    vehicle_id         TEXT,
    start_location     TEXT,
    end_location       TEXT,
    departure_time     TEXT,
    arrival_time       TEXT,
    distance_km        REAL,
    planned_stops      INTEGER,
    driver_id          TEXT,
    route_status       TEXT,
    fuel_estimate_liters REAL,
    cargo_type         TEXT,
    max_load_kg        INTEGER,
    weather_conditions TEXT,
    risk_level         TEXT,
    created_by         TEXT,
    created_at         TEXT,
    updated_at         TEXT,
    notes              TEXT,
    compliance_flag    TEXT
);
INSERT INTO transport_route_plan VALUES ('R001','V001','WarehouseA','VenueX','08:00','12:00',150.5,2,'D001','approved',30.0,'equipment',2000,'clear','low','PlannerA','20230101','20230102','no issues','yes');
INSERT INTO transport_route_plan VALUES ('R002','V002','DepotB','VenueY','09:30','14:15',210.0,3,'D002','pending',45.0,'materials',2500,'rain','medium','PlannerB','20230201','20230202','awaiting weather update','no');
INSERT INTO transport_route_plan VALUES ('R003','V003','HubC','VenueZ','07:15','11:45',180.8,1,'D003','approved',28.5,'supplies',1800,'cloudy','low','PlannerC','20230301','20230302','route optimized','yes');

-- Table for sustainability audit records
CREATE TABLE sustainability_audit
(
    audit_id               TEXT PRIMARY KEY,
    audit_date             TEXT,
    auditor_name           TEXT,
    site_id                TEXT,
    energy_consumption_kwh REAL,
    water_usage_liters     REAL,
    waste_generated_kg     REAL,
    recycling_rate_percent REAL,
    carbon_emission_tons  REAL,
    green_certification_status TEXT,
    recommendations        TEXT,
    follow_up_date         TEXT,
    status                 TEXT,
    notes                  TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    audit_scope            TEXT,
    compliance_score       REAL,
    improvement_actions    TEXT,
    budget_impact          REAL
);
INSERT INTO sustainability_audit VALUES ('SA001','20230110','AuditorA','SITE01',12000,50000,3000,45.5,12.3','certified','Upgrade lighting','20230201','completed','all good','20230110','20230111','annual','85.0','install LEDs',1500);
INSERT INTO sustainability_audit VALUES ('SA002','20230215','AuditorB','SITE02',15000,62000,3500,50.0,15.0','pending','Reduce water use','20230315','in_progress','needs follow-up','20230215','20230216','semiannual','78.0','fix leaks',2000);
INSERT INTO sustainability_audit VALUES ('SA003','20230320','AuditorC','SITE03',10000,45000,2500,40.0,10.5','certified','Implement recycling program','20230420','pending','awaiting approval','20230320','20230321','quarterly','88.0','add bins',1200);

-- Table describing community programs
CREATE TABLE community_program
(
    program_id           TEXT PRIMARY KEY,
    program_name         TEXT,
    start_date           TEXT,
    end_date             TEXT,
    target_audience      TEXT,
    location             TEXT,
    coordinator_id       TEXT,
    budget_allocated     REAL,
    participants_estimated INTEGER,
    volunteers_needed   INTEGER,
    partnership_org      TEXT,
    description          TEXT,
    outcome_metrics      TEXT,
    status               TEXT,
    contact_email        TEXT,
    phone_number         TEXT,
    social_media_handle  TEXT,
    registration_url     TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    notes                TEXT
);
INSERT INTO community_program VALUES ('CP001','Health Fair','20230401','20230405','students','Community Center','C001',5000,300,20,'HealthOrg','Annual health screening','attendance,feedback','planned','contact@health.org','5551234','@healthfair','http://register/health','20230301','20230302','pending approvals');
INSERT INTO community_program VALUES ('CP002','Tech Workshop','20230510','20230512','adults','Tech Hub','C002',3000,150,15,'TechPartner','Intro to coding','completion_rate','confirmed','info@tech.org','5555678','@techworkshop','http://register/tech','20230415','20230416','materials ordered');
INSERT INTO community_program VALUES ('CP003','Art Expo','20230620','20230625','public','City Gallery','C003',7000,500,30,'ArtGuild','Local artists showcase','sales,visitors','draft','gallery@art.org','5558765','@artexpo','http://register/art','20230520','20230521','venue booked');

-- Table managing advertising budgets
CREATE TABLE advertising_budget
(
    budget_id            TEXT PRIMARY KEY,
    fiscal_year          TEXT,
    channel              TEXT,
    allocated_amount     REAL,
    spent_amount         REAL,
    remaining_amount     REAL,
    approval_status      TEXT,
    manager_id           TEXT,
    start_date           TEXT,
    end_date             TEXT,
    cost_center          TEXT,
    campaign_name        TEXT,
    impressions_goal     INTEGER,
    clicks_goal          INTEGER,
    cpc_goal             REAL,
    cpm_goal             REAL,
    roi_estimate         REAL,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    audit_trail_id       TEXT
);
INSERT INTO advertising_budget VALUES ('AB001','2023','online','20000',5000,15000','approved','M001','20230101','20231231','CC01','Spring Launch','1000000','20000',0.25,5.0,1.5','initial phase','20230101','20230102','AT001');
INSERT INTO advertising_budget VALUES ('AB002','2023','print','15000',3000,12000','pending','M002','20230101','20231231','CC02','Fall Campaign','500000','10000',0.30,7.0,1.2','awaiting sign-off','20230105','20230106','AT002');
INSERT INTO advertising_budget VALUES ('AB003','2023','social','10000',2500,7500','approved','M003','20230101','20231231','CC03','Holiday Push','800000','15000',0.20,4.5,1.8','on track','20230110','20230111','AT003');

-- Table recording facility utilization metrics
CREATE TABLE facility_utilization
(
    record_id            TEXT PRIMARY KEY,
    facility_id          TEXT,
    date                 TEXT,
    opening_time         TEXT,
    closing_time         TEXT,
    total_visits         INTEGER,
    peak_visits          INTEGER,
    avg_dwell_minutes   REAL,
    maintenance_flag    TEXT,
    cleaning_status     TEXT,
    temperature_c        REAL,
    humidity_percent     REAL,
    equipment_used      TEXT,
    staff_on_duty       INTEGER,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    utilization_score   REAL,
    special_events      TEXT,
    capacity_limit      INTEGER
);
INSERT INTO facility_utilization VALUES ('FU001','F001','20230315','08:00','20:00',350,120,45.5,'no','completed',22.0,45.0,'projector,pc','5','normal day','20230315','20230316',78.0,'none',200);
INSERT INTO facility_utilization VALUES ('FU002','F002','20230316','09:00','18:00',200,80,30.0,'yes','in_progress',20.0,50.0,'audio_system','3','maintenance scheduled','20230316','20230317',65.0','staff meeting',150);
INSERT INTO facility_utilization VALUES ('FU003','F003','20230317','07:30','22:00',500,200,60.0,'no','completed',23.5,40.0,'gym_equip','8','community event','20230317','20230318',85.0','fitness class',300);

-- Table for grant reporting submissions
CREATE TABLE grant_reporting
(
    report_id            TEXT PRIMARY KEY,
    grant_id             TEXT,
    reporting_period_start TEXT,
    reporting_period_end   TEXT,
    total_spent          REAL,
    budget_remaining     REAL,
    milestones_achieved  TEXT,
    deliverables_submitted TEXT,
    compliance_status    TEXT,
    auditor_name         TEXT,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    report_url           TEXT,
    financial_summary    TEXT,
    risk_assessment      TEXT,
    future_plan          TEXT,
    contact_person       TEXT,
    phone                TEXT,
    email                TEXT,
    file_hash            TEXT
);
INSERT INTO grant_reporting VALUES ('GR001','GN001','20230101','20230331',15000,5000','on_track','milestone1,milestone2','compliant','AuditorX','all good','20230401','20230402','http://reports/gr001','summary1','low','next phase','JohnDoe','5551111','john@org.org','hash001');
INSERT INTO grant_reporting VALUES ('GR002','GN002','20230201','20230430',20000,3000','delayed','milestone1','non_compliant','AuditorY','needs review','20230501','20230502','http://reports/gr002','summary2','medium','adjust plan','JaneSmith','5552222','jane@org.org','hash002');
INSERT INTO grant_reporting VALUES ('GR003','GN003','20230301','20230531',12000,8000','on_track','milestone1,milestone2,milestone3','compliant','AuditorZ','no issues','20230601','20230602','http://reports/gr003','summary3','low','continue work','BobLee','5553333','bob@org.org','hash003');

-- Table tracking volunteer recognitions
CREATE TABLE volunteer_recognition
(
    recognition_id       TEXT PRIMARY KEY,
    volunteer_id         TEXT,
    award_name           TEXT,
    award_date           TEXT,
    description          TEXT,
    sponsor_name         TEXT,
    ceremony_location    TEXT,
    certificate_url      TEXT,
    points_awarded       INTEGER,
    tier_level           TEXT,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    recognized_by        TEXT,
    award_category       TEXT,
    eligibility_criteria TEXT,
    validity_period      TEXT,
    renewal_required     TEXT,
    contact_email        TEXT,
    phone_number         TEXT,
    social_media_mention TEXT
);
INSERT INTO volunteer_recognition VALUES ('VR001','V001','Outstanding Service','20230301','Exemplary community work','CompanyA','Hall A','http://certs/vr001','100','gold','well deserved','20230301','20230302','DirectorA','service','minimum 100 hrs','1year','yes','volunteer1@org.org','5554444','@vol1');
INSERT INTO volunteer_recognition VALUES ('VR002','V002','Team Player','20230415','Excellent teamwork','CompanyB','Conference Room','http://certs/vr002','80','silver','great attitude','20230415','20230416','ManagerB','teamwork','minimum 50 hrs','6months','no','volunteer2@org.org','5555555','@vol2');
INSERT INTO volunteer_recognition VALUES ('VR003','V003','Innovation Award','20230520','Creative solutions','CompanyC','Auditorium','http://certs/vr003','120','platinum','innovative ideas','20230520','20230521','LeaderC','innovation','project submission','2years','yes','volunteer3@org.org','5556666','@vol3');

-- Table logging digital engagement metrics
CREATE TABLE digital_engagement
(
    engagement_id        TEXT PRIMARY KEY,
    campaign_id          TEXT,
    platform             TEXT,
    post_date            TEXT,
    content_type         TEXT,
    content_id           TEXT,
    impressions          INTEGER,
    clicks               INTEGER,
    shares               INTEGER,
    comments             INTEGER,
    likes                INTEGER,
    reach                INTEGER,
    video_views          INTEGER,
    ctr_percent          REAL,
    cvr_percent          REAL,
    spend_amount         REAL,
    cpa                  REAL,
    audience_segment     TEXT,
    geo_target           TEXT,
    device_type          TEXT,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT
);
INSERT INTO digital_engagement VALUES ('DE001','CMP001','facebook','20230401','image','IMG001',5000,200,50,30,150,4000,0,0,300,1.5,'segmentA','US','mobile','initial post','20230401','20230402');
INSERT INTO digital_engagement VALUES ('DE002','CMP002','twitter','20230405','video','VID001',8000,400,120,60,300,7000,5.0,2.5,500,2.0,'segmentB','EU','desktop','viral tweet','20230405','20230406');
INSERT INTO digital_engagement VALUES ('DE003','CMP003','instagram','20230410','story','STR001',3000,150,30,20,80,2500,0,0,200,1.0,'segmentC','APAC','mobile','story highlight','20230410','20230411');