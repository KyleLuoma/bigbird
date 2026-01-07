-- BiomedicalResearchGrantDetail table
CREATE TABLE BiomedicalResearchGrantDetail (
    grant_id INTEGER PRIMARY KEY,
    project_title TEXT,
    funding_agency TEXT,
    amount_requested REAL,
    amount_awarded REAL,
    start_date DATE,
    end_date DATE,
    principal_investigator TEXT,
    co_investigators TEXT,
    research_area TEXT,
    review_score INTEGER,
    grant_status TEXT,
    award_number TEXT,
    funding_cycle INTEGER,
    currency TEXT,
    eligibility_criteria TEXT,
    reporting_requirements TEXT,
    data_sharing_plan TEXT,
    ethical_approval INTEGER,
    public_outreach INTEGER,
    indirect_cost_rate REAL,
    notes TEXT
);
INSERT INTO BiomedicalResearchGrantDetail VALUES (1,'Genomics of Autoimmune Disease','NationalScienceFund',250000,200000,'2023-06-01','2026-05-31','Dr Alice Smith','Dr Bob Jones;Dr Carol Lee','Immunology',85,'Awarded','NSF-2023-001',1,'USD','US Residents','Annual Report','Open Access',1,1,0.30,'First award of the program');
INSERT INTO BiomedicalResearchGrantDetail VALUES (2,'AI Assisted Radiology','HealthTech Initiative',150000,150000,'2022-01-15','2024-12-31','Dr David Wu','Dr Emma Patel','Artificial Intelligence',90,'Awarded','HTI-2022-045',2,'USD','International Collaboration','Semiannual Report','Restricted Access',1,0,0.25,'Joint venture with tech company');
INSERT INTO BiomedicalResearchGrantDetail VALUES (3,'Novel Antibiotics Development','PharmaGrant Corp',300000,0,'2024-03-01','2028-02-28','Dr Fiona Green','Dr George Hall','Pharmacology',0,'Pending','PGC-2024-099',1,'USD','Industry Partners','Quarterly Report','Open Access',0,0,0.20,'Application under review');

-- PharmacyColdChainMonitoringEvent table
CREATE TABLE PharmacyColdChainMonitoringEvent (
    event_id INTEGER PRIMARY KEY,
    pharmacy_id INTEGER,
    product_batch TEXT,
    temperature_start REAL,
    temperature_end REAL,
    monitoring_start DATETIME,
    monitoring_end DATETIME,
    device_id TEXT,
    operator_name TEXT,
    deviation_flag INTEGER,
    deviation_amount REAL,
    corrective_action TEXT,
    action_taken_by TEXT,
    action_date DATE,
    notes TEXT,
    ambient_temperature REAL,
    humidity_percent REAL,
    location TEXT,
    shipment_id TEXT,
    carrier_name TEXT,
    compliance_status TEXT,
    audit_timestamp DATETIME
);
INSERT INTO PharmacyColdChainMonitoringEvent VALUES (101,10,'BATCHA123',2.5,5.0,'2023-11-01 08:00:00','2023-11-01 20:00:00','DEV001','John Doe',0,0,'None','John Doe','2023-11-01','Routine check','22.0',55,'ColdRoom1','SHIP001','FastTrans','Compliant','2023-11-01 20:05:00');
INSERT INTO PharmacyColdChainMonitoringEvent VALUES (102,12,'BATCHB456',1.8,7.2,'2023-12-05 09:30:00','2023-12-05 21:45:00','DEV007','Maria Lee',1,1.2,'Adjusted thermostat','Maria Lee','2023-12-05','Temperature spike observed','19.5',60,'ColdRoom3','SHIP045','RapidShip','NonCompliant','2023-12-05 22:00:00');
INSERT INTO PharmacyColdChainMonitoringEvent VALUES (103,15,'BATCHC789',2.0,2.2,'2024-01-10 07:15:00','2024-01-10 19:30:00','DEV003','Ahmed Khan',0,0,'None','Ahmed Khan','2024-01-10','All parameters within range','21.0',58,'ColdRoom2','SHIP078','HealthLogistics','Compliant','2024-01-10 19:35:00');

