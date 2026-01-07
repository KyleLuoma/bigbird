-- Branch utility usage data
CREATE TABLE branch_utility_usage (
    usage_id INTEGER PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    reporting_date DATE NOT NULL,
    electricity_kwh REAL NOT NULL,
    water_m3 REAL NOT NULL,
    gas_therms REAL NOT NULL,
    heating_fuel_liters REAL NOT NULL,
    cooling_fan_hours INTEGER NOT NULL,
    solar_generation_kwh REAL NOT NULL,
    peak_demand_kw REAL NOT NULL,
    avg_voltage REAL NOT NULL,
    power_outages INTEGER NOT NULL,
    outage_duration_minutes INTEGER NOT NULL,
    water_leak_incidents INTEGER NOT NULL,
    waste_tonnage REAL NOT NULL,
    recycling_tonnage REAL NOT NULL,
    hvac_maintenance_flag TEXT NOT NULL,
    energy_star_rating INTEGER NOT NULL,
    carbon_emission_kg REAL NOT NULL,
    notes TEXT NOT NULL
);
INSERT INTO branch_utility_usage VALUES (1,101,'2024-01-15',12000.5,450.2,300.0,1200.0,500,2000.0,80.5,230.0,2,30,0,12.5,8.0,'Y',85,5000.0,'Normal month');
INSERT INTO branch_utility_usage VALUES (2,102,'2024-01-15',11500.0,420.0,280.0,1100.0,480,1800.0,78.0,228.5,1,20,1,11.0,7.5,'N',80,4700.0,'Slight overuse');
INSERT INTO branch_utility_usage VALUES (3,103,'2024-01-15',13000.8,470.5,310.0,1300.0,520,2100.0,82.3,232.1,3,45,0,13.2,9.0,'Y',88,5300.0,'Peak season');

-- Employee health assessment records
CREATE TABLE employee_health_assessment (
    assessment_id INTEGER PRIMARY KEY,
    employee_id INTEGER NOT NULL,
    assessment_date DATE NOT NULL,
    height_cm INTEGER NOT NULL,
    weight_kg INTEGER NOT NULL,
    bmi REAL NOT NULL,
    blood_pressure_systolic INTEGER NOT NULL,
    blood_pressure_diastolic INTEGER NOT NULL,
    cholesterol_mgdl INTEGER NOT NULL,
    glucose_mgdl INTEGER NOT NULL,
    vision_left INTEGER NOT NULL,
    vision_right INTEGER NOT NULL,
    hearing_left_db INTEGER NOT NULL,
    hearing_right_db INTEGER NOT NULL,
    stress_level TEXT NOT NULL,
    sleep_hours_per_night REAL NOT NULL,
    vaccination_status TEXT NOT NULL,
    last_medical_visit DATE NOT NULL,
    smoker_status TEXT NOT NULL,
    alcohol_units_per_week INTEGER NOT NULL,
    fitness_test_score INTEGER NOT NULL,
    notes TEXT NOT NULL
);
INSERT INTO employee_health_assessment VALUES (1,2001,'2024-02-10',175,70,22.9,120,80,190,95,20,20,30,30,'Medium',7.0,'Complete','2023-12-01','NonSmoker',2,85,'All clear');
INSERT INTO employee_health_assessment VALUES (2,2002,'2024-02-11',168,80,28.3,140,90,210,110,18,18,35,35,'High',6.0,'Incomplete','2023-11-20','Smoker',5,70,'Follow‑up needed');
INSERT INTO employee_health_assessment VALUES (3,2003,'2024-02-12',180,75,23.1,115,75,185,90,20,20,28,28,'Low',8.0,'Complete','2024-01-05','NonSmoker',1,90,'Excellent');

-- Customer experience metrics
CREATE TABLE customer_experience_metric (
    metric_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    survey_date DATE NOT NULL,
    net_promoter_score INTEGER NOT NULL,
    satisfaction_score INTEGER NOT NULL,
    service_speed_rating INTEGER NOT NULL,
    staff_friendliness_rating INTEGER NOT NULL,
    issue_resolution_time_minutes INTEGER NOT NULL,
    repeat_visit_flag TEXT NOT NULL,
    channel_used TEXT NOT NULL,
    comments TEXT NOT NULL,
    overall_rating INTEGER NOT NULL,
    likelihood_to_recommend INTEGER NOT NULL,
    product_knowledge_rating INTEGER NOT NULL,
    complaint_count INTEGER NOT NULL,
    loyalty_program_tier TEXT NOT NULL,
    average_spend REAL NOT NULL,
    contact_method TEXT NOT NULL,
    feedback_category TEXT NOT NULL,
    response_time_hours INTEGER NOT NULL,
    notes TEXT NOT NULL
);
INSERT INTO customer_experience_metric VALUES (1,3001,'2024-03-01',9,8,7,9,15,'Y','Online','Good service',8,9,8,'Gold',250.75,'Email','Service','2','Satisfied');
INSERT INTO customer_experience_metric VALUES (2,3002,'2024-03-02',6,5,4,5,45,'N','Phone','Slow response',5,6,6,'Silver',120.00,'Phone','Support','48','Needs improvement');
INSERT INTO customer_experience_metric VALUES (3,3003,'2024-03-03',10,9,8,10,10,'Y','InPerson','Excellent experience',9,10,9,'Platinum',500.25,'InPerson','Product','1','Highly satisfied');

