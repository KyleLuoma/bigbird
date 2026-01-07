-- Academic conference details
CREATE TABLE academic_conference_detail
(
    conference_id            TEXT PRIMARY KEY,
    conference_name          TEXT,
    host_university          TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    city                     TEXT,
    state                    TEXT,
    country                  TEXT,
    theme                    TEXT,
    expected_attendees       INTEGER,
    registration_fee         REAL,
    keynote_speaker          TEXT,
    sponsor_list             TEXT,
    conference_website       TEXT,
    accreditation_body       TEXT,
    abstract_submission_deadline TEXT,
    notification_date        TEXT,
    conference_code          TEXT,
    budget_estimate          REAL,
    venue_capacity           INTEGER,
    catering_option          TEXT,
    transportation_provided  TEXT,
    accommodation_partner   TEXT,
    media_partner            TEXT,
    sustainability_plan      TEXT
);

INSERT INTO academic_conference_detail VALUES
('CONF001','International AI Summit','Tech University','2024-06-10','2024-06-13','Springfield','IL','USA','Future of AI',500,'350.00','Dr Jane Doe','CompanyA,CompanyB','http://ai2024.example.com','AccreditingBoard','2024-04-01','2024-04-15','AI2024','150000.00','800','Buffet','Shuttle Service','Grand Hotel','MediaCorp','Zero Waste');

INSERT INTO academic_conference_detail VALUES
('CONF002','Global Climate Forum','Eco Institute','2024-09-20','2024-09-22','Portland','OR','USA','Climate Resilience',300,'200.00','Dr John Smith','GreenFund','http://climateforum.example.com','ClimateAccreditor','2024-07-01','2024-07-15','CLIM2024','90000.00','500','Vegan','Bike Rental','Eco Lodge','EarthMedia','Carbon Neutral');

INSERT INTO academic_conference_detail VALUES
('CONF003','Quantum Computing Expo','Quantum Labs','2025-01-15','2025-01-18','Boston','MA','USA','Quantum Advances',400,'400.00','Dr Alice Lee','QuantumCorp','http://quantumexpo.example.com','QuantumAccred','2024-11-01','2024-11-10','QC2025','200000.00','1000','Plated','Shuttle Service','Quantum Hotel','TechMedia','Renewable Energy');

-- Research project funding allocations
CREATE TABLE research_project_funding
(
    funding_id               TEXT PRIMARY KEY,
    project_id               TEXT,
    funding_agency           TEXT,
    grant_number             TEXT,
    fiscal_year              INTEGER,
    allocated_amount         REAL,
    disbursed_amount         REAL,
    remaining_balance        REAL,
    start_date               TEXT,
    end_date                 TEXT,
    principal_investigator   TEXT,
    co_investigator          TEXT,
    funding_category         TEXT,
    award_type               TEXT,
    review_score             REAL,
    funding_status           TEXT,
    reporting_deadline       TEXT,
    compliance_requirements  TEXT,
    indirect_cost_rate       REAL,
    total_expenditure         REAL,
    amendment_number         INTEGER,
    extension_granted        TEXT,
    special_conditions       TEXT,
    matching_funds_required  TEXT,
    currency                 TEXT
);

INSERT INTO research_project_funding VALUES
('FUND001','PRJ1001','National Science Foundation','NSF-2023-001','2023',500000.00,300000.00,200000.00,'2023-07-01','2026-06-30','Dr Emily Clark','Dr Mark Patel','Basic Research','Standard','4.5','Active','2024-12-31','None',0.10,300000.00,2,'Yes','Equipment Purchase','Yes','USD');

INSERT INTO research_project_funding VALUES
('FUND002','PRJ2002','Department of Energy','DOE-2022-045','2022',750000.00,750000.00,0.00,'2022-01-15','2025-01-14','Dr Susan Miller','Dr Alan Wu','Applied Research','Competitive','4.8','Closed','2024-05-15','Safety Audit',0.12,750000.00,1,'No','Facility Upgrade','No','USD');

