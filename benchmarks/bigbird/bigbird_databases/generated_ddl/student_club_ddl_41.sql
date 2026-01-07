-- Campus building information
CREATE TABLE campus_building_info
(
    building_id TEXT PRIMARY KEY,
    building_name TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zip INTEGER,
    year_built INTEGER,
    total_floors INTEGER,
    square_feet INTEGER,
    primary_use TEXT,
    occupancy_limit INTEGER,
    fire_safety_rating TEXT,
    energy_star_certified TEXT,
    hvac_system TEXT,
    roof_type TEXT,
    parking_spaces INTEGER,
    campus_zone TEXT,
    construction_material TEXT,
    architect_name TEXT,
    maintenance_contact TEXT,
    last_renovation_date TEXT,
    building_status TEXT
);

INSERT INTO campus_building_info VALUES
('B001','ScienceHall','123 Science Rd','Springfield','IL',62701,1995,5,120000,'Laboratory',500,'A','Yes','Central','Metal','150','North','Concrete','SmithArchitects','MikeTaylor','2022-06-15','Active');

INSERT INTO campus_building_info VALUES
('B002','HumanitiesCenter','456 Arts St','Springfield','IL',62702,2005,4,95000,'Classroom',300,'B','No','Split','Shingle','80','East','Brick','DoeDesigns','LauraWhite','2020-09-10','Active');

INSERT INTO campus_building_info VALUES
('B003','AdministrationBlock','789 Admin Ave','Springfield','IL',62703,1980,3,60000,'Office',200,'A','Yes','Variable','Tile','50','South','Stone','GreenPlanners','SamBrown','2018-01-20','Renovating');

-- Research lab schedule
CREATE TABLE research_lab_schedule
(
    schedule_id TEXT PRIMARY KEY,
    lab_id TEXT,
    researcher_id TEXT,
    project_code TEXT,
    start_date TEXT,
    end_date TEXT,
    shift_type TEXT,
    equipment_reserved TEXT,
    safety_briefing_completed TEXT,
    access_level TEXT,
    notes TEXT,
    daily_hours INTEGER,
    week_number INTEGER,
    semester TEXT,
    funding_source TEXT,
    approval_status TEXT,
    supervisor_id TEXT,
    lab_room_number TEXT,
    coolant_type TEXT,
    ventilation_rating TEXT,
    temperature_setpoint REAL,
    humidity_setpoint REAL
);

INSERT INTO research_lab_schedule VALUES
('S001','L101','R001','PRJ1001','2024-01-15','2024-05-30','Day','Microscope,Centri','Yes','Level2','Initial phase',8,3,'Spring','GrantA','Approved','SUP01','Room210','LiquidNitrogen','A','22.5','45.0');

INSERT INTO research_lab_schedule VALUES
('S002','L102','R002','PRJ1002','2024-02-01','2024-06-15','Night','Spectrometer','Yes','Level3','Data collection',10,4,'Spring','GrantB','Pending','SUP02','Room315','Helium','B','19.0','50.0');

INSERT INTO research_lab_schedule VALUES
('S003','L103','R003','PRJ1003','2024-03-10','2024-07-20','Evening','PCRMachine','No','Level1','Setup phase',6,5,'Spring','Internal','Approved','SUP03','Room120','Water','C','20.0','55.0');

-- Digital learning course catalog
CREATE TABLE digital_learning_course
(
    course_id TEXT PRIMARY KEY,
    course_title TEXT,
    department TEXT,
    credit_hours INTEGER,
    course_level TEXT,
    delivery_mode TEXT,
    platform TEXT,
    instructor_id TEXT,
    syllabus_url TEXT,
    enrollment_cap INTEGER,
    current_enrollment INTEGER,
    start_date TEXT,
    end_date TEXT,
    prerequisite_course TEXT,
    language TEXT,
    assessment_type TEXT,
    certification_available TEXT,
    status TEXT,
    last_updated TEXT,
    average_rating REAL,
    review_count INTEGER,
    access_code TEXT
);

