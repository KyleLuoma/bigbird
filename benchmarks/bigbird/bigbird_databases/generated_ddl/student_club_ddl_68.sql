-- Campus Art Gallery information
CREATE TABLE campus_art_gallery
(
    gallery_id                TEXT PRIMARY KEY,
    gallery_name              TEXT,
    location_building         TEXT,
    floor                     INTEGER,
    total_area_sqft           INTEGER,
    opening_hours             TEXT,
    curator_name              TEXT,
    contact_email             TEXT,
    phone                     TEXT,
    established_year          INTEGER,
    collection_focus          TEXT,
    annual_visitors           INTEGER,
    security_level            TEXT,
    climate_control           TEXT,
    wifi_available            TEXT,
    accessibility_rating      TEXT,
    funding_source            TEXT,
    maintenance_budget        REAL,
    last_renovation_date      TEXT,
    insurance_policy_number   TEXT,
    website_url               TEXT,
    social_media_handle       TEXT
);

INSERT INTO campus_art_gallery VALUES
('G001','Modern Art Gallery','Arts Building',2,12000,'09:00-17:00','Alice Smith','alice.smith@example.com','5551234567',2010,'Contemporary','15000','High','Active','Yes','AA','University Fund',25000.00,'2021-06-15','POL12345','http://artgallery.univ.edu','@uniartgallery');

INSERT INTO campus_art_gallery VALUES
('G002','Historical Exhibit','Main Hall',1,8000,'10:00-18:00','Bob Jones','bob.jones@example.com','5559876543',1995,'Historical','12000','Medium','Passive','No','BBB','Alumni Donation',18000.00,'2019-09-30','POL67890','http://history.univ.edu','@historygallery');

INSERT INTO campus_art_gallery VALUES
('G003','Sculpture Garden','Campus Green',0,5000,'08:00-20:00','Carol Lee','carol.lee@example.com','5555551234',2005,'Sculpture','8000','Low','Passive','Yes','CCC','Grant Funding',12000.00,'2020-03-22','POL11223','http://sculpture.univ.edu','@sculpturegarden');

-- Research Equipment Calibration Schedule
CREATE TABLE research_equipment_calibration_schedule
(
    schedule_id               TEXT PRIMARY KEY,
    equipment_id              TEXT,
    equipment_type            TEXT,
    serial_number             TEXT,
    calibration_due_date      TEXT,
    last_calibrated_date      TEXT,
    calibrated_by             TEXT,
    calibration_lab           TEXT,
    calibration_method       TEXT,
    calibration_certificate_id TEXT,
    next_due_interval_days   INTEGER,
    status                    TEXT,
    notes                     TEXT,
    priority_level            TEXT,
    cost_estimate             REAL,
    approved_by               TEXT,
    approval_date             TEXT,
    department_responsible    TEXT,
    external_vendor           TEXT,
    warranty_expiration       TEXT,
    calibration_frequency     TEXT
);

INSERT INTO research_equipment_calibration_schedule VALUES
('SCH001','EQ1001','Spectrometer','SN123456','2023-12-01','2023-06-01','Tech Lab','Central Lab','Standard','CERT1001',180,'Pending','N/A','Medium',500.00,'Dr.Jones','2023-05-15','Chemistry','VendorA','2025-06-01','Semiannual');

INSERT INTO research_equipment_calibration_schedule VALUES
('SCH002','EQ2002','Microscope','SN654321','2024-03-15','2023-09-15','Dr.Smith','Biology Lab','Precision','CERT2002',180,'Completed','All good','High',300.00,'Dr.Smith','2023-08-20','Biology','VendorB','2026-09-15','Annual');

INSERT INTO research_equipment_calibration_schedule VALUES
('SCH003','EQ3003','Centrifuge','SN112233','2023-11-20','2023-05-20','LabTech','Physics Lab','Standard','CERT3003',180,'Scheduled','Replace seals','Low',250.00,'Dr.Williams','2023-04-30','Physics','VendorC','2025-05-20','Semiannual');

-- Alumni Giving Pledge
CREATE TABLE alumni_giving_pledge
(
    pledge_id                 TEXT PRIMARY KEY,
    alumni_id                 TEXT,
    pledge_amount             REAL,
    pledge_date               TEXT,
    pledge_type               TEXT,
    payment_method            TEXT,
    installment_count         INTEGER,
    installment_amount        REAL,
    first_installment_date    TEXT,
    last_installment_date     TEXT,
    designated_fund           TEXT,
    matching_gift_status      TEXT,
    acknowledgment_sent       TEXT,
    thank_you_letter_sent     TEXT,
    pledge_status             TEXT,
    notes                     TEXT,
    created_by_user           TEXT,
    created_timestamp         TEXT,
    updated_by_user           TEXT,
    updated_timestamp         TEXT,
    tax_receipt_number        TEXT
);

