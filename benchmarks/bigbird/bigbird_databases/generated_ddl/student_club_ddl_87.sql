-- Campus energy consumption profile
CREATE TABLE campus_energy_profile
(
    profile_id               TEXT PRIMARY KEY,
    fiscal_year              INTEGER,
    total_consumption_kwh    REAL,
    renewable_percentage     REAL,
    peak_demand_kw           REAL,
    avg_daily_consumption_kwh REAL,
    heating_consumption_kwh  REAL,
    cooling_consumption_kwh  REAL,
    lighting_consumption_kwh REAL,
    hvac_efficiency          REAL,
    solar_generation_kwh     REAL,
    wind_generation_kwh      REAL,
    biofuel_generation_kwh   REAL,
    carbon_emission_tons     REAL,
    electricity_cost_usd     REAL,
    water_usage_gallons      REAL,
    waste_generated_tons     REAL,
    recycling_rate_percent   REAL,
    certification_status     TEXT,
    notes                    TEXT
);

INSERT INTO campus_energy_profile VALUES
('CEP001','2022',1250000.5,45.2,3500.0,3400.1,200000.0,150000.0,180000.0,0.85,300000.0,150000.0,50000.0,1200.5,250000.0,800000.0,1800.0,70.0,'LEED','Annual report'),
('CEP002','2023',1305000.0,48.0,3600.0,3500.2,210000.0,155000.0,185000.0,0.86,320000.0,160000.0,52000.0,1150.3,260000.0,820000.0,1850.0,72.0','LEED','Preliminary data'),
('CEP003','2024',1280000.8,46.5,3550.0,3450.5,205000.0,152000.0,182000.0,0.87,310000.0,155000.0,51000.0,1180.7,255000.0,810000.0,1825.0,71.0','LEED','Projected values');

-- Research collaboration network
CREATE TABLE research_collaboration_network
(
    collab_id               TEXT PRIMARY KEY,
    project_name            TEXT,
    lead_institution        TEXT,
    partner_institution     TEXT,
    start_date              TEXT,
    end_date                TEXT,
    funding_amount_usd      REAL,
    grant_agency            TEXT,
    field_of_study          TEXT,
    collaboration_type      TEXT,
    data_sharing_agreement  TEXT,
    ip_rights               TEXT,
    publication_count       INTEGER,
    status                  TEXT,
    contact_person          TEXT,
    contact_email           TEXT,
    meeting_frequency       TEXT,
    virtual_meeting_platform TEXT,
    shared_resources        TEXT,
    notes                   TEXT
);

INSERT INTO research_collaboration_network VALUES
('RCN001','QuantumSensors','UniversityA','InstituteB','2021-06-01','2024-05-31',2500000,'NationalScience','Physics','JointLab','Yes','Shared','12','Active','DrSmith','smith@univa.edu','Monthly','Zoom','LabSpace','Initial phase'),
('RCN002','AIHealthcare','UniversityC','HospitalD','2020-01-15','2023-12-31',1800000,'HealthAgency','ComputerScience','Consortium','Yes','Joint','8','Completed','DrLee','lee@univc.edu','Quarterly','Teams','DataSet','Published results'),
('RCN003','SustainableMaterials','CollegeE','CompanyF','2022-03-10','2025-03-09',3000000,'EnvironmentFund','MaterialsScience','IndustryAcademic','No','Company','5','Planning','DrPatel','patel@collegee.edu','BiMonthly','Webex','PrototypeLab','Proposal submitted');

-- Student wellbeing index
CREATE TABLE student_wellbeing_index
(
    index_id                     TEXT PRIMARY KEY,
    semester                     TEXT,
    student_key                  TEXT,
    gpa                          REAL,
    mental_health_score          REAL,
    physical_activity_hours      REAL,
    sleep_quality_score          REAL,
    nutrition_score              REAL,
    social_engagement_score      REAL,
    financial_stress_score       REAL,
    campus_involvement_score     REAL,
    housing_status               TEXT,
    part_time_job_hours          REAL,
    counseling_sessions          INTEGER,
    health_visits                INTEGER,
    stress_level                 TEXT,
    resilience_score             REAL,
    overall_wellbeing_score      REAL,
    ranking                      INTEGER,
    notes                        TEXT
);

INSERT INTO student_wellbeing_index VALUES
('SWI001','Fall2022','STU001',3.5,78.0,5.0,85.0,80.0,70.0,40.0,65.0,'OnCampus',10.0,2,3,'Medium',72.0,78.5,12,'Baseline measurement'),
('SWI002','Spring2023','STU002',3.8,85.0,6.5,90.0,88.0,78.0,30.0,80.0,'OffCampus',12.0,1,2,'Low',80.0,85.0,5,'Improved scores'),
('SWI003','Fall2023','STU003',3.2,65.0,3.0,70.0,60.0,55.0,55.0,50.0,'OnCampus',8.0,3,4,'High',60.0,65.0,25,'Needs attention');

-- Campus transport network
CREATE TABLE campus_transport_network
(
    network_id                TEXT PRIMARY KEY,
    route_name                TEXT,
    start_point               TEXT,
    end_point                 TEXT,
    distance_miles            REAL,
    avg_travel_time_min       REAL,
    daily_ridership           INTEGER,
    vehicle_type              TEXT,
    fuel_type                 TEXT,
    emission_factor           REAL,
    operating_cost_usd        REAL,
    maintenance_cost_usd      REAL,
    service_start_date        TEXT,
    service_end_date          TEXT,
    status                    TEXT,
    primary_operator          TEXT,
    frequency_per_hour        INTEGER,
    accessibility_features    TEXT,
    wifi_available            TEXT,
    notes                     TEXT
);

INSERT INTO campus_transport_network VALUES
('CTN001','ShuttleLoop','MainGate','NorthHall',2.5,12.0,1500,'Van','Electric',0.0,5000.0,800.0,'2020-01-01','2099-12-31','Active','TransitCo',6,'WheelchairRamp','Yes','High demand route'),
('CTN002','CampusExpress','SouthParking','ScienceCenter',3.2,18.0,900,'Bus','Diesel',0.9,7500.0,1200.0,'2018-05-15','2099-12-31','Active','CityTransit',4,'LowFloor','Yes','Peak hour service'),
('CTN003','EcoBikePath','EastDorm','WestLibrary',1.8,8.0,200,'Bike','Human',0.0,200.0,50.0,'2021-09-01','2099-12-31','Active','BikeShare',2,'BikeRack','No','Seasonal usage');

-- Digital content licensing
CREATE TABLE digital_content_licensing
(
    license_id                TEXT PRIMARY KEY,
    asset_name                TEXT,
    asset_type                TEXT,
    creator_name              TEXT,
    creation_date             TEXT,
    license_type              TEXT,
    expiration_date           TEXT,
    geographic_scope          TEXT,
    usage_limit               TEXT,
    royalty_amount_usd        REAL,
    royalty_frequency         TEXT,
    exclusive_flag            TEXT,
    sublicensing_allowed      TEXT,
    attribution_required      TEXT,
    version                   TEXT,
    format                    TEXT,
    storage_location          TEXT,
    last_audit_date           TEXT,
    compliance_status         TEXT,
    notes                     TEXT
);

INSERT INTO digital_content_licensing VALUES
('DCL001','CampusTourVideo','Video','MediaDept','2022-04-10','RoyaltyFree','2099-12-31','Global','Unlimited',0.0,'N/A','No','Yes','Yes','v1','MP4','/assets/video','2023-01-15','Compliant','Used in admissions'),
('DCL002','ResearchPaperPDF','Document','ProfJones','2021-11-05','Standard','2025-11-04','USA','5000Downloads',1500.0,'Annual','Yes','No','Yes','v2','PDF','/archives/papers','2022-12-01','Compliant','Cited in journals'),
('DCL003','EventPoster','Image','DesignTeam','2023-02-20','Limited','2024-02-19','Regional','100Prints',300.0,'OneTime','No','No','Yes','v1','PNG','/marketing/posters','2023-02-25','Pending','For spring festival');

-- Facility access control
CREATE TABLE facility_access_control
(
    access_id               TEXT PRIMARY KEY,
    facility_name           TEXT,
    area                    TEXT,
    access_level_required   TEXT,
    badge_type              TEXT,
    badge_id                TEXT,
    issue_date              TEXT,
    expiry_date             TEXT,
    access_method           TEXT,
    biometric_type          TEXT,
    credential_status       TEXT,
    last_used_timestamp     TEXT,
    last_maintenance_date   TEXT,
    audit_trail_link        TEXT,
    security_zone           TEXT,
    emergency_override_allowed TEXT,
    notes                   TEXT,
    created_by              TEXT,
    created_timestamp       TEXT,
    updated_timestamp       TEXT
);

INSERT INTO facility_access_control VALUES
('FAC001','ScienceBuilding','Lab1','Level2','Proximity','BADGE123','2022-01-01','2024-12-31','CardSwipe','Fingerprint','Active','2023-03-10 08:15:00','2023-02-20','/audit/001','ZoneA','Yes','Restricted area','Admin','2022-01-01','2023-03-10'),
('FAC002','Library','ArchiveRoom','Level3','Proximity','BADGE456','2021-06-15','2023-06-14','CardSwipe','Iris','Inactive','2022-11-05 14:30:00','2022-10-01','/audit/002','ZoneB','No','Closed for renovation','Security','2021-06-15','2022-11-05'),
('FAC003','StudentCenter','Gym','Level1','Proximity','BADGE789','2023-03-01','2025-02-28','CardSwipe','None','Active','2023-09-20 17:45:00','2023-09-01','/audit/003','ZoneC','No','General access','Facilities','2023-03-01','2023-09-20');

-- Environmental monitoring snapshot
CREATE TABLE environmental_monitoring_snapshot
(
    snapshot_id            TEXT PRIMARY KEY,
    station_id             TEXT,
    station_name           TEXT,
    location_lat           REAL,
    location_long          REAL,
    timestamp              TEXT,
    temperature_c          REAL,
    humidity_percent       REAL,
    pm25_ug_m3             REAL,
    pm10_ug_m3             REAL,
    no2_ppb                REAL,
    so2_ppb                REAL,
    o3_ppb                 REAL,
    co_ppb                 REAL,
    wind_speed_m_s         REAL,
    wind_direction_deg     REAL,
    precipitation_mm       REAL,
    uv_index               REAL,
    battery_level_percent  REAL,
    notes                  TEXT
);

INSERT INTO environmental_monitoring_snapshot VALUES
('EMS001','ST001','NorthCampus','40.7128','-74.0060','2023-09-01 08:00:00',22.5,55.0,12.3,20.1,15.0,3.5,30.2,0.4,3.2,180.0,0.0,5.0,95.0','Clear sky'),
('EMS002','ST002','SouthField','40.7306','-73.9352','2023-09-01 08:05:00',21.0,60.0,10.0,18.0,12.0,2.8,28.0,0.5,2.8,190.0,0.2,6.0,92.0','Light wind'),
('EMS003','ST003','EastLawn','40.7550','-73.9800','2023-09-01 08:10:00',23.1,58.0,14.5,22.0,18.0,4.0,32.5,0.3,3.5,170.0,0.0,4.5,98.0','Sunny');

-- Grant funding allocation detail
CREATE TABLE grant_funding_allocation_detail
(
    allocation_id           TEXT PRIMARY KEY,
    grant_id                TEXT,
    fiscal_year             INTEGER,
    allocated_amount_usd    REAL,
    department              TEXT,
    principal_investigator  TEXT,
    project_code            TEXT,
    cost_center             TEXT,
    expense_category        TEXT,
    allocated_month         TEXT,
    spent_amount_usd        REAL,
    remaining_amount_usd    REAL,
    approval_status         TEXT,
    approved_by             TEXT,
    approval_date           TEXT,
    comments                TEXT,
    reporting_cycle         TEXT,
    audit_flag              TEXT,
    revision_number         INTEGER,
    notes                   TEXT
);

INSERT INTO grant_funding_allocation_detail VALUES
('GFA001','GRNT1001',2022,500000.0,'Engineering','DrWhite','ENG001','CC100','Equipment','Q1',150000.0,350000.0,'Approved','DeanSmith','2022-02-15','Initial allocation','Quarterly','No',1,'First disbursement'),
('GFA002','GRNT1002',2023,750000.0,'Biology','DrGreen','BIO202','CC200','Personnel','Q2',300000.0,450000.0,'Pending','DeanBrown','2023-03-10','Awaiting final signoff','Biannual','Yes',2,'Second year request'),
('GFA003','GRNT1003',2024,250000.0,'Physics','DrBlack','PHY303','CC300','Travel','Q3',50000.0,200000.0,'Approved','DeanJones','2024-01-20','Travel for conference','Annual','No',1,'Travel budget');

-- Campus artifact inventory
CREATE TABLE campus_artifact_inventory
(
    artifact_id             TEXT PRIMARY KEY,
    title                   TEXT,
    artist                  TEXT,
    creation_year           INTEGER,
    media_type              TEXT,
    dimensions              TEXT,
    acquisition_date        TEXT,
    acquisition_method      TEXT,
    location_building       TEXT,
    location_room           TEXT,
    condition_rating        TEXT,
    insurance_value_usd     REAL,
    loan_status             TEXT,
    loan_to_institution     TEXT,
    loan_start_date         TEXT,
    loan_end_date           TEXT,
    display_status          TEXT,
    curator                 TEXT,
    catalog_number          TEXT,
    notes                   TEXT
);

INSERT INTO campus_artifact_inventory VALUES
('ART001','BronzeStatue','ArtistA',1920,'Sculpture','2x3x4ft','2010-05-12','Donation','ArtCenter','Room101','Good',120000.0,'NotOnLoan','N/A','N/A','N/A','OnDisplay','CuratorX','CAT001','Flagship piece'),
('ART002','OilPainting','ArtistB',1885,'Painting','30x40in','2015-09-20','Purchase','Library','Room202','Excellent',85000.0,'OnLoan','MuseumY','2023-01-01','2024-12-31','InStorage','CuratorY','CAT002','On loan to partner museum'),
('ART003','CeramicVase','ArtistC',2005,'Ceramics','12in height','2018-11-03','Bequest','StudentUnion','Room303','Fair',15000.0,'NotOnLoan','N/A','N/A','N/A','OnDisplay','CuratorZ','CAT003','Featured in spring exhibit');

-- Sustainability initiative milestone
CREATE TABLE sustainability_initiative_milestone
(
    milestone_id               TEXT PRIMARY KEY,
    initiative_name            TEXT,
    target_year                INTEGER,
    description                TEXT,
    metric_name                TEXT,
    baseline_value             REAL,
    target_value               REAL,
    current_value              REAL,
    achievement_date           TEXT,
    responsible_department     TEXT,
    status                     TEXT,
    funding_source             TEXT,
    allocated_budget_usd       REAL,
    spent_budget_usd           REAL,
    risk_level                 TEXT,
    dependencies               TEXT,
    notes                      TEXT,
    created_by                 TEXT,
    created_date               TEXT,
    last_updated               TEXT
);

INSERT INTO sustainability_initiative_milestone VALUES
('SIM001','ZeroWaste','2025','Reduce waste sent to landfill','WasteDiversionPercent',45.0,80.0,60.0,'2023-11-15','Facilities','InProgress','CampusFund',200000.0,75000.0,'Medium','RecyclingProgram','Phase1 completed','AdminA','2022-06-01','2023-11-15'),
('SIM002','RenewableEnergy','2026','Increase renewable energy usage','RenewableEnergyPercent',30.0,70.0,45.0,'2024-04-10','Energy','Planned','StateGrant',500000.0,0.0,'High','SolarInstallation','Design stage','AdminB','2023-01-20','2024-04-10'),
('SIM003','GreenTransportation','2024','Promote low‑carbon transport','BikeShareMemberships',1200,3000,1800,'2023-09-01','Transportation','InProgress','UniversityDonations',150000.0,60000.0,'Low','BikeInfrastructure','Bike stations expanded','AdminC','2022-09-15','2023-09-01');