INSERT INTO digital_learning_course VALUES
('C001','DataScienceFundamentals','ComputerScience',3,'Undergraduate','Online','Canvas','I001','http://example.com/syl1',200,150,'2024-09-01','2024-12-15','None','English','Project','Yes','Open','2024-08-01',4.5,120,'DSF2024');

INSERT INTO digital_learning_course VALUES
('C002','AdvancedMachineLearning','ComputerScience',4,'Graduate','Hybrid','Moodle','I002','http://example.com/syl2',50,45,'2024-09-01','2025-01-20','C001','English','Exam','Yes','Open','2024-08-05',4.7,85,'AML2024');

INSERT INTO digital_learning_course VALUES
('C003','IntroductionToPhilosophy','Humanities',3,'Undergraduate','Online','Blackboard','I003','http://example.com/syl3',150,140,'2024-09-01','2024-12-15','None','English','Essay','No','Open','2024-08-03',4.2,200,'IP2024');

-- Alumni award records
CREATE TABLE alumni_award_record
(
    award_id TEXT PRIMARY KEY,
    alumni_id TEXT,
    award_name TEXT,
    award_year INTEGER,
    awarding_body TEXT,
    category TEXT,
    citation TEXT,
    award_type TEXT,
    monetary_amount REAL,
    honorific_title TEXT,
    ceremony_location TEXT,
    ceremony_date TEXT,
    presented_by TEXT,
    acceptance_speech TEXT,
    media_release TEXT,
    award_status TEXT,
    nomination_date TEXT,
    nomination_source TEXT,
    verification_code TEXT,
    notes TEXT,
    update_timestamp TEXT,
    archived_flag TEXT
);

INSERT INTO alumni_award_record VALUES
('A001','ALU1001','Alumni Excellence','2023','UniversityBoard','Leadership','Distinguished service to community','Honorary',5000,'Dr','MainAuditorium','2023-06-15','President','Thank you for...','Yes','2023-04-01','Committee','VER123','First award','2023-07-01','No');

INSERT INTO alumni_award_record VALUES
('A002','ALU1002','Innovator Award','2022','TechFoundation','Innovation','Created groundbreaking AI tool','Prize',10000,'Prof','TechCenter','2022-11-20','Dean','Grateful to...','Yes','2022-09-10','NominationPortal','VER456','Second award','2022-12-01','No');

INSERT INTO alumni_award_record VALUES
('A003','ALU1003','Community Service Medal','2024','CivicGroup','Volunteerism','Over 2000 hours of service','Medal',0,'Ms','CityHall','2024-03-05','Mayor','Honored to...','Yes','2024-01-12','CommunityBoard','VER789','Third award','2024-04-01','No');

-- Health clinic staff directory
CREATE TABLE health_clinic_staff
(
    staff_id TEXT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    role TEXT,
    department TEXT,
    license_number TEXT,
    certification TEXT,
    hire_date TEXT,
    employment_status TEXT,
    shift_pattern TEXT,
    phone_extension INTEGER,
    email TEXT,
    office_location TEXT,
    supervisor_id TEXT,
    language_proficiency TEXT,
    years_of_experience INTEGER,
    specialty_area TEXT,
    on_call BOOLEAN,
    last_training_date TEXT,
    credential_expiry DATE,
    notes TEXT,
    active_flag TEXT,
    payroll_code TEXT,
    emergency_contact TEXT,
    emergency_phone INTEGER,
    preferred_contact_method TEXT
);

INSERT INTO health_clinic_staff VALUES
('HS001','Anna','Smith','Physician','Medicine','MED12345','BoardCertified','2015-08-01','FullTime','Day','101','asmith@clinic.org','Room12','HS010','English,Spanish',12,'Cardiology','True','2023-11-20','2025-08-01','Cardiac specialist','Yes','PR001','JohnSmith','5551234','Email');

