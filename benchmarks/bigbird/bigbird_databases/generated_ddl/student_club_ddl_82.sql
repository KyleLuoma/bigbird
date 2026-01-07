-- Academic award nomination table
CREATE TABLE academic_award_nomination (
    nomination_id TEXT PRIMARY KEY,
    award_name TEXT,
    nominee_first_name TEXT,
    nominee_last_name TEXT,
    department TEXT,
    nomination_date TEXT,
    status TEXT,
    reviewer_id TEXT,
    review_deadline TEXT,
    nomination_reason TEXT,
    supporting_document_url TEXT,
    nomination_score REAL,
    award_cycle TEXT,
    nomination_type TEXT,
    eligibility_criteria TEXT,
    nomination_notes TEXT,
    external_recommendation TEXT,
    internal_reference TEXT,
    nomination_category TEXT,
    budget_requested INTEGER
);

INSERT INTO academic_award_nomination VALUES ('NOM001','Excellence in Teaching','Alice','Smith','Computer Science','2025-03-12','Pending','REV01','2025-04-01','Outstanding classroom engagement','http://files.university.edu/doc1','85.5','2025','Faculty','FullTimeFaculty','N/A','ProfJohnDoe','REF123','Teaching','5000');
INSERT INTO academic_award_nomination VALUES ('NOM002','Research Innovation Award','Bob','Johnson','Biology','2025-02-28','Approved','REV02','2025-03-20','Breakthrough in gene editing','http://files.university.edu/doc2','92.0','2025','Research','TenuredFaculty','N/A','DrJaneDoe','REF456','Research','12000');
INSERT INTO academic_award_nomination VALUES ('NOM003','Community Service Medal','Carol','Lee','Sociology','2025-01-15','Rejected','REV03','2025-02-10','Extensive volunteer work','http://files.university.edu/doc3','78.0','2025','Service','AllStaff','N/A','ProfMarkLee','REF789','Service','3000');

-- Campus tree inventory table
CREATE TABLE campus_tree_inventory (
    tree_id TEXT PRIMARY KEY,
    species TEXT,
    common_name TEXT,
    plant_date TEXT,
    location_description TEXT,
    gps_latitude REAL,
    gps_longitude REAL,
    height_cm INTEGER,
    trunk_diameter_cm INTEGER,
    health_status TEXT,
    pruning_date TEXT,
    last_inspection_date TEXT,
    caretaker_id TEXT,
    irrigation_type TEXT,
    soil_type TEXT,
    canopy_width_cm INTEGER,
    planting_supervisor TEXT,
    maintenance_notes TEXT,
    protected_status TEXT,
    carbon_sequestration_kg REAL
);

INSERT INTO campus_tree_inventory VALUES ('TREE001','Quercus robur','English Oak','2010-04-22','North Quad near Library','40.7128','-74.0060','850','45','Good','2024-09-15','2024-11-01','CT001','Drip','Loam','300','JohnPark','No issues','Yes','125.5');
INSERT INTO campus_tree_inventory VALUES ('TREE002','Acer saccharum','Sugar Maple','2015-06-10','West Campus Parkway','40.7135','-74.0072','620','38','Fair','2024-08-20','2024-10-12','CT002','Sprinkler','Sandy','250','EmilyGreen','Leaves thinning','No','98.2');
INSERT INTO campus_tree_inventory VALUES ('TREE003','Platanus × acerifolia','London Plane','2008-09-05','South Entrance Plaza','40.7140','-74.0055','970','52','Excellent','2024-10-01','2024-12-05','CT003','None','Clay','340','MichaelBrown','Mulched base','Yes','140.7');

