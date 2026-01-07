-- Campus Research Collaboration details
CREATE TABLE campus_research_collaboration (
    collab_id TEXT PRIMARY KEY,
    project_id TEXT,
    partner_institution TEXT,
    start_date TEXT,
    end_date TEXT,
    funding_amount INTEGER,
    lead_researcher TEXT,
    status TEXT,
    discipline TEXT,
    agreement_file TEXT,
    contact_email TEXT,
    phone_number TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zip_code INTEGER,
    grant_number TEXT,
    milestones TEXT,
    outcomes TEXT,
    notes TEXT
);

INSERT INTO campus_research_collaboration VALUES
('CR001','PRJ1001','Global University','2023-01-15','2025-12-31',250000,'Dr Smith','Active','Biology','agreement_cr001.pdf','smith@global.edu','5551234567','123 Research Rd','Springfield','IL',62704,'GN2023','Milestone1;Milestone2','OutcomeA','Initial setup complete');

INSERT INTO campus_research_collaboration VALUES
('CR002','PRJ1002','Tech Institute','2022-05-01','2024-04-30',150000,'Dr Lee','Completed','ComputerScience','agreement_cr002.pdf','lee@techinst.edu','5559876543','456 Innovation Blvd','River City','CA',90210,'GN2022','MilestoneA;MilestoneB','OutcomeB','Project delivered on time');

INSERT INTO campus_research_collaboration VALUES
('CR003','PRJ1003','Health Alliance','2024-03-01','2026-02-28',300000,'Dr Patel','Planned','Medicine','agreement_cr003.pdf','patel@healthall.org','5552223344','789 Wellness Way','Lake Town','TX',75001,'GN2024','MilestoneX;MilestoneY','OutcomeX','Funding secured');

-- Student Exchange Program Detail
CREATE TABLE student_exchange_program_detail (
    exchange_id TEXT PRIMARY KEY,
    student_id TEXT,
    home_university TEXT,
    host_university TEXT,
    program_name TEXT,
    start_term TEXT,
    end_term TEXT,
    scholarship_amount INTEGER,
    housing_type TEXT,
    language_proficiency TEXT,
    advisor_id TEXT,
    credits_earned INTEGER,
    gpa REAL,
    status TEXT,
    application_date TEXT,
    approval_date TEXT,
    visa_number TEXT,
    travel_insurance TEXT,
    emergency_contact TEXT,
    remarks TEXT
);

INSERT INTO student_exchange_program_detail VALUES
('EX001','STU123','North Campus','East University','Spring Exchange','Fall2023','Spring2024',12000,'Dormitory','Advanced','ADV001',12,3.8,'Approved','2023-01-10','2023-02-15','V1234567','InsureCo','Jane Doe','First semester abroad');

INSERT INTO student_exchange_program_detail VALUES
('EX002','STU456','West College','South Institute','Summer Immersion','Summer2023','Summer2023',8000,'Homestay','Intermediate','ADV002',4,3.5,'Pending','2023-03-05',NULL,'','InsurePlus','John Smith','Awaiting approval');

INSERT INTO student_exchange_program_detail VALUES
('EX003','STU789','Central University','North Tech','Winter Program','Winter2024','Winter2025',15000,'Apartment','Advanced','ADV003',20,3.9,'Planned','2024-01-20',NULL,'','TravelSafe','Emily Green','Preparing documents');

-- Facility Energy Audit Record
CREATE TABLE facility_energy_audit_record (
    audit_id TEXT PRIMARY KEY,
    facility_id TEXT,
    audit_date TEXT,
    auditor_name TEXT,
    total_energy_consumption REAL,
    electricity_kwh REAL,
    gas_therms REAL,
    water_gallons REAL,
    hvac_efficiency REAL,
    lighting_efficiency REAL,
    insulation_rating REAL,
    renewable_percent REAL,
    recommendations TEXT,
    estimated_savings REAL,
    implementation_status TEXT,
    followup_date TEXT,
    notes TEXT,
    carbon_emission_tons REAL,
    audit_score INTEGER,
    compliance_status TEXT
);

INSERT INTO facility_energy_audit_record VALUES
('AU001','F001','2023-06-15','Alice Johnson',50000,30000,1500,20000,0.85,0.78,0.9,15,'Upgrade lighting;Seal ducts','12000','InProgress','2023-12-01','Initial findings','25.4',85,'Compliant');

