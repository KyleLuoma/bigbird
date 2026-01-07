-- Research Funding details
CREATE TABLE research_funding
(
    funding_id               TEXT PRIMARY KEY,
    grant_id                 TEXT,
    project_id               TEXT,
    sponsor_name             TEXT,
    amount_requested         REAL,
    amount_awarded           REAL,
    award_date               TEXT,
    funding_cycle            TEXT,
    status                   TEXT,
    review_score             REAL,
    fiscal_year              INTEGER,
    department               TEXT,
    program                  TEXT,
    currency                 TEXT,
    payment_method           TEXT,
    disbursement_date        TEXT,
    expiration_date          TEXT,
    compliance_status        TEXT,
    notes                    TEXT,
    contact_email            TEXT,
    contact_phone            TEXT
);

INSERT INTO research_funding VALUES
('RF001','GR1001','PRJ2001','NationalScienceFoundation',500000,450000,'2023-04-15','Annual','Awarded',4.5,2023,'Engineering','Robotics','USD','BankTransfer','2023-05-01','2025-04-30','Compliant','Initial award','contact1@nsf.gov','5551230001');

INSERT INTO research_funding VALUES
('RF002','GR1002','PRJ2002','DepartmentOfEnergy',300000,300000,'2022-11-20','Biannual','Pending',0,NULL,'Physics','Fusion','USD','Check','2022-12-01','2024-11-30','Pending','Waiting for final approval','contact2@doe.gov','5551230002');

INSERT INTO research_funding VALUES
('RF003','GR1003','PRJ2003','HealthResearchCouncil',200000,180000,'2024-01-10','Quarterly','Awarded',3.9,2024,'Medicine','Vaccines','USD','Wire','2024-01-20','2025-01-09','Compliant','Mid‑year review','contact3@hrc.org','5551230003');

-- Event Logistics coordination
CREATE TABLE event_logistics
(
    logistics_id            TEXT PRIMARY KEY,
    event_id                TEXT,
    transportation_mode     TEXT,
    vendor_id               TEXT,
    setup_start_time        TEXT,
    teardown_end_time       TEXT,
    equipment_list          TEXT,
    security_level          TEXT,
    catering_id             TEXT,
    parking_zone            TEXT,
    acoustic_requirements  TEXT,
    lighting_requirements  TEXT,
    staging_area            TEXT,
    wifi_bandwidth          TEXT,
    power_supply            TEXT,
    waste_management_plan   TEXT,
    insurance_policy        TEXT,
    backup_plan             TEXT,
    coordinator_name        TEXT,
    coordinator_contact     TEXT,
    notes                   TEXT,
    FOREIGN KEY (event_id) REFERENCES event(event_id)
);

INSERT INTO event_logistics VALUES
('EL001','EVT001','Bus','VEND100','08:00','22:00','Projector,SoundSystem','High','CAT001','ZoneA','SoundProof','LED','MainStage','500Mbps','GeneratorBackup','Recycling','POL123','PlanA','Alice Smith','5552001001','Logistics set for main conference');

INSERT INTO event_logistics VALUES
('EL002','EVT002','Van','VEND101','09:30','20:45','Tables,Chairs','Medium','CAT002','ZoneB','Standard','Spotlights','OutdoorStage','200Mbps','Grid','Compost','POL124','PlanB','Bob Johnson','5552001002','Outdoor festival logistics');

INSERT INTO event_logistics VALUES
('EL003','EVT003','Truck','VEND102','07:45','23:15','Stage,Rigging','Low','CAT003','ZoneC','Amplified','StageLights','SideStage','1Gbps','BatteryPack','Landfill','POL125','PlanC','Carol Lee','5552001003','Equipment rental confirmed');

-- Alumni Engagement records
CREATE TABLE alumni_engagement
(
    engagement_id          TEXT PRIMARY KEY,
    alumni_id              TEXT,
    event_id               TEXT,
    program_name           TEXT,
    role                   TEXT,
    start_date             TEXT,
    end_date               TEXT,
    hours_contributed      REAL,
    mentorship_flag        TEXT,
    donation_amount        REAL,
    contact_method         TEXT,
    email                  TEXT,
    phone                  TEXT,
    address                TEXT,
    city                   TEXT,
    state                  TEXT,
    zip                    INTEGER,
    social_media_handle    TEXT,
    feedback_score         REAL,
    notes                  TEXT,
    status                 TEXT,
    created_at             TEXT,
    FOREIGN KEY (event_id) REFERENCES event(event_id)
);