-- Digital KYC records
CREATE TABLE digital_kyc_record (
    kyc_id INTEGER PRIMARY KEY,
    client_id INTEGER NOT NULL,
    verification_date DATE NOT NULL,
    document_type TEXT NOT NULL,
    document_number TEXT NOT NULL,
    expiry_date DATE NOT NULL,
    selfie_verified TEXT NOT NULL,
    address_verified TEXT NOT NULL,
    phone_verified TEXT NOT NULL,
    email_verified TEXT NOT NULL,
    risk_score REAL NOT NULL,
    source_of_funds TEXT NOT NULL,
    occupation TEXT NOT NULL,
    annual_income INTEGER NOT NULL,
    residency_status TEXT NOT NULL,
    nationality TEXT NOT NULL,
    facial_match_score REAL NOT NULL,
    document_check_score REAL NOT NULL,
    kyc_status TEXT NOT NULL,
    notes TEXT NOT NULL,
    auditor_id INTEGER NOT NULL
);
INSERT INTO digital_kyc_record VALUES (1,4001,'2024-04-05','Passport','P1234567','2034-04-05','Y','Y','Y','Y',0.12,'Salary','Engineer',85000,'Resident','CountryX',0.98,0.95,'Approved','All checks passed',101);
INSERT INTO digital_kyc_record VALUES (2,4002,'2024-04-06','IDCard','ID987654','2029-04-06','Y','N','Y','Y',0.45,'Business','Entrepreneur',150000,'NonResident','CountryY',0.85,0.80,'Pending','Address mismatch',102);
INSERT INTO digital_kyc_record VALUES (3,4003,'2024-04-07','DriverLicense','DL555555','2027-04-07','N','Y','N','Y',0.33,'Investments','Analyst',95000,'Resident','CountryZ',0.90,0.88,'Review','Selfie verification failed',103);

-- Regulatory site visit log
CREATE TABLE regulatory_site_visit (
    visit_id INTEGER PRIMARY KEY,
    site_id INTEGER NOT NULL,
    inspector_id INTEGER NOT NULL,
    visit_date DATE NOT NULL,
    purpose TEXT NOT NULL,
    findings TEXT NOT NULL,
    compliance_score REAL NOT NULL,
    corrective_action_required TEXT NOT NULL,
    deadline_date DATE NOT NULL,
    follow_up_date DATE NOT NULL,
    violations_count INTEGER NOT NULL,
    safety_hazard_flag TEXT NOT NULL,
    documentation_present TEXT NOT NULL,
    photos_taken INTEGER NOT NULL,
    equipment_inspected INTEGER NOT NULL,
    overall_rating INTEGER NOT NULL,
    recommendations TEXT NOT NULL,
    status TEXT NOT NULL,
    notes TEXT NOT NULL,
    duration_minutes INTEGER NOT NULL
);
INSERT INTO regulatory_site_visit VALUES (1,501,301,'2024-05-01','Annual audit','No major issues',95.5,'None','2024-06-01','2024-06-15',0,'N','Y',12,8,9,'Maintain standards','Closed','All good',180);
INSERT INTO regulatory_site_visit VALUES (2,502,302,'2024-05-02','Safety inspection','Minor fire code breach',78.0,'Update alarms',2024-06-10,2024-06-20,2,'Y','Y',8,5,6,'Schedule upgrades','Open','Follow‑up required',240);
INSERT INTO regulatory_site_visit VALUES (3,503,303,'2024-05-03','Environmental review','Excess emissions',68.3,'Install filter',2024-07-01,2024-07-15,3,'Y','N',5,4,5,'Reduce output','Open','Pending mitigation',210);

