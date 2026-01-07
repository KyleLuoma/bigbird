-- Music programs offered by the district
CREATE TABLE music_programs
(
    program_code                TEXT NOT NULL PRIMARY KEY,
    title                       TEXT,
    genre                       TEXT,
    start_date                  DATE,
    end_date                    DATE,
    instructor_name             TEXT,
    instructor_email            TEXT,
    annual_budget_usd           REAL,
    student_capacity            INTEGER,
    enrollment_count            INTEGER,
    rehearsal_hours_per_week    REAL,
    performance_dates           TEXT,
    venue_name                  TEXT,
    equipment_list              TEXT,
    accreditation_status        TEXT,
    external_funding_source     TEXT,
    grant_amount_usd            REAL,
    schedule_notes              TEXT,
    program_status              TEXT,
    created_at                  DATE
);

INSERT INTO music_programs VALUES
('MP001','Jazz Ensemble','Jazz','2024-09-01','2025-06-30','Lena Carter','lena.carter@example.com',120000,60,45,4.5,'2025-01-15;2025-05-20','Central Auditorium','Saxophones,Trumpets','Accredited','City Arts Grant',25000,'Evening rehearsals','Active','2024-01-10');

INSERT INTO music_programs VALUES
('MP002','Orchestra Classics','Classical','2024-08-15','2025-05-15','Marco Silva','marco.silva@example.com',95000,80,70,5.0,'2025-03-10','Main Hall','Violins,Cellos,Flutes','Pending','State Music Fund',18000,'Weekly concerts','Planned','2024-02-05');

INSERT INTO music_programs VALUES
('MP003','Hip Hop Beats','Hip Hop','2024-10-01','2025-04-30','Jenna Lee','jenna.lee@example.com',75000,50,20,3.0,'2025-02-05','Gymnasium','Turntables,Microphones','Accredited','Private Sponsor',12000,'Monthly showcases','Active','2024-03-12');

-- Teacher training courses catalog
CREATE TABLE teacher_training_courses
(
    course_id                   TEXT NOT NULL PRIMARY KEY,
    course_name                 TEXT,
    provider                    TEXT,
    duration_hours              REAL,
    modality                    TEXT,
    cost_usd                    REAL,
    certification               TEXT,
    target_audience             TEXT,
    max_participants            INTEGER,
    enrollment_current          INTEGER,
    start_date                  DATE,
    end_date                    DATE,
    instructor                  TEXT,
    contact_phone               TEXT,
    syllabus_url                TEXT,
    assessment_method           TEXT,
    credits                     INTEGER,
    feedback_score_avg          REAL,
    status                      TEXT,
    created_timestamp           DATE
);

INSERT INTO teacher_training_courses VALUES
('TC101','Differentiated Instruction','EduCo','40','Online',1500,'PD Certificate','All Grades',30,18,'2024-11-01','2024-12-15','Dr Alan Moore','5551234567','http://edco.org/diffinst','Project','2',4.5,'Open','2024-04-01');

INSERT INTO teacher_training_courses VALUES
('TC102','Classroom Technology Integration','TechEd','30','Hybrid',2000,'TechBadge','STEM Teachers',25,12,'2025-01-10','2025-02-05','Ms Priya Patel','5559876543','http://teched.org/techint','Quiz','1',4.2,'Scheduled','2024-05-10');

INSERT INTO teacher_training_courses VALUES
('TC103','Trauma-Informed Practices','Wellness Institute','35','In-Person',1800,'Wellness Cert','Counselors',20,5,'2025-03-01','2025-04-12','Mr Daniel Cho','5552223344','http://wellness.org/trauma','Reflection Paper','1',4.8,'Planned','2024-06-15');

-- Facility green certifications records
CREATE TABLE facility_green_certifications
(
    certification_id            TEXT NOT NULL PRIMARY KEY,
    facility_name               TEXT,
    address                     TEXT,
    certification_body          TEXT,
    certification_level         TEXT,
    issue_date                  DATE,
    expiry_date                 DATE,
    energy_savings_percent      REAL,
    water_savings_percent       REAL,
    waste_reduction_percent     REAL,
    renewable_energy_used_kwh   REAL,
    hvac_efficiency_rating      TEXT,
    lighting_efficiency_rating  TEXT,
    green_roof_area_sqft        REAL,
    solar_panel_capacity_kw     REAL,
    funding_source              TEXT,
    total_investment_usd        REAL,
    compliance_documents        TEXT,
    auditor_name                TEXT,
    notes                       TEXT
);

