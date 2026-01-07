-- Table: campus_drone_flight_log
CREATE TABLE campus_drone_flight_log (
    flight_id TEXT PRIMARY KEY,
    drone_id TEXT,
    operator_id TEXT,
    flight_date TEXT,
    start_time TEXT,
    end_time TEXT,
    latitude_start REAL,
    longitude_start REAL,
    latitude_end REAL,
    longitude_end REAL,
    altitude_avg REAL,
    flight_duration_minutes INTEGER,
    weather_condition TEXT,
    wind_speed REAL,
    battery_start_percent INTEGER,
    battery_end_percent INTEGER,
    payload_type TEXT,
    payload_weight_kg REAL,
    flight_purpose TEXT,
    notes TEXT,
    approved_by TEXT,
    flight_status TEXT
);

INSERT INTO campus_drone_flight_log VALUES (
    'FL001','DRN01','OP100','2025-03-15','08:00','08:30',40.7128,-74.0060,40.7130,-74.0055,120.5,30,'Clear',5.2,100,85,'Camera',0.5,'Aerial Survey','First test flight','ADMIN01','Completed'
);
INSERT INTO campus_drone_flight_log VALUES (
    'FL002','DRN02','OP101','2025-04-02','10:15','10:45',34.0522,-118.2437,34.0525,-118.2440,110.0,30,'PartlyCloudy',3.8,100,78,'Thermal','0.8','Infrastructure Inspection','Routine check','ADMIN02','Completed'
);
INSERT INTO campus_drone_flight_log VALUES (
    'FL003','DRN03','OP102','2025-05-20','14:00','14:20',41.8781,-87.6298,41.8784,-87.6295,130.2,20,'Windy',12.0,100,60,'Package','1.2','Delivery Test','Delivered mock package','ADMIN03','Aborted'
);

-- Table: virtual_lab_experiment
CREATE TABLE virtual_lab_experiment (
    experiment_id TEXT PRIMARY KEY,
    course_code TEXT,
    instructor_id TEXT,
    lab_section TEXT,
    start_date TEXT,
    end_date TEXT,
    simulation_type TEXT,
    software_version TEXT,
    num_students INTEGER,
    avg_grade REAL,
    max_grade REAL,
    min_grade REAL,
    cpu_cores_allocated INTEGER,
    memory_gb_allocated INTEGER,
    storage_gb_allocated INTEGER,
    dataset_name TEXT,
    dataset_version TEXT,
    parameter_set TEXT,
    result_summary TEXT,
    feedback TEXT,
    approval_status TEXT,
    last_modified TEXT
);

INSERT INTO virtual_lab_experiment VALUES (
    'EXP001','CS101','INST01','L01','2025-01-10','2025-01-20','PhysicsSimulation','v2.3',30,85.5,98.0,72.0,4,16,100,'ParticleData','v1.0','SetA','Successful convergence','Positive feedback','Approved','2025-01-21'
);
INSERT INTO virtual_lab_experiment VALUES (
    'EXP002','BIO202','INST02','L02','2025-02-05','2025-02-15','GenomicsAnalysis','v1.8',25,78.0,92.0,65.0,8,32,250,'GenomeSeq','v3.2','SetB','Partial mismatches','Needs improvement','Pending','2025-02-16'
);
INSERT INTO virtual_lab_experiment VALUES (
    'EXP003','ENG303','INST03','L03','2025-03-12','2025-03-22','StructuralModel','v4.0',20,88.0,100.0,80.0,2,8,50,'BridgeData','v2.5','SetC','All tests passed','Excellent','Approved','2025-03-23'
);

-- Table: student_entrepreneurship_venture
CREATE TABLE student_entrepreneurship_venture (
    venture_id TEXT PRIMARY KEY,
    student_id TEXT,
    venture_name TEXT,
    industry_sector TEXT,
    incorporation_date TEXT,
    funding_stage TEXT,
    total_funding_usd REAL,
    investors TEXT,
    team_size INTEGER,
    product_name TEXT,
    product_version TEXT,
    market_launch_date TEXT,
    revenue_last_quarter_usd REAL,
    profit_margin_percent REAL,
    patents_filed INTEGER,
    patents_granted INTEGER,
    mentorship_program TEXT,
    accelerator_assigned TEXT,
    status TEXT,
    milestones TEXT,
    pitch_deck_url TEXT,
    demo_video_url TEXT,
    last_update TEXT,
    notes TEXT
);

