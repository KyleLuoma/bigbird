-- Customer support ticket log
CREATE TABLE customer_support_ticket
(
    ticket_id                INTEGER      NOT NULL PRIMARY KEY,
    reporter_name            TEXT         NOT NULL,
    contact_email            TEXT         NOT NULL,
    issue_category           TEXT         NOT NULL,
    priority_level           TEXT         NOT NULL,
    ticket_status            TEXT         NOT NULL,
    created_date             DATE         NOT NULL,
    resolved_date            DATE,
    issue_description        TEXT,
    resolution_notes         TEXT,
    communication_channel    TEXT NOT NULL,
    escalation_level         INTEGER NOT NULL,
    satisfaction_score       INTEGER,
    follow_up_required       TEXT NOT NULL,
    internal_flag            TEXT NOT NULL,
    tags                     TEXT,
    assigned_team            TEXT NOT NULL,
    ticket_source            TEXT NOT NULL,
    sla_due_date             DATE,
    last_updated             DATE NOT NULL,
    resolution_time_minutes  INTEGER,
    is_duplicate             TEXT NOT NULL
);
INSERT INTO customer_support_ticket VALUES (1,'alice','alice@example.com','billing','high','open','2025-12-01',NULL,'invoice missing','', 'email',2,0,'yes','no','finance','team_a','web', '2025-12-05','2025-12-01',0,'no');
INSERT INTO customer_support_ticket VALUES (2,'bob','bob@example.com','technical','medium','closed','2025-11-20','2025-11-22','app crash','restarted service','phone',1,5,'no','no','it_support','team_b','phone','2025-11-25','2025-11-22',30,'no');
INSERT INTO customer_support_ticket VALUES (3,'carol','carol@example.com','account','low','pending','2025-12-03',NULL,'password reset needed','', 'chat',0,NULL,'yes','yes','customer_care','team_c','chat','2025-12-07','2025-12-03',NULL,'yes');

-- Branch event schedule
CREATE TABLE branch_event_schedule
(
    event_id                 INTEGER      NOT NULL PRIMARY KEY,
    branch_id                INTEGER NOT NULL,
    event_name               TEXT NOT NULL,
    event_type               TEXT NOT NULL,
    organizer_name           TEXT NOT NULL,
    start_date               DATE NOT NULL,
    end_date                 DATE,
    start_time               TEXT NOT NULL,
    end_time                 TEXT,
    venue_location           TEXT NOT NULL,
    expected_attendees       INTEGER NOT NULL,
    is_public                TEXT NOT NULL,
    registration_required    TEXT NOT NULL,
    max_capacity             INTEGER,
    catering_included        TEXT NOT NULL,
    equipment_needed         TEXT,
    budget_amount            REAL NOT NULL,
    sponsor_name             TEXT,
    marketing_channel        TEXT,
    description              TEXT,
    created_timestamp        DATE NOT NULL,
    last_modified_timestamp  DATE NOT NULL,
    status                   TEXT NOT NULL,
    notes                    TEXT
);
INSERT INTO branch_event_schedule VALUES (101,10,'Financial Seminar','education','john doe','2025-12-15','2025-12-15','09:00','12:00','main_hall',120,'yes','yes',150,'yes','projector, microphone',5000.00,'bank corp','email','annual financial update','2025-11-01','2025-11-20','scheduled','');
INSERT INTO branch_event_schedule VALUES (102,12,'Community Fair','community','jane smith','2025-12-20',NULL,'10:00','16:00','city_square',300,'yes','no',NULL,'no','tent, stage',2000.00,'local council','social','local community engagement','2025-11-05','2025-11-18','planned','');
INSERT INTO branch_event_schedule VALUES (103,15,'IT Maintenance Window','maintenance','mark lee','2025-12-01','2025-12-01','22:00','02:00','branch_server_room',0,'no','no',NULL,'no','servers, backup power',0.00,NULL,'internal','system upgrade','2025-11-10','2025-11-25','confirmed','');

