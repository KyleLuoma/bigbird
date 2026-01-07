-- Information about major infrastructure projects undertaken by school districts
CREATE TABLE district_infrastructure_projects
(
    project_id                TEXT    NOT NULL PRIMARY KEY,
    project_name              TEXT    NOT NULL,
    start_date                DATE    NULL,
    end_date                  DATE    NULL,
    budget_amount             REAL    NULL,
    funding_source            TEXT    NULL,
    status                    TEXT    NULL,
    description               TEXT    NULL,
    region                    TEXT    NULL,
    phase                     TEXT    NULL,
    contractor                TEXT    NULL,
    contract_number           TEXT    NULL,
    estimated_completion      DATE    NULL,
    actual_completion         DATE    NULL,
    cost_overrun_percent      REAL    NULL,
    environmental_impact_score REAL   NULL,
    permits_required          INTEGER NULL,
    permits_obtained          INTEGER NULL,
    stakeholder_count        INTEGER NULL,
    community_meeting_date    DATE    NULL,
    notes                     TEXT    NULL
);
INSERT INTO district_infrastructure_projects VALUES
('PRJ001','NewHighSchoolWing','2022-01-15','2024-06-30',25000000,'StateGrant','InProgress','Expansion for science labs','NorthZone','Construction','BuildCo','CN12345','2024-06-01','NULL',5.2,78.5,3,2,12,'2023-03-10','Initial phase complete');
INSERT INTO district_infrastructure_projects VALUES
('PRJ002','SolarPanelInstallation','2021-04-01','2022-12-15',7500000,'GreenBond','Completed','Rooftop solar on 5 schools','SouthZone','Implementation','EcoEnergy','CN67890','2022-11-30','2022-12-10',0.0,92.1,5,5,8,'2021-05-10','All panels operational');
INSERT INTO district_infrastructure_projects VALUES
('PRJ003','BusDepotRenovation','2023-03-01','2025-08-31',12000000,'LocalFunding','Planned','Upgrade maintenance facilities','EastZone','Planning','ConstructIt','CN54321','2025-07-31','NULL',NULL,65.0,2,1,5,'2023-04-15','Environmental review pending');

-- Aggregated education statistics reported at the state level
CREATE TABLE state_education_statistics
(
    stat_year                     INTEGER NOT NULL,
    state_code                    TEXT    NOT NULL,
    total_enrollment              INTEGER NULL,
    graduation_rate               REAL    NULL,
    dropout_rate                  REAL    NULL,
    avg_test_score_math           REAL    NULL,
    avg_test_score_reading        REAL    NULL,
    per_student_expenditure       REAL    NULL,
    teacher_student_ratio         REAL    NULL,
    special_ed_percentage         REAL    NULL,
    english_learner_percentage    REAL    NULL,
    funding_per_school            REAL    NULL,
    median_household_income       REAL    NULL,
    poverty_rate                  REAL    NULL,
    unemployment_rate             REAL    NULL,
    urban_percent                 REAL    NULL,
    rural_percent                 REAL    NULL,
    charter_school_percent        REAL    NULL,
    magnet_school_percent         REAL    NULL,
    school_days_per_year          INTEGER NULL,
    assessment_cycle              TEXT    NULL
);
INSERT INTO state_education_statistics VALUES
(2022,'CA',6200000,88.5,2.3,520,540,12500,16.2,12.5,10.8,13500,75000,13.5,5.2,73.0,27.0,6.0,4.5,180,'Annual');
INSERT INTO state_education_statistics VALUES
(2022,'TX',5400000,84.2,3.1,480,500,11000,15.8,13.0,8.5,12000,65000,16.0,6.1,68.5,31.5,7.2,5.0,182,'Biannual');
INSERT INTO state_education_statistics VALUES
(2022,'NY',3100000,90.1,1.7,540,560,14000,17.0,10.2,12.0,15000,80000,12.0,4.8,64.0,36.0,5.5,6.2,179,'Annual');

