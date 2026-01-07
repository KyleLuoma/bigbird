-- Table storing information about water quality monitoring stations on campus
CREATE TABLE campus_water_quality_station
(
    station_id               TEXT PRIMARY KEY,
    station_name             TEXT,
    latitude                 REAL,
    longitude                REAL,
    installation_date        TEXT,
    last_calibration_date    TEXT,
    water_source_type        TEXT,
    ph_level                 REAL,
    turbidity                REAL,
    temperature_c            REAL,
    chlorine_residual        REAL,
    lead_ppb                 REAL,
    copper_ppb               REAL,
    nitrate_ppm              REAL,
    bacteria_cfu             INTEGER,
    maintenance_status      TEXT,
    contact_person           TEXT,
    contact_phone            TEXT,
    notes                    TEXT,
    data_upload_timestamp    TEXT,
    is_active                INTEGER
);

INSERT INTO campus_water_quality_station VALUES
('WS001','NorthLakeStation',45.1234,-93.5678,'2022-01-15','2023-06-01','Lake','7.2',0.3,15.5,0.2,5,12,30.1,120,'Good','John Doe','5551234567','Routine check','2023-06-02',1);
INSERT INTO campus_water_quality_station VALUES
('WS002','EastRiverStation',45.2234,-93.4678,'2021-08-20','2023-05-20','River','6.8',0.5,14.2,0.1,3,8,45.2,200,'Maintenance required','Jane Smith','5559876543','Pump issue logged','2023-05-21',1);
INSERT INTO campus_water_quality_station VALUES
('WS003','SouthWellStation',45.3234,-93.3678,'2020-03-10','2023-04-15','Well','7.0',0.2,13.0,0.15,2,5,20.0,80,'Good','Mike Lee','5555551212','All parameters normal','2023-04-16',1);

-- Table tracking alumni career pathways after graduation
CREATE TABLE alumni_career_pathway
(
    pathway_id               TEXT PRIMARY KEY,
    alumni_id                TEXT,
    graduation_year          INTEGER,
    degree                   TEXT,
    major_id                 TEXT,
    current_employer         TEXT,
    job_title                TEXT,
    industry                 TEXT,
    years_experience         INTEGER,
    salary                   INTEGER,
    location_city            TEXT,
    location_state           TEXT,
    linkedin_url             TEXT,
    mentor_assigned          TEXT,
    mentorship_start_date    TEXT,
    mentorship_end_date      TEXT,
    professional_certifications TEXT,
    publications_count       INTEGER,
    volunteer_hours          INTEGER,
    last_update              TEXT,
    is_active                INTEGER
);

INSERT INTO alumni_career_pathway VALUES
('CP001','ALU001',2015,'MSc','MAJ001','TechCorp','Data Scientist','Technology',7,95000,'Springfield','IL','linkedin.com/in/alum1','Dr Green','2022-01-01','2022-12-31','AWS Certified; PMP',3,120,'2023-06-01',1);
INSERT INTO alumni_career_pathway VALUES
('CP002','ALU002',2018,'BSc','MAJ005','HealthInc','Product Manager','Healthcare',4,85000,'Riverdale','NY','linkedin.com/in/alum2','Ms Brown','2021-06-15','2022-06-14','Lean Six Sigma',1,60,'2023-05-20',1);
INSERT INTO alumni_career_pathway VALUES
('CP003','ALU003',2020,'PhD','MAJ012','BioLabs','Research Fellow','Biotech',2,70000,'Lakeview','CA','linkedin.com/in/alum3','Prof White','2022-09-01','2023-08-31','CFA; GMP',0,30,'2023-06-10',1);

-- Table containing metrics for sustainability initiatives
CREATE TABLE sustainability_initiative_metric
(
    metric_id                TEXT PRIMARY KEY,
    initiative_id            TEXT,
    metric_name              TEXT,
    target_value             REAL,
    actual_value             REAL,
    measurement_unit         TEXT,
    reporting_period         TEXT,
    data_source              TEXT,
    responsible_department   TEXT,
    notes                    TEXT,
    created_date             TEXT,
    updated_date             TEXT,
    is_key_metric            INTEGER,
    trend                    TEXT,
    variance                 REAL,
    threshold                REAL,
    action_required          TEXT,
    status                   TEXT,
    approved_by              TEXT,
    approval_date            TEXT,
    comment                  TEXT
);

