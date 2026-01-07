-- Faculty research group definition
CREATE TABLE faculty_research_group
(
    group_id                TEXT PRIMARY KEY,
    group_name              TEXT,
    department              TEXT,
    primary_focus           TEXT,
    established_year        INTEGER,
    contact_email           TEXT,
    website                 TEXT,
    funding_agency          TEXT,
    total_budget_usd        REAL,
    member_count            INTEGER,
    description             TEXT,
    office_location         TEXT,
    meeting_day             TEXT,
    meeting_time            TEXT,
    research_area_1         TEXT,
    research_area_2         TEXT,
    research_area_3         TEXT,
    research_area_4         TEXT,
    research_area_5         TEXT,
    external_collaborators  TEXT
);
INSERT INTO faculty_research_group VALUES ('GRP001','AI_Innovators','Computer_Science','Artificial_Intelligence',2015,'ai_grp@univ.edu','www.univ.edu/ai','NSF',2500000,12,'Focus_on_deep_learning','Building_A_Room_210','Wednesday','14:00','Machine_Learning','Computer_Vision','NLP','Robotics','Ethics','Partner_University_X');
INSERT INTO faculty_research_group VALUES ('GRP002','BioHealth_Lab','Biology','Biomedical_Research',2010,'bio_lab@univ.edu','www.univ.edu/bio','NIH',1800000,9,'Translational_research','Building_B_Room_101','Friday','10:00','Genomics','Proteomics','Cell_Culture','Immunology','Drug_Discovery','Hospital_Y');
INSERT INTO faculty_research_group VALUES ('GRP003','Energy_Systems','Engineering','Renewable_Energy',2018,'energy_grp@univ.edu','www.univ.edu/energy','DOE',3000000,15,'Grid_integration_studies','Building_C_Room_305','Monday','09:30','Solar','Wind','Battery_Technology','Smart_Grid','Hydrogen','Industry_Partner_Z');

-- Campus renewable energy assets
CREATE TABLE campus_renewable_energy_asset
(
    asset_id                     TEXT PRIMARY KEY,
    asset_type                   TEXT,
    capacity_mw                  REAL,
    installation_date            TEXT,
    vendor                       TEXT,
    location                     TEXT,
    status                       TEXT,
    maintenance_cycle_months     INTEGER,
    last_maintenance_date        TEXT,
    next_maintenance_date        TEXT,
    warranty_years               INTEGER,
    operating_cost_usd_per_year  REAL,
    generated_ytd_mwh            REAL,
    latitude                     REAL,
    longitude                    REAL,
    description                  TEXT,
    compliance_cert              TEXT,
    decommission_date            TEXT,
    owner_department             TEXT,
    funding_source               TEXT
);
INSERT INTO campus_renewable_energy_asset VALUES ('ASSET001','Solar_Panel_Array',2.5,'2021-06-15','SunPower','North_Roof','Active',12,'2023-05-01','2024-05-01',10,15000,1800,39.9526,-75.1652,'20kW_array_on_north_building','UL_1741',NULL,'Facilities','Green_Bond');
INSERT INTO campus_renewable_energy_asset VALUES ('ASSET002','Wind_Turbine',1.8,'2020-09-20','Vestas','East_Field','Active',6,'2023-03-10','2023-09-10',8,12000,1300,40.0012,-75.1123,'2MW_turbine_with_bird_protection','ISO_50001',NULL,'Engineering','State_Grant');
INSERT INTO campus_renewable_energy_asset VALUES ('ASSET003','Geothermal_Heat_Pump',0.9,'2019-11-05','Bosch','Basement_Level_2','Retired',24,'2022-10-20','2024-10-20',15,8000,0,40.0100,-75.1200,'Legacy_geothermal_system','EPA_2018',NULL,'Facilities','Campus_Budget');