-- Health and wellness metrics collected for local communities
CREATE TABLE community_health_metrics
(
    metric_id                    TEXT    NOT NULL PRIMARY KEY,
    community_id                TEXT    NOT NULL,
    reporting_year              INTEGER NOT NULL,
    population                  INTEGER NULL,
    avg_life_expectancy         REAL    NULL,
    obesity_rate_percent        REAL    NULL,
    diabetes_rate_percent       REAL    NULL,
    smoking_rate_percent        REAL    NULL,
    physical_activity_percent   REAL    NULL,
    mental_health_incidence     REAL    NULL,
    access_to_care_index        REAL    NULL,
    number_of_clinics           INTEGER NULL,
    hospital_beds_per_1000      REAL    NULL,
    vaccination_rate_percent    REAL    NULL,
    water_quality_score         REAL    NULL,
    air_quality_index           INTEGER NULL,
    food_desert_indicator       INTEGER NULL,
    chronic_disease_prevalence  REAL    NULL,
    health_funding_per_capita    REAL    NULL,
    emergency_response_time_min INTEGER NULL,
    health_outreach_programs    INTEGER NULL
);
INSERT INTO community_health_metrics VALUES
('MH001','COMA',2022,45200,78.4,28.5,9.2,15.0,55.0,12.3,8.5,3,3.2,92.0,85.0,42,0,14.0,3500,12,4);
INSERT INTO community_health_metrics VALUES
('MH002','COMB',2022,128000,80.1,22.0,6.8,12.5,62.0,9.8,9.1,5,2.9,95.5,90.0,38,0,11.5,4200,10,7);
INSERT INTO community_health_metrics VALUES
('MH003','COMC',2022,78500,79.2,25.3,8.1,14.2,58.0,11.0,8.8,4,3.0,93.0,88.0,40,1,13.2,3800,11,5);

