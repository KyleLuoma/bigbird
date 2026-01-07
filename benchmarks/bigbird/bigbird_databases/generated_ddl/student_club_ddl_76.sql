-- Research Funding Cycle tracking
CREATE TABLE research_funding_cycle (
    cycle_id TEXT PRIMARY KEY,
    fiscal_year INTEGER,
    budget_total REAL,
    allocated REAL,
    remaining REAL,
    start_date TEXT,
    end_date TEXT,
    grant_type TEXT,
    num_projects INTEGER,
    avg_project_size REAL,
    funding_source TEXT,
    approval_status TEXT,
    reviewer TEXT,
    notes TEXT,
    currency TEXT,
    exchange_rate REAL,
    adjusted_budget REAL,
    compliance_score REAL,
    audit_date TEXT,
    audit_result TEXT
);

INSERT INTO research_funding_cycle VALUES ('RC001','2023',5000000,3200000,1800000,'2023-01-01','2023-12-31','Federal','12',266666.67,'DOE','Approved','DrSmith','Initial allocation','USD',1.0,5000000,95.2,'2023-02-15','Pass');
INSERT INTO research_funding_cycle VALUES ('RC002','2024',6000000,4000000,2000000,'2024-01-01','2024-12-31','State','15',400000,'NSF','Pending','DrJones','Awaiting budget signoff','USD',1.0,6000000,88.5,'2024-02-20','Pending');
INSERT INTO research_funding_cycle VALUES ('RC003','2025',4500000,3000000,1500000,'2025-01-01','2025-12-31','Private','10',450000,'TechCorp','Approved','DrLee','Mid‑year review','USD',1.0,4500000,92.0,'2025-03-10','Pass');

-- Campus Green Building Metrics
CREATE TABLE campus_green_building_metrics (
    building_id TEXT PRIMARY KEY,
    building_name TEXT,
    certification_level TEXT,
    total_area INTEGER,
    energy_consumption REAL,
    water_usage REAL,
    waste_recycled REAL,
    renewable_energy_percent REAL,
    carbon_emission REAL,
    indoor_air_quality REAL,
    occupancy_rate REAL,
    year_certified INTEGER,
    hvac_efficiency REAL,
    lighting_efficiency REAL,
    insulation_r_value REAL,
    solar_panel_capacity REAL,
    green_roof_area REAL,
    rainwater_harvest_capacity REAL,
    occupant_satisfaction REAL,
    maintenance_cost REAL
);

INSERT INTO campus_green_building_metrics VALUES ('B001','Science Hall','LEED Gold',25000,1200.5,350.2,80.0,25.0,55.3,95.0,0.87,2021,0.92,0.88,3.5,150.0,500.0,120.0,4.5,25000);
INSERT INTO campus_green_building_metrics VALUES ('B002','Library West','LEED Platinum',18000,950.0,210.5,90.0,30.0,42.7,98.2,0.93,2022,0.95,0.90,4.0,200.0,300.0,200.0,4.8,18000);
INSERT INTO campus_green_building_metrics VALUES ('B003','Student Center','LEED Silver',30000,1500.8,400.0,70.0,20.0,60.1,93.5,0.80,2020,0.88,0.85,3.2,100.0,250.0,80.0,4.2,32000);

-- Digital Learning Module Progress
CREATE TABLE digital_learning_module_progress (
    module_id TEXT PRIMARY KEY,
    module_title TEXT,
    learner_id TEXT,
    enrollment_date TEXT,
    completion_date TEXT,
    progress_percent REAL,
    quiz_score REAL,
    assignment_score REAL,
    final_grade TEXT,
    time_spent_minutes INTEGER,
    device_type TEXT,
    browser TEXT,
    os TEXT,
    ip_address TEXT,
    location TEXT,
    feedback TEXT,
    certification_awarded TEXT,
    instructor_id TEXT,
    cohort TEXT,
    status TEXT
);

