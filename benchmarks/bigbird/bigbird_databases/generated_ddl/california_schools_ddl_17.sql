-- District IT Asset Registry
CREATE TABLE district_it_asset_registry (
    asset_id TEXT PRIMARY KEY,
    district_code TEXT,
    asset_type TEXT,
    manufacturer TEXT,
    model_number TEXT,
    serial_number TEXT,
    purchase_date DATE,
    warranty_end_date DATE,
    cost REAL,
    lifecycle_years INTEGER,
    assigned_school_cds TEXT,
    status TEXT,
    ip_address TEXT,
    mac_address TEXT,
    location_room TEXT,
    depreciation_rate REAL,
    last_maintenance_date DATE,
    maintenance_vendor TEXT,
    is_active INTEGER,
    notes TEXT
);

INSERT INTO district_it_asset_registry VALUES
('A001','D001','Server','Dell','PowerEdgeR740','SN12345','2022-01-15','2025-01-15',15000.00,5,'S001','Operational','192.168.1.10','00A0C914C0DA','Room101',0.15,'2023-06-01','TechServInc',1,'Main data center server');
INSERT INTO district_it_asset_registry VALUES
('A002','D001','Laptop','Lenovo','ThinkPadX1','SN67890','2021-08-20','2024-08-20',1800.00,3,'S015','In Use','192.168.2.45','00B1D2E3F4A5','Room202',0.20,'2023-03-15','LaptopRepairCo',1,'Teacher laptop');
INSERT INTO district_it_asset_registry VALUES
('A003','D002','Router','Cisco','ISR4321','SN54321','2020-05-10','2023-05-10',2500.00,4,'S030','Operational','10.0.0.1','00C2D3E4F5B6','Room001',0.18,'2022-12-01','NetworkSolutions',1,'Branch office router');

-- School Solar Panel Installations
CREATE TABLE school_solar_panel_installations (
    installation_id TEXT PRIMARY KEY,
    school_cds TEXT,
    install_date DATE,
    panel_type TEXT,
    panel_capacity_kw REAL,
    installer_company TEXT,
    warranty_years INTEGER,
    total_cost REAL,
    orientation TEXT,
    tilt_angle_deg REAL,
    number_of_panels INTEGER,
    inverter_model TEXT,
    monitoring_system TEXT,
    expected_lifetime_years INTEGER,
    net_metering_agreement TEXT,
    latitude REAL,
    longitude REAL,
    status TEXT,
    last_inspection_date DATE,
    notes TEXT
);

INSERT INTO school_solar_panel_installations VALUES
('SP001','S001','2023-04-10','Monocrystalline',120.5,'SolarPros','25',85000.00,'South',30.0,350,'InverterX','SolarTrack','30','Yes',34.0522,-118.2437,'Active','2024-01-15','North roof installation');
INSERT INTO school_solar_panel_installations VALUES
('SP002','S015','2022-09-22','Polycrystalline',80.0,'EcoEnergy','20',56000.00,'East',25.0,200,'InverterY','SunMonitor','25','No',36.1699,-115.1398,'Active','2023-11-20','Southwest building');
INSERT INTO school_solar_panel_installations VALUES
('SP003','S030','2021-06-05','ThinFilm',45.3,'GreenTech','15',34000.00,'West',20.0,150,'InverterZ','PanelWatch','20','Yes',40.7128,-74.0060,'Decommissioned','2022-12-10','Removed after roof renovation');

-- Community Arts Festival Events
CREATE TABLE community_arts_festival_events (
    event_id TEXT PRIMARY KEY,
    festival_name TEXT,
    event_date DATE,
    venue TEXT,
    city TEXT,
    state TEXT,
    expected_attendance INTEGER,
    ticket_price REAL,
    sponsor TEXT,
    organizer_contact TEXT,
    program_type TEXT,
    duration_hours REAL,
    age_restriction TEXT,
    accessibility_notes TEXT,
    food_available INTEGER,
    parking_available INTEGER,
    volunteer_needed INTEGER,
    media_coverage TEXT,
    social_media_hashtag TEXT,
    notes TEXT
);

