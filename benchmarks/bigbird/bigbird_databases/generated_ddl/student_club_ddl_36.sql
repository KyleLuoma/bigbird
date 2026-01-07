-- Table storing detailed information about university research projects
CREATE TABLE research_project (
    project_id TEXT PRIMARY KEY,
    title TEXT,
    abstract TEXT,
    start_date TEXT,
    end_date TEXT,
    status TEXT,
    funding_amount REAL,
    funding_source TEXT,
    principal_investigator TEXT,
    co_pi_1 TEXT,
    co_pi_2 TEXT,
    department TEXT,
    college TEXT,
    project_type TEXT,
    ethical_approval TEXT,
    data_sharing_plan TEXT,
    expected_outcome TEXT,
    milestones TEXT,
    publications_expected INTEGER,
    collaborators TEXT,
    created_by TEXT,
    created_at TEXT,
    last_modified_by TEXT,
    last_modified_at TEXT
);

INSERT INTO research_project VALUES
('RP001','Campus Sustainability Study','Study of resource usage and reduction strategies','2023-01-15','2025-12-31','Active',250000,'University Grant','DrSmith','DrLee','DrPatel','Environmental Science','College of Sciences','LongTerm','Approved','Open','Reduced water use by 15%','2023-06-01,2024-06-01','2','DeptEnergy','admin','2023-01-01','admin','2023-01-10');

INSERT INTO research_project VALUES
('RP002','AI in Education','Investigation of AI tools for adaptive learning','2022-09-01','2024-08-31','Completed',180000,'External Sponsor','ProfJones','ProfKim','ProfAlvarez','Computer Science','College of Engineering','ShortTerm','Approved','Restricted','Improved student engagement','2023-01-15,2023-07-15','5','EduTech Partners','admin','2022-08-20','admin','2022-09-05');

INSERT INTO research_project VALUES
('RP003','Historical Archive Digitization','Digitizing 19th century university archives','2024-03-01','2026-02-28','Planned',120000,'Library Fund','DrBrown','DrGreen','','History','College of Arts','MediumTerm','Pending','Open','Full digital archive','2024-04-01','0','ArchiveDept','admin','2024-02-28','admin','2024-03-02');

-- Table for campus-wide policies and procedures
CREATE TABLE campus_policy (
    policy_id TEXT PRIMARY KEY,
    policy_name TEXT,
    description TEXT,
    effective_date TEXT,
    review_date TEXT,
    policy_type TEXT,
    department_responsible TEXT,
    applicable_to TEXT,
    approval_status TEXT,
    approved_by TEXT,
    version_number INTEGER,
    document_url TEXT,
    enforcement_mechanism TEXT,
    penalty TEXT,
    related_regulation TEXT,
    created_by TEXT,
    created_at TEXT,
    last_modified_by TEXT,
    last_modified_at TEXT,
    status TEXT,
    confidentiality_level TEXT,
    archival_location TEXT,
    notes TEXT,
    revision_history TEXT,
    compliance_deadline TEXT
);

INSERT INTO campus_policy VALUES
('CP001','Campus Smoking Ban','Prohibits smoking in all indoor and outdoor university spaces','2021-01-01','2024-01-01','Health','Health Services','All Students, Staff, Visitors','Approved','BoardChair',1,'/policies/smoking.pdf','Campus Security','Fine up to 100','State Health Code','admin','2020-12-01','admin','2021-01-01','Active','Public','Archives/Policy','No exceptions','Initial release','2025-01-01');

INSERT INTO campus_policy VALUES
('CP002','Data Privacy Policy','Guidelines for handling personal data of university community','2022-06-15','2025-06-15','IT','Information Security','Faculty, Staff, Students','Approved','CISO',1,'/policies/privacy.pdf','Audit','Disciplinary action','GDPR','admin','2022-05-20','admin','2022-06-15','Active','Confidential','Legal Dept','Annual training required','Initial release','2025-06-15');

