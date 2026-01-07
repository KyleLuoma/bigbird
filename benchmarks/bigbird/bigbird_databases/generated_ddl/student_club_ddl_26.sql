-- Campus Event Calendar
CREATE TABLE campus_event_calendar
(
    calendar_id              TEXT PRIMARY KEY,
    event_title              TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    start_time               TEXT,
    end_time                 TEXT,
    location_name            TEXT,
    building_code            TEXT,
    room_number              TEXT,
    description              TEXT,
    organizer_name           TEXT,
    contact_email            TEXT,
    contact_phone            TEXT,
    registration_deadline    TEXT,
    max_attendees            INTEGER,
    registration_url         TEXT,
    event_category           TEXT,
    audience_type            TEXT,
    is_public                TEXT,
    notes                    TEXT
);

INSERT INTO campus_event_calendar VALUES
('cal001','Science Fair','2024-04-10','2024-04-10','09:00','15:00','Main Quad','B01','101','Annual university science exhibition','Dept of Physics','physics@uni.edu','5551234000','2024-04-05',500,'http://uni.edu/scifair','Education','Students','Yes','');

INSERT INTO campus_event_calendar VALUES
('cal002','Alumni Homecoming','2024-09-15','2024-09-15','12:00','22:00','Stadium','A02','Main','Gathering of alumni with live music and food','Alumni Relations','alumni@uni.edu','5551234001','2024-09-01',2000,'http://uni.edu/homecoming','Social','Alumni','Yes','');

INSERT INTO campus_event_calendar VALUES
('cal003','Tech Startup Pitch','2024-05-20','2024-05-20','10:00','13:00','Innovation Hub','C03','202','Pitch competition for student startups','Entrepreneurship Center','entrepreneur@uni.edu','5551234002','2024-05-15',150,'http://uni.edu/pitch','Competition','Students','No','');


-- Faculty Research Interest
CREATE TABLE faculty_research_interest
(
    faculty_id                TEXT PRIMARY KEY,
    first_name                TEXT,
    last_name                 TEXT,
    department                TEXT,
    primary_research_area     TEXT,
    secondary_research_area1  TEXT,
    secondary_research_area2  TEXT,
    research_focus_keywords   TEXT,
    publication_count         INTEGER,
    h_index                   INTEGER,
    start_year                INTEGER,
    end_year                  INTEGER,
    grant_funding_total       REAL,
    sabbatical_status         TEXT,
    office_location           TEXT,
    phone_number              TEXT,
    email                     TEXT,
    url_profile               TEXT,
    notes                     TEXT,
    last_updated              TEXT
);

INSERT INTO faculty_research_interest VALUES
('fac001','Emma','Johnson','Computer Science','Artificial Intelligence','Machine Learning','Data Mining','AI,ML,BigData',45,22,2005,0,1200000.00,'On Hold','CSB 301','5552001000','ejohnson@uni.edu','http://uni.edu/faculty/ejohnson','','2024-01-15');

INSERT INTO faculty_research_interest VALUES
('fac002','Liam','Chen','Electrical Engineering','Renewable Energy','Power Systems','Smart Grids','Solar,Wind,Grid','30','18',2010,0,850000.00,'Completed','EEB 210','5552001001','lchen@uni.edu','http://uni.edu/faculty/lchen','Awarded IEEE Fellow','2024-02-10');

INSERT INTO faculty_research_interest VALUES
('fac003','Ava','Patel','Biology','Genomics','Epigenetics','Bioinformatics','DNA,RNA,Sequencing',60,30,1998,0,2000000.00,'Scheduled','BIO 120','5552001002','apatel@uni.edu','http://uni.edu/faculty/apatel','','2024-03-05');


-- Student Loan Payment
CREATE TABLE student_loan_payment
(
    loan_payment_id        TEXT PRIMARY KEY,
    student_id             TEXT,
    loan_type              TEXT,
    principal_amount       REAL,
    interest_rate          REAL,
    monthly_payment        REAL,
    payment_date           TEXT,
    remaining_balance      REAL,
    payment_method         TEXT,
    lender_name            TEXT,
    notes                  TEXT,
    grace_period_months    INTEGER,
    repayment_plan         TEXT,
    cosigner_name          TEXT,
    cosigner_contact       TEXT,
    processed_by           TEXT,
    approval_status        TEXT,
    last_updated           TEXT,
    audit_trail_id         TEXT,
    external_reference     TEXT
);