INSERT INTO student_entrepreneurship_venture VALUES (
    'V001','STU1001','EcoClean','EnvironmentalTech','2024-09-01','Seed',250000,'INV001,INV002',5,'EcoWash','1.0','2025-02-15',12000,15.0,1,0,'MentorA','AccelX','Active','M1Completed','http://example.com/pitch1','http://example.com/demo1','2025-01-30','Initial launch phase'
);
INSERT INTO student_entrepreneurship_venture VALUES (
    'V002','STU1002','HealthSync','HealthIT','2025-01-20','PreSeed',50000,'INV003',3,'SyncApp','0.5','2025-07-01',0,0.0,0,0,'MentorB','AccelY','Planning','M0Setup','http://example.com/pitch2','http://example.com/demo2','2025-02-10','Prototype development'
);
INSERT INTO student_entrepreneurship_venture VALUES (
    'V003','STU1003','EduBridge','EdTech','2023-06-15','SeriesA',1500000,'INV004,INV005,INV006',12,'BridgeLearn','2.3','2024-11-20',350000,22.5,3,2,'MentorC','AccelZ','Scaling','M2Expansion','http://example.com/pitch3','http://example.com/demo3','2025-01-05','International expansion underway'
);

-- Table: faculty_research_collaboration_portal
CREATE TABLE faculty_research_collaboration_portal (
    collaboration_id TEXT PRIMARY KEY,
    lead_faculty_id TEXT,
    partner_institution TEXT,
    discipline TEXT,
    start_date TEXT,
    end_date TEXT,
    funding_source TEXT,
    total_budget_usd REAL,
    grant_number TEXT,
    project_title TEXT,
    project_description TEXT,
    milestones TEXT,
    deliverables TEXT,
    publications_expected INTEGER,
    datasets_shared INTEGER,
    software_tools TEXT,
    data_sharing_agreement TEXT,
    intellectual_property_policy TEXT,
    status TEXT,
    last_review_date TEXT,
    next_milestone_date TEXT,
    coordinator_contact TEXT,
    portal_url TEXT,
    notes TEXT
);

INSERT INTO faculty_research_collaboration_portal VALUES (
    'COL001','FAC001','InstituteA','ComputerScience','2024-01-01','2026-12-31','FederalGrant',800000,'GR12345','AI for Climate Modeling','Develop AI models to predict climate patterns','M1Completed,M2InProgress','ModelPrototype,Report','5','3','TensorFlow,Python','AgreementV1','IPPolicyV2','Active','2025-01-15','2025-06-01','coordA@example.com','http://portal.example.com/col001','Initial phase successful'
);
INSERT INTO faculty_research_collaboration_portal VALUES (
    'COL002','FAC002','InstituteB','Biochemistry','2023-05-15','2025-05-14','IndustryGrant',500000,'GR67890','Protein Folding Study','Investigate protein folding mechanisms','M1Completed,M2Completed','DatasetRelease,Paper','3','2','MATLAB,R','AgreementV2','IPPolicyV1','Completed','2025-04-20','2025-04-20','coordB@example.com','http://portal.example.com/col002','Project completed on schedule'
);
INSERT INTO faculty_research_collaboration_portal VALUES (
    'COL003','FAC003','InstituteC','RenewableEnergy','2025-02-01','2027-01-31','StateGrant',1200000,'GR24680','Solar Grid Optimization','Optimize solar grid distribution','M1Planning','AlgorithmDesign','4','5','R,Julia','AgreementV3','IPPolicyV3','Planning','2025-02-10','2025-09-01','coordC@example.com','http://portal.example.com/col003','Kickoff meeting held'
);