-- FacilityVentilationInspection table
CREATE TABLE FacilityVentilationInspection (
    inspection_id INTEGER PRIMARY KEY,
    facility_id INTEGER,
    inspection_date DATE,
    inspector_name TEXT,
    hvac_system_id TEXT,
    airflow_rate REAL,
    filter_type TEXT,
    filter_status TEXT,
    pressure_drop REAL,
    duct_leakage_percent REAL,
    temperature_setpoint REAL,
    humidity_setpoint REAL,
    co2_level_ppm INTEGER,
    voc_level_ppb INTEGER,
    maintenance_required INTEGER,
    comments TEXT,
    next_inspection_date DATE,
    compliance_status TEXT,
    area_covered TEXT,
    inspection_type TEXT,
    record_timestamp DATETIME,
    corrective_action_taken TEXT
);
INSERT INTO FacilityVentilationInspection VALUES (2001,5,'2023-09-15','Laura Smith','HVAC-A1',450.0,'HEPA','Good',0.3,2.5,22.0,45,600,150,0,'System operating within specifications','2024-09-15','Compliant','East Wing','Annual','2023-09-15 10:20:00','None');
INSERT INTO FacilityVentilationInspection VALUES (2002,7,'2023-11-20','Mark Johnson','HVAC-B3',380.0,'MERV13','Replace','1.2',5.0,20.0,50,800,300,1,'Filter nearing end of life','2024-11-20','NonCompliant','West Wing','Quarterly','2023-11-20 14:05:00','Filter replaced on 2023-11-21');
INSERT INTO FacilityVentilationInspection VALUES (2003,9,'2024-02-05','Emily Davis','HVAC-C2',500.0,'HEPA','Good',0.2,1.8,23.0,40,550,120,0,'All readings normal','2025-02-05','Compliant','North Wing','Annual','2024-02-05 09:30:00','None');

-- CommunityHealthSurveyMetric table
CREATE TABLE CommunityHealthSurveyMetric (
    metric_id INTEGER PRIMARY KEY,
    survey_id INTEGER,
    community_name TEXT,
    collection_date DATE,
    respondent_id INTEGER,
    age INTEGER,
    gender TEXT,
    education_level TEXT,
    employment_status TEXT,
    income_bracket TEXT,
    smoking_status TEXT,
    alcohol_use TEXT,
    physical_activity_minutes INTEGER,
    fruit_veg_servings INTEGER,
    chronic_conditions TEXT,
    mental_health_score INTEGER,
    health_insurance_coverage INTEGER,
    vaccination_status TEXT,
    access_to_care TEXT,
    satisfaction_score INTEGER,
    comments TEXT,
    data_quality_flag INTEGER,
    record_timestamp DATETIME
);
INSERT INTO CommunityHealthSurveyMetric VALUES (301,1001,'RiverTown','2023-08-01',5551,34,'Female','College','Employed','30k-50k','Never','Occasional',150,3,'Hypertension',78,1,'UpToDate','Good','85','No issues','1','2023-08-01 12:00:00');
INSERT INTO CommunityHealthSurveyMetric VALUES (302,1002,'LakeVille','2023-09-12',5623,47,'Male','HighSchool','SelfEmployed','50k-70k','Former','Regular',90,2,'Diabetes;Asthma',64,0,'Partial','Limited','70','Needs follow up','0','2023-09-12 15:30:00');
INSERT INTO CommunityHealthSurveyMetric VALUES (303,1003,'MountainSide','2023-10-20',5789,29,'Other','Graduate','Unemployed','<30k','Current','Never',200,5,'None',90,1,'UpToDate','Excellent','92','All good','1','2023-10-20 09:45:00');

-- MedicalDeviceSoftwarePatchLog table
CREATE TABLE MedicalDeviceSoftwarePatchLog (
    patch_id INTEGER PRIMARY KEY,
    device_serial TEXT,
    device_type TEXT,
    firmware_version TEXT,
    patch_version TEXT,
    applied_date DATE,
    applied_by TEXT,
    patch_description TEXT,
    risk_level TEXT,
    verification_status INTEGER,
    verification_date DATE,
    rollback_possible INTEGER,
    notes TEXT,
    compliance_status TEXT,
    downtime_minutes INTEGER,
    affected_modules TEXT,
    checksum TEXT,
    release_notes TEXT,
    record_timestamp DATETIME,
    audit_trail TEXT
);
INSERT INTO MedicalDeviceSoftwarePatchLog VALUES (4001,'SN123456','InfusionPump','v2.1','p1.3','2023-07-10','TechMike','Security fix for data leak','High',1,'2023-07-12',1,'Patched without issues','Compliant',15,'CommunicationModule','abc123def','Fixes CVE-2023-001','2023-07-10 08:00:00','Initial patch deployment');
INSERT INTO MedicalDeviceSoftwarePatchLog VALUES (4002,'SN789012','Ventilator','v3.4','p2.0','2023-11-05','TechSara','Performance optimization','Medium',1,'2023-11-06',1,'Improved airflow control','Compliant',10,'ControlAlgorithm','def456ghi','Optimized CPU usage','2023-11-05 14:30:00','Routine update');
INSERT INTO MedicalDeviceSoftwarePatchLog VALUES (4003,'SN345678','Defibrillator','v1.8','p0.9','2024-01-22','TechLee','Minor UI enhancements','Low',0,NULL,1,'Pending verification','Pending',5,'UserInterface','ghi789jkl','UI color scheme update','2024-01-22 09:15:00','Patch applied, verification pending');

