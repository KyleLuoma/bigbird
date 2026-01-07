-- Campus security camera metadata
CREATE TABLE campus_security_camera (
    camera_id TEXT PRIMARY KEY,
    building_code TEXT,
    floor_number INTEGER,
    wing TEXT,
    install_date TEXT,
    resolution TEXT,
    lens_type TEXT,
    manufacturer TEXT,
    model_number TEXT,
    ip_address TEXT,
    mac_address TEXT,
    firmware_version TEXT,
    status TEXT,
    last_maintenance_date TEXT,
    maintenance_vendor TEXT,
    field_of_view REAL,
    pan_range REAL,
    tilt_range REAL,
    zoom_level INTEGER,
    power_source TEXT,
    network_segment TEXT,
    notes TEXT
);

INSERT INTO campus_security_camera VALUES
('CAM001','BLDG01',1,'North','2022-01-15','4K','WideAngle','SecuCam','SC1000','192.168.1.10','AA:BB:CC:DD:EE:01','v1.2','Active','2023-06-01','TechServ',90.0,180.0,90.0,4,'PoE','VLAN10','InitialInstall');

INSERT INTO campus_security_camera VALUES
('CAM002','BLDG02',2,'South','2021-11-20','1080p','Telephoto','WatchGuard','WG200','192.168.1.11','AA:BB:CC:DD:EE:02','v2.0','Active','2023-05-15','SecureTech',70.0,160.0,80.0,6,'PoE','VLAN12','ReplacedLens');

INSERT INTO campus_security_camera VALUES
('CAM003','BLDG03',3,'East','2023-03-05','4K','FishEye','CamEye','CE300','192.168.1.12','AA:BB:CC:DD:EE:03','v1.5','Inactive','2023-08-20','MaintCo',120.0,200.0,100.0,8,'Battery','VLAN14','PendingActivation');

-- Student health record repository
CREATE TABLE student_health_record (
    record_id TEXT PRIMARY KEY,
    student_id TEXT,
    visit_date TEXT,
    clinic_code TEXT,
    provider_name TEXT,
    department TEXT,
    diagnosis_code TEXT,
    diagnosis_desc TEXT,
    treatment_code TEXT,
    treatment_desc TEXT,
    medication TEXT,
    dosage TEXT,
    frequency TEXT,
    duration_days INTEGER,
    follow_up_needed TEXT,
    follow_up_date TEXT,
    notes TEXT,
    vitals_weight REAL,
    vitals_height REAL,
    bmi REAL,
    blood_pressure TEXT,
    heart_rate INTEGER,
    temperature REAL,
    immunization_status TEXT,
    allergies TEXT
);

INSERT INTO student_health_record VALUES
('HR001','STU1001','2023-09-01','CLN01','DrSmith','GeneralMedicine','D001','CommonCold','T001','Rest','Paracetamol','500mg','TwiceDaily',7,'Yes','2023-09-08','MildFever',68.5,170.0,23.7,'120/80',72,37.0,'UpToDate','None');

INSERT INTO student_health_record VALUES
('HR002','STU1002','2023-08-15','CLN02','DrLee','Dermatology','D045','Acne','T010','TopicalCream','BenzoylPeroxide','2%', 'OnceDaily',30,'No',NULL,'SkinIrritation',55.0,165.0,20.2,'110/70',68,36.8,'UpToDate','Penicillin');

INSERT INTO student_health_record VALUES
('HR003','STU1003','2023-07-22','CLN01','DrKhan','Pediatrics','D078','AllergicRhinitis','T020','Antihistamine','Loratadine','10mg','OnceDaily',14,'Yes','2023-08-05','SeasonalAllergies',60.0,160.0,23.4,'115/75',70,36.9,'Pending','None');

-- Facility lease agreement catalog
CREATE TABLE facility_lease_agreement (
    lease_id TEXT PRIMARY KEY,
    facility_name TEXT,
    lease_start_date TEXT,
    lease_end_date TEXT,
    lessee_name TEXT,
    lessee_contact TEXT,
    rent_amount REAL,
    rent_frequency TEXT,
    security_deposit REAL,
    maintenance_responsibility TEXT,
    insurance_required TEXT,
    insurance_provider TEXT,
    insurance_policy_number TEXT,
    renewal_option TEXT,
    renewal_notice_period INTEGER,
    termination_clause TEXT,
    early_termination_fee REAL,
    permitted_use TEXT,
    access_hours TEXT,
    parking_included TEXT,
    utility_responsibility TEXT,
    signage_allowed TEXT,
    alterations_allowed TEXT,
    compliance_requirements TEXT,
    notes TEXT
);