INSERT INTO student_loan_payment VALUES
('pay001','stu1001','Undergraduate','15000',5.5,300,'2024-01-15',12000,'Direct Debit','National Bank','On time',6,'Standard','N/A','N/A','FinOps1','Approved','2024-01-16','audit001','ref001');

INSERT INTO student_loan_payment VALUES
('pay002','stu1002','Graduate','25000',4.8,450,'2024-02-10',23000,'Credit Card','State Credit','Late fee applied',0,'Extended','John Doe','5553334444','FinOps2','Pending','2024-02-11','audit002','ref002');

INSERT INTO student_loan_payment VALUES
('pay003','stu1003','Professional','35000',6.2,600,'2024-03-05',34000,'Bank Transfer','Federal Loans','',3,'IncomeBased','Jane Smith','5555556666','FinOps3','Approved','2024-03-06','audit003','ref003');


-- Sustainability Infrastructure
CREATE TABLE sustainability_infrastructure
(
    infra_id               TEXT PRIMARY KEY,
    campus_location        TEXT,
    building_name          TEXT,
    system_type            TEXT,
    capacity               REAL,
    installation_year      INTEGER,
    last_inspection_date   TEXT,
    efficiency_rating      TEXT,
    vendor_name            TEXT,
    maintenance_contract_id TEXT,
    energy_savings         REAL,
    co2_reduction          REAL,
    funding_source         TEXT,
    status                 TEXT,
    notes                  TEXT,
    certification          TEXT,
    warranty_expiration    TEXT,
    last_updated           TEXT,
    monitoring_url         TEXT,
    responsible_department TEXT
);

INSERT INTO sustainability_infrastructure VALUES
('inf001','North Campus','Eco Hall','Solar Panels',500.0,2018,'2023-12-20','A+','GreenTech','cont001',120.5,350.0,'University Fund','Operational','','LEED Gold','2028-06-30','2024-01-10','http://monitor.uni.edu/inf001','Facilities');

INSERT INTO sustainability_infrastructure VALUES
('inf002','East Campus','Science Center','Geothermal','800.0',2020,'2023-11-15','A','EcoEnergy','cont002',200.0,560.0,'Grant 2021','Operational','Requires filter replacement','LEED Platinum','2029-09-15','2024-02-18','http://monitor.uni.edu/inf002','Facilities');

INSERT INTO sustainability_infrastructure VALUES
('inf003','West Campus','Library','Rainwater Harvesting','300.0',2019,'2023-10-05','B+','WaterWorks','cont003',80.0,150.0,'Donations','Under Maintenance','Pump overhaul scheduled','LEED Silver','2027-03-20','2024-03-22','http://monitor.uni.edu/inf003','Facilities');


-- Community Partnership Agreement
CREATE TABLE community_partnership_agreement
(
    agreement_id           TEXT PRIMARY KEY,
    partner_name           TEXT,
    partnership_type       TEXT,
    start_date             TEXT,
    end_date               TEXT,
    contact_person         TEXT,
    contact_email          TEXT,
    contact_phone          TEXT,
    agreement_scope        TEXT,
    deliverables           TEXT,
    funding_amount         REAL,
    reporting_frequency    TEXT,
    renewal_option         TEXT,
    signed_by              TEXT,
    signed_date            TEXT,
    status                 TEXT,
    notes                  TEXT,
    legal_review_status    TEXT,
    attached_document_id   TEXT,
    last_updated           TEXT,
    responsible_office    TEXT
);

INSERT INTO community_partnership_agreement VALUES
('agr001','City Health Dept','Public Health','2023-06-01','2025-05-31','Dr Lee','lee@cityhealth.org','5557778888','Joint health screenings','Quarterly reports','Annual','Yes','Dir Health','2023-05-20','Active','','Reviewed','doc001','2024-01-05','Community Relations');

INSERT INTO community_partnership_agreement VALUES
('agr002','Tech Innovators Inc','Industry Collaboration','2022-01-15','2024-12-31','Ms Patel','patel@techinc.com','5559990000','Student project sponsorship','Biannual progress reports','Optional','No','Dir Research','2021-12-10','Pending','','Pending','doc002','2024-02-12','Research Office');

INSERT INTO community_partnership_agreement VALUES
('agr003','Local Arts Council','Cultural Outreach','2024-03-01','2026-02-28','Mr Gomez','gomez@arts.org','5551112222','Campus art installations','Monthly newsletters','Yes','Dir Arts','2024-02-20','Active','','Approved','doc003','2024-03-01','Cultural Affairs');