-- Faculty retirement plan table
CREATE TABLE faculty_retirement_plan (
    plan_id TEXT PRIMARY KEY,
    faculty_id TEXT,
    plan_type TEXT,
    enrollment_date TEXT,
    contribution_percent REAL,
    employer_match_percent REAL,
    vesting_schedule TEXT,
    annual_limit INTEGER,
    rollover_allowed TEXT,
    beneficiary_name TEXT,
    beneficiary_relationship TEXT,
    beneficiary_contact TEXT,
    plan_status TEXT,
    last_update_date TEXT,
    advisory_notes TEXT,
    tax_deferred TEXT,
    fund_category TEXT,
    risk_profile TEXT,
    projected_balance REAL,
    retirement_age INTEGER
);

INSERT INTO faculty_retirement_plan VALUES ('PLAN001','FAC001','DefinedContribution','2020-08-01','5.0','3.0','5 years','19000','Yes','Laura Smith','Spouse','5551234567','Active','2024-11-01','Annual review completed','Yes','Balanced','Moderate','85000.00','65');
INSERT INTO faculty_retirement_plan VALUES ('PLAN002','FAC002','DefinedBenefit','2015-01-15','N/A','N/A','Immediate','N/A','No','David Lee','Child','5559876543','Active','2024-10-15','Eligible for increase','No','Pension','Low','120000.00','62');
INSERT INTO faculty_retirement_plan VALUES ('PLAN003','FAC003','Hybrid','2018-05-20','4.5','2.5','3 years','19000','Yes','Maria Gonzales','Spouse','5555551234','Active','2024-09-30','Rebalancing needed','Yes','Growth','Aggressive','67000.00','67');

-- Research data processing job table
CREATE TABLE research_data_processing_job (
    job_id TEXT PRIMARY KEY,
    dataset_id TEXT,
    researcher_id TEXT,
    start_timestamp TEXT,
    end_timestamp TEXT,
    compute_node TEXT,
    cpu_cores INTEGER,
    memory_gb INTEGER,
    storage_used_gb INTEGER,
    processing_status TEXT,
    error_log_url TEXT,
    output_location TEXT,
    processing_type TEXT,
    algorithm_version TEXT,
    parameters_json TEXT,
    priority_level TEXT,
    estimated_duration_minutes INTEGER,
    actual_duration_minutes INTEGER,
    cost_usd REAL,
    result_quality_score REAL
);

INSERT INTO research_data_processing_job VALUES ('JOB001','DS001','RES001','2024-11-01 08:00:00','2024-11-01 12:30:00','node12','32','128','500','Success','http://logs.university.edu/job001','s3://results/ds001','Batch','v2.3','{\"threshold\":0.7}','High','270','250','45.75','0.96');
INSERT INTO research_data_processing_job VALUES ('JOB002','DS002','RES002','2024-10-28 14:15:00','2024-10-28 18:45:00','node07','16','64','250','Failed','http://logs.university.edu/job002','s3://results/ds002','Streaming','v1.9','{\"window\":50}','Medium','270','210','30.20','0.45');
INSERT INTO research_data_processing_job VALUES ('JOB003','DS003','RES003','2024-11-03 09:00:00','2024-11-03 11:00:00','node03','24','96','300','Success','http://logs.university.edu/job003','s3://results/ds003','Batch','v2.1','{\"mode\":\"fast\"}','Low','120','115','22.10','0.88');

-- Event crowd control plan table
CREATE TABLE event_crowd_control_plan (
    plan_id TEXT PRIMARY KEY,
    event_id TEXT,
    max_occupancy INTEGER,
    entry_point_count INTEGER,
    exit_point_count INTEGER,
    security_staff_required INTEGER,
    medical_staff_required INTEGER,
    barrier_type TEXT,
    signage_type TEXT,
    crowd_monitoring_system TEXT,
    evacuation_route_description TEXT,
    assembly_point_location TEXT,
    plan_approval_date TEXT,
    approved_by TEXT,
    last_update_date TEXT,
    plan_status TEXT,
    contingency_plan_description TEXT,
    communication_channel TEXT,
    training_required TEXT,
    drill_frequency_months INTEGER
);

