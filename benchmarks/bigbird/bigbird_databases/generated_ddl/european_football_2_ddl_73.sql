-- Weather station maintenance records
CREATE TABLE Weather_Station_Maintenance (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    station_id INTEGER,
    maintenance_date TEXT,
    technician_name TEXT,
    work_order_number TEXT,
    parts_replaced TEXT,
    cost REAL,
    downtime_minutes INTEGER,
    notes TEXT,
    latitude REAL,
    longitude REAL,
    firmware_version TEXT,
    calibration_status TEXT,
    battery_level INTEGER,
    signal_strength INTEGER,
    last_update TEXT,
    next_scheduled_maintenance TEXT,
    humidity_sensor_status TEXT,
    temperature_sensor_status TEXT,
    pressure_sensor_status TEXT,
    wind_speed_sensor_status TEXT
);

INSERT INTO Weather_Station_Maintenance (station_id,maintenance_date,technician_name,work_order_number,parts_replaced,cost,downtime_minutes,notes,latitude,longitude,firmware_version,calibration_status,battery_level,signal_strength,last_update,next_scheduled_maintenance,humidity_sensor_status,temperature_sensor_status,pressure_sensor_status,wind_speed_sensor_status)
VALUES (101,'2023-02-15','Alice Smith','WO-20230215-01','filter,seal',125.50,30,'Routine check',45.123,-93.456,'v1.2.3','calibrated',95,80,'2023-02-15','2023-08-15','ok','ok','ok','ok');

INSERT INTO Weather_Station_Maintenance (station_id,maintenance_date,technician_name,work_order_number,parts_replaced,cost,downtime_minutes,notes,latitude,longitude,firmware_version,calibration_status,battery_level,signal_strength,last_update,next_scheduled_maintenance,humidity_sensor_status,temperature_sensor_status,pressure_sensor_status,wind_speed_sensor_status)
VALUES (102,'2023-03-10','Bob Jones','WO-20230310-02','battery',200.00,45,'Battery replacement',46.789,-94.321,'v1.2.4','recalibrated',100,85,'2023-03-10','2023-09-10','ok','ok','needs service','ok');

INSERT INTO Weather_Station_Maintenance (station_id,maintenance_date,technician_name,work_order_number,parts_replaced,cost,downtime_minutes,notes,latitude,longitude,firmware_version,calibration_status,battery_level,signal_strength,last_update,next_scheduled_maintenance,humidity_sensor_status,temperature_sensor_status,pressure_sensor_status,wind_speed_sensor_status)
VALUES (103,'2023-01-20','Carol Lee','WO-20230120-03','none',0.00,15,'Check completed',44.567,-92.234,'v1.2.2','ok',90,78,'2023-01-20','2023-07-20','ok','ok','ok','ok');

-- Broadcast transmission routes
CREATE TABLE Broadcast_Transmission_Routes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    route_id INTEGER,
    start_time TEXT,
    end_time TEXT,
    source_server TEXT,
    destination_server TEXT,
    bandwidth_mbps REAL,
    latency_ms REAL,
    packet_loss_percent REAL,
    encryption_type TEXT,
    protocol TEXT,
    frequency_hz REAL,
    carrier_id TEXT,
    route_status TEXT,
    maintenance_window TEXT,
    last_test_date TEXT,
    avg_throughput_mbps REAL,
    max_throughput_mbps REAL,
    min_throughput_mbps REAL,
    error_log_path TEXT,
    qos_level TEXT,
    monitoring_enabled INTEGER,
    notes TEXT
);

INSERT INTO Broadcast_Transmission_Routes (route_id,start_time,end_time,source_server,destination_server,bandwidth_mbps,latency_ms,packet_loss_percent,encryption_type,protocol,frequency_hz,carrier_id,route_status,maintenance_window,last_test_date,avg_throughput_mbps,max_throughput_mbps,min_throughput_mbps,error_log_path,qos_level,monitoring_enabled,notes)
VALUES (1,'2023-03-01 08:00','2023-03-01 20:00','srv-eu-01','srv-us-01',5000,20,0.01,'AES256','TCP',2.4,'CARRIER01','active','02:00-03:00','2023-02-28',4800,5200,4600,'/logs/route1.log','high',1,'Primary European‑to‑US pipe');

