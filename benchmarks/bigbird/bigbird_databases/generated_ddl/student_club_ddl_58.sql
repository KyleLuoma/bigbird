-- Campus Media Archive
CREATE TABLE campus_media_archive
(
    archive_id               TEXT PRIMARY KEY,
    media_type               TEXT,
    title                    TEXT,
    creator                  TEXT,
    creation_date            TEXT,
    duration_minutes         INTEGER,
    file_size_mb             REAL,
    format                   TEXT,
    description              TEXT,
    access_level             TEXT,
    storage_location         TEXT,
    checksum                 TEXT,
    retention_policy         TEXT,
    archived_by              TEXT,
    archive_date             TEXT,
    event_link               TEXT,
    related_project          TEXT,
    tags                     TEXT,
    is_public                TEXT,
    digital_rights           TEXT,
    metadata_version         TEXT,
    notes                    TEXT
);

INSERT INTO campus_media_archive VALUES
('CMA001','video','Opening Ceremony','John Doe','2023-05-01',90,1500.5,'mp4','Official opening ceremony','restricted','VaultA','ABC123','5 years','Alice Smith','2023-05-02','E001','ProjX','opening,ceremony','Y','CC BY','v1','Initial entry');

INSERT INTO campus_media_archive VALUES
('CMA002','audio','Keynote Speech','Jane Smith','2023-05-02',45,300.0,'mp3','Keynote by speaker','public','VaultB','DEF456','3 years','Bob Johnson','2023-05-03','E001','ProjY','keynote,speech','Y','CC BY-NC','v2','Uploaded after event');

INSERT INTO campus_media_archive VALUES
('CMA003','document','Event Schedule','Event Team','2023-04-20',0,0.2,'pdf','Full schedule of events','public','VaultC','GHI789','Indefinite','Carol Lee','2023-04-21','E001','ProjZ','schedule,events','Y','CC0','v1','Schedule version 1');

-- Student Entrepreneur Incubator
CREATE TABLE student_entrepreneur_incubator
(
    incubator_id            TEXT PRIMARY KEY,
    name                    TEXT,
    established_date        TEXT,
    location                TEXT,
    capacity                INTEGER,
    available_spaces        INTEGER,
    focus_area              TEXT,
    mentor_count            INTEGER,
    startup_count           INTEGER,
    average_funding         REAL,
    partner_organization    TEXT,
    application_deadline    TEXT,
    contact_email           TEXT,
    contact_phone           TEXT,
    website                 TEXT,
    operating_hours         TEXT,
    funding_source          TEXT,
    status                  TEXT,
    description             TEXT,
    success_rate            TEXT,
    average_growth_rate     REAL,
    notes                   TEXT
);

INSERT INTO student_entrepreneur_incubator VALUES
('INC001','Tiger Startups','2020-09-01','Building A','30','12','Tech','8','15',250000.0,'TechCorp','2023-12-01','inc1@example.com','5551234','http://tigerstartups.edu','Mon-Fri 9-17','University Grant','active','Incubator for tech startups','85%','1.25','First cohort completed');

INSERT INTO student_entrepreneur_incubator VALUES
('INC002','Green Innovators','2021-01-15','Building B','20','5','Sustainability','5','8',150000.0,'EcoPartners','2024-03-15','inc2@example.com','5555678','http://greeninnovators.edu','Mon-Fri 10-18','Corporate Sponsorship','active','Focus on green tech','78%','1.10','Upcoming demo day');

INSERT INTO student_entrepreneur_incubator VALUES
('INC003','Health Ventures','2022-06-20','Building C','25','20','HealthTech','10','3',500000.0,'HealthAlliance','2024-06-30','inc3@example.com','5559012','http://healthventures.edu','Mon-Fri 8-16','Venture Capital','planned','Will open Fall 2024','N/A','0.0','Planning phase');

