-- Academic Department information
CREATE TABLE academic_department
(
    dept_id                     TEXT PRIMARY KEY,
    dept_name                   TEXT,
    college                     TEXT,
    dean                        TEXT,
    office_location             TEXT,
    phone                        TEXT,
    email                        TEXT,
    budget_amount                INTEGER,
    num_faculty                  INTEGER,
    num_staff                    INTEGER,
    num_students                 INTEGER,
    building_code                TEXT,
    creation_date                TEXT,
    accreditation_status        TEXT,
    research_funds               REAL,
    undergraduate_programs      INTEGER,
    graduate_programs           INTEGER,
    alumni_donation_total       REAL,
    last_accreditation_review   TEXT,
    strategic_plan_version      TEXT,
    notes                       TEXT
);

INSERT INTO academic_department VALUES
('D001','Computer Science','Engineering','Alice Smith','Eng 101','5551234567','csdept@univ.edu',5000000,80,20,1200,'B01','2001-09-01','Accredited','2000000',30,20,1500000,'2023-06-15','v3','Leading department in AI');

INSERT INTO academic_department VALUES
('D002','Biology','Science','Bob Johnson','Sci 202','5559876543','biology@univ.edu',3000000,55,15,800,'B02','1998-01-15','Accredited','1200000',25,10,900000,'2022-11-30','v2','Strong research in genetics');

INSERT INTO academic_department VALUES
('D003','History','Arts','Carol Lee','Arts 303','5555551212','history@univ.edu',1500000,30,10,500,'B03','2005-08-20','Accredited','400000',20,5,300000,'2023-01-10','v1','Focus on public history');


-- Research Cluster metadata
CREATE TABLE research_cluster
(
    cluster_id                 TEXT PRIMARY KEY,
    cluster_name               TEXT,
    focus_area                 TEXT,
    lead_investigator          TEXT,
    host_department            TEXT,
    start_date                 TEXT,
    end_date                   TEXT,
    total_funding              REAL,
    federal_funding            REAL,
    private_funding            REAL,
    num_projects               INTEGER,
    num_postdocs               INTEGER,
    num_students               INTEGER,
    publications_per_year      INTEGER,
    patents_granted            INTEGER,
    collaborations_external    INTEGER,
    data_shared_gb             REAL,
    high_performance_compute   TEXT,
    ethical_approval_status    TEXT,
    reporting_frequency       TEXT,
    notes                      TEXT
);

INSERT INTO research_cluster VALUES
('RC01','Quantum Computing','Physics','David Wu','Physics','2020-01-01','2025-12-31',25000000,15000000,10000000,12,30,45,25,8,15,1200,'Yes','Approved','Quarterly','Flagship quantum initiative');

INSERT INTO research_cluster VALUES
('RC02','Urban Sustainability','Environmental Science','Eva Green','Environmental Studies','2019-06-15','2024-06-14',18000000,8000000,10000000,9,20,30,18,5,12,950,'No','Pending','Annual','Focus on green infrastructure');

INSERT INTO research_cluster VALUES
('RC03','Digital Humanities','Humanities','Frank Miller','History','2021-09-01','2026-08-31',12000000,3000000,9000000,7,15,25,12,2,10,650,'Yes','Approved','Semiannual','Explores AI in text analysis');


-- Student Entrepreneurship Fund
CREATE TABLE student_entrepreneurship_fund
(
    fund_id                TEXT PRIMARY KEY,
    fund_name              TEXT,
    fiscal_year            TEXT,
    total_allocation       REAL,
    allocated_to_startups  INTEGER,
    total_awarded_amount   REAL,
    average_award_amount   REAL,
    funding_source         TEXT,
    application_deadline   TEXT,
    disbursement_date      TEXT,
    eligibility_criteria   TEXT,
    mentorship_program     TEXT,
    number_of_mentors      INTEGER,
    sector_focus           TEXT,
    geographic_focus       TEXT,
    reporting_requirements TEXT,
    audit_completed        TEXT,
    notes                  TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    status                 TEXT
);

INSERT INTO student_entrepreneurship_fund VALUES
('F001','Campus Innovation Fund','2023',500000,15,300000,20000,'University Endowment','2023-03-01','2023-04-15','Undergraduate','Mentor Match','10','Tech','Local','Quarterly Report','Yes','Supports early stage ideas','2023-02-01','2023-05-01','Active');

INSERT INTO student_entrepreneurship_fund VALUES
('F002','Social Impact Grant','2022',250000,8,180000,22500,'Private Donor','2022-05-01','2022-06-10','All Students','Impact Coaches','6','Health','Regional','Biannual Report','Yes','Focus on community health','2022-04-01','2022-07-01','Closed');

