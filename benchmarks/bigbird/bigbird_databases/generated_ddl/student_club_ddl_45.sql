-- Academic Semester Calendar
CREATE TABLE academic_semester_calendar (
    semester_id TEXT PRIMARY KEY,
    academic_year TEXT,
    term TEXT,
    start_date TEXT,
    end_date TEXT,
    registration_start TEXT,
    registration_end TEXT,
    add_drop_deadline TEXT,
    grade_submission_deadline TEXT,
    holiday_name1 TEXT,
    holiday_date1 TEXT,
    holiday_name2 TEXT,
    holiday_date2 TEXT,
    holiday_name3 TEXT,
    holiday_date3 TEXT,
    special_event TEXT,
    special_event_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO academic_semester_calendar VALUES ('S2023F','2023-2024','Fall','2023-08-21','2023-12-15','2023-04-01','2023-04-30','2023-09-05','2023-12-10','Thanksgiving','2023-11-23','WinterBreak','2023-12-20','SpringBreak','2024-03-15','Homecoming','2023-10-12','First fall semester','2023-04-01','2023-04-01');
INSERT INTO academic_semester_calendar VALUES ('S2024S','2024-2025','Spring','2024-01-15','2024-05-10','2024-08-01','2024-08-31','2024-02-02','2024-05-05','SpringEquinox','2024-03-20','Easter','2024-04-12','MemorialDay','2024-05-27','StudyAbroadFair','2024-04-20','Second semester','2024-08-01','2024-08-01');
INSERT INTO academic_semester_calendar VALUES ('S2024U','2024-2025','Summer','2024-06-01','2024-08-15','2024-11-01','2024-11-30','2024-06-10','2024-08-10','IndependenceDay','2024-07-04','LaborDay','2024-09-02','None','NULL','SummerResearchExpo','2024-07-20','Summer term','2024-11-01','2024-11-01');

-- Energy Grid Zone
CREATE TABLE energy_grid_zone (
    zone_id TEXT PRIMARY KEY,
    zone_name TEXT,
    region TEXT,
    voltage_level INTEGER,
    capacity_mw REAL,
    operator TEXT,
    primary_substation TEXT,
    secondary_substation TEXT,
    grid_type TEXT,
    maintenance_window_start TEXT,
    maintenance_window_end TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    status TEXT,
    last_inspection_date TEXT,
    next_inspection_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    latitude REAL,
    longitude REAL
);

INSERT INTO energy_grid_zone VALUES ('ZG001','NorthCentral','RegionA',11500,2500.5,'GridCo','SubA1','SubA2','Transmission','2023-09-01','2023-09-03','gridco@nrc.com','555-0100','Active','2023-03-12','2024-03-12','Main north central zone','2023-01-15','2023-01-15',38.8977,-77.0365);
INSERT INTO energy_grid_zone VALUES ('ZG002','SouthEast','RegionB',13800,1800.0,'PowerSys','SubB1','SubB2','Distribution','2023-10-15','2023-10-17','powersys@se.com','555-0200','Planned','2023-04-20','2024-04-20','Upcoming expansion','2023-02-01','2023-02-01',34.0522,-118.2437);
INSERT INTO energy_grid_zone VALUES ('ZG003','WestCoast','RegionC',11500,3000.75,'Electra','SubC1','SubC2','Transmission','2023-11-05','2023-11-07','electra@wc.com','555-0300','Active','2023-05-05','2024-05-05','High capacity coastal line','2023-03-10','2023-03-10',36.1699,-115.1398);

-- Water Supply Station
CREATE TABLE water_supply_station (
    station_id TEXT PRIMARY KEY,
    station_name TEXT,
    city TEXT,
    county TEXT,
    state TEXT,
    capacity_liters INTEGER,
    source_type TEXT,
    water_quality_rating REAL,
    last_maintenance_date TEXT,
    next_maintenance_date TEXT,
    operator TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    latitude REAL,
    longitude REAL,
    elevation_m REAL,
    status TEXT,
    installed_year INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO water_supply_station VALUES ('WS001','Riverdale Pump','Riverdale','River County','CA',5000000,'River','9.5','2023-07-10','2024-01-10','AquaFlow','555-1100','contact@aquaflow.com',40.7128,-74.0060,15.2,'Operational',2015,'Primary river source','2023-01-01','2023-01-01');
INSERT INTO water_supply_station VALUES ('WS002','Mountain Spring','Highland','Mountain County','CO',3000000,'Spring','9.8','2023-06-20','2023-12-20','ClearWater','555-1200','info@clearwater.org',39.7392,-104.9903,2500.0,'Operational',2012,'Natural spring source','2023-02-01','2023-02-01');
INSERT INTO water_supply_station VALUES ('WS003','Lakeview Reservoir','Lakecity','Lake County','TX',8000000,'Lake','9.2','2023-08-01','2024-02-01','LakeSupply','555-1300','support@lakesupply.net',29.7604,-95.3698,5.0,'Under Maintenance',2018,'Large reservoir','2023-03-01','2023-03-01');

-- Online Course Material
CREATE TABLE online_course_material (
    material_id TEXT PRIMARY KEY,
    course_code TEXT,
    module_name TEXT,
    material_type TEXT,
    title TEXT,
    description TEXT,
    file_path TEXT,
    file_size_kb INTEGER,
    author TEXT,
    release_date TEXT,
    version TEXT,
    license TEXT,
    access_level TEXT,
    download_count INTEGER,
    last_accessed TEXT,
    rating REAL,
    review_count INTEGER,
    is_active TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO online_course_material VALUES ('M001','CS101','Intro','Video','Welcome to CS101','Course introduction video','/videos/cs101_intro.mp4',20480,'DrSmith','2023-01-10','v1','CCBY','Public',1500,'2023-12-01',4.8,45,'Yes','2023-01-10','2023-12-01');
INSERT INTO online_course_material VALUES ('M002','MATH201','CalculusI','PDF','Limits Chapter','PDF covering limits','/docs/limits.pdf',5120,'ProfJones','2023-02-15','v2','CC0','Students',800,'2023-12-02',4.5,30,'Yes','2023-02-15','2023-12-02');
INSERT INTO online_course_material VALUES ('M003','ENG150','Literature','Audio','Shakespeare Podcast','Audio discussion on Shakespeare','/audio/shakespeare.mp3',10240,'DrBrown','2023-03-20','v1','CCBYSA','Public',1200,'2023-12-03',4.7,38,'Yes','2023-03-20','2023-12-03');

-- Lab Safety Audit
CREATE TABLE lab_safety_audit (
    audit_id TEXT PRIMARY KEY,
    lab_id TEXT,
    audit_date TEXT,
    auditor_name TEXT,
    audit_scope TEXT,
    compliance_score REAL,
    hazard_count INTEGER,
    corrective_actions INTEGER,
    followup_date TEXT,
    overall_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    risk_level TEXT,
    equipment_checked INTEGER,
    chemical_inventory_checked INTEGER,
    training_records_checked INTEGER,
    ppe_inspected INTEGER,
    documentation_reviewed INTEGER,
    safety_signage INTEGER,
    emergency_exits INTEGER
);

INSERT INTO lab_safety_audit VALUES ('A001','LAB01','2023-09-15','AliceGreen','Full','92.5',3,2,'2023-10-15','Compliant','All major issues addressed','2023-09-15','2023-09-15','Low',25,30,20,15,10,5,3);
INSERT INTO lab_safety_audit VALUES ('A002','LAB02','2023-10-01','BobWhite','Chemical Storage','88.0',5,4,'2023-11-01','Conditional','Minor chemical labeling errors','2023-10-01','2023-10-01','Medium',20,35,18,12,9,6,4);
INSERT INTO lab_safety_audit VALUES ('A003','LAB03','2023-11-20','CarolBlack','Equipment','95.0',1,1,'2023-12-20','Compliant','Equipment calibration up to date','2023-11-20','2023-11-20','Low',30,25,22,18,15,8,5);

-- Library Maintenance Schedule
CREATE TABLE library_maintenance_schedule (
    schedule_id TEXT PRIMARY KEY,
    library_branch TEXT,
    maintenance_type TEXT,
    scheduled_start TEXT,
    scheduled_end TEXT,
    assigned_crew TEXT,
    estimated_cost REAL,
    actual_cost REAL,
    status TEXT,
    priority_level TEXT,
    description TEXT,
    created_at TEXT,
    updated_at TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    work_order_number TEXT,
    assets_affected INTEGER,
    downtime_hours REAL,
    approval_required TEXT,
    approved_by TEXT,
    notes TEXT
);

INSERT INTO library_maintenance_schedule VALUES ('LS001','Central Library','HVAC','2023-12-01','2023-12-05','CrewA',15000.0,14750.0,'Completed','High','Winter HVAC system overhaul','2023-11-01','2023-12-05','555-2100','maint@central.lib','WO12345',5,24.0,'Yes','FacilitiesMgr','All systems functional');
INSERT INTO library_maintenance_schedule VALUES ('LS002','East Branch','Fire Alarm','2023-12-10','2023-12-12','CrewB',5000.0,5200.0,'Completed','Medium','Fire alarm testing and replacement','2023-11-15','2023-12-12','555-2200','maint@east.lib','WO12346',2,8.0,'No','N/A','No issues');
INSERT INTO library_maintenance_schedule VALUES ('LS003','West Branch','Roof Repair','2024-01-15','2024-01-25','CrewC',20000.0,0.0,'Planned','High','Leak fixing and insulation','2023-12-20','2023-12-20','555-2300','maint@west.lib','WO12347',10,48.0,'Yes','FacilityDirector','Awaiting budget approval');

-- Medical Device Inventory
CREATE TABLE medical_device_inventory (
    device_id TEXT PRIMARY KEY,
    device_name TEXT,
    manufacturer TEXT,
    model_number TEXT,
    serial_number TEXT,
    purchase_date TEXT,
    warranty_expiration TEXT,
    location TEXT,
    department TEXT,
    status TEXT,
    calibration_date TEXT,
    next_calibration_date TEXT,
    last_serviced TEXT,
    next_service_due TEXT,
    assigned_to TEXT,
    usage_count INTEGER,
    maintenance_contract TEXT,
    cost REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO medical_device_inventory VALUES ('MD001','ECG Machine','MedTech','ECG-200','SN12345','2020-03-10','2025-03-10','Room101','Cardiology','Operational','2023-06-01','2024-06-01','2023-06-01','2024-06-01','DrAllen',120,'ContractA',25000.0,'Routine use','2020-03-10','2023-06-01');
INSERT INTO medical_device_inventory VALUES ('MD002','X-Ray Scanner','ImagiCo','XR-500','SN67890','2019-07-22','2024-07-22','Radiology Suite','Radiology','Under Maintenance','2023-05-15','2024-05-15','2023-05-15','2024-05-15','TechnicianB',85,'ContractB',120000.0','Recalibration needed','2019-07-22','2023-05-15');
INSERT INTO medical_device_inventory VALUES ('MD003','Infusion Pump','HealthEquip','IP-300','SN54321','2021-11-05','2026-11-05','ICU-2','Intensive Care','Operational','2023-08-20','2024-08-20','2023-08-20','2024-08-20','NurseC',200,'ContractC',8000.0,'High usage area','2021-11-05','2023-08-20');

-- Environmental Target Dashboard
CREATE TABLE environmental_target_dashboard (
    dashboard_id TEXT PRIMARY KEY,
    target_name TEXT,
    metric_type TEXT,
    baseline_value REAL,
    target_value REAL,
    current_value REAL,
    unit TEXT,
    responsible_team TEXT,
    start_date TEXT,
    end_date TEXT,
    progress_percentage REAL,
    status TEXT,
    last_updated TEXT,
    review_cycle TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    risk_assessment TEXT,
    mitigation_plan TEXT,
    data_source TEXT
);

INSERT INTO environmental_target_dashboard VALUES ('D001','Carbon Reduction','CO2 Emissions','5000','3000','3500','tons','Sustainability','2023-01-01','2025-12-31','70','On Track','2023-12-01','Quarterly','Mid-year assessment','2023-01-01','2023-12-01','Medium','Renewable Energy Purchase','SensorNetwork');
INSERT INTO environmental_target_dashboard VALUES ('D002','Water Savings','Water Usage','200000','150000','170000','gallons','Facilities','2023-01-01','2024-12-31','85','On Track','2023-11-15','Semi-Annual','Installing low-flow fixtures','2023-01-01','2023-11-15','Low','Low-Flow Fixtures','UtilityBills');
INSERT INTO environmental_target_dashboard VALUES ('D003','Waste Diversion','Recycled Material','40000','60000','55000','kg','Operations','2023-01-01','2025-12-31','92','Ahead','2023-10-20','Quarterly','Increase composting program','2023-01-01','2023-10-20','Low','Compost Bins','WasteAudit');

-- Public Grant Application
CREATE TABLE public_grant_application (
    application_id TEXT PRIMARY KEY,
    grant_name TEXT,
    applicant_organization TEXT,
    primary_contact TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    submission_date TEXT,
    requested_amount REAL,
    approved_amount REAL,
    status TEXT,
    review_cycle TEXT,
    score REAL,
    funding_agency TEXT,
    program_area TEXT,
    project_title TEXT,
    project_summary TEXT,
    budget_breakdown TEXT,
    timeline TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO public_grant_application VALUES ('GA001','STEM Innovation Grant','TechEd Alliance','LauraMiller','laura.miller@tead.org','555-3100','2023-04-15',150000.0,120000.0,'Approved','Annual',92.5,'National Science Foundation','STEM Education','Robotics in Classrooms','Develop robotics curriculum','Equipment:80000;Staff:40000;Materials:30000','24 months','High impact project','2023-04-15','2023-09-01');
INSERT INTO public_grant_application VALUES ('GA002','Community Health Initiative','HealthFirst','MichaelBrown','michael.brown@healthfirst.org','555-3200','2023-05-01',80000.0,80000.0,'Approved','Semi-Annual',88.0,'Department of Health','Public Health','Mobile Clinic Expansion','Expand mobile clinic services to rural areas','Vehicle:30000;Staff:35000;Supplies:15000','18 months','Addresses healthcare access','2023-05-01','2023-08-15');
INSERT INTO public_grant_application VALUES ('GA003','Arts Preservation Fund','CulturalHeritageOrg','SusanLee','susan.lee@cho.org','555-3300','2023-06-10',50000.0,0.0,'Pending','Quarterly',NULL,'National Endowment for the Arts','Arts Preservation','Historic Theater Restoration','Restore historic theater downtown','Construction:25000;Materials:15000;Consultants:10000','12 months','Awaiting review','2023-06-10','2023-06-10');

-- Historical Monument Record
CREATE TABLE historical_monument_record (
    monument_id TEXT PRIMARY KEY,
    name TEXT,
    location TEXT,
    city TEXT,
    county TEXT,
    state TEXT,
    year_established INTEGER,
    architect TEXT,
    style TEXT,
    material TEXT,
    height_m REAL,
    visitor_count_yearly INTEGER,
    maintenance_status TEXT,
    last_restoration_date TEXT,
    next_scheduled_restoration TEXT,
    protected_status TEXT,
    historical_significance TEXT,
    coordinates_lat REAL,
    coordinates_long REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO historical_monument_record VALUES ('HM001','Liberty Statue','Liberty Park','Metropolis','Metro County','NY',1886,'JohnDoe','Neoclassical','Bronze',30.5,250000,'Good','2022-05-20','2025-05-20','National Historic Landmark','Symbol of freedom and democracy',40.7128,-74.0060,'Requires periodic cleaning','2023-01-01','2023-01-01');
INSERT INTO historical_monument_record VALUES ('HM002','Old Mill Bridge','Riverbend','Smalltown','River County','VA',1820,'JaneSmith','Stone Arch','Stone',12.0,75000,'Fair','2021-09-15','2024-09-15','State Historic Register','Early industrial transportation','36.8529,-76.2859','Structural assessment due','2023-02-01','2023-02-01');
INSERT INTO historical_monument_record VALUES ('HM003','Founders Plaza Fountain','Campus Center','University City','College County','CA',1905,'AlbertBrown','Beaux-Arts','Marble',8.2,120000,'Excellent','2020-03-10','2023-03-10','Campus Heritage Site','Commemorates university founders',34.0522,-118.2437,'Water recycling system installed','2023-03-01','2023-03-01');