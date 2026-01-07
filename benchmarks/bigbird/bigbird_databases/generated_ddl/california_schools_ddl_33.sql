-- District fuel purchases tracking
CREATE TABLE district_fuel_purchases (
    purchase_id INTEGER PRIMARY KEY,
    district_code TEXT,
    fuel_type TEXT,
    gallons REAL,
    cost_per_gallon REAL,
    total_cost REAL,
    purchase_date DATE,
    vendor_name TEXT,
    invoice_number TEXT,
    payment_status TEXT,
    fuel_grade TEXT,
    vehicle_category TEXT,
    receipt_url TEXT,
    created_at DATE,
    updated_at DATE,
    fuel_storage_location TEXT,
    odometer_reading INTEGER,
    driver_id TEXT,
    purchase_order_number TEXT,
    fiscal_year TEXT,
    notes TEXT
);
INSERT INTO district_fuel_purchases VALUES (1,'DC01','Diesel',5000.0,3.25,16250.0,'2023-05-10','FuelCo','INV1001','Paid','No2','Bus','http://example.com/receipt1','2023-05-11','2023-05-11','MainStorage',120000,'DR001','PO12345','FY2023','Monthly purchase');
INSERT INTO district_fuel_purchases VALUES (2,'DC02','Gasoline',3200.0,2.95,9440.0,'2023-06-12','EnergySupply','INV1002','Pending','No1','Car','http://example.com/receipt2','2023-06-13','2023-06-13','SecondaryTank',85000,'DR002','PO12346','FY2023','Quarterly purchase');
INSERT INTO district_fuel_purchases VALUES (3,'DC03','Propane',1500.0,1.80,2700.0,'2023-07-08','PropaneInc','INV1003','Paid','Propane','Generator','http://example.com/receipt3','2023-07-09','2023-07-09','PropaneVault',0,'DR003','PO12347','FY2023','Annual purchase');

-- School technology project funding
CREATE TABLE school_technology_project_funding (
    project_id INTEGER PRIMARY KEY,
    school_code TEXT,
    project_name TEXT,
    funding_source TEXT,
    award_amount REAL,
    award_date DATE,
    project_start_date DATE,
    project_end_date DATE,
    principal_investigator TEXT,
    vendor_contract_id TEXT,
    equipment_list TEXT,
    total_units INTEGER,
    status TEXT,
    reporting_quarter TEXT,
    compliance_status TEXT,
    grant_number TEXT,
    allocation_percent REAL,
    budget_category TEXT,
    last_modified DATE,
    notes TEXT,
    external_link TEXT
);
INSERT INTO school_technology_project_funding VALUES (101,'S001','SmartBoard Upgrade','StateGrant',25000.0,'2022-09-01','2022-10-01','2023-06-30','DrSmith','VC789','SmartBoard,MountingKit',30,'Active','Q4','Compliant','GN2022-01',100.0,'Equipment','2023-01-15','Initial deployment','http://example.com/project101');
INSERT INTO school_technology_project_funding VALUES (102,'S002','3D Printer Lab','FederalGrant',45000.0,'2023-01-15','2023-02-01','2024-02-01','ProfJones','VC790','3DPrinter,Filament',5,'Planning','Q1','Pending','GN2023-02',0.0,'Capital','2023-02-20','Design phase','http://example.com/project102');
INSERT INTO school_technology_project_funding VALUES (103,'S003','VR Headset Initiative','PrivateDonor',12000.0,'2022-05-10','2022-06-01','2022-12-01','MsLee','VC791','VRHeadset',20,'Completed','Q3','Compliant','GN2022-05',0.0,'Equipment','2022-12-02','All units deployed','http://example.com/project103');