INSERT INTO research_project_funding VALUES
('FUND003','PRJ3003','Health Research Institute','HRI-2024-012','2024',300000.00,100000.00,200000.00,'2024-03-01','2027-02-28','Dr Robert Kim','Dr Linda Gomez','Clinical Study','Pilot','4.2','Active','2025-03-01','IRB Approval',0.08,100000.00,0,'Yes','Data Collection','Yes','USD');

-- Facility lease agreements
CREATE TABLE facility_lease_agreement
(
    lease_id                  TEXT PRIMARY KEY,
    facility_id               TEXT,
    lessee_organization       TEXT,
    lease_start_date          TEXT,
    lease_end_date            TEXT,
    monthly_rent              REAL,
    security_deposit          REAL,
    lease_type                TEXT,
    renewal_option            TEXT,
    maintenance_responsibility TEXT,
    insurance_requirement     TEXT,
    permitted_use             TEXT,
    square_feet               INTEGER,
    floor_number              INTEGER,
    building_name             TEXT,
    address_line1             TEXT,
    address_line2             TEXT,
    city                      TEXT,
    state                     TEXT,
    zip_code                  TEXT,
    contact_name              TEXT,
    contact_phone             TEXT,
    contact_email             TEXT,
    escalation_clause        TEXT,
    termination_notice_days  INTEGER,
    environmental_compliance  TEXT,
    parking_spaces_included   INTEGER,
    utilities_included        TEXT,
    signatory_name            TEXT,
    signatory_title           TEXT
);

INSERT INTO facility_lease_agreement VALUES
('LEASE001','FAC100','Student Union','2023-08-01','2028-07-31',2500.00,5000.00,'Full Service','Option to Renew','Lessee','Liability Insurance','Event Space',5000,2,'Union Hall','123 Campus Dr','Suite 200','Springfield','IL','62704','John Doe','555-1234','jdoe@university.edu','5% annual increase',90,'Compliant','10','Included','Jane Smith','Facilities Manager');

INSERT INTO facility_lease_agreement VALUES
('LEASE002','FAC200','Research Center','2022-01-15','2025-01-14',4000.00,8000.00,'Net Lease','No Renewal','Lessor','Property Insurance','Lab Space',3000,1,'Science Building','456 Research Rd','', 'Springfield','IL','62704','Alice Brown','555-5678','abrown@university.edu','3% annual increase',60,'Compliant','5','Not Included','Michael Green','Director of Research');

INSERT INTO facility_lease_agreement VALUES
('LEASE003','FAC300','Athletics Department','2024-05-01','2029-04-30',3500.00,7000.00,'Full Service','Option to Renew','Lessor','General Liability','Gymnasium',8000,0,'Athletics Center','789 Sport Ln','', 'Springfield','IL','62704','Tom White','555-9012','twhite@university.edu','4% annual increase',120,'Compliant','12','Included','Laura Black','Athletics Director');

-- Student exchange program records
CREATE TABLE student_exchange_program
(
    exchange_id                TEXT PRIMARY KEY,
    student_id                 TEXT,
    home_university            TEXT,
    host_university            TEXT,
    program_name               TEXT,
    start_date                 TEXT,
    end_date                   TEXT,
    academic_term              TEXT,
    credits_earned             INTEGER,
    gpa_before_exchange       REAL,
    gpa_after_exchange        REAL,
    language_proficiency       TEXT,
    funding_source             TEXT,
    stipend_amount            REAL,
    housing_arrangement       TEXT,
    orientation_completed     TEXT,
    cultural_workshop_attended TEXT,
    advisor_name               TEXT,
    advisor_email              TEXT,
    insurance_provider        TEXT,
    visa_status               TEXT,
    emergency_contact_name    TEXT,
    emergency_contact_phone   TEXT,
    health_clearance_obtained TEXT,
    travel_itinerary           TEXT,
    program_status            TEXT,
    evaluation_score           REAL,
    final_report_submitted    TEXT,
    alumni_network_enrolled   TEXT,
    scholarship_awarded        TEXT
);

INSERT INTO student_exchange_program VALUES
('EXCH001','STU1001','University A','University B','Spring 2024 Exchange','2024-01-15','2024-05-20','Spring','15',3.5,3.7,'Advanced','Scholarship',1200.00,'On-Campus Dorm','Yes','Yes','Dr Emily Clark','eclark@university.edu','GlobalInsure','Approved','Jane Doe','555-1111','Yes','Itinerary001','Completed',4.2,'Yes','Yes','Yes');

