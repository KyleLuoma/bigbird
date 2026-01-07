-- Weather Station Readings
CREATE TABLE weather_station_readings
(
    station_id TEXT PRIMARY KEY,
    station_name TEXT,
    latitude REAL,
    longitude REAL,
    elevation_ft INTEGER,
    observation_date DATE,
    temperature_f REAL,
    humidity_percent REAL,
    wind_speed_mph REAL,
    wind_direction TEXT,
    precipitation_in REAL,
    dew_point_f REAL,
    pressure_inhg REAL,
    visibility_mi REAL,
    solar_radiation_wm2 REAL,
    uv_index INTEGER,
    sky_condition TEXT,
    observation_timestamp TEXT,
    data_quality_flag TEXT,
    notes TEXT
);

INSERT INTO weather_station_readings VALUES
('WS001','North Ridge','40.7128','-74.0060',15,'2024-04-01',68.5,55.2,12.3,'NE',0.00,52.1,29.92,10.0,500.0,5,'Clear','2024-04-01 08:00','G','Routine check');

INSERT INTO weather_station_readings VALUES
('WS002','Lake View','41.8781','-87.6298',620,'2024-04-01',45.2,78.0,8.5,'S',0.12,38.0,30.10,5.0,300.0,3,'Partly Cloudy','2024-04-01 08:15','B','Sensor calibration');

INSERT INTO weather_station_readings VALUES
('WS003','Hilltop','34.0522','-118.2437',305,'2024-04-01',72.0,30.5,5.0,'W',0.00,48.0,29.80,12.0,600.0,7,'Sunny','2024-04-01 08:30','A','No issues');

-- Local Business Directory
CREATE TABLE local_business_directory
(
    business_id TEXT PRIMARY KEY,
    business_name TEXT,
    category TEXT,
    subcategory TEXT,
    street_address TEXT,
    city TEXT,
    zip_code TEXT,
    state TEXT,
    phone TEXT,
    email TEXT,
    website TEXT,
    opening_date DATE,
    owner_name TEXT,
    number_of_employees INTEGER,
    annual_revenue_usd REAL,
    is_franchised INTEGER,
    franchise_name TEXT,
    operating_hours TEXT,
    payment_methods TEXT,
    accessibility_features TEXT,
    rating_average REAL
);

INSERT INTO local_business_directory VALUES
('BIZ001','Sunny Bakery','Food','Bakery','123 Main St','Springfield','62701','IL','555-1234','info@sunnybakery.com','www.sunnybakery.com','2015-06-15','Alice Johnson',12,250000.00,0,NULL,'7am-5pm','Cash,Card','Wheelchair Accessible',4.5);

INSERT INTO local_business_directory VALUES
('BIZ002','TechGear','Retail','Electronics','456 Tech Ave','Madison','53703','WI','555-5678','contact@techgear.com','www.techgear.com','2018-03-22','Bob Smith',8,750000.00,1,'TechGear Franchise','10am-8pm','Card','ADA Compliant',4.2);

INSERT INTO local_business_directory VALUES
('BIZ003','Green Thumb Gardens','Services','Landscaping','789 Garden Rd','Portland','97201','OR','555-9012','services@greenthumb.com','www.greenthumb.com','2020-09-10','Carol Lee',5,120000.00,0,NULL,'8am-6pm','Cash,Card','None',4.8);

-- Public Library Events
CREATE TABLE public_library_events
(
    event_id TEXT PRIMARY KEY,
    library_branch TEXT,
    event_name TEXT,
    event_type TEXT,
    presenter_name TEXT,
    start_date DATE,
    end_date DATE,
    start_time TEXT,
    end_time TEXT,
    age_group TEXT,
    max_participants INTEGER,
    registration_required INTEGER,
    registration_url TEXT,
    cost_usd REAL,
    language TEXT,
    target_audience TEXT,
    description TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    online_stream_url TEXT
);

INSERT INTO public_library_events VALUES
('EVT001','Downtown','Storytime for Kids','Reading','Emily Parker','2024-05-10','2024-05-10','10:00','11:00','3-7','30',1,'www.library.com/register/evt001',0.00,'English','Children','Interactive story reading session','events@library.com','555-1111','');

