-- Campus artifact location details
CREATE TABLE campus_artifact_location
(
    artifact_id          TEXT PRIMARY KEY,
    artifact_name        TEXT,
    building_code        TEXT,
    wing                 TEXT,
    floor_number         INTEGER,
    room_number          TEXT,
    display_case         TEXT,
    acquisition_year     INTEGER,
    condition_status     TEXT,
    preservation_method TEXT,
    curator_name         TEXT,
    contact_email        TEXT,
    gps_latitude         REAL,
    gps_longitude        REAL,
    last_moved_date      TEXT,
    insurance_value      REAL,
    source_origin        TEXT,
    material_type        TEXT,
    dimensions           TEXT,
    notes                TEXT
);

INSERT INTO campus_artifact_location VALUES
('A001','HistoricStatue','BLDG01','North','2','201','CaseA','1995','Excellent','ClimateControlled','DrSmith','smith@uni.edu',40.7128,-74.0060,'2022-05-01',15000.00,'Donor','Stone','2x3x5ft','Displayed in lobby');

INSERT INTO campus_artifact_location VALUES
('A002','AncientVase','BLDG02','East','1','105','CaseB','2001','Good','LowHumidity','DrLee','lee@uni.edu',34.0522,-118.2437,'2021-11-15',8000.00,'ArchaeologyDept','Ceramic','12inHeight','On exhibit in gallery');