INSERT INTO campus_policy VALUES
('CP003','Remote Work Guidelines','Procedures for remote work arrangements for staff','2023-03-01','2026-03-01','HR','Human Resources','Staff','Pending','HRDirector',0,'/policies/remote_work.pdf','Manager approval','No penalty','Labor Law','admin','2023-02-20','admin','2023-03-01','Draft','Internal','HR Files','Awaiting board approval','Draft version','2026-03-01');

-- Table capturing sustainability initiative metrics
CREATE TABLE sustainability_initiative (
    initiative_id TEXT PRIMARY KEY,
    name TEXT,
    description TEXT,
    launch_date TEXT,
    target_year INTEGER,
    carbon_reduction_target REAL,
    water_saving_target REAL,
    waste_diversion_target REAL,
    budget REAL,
    funding_source TEXT,
    lead_department TEXT,
    status TEXT,
    current_carbon_reduction REAL,
    current_water_saving REAL,
    current_waste_diversion REAL,
    responsible_manager TEXT,
    stakeholder_group TEXT,
    reporting_frequency TEXT,
    last_report_date TEXT,
    next_milestone_date TEXT,
    metrics_dashboard_url TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    last_modified_by TEXT,
    last_modified_at TEXT
);

INSERT INTO sustainability_initiative VALUES
('SI001','Zero Waste Campus','Aim to divert 90% of waste from landfill','2022-01-01',2030,0.0,0.0,90.0,500000,'University Green Fund','Facilities','Active',0.0,0.0,45.0,'JaneDoe','Students,Staff','Quarterly','2023-06-30','2024-01-01','/dashboards/zerowaste','Initial phase','admin','2021-12-01','admin','2022-01-05');

INSERT INTO sustainability_initiative VALUES
('SI002','Campus Solar Expansion','Increase solar generation capacity','2021-07-15',2025,15.0,0.0,0.0,1200000,'Energy Grant','Energy Services','Active',5.0,0.0,0.0,'JohnSmith','Faculty,Staff','Annual','2023-12-31','2024-07-15','/dashboards/solar','Panel installation ongoing','admin','2021-06-01','admin','2021-07-20');

INSERT INTO sustainability_initiative VALUES
('SI003','Water Conservation Program','Reduce potable water use across campus','2023-03-01',2028,0.0,25.0,0.0,300000,'Facilities Budget','Facilities','Planned',0.0,0.0,0.0,'EmilyWhite','Facilities,Students','Biannual','2023-12-15','2024-03-01','/dashboards/water','Planning stage','admin','2022-11-15','admin','2023-03-02');

-- Table for library acquisition orders
CREATE TABLE library_acquisition_order (
    order_id TEXT PRIMARY KEY,
    order_date TEXT,
    supplier_name TEXT,
    isbn TEXT,
    title TEXT,
    author TEXT,
    publication_year INTEGER,
    publisher TEXT,
    edition TEXT,
    format TEXT,
    category TEXT,
    library_branch TEXT,
    budget_code TEXT,
    cost REAL,
    quantity INTEGER,
    received_date TEXT,
    received_by TEXT,
    cataloged_by TEXT,
    location_shelf TEXT,
    dewey_decimal TEXT,
    lccn TEXT,
    order_status TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    last_modified_by TEXT,
    last_modified_at TEXT
);

INSERT INTO library_acquisition_order VALUES
('LAO001','2023-02-10','Global Books Ltd','9781234567890','Data Science Fundamentals','Alice Brown',2022,'TechPress','2nd','Print','Science','Main Library','BUD001',120.50,3,'2023-02-20','LibrarianA','CataloguerB','A12','500.3 B45','2001234567','Completed','First batch','admin','2023-02-01','admin','2023-02-11');

INSERT INTO library_acquisition_order VALUES
('LAO002','2023-05-05','Academic Supplies Inc','9780987654321','Modern Architecture','Bob Green',2021,'DesignHouse','1st','Print','Arts','West Wing','BUD002',85.00,2,'2023-05-15','LibrarianC','CataloguerD','B34','720.1 C78','2007654321','Completed','Urgent order','admin','2023-04-28','admin','2023-05-06');