INSERT INTO community_arts_festival_events VALUES
('EV001','Summer Art Fest','2024-07-15','Central Park','Springfield','IL',5000,15.00,'ArtsCouncil','5551234567','LiveMusic',6.0,'All','Wheelchair accessible',1,1,30,'LocalTV','#SummerArtFest','Annual summer event');
INSERT INTO community_arts_festival_events VALUES
('EV002','Winter Sculpture Expo','2024-12-05','Riverfront Plaza','Madison','WI',3000,10.00,'SculptureGuild','5559876543','Sculpture',4.0,'All','Ramp entry',1,0,20,'RadioOne','#WinterSculpt','Outdoor winter showcase');
INSERT INTO community_arts_festival_events VALUES
('EV003','Fall Poetry Night','2024-10-20','Community Center','Austin','TX',800,5.00,'PoetrySoc','5555551212','PoetryReading',3.0,'18+','Stage lifts',0,1,10,'OnlineBlog','#FallPoetry','Evening of spoken word');

-- Faculty Service Projects
CREATE TABLE faculty_service_projects (
    project_id TEXT PRIMARY KEY,
    faculty_id TEXT,
    faculty_name TEXT,
    department TEXT,
    project_title TEXT,
    start_date DATE,
    end_date DATE,
    hours_committed REAL,
    community_partner TEXT,
    partner_contact TEXT,
    project_type TEXT,
    outcome_summary TEXT,
    funding_source TEXT,
    amount_funded REAL,
    status TEXT,
    impact_metric REAL,
    evaluation_score INTEGER,
    report_submitted INTEGER,
    notes TEXT,
    last_updated DATE
);

INSERT INTO faculty_service_projects VALUES
('FP001','F001','DrSmith','Biology','Citizen Science Water Sampling','2023-03-01','2023-08-31',120.5,'RiverWatchOrg','5551122334','Research','Collected 2000 samples',,'0.00','Completed',85.5,9,1,'Data shared with EPA','2023-09-10');
INSERT INTO faculty_service_projects VALUES
('FP002','F002','ProfJones','History','Local Heritage Oral Histories','2022-09-15','2023-05-30',200.0,'HeritageSoc','5552233445','Outreach','Recorded 150 interviews','GrantABC',15000.00,'Ongoing',92.0,8,0,'Transcripts in progress','2023-06-01');
INSERT INTO faculty_service_projects VALUES
('FP003','F003','MsLee','English','Community Writing Workshops','2023-01-10','2023-12-15',180.0,'YouthCenter','5553344556','Education','Held 12 workshops',,'0.00','Active',78.0,7,1,'Positive student feedback','2023-11-20');

-- Student Exchange Partner Details
CREATE TABLE student_exchange_partner_details (
    partner_id TEXT PRIMARY KEY,
    school_cds TEXT,
    partner_institution_name TEXT,
    country TEXT,
    city TEXT,
    program_type TEXT,
    exchange_duration_months INTEGER,
    contact_person TEXT,
    contact_email TEXT,
    agreement_start_date DATE,
    agreement_end_date DATE,
    number_of_students_sent INTEGER,
    number_of_students_received INTEGER,
    scholarship_available INTEGER,
    tuition_coverage REAL,
    housing_provided INTEGER,
    language_requirements TEXT,
    cultural_orientation_hours REAL,
    evaluation_method TEXT,
    notes TEXT
);

INSERT INTO student_exchange_partner_details VALUES
('EX001','S001','École Internationale','France','Paris','Semester','6','MmeDupont','dupont@example.fr','2022-09-01','2024-08-31',10,8,1,5000.00,1,'French','15','Survey','Reciprocal exchange program');
INSERT INTO student_exchange_partner_details VALUES
('EX002','S015','Universität Berlin','Germany','Berlin','Year','12','HerrMuller','muller@example.de','2021-01-15','2023-12-31',12,10,0,0.00,0,'German','20','Interview','Includes summer internship');
INSERT INTO student_exchange_partner_details VALUES
('EX003','S030','Instituto Tecnológico','Mexico','Mexico City','Summer','3','SraLopez','lopez@example.mx','2023-05-01','2023-08-31',5,5,1,3000.00,1,'Spanish','10','Report','Focused on engineering projects');