-- Digital Advertising Campaign
CREATE TABLE digital_advertising_campaign
(
    campaign_id            TEXT PRIMARY KEY,
    platform               TEXT,
    campaign_name          TEXT,
    start_date             TEXT,
    end_date               TEXT,
    budget                 REAL,
    spend_to_date          REAL,
    impressions            INTEGER,
    clicks                 INTEGER,
    ctr                    REAL,
    cpc                    REAL,
    cpm                    REAL,
    target_audience        TEXT,
    creative_type          TEXT,
    landing_page_url       TEXT,
    conversion_rate        REAL,
    leads_generated        INTEGER,
    notes                  TEXT,
    approved_by            TEXT,
    approval_date          TEXT,
    status                 TEXT
);

INSERT INTO digital_advertising_campaign VALUES
('cmp001','GoogleAds','Spring Open House','2024-03-01','2024-04-30',20000,8500,150000,4500,0.03,1.89,56.67,'Prospective Students','Video','http://uni.edu/openhouse','2.5',120,'','Marketing Director','2024-02-20','Running');

INSERT INTO digital_advertising_campaign VALUES
('cmp002','Facebook','Alumni Giving Campaign','2024-05-01','2024-07-31',15000,6000,200000,3000,0.015,2.00,30.00,'Alumni','Carousel','http://uni.edu/alumni-give','3.0',80,'','Alumni Relations Head','2024-04-28','Planned');

INSERT INTO digital_advertising_campaign VALUES
('cmp003','LinkedIn','Faculty Recruitment','2024-06-15','2024-09-15',12000,4000,80000,1200,0.015,3.33,50.00,'Early Career Researchers','Sponsored Content','http://uni.edu/recruit','4.2',60,'','HR Director','2024-06-10','Running');


-- Health Service Billing
CREATE TABLE health_service_billing
(
    billing_id               TEXT PRIMARY KEY,
    patient_id               TEXT,
    service_date             TEXT,
    service_code             TEXT,
    description              TEXT,
    provider_name            TEXT,
    charge_amount            REAL,
    insurance_coverage       REAL,
    patient_responsibility  REAL,
    billing_status           TEXT,
    payment_date             TEXT,
    payment_method           TEXT,
    adjustment_amount        REAL,
    notes                    TEXT,
    claim_number             TEXT,
    adjudication_status      TEXT,
    last_updated             TEXT,
    processed_by             TEXT,
    external_reference       TEXT,
    insurance_provider       TEXT
);

