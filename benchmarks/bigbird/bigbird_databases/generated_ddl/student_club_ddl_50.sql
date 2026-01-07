-- Research Collaboration Detail
CREATE TABLE research_collaboration_detail
(
    collab_id               TEXT PRIMARY KEY,
    project_id              TEXT,
    lead_researcher_id      TEXT,
    partner_institution    TEXT,
    department              TEXT,
    start_date              TEXT,
    end_date                TEXT,
    funding_amount          REAL,
    funding_source          TEXT,
    status                  TEXT,
    description             TEXT,
    outcome                 TEXT,
    publications            TEXT,
    data_sharing_agreement  TEXT,
    ethics_approval_id      TEXT,
    contact_email           TEXT,
    phone                   TEXT,
    address                 TEXT,
    city                    TEXT,
    state                   TEXT,
    zip_code                TEXT
);

INSERT INTO research_collaboration_detail VALUES
('C001','P100','R200','UniversityX','Physics','2022-01-15','2024-12-31',250000.00,'NationalScienceFund','Active','Collab on quantum optics','Preliminary results','Paper1;Paper2','Yes','EA123','lead@univx.edu','5551234567','123 Science Rd','Metrocity','CA','90001');

INSERT INTO research_collaboration_detail VALUES
('C002','P101','R201','InstituteY','Biology','2021-06-01','2023-05-30',150000.00,'PrivateDonor','Completed','Study of marine ecosystems','Published','MarinePaper','No','EA124','contact@insty.org','5559876543','456 Ocean Ave','Coasttown','FL','33002');

INSERT INTO research_collaboration_detail VALUES
('C003','P102','R202','CollegeZ','Engineering','2023-03-10','2025-08-20',300000.00,'IndustryPartner','Pending','Robotics automation project','In progress','RoboticsPaper','Yes','EA125','englead@collegez.edu','5551122334','789 Tech Blvd','Innovate City','TX','75003');

-- Digital Content Distribution Log
CREATE TABLE digital_content_distribution_log
(
    dist_id                TEXT PRIMARY KEY,
    content_id             TEXT,
    channel                TEXT,
    distribution_date      TEXT,
    audience_size          INTEGER,
    impressions            INTEGER,
    clicks                 INTEGER,
    cost                   REAL,
    revenue                REAL,
    format                 TEXT,
    file_name              TEXT,
    file_size_mb           REAL,
    checksum               TEXT,
    status                 TEXT,
    notes                  TEXT,
    created_by             TEXT,
    created_at             TEXT,
    updated_by             TEXT,
    updated_at             TEXT,
    geo_region             TEXT,
    device_type            TEXT
);

INSERT INTO digital_content_distribution_log VALUES
('D001','CNT100','SocialMedia','2023-09-01',50000,75000,1200,2500.00,5000.00,'video','promo1.mp4',45.6,'abc123','Delivered','Seasonal campaign','alice','2023-09-01','bob','2023-09-02','NorthAmerica','Mobile');

INSERT INTO digital_content_distribution_log VALUES
('D002','CNT101','Email','2023-08-15',20000,20000,500,800.00,0.00,'pdf','newsletter_aug.pdf',2.3,'def456','Sent','Monthly newsletter','carol','2023-08-15','dave','2023-08-16','Europe','Desktop');

INSERT INTO digital_content_distribution_log VALUES
('D003','CNT102','Website','2023-10-05',15000,30000,800,1200.00,0.00,'image','banner_oct.jpg',0.8,'ghi789','Live','Homepage banner update','eve','2023-10-05','frank','2023-10-06','Asia','Tablet');

-- Environmental Monitoring Device
CREATE TABLE environmental_monitoring_device
(
    device_id              TEXT PRIMARY KEY,
    device_type            TEXT,
    manufacturer           TEXT,
    model_number           TEXT,
    installation_date      TEXT,
    location               TEXT,
    latitude               REAL,
    longitude              REAL,
    sensor_type            TEXT,
    calibration_date       TEXT,
    firmware_version       TEXT,
    battery_level          INTEGER,
    status                 TEXT,
    last_maintenance       TEXT,
    maintenance_notes      TEXT,
    data_endpoint          TEXT,
    network_id             TEXT,
    ip_address             TEXT,
    mac_address            TEXT,
    warranty_expiry        TEXT,
    serial_number          TEXT
);