INSERT INTO facility_lease_agreement VALUES
('LEASE001','AuditoriumA','2022-01-01','2025-12-31','StudentAssoc','5551234',15000.0,'Monthly',5000.0,'Lessee','Yes','AcmeIns','POL123','OptionToRenew','180','Standard','2000.0','Events','24/7','Yes','Lessee','Yes','No','ADACompliance','AnnualReview');

INSERT INTO facility_lease_agreement VALUES
('LEASE002','LabB','2023-06-15','2028-06-14','ResearchDept','5555678',25000.0,'Quarterly',8000.0,'Lessor','Yes','SafeGuard','POL456','NoRenewal','0','Strict','3000.0','Research','08:00-20:00','No','Lessor','No','Yes','SafetyStandards','MonthlyInspection');

INSERT INTO facility_lease_agreement VALUES
('LEASE003','GymC','2021-09-01','2026-08-31','FitnessClub','5559012',12000.0,'Monthly',3000.0,'Lessee','No','NULL','NULL','OptionToRenew','120','Standard','1500.0','Recreation','06:00-22:00','Yes','Lessee','Yes','No','HealthRegulations','BiannualAudit');

-- Digital content license registry
CREATE TABLE digital_content_license (
    license_id TEXT PRIMARY KEY,
    content_title TEXT,
    content_type TEXT,
    creator_name TEXT,
    acquisition_date TEXT,
    license_type TEXT,
    license_start_date TEXT,
    license_end_date TEXT,
    usage_scope TEXT,
    geographic_scope TEXT,
    exclusive_flag TEXT,
    fee_amount REAL,
    payment_terms TEXT,
    renewal_required TEXT,
    renewal_deadline TEXT,
    rights_holder TEXT,
    rights_holder_contact TEXT,
    digital_id TEXT,
    file_format TEXT,
    file_size_mb REAL,
    checksum TEXT,
    access_url TEXT,
    archived_flag TEXT,
    notes TEXT,
    compliance_status TEXT,
    last_audit_date TEXT
);

INSERT INTO digital_content_license VALUES
('LIC001','CampusMap','Image','DesignTeam','2022-02-10','RoyaltyFree','2022-02-10','2027-02-09','Internal','Global','No',0.0,'Net30','No','NULL','DesignTeam','5551111','IMG001','PNG',2.5,'ABC123','http://content.university.edu/maps/campusmap.png','Yes','InitialUpload','Compliant','2023-01-15');

INSERT INTO digital_content_license VALUES
('LIC002','LectureSeries2023','Video','ProfJones','2023-01-05','Standard','2023-01-05','2025-01-04','Educational','US','Yes',5000.0,'Advance','Yes','2024-12-31','ProfJones','5552222','VID045','MP4',1500.0,'DEF456','http://content.university.edu/lectures/2023/series.mp4','No','PendingReview','Compliant','2023-06-20');

INSERT INTO digital_content_license VALUES
('LIC003','AnnualReport2022','PDF','FinanceDept','2022-12-01','Limited','2022-12-01','2023-12-01','Public','Global','No',0.0,'Free','No','NULL','FinanceDept','5553333','PDF789','PDF',5.0,'GHI789','http://content.university.edu/reports/annual2022.pdf','Yes','NoChanges','Compliant','2023-02-10');

-- Environmental sensor reading log
CREATE TABLE environmental_sensor_reading (
    reading_id TEXT PRIMARY KEY,
    sensor_id TEXT,
    sensor_type TEXT,
    location_code TEXT,
    reading_timestamp TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm REAL,
    pm2_5_ug_m3 REAL,
    noise_db REAL,
    light_lux REAL,
    voltage_v REAL,
    battery_percent REAL,
    status TEXT,
    calibration_date TEXT,
    firmware_version TEXT,
    maintenance_required TEXT,
    notes TEXT,
    latitude REAL,
    longitude REAL,
    altitude_m REAL,
    signal_strength INTEGER,
    data_quality TEXT,
    uploaded_to_central TEXT,
    retention_policy TEXT
);