INSERT INTO health_clinic_staff VALUES
('HS002','Brian','Lee','Nurse','Nursing','NUR67890','RN','2018-03-15','FullTime','Night','102','blee@clinic.org','Room8','HS001','English',8,'Pediatrics','False','2024-01-10','2026-03-15','Pediatric care','Yes','PR002','KarenLee','5555678','Phone');

INSERT INTO health_clinic_staff VALUES
('HS003','Clara','Nguyen','Technician','Radiology','TEC54321','CTCertified','2020-07-22','PartTime','Evening','103','cnguyen@clinic.org','Room5','HS001','English,Vietnamese',4,'Imaging','False','2023-09-05','2025-07-22','Imaging support','Yes','PR003','MichaelNguyen','5559012','Email');

-- Community art exhibit catalog
CREATE TABLE community_art_exhibit
(
    exhibit_id TEXT PRIMARY KEY,
    title TEXT,
    artist_name TEXT,
    medium TEXT,
    dimensions TEXT,
    creation_year INTEGER,
    acquisition_method TEXT,
    display_location TEXT,
    start_date TEXT,
    end_date TEXT,
    curator_id TEXT,
    sponsor_name TEXT,
    insurance_policy TEXT,
    estimated_value REAL,
    public_access TEXT,
    audio_guide_available TEXT,
    lighting_requirements TEXT,
    climate_control TEXT,
    installation_notes TEXT,
    removal_notes TEXT,
    visitor_capacity INTEGER,
    ticket_required TEXT,
    special_event TEXT,
    remarks TEXT,
    last_updated TEXT,
    archived_flag TEXT
);

INSERT INTO community_art_exhibit VALUES
('E001','Sunset Over River','Liam Turner','Oil on Canvas','48x36','2019','Donation','GalleryA','2024-05-01','2024-08-31','C001','LocalBank','Policy123',15000,'Yes','No','Spotlight','Yes','Mounted on wall','Stored in vault',200,'No','OpeningReception','First exhibit','2024-04-15','No');

INSERT INTO community_art_exhibit VALUES
('E002','Modern Geometry','Ava Patel','Metal Sculpture','5x5x10','2021','Purchase','SculptureGarden','2024-06-15','2024-12-15','C002','ArtFoundation','Policy456',30000,'Yes','Yes','Natural','No','Anchored to base','Disassembled for transport',150,'Yes','EveningWalk','Second exhibit','2024-05-20','No');

INSERT INTO community_art_exhibit VALUES
('E003','Digital Dreams','Noah Kim','Digital Print','24x36','2022','Commission','DigitalHall','2024-07-10','2024-10-10','C003','TechSponsor','Policy789',8000,'Yes','Yes','LED','Yes','Mounted on frame','Removed with care',250,'No','InteractiveWorkshop','Third exhibit','2024-06-30','No');

-- Sustainability workshop details
CREATE TABLE sustainability_workshop_detail
(
    workshop_id TEXT PRIMARY KEY,
    workshop_title TEXT,
    host_department TEXT,
    facilitator_id TEXT,
    target_audience TEXT,
    max_participants INTEGER,
    location TEXT,
    scheduled_date TEXT,
    start_time TEXT,
    end_time TEXT,
    registration_deadline TEXT,
    cost REAL,
    materials_provided TEXT,
    prerequisites TEXT,
    sustainability_theme TEXT,
    outcome_expected TEXT,
    evaluation_method TEXT,
    feedback_form_url TEXT,
    carbon_footprint_estimate REAL,
    waste_generated_kg REAL,
    renewable_energy_used TEXT,
    certifications_awarded TEXT,
    notes TEXT,
    status TEXT,
    last_modified TEXT,
    archived_flag TEXT
);

INSERT INTO sustainability_workshop_detail VALUES
('W001','Zero Waste Campus','Facilities','F001','Students',50,'Room101','2024-09-15','09:00','12:00','2024-09-01',0,'Printed handouts','None','Zero Waste','Reduced waste by 30%','Survey','http://example.com/feedback1',0.2,5,'Solar','Certificate of Participation','First workshop','Scheduled','2024-08-01','No');