INSERT INTO sustainability_initiative_metric VALUES
('SM001','IN001','Carbon Reduction','5000','4800','kgCO2','2023','EnergyMeter','Facilities','Good progress','2023-01-05','2023-06-01',1,'Down','-200','-10%','Implement LED upgrade','OnTrack','Director Green','2023-06-02','');
INSERT INTO sustainability_initiative_metric VALUES
('SM002','IN002','Water Savings','200000','210500','gallons','2023','WaterMeter','Operations','Slight overshoot','2023-01-10','2023-06-01',1,'Up','10500','5%','Review irrigation schedule','AtRisk','Manager Ops','2023-06-01','');
INSERT INTO sustainability_initiative_metric VALUES
('SM003','IN003','Waste Diversion','75','78','percent','2023','WasteAudit','Sustainability','Exceeds target','2023-01-15','2023-06-01',0,'Up','3','0.5%','Maintain current programs','Met','Coordinator','2023-06-01','');

-- Table logging researcher access to restricted data sets
CREATE TABLE research_data_access_log
(
    access_id                TEXT PRIMARY KEY,
    researcher_id            TEXT,
    dataset_id               TEXT,
    access_timestamp         TEXT,
    access_type              TEXT,
    purpose                  TEXT,
    approved_by              TEXT,
    approval_timestamp       TEXT,
    data_volume_gb           REAL,
    ip_address               TEXT,
    device_type              TEXT,
    location                 TEXT,
    notes                    TEXT,
    compliance_flag          INTEGER,
    audit_status             TEXT,
    retention_period_days    INTEGER,
    encryption_used          TEXT,
    download_speed_mbps      REAL,
    error_code               TEXT,
    error_message            TEXT,
    is_successful            INTEGER
);

INSERT INTO research_data_access_log VALUES
('AL001','RES001','DS100','2023-05-20 10:15:00','Download','Genomics study','Dr Taylor','2023-05-19 14:00:00',12.5,'192.168.1.10','Laptop','Lab A','No issues',1,'Closed',365,'AES-256',150.2,'','',1);
INSERT INTO research_data_access_log VALUES
('AL002','RES002','DS200','2023-05-22 09:00:00','View','Epidemiology analysis','Dr Kim','2023-05-21 16:30:00',0.0,'192.168.1.22','Desktop','Office B','Timeout after 5 min',1,'Closed',180,'TLS1.2',0.0,'TIMEOUT','Session timed out',0);
INSERT INTO research_data_access_log VALUES
('AL003','RES003','DS300','2023-05-25 14:45:00','Download','Climate modeling','Dr Lee','2023-05-24 11:20:00',45.0,'192.168.2.5','Server','DataCenter','Large file, completed',1,'Closed',730,'AES-128',120.0,'','',1);

-- Table recording performance reviews of vendors
CREATE TABLE vendor_performance_review
(
    review_id                TEXT PRIMARY KEY,
    vendor_id                TEXT,
    review_period            TEXT,
    overall_score            REAL,
    delivery_score           REAL,
    quality_score            REAL,
    compliance_score         REAL,
    cost_score               REAL,
    communication_score      REAL,
    innovation_score         REAL,
    issues_reported         INTEGER,
    corrective_actions       TEXT,
    reviewer_name            TEXT,
    review_date              TEXT,
    next_review_date         TEXT,
    notes                    TEXT,
    documentation_link       TEXT,
    is_passed                INTEGER,
    escalated_flag           INTEGER,
    follow_up_actions        TEXT,
    rating_category          TEXT
);

INSERT INTO vendor_performance_review VALUES
('VR001','VEN001','2023Q1',4.5,4.7,4.6,4.8,4.4,4.5,4.3,2,'Replace faulty bolts','Alice Johnson','2023-04-15','2023-07-15','Improved on-time delivery','/docs/vr001.pdf',1,0,'Quarterly follow-up','A');
INSERT INTO vendor_performance_review VALUES
('VR002','VEN002','2023Q1',3.8,3.5,3.9,3.7,3.6,3.4,3.2,5,'Update quality checklist','Bob Smith','2023-04-20','2023-07-20','Cost higher than expected','/docs/vr002.pdf',0,1,'Monthly monitoring','B');
INSERT INTO vendor_performance_review VALUES
('VR003','VEN003','2023Q1',4.2,4.0,4.3,4.1,4.5,4.4,1,'No major issues','Carol Lee','2023-04-22','2023-07-22','Excellent communication','/docs/vr003.pdf',1,0,'Annual review','A');