INSERT INTO environmental_monitoring_device VALUES
('DEV001','AirQuality','EnviroTech','AQ100','2022-04-10','BuildingA Roof',34.0522,-118.2437,'PM2.5','2023-01-01','v1.2.3',85,'Active','2023-06-15','Replaced filter','http://data.envirotech.com/DEV001','NET01','192.168.1.10','00:1A:2B:3C:4D:5E','2024-04-10','SN001');

INSERT INTO environmental_monitoring_device VALUES
('DEV002','WaterLevel','HydroSense','WL200','2021-11-22','RiverBank Station',40.7128,-74.0060,'Ultrasonic','2022-12-01','v2.0.0',70,'Active','2023-05-20','Calibrated sensor','http://data.hydrosense.com/DEV002','NET02','192.168.2.20','00:1A:2B:3C:4D:5F','2023-11-22','SN002');

INSERT INTO environmental_monitoring_device VALUES
('DEV003','SoilMoisture','AgriMetrics','SM300','2023-01-15','FieldC Plot5',36.1699,-115.1398,'Capacitive','2023-02-01','v1.0.0',95,'Active','2023-07-01','No issues','http://data.agrimetrics.com/DEV003','NET03','192.168.3.30','00:1A:2B:3C:4D:60','2025-01-15','SN003');

-- Student Loan Repayment
CREATE TABLE student_loan_repayment
(
    repayment_id               TEXT PRIMARY KEY,
    loan_id                    TEXT,
    student_id                 TEXT,
    due_date                   TEXT,
    amount_due                 REAL,
    amount_paid                REAL,
    payment_date               TEXT,
    payment_method             TEXT,
    interest_rate              REAL,
    principal_balance          REAL,
    interest_balance           REAL,
    status                     TEXT,
    remarks                    TEXT,
    created_at                 TEXT,
    created_by                 TEXT,
    updated_at                 TEXT,
    updated_by                 TEXT,
    amortization_schedule_id   TEXT,
    grace_period_months        INTEGER,
    delinquency_status         TEXT,
    collection_agency          TEXT
);