INSERT INTO sustainability_workshop_detail VALUES
('W002','Renewable Energy Basics','Engineering','F002','Staff',30,'Auditorium','2024-10-10','13:00','16:00','2024-09-25',0,'Digital slides','None','Renewables','Increased knowledge','Quiz','http://example.com/feedback2',0.1,2,'Wind','Badge','Second workshop','Planned','2024-09-05','No');

INSERT INTO sustainability_workshop_detail VALUES
('W003','Sustainable Procurement','Finance','F003','All Employees',40,'ConferenceRoom','2024-11-05','10:00','13:00','2024-10-20',0,'Toolkit','None','Procurement','Improved vendor selection','Assessment','http://example.com/feedback3',0.15,3,'Solar','Badge','Third workshop','Draft','2024-10-01','No');

-- Technology patent applications
CREATE TABLE technology_patent_application
(
    application_id TEXT PRIMARY KEY,
    inventor_id TEXT,
    invention_title TEXT,
    abstract TEXT,
    field_of_technology TEXT,
    filing_date TEXT,
    priority_date TEXT,
    status TEXT,
    examiner_id TEXT,
    office_action_date TEXT,
    response_deadline TEXT,
    claimed_priority TEXT,
    claims_count INTEGER,
    drawings_included TEXT,
    prior_art_references TEXT,
    funding_source TEXT,
    total_cost REAL,
    grant_number TEXT,
    international_filing TEXT,
    publication_number TEXT,
    publication_date TEXT,
    granted_date TEXT,
    maintenance_fee_due DATE,
    notes TEXT,
    last_update TEXT,
    archived_flag TEXT
);

INSERT INTO technology_patent_application VALUES
('PT001','INV1001','SmartThermostat','Adaptive temperature control system','IoT','2024-01-15','2023-12-01','Pending','EX001','2024-03-10','2024-04-10','US20230001',12,'Yes','US20220001;US20220002','UniversityFund',25000,'GR123','US,EP','PUB5678','2024-06-01',NULL,NULL,'First filing','2024-03-15','No');

INSERT INTO technology_patent_application VALUES
('PT002','INV1002','BioDegradablePackaging','Eco-friendly polymer material','MaterialsScience','2024-02-20','2024-01-10','Pending','EX002','2024-04-15','2024-05-15','US20240002',9,'Yes','US20230003;US20230004','CorporateSponsor',18000,'GR456','US','PUB6789','2024-07-10',NULL,NULL,'Second filing','2024-04-10','No');

INSERT INTO technology_patent_application VALUES
('PT003','INV1003','AI-Based Fraud Detection','Machine learning model for real-time fraud detection','AI','2024-03-05','2024-02-01','Pending','EX003','2024-05-01','2024-06-01','US20250003',15,'No','US20240005;US20240006','GovernmentGrant',30000,'GR789','US,JP','PUB7890','2024-08-20',NULL,NULL,'Third filing','2024-05-05','No');

-- Library preservation project
CREATE TABLE library_preservation_project
(
    project_id TEXT PRIMARY KEY,
    project_name TEXT,
    start_date TEXT,
    end_date TEXT,
    lead_archivist_id TEXT,
    collection_type TEXT,
    number_of_items INTEGER,
    preservation_method TEXT,
    climate_control_requirements TEXT,
    funding_source TEXT,
    budget_amount REAL,
    grant_number TEXT,
    status TEXT,
    milestones TEXT,
    risk_assessment TEXT,
    stakeholder_group TEXT,
    vendor_contract_id TEXT,
    equipment_used TEXT,
    training_required TEXT,
    documentation_url TEXT,
    progress_percent INTEGER,
    last_report_date TEXT,
    notes TEXT,
    archived_flag TEXT,
    last_updated TEXT,
    compliance_standard TEXT
);

