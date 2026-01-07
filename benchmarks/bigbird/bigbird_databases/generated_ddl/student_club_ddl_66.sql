-- Campus building information
CREATE TABLE campus_building_info
(
    building_id               TEXT PRIMARY KEY,
    name                      TEXT,
    address                   TEXT,
    city                      TEXT,
    state                     TEXT,
    zip_code                  INTEGER,
    year_built                INTEGER,
    floor_count               INTEGER,
    total_sqft                INTEGER,
    occupancy_limit           INTEGER,
    primary_use               TEXT,
    architect                 TEXT,
    construction_type         TEXT,
    sustainability_cert_level TEXT,
    hvac_system               TEXT,
    fire_safety_rating        TEXT,
    wifi_coverage_percent    REAL,
    accessibility_rating      TEXT,
    energy_star_score         INTEGER,
    maintenance_contact       TEXT,
    last_renovation_date      TEXT,
    notes                     TEXT
);

INSERT INTO campus_building_info VALUES
('B001','ScienceHall','123 Research Rd','Springfield','IL',62704,1995,5,85000,500,'Academic','JDoe Architects','Concrete','Gold','VRF','A','95.5','A+','88','John Doe','2018-06-12','Renovated labs');
INSERT INTO campus_building_info VALUES
('B002','AthleticsCenter','456 Sport Ave','Springfield','IL',62704,2005,3,60000,300,'Recreation','MSmith Design','Steel','Silver','Chilled Water','B','90.0','A','82','Maria Lee','2020-09-01','Added new fitness zone');
INSERT INTO campus_building_info VALUES
('B003','StudentUnion','789 Union Blvd','Springfield','IL',62704,2010,4,70000,400,'Student Services','KAllen Studios','Mixed','Platinum','DX','A','98.2','A+','91','Emily Clark','2021-04-20','Installed solar panels');

-- Research equipment inventory
CREATE TABLE research_equipment_inventory
(
    equipment_id           TEXT PRIMARY KEY,
    equipment_name         TEXT,
    model_number           TEXT,
    manufacturer           TEXT,
    purchase_date          TEXT,
    purchase_price         REAL,
    warranty_years         INTEGER,
    calibration_date       TEXT,
    calibration_due        TEXT,
    location_room          TEXT,
    building_id            TEXT,
    assigned_to_lab        TEXT,
    status                 TEXT,
    depreciation_rate      REAL,
    salvage_value          REAL,
    last_service_date      TEXT,
    service_provider       TEXT,
    serial_number          TEXT,
    power_requirements    TEXT,
    weight_kg              REAL,
    dimensions_cm          TEXT,
    hazard_class           TEXT,
    notes                  TEXT
);

INSERT INTO research_equipment_inventory VALUES
('EQ001','ElectronMicroscope','EM-2000','NanoTech','2019-03-15',250000.00,5,'2022-03-01','2023-03-01','LabA-101','B001','PhysicsLab','Operational',0.15,35000.00,'2022-11-10','TechServ','SN123456','220V','180','50x40x35','Class I','Routine maintenance due');
INSERT INTO research_equipment_inventory VALUES
('EQ002','Centrifuge','CF-500','SpinCo','2020-07-22',75000.00,3,'2021-07-20','2022-07-20','LabB-202','B001','BiologyLab','Operational',0.20,15000.00,'2022-06-05','LabCare','SN789012','110V','45','30x30x30','Class II','Calibrated recently');
INSERT INTO research_equipment_inventory VALUES
('EQ003','Spectrometer','SP-850','SpecLite','2018-11-05',120000.00,4,'2021-11-01','2022-11-01','LabC-303','B002','ChemistryLab','Under Repair',0.18,20000.00,'2022-10-12','InstrumentFix','SN345678','220V','60','45x40x35','Class I','Awaiting parts');

-- Alumni giving campaign
CREATE TABLE alumni_giving_campaign
(
    campaign_id            TEXT PRIMARY KEY,
    name                   TEXT,
    start_date             TEXT,
    end_date               TEXT,
    target_amount          REAL,
    amount_raised          REAL,
    donor_count            INTEGER,
    matching_gift_available TEXT,
    theme                  TEXT,
    description            TEXT,
    created_by             TEXT,
    approval_status        TEXT,
    communication_channel  TEXT,
    email_template         TEXT,
    social_media_hashtag   TEXT,
    print_material         TEXT,
    event_associated       TEXT,
    segment_target         TEXT,
    geographic_region      TEXT,
    notes                  TEXT,
    last_updated           TEXT
);