INSERT INTO student_loan_repayment VALUES
('R001','L100','S123','2023-11-01',1500.00,1500.00,'2023-10-30','BankTransfer',5.0,12000.00,300.00','Paid','On time','2023-09-01','admin','2023-10-31','admin','SCH001',6,'None','None');

INSERT INTO student_loan_repayment VALUES
('R002','L101','S124','2023-12-15',2000.00,0.00,NULL,'','4.5',18000.00,500.00,'Pending','Awaiting payment','2023-09-15','admin','2023-12-01','admin','SCH002',6,'Late','AgencyX');

INSERT INTO student_loan_repayment VALUES
('R003','L102','S125','2024-01-20',1750.00,1750.00,'2024-01-18','CreditCard',6.2,15000.00,250.00,'Paid','Paid via credit','2023-10-20','admin','2024-01-19','admin','SCH003',6,'None','None');

-- Vendor Contractual Term
CREATE TABLE vendor_contractual_term
(
    term_id                    TEXT PRIMARY KEY,
    contract_id                TEXT,
    vendor_id                  TEXT,
    term_type                  TEXT,
    start_date                 TEXT,
    end_date                   TEXT,
    renewal_option             TEXT,
    notice_period_days        INTEGER,
    penalty_clause             TEXT,
    confidentiality_level      TEXT,
    liability_limit            TEXT,
    insurance_required         TEXT,
    compliance_requirements   TEXT,
    jurisdiction               TEXT,
    governing_law              TEXT,
    authorized_signatory      TEXT,
    sign_date                  TEXT,
    effective_date             TEXT,
    termination_notice_days    INTEGER,
    amendment_count            INTEGER
);

INSERT INTO vendor_contractual_term VALUES
('T001','C200','V300','Supply','2023-01-01','2025-12-31','Automatic','30','Late delivery penalty','High','50000','Yes','ISO9001','CA','California','John Doe','2022-12-15','2023-01-01',60,2);

INSERT INTO vendor_contractual_term VALUES
('T002','C201','V301','Service','2022-06-15','2024-06-14','Option','45','Early termination fee','Medium','25000','Yes','SOC2','NY','NewYork','Jane Smith','2022-05-20','2022-06-15',90,1);

INSERT INTO vendor_contractual_term VALUES
('T003','C202','V302','Consulting','2024-03-01','2026-02-28','None','60','No penalty','Low','10000','No','None','TX','Texas','Mike Johnson','2024-02-10','2024-03-01',30,0);

-- Campus Sustainability Scorecard
CREATE TABLE campus_sustainability_scorecard
(
    scorecard_id               TEXT PRIMARY KEY,
    year                       INTEGER,
    semester                   TEXT,
    building_id                TEXT,
    energy_consumption_kwh    REAL,
    water_usage_gallons       REAL,
    waste_diverted_percent    REAL,
    renewable_energy_percent  REAL,
    carbon_emissions_tons     REAL,
    leed_certification_level  TEXT,
    green_roof_area_sqft      REAL,
    solar_panel_capacity_kw   REAL,
    hvac_efficiency_rating    REAL,
    lighting_efficiency_rating REAL,
    occupant_satisfaction_score REAL,
    maintenance_requests      INTEGER,
    sustainability_initiatives_count INTEGER,
    score_overall              REAL,
    notes                      TEXT,
    created_at                 TEXT,
    created_by                 TEXT
);

INSERT INTO campus_sustainability_scorecard VALUES
('SC001',2023,'Fall','B001',125000.0,50000.0,45.0,20.0,30.5,'Gold',2000.0,150.0,0.92,0.88,4.5,120,15,85.0,'Improved solar output','2023-09-01','sustainability_officer');

INSERT INTO campus_sustainability_scorecard VALUES
('SC002',2023,'Fall','B002',98000.0,42000.0,50.0,25.0,25.0,'Silver',1500.0,120.0,0.90,0.85,4.2,90,12,80.0,'Completed roof garden','2023-09-01','sustainability_officer');

INSERT INTO campus_sustainability_scorecard VALUES
('SC003',2023,'Fall','B003',150000.0,60000.0,40.0,15.0,35.0,'Platinum',2500.0,200.0,0.95,0.91,4.8,140,18,88.0,'New HVAC system installed','2023-09-01','sustainability_officer');

-- Health Service Insurance Claim
CREATE TABLE health_service_insurance_claim
(
    claim_id               TEXT PRIMARY KEY,
    patient_id             TEXT,
    service_date           TEXT,
    provider_id            TEXT,
    diagnosis_code         TEXT,
    procedure_code         TEXT,
    total_charged          REAL,
    insurance_company      TEXT,
    policy_number          TEXT,
    claim_status           TEXT,
    adjudication_date      TEXT,
    amount_approved        REAL,
    amount_denied          REAL,
    patient_responsibility REAL,
    claim_notes            TEXT,
    submitted_by           TEXT,
    submission_date        TEXT,
    adjusted_amount        REAL,
    prior_auth_number      TEXT,
    batch_number           TEXT
);

INSERT INTO health_service_insurance_claim VALUES
('CLM001','P1001','2023-08-10','PRV01','J20','99213',250.00,'HealthPlus','HP12345','Approved','2023-08-15',200.00,50.00,30.00','Routine visit','clerk1','2023-08-11',0.00,'AUTH001','BATCH01');

INSERT INTO health_service_insurance_claim VALUES
('CLM002','P1002','2023-07-22','PRV02','E11','93000',400.00,'MediCare','MC54321','Denied','2023-07-28',0.00,400.00,400.00','Lab work not covered','clerk2','2023-07-23',0.00,'AUTH002','BATCH02');

INSERT INTO health_service_insurance_claim VALUES
('CLM003','P1003','2023-09-05','PRV03','I10','93010',150.00,'HealthSecure','HS98765','Pending','',0.00,0.00,150.00','Awaiting documentation','clerk3','2023-09-06',0.00,'AUTH003','BATCH03');

-- Transportation Route Analysis
CREATE TABLE transportation_route_analysis
(
    analysis_id                TEXT PRIMARY KEY,
    route_id                   TEXT,
    analysis_date              TEXT,
    average_speed_mph          REAL,
    congestion_level           TEXT,
    accident_count             INTEGER,
    average_delay_minutes      REAL,
    fuel_consumption_gallons   REAL,
    emissions_tons_co2         REAL,
    vehicle_type_distribution TEXT,
    peak_hour_start            TEXT,
    peak_hour_end              TEXT,
    weather_condition          TEXT,
    road_condition             TEXT,
    maintenance_needed         TEXT,
    recommended_action         TEXT,
    analyst_name               TEXT,
    created_at                 TEXT,
    updated_at                 TEXT,
    notes                      TEXT,
    data_source                TEXT
);

INSERT INTO transportation_route_analysis VALUES
('A001','R100','2023-09-01',45.5,'Medium',2,5.0,1200.0,1.2,'Truck:40%;Van:30%;Car:30%','07:00','09:00','Clear','Good','Pothole repairs','Add lane','Anna Lee','2023-09-02','2023-09-03','Quarterly review','SensorNetwork');

INSERT INTO transportation_route_analysis VALUES
('A002','R101','2023-09-15',32.0,'High',5,12.0,1800.0,2.0,'Truck:50%;Car:50%','16:00','19:00','Rain','Wet','Drain cleaning','Reduce speed limit','Bob Kim','2023-09-16','2023-09-17','Monthly assessment','GPSLogs');

INSERT INTO transportation_route_analysis VALUES
('A003','R102','2023-10-05',55.0,'Low',0,2.0,800.0,0.8,'Car:100%','10:00','12:00','Clear','Excellent','None','Maintain current layout','Cara Smith','2023-10-06','2023-10-07','Annual report','TrafficCam');

-- Community Fundraising Donor
CREATE TABLE community_fundraising_donor
(
    donor_id               TEXT PRIMARY KEY,
    donor_name             TEXT,
    organization           TEXT,
    contact_email          TEXT,
    phone                  TEXT,
    address                TEXT,
    city                   TEXT,
    state                  TEXT,
    zip_code               TEXT,
    donation_type          TEXT,
    donation_amount        REAL,
    donation_date          TEXT,
    campaign_id            TEXT,
    recognition_level      TEXT,
    pledge_status          TEXT,
    recurring_flag         TEXT,
    preferred_contact_method TEXT,
    notes                  TEXT,
    tax_receipt_number     TEXT,
    created_at             TEXT,
    created_by             TEXT
);

INSERT INTO community_fundraising_donor VALUES
('DNR001','Alice Johnson','Alpha Corp','alice.johnson@alphacorp.com','5551112222','100 Main St','Springfield','IL','62704','Cash',5000.00,'2023-08-20','CMP001','Gold','Pledged','Yes','Email','First time donor','TR12345','2023-08-20','admin');

INSERT INTO community_fundraising_donor VALUES
('DNR002','Bob Martinez','Beta LLC','bob.martinez@betallc.com','5553334444','200 Oak Ave','Riverdale','GA','30303','InKind','3000.00','2023-09-10','CMP002','Silver','Completed','No','Phone','Provides volunteer services','TR12346','2023-09-10','admin');

INSERT INTO community_fundraising_donor VALUES
('DNR003','Carol Smith','', 'carol.smith@example.com','5555556666','300 Pine Rd','Lakeside','CA','90210','Cash',1500.00,'2023-10-05','CMP001','Bronze','Pledged','Yes','Mail','Interested in event tickets','TR12347','2023-10-05','admin');

-- Event Sponsorship Tier
CREATE TABLE event_sponsorship_tier
(
    tier_id                     TEXT PRIMARY KEY,
    event_id                    TEXT,
    sponsor_id                  TEXT,
    tier_name                   TEXT,
    contribution_amount         REAL,
    benefits_description        TEXT,
    logo_inclusion              TEXT,
    booth_space_sqft            INTEGER,
    speaking_slot               TEXT,
    number_of_tickets           INTEGER,
    exclusive_rights_flag       TEXT,
    contract_signed_date        TEXT,
    contract_expiration_date    TEXT,
    payment_status              TEXT,
    notes                       TEXT,
    created_at                  TEXT,
    created_by                  TEXT,
    updated_at                  TEXT,
    updated_by                  TEXT,
    sponsor_contact_name       TEXT
);

INSERT INTO event_sponsorship_tier VALUES
('TS001','E100','V500','Platinum',20000.00','Full branding, keynotes, premium booth','Yes',500,'Opening keynote',10,'Yes','2023-07-01','2023-12-31','Paid','Top tier sponsor','2023-07-02','admin','2023-09-01','admin','Laura Green');

INSERT INTO event_sponsorship_tier VALUES
('TS002','E101','V501','Gold',12000.00','Logo on materials, breakout session, booth','Yes',300,'Breakout session',5,'No','2023-08-15','2024-01-15','Pending','Second tier sponsor','2023-08-16','admin','2023-09-15','admin','Mark Davis');

INSERT INTO event_sponsorship_tier VALUES
('TS003','E102','V502','Silver',8000.00','Logo on signage, standard booth','No',150,'',2,'No','2023-09-10','2024-02-10','Paid','Entry level sponsor','2023-09-11','admin','2023-10-01','admin','Susan Lee');