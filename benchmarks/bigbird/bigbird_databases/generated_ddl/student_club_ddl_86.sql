-- External partner agreement details
CREATE TABLE external_partner_agreement
(
    agreement_id          TEXT PRIMARY KEY,
    partner_name          TEXT,
    partner_type          TEXT,
    agreement_start_date  TEXT,
    agreement_end_date    TEXT,
    contact_person        TEXT,
    contact_email         TEXT,
    contact_phone         TEXT,
    jurisdiction          TEXT,
    agreement_scope       TEXT,
    financial_commitment  REAL,
    reporting_frequency   TEXT,
    legal_representative  TEXT,
    termination_clause    TEXT,
    renewal_option        TEXT,
    confidentiality_level TEXT,
    data_sharing_agreement TEXT,
    risk_assessment_score INTEGER,
    compliance_status     TEXT,
    notes                 TEXT,
    created_timestamp     TEXT,
    updated_timestamp     TEXT
);

INSERT INTO external_partner_agreement VALUES
('AGR001','GlobalTech','Technology','2023-01-01','2025-12-31','Alice Smith','alice.smith@example.com','5551234567','USA','ResearchCollab',250000.00,'Quarterly','John Doe','Standard','AutoRenew','High','Yes',85,'Active','Initial contract','2023-01-01','2023-01-02');

INSERT INTO external_partner_agreement VALUES
('AGR002','HealthPlus','Healthcare','2022-06-15','2024-06-14','Bob Jones','bob.jones@example.com','5559876543','Canada','HealthDataExchange',150000.00,'SemiAnnual','Emma White','Flexible','ManualRenew','Medium','No',70,'Pending','Awaiting signatures','2022-06-15','2022-06-16');

INSERT INTO external_partner_agreement VALUES
('AGR003','EcoSolutions','Environmental','2024-03-20','2027-03-19','Carol Lee','carol.lee@example.com','5555551212','UK','SustainabilityInitiative',300000.00,'Annual','David Green','Fixed','AutoRenew','Low','Yes',90,'Active','Signed electronically','2024-03-20','2024-03-21');

-- City infrastructure project records
CREATE TABLE city_infrastructure_project
(
    project_id            TEXT PRIMARY KEY,
    project_name          TEXT,
    project_type          TEXT,
    start_date            TEXT,
    projected_end_date    TEXT,
    actual_end_date       TEXT,
    budget_amount         REAL,
    funding_source        TEXT,
    contractor_name       TEXT,
    contractor_contact    TEXT,
    project_manager       TEXT,
    status                TEXT,
    priority_level        TEXT,
    permits_obtained      TEXT,
    environmental_impact  TEXT,
    community_feedback    TEXT,
    milestones_completed  INTEGER,
    total_milestones      INTEGER,
    risk_level            TEXT,
    notes                 TEXT,
    created_by            TEXT,
    created_timestamp     TEXT,
    updated_timestamp     TEXT
);

INSERT INTO city_infrastructure_project VALUES
('PRJ001','RiverBridgeReplacement','Bridge','2023-02-01','2025-08-31',NULL,12000000.00,'MunicipalBond','BuildRight LLC','5551112222','Laura King','InProgress','High','Pending','Moderate','Positive',3,5,'Medium','Replacing old bridge','PlannerA','2023-01-15','2023-01-16');

INSERT INTO city_infrastructure_project VALUES
('PRJ002','DowntownBikeLane','Transportation','2022-05-15','2023-12-31','2023-12-20',2500000.00,'FederalGrant','CityWorks Inc','5553334444','Mike Daniels','Completed','Medium','Approved','Low','Mixed',5,5,'Low','Added 10 miles of bike lanes','PlannerB','2022-04-20','2022-04-21');