INSERT INTO alumni_giving_campaign VALUES
('CAMP001','Class of 2000 Reunion Fund','2023-01-10','2023-12-31',500000.00,225000.00,320,'Yes','Legacy','Fund to support scholarships for 2000 graduates','Jane Smith','Approved','Email','Welcome2023','#Class2000','Brochure','Reunion Gala','Alumni','Midwest','First quarter progress','2023-04-15');
INSERT INTO alumni_giving_campaign VALUES
('CAMP002','BlueSky Initiative','2023-03-01','2023-09-30',750000.00,480000.00,410,'No','Innovation','Support for new research labs','Mark Lee','Pending','Mail','BlueSky2023','%BlueSky','Flyer','Innovation Expo','Faculty','National','Mid campaign','2023-06-20');
INSERT INTO alumni_giving_campaign VALUES
('CAMP003','GreenCampus Drive','2023-05-15','2023-11-15',300000.00,150000.00,210,'Yes','Sustainability','Invest in campus renewable energy','Laura Chen','Approved','Social','Green2023','%GreenCampus','Poster','Sustainability Fair','Students','Local','Halfway target reached','2023-08-01');

-- Sustainability metric
CREATE TABLE sustainability_metric
(
    metric_id               TEXT PRIMARY KEY,
    metric_name             TEXT,
    description             TEXT,
    measurement_unit        TEXT,
    target_value            REAL,
    current_value           REAL,
    reporting_period        TEXT,
    responsible_department  TEXT,
    data_source             TEXT,
    last_reported_date      TEXT,
    trend_direction         TEXT,
    confidence_level        TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    benchmark               REAL,
    threshold_warning       REAL,
    threshold_critical      REAL,
    mitigation_plan         TEXT,
    owner_contact           TEXT,
    fiscal_year             INTEGER
);

INSERT INTO sustainability_metric VALUES
('M001','Energy Consumption','Total campus electricity usage','kWh',1200000,950000,'Annual','Facilities','Utility Bills','2022-12-31','Down','High','Good progress','2022-01-01','2023-01-15',1300000,1000000,800000,'Upgrade lighting','Mike Johnson',2023);
INSERT INTO sustainability_metric VALUES
('M002','Water Usage','Campus potable water consumption','Gallons',500000,420000,'Quarterly','Operations','Meter Readings','2023-03-31','Down','Medium','On track','2023-01-01','2023-04-05',550000,480000,420000,'Install low‑flow fixtures','Sara Patel',2023);
INSERT INTO sustainability_metric VALUES
('M003','Waste Diversion Rate','Percentage of waste recycled','Percent',75,68,'Monthly','Environmental Services','Waste Audits','2023-04-30','Up','High','Improving','2023-02-01','2023-05-10',80,70,65,'Expand composting program','David Lee',2023);

-- Health service provider directory
CREATE TABLE health_service_provider_directory
(
    provider_id            TEXT PRIMARY KEY,
    provider_name          TEXT,
    provider_type          TEXT,
    address                TEXT,
    city                   TEXT,
    state                  TEXT,
    zip_code               INTEGER,
    phone                  TEXT,
    email                  TEXT,
    website                TEXT,
    licensing_body         TEXT,
    license_number         TEXT,
    accreditation_status   TEXT,
    specialty              TEXT,
    hours_of_operation    TEXT,
    emergency_service      TEXT,
    appointment_required   TEXT,
    insurance_accepted     TEXT,
    language_spoken        TEXT,
    contact_person         TEXT,
    notes                  TEXT,
    last_verified_date     TEXT
);

INSERT INTO health_service_provider_directory VALUES
('HP001','Campus Health Center','Clinic','100 Wellness Way','Springfield','IL',62704,'555-1234','health@campus.edu','www.campushealth.edu','State Health Board','LIC12345','Accredited','General Medicine','Mon-Fri 8am-6pm','Yes','No','All Major','English,Spanish','Dr. Alice Brown','On‑site pharmacy','2023-03-01');
INSERT INTO health_service_provider_directory VALUES
('HP002','Springfield Dental','Dental','200 Smile St','Springfield','IL',62704,'555-5678','dental@springfield.com','www.springfielddental.com','Dental Board','DENT67890','Accredited','Dental Care','Mon-Thu 9am-5pm','No','Yes','DentalNet','English','Dr. Robert Green','Pediatric dentistry available','2023-02-15');
INSERT INTO health_service_provider_directory VALUES
('HP003','Vision Care Plus','Optometry','300 Vision Blvd','Springfield','IL',62704,'555-9012','vision@plusoptics.com','www.plusoptics.com','Optometry Board','OPT11223','Accredited','Eye Care','Tue-Fri 10am-4pm','No','Yes','VisionCare','English,French','Dr. Linda White','Offers LASIK consultations','2023-01-20');

