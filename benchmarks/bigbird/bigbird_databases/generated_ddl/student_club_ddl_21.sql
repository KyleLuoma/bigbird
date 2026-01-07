-- Table: cultural_program
CREATE TABLE cultural_program
(
    program_id           TEXT PRIMARY KEY,
    name                 TEXT,
    start_date           TEXT,
    end_date             TEXT,
    description          TEXT,
    target_audience      TEXT,
    budget_allocated     REAL,
    sponsor              TEXT,
    location             TEXT,
    coordinator_name     TEXT,
    coordinator_email    TEXT,
    expected_attendance  INTEGER,
    actual_attendance    INTEGER,
    feedback_score       REAL,
    resources_needed     TEXT,
    status               TEXT,
    funding_source       TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    notes                TEXT
);
INSERT INTO cultural_program VALUES ('CP001','SpringArtsFest','2024-03-15','2024-03-22','A celebration of student art and performance','students','15000.0','ArtsDept','MainQuad','Laura Smith','laura.smith@example.edu','300','280','4.3','stage,lighting','completed','UniversityFund','2024-01-10','2024-01-12','');
INSERT INTO cultural_program VALUES ('CP002','SummerMusicSeries','2024-06-01','2024-08-31','Outdoor concerts featuring local bands','community','25000.0','MusicDept','CampusPark','Mike Johnson','mike.johnson@example.edu','800','0','0.0','sound_system,food_stalls','ongoing','ExternalGrant','2024-02-05','2024-02-06','');
INSERT INTO cultural_program VALUES ('CP003','WinterFilmScreening','2024-12-05','2024-12-10','Screening of student-made short films','students','8000.0','FilmDept','Auditorium','Emily Davis','emily.davis@example.edu','120','115','4.7','projector,seating','planned','AlumniFund','2024-03-01','2024-03-02','');

-- Table: faculty_research_funding
CREATE TABLE faculty_research_funding
(
    funding_id          TEXT PRIMARY KEY,
    faculty_id          TEXT,
    grant_title         TEXT,
    agency              TEXT,
    award_amount        REAL,
    start_year          INTEGER,
    end_year            INTEGER,
    funding_type        TEXT,
    project_status      TEXT,
    total_expended      REAL,
    remaining_amount    REAL,
    reporting_cycle     TEXT,
    last_report_date    TEXT,
    primary_contact     TEXT,
    contact_email       TEXT,
    department          TEXT,
    college             TEXT,
    abstract            TEXT,
    keywords            TEXT,
    created_at          TEXT,
    updated_at          TEXT
);
INSERT INTO faculty_research_funding VALUES ('FRF001','F001','AI in Education','NSF','120000.0','2023','2026','grant','active','45000.0','75000.0','annual','2024-06-15','Dr. Alan Lee','alan.lee@example.edu','ComputerScience','Engineering','Study of adaptive learning algorithms','AI,education,adaptive','2024-01-20','2024-02-01');
INSERT INTO faculty_research_funding VALUES ('FRF002','F045','Renewable Energy Storage','DOE','200000.0','2022','2025','grant','completed','200000.0','0.0','semiannual','2025-12-01','Dr. Maya Patel','maya.patel@example.edu','MechanicalEngineering','Science','Development of high‑density batteries','energy,storage,battery','2022-03-10','2025-12-02');
INSERT INTO faculty_research_funding VALUES ('FRF003','F078','Social Media Impact','NIH','75000.0','2024','2027','grant','pending','0.0','75000.0','annual','2024-07-01','Dr. Samir Khan','samir.khan@example.edu','Psychology','HealthSciences','Examining mental health outcomes linked to social media use','mentalhealth,socialmedia,behavior','2024-04-05','2024-04-06');