INSERT INTO alumni_giving_pledge VALUES
('P001','A1001',50000.00,'2022-01-15','One-time','Check',1,50000.00,'2022-01-20','2022-01-20','Science Fund','Pending','Yes','Yes','Active','N/A','admin','2022-01-10','admin','2022-01-12','TR12345');

INSERT INTO alumni_giving_pledge VALUES
('P002','A1002',20000.00,'2023-03-10','Installment','CreditCard',4,5000.00,'2023-04-01','2023-07-01','Scholarship Fund','Matched','Yes','No','Active','Requested receipt','admin','2023-03-01','admin','2023-03-05','TR67890');

INSERT INTO alumni_giving_pledge VALUES
('P003','A1003',15000.00,'2021-11-05','One-time','BankTransfer',1,15000.00,'2021-11-10','2021-11-10','Arts Endowment','None','Yes','Yes','Completed','N/A','admin','2021-10-30','admin','2021-11-02','TR11223');

-- Campus Green Building Metrics
CREATE TABLE campus_green_building_metrics
(
    building_id               TEXT PRIMARY KEY,
    building_name             TEXT,
    certification_level       TEXT,
    year_certified            INTEGER,
    total_square_feet         INTEGER,
    energy_star_score         INTEGER,
    water_use_gallons_per_year INTEGER,
    renewable_energy_percent REAL,
    waste_diversion_rate      REAL,
    indoor_air_quality_index  INTEGER,
    thermal_comfort_rating    INTEGER,
    light_efficiency_lumen_per_watt REAL,
    carbon_footprint_tons_co2e REAL,
    hvac_efficiency_ratio    REAL,
    insulation_r_value        REAL,
    green_roof_area_sqft      INTEGER,
    solar_panel_capacity_kw   REAL,
    leed_points               INTEGER,
    occupant_satisfaction_score INTEGER,
    last_audit_date           TEXT,
    auditor_name              TEXT
);

INSERT INTO campus_green_building_metrics VALUES
('B001','Engineering Hall','LEED Gold',2018,250000,85,1200000,30.5,75.0,42,80,80.5,1500.00,0.9,3.5,20000,150.0,85,88,'2022-05-10','John Doe');

INSERT INTO campus_green_building_metrics VALUES
('B002','Science Center','LEED Silver',2020,300000,78,1500000,25.0,68.0,38,75,70.2,1800.00,0.85,3.2,15000,120.0,70,82,'2023-03-22','Jane Smith');

INSERT INTO campus_green_building_metrics VALUES
('B003','Library West','LEED Platinum',2019,180000,92,900000,40.0,80.0,45,85,85.0,1200.00,0.95,4.0,25000,200.0,95,90,'2021-11-15','Emily Brown');

-- Digital Learning Module Progress
CREATE TABLE digital_learning_module_progress
(
    progress_id               TEXT PRIMARY KEY,
    student_id                TEXT,
    module_id                 TEXT,
    module_name               TEXT,
    enrollment_date           TEXT,
    completion_date           TEXT,
    status                    TEXT,
    score_percentage          REAL,
    time_spent_minutes       INTEGER,
    attempts                  INTEGER,
    last_accessed_timestamp   TEXT,
    certificate_issued        TEXT,
    instructor_id             TEXT,
    learning_path             TEXT,
    device_type               TEXT,
    browser                   TEXT,
    os_version                TEXT,
    location_city             TEXT,
    location_country          TEXT,
    feedback_text             TEXT,
    badge_awarded             TEXT
);

INSERT INTO digital_learning_module_progress VALUES
('PR001','S1001','M001','Data Science Basics','2023-01-10','2023-02-15','Completed',92.5,480,2,'2023-02-14 10:30:00','Yes','I200','Data Science','Laptop','Chrome','87','Boston','USA','Great module','DataNovice');

INSERT INTO digital_learning_module_progress VALUES
('PR002','S1002','M002','Advanced Python','2023-03-05','2023-04-12','Completed',88.0,540,3,'2023-04-11 14:20:00','Yes','I201','Programming','Tablet','Safari','14.2','Seattle','USA','Challenging but rewarding','PythonPro');

INSERT INTO digital_learning_module_progress VALUES
('PR003','S1003','M003','Intro to Statistics','2023-02-20','2023-03-30','InProgress',0,0,0,'2023-03-28 09:10:00','No','I202','Statistics','Desktop','Firefox','91','Chicago','USA','Needs more examples','');