INSERT INTO public_library_events VALUES
('EVT002','Westside','Digital Literacy Workshop','Workshop','Michael Nguyen','2024-06-01','2024-06-01','14:00','16:00','All Ages','20',1,'www.library.com/register/evt002',10.00,'Spanish','Adults','Learn basic computer skills','workshops@library.com','555-2222','https://stream.library.com/evt002');

INSERT INTO public_library_events VALUES
('EVT003','East Branch','Author Talk: Jane Doe','Talk','Jane Doe','2024-07-15','2024-07-15','18:30','20:00','Adults','50',0,'',5.00,'English','Adults','Meet the author of recent bestseller','events@library.com','555-3333','');

-- Community Volunteer Projects
CREATE TABLE community_volunteer_projects
(
    project_id TEXT PRIMARY KEY,
    project_name TEXT,
    sponsor_organization TEXT,
    description TEXT,
    start_date DATE,
    end_date DATE,
    location TEXT,
    required_skills TEXT,
    volunteer_hours_needed INTEGER,
    total_volunteers_needed INTEGER,
    sign_up_url TEXT,
    contact_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    max_age INTEGER,
    min_age INTEGER,
    recurring INTEGER,
    frequency TEXT,
    status TEXT,
    notes TEXT
);

INSERT INTO community_volunteer_projects VALUES
('PROJ001','Park Clean‑Up','City Parks Dept','Removal of litter and invasive plants','2024-04-20','2024-04-20','Riverfront Park','General labor',100,25,'www.cityparks.org/volunteer','Laura Green','lgreen@cityparks.org','555-4444',65,12,0,'One‑time','Open','Bring gloves and water');

INSERT INTO community_volunteer_projects VALUES
('PROJ002','Senior Tech Help','Community Center','Assist seniors with basic device usage','2024-05-01','2024-08-31','Community Center Hall A','Tech basics',200,50,'www.communitycenter.org/techhelp','Mark Davis','mdavis@community.org','555-5555',80,15,1,'Monthly','Open','Training materials provided');

INSERT INTO community_volunteer_projects VALUES
('PROJ003','Food Bank Sorting','Food Share','Sort and package donated food items','2024-04-15','2024-12-31','Food Share Warehouse','Organization','150','30','www.foodshare.org/volunteer','Samantha Lee','slee@foodshare.org','555-6666',70,16,1,'Weekly','Open','Safety gear required');

-- Municipal Water Quality Reports
CREATE TABLE municipal_water_quality_reports
(
    report_id TEXT PRIMARY KEY,
    sampling_site TEXT,
    sample_date DATE,
    pH REAL,
    turbidity_ntu REAL,
    lead_ppb REAL,
    copper_ppb REAL,
    arsenic_ppb REAL,
    bacteria_cfu_per_100ml INTEGER,
    chlorine_mg_per_l REAL,
    temperature_c REAL,
    dissolved_oxygen_mg_per_l REAL,
    conductivity_us_per_cm REAL,
    sample_collector TEXT,
    analysis_lab TEXT,
    report_status TEXT,
    notes TEXT,
    latitude REAL,
    longitude REAL,
    file_url TEXT
);

INSERT INTO municipal_water_quality_reports VALUES
('WR001','River Intake 1','2024-04-10',7.2,0.5,2.1,15.0,0.3,12,0.8,12.5,8.0,150,'John Doe','City Lab','Approved','Sample clear','40.7128','-74.0060','www.city.gov/water/WR001.pdf');

INSERT INTO municipal_water_quality_reports VALUES
('WR002','Lake Shore','2024-04-12',6.8,1.2,0.5,5.0,0.1,5,0.5,10.0,9.5,120,'Jane Smith','State Lab','Pending','Slight cloudiness','41.8781','-87.6298','www.city.gov/water/WR002.pdf');

INSERT INTO municipal_water_quality_reports VALUES
('WR003','Well Site A','2024-04-15',7.0,0.3,1.0,8.0,0.2,2,0.6,11.2,7.8,130,'Mike Brown','Private Lab','Approved','All parameters within limits','34.0522','-118.2437','www.city.gov/water/WR003.pdf');