-- Table: student_athletics
CREATE TABLE student_athletics
(
    athlete_id            TEXT PRIMARY KEY,
    student_id            TEXT,
    sport                 TEXT,
    team_name             TEXT,
    position              TEXT,
    jersey_number         INTEGER,
    height_cm             INTEGER,
    weight_kg             INTEGER,
    year_class            TEXT,
    scholarship_amount    REAL,
    coach_name            TEXT,
    coach_email           TEXT,
    season_year           INTEGER,
    statistics_url        TEXT,
    injuries_reported    INTEGER,
    eligibility_status    TEXT,
    awards                TEXT,
    social_media_handle   TEXT,
    created_at            TEXT,
    updated_at            TEXT
);
INSERT INTO student_athletics VALUES ('AT001','S12345','Basketball','Wildcats','Guard','12','185','80','Junior','5000.0','Coach Tom','tom.coach@example.edu','2024','http://stats.university.edu/AT001','0','eligible','MVP2023','athlete_at001','2024-01-15','2024-01-16');
INSERT INTO student_athletics VALUES ('AT002','S67890','Swimming','Dolphins','Freestyle','7','175','70','Senior','3000.0','Coach Lisa','lisa.coach@example.edu','2024','http://stats.university.edu/AT002','1','eligible','GoldMedal2022','swimstar_at002','2024-02-10','2024-02-11');
INSERT INTO student_athletics VALUES ('AT003','S54321','Track','Falcons','Sprinter','3','180','75','Sophomore','4000.0','Coach Mark','mark.coach@example.edu','2024','http://stats.university.edu/AT003','0','eligible','AllConference','runner_at003','2024-03-05','2024-03-06');

-- Table: campus_media_plan
CREATE TABLE campus_media_plan
(
    plan_id                TEXT PRIMARY KEY,
    fiscal_year            TEXT,
    media_type             TEXT,
    campaign_name          TEXT,
    target_audience        TEXT,
    budget                 REAL,
    allocated_budget       REAL,
    spend_to_date          REAL,
    impressions            INTEGER,
    clicks                 INTEGER,
    ctr                    REAL,
    cpc                    REAL,
    cpm                    REAL,
    start_date             TEXT,
    end_date               TEXT,
    responsible_officer    TEXT,
    contact_email          TEXT,
    status                 TEXT,
    notes                  TEXT,
    created_at             TEXT,
    updated_at             TEXT
);
INSERT INTO campus_media_plan VALUES ('MP001','2024','Digital','OpenHouse2024','prospective_students','20000.0','18000.0','15000.0','500000','12000','2.4','1.25','30.0','2024-03-01','2024-04-30','Anna Lee','anna.lee@example.edu','ongoing','','2024-02-01','2024-02-02');
INSERT INTO campus_media_plan VALUES ('MP002','2024','Print','AlumniMagazine','alumni','15000.0','14000.0','14000.0','300000','0','0.0','0.0','46.7','2024-05-01','2024-07-31','Brian Kim','brian.kim@example.edu','completed','','2024-04-01','2024-04-02');
INSERT INTO campus_media_plan VALUES ('MP003','2025','Social','TechSummit2025','industry_professionals','25000.0','20000.0','5000.0','800000','20000','2.5','0.25','31.3','2025-01-15','2025-03-15','Cara Patel','cara.patel@example.edu','planned','','2024-11-10','2024-11-11');

-- Table: environmental_compliance_log
CREATE TABLE environmental_compliance_log
(
    log_id                TEXT PRIMARY KEY,
    site_id               TEXT,
    inspection_date       TEXT,
    inspector_name        TEXT,
    compliance_status     TEXT,
    violations_count      INTEGER,
    violation_details     TEXT,
    corrective_actions    TEXT,
    follow_up_date        TEXT,
    compliance_score      REAL,
    regulatory_body       TEXT,
    report_document       TEXT,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    latitude              REAL,
    longitude             REAL,
    temperature_c         REAL,
    humidity_percent      REAL
);
INSERT INTO environmental_compliance_log VALUES ('ECL001','S001','2024-04-10','John Miller','compliant','0','None','N/A','2024-05-10','95.0','EPA','ecl001.pdf','','2024-04-11','2024-04-12','38.8951','-77.0364','22.0','45.0');
INSERT INTO environmental_compliance_log VALUES ('ECL002','S014','2024-03-22','Sarah Gomez','non‑compliant','2','Improper waste disposal;Unpermitted discharge','Dispose waste properly;Obtain permit','2024-06-01','70.0','StateDept','ecl002.pdf','Follow‑up needed','2024-03-23','2024-03-24','34.0522','-118.2437','25.0','50.0');
INSERT INTO environmental_compliance_log VALUES ('ECL003','S027','2024-05-05','Mark Zhou','conditional','1','Noise exceedance after 10pm','Limit operations to 9pm','2024-07-01','85.0','LocalCouncil','ecl003.pdf','Monitoring scheduled','2024-05-06','2024-05-07','40.7128','-74.0060','20.0','55.0');