-- Digital payment method registry
CREATE TABLE digital_payment_method
(
    method_id                INTEGER NOT NULL PRIMARY KEY,
    method_name              TEXT NOT NULL,
    provider                 TEXT NOT NULL,
    api_version              TEXT NOT NULL,
    authentication_type      TEXT NOT NULL,
    encryption_standard      TEXT NOT NULL,
    transaction_fee_percent  REAL NOT NULL,
    fixed_fee_cents          INTEGER NOT NULL,
    supported_currencies     TEXT NOT NULL,
    max_transaction_amount   REAL NOT NULL,
    min_transaction_amount   REAL NOT NULL,
    settlement_period_days   INTEGER NOT NULL,
    is_active                TEXT NOT NULL,
    launch_date              DATE NOT NULL,
    deprecation_date         DATE,
    documentation_url        TEXT,
    compliance_certificates  TEXT,
    risk_score               INTEGER NOT NULL,
    daily_transaction_limit  INTEGER NOT NULL,
    monthly_transaction_limit INTEGER NOT NULL,
    supported_regions        TEXT NOT NULL,
    requires_kyc             TEXT NOT NULL,
    ui_integration_type      TEXT NOT NULL,
    notes                    TEXT
);
INSERT INTO digital_payment_method VALUES (1,'mobile_wallet','payfast','v2','oauth2','aes256',1.5,30,'USD,EUR,GBP',10000.00,1.00,2,'yes','2025-01-01',NULL,'https://docs.payfast.com','PCI_DSS',85,5000,20000,'NA','yes','sdk','');
INSERT INTO digital_payment_method VALUES (2,'crypto_gateway','blockchaininc','v1','none','sha256',0.0,0,'BTC,ETH',50000.00,10.00,1,'yes','2024-06-15','2026-12-31','https://gateway.blockchaininc.com','ISO27001',70,2000,10000,'EU,ASIA','no','api','');
INSERT INTO digital_payment_method VALUES (3,'bank_transfer','globalbank','v3','certificate','rsa2048',0.75,20,'USD,JPY',25000.00,5.00,3,'yes','2023-09-01',NULL,'https://api.globalbank.com','SOC2',90,10000,50000,'NA','yes','direct','');

-- Vendor service level agreement
CREATE TABLE vendor_service_level_agreement
(
    sla_id                   INTEGER NOT NULL PRIMARY KEY,
    vendor_id                INTEGER NOT NULL,
    service_name             TEXT NOT NULL,
    effective_start_date     DATE NOT NULL,
    effective_end_date       DATE,
    uptime_percentage_target REAL NOT NULL,
    response_time_seconds    INTEGER NOT NULL,
    resolution_time_hours    INTEGER NOT NULL,
    penalty_rate_perc        REAL NOT NULL,
    reporting_frequency      TEXT NOT NULL,
    monitoring_tool          TEXT NOT NULL,
    contact_person           TEXT NOT NULL,
    contact_email            TEXT NOT NULL,
    contact_phone            TEXT NOT NULL,
    escalation_procedure     TEXT NOT NULL,
    data_retention_days      INTEGER NOT NULL,
    backup_frequency_hours   INTEGER NOT NULL,
    security_compliance      TEXT NOT NULL,
    audit_frequency_months   INTEGER NOT NULL,
    renewal_notice_days      INTEGER NOT NULL,
    cancellation_fee         REAL NOT NULL,
    currency                 TEXT NOT NULL,
    notes                    TEXT,
    created_timestamp        DATE NOT NULL,
    last_modified_timestamp  DATE NOT NULL
);
INSERT INTO vendor_service_level_agreement VALUES (301,2001,'cloud hosting','2025-01-01','2027-12-31',99.9,300,12,5.0,'monthly','monitorX','alice','alice@vendor.com','5551234','tier1_escalation',365,24,'ISO27001',12,60,1000.00,'USD','', '2025-01-01','2025-01-05');
INSERT INTO vendor_service_level_agreement VALUES (302,2002,'payment gateway','2024-06-01',NULL,99.5,180,8,3.5,'weekly','payWatch','bob','bob@vendor.com','5555678','tier2_escalation',180,12,'PCI_DSS',6,30,2000.00,'EUR','', '2024-06-01','2024-06-10');
INSERT INTO vendor_service_level_agreement VALUES (303,2003,'logistics transport','2023-03-15','2026-03-14',98.0,600,24,7.0,'quarterly','trackLog','carol','carol@vendor.com','5559012','tier3_escalation',730,48,'ISO9001',9,90,1500.00,'GBP','', '2023-03-15','2023-03-20');

