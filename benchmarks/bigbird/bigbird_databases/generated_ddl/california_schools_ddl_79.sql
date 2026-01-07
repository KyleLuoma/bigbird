-- Regional Air Quality Stations
CREATE TABLE regional_air_quality_stations (
    station_id TEXT PRIMARY KEY,
    station_name TEXT,
    city TEXT,
    county TEXT,
    latitude REAL,
    longitude REAL,
    elevation_m REAL,
    monitoring_start_date DATE,
    pm25_avg REAL,
    pm10_avg REAL,
    ozone_avg REAL,
    no2_avg REAL,
    so2_avg REAL,
    co_avg REAL,
    aqi_category TEXT,
    data_update_frequency TEXT,
    sensor_count INTEGER,
    maintenance_contract TEXT,
    last_maintenance_date DATE,
    operational_status TEXT
);

INSERT INTO regional_air_quality_stations VALUES
('ST001','Riverdale_AQ','Riverdale','Greene',38.1234,-120.4567,250,'2015-06-01',12.5,25.3,30.1,15.2,4.8,0.6,'Good','Daily',12,'GreenEnviro','2023-11-15','Active');

INSERT INTO regional_air_quality_stations VALUES
('ST002','Summit_Peak','Summit','Hillside',39.5678,-121.2345,850,'2017-09-15',18.2,40.5,45.3,20.1,6.2,0.9,'Moderate','Weekly',8,'AirClearInc','2023-10-20','Active');

INSERT INTO regional_air_quality_stations VALUES
('ST003','Coastal_View','Seaview','Oceanic',36.7890,-122.3456,5,'2018-01-20',9.8,20.0,25.0,10.5,3.5,0.4,'Good','Daily',15,'SeaAirCo','2023-12-01','Active');


-- Public Art Installations
CREATE TABLE public_art_installations (
    installation_id TEXT PRIMARY KEY,
    title TEXT,
    artist TEXT,
    year_installed INTEGER,
    material TEXT,
    location_description TEXT,
    latitude REAL,
    longitude REAL,
    city TEXT,
    county TEXT,
    funding_source TEXT,
    cost_usd REAL,
    maintenance_provider TEXT,
    last_maintenance DATE,
    condition_status TEXT,
    lighting_type TEXT,
    accessible INTEGER,
    plaque_present INTEGER,
    dimensions_cm TEXT,
    gps_accuracy_m REAL
);

INSERT INTO public_art_installations VALUES
('AI001','Sunburst','Lara Chen',2012,'Steel','Main Plaza',38.1122,-120.4455,'Riverdale','Greene','CityGrant',45000,'GreeneFacilities','2023-09-10','Excellent','LED',1,1,'200x150',0.5);

INSERT INTO public_art_installations VALUES
('AI002','River Flow','Marco Silva',2015,'Bronze','Riverwalk',38.1345,-120.4678,'Riverdale','Greene','PrivateDonor',72000,'RiverDept','2023-08-05','Good','Solar',1,1,'300x80',0.3);

INSERT INTO public_art_installations VALUES
('AI003','Harmony','Aisha Patel',2019,'Glass','City Library Atrium',38.1500,-120.4800,'Riverdale','Greene','ArtsCouncil',120000,'LibraryMaintenance','2023-10-22','Excellent','Spotlight',0,1,'250x250',0.2);


-- City Parks Facilities
CREATE TABLE city_parks_facilities (
    park_id TEXT PRIMARY KEY,
    park_name TEXT,
    city TEXT,
    county TEXT,
    acres REAL,
    established_year INTEGER,
    has_playground INTEGER,
    has_sports_fields INTEGER,
    num_trail_miles REAL,
    has_picnic_areas INTEGER,
    has_boathouse INTEGER,
    water_feature TEXT,
    operating_hours TEXT,
    annual_visitors INTEGER,
    maintenance_budget REAL,
    nearest_school TEXT,
    wildlife_habitat TEXT,
    wheelchair_accessible INTEGER,
    waste_recycling_program INTEGER,
    security_patrol_frequency TEXT
);

INSERT INTO city_parks_facilities VALUES
('PK001','Maple Grove','Riverdale','Greene',45.6,1995,1,1,3.2,1,0,'Pond','06:00-22:00',125000,85000,'Riverdale Elementary','Deciduous',1,1,'Weekly');