-- Table: environmental_grant_application
CREATE TABLE environmental_grant_application (
    application_id TEXT PRIMARY KEY,
    applicant_id TEXT,
    project_title TEXT,
    project_summary TEXT,
    requested_amount_usd REAL,
    funding_category TEXT,
    submission_date TEXT,
    review_deadline TEXT,
    status TEXT,
    reviewer_ids TEXT,
    score REAL,
    decision_date TEXT,
    awarded_amount_usd REAL,
    contract_number TEXT,
    implementation_start_date TEXT,
    implementation_end_date TEXT,
    monitoring_plan TEXT,
    sustainability_metrics TEXT,
    public_outreach_plan TEXT,
    compliance_requirements TEXT,
    attached_documents TEXT,
    last_modified TEXT,
    notes TEXT,
    funding_agency TEXT
);

INSERT INTO environmental_grant_application VALUES (
    'APP001','ORG001','Urban Tree Canopy Expansion','Increase tree coverage in downtown area','250000','UrbanForestry','2025-01-10','2025-02-28','Submitted','REV001,REV002',NULL,NULL,NULL,NULL,NULL,NULL,'AnnualSurveys','CanopyCoverage','CommunityWorkshops','EPARegulations','DocList1','2025-01-10','Awaiting review','EPA'
);
INSERT INTO environmental_grant_application VALUES (
    'APP002','ORG002','River Cleanup Initiative','Remove pollutants from River X','500000','WaterQuality','2024-11-20','2025-01-15','Approved','REV003,REV004',89.5,'2025-02-01','500000','CNTR123','2025-03-01','2026-03-01','MonthlyWaterTesting','ToxicityLevels','SchoolOutreach','StateWaterAct','DocList2','2025-02-01','Funding released','StateWaterDept'
);
INSERT INTO environmental_grant_application VALUES (
    'APP003','ORG003','Renewable Energy Pilot','Deploy solar panels on campus buildings','750000','RenewableEnergy','2025-02-05','2025-04-01','Pending','REV005,REV006',NULL,NULL,NULL,NULL,NULL,NULL,'QuarterlyEfficiencyReports','EnergySaved','CampusEvents','FederalEnergyPolicy','DocList3','2025-02-05','Under review','DOE'
);

-- Table: digital_twin_model
CREATE TABLE digital_twin_model (
    model_id TEXT PRIMARY KEY,
    asset_type TEXT,
    asset_id TEXT,
    creation_date TEXT,
    version TEXT,
    simulation_engine TEXT,
    spatial_resolution_m REAL,
    temporal_resolution_s REAL,
    data_sources TEXT,
    integration_status TEXT,
    validation_metric REAL,
    last_validation_date TEXT,
    operational_status TEXT,
    maintenance_schedule TEXT,
    owner_department TEXT,
    access_level TEXT,
    usage_policy TEXT,
    related_projects TEXT,
    storage_location TEXT,
    backup_location TEXT,
    retention_period_years INTEGER,
    last_updated TEXT,
    notes TEXT,
    compliance_standard TEXT
);

INSERT INTO digital_twin_model VALUES (
    'DTM001','Building','BLDG01','2024-12-01','v1.0','SimEngineX',0.5,60.0,'BIM,IoT','Active',0.92,'2025-01-15','Running','Quarterly','Facilities','Public','OpenAccess','ProjA,ProjB','/models/dtm001','/backup/dtm001','5','2025-01-20','Initial deployment','ISO50001'
);
INSERT INTO digital_twin_model VALUES (
    'DTM002','HVACSystem','HVAC12','2025-02-10','v0.9','SimEngineY',0.1,30.0,'SensorFeed,CMDB','Testing',0.85,'2025-02-20','Testing','Monthly','Engineering','Restricted','Controlled','ProjC','/models/dtm002','/backup/dtm002','3','2025-02-25','Performance tuning','ASHRAE90.1'
);
INSERT INTO digital_twin_model VALUES (
    'DTM003','CampusNetwork','NET05','2025-01-05','v2.1','SimEngineZ',0.2,120.0,'SNMP,LogFiles','Active',0.95,'2025-02-10','Running','Biannual','IT','Confidential','Limited','ProjD,ProjE','/models/dtm003','/backup/dtm003','7','2025-02-12','Network resilience modeling','NIST800-53'
);