-- Community health survey responses
CREATE TABLE community_health_survey_response
(
    response_id               TEXT PRIMARY KEY,
    survey_date               TEXT,
    respondent_id             TEXT,
    age                       INTEGER,
    gender                    TEXT,
    zip_code                  INTEGER,
    health_status             TEXT,
    chronic_conditions        TEXT,
    vaccination_status        TEXT,
    exercise_frequency_per_week INTEGER,
    diet_quality_score        INTEGER,
    mental_health_score       INTEGER,
    smoking_status            TEXT,
    alcohol_use_frequency     INTEGER,
    healthcare_access         TEXT,
    insurance_type            TEXT,
    satisfaction_score        INTEGER,
    bmi                       REAL,
    blood_pressure_sys        INTEGER,
    blood_pressure_dia        INTEGER,
    cholesterol_level_mgdl    INTEGER,
    sleep_hours_per_night     REAL,
    comments                  TEXT
);
INSERT INTO community_health_survey_response VALUES ('RESP001','2023-04-12','C001',34,'Female',19104,'Good','None','Fully','3',78,85,'Never','2','Regular','Private',8,23.5,120,78,180,7.0,'No_comments');
INSERT INTO community_health_survey_response VALUES ('RESP002','2023-04-13','C002',47,'Male',19104,'Fair','Diabetes','Partial','1',62,70,'Former','4','Occasional','Medicaid',6,28.1,130,85,210,6.5,'Needs_followup');
INSERT INTO community_health_survey_response VALUES ('RESP003','2023-04-14','C003',29,'Nonbinary',19104,'Excellent','None','Fully','5',85,92,'Never','1','Regular','Employer',9,21.9,115,75,170,8.2','All_good');

-- Digital content license agreements
CREATE TABLE digital_content_license_agreement
(
    license_id                TEXT PRIMARY KEY,
    content_id                TEXT,
    licensor                  TEXT,
    licensee                  TEXT,
    start_date                TEXT,
    end_date                  TEXT,
    usage_rights              TEXT,
    territory                 TEXT,
    fee_amount_usd            REAL,
    payment_terms             TEXT,
    renewal_option            TEXT,
    termination_clause        TEXT,
    version                   TEXT,
    signed_by                 TEXT,
    signature_date            TEXT,
    digital_signature_hash    TEXT,
    notes                     TEXT,
    compliance_status         TEXT,
    audit_date                TEXT,
    renewal_date              TEXT
);
INSERT INTO digital_content_license_agreement VALUES ('LIC001','CNT001','MediaCorp','EduPlatform','2022-01-01','2025-01-01','Streaming','Global',50000,'Net30','Auto','Breach','v1.0','John_Doe','2022-01-02','ABCD1234EFGH','Initial_agreement','Compliant','2023-12-31','2024-12-31');
INSERT INTO digital_content_license_agreement VALUES ('LIC002','CNT002','NewsGroup','CampusTV','2021-06-15','2024-06-15','Broadcast','Regional',30000,'Net45','Manual','Termination_for_cause','v2.1','Jane_Smith','2021-06-16','WXYZ5678IJKL','Extended_terms','Pending','2023-11-30','2024-05-30');
INSERT INTO digital_content_license_agreement VALUES ('LIC003','CNT003','OpenSourceOrg','ResearchLab','2023-03-01','2026-03-01','Download','Global',0,'None','None','None','v3.0','Alice_Wong','2023-03-02','LMNO9101PQRS','Free_use_agreement','Compliant','2024-02-28','2025-02-28');

-- Sustainability initiative metrics
CREATE TABLE sustainability_initiative_metric
(
    metric_id                     TEXT PRIMARY KEY,
    initiative_id                 TEXT,
    year                          INTEGER,
    carbon_reduction_tons         REAL,
    energy_savings_mwh            REAL,
    water_savings_gallons         REAL,
    waste_diverted_tons          REAL,
    green_buildings_certified    INTEGER,
    employee_participation_percent REAL,
    community_outreach_hours      INTEGER,
    cost_savings_usd              REAL,
    metric_source                 TEXT,
    verification_date             TEXT,
    notes                         TEXT,
    target_year                   INTEGER,
    target_value                  REAL,
    status                        TEXT,
    responsible_department        TEXT,
    reporting_frequency           TEXT,
    last_updated                  TEXT
);
INSERT INTO sustainability_initiative_metric VALUES ('MET001','INIT001',2022,120.5,850.0,1500000,45.0,3,22.5,300,200000,'Internal','2023-01-15','Progress_good',2025,200.0,'On_Track','Facilities','Annual','2023-02-01');
INSERT INTO sustainability_initiative_metric VALUES ('MET002','INIT002',2022,80.0,400.0,800000,30.0,1,15.0,150,120000,'External','2023-02-10','Needs_improvement',2024,100.0,'At_Risk','Engineering','Semi_Annual','2023-03-01');
INSERT INTO sustainability_initiative_metric VALUES ('MET003','INIT003',2022,200.0,1200.0,2000000,70.0,5,30.0,500,350000,'Internal','2023-03-20','Excellent',2026,250.0,'On_Track','Administration','Quarterly','2023-04-01');

-- Campus artifact locations
CREATE TABLE campus_artifact_location
(
    artifact_id               TEXT PRIMARY KEY,
    artifact_name             TEXT,
    collection                TEXT,
    acquisition_date          TEXT,
    origin_country            TEXT,
    period                    TEXT,
    condition                 TEXT,
    display_location          TEXT,
    gallery_room              TEXT,
    curator                   TEXT,
    insurance_value_usd       REAL,
    loan_status               TEXT,
    loan_institution          TEXT,
    loan_start_date           TEXT,
    loan_end_date             TEXT,
    storage_location          TEXT,
    climate_control_required TEXT,
    handling_instructions     TEXT,
    digitized_flag            TEXT,
    digital_access_url        TEXT
);
INSERT INTO campus_artifact_location VALUES ('ART001','Ancient_Vase','Archaeology','2010-05-12','Greece','Classical','Excellent','Main_Museum','Room_101','Dr_Smith',50000,'Not_On_Loan',NULL,NULL,NULL,'Vault_A','Yes','Use_gloves','Yes','http://univ.edu/digital/ancient_vase');
INSERT INTO campus_artifact_location VALUES ('ART002','Midcentury_Sculpture','Modern_Art','2015-09-30','USA','Midcentury','Good','Sculpture_Gallery','Room_202','Dr_Jones',30000,'On_Loan','City_Art_Museum','2022-01-01','2024-12-31','Storage_B','No','Handle_with_care','No',NULL);
INSERT INTO campus_artifact_location VALUES ('ART003','Rare_Book_Manuscript','Library','2008-03-20','Italy','Renaissance','Fair','Library_Display','Reading_Room','Dr_Lee',75000,'Not_On_Loan',NULL,NULL,NULL,'Secure_Shelf','Yes','No_flamming','Yes','http://univ.edu/digital/rare_book');

-- Transport fleet vehicles
CREATE TABLE transport_fleet_vehicle
(
    vehicle_id                TEXT PRIMARY KEY,
    vehicle_type              TEXT,
    make                      TEXT,
    model                     TEXT,
    year                      INTEGER,
    license_plate             TEXT,
    vin                       TEXT,
    acquisition_date          TEXT,
    mileage_km                INTEGER,
    fuel_type                 TEXT,
    fuel_efficiency_kmpl      REAL,
    maintenance_status       TEXT,
    last_service_date        TEXT,
    next_service_due         TEXT,
    assigned_driver_id       TEXT,
    department               TEXT,
    depreciation_rate_percent REAL,
    insurance_policy_number  TEXT,
    registration_expiry      TEXT,
    gps_tracker_id           TEXT
);
INSERT INTO transport_fleet_vehicle VALUES ('VEH001','Shuttle','Ford','Transit','2019','ABC1234','1FTYR2CM5KKA12345','2020-02-15',45000,'Diesel',12.5,'Good','2023-06-01','2023-12-01','DR001','Transport','15.0','INS123456','2024-02-28','GPS001');
INSERT INTO transport_fleet_vehicle VALUES ('VEH002','Electric_Bus','Tesla','Model_X','2021','ELEC567','5YJRE1A31M1P67890','2021-08-10',20000,'Electric',0,'Excellent','2023-04-20','2023-10-20','DR002','Facilities','10.0','INS789012','2025-08-10','GPS002');
INSERT INTO transport_fleet_vehicle VALUES ('VEH003','Cargo_Truck','Volvo','FH16','2017','TRK9988','YV2A4H330B2087654','2018-05-05',120000,'Diesel',6.8','Needs_Repair','2023-01-15','2023-07-15','DR003','Logistics','18.0','INS345678','2023-11-30','GPS003');

-- Research data repository snapshots
CREATE TABLE research_data_repository_snapshot
(
    snapshot_id               TEXT PRIMARY KEY,
    repository_id             TEXT,
    snapshot_date             TEXT,
    total_records             INTEGER,
    storage_size_gb           REAL,
    checksum                  TEXT,
    created_by                TEXT,
    verification_status       TEXT,
    notes                     TEXT,
    retention_policy          TEXT,
    access_level              TEXT,
    encryption_method         TEXT,
    backup_location           TEXT,
    archive_status            TEXT,
    expiration_date           TEXT,
    reference_url             TEXT,
    data_quality_score        REAL,
    compliance_framework      TEXT,
    audit_log_id              TEXT,
    source_system             TEXT
);
INSERT INTO research_data_repository_snapshot VALUES ('SNAP001','REPO01','2023-01-31',1250000,850.5','ABCDEF123456','admin','Verified','Monthly_snapshot','5_years','Restricted','AES-256','Offsite_Tape','Archived','2028-01-31','http://repo.univ.edu/snap/2023_01','92.5','FAIR','AUD001','Data_Ingestion');
INSERT INTO research_data_repository_snapshot VALUES ('SNAP002','REPO02','2023-01-31',780000,620.0','123456ABCDEF','admin','Verified','Monthly_snapshot','3_years','Public','AES-256','Cloud_Storage','Active','2026-01-31','http://repo.univ.edu/snap/2023_01_repo2','88.0','FAIR','AUD002','Simulation_Output');
INSERT INTO research_data_repository_snapshot VALUES ('SNAP003','REPO03','2023-01-31',450000,300.2','FEDCBA654321','admin','Pending','Awaiting_verification','7_years','Confidential','RSA-2048','Hybrid','Pending','2030-01-31','http://repo.univ.edu/snap/2023_01_repo3','75.0','FAIR','AUD003','Survey_Data');

-- Facility energy consumption records
CREATE TABLE facility_energy_consumption
(
    record_id                TEXT PRIMARY KEY,
    building_id              TEXT,
    utility_type             TEXT,
    meter_id                 TEXT,
    reading_date             TEXT,
    consumption_value        REAL,
    cost_usd                 REAL,
    peak_demand_kw           REAL,
    demand_time              TEXT,
    tariff_category          TEXT,
    carbon_intensity_kg_per_kwh REAL,
    weather_condition       TEXT,
    occupancy_level_percent REAL,
    notes                    TEXT,
    verification_status      TEXT,
    created_by               TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    data_source              TEXT
);
INSERT INTO facility_energy_consumption VALUES ('REC001','BLDG01','Electricity','MTR1001','2023-03-01',1250.5,150.75,75.0','14:00','Tier_1',0.45,'Clear',80.0,'Normal_operation','Verified','energy_analyst','2023-03-02','2023-03-02','Meter_Readings');
INSERT INTO facility_energy_consumption VALUES ('REC002','BLDG02','Gas','MTR2002','2023-03-01',850.0,95.30,45.0','09:30','Tier_2',0.20,'Rainy',65.0,'Heating_season','Verified','energy_analyst','2023-03-02','2023-03-02','Meter_Readings');
INSERT INTO facility_energy_consumption VALUES ('REC003','BLDG03','Steam','MTR3003','2023-03-01',430.0,55.10,30.0','12:15','Tier_1',0.15,'Cloudy',70.0,'Laboratory_use','Pending','energy_analyst','2023-03-02','2023-03-02','Manual_Entry');

-- Student entrepreneur fund records
CREATE TABLE student_entrepreneur_fund
(
    fund_id                 TEXT PRIMARY KEY,
    fund_name               TEXT,
    launch_date             TEXT,
    total_capital_usd       REAL,
    allocated_amount_usd    REAL,
    remaining_amount_usd    REAL,
    investment_stage        TEXT,
    focus_area              TEXT,
    eligibility_criteria    TEXT,
    application_deadline    TEXT,
    review_committee        TEXT,
    number_of_awards        INTEGER,
    average_award_amount_usd REAL,
    success_metric          TEXT,
    reporting_requirements TEXT,
    contact_person          TEXT,
    contact_email           TEXT,
    website                 TEXT,
    notes                   TEXT,
    status                  TEXT
);
INSERT INTO student_entrepreneur_fund VALUES ('FND001','Campus_Innovation_Fund','2020-09-01',500000,350000,150000,'Seed','Tech','Full_time_students','2023-12-31','Committee_A',12,29166.7,'Revenue_growth','Quarterly','Emily_Clark','eclark@univ.edu','www.univ.edu/innovfund','High_demand','Active');
INSERT INTO student_entrepreneur_fund VALUES ('FND002','Social_Impact_Fund','2021-01-15',300000,120000,180000,'Series_A','Social_Enterprise','Graduate_students','2024-03-31','Committee_B',5,24000,'Community_impact','Biannual','Michael_Brown','mbrown@univ.edu','www.univ.edu/socialfund','Limited_applications','Active');
INSERT INTO student_entrepreneur_fund VALUES ('FND003','Green_Tech_Fund','2022-05-20',200000,50000,150000,'Pre_Seed','Clean_Energy','Undergrad_and_Grad','2023-11-30','Committee_C',3,16666.7,'Carbon_reduction','Annual','Sara_Lee','slee@univ.edu','www.univ.edu/greentech','Awaiting_more_proposals','Closed');