-- Table for digital content licensing agreements
CREATE TABLE digital_content_license_agreement
(
    agreement_id             TEXT PRIMARY KEY,
    content_id               TEXT,
    license_type             TEXT,
    holder_name              TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    territorial_scope        TEXT,
    exclusivity_flag        INTEGER,
    royalty_rate             REAL,
    payment_terms            TEXT,
    renewal_option           TEXT,
    termination_clause       TEXT,
    governing_law            TEXT,
    amendment_history        TEXT,
    status                   TEXT,
    created_by               TEXT,
    created_timestamp        TEXT,
    last_modified_by         TEXT,
    last_modified_timestamp  TEXT,
    notes                    TEXT,
    is_active                INTEGER
);

INSERT INTO digital_content_license_agreement VALUES
('LA001','CNT001','Exclusive','MediaCorp','2023-01-01','2025-12-31','Global',1,5.0,'Net30','AutoRenew','30 days notice','NY','v1 2023-01-01','Active','Dave Miller','2023-01-01','Dave Miller','2023-06-01','',1);
INSERT INTO digital_content_license_agreement VALUES
('LA002','CNT002','Non-Exclusive','Creative Studios','2022-06-15','2024-06-14','NorthAmerica',0,2.5,'Net45','NoRenew','60 days notice','CA','v1 2022-06-15; v2 2023-06-15','Expired','Eve Turner','2022-06-15','Eve Turner','2023-05-20','Renewal pending',0);
INSERT INTO digital_content_license_agreement VALUES
('LA003','CNT003','Exclusive','Global Media','2021-09-01','2026-08-31','Europe',1,3.2,'Net60','AutoRenew','90 days notice','UK','v1 2021-09-01','Active','Frank Liu','2021-09-01','Frank Liu','2023-04-10','',1);

-- Table for health service quality audits
CREATE TABLE health_service_quality_audit
(
    audit_id                 TEXT PRIMARY KEY,
    service_id               TEXT,
    audit_date               TEXT,
    auditor_name             TEXT,
    compliance_score         REAL,
    patient_satisfaction_score REAL,
    wait_time_minutes        REAL,
    error_rate_percent       REAL,
    staffing_level           INTEGER,
    equipment_availability_percent REAL,
    documentation_completeness INTEGER,
    corrective_actions       TEXT,
    follow_up_date           TEXT,
    audit_status             TEXT,
    notes                    TEXT,
    department_head          TEXT,
    location                 TEXT,
    audit_type               TEXT,
    risk_level               TEXT,
    overall_rating           TEXT,
    is_closed                INTEGER
);

INSERT INTO health_service_quality_audit VALUES
('HA001','HS001','2023-03-15','Dr Allen',92.5,88.0,15.2,0.5,25,98.0,95,'Review triage protocol','2023-04-15','Closed','All metrics within target','Dr Allen','Main Campus','Routine','Low','A',1);
INSERT INTO health_service_quality_audit VALUES
('HA002','HS002','2023-04-10','Dr Baker',78.0,70.5,30.0,1.2,18,85.0,80,'Staff re‑training','2023-05-10','Open','Wait times exceed benchmark','Dr Baker','East Clinic','Targeted','Medium','B',0);
INSERT INTO health_service_quality_audit VALUES
('HA003','HS003','2023-05-05','Dr Clark',85.0,82.0,20.0,0.8,22,92.0,90,'Upgrade imaging equipment','2023-06-05','Closed','Equipment downtime reduced','Dr Clark','West Facility','Routine','Low','A',1);

-- Table documenting engagements with community partners
CREATE TABLE community_partner_engagement
(
    engagement_id            TEXT PRIMARY KEY,
    partner_id               TEXT,
    program_name             TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    contact_person           TEXT,
    contact_email            TEXT,
    engagement_type          TEXT,
    resources_committed      TEXT,
    volunteers_involved      INTEGER,
    hours_contributed        INTEGER,
    outcomes                 TEXT,
    evaluation_score         REAL,
    next_steps               TEXT,
    funding_amount           INTEGER,
    funding_source           TEXT,
    status                   TEXT,
    created_timestamp        TEXT,
    updated_timestamp        TEXT,
    notes                    TEXT,
    is_active                INTEGER
);