-- Corporate social responsibility record
CREATE TABLE corporate_social_responsibility
(
    csr_id                   INTEGER NOT NULL PRIMARY KEY,
    initiative_name          TEXT NOT NULL,
    start_date               DATE NOT NULL,
    end_date                 DATE,
    budget_amount            REAL NOT NULL,
    amount_spent             REAL NOT NULL,
    target_communities       TEXT NOT NULL,
    beneficiaries_estimated  INTEGER NOT NULL,
    metric_kpi1              REAL,
    metric_kpi2              REAL,
    metric_kpi3              REAL,
    lead_department          TEXT NOT NULL,
    project_manager          TEXT NOT NULL,
    reporting_frequency      TEXT NOT NULL,
    status                   TEXT NOT NULL,
    external_partner         TEXT,
    certification_obtained   TEXT,
    sustainability_score     INTEGER,
    carbon_footprint_tons    REAL,
    waste_reduced_kg         REAL,
    volunteer_hours          INTEGER,
    public_announcement_date DATE,
    notes                    TEXT,
    created_timestamp        DATE NOT NULL,
    last_modified_timestamp  DATE NOT NULL
);
INSERT INTO corporate_social_responsibility VALUES (401,'green_office','2025-02-01','2025-12-31',50000.00,12000.00,'city_center',2000,85.5,90.0,78.0,'facilities','dave','quarterly','active','eco_partner','LEED','A',45.0,1500.0,300,'2025-02-15','', '2025-02-01','2025-02-05');
INSERT INTO corporate_social_responsibility VALUES (402,'financial_literacy','2024-05-01',NULL,30000.00,8000.00,'rural_regions',1500,70.0,65.0,60.0,'hr','emma','annual','ongoing','edu_nonprofit','ISO9001','B',20.0,500.0,120,'2024-05-10','', '2024-05-01','2024-05-03');
INSERT INTO corporate_social_responsibility VALUES (403,'health_care_access','2023-09-15','2026-09-14',120000.00,40000.00,'suburban_areas',3500,92.0,88.0,90.0,'community','frank','semiannual','active','health_partner','ISO13485','A',10.0,300.0,250,'2023-09-20','', '2023-09-15','2023-09-18');

-- Employee skill matrix
CREATE TABLE employee_skill_matrix
(
    employee_id              INTEGER NOT NULL PRIMARY KEY,
    employee_name            TEXT NOT NULL,
    department               TEXT NOT NULL,
    job_title                TEXT NOT NULL,
    skill_python             INTEGER NOT NULL,
    skill_sql                INTEGER NOT NULL,
    skill_java               INTEGER NOT NULL,
    skill_excel              INTEGER NOT NULL,
    skill_data_analysis      INTEGER NOT NULL,
    skill_project_management INTEGER NOT NULL,
    skill_communication      INTEGER NOT NULL,
    skill_leadership         INTEGER NOT NULL,
    skill_cloud_architecture INTEGER NOT NULL,
    skill_cybersecurity      INTEGER NOT NULL,
    skill_networking         INTEGER NOT NULL,
    skill_ai_ml              INTEGER NOT NULL,
    skill_ui_ux              INTEGER NOT NULL,
    skill_business_intel     INTEGER NOT NULL,
    skill_reporting          INTEGER NOT NULL,
    skill_agile_methodology  INTEGER NOT NULL,
    skill_quality_assurance  INTEGER NOT NULL,
    last_skill_update        DATE NOT NULL,
    certification_details    TEXT,
    notes                    TEXT
);
INSERT INTO employee_skill_matrix VALUES (1001,'alice johnson','it','software_engineer',5,4,3,2,5,3,4,2,3,1,2,4,2,3,4,5,3,5,'2025-11-01','AWS_Certified','');
INSERT INTO employee_skill_matrix VALUES (1002,'bob smith','finance','analyst',2,5,1,5,4,4,5,3,2,1,1,2,1,4,5,3,2,5,'2025-10-15','CFA_Level1','');
INSERT INTO employee_skill_matrix VALUES (1003,'carol davis','hr','recruiter',1,1,0,4,2,5,5,4,1,0,2,1,2,5,3,4,1,5,'2025-09-20','SHRM_Certified','');