-- Table: campus_food_waste_audit
CREATE TABLE campus_food_waste_audit (
    audit_id TEXT PRIMARY KEY,
    audit_date TEXT,
    auditor_id TEXT,
    location TEXT,
    waste_type TEXT,
    total_waste_kg REAL,
    composted_kg REAL,
    recycled_kg REAL,
    landfill_kg REAL,
    diversion_rate_percent REAL,
    source_category TEXT,
    meal_service TEXT,
    average_plate_weight_kg REAL,
    number_of_meals INTEGER,
    peak_hour TEXT,
    notes TEXT,
    corrective_actions TEXT,
    follow_up_date TEXT,
    status TEXT,
    documentation_link TEXT,
    last_modified TEXT,
    comments TEXT,
    responsible_department TEXT,
    compliance_status TEXT
);

INSERT INTO campus_food_waste_audit VALUES (
    'AUD001','2025-01-15','AUD001','DiningHallA','Organic','1200.5','900.0','150.0','150.5',75.0,'Cafeteria','Lunch','0.35',3500,'12:00','Reduced waste due to portion control','Implement trayless dining','2025-02-10','Completed','http://docs.example.com/aud001','2025-01-16','All good','FoodServices','Compliant'
);
INSERT INTO campus_food_waste_audit VALUES (
    'AUD002','2025-02-20','AUD002','DiningHallB','Mixed','950.0','600.0','200.0','150.0',84.2,'Buffet','Dinner','0.40',2800,'18:30','Improved composting','Add more compost bins','2025-03-15','InProgress','http://docs.example.com/aud002','2025-02-21','Monitoring','FoodServices','Compliant'
);
INSERT INTO campus_food_waste_audit VALUES (
    'AUD003','2025-03-10','AUD003','CaféC','Organic','400.0','350.0','30.0','20.0',92.5,'CoffeeShop','Snack','0.15',1200,'09:00','Excellent diversion rate','Maintain current practices','2025-04-05','Completed','http://docs.example.com/aud003','2025-03-11','No issues','FoodServices','Compliant'
);

-- Table: research_data_curator
CREATE TABLE research_data_curator (
    curator_id TEXT PRIMARY KEY,
    researcher_id TEXT,
    dataset_id TEXT,
    dataset_name TEXT,
    domain TEXT,
    version TEXT,
    creation_date TEXT,
    last_update TEXT,
    storage_location TEXT,
    access_restriction TEXT,
    licensing TEXT,
    doi TEXT,
    size_gb REAL,
    record_count INTEGER,
    schema_version TEXT,
    quality_metric REAL,
    validation_status TEXT,
    citation_count INTEGER,
    related_publications TEXT,
    funding_source TEXT,
    usage_statistics TEXT,
    backup_location TEXT,
    retention_policy TEXT,
    notes TEXT
);

INSERT INTO research_data_curator VALUES (
    'CUR001','RES001','DS001','GenomeSeqData','Genomics','v1.2','2024-06-01','2025-01-20','/data/genome','Restricted','CC-BY-NC','10.1234/dataset001',250.5,1200000,'v1','0.98','Validated',15,'PUB001,PUB002','GrantA','5000 downloads','/backup/genome','5 years','High-quality dataset'
);
INSERT INTO research_data_curator VALUES (
    'CUR002','RES002','DS002','ClimateModelOutputs','Climatology','v3.0','2023-09-15','2025-02-05','/data/climate','Public','CC0','10.5678/dataset002',800.0,3000000,'v3','0.93','Validated',8,'PUB010','GrantB','20000 downloads','/backup/climate','10 years','Large-scale model data'
);
INSERT INTO research_data_curator VALUES (
    'CUR003','RES003','DS003','SocialNetworkGraph','Sociology','v0.9','2025-01-10','2025-01-30','/data/social','Restricted','CC-BY','10.9012/dataset003',120.0,500000,'v0','0.88','Pending Validation',2,'PUB020','GrantC','1500 downloads','/backup/social','3 years','Preliminary dataset'
);