INSERT INTO event_crowd_control_plan VALUES ('CCP001','EVT001','5000','4','3','20','5','Metal Fencing','Digital','CCTV','North Hallway to Main Exit','Stadium Field','2024-09-01','SafetyMgr','2024-11-01','Active','Switch to indoor venue if weather severe','Radio','Yes','6');
INSERT INTO event_crowd_control_plan VALUES ('CCP002','EVT002','2000','2','2','10','2','Portable Barricades','Printed','RFID Counters','East Wing to Side Exit','Parking Lot A','2024-08-15','EventCoordinator','2024-10-20','Active','Cancel event if attendance exceeds limit','SMS','Yes','12');
INSERT INTO event_crowd_control_plan VALUES ('CCP003','EVT003','1500','3','2','12','3','Chain Link','LED','Drone Surveillance','North Atrium to Emergency Staircase','Gymnasium','2024-07-10','FacilitiesMgr','2024-09-30','Approved','Evacuate to neighboring building','Public Address','No','3');

-- Vendor insurance certificate table
CREATE TABLE vendor_insurance_certificate (
    certificate_id TEXT PRIMARY KEY,
    vendor_id TEXT,
    insurance_type TEXT,
    policy_number TEXT,
    provider_name TEXT,
    coverage_amount REAL,
    effective_date TEXT,
    expiration_date TEXT,
    jurisdiction TEXT,
    certificate_status TEXT,
    attached_document_url TEXT,
    risk_category TEXT,
    underwriter_contact TEXT,
    premium_amount REAL,
    deductible_amount REAL,
    renewal_notice_sent TEXT,
    compliance_officer TEXT,
    notes TEXT,
    last_audit_date TEXT,
    audit_result TEXT
);

INSERT INTO vendor_insurance_certificate VALUES ('CERT001','VEND001','General Liability','GL-12345','Acme Insurance','1000000','2024-01-01','2025-01-01','NY','Active','http://docs.university.edu/cert001','Low','5551112222','1200.00','5000.00','2024-12-01','OfficerA','All good','2024-10-15','Pass');
INSERT INTO vendor_insurance_certificate VALUES ('CERT002','VEND002','Workers Comp','WC-67890','Beta Assurance','500000','2023-06-15','2024-06-15','CA','Expired','http://docs.university.edu/cert002','Medium','5553334444','900.00','3000.00','2024-05-20','OfficerB','Renew required','2024-05-01','Fail');
INSERT INTO vendor_insurance_certificate VALUES ('CERT003','VEND003','Professional Liability','PL-24680','Gamma Cover','750000','2024-03-01','2025-03-01','TX','Active','http://docs.university.edu/cert003','Low','5555556666','1100.00','4000.00','2025-02-01','OfficerC','No issues','2024-09-10','Pass');

-- Digital learning content tag table
CREATE TABLE digital_learning_content_tag (
    tag_id TEXT PRIMARY KEY,
    content_id TEXT,
    tag_name TEXT,
    tag_category TEXT,
    created_by TEXT,
    created_date TEXT,
    last_modified_by TEXT,
    last_modified_date TEXT,
    relevance_score REAL,
    auto_generated TEXT,
    approved TEXT,
    approval_date TEXT,
    approver_id TEXT,
    usage_count INTEGER,
    description TEXT,
    language TEXT,
    alignment_standards TEXT,
    metadata_source TEXT,
    tag_visibility TEXT,
    notes TEXT
);

INSERT INTO digital_learning_content_tag VALUES ('TAG001','CONT001','Machine Learning','Subject','Admin','2024-01-10','Editor1','2024-11-02','0.95','Yes','Yes','2024-11-05','APR001','150','Introductory ML concepts','English','CS101','Internal','System','Public','Initial tag');
INSERT INTO digital_learning_content_tag VALUES ('TAG002','CONT002','Data Ethics','Theme','Admin','2024-02-20','Editor2','2024-10-28','0.88','No','Yes','2024-11-01','APR002','85','Ethical considerations in data science','English','DS201','External','User','Restricted','Reviewed by committee');
INSERT INTO digital_learning_content_tag VALUES ('TAG003','CONT003','Quantum Computing','Subject','Admin','2024-03-15','Editor3','2024-09-30','0.92','Yes','No','N/A','N/A','30','Advanced quantum algorithms','English','PH301','Internal','System','Private','Pending approval');