INSERT INTO library_acquisition_order VALUES
('LAO003','2023-08-12','E-Resources Co','9781122334455','Artificial Intelligence Ethics','Carol White',2023,'Future Press','1st','eBook','Technology','Online','BUD003',45.00,5,NULL,NULL,NULL,NULL,NULL,NULL,'Pending','Pending digital license','admin','2023-08-01','admin','2023-08-13');

-- Table recording health service appointments
CREATE TABLE health_service_appointment (
    appointment_id TEXT PRIMARY KEY,
    patient_id TEXT,
    patient_name TEXT,
    date_of_birth TEXT,
    appointment_date TEXT,
    appointment_time TEXT,
    service_type TEXT,
    provider_name TEXT,
    clinic_location TEXT,
    appointment_status TEXT,
    check_in_time TEXT,
    check_out_time TEXT,
    diagnosis_code TEXT,
    prescription_given TEXT,
    follow_up_required TEXT,
    follow_up_date TEXT,
    insurance_provider TEXT,
    insurance_policy_number TEXT,
    copay_amount REAL,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    last_modified_by TEXT,
    last_modified_at TEXT,
    cancelled_by TEXT,
    cancellation_reason TEXT
);

INSERT INTO health_service_appointment VALUES
('HS001','STU1001','Michael Johnson','2001-04-12','2023-09-15','09:30','General Checkup','DrAllen','Health Center A','Completed','09:28','09:55','Z00.00','None','No','NULL','HealthPlus','HP123456','15.00','All good','admin','2023-08-01','admin','2023-09-15',NULL,NULL);

INSERT INTO health_service_appointment VALUES
('HS002','STU1002','Sarah Lee','1999-11-23','2023-09-20','14:00','Dental Cleaning','DrBaker','Dental Clinic','Cancelled',NULL,NULL,NULL,NULL,'No',NULL,'DentalCare','DC987654','20.00','Patient requested reschedule','admin','2023-08-15','admin','2023-09-18','Student','Schedule conflict');

INSERT INTO health_service_appointment VALUES
('HS003','STU1003','David Kim','2002-07-05','2023-10-05','11:15','Vaccination','NurseCarter','Health Center B','Scheduled',NULL,NULL,NULL,NULL,'Yes','2024-10-05','MediHealth','MH654321','0.00','First dose of flu vaccine','admin','2023-09-01','admin','2023-09-02',NULL,NULL);

-- Table for technology asset inventory
CREATE TABLE technology_asset_inventory (
    asset_id TEXT PRIMARY KEY,
    asset_tag TEXT,
    asset_type TEXT,
    manufacturer TEXT,
    model TEXT,
    serial_number TEXT,
    purchase_date TEXT,
    warranty_expiration TEXT,
    cost REAL,
    assigned_to TEXT,
    department TEXT,
    location TEXT,
    status TEXT,
    last_maintenance_date TEXT,
    maintenance_cycle TEXT,
    depreciation_rate REAL,
    current_value REAL,
    ip_address TEXT,
    mac_address TEXT,
    operating_system TEXT,
    firmware_version TEXT,
    last_audit_date TEXT,
    audit_status TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    last_modified_by TEXT,
    last_modified_at TEXT,
    disposal_date TEXT,
    disposal_method TEXT
);

INSERT INTO technology_asset_inventory VALUES
('TAI001','TAG1001','Laptop','Dell','XPS13','SN12345','2021-03-10','2024-03-10',1200.00,'john.doe','IT','Building A Room 101','InUse','2023-06-01','Annual',15.0,900.00,'10.0.0.101','00:1A:2B:3C:4D:5E','Windows10','v1.2','2023-07-15','Passed','No issues','admin','2021-03-01','admin','2021-03-05',NULL,NULL);