INSERT INTO student_entrepreneurship_fund VALUES
('F003','Green Startup Seed','2024',400000,12,250000,20833,'Corporate Sponsor','2024-01-15','2024-02-28','Graduate','Sustainability Mentors','8','Energy','National','Annual Report','No','Encourages clean tech','2023-12-01','2024-03-01','Planned');


-- Faculty Collaboration Space
CREATE TABLE faculty_collaboration_space
(
    space_id                TEXT PRIMARY KEY,
    space_name              TEXT,
    building                TEXT,
    floor_number            INTEGER,
    capacity_seats          INTEGER,
    reservation_system      TEXT,
    available_equipment     TEXT,
    wifi_speed_mbps         REAL,
    lighting_type           TEXT,
    acoustic_rating         TEXT,
    opening_hours           TEXT,
    booking_policy          TEXT,
    contact_person          TEXT,
    contact_email           TEXT,
    maintenance_schedule    TEXT,
    last_renovation_date    TEXT,
    sustainability_features TEXT,
    security_access_level   TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    status                  TEXT
);

INSERT INTO faculty_collaboration_space VALUES
('CS01','Innovation Lab','Engineering Hall',2,30,'RoomScheduler','Projector,Whiteboard','500','LED','A+','08:00-20:00','Faculty Only','Laura Kim','innovationlab@univ.edu','Monthly','2021-09-15','Energy Efficient Lights','Restricted','Collaboration hub for research','2022-01-10','2023-11-05','Active');

INSERT INTO faculty_collaboration_space VALUES
('CS02','Interdisciplinary Hub','Science Center',3,25,'SpaceBooker','Video Conferencing,Smart Board','450','Fluorescent','B','09:00-18:00','Open to All Faculty','Mark Patel','hub@univ.edu','Quarterly','2020-05-20','Low-Flow Faucets','Secure','Supports cross-department projects','2021-06-01','2023-08-20','Active');

INSERT INTO faculty_collaboration_space VALUES
('CS03','Data Science Suite','Tech Tower',1,20,'BookingApp','High-Perf Compute,Data Viz Screens','600','LED','A','07:30-22:00','Reserved for Data Science','Nina Gomez','datascience@univ.edu','Biannual','2022-11-10','Recycled Materials','Limited','Dedicated for analytics work','2022-12-05','2023-10-12','Active');


-- Community Health Center
CREATE TABLE community_health_center
(
    center_id               TEXT PRIMARY KEY,
    center_name             TEXT,
    address                 TEXT,
    city                    TEXT,
    state                   TEXT,
    zip_code                TEXT,
    phone_number            TEXT,
    email_address           TEXT,
    opening_date            TEXT,
    operating_hours         TEXT,
    number_of_clinics       INTEGER,
    total_staff             INTEGER,
    physicians_on_staff     INTEGER,
    nurses_on_staff         INTEGER,
    allied_health_professionals INTEGER,
    services_offered        TEXT,
    annual_patient_visits   INTEGER,
    insurance_accepted      TEXT,
    community_outreach_programs TEXT,
    funding_source          TEXT,
    accreditation_status   TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    status                  TEXT
);

INSERT INTO community_health_center VALUES
('HC01','Westside Wellness Center','123 Main St','Springfield','IL','62704','5553219876','westside@univ.edu','2015-04-01','08:00-18:00',5,40,10,20,10,'Primary Care,Dental,Physical Therapy',120000,'Medicaid,Private','Health Fair,Screenings','University Grant','Accredited','Serves local community','2020-01-15','2023-06-30','Active');

INSERT INTO community_health_center VALUES
('HC02','Eastside Community Clinic','456 Oak Ave','Springfield','IL','62705','5556543210','eastside@univ.edu','2018-09-15','07:00-19:00',3,35,8,18,9,'Urgent Care,Behavioral Health,Pharmacy',95000,'Medicare,Private','Vaccination Drives,Wellness Workshops','Donations & Grants','Accredited','Focus on preventive care','2021-03-20','2023-08-10','Active');

INSERT INTO community_health_center VALUES
('HC03','Northside Health Hub','789 Pine Rd','Springfield','IL','62706','5559876543','northside@univ.edu','2020-01-10','09:00-17:00',4,30,7,15,8,'Family Medicine,Lab Services,Rehab',80000,'Private','Community Health Nights','State Funding','Pending','Expanding telehealth','2022-02-05','2023-09-22','Planned');


