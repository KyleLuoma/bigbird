-- Student housing unit details
CREATE TABLE student_housing_unit (
    unit_id TEXT PRIMARY KEY,
    building_name TEXT,
    floor_number INTEGER,
    unit_number TEXT,
    bed_type TEXT,
    bathroom_type TEXT,
    square_feet INTEGER,
    rent_amount REAL,
    lease_start_date TEXT,
    lease_end_date TEXT,
    utilities_included TEXT,
    internet_included TEXT,
    pet_allowed TEXT,
    smoking_allowed TEXT,
    max_occupants INTEGER,
    current_occupancy INTEGER,
    assigned_student_id TEXT,
    maintenance_contact TEXT,
    emergency_contact TEXT,
    notes TEXT
);

INSERT INTO student_housing_unit VALUES ('U001','Maple Hall',2,'2A','Twin','Full',350,1200.00,'2024-08-01','2025-07-31','Yes','Yes','No','No',2,1,'M123','John Doe','555-1234','Near lobby');
INSERT INTO student_housing_unit VALUES ('U002','Oak Residence',5,'5B','Queen','EnSuite',420,1350.00,'2024-09-15','2025-09-14','Yes','No','Yes','No',2,2,'M456','Jane Smith','555-5678','Corner unit');
INSERT INTO student_housing_unit VALUES ('U003','Pine Apartments',1,'1C','Full','Shared',300,1100.00,'2024-07-01','2025-06-30','No','Yes','No','Yes',3,1,'M789','Mike Brown','555-9012','Ground floor');

-- Faculty research grant information
CREATE TABLE faculty_research_grant (
    grant_id TEXT PRIMARY KEY,
    grant_title TEXT,
    funding_agency TEXT,
    start_date TEXT,
    end_date TEXT,
    total_amount REAL,
    amount_spent REAL,
    principal_investigator_id TEXT,
    co_pi_ids TEXT,
    grant_status TEXT,
    award_number TEXT,
    research_area TEXT,
    department TEXT,
    reporting_frequency TEXT,
    last_report_date TEXT,
    next_report_due TEXT,
    indirect_cost_rate REAL,
    direct_cost_rate REAL,
    matching_funds REAL,
    notes TEXT
);

INSERT INTO faculty_research_grant VALUES ('G001','AI for Healthcare','NIH','2023-01-01','2026-12-31',1500000,600000,'F001','F002,F003','Active','NIH-2023-01','Artificial Intelligence','Computer Science','Quarterly','2024-06-30','2024-09-30',0.45,0.55,200000,'First year completed');
INSERT INTO faculty_research_grant VALUES ('G002','Renewable Energy Storage','DOE','2022-05-15','2025-05-14',800000,300000,'F004','F005','Active','DOE-2022-05','Energy Materials','Electrical Engineering','Annually','2024-05-01','2025-05-01',0.30,0.70,100000,'Mid project review pending');
INSERT INTO faculty_research_grant VALUES ('G003','Social Media Impact Study','NSF','2024-03-01','2027-02-28',500000,0,'F006','F007,F008','Pending','NSF-2024-03','Social Sciences','Psychology','Semiannual','NULL','2024-09-30',0.20,0.80,50000,'Grant awarded but not yet started');

-- Alumni mailing list entries
CREATE TABLE alumni_mailing_list (
    mailing_id TEXT PRIMARY KEY,
    alumni_id TEXT,
    email_address TEXT,
    subscription_date TEXT,
    preferred_format TEXT,
    frequency TEXT,
    language TEXT,
    opt_out_date TEXT,
    source_campaign TEXT,
    last_sent_date TEXT,
    open_rate REAL,
    click_rate REAL,
    segment TEXT,
    notes TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT
);

INSERT INTO alumni_mailing_list VALUES ('ML001','A001','alice@example.com','2021-06-15','HTML','Monthly','English',NULL,'Welcome Campaign','2024-12-01',0.45,0.12,'Class of 2020','Prefers weekend newsletters','123 Main St',NULL,'Springfield','IL','62704','USA');
INSERT INTO alumni_mailing_list VALUES ('ML002','A002','bob@example.com','2020-09-10','Plain Text','Weekly','Spanish','2023-11-20','Re-Engagement','2024-11-28',0.52,0.18,'International','Unsubscribed due to relocation','456 Oak Ave','Apt 5B','Lincoln','NE','68508','USA');
INSERT INTO alumni_mailing_list VALUES ('ML003','A003','carol@example.com','2022-01-05','HTML','Quarterly','English',NULL,'Alumni Drive','2024-10-15',0.60,0.22,'Donors','Engaged donor, high open rate','789 Pine Rd',NULL,'Madison','WI','53703','USA');