-- HospitalConstructionMilestone table
CREATE TABLE HospitalConstructionMilestone (
    milestone_id INTEGER PRIMARY KEY,
    project_name TEXT,
    phase_name TEXT,
    milestone_name TEXT,
    planned_date DATE,
    actual_date DATE,
    status TEXT,
    responsible_team TEXT,
    budget_allocated REAL,
    budget_spent REAL,
    percent_complete REAL,
    comments TEXT,
    risk_level TEXT,
    dependencies TEXT,
    approval_required INTEGER,
    approved_by TEXT,
    approval_date DATE,
    last_updated DATETIME,
    external_contractor TEXT,
    contract_number TEXT
);
INSERT INTO HospitalConstructionMilestone VALUES (5001,'NewEastWing','Design','Concept Approval','2023-02-01','2023-02-03','Completed','DesignTeam',500000,480000,100,'Design approved without changes','Low','None',1,'ChiefArchitect','2023-02-03','2023-02-03 10:00:00','DesignCo','DC-2023-01');
INSERT INTO HospitalConstructionMilestone VALUES (5002,'NewEastWing','Construction','Foundation Completion','2023-06-01','2023-06-15','Completed','ConstructionTeam',2000000,1950000,100,'Minor delay due to weather','Medium','Concept Approval',1,'ProjectManager','2023-06-16','2023-06-16 15:20:00','BuildCorp','BC-2023-07');
INSERT INTO HospitalConstructionMilestone VALUES (5003,'NewEastWing','FitOut','Mechanical Systems Install','2024-01-10','2024-02-05','InProgress','MEPTeam',1200000,800000,66,'On track, awaiting equipment','High','Foundation Completion',1,'SeniorEngineer','2024-02-01','2024-02-06 09:45:00','MEP Solutions','MEP-2023-09');

-- PatientMobilityAssessmentScore table
CREATE TABLE PatientMobilityAssessmentScore (
    assessment_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    assessment_date DATE,
    assessor_name TEXT,
    score_overall INTEGER,
    score_balance INTEGER,
    score_gait INTEGER,
    score_strength INTEGER,
    score_flexibility INTEGER,
    assistive_device_used TEXT,
    walking_aid TEXT,
    distance_walked_m REAL,
    time_to_stand_seconds REAL,
    time_to_walk_10m_seconds REAL,
    fall_risk_level TEXT,
    recommendations TEXT,
    follow_up_required INTEGER,
    follow_up_date DATE,
    notes TEXT,
    record_timestamp DATETIME
);
INSERT INTO PatientMobilityAssessmentScore VALUES (6001,101,'2023-05-20','NurseAmy',85,90,80,88,82,'Walker','None',150.0,4.2,12.5,'Low','Continue current therapy',0,NULL,'Patient improving steadily','2023-05-20 11:30:00');
INSERT INTO PatientMobilityAssessmentScore VALUES (6002,102,'2023-08-15','TherapistBob',70,65,75,68,60,'Cane','None',80.0,6.5,20.0,'Medium','Introduce balance exercises',1,'2023-09-01','Needs closer monitoring','2023-08-15 14:00:00');
INSERT INTO PatientMobilityAssessmentScore VALUES (6003,103,'2024-01-10','PhysioCarol',55,50,60,55,45,'None','Crutches',30.0,9.0,35.0,'High','Refer to orthopedics',1,'2024-02-01','High fall risk observed','2024-01-10 09:45:00');

-- EnvironmentalHazardIncident table
CREATE TABLE EnvironmentalHazardIncident (
    incident_id INTEGER PRIMARY KEY,
    incident_date DATE,
    location TEXT,
    hazard_type TEXT,
    description TEXT,
    severity_level TEXT,
    reported_by TEXT,
    containment_action TEXT,
    mitigation_action TEXT,
    equipment_affected TEXT,
    downtime_hours REAL,
    regulatory_notification INTEGER,
    notification_date DATE,
    follow_up_required INTEGER,
    follow_up_date DATE,
    corrective_measures TEXT,
    status TEXT,
    comments TEXT,
    record_timestamp DATETIME,
    auditor_name TEXT
);
INSERT INTO EnvironmentalHazardIncident VALUES (7001,'2023-04-12','LabA','Chemical Spill','Spill of solvent in storage area','Medium','LabTechMike','Isolated area','Cleaned with absorbent pads','Storage Cabinet',2.0,1,'2023-04-13',1,'2023-04-20','Replace damaged containers','Closed','No further action','2023-04-12 13:25:00','SafetyOfficerAnna');
INSERT INTO EnvironmentalHazardIncident VALUES (7002,'2023-09-30','WardB','Biohazard','Improper disposal of sharps','High','NurseLinda','Shut down ward','Disposed sharps per protocol','Sharps Container',4.5,1,'2023-10-01',1,'2023-10-10','Staff retraining on disposal','Investigating','Awaiting investigation report','2023-09-30 08:45:00','SafetyOfficerJohn');
INSERT INTO EnvironmentalHazardIncident VALUES (7003,'2024-01-05','ParkingLot','Electrical Fault','Exposed wiring causing sparks','Low','MaintenanceSam','Isolated circuit','Repaired wiring','Power Line',1.0,0,NULL,0,NULL,'Routine inspection','Resolved','Issue fixed promptly','2024-01-05 10:15:00','SafetyOfficerMia');