INSERT INTO technology_asset_inventory VALUES
('TAI002','TAG1002','Desktop','HP','EliteDesk','SN67890','2020-11-20','2023-11-20',950.00,'jane.smith','Finance','Building B Room 202','InUse','2023-05-15','Annual',20.0,600.00,'10.0.0.102','00:1A:2B:3C:4D:5F','Windows Server 2019','v2.0','2023-07-10','Passed','Upgraded RAM','admin','2020-11-01','admin','2020-11-05',NULL,NULL);

INSERT INTO technology_asset_inventory VALUES
('TAI003','TAG1003','Projector','Epson','EB-7000','SN54321','2019-08-05','2022-08-05',550.00,'conference.room','Events','Building C Conference Hall','Retired','2022-07-30','Biannual',10.0,200.00,NULL,NULL,NULL,'v3.5','2022-08-01','Failed','Lamp replaced','admin','2019-07-15','admin','2019-07-20','2022-09-01','Recycled');

-- Table for community partner organizations
CREATE TABLE community_partner (
    partner_id TEXT PRIMARY KEY,
    organization_name TEXT,
    contact_person TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zip_code INTEGER,
    partnership_type TEXT,
    start_date TEXT,
    end_date TEXT,
    agreement_document_url TEXT,
    services_provided TEXT,
    resources_contributed TEXT,
    annual_budget REAL,
    active_status TEXT,
    last_interaction_date TEXT,
    next_meeting_date TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    last_modified_by TEXT,
    last_modified_at TEXT,
    compliance_status TEXT,
    evaluation_score INTEGER,
    strategic_alignment TEXT,
    renewal_option TEXT,
    exit_strategy TEXT,
    risk_assessment TEXT
);

INSERT INTO community_partner VALUES
('CP001','Green City Council','Laura Green','laura.green@greencity.gov','5551234567','123 Green St','Greentown','GT','12345','Government','2020-01-01','2025-12-31','/agreements/cp001.pdf','Community outreach, Sustainability workshops','Funding, Volunteers',200000,'Active','2023-06-10','2023-12-01','Strong collaboration','admin','2020-01-01','admin','2020-01-02','Compliant',85,'High','Yes','Gradual phase-out','Low');

INSERT INTO community_partner VALUES
('CP002','Health First NGO','Mark Health','mark.health@healthfirst.org','5559876543','456 Wellness Ave','Healthville','HV','54321','NonProfit','2019-05-15','2024-05-14','/agreements/cp002.pdf','Health screenings, Awareness campaigns','Medical supplies, Staff time',150000,'Active','2023-05-20','2023-11-20','Positive impact','admin','2019-05-01','admin','2019-05-05','Compliant',78,'Medium','Yes','Renewal pending','Medium');

INSERT INTO community_partner VALUES
('CP003','Tech Innovators Inc','Sophie Tech','sophie.tech@techinnovators.com','5552223333','789 Innovation Blvd','Tech City','TC','67890','Corporate','2021-09-01','2026-08-31','/agreements/cp003.pdf','Guest lectures, Hackathons','Equipment, Mentorship',300000,'Active','2023-07-05','2024-01-10','Expanding tech curriculum','admin','2021-08-15','admin','2021-08-20','Compliant',92,'High','Yes','Extension possible','Low');

-- Table for alumni gift registry entries
CREATE TABLE alumni_gift_registry (
    gift_id TEXT PRIMARY KEY,
    alumni_id TEXT,
    alumni_name TEXT,
    gift_type TEXT,
    gift_description TEXT,
    gift_value REAL,
    donation_date TEXT,
    campaign_name TEXT,
    recognition_level TEXT,
    acknowledgment_sent TEXT,
    acknowledgment_date TEXT,
    memorial_dedication TEXT,
    allocated_to_fund TEXT,
    restricted BOOLEAN,
    tax_receipt_number TEXT,
    receipt_issued BOOLEAN,
    receipt_date TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    last_modified_by TEXT,
    last_modified_at TEXT,
    status TEXT,
    follow_up_required TEXT,
    follow_up_date TEXT,
    legacy_plan TEXT,
    volunteer_opportunity TEXT,
    matching_donation BOOLEAN,
    matching_amount REAL,
    pledge BOOLEAN,
    pledge_amount REAL
);