-- Campus WiFi hotspot inventory
CREATE TABLE campus_wifi_hotspot (
    hotspot_id TEXT PRIMARY KEY,
    location_description TEXT,
    building_name TEXT,
    floor INTEGER,
    mac_address TEXT,
    ip_address TEXT,
    ssid TEXT,
    encryption_type TEXT,
    bandwidth_mbps REAL,
    active_since TEXT,
    status TEXT,
    maintenance_contact TEXT,
    last_inspection_date TEXT,
    firmware_version TEXT,
    notes TEXT,
    latitude REAL,
    longitude REAL,
    power_source TEXT,
    vendor TEXT,
    warranty_expiration TEXT
);

INSERT INTO campus_wifi_hotspot VALUES ('HS001','North lobby near main entrance','Science Center',1,'AA:BB:CC:DD:EE:01','192.168.10.10','CampusWiFi','WPA2',300,'2022-03-01','Active','Karen Lee','2024-07-10','v3.2','All students have access',41.8781,-87.6298,'Power over Ethernet','Cisco','2025-12-31');
INSERT INTO campus_wifi_hotspot VALUES ('HS002','Cafeteria outdoor patio','Student Union',2,'AA:BB:CC:DD:EE:02','192.168.10.11','CampusWiFi','WPA2',150,'2023-01-15','Active','Mike Green','2024-06-20','v3.2','Higher load during lunch',41.8800,-87.6305,'Solar','Aruba','2026-06-30');
INSERT INTO campus_wifi_hotspot VALUES ('HS003','Library 3rd floor study area','Main Library',3,'AA:BB:CC:DD:EE:03','192.168.10.12','CampusWiFi','WPA3',250,'2021-09-10','Inactive','Susan White','2023-12-05','v2.9','Scheduled for upgrade',41.8795,-87.6280,'Mains','Ubiquiti','2024-12-31');

-- Health service appointment notes
CREATE TABLE health_service_appointment_note (
    note_id TEXT PRIMARY KEY,
    appointment_id TEXT,
    patient_id TEXT,
    provider_id TEXT,
    note_date TEXT,
    note_type TEXT,
    summary TEXT,
    diagnosis_code TEXT,
    procedure_code TEXT,
    prescription_details TEXT,
    follow_up_date TEXT,
    notes TEXT,
    confidentiality_level TEXT,
    entered_by TEXT,
    entry_timestamp TEXT,
    reviewed_by TEXT,
    review_timestamp TEXT,
    attachment_path TEXT,
    billing_code TEXT,
    insurance_approval TEXT
);

INSERT INTO health_service_appointment_note VALUES ('N001','APP001','P001','PR001','2024-10-12','Progress','Patient reports improvement in symptoms','R51','99213','Ibuprofen 200mg prn','2024-11-12','Continue current regimen','Standard','NurseA','2024-10-12 09:15:00','DrB','2024-10-12 10:00:00','/docs/n001.pdf','CPT99213','Approved');
INSERT INTO health_service_appointment_note VALUES ('N002','APP002','P002','PR002','2024-09-20','Initial','New patient intake, medical history recorded','Z00.00','99201','None','2024-10-20','Schedule blood work','Standard','NurseB','2024-09-20 08:45:00','DrC','2024-09-20 09:30:00','/docs/n002.pdf','CPT99201','Pending');
INSERT INTO health_service_appointment_note VALUES ('N003','APP003','P003','PR003','2024-08-05','Follow-up','Evaluation of post-operative recovery','T81.4XXA','99354','Acetaminophen 500mg q6h','2024-09-05','Wound healing satisfactory','Standard','NurseC','2024-08-05 11:20:00','DrD','2024-08-05 12:00:00','/docs/n003.pdf','CPT99354','Approved');