INSERT INTO digital_learning_module_progress VALUES ('M001','Intro to Data Science','L1001','2023-09-01','2023-10-15',100.0,92.5,88.0,'A','720','Laptop','Chrome','Windows','192.168.1.10','Campus','Great content','Yes','I200','Fall2023','Completed');
INSERT INTO digital_learning_module_progress VALUES ('M002','Advanced Python','L1002','2023-09-10',NULL,65.0,78.0,65.0,'C','340','Tablet','Safari','iOS','192.168.1.20','Offsite','Need more examples','No','I201','Fall2023','InProgress');
INSERT INTO digital_learning_module_progress VALUES ('M003','Machine Learning Basics','L1003','2023-09-05','2023-12-01',85.0,88.0,82.0,'B','560','Desktop','Edge','Windows','192.168.1.30','Campus','Well structured','Yes','I202','Fall2023','Completed');

-- Sustainability Initiative Metric
CREATE TABLE sustainability_initiative_metric (
    initiative_id TEXT PRIMARY KEY,
    name TEXT,
    start_date TEXT,
    end_date TEXT,
    target_metric TEXT,
    baseline_value REAL,
    current_value REAL,
    target_value REAL,
    unit TEXT,
    responsible_department TEXT,
    funding_amount REAL,
    funding_source TEXT,
    risk_level TEXT,
    stakeholder_engagement TEXT,
    reporting_frequency TEXT,
    last_report_date TEXT,
    outcome TEXT,
    challenges TEXT,
    next_steps TEXT,
    status TEXT
);

INSERT INTO sustainability_initiative_metric VALUES ('SI001','Zero Waste Campus','2023-01-01','2025-12-31','Waste Diversion Rate',45.0,60.0,80.0,'Percent','Facilities',200000,'University Fund','Medium','High','Quarterly','2023-09-30','Improved','Behavioral change needed','Launch awareness campaign','OnTrack');
INSERT INTO sustainability_initiative_metric VALUES ('SI002','Renewable Energy Expansion','2022-06-01','2024-05-31','Renewable Energy %',30.0,45.0,70.0,'Percent','Energy Services',350000,'State Grant','Low','Medium','Biannual','2023-08-15','Installation phase','Supply chain delays','Finalize vendor contracts','OnTrack');
INSERT INTO sustainability_initiative_metric VALUES ('SI003','Green Transportation','2021-09-01','2023-12-31','Bike Share Usage',1200,2100,3000,'Trips','Transportation',150000,'Private Sponsor','High','Low','Monthly','2023-07-20','Usage increased','Docking station shortages','Add new stations','Completed');

-- Campus Transport Route
CREATE TABLE campus_transport_route (
    route_id TEXT PRIMARY KEY,
    route_name TEXT,
    start_point TEXT,
    end_point TEXT,
    distance_km REAL,
    average_travel_time_min REAL,
    vehicle_type TEXT,
    frequency_per_day INTEGER,
    peak_capacity INTEGER,
    offpeak_capacity INTEGER,
    driver_id TEXT,
    schedule_start_time TEXT,
    schedule_end_time TEXT,
    maintenance_window TEXT,
    fuel_type TEXT,
    emissions_kg REAL,
    on_time_performance REAL,
    delays_reported INTEGER,
    route_status TEXT,
    notes TEXT
);

INSERT INTO campus_transport_route VALUES ('R001','North Loop','North Gate','Main Quad',3.2,12.5,'Electric Bus',20,80,50,'D100','06:00','22:00','02:00-03:00','Electric',0.0,98.5,2,'Active','High ridership');
INSERT INTO campus_transport_route VALUES ('R002','South Express','South Gate','Science Center',5.0,15.0,'Hybrid Shuttle',15,60,40,'D101','07:00','21:00','01:00-02:00','Hybrid',120.5,95.0,5,'Active','Limited stops');
INSERT INTO campus_transport_route VALUES ('R003','East Connector','East Dorms','Library East',2.5,9.0,'Diesel Van',10,40,30,'D102','08:00','20:00','03:00-04:00','Diesel',250.3,90.2,8,'Maintenance','Replacement planned');

