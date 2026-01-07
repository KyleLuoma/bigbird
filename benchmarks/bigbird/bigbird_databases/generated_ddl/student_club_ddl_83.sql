-- Research Funding Source table
CREATE TABLE research_funding_source
(
    source_id               TEXT PRIMARY KEY,
    source_name             TEXT,
    agency_type             TEXT,
    primary_focus           TEXT,
    contact_name            TEXT,
    contact_email           TEXT,
    phone_number            TEXT,
    address_line1           TEXT,
    address_line2           TEXT,
    city                    TEXT,
    state                   TEXT,
    zip_code                INTEGER,
    country                 TEXT,
    website_url             TEXT,
    funding_cycle           TEXT,
    amount_available        REAL,
    amount_allocated        REAL,
    eligibility_criteria   TEXT,
    application_deadline    TEXT,
    reporting_requirements TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT
);

INSERT INTO research_funding_source VALUES
('FS001','NationalScienceFund','Federal','STEM','Alice Smith','alice.smith@nsf.gov','5551234567','123 Capitol St','Suite 200','Washington','DC',20001,'USA','https://nsf.gov','Annual',5000000,1200000,'US Institutions','2024-09-30','Quarterly','Initial entry','2024-01-01','2024-01-15');

INSERT INTO research_funding_source VALUES
('FS002','GlobalHealthOrg','NGO','Public Health','Bob Jones','bob.jones@gh.org','5559876543','78 Wellness Ave','Floor 3','Boston','MA',02115,'USA','https://gh.org','Biannual',2000000,750000,'Non‑profit only','2024-12-15','Semi‑annual','Second entry','2024-02-10','2024-02-20');

INSERT INTO research_funding_source VALUES
('FS003','TechInnovationFund','Private','AI & Robotics','Carol Lee','carol.lee@tif.com','5555551212','500 Innovation Dr','', 'San Francisco','CA',94105,'USA','https://tif.com','Quarterly',3000000,1500000,'Start‑ups','2025-03-01','Annual','Third entry','2024-03-05','2024-03-12');

-- Campus Utility Usage table
CREATE TABLE campus_utility_usage
(
    usage_id               TEXT PRIMARY KEY,
    building_id            TEXT,
    building_name          TEXT,
    utility_type           TEXT,
    year                   INTEGER,
    month                  INTEGER,
    consumption_quantity   REAL,
    unit_of_measure        TEXT,
    cost_amount            REAL,
    cost_currency          TEXT,
    peak_demand            REAL,
    peak_time              TEXT,
    source_of_energy       TEXT,
    renewable_percentage   REAL,
    carbon_emission_kg     REAL,
    meter_reading_start    REAL,
    meter_reading_end      REAL,
    notes                  TEXT,
    reported_by            TEXT,
    reported_at            TEXT,
    verified_by            TEXT,
    verified_at            TEXT
);

INSERT INTO campus_utility_usage VALUES
('UT001','B001','Science Hall','Electricity',2024,1,12500.5,'kWh',2100.75,'USD',15.2,'2024-01-15 14:00','Grid','30',4500.3,10000,12500.5,'Normal usage','Jane Doe','2024-02-01','John Smith','2024-02-05');

INSERT INTO campus_utility_usage VALUES
('UT002','B002','Library','Water',2024,1,3200,'Gallons',150.00,'USD',0,NULL,'Municipal','0',0,5000,8200,'Low usage','Mike Brown','2024-02-01','Sara Lee','2024-02-06');

INSERT INTO campus_utility_usage VALUES
('UT003','B003','Student Center','Gas',2024,1,7800,'Therms',950.25,'USD',10.5,'2024-01-20 08:00','Natural Gas','0',2100,3000,5000,'Seasonal heating','Emily White','2024-02-02','Tom Green','2024-02-07');

-- Alumni Engagement Profile table
CREATE TABLE alumni_engagement_profile
(
    profile_id            TEXT PRIMARY KEY,
    alumni_id             TEXT,
    graduation_year       INTEGER,
    degree_awarded        TEXT,
    major_id              TEXT,
    current_employer      TEXT,
    job_title             TEXT,
    industry_sector       TEXT,
    linkedin_url          TEXT,
    twitter_handle        TEXT,
    email_opt_in          TEXT,
    last_event_attended   TEXT,
    total_events_attended INTEGER,
    volunteer_hours       REAL,
    mentorship_roles      INTEGER,
    donation_total        REAL,
    preferred_contact     TEXT,
    communication_opt_in  TEXT,
    interests             TEXT,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    last_activity_at      TEXT,
    status                TEXT
);