INSERT INTO library_preservation_project VALUES
('LP001','Rare Book Restoration','2024-04-01','2025-03-31','AR001','Books',1200,'Deacidification','Temp 18C Humidity 45%','FoundationGrant',75000,'GR001','Active','Phase1Complete;Phase2InProgress','Low','LibraryStaff','VC1001','ConservationChamber','Yes','http://example.com/doc1',45,'2024-08-15','Need additional funding','No','2024-08-20','ISO9001');

INSERT INTO library_preservation_project VALUES
('LP002','Manuscript Digitization','2024-06-01','2025-12-31','AR002','Manuscripts',500,'High-Resolution Scanning','Temp 20C Humidity 50%','UniversityFund',90000,'GR002','Planned','Phase1Planning','Medium','DigitalTeam','VC1002','ScannerModelX','Yes','http://example.com/doc2',0,'2024-07-01','Awaiting equipment delivery','No','2024-07-10','ISO27001');

INSERT INTO library_preservation_project VALUES
('LP003','Audio Archive Conservation','2024-05-15','2025-05-14','AR003','AudioTapes',300,'Tape Baking','Temp 16C Humidity 40%','PrivateDonor',60000,'GR003','Active','Phase1Complete','High','AudioDept','VC1003','BakeOvenModelY','No','http://example.com/doc3',30,'2024-09-01','Monitor humidity levels','No','2024-09-05','ISO14001');

-- Student exchange agreement details
CREATE TABLE student_exchange_agreement_detail
(
    agreement_id TEXT PRIMARY KEY,
    home_university TEXT,
    partner_university TEXT,
    program_name TEXT,
    start_term TEXT,
    end_term TEXT,
    student_capacity INTEGER,
    credit_transfer_policy TEXT,
    tuition_responsibility TEXT,
    housing_provision TEXT,
    language_requirement TEXT,
    orientation_date TEXT,
    agreement_signed_date TEXT,
    agreement_expiry_date TEXT,
    contact_person_home TEXT,
    contact_person_partner TEXT,
    funding_opportunity TEXT,
    scholarships_available TEXT,
    visa_support TEXT,
    health_insurance_required TEXT,
    academic_advisor_home TEXT,
    academic_advisor_partner TEXT,
    notes TEXT,
    status TEXT,
    last_review_date TEXT,
    archived_flag TEXT
);

INSERT INTO student_exchange_agreement_detail VALUES
('EX001','NorthStateUniversity','EuroTechUniversity','Spring Mobility','2024Spring','2024Fall',30,'Full','Home','PartnerDorm','B1','2024-02-15','2023-12-01','2025-01-31','JohnDoe','MariaRossi','EUGrant','Yes','AssistanceProvided','Yes','DrSmith','ProfLiu','First agreement','Active','2024-06-01','No');

INSERT INTO student_exchange_agreement_detail VALUES
('EX002','EastCoastCollege','AsiaPacificInstitute','Summer Exchange','2024Summer','2024Summer',20,'Partial','Home','PartnerHostel','A2','2024-04-01','2023-11-10','2024-12-31','EmilyClark','KenTanaka','AsiaFund','No','FullAssistance','Yes','DrLee','ProfSato','Second agreement','Active','2024-07-15','No');

INSERT INTO student_exchange_agreement_detail VALUES
('EX003','WestMountainU','SouthernTech','Winter Immersion','2024Winter','2025Spring',15,'Full','Home','PartnerApartment','C1','2024-09-20','2024-01-20','2025-02-28','MichaelBrown','LuisGomez','WinterGrant','Yes','Limited','Yes','DrWang','ProfDiaz','Third agreement','Pending','2024-10-05','No');

-- Digital asset metadata registry
CREATE TABLE digital_asset_metadata
(
    asset_id TEXT PRIMARY KEY,
    asset_name TEXT,
    asset_type TEXT,
    file_format TEXT,
    file_size_bytes INTEGER,
    resolution TEXT,
    duration_seconds INTEGER,
    creator_id TEXT,
    creation_date TEXT,
    last_modified_date TEXT,
    usage_rights TEXT,
    license_type TEXT,
    access_level TEXT,
    description TEXT,
    tags TEXT,
    project_association TEXT,
    department TEXT,
    storage_location TEXT,
    checksum_sha256 TEXT,
    version_number INTEGER,
    is_active BOOLEAN,
    retention_policy TEXT,
    notes TEXT,
    archived_flag TEXT,
    last_audit_date TEXT,
    compliance_requirement TEXT,
    digital_signature TEXT
);

