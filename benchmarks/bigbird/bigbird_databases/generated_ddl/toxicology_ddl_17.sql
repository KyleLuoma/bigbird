-- Lab cleaning schedule table
CREATE TABLE lab_cleaning_schedule (
  schedule_id TEXT PRIMARY KEY,
  facility_name TEXT,
  area_code TEXT,
  cleaning_type TEXT,
  frequency_days INTEGER,
  last_cleaned DATE,
  next_scheduled DATE,
  cleaning_team TEXT,
  supervisor TEXT,
  checklist_version TEXT,
  notes TEXT,
  approved_by TEXT,
  approval_date DATE,
  duration_minutes INTEGER,
  cleaning_method TEXT,
  equipment_used TEXT,
  chemicals_used TEXT,
  waste_generated_qty REAL,
  waste_type TEXT,
  compliance_status TEXT,
  audit_timestamp DATETIME
);

INSERT INTO lab_cleaning_schedule VALUES ('CLS001','MainLab','A1','Routine',30,'2023-12-01','2023-12-31','TeamAlpha','DrSmith','v1','All good','DrJones','2023-11-30',45,'Mop','Vacuum','0.5','Liquid','Compliant','2023-12-01 08:00:00');
INSERT INTO lab_cleaning_schedule VALUES ('CLS002','SecondaryLab','B2','Deep',90,'2023-11-15','2024-02-13','TeamBeta','DrLee','v2','Special attention to vents','DrKim','2023-11-14',120,'Steam','PressureWasher','1.2','Solid','Compliant','2023-11-15 09:30:00');
INSERT INTO lab_cleaning_schedule VALUES ('CLS003','StorageRoom','C3','Routine',60,'2023-12-05','2024-02-04','TeamGamma','DrPatel','v1','No issues','DrChen','2023-12-04',30,'Sweep','None','0.2','None','Compliant','2023-12-05 07:45:00');

-- Personal protective equipment (PPE) log table
CREATE TABLE ppe_log (
  log_id TEXT PRIMARY KEY,
  employee_id TEXT,
  employee_name TEXT,
  department TEXT,
  ppe_type TEXT,
  size TEXT,
  issue_date DATE,
  expiration_date DATE,
  fit_test_passed TEXT,
  fit_test_date DATE,
  inspector TEXT,
  location_issued TEXT,
  replacement_reason TEXT,
  replacement_date DATE,
  new_ppe_type TEXT,
  new_size TEXT,
  training_completed TEXT,
  training_date DATE,
  trainer TEXT,
  notes TEXT,
  compliance_status TEXT,
  audit_timestamp DATETIME
);

INSERT INTO ppe_log VALUES ('PPE001','E123','AliceSmith','Chemistry','Gloves','M','2023-01-10','2024-01-10','Yes','2023-01-09','JohnDoe','MainLab','Wear out','2023-12-15','Gloves','L','Yes','2023-12-15','JaneDoe','Replaced due to tear','Compliant','2023-12-15 10:00:00');
INSERT INTO ppe_log VALUES ('PPE002','E456','BobJones','Biology','LabCoat','L','2022-06-20','2023-06-20','No','2022-06-19','EmilyClark','BioLab','Fit test failed','2022-12-01','LabCoat','XL','Yes','2022-12-01','MichaelBrown','Issue new size','NonCompliant','2022-12-01 11:30:00');
INSERT INTO ppe_log VALUES ('PPE003','E789','CarolLee','Physics','SafetyGoggles','Standard','2023-03-05','2025-03-05','Yes','2023-03-04','SarahWhite','PhysicsLab','Routine check','2024-03-04','SafetyGoggles','Standard','Yes','2024-03-04','TomGreen','No issues','Compliant','2024-03-04 09:15:00');

-- Instrument spare parts inventory table
CREATE TABLE instrument_spare_parts (
  part_id TEXT PRIMARY KEY,
  instrument_type TEXT,
  part_name TEXT,
  manufacturer TEXT,
  part_number TEXT,
  serial_number TEXT,
  acquisition_date DATE,
  warranty_expiration DATE,
  quantity_on_hand INTEGER,
  location_storage TEXT,
  condition_status TEXT,
  last_used_date DATE,
  next_maintenance_due DATE,
  criticality_level TEXT,
  cost_per_unit REAL,
  supplier TEXT,
  lead_time_days INTEGER,
  reorder_point INTEGER,
  notes TEXT,
  compliance_flag TEXT,
  audit_timestamp DATETIME
);