-- Table: transportation_insurance
CREATE TABLE transportation_insurance
(
    policy_id           TEXT PRIMARY KEY,
    vehicle_id          TEXT,
    insurer_name        TEXT,
    policy_number       TEXT,
    coverage_type       TEXT,
    coverage_amount     REAL,
    premium             REAL,
    effective_date      TEXT,
    expiration_date     TEXT,
    deductible          REAL,
    claim_history       TEXT,
    last_claim_date     TEXT,
    claim_amount        REAL,
    status              TEXT,
    notes               TEXT,
    created_at          TEXT,
    updated_at          TEXT,
    agent_name          TEXT,
    agent_contact       TEXT,
    risk_rating         INTEGER
);
INSERT INTO transportation_insurance VALUES ('TI001','V1001','Acme Insurance','POL12345','collision','50000.0','1200.0','2024-01-01','2024-12-31','500.0','None','N/A','0.0','active','','2024-01-02','2024-01-03','Jane Doe','555-1234','2');
INSERT INTO transportation_insurance VALUES ('TI002','V1002','Global Cover','POL67890','comprehensive','75000.0','1500.0','2023-06-15','2024-06-14','1000.0','Claim on 2023-09-10','2023-09-10','8000.0','active','','2023-06-16','2023-06-17','Bob Smith','555-5678','3');
INSERT INTO transportation_insurance VALUES ('TI003','V1003','SecureRisk','POL54321','liability','25000.0','800.0','2024-03-01','2025-02-28','250.0','None','N/A','0.0','pending','Pending approval','2024-03-02','2024-03-03','Alice Green','555-9012','1');

-- Table: vendor_performance_metric
CREATE TABLE vendor_performance_metric
(
    metric_id            TEXT PRIMARY KEY,
    vendor_id            TEXT,
    period_start         TEXT,
    period_end           TEXT,
    on_time_delivery_pct REAL,
    quality_score        REAL,
    compliance_score     REAL,
    incident_count       INTEGER,
    total_spend          REAL,
    contracts_active     INTEGER,
    avg_response_time    REAL,
    satisfaction_score   REAL,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    reviewer_name        TEXT,
    reviewer_email       TEXT,
    region               TEXT,
    category             TEXT,
    risk_level           TEXT
);
INSERT INTO vendor_performance_metric VALUES ('VPM001','VN001','2024-01-01','2024-03-31','98.5','4.7','92.0','0','25000.0','3','2.5','4.8','','2024-04-01','2024-04-02','Karen Lee','karen.lee@example.edu','Midwest','Catering','low');
INSERT INTO vendor_performance_metric VALUES ('VPM002','VN042','2024-01-01','2024-03-31','85.0','3.9','78.0','2','40000.0','5','5.0','3.5','Late deliveries reported','2024-04-01','2024-04-02','Michael Chan','michael.chan@example.edu','West','Logistics','medium');
INSERT INTO vendor_performance_metric VALUES ('VPM003','VN017','2024-01-01','2024-03-31','92.0','4.2','88.5','1','15000.0','2','3.0','4.0','One quality issue resolved','2024-04-01','2024-04-02','Susan Patel','susan.patel@example.edu','East','Equipment','low');

-- Table: grant_budget_allocation
CREATE TABLE grant_budget_allocation
(
    allocation_id        TEXT PRIMARY KEY,
    grant_id             TEXT,
    department_id        TEXT,
    allocated_amount     REAL,
    spent_amount         REAL,
    remaining_amount     REAL,
    fiscal_year          TEXT,
    allocation_date      TEXT,
    approved_by          TEXT,
    approval_status      TEXT,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    budget_category      TEXT,
    cost_center          TEXT,
    project_phase        TEXT,
    funding_source       TEXT,
    revision_number      INTEGER,
    last_revision_date   TEXT,
    next_review_date     TEXT,
    manager_name         TEXT
);
INSERT INTO grant_budget_allocation VALUES ('GBA001','GR001','DEP01','50000.0','12000.0','38000.0','2024','2024-02-01','Dean Allen','approved','Initial allocation','2024-02-02','2024-02-03','research','CC100','phase1','state_fund','1','2024-06-01','2024-12-01','Dr. Helen Wong');
INSERT INTO grant_budget_allocation VALUES ('GBA002','GR002','DEP07','75000.0','30000.0','45000.0','2024','2024-03-15','Director Maya','approved','Mid‑year adjustment','2024-03-16','2024-03-17','development','CC200','phase2','federal_grant','2','2024-09-01','2025-03-01','Prof. John Reed');
INSERT INTO grant_budget_allocation VALUES ('GBA003','GR003','DEP04','30000.0','0.0','30000.0','2024','2024-01-20','VP Carl','pending','Pending approval','2024-01-21','2024-01-22','pilot','CC300','phase0','private_foundation','0','2024-07-01','2024-12-31','Dr. Nina Patel');