INSERT INTO alumni_engagement_profile VALUES
('AP001','M001','2010','BSc Computer Science','MA001','TechCorp','Senior Engineer','Technology','https://linkedin.com/in/alumni1','@alumni1','Yes','2023-11-12',5,12.5,2,1500.00,'Email','Yes','AI,Open Source','Active participant','2024-01-01','2024-01-15','2024-01-20','Active');

INSERT INTO alumni_engagement_profile VALUES
('AP002','M002','2015','MBA','MA002','FinServe','Analyst','Finance','https://linkedin.com/in/alumni2','@alumni2','No','2022-05-03',2,4.0,0,300.00,'Phone','No','Entrepreneurship','Occasional donor','2024-01-02','2024-01-16','2024-01-22','Inactive');

INSERT INTO alumni_engagement_profile VALUES
('AP003','M003','2005','PhD Biology','MA003','BioLab','Research Scientist','Healthcare','https://linkedin.com/in/alumni3','@alumni3','Yes','2024-02-10',8,20.0,1,2500.00,'Mail','Yes','Genetics,Public Health','Volunteer mentor','2024-01-05','2024-01-18','2024-02-11','Active');

-- Digital Content Distribution Log table
CREATE TABLE digital_content_distribution_log
(
    distribution_id       TEXT PRIMARY KEY,
    content_id            TEXT,
    content_type          TEXT,
    distribution_channel  TEXT,
    destination_url       TEXT,
    start_timestamp       TEXT,
    end_timestamp         TEXT,
    status                TEXT,
    bytes_transferred     BIGINT,
    latency_ms            REAL,
    error_code            TEXT,
    retry_count           INTEGER,
    initiated_by          TEXT,
    approved_by           TEXT,
    notes                 TEXT,
    checksum              TEXT,
    file_format           TEXT,
    resolution            TEXT,
    language              TEXT,
    geo_targeting         TEXT,
    audience_segment      TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    expires_at            TEXT
);

INSERT INTO digital_content_distribution_log VALUES
('DL001','CNT001','Video','Streaming','https://cdn.university.edu/videos/vid1','2024-01-10 08:00','2024-01-10 08:05','Success',250000000,120.5,'',0,'Jane Doe','John Smith','Initial rollout','abc123def','MP4','1080p','English','US','Students','General','2024-01-01','2024-01-10','2024-12-31');

INSERT INTO digital_content_distribution_log VALUES
('DL002','CNT002','PDF','Download','https://cdn.university.edu/docs/brochure','2024-01-12 09:15','2024-01-12 09:15','Success',5000000,15.0,'',0,'Mike Brown','Sara Lee','Brochure distribution','def456ghi','PDF','', 'English','','Prospects','Marketing','2024-01-02','2024-01-12','2025-01-12');

INSERT INTO digital_content_distribution_log VALUES
('DL003','CNT003','Audio','Podcast','https://cdn.university.edu/podcasts/ep1','2024-01-15 10:00','2024-01-15 10:10','Failed',0,0,'504',1,'Emily White','Tom Green','Network timeout','ghi789jkl','MP3','', 'English','Global','Alumni','Education','2024-01-03','2024-01-15','2024-06-15');

-- Sustainability Metric Detail table
CREATE TABLE sustainability_metric_detail
(
    metric_id               TEXT PRIMARY KEY,
    metric_name             TEXT,
    category                TEXT,
    unit                    TEXT,
    target_value            REAL,
    current_value           REAL,
    reporting_period        TEXT,
    data_source             TEXT,
    collection_method       TEXT,
    responsible_department  TEXT,
    notes                   TEXT,
    last_updated            TEXT,
    created_at              TEXT,
    verification_status     TEXT,
    variance                REAL,
    trend_indicator         TEXT,
    confidence_level        REAL,
    stakeholder_impacted    TEXT,
    related_initiative_id   TEXT,
    baseline_year           INTEGER,
    calculation_formula     TEXT,
    approval_date           TEXT,
    approved_by             TEXT,
    comments                TEXT
);

INSERT INTO sustainability_metric_detail VALUES
('SM001','Energy Use Intensity','Energy','kWh/m2',120.0,135.5,'2024 Q1','Utility Bills','Automated Meter','Facilities','Above target','2024-02-01','2024-01-01','Pending',15.5,'Increasing',0.85,'Facilities Management','INIT001',2019,'Total Energy/Area','2024-01-15','Jane Doe','Review in next cycle');