INSERT INTO student_exchange_program VALUES
('EXCH002','STU2002','University C','University D','Fall 2023 Exchange','2023-08-01','2023-12-15','Fall','12',3.2,3.4,'Intermediate','Self-funded',0.00,'Homestay','Yes','No','Dr Mark Patel','mpatel@university.edu','WorldCover','Pending','John Smith','555-2222','No','Itinerary002','Pending',0.0,'No','No','No');

INSERT INTO student_exchange_program VALUES
('EXCH003','STU3003','University E','University F','Summer 2024 Exchange','2024-06-10','2024-08-20','Summer','6',3.8,3.9,'Advanced','Grant',800.00,'University Housing','Yes','Yes','Dr Linda Gomez','lgomez@university.edu','HealthSure','Approved','Emily Davis','555-3333','Yes','Itinerary003','Completed',4.8,'Yes','Yes','Yes');

-- Grant application review records
CREATE TABLE grant_application_review
(
    review_id                  TEXT PRIMARY KEY,
    application_id             TEXT,
    reviewer_id                TEXT,
    review_date                TEXT,
    overall_score              REAL,
    methodology_score          REAL,
    impact_score               REAL,
    feasibility_score          REAL,
    budget_justification_score REAL,
    relevance_to_mission_score REAL,
    strengths_summary          TEXT,
    weaknesses_summary         TEXT,
    recommendation             TEXT,
    conflict_of_interest       TEXT,
    reviewer_comments          TEXT,
    allocated_funding_amount   REAL,
    funding_decision           TEXT,
    decision_date              TEXT,
    follow_up_required         TEXT,
    follow_up_deadline         TEXT,
    additional_documents_needed TEXT,
    reviewer_affiliation       TEXT,
    reviewer_contact_email     TEXT,
    reviewer_contact_phone     TEXT,
    review_round               TEXT,
    confidentiality_level      TEXT,
    revised_budget_requested   REAL,
    final_decision             TEXT,
    final_decision_date        TEXT,
    notes                      TEXT
);