INSERT INTO Broadcast_Transmission_Routes (route_id,start_time,end_time,source_server,destination_server,bandwidth_mbps,latency_ms,packet_loss_percent,encryption_type,protocol,frequency_hz,carrier_id,route_status,maintenance_window,last_test_date,avg_throughput_mbps,max_throughput_mbps,min_throughput_mbps,error_log_path,qos_level,monitoring_enabled,notes)
VALUES (2,'2023-03-01 08:00','2023-03-01 20:00','srv-asia-01','srv-eu-01',3000,35,0.05,'AES128','UDP',5.0,'CARRIER02','active','04:00-05:00','2023-02-28',2900,3100,2700,'/logs/route2.log','medium',1,'Asia‑to‑Europe backup');

INSERT INTO Broadcast_Transmission_Routes (route_id,start_time,end_time,source_server,destination_server,bandwidth_mbps,latency_ms,packet_loss_percent,encryption_type,protocol,frequency_hz,carrier_id,route_status,maintenance_window,last_test_date,avg_throughput_mbps,max_throughput_mbps,min_throughput_mbps,error_log_path,qos_level,monitoring_enabled,notes)
VALUES (3,'2023-03-01 08:00','2023-03-01 20:00','srv-us-02','srv-latam-01',2000,45,0.10,'None','TCP',2.0,'CARRIER03','maintenance','06:00-07:00','2023-02-27',1800,2100,1500,'/logs/route3.log','low',0,'North‑America to Latin America');

-- Fan loyalty program levels
CREATE TABLE Fan_Loyalty_Program_Levels (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    level_name TEXT,
    points_required INTEGER,
    benefits_description TEXT,
    tier_rank INTEGER,
    expiry_months INTEGER,
    bonus_multiplier REAL,
    exclusive_offers TEXT,
    priority_support INTEGER,
    free_shipping INTEGER,
    birthday_gift TEXT,
    anniversary_gift TEXT,
    upgrade_cost INTEGER,
    downgrade_policy TEXT,
    max_points_balance INTEGER,
    communication_preference TEXT,
    email_template_id INTEGER,
    sms_template_id INTEGER,
    app_notification_enabled INTEGER,
    social_media_access TEXT,
    partner_discounts TEXT,
    special_event_access TEXT,
    created_at TEXT
);

INSERT INTO Fan_Loyalty_Program_Levels (level_name,points_required,benefits_description,tier_rank,expiry_months,bonus_multiplier,exclusive_offers,priority_support,free_shipping,birthday_gift,anniversary_gift,upgrade_cost,downgrade_policy,max_points_balance,communication_preference,email_template_id,sms_template_id,app_notification_enabled,social_media_access,partner_discounts,special_event_access,created_at)
VALUES ('Bronze',0,'Basic membership benefits',1,12,1.0,'none',0,0,'discount10','none',0,'none',5000,'email',101,201,1,'limited','none','none','2023-01-01');

INSERT INTO Fan_Loyalty_Program_Levels (level_name,points_required,benefits_description,tier_rank,expiry_months,bonus_multiplier,exclusive_offers,priority_support,free_shipping,birthday_gift,anniversary_gift,upgrade_cost,downgrade_policy,max_points_balance,communication_preference,email_template_id,sms_template_id,app_notification_enabled,social_media_access,partner_discounts,special_event_access,created_at)
VALUES ('Silver',5000,'Early access and discounts',2,24,1.1,'early_access',1,1,'discount15','discount5',1000,'retroactive',15000,'email_sms',102,202,1,'full','partner15','invite_only','2023-01-01');