-- Technology patent application
CREATE TABLE technology_patent_application
(
    application_id          TEXT PRIMARY KEY,
    title                  TEXT,
    abstract               TEXT,
    filing_date            TEXT,
    priority_date          TEXT,
    inventor_list          TEXT,
    assignee               TEXT,
    patent_number          TEXT,
    status                 TEXT,
    examiner_name          TEXT,
    technology_category    TEXT,
    market_potential       TEXT,
    funding_source         TEXT,
    cost_estimate          REAL,
    projected_grant        REAL,
    legal_counsel          TEXT,
    prior_art_refs         TEXT,
    claims_count           INTEGER,
    drawings_included      TEXT,
    search_report_date     TEXT,
    grant_decision_date    TEXT,
    notes                  TEXT,
    last_updated           TEXT
);

INSERT INTO technology_patent_application VALUES
('PA001','Quantum Dot Solar Cells','Improved efficiency solar cells using quantum dots','2023-02-10','2022-12-01','Alice Smith;Bob Jones','SunTech Corp','US20230012345','Pending','Emily Clark','Renewable Energy','High','Grant ABC','150000.00','50000.00','LawFirm X','REF001,REF002',12,'Yes','2023-01-15','2024-06-30','Awaiting examiner review','2023-04-05');
INSERT INTO technology_patent_application VALUES
('PA002','AI Driven Diagnostics','Machine learning model for early disease detection','2023-03-05','2023-01-20','Carol Lee;David Kim','HealthAI Ltd','US20230054321','Pending','Michael Brown','Artificial Intelligence','Very High','Venture Fund Y','250000.00','100000.00','LawFirm Y','REF010,REF011',20,'Yes','2023-02-28','2024-09-15','Clinical trial data pending','2023-05-12');
INSERT INTO technology_patent_application VALUES
('PA003','Modular Robotics Platform','Reconfigurable robot modules for manufacturing','2023-01-18','2022-11-30','Eve Martinez;Frank Liu','Robotics Inc','US20230067890','Approved','Susan Davis','Robotics','Medium','Corporate Funding','200000.00','75000.00','LawFirm Z','REF020,REF021',15,'Yes','2022-12-20','2023-12-01','Patent issued','2023-03-01');

-- Community partner agreement
CREATE TABLE community_partner_agreement
(
    agreement_id            TEXT PRIMARY KEY,
    partner_name            TEXT,
    agreement_start         TEXT,
    agreement_end           TEXT,
    scope_of_work           TEXT,
    deliverables            TEXT,
    payment_terms           TEXT,
    contact_person          TEXT,
    contact_email           TEXT,
    contact_phone           TEXT,
    confidentiality_clause  TEXT,
    liability_clause        TEXT,
    termination_notice_days INTEGER,
    renewal_option          TEXT,
    performance_metrics     TEXT,
    reporting_frequency     TEXT,
    governing_law           TEXT,
    dispute_resolution      TEXT,
    signature_date          TEXT,
    notes                   TEXT,
    created_by              TEXT,
    last_modified           TEXT
);

INSERT INTO community_partner_agreement VALUES
('AG001','Springfield Library','2023-01-01','2025-12-31','Joint literacy programs','Quarterly workshops','Net30','Emily Green','emily.green@sprlibrary.org','555-2345','Yes','Standard','30','Optional','Attendance numbers','Monthly','Illinois','Mediation','2022-12-15','Collaboration on summer reading','Laura Miller','2023-02-10');
INSERT INTO community_partner_agreement VALUES
('AG002','EcoClean Services','2023-04-01','2024-03-31','Campus recycling initiative','Monthly recycling reports','Net15','Thomas White','t.white@ecoclean.com','555-6789','Yes','Standard','45','None','Waste diverted tons','Bi‑weekly','Illinois','Arbitration','2023-03-20','Focus on electronic waste','Mark Davis','2023-04-05');
INSERT INTO community_partner_agreement VALUES
('AG003','Youth Sports League','2023-06-01','2026-05-31','After‑school sports programs','Season schedules','Net45','Linda Black','l.black@youthsports.org','555-1122','Yes','Standard','60','Automatic','Participant satisfaction','Quarterly','Illinois','Mediation','2023-05-10','Include health education component','Sarah Connor','2023-06-01');

-- Digital learning module progress
CREATE TABLE digital_learning_module_progress
(
    progress_id             TEXT PRIMARY KEY,
    module_id               TEXT,
    learner_id              TEXT,
    start_date              TEXT,
    completion_date         TEXT,
    status                  TEXT,
    score_percent           REAL,
    time_spent_minutes      INTEGER,
    attempts                INTEGER,
    last_accessed           TEXT,
    device_type             TEXT,
    browser                 TEXT,
    ip_address              TEXT,
    passing_score           REAL,
    certification_awarded   TEXT,
    feedback_comments       TEXT,
    instructor_notes        TEXT,
    enrollment_source       TEXT,
    cohort                  TEXT,
    goal_id                 TEXT,
    notes                   TEXT,
    recorded_at             TEXT
);