-- Table: alumni_network_event_attendance
CREATE TABLE alumni_network_event_attendance (
    attendance_id TEXT PRIMARY KEY,
    alumni_id TEXT,
    event_id TEXT,
    registration_date TEXT,
    attendance_status TEXT,
    ticket_type TEXT,
    meals_included TEXT,
    accommodation_provided TEXT,
    travel_arrangement TEXT,
    feedback_score REAL,
    comments TEXT,
    sponsor_code TEXT,
    networking_sessions_attended INTEGER,
    total_hours REAL,
    volunteer_role TEXT,
    donation_amount_usd REAL,
    follow_up_sent_date TEXT,
    follow_up_response TEXT,
    last_contact_date TEXT,
    contact_method TEXT,
    consent_to_marketing TEXT,
    profile_updated TEXT,
    notes TEXT,
    event_year INTEGER
);

INSERT INTO alumni_network_event_attendance VALUES (
    'ATD001','ALU1001','EVT500','2025-03-01','Attended','VIP','Full','Yes','Shuttle','4.5','Great event','SP001',3,6.0,'Host','200','2025-04-01','Positive','2025-04-02','Email','Yes','2025-04-02','N/A',2025
);
INSERT INTO alumni_network_event_attendance VALUES (
    'ATD002','ALU1002','EVT501','2025-02-15','NoShow','Standard','None','No','Self','0.0','Did not attend','SP002',0,0.0,NULL,'0','2025-03-01','NoResponse','2025-03-02','Phone','No','2025-03-02','Sent reminder',2025
);
INSERT INTO alumni_network_event_attendance VALUES (
    'ATD003','ALU1003','EVT502','2025-01-20','Attended','Student','Partial','No','Car','3.8','Enjoyed panels','SP003',2,4.5,'Volunteer','50','2025-02-15','Positive','2025-02-16','Mail','Yes','2025-02-16','Follow-up scheduled',2025
);

-- Table: policy_change_tracker
CREATE TABLE policy_change_tracker (
    change_id TEXT PRIMARY KEY,
    policy_id TEXT,
    policy_name TEXT,
    effective_date TEXT,
    change_type TEXT,
    description TEXT,
    initiator_department TEXT,
    stakeholder_group TEXT,
    approval_status TEXT,
    approved_by TEXT,
    approval_date TEXT,
    implementation_plan TEXT,
    budget_impact_usd REAL,
    risk_assessment TEXT,
    communication_plan TEXT,
    training_required TEXT,
    documentation_link TEXT,
    revision_number INTEGER,
    previous_version TEXT,
    next_review_date TEXT,
    comments TEXT,
    last_modified TEXT,
    compliance_deadline TEXT,
    status TEXT
);

INSERT INTO policy_change_tracker VALUES (
    'CHG001','POL100','DataRetentionPolicy','2025-04-01','Amendment','Extend retention period from 3 to 5 years','Legal','AllStaff','Approved','DIR001','2025-03-20','Update systems and inform users','50000','Low','Email blast and intranet posting','Yes','http://policies.example.com/pol100','2','v1.0','2026-04-01','All good','2025-03-21','2025-04-01','Implemented'
);
INSERT INTO policy_change_tracker VALUES (
    'CHG002','POL200','RemoteWorkPolicy','2025-05-15','New','Introduce hybrid remote work option','HR','Employees','Pending','DIR002','2025-04-30','Create guidelines and tooling','200000','Medium','Town hall and FAQs','Yes','http://policies.example.com/pol200','1','None','2026-05-15','Awaiting final signoff','2025-04-28','2025-05-15','Pending'
);
INSERT INTO policy_change_tracker VALUES (
    'CHG003','POL300','CampusSafetyProtocol','2025-03-01','Revision','Add new emergency evacuation routes','Safety','Students,Staff','Approved','DIR003','2025-02-20','Install signage and conduct drills','150000','High','Campus alerts and posters','No','http://policies.example.com/pol300','3','v2.0','2025-12-01','Implementation smooth','2025-02-21','2025-03-01','Implemented'
);