-- Policy documents maintained by the institution
CREATE TABLE policy_document
(
    doc_id                 TEXT PRIMARY KEY,
    title                  TEXT,
    version                TEXT,
    effective_date         TEXT,
    review_date            TEXT,
    status                 TEXT,
    category               TEXT,
    author                 TEXT,
    department             TEXT,
    approvals_required    INTEGER,
    approved_by            TEXT,
    approval_date          TEXT,
    confidentiality_level  TEXT,
    file_path              TEXT,
    checksum               TEXT,
    file_size              INTEGER,
    description            TEXT,
    tags                   TEXT,
    related_policy         TEXT,
    is_active              TEXT
);

INSERT INTO policy_document (doc_id,title,version,effective_date,review_date,status,category,author,department,approvals_required,approved_by,approval_date,confidentiality_level,file_path,checksum,file_size,description,tags,related_policy,is_active) VALUES
('DOC001','Campus Safety Policy','v1','2023-01-01','2024-01-01','Active','Safety','John Doe','Public Safety',2,'Jane Smith','2023-12-15','Confidential','/files/policy1.pdf','abc123',2048,'Defines campus safety procedures','safety,policy','DOC000','Yes'),
('DOC002','Data Privacy Guidelines','v2','2022-06-15','2023-06-15','Active','Privacy','Alice Johnson','IT Services',1,'Bob Lee','2023-05-20','Restricted','/files/policy2.pdf','def456',3072,'Guidelines for handling personal data','privacy,data','DOC001','Yes'),
('DOC003','Research Ethics Manual','v3','2021-09-01','2022-09-01','Retired','Research','Michael Brown','Research Office',3,'Linda Green','2022-08-20','Public','/files/policy3.pdf','ghi789',4096,'Ethical standards for research','ethics,research','DOC002','No');

-- Reports of incidents occurring on campus
CREATE TABLE campus_incident_report
(
    incident_id               TEXT PRIMARY KEY,
    incident_type             TEXT,
    report_date               TEXT,
    location                  TEXT,
    reported_by               TEXT,
    severity                  TEXT,
    description               TEXT,
    actions_taken             TEXT,
    resolution_date           TEXT,
    status                    TEXT,
    related_event_id          TEXT,
    witness_count             INTEGER,
    external_agency_involved  TEXT,
    followup_required         TEXT,
    followup_date             TEXT,
    cost_estimate             REAL,
    notes                     TEXT,
    photo_path                TEXT,
    video_path                TEXT,
    is_reported_to_authorities TEXT
);

INSERT INTO campus_incident_report (incident_id,incident_type,report_date,location,reported_by,severity,description,actions_taken,resolution_date,status,related_event_id,witness_count,external_agency_involved,followup_required,followup_date,cost_estimate,notes,photo_path,video_path,is_reported_to_authorities) VALUES
('INC001','Slip','2023-03-10','Science Hall','Emily Clark','Low','Student slipped on wet floor','Cleaned area','2023-03-11','Closed','EVENT100',2,'None','No','','0','No injuries','/photos/inc001.jpg','/videos/inc001.mp4','No'),
('INC002','Theft','2023-04-22','Library','David Kim','Medium','Missing laptop from study room','Police notified','2023-04-25','Open','EVENT101',1,'Police','Yes','2023-05-01','1500','Investigation ongoing','/photos/inc002.jpg','/videos/inc002.mp4','Yes'),
('INC003','Fire Alarm','2023-05-05','Dormitory A','Laura Patel','High','Fire alarm triggered false','Evacuated building','2023-05-05','Closed','EVENT102',0,'Fire Dept','No','','0','System tested','/photos/inc003.jpg','/videos/inc003.mp4','Yes');