INSERT INTO city_infrastructure_project VALUES
('PRJ003','NorthParkRenovation','Park','2024-01-10','2024-12-15',NULL,800000.00,'CityBudget','GreenScapes','5557778888','Sara Patel','Planning','Low','Approved','Low','Positive',1,4,'Low','Phase 1: Playground upgrade','PlannerC','2023-12-01','2023-12-02');

-- Global study abroad program catalog
CREATE TABLE global_study_abroad_program
(
    program_id            TEXT PRIMARY KEY,
    program_name          TEXT,
    host_country          TEXT,
    host_city             TEXT,
    partner_university    TEXT,
    academic_year         TEXT,
    semester              TEXT,
    credits_awarded       INTEGER,
    tuition_fee           REAL,
    housing_included      TEXT,
    meals_included        TEXT,
    language_requirement TEXT,
    application_deadline  TEXT,
    enrollment_cap        INTEGER,
    current_enrollment    INTEGER,
    program_coordinator   TEXT,
    coordinator_email     TEXT,
    eligibility_criteria  TEXT,
    travel_insurance_req  TEXT,
    program_start_date    TEXT,
    program_end_date      TEXT,
    notes                 TEXT,
    created_timestamp     TEXT,
    updated_timestamp     TEXT
);

INSERT INTO global_study_abroad_program VALUES
('STU001','Engineering in Germany','Germany','Munich','Technical University Munich','2024-2025','Fall',15,15000.00,'Yes','Yes','B1','2024-04-01',30,12,'Dr. Hans Mueller','h.mueller@example.com','Undergrad Engineering','Required','2024-09-01','2024-12-15','Focus on automotive engineering','2024-02-10','2024-02-11');

INSERT INTO global_study_abroad_program VALUES
('STU002','Art History in Italy','Italy','Florence','University of Florence','2024-2025','Spring',12,12000.00,'Yes','Partial','A2','2024-08-01',20,5,'Prof. Maria Rossi','m.rossi@example.com','Undergrad Arts','Optional','2025-01-15','2025-05-30','Includes museum tours','2024-06-05','2024-06-06');

INSERT INTO global_study_abroad_program VALUES
('STU003','Business Analytics in Singapore','Singapore','Singapore','National University of Singapore','2024-2025','Summer',9,18000.00,'Yes','Yes','English','2024-11-01',25,8,'Dr. Li Wei','l.wei@example.com','Graduate Business','Required','2025-06-01','2025-08-15','Short intensive program','2024-09-20','2024-09-21');

-- Research data repository snapshot
CREATE TABLE research_data_repository_snapshot
(
    snapshot_id           TEXT PRIMARY KEY,
    repository_name       TEXT,
    dataset_id            TEXT,
    dataset_name          TEXT,
    version_number        INTEGER,
    snapshot_date         TEXT,
    record_count          INTEGER,
    storage_location      TEXT,
    checksum              TEXT,
    accessed_by_team      TEXT,
    access_level          TEXT,
    funding_agency        TEXT,
    project_code          TEXT,
    compliance_status     TEXT,
    encryption_used       TEXT,
    retention_policy      TEXT,
    notes                 TEXT,
    created_timestamp     TEXT,
    updated_timestamp     TEXT
);

INSERT INTO research_data_repository_snapshot VALUES
('SNP001','GenomicsHub','DS001','HumanGenomeV1',1,'2024-03-01',3000000,'/data/genomics/hg1','abc123def','BioTeamA','Restricted','NIH','PRJHG01','Compliant','AES256','5Years','Initial load','2024-03-02','2024-03-03');

INSERT INTO research_data_repository_snapshot VALUES
('SNP002','AstroDataCenter','DS045','ExoplanetObservations',3,'2024-04-15',850000,'/data/astro/exo_v3','def456ghi','AstroTeamB','Public','NASA','PRJAX07','Compliant','RSA2048','10Years','Third version after cleaning','2024-04-16','2024-04-17');

