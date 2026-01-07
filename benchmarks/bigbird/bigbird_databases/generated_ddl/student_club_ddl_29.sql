-- Research collaboration agreement between institutions
CREATE TABLE research_collaboration_agreement
(
    agreement_id          TEXT PRIMARY KEY,
    project_title         TEXT,
    start_date            TEXT,
    end_date              TEXT,
    lead_institution      TEXT,
    partner_institution   TEXT,
    funding_amount        REAL,
    funding_source        TEXT,
    agreement_status      TEXT,
    confidentiality_level TEXT,
    data_sharing_policy   TEXT,
    intellectual_property TEXT,
    review_cycle          TEXT,
    last_review_date      TEXT,
    signatory_lead        TEXT,
    signatory_partner     TEXT,
    amendment_number      INTEGER,
    amendment_date        TEXT,
    notes                 TEXT,
    created_at            TEXT
);
INSERT INTO research_collaboration_agreement VALUES
('A001','AI Joint Study','2023-01-15','2025-12-31','University A','Institute B',250000.00,'Federal Grant','Active','High','Open','Shared','Annual','2024-01-10','Dr Smith','Prof Lee',2,'2024-06-01','Initial amendment','2024-01-01');
INSERT INTO research_collaboration_agreement VALUES
('A002','Quantum Computing Partnership','2022-05-01','2026-04-30','Tech University','Quantum Labs',500000.00,'Industry Sponsor','Pending','Medium','Restricted','Joint','Biannual','2023-05-15','Dr Chen','Dr Patel',0,NULL,'Awaiting signatures','2022-05-01');
INSERT INTO research_collaboration_agreement VALUES
('A003','Renewable Energy Pilot','2024-03-20','2027-03-19','College of Engineering','Green Energy Co',150000.00,'State Funding','Active','Low','Exclusive','Quarterly','2024-09-20','Dr Gomez','Ms Rivera',1,'2024-09-20','First amendment added','2024-03-20');

-- Student health screening records
CREATE TABLE student_health_screening
(
    screening_id         TEXT PRIMARY KEY,
    student_id           TEXT,
    screening_date       TEXT,
    height_cm            INTEGER,
    weight_kg            REAL,
    bmi                  REAL,
    blood_pressure       TEXT,
    vision_acuity        TEXT,
    hearing_test         TEXT,
    dental_check         TEXT,
    immunization_status  TEXT,
    allergy_info         TEXT,
    chronic_conditions   TEXT,
    medication_list      TEXT,
    physician_notes      TEXT,
    screening_location   TEXT,
    follow_up_required   TEXT,
    follow_up_date       TEXT,
    registrar            TEXT,
    created_at           TEXT
);
INSERT INTO student_health_screening VALUES
('S001','STU1001','2024-02-10',170,68.5,23.6,'120/80','20/20','Normal','Good','Up to date','None','Asthma','Albuterol','All clear','Health Center A','No',NULL,'Registrar A','2024-02-10');
INSERT INTO student_health_screening VALUES
('S002','STU1002','2024-03-05',162,55.0,21.0,'110/70','20/25','Normal','Cavities','Up to date','Peanuts','None','Ibuprofen','Mild anemia noted','Health Center B','Yes','2024-04-01','Registrar B','2024-03-05');
INSERT INTO student_health_screening VALUES
('S003','STU1003','2024-01-22',180,80.2,24.7,'130/85','20/20','Normal','Good','Pending','Shellfish','Diabetes','Metformin','Elevated blood sugar','Health Center A','Yes','2024-02-15','Registrar C','2024-01-22');