-- Table: event_sponsor_contract
CREATE TABLE event_sponsor_contract
(
    contract_id           TEXT PRIMARY KEY,
    event_id              TEXT,
    sponsor_id            TEXT,
    contract_start_date   TEXT,
    contract_end_date     TEXT,
    sponsorship_level    TEXT,
    total_value           REAL,
    deliverables          TEXT,
    payment_schedule      TEXT,
    signed_by             TEXT,
    signed_date           TEXT,
    status                TEXT,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    contact_person        TEXT,
    contact_email         TEXT,
    agreed_exposure_units INTEGER,
    renewal_option        TEXT
);
INSERT INTO event_sponsor_contract VALUES ('ESC001','EV001','SP001','2024-01-01','2024-04-30','gold','20000.0','banner,booth','50% upfront,50% after','Laura Brown','2023-12-15','active','','2024-01-02','2024-01-03','Tom Collins','tom.collins@example.com','150','yes');
INSERT INTO event_sponsor_contract VALUES ('ESC002','EV010','SP020','2024-05-01','2024-08-31','silver','12000.0','logo,flyer','40% upfront,60% after','Mark Davis','2024-04-10','pending','','2024-05-02','2024-05-03','Sara Lee','sara.lee@example.com','80','no');
INSERT INTO event_sponsor_contract VALUES ('ESC003','EV015','SP045','2024-09-01','2024-12-31','bronze','8000.0','social_media_mentions','100% after','Emily Clark','2024-08-20','draft','','2024-09-02','2024-09-03','Brian Kim','brian.kim@example.com','40','yes');

-- Table: digital_innovation_hub
CREATE TABLE digital_innovation_hub
(
    hub_id                TEXT PRIMARY KEY,
    name                  TEXT,
    location              TEXT,
    opening_date          TEXT,
    capacity              INTEGER,
    focus_area            TEXT,
    director_name         TEXT,
    director_email        TEXT,
    annual_budget         REAL,
    active_projects       INTEGER,
    partner_organizations TEXT,
    equipment_inventory   TEXT,
    security_status       TEXT,
    wifi_ssid             TEXT,
    access_policy         TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    last_audit_date       TEXT,
    compliance_status     TEXT,
    notes                 TEXT
);
INSERT INTO digital_innovation_hub VALUES ('DIH001','TechLab','BuildingA','2023-09-01','120','emerging_technologies','Dr. Alex Rivera','alex.rivera@example.edu','500000.0','8','CompanyX,CompanyY','3d_printers,vr_headsets','secured','TechLab_WiFi','open_to_students','2024-01-10','2024-01-12','2024-06-01','compliant','');
INSERT INTO digital_innovation_hub VALUES ('DIH002','DataScienceCenter','BuildingB','2022-01-15','80','data_analytics','Prof. Maya Singh','maya.singh@example.edu','350000.0','5','DataCorp,AnalyticsInc','high_perf_servers','secured','DSC_WiFi','restricted','2024-02-05','2024-02-07','2024-07-15','compliant','');
INSERT INTO digital_innovation_hub VALUES ('DIH003','CreativeStudio','BuildingC','2024-03-20','60','digital_media','Ms. Jenna Lee','jenna.lee@example.edu','250000.0','2','MediaGroup,StudioPartners','audio_mixing_booths,editing_clusters','secured','CS_WiFi','open_to_students','2024-04-01','2024-04-03','2024-08-20','pending','');