-- Networks for collaborative research efforts
CREATE TABLE research_collaboration_network
(
    network_id               TEXT PRIMARY KEY,
    network_name             TEXT,
    focus_area               TEXT,
    lead_institution         TEXT,
    contact_person           TEXT,
    contact_email            TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    funding_source           TEXT,
    total_budget             REAL,
    member_institutions      TEXT,
    partnership_type         TEXT,
    website                  TEXT,
    description              TEXT,
    data_sharing_policy      TEXT,
    governance_model         TEXT,
    meeting_frequency        TEXT,
    last_meeting_date        TEXT,
    next_meeting_date        TEXT,
    is_active                TEXT
);

INSERT INTO research_collaboration_network (network_id,network_name,focus_area,lead_institution,contact_person,contact_email,start_date,end_date,funding_source,total_budget,member_institutions,partnership_type,website,description,data_sharing_policy,governance_model,meeting_frequency,last_meeting_date,next_meeting_date,is_active) VALUES
('NET001','NanoTech Alliance','Nanomaterials','University A','Dr Sarah Lee','slee@unia.edu','2022-01-01','2025-12-31','NSF','2500000','University A;University B;Institute C','Consortium','http://nanotech.org','Collaboration on nanotech research','Open','Board','Quarterly','2023-11-15','2024-02-15','Yes'),
('NET002','AI Health Initiative','Artificial Intelligence in Healthcare','Hospital X','Mr Tom Wu','twu@hospitalx.org','2021-06-15','2024-06-14','DARPA','1800000','Hospital X;Medical Center Y;University Z','Joint Venture','http://aihealth.org','AI applications for patient care','Restricted','Committee','Biannual','2023-09-01','2024-03-01','Yes'),
('NET003','Climate Data Hub','Climate Change','Institute D','Dr Ana Gomez','agomez@instd.org','2020-03-01','2026-02-28','EPA','3200000','Institute D;University E;Agency F','Public-Private','http://climatehub.org','Sharing climate datasets globally','Open','Council','Annual','2023-08-20','2024-08-20','Yes');

-- Inventory of technology assets owned by the campus
CREATE TABLE technology_asset_inventory
(
    asset_id               TEXT PRIMARY KEY,
    asset_type             TEXT,
    manufacturer           TEXT,
    model_number           TEXT,
    serial_number          TEXT,
    purchase_date          TEXT,
    warranty_expiry        TEXT,
    cost                   REAL,
    assigned_to            TEXT,
    department             TEXT,
    location               TEXT,
    status                 TEXT,
    depreciation_years     INTEGER,
    current_value          REAL,
    last_maintenance_date  TEXT,
    maintenance_provider   TEXT,
    asset_tag              TEXT,
    ip_address             TEXT,
    mac_address            TEXT,
    notes                  TEXT
);

INSERT INTO technology_asset_inventory (asset_id,asset_type,manufacturer,model_number,serial_number,purchase_date,warranty_expiry,cost,assigned_to,department,location,status,depreciation_years,current_value,last_maintenance_date,maintenance_provider,asset_tag,ip_address,mac_address,notes) VALUES
('ASSET001','Server','Dell','PowerEdge R740','SN123456','2021-04-15','2024-04-15','15000','IT001','IT Services','Data Center 1','In Service',5,12000,'2023-10-01','TechSupport Co','TAG001','192.168.1.10','00-14-22-01-23-45','Primary database server'),
('ASSET002','Laptop','Lenovo','ThinkPad X1','SN789012','2022-01-20','2025-01-20','2500','STU1001','Engineering','Engineering Lab 3','In Service',3,2100,'2023-09-15','Campus Repair','TAG002','192.168.2.45','00-15-17-22-33-44','Issued to graduate student'),
('ASSET003','Projector','Epson','EB-U05','SN345678','2020-09-05','2023-09-05','800','FAC001','Facilities','Auditorium','Retired',4,200,'2022-12-10','Facility Services','TAG003','','','Stored in inventory');

