-- City parks and their facilities
CREATE TABLE city_parks_facilities
(
    park_id                TEXT PRIMARY KEY,
    park_name              TEXT NOT NULL,
    city                   TEXT NOT NULL,
    county                 TEXT,
    total_acreage          REAL,
    open_year              INTEGER,
    has_playground         INTEGER,
    playground_type        TEXT,
    num_basketball_courts   INTEGER,
    num_baseball_fields    INTEGER,
    num_soccer_fields      INTEGER,
    num_picnic_areas       INTEGER,
    has_running_track      INTEGER,
    track_length_meters    REAL,
    has_dog_park           INTEGER,
    dog_park_area_acreage  REAL,
    has_boat_launch        INTEGER,
    boat_launch_type       TEXT,
    has_nature_trail       INTEGER,
    trail_length_km        REAL,
    has_wheelchair_access INTEGER,
    restroom_count         INTEGER,
    water_fountain_count   INTEGER,
    lighting_type          TEXT,
    maintenance_contact   TEXT,
    last_renovation_date   DATE
);

INSERT INTO city_parks_facilities VALUES
('P001','GreenValley','Springfield','Clark',45.2,1995,1,'Standard',4,2,3,5,1,400.0,0,0.0,1,'BoatRamp',1,2.5,1,8,12,'Solar', 'JohnDoe','2022-05-10');

INSERT INTO city_parks_facilities VALUES
('P002','RiverSide','Riverdale','Monroe',30.0,2002,0,'',2,1,1,3,0,0.0,1,1.2,0,'',1,1.8,1,5,6,'LED','JaneSmith','2021-11-03');

INSERT INTO city_parks_facilities VALUES
('P003','MapleHeights','Mapleton','Jefferson',60.5,1988,1,'Adventure',6,3,4,7,1,500.0,1,2.0,1,'Dock',1,5.0,1,10,15,'LED','MikeBrown','2023-02-14');

-- Public art installations inventory
CREATE TABLE public_art_installations
(
    art_id                TEXT PRIMARY KEY,
    title                 TEXT NOT NULL,
    artist_name           TEXT,
    installation_year     INTEGER,
    material              TEXT,
    height_meters         REAL,
    width_meters          REAL,
    depth_meters          REAL,
    location_description  TEXT,
    city                  TEXT,
    county                TEXT,
    gps_latitude          REAL,
    gps_longitude         REAL,
    funding_source        TEXT,
    estimated_cost_usd    REAL,
    maintenance_cycle_years INTEGER,
    last_maintenance_date DATE,
    condition_rating      INTEGER,
    is_interactive        INTEGER,
    has_lighting          INTEGER,
    lighting_type         TEXT,
    viewing_hours_start   TEXT,
    viewing_hours_end     TEXT,
    accessibility_features TEXT,
    photo_url             TEXT,
    comments              TEXT
);

INSERT INTO public_art_installations VALUES
('A001','Harmony','LisaWhite',2010,'Bronze',3.2,1.5,1.5,'Central Plaza','Springfield','Clark',39.7817,-89.6501,'City Grants',25000,5,'2022-09-20',8,0,1,'Spotlight','08:00','20:00','RampAccess','http://example.com/harmony.jpg','');

INSERT INTO public_art_installations VALUES
('A002','Waves','CarlosRamos',2015,'StainlessSteel',4.0,2.0,0.5,'Riverwalk','Riverdale','Monroe',40.1123,-89.9834,'Private Donor',40000,3,'2023-01-15',9,1,1,'SolarLED','06:00','22:00','BraillePlaque','http://example.com/waves.jpg','Interactive sound element');

INSERT INTO public_art_installations VALUES
('A003','Dreamscape','AishaKhan',2018,'Glass',2.5,2.5,2.5,'Town Square','Mapleton','Jefferson',40.3789,-89.4231,'State Arts Fund',60000,4,'2022-06-05',7,0,0,'','09:00','19:00','WheelchairRamp','http://example.com/dreamscape.jpg','');

-- Regional transport infrastructure projects
CREATE TABLE regional_transport_infrastructure
(
    project_id               TEXT PRIMARY KEY,
    project_name             TEXT NOT NULL,
    start_year               INTEGER,
    end_year                 INTEGER,
    agency_responsible       TEXT,
    total_budget_usd         REAL,
    funding_source_federal   REAL,
    funding_source_state     REAL,
    funding_source_local     REAL,
    miles_of_road_constructed REAL,
    miles_of_road_repaired   REAL,
    bridges_built            INTEGER,
    bridges_rehabilitated    INTEGER,
    transit_stations_added   INTEGER,
    bike_lane_miles          REAL,
    pedestrian_path_miles    REAL,
    avg_daily_traffic        INTEGER,
    projected_daily_ridership INTEGER,
    environmental_impact_score INTEGER,
    permits_obtained         INTEGER,
    construction_start_date  DATE,
    construction_end_date    DATE,
    project_manager          TEXT,
    contact_phone            TEXT,
    status                   TEXT,
    notes                    TEXT
);