INSERT INTO city_parks_facilities VALUES
('PK002','Cedar Ridge','Riverdale','Greene',78.9,2002,1,1,5.5,1,1,'Lake','05:00-23:00',210000,120000,'Summit Middle','Wetland',1,1,'Daily');

INSERT INTO city_parks_facilities VALUES
('PK003','Pine Meadow','Riverdale','Greene',30.2,1988,0,1,2.0,1,0,'Creek','07:00-20:00',90000,60000,'Riverdale High','Grassland',0,0,'Biweekly');


-- Municipal Budget Lineitems
CREATE TABLE municipal_budget_lineitems (
    budget_year INTEGER,
    department_code TEXT,
    lineitem_code TEXT,
    description TEXT,
    amount_requested REAL,
    amount_approved REAL,
    fund_source TEXT,
    expenditure_category TEXT,
    prior_year_amount REAL,
    variance_percentage REAL,
    approved_by TEXT,
    approval_date DATE,
    fiscal_quarter INTEGER,
    cost_center TEXT,
    project_id TEXT,
    grant_id TEXT,
    allocated_units INTEGER,
    unit_cost REAL,
    total_cost_estimate REAL,
    status TEXT,
    notes TEXT,
    last_update DATE,
    created_by TEXT,
    review_status TEXT,
    amendment_flag INTEGER
);

INSERT INTO municipal_budget_lineitems VALUES
(2024,'EDU','EDU-001','Elementary School Renovation',1500000,1450000,'LocalBond','Capital',1400000,3.6,'Mayor Smith','2023-12-01',4,'CC-EDU','PRJ-1001','GR-2001',1,1450000,1450000,'Approved','Phase 1 completed','2024-01-15','FinanceDept','Reviewed',0);

INSERT INTO municipal_budget_lineitems VALUES
(2024,'HR','HR-010','Staff Training Programs',250000,240000,'GeneralFund','Operations',260000,-3.8,'Councilor Lee','2023-11-20',3,'CC-HR','PRJ-1010','GR-2002',5,48000,240000,'Approved','Online modules added','2024-01-10','HRDept','Reviewed',0);

INSERT INTO municipal_budget_lineitems VALUES
(2024,'INF','INF-050','Roadway Maintenance',800000,795000,'StateGrant','Maintenance',780000,1.9,'Mayor Smith','2023-12-05',4,'CC-INF','PRJ-1050','GR-2003',10,79500,795000,'Approved','Includes bridge repairs','2024-01-18','PublicWorks','Reviewed',0);


-- District Infrastructure Project Funding
CREATE TABLE district_infrastructure_project_funding (
    project_id TEXT PRIMARY KEY,
    project_name TEXT,
    start_date DATE,
    end_date DATE,
    total_budget REAL,
    federal_funding REAL,
    state_funding REAL,
    local_funding REAL,
    bond_issue_amount REAL,
    grant_id TEXT,
    funding_agreement_date DATE,
    funding_agency TEXT,
    cost_overrun_flag INTEGER,
    cost_overrun_amount REAL,
    projected_completion_date DATE,
    actual_completion_date DATE,
    project_manager TEXT,
    status TEXT,
    priority_level TEXT,
    responsible_department TEXT,
    matched_funds REAL,
    remarks TEXT
);

INSERT INTO district_infrastructure_project_funding VALUES
('PROJ001','Northside School Expansion','2022-03-01','2025-06-30',5000000,1500000,1200000,800000,1500000,'GR-3001','2022-02-15','FederalEduDept',0,0,'2025-06-30',NULL,'Karen Ortiz','InProgress','High','Facilities','500000','Groundbreaking completed');

INSERT INTO district_infrastructure_project_funding VALUES
('PROJ002','River Bridge Replacement','2023-01-15','2024-12-31',3500000,1000000,900000,600000,1000000,'GR-3002','2022-12-01','StateTransDept',1,250000,'2024-12-31',NULL,'Luis Martinez','Delayed','Medium','Transportation','300000','Cost overrun due to material price increase');

INSERT INTO district_infrastructure_project_funding VALUES
('PROJ003','Solar Panel Installation Campuswide','2021-09-01','2023-08-31',2000000,800000,500000,300000,400000,'GR-3003','2021-08-10','EnergyAgency',0,0,'2023-08-31','2023-08-28','Megan Liu','Completed','Low','Facilities','200000','All panels operational');