INSERT INTO Fan_Loyalty_Program_Levels (level_name,points_required,benefits_description,tier_rank,expiry_months,bonus_multiplier,exclusive_offers,priority_support,free_shipping,birthday_gift,anniversary_gift,upgrade_cost,downgrade_policy,max_points_balance,communication_preference,email_template_id,sms_template_id,app_notification_enabled,social_media_access,partner_discounts,special_event_access,created_at)
VALUES ('Gold',15000,'All benefits plus VIP events',3,36,1.25,'vip_events',1,1,'discount20','discount10',2500,'restricted',50000,'push',103,203,1,'full','partner25','vip_access','2023-01-01');

-- Club real estate properties
CREATE TABLE Club_Real_Estate_Properties (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    property_id INTEGER,
    property_type TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    purchase_date TEXT,
    purchase_price REAL,
    current_valuation REAL,
    land_area_sqft INTEGER,
    building_area_sqft INTEGER,
    zoning_type TEXT,
    occupancy_status TEXT,
    lease_start_date TEXT,
    lease_end_date TEXT,
    annual_tax REAL,
    insurance_provider TEXT,
    insurance_policy_number TEXT,
    manager_name TEXT,
    manager_contact TEXT,
    maintenance_contract_id INTEGER,
    notes TEXT
);

INSERT INTO Club_Real_Estate_Properties (property_id,property_type,address_line1,address_line2,city,state,zip_code,country,purchase_date,purchase_price,current_valuation,land_area_sqft,building_area_sqft,zoning_type,occupancy_status,lease_start_date,lease_end_date,annual_tax,insurance_provider,insurance_policy_number,manager_name,manager_contact,maintenance_contract_id,notes)
VALUES (1001,'training_center','123 Academy Way','','Metropolis','NY','10001','USA','2015-06-01',5000000,7200000,150000,50000,'commercial','owned',NULL,NULL,120000,'Acme Insurance','INS-001','John Doe','555-0100',3001,'Main training facility');

INSERT INTO Club_Real_Estate_Properties (property_id,property_type,address_line1,address_line2,city,state,zip_code,country,purchase_date,purchase_price,current_valuation,land_area_sqft,building_area_sqft,zoning_type,occupancy_status,lease_start_date,lease_end_date,annual_tax,insurance_provider,insurance_policy_number,manager_name,manager_contact,maintenance_contract_id,notes)
VALUES (1002,'office','456 Corporate Blvd','Suite 200','Gotham','IL','60601','USA','2018-09-15',2000000,2600000,30000,25000,'office','leased','2023-01-01','2028-01-01',45000,'Global Insurers','INS-002','Jane Smith','555-0200',3002,'Regional administrative office');

INSERT INTO Club_Real_Estate_Properties (property_id,property_type,address_line1,address_line2,city,state,zip_code,country,purchase_date,purchase_price,current_valuation,land_area_sqft,building_area_sqft,zoning_type,occupancy_status,lease_start_date,lease_end_date,annual_tax,insurance_provider,insurance_policy_number,manager_name,manager_contact,maintenance_contract_id,notes)
VALUES (1003,'stadium','789 Sports Ave','','Star City','CA','90001','USA','2020-03-20',15000000,18000000,200000,150000,'sports','owned',NULL,NULL,350000,'Stadium Cover','INS-003','Mike Johnson','555-0300',3003,'Secondary arena');

-- Stadium electrical grid
CREATE TABLE Stadium_Electrical_Grid (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    grid_section_id INTEGER,
    voltage_level_kv REAL,
    transformer_id TEXT,
    substation_name TEXT,
    capacity_mw REAL,
    current_load_mw REAL,
    load_factor REAL,
    outage_scheduled INTEGER,
    outage_start TEXT,
    outage_end TEXT,
    maintenance_last_date TEXT,
    maintenance_next_date TEXT,
    fault_history_log TEXT,
    safety_rating TEXT,
    redundancy_type TEXT,
    grounding_resistance_ohm REAL,
    harmonic_distortion_percent REAL,
    energy_efficiency_rating TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT
);