INSERT INTO regional_transport_infrastructure VALUES
('T001','I-70 Expansion',2019,2023,'DeptOfTransportation',150000000,50000000,60000000,40000000,45.0,12.5,3,2,0,10.0,5.0,25000,5000,78,25,'2020-03-01','2023-08-15','SarahLee','555-1234','InProgress','Phase 2 completed');

INSERT INTO regional_transport_infrastructure VALUES
('T002','Riverdale Light Rail',2020,2025,'RegionalTransitAuthority',200000000,80000000,70000000,50000000,0,0,0,0,12,0,0,0,12000,85,30,'2021-06-10','2025-11-20','MarkJohnson','555-5678','Planning','Awaiting final environmental clearance');

INSERT INTO regional_transport_infrastructure VALUES
('T003','Eastside Bike Network',2021,2024,'CityBikeProgram',35000000,10000000,15000000,10000000,0,0,0,0,0,60.0,25.0,0,0,65,20,'2021-09-05','2024-04-30','EmilyClark','555-9012','Construction','Community outreach ongoing');

-- Environmental noise monitoring stations
CREATE TABLE environmental_noise_monitoring
(
    station_id               TEXT PRIMARY KEY,
    station_name             TEXT NOT NULL,
    latitude                 REAL,
    longitude                REAL,
    installation_date        DATE,
    monitoring_frequency_hz  INTEGER,
    avg_noise_level_db       REAL,
    max_noise_level_db       REAL,
    min_noise_level_db       REAL,
    noise_exceedance_events INTEGER,
    maintenance_date         DATE,
    maintenance_company      TEXT,
    data_provider            TEXT,
    power_source             TEXT,
    has_backup_power         INTEGER,
    communication_method     TEXT,
    alert_threshold_db       REAL,
    status                   TEXT,
    city                     TEXT,
    county                   TEXT,
    notes                    TEXT
);

INSERT INTO environmental_noise_monitoring VALUES
('N001','DowntownWest',39.7812,-89.6505,'2020-02-15',1,62.5,95.2,38.1,12,'2022-11-20','AcmeMaint','CitySensors','Solar',1,'Cellular',85.0,'Active','Springfield','Clark','');

INSERT INTO environmental_noise_monitoring VALUES
('N002','IndustrialEast',40.1120,-89.9850,'2021-07-01',1,68.0,102.5,45.0,20,'2023-01-10','BetaServices','StateEnv','Mains',0,'Wifi',90.0,'Active','Riverdale','Monroe','Near manufacturing zone');

INSERT INTO environmental_noise_monitoring VALUES
('N003','SuburbanNorth',40.3795,-89.4240,'2019-11-20',1,55.0,78.3,30.0,5,'2022-05-05','GammaTech','CountyEnv','Solar',1,'Satellite',80.0,'Active','Mapleton','Jefferson','');

-- School technology experiment log
CREATE TABLE school_technology_experiment_log
(
    experiment_id            TEXT PRIMARY KEY,
    school_cds_code          TEXT,
    experiment_name          TEXT,
    start_date               DATE,
    end_date                 DATE,
    lead_instructor          TEXT,
    technology_type          TEXT,
    hardware_model           TEXT,
    software_version         TEXT,
    number_of_devices        INTEGER,
    student_participants     INTEGER,
    teacher_participants     INTEGER,
    objective_summary        TEXT,
    methodology_description  TEXT,
    data_collected_points    INTEGER,
    findings_summary         TEXT,
    publication_status       TEXT,
    funding_source           TEXT,
    budget_usd               REAL,
    approval_status          TEXT,
    ethics_review_date       DATE,
    notes                    TEXT
);

INSERT INTO school_technology_experiment_log VALUES
('E001','CDS001','VR Math Immersion','2022-01-10','2022-05-30','DrSmith','VirtualReality','OculusQuest2','1.4','20','120','5','Improve spatial reasoning','Students used VR simulations for geometry ','3000','Positive impact on test scores','Pending','GrantAlpha',25000,'Approved','2021-12-01','');