-- Community parking permit usage
CREATE TABLE community_parking_permit_usage (
    permit_id INTEGER PRIMARY KEY,
    community_entity TEXT,
    vehicle_plate TEXT,
    permit_issue_date DATE,
    permit_expiry_date DATE,
    spot_number TEXT,
    zone_code TEXT,
    fee_amount REAL,
    payment_method TEXT,
    issued_by TEXT,
    usage_hours INTEGER,
    last_used DATE,
    violation_count INTEGER,
    status TEXT,
    renewal_needed TEXT,
    renewal_date DATE,
    remarks TEXT,
    created_at DATE,
    updated_at DATE,
    gps_latitude REAL,
    gps_longitude REAL
);
INSERT INTO community_parking_permit_usage VALUES (5001,'CentralPark','ABC1234','2022-01-01','2023-01-01','P12','Z5',150.0,'CreditCard','CityDept',200,'2022-12-20',0,'Active','No','2022-12-31','No issues','2022-01-01','2022-12-31',40.7128,-74.0060);
INSERT INTO community_parking_permit_usage VALUES (5002,'EastSideMall','XYZ5678','2022-03-15','2023-03-15','M07','Z2',200.0,'Cash','MallAdmin',350,'2023-01-10',1,'Suspended','Yes','2023-03-10','Overdue payment','2022-03-15','2023-01-10',34.0522,-118.2437);
INSERT INTO community_parking_permit_usage VALUES (5003,'Riverfront','LMN9012','2022-06-20','2023-06-20','R22','Z8',180.0,'DebitCard','CityDept',120,'2022-11-05',0,'Active','No','2023-06-15','Renewal pending','2022-06-20','2023-01-05',41.8781,-87.6298);

-- District emergency drill schedule
CREATE TABLE district_emergency_drill_schedule (
    drill_id INTEGER PRIMARY KEY,
    district_code TEXT,
    drill_type TEXT,
    scheduled_date DATE,
    start_time TEXT,
    end_time TEXT,
    coordinator_name TEXT,
    coordinator_contact TEXT,
    location TEXT,
    participants_estimated INTEGER,
    drill_objectives TEXT,
    resources_required TEXT,
    notification_method TEXT,
    evaluation_score REAL,
    follow_up_actions TEXT,
    status TEXT,
    created_on DATE,
    updated_on DATE,
    notes TEXT,
    drill_version TEXT,
    compliance_flag TEXT
);
INSERT INTO district_emergency_drill_schedule VALUES (9001,'DC01','Fire','2023-03-15','09:00','09:30','JohnDoe','5551234','AllSchools',1500,'EvacuationProcedures','FireExtinguishers','Email',92.5,'UpdateExitSigns','Completed','2023-03-01','2023-03-20','Successful drill','v1','Yes');
INSERT INTO district_emergency_drill_schedule VALUES (9002,'DC02','Earthquake','2023-04-20','10:00','10:45','JaneSmith','5555678','DistrictOffice',800,'DropCoverHold','Sandbags,FirstAid','SMS',88.0,'ConductAfterActionReview','Completed','2023-04-01','2023-04-22','Minor delays noted','v1','Yes');
INSERT INTO district_emergency_drill_schedule VALUES (9003,'DC03','Lockdown','2023-05-10','13:00','13:20','MikeBrown','5559012','HighSchool',600,'SecureClassrooms','LockdownBoxes','Phone',95.0,'UpdateProcedureDocs','Completed','2023-05-01','2023-05-12','All staff complied','v2','Yes');

-- School art exhibit inventory
CREATE TABLE school_art_exhibit_inventory (
    exhibit_id INTEGER PRIMARY KEY,
    school_code TEXT,
    exhibit_name TEXT,
    start_date DATE,
    end_date DATE,
    curator_name TEXT,
    curator_contact TEXT,
    number_of_artworks INTEGER,
    total_value REAL,
    insurance_policy TEXT,
    gallery_location TEXT,
    display_type TEXT,
    lighting_requirements TEXT,
    climate_control TEXT,
    security_level TEXT,
    visitor_capacity INTEGER,
    ticket_price REAL,
    sponsor_name TEXT,
    sponsor_amount REAL,
    created_at DATE,
    updated_at DATE,
    comments TEXT
);
INSERT INTO school_art_exhibit_inventory VALUES (2001,'S001','SpringArtShow','2023-04-01','2023-04-30','MsLee','5559876',45,12000.0,'Policy123','Gym','WallDisplay','Standard','ClimateControlled','High',200,5.0,'LocalArtsCouncil',5000.0,'2023-03-20','2023-04-01','Featured student works');
INSERT INTO school_art_exhibit_inventory VALUES (2002,'S002','DigitalMediaExpo','2023-05-10','2023-06-10','MrKim','5556543',30,8000.0,'Policy124','Auditorium','ScreenDisplay','LED','Standard','Medium',150,7.5,'TechSponsorInc',3000.0,'2023-04-15','2023-05-10','Incorporates video installations');
INSERT INTO school_art_exhibit_inventory VALUES (2003,'S003','HistoricalPortraits','2023-09-01','2023-09-30','DrAllen','5553210',60,25000.0,'Policy125','Library','WallDisplay','Spotlight','ClimateControlled','High',250,10.0,'HistoryFoundation',7000.0,'2023-08-20','2023-09-01','Includes alumni works');

