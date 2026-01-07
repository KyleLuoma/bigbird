-- Information about research facilities and labs on campus
CREATE TABLE research_facility
(
    facility_id TEXT PRIMARY KEY,
    facility_name TEXT,
    building TEXT,
    floor INTEGER,
    room_number TEXT,
    capacity INTEGER,
    lab_type TEXT,
    equipment_inventory TEXT,
    safety_certification TEXT,
    last_inspection_date TEXT,
    contact_person TEXT,
    contact_email TEXT,
    phone TEXT,
    established_date TEXT,
    funding_source TEXT,
    annual_budget REAL,
    active_status TEXT,
    iso_standard TEXT,
    waste_disposal_method TEXT,
    hvac_system TEXT,
    security_level TEXT,
    notes TEXT
);

INSERT INTO research_facility VALUES
('RF001','NanoTech Lab','Engineering Hall','2','210A',30,'Nanotechnology','NanoScope,CleanRoom','OSHA','2025-03-15','Alice Smith','alice.smith@univ.edu','5551234567','2020-08-01','Federal Grant',250000.00,'Active','ISO9001','Chemical','HVAC_X1','High','First nanotech lab');
INSERT INTO research_facility VALUES
('RF002','BioChem Center','Science Complex','1','101B',45,'Biochemistry','Centrifuge,Spectrometer','ISO','2024-11-07','Bob Johnson','bob.johnson@univ.edu','5559876543','2018-05-12','University Funds',180000.00,'Active','ISO14001','Biowaste','HVAC_B2','Medium','Recent renovation');
INSERT INTO research_facility VALUES
('RF003','AI Computing Hub','Tech Center','3','305C',20,'Artificial Intelligence','GPU Cluster,Robotic Arm','ISO','2025-01-20','Carol Lee','carol.lee@univ.edu','5552223344','2022-01-30','Industry Partnership',300000.00,'Planned','ISO27001','Electronic','HVAC_AI','High','Opening Fall 2025');

-- Policies governing campus operations
CREATE TABLE campus_policy
(
    policy_id TEXT PRIMARY KEY,
    policy_name TEXT,
    policy_type TEXT,
    effective_date TEXT,
    expiration_date TEXT,
    responsible_office TEXT,
    approval_status TEXT,
    version_number INTEGER,
    summary TEXT,
    enforcement_mechanism TEXT,
    revision_history TEXT,
    related_regulation TEXT,
    jurisdiction TEXT,
    compliance_deadline TEXT,
    penalty TEXT,
    review_cycle TEXT,
    stakeholder_group TEXT,
    communication_channel TEXT,
    document_url TEXT,
    confidentiality_level TEXT,
    audit_frequency TEXT,
    notes TEXT
);

INSERT INTO campus_policy VALUES
('CP001','Data Privacy','IT','2023-01-01','2099-12-31','Office of IT','Approved',3,'Protect personal data','Automated monitoring','v1 2021; v2 2022; v3 2023','GDPR','Global','2023-12-31','Fine up to 10k','Annual','Students,Staff','Email','http://univ.edu/policies/data_privacy','High','Yearly','Reviewed by Legal');
INSERT INTO campus_policy VALUES
('CP002','Campus Sustainability','Facilities','2022-07-15','2099-12-31','Facilities Management','Approved',2,'Reduce carbon footprint','Energy audits','v1 2022; v2 2024','EPA Guidelines','National','2024-06-30','Reduced funding','Biannual','All departments','Intranet','http://univ.edu/policies/sustainability','Medium','Biannual','Includes recycling targets');
INSERT INTO campus_policy VALUES
('CP003','Academic Integrity','Academic Affairs','2021-09-01','2099-12-31','Academic Affairs','Approved',5,'Uphold honesty in scholarship','Honor Council','v1 2021; v2 2022; v3 2023; v4 2024; v5 2025','FERPA','National','2025-12-31','Academic sanction','Annual','Students,Faculty','Portal','http://univ.edu/policies/academic_integrity','Low','Annual','Training required');

-- Sensor stations for environmental monitoring around campus
CREATE TABLE environmental_sensor_station
(
    station_id TEXT PRIMARY KEY,
    station_name TEXT,
    latitude REAL,
    longitude REAL,
    installation_date TEXT,
    sensor_type TEXT,
    measurement_interval INTEGER,
    battery_level REAL,
    firmware_version TEXT,
    last_maintenance DATE,
    maintenance_contact TEXT,
    data_endpoint TEXT,
    calibration_date TEXT,
    calibration_certificate TEXT,
    status TEXT,
    alert_threshold REAL,
    location_description TEXT,
    owner_department TEXT,
    funding_source TEXT,
    notes TEXT,
    longitude_ref TEXT,
    latitude_ref TEXT
);