-- Community Art Fund Allocation
CREATE TABLE community_art_fund_allocation
(
    allocation_id             TEXT PRIMARY KEY,
    project_id                TEXT,
    project_name              TEXT,
    applicant_org             TEXT,
    requested_amount          REAL,
    approved_amount           REAL,
    approval_date             TEXT,
    funding_source            TEXT,
    grant_manager             TEXT,
    disbursement_schedule     TEXT,
    payment_method            TEXT,
    milestones                TEXT,
    reporting_requirements    TEXT,
    community_impact_score    REAL,
    sustainability_score      REAL,
    artist_name               TEXT,
    artwork_type              TEXT,
    installation_location     TEXT,
    start_date                TEXT,
    end_date                  TEXT,
    status                    TEXT,
    notes                     TEXT
);

INSERT INTO community_art_fund_allocation VALUES
('FA001','PRJ100','River Mural','City Arts Council',25000.00,20000.00,'2023-02-01','Municipal Grant','Laura Green','Quarterly','Check','Design, Installation','Annual Report',85.0,78.0,'Mike Rivera','Mural','Riverfront Plaza','2023-04-01','2023-06-30','Approved','');

INSERT INTO community_art_fund_allocation VALUES
('FA002','PRJ101','Sculpture Garden','Neighborhood Association',40000.00,35000.00,'2023-05-10','Private Donation','Tom White','Milestone','BankTransfer','Planning, Fabrication, Placement','Biannual Report',90.0,82.0,'Ana Lopez','Sculpture','Central Park','2023-07-15','2023-12-15','Pending','Awaiting final design');

INSERT INTO community_art_fund_allocation VALUES
('FA003','PRJ102','Digital Light Show','Tech Community',15000.00,15000.00,'2023-01-20','Corporate Sponsorship','Sara Kim','Monthly','CreditCard','Concept, Development, Deployment','Quarterly Report',78.0,70.0,'Leo Zhang','Interactive','Science Building Atrium','2023-03-01','2023-05-31','Approved','');

-- Campus Security Camera Inventory
CREATE TABLE campus_security_camera
(
    camera_id                TEXT PRIMARY KEY,
    building_id              TEXT,
    location_description     TEXT,
    floor_number             INTEGER,
    camera_type              TEXT,
    resolution_megapixels    INTEGER,
    field_of_view_degrees    INTEGER,
    night_vision_range_m    INTEGER,
    ip_address               TEXT,
    mac_address              TEXT,
    installation_date        TEXT,
    last_maintenance_date    TEXT,
    firmware_version         TEXT,
    status                   TEXT,
    monitored_by_department  TEXT,
    storage_capacity_gb      INTEGER,
    retention_period_days    INTEGER,
    power_source             TEXT,
    connection_type          TEXT,
    warranty_expiration      TEXT,
    vendor_name              TEXT
);

INSERT INTO campus_security_camera VALUES
('C001','B001','Main Entrance','1','Dome',4,90,30,'192.168.1.10','AA:BB:CC:DD:EE:01','2021-06-15','2023-05-10','v1.2','Active','Security','256','30','PoE','Ethernet','2024-06-15','SecureCam Inc');

INSERT INTO campus_security_camera VALUES
('C002','B002','Parking Lot','0','Bullet',6,120,50,'192.168.1.11','AA:BB:CC:DD:EE:02','2020-09-20','2023-04-22','v2.0','Active','Facilities','512','60','AC','Wireless','2025-09-20','CamTech Ltd');

INSERT INTO campus_security_camera VALUES
('C003','B003','Hallway A','2','PanTilt',8,110,40,'192.168.1.12','AA:BB:CC:DD:EE:03','2022-01-10','2023-06-01','v1.5','Active','Security','128','45','PoE','Ethernet','2023-12-31','VisionGuard');

-- Sustainability Initiative Metric
CREATE TABLE sustainability_initiative_metric
(
    metric_id                TEXT PRIMARY KEY,
    initiative_id            TEXT,
    initiative_name          TEXT,
    metric_name              TEXT,
    measurement_period       TEXT,
    baseline_value           REAL,
    current_value            REAL,
    target_value             REAL,
    unit_of_measure          TEXT,
    data_source              TEXT,
    responsible_department   TEXT,
    last_updated             TEXT,
    trend_direction          TEXT,
    notes                    TEXT,
    confidence_level         TEXT,
    calculation_method       TEXT,
    related_policy           TEXT,
    stakeholder_engagement_level TEXT,
    cost_savings_estimate    REAL,
    emission_reduction_estimate REAL,
    compliance_status        TEXT
);

INSERT INTO sustainability_initiative_metric VALUES
('M001','INIT100','Campus Recycling Program','Recycling Rate','2022','45.0','60.5','75.0','Percent','Waste Management System','Facilities','2023-06-01','Upward','Improved collection','High','Percentage of waste recycled','Recycling Policy','High',20000.00,1500.00,'Compliant');