-- District renewable energy asset log
CREATE TABLE district_renewable_energy_asset_log (
    asset_id INTEGER PRIMARY KEY,
    district_code TEXT,
    asset_type TEXT,
    capacity_mw REAL,
    installation_date DATE,
    manufacturer TEXT,
    model_number TEXT,
    warranty_expiration DATE,
    current_status TEXT,
    last_maintenance_date DATE,
    maintenance_provider TEXT,
    expected_lifetime_years INTEGER,
    location_latitude REAL,
    location_longitude REAL,
    performance_ratio REAL,
    annual_generation_mwh REAL,
    subsidy_amount REAL,
    decommission_plan TEXT,
    created_on DATE,
    updated_on DATE,
    notes TEXT,
    asset_serial TEXT
);
INSERT INTO district_renewable_energy_asset_log VALUES (301,'DC01','SolarPanel',2.5,'2021-06-15','SunPower','SP-500','2026-06-15','Operational','2023-01-10','EcoMaintain',25,34.0522,-118.2437,0.85,2200.0,100000.0,'Planned2029','2023-01-01','2023-01-10','Initial phase','SN-001');
INSERT INTO district_renewable_energy_asset_log VALUES (302,'DC02','WindTurbine',5.0,'2020-09-20','WindTech','WT-200','2028-09-20','Operational','2023-02-05','WindServiceCo',30,36.1699,-115.1398,0.78,3900.0,150000.0,'Pending2029','2023-01-15','2023-02-05','Second turbine added','SN-002');
INSERT INTO district_renewable_energy_asset_log VALUES (303,'DC03','Geothermal',3.2,'2019-04-10','GeoHeat','GH-300','2025-04-10','Maintenance','2023-03-12','GeoMaintain','40',40.7128,-74.0060,0.90,2800.0,120000.0,'Decommission2029','2023-02-01','2023-03-12','System upgrade scheduled','SN-003');

-- School cybersecurity incident report
CREATE TABLE school_cybersecurity_incident_report (
    incident_id INTEGER PRIMARY KEY,
    school_code TEXT,
    incident_date DATE,
    detection_time TEXT,
    report_time TEXT,
    incident_type TEXT,
    affected_systems TEXT,
    data_compromised INTEGER,
    breach_severity TEXT,
    response_team TEXT,
    mitigation_steps TEXT,
    root_cause TEXT,
    downtime_minutes INTEGER,
    recovered BOOLEAN,
    notification_sent BOOLEAN,
    regulatory_fine REAL,
    lessons_learned TEXT,
    status TEXT,
    created_at DATE,
    updated_at DATE,
    analyst_name TEXT,
    analyst_contact TEXT
);
INSERT INTO school_cybersecurity_incident_report VALUES (4001,'S001','2023-02-14','13:45','14:05','Phishing','EmailServer',0,'Low','ITTeam','PasswordReset','HumanError',30,1,1,0.0,'User training emphasized','Closed','2023-02-15','2023-02-15','AliceBrown','5551112');
INSERT INTO school_cybersecurity_incident_report VALUES (4002,'S002','2023-04-01','09:20','09:45','Ransomware','FileServer',5000,'High','SecurityOps','IsolateNetwork,RestoreBackup','OutdatedPatch',720,0,1,25000.0,'Implement patch management','InProgress','2023-04-02','2023-04-02','BobClark','5552223');
INSERT INTO school_cybersecurity_incident_report VALUES (4003,'S003','2023-05-22','16:10','16:30','DDoS','Website',0,'Medium','NetworkTeam','IncreaseBandwidth,RateLimit','InsufficientCapacity',90,1,0,0.0,'Scale infrastructure','Resolved','2023-05-23','2023-05-23','CarolDavis','5553334');