INSERT INTO alumni_engagement VALUES
('AE001','ALU001','EVT001','CareerMentor','Mentor','2023-01-10','2023-06-10',120,'Yes',5000,'Email','alumni1@university.edu','5553001001','123 Oak St','Springfield','IL',62704,'@alumni1',4.8,'Excellent mentor','Active','2023-01-01');

INSERT INTO alumni_engagement VALUES
('AE002','ALU002','EVT002','GuestSpeaker','Speaker','2023-03-15','2023-03-15',4,'No',0,'Phone','alumni2@university.edu','5553001002','456 Pine Ave','Riverdale','NY',10001,'@alumni2',4.5,'Spoke on entrepreneurship','Completed','2023-03-01');

INSERT INTO alumni_engagement VALUES
('AE003','ALU003','EVT003','Fundraising','Donor','2023-02-01','2023-12-31',0,'No',15000,'Mail','alumni3@university.edu','5553001003','789 Maple Rd','Centerville','CA',90210,'@alumni3',5.0,'Major donor','Active','2023-02-01');

-- Campus Energy Monitoring
CREATE TABLE campus_energy_monitor
(
    monitor_id             TEXT PRIMARY KEY,
    building_id            TEXT,
    floor_number           INTEGER,
    meter_reading          REAL,
    reading_date           TEXT,
    peak_demand            REAL,
    avg_consumption        REAL,
    renewable_source_percent REAL,
    hvac_status            TEXT,
    lighting_status        TEXT,
    occupancy_level        INTEGER,
    temperature_c          REAL,
    humidity_percent       REAL,
    co2_ppm                REAL,
    equipment_id           TEXT,
    maintenance_due        TEXT,
    last_service_date      TEXT,
    energy_cost            REAL,
    carbon_footprint       REAL,
    notes                  TEXT,
    recorded_by            TEXT
);

INSERT INTO campus_energy_monitor VALUES
('EM001','BLD01',1,1250.5,'2023-09-01',250.0,150.0,30.0,'Operational','On','80',22.5,45.0,600,'EQ001','2024-01-15','2023-07-20',1200.75,800.4,'Normal operation','TechA');

INSERT INTO campus_energy_monitor VALUES
('EM002','BLD02',3,980.2,'2023-09-01',200.0,130.0,45.0,'Maintenance','Dimmed','60',21.0,50.0,550,'EQ002','2023-12-01','2023-06-10',950.30,620.1,'HVAC under service','TechB');

INSERT INTO campus_energy_monitor VALUES
('EM003','BLD03',5,1550.8,'2023-09-01',300.0,180.0,20.0,'Operational','Full','120',23.0,40.0,700,'EQ003','2024-03-10','2023-08-05',1400.20,950.6,'High occupancy','TechC');

-- Medical Clinic Visit logs
CREATE TABLE medical_clinic_visit
(
    visit_id               TEXT PRIMARY KEY,
    patient_id             TEXT,
    member_id              TEXT,
    visit_date             TEXT,
    department             TEXT,
    provider_name          TEXT,
    provider_id            TEXT,
    diagnosis_code         TEXT,
    procedure_code         TEXT,
    prescription_id        TEXT,
    followup_required      TEXT,
    followup_date          TEXT,
    notes                  TEXT,
    insurance_provider     TEXT,
    insurance_policy_number TEXT,
    copay_amount           REAL,
    billing_status         TEXT,
    visit_type             TEXT,
    duration_minutes       INTEGER,
    room_number            TEXT,
    vitals_recorded       TEXT
);

INSERT INTO medical_clinic_visit VALUES
('VC001','PAT001','MEM001','2023-08-12','Cardiology','DrHeart','PRV001','I20','PROC100','RX001','Yes','2023-09-12','Routine checkup','HealthInsure','HP123456',20.0,'Billed','Consultation',30,'R101','Recorded');

INSERT INTO medical_clinic_visit VALUES
('VC002','PAT002','MEM002','2023-08-15','Dermatology','DrSkin','PRV002','L20','PROC200','RX002','No','', 'Skin rash treatment','MediCover','MC789012',15.0,'Paid','Treatment',45,'R202','Recorded');

INSERT INTO medical_clinic_visit VALUES
('VC003','PAT003','MEM003','2023-08-20','Orthopedics','DrBone','PRV003','M25','PROC300','RX003','Yes','2023-10-01','Knee pain evaluation','HealthPlus','HP345678',25.0,'Pending','Consultation',60,'R303','Recorded');