INSERT INTO environmental_sensor_station VALUES
('ES001','North Quad Air','38.8977','-77.0365','2023-04-10','AirQuality',15,95.5,'v1.2','2024-10-01','Mike Green','http://data.univ.edu/es001','2024-09-15','CertA','Active',35.0,'Near main library','Facilities','Grant A','No issues','WGS84','WGS84');
INSERT INTO environmental_sensor_station VALUES
('ES002','South Garden Soil','38.8950','-77.0400','2022-09-20','SoilMoisture',30,88.2,'v2.0','2024-08-20','Laura White','http://data.univ.edu/es002','2024-08-01','CertB','Active',20.0,'Garden near cafeteria','Biology Dept','Dept Budget','Calibration pending','WGS84','WGS84');
INSERT INTO environmental_sensor_station VALUES
('ES003','East Parking Noise','38.8985','-77.0300','2024-01-05','NoiseLevel',10,92.0,'v1.0','2024-11-05','Sam Black','http://data.univ.edu/es003','2024-10-20','CertC','Active',70.0,'Lot C near engineering','Facilities','Grant B','Operational','WGS84','WGS84');

-- Inventory of technology assets owned by the university
CREATE TABLE technology_asset_inventory
(
    asset_id TEXT PRIMARY KEY,
    asset_name TEXT,
    asset_type TEXT,
    manufacturer TEXT,
    model_number TEXT,
    serial_number TEXT,
    purchase_date TEXT,
    warranty_expiration TEXT,
    cost REAL,
    depreciation_rate REAL,
    current_value REAL,
    location TEXT,
    assigned_to TEXT,
    status TEXT,
    ip_address TEXT,
    mac_address TEXT,
    operating_system TEXT,
    cpu TEXT,
    ram_gb INTEGER,
    storage_gb INTEGER,
    last_audit DATE,
    maintenance_contract TEXT,
    notes TEXT,
    disposal_date TEXT,
    disposal_method TEXT
);

INSERT INTO technology_asset_inventory VALUES
('TA001','Server01','Server','Dell','PowerEdge R740','SN123456','2022-06-01','2025-06-01',15000.00,0.15,11250.00,'Data Center','IT Dept','In Service','192.168.10.10','00-14-22-01-23-45','Linux','Intel Xeon','64','2000','2024-12-01','Contract A','Critical infrastructure','','');
INSERT INTO technology_asset_inventory VALUES
('TA002','LabPC01','Desktop','HP','EliteDesk 800','SN987654','2023-01-15','2026-01-15',2500.00,0.20,2000.00,'Science Lab','Biology Dept','In Service','192.168.20.20','00-16-17-22-33-44','Windows 10','Intel i7','16','512','2024-11-15','Contract B','Used for data analysis','','');
INSERT INTO technology_asset_inventory VALUES
('TA003','ProjectorA1','AV Equipment','Epson','PowerLite X39','SN555777','2021-09-10','2024-09-10',1200.00,0.25,900.00,'Auditorium','Facilities','In Service','N/A','N/A','N/A','N/A',0,0,'2024-10-20','Contract C','Spare projector','2025-01-05','Recycle');

-- Orders placed for library acquisitions
CREATE TABLE library_acquisition_order
(
    order_id TEXT PRIMARY KEY,
    isbn TEXT,
    title TEXT,
    author TEXT,
    publisher TEXT,
    publication_year INTEGER,
    edition TEXT,
    format TEXT,
    price REAL,
    quantity INTEGER,
    total_cost REAL,
    order_date TEXT,
    expected_arrival TEXT,
    received_date TEXT,
    supplier_name TEXT,
    supplier_contact TEXT,
    budget_code TEXT,
    approver_name TEXT,
    approval_date TEXT,
    order_status TEXT,
    location_code TEXT,
    notes TEXT,
    cataloged BOOLEAN,
    accession_number TEXT,
    fund_source TEXT,
    discount_percent REAL
);