INSERT INTO health_service_billing VALUES
('bill001','pat1001','2024-01-20','HC101','General Checkup','Dr Smith',150.00,100.00,50.00','Pending','', '','0.00','First visit','CLM001','Submitted','2024-01-21','BillingClerk1','REF001','HealthPlus');

INSERT INTO health_service_billing VALUES
('bill002','pat1002','2024-02-10','HC202','Physical Therapy','Therapist Lee',300.00,200.00,100.00','Paid','2024-02-15','Credit Card','0.00','Completed 5 sessions','CLM002','Approved','2024-02-16','BillingClerk2','REF002','MediCare');

INSERT INTO health_service_billing VALUES
('bill003','pat1003','2024-03-05','HC303','Vaccination','Nurse Patel',80.00,0.00,80.00','Paid','2024-03-07','Cash','0.00','Flu shot','CLM003','Approved','2024-03-08','BillingClerk3','REF003','None');


-- Research Equipment Inventory
CREATE TABLE research_equipment_inventory
(
    equipment_inv_id        TEXT PRIMARY KEY,
    equipment_name          TEXT,
    model_number            TEXT,
    serial_number           TEXT,
    purchase_date           TEXT,
    purchase_price          REAL,
    warranty_expiration     DATE,
    location_building       TEXT,
    location_room           TEXT,
    current_status          TEXT,
    last_calibration_date   DATE,
    calibration_due_date    DATE,
    assigned_to             TEXT,
    usage_hours             INTEGER,
    maintenance_schedule    TEXT,
    notes                   TEXT,
    depreciation_rate       REAL,
    current_value           REAL,
    vendor_name             TEXT,
    funding_source          TEXT
);

INSERT INTO research_equipment_inventory VALUES
('eqinv001','Electron Microscope','EMX-200','SN123456','2021-05-10',250000.00,'2026-05-10','Science Center','Lab 12','In Use','2024-02-01','2025-02-01','Dr Ramirez',1200,'Annual','Requires monthly cleaning',0.15,212500.00,'NanoTech Corp','Research Grant');

INSERT INTO research_equipment_inventory VALUES
('eqinv002','Mass Spectrometer','MS-5000','SN789012','2020-08-22',180000.00,'2025-08-22','Chemistry Building','Lab 5','In Use','2023-12-15','2024-12-15','Dr Chen',950,'Semi-Annual','Calibration completed','0.12',158400.00,'Spectra Instruments','Dept Budget');

INSERT INTO research_equipment_inventory VALUES
('eqinv003','3D Printer','PrintPro X','SN345678','2022-01-15',50000.00,'2027-01-15','Engineering Hall','Lab 3','Available','2024-01-10','2025-01-10','',300,'Quarterly','Spare parts stocked','0.10',45000.00,'MakerWorks','Innovation Fund');


-- Alumni Communication Log
CREATE TABLE alumni_communication_log
(
    comm_id                TEXT PRIMARY KEY,
    alumni_id              TEXT,
    communication_type     TEXT,
    communication_date     TEXT,
    subject                TEXT,
    channel                TEXT,
    outcome                TEXT,
    notes                  TEXT,
    follow_up_date         TEXT,
    responsible_staff      TEXT,
    previous_interaction_id TEXT,
    next_scheduled_contact TEXT,
    communication_status   TEXT,
    email_address          TEXT,
    phone_number           TEXT,
    mailing_address        TEXT,
    preferred_contact_method TEXT,
    opt_out_flag           TEXT,
    last_updated           TEXT,
    campaign_id            TEXT
);

INSERT INTO alumni_communication_log VALUES
('com001','alum1001','Email','2024-01-12','Invitation to Spring Reunion','Email','Opened','Sent to 500 alumni','2024-04-01','CommStaff1','', '2024-04-01','Sent','alum1@domain.com','5552223333','123 Maple St','Email','No','2024-01-13','camp001');

INSERT INTO alumni_communication_log VALUES
('com002','alum1002','Phone Call','2024-02-05','Donation Follow-up','Phone','Promised','Discussed upcoming campaign','2024-06-10','CommStaff2','com001','2024-06-10','Completed','alum2@domain.com','5553334444','456 Oak Ave','Phone','No','2024-02-06','camp002');

INSERT INTO alumni_communication_log VALUES
('com003','alum1003','Mail','2024-03-20','Alumni Magazine Subscription','Mail','Subscribed','Sent first issue','2025-03-20','CommStaff3','com002','2025-03-20','Delivered','alum3@domain.com','5554445555','789 Pine Rd','Mail','No','2024-03-21','camp003');


-- Parking Zone Policy
CREATE TABLE parking_zone_policy
(
    zone_id                 TEXT PRIMARY KEY,
    zone_name               TEXT,
    max_capacity            INTEGER,
    permit_required         TEXT,
    hourly_rate             REAL,
    daily_rate              REAL,
    overnight_rate          REAL,
    enforcement_agency      TEXT,
    violation_fine          REAL,
    allowed_vehicle_types  TEXT,
    signage_type            TEXT,
    lighting_level          TEXT,
    surveillance_coverage   TEXT,
    maintenance_schedule    TEXT,
    notes                   TEXT,
    effective_date          TEXT,
    expiration_date         TEXT,
    special_events_allowed TEXT,
    discount_programs       TEXT,
    last_reviewed           TEXT
);

INSERT INTO parking_zone_policy VALUES
('pz001','North Lot','200','Yes',2.50,12.00,25.00','Campus Police','75','Car,Van','Standard','LED','CCTV','Monthly','Reserved for faculty','2024-01-01','2026-12-31','Yes','Staff Discount','2024-02-10');

INSERT INTO parking_zone_policy VALUES
('pz002','South Garage','350','No',3.00,15.00,30.00','Campus Police','100','Car,Motorcycle','Digital','LED','CCTV','Quarterly','Open to all','2024-03-01','2027-02-28','No','Student Discount','2024-04-05');

INSERT INTO parking_zone_policy VALUES
('pz003','East Visitor Deck','100','Yes',5.00,20.00,35.00','Campus Police','150','Car,Van,EV','Standard','Solar','CCTV','Bi-Annual','EV charging stations','2024-05-01','2025-04-30','Yes','EV Discount','2024-06-12');