-- Campus Wi‑Fi usage statistics
CREATE TABLE campus_wifi_usage
(
    usage_id                TEXT PRIMARY KEY,
    access_point_id         TEXT,
    date                    TEXT,
    hour                    INTEGER,
    device_count            INTEGER,
    avg_signal_strength    REAL,
    total_data_mb           REAL,
    uptime_minutes          INTEGER,
    ssid                     TEXT,
    security_mode           TEXT,
    firmware_version        TEXT,
    mac_address             TEXT,
    location_description    TEXT,
    maintenance_status      TEXT,
    last_maintenance_date   TEXT,
    notes                    TEXT,
    created_by               TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    data_cap_exceeded        TEXT
);
INSERT INTO campus_wifi_usage VALUES
('U001','AP100','2024-04-01',10,45, -65.2, 1234.5, 540,'CampusWiFi','WPA2','1.0.3','00:1A:2B:3C:4D:5E','Library East','OK','2024-03-20','No issues','AdminA','2024-04-01','2024-04-01','No');
INSERT INTO campus_wifi_usage VALUES
('U002','AP200','2024-04-01',14,60, -70.1, 2100.0, 540,'CampusWiFi','WPA2','1.0.3','00:1A:2B:3C:4D:5F','Student Center','OK','2024-03-25','High traffic','AdminB','2024-04-01','2024-04-01','No');
INSERT INTO campus_wifi_usage VALUES
('U003','AP300','2024-04-01',20,30, -60.5, 800.3, 540,'CampusWiFi','WPA3','1.2.0','00:1A:2B:3C:4D:60','Engineering Hall','Maintenance required','2024-03-28','Signal fluctuation','AdminC','2024-04-01','2024-04-01','Yes');

-- Facility decommission log
CREATE TABLE facility_decommission_log
(
    decommission_id          TEXT PRIMARY KEY,
    facility_id              TEXT,
    decommission_date        TEXT,
    reason                   TEXT,
    decommission_method      TEXT,
    hazardous_materials_handled TEXT,
    disposal_company         TEXT,
    cost                     REAL,
    approval_status          TEXT,
    approved_by              TEXT,
    notes                    TEXT,
    asset_tag                TEXT,
    location                 TEXT,
    last_inspection_date    TEXT,
    condition_before        TEXT,
    condition_after         TEXT,
    equipment_removed        TEXT,
    recycling_percentage    REAL,
    final_report_path       TEXT,
    created_at               TEXT
);
INSERT INTO facility_decommission_log VALUES
('D001','FAC100','2024-03-15','Obsolete','Dismantle','Asbestos','EcoDispose Inc',12000.00,'Approved','Director X','No issues','AT-1001','North Wing','2024-02-28','Good','Scrapped','HVAC system','85.0','/reports/D001.pdf','2024-03-15');
INSERT INTO facility_decommission_log VALUES
('D002','FAC200','2024-02-10','Safety risk','Demolition','Lead Paint','SafeRemove Ltd',25000.00,'Pending','Director Y','Awaiting permits','AT-2002','South Wing','2024-01-20','Fair','Demolished','Electrical panels','70.0','/reports/D002.pdf','2024-02-10');
INSERT INTO facility_decommission_log VALUES
('D003','FAC300','2024-04-05','Consolidation','Relocation','None','MoveIt Co',8000.00,'Approved','Director Z','Moved to new campus','AT-3003','East Annex','2024-03-25','Excellent','Intact','Furniture set','100.0','/reports/D003.pdf','2024-04-05');

-- Grant review meeting details
CREATE TABLE grant_review_meeting
(
    meeting_id               TEXT PRIMARY KEY,
    grant_cycle              TEXT,
    meeting_date             TEXT,
    start_time               TEXT,
    end_time                 TEXT,
    chairperson              TEXT,
    committee_members        TEXT,
    agenda                   TEXT,
    minutes_path             TEXT,
    decisions                TEXT,
    grant_ids_reviewed       TEXT,
    total_requested          REAL,
    total_approved           REAL,
    next_meeting_date        TEXT,
    location                 TEXT,
    virtual_link             TEXT,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    status                   TEXT
);
INSERT INTO grant_review_meeting VALUES
('M001','2024-Q1','2024-04-10','09:00','11:30','Dr Allen','Dr Lee,Prof Kim,Ms Patel','Budget allocation','/minutes/M001.pdf','Approved 3 grants','G1001,G1002,G1003',750000.00,650000.00,'2024-07-10','Conference Room 1','https://meet.example.com/M001','All items covered','2024-04-10','2024-04-10','Closed');
INSERT INTO grant_review_meeting VALUES
('M002','2024-Q2','2024-06-15','13:00','15:00','Prof Singh','Dr Zhou,Ms Rivera,Mr Gomez','Policy updates','/minutes/M002.pdf','Deferred 2 proposals','G2001,G2002',500000.00,0.00,'2024-09-15','Conference Room 2','https://meet.example.com/M002','Need more data','2024-06-15','2024-06-15','Open');
INSERT INTO grant_review_meeting VALUES
('M003','2024-Q3','2024-09-20','10:00','12:45','Ms Johnson','Dr Carter,Prof Nguyen,Mr Lin','Final approvals','/minutes/M003.pdf','Approved all pending','G3001,G3002,G3003,G3004',1200000.00,1150000.00,'2025-01-20','Main Auditorium','https://meet.example.com/M003','Successful session','2024-09-20','2024-09-20','Closed');