-- Campus Transport Asset Telemetry
CREATE TABLE campus_transport_asset_telemetry
(
    telemetry_id           TEXT PRIMARY KEY,
    vehicle_id             TEXT,
    timestamp              TEXT,
    latitude               REAL,
    longitude              REAL,
    speed_kmh              REAL,
    engine_rpm             INTEGER,
    fuel_level_percent     REAL,
    battery_voltage        REAL,
    odometer_km            REAL,
    passenger_count        INTEGER,
    door_status            TEXT,
    air_conditioning_status TEXT,
    heating_status         TEXT,
    maintenance_flag       TEXT,
    gps_signal_strength    INTEGER,
    route_id               TEXT,
    driver_id              TEXT,
    incident_reported      TEXT,
    notes                  TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    status                 TEXT
);

INSERT INTO campus_transport_asset_telemetry VALUES
('T001','V001','2023-10-01T08:15:00','40.1123','-88.2245','45.2','2500','78.5','12.6','15230','12','Closed','On','Off','None','5','R01','D001','No','Normal operation','2023-10-01','2023-10-01','Active');

INSERT INTO campus_transport_asset_telemetry VALUES
('T002','V002','2023-10-01T08:20:00','40.1130','-88.2250','32.0','1900','55.0','12.4','18050','8','Open','Off','On','Check Engine','3','R02','D002','Yes','Engine warning light','2023-10-01','2023-10-01','Active');

INSERT INTO campus_transport_asset_telemetry VALUES
('T003','V003','2023-10-01T08:25:00','40.1145','-88.2260','60.5','3000','90.0','12.8','21000','20','Closed','On','Off','None','7','R03','D003','No','All systems normal','2023-10-01','2023-10-01','Active');


-- Digital Learning Pathway Progress
CREATE TABLE digital_learning_pathway_progress
(
    progress_id            TEXT PRIMARY KEY,
    learner_id             TEXT,
    pathway_id             TEXT,
    module_id              TEXT,
    enrollment_date        TEXT,
    completion_date        TEXT,
    status                 TEXT,
    score_percentage       REAL,
    time_spent_minutes    INTEGER,
    attempts               INTEGER,
    last_accessed          TEXT,
    certificate_issued     TEXT,
    feedback_score         REAL,
    mentor_assigned        TEXT,
    mentor_feedback        TEXT,
    resources_used         TEXT,
    discussion_participation INTEGER,
    badge_earned           TEXT,
    notes                  TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    source_system          TEXT
);

INSERT INTO digital_learning_pathway_progress VALUES
('P001','L001','DP01','M001','2023-01-10','2023-02-15','Completed','92.5',180,2,'2023-02-14','Yes','4.7','MTR01','Excellent progress','Videos,Readings',5,'Data Analyst Badge','Great work','2023-02-15','2023-02-15','LMS');

INSERT INTO digital_learning_pathway_progress VALUES
('P002','L002','DP02','M005','2023-03-05',NULL,'InProgress','67.0',90,1,'2023-04-01','No','3.2','MTR02','Needs improvement','Articles',2,'','On track','Pending assessment','2023-04-01','2023-04-01','LMS');

INSERT INTO digital_learning_pathway_progress VALUES
('P003','L003','DP01','M003','2022-11-20','2023-01-05','Completed','88.0',150,1,'2023-01-04','Yes','4.5','MTR03','Consistent','Videos,Quizzes',4,'Project Management Badge','Well done','2023-01-05','2023-01-05','LMS');


-- Sustainability Infrastructure Project Detail
CREATE TABLE sustainability_infrastructure_project_detail
(
    proj_detail_id          TEXT PRIMARY KEY,
    project_id              TEXT,
    component_name          TEXT,
    description             TEXT,
    capacity_kw             REAL,
    expected_annual_savings REAL,
    installation_date       TEXT,
    contractor               TEXT,
    warranty_years          INTEGER,
    maintenance_interval_months INTEGER,
    status                  TEXT,
    last_inspection_date   TEXT,
    compliance_certified    TEXT,
    funding_source          TEXT,
    allocated_budget        REAL,
    actual_spent            REAL,
    carbon_reduction_tons   REAL,
    water_savings_gallons   REAL,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    overall_project_status  TEXT
);

INSERT INTO sustainability_infrastructure_project_detail VALUES
('PD001','SP001','Solar Array','Rooftop photovoltaic system',2500,1200000,'2022-06-15','SunPower Inc',25,12,'Operational','2023-06-01','Yes','University Green Fund',1500000,1480000,500,200000,'Installed on main admin building','2022-07-01','2023-06-15','Completed');

INSERT INTO sustainability_infrastructure_project_detail VALUES
('PD002','SP002','Geothermal HVAC','Heating and cooling using ground source heat pumps',1800,800000,'2023-01-20','EcoTherm LLC',20,24,'Under Construction','2023-08-01','No','State Energy Grant',900000,400000,300,120000,'Phase 1 of campus-wide rollout','2023-02-10','2023-08-01','InProgress');