INSERT INTO community_partner_engagement VALUES
('CE001','CP001','STEM Outreach','2023-01-10','2023-06-30','Laura Green','lgreen@example.org','Workshop','Lab kits, curriculum','12','180','Improved student interest in STEM',4.5,'Plan Fall session','15000','University Grant','Completed','2023-01-05','2023-07-01','',1);
INSERT INTO community_partner_engagement VALUES
('CE002','CP002','Health Fair','2023-03-01','2023-03-15','Mike Ross','mross@example.org','Event','Screenings, pamphlets','8','64','Screened 200 residents','4.0','Annual health fair','8000','County Health Dept','Completed','2023-02-20','2023-03-16','',1);
INSERT INTO community_partner_engagement VALUES
('CE003','CP003','Art Collaboration','2023-02-20','2023-09-30','Sara Lee','slee@example.org','Exhibit','Paint supplies, space','5','100','Created community mural','4.8','Maintain mural','5000','Private Sponsor','Ongoing','2023-02-15','2023-09-01','',1);

-- Catalog of media assets associated with events
CREATE TABLE event_media_asset_catalog
(
    asset_id                TEXT PRIMARY KEY,
    event_id                TEXT,
    asset_type              TEXT,
    file_name               TEXT,
    file_path               TEXT,
    file_size_bytes         INTEGER,
    mime_type               TEXT,
    upload_timestamp        TEXT,
    uploader_id             TEXT,
    description             TEXT,
    copyright_holder        TEXT,
    usage_rights            TEXT,
    resolution              TEXT,
    duration_seconds        REAL,
    thumbnail_path          TEXT,
    tags                    TEXT,
    is_primary              INTEGER,
    archive_status          TEXT,
    access_url              TEXT,
    notes                   TEXT,
    is_active               INTEGER
);

INSERT INTO event_media_asset_catalog VALUES
('MA001','EV001','Image','opening_ceremony.jpg','/media/ev001/','204800','image/jpeg','2023-05-01 09:00:00','USR001','Opening ceremony photo','University','Public','1920x1080',0,'/thumbs/opening_ceremony.jpg','ceremony,opening',1,'Archived','https://media.univ.edu/ev001/opening_ceremony.jpg','',1);
INSERT INTO event_media_asset_catalog VALUES
('MA002','EV001','Video','keynote.mp4','/media/ev001/','52428800','video/mp4','2023-05-01 10:30:00','USR002','Keynote speech video','Speaker Inc','Limited','1920x1080',3600,'/thumbs/keynote.jpg','keynote,speech',0,'Active','https://media.univ.edu/ev001/keynote.mp4','',1);
INSERT INTO event_media_asset_catalog VALUES
('MA003','EV002','Document','schedule.pdf','/media/ev002/','102400','application/pdf','2023-06-10 08:45:00','USR003','Event schedule PDF','University','Public','',0,'/thumbs/schedule.jpg','schedule,program',1,'Active','https://media.univ.edu/ev002/schedule.pdf','',1);

-- Table recording facility energy consumption metrics
CREATE TABLE facility_energy_consumption
(
    record_id               TEXT PRIMARY KEY,
    facility_id             TEXT,
    reporting_month         TEXT,
    electricity_kwh         REAL,
    gas_therms              REAL,
    water_gallons           REAL,
    renewable_source_percent REAL,
    peak_demand_kw          REAL,
    hvac_runtime_hours      REAL,
    lighting_runtime_hours  REAL,
    equipment_runtime_hours REAL,
    total_emissions_tons    REAL,
    cost_usd                INTEGER,
    carbon_offset_used      REAL,
    notes                   TEXT,
    reported_by             TEXT,
    report_date             TEXT,
    verification_status     TEXT,
    audit_reference         TEXT,
    correction_factor       REAL,
    is_finalized           INTEGER
);

INSERT INTO facility_energy_consumption VALUES
('FC001','FAC001','2023-04',124500.0,850.0,320000.0,15.0,450.0,720.0,600.0,480.0,78.5,25000,5.0,'Month includes campus event','Emma Watson','2023-05-01','Verified','AUD001',1.0,1);
INSERT INTO facility_energy_consumption VALUES
('FC002','FAC002','2023-04',98400.0,620.0,250000.0,10.0,380.0,640.0,540.0,420.0,62.3,19800,3.5,'Reduced lighting usage','Liam Smith','2023-05-02','Pending','AUD002',0.98,0);
INSERT INTO facility_energy_consumption VALUES
('FC003','FAC003','2023-04',150200.0,1020.0,400000.0,20.0,520.0,800.0,720.0,560.0,95.0,30000,7.0,'High HVAC due to summer','Olivia Brown','2023-05-03','Verified','AUD003',1.02,1);