-- Community health center statistics
CREATE TABLE community_health_center_statistics (
    center_id INTEGER PRIMARY KEY,
    community_name TEXT,
    year INTEGER,
    total_visits INTEGER,
    pediatric_visits INTEGER,
    adult_visits INTEGER,
    vaccinations_administered INTEGER,
    mental_health_sessions INTEGER,
    average_wait_time_minutes REAL,
    staff_count INTEGER,
    physicians_count INTEGER,
    nurses_count INTEGER,
    funding_received REAL,
    grants_awarded INTEGER,
    facility_rating REAL,
    emergency_cases INTEGER,
    chronic_disease_cases INTEGER,
    outreach_programs INTEGER,
    created_on DATE,
    updated_on DATE,
    notes TEXT,
    contact_phone TEXT
);
INSERT INTO community_health_center_statistics VALUES (601,'NorthSide',2022,15000,6000,9000,8000,1200,20.5,45,10,30,250000.0,5,4.5,200,350,12,'2023-01-01','2023-01-01','Stable','5552223');
INSERT INTO community_health_center_statistics VALUES (602,'EastVillage',2022,12000,5000,7000,6500,900,18.0,38,8,25,200000.0,3,4.2,150,280,10,'2023-01-05','2023-01-05','Improving access','5553344');
INSERT INTO community_health_center_statistics VALUES (603,'SouthRidge',2022,18000,7500,10500,9000,1500,22.3,52,12,35,300000.0,7,4.8,250,410,15,'2023-01-10','2023-01-10','High demand area','5554455');

-- District infrastructure project funding
CREATE TABLE district_infrastructure_project_funding (
    project_id INTEGER PRIMARY KEY,
    district_code TEXT,
    project_name TEXT,
    project_type TEXT,
    total_budget REAL,
    allocated_funds REAL,
    federal_funding REAL,
    state_funding REAL,
    local_funding REAL,
    start_date DATE,
    projected_end_date DATE,
    actual_end_date DATE,
    contractor_name TEXT,
    contract_amount REAL,
    status TEXT,
    percent_complete REAL,
    risk_level TEXT,
    oversight_agency TEXT,
    last_audit_date DATE,
    created_on DATE,
    updated_on DATE,
    comments TEXT,
    funding_source_details TEXT
);
INSERT INTO district_infrastructure_project_funding VALUES (701,'DC01','Bridge Renovation','Construction',5000000.0,3000000.0,1000000.0,800000.0,200000.0,'2022-01-15','2024-12-31',NULL,'BuildCo',4500000.0,'InProgress',60.0,'Medium','StateDept','2023-06-30','2023-01-10','2023-06-01','Funding split among sources','Federal 20%, State 16%, Local 4%');
INSERT INTO district_infrastructure_project_funding VALUES (702,'DC02','School Roof Replacement','Maintenance',1200000.0,1200000.0,0.0,500000.0,700000.0,'2023-02-01','2023-11-30','2023-11-28','RoofMasters','1150000.0','Completed',100.0,'Low','DistrictFacilities','2023-12-01','2023-01-20','2023-12-02','All phases completed on schedule','State grant covered half');
INSERT INTO district_infrastructure_project_funding VALUES (703,'DC03','Playground Modernization','Recreation',800000.0,500000.0,200000.0,100000.0,0.0,'2023-05-10','2024-04-30',NULL,'PlaySafe','480000.0','Planned',20.0,'Low','CommunityBoard','2023-07-15','2023-06-01','2023-07-01','Awaiting final permits','Mixed funding sources');

-- School parent communication preferences
CREATE TABLE school_parent_communication_preferences (
    pref_id INTEGER PRIMARY KEY,
    school_code TEXT,
    parent_id TEXT,
    preferred_contact_method TEXT,
    email_address TEXT,
    phone_number TEXT,
    sms_opt_in TEXT,
    newsletter_opt_in TEXT,
    meeting_reminder TEXT,
    emergency_alert TEXT,
    language_preference TEXT,
    preferred_contact_time TEXT,
    notes TEXT,
    last_updated DATE,
    created_on DATE,
    opt_out_reason TEXT,
    communication_channel_1 TEXT,
    communication_channel_2 TEXT,
    communication_channel_3 TEXT,
    consent_given BOOLEAN,
    data_sharing_agreement TEXT
);
INSERT INTO school_parent_communication_preferences VALUES (801,'S001','P001','Email','parent1@example.com','5553334','Yes','Yes','Evening','Immediate','English','Evening','Prefers email for all notices','2023-04-01','2023-04-01','None','Email','SMS','PhoneCall',1,'Signed2023');
INSERT INTO school_parent_communication_preferences VALUES (802,'S002','P002','Phone','parent2@example.com','5554445','No','Yes','Morning','Immediate','Spanish','Morning','Wants phone calls for emergencies','2023-04-05','2023-04-02','Too many messages','Phone','Email','Mail',1,'Signed2023');
INSERT INTO school_parent_communication_preferences VALUES (803,'S003','P003','SMS','parent3@example.com','5555556','Yes','No','Afternoon','Urgent','French','Afternoon','Only SMS and urgent alerts','2023-04-10','2023-04-07','Prefer fewer newsletters','SMS','Email','Phone',1,'Signed2023');