INSERT INTO sustainability_infrastructure_project_detail VALUES
('PD003','SP003','Rainwater Harvest','Collection system for irrigation',500,250000,'2021-09-10','AquaCollect',15,18,'Operational','2022-09-15','Yes','Campus Sustainability Initiative',300000,290000,100,50000,'Supplies irrigation for landscape','2021-10-01','2022-09-20','Completed');


-- External Partner Agreement
CREATE TABLE external_partner_agreement
(
    agreement_id            TEXT PRIMARY KEY,
    partner_name            TEXT,
    partner_type            TEXT,
    contact_person          TEXT,
    contact_email           TEXT,
    start_date              TEXT,
    end_date                TEXT,
    agreement_scope         TEXT,
    deliverables            TEXT,
    milestones              TEXT,
    budget_amount           REAL,
    payment_terms           TEXT,
    confidentiality_clause  TEXT,
    intellectual_property   TEXT,
    dispute_resolution      TEXT,
    renewal_option          TEXT,
    status                  TEXT,
    last_amended_date       TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    governing_law           TEXT
);

INSERT INTO external_partner_agreement VALUES
('A001','Tech Innovations LLC','Industry','Samuel Reed','samuel.reed@techinnov.com','2023-01-01','2025-12-31','Joint research on AI','Prototype,Report','Phase1-2023,Phase2-2024',2500000,'Net30','Yes','Joint ownership','Arbitration','Yes','Active','2024-02-15','Collaboration on autonomous systems','2022-12-01','2024-02-15','US Law');

INSERT INTO external_partner_agreement VALUES
('A002','Global Health Org','Nonprofit','Maria Gomez','maria.gomez@globalhealth.org','2022-05-01','2024-04-30','Community health outreach','Workshops,Materials','Kickoff-2022,Midterm-2023,Final-2024',500000,'Milestone payments','Yes','University retains IP','Mediation','No','Active','2023-06-10','Focus on rural clinics','2022-04-01','2023-06-10','CA Law');

INSERT INTO external_partner_agreement VALUES
('A003','EcoEnergy Partners','Corporation','Liam Chen','liam.chen@ecoenergy.com','2021-09-01','2026-08-31','Renewable energy campus project','Solar panels,Monitoring system','Design-2022,Install-2023,Commission-2024',8000000,'Quarterly','Yes','University holds exclusive license','Arbitration','Yes','Active','2024-01-20','Phase 1 completed, Phase 2 planning','2021-08-01','2024-01-20','NY Law');


-- Library Special Collection
CREATE TABLE library_special_collection
(
    collection_id            TEXT PRIMARY KEY,
    collection_name          TEXT,
    description              TEXT,
    acquisition_date         TEXT,
    primary_subject          TEXT,
    total_items              INTEGER,
    items_digitized          INTEGER,
    preservation_status      TEXT,
    storage_location         TEXT,
    curator_name             TEXT,
    access_restrictions      TEXT,
    funding_source           TEXT,
    annual_maintenance_budget REAL,
    last_inventory_date      TEXT,
    condition_assessment     TEXT,
    notable_item_1           TEXT,
    notable_item_2           TEXT,
    notable_item_3           TEXT,
    usage_statistics_2022   INTEGER,
    usage_statistics_2023   INTEGER,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    status                   TEXT
);

INSERT INTO library_special_collection VALUES
('SC001','Archival Newspapers','Historical newspaper collection from 1800s','2005-03-12','History',12000,8000,'Good','Vault A','Emily Rivera','Restricted to on-site','University Fund',20000,'2023-01-15','Excellent','The Daily Chronicle 1850-01-01','The Gazette 1865-07-04','The Times 1872-12-31',500,620,'Digitization ongoing','2005-03-12','2023-06-01','Active');

INSERT INTO library_special_collection VALUES
('SC002','Rare Manuscripts','Handwritten manuscripts from medieval period','2010-11-05','Literature',350,350,'Excellent','Vault B','David Liu','Restricted','Donor Gift',15000,'2022-12-20','Excellent','Codex Aureus','Manuscript of Beowulf','Illuminated Psalter',80,95,'High demand for scholars','2010-11-05','2023-05-20','Active');

INSERT INTO library_special_collection VALUES
('SC003','Science Photographs','Collection of historic scientific photographs','2018-07-22','Science',5000,2500,'Fair','Storage Room C','Sofia Patel','Open with citation','Grant Funding',12000,'2023-03-10','Fair','First Moon Landing Photo','First Electron Microscopy Image','First DNA Double Helix Photo',300,350,'Increasing digitization','2018-07-22','2023-07-01','Active');