-- Product pricing tier
CREATE TABLE product_pricing_tier
(
    tier_id                  INTEGER NOT NULL PRIMARY KEY,
    tier_name                TEXT NOT NULL,
    base_price               REAL NOT NULL,
    discount_percent         REAL NOT NULL,
    max_discount_percent     REAL NOT NULL,
    currency                 TEXT NOT NULL,
    applicable_region        TEXT NOT NULL,
    effective_start_date     DATE NOT NULL,
    effective_end_date       DATE,
    price_update_frequency   TEXT NOT NULL,
    requires_approval        TEXT NOT NULL,
    approval_role            TEXT,
    created_by               TEXT NOT NULL,
    creation_timestamp       DATE NOT NULL,
    last_modified_by         TEXT NOT NULL,
    last_modified_timestamp  DATE NOT NULL,
    notes                    TEXT,
    price_adjustment_factor  REAL,
    min_order_quantity       INTEGER,
    max_order_quantity       INTEGER,
    seasonal_factor          REAL,
    tax_included_flag        TEXT NOT NULL,
    promotional_flag         TEXT NOT NULL,
    eligibility_criteria    TEXT
);
INSERT INTO product_pricing_tier VALUES (1,'standard',100.00,0.0,5.0,'USD','global','2025-01-01',NULL,'annual','no',NULL,'system','2025-01-01','system','2025-01-01','',1.0,1,1000,1.0,'yes','no','all_customers');
INSERT INTO product_pricing_tier VALUES (2,'premium',150.00,10.0,15.0,'USD','europe','2025-03-01','2026-03-01','quarterly','yes','senior_manager','admin','2025-03-01','admin','2025-03-01','special pricing for VIP',0.9,10,500,0.95,'yes','yes','vip_customers');
INSERT INTO product_pricing_tier VALUES (3,'enterprise',250.00,20.0,25.0,'EUR','asia','2025-06-01',NULL,'monthly','yes','director','system','2025-06-01','system','2025-06-01','',0.85,50,10000,0.9,'no','yes','large_accounts');

-- Marketing experiment record
CREATE TABLE marketing_experiment
(
    experiment_id            INTEGER NOT NULL PRIMARY KEY,
    experiment_name          TEXT NOT NULL,
    start_date               DATE NOT NULL,
    end_date                 DATE,
    target_audience          TEXT NOT NULL,
    channel                  TEXT NOT NULL,
    control_group_size       INTEGER NOT NULL,
    test_group_size          INTEGER NOT NULL,
    metric_conversion_rate   REAL,
    metric_click_through_rate REAL,
    metric_engagement_time   REAL,
    hypothesis               TEXT,
    result_summary           TEXT,
    significance_level       REAL,
    statistical_test_used    TEXT,
    status                   TEXT NOT NULL,
    owner                    TEXT NOT NULL,
    budget_amount            REAL NOT NULL,
    currency                 TEXT NOT NULL,
    created_timestamp        DATE NOT NULL,
    last_modified_timestamp  DATE NOT NULL,
    notes                    TEXT,
    data_source              TEXT,
    approval_required        TEXT NOT NULL,
    approval_by              TEXT
);
INSERT INTO marketing_experiment VALUES (501,'email_subject_test','2025-09-01','2025-09-15','existing_customers','email',5000,5000,2.5,5.0,30.0,'shorter subject increases open','subject A performed better',0.05,'t_test','completed','alice',2000.00,'USD','2025-08-20','2025-09-16','', 'email_platform','yes','bob');
INSERT INTO marketing_experiment VALUES (502,'banner_color_test','2025-10-01','2025-10-20','prospects','web',8000,8000,3.2,4.5,25.0,'red banner drives higher CTR','no significant difference',0.10,'chi_square','completed','carol',3500.00,'USD','2025-09-15','2025-10-21','', 'web_analytics','no',NULL);
INSERT INTO marketing_experiment VALUES (503,'push_notification_timing','2025-11-05',NULL,'active_users','mobile',6000,6000,4.0,6.0,45.0,'evening push yields higher engagement','in progress',0.05,'anova','running','dave',1500.00,'USD','2025-10-20','2025-10-20','', 'mobile_sdk','yes','emma');

