-- Student Alumni Tracker
CREATE TABLE student_alumni_tracker
(
    tracker_id TEXT PRIMARY KEY,
    student_id TEXT,
    alumni_id TEXT,
    graduation_year INTEGER,
    degree TEXT,
    major_id TEXT,
    employment_status TEXT,
    employer_name TEXT,
    job_title TEXT,
    salary_range TEXT,
    city TEXT,
    state TEXT,
    country TEXT,
    email TEXT,
    phone TEXT,
    linkedin_profile TEXT,
    alumni_event_attended INTEGER,
    volunteer_hours REAL,
    mentorship_flag TEXT,
    notes TEXT
);

INSERT INTO student_alumni_tracker VALUES
('TRK001','STU1001','ALM2001',2020,'BSc_Computer_Science','MJ001','Employed','TechCorp','Software_Engineer','80k_100k','Springfield','IL','USA','alice@example.com','5551234','alice_linkedin',2,15.5,'Yes','First_entry');

INSERT INTO student_alumni_tracker VALUES
('TRK002','STU1002','ALM2002',2019,'BA_English','MJ002','Employed','PubHouse','Editor','60k_80k','Riverdale','CA','USA','bob@example.com','5555678','bob_linkedin',1,10.0,'No','Second_entry');

INSERT INTO student_alumni_tracker VALUES
('TRK003','STU1003','ALM2003',2021,'MSc_Biology','MJ003','Student','University_Lab','Research_Assistant','40k_60k','OakTown','NY','USA','carol@example.com','5559012','carol_linkedin',0,5.0,'Yes','Third_entry');

-- Campus Event Budget Detail
CREATE TABLE campus_event_budget_detail
(
    budget_detail_id TEXT PRIMARY KEY,
    event_id TEXT,
    category TEXT,
    allocated_amount REAL,
    spent_amount REAL,
    remaining_amount REAL,
    fiscal_year INTEGER,
    approved_by TEXT,
    approval_date TEXT,
    vendor_id TEXT,
    cost_center TEXT,
    funding_source TEXT,
    budget_status TEXT,
    revision_number INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    currency TEXT,
    exchange_rate REAL,
    budget_type TEXT
);

INSERT INTO campus_event_budget_detail VALUES
('BD001','EVT001','Logistics',5000.00,3000.00,2000.00,2023,'mgr_jane','2023-01-10','VND100','CC01','University_Funds','Open',1,'Initial allocation','2023-01-01','2023-01-15','USD',1.0,'Annual');

INSERT INTO campus_event_budget_detail VALUES
('BD002','EVT002','Marketing',8000.00,6500.00,1500.00,2023,'mgr_john','2023-02-12','VND200','CC02','Alumni_Donations','Open',2,'Revised after sponsor','2023-02-01','2023-02-20','USD',1.0,'Special');

INSERT INTO campus_event_budget_detail VALUES
('BD003','EVT003','Catering',4000.00,4000.00,0.00,2023,'mgr_kate','2023-03-05','VND300','CC03','Grant_Funds','Closed',1,'Fully spent','2023-03-01','2023-03-10','USD',1.0,'Event');

-- Facility Maintenance Log Extended
CREATE TABLE facility_maintenance_log_extended
(
    log_id TEXT PRIMARY KEY,
    facility_id TEXT,
    maintenance_type TEXT,
    request_date TEXT,
    scheduled_date TEXT,
    completion_date TEXT,
    technician_id TEXT,
    labor_hours REAL,
    material_cost REAL,
    total_cost REAL,
    priority_level TEXT,
    work_order_number TEXT,
    status TEXT,
    downtime_hours REAL,
    impact_description TEXT,
    safety_incident_flag TEXT,
    warranty_flag TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT
);