-- Sustainability carbon offset table
CREATE TABLE sustainability_carbon_offset (
    offset_id TEXT PRIMARY KEY,
    project_name TEXT,
    offset_type TEXT,
    verified_amount_tons REAL,
    verification_body TEXT,
    purchase_date TEXT,
    expiry_date TEXT,
    cost_usd REAL,
    supplier_name TEXT,
    contract_id TEXT,
    region TEXT,
    methodology TEXT,
    additionality TEXT,
    permanence TEXT,
    co_benefits TEXT,
    approved_by TEXT,
    approval_date TEXT,
    status TEXT,
    notes TEXT,
    last_update TEXT
);

INSERT INTO sustainability_carbon_offset VALUES ('OFF001','Reforestation Amazon','Avoidance','1500.0','VCS','2024-04-01','2034-04-01','30000','GreenEarth Ltd','CON001','South America','Afforestation','High','Long-term','Biodiversity','DirectorA','2024-04-05','Active','Purchased for campus carbon neutral goal','2024-10-20');
INSERT INTO sustainability_carbon_offset VALUES ('OFF002','Renewable Energy Kenya','Reduction','800.0','Gold Standard','2024-06-15','2029-06-15','16000','SolarFuture Inc','CON002','Africa','Solar PV','Medium','Medium','Community electricity access','DirectorB','2024-06-20','Active','Supports renewable target','2024-09-12');
INSERT INTO sustainability_carbon_offset VALUES ('OFF003','Methane Capture India','Avoidance','500.0','CDM','2023-12-01','2028-12-01','12500','CleanGas Solutions','CON003','Asia','Landfill capture','High','Medium','Local air quality improvement','DirectorC','2023-12-05','Retired','Project completed','2024-08-01');

-- Community health partner table
CREATE TABLE community_health_partner (
    partner_id TEXT PRIMARY KEY,
    organization_name TEXT,
    contact_person TEXT,
    contact_email TEXT,
    phone_number TEXT,
    service_area TEXT,
    partnership_start_date TEXT,
    partnership_end_date TEXT,
    services_provided TEXT,
    memorandum_url TEXT,
    data_sharing_agreement TEXT,
    funding_amount INTEGER,
    reporting_frequency TEXT,
    liaison_officer TEXT,
    evaluation_metric TEXT,
    status TEXT,
    last_review_date TEXT,
    next_review_date TEXT,
    notes TEXT,
    primary_focus_area TEXT
);

INSERT INTO community_health_partner VALUES ('CHP001','City Health Clinic','Dr Emily White','e.white@cityhealth.org','5557778888','North District','2022-01-15','2025-01-15','Primary Care, Vaccinations','http://agreements.university.edu/chp001','Yes','25000','Quarterly','OfficerHealth','Patient Satisfaction','Active','2024-07-01','2025-01-01','Strong collaboration','Preventive Care');
INSERT INTO community_health_partner VALUES ('CHP002','Wellness Outreach','Mr John Black','j.black@wellnessoutreach.org','5559991111','East District','2023-03-01','2026-03-01','Health Education, Screenings','http://agreements.university.edu/chp002','Yes','18000','Semi-Annual','OfficerOutreach','Event Attendance','Active','2024-06-15','2025-03-01','Expanding program','Community Education');
INSERT INTO community_health_partner VALUES ('CHP003','Senior Care Services','Ms Linda Green','l.green@seniorcare.org','5552223333','South District','2021-07-20','2024-07-20','Geriatric Care, Home Visits','http://agreements.university.edu/chp003','No','12000','Annual','OfficerSenior','Health Outcome Scores','Pending','2024-05-20','2025-07-20','Negotiating renewal','Aging Population');