INSERT INTO digital_learning_module_progress VALUES
('DP001','MOD100','STU001','2023-01-10','2023-01-15','Completed',92.5,180,1,'2023-01-15','Laptop','Chrome','192.168.1.10',85,'Yes','Great work','Needs more practice on quizzes','Website','Fall2023','G001','N/A','2023-01-16');
INSERT INTO digital_learning_module_progress VALUES
('DP002','MOD200','STU002','2023-02-05',NULL,'InProgress',68.0,95,2,'2023-02-20','Tablet','Safari','192.168.1.20',75,'No','Content too fast','Encourage pacing','Email','Spring2023','G002','Follow‑up needed','2023-02-21');
INSERT INTO digital_learning_module_progress VALUES
('DP003','MOD300','STU003','2023-03-01','2023-03-10','Completed',88.0,210,1,'2023-03-10','Desktop','Firefox','192.168.1.30',80,'Yes','Excellent','Consider advanced module','Referral','Summer2023','G003','N/A','2023-03-11');

-- Environmental sensor reading
CREATE TABLE environmental_sensor_reading
(
    reading_id               TEXT PRIMARY KEY,
    sensor_id                TEXT,
    sensor_type              TEXT,
    location                 TEXT,
    latitude                 REAL,
    longitude                REAL,
    reading_timestamp        TEXT,
    value_numeric            REAL,
    unit                     TEXT,
    battery_level_percent    REAL,
    signal_strength          REAL,
    calibration_status       TEXT,
    firmware_version         TEXT,
    alert_triggered          TEXT,
    notes                    TEXT,
    collected_by             TEXT,
    verification_status      TEXT,
    sample_interval_seconds  INTEGER,
    maintenance_due_date     TEXT,
    last_maintenance_date   TEXT
);

INSERT INTO environmental_sensor_reading VALUES
('R001','SEN100','Temperature','NorthWing','41.8781','-87.6298','2023-04-01T08:00:00','22.5','Celsius',95.0, -70,'OK','v1.2','No','Normal operation','Auto','Verified',300,'2023-12-01','2023-03-15');
INSERT INTO environmental_sensor_reading VALUES
('R002','SEN200','CO2','SouthHall','41.8785','-87.6300','2023-04-01T08:05:00','420','ppm',88.0,-68,'OK','v1.0','No','Slightly elevated','Auto','Verified',300,'2023-11-15','2023-02-20');
INSERT INTO environmental_sensor_reading VALUES
('R003','SEN300','Humidity','EastLab','41.8779','-87.6295','2023-04-01T08:10:00','45','Percent',92.0,-72,'OK','v1.1','No','Within range','Auto','Verified',300,'2024-01-10','2023-04-01');

-- Facility energy consumption
CREATE TABLE facility_energy_consumption
(
    record_id                TEXT PRIMARY KEY,
    facility_id              TEXT,
    building_id              TEXT,
    meter_id                 TEXT,
    reading_date             TEXT,
    consumption_kwh          REAL,
    peak_demand_kw           REAL,
    average_power_kw         REAL,
    cost_usd                 REAL,
    carbon_emission_kg       REAL,
    utility_provider        TEXT,
    rate_plan                TEXT,
    tariff_type              TEXT,
    billing_cycle            TEXT,
    contract_start           TEXT,
    contract_end             TEXT,
    meter_status             TEXT,
    data_source              TEXT,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT
);

INSERT INTO facility_energy_consumption VALUES
('EC001','F001','B001','MTR100','2023-03-31',12500.00,850.5,420.3,1500.00,9500.0','EnergyCo','Standard','Commercial','Monthly','2020-01-01','2025-12-31','Active','Automated','No anomalies','2023-04-01','2023-04-02');
INSERT INTO facility_energy_consumption VALUES
('EC002','F002','B002','MTR200','2023-03-31',8200.00,620.2,310.1,980.00,6200.0','PowerPlus','TimeOfUse','Commercial','Monthly','2021-06-01','2026-05-31','Active','Automated','Peak load higher than usual','2023-04-01','2023-04-02');
INSERT INTO facility_energy_consumption VALUES
('EC003','F003','B003','MTR300','2023-03-31',5400.00,400.0,210.0,650.00,4100.0','GreenEnergy','Renewable','Commercial','Monthly','2022-03-01','2027-02-28','Active','Automated','Solar contribution accounted','2023-04-01','2023-04-02');