INSERT INTO facility_maintenance_log_extended VALUES
('LOG001','FAC100','HVAC','2023-04-01','2023-04-05','2023-04-06','TECH01',4.5,250.00,475.00','High','WO12345','Completed',2.0,'Airflow reduced','No','Yes','Routine check','admin','2023-04-01');

INSERT INTO facility_maintenance_log_extended VALUES
('LOG002','FAC200','Plumbing','2023-04-10','2023-04-12','2023-04-13','TECH02',3.0,150.00,300.00','Medium','WO12346','Completed',1.0,'Leak in restroom','No','No','Fixed leak','admin','2023-04-10');

INSERT INTO facility_maintenance_log_extended VALUES
('LOG003','FAC300','Electrical','2023-04-15','2023-04-18','2023-04-20','TECH03',6.0,400.00,800.00','Critical','WO12347','Completed',4.0','Power outage on floor 2','Yes','Yes','Replaced breaker','admin','2023-04-15');

-- Digital Media Rights
CREATE TABLE digital_media_rights
(
    rights_id TEXT PRIMARY KEY,
    media_id TEXT,
    rights_holder TEXT,
    license_type TEXT,
    start_date TEXT,
    end_date TEXT,
    territory TEXT,
    exclusive_flag TEXT,
    royalty_rate REAL,
    royalty_currency TEXT,
    usage_limit INTEGER,
    platform TEXT,
    agreement_document TEXT,
    compliance_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    version INTEGER,
    amendment_flag TEXT,
    renewal_date TEXT
);

INSERT INTO digital_media_rights VALUES
('RGT001','MED100','StudioA','Exclusive','2023-01-01','2025-12-31','Global','Yes',0.05,'USD',1000,'Streaming','AG001','Compliant','First contract','2023-01-01','2023-01-02',1,'No','2025-12-01');

INSERT INTO digital_media_rights VALUES
('RGT002','MED101','StudioB','NonExclusive','2022-06-01','2024-05-31','North_America','No',0.03,'USD',500,'Broadcast','AG002','Pending','Awaiting signature','2022-06-01','2022-06-05',2,'Yes','2024-05-01');

INSERT INTO digital_media_rights VALUES
('RGT003','MED102','StudioC','Exclusive','2021-03-15','2023-03-14','Europe','Yes',0.04,'EUR',200,'Online','AG003','Compliant','Renewed last year','2021-03-15','2022-03-01',3,'No','2023-03-01');

-- Transport Vehicle Inspection
CREATE TABLE transport_vehicle_inspection
(
    inspection_id TEXT PRIMARY KEY,
    vehicle_id TEXT,
    inspector_id TEXT,
    inspection_date TEXT,
    mileage INTEGER,
    oil_level TEXT,
    tire_pressure TEXT,
    brake_condition TEXT,
    lights_functional TEXT,
    emission_test_result TEXT,
    overall_status TEXT,
    notes TEXT,
    next_due_date TEXT,
    created_at TEXT,
    updated_at TEXT,
    inspection_type TEXT,
    violations INTEGER,
    corrective_actions TEXT,
    passed_flag TEXT,
    inspector_notes TEXT
);

INSERT INTO transport_vehicle_inspection VALUES
('INSP001','VEH100','INSP01','2023-04-20',12000,'Full','35psi','Good','Yes','Pass','Pass','All good','2024-04-20','2023-04-20','2023-04-20','Annual',0,'None','Yes','No issues');

INSERT INTO transport_vehicle_inspection VALUES
('INSP002','VEH101','INSP02','2023-04-22',25000,'Low','30psi','Fair','No','Fail','Fail','Brake lights need fixing','2024-04-22','2023-04-22','2023-04-22','Annual',1,'Replace brake lights','No','Brake lights dim');

INSERT INTO transport_vehicle_inspection VALUES
('INSP003','VEH102','INSP03','2023-04-25',5000,'Full','38psi','Excellent','Yes','Pass','Pass','Vehicle in excellent condition','2024-04-25','2023-04-25','2023-04-25','Annual',0,'None','Yes','Ready for service');

-- Grant Proposal Review Panel
CREATE TABLE grant_proposal_review_panel
(
    panel_id TEXT PRIMARY KEY,
    proposal_id TEXT,
    reviewer_id TEXT,
    review_date TEXT,
    score REAL,
    recommendation TEXT,
    comments TEXT,
    conflict_of_interest TEXT,
    panel_role TEXT,
    decision TEXT,
    revised_score REAL,
    final_decision TEXT,
    meeting_id TEXT,
    attendance_flag TEXT,
    confidentiality_agreement TEXT,
    created_at TEXT,
    updated_at TEXT,
    review_round INTEGER,
    evaluation_criteria TEXT,
    additional_notes TEXT
);

INSERT INTO grant_proposal_review_panel VALUES
('PNL001','PRP100','RVW01','2023-03-15',4.5,'Approve','Strong methodology','No','Chair','Pending',4.6,'Approved','MTG001','Yes','Signed','2023-03-15','2023-03-16',1,'Innovation,Impact','First round');

INSERT INTO grant_proposal_review_panel VALUES
('PNL002','PRP101','RVW02','2023-03-16',3.2,'Minor Revisions','Needs clearer budget','No','Member','Pending',3.5,'Approved after revisions','MTG001','Yes','Signed','2023-03-16','2023-03-17',1,'Feasibility,Budget','Second reviewer');

INSERT INTO grant_proposal_review_panel VALUES
('PNL003','PRP102','RVW03','2023-03-17',2.8','Reject','Insufficient preliminary data','Yes','Member','Pending',2.8,'Rejected','MTG001','Yes','Signed','2023-03-17','2023-03-18',1,'Data Quality','Conflict of interest noted');

-- Health Service Encounter
CREATE TABLE health_service_encounter
(
    encounter_id TEXT PRIMARY KEY,
    patient_id TEXT,
    provider_id TEXT,
    encounter_date TEXT,
    encounter_type TEXT,
    diagnosis_code TEXT,
    procedure_code TEXT,
    prescribed_medication TEXT,
    dosage TEXT,
    follow_up_date TEXT,
    notes TEXT,
    billing_code TEXT,
    insurance_claim_id TEXT,
    location TEXT,
    department TEXT,
    encounter_status TEXT,
    referral_flag TEXT,
    urgent_care_flag TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO health_service_encounter VALUES
('ENC001','PAT100','PROV01','2023-04-10','Checkup','D001','P001','Vitamin_D','1000IU','2023-10-10','All normal','BILL001','CLAIM001','Clinic_A','Family_Medicine','Closed','No','No','2023-04-10','2023-04-11');

INSERT INTO health_service_encounter VALUES
('ENC002','PAT101','PROV02','2023-04-12','Emergency','D002','P002','Antibiotic_X','500mg','2023-04-20','Strep throat diagnosed','BILL002','CLAIM002','ER','Emergency','Closed','Yes','Yes','2023-04-12','2023-04-13');

INSERT INTO health_service_encounter VALUES
('ENC003','PAT102','PROV03','2023-04-15','FollowUp','D003','P003','Pain_Relief','50mg','2023-05-15','Post surgery follow-up','BILL003','CLAIM003','Clinic_B','Surgery','Open','No','No','2023-04-15','2023-04-15');

-- Innovation Patent Application
CREATE TABLE innovation_patent_application
(
    app_id TEXT PRIMARY KEY,
    inventor_id TEXT,
    title TEXT,
    abstract TEXT,
    filing_date TEXT,
    publication_date TEXT,
    patent_office TEXT,
    application_status TEXT,
    examiner_id TEXT,
    priority_date TEXT,
    related_app_id TEXT,
    ipc_classification TEXT,
    claims_count INTEGER,
    fees_paid REAL,
    fee_currency TEXT,
    attorney_id TEXT,
    docket_number TEXT,
    provisional_flag TEXT,
    international_application_id TEXT,
    notes TEXT
);

INSERT INTO innovation_patent_application VALUES
('APP001','INV100','Smart_Sensor','Sensor for environmental monitoring','2023-01-10','2023-06-01','USPTO','Pending','EXM01','2023-01-01','APP000','G06F','12',1500.00,'USD','ATN01','DK001','No','INT001','First filing');

INSERT INTO innovation_patent_application VALUES
('APP002','INV101','AI_Algorithm','Machine learning model for prediction','2023-02-15','2023-07-20','EPO','Pending','EXM02','2023-02-01','APP001','G06N','20',2000.00,'EUR','ATN02','DK002','Yes','INT002','Related to previous AI work');

INSERT INTO innovation_patent_application VALUES
('APP003','INV102','Renewable_Battery','High-capacity battery technology','2023-03-05','2023-08-15','JPO','Pending','EXM03','2023-03-01','APP002','H01M','15',1800.00,'JPY','ATN03','DK003','No','INT003','Prototype stage');

-- Environmental Sensor Reading Daily
CREATE TABLE environmental_sensor_reading_daily
(
    reading_id TEXT PRIMARY KEY,
    sensor_id TEXT,
    date TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm REAL,
    pm2_5_ugm3 REAL,
    noise_db REAL,
    wind_speed_mps REAL,
    wind_direction TEXT,
    precipitation_mm REAL,
    solar_irradiance_wpm2 REAL,
    battery_voltage REAL,
    signal_strength INTEGER,
    status TEXT,
    maintenance_needed_flag TEXT,
    notes TEXT,
    uploaded_at TEXT,
    processed_at TEXT,
    anomaly_flag TEXT
);

INSERT INTO environmental_sensor_reading_daily VALUES
('RD001','SEN100','2023-04-20',22.5,45.0,410.0,12.0,55.0,3.2,'N','0.0',500.0,3.7,85,'OK','No','Normal day','2023-04-20','2023-04-20','No');

INSERT INTO environmental_sensor_reading_daily VALUES
('RD002','SEN101','2023-04-20',30.1,30.5,800.0,35.0,70.0,5.0,'NE','0.2',600.0,3.5,78,'Alert','Yes','High temperature','2023-04-20','2023-04-20','Yes');

INSERT INTO environmental_sensor_reading_daily VALUES
('RD003','SEN102','2023-04-20',15.2,80.0,350.0,5.0,40.0,2.0','SW','0.0',400.0,3.9,90,'OK','No','Cool humid day','2023-04-20','2023-04-20','No');

-- Community Outreach Program
CREATE TABLE community_outreach_program
(
    program_id TEXT PRIMARY KEY,
    name TEXT,
    description TEXT,
    start_date TEXT,
    end_date TEXT,
    target_audience TEXT,
    coordinator_id TEXT,
    budget REAL,
    funding_source TEXT,
    locations TEXT,
    partners TEXT,
    expected_outcome TEXT,
    actual_outcome TEXT,
    participants_count INTEGER,
    volunteer_hours REAL,
    evaluation_score REAL,
    report_document TEXT,
    status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO community_outreach_program VALUES
('PROG001','Health_Fair','Free health screenings for community','2023-05-01','2023-05-03','Local Residents','COORD01',10000.00,'University_Budget','Campus_Grounds','Health_Center;NGO','Improve health awareness','Increased screenings by 30%','500','200.0',4.5,'REPORT001','Completed','Successful event','2023-04-01','2023-05-04');

INSERT INTO community_outreach_program VALUES
('PROG002','STEM_Workshop','Hands‑on STEM activities for middle schoolers','2023-06-10','2023-06-12','Middle_School_Students','COORD02',8000.00,'Grant_Funds','Community_Center','Tech_Company;University','Spark interest in STEM','150 participants engaged','150','120.0',4.2,'REPORT002','Completed','Positive feedback','2023-05-15','2023-06-13');

INSERT INTO community_outreach_program VALUES
('PROG003','Art_Exhibit','Local artists showcase','2023-07-20','2023-07-30','General Public','COORD03',12000.00,'Donations','City_Gallery','Artists_Association','Promote local art','High attendance','200','80.0',4.8,'REPORT003','Ongoing','Exhibit extended due to demand','2023-06-20','2023-07-31');