INSERT INTO school_technology_experiment_log VALUES
('E002','CDS045','AI Writing Assistant','2022-09-01','2023-02-15','MsJones','ArtificialIntelligence','GoogleNestHub','2.1','15','80','3','Enhance writing fluency','AI tool provided feedback on drafts','2500','Students showed 15% improvement','Published','GrantBeta',18000,'Approved','2022-08-10','');

INSERT INTO school_technology_experiment_log VALUES
('E003','CDS078','Drone Engineering','2021-03-05','2021-11-20','MrLee','Robotics','DJIPhantom','3.0','10','40','2','Teach engineering concepts','Students designed and programmed drones','1500','High engagement, modest skill gains','Submitted','SchoolFunds',12000,'Approved','2021-02-20','');

-- District grant application review records
CREATE TABLE district_grant_application_review
(
    review_id                TEXT PRIMARY KEY,
    grant_id                 TEXT,
    district_id              TEXT,
    application_year         INTEGER,
    applicant_name           TEXT,
    grant_purpose            TEXT,
    requested_amount_usd     REAL,
    reviewed_amount_usd      REAL,
    reviewer_name            TEXT,
    review_date              DATE,
    score_overall            INTEGER,
    score_need               INTEGER,
    score_impact             INTEGER,
    score_feasibility        INTEGER,
    recommendation           TEXT,
    final_decision           TEXT,
    awarded_amount_usd        REAL,
    disbursement_schedule    TEXT,
    reporting_requirements   TEXT,
    comments                 TEXT
);

INSERT INTO district_grant_application_review VALUES
('R001','G1001','D001',2022,'SpringfieldDistrict','STEM Labs Upgrade',500000,450000,'AnnaK','2022-07-15',85,90,80,75,'Approve with conditions','Approved',450000,'Quarterly','AnnualReport','');

INSERT INTO district_grant_application_review VALUES
('R002','G1002','D045',2023,'RiverdaleUnified','Transportation Fleet Modernization',750000,600000,'BrianM','2023-03-20',78,70,75,80,'Recommend partial award','Approved',600000,'SemiAnnual','QuarterlyReport','');

INSERT INTO district_grant_application_review VALUES
('R003','G1003','D078',2021,'MapletonSchools','Community Health Initiative',300000,300000,'ClaraS','2021-11-05',92,95,90,88,'Full approval','Approved',300000,'Annual','BiAnnualReport','Excellent alignment with health goals');

-- Community fitness center usage statistics
CREATE TABLE community_fitness_center_usage
(
    usage_id                TEXT PRIMARY KEY,
    center_id               TEXT,
    center_name             TEXT,
    city                    TEXT,
    county                  TEXT,
    year                    INTEGER,
    month                   INTEGER,
    total_visits            INTEGER,
    unique_members          INTEGER,
    avg_visit_duration_min  REAL,
    peak_hour_start         INTEGER,
    peak_hour_end           INTEGER,
    classes_held            INTEGER,
    avg_class_attendance    REAL,
    equipment_usage_rate    REAL,
    staff_on_duty           INTEGER,
    maintenance_issues_reported INTEGER,
    total_revenue_usd       REAL,
    membership_fee_usd      REAL,
    subsidies_received_usd   REAL,
    notes                   TEXT
);

INSERT INTO community_fitness_center_usage VALUES
('U001','C001','WestSide Fitness','Springfield','Clark',2022,5,12450,820,45.3,17,19,30,12.5,0.78,8,5,85000,50,2000,'');

INSERT INTO community_fitness_center_usage VALUES
('U002','C045','Riverdale Recreation','Riverdale','Monroe',2023,3,10230,600,38.7,18,20,25,10.2,0.65,6,3,72000,45,1500,'');

INSERT INTO community_fitness_center_usage VALUES
('U003','C078','Maple Heights Gym','Mapleton','Jefferson',2021,11,15890,950,50.1,16,18,40,15.0,0.85,10,2,98000,55,2500,'');

-- State education policy changes log
CREATE TABLE state_education_policy_changes
(
    policy_change_id        TEXT PRIMARY KEY,
    state_code              TEXT,
    policy_name             TEXT,
    effective_date          DATE,
    amendment_number        INTEGER,
    summary                 TEXT,
    section_affected        TEXT,
    regulatory_body         TEXT,
    compliance_deadline     DATE,
    required_reporting_form TEXT,
    funding_implication_usd REAL,
    stakeholder_group       TEXT,
    public_comment_period_days INTEGER,
    status                  TEXT,
    last_updated            DATE,
    contact_person          TEXT,
    contact_email           TEXT,
    notes                   TEXT
);