-- Faculty Lecture Series
CREATE TABLE faculty_lecture_series
(
    series_id               TEXT PRIMARY KEY,
    title                   TEXT,
    description             TEXT,
    semester                TEXT,
    year                    INTEGER,
    host_department         TEXT,
    frequency               TEXT,
    venue                   TEXT,
    start_date              TEXT,
    end_date                TEXT,
    speaker_count           INTEGER,
    topic_tags              TEXT,
    audience                TEXT,
    registration_required   TEXT,
    capacity                INTEGER,
    online_stream_url       TEXT,
    recorded                TEXT,
    budget                  REAL,
    sponsor                 TEXT,
    contact_person          TEXT,
    contact_email           TEXT,
    notes                   TEXT
);

INSERT INTO faculty_lecture_series VALUES
('FL001','AI Futures','Series on AI developments','Fall','2023','Computer Science','Weekly','Auditorium 1','2023-09-05','2023-12-15',8,'AI,ML,Robotics','Students,Faculty','Y',200,'http://stream.univ.edu/ai','Y',12000.0,'TechCorp','Dr Emily White','fl1@example.com','First series of the year');

INSERT INTO faculty_lecture_series VALUES
('FL002','Sustainable Energy','Renewable energy topics','Spring','2024','Electrical Engineering','Biweekly','Auditorium 2','2024-02-10','2024-05-20',6,'Solar,Wind,Storage','Students,Industry','Y',150,'http://stream.univ.edu/energy','Y',9000.0','EnergyFund','Dr Mark Green','fl2@example.com','Invited external speakers');

INSERT INTO faculty_lecture_series VALUES
('FL003','Historical Perspectives','History of Science','Fall','2024','History','Monthly','Lecture Hall 3','2024-09-01','2025-01-15',5,'History,Philosophy','Students','N',100,'','N',3000.0,'HistoryDept','Dr Anna Brown','fl3@example.com','Open to public');

-- Environmental Monitoring Device Deployment
CREATE TABLE environmental_monitoring_device_deployment
(
    deployment_id           TEXT PRIMARY KEY,
    device_id               TEXT,
    device_type             TEXT,
    manufacturer            TEXT,
    installation_date       TEXT,
    latitude                REAL,
    longitude               REAL,
    elevation_m             INTEGER,
    region                  TEXT,
    monitoring_parameter    TEXT,
    sampling_frequency_minutes INTEGER,
    data_endpoint           TEXT,
    status                  TEXT,
    last_maintenance_date   TEXT,
    next_maintenance_due    TEXT,
    calibration_status      TEXT,
    notes                   TEXT,
    project_id              TEXT,
    owner                   TEXT,
    geo_fence_radius        INTEGER,
    alert_threshold         REAL,
    responsible_technician  TEXT
);

INSERT INTO environmental_monitoring_device_deployment VALUES
('DEP001','DEV1001','AirQualitySensor','EnviroTech','2023-01-15',40.7128,-74.0060,10,'NorthCampus','PM2.5',15,'http://data.univ.edu/dep001','active','2023-06-01','2023-12-01','calibrated','Installed near main entrance','PRJ001','Facilities','100','35.0','Tom Reed');

INSERT INTO environmental_monitoring_device_deployment VALUES
('DEP002','DEV2002','WaterQualityProbe','AquaSense','2022-11-20',40.7306,-73.9866,5,'SouthCampus','pH',30,'http://data.univ.edu/dep002','maintenance','2023-04-15','2023-10-15','needs calibration','Probe in river loop','PRJ002','ResearchLab','150','7.5','Sara Kim');

INSERT INTO environmental_monitoring_device_deployment VALUES
('DEP003','DEV3003','NoiseMonitor','SoundMetrics','2023-05-10',40.7488,-73.9857,12,'EastCampus','dB',10,'http://data.univ.edu/dep003','active','2023-08-01','2024-02-01','calibrated','Mounted on building roof','PRJ003','CampusSafety','200','85.0','Mike Lee');

-- Health Service Quality Metric
CREATE TABLE health_service_quality_metric
(
    metric_id               TEXT PRIMARY KEY,
    metric_name             TEXT,
    description             TEXT,
    measurement_unit        TEXT,
    target_value            REAL,
    current_value           REAL,
    baseline_value          REAL,
    measurement_date        TEXT,
    department              TEXT,
    responsible_staff       TEXT,
    data_source             TEXT,
    frequency               TEXT,
    status                  TEXT,
    notes                   TEXT,
    related_service         TEXT,
    patient_group           TEXT,
    benchmark               TEXT,
    trend                   TEXT,
    confidence_interval     TEXT,
    methodology             TEXT,
    review_date             TEXT,
    approved_by             TEXT
);

INSERT INTO health_service_quality_metric VALUES
('HM001','Average Wait Time','Time from arrival to first consult','minutes',15.0,18.5,20.0,'2023-09-30','General Medicine','Dr Alice','Electronic Records','Monthly','behind','Needs improvement','Outpatient','Adults','30 min','upward','±2.0','Time Study','2023-10-15','DirectorHealth');

INSERT INTO health_service_quality_metric VALUES
('HM002','Patient Satisfaction Score','Overall satisfaction rating','scale (1-5)',4.5,4.2,3.8,'2023-09-30','Emergency','Nurse Bob','Survey System','Quarterly','on track','Positive trend','Emergency','All','4.0','stable','±0.3','Survey Analysis','2023-10-20','ChiefMedical');

INSERT INTO health_service_quality_metric VALUES
('HM003','Medication Error Rate','Errors per 1000 doses','errors/1000','0.5',0.7,0.9,'2023-09-30','Pharmacy','Pharmacist Carol','Audit Logs','Monthly','behind','Root cause analysis needed','Inpatient','Adults','0.3','upward','±0.1','Chart Review','2023-10-10','PharmacyHead');

-- Community Art Exhibit Schedule
CREATE TABLE community_art_exhibit_schedule
(
    schedule_id             TEXT PRIMARY KEY,
    exhibit_name            TEXT,
    artist_name             TEXT,
    art_type                TEXT,
    venue                   TEXT,
    start_date              TEXT,
    end_date                TEXT,
    opening_hours           TEXT,
    curator                 TEXT,
    sponsor                 TEXT,
    contact_email           TEXT,
    contact_phone           TEXT,
    ticket_price            REAL,
    max_visitors            INTEGER,
    accessibility_features  TEXT,
    insurance_policy        TEXT,
    transport_parking_info  TEXT,
    promo_materials         TEXT,
    notes                   TEXT,
    social_media_hash       TEXT,
    media_coverage          TEXT,
    evaluation_score        REAL
);

INSERT INTO community_art_exhibit_schedule VALUES
('EX001','Colors of Campus','Liam Rivera','Painting','Art Gallery 1','2023-11-01','2023-12-15','10:00-18:00','Dr Helen','ArtFund','ex1@example.com','5551111',5.0,200,'Wheelchair ramp','Policy123','Free parking lot A','Flyers, Posters','Opening ceremony on 1st','#CampusColors','LocalNews','4.5');

INSERT INTO community_art_exhibit_schedule VALUES
('EX002','Sculpture Walk','Mia Chen','Sculpture','Outdoor Plaza','2024-03-10','2024-04-20','09:00-20:00','Prof James','SculptureTrust','ex2@example.com','5552222',0.0,500,'Audio guide available','Policy456','Parking garage B','Social media ads','Installation on 9th March','#SculptureWalk','CityMagazine','4.8');

INSERT INTO community_art_exhibit_schedule VALUES
('EX003','Digital Dreams','Kofi Mensah','Digital','Tech Hall','2024-06-05','2024-07-30','11:00-19:00','Dr Sara','TechCorp','ex3@example.com','5553333',10.0,300,'Assistive listening devices','Policy789','Bike racks nearby','Email newsletter','VR demo on opening day','#DigitalDreams','OnlineBlog','4.2');

-- Technology Patent Portfolio
CREATE TABLE technology_patent_portfolio
(
    portfolio_id            TEXT PRIMARY KEY,
    patent_id               TEXT,
    title                   TEXT,
    inventor                TEXT,
    application_date        TEXT,
    grant_date              TEXT,
    status                  TEXT,
    technology_area         TEXT,
    jurisdiction            TEXT,
    patent_number           TEXT,
    expiration_date         TEXT,
    licensing_status        TEXT,
    licensee                TEXT,
    royalty_rate            REAL,
    maintenance_fee         REAL,
    related_project         TEXT,
    assigned_to             TEXT,
    priority_level          TEXT,
    notes                   TEXT,
    cited_by_count          INTEGER,
    citation_sources        TEXT,
    estimate_market_value   REAL
);

INSERT INTO technology_patent_portfolio VALUES
('TP001','PAT1001','Smart Campus Lighting','Dr Nadia','2021-04-10','2023-01-20','granted','IoT','US','US1234567','2033-01-20','licensed','BrightCo',2.5,500.0,'Project Light','Engineering','high','First IoT lighting patent',12,'IEEE,TechJournal',1500000.0);

INSERT INTO technology_patent_portfolio VALUES
('TP002','PAT2002','AI Diagnosis Assistant','Dr Omar','2020-09-15','2022-07-30','granted','Artificial Intelligence','EU','EP7654321','2032-07-30','unlicensed','',0.0,300.0,'Health AI Initiative','MedicalDept','medium','Pending licensing talks',8,'MedicalConf,JournalAI',800000.0);

INSERT INTO technology_patfolio VALUES
('TP003','PAT3003','Renewable Energy Storage','Dr Li','2022-02-05','2024-03-12','pending','Energy','US','US9876543','2034-03-12','pending','',0.0,0.0,'GreenPower Project','EnergyLab','low','Application under review',5,'EnergyWeekly',500000.0);

-- Alumni Endowment Account
CREATE TABLE alumni_endowment_account
(
    account_id              TEXT PRIMARY KEY,
    alumni_id               TEXT,
    account_name            TEXT,
    creation_date           TEXT,
    principal_amount        REAL,
    current_balance         REAL,
    investment_strategy     TEXT,
    risk_level              TEXT,
    annual_yield            REAL,
    restricted_funds        TEXT,
    designated_purpose      TEXT,
    spending_policy         TEXT,
    governance_body         TEXT,
    last_audit_date         TEXT,
    fund_manager            TEXT,
    contact_email           TEXT,
    contact_phone           TEXT,
    notes                   TEXT,
    tax_status              TEXT,
    endorsement_count       INTEGER,
    endorsement_details     TEXT,
    performance_rating      TEXT
);

INSERT INTO alumni_endowment_account VALUES
('AE001','ALU1001','Science Scholars Endowment','2015-06-01',2500000.0,3000000.0,'Balanced','medium',4.2,'no','Scholarships','quarterly review','Board of Trustees','2023-12-01','Morgan Capital','ae1@example.com','5557777','Growing fund','exempt',15,'Donor A, Donor B','AA');

INSERT INTO alumni_endowment_account VALUES
('AE002','ALU1002','Arts Innovation Fund','2018-09-15',1200000.0,1300000.0,'Growth','high',5.1,'yes','Project Grants','annual','Arts Committee','2023-11-20','Harper Investments','ae2@example.com','5558888','Focus on emerging artists','exempt',8,'Alumni C, Alumni D','A');

INSERT INTO alumni_endowment_account VALUES
('AE003','ALU1003','Community Service Endowment','2020-01-20',800000.0,850000.0,'Conservative','low',3.0,'yes','Volunteer Programs','semi-annual','Community Council','2023-10-05','Legacy Funds','ae3@example.com','5559999','Stable growth','exempt',5,'Alumni E','BBB');

-- Sustainability Roadmap Milestone
CREATE TABLE sustainability_roadmap_milestone
(
    milestone_id            TEXT PRIMARY KEY,
    roadmap_id              TEXT,
    title                   TEXT,
    description             TEXT,
    target_year             INTEGER,
    status                  TEXT,
    responsible_unit        TEXT,
    budget_estimate         REAL,
    actual_spend            REAL,
    key_performance_indicator TEXT,
    baseline_value          REAL,
    target_value            REAL,
    current_value           REAL,
    measurement_method      TEXT,
    risk_assessment         TEXT,
    dependencies            TEXT,
    notes                   TEXT,
    approval_date           TEXT,
    review_date             TEXT,
    sustainability_theme    TEXT,
    impact_estimate         TEXT,
    progress_percentage     REAL
);

INSERT INTO sustainability_roadmap_milestone VALUES
('SM001','RM100','Zero Waste Campus','Reduce waste to zero by 2030','2030','in progress','Facilities','500000',120000,'waste tonnage','2000','0','1500','annual audit','medium','Renewable energy upgrade','Initial phase', '2023-01-15','2023-10-01','Waste Reduction','High impact',30.0);

INSERT INTO sustainability_roadmap_milestone VALUES
('SM002','RM100','Carbon Neutrality','Achieve carbon neutrality','2028','planned','Energy','800000',0,'CO2 emissions','5000','0','5000','emissions inventory','high','New HVAC system','Concept stage','2023-02-10','2024-02-10','Carbon Reduction','Very high',5.0);

INSERT INTO sustainability_roadmap_milestone VALUES
('SM003','RM100','Green Transportation','Increase bike usage','2025','completed','Transport','200000',180000,'bike trips','1000','5000','5000','count survey','low','Bike lane construction','Completed','2023-03-20','2025-12-31','Mobility','Moderate',100.0);

-- Facility Security Audit
CREATE TABLE facility_security_audit
(
    audit_id                TEXT PRIMARY KEY,
    facility_id             TEXT,
    audit_date              TEXT,
    auditor_name            TEXT,
    audit_scope             TEXT,
    findings_count          INTEGER,
    critical_findings       INTEGER,
    high_findings           INTEGER,
    medium_findings         INTEGER,
    low_findings            INTEGER,
    overall_risk_score      REAL,
    recommendations         TEXT,
    follow_up_date          TEXT,
    status                  TEXT,
    notes                   TEXT,
    security_systems_checked TEXT,
    access_control_review   TEXT,
    video_surveillance_status TEXT,
    alarm_system_status     TEXT,
    training_completeness   TEXT,
    policy_compliance       TEXT,
    budget_implication      REAL
);

INSERT INTO facility_security_audit VALUES
('FA001','FAC100','2023-08-15','Laura Greene','All campus buildings',25,3,5,10,7,4.5,'Upgrade door locks, Add cameras','2023-10-01','open','All systems functional','CCTV, Intrusion','Updated','Operational','Operational','80%','Compliant',15000.0);

INSERT INTO facility_security_audit VALUES
('FA002','FAC200','2023-09-10','Mark Patel','Science labs only',12,1,2,4,5,3.2,'Install fire alarms','2023-11-05','open','Lab fire alarms outdated','Alarms, Access','Reviewed','Needs upgrade','Needs upgrade','70%','Partially compliant',8000.0);

INSERT INTO facility_security_audit VALUES
('FA003','FAC300','2023-10-05','Nina Lopez','Student housing',18,2,3,6,7,4.0,'Improve lighting in corridors','2024-01-15','open','Lighting adequate','Locks, Lighting','Reviewed','Operational','Operational','90%','Compliant',12000.0);