INSERT INTO library_acquisition_order VALUES
('LAO001','9780306406157','Theoretical Physics','John Doe','Science Press',2020,'1st','Hardcover',85.00,3,255.00,'2024-09-01','2024-09-15','2024-09-14','Global Books','5551112222','LIB001','Jane Miller','2024-08-30','Completed','LIB-A','First batch','TRUE','ACC1001','Library Fund',5.0);
INSERT INTO library_acquisition_order VALUES
('LAO002','9780262033848','Introduction to Algorithms','Cormen et al','MIT Press',2019','3rd','Paperback',70.00,5,350.00,'2024-08-20','2024-09-05','2024-09-04','Academic Supply','5553334444','LIB002','Mark Davis','2024-08-18','Completed','LIB-B','High demand','TRUE','ACC1002','Departmental Grant',0.0);
INSERT INTO library_acquisition_order VALUES
('LAO003','9780131103627','C Programming Language','Kernighan,Ritchie','Prentice Hall',1988,'2nd','Hardcover',55.00,2,110.00,'2024-07-15','2024-07-30','2024-07-29','Tech Books Co','5557778888','LIB003','Laura Chen','2024-07-10','Completed','LIB-C','Classic text','TRUE','ACC1003','Donor Fund',10.0);

-- Records of appointments at health services
CREATE TABLE health_service_appointment
(
    appointment_id TEXT PRIMARY KEY,
    patient_id TEXT,
    patient_name TEXT,
    department TEXT,
    provider_name TEXT,
    appointment_date TEXT,
    appointment_time TEXT,
    visit_type TEXT,
    reason TEXT,
    referral_source TEXT,
    insurance_provider TEXT,
    billing_code TEXT,
    status TEXT,
    notes TEXT,
    check_in_time TEXT,
    check_out_time TEXT,
    room_number TEXT,
    follow_up_required TEXT,
    follow_up_date TEXT,
    prescription_given TEXT,
    lab_tests_ordered TEXT,
    urgent_flag TEXT,
    created_by TEXT,
    created_date TEXT,
    last_modified_by TEXT,
    last_modified_date TEXT
);

INSERT INTO health_service_appointment VALUES
('HSAPP001','PAT001','John Doe','General Medicine','Dr. Emily White','2024-10-12','09:30','Routine','Annual physical','Self','HealthPlus','GP001','Scheduled','N/A','09:20','09:55','101','No','','','Blood Test','No','admin','2024-09-20','admin','2024-09-20');
INSERT INTO health_service_appointment VALUES
('HSAPP002','PAT002','Sarah Lee','Dermatology','Dr. Michael Green','2024-10-13','14:00','Consultation','Skin rash','Referral','MediCare','DERM02','Checked In','Prescribed cream','13:50','14:30','202','Yes','2024-10-20','Hydrocortisone','None','Yes','reception','2024-09-25','reception','2024-09-25');
INSERT INTO health_service_appointment VALUES
('HSAPP003','PAT003','Alex Kim','Psychology','Dr. Laura Brown','2024-10-14','11:15','Therapy','Anxiety','Self','WellCare','PSY03','Completed','Discussed coping strategies','11:10','11:55','303','Yes','2024-11-01','None','CBC','No','therapist','2024-09-28','therapist','2024-09-28');

-- Details of sustainability initiatives undertaken by the university
CREATE TABLE sustainability_initiative
(
    initiative_id TEXT PRIMARY KEY,
    initiative_name TEXT,
    launch_date TEXT,
    target_year INTEGER,
    primary_goal TEXT,
    secondary_goal TEXT,
    responsible_office TEXT,
    budget REAL,
    funding_source TEXT,
    status TEXT,
    progress_percent REAL,
    carbon_reduction_tons REAL,
    water_savings_gallons REAL,
    waste_diverted_percent REAL,
    key_partners TEXT,
    milestones TEXT,
    metrics_tracked TEXT,
    report_frequency TEXT,
    last_report_date TEXT,
    next_report_due TEXT,
    community_engagement TEXT,
    student_involvement TEXT,
    staff_involvement TEXT,
    notes TEXT,
    compliance_status TEXT,
    external_audit TEXT,
    certification_target TEXT,
    sustainability_theme TEXT,
    alignment_with_strategic_plan TEXT,
    initiative_lead TEXT
);

INSERT INTO sustainability_initiative VALUES
('SI001','Campus Solar Expansion','2023-01-15','2030','Increase renewable energy','Reduce electricity costs','Facilities','500000','University Funds','In Progress',45.0,120.5,0,0,'SolarTech Inc.; Energy Dept','Phase1 Completed; Phase2 Ongoing','Energy Produced; CO2 Saved','Quarterly','2024-09-30','2024-12-31','Campus events','Solar Club','Facilities Staff','Projected to add 5MW','Compliant','Pending','LEED Gold','Energy','Yes','Dr. Green');
INSERT INTO sustainability_initiative VALUES
('SI002','Zero Waste Campus','2022-05-10','2025','Eliminate landfill waste','Increase recycling rates','Sustainability Office','300000','Grant X','Active',70.0,0,0,85,'RecycleCo; Student Green Team','Recycling stations installed; Compost pilot','Waste diverted; Recycling rate','Biannual','2024-06-30','2024-12-31','Workshops','Eco Club','Facilities','Compost pilot started','Compliant','Completed','ISO14001','Waste','Yes','Ms. Blue');
INSERT INTO sustainability_initiative VALUES
('SI003','Water Conservation Program','2021-09-01','2024','Reduce water use by 30%','Promote sustainable landscaping','Facilities','150000','State Funding','Completed',100.0,0,2500000,0,'WaterWorks; Landscape Dept','Low‑flow fixtures installed; Rainwater harvesting','Gallons saved; Fixture count','Annual','2024-01-15','2025-01-15','Campus tours','Environmental Science','Maintenance','Achieved 32% reduction','Compliant','Completed','EPA Water Star','Water','Yes','Mr. Aqua');

-- Structure of alumni mentorship programs
CREATE TABLE alumni_mentorship_program
(
    program_id TEXT PRIMARY KEY,
    program_name TEXT,
    launch_year INTEGER,
    target_audience TEXT,
    mentor_pool_size INTEGER,
    mentee_pool_size INTEGER,
    matching_algorithm TEXT,
    meeting_frequency TEXT,
    average_meeting_duration TEXT,
    communication_channels TEXT,
    training_required TEXT,
    budget REAL,
    funding_source TEXT,
    evaluation_metric TEXT,
    success_rate_percent REAL,
    coordinator_name TEXT,
    coordinator_email TEXT,
    start_date TEXT,
    end_date TEXT,
    status TEXT,
    notes TEXT,
    feedback_collection_method TEXT,
    annual_review_date TEXT,
    partnership_with_departments TEXT,
    alumni_association_contact TEXT,
    technology_platform TEXT,
    confidentiality_agreement TEXT,
    program_goals TEXT,
    impact_report_url TEXT,
    legacy_documentation TEXT,
    program_lead TEXT
);

INSERT INTO alumni_mentorship_program VALUES
('AMP001','Career Launch Mentorship','2020','Undergraduate Students','150','300','ScoreBased','Monthly','1 hour','Email;Zoom','Yes',120000,'Alumni Fund','Retention Rate','85.0','Karen Lee','karen.lee@univ.edu','2020-09-01','2099-12-31','Active','Strong participation','Survey','2024-09-01','Career Services; Business School','Alumni Office','MentorLink','Signed','Professional development','http://univ.edu/reports/amp2024','Doc2020','Dr. Patel');
INSERT INTO alumni_mentorship_program VALUES
('AMP002','Research Collaboration Mentorship','2019','Graduate Students','80','120','PreferenceBased','Quarterly','2 hours','Teams;Email','Yes',90000,'Research Grant','Publication Count','78.0','Luis Gomez','luis.gomez@univ.edu','2019-01-15','2099-12-31','Active','Focused on joint papers','Interview','2024-06-15','Graduate School; Engineering','Alumni Research Office','CollabHub','Signed','Increase research output','http://univ.edu/reports/amp_research2024','Doc2019','Prof. Nguyen');
INSERT INTO alumni_mentorship_program VALUES
('AMP003','Community Service Mentorship','2021','All Students','60','200','Random','Bi‑Monthly','90 minutes','Phone;Email','No',60000,'Community Fund','Volunteer Hours','92.0','Megan Fox','megan.fox@univ.edu','2021-05-01','2099-12-31','Active','Linking community projects','Online Form','2024-08-01','Public Affairs; Social Work','Alumni Service Council','VolunteerConnect','Signed','Boost civic engagement','http://univ.edu/reports/amp_service2024','Doc2021','Dr. Rivera');

-- Agreements with community partners for joint activities
CREATE TABLE community_partner_agreement
(
    agreement_id TEXT PRIMARY KEY,
    partner_name TEXT,
    partnership_type TEXT,
    start_date TEXT,
    end_date TEXT,
    primary_contact TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    scope_of_work TEXT,
    deliverables TEXT,
    financial_commitment REAL,
    in_kind_contribution TEXT,
    renewal_option TEXT,
    termination_clause TEXT,
    confidentiality_clause TEXT,
    governing_law TEXT,
    dispute_resolution TEXT,
    signatory_university TEXT,
    signatory_partner TEXT,
    status TEXT,
    signed_date TEXT,
    last_amendment_date TEXT,
    amendment_summary TEXT,
    reporting_requirements TEXT,
    evaluation_metrics TEXT,
    notes TEXT,
    archived BOOLEAN,
    archive_date TEXT,
    archive_reason TEXT,
    document_url TEXT,
    responsible_department TEXT
);

INSERT INTO community_partner_agreement VALUES
('CPA001','City Museum','Cultural Exchange','2022-03-01','2025-02-28','Anna Morales','anna.morales@citymuseum.org','5554443333','Joint exhibitions and workshops','Exhibit curation; Educational kits','25000','Guest lectures','Yes','30 day notice','Yes','State Law','Mediation','University President','Museum Director','Active','2022-02-15','2024-01-10','Added virtual tour component','Quarterly report','Attendance numbers','Positive community feedback','FALSE','','','http://univ.edu/agreements/cpa001','Arts Department');
INSERT INTO community_partner_agreement VALUES
('CPA002','Green Earth NGO','Environmental Collaboration','2021-06-15','2024-06-14','Brian Lee','brian.lee@greenearth.org','5557776666','Campus tree planting and sustainability projects','Plant 500 trees; Waste audit','15000','Volunteer labor','Yes','30 day notice','Yes','State Law','Arbitration','VP Sustainability','NGO Director','Active','2021-05-30','2023-12-01','Expanded to energy audit','Biannual','Carbon reduction metrics','Improved campus sustainability','FALSE','','','http://univ.edu/agreements/cpa002','Sustainability Office');
INSERT INTO community_partner_agreement VALUES
('CPA003','Tech Innovators Inc','Industry Partnership','2023-01-10','2026-01-09','Claire Zhang','claire.zhang@techinnovators.com','5559998888','Internship pipeline and joint research','5 internships per year; Joint paper','50000','Equipment donation','Yes','90 day notice','Yes','Federal Law','Litigation','Dean of Engineering','Company VP','Active','2022-12-20','2024-03-05','Increased internship slots','Annual','Intern placement rate','Strong research output','FALSE','','','http://univ.edu/agreements/cpa003','Engineering Department');

-- Licenses for digital content used by the university
CREATE TABLE digital_content_license
(
    license_id TEXT PRIMARY KEY,
    content_title TEXT,
    content_type TEXT,
    provider_name TEXT,
    license_start_date TEXT,
    license_end_date TEXT,
    usage_limit TEXT,
    geographic_scope TEXT,
    authorized_departments TEXT,
    cost REAL,
    renewal_term TEXT,
    renewal_fee REAL,
    access_method TEXT,
    digital_object_identifier TEXT,
    version TEXT,
    compliance_requirements TEXT,
    restrictions TEXT,
    primary_contact TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    status TEXT,
    notes TEXT,
    last_audit DATE,
    audit_result TEXT,
    archive_required BOOLEAN,
    archive_date TEXT,
    archive_location TEXT,
    expiration_notice_sent BOOLEAN,
    notice_sent_date TEXT,
    renewal_decision TEXT,
    responsible_office TEXT,
    contract_url TEXT
);

INSERT INTO digital_content_license VALUES
('DCL001','Science Journal Archive','Journal','ScienceDirect','2023-01-01','2025-12-31','Unlimited','Global','All','20000','Annual','2000','Online Portal','10.1234/science2023','v2023','ISO27001','No redistribution','John Doe','john.doe@univ.edu','5551112222','Active','Access for research','2024-08-01','Compliant','FALSE','','','FALSE','','','Pending','Library','http://univ.edu/licenses/dcl001');
INSERT INTO digital_content_license VALUES
('DCL002','Campus Radio Streaming','Audio','RadioHub','2022-06-01','2024-05-31','5000 plays per month','Regional','Communications; Arts','5000','Monthly','250','Streaming API','10.5678/radio2022','v1','GDPR','No commercial use','Emily Clark','emily.clark@univ.edu','5553334444','Expiring Soon','Need renewal decision','2024-04-15','Pending','TRUE','2024-05-01','Archive Room 3','TRUE','2024-04-30','Renew','Communications Office','http://univ.edu/licenses/dcl002');
INSERT INTO digital_content_license VALUES
('DCL003','Engineering Simulation Software','Software','SimTech','2021-09-15','2026-09-14','50 concurrent seats','Global','Engineering; Physics','75000','5 Year','15000','Download + License Key','10.9012/simtech2021','v5.2','ISO9001','No source code access','Mike Rivera','mike.rivera@univ.edu','5555556666','Active','Critical for labs','2024-07-20','Compliant','FALSE','','','FALSE','','','Pending','Engineering Dept','http://univ.edu/licenses/dcl003');