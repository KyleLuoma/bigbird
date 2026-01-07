-- Research Ethics Committee information
CREATE TABLE research_ethics_committee
(
    committee_id       TEXT PRIMARY KEY,
    committee_name     TEXT,
    chair_name         TEXT,
    member_count       INTEGER,
    meeting_date       TEXT,
    decision           TEXT,
    notes              TEXT,
    protocol_version   TEXT,
    review_cycle       TEXT,
    funding_source     TEXT,
    contact_email      TEXT,
    contact_phone      TEXT,
    location           TEXT,
    schedule           TEXT,
    agenda_file        TEXT,
    minutes_file       TEXT,
    compliance_status TEXT,
    last_updated       TEXT,
    created_at         TEXT,
    active_flag        TEXT,
    region             TEXT,
    department         TEXT
);

INSERT INTO research_ethics_committee VALUES
('REC001','Human Subjects Board','DrSmith',12,'2025-03-15','Approved','Initial approval','v1.0','Annual','UniversityFund','ethics@univ.edu','5551234567','BuildingA','MonWedFri','agenda1.pdf','minutes1.pdf','Compliant','2025-03-16','2025-01-01','Y','NorthCampus','Biology');

INSERT INTO research_ethics_committee VALUES
('REC002','Animal Care Review','DrJones',9,'2025-04-10','Conditional','Requires modifications','v2.1','Biannual','GrantXYZ','animalethics@univ.edu','5559876543','BuildingB','TueThu','agenda2.pdf','minutes2.pdf','Pending','2025-04-11','2025-02-15','Y','SouthCampus','Veterinary');

INSERT INTO research_ethics_committee VALUES
('REC003','Data Privacy Panel','DrLee',8,'2025-05-20','Rejected','Data handling issues','v3.3','Quarterly','DeptIT','privacy@univ.edu','5555551212','BuildingC','Mon','agenda3.pdf','minutes3.pdf','NonCompliant','2025-05-21','2025-03-20','N','EastCampus','ComputerScience');

-- Campus Cybersecurity Incident records
CREATE TABLE campus_cybersecurity_incident
(
    incident_id          TEXT PRIMARY KEY,
    incident_type        TEXT,
    detection_date       TEXT,
    resolution_date      TEXT,
    severity_level       TEXT,
    affected_systems     TEXT,
    description          TEXT,
    mitigation_steps     TEXT,
    reported_by          TEXT,
    status               TEXT,
    impact_metric        REAL,
    ip_address           TEXT,
    user_account         TEXT,
    device_type          TEXT,
    location_code        TEXT,
    ticket_number        TEXT,
    root_cause           TEXT,
    follow_up_action     TEXT,
    analyst_assigned     TEXT,
    compliance_needed   TEXT,
    remediation_cost     REAL,
    notification_sent    TEXT,
    escalation_level     TEXT,
    notes                TEXT,
    created_at           TEXT
);

INSERT INTO campus_cybersecurity_incident VALUES
('INC001','Phishing','2025-02-01','2025-02-02','High','EmailServer','User clicked malicious link','Password reset, scan','ITHelpDesk','Resolved',0.85,'192.168.1.45','jsmith','Workstation','BLD01','TCK1001','Human error','Security awareness training','AliceBrown','Yes',1500.00,'2025-02-02','Level2','User complained of spam','2025-02-01');

INSERT INTO campus_cybersecurity_incident VALUES
('INC002','Malware','2025-03-10','2025-03-14','Medium','LabPCs','Ransomware detected','Isolate network, restore backup','LabTechnician','Mitigated',0.60,'10.0.0.12','tlee','Desktop','BLD03','TCK1023','Outdated OS','Patch deployment','BobGreen','Yes',3000.00,'2025-03-11','Level3','Backup completed','2025-03-10');

INSERT INTO campus_cybersecurity_incident VALUES
('INC003','DDoS','2025-04-05','2025-04-05','Critical','WebPortal','High traffic flood','Activate mitigation service','NetworkOps','Resolved',0.95,'203.0.113.7','-','Router','BLD02','TCK1045','Botnet','Traffic filtering','CarolWhite','Yes',5000.00,'2025-04-05','Level1','Notice posted','2025-04-05');

