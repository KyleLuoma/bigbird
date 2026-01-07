-- Campus Green Building Metrics
CREATE TABLE campus_green_building_metrics (
    building_id TEXT PRIMARY KEY,
    building_name TEXT,
    certification_level TEXT,
    total_sqft INTEGER,
    year_built INTEGER,
    renewable_energy_pct REAL,
    water_recycling_pct REAL,
    waste_diversion_pct REAL,
    leed_points INTEGER,
    operational_hours INTEGER,
    avg_occupancy REAL,
    hvac_efficiency REAL,
    lighting_efficiency REAL,
    roof_type TEXT,
    insulation_r_value REAL,
    green_space_sqft INTEGER,
    solar_panel_capacity_kw REAL,
    rainwater_harvest_capacity_gal INTEGER,
    carbon_footprint_tons REAL,
    maintenance_cost INTEGER,
    ownership_type TEXT,
    notes TEXT
);
INSERT INTO campus_green_building_metrics VALUES ('B001','EcoHall','Platinum',50000,2015,35.5,20.1,45.0,85,8760,0.75,0.92,0.88,'CoolRoof',5.2,10000,150.0,20000,12.5,50000,'University','Main eco building');
INSERT INTO campus_green_building_metrics VALUES ('B002','SolarCenter','Gold',75000,2012,48.0,30.5,55.0,78,8760,0.80,0.95,0.90,'GreenRoof',6.0,15000,250.0,30000,10.2,65000,'Private','Research facility');
INSERT INTO campus_green_building_metrics VALUES ('B003','RiverSide','Silver',60000,2018,22.0,15.0,40.0,70,8760,0.70,0.88,0.85,'MetalRoof',4.8,12000,100.0,15000,14.0,48000,'Public','Community center');