INSERT INTO sustainability_initiative_metric VALUES
('M002','INIT101','Renewable Energy Adoption','Solar Capacity','2022','5.0','8.2','12.0','MW','Energy Monitoring','Energy','2023-05-15','Upward','New panels installed','Medium','Sum of installed capacity','Energy Policy','Medium',50000.00,3000.00,'On Track');

INSERT INTO sustainability_initiative_metric VALUES
('M003','INIT102','Water Conservation','Average Daily Use','2022','5000','4200','3500','Gallons','Water Meters','Facilities','2023-04-20','Downward','Low-flow fixtures','High','Difference from baseline','Water Conservation Policy','Low',15000.00,2000.00,'Compliant');

-- Campus Transport Vehicle Details
CREATE TABLE campus_transport_vehicle
(
    vehicle_id                TEXT PRIMARY KEY,
    vehicle_type              TEXT,
    make                      TEXT,
    model                     TEXT,
    year_of_manufacture       INTEGER,
    license_plate             TEXT,
    vin                       TEXT,
    capacity_seats            INTEGER,
    fuel_type                 TEXT,
    fuel_efficiency_mpg       REAL,
    last_service_date         TEXT,
    next_service_due          TEXT,
    mileage                   INTEGER,
    assigned_route_id         TEXT,
    driver_employee_id        TEXT,
    status                    TEXT,
    purchase_price            REAL,
    depreciation_method       TEXT,
    warranty_expiration       TEXT,
    insurance_policy_number   TEXT,
    gps_tracker_id            TEXT,
    emission_standard         TEXT,
    carbon_footprint_kg_per_mile REAL
);

INSERT INTO campus_transport_vehicle VALUES
('V001','Shuttle','Ford','Transit','2019','ABC123','1FTEW1E5L...','20','Diesel',18.5,'2023-04-10','2023-10-10',60000,'R001','E200','In Service',45000.00,'StraightLine','2023-12-31','INS123456','GPS001','Euro6',0.12);

INSERT INTO campus_transport_vehicle VALUES
('V002','Bike','Giant','Explore','2021','BIKE001','GNT2021...','1','Electric',0, '2023-05-01','2023-11-01',1200,'R002','E201','In Service',1500.00,'DecliningBalance','2025-05-01','INS234567','GPS002','N/A',0.00);

INSERT INTO campus_transport_vehicle VALUES
('V003','Van','Mercedes','Sprinter','2020','VAN789','WDB123456...','12','Hybrid',22.0,'2023-03-20','2023-09-20',45000,'R003','E202','Maintenance',40000.00,'StraightLine','2024-08-15','INS345678','GPS003','Euro5',0.08);

-- Research Data Sharing Agreement
CREATE TABLE research_data_sharing_agreement
(
    agreement_id              TEXT PRIMARY KEY,
    data_set_id               TEXT,
    data_set_name             TEXT,
    principal_investigator    TEXT,
    collaborating_institution  TEXT,
    agreement_start_date       TEXT,
    agreement_end_date         TEXT,
    access_level               TEXT,
    confidentiality_clause     TEXT,
    data_retention_period_years INTEGER,
    data_security_requirements TEXT,
    authorized_user_count      INTEGER,
    data_format                TEXT,
    transfer_method            TEXT,
    encryption_standard        TEXT,
    audit_frequency_days       INTEGER,
    compliance_officer         TEXT,
    version_number             TEXT,
    amendment_date             TEXT,
    termination_clause         TEXT,
    notes                      TEXT
);

INSERT INTO research_data_sharing_agreement VALUES
('A001','DS100','Genomic Sequencing Data','Dr.Lee','BioTech Institute','2022-01-01','2025-12-31','Restricted','Standard NDA',5,'AES-256','10','FASTQ','SecureFTP','AES-256',90,'Ms.Khan','v1.0','2023-06-15','30 days notice','');

INSERT INTO research_data_sharing_agreement VALUES
('A002','DS200','Climate Model Outputs','Prof.Smith','Environmental Agency','2023-03-15','2026-03-14','Controlled','Data Use Agreement',3,'TLS 1.3','5','NetCDF','HTTPS','TLS 1.3',60,'Dr.Wang','v1.0','2024-01-10','Termination for breach','');

INSERT INTO research_data_sharing_agreement VALUES
('A003','DS300','Social Media Interaction Logs','Dr.Chen','DataScience Lab','2021-07-01','2024-06-30','Open','None',2,'SSL','20','CSV','SCP','SSL',120,'Mr.Patel','v2.1','2022-11-20','Mutual agreement','');