INSERT INTO instrument_spare_parts VALUES ('SP001','Centrifuge','Rotor','SpinTech','R-200','SN12345','2022-04-10','2025-04-10',5,'StorageRoomA','New','2023-11-20','2024-11-20','High',250.00,'SupplyCo','14',2,'Spare rotors for model X','Yes','2023-11-21 08:20:00');
INSERT INTO instrument_spare_parts VALUES ('SP002','Spectrometer','DiffractionGrating','OptiLens','DG-500','SN67890','2021-09-15','2024-09-15',2,'StorageRoomB','Used','2023-10-05','2024-10-05','Medium',1500.00,'OpticSupplies','21',1,'Grating for spectro Y','Yes','2023-10-06 09:00:00');
INSERT INTO instrument_spare_parts VALUES ('SP003','Microscope','ObjectiveLens','MicroOpt','OL-100','SN54321','2023-01-20','2026-01-20',10,'StorageRoomC','New','2023-12-01','2025-12-01','Low',120.00,'LensWorld','7',5,'Standard 10x lenses','Yes','2023-12-01 10:10:00');

-- Hazardous waste shipment table
CREATE TABLE hazardous_waste_shipment (
  shipment_id TEXT PRIMARY KEY,
  waste_type TEXT,
  waste_category TEXT,
  origin_location TEXT,
  destination_facility TEXT,
  shipment_date DATE,
  arrival_date DATE,
  carrier_company TEXT,
  carrier_contact TEXT,
  container_type TEXT,
  container_id TEXT,
  total_weight_kg REAL,
  regulated BOOLEAN,
  manifest_number TEXT,
  disposal_method TEXT,
  disposal_certificate TEXT,
  notes TEXT,
  compliance_status TEXT,
  inspected_by TEXT,
  inspection_date DATE,
  audit_timestamp DATETIME
);

INSERT INTO hazardous_waste_shipment VALUES ('HW001','Acetone','Organic','MainLab','WasteCenterA','2023-12-02','2023-12-03','SafeTrans','5551234','Drum','DRM001',120.5,1,'MNF123','Incineration','CERT001','No leaks observed','Compliant','InspectorA','2023-12-02', '2023-12-03 08:30:00');
INSERT INTO hazardous_waste_shipment VALUES ('HW002','LeadSolution','HeavyMetal','ChemStorage','WasteCenterB','2023-11-28','2023-11-30','EcoMove','5555678','Barrel','BRL045',85.0,1,'MNF124','Stabilization','CERT002','Container sealed','Compliant','InspectorB','2023-11-28','2023-11-30 09:45:00');
INSERT INTO hazardous_waste_shipment VALUES ('HW003','SilicaDust','Particulate','NanomaterialLab','WasteCenterC','2023-12-10','2023-12-12','CleanCarry','5559012','Bag','BAG210',30.0,0,'MNF125','Landfill','CERT003','Bag intact','NonCompliant','InspectorC','2023-12-10','2023-12-12 07:15:00');

-- Software validation record table
CREATE TABLE software_validation_record (
  validation_id TEXT PRIMARY KEY,
  software_name TEXT,
  version TEXT,
  vendor TEXT,
  validation_type TEXT,
  validation_date DATE,
  validator TEXT,
  validation_status TEXT,
  test_suite_name TEXT,
  test_cases_executed INTEGER,
  passed_cases INTEGER,
  failed_cases INTEGER,
  issues_found TEXT,
  remediation_status TEXT,
  release_candidate TEXT,
  deployment_environment TEXT,
  documentation_link TEXT,
  risk_assessment TEXT,
  compliance_notes TEXT,
  audit_timestamp DATETIME,
  notes TEXT
);