-- Food Service Vendor details
CREATE TABLE food_service_vendor
(
    vendor_id            TEXT PRIMARY KEY,
    vendor_name          TEXT,
    contact_name         TEXT,
    contact_email        TEXT,
    contact_phone        TEXT,
    service_type         TEXT,
    contract_start_date  TEXT,
    contract_end_date    TEXT,
    payment_terms        TEXT,
    tax_id               TEXT,
    insurance_policy     TEXT,
    rating_score         REAL,
    health_inspection_id TEXT,
    preferred_menu_items TEXT,
    delivery_window      TEXT,
    pricing_structure    TEXT,
    allergens_handled    TEXT,
    sustainability_cert  TEXT,
    last_evaluation_date TEXT,
    active_flag          TEXT,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    region_code          TEXT,
    account_manager      TEXT
);

INSERT INTO food_service_vendor VALUES
('VND001','CampusCatering','EmilyClark','eclark@cater.com','5551112222','Catering','2024-01-01','2026-12-31','Net30','TX123456','INS001',4.5,'HI1001','Sandwiches, Salads','08:00-12:00','FlatRate','Gluten,Peanuts','GreenSeal','2025-01-15','Y','Preferred vendor','2024-12-01','2025-01-01','North','MarkTaylor');

INSERT INTO food_service_vendor VALUES
('VND002','SnackHub','MichaelBrown','mbrown@snackhub.com','5553334444','Snacks','2023-06-01','2025-05-31','Net45','TX654321','INS002',4.0,'HI1002','Chips, Fruit Cups','10:00-15:00','PerItem','None','None','2024-12-20','Y','Seasonal contract','2023-05-20','2024-06-01','South','LauraWhite');

INSERT INTO food_service_vendor VALUES
('VND003','FreshBite','SarahLee','slee@freshbite.com','5557778888','Meal Delivery','2025-02-15','2028-02-14','Net60','TX789012','INS003',3.8,'HI1003','Wraps, Bowls','12:00-18:00','Subscription','Dairy','EcoCert','2025-02-20','Y','New vendor trial','2025-02-10','2025-02-15','East','JamesKim');

-- Student Mental Health Session records
CREATE TABLE student_mental_health_session
(
    session_id            TEXT PRIMARY KEY,
    student_id            TEXT,
    counselor_id          TEXT,
    session_date          TEXT,
    session_type          TEXT,
    duration_minutes      INTEGER,
    location_code         TEXT,
    session_notes         TEXT,
    follow_up_required    TEXT,
    follow_up_date        TEXT,
    confidentiality_level TEXT,
    rating_score          REAL,
    referral_source       TEXT,
    insurance_coverage    TEXT,
    consent_given         TEXT,
    diagnosis_code        TEXT,
    treatment_plan        TEXT,
    assessment_tool       TEXT,
    emergency_contact     TEXT,
    emergency_phone       TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    status                TEXT,
    notes                 TEXT,
    department            TEXT,
    campus_region         TEXT
);