INSERT INTO Stadium_Electrical_Grid (grid_section_id,voltage_level_kv,transformer_id,substation_name,capacity_mw,current_load_mw,load_factor,outage_scheduled,outage_start,outage_end,maintenance_last_date,maintenance_next_date,fault_history_log,safety_rating,redundancy_type,grounding_resistance_ohm,harmonic_distortion_percent,energy_efficiency_rating,created_at,updated_at,notes)
VALUES (1,33.0,'TX-01','North Substation',20.0,12.5,0.62,0,NULL,NULL,'2022-12-01','2023-06-01','none','A','dual','0.5',1.2,'B','2023-01-01','2023-01-01','Primary grid segment');

INSERT INTO Stadium_Electrical_Grid (grid_section_id,voltage_level_kv,transformer_id,substation_name,capacity_mw,current_load_mw,load_factor,outage_scheduled,outage_start,outage_end,maintenance_last_date,maintenance_next_date,fault_history_log,safety_rating,redundancy_type,grounding_resistance_ohm,harmonic_distortion_percent,energy_efficiency_rating,created_at,updated_at,notes)
VALUES (2,11.0,'TX-02','South Substation',10.0,7.0,0.70,1,'2023-04-10','2023-04-10','2023-01-15','2023-07-15','overload2022','B','single','0.8',2.0,'C','2023-01-02','2023-01-02','Backup supply line');

INSERT INTO Stadium_Electrical_Grid (grid_section_id,voltage_level_kv,transformer_id,substation_name,capacity_mw,current_load_mw,load_factor,outage_scheduled,outage_start,outage_end,maintenance_last_date,maintenance_next_date,fault_history_log,safety_rating,redundancy_type,grounding_resistance_ohm,harmonic_distortion_percent,energy_efficiency_rating,created_at,updated_at,notes)
VALUES (3,0.4,'TX-03','Lighting Panel',5.0,3.5,0.70,0,NULL,NULL,'2023-02-20','2023-08-20','none','A','dual','0.3',0.8,'A','2023-01-03','2023-01-03','LED lighting circuit');

-- Sponsor tax records
CREATE TABLE Sponsor_Tax_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    fiscal_year INTEGER,
    tax_id_number TEXT,
    jurisdiction TEXT,
    taxable_income REAL,
    tax_rate_percent REAL,
    tax_paid_amount REAL,
    filing_date TEXT,
    payment_due_date TEXT,
    audit_status TEXT,
    auditor_name TEXT,
    audit_findings_summary TEXT,
    tax_credit_amount REAL,
    exemption_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    record_hash TEXT,
    compliance_officer TEXT,
    compliance_officer_contact TEXT
);

INSERT INTO Sponsor_Tax_Records (sponsor_id,fiscal_year,tax_id_number,jurisdiction,taxable_income,tax_rate_percent,tax_paid_amount,filing_date,payment_due_date,audit_status,auditor_name,audit_findings_summary,tax_credit_amount,exemption_status,notes,created_at,updated_at,record_hash,compliance_officer,compliance_officer_contact)
VALUES (5001,2022,'TX123456','USA',2500000,21.0,525000,'2023-02-28','2023-03-31','cleared','John Auditor','no issues',50000,'none','annual filing','2023-01-01','2023-01-01','hash001','Emily Clark','555-1010');

INSERT INTO Sponsor_Tax_Records (sponsor_id,fiscal_year,tax_id_number,jurisdiction,taxable_income,tax_rate_percent,tax_paid_amount,filing_date,payment_due_date,audit_status,auditor_name,audit_findings_summary,tax_credit_amount,exemption_status,notes,created_at,updated_at,record_hash,compliance_officer,compliance_officer_contact)
VALUES (5002,2022,'TX654321','Canada',1800000,15.0,270000,'2023-04-15','2023-05-15','under_review','Anna Review','minor discrepancy',30000,'partial','pending audit','2023-01-02','2023-01-02','hash002','Liam Patel','555-2020');