INSERT INTO software_validation_record VALUES ('VAL001','LabControl','3.2.1','LabSoft','Functional','2023-10-15','AnnaKyle','Pass','FuncSuiteA',120,118,2','None','Resolved','RC-01','Production','http://docs.labcontrol/3.2.1','Low','All criteria met','2023-10-15 14:00:00','Initial release validation');
INSERT INTO software_validation_record VALUES ('VAL002','ImageAnalyzer','2.0.0','ImageTech','Performance','2023-09-20','BrianLee','Fail','PerfSuiteB',80,70,10','Memory leak in module X','InProgress','RC-02','Staging','http://docs.imageanalyzer/2.0.0','Medium','Pending issue resolution','2023-09-20 09:30:00','Performance bottleneck observed');
INSERT INTO software_validation_record VALUES ('VAL003','DataArchiver','1.5.4','DataSafe','Security','2023-11-05','ClaraM','Pass','SecSuiteC',45,45,0','None','N/A','RC-03','Production','http://docs.dataarchiver/1.5.4','Low','Security controls verified','2023-11-05 11:45:00','Encryption validation completed');

-- Room temperature log table
CREATE TABLE room_temperature_log (
  log_id TEXT PRIMARY KEY,
  room_id TEXT,
  building TEXT,
  floor INTEGER,
  sensor_id TEXT,
  measurement_timestamp DATETIME,
  temperature_celsius REAL,
  humidity_percent REAL,
  sensor_status TEXT,
  calibration_date DATE,
  notes TEXT,
  alert_triggered BOOLEAN,
  alert_type TEXT,
  maintenance_required BOOLEAN,
  maintenance_scheduled DATE,
  maintenance_completed DATE,
  operator TEXT,
  data_quality_score INTEGER,
  compliance_flag TEXT,
  audit_timestamp DATETIME,
  external_reference TEXT
);

INSERT INTO room_temperature_log VALUES ('TMP001','R101','Main','1','SEN001','2023-12-01 08:00:00',22.5,45.0,'OK','2023-06-01','Normal operation',0,'','0','2024-01-15',NULL,'JohnDoe',95,'Yes','2023-12-01 09:00:00','REF001');
INSERT INTO room_temperature_log VALUES ('TMP002','R202','Annex','2','SEN002','2023-12-01 08:05:00',28.7,55.2,'OK','2023-07-15','High temperature detected',1,'TempHigh',1,'2023-12-10','2023-12-12','JaneSmith',80,'No','2023-12-01 09:05:00','REF002');
INSERT INTO room_temperature_log VALUES ('TMP003','R303','Research','3','SEN003','2023-12-01 08:10:00',19.3,40.5,'OK','2023-05-20','All good',0,'','0','2024-02-01',NULL,'MikeBrown',98,'Yes','2023-12-01 09:10:00','REF003');

-- Electrical equipment inspection table
CREATE TABLE electrical_equipment_inspection (
  inspection_id TEXT PRIMARY KEY,
  equipment_id TEXT,
  equipment_type TEXT,
  location TEXT,
  inspector_name TEXT,
  inspection_date DATE,
  inspection_time TIME,
  voltage_rating REAL,
  current_rating REAL,
  insulation_resistance_megaohm REAL,
  earth_continuity_pass BOOLEAN,
  visual_condition TEXT,
  functional_test_pass BOOLEAN,
  comments TEXT,
  corrective_action_required BOOLEAN,
  corrective_action_details TEXT,
  completion_date DATE,
  compliance_status TEXT,
  audit_timestamp DATETIME,
  notes TEXT
);

INSERT INTO electrical_equipment_inspection VALUES ('ELE001','EQ1001','PowerSupply','MainLab','SamTaylor','2023-11-20','09:30:00',120.0,15.0,2.5,1,'Good',1,'No issues',0,'',NULL,'Compliant','2023-11-20 10:00:00','');
INSERT INTO electrical_equipment_inspection VALUES ('ELE002','EQ2002','Generator','BackupRoom','LauraM','2023-10-15','14:00:00',240.0,30.0,1.8,0,'Worn cables',0,'Replace grounding strap',1,'Grounding strap replaced',2023-10-20,'Compliant','2023-10-15 15:00:00','');
INSERT INTO electrical_equipment_inspection VALUES ('ELE003','EQ3003','Transformator','HVRoom','NeilK','2023-12-01','11:45:00',480.0,60.0,3.1,1,'Clean',1,'All parameters within spec',0,'',NULL,'Compliant','2023-12-01 12:30:00','');

-- Researcher travel record table
CREATE TABLE researcher_travel_record (
  travel_id TEXT PRIMARY KEY,
  researcher_id TEXT,
  researcher_name TEXT,
  destination TEXT,
  country TEXT,
  purpose TEXT,
  start_date DATE,
  end_date DATE,
  travel_mode TEXT,
  funding_source TEXT,
  travel_cost_usd REAL,
  accommodation_cost_usd REAL,
  meals_allowance_usd REAL,
  travel_status TEXT,
  passport_number TEXT,
  visa_required BOOLEAN,
  visa_status TEXT,
  compliance_check BOOLEAN,
  notes TEXT,
  audit_timestamp DATETIME,
  approver TEXT
);

INSERT INTO researcher_travel_record VALUES ('TRV001','R001','AliceSmith','ConferenceCenter','USA','Conference','2023-09-10','2023-09-15','Air','GrantA',1200.00,800.00,250.00,'Completed','P1234567',0,'N/A',1,'','2023-09-01 08:00:00','DrJones');
INSERT INTO researcher_travel_record VALUES ('TRV002','R002','BobJones','InstituteX','Germany','Collaboration','2023-11-01','2023-11-07','Train','GrantB',900.00,600.00,180.00,'Planned','P2345678',1,'Approved',1,'','2023-10-20 09:15:00','DrLee');
INSERT INTO researcher_travel_record VALUES ('TRV003','R003','CarolLee','LabY','Japan','Workshop','2024-02-20','2024-02-25','Air','GrantC',1500.00,1000.00,300.00,'Pending','P3456789',1,'Pending',0,'Awaiting visa','2023-12-05 10:30:00','DrKim');

-- Equipment training program table
CREATE TABLE equipment_training_program (
  program_id TEXT PRIMARY KEY,
  equipment_type TEXT,
  program_name TEXT,
  trainer_name TEXT,
  trainer_contact TEXT,
  training_location TEXT,
  start_date DATE,
  end_date DATE,
  max_participants INTEGER,
  curriculum_version TEXT,
  required_certification TEXT,
  assessment_method TEXT,
  pass_score INTEGER,
  average_score REAL,
  feedback_summary TEXT,
  accreditation_body TEXT,
  accreditation_status TEXT,
  renewal_required BOOLEAN,
  next_renewal_date DATE,
  audit_timestamp DATETIME,
  notes TEXT
);

INSERT INTO equipment_training_program VALUES ('ETP001','Centrifuge','Centrifuge Operation Basics','EmilyClark','5551111','TrainingRoomA','2023-09-05','2023-09-07',20,'v1.0','Centrifuge Operator','Practical',85,88,'Positive','AccredBodyX','Accredited',0,NULL,'2023-09-01 08:00:00','');
INSERT INTO equipment_training_program VALUES ('ETP002','Spectrometer','Advanced Spectrometer Calibration','MichaelBrown','5552222','LabB','2023-10-12','2023-10-14',15,'v2.1','Spectrometer Calibrator','Written',90,85,'Mixed','AccredBodyY','Pending',1,'2025-10-12','2023-10-10 09:30:00','');
INSERT INTO equipment_training_program VALUES ('ETP003','Microscope','Microscopy Techniques','SarahWhite','5553333','TrainingRoomC','2023-11-20','2023-11-22',25,'v3.3','Microscope User','Practical',80,82,'Very Positive','AccredBodyZ','Accredited',0,NULL,'2023-11-15 10:45:00','');

-- Clinical trial data release table
CREATE TABLE clinical_trial_data_release (
  release_id TEXT PRIMARY KEY,
  trial_id TEXT,
  release_version TEXT,
  release_date DATE,
  data_type TEXT,
  format TEXT,
  deidentification_method TEXT,
  access_level TEXT,
  requesting_party TEXT,
  purpose TEXT,
  approved_by TEXT,
  approval_date DATE,
  release_status TEXT,
   checksum TEXT,
  file_location TEXT,
  notes TEXT,
  compliance_check BOOLEAN,
  audit_timestamp DATETIME,
  legal_review_done BOOLEAN,
  retention_period_years INTEGER
);

INSERT INTO clinical_trial_data_release VALUES ('DR001','CT001','v1.0','2023-08-15','PatientData','CSV','SafeHash','Restricted','UniversityX','Analysis','DrGreen','2023-08-10','Released','ABC123DEF','/data/ct001/v1','Initial release',1,'2023-08-15 09:00:00',1,5);
INSERT INTO clinical_trial_data_release VALUES ('DR002','CT002','v2.1','2023-11-01','LabResults','JSON','Kanon','Public','ResearcherY','MetaAnalysis','DrBlue','2023-10-28','Pending','XYZ789GHI','/data/ct002/v2','Awaiting final review',0,'2023-11-01 10:30:00',0,7);
INSERT INTO clinical_trial_data_release VALUES ('DR003','CT003','v1.3','2024-01-20','Imaging','DICOM','Anonymize','Restricted','CompanyZ','RegulatorySubmission','DrRed','2024-01-15','Released','LMN456OPQ','/data/ct003/v1','Second release after QC',1,'2024-01-20 11:45:00',1,10);

-- Hazardous materials safety review table
CREATE TABLE hazardous_materials_safety_review (
  review_id TEXT PRIMARY KEY,
  material_id TEXT,
  material_name TEXT,
  hazard_class TEXT,
  storage_location TEXT,
  quantity_kg REAL,
  last_inventory_date DATE,
  risk_assessment_score INTEGER,
  control_measures TEXT,
  review_date DATE,
  reviewer_name TEXT,
  review_outcome TEXT,
  recommended_actions TEXT,
  follow_up_date DATE,
  compliance_status TEXT,
  notes TEXT,
  audit_timestamp DATETIME,
  emergency_procedure TEXT,
  training_required BOOLEAN,
  training_completion_date DATE
);

INSERT INTO hazardous_materials_safety_review VALUES ('HMSR001','MAT001','Benzene','Flammable','CabinetA',150.0,'2023-10-01',85,'Ventilation, SpillKit','2023-11-10','DrWhite','Pass','Maintain ventilation','2024-11-10','Compliant','No issues','2023-11-10 08:00:00','EvacuationPlanA',1,'2023-11-12');
INSERT INTO hazardous_materials_safety_review VALUES ('HMSR002','MAT002','Mercury','Toxic','CabinetB',20.0,'2023-09-15',92,'Containment, PPE','2023-12-01','DrBlack','Fail','Upgrade containment','2024-12-01','NonCompliant','Leak detected in 2023-11-30','2023-12-01 09:30:00','SpillResponseB',1,'2023-12-05');
INSERT INTO hazardous_materials_safety_review VALUES ('HMSR003','MAT003','Silicon','Industrial','CabinetC',500.0,'2023-08-20',70,'Dust control','2023-10-20','DrGrey','Pass','Routine monitoring','2024-10-20','Compliant','All good','2023-10-20 10:15:00','DustAlertC',0,NULL);

-- Facility ventilation system maintenance log table
CREATE TABLE ventilation_system_maintenance_log (
  maintenance_id TEXT PRIMARY KEY,
  system_id TEXT,
  location TEXT,
  maintenance_type TEXT,
  scheduled_date DATE,
  performed_date DATE,
  technician_name TEXT,
  technician_contact TEXT,
  parts_replaced TEXT,
  labor_hours REAL,
  cost_usd REAL,
  downtime_minutes INTEGER,
  inspection_results TEXT,
  compliance_status TEXT,
  notes TEXT,
  next_maintenance_due DATE,
  audit_timestamp DATETIME,
  emergency_maintenance BOOLEAN,
  emergency_reason TEXT,
  post_maintenance_test_pass BOOLEAN
);

INSERT INTO ventilation_system_maintenance_log VALUES ('VM001','VS001','MainLab','FilterChange','2023-12-01','2023-12-02','TechA','5554444','FilterModelX',2.5,300.00,30,'Pass','Compliant','Replaced pre‑filters','2024-06-01','2023-12-02 09:00:00',0,NULL,1);
INSERT INTO ventilation_system_maintenance_log VALUES ('VM002','VS002','Annex','MotorRepair','2023-11-15','2023-11-16','TechB','5555555','MotorY',4.0,800.00,45,'Pass','Compliant','Repaired motor bearings','2024-05-15','2023-11-16 10:30:00',0,NULL,1);
INSERT INTO ventilation_system_maintenance_log VALUES ('VM003','VS003','CleanRoom','EmergencyShutdown','2023-10-20','2023-10-20','TechC','5556666','None',1.0,150.00,15,'Fail','NonCompliant','Unexpected shutdown due to sensor fault','2024-04-20','2023-10-20 08:45:00',1,'SensorFailure',0);