-- Environmental sensor stations deployed across campus
CREATE TABLE environmental_sensor_station
(
    station_id               TEXT PRIMARY KEY,
    station_name             TEXT,
    latitude                 REAL,
    longitude                REAL,
    installation_date        TEXT,
    sensor_type              TEXT,
    measurement_units        TEXT,
    calibration_date         TEXT,
    last_data_timestamp      TEXT,
    status                   TEXT,
    owner_department         TEXT,
    data_endpoint            TEXT,
    firmware_version         TEXT,
    power_source             TEXT,
    battery_level            INTEGER,
    connectivity_type        TEXT,
    signal_strength          INTEGER,
    notes                    TEXT,
    responsible_person       TEXT,
    contact_number           TEXT
);

INSERT INTO environmental_sensor_station (station_id,station_name,latitude,longitude,installation_date,sensor_type,measurement_units,calibration_date,last_data_timestamp,status,owner_department,data_endpoint,firmware_version,power_source,battery_level,connectivity_type,signal_strength,notes,responsible_person,contact_number) VALUES
('STA001','North Quad Air','40.7128','-74.0060','2022-05-10','AirQuality','PPM','2023-05-01','2023-12-01','Active','Facilities','http://sensors.univ.edu/sta001','1.2.3','Solar',95,'WiFi',-70','Monitors CO2 levels','Mike Turner','555-1234'),
('STA002','South Pond Water','40.7135','-74.0055','2021-08-22','WaterQuality','mg/L','2023-02-15','2023-12-01','Active','Environmental Science','http://sensors.univ.edu/sta002','2.0.1','Mains',100,'Ethernet',-60','Measures pH and turbidity','Sara Lee','555-5678'),
('STA003','East Parking Noise','40.7140','-74.0040','2020-11-30','Noise','dB','2022-11-30','2023-12-01','Inactive','Campus Safety','http://sensors.univ.edu/sta003','1.0.0','Battery',40,'Cellular',-80','Sensor decommissioned','John Patel','555-9012');

-- Reviews of scholarship applications
CREATE TABLE scholarship_application_review
(
    review_id               TEXT PRIMARY KEY,
    application_id          TEXT,
    reviewer_id             TEXT,
    review_date             TEXT,
    score                   REAL,
    recommendation          TEXT,
    comments                TEXT,
    review_round            INTEGER,
    is_final                TEXT,
    approval_status         TEXT,
    approved_by             TEXT,
    approval_date           TEXT,
    funding_amount          REAL,
    eligibility_flags       TEXT,
    conflict_of_interest    TEXT,
    revised_score           REAL,
    final_decision          TEXT,
    notes                   TEXT,
    reviewer_department     TEXT,
    reviewer_email          TEXT,
    review_duration_days    INTEGER
);

INSERT INTO scholarship_application_review (review_id,application_id,reviewer_id,review_date,score,recommendation,comments,review_round,is_final,approval_status,approved_by,approval_date,funding_amount,eligibility_flags,conflict_of_interest,revised_score,final_decision,notes,reviewer_department,reviewer_email,review_duration_days) VALUES
('REV001','APP1001','REV_A','2023-06-01',85,'Strong','Excellent academic record',1,'No','Pending','', '',5000,'None','No',87,'Approved','', 'Scholarships Office','rev_a@univ.edu',14),
('REV002','APP1002','REV_B','2023-06-03',72,'Moderate','Good but limited research experience',2,'Yes','Approved','ADMIN01','2023-06-05',3000,'GPA<3.5','No',74,'Approved','', 'Graduate Studies','rev_b@univ.edu',10),
('REV003','APP1003','REV_C','2023-06-05',60,'Weak','Needs improvement in personal statement',1,'No','Rejected','', '',0,'Missing transcripts','Yes',60,'Rejected','Applicant will be notified', 'Financial Aid','rev_c@univ.edu',12);

-- Metrics for digital marketing campaigns
CREATE TABLE digital_campaign_metric
(
    campaign_id            TEXT,
    metric_date           TEXT,
    impressions           INTEGER,
    clicks                INTEGER,
    conversions           INTEGER,
    spend                 REAL,
    cpm                   REAL,
    cpc                   REAL,
    ctr                   REAL,
    conversion_rate       REAL,
    revenue               REAL,
    roi                   REAL,
    platform              TEXT,
    ad_group              TEXT,
    creative_id           TEXT,
    audience_segment      TEXT,
    device_type           TEXT,
    geographic_region     TEXT,
    frequency_cap         INTEGER,
    ad_position           TEXT,
    notes                 TEXT,
    PRIMARY KEY (campaign_id, metric_date)
);

INSERT INTO digital_campaign_metric (campaign_id,metric_date,impressions,clicks,conversions,spend,cpm,cpc,ctr,conversion_rate,revenue,roi,platform,ad_group,creative_id,audience_segment,device_type,geographic_region,frequency_cap,ad_position,notes) VALUES
('CMP001','2023-11-01',100000,5000,250,2000,20,0.4,5,5,5000,2.5,'Facebook','GroupA','CR001','Students','Mobile','NorthEast',3,'Feed','First month performance'),
('CMP001','2023-11-02',110000,5200,260,2100,19.1,0.4,4.73,5,5200,2.48,'Facebook','GroupA','CR001','Students','Mobile','NorthEast',3,'Feed','Steady growth'),
('CMP001','2023-11-03',105000,5100,255,2050,19.5,0.4,4.86,5,5100,2.49,'Facebook','GroupA','CR001','Students','Mobile','NorthEast',3,'Feed','Consistent results');

-- Booking of campus facilities and spaces
CREATE TABLE facility_space_booking
(
    booking_id               TEXT PRIMARY KEY,
    space_id                 TEXT,
    requester_id             TEXT,
    request_date             TEXT,
    start_datetime           TEXT,
    end_datetime             TEXT,
    purpose                  TEXT,
    attendees_expected       INTEGER,
    equipment_needed         TEXT,
    catering_required        TEXT,
    approved_by              TEXT,
    approval_date            TEXT,
    status                   TEXT,
    cancellation_reason      TEXT,
    cost_center              TEXT,
    billing_status           TEXT,
    notes                    TEXT,
    recurring_pattern        TEXT,
    recurring_end_date       TEXT,
    priority_level           TEXT,
    is_external              TEXT
);

INSERT INTO facility_space_booking (booking_id,space_id,requester_id,request_date,start_datetime,end_datetime,purpose,attendees_expected,equipment_needed,catering_required,approved_by,approval_date,status,cancellation_reason,cost_center,billing_status,notes,recurring_pattern,recurring_end_date,priority_level,is_external) VALUES
('BK001','RM101','MEM2001','2023-10-15','2023-11-20 09:00','2023-11-20 12:00','Workshop on AI','30','Projector;Whiteboard','Yes','ADMIN01','2023-10-20','Approved','','DEPT01','Billed','First session of series','Weekly','2023-12-31','High','No'),
('BK002','AUD001','MEM3002','2023-10-20','2023-12-05 18:00','2023-12-05 22:00','Guest Lecture','150','Microphone;Stage Lights','No','ADMIN02','2023-10-22','Approved','','DEPT02','Pending','Evening event','None','','Medium','Yes'),
('BK003','LAB202','MEM4003','2023-11-01','2023-11-10 08:00','2023-11-10 17:00','Lab Maintenance','0','None','No','ADMIN03','2023-11-02','Completed','Equipment failure','DEPT03','Completed','Routine check','None','','Low','No');

-- Tracking of grant milestones
CREATE TABLE grant_milestone_tracking
(
    milestone_id            TEXT PRIMARY KEY,
    grant_id                TEXT,
    milestone_name          TEXT,
    due_date                TEXT,
    completion_date         TEXT,
    status                  TEXT,
    responsible_party       TEXT,
    percentage_complete     REAL,
    budget_allocated        REAL,
    budget_spent            REAL,
    variance_amount         REAL,
    risk_level              TEXT,
    mitigation_plan         TEXT,
    deliverable             TEXT,
    reporting_required      TEXT,
    last_report_date        TEXT,
    notes                   TEXT,
    stakeholder_contacts    TEXT,
    documentation_link      TEXT,
    is_critical             TEXT
);

INSERT INTO grant_milestone_tracking (milestone_id,grant_id,milestone_name,due_date,completion_date,status,responsible_party,percentage_complete,budget_allocated,budget_spent,variance_amount,risk_level,mitigation_plan,deliverable,reporting_required,last_report_date,notes,stakeholder_contacts,documentation_link,is_critical) VALUES
('MS001','GR001','Initial Literature Review','2023-07-31','2023-07-28','Completed','Dr Alice Kim',100,50000,49500,-500,'Low','Regular meetings','Review Report','Yes','2023-08-01','On schedule','alice.kim@univ.edu;bob.lee@univ.edu','/docs/ms001.pdf','Yes'),
('MS002','GR001','Prototype Development','2023-12-31','','In Progress','Dr Bob Lee',45,200000,90000,110000,'Medium','Increase staff','Prototype Demo','Yes','2023-11-15','Running behind','alice.kim@univ.edu;bob.lee@univ.edu','/docs/ms002.pdf','Yes'),
('MS003','GR002','Final Evaluation','2024-06-30','','Not Started','Dr Carol Ng',0,75000,0,75000,'High','Secure additional funding','Evaluation Report','Yes','','Pending start','carol.ng@univ.edu','/docs/ms003.pdf','Yes');

-- Pairings for alumni mentorship program
CREATE TABLE alumni_mentorship_pairing
(
    pairing_id               TEXT PRIMARY KEY,
    mentor_alumni_id         TEXT,
    mentee_alumni_id         TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    mentorship_area          TEXT,
    meeting_frequency        TEXT,
    last_meeting_date        TEXT,
    feedback_score           REAL,
    mentor_comments          TEXT,
    mentee_comments          TEXT,
    status                   TEXT,
    program_coordinator      TEXT,
    coordinator_email        TEXT,
    goal_description         TEXT,
    progress_notes           TEXT,
    next_meeting_plan        TEXT,
    is_active                TEXT,
    digital_platform_used    TEXT,
    mentor_department        TEXT,
    mentee_department        TEXT
);

INSERT INTO alumni_mentorship_pairing (pairing_id,mentor_alumni_id,mentee_alumni_id,start_date,end_date,mentorship_area,meeting_frequency,last_meeting_date,feedback_score,mentor_comments,mentee_comments,status,program_coordinator,coordinator_email,goal_description,progress_notes,next_meeting_plan,is_active,digital_platform_used,mentor_department,mentee_department) VALUES
('PA001','ALU1001','ALU2001','2023-01-15','2023-12-31','Career Development','Monthly','2023-11-01',4.5','Great progress','Appreciated guidance','Active','Jane Doe','jane.doe@univ.edu','Secure internship','Mentee drafted resume','Plan next meeting for resume review','Yes','Zoom','Engineering','Business'),
('PA002','ALU1002','ALU2002','2023-03-01','2024-02-28','Research Collaboration','Biweekly','2023-10-20',4.0','Encouraging','Helpful sessions','Active','John Smith','john.smith@univ.edu','Publish joint paper','Data collection underway','Prepare manuscript outline','Yes','Teams','Science','Science'),
('PA003','ALU1003','ALU2003','2022-09-01','2023-08-31','Entrepreneurship','Quarterly','2023-07-15',3.8','Need more structure','Valuable insights','Completed','Emily White','emily.white@univ.edu','Launch startup','Business plan drafted','Finalize financial projections','No','Google Meet','Business','Business');