-- Library Acquisition records
CREATE TABLE library_acquisition
(
    acquisition_id         TEXT PRIMARY KEY,
    isbn                   TEXT,
    title                  TEXT,
    author                 TEXT,
    publisher              TEXT,
    publication_year       INTEGER,
    acquisition_date       TEXT,
    cost                   REAL,
    vendor_id              TEXT,
    budget_category        TEXT,
    library_section        TEXT,
    shelf_location         TEXT,
    format_type            TEXT,
    language               TEXT,
    pages                  INTEGER,
    binding                TEXT,
    edition                TEXT,
    isbn13                 TEXT,
    digital_access_url     TEXT,
    notes                  TEXT,
    received_by            TEXT,
    condition_status       TEXT
);

INSERT INTO library_acquisition VALUES
('LA001','9780306406157','Artificial Intelligence','Stuart Russell','Pearson',2023,'2023-07-01',120.0,'VEND200','Science','Computing','CS-01','Hardcover','English',850,'Hard','3rd','9780306406157','http://digital.library/ai','New arrival','LibrarianA','New');

INSERT INTO library_acquisition VALUES
('LA002','9780262033848','Introduction to Algorithms','Thomas H. Cormen','MIT Press',2021,'2023-07-15',95.0,'VEND201','Science','Computing','CS-02','Paperback','English',1312,'Soft','4th','9780262033848','http://digital.library/algos','Classic text','LibrarianB','Good');

INSERT INTO library_acquisition VALUES
('LA003','9780131103627','The C Programming Language','Brian W. Kernighan','Prentice Hall',1978,'2023-08-05',80.0,'VEND202','Technology','Programming','PR-01','Hardcover','English',272,'Hard','2nd','9780131103627','http://digital.library/cprog','Reference copy','LibrarianC','Fair');

-- Parking Violation Records
CREATE TABLE parking_violation_record
(
    violation_id           TEXT PRIMARY KEY,
    vehicle_plate          TEXT,
    violation_date         TEXT,
    violation_time         TEXT,
    location               TEXT,
    officer_id             TEXT,
    violation_type         TEXT,
    fine_amount            REAL,
    paid_status            TEXT,
    payment_date           TEXT,
    notes                  TEXT,
    camera_id              TEXT,
    speed_recorded         REAL,
    lane                   TEXT,
    weather_condition      TEXT,
    ticket_number          TEXT,
    issue_description      TEXT,
    appealed_flag          TEXT,
    appeal_decision        TEXT,
    processed_by           TEXT,
    processed_date         TEXT
);

INSERT INTO parking_violation_record VALUES
('PV001','ABC1234','2023-08-01','09:15','Lot A','OFF001','Expired Meter',50.0,'Paid','2023-08-05','No issues','CAM001',0,'Lane1','Sunny','TCK001','Meter expired at 09:00','No','', 'ClerkA','2023-08-06');

INSERT INTO parking_violation_record VALUES
('PV002','XYZ5678','2023-08-03','14:30','Lot B','OFF002','No Parking Zone',75.0,'Unpaid','','Blocked fire lane','CAM002',0,'Lane2','Rainy','TCK002','Parked in fire lane','Yes','Dismissed','ClerkB','2023-08-04');

INSERT INTO parking_violation_record VALUES
('PV003','LMN9101','2023-08-04','18:45','Street C','OFF003','Speeding',100.0,'Paid','2023-08-10','Speed 55mph in 35 zone','CAM003',55,'Northbound','Clear','TCK003','Speeding detected','No','', 'ClerkC','2023-08-11');

-- Sustainability Initiative tracking
CREATE TABLE sustainability_initiative
(
    initiative_id            TEXT PRIMARY KEY,
    name                     TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    target_metric            TEXT,
    current_metric           REAL,
    metric_unit              TEXT,
    responsible_department   TEXT,
    budget_allocated         REAL,
    budget_spent             REAL,
    status                   TEXT,
    description              TEXT,
    partners                 TEXT,
    carbon_reduction_tons    REAL,
    water_saved_gallons      REAL,
    waste_reduced_percent    REAL,
    renewable_energy_percent REAL,
    certification            TEXT,
    reporting_frequency      TEXT,
    last_report_date         TEXT,
    notes                    TEXT,
    created_by               TEXT
);

INSERT INTO sustainability_initiative VALUES
('SI001','Campus Solar Expansion','2023-01-01','2025-12-31','Solar Capacity','12.5','MW','Facilities','500000','150000','InProgress','Installation of 30 new panels','SolarCo;EnergyPartners','15.2','200000','10','85','LEED Gold','Quarterly','2023-09-01','Phase 1 completed','AdminA');