INSERT INTO Sponsor_Tax_Records (sponsor_id,fiscal_year,tax_id_number,jurisdiction,taxable_income,tax_rate_percent,tax_paid_amount,filing_date,payment_due_date,audit_status,auditor_name,audit_findings_summary,tax_credit_amount,exemption_status,notes,created_at,updated_at,record_hash,compliance_officer,compliance_officer_contact)
VALUES (5003,2022,'TX789012','UK',3000000,20.0,600000,'2023-03-01','2023-04-01','cleared','Mike Inspector','no issues',75000,'none','filed on time','2023-01-03','2023-01-03','hash003','Sofia Gomez','555-3030');

-- Community donation events
CREATE TABLE Community_Donation_Events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    event_name TEXT,
    event_date TEXT,
    location TEXT,
    organizer_name TEXT,
    total_funds_raised REAL,
    number_of_donors INTEGER,
    average_donation_amount REAL,
    target_amount REAL,
    cause_category TEXT,
    description TEXT,
    volunteer_hours INTEGER,
    media_coverage_links TEXT,
    sponsor_ids TEXT,
    tax_receipt_issued INTEGER,
    post_event_report_path TEXT,
    feedback_score REAL,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT
);

INSERT INTO Community_Donation_Events (event_id,event_name,event_date,location,organizer_name,total_funds_raised,number_of_donors,average_donation_amount,target_amount,cause_category,description,volunteer_hours,media_coverage_links,sponsor_ids,tax_receipt_issued,post_event_report_path,feedback_score,created_at,updated_at,notes)
VALUES (2001,'Charity Run','2023-05-10','Central Park','Club Outreach','150000',300,500,'200000','health','5K run to support local hospitals',120,'url1.com;url2.com','5001,5002',1,'/reports/run2023.pdf',4.5,'2023-05-11','2023-05-11','high participant turnout');

INSERT INTO Community_Donation_Events (event_id,event_name,event_date,location,organizer_name,total_funds_raised,number_of_donors,average_donation_amount,target_amount,cause_category,description,volunteer_hours,media_coverage_links,sponsor_ids,tax_receipt_issued,post_event_report_path,feedback_score,created_at,updated_at,notes)
VALUES (2002,'Food Drive','2023-11-20','Downtown Shelter','Club Community','80000',200,400,'100000','hunger','Collecting non‑perishable food items',80,'url3.com','5003',1,'/reports/fooddrive2023.pdf',4.0,'2023-11-21','2023-11-21','exceeded food collection goal');

INSERT INTO Community_Donation_Events (event_id,event_name,event_date,location,organizer_name,total_funds_raised,number_of_donors,average_donation_amount,target_amount,cause_category,description,volunteer_hours,media_coverage_links,sponsor_ids,tax_receipt_issued,post_event_report_path,feedback_score,created_at,updated_at,notes)
VALUES (2003,'Education Scholarship Fund','2023-09-05','City Hall','Club Education','120000',150,800,'150000','education','Scholarships for underprivileged youth',90,'url4.com;url5.com','5004,5005',1,'/reports/scholarship2023.pdf',4.8,'2023-09-06','2023-09-06','strong media presence');