-- Community Health Clinic Stats
CREATE TABLE community_health_clinic_stats (
    clinic_id TEXT PRIMARY KEY,
    clinic_name TEXT,
    city TEXT,
    county TEXT,
    total_patients INTEGER,
    avg_wait_time_minutes REAL,
    staffed_physicians INTEGER,
    staffed_nurses INTEGER,
    annual_budget REAL,
    public_funding REAL,
    private_funding REAL,
    services_offered TEXT,
    vaccination_rate_percent REAL,
    chronic_disease_screenings INTEGER,
    mental_health_visits INTEGER,
    telehealth_sessions INTEGER,
    patient_satisfaction_score REAL,
    last_inspection_date DATE,
    accreditation_status TEXT,
    electronic_health_record_system TEXT,
    staff_turnover_rate_percent REAL
);

INSERT INTO community_health_clinic_stats VALUES
('CLN001','Riverdale Community Health','Riverdale','Greene',12500,18.5,8,12,950000,600000,350000,'Primary Care;Vaccination;Dental',92.3,3500,1200,800,4.6,'2023-10-05','Accredited','Epic',8.2);

INSERT INTO community_health_clinic_stats VALUES
('CLN002','Summit Health Center','Summit','Hillside',9800,22.0,6,9,780000,500000,280000,'Primary Care;Mental Health;Physical Therapy',87.5,2800,950,600,4.2,'2023-09-20','Accredited','Cerner',9.1);

INSERT INTO community_health_clinic_stats VALUES
('CLN003','Eastside Clinic','Eastside','River Valley',7300,15.0,5,7,620000,400000,220000,'Urgent Care;Vaccination;Wellness',94.0,2100,500,400,4.8,'2023-11-12','Pending','Allscripts',7.5);


-- School Transportation Fuel Efficiency
CREATE TABLE school_transportation_fuel_efficiency (
    vehicle_id TEXT PRIMARY KEY,
    vehicle_type TEXT,
    fuel_type TEXT,
    fuel_capacity_liters REAL,
    avg_fuel_consumption_l_per_100km REAL,
    miles_driven_year INTEGER,
    emissions_co2_kg REAL,
    maintenance_cost_year REAL,
    assigned_route TEXT,
    driver_id TEXT,
    purchase_year INTEGER,
    odometer_km REAL,
    last_service_date DATE,
    fuel_efficiency_rating TEXT,
    operational_status TEXT,
    lease_flag INTEGER,
    subsidy_amount REAL,
    gps_tracker_id TEXT,
    emissions_test_passed INTEGER,
    notes TEXT
);

INSERT INTO school_transportation_fuel_efficiency VALUES
('V001','School Bus','Diesel',300,28.5,25000,5200,4500,'Route A','DRV100','2018',320000,'2023-10-01','B','Active',0,0,'GT001',1,'No issues');

INSERT INTO school_transportation_fuel_efficiency VALUES
('V002','Mini Van','Electric',85,0,15000,0,2500,'Route B','DRV101','2020',180000,'2023-09-15','A','Active',0,1500,'GT002',1,'Battery health good');

INSERT INTO school_transportation_fuel_efficiency VALUES
('V003','School Bus','Hybrid',250,19.0,22000,4100,4800,'Route C','DRV102','2019',210000,'2023-10-20','A','Active',0,0,'GT003',1,'Hybrid system recent upgrade');


-- Technology Vendor Performance Metrics
CREATE TABLE technology_vendor_performance_metrics (
    vendor_id TEXT PRIMARY KEY,
    vendor_name TEXT,
    contract_start DATE,
    contract_end DATE,
    services_provided TEXT,
    total_spend_usd REAL,
    average_response_time_hours REAL,
    incidents_resolved INTEGER,
    incidents_pending INTEGER,
    sla_compliance_percent REAL,
    quarterly_rating TEXT,
    primary_contact TEXT,
    contact_email TEXT,
    support_hours_per_week INTEGER,
    on_site_visits_per_year INTEGER,
    warranty_coverage_years INTEGER,
    last_audit_date DATE,
    audit_score REAL,
    renewal_likelihood_percent REAL,
    technology_area TEXT,
    risk_level TEXT,
    notes TEXT
);

INSERT INTO technology_vendor_performance_metrics VALUES
('VN001','TechServe Solutions','2022-01-01','2025-12-31','Network Maintenance',350000,4.2,120,5,98.5,'A','Megan Lee','megan.lee@techserve.com',24,6,3,'2023-11-01',92.0,85,'Networking','Medium','Positive trend');