-- Library study room catalog
CREATE TABLE library_study_room (
    room_id TEXT PRIMARY KEY,
    library_branch TEXT,
    floor_number INTEGER,
    room_number TEXT,
    capacity INTEGER,
    has_projector TEXT,
    has_whiteboard TEXT,
    has_video_conference TEXT,
    reservation_policy TEXT,
    open_time TEXT,
    close_time TEXT,
    hourly_rate REAL,
    last_maintenance_date TEXT,
    equipment_list TEXT,
    accessibility_features TEXT,
    wifi_available TEXT,
    room_status TEXT,
    notes TEXT,
    contact_person TEXT,
    contact_phone TEXT
);

INSERT INTO library_study_room VALUES ('SR001','Main Library',2,'201','6','Yes','Yes','No','First come first served','08:00','22:00',0.00,'2024-06-15','Projector, Whiteboard','Wheelchair accessible','Yes','Available','Quiet zone','Emily Clark','555-1111');
INSERT INTO library_study_room VALUES ('SR002','Science Library',1,'101','4','No','Yes','Yes','Reservation required 24h ahead','09:00','20:00',2.50,'2024-05-20','Whiteboard, Video Conferencing Kit','Braille signage','Yes','Reserved','Group study','David Lee','555-2222');
INSERT INTO library_study_room VALUES ('SR003','Law Library',3,'301','8','Yes','No','No','Reservation required 48h ahead','07:30','23:00',1.00,'2024-04-30','Projector','Elevator access','Yes','Maintenance','Large group sessions','Sarah Patel','555-3333');

-- Transportation incident summary
CREATE TABLE transportation_incident_summary (
    incident_id TEXT PRIMARY KEY,
    date_reported TEXT,
    vehicle_id TEXT,
    driver_id TEXT,
    incident_type TEXT,
    severity TEXT,
    location_description TEXT,
    mileage_at_incident INTEGER,
    damage_estimate REAL,
    injuries_reported INTEGER,
    police_report_filed TEXT,
    report_number TEXT,
    description TEXT,
    corrective_action TEXT,
    status TEXT,
    follow_up_date TEXT,
    investigator_id TEXT,
    notes TEXT,
    weather_conditions TEXT,
    road_condition TEXT
);

INSERT INTO transportation_incident_summary VALUES ('TI001','2024-09-10','V100','D001','Rear-end collision','Minor','Intersection of 5th and Main','15200',1200.00,0,'Yes','RP001','Vehicle struck from behind at stoplight','Driver training refresher','Closed','2024-09-20','I001','No further action','Clear','Dry');
INSERT INTO transportation_incident_summary VALUES ('TI002','2024-08-22','V101','D002','Side swipe','Moderate','Parking lot B','8450',3500.00,1,'Yes','RP002','Side swipe while exiting parking spot','Repair and safety audit','Open','2024-09-05','I002','Awaiting parts','Rain','Wet');
INSERT INTO transportation_incident_summary VALUES ('TI003','2024-07-15','V102','D003','Slip and fall','Minor','Campus walkway near library','23000',0.00,0,'No',NULL,'Driver slipped on icy surface','Install anti-slip mats','Closed','2024-07-25','I003','Weather related','Snow','Ice');

-- Environmental project funding records
CREATE TABLE environmental_project_funding (
    project_id TEXT PRIMARY KEY,
    project_name TEXT,
    funding_source TEXT,
    amount_awarded REAL,
    award_date TEXT,
    project_start_date TEXT,
    project_end_date TEXT,
    lead_researcher_id TEXT,
    co_lead_ids TEXT,
    status TEXT,
    total_spent REAL,
    remaining_balance REAL,
    milestones_completed TEXT,
    next_milestone_due TEXT,
    reporting_requirements TEXT,
    compliance_status TEXT,
    environmental_impact_score INTEGER,
    notes TEXT,
    contact_email TEXT,
    contact_phone TEXT
);