INSERT INTO state_education_policy_changes VALUES
('PC001','TX','Early Childhood Funding Expansion','2022-07-01',2,'Increase per-pupil funding for pre-K','Section 4.2','Dept of Education','2023-01-01','FormA',5000000,'School Districts',30,'Implemented','2022-06-15','LauraM','laura.m@example.com','');

INSERT INTO state_education_policy_changes VALUES
('PC002','CA','Teacher Evaluation Framework Revision','2023-01-15',1,'Shift to growth-oriented evaluations','Section 7.5','State Board of Education','2023-12-31','FormB',3000000,'Teachers Unions',45,'Pending','2022-12-20','MarkT','mark.t@example.com','Public hearings scheduled');

INSERT INTO state_education_policy_changes VALUES
('PC003','NY','Digital Learning Accessibility Mandate','2021-09-01',3,'Require accessibility features in all digital curricula','Section 5.1','Office of Digital Learning','2022-06-30','FormC',2000000,'Students, Parents',60,'Active','2021-08-10','SoniaL','sonia.l@example.com','');

-- Renewable energy asset registry for districts
CREATE TABLE renewable_energy_asset_registry
(
    asset_id                TEXT PRIMARY KEY,
    district_id             TEXT,
    asset_type              TEXT,
    manufacturer            TEXT,
    model_number            TEXT,
    installation_date       DATE,
    capacity_kw             REAL,
    expected_lifetime_years INTEGER,
    current_status          TEXT,
    last_inspection_date    DATE,
    maintenance_contract    TEXT,
    location_description    TEXT,
    gps_latitude            REAL,
    gps_longitude           REAL,
    funding_source          TEXT,
    cost_usd                REAL,
    annual_production_mwh   REAL,
    carbon_offset_tons      REAL,
    depreciation_years      INTEGER,
    notes                   TEXT
);

INSERT INTO renewable_energy_asset_registry VALUES
('RE001','D001','SolarPanel','SunPower','SP-360','2020-04-15',360.0,25,'Operational','2022-12-01','SunPowerService','North roof','39.7815','-89.6503','State Grant',250000,500.0,250.0,20,'');

INSERT INTO renewable_energy_asset_registry VALUES
('RE002','D045','WindTurbine','GE','WTG-1500','2021-09-10',1500.0,30,'Operational','2023-03-20','GEWindMaintain','South field','40.1125','-89.9855','Federal Funds',1800000,3000.0,1500.0,25,'');

INSERT INTO renewable_energy_asset_registry VALUES
('RE003','D078','Geothermal','Ormat','OG-200','2019-06-05',200.0,40,'Operational','2022-08-15','OrmatService','East campus','40.3800','-89.4240','District Bonds',400000,900.0,400.0,20,'');

-- Municipal budget line items
CREATE TABLE municipal_budget_lineitems
(
    lineitem_id            TEXT PRIMARY KEY,
    municipality_id        TEXT,
    fiscal_year            INTEGER,
    department             TEXT,
    expense_category       TEXT,
    budgeted_amount_usd    REAL,
    actual_spent_usd       REAL,
    variance_usd           REAL,
    approved_by            TEXT,
    approval_date          DATE,
    notes                  TEXT,
    project_code           TEXT,
    grant_funded_amount    REAL,
    revenue_source         TEXT,
    fund_type              TEXT,
    reporting_quarter      TEXT,
    cost_center_code       TEXT,
    responsible_manager    TEXT,
    status                 TEXT,
    last_updated           DATE
);

INSERT INTO municipal_budget_lineitems VALUES
('BL001','M001',2022,'Public Works','Road Maintenance',1200000,1150000,50000,'MayorJohn','2022-02-01','On schedule','PRJ-001',0,'GeneralTax','Operating','Q1','CC-101','TomLee','Closed','2022-03-15');

INSERT INTO municipal_budget_lineitems VALUES
('BL002','M045',2023,'Health Services','Community Clinic Operations',800000,820000,-20000,'CouncilAnna','2023-01-15','Slight overspend','PRJ-045',50000,'StateGrant','Capital','Q2','CC-202','SaraKim','Open','2023-04-10');

INSERT INTO municipal_budget_lineitems VALUES
('BL003','M078',2021,'Parks & Recreation','Park Renovation',600000,590000,10000,'MayorMike','2021-03-20','Completed early','PRJ-078',0,'BondIssue','Capital','Q3','CC-303','LuisGarcia','Closed','2021-07-05');

-- Municipal budget line items continuation (duplicate avoided)
-- Added as separate table is not required.