INSERT INTO technology_vendor_performance_metrics VALUES
('VN002','EduSoft Corp','2021-06-15','2024-06-14','Learning Management System',500000,2.8,200,2,99.2,'A+','Carlos Ruiz','carlos.ruiz@edusoft.com',40,4,5,'2023-10-20',95.5,90,'Software','Low','High satisfaction');

INSERT INTO technology_vendor_performance_metrics VALUES
('VN003','SecureIT Ltd','2023-03-01','2026-02-28','Cybersecurity Services',275000,3.5,80,10,96.0,'B','Linda Nguyen','linda.nguyen@secureit.com',30,3,4,'2023-09-15',88.0,78,'Security','High','Need remediation plan');


-- Environmental Noise Monitoring
CREATE TABLE environmental_noise_monitoring (
    monitor_id TEXT PRIMARY KEY,
    location_name TEXT,
    city TEXT,
    county TEXT,
    latitude REAL,
    longitude REAL,
    installation_date DATE,
    noise_level_dB_A REAL,
    peak_noise_dB_A REAL,
    avg_daytime_dB_A REAL,
    avg_nighttime_dB_A REAL,
    noise_source_category TEXT,
    compliance_status TEXT,
    last_calibration_date DATE,
    calibration_interval_months INTEGER,
    maintenance_company TEXT,
    last_maintenance_date DATE,
    data_transmission_method TEXT,
    alert_threshold_dB_A REAL,
    alerts_generated INTEGER,
    notes TEXT
);

INSERT INTO environmental_noise_monitoring VALUES
('NM001','Riverfront Park','Riverdale','Greene',38.1200,-120.4600,'2020-05-10',55.2,73.5,60.1,48.3','Traffic','Compliant','2023-08-01',12,'GreenTech Services','2023-09-20','Cellular','70',3,'Stable readings');

INSERT INTO environmental_noise_monitoring VALUES
('NM002','Industrial Zone West','Summit','Hillside',39.1300,-121.4700,'2021-03-15',68.9,85.2,72.5,65.0','Industrial','Non‑Compliant','2023-07-15',12,'EnviroGuard','2023-09-10','Fiber','80',12,'Investigate sources');

INSERT INTO environmental_noise_monitoring VALUES
('NM003','School Campus East','Riverdale','Greene',38.1400,-120.4800,'2022-09-01',48.5,62.0,55.0,42.0','Construction','Compliant','2023-10-05',12,'CampusMaint','2023-10-20','WiFi','65',1,'Construction ongoing');


-- District Legal Case Outcomes
CREATE TABLE district_legal_case_outcomes (
    case_id TEXT PRIMARY KEY,
    case_name TEXT,
    filing_date DATE,
    closure_date DATE,
    case_type TEXT,
    plaintiff TEXT,
    defendant TEXT,
    amount_claimed_usd REAL,
    amount_awarded_usd REAL,
    settlement_flag INTEGER,
    judgment_summary TEXT,
    legal_firm TEXT,
    attorney_in_charge TEXT,
    case_status TEXT,
    appeal_filed INTEGER,
    appellate_decision TEXT,
    precedent_cited TEXT,
    notes TEXT,
    last_updated DATE,
    outcome_category TEXT
);

INSERT INTO district_legal_case_outcomes VALUES
('LC001','Brown vs District','2022-02-10','2023-06-18','Employment','John Brown','Riverdale School District',250000,180000,1,'Partial settlement reached after mediation','Law & Co','Sarah Mitchell','Closed',0,NULL,'EEOC_v2020','Resolved amicably','2023-06-20','Settlement');

INSERT INTO district_legal_case_outcomes VALUES
('LC002','Doe vs District','2021-11-05','2024-01-12','Property','Jane Doe','Riverdale School District',480000,0,0,'Court ruled in favor of district, plaintiff dismissed','Justice Partners','Mark Alvarez','Closed',1,'Affirmed','LandUse_v2018','Appeal upheld','2024-01-15','Dismissal');

INSERT INTO district_legal_case_outcomes VALUES
('LC003','State Education Dept Investigation','2023-03-22',NULL,'Regulatory','State Education Dept','Riverdale School District',0,0,0,'Investigation ongoing, pending compliance audit','State Counsel','Emily Rivera','Open',0,NULL,'RegCompliance_v2021','Awaiting final report','2023-12-01','Pending');