-- District Infrastructure Asset Conditions
CREATE TABLE district_infrastructure_asset_conditions (
    asset_condition_id TEXT PRIMARY KEY,
    district_code TEXT,
    asset_type TEXT,
    asset_id TEXT,
    location TEXT,
    install_date DATE,
    condition_rating INTEGER,
    last_inspection_date DATE,
    inspector_name TEXT,
    repair_needed INTEGER,
    estimated_repair_cost REAL,
    priority_level INTEGER,
    notes TEXT,
    next_inspection_due DATE,
    service_vendor TEXT,
    warranty_status TEXT,
    depreciation_rate REAL,
    current_value REAL,
    lifecycle_years INTEGER,
    updated_at DATE
);

INSERT INTO district_infrastructure_asset_conditions VALUES
('AC001','D001','Bridge','B001','River Rd','1995-06-12',3,'2023-04-20','JohnDoe',1,25000.00,2,'Corrosion observed','2024-04-20','BridgeMaintainCo','Valid','0.06',750000.00,50,'2023-04-20');
INSERT INTO district_infrastructure_asset_conditions VALUES
('AC002','D001','HVAC','H001','Central Office','2005-03-08',4,'2023-02-15','JaneSmith',0,0.00,1,'Operating within specs','2024-02-15','HVACServLtd','Expired','0.07',120000.00,30,'2023-02-15');
INSERT INTO district_infrastructure_asset_conditions VALUES
('AC003','D002','Playground','P001','East Field','2010-09-01',2,'2023-05-10','MikeBrown',1,8000.00,3,'Equipment wear','2024-05-10','PlaygroundCo','Valid','0.05',40000.00,20,'2023-05-10');

-- School Network Device Inventory
CREATE TABLE school_network_device_inventory (
    device_id TEXT PRIMARY KEY,
    school_cds TEXT,
    device_type TEXT,
    manufacturer TEXT,
    model TEXT,
    serial_number TEXT,
    mac_address TEXT,
    ip_address TEXT,
    purchase_date DATE,
    warranty_end DATE,
    firmware_version TEXT,
    operating_system TEXT,
    allocated_to_room TEXT,
    status TEXT,
    last_audit_date DATE,
    assigned_admin TEXT,
    maintenance_cycle_months INTEGER,
    last_maintenance_date DATE,
    notes TEXT,
    is_critical INTEGER
);

INSERT INTO school_network_device_inventory VALUES
('ND001','S001','Switch','Cisco','Catalyst9200','SN001','00A1B2C3D4E5','192.168.10.1','2021-07-15','2024-07-15','16.9.3','IOS','Room101','Active','2023-06-01','AdminA',12,'2023-06-01','Core campus switch',1);
INSERT INTO school_network_device_inventory VALUES
('ND002','S015','Access Point','Aruba','AP-315','SN002','00B2C3D4E5F6','192.168.20.5','2022-01-10','2025-01-10','8.6','ArubaOS','Room202','Active','2023-05-20','AdminB',12,'2023-05-20','Wireless AP for library',0);
INSERT INTO school_network_device_inventory VALUES
('ND003','S030','Firewall','Fortinet','FortiGate60E','SN003','00C3D4E5F6A7','10.0.0.254','2020-03-05','2023-03-05','v6.4','FortiOS','ServerRoom','Decommissioned','2022-12-15','AdminC',24,'2022-12-15','Replaced by newer model',1);

-- Parent Education Workshop Series
CREATE TABLE parent_education_workshop_series (
    workshop_id TEXT PRIMARY KEY,
    series_name TEXT,
    workshop_title TEXT,
    date DATE,
    start_time TEXT,
    end_time TEXT,
    facilitator_name TEXT,
    facilitator_contact TEXT,
    location TEXT,
    max_participants INTEGER,
    registered_parents INTEGER,
    materials_provided INTEGER,
    cost REAL,
    target_audience TEXT,
    language TEXT,
    feedback_score REAL,
    rating_scale INTEGER,
    notes TEXT,
    evaluation_form_submitted INTEGER,
    follow_up_date DATE
);