INSERT INTO research_data_repository_snapshot VALUES
('SNP003','SocialScienceArchive','DS210','SurveyResults2023',2,'2024-05-20',120000,'/data/social/survey2023_v2','ghi789jkl','SocSciTeamC','Confidential','NSF','PRJSS12','Pending Review','AES128','3Years','Second revision with anonymization','2024-05-21','2024-05-22');

-- Environmental sensor station registry
CREATE TABLE environmental_sensor_station
(
    station_id            TEXT PRIMARY KEY,
    station_name          TEXT,
    location_description  TEXT,
    latitude              REAL,
    longitude             REAL,
    installation_date     TEXT,
    sensor_type           TEXT,
    measurement_interval  INTEGER,
    data_endpoint         TEXT,
    calibration_date      TEXT,
    firmware_version      TEXT,
    power_source          TEXT,
    maintenance_contact   TEXT,
    maintenance_phone     TEXT,
    status                TEXT,
    last_data_timestamp   TEXT,
    alert_threshold       REAL,
    owner_department      TEXT,
    notes                 TEXT,
    created_timestamp     TEXT,
    updated_timestamp     TEXT
);

INSERT INTO environmental_sensor_station VALUES
('STN001','RiverBankNorth','North bank of River X',45.1234,-122.5678,'2023-06-01','WaterQuality','30','/api/stn001','2024-01-15','v1.2','Solar','EnvTeamA','5551110000','Active','2024-06-20',7.5,'EnvironmentalScience','Near industrial area','2023-05-20','2024-06-21');

INSERT INTO environmental_sensor_station VALUES
('STN002','UrbanAirCentral','Downtown plaza',40.7128,-74.0060,'2022-09-15','AirQuality','15','/api/stn002','2023-12-01','v2.0','Mains','EnvTeamB','5552221111','Active','2024-06-19',35.0,'PublicHealth','High traffic zone','2022-08-30','2024-06-20');

INSERT INTO environmental_sensor_station VALUES
('STN003','ForestCanopy','Old growth forest',34.5678,-120.3456,'2024-02-10','SoilMoisture','60','/api/stn003','2024-05-05','v1.0','Battery','EnvTeamC','5553332222','Pending','2024-06-18',12.0,'EcologyDept','Remote location','2024-02-01','2024-06-19');

-- Alumni giving campaign details
CREATE TABLE alumni_giving_campaign
(
    campaign_id           TEXT PRIMARY KEY,
    campaign_name         TEXT,
    launch_date           TEXT,
    end_date              TEXT,
    target_amount         REAL,
    amount_raised         REAL,
    number_of_donors      INTEGER,
    average_donation      REAL,
    campaign_theme        TEXT,
    communication_channel TEXT,
    matching_gift_partner TEXT,
    matching_ratio        REAL,
    marketing_budget      REAL,
    status                TEXT,
    coordinator_name      TEXT,
    coordinator_email     TEXT,
    notes                 TEXT,
    created_timestamp     TEXT,
    updated_timestamp     TEXT
);

INSERT INTO alumni_giving_campaign VALUES
('CAM001','Future Leaders Fund','2024-01-01','2024-12-31',500000.00,275000.00,120,2291.67,'Innovation','Email','TechCorp','1.0',50000.00,'Active','Emily Grant','e.grant@example.com','Mid‑year push ongoing','2023-12-01','2024-01-02');

INSERT INTO alumni_giving_campaign VALUES
('CAM002','Scholarship Endowment','2024-03-15','2025-03-14',300000.00,95000.00,45,2111.11,'Education','DirectMail','EduFund','2.0',40000.00,'Active','James Hill','j.hill@example.com','Early campaign phase','2024-02-20','2024-03-01');