-- Library Digital Media Asset
CREATE TABLE library_digital_media_asset (
    asset_id TEXT PRIMARY KEY,
    title TEXT,
    creator TEXT,
    asset_type TEXT,
    format TEXT,
    size_mb REAL,
    upload_date TEXT,
    last_accessed TEXT,
    access_count INTEGER,
    license TEXT,
    copyright_status TEXT,
    language TEXT,
    subject TEXT,
    collection TEXT,
    digital_identifier TEXT,
    md5_hash TEXT,
    preservation_status TEXT,
    storage_location TEXT,
    access_restriction TEXT,
    notes TEXT
);

INSERT INTO library_digital_media_asset VALUES ('A001','Quantum Computing Intro','DrAlice','Video','MP4',500.2,'2023-05-10','2023-10-01',120,'Standard','Public','English','Physics','E‑Books','DOI10.1234/qtci','9a1b2c3d4e5f6g7h8i9j0k','Preserved','ColdStorage','Open','High demand');
INSERT INTO library_digital_media_asset VALUES ('A002','Shakespeare Sonnets','ProfBob','Audio','MP3',45.7,'2023-03-22','2023-09-15',80,'Creative Commons','Public','English','Literature','Archives','ISBN978014','3b4c5d6e7f8g9h0i1j2k3l','Preserved','MainServer','Open','Educational use');
INSERT INTO library_digital_media_asset VALUES ('A003','Ancient Maps Collection','CuratorX','Image','TIFF',1200.0,'2022-11-01','2023-08-20',250,'Restricted','Public','Latin','History','Special Collections','ARK000123','c1d2e3f4g5h6i7j8k9l0m','Preserved','ArchivalVault','Restricted','Research only');

-- Community Partner Engagement
CREATE TABLE community_partner_engagement (
    engagement_id TEXT PRIMARY KEY,
    partner_id TEXT,
    partnership_name TEXT,
    start_date TEXT,
    end_date TEXT,
    contact_person TEXT,
    contact_email TEXT,
    engagement_type TEXT,
    activities_planned TEXT,
    activities_completed TEXT,
    total_hours INTEGER,
    funds_contributed REAL,
    resources_provided TEXT,
    outcomes TEXT,
    evaluation_score REAL,
    next_phase TEXT,
    responsible_staff TEXT,
    status TEXT,
    last_updated TEXT,
    remarks TEXT
);

INSERT INTO community_partner_engagement VALUES ('E001','P100','STEM Outreach','2023-01-15','2024-01-14','Jane Doe','jane.doe@example.org','Volunteer','Workshops, Lab Tours','Workshops, Lab Tours',300,15000,'Equipment, Materials','Increased interest in STEM',4.7,'Expand to high schools','MikeR','Active','2023-10-01','Positive feedback');
INSERT INTO community_partner_engagement VALUES ('E002','P101','Health Awareness','2022-06-01','2023-05-31','John Smith','john.smith@example.org','Education','Seminars, Screenings','Seminars',120,8000,'Brochures, Guest Speakers','Improved community health metrics',4.2,'Introduce mobile clinics','SaraL','Completed','2023-05-30','Delivered as planned');
INSERT INTO community_partner_engagement VALUES ('E003','P102','Cultural Festival','2023-03-01','2023-09-30','Emily Tan','emily.tan@example.org','Event','Performances, Food Stalls','Performances, Food Stalls',200,12000,'Stage, Catering','Enhanced cultural appreciation',4.5,'Plan next year\'s festival','AliK','Active','2023-09-15','Awaiting sponsor confirmation');

-- Equipment Calibration Schedule
CREATE TABLE equipment_calibration_schedule (
    schedule_id TEXT PRIMARY KEY,
    equipment_id TEXT,
    equipment_type TEXT,
    calibration_date TEXT,
    next_due_date TEXT,
    calibrated_by TEXT,
    calibration_method TEXT,
    tolerance REAL,
    result TEXT,
    notes TEXT,
    location TEXT,
    serial_number TEXT,
    manufacturer TEXT,
    model TEXT,
    calibration_certificate_id TEXT,
    calibration_cost REAL,
    downtime_minutes INTEGER,
    compliance_status TEXT,
    approval_user TEXT,
    approval_date TEXT
);