-- Sensors and data collection points for environmental monitoring
CREATE TABLE environmental_monitoring_stations
(
    station_id               TEXT    NOT NULL PRIMARY KEY,
    station_name             TEXT    NOT NULL,
    latitude                 REAL    NULL,
    longitude                REAL    NULL,
    installation_date        DATE    NULL,
    agency_responsible       TEXT    NULL,
    sensor_type              TEXT    NULL,
    measurement_frequency_min INTEGER NULL,
    pollutant_pm2_5_ugm3    REAL    NULL,
    pollutant_pm10_ugm3     REAL    NULL,
    pollutant_no2_ppb       REAL    NULL,
    pollutant_o3_ppb        REAL    NULL,
    pollutant_so2_ppb       REAL    NULL,
    temperature_celsius      REAL    NULL,
    humidity_percent         REAL    NULL,
    wind_speed_mps           REAL    NULL,
    data_quality_flag        TEXT    NULL,
    maintenance_schedule_months INTEGER NULL,
    last_maintenance_date    DATE    NULL,
    calibration_status       TEXT    NULL
);
INSERT INTO environmental_monitoring_stations VALUES
('ST001','RiverValley','34.0522','-118.2437','2020-06-01','EPA','Multi','15',12.4,25.6,18.2,30.5,4.1,22.3,55.0,3.2','Good',12,'2023-01-15','Calibrated');
INSERT INTO environmental_monitoring_stations VALUES
('ST002','MountainPeak','39.7392','-104.9903','2021-04-12','StateDept','PM','30',8.9,15.3,10.5,22.1,2.8,18.7,48.0,2.8','Good',12,'2023-02-10','Calibrated');
INSERT INTO environmental_monitoring_stations VALUES
('ST003','CoastalBay','36.7783','-119.4179','2019-09-20','LocalAgency','Ozone','10',5.2,10.1,7.4,25.0,1.5,20.1,62.0,4.0','Fair',6,'2022-11-05','CalibrationDue');

-- Contracts with technology vendors supplying services to districts
CREATE TABLE technology_vendor_contracts
(
    contract_id            TEXT    NOT NULL PRIMARY KEY,
    vendor_name            TEXT    NOT NULL,
    service_type           TEXT    NOT NULL,
    start_date             DATE    NULL,
    end_date               DATE    NULL,
    contract_value         REAL    NULL,
    payment_terms          TEXT    NULL,
    renewal_option         TEXT    NULL,
    primary_contact_name   TEXT    NULL,
    primary_contact_email  TEXT    NULL,
    service_level_agreement TEXT   NULL,
    performance_metric_cpu REAL    NULL,
    performance_metric_uptime REAL NULL,
    penalty_clause         TEXT    NULL,
    compliance_requirements TEXT  NULL,
    jurisdiction           TEXT    NULL,
    contract_status        TEXT    NULL,
    amendment_number       INTEGER NULL,
    last_amendment_date    DATE    NULL,
    notes                  TEXT    NULL
);
INSERT INTO technology_vendor_contracts VALUES
('VC001','TechNova','CloudHosting','2022-01-01','2025-12-31',4800000,'Net30','OptionToRenew','Alice Smith','alice.smith@technova.com','99.9%Uptime','2.5','99.7','LatePenalty','ISO27001','CA','Active',2,'2023-06-15','Added extra storage');
INSERT INTO technology_vendor_contracts VALUES
('VC002','DataCore','StudentInfoSystem','2021-07-15','2024-07-14',3500000,'Net45','NoRenewal','Bob Johnson','bob.johnson@datacore.com','99.5%Uptime','1.8','99.4','EarlyTermination','FERPA','TX','Active',1,'2022-12-01','Module upgrade scheduled');
INSERT INTO technology_vendor_contracts VALUES
('VC003','SecureLink','NetworkSecurity','2023-03-01','2026-02-28',2100000,'Net60','OptionToRenew','Carol Lee','carol.lee@securelink.com','99.8%Uptime','2.2','99.6','BreachPenalty','NIST','NY','Pending',0,'NULL','Pending legal review');

-- Renewable energy assets owned or leased by districts
CREATE TABLE district_renewable_energy_assets
(
    asset_id                TEXT    NOT NULL PRIMARY KEY,
    asset_type              TEXT    NOT NULL,
    location                TEXT    NULL,
    capacity_mw             REAL    NULL,
    installation_date       DATE    NULL,
    commissioning_date      DATE    NULL,
    operating_status        TEXT    NULL,
    owner_entity            TEXT    NULL,
    maintenance_provider    TEXT    NULL,
    expected_lifetime_years INTEGER NULL,
    current_age_years       INTEGER NULL,
    annual_generation_mwh   REAL    NULL,
    decommission_date       DATE    NULL,
    carbon_offset_tonnes    REAL    NULL,
    subsidy_amount          REAL    NULL,
    financing_type          TEXT    NULL,
    warranty_expiry         DATE    NULL,
    grid_connection_status  TEXT    NULL,
    monitoring_system       TEXT    NULL,
    notes                   TEXT    NULL
);
INSERT INTO district_renewable_energy_assets VALUES
('RE001','SolarPanel','NorthHighSchoolRoof',1.2,'2020-05-01','2020-07-15','Operating','District','SolarCare Inc',25,4,1050,'NULL',850,500000,'Lease','2025-07-15','Connected','SCADA','Phase 1 deployment');
INSERT INTO district_renewable_energy_assets VALUES
('RE002','WindTurbine','EastField','3.5','2019-03-10','2019-08-20','Operating','District','WindMaintain LLC',30,5,28000,'NULL',21000,750000,'PPU','2029-08-20','Connected','SCADA','Includes storage');
INSERT INTO district_renewable_energy_assets VALUES
('RE003','Geothermal','SouthCampus','0.8','2022-01-12','2022-04-01','Commissioning','District','GeoTech Services',20,1,7000,'NULL',6000,300000,'Grant','2027-04-01','Pending','SCADA','Awaiting final testing');

-- Inventory of artistic exhibitions held at schools
CREATE TABLE school_artistic_exhibition_inventory
(
    exhibit_id                TEXT    NOT NULL PRIMARY KEY,
    school_cds_code          TEXT    NOT NULL,
    exhibition_name          TEXT    NOT NULL,
    start_date               DATE    NULL,
    end_date                 DATE    NULL,
    curator_name             TEXT    NULL,
    total_artworks           INTEGER NULL,
    medium_paintings         INTEGER NULL,
    medium_sculpture         INTEGER NULL,
    medium_photography       INTEGER NULL,
    medium_digital           INTEGER NULL,
    visitor_count_estimate   INTEGER NULL,
    sponsorship_partner      TEXT    NULL,
    funding_amount           REAL    NULL,
    insurance_coverage       REAL    NULL,
    security_plan            TEXT    NULL,
    lighting_design          TEXT    NULL,
    floor_plan_file          TEXT    NULL,
    publicity_budget         REAL    NULL,
    evaluation_score         REAL    NULL
);
INSERT INTO school_artistic_exhibition_inventory VALUES
('EXH001','001234567','SpringArtShow','2023-03-10','2023-04-15','Dana White',120,60,20,25,15,1800,'LocalBank',15000,20000,'Standard','LED','planA.pdf',3000,85.5);
INSERT INTO school_artistic_exhibition_inventory VALUES
('EXH002','001234568','DigitalMediaFest','2023-05-01','2023-05-20','Eli Torres',80,0,0,0,80,2200,'TechCorp',12000,15000,'Enhanced','Spotlights','planB.pdf',2500,88.0);
INSERT INTO school_artistic_exhibition_inventory VALUES
('EXH003','001234569','SculptureGarden','2023-09-05','2023-10-10','Mia Patel',45,5,40,0,0,1600,'ArtFoundation',18000,25000,'High','Natural','planC.pdf',3500,90.2);

-- Stockpile of emergency resources managed at district level
CREATE TABLE district_emergency_resource_stockpile
(
    stockpile_id               TEXT    NOT NULL PRIMARY KEY,
    district_code              TEXT    NOT NULL,
    resource_type              TEXT    NOT NULL,
    quantity                   INTEGER NULL,
    unit_of_measure            TEXT    NULL,
    last_audit_date            DATE    NULL,
    next_audit_due             DATE    NULL,
    storage_location           TEXT    NULL,
    responsible_officer        TEXT    NULL,
    contact_phone              TEXT    NULL,
    procurement_date           DATE    NULL,
    expiration_date            DATE    NULL,
    supplier_name              TEXT    NULL,
    cost_per_unit              REAL    NULL,
    total_cost                 REAL    NULL,
    condition_rating           INTEGER NULL,
    replenishment_cycle_months INTEGER NULL,
    emergency_plan_reference   TEXT    NULL,
    notes                      TEXT    NULL
);
INSERT INTO district_emergency_resource_stockpile VALUES
('STK001','D001','WaterPurificationUnits',150,'Units','2023-01-15','2024-01-15','WarehouseA','John Doe','5551234','2022-11-20','2026-11-20','AquaSupply','500','75000',9,12,'PlanA','Ready for deployment');
INSERT INTO district_emergency_resource_stockpile VALUES
('STK002','D002','N95Masks',5000,'Pieces','2023-02-10','2024-02-10','WarehouseB','Jane Smith','5555678','2022-12-05','2024-12-05','MaskCo','1','5000',8,6,'PlanB','Stored in climate‑controlled area');
INSERT INTO district_emergency_resource_stockpile VALUES
('STK003','D003','PortableGenerators',25,'Units','2023-03-05','2024-03-05','WarehouseC','Mike Lee','5559012','2023-01-12','2028-01-12','GenPower','3000','75000',7,24,'PlanC','Annual testing scheduled');

-- Facilities offering fitness and wellness programs to the community
CREATE TABLE community_fitness_facilities
(
    facility_id                TEXT    NOT NULL PRIMARY KEY,
    facility_name              TEXT    NOT NULL,
    address                    TEXT    NULL,
    city                       TEXT    NULL,
    zip_code                   TEXT    NULL,
    opening_date               DATE    NULL,
    operating_hours            TEXT    NULL,
    membership_fee_monthly     REAL    NULL,
    total_capacity             INTEGER NULL,
    indoor_tracks              INTEGER NULL,
    outdoor_fields             INTEGER NULL,
    swimming_pool              TEXT    NULL,
    gym_equipment_count        INTEGER NULL,
    staff_count                INTEGER NULL,
    certification_status       TEXT    NULL,
    annual_visits              INTEGER NULL,
    community_programs_offered TEXT    NULL,
    accessibility_rating       REAL    NULL,
    maintenance_budget         REAL    NULL,
    notes                      TEXT    NULL
);
INSERT INTO community_fitness_facilities VALUES
('FIT001','WestSideGym','123 Main St','Springfield','12345','2018-06-01','6am-10pm',45.00,250,2,1,'Yes',120,15,'Certified','8200','Yoga,SeniorFit','4.5',20000,'Renovated 2021');
INSERT INTO community_fitness_facilities VALUES
('FIT002','EastParkRecCenter','456 Oak Ave','Riverton','67890','2020-03-15','5am-11pm',35.00,300,1,2,'No',150,20,'Certified','6400','Aquatics,TeenSports','4.8',25000,'Added climbing wall');
INSERT INTO community_fitness_facilities VALUES
('FIT003','NorthHealthClub','789 Pine Rd','Laketown','11223','2019-11-20','6am-9pm',55.00,180,0,0,'Yes',80,10,'Pending','3100','Pilates,WellnessWorkshops','4.2',18000,'Planning expansion');

-- Records of alumni career outcomes for tracking post‑graduation paths
CREATE TABLE alumni_career_pathways
(
    record_id                TEXT    NOT NULL PRIMARY KEY,
    alumni_id                TEXT    NOT NULL,
    graduation_year          INTEGER NOT NULL,
    degree_earned            TEXT    NULL,
    major                    TEXT    NULL,
    current_employer         TEXT    NULL,
    employer_industry        TEXT    NULL,
    job_title                TEXT    NULL,
    salary_band              TEXT    NULL,
    years_of_experience      INTEGER NULL,
    professional_certifications TEXT NULL,
    location_city            TEXT    NULL,
    location_state           TEXT    NULL,
    remote_work_status      TEXT    NULL,
    mentorship_role          TEXT    NULL,
    volunteer_hours_per_year INTEGER NULL,
    alumni_contact_email     TEXT    NULL,
    linkedin_profile_url     TEXT    NULL,
    career_progression_notes TEXT    NULL,
    last_update              DATE    NULL
);
INSERT INTO alumni_career_pathways VALUES
('ALU001','A12345',2018,'BSc','ComputerScience','TechSolutions','Software','SeniorDeveloper','80k-100k',5,'AWS Certified','SanFrancisco','CA','Hybrid','Mentor','30','alice@example.com','linkedin.com/in/alice','Promoted twice', '2023-07-01');
INSERT INTO alumni_career_pathways VALUES
('ALU002','A67890',2020,'BA','Education','LearnCo','Education',' curriculumCoordinator','50k-70k',2,'TESOL','Austin','TX','Onsite','Advisor','15','bob@example.com','linkedin.com/in/bob','Leading district curriculum review', '2023-08-15');
INSERT INTO alumni_career_pathways VALUES
('ALU003','A54321',2016,'MSc','Biology','HealthCorp','Pharma','ResearchScientist','90k-120k',7,'GLP Certification','Boston','MA','Remote','None','45','carol@example.com','linkedin.com/in/carol','Published 3 papers', '2023-06-20');