INSERT INTO digital_asset_metadata VALUES
('DA001','CampusTourVideo','Video','MP4',25000000,'1920x1080',300,'U001','2024-01-10','2024-07-01','Internal','Standard','Public','Overview of campus facilities','tour,video,campus','CampusPromo','Marketing','ServerA','abc123def456ghi789jkl012mno345pqrs678tuv901wxyz','1',True,'5Years','No notes','No','2024-07-02','GDPR','Sig001');

INSERT INTO digital_asset_metadata VALUES
('DA002','AnnualReport2023','Document','PDF',5000000,'8.5x11',0,'U002','2023-12-15','2024-06-20','Public','CreativeCommons','Public','2023 Annual Report','report,2023,finance','AnnualReport','Finance','ServerB','def456ghi789jkl012mno345pqrs678tuv901wxyzabc123','1',True,'Indefinite','No notes','No','2024-06-21','ISO9001','Sig002');

INSERT INTO digital_asset_metadata VALUES
('DA003','ResearchDataset_XYZ','Dataset','CSV',12000000,'',0,'U003','2024-03-05','2024-08-10','Restricted','Custom','Internal','Dataset for XYZ experiment','dataset,experiment,xyz','ResearchProjectX','Research','ServerC','ghi789jkl012mno345pqrs678tuv901wxyzabc123def456','2',True,'10Years','No notes','No','2024-08-11','ISO27001','Sig003');

-- Facility asset depreciation schedule
CREATE TABLE facility_asset_depreciation
(
    asset_id TEXT PRIMARY KEY,
    asset_name TEXT,
    asset_category TEXT,
    purchase_date TEXT,
    purchase_price REAL,
    useful_life_years INTEGER,
    depreciation_method TEXT,
    annual_depreciation REAL,
    accumulated_depreciation REAL,
    book_value REAL,
    depreciation_start_year INTEGER,
    depreciation_end_year INTEGER,
    salvage_value REAL,
    department_responsible TEXT,
    location TEXT,
    maintenance_schedule TEXT,
    warranty_expiration DATE,
    vendor_name TEXT,
    asset_status TEXT,
    last_inspection_date TEXT,
    notes TEXT,
    updated_timestamp TEXT,
    archived_flag TEXT,
    depreciation_rate REAL,
    tax_deductible BOOLEAN,
    insurance_coverage TEXT,
    finance_approval_id TEXT,
    capital_budget_code TEXT
);

INSERT INTO facility_asset_depreciation VALUES
('FA001','HVAC System','Mechanical','2020-05-01',250000,15,'StraightLine',16666.67,33333.34,216666.66,2020,2035,20000,'Facilities','BuildingA','Annual','2025-05-01','HVACCo','Active','2024-07-01','Main HVAC unit','2024-07-15','No',0.0667,True,'Full','FA123','CAP001');

INSERT INTO facility_asset_depreciation VALUES
('FA002','Solar Panel Array','Energy','2021-09-15',500000,20,'DecliningBalance',25000,50000,450000,2021,2040,50000,'Sustainability','BuildingB','Biannual','2024-09-15','SolarTech','Active','2024-06-20','Solar array installation','2024-06-25','No',0.05,True,'Partial','FA124','CAP002');

INSERT INTO facility_asset_depreciation VALUES
('FA003','Laboratory Fume Hood','Safety','2019-03-10',75000,10,'StraightLine',7500,15000,60000,2019,2029,10000,'Research','LabC','Quarterly','2024-03-10','LabEquip','Active','2024-05-10','Fume hood maintenance','2024-05-15','No',0.10,True,'Full','FA125','CAP003');