-- Regional Flood Monitoring
CREATE TABLE regional_flood_monitoring
(
    monitoring_id TEXT PRIMARY KEY,
    river_name TEXT,
    station_name TEXT,
    observation_date DATE,
    water_level_ft REAL,
    flow_rate_cfs REAL,
    discharge_cfs REAL,
    forecasted_flood_stage_ft REAL,
    actual_flood_stage_ft REAL,
    precipitation_24hr_in REAL,
    temperature_f REAL,
    wind_speed_mph REAL,
    wind_direction TEXT,
    warning_level TEXT,
    alert_issued INTEGER,
    alert_timestamp TEXT,
    responsible_agency TEXT,
    notes TEXT,
    latitude REAL,
    longitude REAL
);

INSERT INTO regional_flood_monitoring VALUES
('FM001','Mississippi','St. Louis Station','2024-04-10',23.5,4500,4700,25.0,24.0,0.12,68,10,'NE','Watch',0,NULL,'USACE','Normal flow','38.6270','-90.1994');

INSERT INTO regional_flood_monitoring VALUES
('FM002','Colorado','Boulder Station','2024-04-11',12.0,1800,1900,14.0,13.5,0.00,55,5,'NW','Advisory',0,NULL,'NWS','No immediate threat','40.01499','-105.2705');

INSERT INTO regional_flood_monitoring VALUES
('FM003','Hudson','Albany Station','2024-04-12',8.5,900,950,10.0,9.8,0.05,48,7,'S','Warning',1,'2024-04-12 14:30','NYSDOT','Potential flooding in low‑lying areas','42.6526','-73.7562');

-- City Traffic Incident Summary
CREATE TABLE city_traffic_incident_summary
(
    incident_id TEXT PRIMARY KEY,
    incident_date DATE,
    incident_time TEXT,
    location TEXT,
    intersection TEXT,
    incident_type TEXT,
    severity INTEGER,
    vehicles_involved INTEGER,
    injuries_reported INTEGER,
    fatalities INTEGER,
    cause TEXT,
    responding_agency TEXT,
    clearance_time_minutes INTEGER,
    traffic_delay_minutes INTEGER,
    lane_closure INTEGER,
    detour_route TEXT,
    report_number TEXT,
    weather_condition TEXT,
    road_surface TEXT,
    notes TEXT
);

INSERT INTO city_traffic_incident_summary VALUES
('INC001','2024-04-08','08:15','5th Ave & Main St','5th Ave & Main','Rear‑end',2,2,1,0,'Speeding','Police Dept',45,30,1,'5th Ave to 7th Ave','RPT20240408A','Rainy','Wet','Minor injuries');

INSERT INTO city_traffic_incident_summary VALUES
('INC002','2024-04-09','14:30','Broadway & 12th St','Broadway & 12th','Side‑swipe',1,2,0,0,'Distracted driving','Police Dept',20,10,0,'','RPT20240409B','Clear','Dry','No injuries');

INSERT INTO city_traffic_incident_summary VALUES
('INC003','2024-04-10','22:05','Lakeview Rd & Oak St','Lakeview Rd & Oak','Hit‑and‑run',3,1,0,1,'Alcohol','Police Dept',120,60,2,'Lakeview Rd to Pine St','RPT20240410C','Foggy','Wet','Fatality confirmed');

-- Digital Art Exhibition Inventory
CREATE TABLE digital_art_exhibition_inventory
(
    artwork_id TEXT PRIMARY KEY,
    title TEXT,
    artist_name TEXT,
    creation_year INTEGER,
    medium TEXT,
    dimensions TEXT,
    file_format TEXT,
    file_size_mb REAL,
    resolution_px TEXT,
    exhibition_name TEXT,
    exhibition_start_date DATE,
    exhibition_end_date DATE,
    gallery_room TEXT,
    display_type TEXT,
    provenance TEXT,
    acquisition_date DATE,
    acquisition_cost_usd REAL,
    is_on_loan INTEGER,
    loan_end_date DATE,
    notes TEXT
);