-- Digital infrastructure endpoints
CREATE TABLE Digital_Infrastructure_Endpoints (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    endpoint_id INTEGER,
    ip_address TEXT,
    hostname TEXT,
    service_type TEXT,
    protocol TEXT,
    port INTEGER,
    ssl_enabled INTEGER,
    certificate_expiry TEXT,
    region TEXT,
    data_center TEXT,
    capacity_gbps REAL,
    current_usage_gbps REAL,
    latency_ms REAL,
    error_rate_percent REAL,
    monitoring_enabled INTEGER,
    last_patch_date TEXT,
    next_patch_due TEXT,
    admin_contact TEXT,
    backup_endpoint_id INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Digital_Infrastructure_Endpoints (endpoint_id,ip_address,hostname,service_type,protocol,port,ssl_enabled,certificate_expiry,region,data_center,capacity_gbps,current_usage_gbps,latency_ms,error_rate_percent,monitoring_enabled,last_patch_date,next_patch_due,admin_contact,backup_endpoint_id,notes,created_at,updated_at)
VALUES (3001,'192.168.10.1','api.main.example.com','API','HTTPS',443,1,'2024-12-31','EU','DC-01',10.0,6.5,45,0.02,1,'2023-02-15','2023-08-15','alice.admin','3002','primary api endpoint','2023-01-01','2023-01-01');

INSERT INTO Digital_Infrastructure_Endpoints (endpoint_id,ip_address,hostname,service_type,protocol,port,ssl_enabled,certificate_expiry,region,data_center,capacity_gbps,current_usage_gbps,latency_ms,error_rate_percent,monitoring_enabled,last_patch_date,next_patch_due,admin_contact,backup_endpoint_id,notes,created_at,updated_at)
VALUES (3002,'192.168.10.2','api.backup.example.com','API','HTTPS',443,1,'2025-01-15','EU','DC-02',8.0,3.2,55,0.01,1,'2023-02-20','2023-08-20','bob.admin','3001','secondary api endpoint','2023-01-02','2023-01-02');

INSERT INTO Digital_Infrastructure_Endpoints (endpoint_id,ip_address,hostname,service_type,protocol,port,ssl_enabled,certificate_expiry,region,data_center,capacity_gbps,current_usage_gbps,latency_ms,error_rate_percent,monitoring_enabled,last_patch_date,next_patch_due,admin_contact,backup_endpoint_id,notes,created_at,updated_at)
VALUES (3003,'192.168.20.1','db.main.example.com','Database','TCP',3306,0,'', 'US','DC-03',20.0,12.0,30,0.05,1,'2023-01-10','2023-07-10','carol.admin',NULL,'primary database server','2023-01-03','2023-01-03');

-- Vendor contract agreements
CREATE TABLE Vendor_Contract_Agreements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    contract_id INTEGER,
    vendor_id INTEGER,
    contract_start_date TEXT,
    contract_end_date TEXT,
    service_description TEXT,
    total_value_usd REAL,
    payment_terms TEXT,
    renewal_option TEXT,
    termination_notice_days INTEGER,
    governing_law TEXT,
    compliance_requirements TEXT,
    risk_rating TEXT,
    performance_score REAL,
    sla_metrics TEXT,
    penalty_clause TEXT,
    contact_person TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    amendment_number INTEGER,
    last_modified_date TEXT,
    notes TEXT,
    created_at TEXT
);

INSERT INTO Vendor_Contract_Agreements (contract_id,vendor_id,contract_start_date,contract_end_date,service_description,total_value_usd,payment_terms,renewal_option,termination_notice_days,governing_law,compliance_requirements,risk_rating,performance_score,sla_metrics,penalty_clause,contact_person,contact_email,contact_phone,amendment_number,last_modified_date,notes,created_at)
VALUES (4001,9001,'2022-01-01','2025-12-31','IT support services',750000,'30 days net','auto','90','NY','ISO27001','medium',92.5,'uptime99.5','late_fee5%','Mark Taylor','mark.taylor@vendor.com','555-4001',0,'2023-02-01','initial contract','2023-01-01');