INSERT INTO facility_energy_audit_record VALUES
('AU002','F002','2022-11-20','Bob Martinez',75000,45000,2000,25000,0.80,0.70,0.85,10,'Install solar panels','18000','Completed','2023-05-15','Project completed','38.7',90,'Compliant');

INSERT INTO facility_energy_audit_record VALUES
('AU003','F003','2024-02-10','Carol Lee',62000,38000,1800,23000,0.88,0.82,0.92,20,'Improve insulation','15000','Planned',NULL,'Awaiting budget','30.2',80,'Pending');

-- Community Partner Engagement
CREATE TABLE community_partner_engagement (
    engagement_id TEXT PRIMARY KEY,
    partner_id TEXT,
    partner_name TEXT,
    sector TEXT,
    contact_person TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    start_date TEXT,
    end_date TEXT,
    engagement_type TEXT,
    activities_conducted TEXT,
    volunteers_involved INTEGER,
    funds_contributed REAL,
    outcomes_summary TEXT,
    evaluation_score INTEGER,
    next_steps TEXT,
    agreement_file TEXT,
    status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO community_partner_engagement VALUES
('CE001','P001','Local Food Bank','NonProfit','Maria Lopez','mlopez@foodbank.org','5551112222','2023-01-01','2023-12-31','AnnualSupport','Food drives;Community workshops',50,25000,'Increased food distribution','88','Extend partnership','engagement_ce001.pdf','Active','Successful year','2023-01-01','2023-12-01');

INSERT INTO community_partner_engagement VALUES
('CE002','P002','Green Energy Co','Industry','Kevin Brown','kbrown@greenenergy.com','5553334444','2022-06-15','2024-06-14','ResearchCollab','Joint solar study;Student internships',30,50000,'Published joint paper','92','Prepare commercialization','engagement_ce002.pdf','Active','Pilot phase complete','2022-06-15','2023-11-20');

INSERT INTO community_partner_engagement VALUES
('CE003','P003','City Arts Council','Government','Laura Chen','lchen@cityarts.gov','5555556666','2024-03-01','2025-02-28','CulturalProgram','Art installations;Student exhibitions',20,12000,'Enhanced campus art visibility','81','Plan next exhibition','engagement_ce003.pdf','Planned','Pending approval','2024-03-01','2024-03-05');

-- Digital Content License Agreement
CREATE TABLE digital_content_license_agreement (
    license_id TEXT PRIMARY KEY,
    content_id TEXT,
    content_type TEXT,
    provider_name TEXT,
    license_start_date TEXT,
    license_end_date TEXT,
    usage_rights TEXT,
    territorial_scope TEXT,
    exclusivity TEXT,
    fee_amount REAL,
    payment_terms TEXT,
    renewal_option TEXT,
    termination_clause TEXT,
    compliance_requirements TEXT,
    authorized_formats TEXT,
    max_views INTEGER,
    max_downloads INTEGER,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO digital_content_license_agreement VALUES
('LIC001','CNT1001','Video','MediaCorp','2023-01-01','2025-12-31','Streaming;Embedding','Global','Exclusive',15000,'Net30','AutoRenew','30dayNotice','Branding guidelines','MP4;WebM',1000000,50000,'Initial agreement','admin','2023-01-01','2023-01-01');

INSERT INTO digital_content_license_agreement VALUES
('LIC002','CNT1002','Image','PhotoHub','2022-06-15','2024-06-14','Print;Digital','US','NonExclusive',8000,'Net15','ManualRenew','TerminationOnViolation','Attribution required','JPEG;PNG',200000,10000,'Second renewal','editor','2022-06-15','2022-06-15');

INSERT INTO digital_content_license_agreement VALUES
('LIC003','CNT1003','Audio','SoundWave','2024-03-01','2026-02-28','Broadcast;Podcast','EU','Exclusive',12000,'Net45','AutoRenew','30dayTermination','Watermark removal','MP3;AAC',500000,25000,'Pending legal review','manager','2024-03-01','2024-03-01');

-- Sustainability Initiative Project
CREATE TABLE sustainability_initiative_project (
    project_id TEXT PRIMARY KEY,
    initiative_name TEXT,
    category TEXT,
    start_date TEXT,
    projected_end_date TEXT,
    actual_end_date TEXT,
    budget_allocated REAL,
    budget_spent REAL,
    lead_dept TEXT,
    project_manager TEXT,
    objectives TEXT,
    key_metrics TEXT,
    status TEXT,
    risk_level TEXT,
    stakeholder_list TEXT,
    external_funding REAL,
    carbon_reduction_tons REAL,
    water_saved_gallons REAL,
    waste_reduced_tons REAL,
    lessons_learned TEXT,
    report_link TEXT
);

INSERT INTO sustainability_initiative_project VALUES
('SI001','Campus Solar Expansion','Energy','2023-02-01','2024-12-31',NULL,500000,200000,'Facilities','Mark Green','Install 10MW panels','EnergyGenerated;CostSavings','InProgress','Medium','Facilities;Finance;StudentBody',100000,1200,300000,0,'Need better supplier contracts','/reports/si001.pdf');

INSERT INTO sustainability_initiative_project VALUES
('SI002','Zero Waste Dining','Waste','2022-05-15','2023-11-30','2023-11-20',250000,250000,'Dining','Sara White','Reduce waste by 80%','WasteDiverted;CostReduction','Completed','Low','Dining;StudentOrg',50000,0,0,150,'Successful student engagement','/reports/si002.pdf');

INSERT INTO sustainability_initiative_project VALUES
('SI003','Rainwater Harvesting','Water','2024-01-10','2025-06-30',NULL,150000,50000,'Engineering','Tom Black','Capture 500k gallons annually','GallonsCaptured;CostSavings','Planned','High','Engineering;Facilities',30000,0,500000,0,'Pending regulatory approval','/reports/si003.pdf');

-- Health Service Quality Audit
CREATE TABLE health_service_quality_audit (
    audit_id TEXT PRIMARY KEY,
    clinic_id TEXT,
    audit_date TEXT,
    auditor_name TEXT,
    patient_satisfaction_score REAL,
    average_wait_time_minutes REAL,
    compliance_rate_percent REAL,
    incident_count INTEGER,
    staff_training_hours REAL,
    equipment_status TEXT,
    medication_error_rate REAL,
    infection_control_score REAL,
    documentation_accuracy REAL,
    feedback_summary TEXT,
    corrective_actions TEXT,
    follow_up_date TEXT,
    overall_rating INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO health_service_quality_audit VALUES
('HA001','CL001','2023-08-20','Dr Emily White',4.5,15.2,96.5,2,40,'Good',0.01,92,98,'Positive overall','Improve signage;Review incident protocols','2023-11-20',88,'Follow-up scheduled','2023-08-20','2023-08-20');

INSERT INTO health_service_quality_audit VALUES
('HA002','CL002','2022-12-05','Mr Kevin Smith',4.2,18.0,93.0,3,35,'Fair',0.02,88,94,'Mixed feedback','Upgrade equipment;Additional training','2023-03-05',82,'Equipment aging noted','2022-12-05','2022-12-05');

INSERT INTO health_service_quality_audit VALUES
('HA003','CL003','2024-02-14','Ms Laura Kim',4.8,12.5,98.0,0,50,'Excellent',0.00,96,99,'Excellent service','Maintain current practices','2024-05-14',94,'No issues','2024-02-14','2024-02-14');

-- Technology Patent Portfolio
CREATE TABLE technology_patent_portfolio (
    patent_id TEXT PRIMARY KEY,
    title TEXT,
    inventor_names TEXT,
    filing_date TEXT,
    grant_date TEXT,
    patent_number TEXT,
    status TEXT,
    technology_field TEXT,
    abstract TEXT,
    claims_count INTEGER,
    related_projects TEXT,
    licensing_revenue REAL,
    expiry_date TEXT,
    maintenance_fees_paid REAL,
    jurisdiction TEXT,
    priority_country TEXT,
    parent_company TEXT,
    commercial_use TEXT,
    strategic_value_score INTEGER,
    notes TEXT,
    created_at TEXT
);

INSERT INTO technology_patent_portfolio VALUES
('PAT001','Smart Sensor Array','Alice Smith;Bob Jones','2021-04-10','2023-01-22','US1234567','Granted','IoT','Sensor system for environmental monitoring',12,'Project Alpha;Project Beta',75000,'2033-01-22',15000,'US','US','TechCorp','Licensed','85','Core technology for smart campus','2023-02-01');

INSERT INTO technology_patent_portfolio VALUES
('PAT002','Energy Efficient Processor','Carol Lee','2020-09-05','2022-07-19','US7654321','Granted','Semiconductor','Low-power processor architecture',20,'Project Gamma',120000,'2032-07-19',20000,'US','US','MicroTech','InHouse','78','Key component for new laptop line','2022-08-01');

INSERT INTO technology_patent_portfolio VALUES
('PAT003','Adaptive Learning Algorithm','David Kim;Eve Park','2022-11-15','Pending','',NULL,'AI','Algorithm that personalizes curriculum','',0,'Project Delta',0,'',0,'US','US','EduSoft','Pending','70','Awaiting examination','2022-12-01');

-- Alumni Giving Pledge
CREATE TABLE alumni_giving_pledge (
    pledge_id TEXT PRIMARY KEY,
    alumni_id TEXT,
    pledge_amount REAL,
    pledge_date TEXT,
    payment_schedule TEXT,
    pledge_status TEXT,
    designated_fund TEXT,
    acknowledgment_sent TEXT,
    tax_receipt_issued TEXT,
    contact_method TEXT,
    phone_number TEXT,
    email_address TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zip_code INTEGER,
    employer TEXT,
    occupation TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO alumni_giving_pledge VALUES
('PL001','ALU1001',5000,'2023-03-15','Annual','Active','Scholarship Fund','Yes','Yes','Email','5557778888','alumni1@domain.com','123 Maple St','Springfield','IL',62701,'TechCorp','Engineer','First time donor','2023-03-15','2023-03-15');

INSERT INTO alumni_giving_pledge VALUES
('PL002','ALU1002',20000,'2022-11-01','Quarterly','Active','Research Endowment','Yes','Yes','Phone','5558889999','alumni2@domain.com','456 Oak Ave','River City','CA',90212,'HealthInc','Doctor','Long-term supporter','2022-11-01','2022-11-01');

INSERT INTO alumni_giving_pledge VALUES
('PL003','ALU1003',1000,'2024-01-20','OneTime','Pending','Library Fund','No','No','Mail','5559990000','alumni3@domain.com','789 Pine Blvd','Lake Town','TX',75002,'FinanceCo','Analyst','Awaiting confirmation','2024-01-20','2024-01-20');

-- Campus Artifact Catalog
CREATE TABLE campus_artifact_catalog (
    artifact_id TEXT PRIMARY KEY,
    title TEXT,
    creator TEXT,
    creation_date TEXT,
    period TEXT,
    medium TEXT,
    dimensions TEXT,
    location_on_campus TEXT,
    accession_number TEXT,
    condition_status TEXT,
    conservation_notes TEXT,
    acquisition_method TEXT,
    donor_name TEXT,
    donor_relationship TEXT,
    cataloged_by TEXT,
    catalog_date TEXT,
    display_status TEXT,
    insurance_value REAL,
    provenance TEXT,
    public_access_notes TEXT,
    image_file_path TEXT
);

INSERT INTO campus_artifact_catalog VALUES
('ART001','Bronze Statue','Unknown','1910','Early20th','Bronze','5ft tall','Main Plaza','ACC2023001','Good','Routine cleaning','Gift','John Doe','Alumni','Curator A','2023-04-10','OnDisplay','15000','Donated by John Doe in 2023','Open to public','/images/art001.jpg');

INSERT INTO campus_artifact_catalog VALUES
('ART002','Historic Manuscript','Jane Austen','1815','Regency','Paper','8x12in','Library Special Collections','ACC2023002','Fair','Needs humidity control','Purchase','University Fund','Institutional','Curator B','2023-05-22','InStorage','8000','Acquired at auction','Restricted access','/images/art002.jpg');

INSERT INTO campus_artifact_catalog VALUES
('ART003','Modern Sculpture','Emily Rivera','2020','Contemporary','Steel','6ft tall','Art Building Atrium','ACC2023003','Excellent','None','Commission','Emily Rivera','Artist','Curator C','2023-06-15','OnDisplay','25000','Commissioned by university','Open to public','/images/art003.jpg');