-- Sustainability metric collection
CREATE TABLE sustainability_metric
(
    metric_id                INTEGER NOT NULL PRIMARY KEY,
    metric_name              TEXT NOT NULL,
    measurement_unit         TEXT NOT NULL,
    target_value             REAL NOT NULL,
    actual_value             REAL,
    reporting_period_start   DATE NOT NULL,
    reporting_period_end     DATE NOT NULL,
    responsible_department   TEXT NOT NULL,
    data_collection_method   TEXT NOT NULL,
    verification_status      TEXT NOT NULL,
    notes                    TEXT,
    created_timestamp        DATE NOT NULL,
    last_updated_timestamp   DATE NOT NULL,
    source_system            TEXT,
    frequency                TEXT NOT NULL,
    compliance_requirement   TEXT,
    penalty_if_not_met       REAL,
    currency                 TEXT,
    stakeholder_impacted     TEXT,
    mitigation_plan          TEXT,
    risk_level               TEXT,
    verification_document    TEXT,
    trend_indicator          TEXT,
    confidence_interval_low  REAL,
    confidence_interval_high REAL
);
INSERT INTO sustainability_metric VALUES (601,'carbon_emission','tons',1000.0,950.0,'2025-01-01','2025-12-31','environment','sensor','verified','', '2025-01-05','2025-12-20','env_system','annual','ISO14001',0.00,'USD','regulators','plant_upgrades','low','cert_2025','decreasing',945.0,955.0);
INSERT INTO sustainability_metric VALUES (602,'water_consumption','cubic_meters',50000.0,52000.0,'2025-01-01','2025-12-31','operations','metering','pending','', '2025-01-05','2025-12-20','water_system','annual','ISO14001',5000.00,'USD','community','install_recirculation','medium','audit_2025','increasing',51500.0,52500.0);
INSERT INTO sustainability_metric VALUES (603,'waste_recycled','kilograms',20000.0,18000.0,'2025-01-01','2025-12-31','logistics','audit','verified','', '2025-01-05','2025-12-20','waste_system','annual','ISO14001',0.00,'USD','employees','increase_recycling_bins','low','report_2025','decreasing',17500.0,18500.0);

-- Internal project milestone tracker
CREATE TABLE internal_project_milestone
(
    milestone_id             INTEGER NOT NULL PRIMARY KEY,
    project_id               INTEGER NOT NULL,
    milestone_name           TEXT NOT NULL,
    description              TEXT,
    planned_start_date       DATE NOT NULL,
    planned_end_date         DATE NOT NULL,
    actual_start_date        DATE,
    actual_end_date          DATE,
    status                   TEXT NOT NULL,
    owner                    TEXT NOT NULL,
    responsible_team         TEXT NOT NULL,
    priority_level           TEXT NOT NULL,
    risk_assessment          TEXT,
    dependencies             TEXT,
    resources_allocated      TEXT,
    budget_allocated         REAL NOT NULL,
    currency                 TEXT NOT NULL,
    progress_percent         REAL,
    last_update_timestamp    DATE NOT NULL,
    created_timestamp        DATE NOT NULL,
    notes                    TEXT,
    change_request_id        INTEGER,
    approval_status          TEXT,
    approved_by              TEXT,
    escalation_path          TEXT
);
INSERT INTO internal_project_milestone VALUES (701,3001,'requirements_gathering','collect business requirements','2025-01-10','2025-01-20','2025-01-11','2025-01-19','completed','alice','business_analysts','high','low','none','analysts,stakeholders',5000.00,'USD',100.0,'2025-01-20','2025-01-08','',NULL,'approved','bob','standard');
INSERT INTO internal_project_milestone VALUES (702,3001,'system_design','architectural design','2025-01-21','2025-02-10',NULL,NULL,'in_progress','carol','solution_architects','medium','medium','requirements_gathering','architects',8000.00,'USD',45.0,'2025-02-01','2025-01-20','need additional diagrams',NULL,'pending',NULL,'escalation_path_a');
INSERT INTO internal_project_milestone VALUES (703,3002,'user_acceptance_testing','UAT with pilot users','2025-03-01','2025-03-15',NULL,NULL,'not_started','dave','qa_team','high','high','system_design','qa_engineers,users',7000.00,'USD',0.0,'2025-02-28','2025-02-28','',NULL,'pending',NULL,'escalation_path_b');