INSERT INTO alumni_gift_registry VALUES
('AG001','ALU1001','Emma Watson','Cash','Annual giving','5000',2023-03-15,'Spring Fund','Gold','Yes','2023-03-20','None','Scholarship Fund',FALSE,'TR12345',TRUE,'2023-03-21','First major gift','admin','2023-01-10','admin','2023-01-15','Completed','No',NULL,NULL,'Yes','Volunteer mentor','FALSE',0,FALSE,0);

INSERT INTO alumni_gift_registry VALUES
('AG002','ALU1002','Liam Smith','Artwork','Original painting','12000',2022-11-05,'Art Endowment','Platinum','Yes','2022-11-10','Dedicated to Jane Doe','Art Museum Fund',TRUE,'TR67890',TRUE,'2022-11-11','Artwork displayed in lobby','admin','2022-10-01','admin','2022-10-05','Completed','No',NULL,NULL,'No',NULL,FALSE,0,FALSE,0);

INSERT INTO alumni_gift_registry VALUES
('AG003','ALU1003','Olivia Brown','Bequest','Will provision','25000',2024-01-01,'Legacy Campaign','Silver','No',NULL,'In memory of John Brown','Endowment Fund',TRUE,'TR54321',FALSE,NULL,'Pending estate processing','admin','2023-12-01','admin','2023-12-10','Pending','Yes','2025-01-01','Planned','Yes','Volunteer advisory','TRUE',25000,FALSE,0);

-- Table for facility lease agreements
CREATE TABLE facility_lease_agreement (
    lease_id TEXT PRIMARY KEY,
    facility_name TEXT,
    lease_start_date TEXT,
    lease_end_date TEXT,
    lessee_name TEXT,
    lessee_contact TEXT,
    lessee_email TEXT,
    monthly_rent REAL,
    security_deposit REAL,
    rent_payment_method TEXT,
    lease_type TEXT,
    square_feet INTEGER,
    floors INTEGER,
    parking_spaces INTEGER,
    utilities_included TEXT,
    maintenance_responsibility TEXT,
    renewal_option TEXT,
    termination_notice_period INTEGER,
    late_fee_percentage REAL,
    insurance_requirement TEXT,
    indemnification_clause TEXT,
    governing_law TEXT,
    amendment_document_url TEXT,
    signed_by_landlord TEXT,
    signed_by_lessee TEXT,
    signed_date TEXT,
    created_by TEXT,
    created_at TEXT,
    last_modified_by TEXT,
    last_modified_at TEXT,
    status TEXT,
    notes TEXT,
    escalations TEXT,
    rent_adjustment_formula TEXT,
    default_procedure TEXT,
    confidentiality_clause TEXT,
    dispute_resolution TEXT
);

INSERT INTO facility_lease_agreement VALUES
('LA001','Student Center Hall','2022-07-01','2027-06-30','Alpha Events LLC','John Alpha','john.alpha@alphaevents.com',8000,16000,'ACH','Triple Net',15000,2,20,'Yes','Lessee','Option to renew 2 years',90,5.0,'Liability Insurance','Standard indemnity','State of XYZ','/amendments/la001_v1.pdf','Mike Landlord','John Alpha','2022-06-15','admin','2022-05-01','admin','2022-05-05','Active','No issues','Annual rent increase 3%','Base rent * 1.03 annually','Letter of demand','Yes','Mediation');

INSERT INTO facility_lease_agreement VALUES
('LA002','Athletics Complex Gym','2021-01-01','2026-12-31','Beta Sports Corp','Sarah Beta','sarah.beta@betasports.com',12000,24000,'Check','Full Service',20000,1,30,'No','Landlord','Option to renew 1 year',60,4.0,'Property Insurance','Limited indemnity','State of ABC','/amendments/la002_v2.pdf','Laura Owner','Sarah Beta','2020-12-10','admin','2020-11-01','admin','2020-11-05','Active','Gym renovation clause','Fixed rent increase $500 per year','Base rent + 500','Notice of breach','Yes','Arbitration');