INSERT INTO facility_green_certifications VALUES
('GC001','North High School','123 Main St','LEED','Gold','2023-05-20','2028-05-20',25.0,15.0,30.0,5000,'A+','A','8000',250,'State Grant',350000,'DocA,DocB','EcoAudit LLC','Achieved with community support');

INSERT INTO facility_green_certifications VALUES
('GC002','East Middle School','456 Oak Ave',' ENERGY STAR','Silver','2022-09-10','2027-09-10',18.5,10.2,22.0,3200,'A','B','5000',180,'District Funds',210000,'DocC','GreenCheck Inc','Pending roof upgrades');

INSERT INTO facility_green_certifications VALUES
('GC003','West Elementary','789 Pine Rd','LEED','Platinum','2024-01-15','2029-01-15',30.0,20.0,35.0,6200,'A+','A+','12000',300,'Federal Grant',480000,'DocD,DocE','SustainAudit','New solar installation completed');

-- Student transportation allowances
CREATE TABLE student_transportation_allowances
(
    allowance_id                TEXT NOT NULL PRIMARY KEY,
    student_id                  TEXT,
    academic_year               TEXT,
    transport_mode              TEXT,
    monthly_allowance_usd       REAL,
    allowance_status            TEXT,
    approval_date               DATE,
    expiry_date                 DATE,
    provider_name               TEXT,
    provider_contact            TEXT,
    vehicle_type                TEXT,
    route_number                TEXT,
    distance_miles              REAL,
    frequency_per_week          INTEGER,
    special_needs_flag          INTEGER,
    subsidy_percentage          REAL,
    total_paid_year_usd         REAL,
    notes                       TEXT,
    created_by                  TEXT,
    created_at                  DATE
);

INSERT INTO student_transportation_allowances VALUES
('TA001','STU12345','2024-2025','Bus',120.00,'Approved','2024-08-01','2025-07-31','Metro Transit','5551112222','Standard', 'R12',15.2,5,0,20.0,1440,'Eligible due to distance','Admin1','2024-07-15');

INSERT INTO student_transportation_allowances VALUES
('TA002','STU67890','2024-2025','Van',150.00,'Pending','2024-09-10','2025-08-31','Community Van Service','5553334444','Accessible', 'V7',22.5,3,1,30.0,5400,'Special needs accommodation','Admin2','2024-08-20');

INSERT INTO student_transportation_allowances VALUES
('TA003','STU54321','2024-2025','Rail',90.00,'Approved','2024-07-20','2025-06-30','City Rail','5557778888','Rail', 'L2',10.0,4,0,15.0,1080,'Reduced fare eligibility','Admin3','2024-07-01');

-- Community mental health events
CREATE TABLE community_mental_health_events
(
    event_id                    TEXT NOT NULL PRIMARY KEY,
    event_name                  TEXT,
    organization                TEXT,
    event_type                  TEXT,
    target_population           TEXT,
    start_date                  DATE,
    end_date                    DATE,
    location                    TEXT,
    capacity                    INTEGER,
    registered_attendees        INTEGER,
    facilitator_name            TEXT,
    contact_email               TEXT,
    cost_per_participant_usd    REAL,
    funding_source              TEXT,
    grant_number                TEXT,
    outcome_metric              TEXT,
    feedback_average            REAL,
    status                      TEXT,
    notes                       TEXT,
    created_timestamp           DATE
);

INSERT INTO community_mental_health_events VALUES
('ME001','Stress Relief Workshop','Wellness Center','Workshop','Adults','2024-10-05','2024-10-05','Community Hall','50','45','Dr Amy Green','amy.green@wellness.org',0,'City Grant','GR123','Reduced stress scores','4.6','Completed','High turnout','2024-03-12');

INSERT INTO community_mental_health_events VALUES
('ME002','Youth Mindfulness Day','Youth Alliance','Seminar','Teens','2025-02-12','2025-02-12','High School Gym','100','80','Ms Tara Lee','tara.lee@youthall.org',5,'Private Sponsor','SP456','Improved focus','4.2','Scheduled','Materials prepared','2024-04-20');

INSERT INTO community_mental_health_events VALUES
('ME003','Senior Emotional Wellness Forum','Senior Services','Forum','Seniors','2024-11-20','2024-11-20','Senior Center','30','28','Mr John Patel','john.patel@seniorservices.org',0,'State Funding','ST789','Increased social interaction','4.8','Planned','Speaker lineup pending','2024-05-05');