INSERT INTO parent_education_workshop_series VALUES
('WS001','Digital Literacy','Online Safety for Kids','2023-09-15','18:00','20:00','MsTaylor','5556677889','Auditorium','30','25','1',0.00,'All Parents','English',4.5,5,'Positive reception',1,'2023-10-01');
INSERT INTO parent_education_workshop_series VALUES
('WS002','College Prep','Navigating FAFSA','2023-10-05','17:30','19:00','MrLee','5557788990','Room302','20','18','1',0.00,'High School Parents','Spanish',4.2,5,'Needs more Q&A time',1,'2023-10-20');
INSERT INTO parent_education_workshop_series VALUES
('WS003','Health & Wellness','Nutrition Basics for Families','2023-11-12','16:00','18:00','DrKim','5558899001','Gymnasium','25','22','1',5.00,'All Parents','English',4.8,5,'Handouts were popular',1,'2023-11-28');

-- Regional Air Quality Monitoring Stations
CREATE TABLE regional_air_quality_monitoring_stations (
    station_id TEXT PRIMARY KEY,
    region_name TEXT,
    latitude REAL,
    longitude REAL,
    elevation_m REAL,
    installation_date DATE,
    agency_responsible TEXT,
    sensor_type TEXT,
    pollutant_pm25 REAL,
    pollutant_pm10 REAL,
    pollutant_no2 REAL,
    pollutant_o3 REAL,
    data_update_frequency_min INTEGER,
    last_calibration_date DATE,
    calibration_status TEXT,
    maintenance_vendor TEXT,
    operational_status TEXT,
    notes TEXT,
    data_archive_path TEXT,
    last_data_timestamp TEXT
);

INSERT INTO regional_air_quality_monitoring_stations VALUES
('AQ001','Northern Valley',42.3501,-71.0605,15.0,'EPA','Beta','12.3','25.7','0.018','0.030','5',15,'2023-01-10','Passed','EnviroTech','Active','Station near park','/data/aq001/','2023-09-01T08:00:00');
INSERT INTO regional_air_quality_monitoring_stations VALUES
('AQ002','Southern Hills',34.0522,-118.2437,30.0,'StateEnv','Alpha','18.5','40.2','0.025','0.045','10',30,'2022-11-20','Passed','AirCheckCo','Active','Urban monitoring site','/data/aq002/','2023-09-01T08:00:00');
INSERT INTO regional_air_quality_monitoring_stations VALUES
('AQ003','Coastal Plain',36.1699,-115.1398,5.0,'CountyHealth','Gamma','9.8','20.4','0.012','0.022','7',60,'2023-06-15','Passed','CleanAirInc','Active','Desert edge location','/data/aq003/','2023-09-01T08:00:00');

-- School Furnishings Depreciation Schedule
CREATE TABLE school_furnishings_depreciation_schedule (
    item_id TEXT PRIMARY KEY,
    school_cds TEXT,
    item_description TEXT,
    purchase_date DATE,
    purchase_cost REAL,
    depreciation_years INTEGER,
    salvage_value REAL,
    accumulated_depreciation REAL,
    net_book_value REAL,
    depreciation_method TEXT,
    last_depreciation_date DATE,
    responsible_person TEXT,
    condition_rating INTEGER,
    warranty_end DATE,
    vendor_name TEXT,
    asset_category TEXT,
    location_room TEXT,
    disposal_date DATE,
    disposal_proceeds REAL,
    notes TEXT
);

INSERT INTO school_furnishings_depreciation_schedule VALUES
('F001','S001','Student Desk Set','2020-08-01',2500.00,7,200.00,1000.00,1300.00,'StraightLine','2023-01-01','MsAllen',4,'2023-08-01','FurnitureCo','Desk','Room101',NULL,NULL,'Good condition');
INSERT INTO school_furnishings_depreciation_schedule VALUES
('F002','S015','Lab Microscope','2018-05-15',4500.00,10,300.00,2100.00,2100.00,'DecliningBalance','2023-02-01','DrBrown',5,'2024-05-15','LabEquip','Equipment','Lab202',NULL,NULL,'Requires calibration');
INSERT INTO school_furnishings_depreciation_schedule VALUES
('F003','S030','Conference Table','2015-03-20',8000.00,15,500.00,3600.00,3900.00,'StraightLine','2023-03-01','MrCarter',3,'2025-03-20','OfficeFurnish','Furniture','ConferenceRoom',NULL,NULL,'Minor scratches');