INSERT INTO Vendor_Contract_Agreements (contract_id,vendor_id,contract_start_date,contract_end_date,service_description,total_value_usd,payment_terms,renewal_option,termination_notice_days,governing_law,compliance_requirements,risk_rating,performance_score,sla_metrics,penalty_clause,contact_person,contact_email,contact_phone,amendment_number,last_modified_date,notes,created_at)
VALUES (4002,9002,'2021-06-15','2024-06-14','Catering services',300000,'monthly','optional','60','CA','FoodSafetyReg','low',88.0,'service_quality95','penalty10%','Linda Green','linda.green@catering.com','555-4002',1,'2023-03-10','amended for price increase','2023-01-02');

INSERT INTO Vendor_Contract_Agreements (contract_id,vendor_id,contract_start_date,contract_end_date,service_description,total_value_usd,payment_terms,renewal_option,termination_notice_days,governing_law,compliance_requirements,risk_rating,performance_score,sla_metrics,penalty_clause,contact_person,contact_email,contact_phone,amendment_number,last_modified_date,notes,created_at)
VALUES (4003,9003,'2020-09-01','2023-08-31','Security personnel','500000','quarterly','auto','120','TX','BackgroundCheck','high',79.5,'response_time30','penalty15%','Tom Reed','tom.reed@security.com','555-4003',2,'2023-04-05','second amendment added','2023-01-03');

-- Regulatory compliance records
CREATE TABLE Regulatory_Compliance_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    record_id INTEGER,
    regulation_name TEXT,
    jurisdiction TEXT,
    compliance_status TEXT,
    last_audit_date TEXT,
    next_audit_due TEXT,
    responsible_party TEXT,
    documentation_path TEXT,
    findings_summary TEXT,
    corrective_action_plan TEXT,
    risk_level TEXT,
    penalty_amount_usd REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    compliance_officer TEXT,
    officer_contact TEXT,
    audit_team TEXT,
    audit_score REAL,
    remediation_deadline TEXT,
    attached_files TEXT
);

INSERT INTO Regulatory_Compliance_Records (record_id,regulation_name,jurisdiction,compliance_status,last_audit_date,next_audit_due,responsible_party,documentation_path,findings_summary,corrective_action_plan,risk_level,penalty_amount_usd,notes,created_at,updated_at,compliance_officer,officer_contact,audit_team,audit_score,remediation_deadline,attached_files)
VALUES (5001,'GDPR','EU','compliant','2023-01-20','2024-01-20','Data Protection Office','/docs/gdpr2023.pdf','no issues','maintain policies','low',0,'full compliance','2023-01-21','2023-01-21','Olivia White','555-5001','TeamA',98.0,'2023-06-30','/files/gdpr_evidence.zip');

INSERT INTO Regulatory_Compliance_Records (record_id,regulation_name,jurisdiction,compliance_status,last_audit_date,next_audit_due,responsible_party,documentation_path,findings_summary,corrective_action_plan,risk_level,penalty_amount_usd,notes,created_at,updated_at,compliance_officer,officer_contact,audit_team,audit_score,remediation_deadline,attached_files)
VALUES (5002,'CCPA','USA','partial','2023-03-15','2024-03-15','Privacy Office','/docs/ccpa2023.pdf','minor gaps','update data deletion process','medium',25000,'pending remediation','2023-03-16','2023-03-16','Ethan Black','555-5002','TeamB',85.5,'2023-09-30','/files/ccpa_report.pdf');

INSERT INTO Regulatory_Compliance_Records (record_id,regulation_name,jurisdiction,compliance_status,last_audit_date,next_audit_due,responsible_party,documentation_path,findings_summary,corrective_action_plan,risk_level,penalty_amount_usd,notes,created_at,updated_at,compliance_officer,officer_contact,audit_team,audit_score,remediation_deadline,attached_files)
VALUES (5003,'FIFA Financial Regulations','International','compliant','2023-02-10','2025-02-10','Finance Office','/docs/fifa_financial_2023.pdf','all criteria met','continue monitoring','low',0,'no penalties','2023-02-11','2023-02-11','Grace Kim','555-5003','TeamC',96.0,'2024-12-31','/files/fifa_financial_docs.zip');