-- Research Data Repository Snapshot
CREATE TABLE research_data_repository_snapshot (
    snapshot_id TEXT PRIMARY KEY,
    repository_name TEXT,
    snapshot_date TEXT,
    total_datasets INTEGER,
    total_files INTEGER,
    total_size_gb REAL,
    curated_dataset_count INTEGER,
    public_access_count INTEGER,
    restricted_access_count INTEGER,
    metadata_quality_score REAL,
    compliance_status TEXT,
    backup_location TEXT,
    checksum_algorithm TEXT,
    encryption_method TEXT,
    retention_policy_years INTEGER,
    access_log_retention_days INTEGER,
    data_owner TEXT,
    data_steward TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO research_data_repository_snapshot VALUES ('SN001','BioDataHub','2024-01-15',1250,34000,875.3,300,1000,250,92.5,'Compliant','OffsiteVault','SHA256','AES256',7,180,'DrSmith','MsLee','Quarterly snapshot','AdminUser','2024-01-15','2024-01-15');
INSERT INTO research_data_repository_snapshot VALUES ('SN002','ChemCompArchive','2024-02-10',980,21000,540.7,250,800,230,88.2,'Compliant','CloudRegionA','MD5','AES128',5,365,'ProfJones','MrBrown','Biannual snapshot','DataMgr','2024-02-10','2024-02-10');
INSERT INTO research_data_repository_snapshot VALUES ('SN003','PhysSimStore','2024-03-05',1430,41500,1120.1,420,1200,310,94.1,'Compliant','OnPremises','SHA1','AES256',10,90,'DrAllen','MsGreen','Monthly snapshot','SysAdmin','2024-03-05','2024-03-05');

-- Faculty Mentorship Program
CREATE TABLE faculty_mentorship_program (
    mentorship_id TEXT PRIMARY KEY,
    mentor_faculty_id TEXT,
    mentee_student_id TEXT,
    program_start_date TEXT,
    program_end_date TEXT,
    meeting_frequency TEXT,
    total_meetings INTEGER,
    topics_covered TEXT,
    mentee_progress_score REAL,
    mentor_feedback TEXT,
    mentee_feedback TEXT,
    communication_channel TEXT,
    approved_by TEXT,
    approval_date TEXT,
    status TEXT,
    hours_spent INTEGER,
    related_course TEXT,
    research_area TEXT,
    funding_source TEXT,
    budget_allocated INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO faculty_mentorship_program VALUES ('M001','F001','S123','2023-09-01','2024-08-31','Monthly',12,'ResearchMethods,CareerPlanning',4.5,'Excellent','Very helpful','Email','DeanOffice','2023-08-20','Active',30,'ENG101','EnergySystems','GrantA',2000,'First cohort','2023-08-21','2024-01-10');
INSERT INTO faculty_mentorship_program VALUES ('M002','F045','S256','2023-01-15','2023-12-15','Biweekly',24,'DataAnalysis,PublicationWriting',4.2,'Good','Insightful','VideoCall','DeptHead','2022-12-30','Completed',48,'STAT202','StatisticalModelling','GrantB',2500,'Second year','2022-12-31','2023-12-16');
INSERT INTO faculty_mentorship_program VALUES ('M003','F078','S389','2024-02-01','2025-01-31','Monthly',12,'LabSafety,GrantProposal',0.0,'Pending','Awaiting start','InPerson','AdminOffice','2024-01-20','Planned',0,'CHEM303','Catalysis','Internal',1500,'Upcoming program','2024-01-21','2024-02-01');

-- Student Exchange Log
CREATE TABLE student_exchange_log (
    exchange_id TEXT PRIMARY KEY,
    student_id TEXT,
    home_institution TEXT,
    host_institution TEXT,
    program_name TEXT,
    start_date TEXT,
    end_date TEXT,
    credit_hours INTEGER,
    stipend_amount INTEGER,
    accommodation_type TEXT,
    housing_location TEXT,
    language_proficiency TEXT,
    prior_experience TEXT,
    host_supervisor TEXT,
    evaluation_score REAL,
    exchange_status TEXT,
    visa_type TEXT,
    visa_issue_date TEXT,
    visa_expiry_date TEXT,
    insurance_provider TEXT,
    insurance_policy_number TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO student_exchange_log VALUES ('EX001','STU001','UniversityA','UniversityB','Spring2024','2024-02-01','2024-05-31',12,1500,'Dorm','CampusA','Advanced','None','ProfKim',4.7,'Completed','F1','2024-01-10','2024-07-10','InsureCo','POL12345','Exchange to Europe','2024-01-15','2024-05-31');
INSERT INTO student_exchange_log VALUES ('EX002','STU045','UniversityC','UniversityD','Fall2023','2023-09-01','2023-12-20',15,1800,'Apartment','CityCenter','Intermediate','Summer2022','DrLee',4.3,'Completed','J1','2023-07-15','2024-01-15','HealthSecure','POL67890','Exchange to Asia','2023-07-20','2023-12-20');
INSERT INTO student_exchange_log VALUES ('EX003','STU078','UniversityE','UniversityF','Summer2024','2024-06-15','2024-08-15',6,0,'HostFamily','RuralArea','Beginner','None','MsPatel',0.0,'Planned','J1','2024-05-01','2024-11-01','GlobalCover','POL11223','Pending approval','2024-05-02','2024-06-15');

-- Library Digital Media
CREATE TABLE library_digital_media (
    media_id TEXT PRIMARY KEY,
    title TEXT,
    media_type TEXT,
    format TEXT,
    creator TEXT,
    publisher TEXT,
    publication_year INTEGER,
    isbn TEXT,
    digital_identifier TEXT,
    file_size_mb REAL,
    duration_minutes REAL,
    language TEXT,
    subject_area TEXT,
    access_level TEXT,
    licensing_agreement TEXT,
    checksum TEXT,
    storage_location TEXT,
    download_count INTEGER,
    last_accessed TEXT,
    citation_count INTEGER,
    retention_policy_years INTEGER,
    notes TEXT,
    added_by TEXT,
    added_at TEXT
);
INSERT INTO library_digital_media VALUES ('DM001','QuantumComputingBasics','Video','MP4','DrAlice','TechPress',2022,'9781234567890','UID001',850.5,90,'English','ComputerScience','Public','CCBY4.0','ABC123','ArchiveServer1',1245,'2024-03-01',58,7,'Retain for 10 years','High demand','LibrarianA','2022-05-10');
INSERT INTO library_digital_media VALUES ('DM002','ShakespeareCompleteWorks','Ebook','PDF','Various','ClassicBooks',1998,'9780987654321','UID002',250.0,0,'English','Literature','Restricted','InstitutionLicense','DEF456','ArchiveServer2',342,'2024-02-15',120,15,5,'Preserve for archival','Limited access','LibrarianB','1999-01-20');
INSERT INTO library_digital_media VALUES ('DM003','WorldMusicCollection','Audio','FLAC','GlobalArtists','MusicWorld',2020,'','UID003',1500.0,480,'Various','Music','Public','CC0','GHI789','ArchiveServer3',785,'2024-01-30',34,3,10,'Open access','New acquisition','LibrarianC','2020-07-05');

-- Health Service Inventory Audit
CREATE TABLE health_service_inventory_audit (
    audit_id TEXT PRIMARY KEY,
    inventory_item_id TEXT,
    item_name TEXT,
    category TEXT,
    quantity_on_hand INTEGER,
    unit_of_measure TEXT,
    reorder_point INTEGER,
    last_order_date TEXT,
    supplier_name TEXT,
    unit_cost REAL,
    total_value REAL,
    expiration_date TEXT,
    storage_location TEXT,
    responsible_staff_id TEXT,
    audit_date TEXT,
    auditor_id TEXT,
    discrepancies_found INTEGER,
    notes TEXT,
    compliance_status TEXT,
    next_audit_due TEXT,
    created_at TEXT,
    updated_at TEXT,
    audit_status TEXT,
    remarks TEXT
);
INSERT INTO health_service_inventory_audit VALUES ('AU001','ITM001','Syringe 5ml','MedicalSupplies',1200,'Units',200,'2023-12-01','MediSupplyCo',0.25,300.0,'2025-12-31','PharmacyRoom1','STF001','2024-01-20','AUD001',0,'All counts match','Compliant','2025-01-20','2024-01-20','2024-01-20','Completed','No issues');
INSERT INTO health_service_inventory_audit VALUES ('AU002','ITM045','Gloves Latex Medium','MedicalSupplies',800,'Boxes',100,'2023-11-15','HealthEquipInc',5.00,4000.0,'2024-11-15','SupplyCabinet2','STF034','2024-01-22','AUD012',2,'Two boxes short','NonCompliant','2024-07-22','2024-01-22','2024-01-22','Pending','Investigate shortage');
INSERT INTO health_service_inventory_audit VALUES ('AU003','ITM089','Bandage Roll','FirstAid',350,'Rolls',50,'2023-10-10','FirstAidCo',1.75,612.5,'2025-10-10','ClinicShelf3','STF078','2024-01-25','AUD023',0,'All good','Compliant','2025-01-25','2024-01-25','2024-01-25','Completed','');

-- Event Vendor Contract
CREATE TABLE event_vendor_contract (
    contract_id TEXT PRIMARY KEY,
    event_id TEXT,
    vendor_id TEXT,
    service_type TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    total_amount INTEGER,
    payment_terms TEXT,
    deposit_amount INTEGER,
    balance_due INTEGER,
    insurance_required TEXT,
    liability_coverage_amount INTEGER,
    contract_status TEXT,
    authorized_by TEXT,
    authorization_date TEXT,
    notes TEXT,
    amendment_count INTEGER,
    last_amendment_date TEXT,
    cancellation_policy TEXT,
    renewal_option TEXT,
    created_at TEXT,
    updated_at TEXT,
    created_by TEXT,
    approved_by TEXT
);
INSERT INTO event_vendor_contract VALUES ('VC001','E001','VND123','Catering','2024-02-01','2024-02-10',15000,'Net30',5000,10000,'Yes',200000,'Active','DirectorA','2024-01-20','Includes vegetarian menu',1,'2024-01-28','30 days notice','Yes','2024-01-15','2024-01-20','ProcMgr','LegalDept');
INSERT INTO event_vendor_contract VALUES ('VC002','E002','VND456','AudioVisual','2024-03-05','2024-03-07',8000,'Net15',2000,6000,'Yes',150000,'Active','DirectorB','2024-02-25','Equipment insurance included',0,NULL,'No refunds','No','2024-02-15','2024-02-25','ProcMgr','LegalDept');
INSERT INTO event_vendor_contract VALUES ('VC003','E003','VND789','Security','2024-04-01','2024-04-03',5000,'Net45',1000,4000,'No','', 'Pending','DirectorC','2024-03-20','Pending background checks',2,'2024-04-01','Full refund up to 7 days','No','2024-03-10','2024-03-20','ProcMgr','LegalDept');

-- Sustainability Training Session
CREATE TABLE sustainability_training_session (
    session_id TEXT PRIMARY KEY,
    training_name TEXT,
    trainer_name TEXT,
    trainer_credentials TEXT,
    session_date TEXT,
    start_time TEXT,
    end_time TEXT,
    location TEXT,
    max_participants INTEGER,
    registered_participants INTEGER,
    attendance_count INTEGER,
    certification_earned TEXT,
    training_materials_link TEXT,
    evaluation_score REAL,
    feedback_summary TEXT,
    carbon_footprint_offset REAL,
    food_provided TEXT,
    waste_management_plan TEXT,
    sponsor_name TEXT,
    sponsor_contribution INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    follow_up_actions TEXT
);
INSERT INTO sustainability_training_session VALUES ('TS001','ZeroWaste Practices','DrGreen','PhDEnvironmentalScience','2024-02-12','09:00','12:00','GreenHall','30','28','27','Yes','http://materials.university.edu/zerowaste','4.8','Positive','0.5','Vegetarian','RecyclingOnly','EcoCorp','2000','Well received','2024-02-01','2024-02-12','Completed','Distribute certificates');
INSERT INTO sustainability_training_session VALUES ('TS002','Energy Efficient Buildings','MsPower','MSEnergy','2024-03-20','13:00','16:00','TechCenter','25','22','22','No','http://materials.university.edu/energybuildings','4.3','Good','0.3','Snacks','CompostAndRecycle','EnergyCo','1500','Interactive session','2024-03-05','2024-03-20','Completed','Schedule follow-up workshop');
INSERT INTO sustainability_training_session VALUES ('TS003','Sustainable Campus Transport','MrTransit','MSTransport','2024-04-15','10:00','13:00','TransportLab','20','19','19','Yes','http://materials.university.edu/transport','4.7','Excellent','0.4','None','BikeParkingOnly','TransitInc','1800','High engagement','2024-04-01','2024-04-15','Completed','Publish summary report');

-- Technology Incubator Funding Round
CREATE TABLE technology_incubator_funding_round (
    round_id TEXT PRIMARY KEY,
    incubator_id TEXT,
    round_name TEXT,
    start_date TEXT,
    end_date TEXT,
    total_funds_available INTEGER,
    currency TEXT,
    number_of_applications INTEGER,
    number_selected INTEGER,
    average_funding_per_startup INTEGER,
    selection_criteria TEXT,
    evaluation_committee TEXT,
    announcement_date TEXT,
    fund_disbursement_date TEXT,
    follow_up_support TEXT,
    mentorship_hours_per_startup INTEGER,
    equity_taken_percent REAL,
    reporting_requirements TEXT,
    sponsor_name TEXT,
    sponsor_contribution INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    contact_person TEXT
);
INSERT INTO technology_incubator_funding_round VALUES ('FR001','INC001','Spring2024','2024-01-01','2024-03-31',500000,'USD',120,15,33333,'InnovationPotential','CommitteeA','2024-04-05','2024-04-15','AccelerationProgram',40,5.0,'QuarterlyReport','TechFund','300000','First round of 2024','2023-12-15','2024-01-01','Open','JaneDoe');
INSERT INTO technology_incubator_funding_round VALUES ('FR002','INC002','Summer2024','2024-04-01','2024-06-30',750000,'USD',200,20,37500,'MarketFit','CommitteeB','2024-07-10','2024-07-20','MentorshipAndDemoDay',50,4.5,'BiAnnualReport','InnovateCo','500000','Mid‑year funding','2024-03-20','2024-04-01','Open','JohnSmith');
INSERT INTO technology_incubator_funding_round VALUES ('FR003','INC003','Fall2024','2024-07-01','2024-09-30',600000,'USD',150,18,33333,'Scalability','CommitteeC','2024-10-05','2024-10-15','GrowthSupport',45,5.5,'AnnualReport','FutureVentures','400000','Fall cohort','2024-06-15','2024-07-01','Open','EmilyClark');

-- Community Art Fund Allocation
CREATE TABLE community_art_fund_allocation (
    allocation_id TEXT PRIMARY KEY,
    fund_year INTEGER,
    project_id TEXT,
    project_name TEXT,
    artist_name TEXT,
    art_form TEXT,
    location TEXT,
    requested_amount INTEGER,
    approved_amount INTEGER,
    funding_source TEXT,
    application_date TEXT,
    approval_date TEXT,
    project_start_date TEXT,
    project_end_date TEXT,
    community_engagement_plan TEXT,
    anticipated_impact TEXT,
    maintenance_plan TEXT,
    evaluation_method TEXT,
    status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    approved_by TEXT,
    reviewed_by TEXT
);
INSERT INTO community_art_fund_allocation VALUES ('CA001',2024,'PRJ100','River Murals','Alice Painter','Mural','RiverBankPark',20000,15000,'CityArtsCouncil','2024-01-10','2024-02-01','2024-03-15','2024-06-30','WorkshopsAndTours','IncreaseFootTraffic','MonthlyInspection','SurveysAndCounts','Approved','High public interest','2024-01-15','2024-02-01','CouncilMemberA','StaffReviewer1');
INSERT INTO community_art_fund_allocation VALUES ('CA002',2024,'PRJ101','Sculpture Garden','Brian Sculptor','Sculpture','GreenCampus','35000','30000','StateArtsFund','2024-02-20','2024-03-10','2024-04-01','2024-10-01','ArtistTalksAndGuidedTours','EnhanceCampusAesthetic','AnnualConservation','VisitorFeedback','Approved','Collaboration with engineering dept','2024-02-25','2024-03-10','CouncilMemberB','StaffReviewer2');
INSERT INTO community_art_fund_allocation VALUES ('CA003',2024,'PRJ102','Digital Light Installation','Cathy Digital','DigitalArt','MainQuad','50000','40000','PrivateDonor','2024-03-05','2024-03-20','2024-04-15','2024-09-15','InteractiveWorkshops','PromoteTechEngagement','TechSupportPlan','UsageAnalytics','Approved','First of its kind on campus','2024-03-10','2024-03-20','CouncilMemberC','StaffReviewer3');

-- Research Collaboration Network
CREATE TABLE research_collaboration_network (
    collaboration_id TEXT PRIMARY KEY,
    network_name TEXT,
    lead_institution TEXT,
    partner_institution TEXT,
    domain TEXT,
    start_date TEXT,
    end_date TEXT,
    funding_amount INTEGER,
    funding_agency TEXT,
    project_title TEXT,
    principal_investigator TEXT,
    co_pi TEXT,
    data_sharing_agreement TEXT,
    publication_policy TEXT,
    meetings_per_year INTEGER,
    shared_resources TEXT,
    joint_workshops INTEGER,
    latest_progress_report TEXT,
    status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    contact_email TEXT,
    contact_phone TEXT
);
INSERT INTO research_collaboration_network VALUES ('RCN001','GlobalHealthAI','UniversityA','InstituteB','HealthAI','2023-01-01','2025-12-31',1200000,'NIH','AI for Disease Prediction','DrEmily','ProfKumar','StandardAgreement','OpenAccess','6','ComputeCluster','4','ReportQ1_2024','Active','Expanding to Europe','2023-12-01','2024-01-15','collab@univa.edu','5551234567');
INSERT INTO research_collaboration_network VALUES ('RCN002','RenewableEnergyConsortium','UniversityC','TechLabD','Energy','2022-06-15','2026-06-14',900000,'DOE','NextGen Solar Materials','DrLiam','DrMia','CustomAgreement','Embargoed','4','SolarTestBed','3','ReportMid2024','Active','Preparing joint conference','2023-11-10','2024-01-10','energy@univc.edu','5559876543');
INSERT INTO research_collaboration_network VALUES ('RCN003','QuantumComputingAlliance','InstituteE','UniversityF','Quantum','2024-03-01','2027-02-28',1500000,'NSF','Scalable Quantum Algorithms','ProfOlivia','DrNoah','StandardAgreement','OpenAccess','5','QuantumLab','2','ReportQ2_2024','Pending','Awaiting final signatures','2024-02-20','2024-03-01','quantum@inste.edu','5555551212');

-- Campus Water Quality Station
CREATE TABLE campus_water_quality_station (
    station_id TEXT PRIMARY KEY,
    location TEXT,
    installation_date TEXT,
    sensor_type TEXT,
    measurement_parameter TEXT,
    unit TEXT,
    calibration_date TEXT,
    last_maintenance_date TEXT,
    maintenance_company TEXT,
    data_log_interval_minutes INTEGER,
    current_value REAL,
    threshold_min REAL,
    threshold_max REAL,
    status TEXT,
    alert_sent TEXT,
    responsible_staff_id TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    data_source TEXT,
    verification_method TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    latitude REAL,
    longitude REAL,
    accuracy REAL
);
INSERT INTO campus_water_quality_station VALUES ('WS001','NorthLake','2022-05-10','MultiSensor','pH','',
'2024-01-15','2024-01-20','EnviroTech',30,7.2,6.5,8.5,'Active','No','STF045','Routine monitoring','2024-01-10','SensorNetwork','PeriodicCalibration','wateradmin@university.edu','5551112222',41.1234,-71.5678,0.01);
INSERT INTO campus_water_quality_station VALUES ('WS002','EastStream','2021-09-01','Conductivity','Conductivity','µS/cm',
'2023-12-01','2024-01-05','AquaSolutions',15,350.0,300.0,500.0,'Active','Yes','STF078','Alert raised on high conductivity','2024-01-05','SensorNetwork','ManualCheck','wateradmin@university.edu','5553334444',41.2345,-71.6789,0.05);
INSERT INTO campus_water_quality_station VALUES ('WS003','SouthPond','2023-02-20','Turbidity','Turbidity','NTU',
'2024-02-01','2024-02-10','ClearWaterCo',60,2.5,0.0,5.0,'Active','No','STF102','Clear water','2024-02-10','SensorNetwork','LabValidation','wateradmin@university.edu','5555556666',41.3456,-71.7890,0.02);