INSERT INTO environmental_sensor_reading VALUES
('READ001','SEN100','TempHum','BLDG01','2023-09-01T08:00:00',22.5,45.0,400.0,12.5,55.0,300.0,3.3,85.0,'OK','2023-06-01','v1.0','No','RoutineCheck',40.7128,-74.0060,10.0,-70,'Good','Yes','1Year');

INSERT INTO environmental_sensor_reading VALUES
('READ002','SEN101','AirQuality','BLDG02','2023-09-01T08:05:00',23.0,50.0,420.0,15.0,58.0,350.0,3.2,78.0,'OK','2023-06-15','v1.1','No','NoAnomalies',34.0522,-118.2437,15.0,-68,'Good','Yes','1Year');

INSERT INTO environmental_sensor_reading VALUES
('READ003','SEN102','NoiseLight','BLDG03','2023-09-01T08:10:00',21.8,48.0,410.0,13.0,62.0,500.0,3.3,90.0,'OK','2023-05-20','v1.0','Yes','BatteryLow',51.5074,-0.1278,5.0,-75,'Fair','No','6Months');

-- Transport asset maintenance tracker
CREATE TABLE transport_asset_maintenance (
    maintenance_id TEXT PRIMARY KEY,
    asset_id TEXT,
    asset_type TEXT,
    brand TEXT,
    model TEXT,
    purchase_date TEXT,
    last_service_date TEXT,
    next_service_due TEXT,
    odometer_km INTEGER,
    service_type TEXT,
    service_provider TEXT,
    service_cost REAL,
    parts_replaced TEXT,
    labor_hours REAL,
    warranty_status TEXT,
    warranty_expiry TEXT,
    fuel_type TEXT,
    emission_standard TEXT,
    registration_number TEXT,
    insurance_provider TEXT,
    insurance_policy TEXT,
    inspection_status TEXT,
    notes TEXT,
    compliance_flag TEXT,
    recorded_by TEXT,
    record_timestamp TEXT
);

INSERT INTO transport_asset_maintenance VALUES
('MT001','VEH001','Bus','BlueStar','BS100','2020-03-01','2023-06-15','2023-12-15',120000,'FullService','AutoCare','1500.0','BrakePads,OilFilter','8.0','Valid','2025-03-01','Diesel','Euro4','BUS-001','InsureCo','POL001','Pass','RoutineCheck','Compliant','JohnDoe','2023-06-16');

INSERT INTO transport_asset_maintenance VALUES
('MT002','VEH002','Van','TransMax','TM200','2021-07-10','2023-05-20','2023-11-20',80000,'OilChange','QuickFix','300.0','OilFilter','2.0','Valid','2024-07-10','Petrol','Euro5','VAN-202','SafeRide','POL002','Pass','MinorRepair','Compliant','JaneSmith','2023-05-21');

INSERT INTO transport_asset_maintenance VALUES
('MT003','VEH003','Bike','EcoRide','ER300','2022-01-15','2023-08-01','2024-02-01',5000,'TireReplacement','BikeShop','120.0','TireFront,TireRear','1.5','Expired','2023-01-15','Electric','N/A','BIK-303','BikeShield','POL003','Fail','BatteryIssue','NonCompliant','MikeLee','2023-08-02');

-- Grant review panel roster
CREATE TABLE grant_review_panel (
    panel_id TEXT PRIMARY KEY,
    panel_name TEXT,
    institution TEXT,
    chairperson_id TEXT,
    member_count INTEGER,
    meeting_frequency TEXT,
    last_meeting_date TEXT,
    next_meeting_date TEXT,
    quorum_required INTEGER,
    decision_policy TEXT,
    conflict_of_interest_policy TEXT,
    confidentiality_agreement TEXT,
    budget_allocation REAL,
    external_expert_flag TEXT,
    external_expert_name TEXT,
    external_expert_affiliation TEXT,
    external_expert_contact TEXT,
    notes TEXT,
    active_flag TEXT,
    creation_date TEXT,
    updated_by TEXT,
    update_timestamp TEXT,
    approval_status TEXT,
    term_years INTEGER,
    rotation_policy TEXT,
    archive_location TEXT
);