-- Environmental impact assessment records
CREATE TABLE environmental_impact_assessment
(
    assessment_id            TEXT PRIMARY KEY,
    project_id               TEXT,
    assessment_date          TEXT,
    assessor_name            TEXT,
    region                   TEXT,
    impact_category          TEXT,
    severity_level           TEXT,
    mitigation_plan          TEXT,
    baseline_emissions       REAL,
    projected_emissions      REAL,
    water_usage_liters       REAL,
    waste_generated_tons     REAL,
    biodiversity_score       REAL,
    community_feedback       TEXT,
    regulatory_compliance    TEXT,
    approval_status          TEXT,
    approved_by              TEXT,
    notes                    TEXT,
    document_path            TEXT,
    created_at               TEXT
);
INSERT INTO environmental_impact_assessment VALUES
('E001','PRJ100','2024-01-20','Dr Green','North Valley','Air Quality','Medium','Install filters','1500.0','1200.0','30000.0','5.2','8.5','Positive','Compliant','Approved','Director A','No issues','/docs/E001.pdf','2024-01-20');
INSERT INTO environmental_impact_assessment VALUES
('E002','PRJ200','2024-03-12','Ms Blue','South River','Water Usage','High','Reuse water system','0.0','800.0','500000.0','2.0','7.0','Mixed','Partially compliant','Pending','Director B','Requires additional data','/docs/E002.pdf','2024-03-12');
INSERT INTO environmental_impact_assessment VALUES
('E003','PRJ300','2024-05-05','Prof Brown','East Hills','Soil Contamination','Low','Remediation plan','200.0','150.0','0.0','1.5','9.0','Positive','Compliant','Approved','Director C','All mitigation steps in place','/docs/E003.pdf','2024-05-05');

-- Digital platform feature registry
CREATE TABLE digital_platform_feature
(
    feature_id               TEXT PRIMARY KEY,
    platform_name            TEXT,
    feature_name             TEXT,
    description              TEXT,
    launch_date              TEXT,
    status                   TEXT,
    version                  TEXT,
    owner_team               TEXT,
    priority                 INTEGER,
    estimated_effort_hours   INTEGER,
    actual_effort_hours      INTEGER,
    user_impact_score        REAL,
    dependencies             TEXT,
    rollout_strategy         TEXT,
    feedback_score           REAL,
    bugs_reported            INTEGER,
    bugs_fixed               INTEGER,
    last_updated             TEXT,
    retired_flag             TEXT,
    created_at               TEXT
);
INSERT INTO digital_platform_feature VALUES
('F001','CampusPortal','Course Scheduler','Allows faculty to schedule courses','2023-08-01','Active','v2.3','Team Alpha',1,200,210,9.2,'Database,Auth','Phased rollout','8.5',12,12,'2024-03-10','No','2023-08-01');
INSERT INTO digital_platform_feature VALUES
('F002','CampusPortal','Mobile Alerts','Push notifications for campus events','2024-02-15','Beta','v1.0','Team Beta',2,120,130,7.8,'Messaging Service','Pilot program','7.0',5,3,'2024-04-01','No','2024-02-15');
INSERT INTO digital_platform_feature VALUES
('F003','ResearchHub','Data Visualization','Interactive charts for research data','2023-11-20','Deprecated','v3.1','Team Gamma',3,80,80,6.5,'ChartJS','Retired','6.0',2,2,'2024-01-05','Yes','2023-11-20');