INSERT INTO alumni_giving_campaign VALUES
('CAM003','Campus Renovation Drive','2024-06-01','2025-05-31',750000.00,120000.00,30,4000.00,'Facilities','SocialMedia','BuildCo','1.5',60000.00','Planning','Laura Chen','l.chen@example.com','Awaiting matching partner','2024-05-10','2024-06-02');

-- Campus renewable energy asset inventory
CREATE TABLE campus_renewable_energy_asset
(
    asset_id              TEXT PRIMARY KEY,
    asset_type            TEXT,
    installation_date     TEXT,
    capacity_mw           REAL,
    location_description  TEXT,
    manufacturer          TEXT,
    model_number          TEXT,
    warranty_expiration   TEXT,
    operational_status    TEXT,
    annual_production_mwh REAL,
    maintenance_provider  TEXT,
    maintenance_contact   TEXT,
    last_inspection_date  TEXT,
    next_inspection_due   TEXT,
    funding_source        TEXT,
    cost                  REAL,
    carbon_offset_tons    REAL,
    notes                 TEXT,
    created_timestamp     TEXT,
    updated_timestamp     TEXT
);

INSERT INTO campus_renewable_energy_asset VALUES
('REN001','SolarPanel','2022-04-10',2.5,'North rooftop','SunPower','SP-3000','2032-04-10','Active',2200.0,'GreenMaintain','5554443333','2024-01-20','2025-01-20','UniversityFund',1500000.00,1800.0,'First phase solar array','2022-04-01','2023-04-01');

INSERT INTO campus_renewable_energy_asset VALUES
('REN002','WindTurbine','2023-07-15',1.8,'East field','Vestas','VT-1800','2033-07-15','Active',2100.0,'WindCare','5555556666','2024-02-10','2025-02-10','Grant2023',2200000.00,2100.0,'Single turbine project','2023-07-01','2023-07-16');

INSERT INTO campus_renewable_energy_asset VALUES
('REN003','Geothermal','2021-09-05',3.0,'Basement plant','GeoHeat','GH-3000','2031-09-05','Active',26000.0,'ThermalInc','5557778888','2023-12-01','2024-12-01','CapitalLoan',3500000.00,25000.0,'Heat recovery system','2021-08-20','2022-08-21');

-- Medical device inventory for campus health services
CREATE TABLE medical_device_inventory
(
    device_id             TEXT PRIMARY KEY,
    device_name           TEXT,
    manufacturer          TEXT,
    model_number          TEXT,
    serial_number         TEXT,
    purchase_date         TEXT,
    warranty_expiration   TEXT,
    location_room         TEXT,
    department            TEXT,
    status                TEXT,
    last_maintenance_date TEXT,
    next_maintenance_due  TEXT,
    calibrated            TEXT,
    calibration_date      TEXT,
    usage_count           INTEGER,
    last_used_by_staff    TEXT,
    maintenance_provider  TEXT,
    maintenance_contact   TEXT,
    notes                 TEXT,
    created_timestamp     TEXT,
    updated_timestamp     TEXT
);

INSERT INTO medical_device_inventory VALUES
('MDI001','ECG Machine','Philips','ECG-200','SN12345','2022-01-15','2025-01-15','Room101','Cardiology','Active','2024-03-01','2024-09-01','Yes','2024-03-01',250,'Dr. Allen','MedTech Services','5558889999','Routine checks','2022-01-10','2022-01-16');

INSERT INTO medical_device_inventory VALUES
('MDI002','Ultrasound Scanner','GE','US-500','SN67890','2021-06-20','2024-06-20','Room202','Obstetrics','Active','2024-02-15','2024-08-15','Yes','2024-02-15',480,'Dr. Baker','HealthEquip Co','5557776666','Annual calibration','2021-06-15','2021-06-21');

INSERT INTO medical_device_inventory VALUES
('MDI003','Defibrillator','Zoll','DEF-300','SN54321','2023-03-05','2026-03-05','ER','Emergency','Active','2024-04-10','2024-10-10','No','',0,'Nurse Kelly','RapidResponse','5556665555','Spare unit','2023-03-01','2023-03-06');

-- Technology patent portfolio
CREATE TABLE technology_patent_portfolio
(
    patent_id                TEXT PRIMARY KEY,
    title                   TEXT,
    filing_date             TEXT,
    grant_date              TEXT,
    status                  TEXT,
    inventors               TEXT,
    assignee                TEXT,
    technology_area         TEXT,
    patent_number           TEXT,
    jurisdiction            TEXT,
    expiration_date         TEXT,
    related_application_id  TEXT,
    licensing_status        TEXT,
    royalty_rate            REAL,
    maintenance_fee_due     REAL,
    last_fee_paid_date      TEXT,
    citation_count          INTEGER,
    primary_classification  TEXT,
    secondary_classification TEXT,
    notes                   TEXT,
    created_timestamp       TEXT,
    updated_timestamp       TEXT
);

INSERT INTO technology_patent_portfolio VALUES
('PAT001','Adaptive Learning Algorithm','2022-05-01','2024-01-15','Granted','Alice Smith;Bob Jones','UniversityTech','ArtificialIntelligence','US1234567','USA','2034-01-15','APP001','Licensed','0.05',2000.00,'2023-12-01',12,'G06F','G06N','Core AI research patent','2022-04-20','2024-01-16');

INSERT INTO technology_patent_portfolio VALUES
('PAT002','Low‑Power Sensor Circuit','2021-11-20','2023-08-30','Granted','Carol Lee','TechInnovate','Hardware','US7654321','USA','2031-08-30','APP002','Open','0.00',1500.00,'2023-07-15',8,'H03K','H04L','Energy‑efficient circuit design','2021-11-10','2023-08-31');

INSERT INTO technology_patent_portfolio VALUES
('PAT003','Secure Data Transmission Protocol','2023-02-10',NULL,'Pending','David Green','SecureNet','Cryptography','US1122334','USA','',NULL,'Pending','0.00',0.00,NULL,0,'H04L','K60','Proposed protocol for IoT security','2023-01-30','2023-02-11');

-- Community art fund distribution records
CREATE TABLE community_art_fund_distribution
(
    distribution_id          TEXT PRIMARY KEY,
    fund_name                TEXT,
    award_cycle              TEXT,
    applicant_organization   TEXT,
    project_title            TEXT,
    requested_amount         REAL,
    approved_amount          REAL,
    award_date               TEXT,
    project_start_date       TEXT,
    project_end_date         TEXT,
    project_status           TEXT,
    contact_person           TEXT,
    contact_email            TEXT,
    contact_phone            TEXT,
    review_panel            TEXT,
    evaluation_score         INTEGER,
    funding_source           TEXT,
    notes                    TEXT,
    created_timestamp        TEXT,
    updated_timestamp        TEXT
);

INSERT INTO community_art_fund_distribution VALUES
('DSTR001','City Mural Grant','2024','ArtsCollective','Downtown Mural','10000.00','8000.00','2024-03-01','2024-04-15','2024-09-30','InProgress','Mia Torres','mia.torres@example.com','5559991111','PanelA',85,'MunicipalArts','First installment released','2024-02-20','2024-03-02');

INSERT INTO community_art_fund_distribution VALUES
('DSTR002','Public Sculpture Fund','2023','SculptureGuild','Riverfront Sculpture','15000.00','15000.00','2023-05-10','2023-06-01','2024-06-01','Completed','Liam Patel','liam.patel@example.com','5558887777','PanelB',92,'CountyCulture','Project completed on time','2023-04-25','2023-05-11');

INSERT INTO community_art_fund_distribution VALUES
('DSTR003','Youth Art Initiative','2024','YoungArtistsOrg','Community Workshop Series','5000.00','5000.00','2024-01-20','2024-02-10','2024-12-31','Planned','Olivia Chen','olivia.chen@example.com','5557776666','PanelC',78,'StateArts','Planning stage, applications under review','2024-01-05','2024-01-21');

-- Campus digital asset metadata registry
CREATE TABLE digital_asset_metadata
(
    asset_id                TEXT PRIMARY KEY,
    asset_type              TEXT,
    file_name               TEXT,
    file_extension          TEXT,
    size_bytes              INTEGER,
    mime_type               TEXT,
    created_date            TEXT,
    modified_date           TEXT,
    creator_user_id         TEXT,
    owner_department        TEXT,
    access_level            TEXT,
    licensing_info          TEXT,
    checksum_sha256         TEXT,
    tags                    TEXT,
    description             TEXT,
    related_project_id      TEXT,
    usage_count             INTEGER,
    last_accessed_timestamp TEXT,
    retention_policy        TEXT,
    notes                   TEXT,
    created_timestamp       TEXT,
    updated_timestamp       TEXT
);

INSERT INTO digital_asset_metadata VALUES
('DA001','Image','campus_skyline','jpg',2048000,'image/jpeg','2023-02-15','2024-03-01','user123','Marketing','Public','CC-BY','abcde12345fghij67890klmno','skyline;campus;2023','High‑resolution campus skyline photo','PROJ001',150,'2024-06-20','5Years','Used in brochures','2023-02-10','2024-03-02');

INSERT INTO digital_asset_metadata VALUES
('DA002','Video','lecture_series_part1','mp4',104857600,'video/mp4','2022-09-01','2024-02-20','prof456','ComputerScience','Restricted','Institutional','fghij67890klmnoabcde12345','lecture;cs101;intro','Introductory CS lecture video','PROJ045',75,'2024-06-18','Indefinite','Stored in LMS','2022-08-25','2024-02-21');

INSERT INTO digital_asset_metadata VALUES
('DA003','Document','annual_report_2023','pdf',5242880,'application/pdf','2024-01-10','2024-04-15','admin001','Finance','Confidential','Internal','klmnoabcde12345fghij67890','report;2023;finance','2023 financial annual report','PROJ078',30,'2024-06-19','10Years','Limited distribution','2024-01-05','2024-04-16');

-- Campus incident report log
CREATE TABLE campus_incident_report
(
    incident_id            TEXT PRIMARY KEY,
    incident_type          TEXT,
    reported_date          TEXT,
    incident_date          TEXT,
    location_description   TEXT,
    reported_by_user_id    TEXT,
    description            TEXT,
    severity_level         TEXT,
    status                 TEXT,
    assigned_to_department TEXT,
    resolution_date        TEXT,
    corrective_action      TEXT,
    follow_up_required     TEXT,
    evidence_file_path     TEXT,
    witnesses              TEXT,
    notifications_sent     TEXT,
    escalation_level       TEXT,
    incident_category      TEXT,
    notes                  TEXT,
    created_timestamp      TEXT,
    updated_timestamp      TEXT
);

INSERT INTO campus_incident_report VALUES
('INC001','FireAlarm','2024-06-01','2024-05-31','Science Building Room 210','user789','False fire alarm triggered during experiment','Medium','Resolved','Facilities','2024-06-02','System reset and inspection','No','/evidence/inc001_photo.jpg','John Doe;Jane Smith','Email to safety office','Level1','Safety','Alarm cleared after test','2024-05-30','2024-06-03');

INSERT INTO campus_incident_report VALUES
('INC002','DataBreach','2024-05-20','2024-05-18','IT Server Room','sec_admin','Unauthorized access to server logs','High','Under Investigation','IT Security','', 'Forensic analysis pending','Yes','/evidence/inc002_log.txt','Mike Lee','Email to legal department','Level3','Security','Potential GDPR implications','2024-05-15','2024-05-21');

INSERT INTO campus_incident_report VALUES
('INC003','SlipFall','2024-04-10','2024-04-09','Campus Cafeteria','user456','Student slipped on wet floor near entrance','Low','Closed','Health Services','2024-04-11','Floor drying protocol reinforced','No','/evidence/inc003_image.jpg','Sara Kim','Email to campus health','Level1','Health','No injuries reported','2024-04-08','2024-04-12');