INSERT INTO grant_review_panel VALUES
('GP001','ScienceFundingPanel','UniversityX','CH001',12,'Quarterly','2023-06-01','2023-09-01',6,'Majority','Strict','Signed','500000.0','Yes','DrAllen','InstituteY','5554444','FocusOnSTEM','Yes','2020-01-15','AdminA','2023-06-02','Approved',5,'RotateEvery2Years','/archives/panel_gp001');

INSERT INTO grant_review_panel VALUES
('GP002','ArtsInnovationPanel','UniversityY','CH002',8,'Biannual','2023-04-15','2023-10-15',4,'Unanimous','Moderate','Signed','200000.0','No','NULL','NULL','NULL','EmphasisOnCommunityArts','Yes','2019-05-20','AdminB','2023-04-16','Pending',4,'RotateEvery3Years','/archives/panel_gp002');

INSERT INTO grant_review_panel VALUES
('GP003','TechEntrepreneurshipPanel','UniversityZ','CH003',10,'Monthly','2023-08-10','2023-09-10',5,'Supermajority','Strict','Signed','750000.0','Yes','ProfKim','TechInstitute','5557777','StartupSupport','Yes','2021-09-01','AdminC','2023-08-11','Approved',3,'RotateEvery1Year','/archives/panel_gp003');

-- Alumni mentorship program enrollment
CREATE TABLE alumni_mentorship_program (
    enrollment_id TEXT PRIMARY KEY,
    alumni_id TEXT,
    mentor_id TEXT,
    mentee_id TEXT,
    program_start_date TEXT,
    program_end_date TEXT,
    mentorship_area TEXT,
    meeting_frequency TEXT,
    last_meeting_date TEXT,
    next_meeting_date TEXT,
    feedback_score INTEGER,
    overall_satisfaction TEXT,
    goals_set TEXT,
    goals_achieved TEXT,
    challenges_faced TEXT,
    resources_provided TEXT,
    supervisor_id TEXT,
    status TEXT,
    notes TEXT,
    renewal_option TEXT,
    renewal_deadline TEXT,
    created_by TEXT,
    creation_timestamp TEXT,
    updated_by TEXT,
    update_timestamp TEXT,
    archive_flag TEXT
);

INSERT INTO alumni_mentorship_program VALUES
('ENR001','ALU1001','MTR5001','MEN1001','2023-01-01','2023-12-31','CareerDevelopment','Monthly','2023-08-15','2023-09-15',9,'High','SetCareerPlan','AchievedMidYear','TimeManagement','ResumeTemplates','SUP001','Active','PositiveProgress','Yes','2023-11-30','AdminX','2023-01-02','AdminY','2023-08-16','No');

INSERT INTO alumni_mentorship_program VALUES
('ENR002','ALU1002','MTR5002','MEN1002','2022-09-01','2023-08-31','ResearchCollab','Biweekly','2023-08-10','2023-08-24',8,'Medium','PublishPaper','Submitted','FundingSearch','GrantTemplates','SUP002','Completed','PaperSubmitted','No','NULL','AdminZ','2022-09-02','AdminW','2023-08-25','Yes');

INSERT INTO alumni_mentorship_program VALUES
('ENR003','ALU1003','MTR5003','MEN1003','2023-05-15','2024-05-14','Entrepreneurship','Monthly','2023-08-01','2023-09-01',7,'Medium','LaunchStartup','InProgress','MarketResearch','BusinessPlanDocs','SUP003','Active','SeekingInvestors','Yes','2024-04-30','AdminV','2023-05-16','AdminU','2023-08-02','No');