-- District technology innovation hub projects
CREATE TABLE district_technology_innovation_hub_projects
(
    hub_project_id              TEXT NOT NULL PRIMARY KEY,
    project_name                TEXT,
    lead_department             TEXT,
    tech_stack                  TEXT,
    start_date                  DATE,
    projected_end_date          DATE,
    budget_usd                  REAL,
    external_partners           TEXT,
    milestones                  TEXT,
    current_phase               TEXT,
    risk_level                  TEXT,
    compliance_status           TEXT,
    data_security_classification TEXT,
    cloud_provider              TEXT,
    on_premise_resources        TEXT,
    user_count                  INTEGER,
    performance_metrics         TEXT,
    project_manager             TEXT,
    status                      TEXT,
    created_date                DATE
);

INSERT INTO district_technology_innovation_hub_projects VALUES
('HP001','AI Tutoring Platform','Education Innovation','Python,TensorFlow,React','2024-06-01','2026-05-31',850000,'TechCorp; University Lab','M1: Prototype;M2: Pilot;M3: Rollout','Prototype','Medium','Compliant','Confidential','AWS','Local Servers','200','Accuracy 85%','Laura Kim','Active','2024-05-15');

INSERT INTO district_technology_innovation_hub_projects VALUES
('HP002','VR Science Labs','STEM Department','Unity,C#,Oculus','2024-09-15','2027-09-14',1200000,'VR Studios Inc','M1: Content Creation;M2: Testing;M3: Deployment','Testing','High','Pending','Restricted','Azure','On-Prem GPU Cluster','150','Engagement 92%','Mark Rivera','Planning','2024-07-01');

INSERT INTO district_technology_innovation_hub_projects VALUES
('HP003','Data Analytics Dashboard','Operations','SQL,PowerBI,Python','2023-11-01','2025-10-31',600000,'DataInsights LLC','M1: Data Integration;M2: Dashboard Build;M3: Training','Deployment','Low','Compliant','Public','Google Cloud','Hybrid','250','Adoption 78%','Sophie Lee','Completed','2023-10-10');

-- Renewable energy asset registry
CREATE TABLE renewable_energy_asset_registry
(
    asset_id                    TEXT NOT NULL PRIMARY KEY,
    asset_type                  TEXT,
    location                    TEXT,
    capacity_kw                 REAL,
    installation_date           DATE,
    commissioning_date          DATE,
    owner_entity                TEXT,
    maintenance_contract_vendor TEXT,
    warranty_expiry_date        DATE,
    annual_generation_mwh       REAL,
    carbon_offset_tons          REAL,
    financing_type              TEXT,
    loan_amount_usd             REAL,
    interest_rate_percent       REAL,
    payback_period_years        REAL,
    operational_status          TEXT,
    last_inspection_date        DATE,
    notes                       TEXT,
    created_by                  TEXT,
    created_at                  DATE
);

INSERT INTO renewable_energy_asset_registry VALUES
('RE001','Solar Panel Array','North High Roof','500', '2023-04-10','2023-05-01','District','SolarMaint Co','2028-05-01',650,420,'Bond','300000',3.2,7.5,'Operational','2024-06-15','Performance within expectations','AdminA','2024-01-20');

INSERT INTO renewable_energy_asset_registry VALUES
('RE002','Wind Turbine','West Field','1500','2022-09-20','2022-11-05','District','WindServe Ltd','2032-11-05',3200,2100,'Lease','0',0,0,'Operational','2024-05-30','Lease agreement expires 2032','AdminB','2024-02-10');

INSERT INTO renewable_energy_asset_registry VALUES
('RE003','Geothermal System','East Elementary','800','2024-01-15','2024-03-01','District','GeoTech Services','2034-03-01',900,600,'Grant','0',0,0,'Testing','2024-07-01','Initial testing phase','AdminC','2024-03-05');

-- Public art installations inventory
CREATE TABLE public_art_installations_inventory
(
    art_id                      TEXT NOT NULL PRIMARY KEY,
    title                       TEXT,
    artist_name                 TEXT,
    medium                      TEXT,
    dimensions                  TEXT,
    installation_location       TEXT,
    installation_date           DATE,
    commissioning_body          TEXT,
    funding_source              TEXT,
    maintenance_responsibility  TEXT,
    condition_rating            TEXT,
    last_restoration_date      DATE,
    public_access_notes         TEXT,
    gps_latitude                REAL,
    gps_longitude               REAL,
    estimated_value_usd         REAL,
    plaque_text                 TEXT,
    visibility_hours            TEXT,
    status                      TEXT,
    created_timestamp           DATE
);

INSERT INTO public_art_installations_inventory VALUES
('PA001','Harmony','Mia Delgado','Bronze Sculpture','6ft x 3ft','Central Plaza','2022-06-15','City Council','City Arts Fund','Facilities Dept','Good','2023-06-20','Open 24/7',40.7128,-74.0060,85000,'Harmony of Community','Daylight only','Active','2024-01-05');