INSERT INTO equipment_calibration_schedule VALUES ('CS001','EQ1001','Spectrometer','2023-08-10','2024-08-10','LabTechA','Standard','0.01','Pass','No issues','Lab A','SN12345','SpecCo','SpecX','CERT001',250.0,30,'Compliant','DrWilliams','2023-08-11');
INSERT INTO equipment_calibration_schedule VALUES ('CS002','EQ1002','Microscope','2023-07-05','2024-07-05','LabTechB','Laser','0.005','Pass','Adjusted focus','Lab B','SN54321','MicroInc','MicroPro','CERT002',180.0,45,'Compliant','DrTaylor','2023-07-06');
INSERT INTO equipment_calibration_schedule VALUES ('CS003','EQ1003','pH Meter','2023-09-01','2024-09-01','LabTechC','Buffer','0.02','Fail','Recalibration needed','Lab C','SN67890','pH Solutions','pH-2000','CERT003',120.0,20,'Non‑Compliant','DrMorgan','2023-09-02');

-- Grant Review Panel
CREATE TABLE grant_review_panel (
    panel_id TEXT PRIMARY KEY,
    grant_cycle_id TEXT,
    panel_name TEXT,
    meeting_date TEXT,
    chairperson TEXT,
    member_ids TEXT,
    quorum INTEGER,
    decision TEXT,
    comments TEXT,
    allocation_amount REAL,
    total_requested REAL,
    average_score REAL,
    max_score REAL,
    min_score REAL,
    funding_agency TEXT,
    panel_location TEXT,
    notes TEXT,
    status TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO grant_review_panel VALUES ('P001','RC001','Science Funding Panel','2023-02-20','DrSmith','M100,M101,M102',3,'Approved','Strong proposals in AI','3000000','3500000',86.5,95,70,'NSF','Conference Room A','All documents verified','Closed','2023-02-21','2023-02-21');
INSERT INTO grant_review_panel VALUES ('P002','RC002','Engineering Grants','2023-03-15','DrJones','M103,M104,M105',3,'Partial','Need clarification on budget','1500000','2000000',78.0,88,65,'DOE','Conference Room B','Requested additional data','Closed','2023-03-16','2023-03-16');
INSERT INTO grant_review_panel VALUES ('P003','RC003','Humanities Initiative','2023-04-10','DrLee','M106,M107,M108',3,'Rejected','Insufficient impact','0','500000',60.2,70,50,'NEH','Office 210','Panel consensus negative','Closed','2023-04-11','2023-04-11');

-- Sustainability Project Budget
CREATE TABLE sustainability_project_budget (
    project_id TEXT PRIMARY KEY,
    project_name TEXT,
    fiscal_year INTEGER,
    total_budget REAL,
    allocated_amount REAL,
    spent_amount REAL,
    remaining_amount REAL,
    funding_source TEXT,
    currency TEXT,
    exchange_rate REAL,
    budget_revision_date TEXT,
    approved_by TEXT,
    approval_status TEXT,
    cost_center TEXT,
    expense_category TEXT,
    justification TEXT,
    risk_assessment TEXT,
    expected_roi REAL,
    actual_roi REAL,
    notes TEXT
);

INSERT INTO sustainability_project_budget VALUES ('SP001','Campus Solar Panels','2023',800000,500000,300000,200000,'Green Fund','USD',1.0,'2023-06-01','DirectorGreen','Approved','CC100','Capital','Reduce electricity costs','Low','5.2',4.8,'Phase 1 completed');
INSERT INTO sustainability_project_budget VALUES ('SP002','Water Conservation Upgrade','2023',450000,250000,150000,100000,'Facilities Budget','USD',1.0,'2023-07-15','FacilitiesMgr','Approved','CC101','Operations','Lower water usage','Medium','3.5',3.0,'Installation ongoing');
INSERT INTO sustainability_project_budget VALUES ('SP003','Bike Share Expansion','2024',600000,400000,100000,300000,'Student Services','USD',1.0,'2024-01-10','VPStudentAffairs','Pending','CC102','Capital','Promote sustainable transport','High','4.0',NULL,'Awaiting final approval');