-- Audit traceability log
CREATE TABLE audit_traceability_log (
    log_id INTEGER PRIMARY KEY,
    audit_id INTEGER NOT NULL,
    table_name TEXT NOT NULL,
    record_key TEXT NOT NULL,
    operation_type TEXT NOT NULL,
    operation_timestamp DATE NOT NULL,
    user_id INTEGER NOT NULL,
    ip_address TEXT NOT NULL,
    device_type TEXT NOT NULL,
    change_summary TEXT NOT NULL,
    previous_values TEXT NOT NULL,
    new_values TEXT NOT NULL,
    compliance_flag TEXT NOT NULL,
    risk_level TEXT NOT NULL,
    approval_status TEXT NOT NULL,
    reviewer_id INTEGER NOT NULL,
    comments TEXT NOT NULL,
    batch_id INTEGER NOT NULL,
    source_system TEXT NOT NULL,
    retention_policy TEXT NOT NULL,
    archived_flag TEXT NOT NULL
);
INSERT INTO audit_traceability_log VALUES (1,601,'account','A100','UPDATE','2024-06-01',201,'192.168.1.10','Web','Balance corrected','balance=5000','balance=5200','Y','Low','Approved',301,'CoreBank','7Years','N');
INSERT INTO audit_traceability_log VALUES (2,602,'card','C200','INSERT','2024-06-02',202,'192.168.1.11','Mobile','New debit card','null','type=Debit','Y','Medium','Pending',302,'CardMgmt','5Years','N');
INSERT INTO audit_traceability_log VALUES (3,603,'loan','L300','DELETE','2024-06-03',203,'192.168.1.12','Web','Loan closed','status=Active','status=Closed','Y','Low','Approved',303,'LoanSys','10Years','Y');

-- Finance operation schedule
CREATE TABLE finance_operation_schedule (
    schedule_id INTEGER PRIMARY KEY,
    operation_type TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    target_account_id INTEGER NOT NULL,
    amount REAL NOT NULL,
    currency_code TEXT NOT NULL,
    frequency TEXT NOT NULL,
    status TEXT NOT NULL,
    responsible_user_id INTEGER NOT NULL,
    approval_user_id INTEGER NOT NULL,
    priority_level INTEGER NOT NULL,
    notes TEXT NOT NULL,
    created_timestamp DATE NOT NULL,
    last_modified_timestamp DATE NOT NULL,
    execution_engine TEXT NOT NULL,
    retry_count INTEGER NOT NULL,
    max_retries INTEGER NOT NULL,
    alert_threshold REAL NOT NULL,
    notification_channel TEXT NOT NULL
);
INSERT INTO finance_operation_schedule VALUES (1,'Transfer','2024-07-01','2024-07-01',101,15000.00,'USD','OneTime','Scheduled',401,501,1,'Quarterly profit distribution','2024-06-20','2024-06-21','BatchEngine',0,3,1000.00,'Email');
INSERT INTO finance_operation_schedule VALUES (2,'InterestAccrual','2024-07-01','2024-12-31',102,2500.00,'EUR','Monthly','Active',402,502,2,'Monthly interest posting','2024-06-22','2024-06-22','RealtimeEngine',1,3,500.00,'SMS');
INSERT INTO finance_operation_schedule VALUES (3,'FeeCharge','2024-08-01','2024-08-01',103,75.00,'GBP','OneTime','Pending',403,503,3,'Annual maintenance fee','2024-07-10','2024-07-11','BatchEngine',0,2,200.00,'Email');

-- Loan collateral inventory
CREATE TABLE loan_collateral_inventory (
    inventory_id INTEGER PRIMARY KEY,
    loan_id INTEGER NOT NULL,
    collateral_type TEXT NOT NULL,
    description TEXT NOT NULL,
    valuation_amount REAL NOT NULL,
    valuation_date DATE NOT NULL,
    location TEXT NOT NULL,
    owner_name TEXT NOT NULL,
    insured_flag TEXT NOT NULL,
    insurance_policy_number TEXT NOT NULL,
    coverage_amount REAL NOT NULL,
    depreciation_rate REAL NOT NULL,
    condition_rating INTEGER NOT NULL,
    risk_category TEXT NOT NULL,
    registration_number TEXT NOT NULL,
    serial_number TEXT NOT NULL,
    appraisal_company TEXT NOT NULL,
    appraisal_report_id INTEGER NOT NULL,
    notes TEXT NOT NULL,
    created_date DATE NOT NULL,
    updated_date DATE NOT NULL
);
INSERT INTO loan_collateral_inventory VALUES (1,701,'RealEstate','Office building downtown',1200000.00,'2024-03-15','CityCenter','Acme Corp','Y','POL123456',1200000.00,0.02,9,'Low','REG001','SN001','ValuationCo',901,'No issues','2024-04-01','2024-04-15');
INSERT INTO loan_collateral_inventory VALUES (2,702,'Vehicle','Company truck 2020','85000.00','2024-04-10','WarehouseA','Logistics Ltd','N','',0.0,0.15,7,'Medium','REG002','SN002','AutoAssess',902,'Pending insurance','2024-04-20','2024-05-01');
INSERT INTO loan_collateral_inventory VALUES (3,703,'Equipment','Industrial CNC machine','300000.00','2024-02-20','PlantB','Manufacturing Inc','Y','POL789012',300000.00,0.05,8,'Low','REG003','SN003','EquipEval',903,'All documents filed','2024-03-05','2024-03-20');