INSERT INTO public_art_installations_inventory VALUES
('PA002','Waves','Liam OConnor','Mural','20ft x 40ft','West Wing Hallway','2021-09-10','School Board','Donations','Facilities Dept','Fair','2022-09-12','Restricted during construction',34.0522,-118.2437,120000,'Inspiration through Waves','All day','Active','2024-02-12');

INSERT INTO public_art_installations_inventory VALUES
('PA003','Growth','Sofia Ramos','Metal Installation','10ft x 8ft','North Garden','2023-04-22','Park Authority','Grant','Parks Dept','Excellent','2024-04-01','Open during park hours',37.7749,-122.4194,65000,'Growth and Renewal','Sunrise to sunset','Planned','2024-03-18');

-- School parking permit fee structure
CREATE TABLE school_parking_permit_fee_structure
(
    fee_id                     TEXT NOT NULL PRIMARY KEY,
    permit_type                TEXT,
    vehicle_category           TEXT,
    annual_fee_usd             REAL,
    semester_fee_usd           REAL,
    semester_start_month       TEXT,
    max_vehicles_allowed      INTEGER,
    eligibility_criteria       TEXT,
    approval_process           TEXT,
    renewal_deadline_days      INTEGER,
    late_fee_usd               REAL,
    discount_percentage_student REAL,
    discount_percentage_staff  REAL,
    payment_method             TEXT,
    account_code               TEXT,
    created_by                 TEXT,
    creation_date              DATE,
    last_updated_by            TEXT,
    last_update_date           DATE,
    notes                      TEXT
);

INSERT INTO school_parking_permit_fee_structure VALUES
('PF001','Student','Car',250.00,130.00,'January',1,'Full-time enrollment','Online portal',30,25,20,0,'Credit Card','ACC1001','FinanceDept','2024-01-01','FinanceDept','2024-06-01','Renewal required each semester');

INSERT INTO school_parking_permit_fee_structure VALUES
('PF002','Staff','Motorcycle',150.00,80.00,'July',2,'Employment status confirmed','HR approval',45,15,0,10,'Check','ACC2002','HRDept','2024-02-15','HRDept','2024-07-15','Discount for staff with tenure >5 years');

INSERT INTO school_parking_permit_fee_structure VALUES
('PF003','Visitor','Car',0.00,0.00,'N/A',1,'Event registration required','Event staff','N/A',0,0,0,'Cash','ACC3003','EventsDept','2024-03-10','EventsDept','2024-08-10','Only valid for duration of event');

-- Student venture capital funding records
CREATE TABLE student_venture_capital_funding
(
    funding_id                 TEXT NOT NULL PRIMARY KEY,
    student_id                 TEXT,
    venture_name               TEXT,
    industry_sector            TEXT,
    funding_round              TEXT,
    amount_usd                 REAL,
    equity_percentage          REAL,
    lead_investor              TEXT,
    investment_date            DATE,
    status                     TEXT,
    expected_return_percent    REAL,
    exit_strategy              TEXT,
    mentor_name                TEXT,
    mentor_contact             TEXT,
    university_affiliation      TEXT,
    business_plan_url          TEXT,
    pitch_deck_url             TEXT,
    due_diligence_score       REAL,
    notes                      TEXT,
    created_timestamp          DATE
);

INSERT INTO student_venture_capital_funding VALUES
('VC001','STU11223','EcoTech Solutions','Clean Energy','Seed',50000,10,'GreenFund LLC','2024-05-01','Pending',25,'Acquisition','Dr Elena Kim','5554447777','State University','http://example.com/bplan1','http://example.com/pitch1',85,'First round of funding for prototype','2024-04-20');

INSERT INTO student_venture_capital_funding VALUES
('VC002','STU33445','HealthPlus AI','HealthTech','Series A',250000,15,'HealthVentures','2024-06-15','Approved',35,'IPO','Prof Mark Liu','5553332222','Tech Institute','http://example.com/bplan2','http://example.com/pitch2',92,'Scale-up phase with additional hires','2024-05-30');

INSERT INTO student_venture_capital_funding VALUES
('VC003','STU55667','EduGame Labs','EdTech','Pre-Seed',20000,5,'EduInvest','2024-04-20','Closed',20,'Acquisition','Ms Dana O\'Neil','5551113333','Liberal Arts College','http://example.com/bplan3','http://example.com/pitch3',78,'Proof of concept completed','2024-03-15');