INSERT INTO grant_application_review VALUES
('REV001','APP1001','REV001','2023-11-20',4.5,4.0,4.8,4.2,4.1,4.6','Strong methodology, high impact','Minor budget ambiguity','Fund','No','Recommend full funding','50000.00','Approved','2023-12-01','No','', 'None','Dept of Science','reviewer1@university.edu','555-4444','Round1','High',0.00,'Funded','2023-12-02','All criteria met');

INSERT INTO grant_application_review VALUES
('REV002','APP2002','REV002','2023-10-15',3.2,3.0,3.5,3.1,3.0,3.3','Good relevance but limited feasibility','Unclear timeline','Conditional','Yes','Recommend partial funding','25000.00','Conditional','2023-11-01','Yes','2024-01-15','Revised budget','Dept of Arts','reviewer2@university.edu','555-5555','Round1','Medium',10000.00,'Pending','2023-12-15','Awaiting revisions');

INSERT INTO grant_application_review VALUES
('REV003','APP3003','REV003','2023-09-05',2.5,2.0,2.8,2.4,2.3,2.6','Weak methodology and insufficient impact','Budget unrealistic','Reject','No','Recommend rejection','0.00','Rejected','2023-09-20','No','', 'None','Dept of Engineering','reviewer3@university.edu','555-6666','Round1','Low',0.00,'Rejected','2023-09-20','Does not meet criteria');

-- Campus energy meter readings
CREATE TABLE campus_energy_meter
(
    meter_id                   TEXT PRIMARY KEY,
    building_id                TEXT,
    meter_serial_number        TEXT,
    installation_date          TEXT,
    last_calibration_date      TEXT,
    meter_type                 TEXT,
    reading_date               TEXT,
    kilowatt_hours             REAL,
    voltage                    REAL,
    current_amperage           REAL,
    power_factor               REAL,
    temperature_celsius        REAL,
    humidity_percent           REAL,
    status                     TEXT,
    maintenance_required       TEXT,
    last_maintenance_date      TEXT,
    next_maintenance_due       TEXT,
    energy_cost_per_kwh        REAL,
    total_cost                 REAL,
    carbon_footprint_kg        REAL,
    renewable_percentage       REAL,
    peak_demand_kw             REAL,
    off_peak_demand_kw         REAL,
    demand_response_participation TEXT,
    comments                   TEXT,
    recorded_by                TEXT,
    verification_status        TEXT,
    audit_timestamp            TEXT,
    data_source                TEXT,
    anomaly_detected           TEXT
);

INSERT INTO campus_energy_meter VALUES
('MTR001','BLDG01','SN1001','2020-01-15','2023-12-01','Electric','2024-01-01',1500.00,120.0,12.5,0.95,22.5,45.0,'Active','No','2023-06-01','2024-06-01',0.12,180.00,135.0,30.0,80.0,20.0','Yes','Routine reading','Automated','Verified','2024-01-01 08:00','SmartMeter','No');

INSERT INTO campus_energy_meter VALUES
('MTR002','BLDG02','SN2002','2019-05-10','2023-11-15','Electric','2024-01-01',2300.00,115.0,20.0,0.92,21.0,50.0,'Active','Yes','2023-07-15','2024-07-15',0.12,276.00,207.0,25.0,95.0,35.0','No','High usage detected','Manual','Pending','2024-01-01 09:00','SmartMeter','Yes');

INSERT INTO campus_energy_meter VALUES
('MTR003','BLDG03','SN3003','2021-03-20','2023-10-05','Electric','2024-01-01',800.00,118.0,6.8,0.97,23.0,40.0,'Active','No','2023-05-20','2024-05-20',0.12,96.00,72.0,40.0,60.0,15.0','Yes','Normal','Automated','Verified','2024-01-01 10:00','SmartMeter','No');

-- Library acquisition orders
CREATE TABLE library_acquisition_order
(
    order_id                    TEXT PRIMARY KEY,
    isbn                        TEXT,
    title                       TEXT,
    author                      TEXT,
    publisher                   TEXT,
    publication_year            INTEGER,
    edition                     TEXT,
    format_type                 TEXT,
    quantity_ordered            INTEGER,
    unit_price                  REAL,
    total_cost                  REAL,
    order_date                  TEXT,
    expected_delivery_date      TEXT,
    actual_delivery_date        TEXT,
    vendor_id                   TEXT,
    vendor_name                 TEXT,
    library_section             TEXT,
    catalog_location            TEXT,
    call_number                 TEXT,
    subject_category            TEXT,
    language                    TEXT,
    binding_type                TEXT,
    physical_dimensions         TEXT,
    weight_grams                REAL,
    isbn_13                     TEXT,
    doi                         TEXT,
    accession_number            TEXT,
    barcode                     TEXT,
    received_by                 TEXT,
    processing_status           TEXT,
    notes                       TEXT,
    budget_code                 TEXT,
    fund_source                 TEXT,
    approval_status             TEXT,
    approved_by                 TEXT,
    approval_date               TEXT,
    supplier_contact_email      TEXT,
    supplier_contact_phone      TEXT
);

INSERT INTO library_acquisition_order VALUES
('ORD001','978-0131103627','The C Programming Language','Kernighan, Brian; Ritchie, Dennis','Prentice Hall',1988,'2nd','Print',10,45.00,450.00,'2023-09-01','2023-09-15','2023-09-14','VEND001','Academic Books Ltd','Computer Science','Stacks A1','QA76.73.C15','Programming','English','Hardcover','9x6x1 inches',800,'9780131103627','10.1000/182','ACC001','1234567890123','PROC001','Processed','First edition replacement','LIB001','General','Approved','Head Librarian','2023-08-25','books@academicbooks.com','555-7777');

INSERT INTO library_acquisition_order VALUES
('ORD002','978-0262033848','Introduction to Algorithms','Cormen, Thomas; Leiserson, Charles; Rivest, Ronald; Stein, Clifford','MIT Press',2009,'3rd','Print',5,95.00,475.00,'2023-10-05','2023-10-20','2023-10-19','VEND002','Tech Publishers','Engineering','Stacks B3','QA76.6 .I58','Algorithms','English','Paperback','8x5x1 inches',600,'9780262033848','10.1000/183','ACC002','9876543210987','PROC002','Pending','High demand title','LIB002','STEM','Pending','Dept Chair','2023-09-30','techpub@publishers.com','555-8888');

INSERT INTO library_acquisition_order VALUES
('ORD003','978-0201616224','The Pragmatic Programmer','Andrew Hunt; David Thomas','Addison-Wesley',1999,'1st','Print',7,55.00,385.00,'2023-11-10','2023-11-25','2023-11-24','VEND003','Programming Books Co','Computer Science','Stacks C2','QA76.6 .H86','Software Development','English','Hardcover','9x7x1 inches',750,'9780201616224','10.1000/184','ACC003','1122334455667','PROC003','Processed','Core curriculum material','LIB003','Computer Science','Approved','Dean of CS','2023-11-01','progbooks@booksco.com','555-9999');

-- Health service visit logs
CREATE TABLE health_service_visit_log
(
    visit_id                 TEXT PRIMARY KEY,
    patient_id               TEXT,
    visit_date               TEXT,
    visit_time               TEXT,
    department               TEXT,
    provider_name            TEXT,
    provider_id              TEXT,
    visit_type               TEXT,
    reason_for_visit         TEXT,
    diagnosis_code           TEXT,
    diagnosis_description    TEXT,
    procedure_code           TEXT,
    procedure_description    TEXT,
    prescription_given       TEXT,
    medication_dosage        TEXT,
    follow_up_required       TEXT,
    follow_up_date           TEXT,
    insurance_provider       TEXT,
    policy_number            TEXT,
    copay_amount             REAL,
    total_charge             REAL,
    amount_paid              REAL,
    balance_due              REAL,
    notes                    TEXT,
    referral_source          TEXT,
    appointment_status       TEXT,
    vital_signs_recorded    TEXT,
    blood_pressure          TEXT,
    heart_rate               INTEGER,
    temperature_celsius      REAL,
    weight_kg                REAL,
    height_cm                REAL,
    bmi                      REAL,
    smoking_status           TEXT,
    alcohol_use              TEXT,
    allergies                TEXT,
    immunizations_up_to_date TEXT,
    laboratory_tests_ordered TEXT,
    imaging_studies_ordered  TEXT,
    discharge_instructions   TEXT
);

INSERT INTO health_service_visit_log VALUES
('VIS001','PAT1001','2024-02-14','09:30','Primary Care','Dr Alice Nguyen','PROV001','Checkup','Annual physical','Z00.00','General adult health exam','','', 'None','', 'No','','HealthPlus','HP123456','20.00','150.00','150.00','0.00','All vitals normal','Self','Completed','BP:120/80; HR:72; Temp:36.8','120/80','72',36.8,70.0,175,22.9','Non-Smoker','No','Penicillin','Yes','CBC, Lipid Panel','Chest X-Ray','Continue regular exercise');

INSERT INTO health_service_visit_log VALUES
('VIS002','PAT2002','2024-03-05','14:15','Dermatology','Dr Brian Lee','PROV002','Consultation','Skin rash','L30.9','Other dermatitis','D001','Topical steroid prescription','Hydrocortisone Cream','Apply twice daily','Yes','2024-03-12','MediCare','MC987654','15.00','200.00','100.00','100.00','Prescribed medication, advised follow-up','Referral from primary care','Completed','BP:130/85; HR:78; Temp:37.0','130/85','78',37.0,68.0,170,23.5','Non-Smoker','Occasional','None','Yes','None','None','Apply medication, keep area clean');

INSERT INTO health_service_visit_log VALUES
('VIS003','PAT3003','2024-01-20','11:00','Emergency','Dr Carla Gomez','PROV003','Emergency','Severe abdominal pain','R10.9','Unspecified abdominal pain','','', 'None','', 'Yes','2024-02-01','HealthFirst','HF345678','30.00','1200.00','1200.00','0.00','CT scan ordered, admission for observation','Ambulance','Completed','BP:140/90; HR:95; Temp:38.5','140/90','95',38.5,85.0,180,26.2','Smoker','Yes','Latex','No','CBC, Metabolic Panel','Abdominal CT','Admit for monitoring, IV fluids');