-- Card fraud monitoring
CREATE TABLE card_fraud_monitoring (
    monitor_id INTEGER PRIMARY KEY,
    card_id INTEGER NOT NULL,
    detection_date DATE NOT NULL,
    fraud_type TEXT NOT NULL,
    severity_level INTEGER NOT NULL,
    transaction_id INTEGER NOT NULL,
    amount REAL NOT NULL,
    merchant_category TEXT NOT NULL,
    merchant_location TEXT NOT NULL,
    ip_address TEXT NOT NULL,
    device_id TEXT NOT NULL,
    flag_status TEXT NOT NULL,
    investigation_status TEXT NOT NULL,
    analyst_id INTEGER NOT NULL,
    resolution_date DATE NOT NULL,
    loss_amount REAL NOT NULL,
    remarks TEXT NOT NULL,
    alert_channel TEXT NOT NULL,
    confidence_score REAL NOT NULL,
    escalation_needed TEXT NOT NULL,
    closed_flag TEXT NOT NULL
);
INSERT INTO card_fraud_monitoring VALUES (1,801,'2024-08-01','CardNotPresent','3',9001,2500.00,'Electronics','MetroCity','203.0.113.5','DEV123','Y','Open',601,'2024-08-10',2500.00,'High risk transaction','SMS',0.92,'Y','N');
INSERT INTO card_fraud_monitoring VALUES (2,802,'2024-08-02','DuplicateCharge','2',9002,150.00,'Retail','Suburbia','198.51.100.23','DEV124','Y','Closed',602,'2024-08-05',150.00,'Duplicate detected','Email',0.85,'N','Y');
INSERT INTO card_fraud_monitoring VALUES (3,803,'2024-08-03','SuspiciousLocation','4',9003,5000.00,'Travel','Foreign','192.0.2.44','DEV125','Y','Open',603,'2024-08-15',5000.00,'Location mismatch','Phone',0.96,'Y','N');

-- ATM security incident log
CREATE TABLE atm_security_incident (
    incident_id INTEGER PRIMARY KEY,
    atm_id INTEGER NOT NULL,
    incident_date DATE NOT NULL,
    incident_type TEXT NOT NULL,
    description TEXT NOT NULL,
    loss_amount REAL NOT NULL,
    suspect_description TEXT NOT NULL,
    video_recorded TEXT NOT NULL,
    police_report_number TEXT NOT NULL,
    resolved_flag TEXT NOT NULL,
    resolution_date DATE NOT NULL,
    downtime_minutes INTEGER NOT NULL,
    maintenance_cost REAL NOT NULL,
    security_vendor TEXT NOT NULL,
    alert_sent TEXT NOT NULL,
    follow_up_action TEXT NOT NULL,
    auditor_id INTEGER NOT NULL,
    notes TEXT NOT NULL,
    severity_level INTEGER NOT NULL,
    created_timestamp DATE NOT NULL
);
INSERT INTO atm_security_incident VALUES (1,901,'2024-09-01','Skimming','Card skimmer discovered',0.00,'Unknown','Y','PR12345','Y','2024-09-03',120,500.00,'SecureTech','Y','Inspect hardware','701','Removed device','2','2024-09-01');
INSERT INTO atm_security_incident VALUES (2,902,'2024-09-02','Vandalism','Panel damaged',0.00,'Male suspect','N','PR12346','N','NULL',240,800.00,'GuardCo','Y','Repair panel','702','Awaiting parts','3','2024-09-02');
INSERT INTO atm_security_incident VALUES (3,903,'2024-09-03','Cash theft','Cash box forced open',2000.00,'Female suspect','Y','PR12347','Y','2024-09-06',60,1200.00,'SecureTech','Y','Replenish cash','703','Investigated and closed','5','2024-09-03');