-- ResearchDataRetentionPolicy table
CREATE TABLE ResearchDataRetentionPolicy (
    policy_id INTEGER PRIMARY KEY,
    policy_name TEXT,
    effective_date DATE,
    review_date DATE,
    data_category TEXT,
    retention_period_years INTEGER,
    archival_method TEXT,
    encrypted_storage INTEGER,
    access_restriction TEXT,
    compliance_standard TEXT,
    responsible_department TEXT,
    contact_person TEXT,
    update_frequency_months INTEGER,
    notes TEXT,
    status TEXT,
    created_by TEXT,
    created_timestamp DATETIME,
    last_modified_by TEXT,
    last_modified_timestamp DATETIME,
    approval_signature TEXT
);
INSERT INTO ResearchDataRetentionPolicy VALUES (8001,'GenomicsDataPolicy','2023-01-01','2025-01-01','Genomic Sequences',10,'Cold Storage','1','Restricted','ISO27001','Bioinformatics','Dr Alice','12','Policy for raw genomic data','Active','AdminJohn','2023-01-01 09:00:00','AdminJohn','2023-01-01 09:00:00','SignatureJohn');
INSERT INTO ResearchDataRetentionPolicy VALUES (8002,'ClinicalTrialDataPolicy','2022-06-15','2024-06-15','Trial Records',5,'Secure Cloud','1','Confidential','HIPAA','ClinicalOps','Dr David','6','Retention of de-identified trial data','Active','AdminEmily','2022-06-15 10:30:00','AdminEmily','2022-06-15 10:30:00','SignatureEmily');
INSERT INTO ResearchDataRetentionPolicy VALUES (8003,'ImagingDataPolicy','2023-03-20','2026-03-20','Imaging Files',7,'Tape Archive','0','Limited','GDPR','Radiology','Dr Fiona','12','Long-term storage of radiology images','Draft','AdminMike','2023-03-20 11:45:00','AdminMike','2023-03-20 11:45:00','SignatureMike');

-- StaffCompetencyDevelopmentPlan table
CREATE TABLE StaffCompetencyDevelopmentPlan (
    plan_id INTEGER PRIMARY KEY,
    staff_id INTEGER,
    competency_area TEXT,
    target_level TEXT,
    start_date DATE,
    end_date DATE,
    training_program TEXT,
    trainer_name TEXT,
    delivery_method TEXT,
    assessment_method TEXT,
    progress_status TEXT,
    hours_allocated REAL,
    hours_completed REAL,
    certification_obtained INTEGER,
    certification_name TEXT,
    feedback TEXT,
    next_review_date DATE,
    notes TEXT,
    record_timestamp DATETIME,
    approved_by TEXT
);
INSERT INTO StaffCompetencyDevelopmentPlan VALUES (9001,201,'Infection Control','Advanced','2023-02-01','2023-06-30','Infection Prevention Workshop','NurseLaura','InPerson','PracticalTest','OnTrack',40,20,0,NULL,'Positive engagement','2023-12-01','Focus on hand hygiene','2023-02-01 08:00:00','ChiefNurse');
INSERT INTO StaffCompetencyDevelopmentPlan VALUES (9002,202,'Data Analytics','Intermediate','2023-05-15','2023-11-15','Healthcare Data Analytics','AnalystMark','Online','ProjectSubmission','BehindSchedule',30,10,0,NULL,'Needs more practice','2024-05-01','Include SQL basics','2023-05-15 09:30:00','DeptHead');
INSERT INTO StaffCompetencyDevelopmentPlan VALUES (9003,203,'Leadership','Expert','2024-01-10','2024-12-31','Executive Leadership Program','CoachAnna','Hybrid','360Feedback','Planned',100,0,0,NULL,'Awaiting enrollment','2025-01-01','Target senior management role','2024-01-10 10:15:00','CEO');