INSERT INTO digital_art_exhibition_inventory VALUES
('ART001','Nebula Dreams','Lena Ortiz',2022,'Digital Painting','1920x1080','JPEG',15.2,'1920x1080','Future Visions','2024-05-01','2024-06-30','Room A','Screen','Collector','2022-07-15',5000.00,0,NULL','First digital piece in museum');

INSERT INTO digital_art_exhibition_inventory VALUES
('ART002','Urban Pulse','Jae Kim',2021,'3D Render','3840x2160','MP4',200.5,'3840x2160','Tech Horizons','2024-07-10','2024-08-20','Room B','Projection','Gallery Loan','2021-03-10',12000.00,1,'2024-08-20','Looping installation');

INSERT INTO digital_art_exhibition_inventory VALUES
('ART003','Static Field','Arun Patel',2023,'Generative Art','2560x1440','PNG',12.8,'2560x1440','Code & Canvas','2024-09-15','2024-10-30','Room C','Print','Artist Gift','2023-11-05',3000.00,0,NULL','Interactive element via QR code');

-- School District Boundary Coordinates
CREATE TABLE school_district_boundary_coordinates
(
    boundary_id TEXT PRIMARY KEY,
    district_name TEXT,
    state TEXT,
    coordinate_order INTEGER,
    latitude REAL,
    longitude REAL,
    coordinate_type TEXT,
    source TEXT,
    last_updated DATE,
    area_sq_mi REAL,
    perimeter_mi REAL,
    description TEXT,
    notes TEXT,
    created_by TEXT,
    created_date DATE,
    modified_by TEXT,
    modified_date DATE,
    is_active INTEGER,
    version INTEGER,
    geometry_wkt TEXT
);

INSERT INTO school_district_boundary_coordinates VALUES
('BDY001','Springfield SD','IL',1,39.7817,-89.6501,'Vertex','GIS Dept','2024-01-15',120.5,45.2,'Northwest corner','','admin','2024-01-01','admin','2024-01-15',1,1','POLYGON((...))');

INSERT INTO school_district_boundary_coordinates VALUES
('BDY002','Springfield SD','IL',2,39.8000,-89.6400,'Vertex','GIS Dept','2024-01-15',120.5,45.2,'North edge','','admin','2024-01-01','admin','2024-01-15',1,1','POLYGON((...))');

INSERT INTO school_district_boundary_coordinates VALUES
('BDY003','Springfield SD','IL',3,39.8100,-89.6600,'Vertex','GIS Dept','2024-01-15',120.5,45.2,'Northeast corner','','admin','2024-01-01','admin','2024-01-15',1,1','POLYGON((...))');

-- Public Park Maintenance Schedule
CREATE TABLE public_park_maintenance_schedule
(
    schedule_id TEXT PRIMARY KEY,
    park_name TEXT,
    maintenance_type TEXT,
    frequency TEXT,
    day_of_week TEXT,
    start_time TEXT,
    end_time TEXT,
    assigned_contractor TEXT,
    contractor_contact TEXT,
    cost_usd REAL,
    last_completed_date DATE,
    next_scheduled_date DATE,
    required_equipment TEXT,
    notes TEXT,
    status TEXT,
    post_maintenance_report_url TEXT,
    created_by TEXT,
    created_date DATE,
    modified_by TEXT,
    modified_date DATE
);

INSERT INTO public_park_maintenance_schedule VALUES
('PM001','Riverfront Park','Groundskeeping','Weekly','Monday','06:00','09:00','GreenScape Services','555-7777',1200.00,'2024-03-25','2024-04-01','Mowers, Trimmers','Trimmed all grass areas','Completed','www.cityparks.org/reports/PM001.pdf','admin','2024-03-01','admin','2024-03-26');

INSERT INTO public_park_maintenance_schedule VALUES
('PM002','Sunnyvale Playground','Playground Inspection','Monthly','First Friday','08:00','10:00','SafePlay Inspections','555-8888',500.00,'2024-03-08','2024-04-05','Inspection tools','Checked swings and slides','Completed','www.cityparks.org/reports/PM002.pdf','admin','2024-02-15','admin','2024-03-09');

INSERT INTO public_park_maintenance_schedule VALUES
('PM003','Maple Grove Park','Tree Pruning','Quarterly','Third Wednesday','07:00','12:00','ArborCare Ltd','555-9999',2500.00,'2023-12-20','2024-03-20','Pruning shears, safety harnesses','Pruned overgrown maples','Completed','www.cityparks.org/reports/PM003.pdf','admin','2023-12-01','admin','2023-12-21');