INSERT INTO sustainability_metric_detail VALUES
('SM002','Water Consumption per Capita','Water','Liters/person','80.0',72.3,'2024 Q1','Water Meter','Manual Reading','Campus Services','Below target','2024-02-02','2024-01-02','Approved',-7.7,'Decreasing',0.92,'Campus Community','INIT002',2019,'Total Water/Population','2024-01-16','John Smith','Satisfactory');

INSERT INTO sustainability_metric_detail VALUES
('SM003','Waste Diversion Rate','Waste','Percentage','65.0',60.0,'2024 Q1','Waste Tracker','Automated','Environmental','Slightly below','2024-02-03','2024-01-03','Pending',-5.0,'Decreasing',0.78,'All Departments','INIT003',2019','Diverted Waste/Total Waste','2024-01-17','Emily White','Needs improvement');

-- Facility Security Incident table
CREATE TABLE facility_security_incident
(
    incident_id            TEXT PRIMARY KEY,
    facility_id            TEXT,
    facility_name          TEXT,
    incident_type          TEXT,
    incident_date          TEXT,
    reported_time          TEXT,
    description            TEXT,
    severity_level         TEXT,
    reported_by            TEXT,
    status                 TEXT,
    resolution_date        TEXT,
    resolution_details     TEXT,
    corrective_action      TEXT,
    follow_up_required     TEXT,
    follow_up_date         TEXT,
    investigator_name      TEXT,
    witnesses              TEXT,
    evidence_files         TEXT,
    related_policy_id      TEXT,
    department_responsible TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    comments               TEXT,
    closure_notes          TEXT
);

INSERT INTO facility_security_incident VALUES
('FI001','FAC001','Main Library','Unauthorized Access','2024-01-20','08:30','Door propped open after hours','Medium','Security Guard','Open','','','','Yes','2024-01-25','Officer Lee','Student A,Staff B','','POL001','Security','2024-01-20','2024-01-22','Investigating','Pending closure');

INSERT INTO facility_security_incident VALUES
('FI002','FAC002','Science Lab','Equipment Theft','2024-02-02','14:15','Microscope missing from storage','High','Lab Technician','Closed','2024-02-05','Recovered equipment from off‑site','Increase inventory checks','No','', 'Detective Kim','Lab Staff','evidence1.jpg','POL002','Facilities','2024-02-02','2024-02-06','Case closed','Item returned');

INSERT INTO facility_security_incident VALUES
('FI003','FAC003','Student Center','Vandalism','2024-02-10','22:45','Graffiti on wall near entrance','Low','Campus Police','In Progress','','','Clean wall, install cameras','Yes','2024-02-20','Officer Patel','Student C','','evidence2.jpg','POL003','Maintenance','2024-02-10','2024-02-12','Awaiting contractor','Pending');

-- Community Outreach Event table
CREATE TABLE community_outreach_event
(
    outreach_id               TEXT PRIMARY KEY,
    event_name                TEXT,
    community_partner_id      TEXT,
    partner_name              TEXT,
    event_date                TEXT,
    start_time                TEXT,
    end_time                  TEXT,
    location                  TEXT,
    expected_attendance       INTEGER,
    actual_attendance         INTEGER,
    activity_type             TEXT,
    target_audience           TEXT,
    resources_needed         TEXT,
    budget_allocated          REAL,
    funds_used                REAL,
    sponsor_ids               TEXT,
    volunteers_needed         INTEGER,
    volunteers_assigned       INTEGER,
    outcome_summary           TEXT,
    challenges_faced          TEXT,
    lessons_learned           TEXT,
    follow_up_actions         TEXT,
    created_by                TEXT,
    created_at                TEXT,
    updated_at                TEXT,
    status                    TEXT,
    notes                     TEXT
);

INSERT INTO community_outreach_event VALUES
('COE001','Health Fair 2024','CP001','City Health Dept','2024-03-15','09:00','15:00','Community Center',200,185,'Health Screening','Families','Booths,Medical Supplies',5000.00,4700.00,'SP001,SP002',30,28,'Screened 180 residents','Weather delay','Improved signage','Schedule extra volunteers','Anna Lee','2024-01-10','2024-02-20','Completed','Successful');

INSERT INTO community_outreach_event VALUES
('COE002','STEM Workshop','CP002','Tech Youth Org','2024-04-10','10:00','14:00','High School Gym',120,110,'Education','High School Students','Computers,Projectors',3000.00,2900.00,'SP003',20,20,'Students built 5 robots','Limited power outlets','Use external generators next time','Plan power needs early','Mike Brown','2024-02-01','2024-03-05','Completed','Positive feedback');

INSERT INTO community_outreach_event VALUES
('COE003','Community Garden Day','CP003','Green City Initiative','2024-05-05','08:00','12:00','Local Park',80,75,'Volunteer','General Public','Tools,Plants,Water',1500.00,1400.00,'SP004,SP005',15,12,'Planted 200 seedlings','Rain morning','Provide covered workstations','Anna Lee','2024-03-01','2024-04-10','Completed','Well attended');

-- Vendor Performance Metric table
CREATE TABLE vendor_performance_metric
(
    metric_id               TEXT PRIMARY KEY,
    vendor_id               TEXT,
    vendor_name             TEXT,
    metric_name             TEXT,
    measurement_period      TEXT,
    target_value            REAL,
    actual_value            REAL,
    unit                    TEXT,
    data_source             TEXT,
    collection_method       TEXT,
    responsible_manager    TEXT,
    notes                   TEXT,
    last_updated            TEXT,
    created_at              TEXT,
    status                  TEXT,
    variance                REAL,
    trend_indicator         TEXT,
    confidence_level        REAL,
    corrective_action_plan  TEXT,
    review_date             TEXT,
    approved_by             TEXT,
    approval_date           TEXT,
    comments                TEXT,
    escalation_required     TEXT,
    escalation_contact      TEXT
);

INSERT INTO vendor_performance_metric VALUES
('VPM001','V001','Catering Co','On‑time Delivery','2024 Q1',95.0,92.5,'%','Delivery Logs','Automated','Laura Kim','Slightly below target','2024-02-01','2024-01-01','Active',-2.5,'Decreasing',0.88,'Improve scheduling','2024-03-01','John Smith','2024-02-05','Monitor next quarter','Yes','Procurement Lead');

INSERT INTO vendor_performance_metric VALUES
('VPM002','V002','Tech Supplies Ltd','Defect Rate','2024 Q1',0.5,0.8,'%','QC Reports','Manual','Mike Brown','Above target','2024-02-02','2024-01-02','Active',0.3,'Increasing',0.75','Vendor audit','2024-03-02','Emily White','2024-02-06','Discuss with vendor','Yes','Quality Manager');

INSERT INTO vendor_performance_metric VALUES
('VPM003','V003','Logistics Partners','Delivery Cost per Unit','2024 Q1',2.00,1.85,'USD','Finance System','Automated','Sara Lee','Within target','2024-02-03','2024-01-03','Active',-0.15,'Decreasing',0.92','Maintain contracts','2024-03-03','Laura Kim','2024-02-07','No action needed','No','');

-- Student Health Survey table
CREATE TABLE student_health_survey
(
    survey_id                TEXT PRIMARY KEY,
    student_id               TEXT,
    survey_date              TEXT,
    overall_wellbeing_score  INTEGER,
    stress_level             TEXT,
    sleep_hours_average      REAL,
    physical_activity_minutes INTEGER,
    dietary_habits_score     INTEGER,
    substance_use_frequency  TEXT,
    mental_health_resources_used TEXT,
    chronic_conditions       TEXT,
    vaccination_status       TEXT,
    health_insurance_provider TEXT,
    primary_care_provider    TEXT,
    comments                 TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    survey_version           TEXT,
    completion_status        TEXT,
    follow_up_required       TEXT,
    follow_up_contact        TEXT,
    next_survey_due_date     TEXT,
    consent_given            TEXT,
    interviewer_id           TEXT,
    notes                    TEXT
);

INSERT INTO student_health_survey VALUES
('HS001','STU001','2024-01-20',78,'Medium',6.5,150,80,'Never','Counseling Center','None','Up to date','HealthPlan A','Dr. Adams','Feeling good overall','2024-01-20','2024-01-21','v1','Completed','No','','2024-07-20','Yes','INT001','No notes');

INSERT INTO student_health_survey VALUES
('HS002','STU002','2024-01-22',62,'High',5.0,60,55,'Occasional','Counseling Center;Peer Support','Asthma','Due','HealthPlan B','Dr. Baker','Stress due to exams','2024-01-22','2024-01-23','v1','Completed','Yes','INT002','2024-02-15','Yes','INT002','Follow‑up scheduled');

INSERT INTO student_health_survey VALUES
('HS003','STU003','2024-01-25',85,'Low',7.5,200,90,'Never','None','None','Up to date','HealthPlan C','Dr. Clark','Excellent health','2024-01-25','2024-01-26','v1','Completed','No','','2024-07-25','Yes','INT001','No notes');

-- Event Technology Requirements table
CREATE TABLE event_technology_requirements
(
    requirement_id           TEXT PRIMARY KEY,
    event_id                 TEXT,
    audio_visual_needs       TEXT,
    streaming_platform       TEXT,
    bandwidth_requirement_mbps REAL,
    presenter_equipment      TEXT,
    recording_needed         TEXT,
    live_captioning          TEXT,
    translation_services     TEXT,
    lighting_setup           TEXT,
    stage_dimensions        TEXT,
    wifi_coverage_area       TEXT,
    power_outlet_count       INTEGER,
    backup_power_duration_min INTEGER,
    video_wall_dimensions    TEXT,
    projection_type          TEXT,
    microphone_type          TEXT,
    speaker_quantity         INTEGER,
    acoustic_treatment       TEXT,
    rehearsal_schedule       TEXT,
    technical_contact        TEXT,
    contact_phone            TEXT,
    contact_email            TEXT,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    status                   TEXT,
    last_test_date           TEXT,
    test_results_summary     TEXT
);

INSERT INTO event_technology_requirements VALUES
('TR001','E001','Projector, Speakers','Zoom','150.0','Laptop, Clicker','Yes','Yes','Spanish','LED Spotlights','30x20 ft','Full venue','30','120','10x5 ft','LCD','Lapel','8','Acoustic panels','2024-02-01 09:00','Tech Lead','5551234567','techlead@example.com','Standard conference setup','2024-01-10','2024-01-15','Planned','2024-01-20','All systems go');

INSERT INTO event_technology_requirements VALUES
('TR002','E002','Microphone array, Soundboard','Microsoft Teams','200.0','MacBook Pro, HDMI','No','Yes','French','Stage wash lights','40x25 ft','Stage and lobby','45','180','12x6 ft','LED','Handheld','12','Sound dampening curtains','2024-02-05 14:00','AV Manager','5559876543','avmanager@example.com','Live concert requirements','2024-01-12','2024-01-18','In Review','2024-01-25','Pending final approval');

INSERT INTO event_technology_requirements VALUES
('TR003','E003','Streaming encoder, Cameras','YouTube Live','250.0','Camera rig, Mixer','Yes','No','None','Softbox lights','20x15 ft','Backstage and main hall','20','90','8x4 ft','4K','Shotgun','4','None','2024-02-10 11:00','Media Coordinator','5555551212','mediacoord@example.com','Webinar with Q&A','2024-01-15','2024-01-20','Confirmed','2024-01-28','All tests passed');

-- Digital Content Distribution Log table (additional example with different focus)
CREATE TABLE digital_content_distribution_log_extra
(
    log_id                 TEXT PRIMARY KEY,
    asset_id               TEXT,
    asset_type             TEXT,
    distribution_method    TEXT,
    target_audience        TEXT,
    distribution_date      TEXT,
    status                 TEXT,
    bytes_sent             BIGINT,
    duration_seconds       INTEGER,
    delivery_region        TEXT,
    platform               TEXT,
    version                TEXT,
    checksum               TEXT,
    encryption_used        TEXT,
    error_message          TEXT,
    retry_attempts         INTEGER,
    initiated_by           TEXT,
    approved_by            TEXT,
    notes                  TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    expiration_date        TEXT,
    access_control         TEXT,
    compliance_status      TEXT,
    audit_trail_id         TEXT,
    geo_fencing_enabled   TEXT,
    content_rating         TEXT,
    language               TEXT,
    format                 TEXT
);

INSERT INTO digital_content_distribution_log_extra VALUES
('DX001','AS001','Image','Email','Students','2024-01-08','Success',250000,5,'North America','Outlook','v1','abc123','SSL','',0,'Marketing Team','Dept Head','Monthly newsletter image','2024-01-01','2024-01-09','2025-01-09','Public','Compliant','AT001','No','General','English','JPEG');

INSERT INTO digital_content_distribution_log_extra VALUES
('DX002','AS002','Document','Download','Faculty','2024-01-12','Success',5000000,30,'Europe','Campus Portal','v2','def456','TLS','',0,'IT Support','CTO','Policy document','2024-01-02','2024-01-13','2026-01-13','Restricted','Compliant','AT002','Yes','Confidential','English','PDF');

INSERT INTO digital_content_distribution_log_extra VALUES
('DX003','AS003','Video','Streaming','Alumni','2024-01-15','Failed',0,0,'Asia','YouTube','v1','ghi789','TLS','Timeout error',1,'Communications','VP Marketing','Alumni outreach video','2024-01-03','2024-01-16','2024-12-31','Public','Pending','AT003','No','General','English','MP4');