-- Research equipment calibration log
CREATE TABLE research_equipment_calibration (
    calibration_id TEXT PRIMARY KEY,
    equipment_id TEXT,
    equipment_type TEXT,
    manufacturer TEXT,
    model_number TEXT,
    serial_number TEXT,
    calibration_date TEXT,
    next_due_date TEXT,
    calibrated_by TEXT,
    calibration_method TEXT,
    reference_standard TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    pressure_kpa REAL,
    measurement_uncertainty REAL,
    status TEXT,
    comments TEXT,
    approval_signature TEXT,
    approved_date TEXT,
    lab_location_code TEXT,
    responsible_technician TEXT,
    maintenance_required TEXT,
    last_maintenance_date TEXT,
    calibration_certificate_url TEXT,
    data_integrity_check TEXT,
    retention_policy TEXT
);

INSERT INTO research_equipment_calibration VALUES
('CAL001','EQ001','Spectrometer','SpecCo','SPX100','SN12345','2023-07-01','2024-07-01','TechA','Internal','StandardA',22.0,45.0,101.3,0.02,'Passed','NoIssues','SigA','2023-07-02','LAB01','TechA','No','2023-06-15','http://lab.university.edu/certs/CAL001.pdf','OK','5Years');

INSERT INTO research_equipment_calibration VALUES
('CAL002','EQ002','ElectronMicroscope','MicroTech','EM2000','SN67890','2023-05-15','2024-05-15','TechB','External','StandardB',20.0,40.0,100.0,0.01,'Passed','SlightDrift','SigB','2023-05-16','LAB02','TechB','Yes','2023-04-30','http://lab.university.edu/certs/CAL002.pdf','OK','5Years');

INSERT INTO research_equipment_calibration VALUES
('CAL003','EQ003','Centrifuge','SpinLab','CF300','SN11223','2023-08-20','2024-08-20','TechC','Internal','StandardC',21.5,42.0,100.5,0.015,'Failed','VibrationIssue','SigC','2023-08-21','LAB03','TechC','Yes','2023-08-01','http://lab.university.edu/certs/CAL003.pdf','Fail','5Years');

-- Community service project registry
CREATE TABLE community_service_project (
    project_id TEXT PRIMARY KEY,
    project_name TEXT,
    sponsor_organization TEXT,
    project_start_date TEXT,
    project_end_date TEXT,
    target_community TEXT,
    number_of_volunteers INTEGER,
    total_hours_committed INTEGER,
    budget_allocated REAL,
    budget_spent REAL,
    primary_location_code TEXT,
    secondary_location_code TEXT,
    project_manager_id TEXT,
    status TEXT,
    impact_metric TEXT,
    beneficiaries_count INTEGER,
    challenges_encountered TEXT,
    lessons_learned TEXT,
    supporting_documents_url TEXT,
    approval_date TEXT,
    approved_by TEXT,
    last_report_date TEXT,
    report_submitted_flag TEXT,
    sustainability_plan TEXT,
    follow_up_actions TEXT,
    notes TEXT,
    archive_location TEXT
);

INSERT INTO community_service_project VALUES
('CSP001','CleanRiver','EnviroOrg','2023-04-01','2023-06-30','RiverTown',25,400,15000.0,14000.0,'LOC01','LOC02','PM001','Completed','WaterQualityImproved','5000','WeatherDelays','ImprovedCoordination','http://cs.university.edu/docs/CSP001.pdf','2023-04-05','DirA','2023-07-10','Yes','CommunityMonitoring','MonthlyUpdates','Successful','/archive/csp001');

INSERT INTO community_service_project VALUES
('CSP002','LiteracyDrive','ReadMore','2023-09-01','2024-02-28','CityCenter',40,800,20000.0,0.0,'LOC03','NULL','PM002','Planned','ReadingSkillsEnhanced','0','FundingPending','StakeholderEngagement','http://cs.university.edu/docs/CSP002.pdf','2023-08-20','DirB','NULL','No','PartnerSchools','QuarterlyReview','AwaitingFunding','/archive/csp002');

INSERT INTO community_service_project VALUES
('CSP003','SeniorTechHelp','SeniorCare','2023-01-15','2023-12-15','SeniorLiving',15,300,8000.0,7500.0,'LOC04','LOC05','PM003','Ongoing','TechAdoptionRate','1200','VolunteerRetention','PositiveFeedback','http://cs.university.edu/docs/CSP003.pdf','2023-01-20','DirC','2023-11-30','Yes','AnnualTraining','BiannualSurvey','SteadyProgress','/archive/csp003');