INSERT INTO environmental_project_funding VALUES ('EP001','River Restoration','EPA',250000,'2023-04-01','2023-06-01','2025-05-31','R001','R002,R003','Active',80000,170000,'Phase 1 completed','2024-10-15','Semiannual report','Compliant',85,'Monitoring water quality','riverlead@example.com','555-4444');
INSERT INTO environmental_project_funding VALUES ('EP002','Urban Tree Canopy Expansion','City Grants',150000,'2022-09-15','2022-11-01','2024-10-31','R004','R005','Completed',150000,0,'All milestones achieved','NULL','Final report','Compliant',92,'Achieved 5,000 new trees','treelead@example.com','555-5555');
INSERT INTO environmental_project_funding VALUES ('EP003','Solar Panel Campus Initiative','DOE',500000,'2024-01-20','2024-03-01','2027-02-28','R006','R007,R008','Pending',0,500000,'Planning stage','2024-12-01','Quarterly report','Pending',0,'Funding approved, awaiting contracts','solarlead@example.com','555-6666');

-- Community workshop schedule
CREATE TABLE community_workshop (
    workshop_id TEXT PRIMARY KEY,
    title TEXT,
    organizer_id TEXT,
    target_audience TEXT,
    location TEXT,
    date TEXT,
    start_time TEXT,
    end_time TEXT,
    capacity INTEGER,
    registration_deadline TEXT,
    fee REAL,
    speaker_names TEXT,
    topics_covered TEXT,
    materials_provided TEXT,
    evaluation_form_url TEXT,
    feedback_score REAL,
    notes TEXT,
    sponsor_id TEXT,
    registration_link TEXT,
    accessibility_notes TEXT,
    contact_phone TEXT
);

INSERT INTO community_workshop VALUES ('CW001','Digital Literacy Basics','O001','Adults','Community Center Room A','2024-11-05','09:00','12:00',30,'2024-10-30',0,'John Doe; Jane Smith','Internet safety; Email basics','Printed guide','http://example.com/eval1',4.5,'First workshop series','S001','http://example.com/reg1','Wheelchair ramp available','555-7777');
INSERT INTO community_workshop VALUES ('CW002','Gardening for Beginners','O002','Seniors','Greenfield Library','2024-10-20','10:00','13:00',20,'2024-10-10',5,'Emily Green','Soil preparation; Plant selection','Gardening kit','http://example.com/eval2',4.2,'Provide seeds after session','S002','http://example.com/reg2','Seating accessible','555-8888');
INSERT INTO community_workshop VALUES ('CW003','Career Development in Tech','O003','College Students','Tech Hub Auditorium','2024-12-01','14:00','17:00',50,'2024-11-20',10,'Mike Tech; Sara Dev','Resume building; Interview skills','Digital handbook','http://example.com/eval3',4.8','High demand event','S003','http://example.com/reg3','Sign language interpreter','555-9999');

-- Technology patent licensing agreements
CREATE TABLE technology_patent_licensing (
    licensing_id TEXT PRIMARY KEY,
    patent_id TEXT,
    licensor_id TEXT,
    licensee_id TEXT,
    license_type TEXT,
    start_date TEXT,
    end_date TEXT,
    royalty_rate REAL,
    upfront_fee REAL,
    exclusive_flag TEXT,
    territory TEXT,
    sublicensing_allowed TEXT,
    status TEXT,
    termination_clause TEXT,
    governing_law TEXT,
    notes TEXT,
    agreement_document_path TEXT,
    last_renewal_date TEXT,
    renewal_option TEXT,
    payment_terms TEXT,
    reporting_requirements TEXT
);

INSERT INTO technology_patent_licensing VALUES ('L001','P12345','C001','L001','Exclusive','2023-01-01','2028-12-31',0.05,20000,'Yes','Worldwide','No','Active','30 days notice','CA','Annual royalty statements','/agreements/L001.pdf','2025-01-01','Option to extend 2 years','Quarterly','Quarterly reporting');
INSERT INTO technology_patent_licensing VALUES ('L002','P67890','C002','L002','Non-Exclusive','2024-06-15','2029-06-14',0.03,0,'No','North America','Yes','Pending','Termination upon breach','NY','License pending final signatures','/agreements/L002.pdf','NULL','Option to extend 1 year','Annual','Annual reporting');
INSERT INTO technology_patent_licensing VALUES ('L003','P54321','C003','L003','Exclusive','2022-03-01','2027-02-28',0.07,50000,'Yes','Europe','No','Closed','Mutual agreement','TX','License concluded, final payment made','/agreements/L003.pdf','2025-03-01','No renewal','Lump sum','Final report submitted');