-- Facility HVAC maintenance table
CREATE TABLE facility_hvac_maintenance (
    maintenance_id TEXT PRIMARY KEY,
    building_id TEXT,
    hvac_unit_id TEXT,
    maintenance_type TEXT,
    scheduled_date TEXT,
    completed_date TEXT,
    technician_id TEXT,
    service_vendor TEXT,
    parts_replaced TEXT,
    labor_hours REAL,
    cost_usd REAL,
    next_service_due TEXT,
    service_priority TEXT,
    issue_description TEXT,
    resolution_notes TEXT,
    airflow_test_result REAL,
    temperature_setpoint_deviation REAL,
    humidity_control_status TEXT,
    compliance_check_passed TEXT,
    notes TEXT
);

INSERT INTO facility_hvac_maintenance VALUES ('HM001','BLD001','HVAC_A1','Preventive','2024-11-05','2024-11-05','TECH001','CoolTech Ltd','Filter, Belt','3.5','750.00','2025-05-05','Medium','Routine filter change','Replaced filter and belt, system running smoothly','2.1','0.2','Good','Yes','All checks passed');
INSERT INTO facility_hvac_maintenance VALUES ('HM002','BLD002','HVAC_B3','Corrective','2024-10-22','2024-10-23','TECH002','AirFix Co','Compressor','5.0','1250.00','2025-04-22','High','Compressor failure causing low airflow','Compressor replaced, pressure restored','1.8','0.5','Fair','Yes','Follow-up in 30 days');
INSERT INTO facility_hvac_maintenance VALUES ('HM003','BLD003','HVAC_C2','Inspection','2024-09-15','2024-09-15','TECH003','HVAC Solutions','None','2.0','300.00','2025-03-15','Low','General inspection','No issues found','2.5','0.1','Good','Yes','Schedule next inspection');

-- Digital learning content tag table (already created above) – skip, use another new table instead:
-- Campus tree inventory already created, next new table: "global_partnership_agreement" not in list? Actually exists as "global_partnership_agreement". So choose "research_data_sharing_log" already exists. Need new unique: "innovation_lab_reservation". 

CREATE TABLE innovation_lab_reservation (
    reservation_id TEXT PRIMARY KEY,
    lab_id TEXT,
    researcher_id TEXT,
    project_name TEXT,
    start_timestamp TEXT,
    end_timestamp TEXT,
    equipment_requested TEXT,
    safety_briefing_completed TEXT,
    approved_by TEXT,
    approval_timestamp TEXT,
    reservation_status TEXT,
    notes TEXT,
    projected_budget_usd REAL,
    actual_spend_usd REAL,
    data_storage_alloc_gb INTEGER,
    compute_allocation_cores INTEGER,
    collaboration_partner TEXT,
    confidentiality_level TEXT,
    contact_phone TEXT,
    last_modified TEXT
);

INSERT INTO innovation_lab_reservation VALUES ('RES001','LAB01','RES100','AI Robotics','2024-12-01 08:00:00','2024-12-01 20:00:00','Robotic Arms, GPUs','Yes','DrSmith','2024-11-20 10:00:00','Confirmed','Initial prototype testing',5000.00,0.00,200,48,'TechCorp','High','5551239876','2024-11-25 14:30:00');
INSERT INTO innovation_lab_reservation VALUES ('RES002','LAB02','RES101','Bioinformatics Pipeline','2024-11-15 09:00:00','2024-11-15 17:00:00','High‑Memory Servers','Yes','DrJones','2024-11-01 09:30:00','Confirmed','Genome analysis workflow',3000.00,0.00,500,32,'BioLab','Medium','5559876543','2024-11-05 11:00:00');
INSERT INTO innovation_lab_reservation VALUES ('RES003','LAB03','RES102','Quantum Simulation','2024-10-20 10:00:00','2024-10-20 16:00:00','Quantum Processor','No','Pending','N/A','Pending','Awaiting safety briefing',8000.00,0.00,100,16,'QuantumCo','High','5557773333','2024-10-01 08:45:00');