INSERT INTO sustainability_initiative VALUES
('SI002','Zero Waste Program','2022-06-01','2024-05-31','Waste Diversion Rate','78','%','Environmental Services','300000','250000','InProgress','Goal to divert 90% waste','GreenOrg;WasteTech','5.0','0','78','0','ISO 14001','Monthly','2023-08-15','New compost stations added','AdminB');

INSERT INTO sustainability_initiative VALUES
('SI003','Water Conservation','2021-09-01','2023-12-31','Gallons Saved','1200000','Gallons','Facilities','200000','190000','Completed','Retrofit of fixtures','AquaSave;CampusPools','0','1200000','0','0','LEED Silver','Annual','2023-11-30','Exceeded target by 10%','AdminC');

-- Digital Campaign Performance metrics
CREATE TABLE digital_campaign_performance
(
    campaign_id            TEXT PRIMARY KEY,
    platform               TEXT,
    start_date             TEXT,
    end_date               TEXT,
    budget                 REAL,
    spend                  REAL,
    impressions            INTEGER,
    clicks                 INTEGER,
    click_through_rate     REAL,
    conversions            INTEGER,
    conversion_rate        REAL,
    cost_per_click         REAL,
    cost_per_conversion    REAL,
    audience_reach         INTEGER,
    demographic_target     TEXT,
    creative_type          TEXT,
    ad_version             TEXT,
    landing_page_url       TEXT,
    engagement_score       REAL,
    notes                  TEXT,
    created_by             TEXT,
    last_updated           TEXT
);

INSERT INTO digital_campaign_performance VALUES
('DC001','Facebook','2023-07-01','2023-07-31',20000,18500,500000,2500,0.5,300,12,7.4,61.7,200000,'18-34','Video','V1','http://campus.edu/ads1',85.0,'Successful summer drive','MarketerA','2023-08-01');

INSERT INTO digital_campaign_performance VALUES
('DC002','Instagram','2023-08-01','2023-08-31',15000,14000,400000,1800,0.45,250,13,7.8,56,150000,'18-24','ImageCarousel','V2','http://campus.edu/ads2',80.5,'Good engagement','MarketerB','2023-09-01');

INSERT INTO digital_campaign_performance VALUES
('DC003','LinkedIn','2023-09-01','2023-09-30',25000,23000,300000,1200,0.4,200,16,19.2,115,120000,'25-45','SponsoredContent','V3','http://campus.edu/ads3',78.2,'Targeted professional audience','MarketerC','2023-10-01');

-- Equipment Calibration Schedule
CREATE TABLE equipment_calibration_schedule
(
    schedule_id            TEXT PRIMARY KEY,
    equipment_id           TEXT,
    calibration_type       TEXT,
    last_calibrated_date   TEXT,
    next_due_date          TEXT,
    calibrated_by          TEXT,
    lab_location           TEXT,
    calibration_certificate_number TEXT,
    status                 TEXT,
    notes                  TEXT,
    frequency_days         INTEGER,
    tolerance              REAL,
    method                 TEXT,
    standard_used          TEXT,
    technician_id          TEXT,
    approval_status        TEXT,
    cost                   REAL,
    downtime_hours        REAL,
    impact_rating          TEXT,
    created_at             TEXT,
    updated_at             TEXT
);

INSERT INTO equipment_calibration_schedule VALUES
('CS001','EQP001','Temperature','2023-06-01','2024-06-01','TechA','LabA','CERT1001','Scheduled','Annual temp calibration','365',0.5,'Thermocouple','ASTM E1137','TECH001','Approved',150.0,2,'Low','2023-06-01','2023-06-01');

INSERT INTO equipment_calibration_schedule VALUES
('CS002','EQP002','Pressure','2023-04-15','2023-10-15','TechB','LabB','CERT1002','Pending','Bi‑annual pressure check','180',1.0,'Manometer','ISO 9001','TECH002','Pending',200.0,3,'Medium','2023-04-15','2023-04-15');

INSERT INTO equipment_calibration_schedule VALUES
('CS003','EQP003','Electrical','2023-01-20','2023-07-20','TechC','LabC','CERT1003','Completed','Quarterly voltage calibration','180',0.2,'Voltmeter','IEC 61010','TECH003','Approved',120.0,1,'Low','2023-01-20','2023-01-20');