INSERT INTO campus_artifact_location VALUES
('A003','PhotographicArchive','BLDG03','West','3','312','CaseC','2010','Fair','TemperatureStabilized','DrKim','kim@uni.edu',41.8781,-87.6298,'2023-02-20',12000.00','UniversityArchives','Paper','Varied','Stored in climate room');

-- Student mental health record
CREATE TABLE student_mental_health_record
(
    record_id            TEXT PRIMARY KEY,
    student_id           TEXT,
    assessment_date      TEXT,
    counselor_name       TEXT,
    diagnosis_code       TEXT,
    severity_level       TEXT,
    treatment_plan       TEXT,
    follow_up_date       TEXT,
    medication_prescribed TEXT,
    dosage               TEXT,
    session_count        INTEGER,
    notes                TEXT,
    privacy_consent      TEXT,
    emergency_contact    TEXT,
    contact_phone        TEXT,
    risk_factor_score    REAL,
    academic_status      TEXT,
    housing_status       TEXT,
    financial_aid_status TEXT,
    referral_source      TEXT
);

INSERT INTO student_mental_health_record VALUES
('R001','S12345','2023-01-10','DrBrown','D001','Moderate','CBT weekly','2023-02-10','Sertraline','50mg','6','Patient reports improved mood','Yes','Parent','5551234567',2.5,'Good','OnCampus','Approved','SelfReferral');

INSERT INTO student_mental_health_record VALUES
('R002','S67890','2023-03-22','DrGreen','D002','Severe','Intensive therapy','2023-04-05','Lithium','300mg','12','High anxiety observed','Yes','Sibling','5559876543',4.7,'Probation','OffCampus','Pending','ReferralFromCampusHealth');

INSERT INTO student_mental_health_record VALUES
('R003','S54321','2023-02-15','DrWhite','D003','Mild','Mindfulness workshops','2023-03-01','None','N/A','3','Stress related to exams','Yes','Guardian','5555551212',1.2,'Excellent','OnCampus','Approved','SelfReferral');

-- Renewable energy asset detail
CREATE TABLE renewable_energy_asset_detail
(
    asset_id                TEXT PRIMARY KEY,
    asset_type              TEXT,
    installation_date       TEXT,
    capacity_kw             REAL,
    manufacturer            TEXT,
    model_number            TEXT,
    location_building       TEXT,
    latitude                REAL,
    longitude               REAL,
    commissioning_status    TEXT,
    maintenance_contract    TEXT,
    last_maintenance_date   TEXT,
    expected_life_years     INTEGER,
    current_output_kw       REAL,
    efficiency_percent      REAL,
    grid_connection_point   TEXT,
    ownership_type          TEXT,
    finance_source          TEXT,
    operational_cost_monthly REAL,
    notes                   TEXT
);

INSERT INTO renewable_energy_asset_detail VALUES
('E001','SolarPanel','2020-06-15',250.0,'SunPower','SP-250','BLDG04',36.7783,-119.4179,'Active','ContractA','2023-01-10',25,240.0,96.0,'SubstationA','UniversityOwned','Bond','1500.00','Northwest roof array');

INSERT INTO renewable_energy_asset_detail VALUES
('E002','WindTurbine','2018-09-01',1500.0,'GE','WT-1500','BLDG05',40.7128,-74.0060,'Active','ContractB','2022-12-05',30,1400.0,93.3,'SubstationB','PrivateLease','PowerPurchaseAgreement','8000.00','East field location');

INSERT INTO renewable_energy_asset_detail VALUES
('E003','Geothermal','2015-04-20',500.0,'Ormat','GT-500','BLDG06',34.0522,-118.2437,'Active','ContractC','2023-02-20',20,480.0,96.0,'SubstationC','UniversityOwned','Grant','2000.00','Underground loop system');

-- Alumni career progression
CREATE TABLE alumni_career_progression
(
    alumni_id               TEXT PRIMARY KEY,
    graduation_year         INTEGER,
    degree_awarded          TEXT,
    current_employer        TEXT,
    job_title               TEXT,
    industry_sector         TEXT,
    start_date              TEXT,
    salary_range            TEXT,
    location_city           TEXT,
    location_state          TEXT,
    professional_license   TEXT,
    certifications          TEXT,
    linkedin_profile        TEXT,
    mentor_status           TEXT,
    volunteer_activity     TEXT,
    speaking_engagements    TEXT,
    publications_count      INTEGER,
    patents_filed           INTEGER,
    awards_received         TEXT,
    notes                   TEXT
);

INSERT INTO alumni_career_progression VALUES
('ALU001','2010','BScComputerScience','TechCorp','Senior Engineer','Software','2015-08-01','80k-100k','SanFrancisco','CA','None','AWS Certified','linkedin.com/in/alumni1','Mentor','Yes','Keynote2022',12,2,'EmployeeOfYear','Active in alumni tech forum');

INSERT INTO alumni_career_progression VALUES
('ALU002','2014','MBA','FinBank','Portfolio Manager','Finance','2018-03-15','120k-150k','NewYork','NY','Series7','CFA','linkedin.com/in/alumni2','Mentee','No','Panelist2021',5,0,'TopPerformer','Member of alumni finance network');

INSERT INTO alumni_career_progression VALUES
('ALU003','2008','PhDPhysics','ResearchLab','Lead Scientist','Research','2012-06-20','130k-160k','Boston','MA','None','None','linkedin.com/in/alumni3','Mentor','Yes','WorkshopSpeaker2020',20,4,'LifetimeAchievement','Collaboration with alumni engineers');

-- Library preservation task detail
CREATE TABLE library_preservation_task_detail
(
    task_id                 TEXT PRIMARY KEY,
    collection_id           TEXT,
    item_id                 TEXT,
    task_type               TEXT,
    assigned_staff          TEXT,
    start_date              TEXT,
    end_date                TEXT,
    status                  TEXT,
    materials_used          TEXT,
    preservation_method    TEXT,
    humidity_target_percent REAL,
    temperature_target_c    REAL,
    notes                   TEXT,
    quality_check_passed    TEXT,
    budget_allocated        REAL,
    actual_cost             REAL,
    external_contractor     TEXT,
    contractor_invoice_num  TEXT,
    follow_up_required      TEXT,
    follow_up_date          TEXT
);

INSERT INTO library_preservation_task_detail VALUES
('T001','COL01','ITM1001','DustRemoval','EmmaWhite','2023-01-05','2023-01-07','Completed','SoftBrush','Manual','45.0','20.0','Removed surface dust','Yes',500.00,480.00,'CleanCo','INV123','No','');

INSERT INTO library_preservation_task_detail VALUES
('T002','COL02','ITM2005','Deacidification','LiamGray','2023-02-10','2023-02-14','Completed','AlkalineSolution','Chemical','40.0','19.0','Neutralized acidity','Yes',1200.00,1150.00,'PreserveInc','INV456','Yes','2023-03-01');

INSERT INTO library_preservation_task_detail VALUES
('T003','COL03','ITM3003','BindingRepair','OliviaGreen','2023-03-20','2023-03-22','InProgress','Adhesive','Manual','45.0','21.0','Repairing torn spine','No',800.00,0.00,'BindIt','INV789','Yes','2023-04-15');

-- Campus security camera log
CREATE TABLE campus_security_camera_log
(
    log_id                  TEXT PRIMARY KEY,
    camera_id               TEXT,
    location_description    TEXT,
    event_timestamp         TEXT,
    event_type              TEXT,
    detected_object         TEXT,
    confidence_score        REAL,
    operator_noted_action   TEXT,
    footage_url             TEXT,
    archive_status          TEXT,
    resolution              TEXT,
    frame_rate              INTEGER,
    storage_path            TEXT,
    maintenance_required    TEXT,
    maintenance_date        TEXT,
    firmware_version        TEXT,
    network_segment         TEXT,
    alerts_generated        INTEGER,
    notes                   TEXT,
    reviewed_by             TEXT
);

INSERT INTO campus_security_camera_log VALUES
('L001','CAM01','NorthEntrance','2023-04-01 08:15:00','Motion','Person',0.92,'Reviewed','http://camlogs/north1.mp4','Archived','1920x1080',30,'/archive/north1','No','','v1.2','SegmentA',0,'No incident','SecurityLead');

INSERT INTO campus_security_camera_log VALUES
('L002','CAM02','ParkingLotB','2023-04-01 22:45:00','Object','Vehicle',0.87,'Flagged for review','http://camlogs/parkb1.mp4','Pending','1280x720',25,'/temp/parkb1','Yes','2023-04-02','v1.1','SegmentB',1,'Possible unauthorized parking','SecurityAnalyst');

INSERT INTO campus_security_camera_log VALUES
('L003','CAM03','LibraryEntrance','2023-04-02 14:30:00','Motion','Person',0.95,'No action needed','http://camlogs/libent1.mp4','Archived','1920x1080',30,'/archive/libent1','No','','v1.3','SegmentC',0,'Routine traffic','SecurityLead');

-- Faculty research collaboration network
CREATE TABLE faculty_research_collaboration_network
(
    collaboration_id        TEXT PRIMARY KEY,
    faculty_id_primary      TEXT,
    faculty_id_secondary    TEXT,
    project_title           TEXT,
    start_date              TEXT,
    end_date                TEXT,
    funding_source          TEXT,
    total_budget            REAL,
    role_primary            TEXT,
    role_secondary          TEXT,
    publications_count      INTEGER,
    patents_filed           INTEGER,
    interdisciplinary_flag  TEXT,
    status                  TEXT,
    last_update             TEXT,
    notes                   TEXT,
    department_primary      TEXT,
    department_secondary    TEXT,
    external_partner        TEXT,
    partner_institution     TEXT
);

INSERT INTO faculty_research_collaboration_network VALUES
('C001','F001','F045','AIforHealthcare','2022-01-15','2025-01-14','GovGrant',250000.00,'PrincipalInvestigator','CoInvestigator',8,1,'Yes','Active','2023-04-10','Joint AI model development','ComputerScience','Medicine','HealthTechCorp','TechHealth University');

INSERT INTO faculty_research_collaboration_network VALUES
('C002','F023','F078','RenewableGridOptimization','2021-06-01','2024-05-31','PrivateFunding',180000.00,'LeadEngineer','DataScientist',5,0,'No','Active','2023-03-20','Focus on microgrid control','ElectricalEngineering','EnergySystems','EcoPower Inc','Green Energy Labs');

INSERT INTO faculty_research_collaboration_network VALUES
('C003','F012','F034','Cultural Heritage Digitization','2020-09-10','2023-09-09','FoundationGrant',95000.00,'ProjectManager','Archivist',3,0,'Yes','Completed','2023-09-10','Digitized 10,000 artifacts','History','InformationScience','HeritageOrg','National Museum');

-- Community health survey response
CREATE TABLE community_health_survey_response
(
    response_id             TEXT PRIMARY KEY,
    respondent_id           TEXT,
    survey_date             TEXT,
    age_group               TEXT,
    gender                  TEXT,
    residence_type          TEXT,
    chronic_conditions      TEXT,
    recent_illnesses        TEXT,
    vaccination_status      TEXT,
    exercise_frequency      TEXT,
    diet_quality            TEXT,
    mental_health_rating    INTEGER,
    access_to_care          TEXT,
    health_insurance_status TEXT,
    smoking_status          TEXT,
    alcohol_consumption     TEXT,
    stress_level            INTEGER,
    community_engagement    TEXT,
    suggestions             TEXT,
    follow_up_required      TEXT
);

INSERT INTO community_health_survey_response VALUES
('R001','RESP1001','2023-03-15','35-44','Female','Urban','Hypertension','Flu','FullyVaccinated','3times/week','Balanced',4,'Good','Insured','Never','Occasional','2','Active','More park space','No');

INSERT INTO community_health_survey_response VALUES
('R002','RESP1002','2023-03-16','55-64','Male','Suburban','Diabetes','Cold','PartiallyVaccinated','1time/week','HighFat',3,'Fair','Uninsured','Former','Regular','3','Moderate','Health workshops','Yes');

INSERT INTO community_health_survey_response VALUES
('R003','RESP1003','2023-03-17','25-34','NonBinary','Rural','None','None','NotVaccinated','None','Varied',5,'Poor','Insured','Never','None','1','Low','Community events','No');

-- Technology incubator funding round detail
CREATE TABLE technology_incubator_funding_round_detail
(
    round_id                TEXT PRIMARY KEY,
    incubator_id            TEXT,
    round_name              TEXT,
    start_date              TEXT,
    end_date                TEXT,
    total_funds_committed   REAL,
    number_of_startups      INTEGER,
    average_funding_per_startup REAL,
    lead_investor           TEXT,
    investment_stage        TEXT,
    equity_offered_percent  REAL,
    follow_on_option        TEXT,
    demo_day_date           TEXT,
    selection_criteria      TEXT,
    mentorship_hours_per_startup INTEGER,
    demo_day_venue          TEXT,
    post_round_support      TEXT,
    notes                   TEXT,
    status                  TEXT,
    last_updated            TEXT
);

INSERT INTO technology_incubator_funding_round_detail VALUES
('FR001','INC001','Spring2023','2023-02-01','2023-04-30',500000.00,10,50000.00,'VentureAlpha','Seed',12.0,'Yes','2023-05-15','InnovationScore','30','MainHall','AcceleratorProgram','Focus on AI startups','Closed','2023-05-01');

INSERT INTO technology_incubator_funding_round_detail VALUES
('FR002','INC002','Fall2023','2023-08-01','2023-10-31',750000.00,12,62500.00,'GrowthPartners','SeriesA',15.0,'No','2023-11-20','MarketPotential','40','ConferenceCenter','ConsultingAccess','Emphasis on biotech','Open','2023-10-01');

INSERT INTO technology_incubator_funding_round_detail VALUES
('FR003','INC003','Winter2024','2024-01-10','2024-03-31',300000.00,8,37500.00,'SeedFundCo','PreSeed',10.0,'Yes','2024-04-15','TeamExperience','25','Auditorium','LegalSupport','Focus on sustainability','Planning','2024-03-01');

-- Sustainability initiative project milestone
CREATE TABLE sustainability_initiative_project_milestone
(
    milestone_id            TEXT PRIMARY KEY,
    initiative_id           TEXT,
    milestone_name          TEXT,
    target_date             TEXT,
    actual_completion_date  TEXT,
    status                  TEXT,
    responsible_department  TEXT,
    budget_allocated        REAL,
    actual_spent            REAL,
    carbon_reduction_tons   REAL,
    water_savings_gallons   REAL,
    waste_diverted_percent REAL,
    key_performance_indicator TEXT,
    notes                   TEXT,
    stakeholder_engagement  TEXT,
    risk_level              TEXT,
    mitigation_plan         TEXT,
    verification_method     TEXT,
    document_reference      TEXT,
    last_review_date        TEXT
);

INSERT INTO sustainability_initiative_project_milestone VALUES
('M001','SUST001','SolarRoofInstallation','2023-09-30','2023-09-28','Completed','Facilities','120000.00','118500.00','250.0','0','0','EnergyGeneration','Installed 50kW panels','High','Low','Regular inspections','ThirdPartyAudit','Doc001','2023-10-01');

INSERT INTO sustainability_initiative_project_milestone VALUES
('M002','SUST002','CampusTreePlanting','2023-04-15','2023-04-14','Completed','Grounds','50000.00','49500.00','0','200000','0','TreeCount','Planted 200 oak saplings','Medium','Medium','Volunteer coordination','InternalReport','Doc002','2023-04-20');

INSERT INTO sustainability_initiative_project_milestone VALUES
('M003','SUST003','WaterReuseSystem','2024-06-30','','InProgress','Engineering','200000.00','102000.00','0','150000','0','ReuseRate','Phase 1 construction underway','High','High','Supply chain delay','ContingencyBudget','Doc003','2023-12-01');