INSERT INTO facility_lease_agreement VALUES
('LA003','Conference Center Suite','2023-09-01','2028-08-31','Gamma Conferences','Mark Gamma','mark.gamma@gammaconf.com',15000,30000,'Wire Transfer','Modified Gross',25000,3,40,'Yes','Shared','Option to renew 3 years',120,6.0,'General Liability','Mutual indemnity','State of LMN','/amendments/la003_v1.pdf','Tom Manager','Mark Gamma','2023-08-15','admin','2023-07-01','admin','2023-07-05','Pending','Awaiting landlord signature','Rent step-up 2% annually','Base rent * 1.02 annually','Formal notice','Yes','Negotiation');

-- Table for digital content licenses
CREATE TABLE digital_content_license (
    license_id TEXT PRIMARY KEY,
    content_title TEXT,
    content_type TEXT,
    provider_name TEXT,
    license_start_date TEXT,
    license_end_date TEXT,
    cost REAL,
    usage_scope TEXT,
    authorized_department TEXT,
    max_downloads INTEGER,
    concurrent_users INTEGER,
    access_url TEXT,
    renewal_option TEXT,
    termination_clause TEXT,
    support_contact TEXT,
    support_email TEXT,
    compliance_requirements TEXT,
    digital_rights_management TEXT,
    version TEXT,
    format TEXT,
    encryption_method TEXT,
    audit_trail_enabled BOOLEAN,
    last_audit_date TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    last_modified_by TEXT,
    last_modified_at TEXT,
    status TEXT,
    backup_location TEXT,
    archival_policy TEXT,
    usage_metrics_url TEXT,
    expiration_notification_sent BOOLEAN,
    expiration_notification_date TEXT,
    license_agreement_url TEXT,
    authorized_user TEXT,
    license_key TEXT,
    license_key_expiration TEXT
);

INSERT INTO digital_content_license VALUES
('DL001','Advanced Statistics eBook','eBook','SciencePress','2022-01-01','2025-12-31',5000,'Campus wide','Statistics Department',1000,200,'https://content.university.edu/advstats','Auto-renew','30 days notice','Tech Support','support@sciencepress.com','ISO27001','DRM v3','PDF','AES256',TRUE,'2023-06-15','Main resource for courses','admin','2021-12-01','admin','2021-12-10','Active','/backups/advstats','5 year retention','https://analytics.university.edu/advstats','TRUE','2025-11-30','/agreements/dl001.pdf','faculty','KEY12345','2025-12-31');

INSERT INTO digital_content_license VALUES
('DL002','Campus Radio Stream','Audio','RadioNet','2021-06-01','2024-05-31',1500,'Online only','Communications Department',5000,500,'https://radio.university.edu/stream','Renewable','60 days notice','Audio Support','audio.support@radionet.com','GDPR','DRM v2','MP3','AES128',FALSE,NULL,'Live campus radio','admin','2021-05-15','admin','2021-05-20','Active','/backups/radio','3 year retention','https://analytics.university.edu/radio','TRUE','2024-05-30','/agreements/dl002.pdf','staff','RADIOKEY','2024-05-31');

INSERT INTO digital_content_license VALUES
('DL003','Virtual Lab Simulation','Software','SimTech','2023-03-01','2028-02-28',8000,'Lab computers','Engineering Department',200,50,'https://sim.university.edu/virtuallab','Option to renew','90 days notice','Software Support','support@simtech.com','SOC2','DRM v4','EXE','RSA2048',TRUE,'2023-09-10','Simulation tool for circuits','admin','2023-02-01','admin','2023-02-05','Active','/backups/virtuallab','7 year retention','https://analytics.university.edu/virtuallab','FALSE',NULL,'/agreements/dl003.pdf','students','SIMKEY789','2028-02-28');