-- Transportation route incident log
CREATE TABLE transportation_route_incident
(
    incident_id              TEXT PRIMARY KEY,
    route_id                 TEXT,
    incident_date            TEXT,
    incident_time            TEXT,
    incident_type            TEXT,
    severity                 TEXT,
    description              TEXT,
    vehicles_involved        TEXT,
    passengers_affected      INTEGER,
    response_time_minutes    INTEGER,
    resolved                 INTEGER,
    resolution_details       TEXT,
    reported_by              TEXT,
    follow_up_action         TEXT,
    follow_up_date           TEXT,
    cost_estimate            REAL,
    insurance_claim_number   TEXT,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT
);
INSERT INTO transportation_route_incident VALUES
('TI001','R100','2024-03-22','08:45','Collision','High','Two shuttles collided at intersection','Shuttle A;Shuttle B',12,15,1,'Repaired both vehicles','Operator X','Safety audit','2024-04-05',5000.00,'ICN12345','No injuries','2024-03-22','2024-04-06');
INSERT INTO transportation_route_incident VALUES
('TI002','R200','2024-04-10','14:30','Mechanical Failure','Medium','Bus engine stall causing delay','Bus 42',0,10,1,'Engine replaced','Operator Y','Preventive maintenance','2024-04-20',3000.00','ICN54321','Service resumed after 30 mins','2024-04-10','2024-04-21');
INSERT INTO transportation_route_incident VALUES
('TI003','R300','2024-02-18','19:05','Slip Hazard','Low','Wet floor at depot caused slip','Maintenance Van',1,5,1,'Area dried and signage added','Operator Z','Floor mat replacement','2024-03-01',0.00,'ICN67890','Minor injury','2024-02-18','2024-03-02');

-- Community engagement metrics
CREATE TABLE community_engagement_metric
(
    metric_id                TEXT PRIMARY KEY,
    program_id               TEXT,
    metric_date              TEXT,
    participants             INTEGER,
    volunteer_hours          REAL,
    outreach_events          INTEGER,
    social_media_mentions    INTEGER,
    press_articles           INTEGER,
    community_feedback_score REAL,
    funds_raised             REAL,
    partnerships_established INTEGER,
    new_members_added        INTEGER,
    satisfaction_survey_score REAL,
    notes                    TEXT,
    created_by               TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    status                   TEXT,
    target_participants      INTEGER,
    target_funds             REAL
);
INSERT INTO community_engagement_metric VALUES
('CM001','PRG10','2024-03-31',250,480.5,5,120,3,8.7,15000.00,4,30,9.0,'Excellent turnout','Coordinator A','2024-04-01','2024-04-01','Met','300','20000');
INSERT INTO community_engagement_metric VALUES
('CM002','PRG20','2024-04-30',180,320.0,3,80,1,7.5,9000.00,2,15,8.0,'Good engagement','Coordinator B','2024-05-01','2024-05-01','Below target','250','15000');
INSERT INTO community_engagement_metric VALUES
('CM003','PRG30','2024-02-28',400,720.0,8,200,5,9.2,25000.00,6,45,9.5','Record participation','Coordinator C','2024-03-01','2024-03-01','Exceeded','350','30000');

-- Sustainability training courses
CREATE TABLE sustainability_training_course
(
    course_id               TEXT PRIMARY KEY,
    course_name             TEXT,
    provider                TEXT,
    start_date              TEXT,
    end_date                TEXT,
    duration_hours          INTEGER,
    audience                TEXT,
    certifications_awarded  TEXT,
    instructor              TEXT,
    max_participants        INTEGER,
    enrolled                INTEGER,
    completed               INTEGER,
    pass_rate               REAL,
    feedback_score          REAL,
    materials_url           TEXT,
    cost_per_participant    REAL,
    total_cost              REAL,
    location                TEXT,
    status                  TEXT,
    created_at              TEXT
);
INSERT INTO sustainability_training_course VALUES
('SC001','Zero Waste Practices','EcoInstitute','2024-04-05','2024-04-07',12,'Staff','Certificate of Waste Management','Ms Green',25,22,20,90.0,8.5,'http://materials.example.com/zerowaste','50.00','1100.00','Training Room 1','Completed','2024-04-05');
INSERT INTO sustainability_training_course VALUES
('SC002','Energy Efficiency 101','EnergyPlus','2024-05-10','2024-05-12',10,'Students','Energy Saver Badge','Mr Watt',30,28,27,96.0,9.2','http://materials.example.com/energy101','40.00','1120.00','Lab 3','Scheduled','2024-05-10');
INSERT INTO sustainability_training_course VALUES
('SC003','Sustainable Procurement','SupplyChain Academy','2024-03-01','2024-03-03',14,'Procurement Team','Sustainable Procurement Certificate','Dr Greenfield',20,18,18,100.0,9.8','http://materials.example.com/procurement','60.00','1080.00','Conference Hall B','Completed','2024-03-01');