INSERT INTO student_mental_health_session VALUES
('SES001','STU1001','CNR2001','2025-03-05','Individual','60','MH001','Discussed anxiety coping','Y','2025-03-12','High',4.2','Referral','Covered','Y','F41.1','CBT weekly','GAD-7','JaneDoe','5551230987','2025-03-05','2025-03-06','Completed','No issues','Psychology','North');

INSERT INTO student_mental_health_session VALUES
('SES002','STU1002','CNR2002','2025-04-10','Group','90','MH002','Stress management workshop','N',NULL,'Medium',3.9','Self','NotCovered','Y','F33.0','Mindfulness','PHQ-9','JohnSmith','5559876543','2025-04-10','2025-04-10','Completed','High attendance','StudentAffairs','South');

INSERT INTO student_mental_health_session VALUES
('SES003','STU1003','CNR2003','2025-05-20','Telehealth','45','Online','Follow up on medication','Y','2025-06-01','High',4.5','Physician','Covered','Y','F20','Medication review','PHQ-9','EmilyWhite','5555551212','2025-05-20','2025-05-21','Scheduled','Awaiting lab results','HealthServices','East');

-- Facility Green Certification information
CREATE TABLE facility_green_certification
(
    cert_id                TEXT PRIMARY KEY,
    facility_id            TEXT,
    cert_type              TEXT,
    issue_date             TEXT,
    expiry_date            TEXT,
    certifying_body        TEXT,
    rating_level           TEXT,
    energy_savings_percent REAL,
    water_savings_percent  REAL,
    waste_reduction_percent REAL,
    renewable_energy_pct   REAL,
    hvac_efficiency        REAL,
    lighting_efficiency    REAL,
    building_area_sqft     INTEGER,
    floors_count           INTEGER,
    construction_year      INTEGER,
    retrofit_year          INTEGER,
    compliance_status      TEXT,
    notes                  TEXT,
    auditor_name           TEXT,
    audit_report_id        TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    active_flag            TEXT,
    region_code            TEXT,
    category               TEXT,
    green_star_rating      INTEGER
);

INSERT INTO facility_green_certification VALUES
('CERT001','FAC100','LEED Gold','2023-01-15','2028-01-14','USGBC','Gold',15.5,12.3,8.0,30.0,0.92,0.88,25000,5,1995,2018','Compliant','HVAC upgraded','AliceBrown','AR1001','2023-01-10','2023-01-15','Y','North','Academic',4');

INSERT INTO facility_green_certification VALUES
('CERT002','FAC200','Energy Star','2022-06-01','2027-05-31','EPA','Platinum',20.0,10.0,5.0,25.0,0.95,0.90,18000,4,2000,2015','Compliant','LED retrofit','BobGreen','AR1002','2022-05-20','2022-06-01','Y','South','Administration',5');

INSERT INTO facility_green_certification VALUES
('CERT003','FAC300','BREEAM Excellent','2024-03-20','2029-03-19','BRE','Excellent',18.0,14.0,10.0,40.0,0.94,0.91,30000,6,1985,2020','Compliant','Solar panels installed','CarolWhite','AR1003','2024-03-10','2024-03-20','Y','East','Research',5');

-- Alumni Media Feature records
CREATE TABLE alumni_media_feature
(
    feature_id            TEXT PRIMARY KEY,
    alumni_id             TEXT,
    publication_name      TEXT,
    article_title         TEXT,
    publish_date          TEXT,
    media_type            TEXT,
    url_link              TEXT,
    author_name           TEXT,
    summary               TEXT,
    reach_estimate        INTEGER,
    language              TEXT,
    region_targeted       TEXT,
    format_type           TEXT,
    featured_image_url    TEXT,
    interview_conducted   TEXT,
    interview_date        TEXT,
    sponsor_name          TEXT,
    ad_spot_cost          REAL,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    status                TEXT,
    verified_flag         TEXT,
    campaign_id           TEXT,
    platform              TEXT,
    audience_segment      TEXT
);

INSERT INTO alumni_media_feature VALUES
('MF001','ALU1001','TechTimes','Alumni Innovates AI','2025-02-10','Online','http://techtimes.com/ai','JohnDoe','Profile of AI startup','50000','English','Global','Article','http://images.com/ai.jpg','Y','2025-02-08','TechCorp','2000.00','Highlight of grant','2025-02-01','2025-02-10','Published','Y','CAMP001','Website','TechCommunity');

INSERT INTO alumni_media_feature VALUES
('MF002','ALU1002','HealthJournal','Alumni Leads Health Initiative','2025-04-15','Print','http://healthjournal.com/initiative','JaneSmith','Discusses community health program','30000','Spanish','LatinAmerica','Feature','http://images.com/health.jpg','N',NULL,'HealthOrg','1500.00','Focus on outreach','2025-04-01','2025-04-15','Published','Y','CAMP002','Print','HealthSector');

INSERT INTO alumni_media_feature VALUES
('MF003','ALU1003','EduMag','Alumni Wins Teaching Award','2025-05-20','Online','http://edumag.com/award','MikeLee','Celebrates teaching excellence','40000','English','NorthAmerica','Video','http://images.com/award.jpg','Y','2025-05-18','EduFund','2500.00','Video interview','2025-05-10','2025-05-20','Published','Y','CAMP003','YouTube','Education');

-- Grant Fund Allocation details
CREATE TABLE grant_fund_allocation
(
    allocation_id            TEXT PRIMARY KEY,
    grant_id                 TEXT,
    fiscal_year              TEXT,
    allocated_amount         REAL,
    spent_amount             REAL,
    remaining_amount         REAL,
    allocation_category      TEXT,
    department_code          TEXT,
    project_code             TEXT,
    approval_date            TEXT,
    approved_by              TEXT,
    funding_source           TEXT,
    cost_center              TEXT,
    expense_type             TEXT,
    priority_level           TEXT,
    justification           TEXT,
    compliance_requirements TEXT,
    audit_flag               TEXT,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    status                   TEXT,
    review_cycle             TEXT,
    last_review_date         TEXT,
    next_review_date         TEXT,
    program_manager          TEXT,
    external_partner         TEXT
);

INSERT INTO grant_fund_allocation VALUES
('ALL001','GRNT100','2025',500000.00,150000.00,350000.00,'Research','DEP01','PRJ001','2025-01-10','DrAllen','Federal','CC100','Equipment','High','New lab equipment','Yes','N','Initial allocation','2025-01-01','2025-01-15','Active','Annual','2025-12-31','2026-12-31','DrAllen','PartnerA');

INSERT INTO grant_fund_allocation VALUES
('ALL002','GRNT101','2025',300000.00,120000.00,180000.00,'Community','DEP02','PRJ002','2025-02-05','MsBaker','State','CC101','Staffing','Medium','Outreach program','Yes','N','Mid-year allocation','2025-02-01','2025-02-10','Active','Biannual','2025-08-31','2026-02-28','MsBaker','PartnerB');

INSERT INTO grant_fund_allocation VALUES
('ALL003','GRNT102','2025',200000.00,50000.00,150000.00,'Infrastructure','DEP03','PRJ003','2025-03-12','ProfClark','Private','CC102','Construction','Low','Building renovation','Yes','N','Quarterly allocation','2025-03-01','2025-03-15','Active','Quarterly','2025-06-30','2025-09-30','ProfClark','PartnerC');

-- Community Event Feedback records
CREATE TABLE community_event_feedback
(
    feedback_id          TEXT PRIMARY KEY,
    event_id             TEXT,
    participant_id       TEXT,
    feedback_date        TEXT,
    overall_rating       REAL,
    comment              TEXT,
    suggestion           TEXT,
    likelihood_to_return TEXT,
    age_group            TEXT,
    gender               TEXT,
    occupation           TEXT,
    city                 TEXT,
    state                TEXT,
    country              TEXT,
    transport_mode       TEXT,
    duration_minutes     INTEGER,
    food_quality_rating  REAL,
    venue_comfort_rating REAL,
    staff_helpfulness_rating REAL,
    accessibility_rating REAL,
    safety_feeling_rating REAL,
    event_timing_rating  REAL,
    communication_rating REAL,
    created_at           TEXT,
    updated_at           TEXT,
    status               TEXT,
    notes                TEXT,
    survey_method        TEXT,
    follow_up_required   TEXT,
    follow_up_date       TEXT
);

INSERT INTO community_event_feedback VALUES
('FBK001','EVT1001','PART001','2025-03-12',4.5','Great event, learned a lot','Add more breakout sessions','Very Likely','25-34','Female','Student','Springfield','IL','USA','Car','180',4.2,4.6,4.8,4.9,4.7,4.5,4.4','2025-03-10','2025-03-12','Submitted','','Online','Y','2025-04-01');

INSERT INTO community_event_feedback VALUES
('FBK002','EVT1002','PART002','2025-04-20',3.8','Good but crowd was large','Improve crowd control','Likely','35-44','Male','Teacher','Rivertown','TX','USA','Bus','120',3.5,3.9,3.7,3.8,3.9,3.6,3.7','2025-04-18','2025-04-20','Submitted','','Email','N',NULL);

INSERT INTO community_event_feedback VALUES
('FBK003','EVT1003','PART003','2025-05-05',4.9','Excellent organization','None','Very Likely','18-24','Nonbinary','Engineer','Lakeview','CA','USA','Bike','90',5.0,5.0,5.0,5.0,5.0,5.0,5.0','2025-05-03','2025-05-05','Submitted','','Phone','Y','2025-06-01');

-- Digital Learning Module Progress tracking
CREATE TABLE digital_learning_module_progress
(
    progress_id            TEXT PRIMARY KEY,
    student_id             TEXT,
    module_id              TEXT,
    enrollment_date        TEXT,
    start_date             TEXT,
    completion_date        TEXT,
    status                 TEXT,
    total_units            INTEGER,
    units_completed        INTEGER,
    time_spent_minutes    INTEGER,
    last_accessed          TEXT,
    score_average          REAL,
    certification_awarded  TEXT,
    instructor_id          TEXT,
    cohort_code            TEXT,
    device_used            TEXT,
    ip_address             TEXT,
    browser_type           TEXT,
    os_version             TEXT,
    dropout_flag           TEXT,
    feedback_score         REAL,
    improvement_needed    TEXT,
    next_module_id         TEXT,
    prerequisite_met       TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    notes                  TEXT,
    external_partner       TEXT,
    source_of_enrollment   TEXT,
    referral_code          TEXT
);

INSERT INTO digital_learning_module_progress VALUES
('PROG001','STU2001','MOD100','2025-01-10','2025-01-12','2025-02-20','Completed',10,10,540,'2025-02-18',92.5,'Yes','INST01','C001','Laptop','192.168.2.10','Chrome','Windows10','N',4.5','No','MOD101','Y','2025-01-08','2025-02-21','Excellent progress','PartnerX','Self','REF001');

INSERT INTO digital_learning_module_progress VALUES
('PROG002','STU2002','MOD200','2025-03-01','2025-03-05',NULL,'InProgress',8,5,300,'2025-04-10',78.0,'No','INST02','C002','Tablet','10.0.0.5','Safari','iOS14','N',3.8','Yes','MOD201','N','2025-02-28','2025-04-12','Needs improvement','PartnerY','Advisor','REF002');

INSERT INTO digital_learning_module_progress VALUES
('PROG003','STU2003','MOD300','2025-02-15','2025-02-16','2025-03-10','Completed',12,12,720,'2025-03-08',88.0,'Yes','INST03','C003','Desktop','172.16.0.2','Firefox','Linux','N',4.2','No','MOD301','Y','2025-02-14','2025-03-12','Good completion','PartnerZ','Scholarship','REF003');

-- Environmental Impact Observation logs
CREATE TABLE environmental_impact_observation
(
    observation_id          TEXT PRIMARY KEY,
    site_id                 TEXT,
    observation_date        TEXT,
    observer_name           TEXT,
    temperature_celsius     REAL,
    humidity_percent        REAL,
    air_quality_index       INTEGER,
    noise_level_db          REAL,
    light_intensity_lux     REAL,
    soil_moisture_percent  REAL,
    water_quality_ph        REAL,
    wildlife_sightings      TEXT,
    vegetation_health_index REAL,
    waste_volume_cubic_m    REAL,
    carbon_emission_tons    REAL,
    renewable_energy_used_kwh REAL,
    energy_consumption_kwh  REAL,
    comments                TEXT,
    corrective_action       TEXT,
    status                  TEXT,
    follow_up_required      TEXT,
    follow_up_date          TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    risk_level              TEXT,
    compliance_status       TEXT,
    reporting_period        TEXT,
    external_audit_flag     TEXT,
    auditor_name            TEXT
);

INSERT INTO environmental_impact_observation VALUES
('OBS001','SITE100','2025-03-01','AnnaGreen',22.5,55.0,45,62.0,350.0,30.0,7.2','Deer, Fox','B','2.5','0.1','500','1200','500','No issues noted','N','2025-04-01','2025-03-02','2025-03-01','Low','Compliant','Q1','N','JohnDoe');

INSERT INTO environmental_impact_observation VALUES
('OBS002','SITE200','2025-04-15','BenBrown',18.0,70.0,80,70.5,400.0,25.0,6.8','Sparrow','C','A','0.0','600','1500','800','High noise near construction','Y','2025-05-15','2025-04-16','2025-04-15','Medium','Pending','Q2','Y','EmilySmith');

INSERT INTO environmental_impact_observation VALUES
('OBS003','SITE300','2025-05-20','ClaraWhite',25.0,40.0,30,55.0,300.0,35.0,7.5','Rabbit','A','A','0.2','450','1100','550','All parameters within targets','N','2025-06-20','2025-05-21','2025-05-20','Low','Compliant','Q2','N','MichaelLee');