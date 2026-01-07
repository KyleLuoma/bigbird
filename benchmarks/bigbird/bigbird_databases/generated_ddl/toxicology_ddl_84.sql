```sql
/* Chemical storage audit */
CREATE TABLE chemical_storage_audit (
  audit_id TEXT PRIMARY KEY,
  storage_location_id TEXT,
  auditor_name TEXT,
  audit_date DATE,
  temperature REAL,
  humidity REAL,
  ventilation_status TEXT,
  fire_suppression_status TEXT,
  security_lock_status TEXT,
  chemical_count INTEGER,
  expired_chemical_count INTEGER,
  non_compliant_items INTEGER,
  corrective_action_plan TEXT,
  follow_up_date DATE,
  notes TEXT,
  region TEXT,
  building TEXT,
  floor INTEGER,
  aisle TEXT,
  shelf TEXT
);

INSERT INTO chemical_storage_audit (
  audit_id, storage_location_id, auditor_name, audit_date, temperature, humidity,
  ventilation_status, fire_suppression_status, security_lock_status,
  chemical_count, expired_chemical_count, non_compliant_items,
  corrective_action_plan, follow_up_date, notes, region, building, floor, aisle, shelf
) VALUES
('AUD001','LOC01','JohnDoe','2023-07-01',22.5,45.0,'OK','OK','Locked',150,2,5,'PlanA','2023-08-01','All good','North','BldgA',2,'A1','S3');

INSERT INTO chemical_storage_audit (
  audit_id, storage_location_id, auditor_name, audit_date, temperature, humidity,
  ventilation_status, fire_suppression_status, security_lock_status,
  chemical_count, expired_chemical_count, non_compliant_items,
  corrective_action_plan, follow_up_date, notes, region, building, floor, aisle, shelf
) VALUES
('AUD002','LOC02','JaneSmith','2023-08-15',19.8,50.2,'OK','Issue','Unlocked',200,0,3,'PlanB','2023-09-15','Minor issues','South','BldgB',1,'B2','S1');

INSERT INTO chemical_storage_audit (
  audit_id, storage_location_id, auditor_name, audit_date, temperature, humidity,
  ventilation_status, fire_suppression_status, security_lock_status,
  chemical_count, expired_chemical_count, non_compliant_items,
  corrective_action_plan, follow_up_date, notes, region, building, floor, aisle, shelf
) VALUES
('AUD003','LOC03','MikeLee','2023-09-30',21.0,48.5,'Issue','OK','Locked',180,1,2,'PlanC','2023-10-30','Follow up needed','East','BldgC',3,'C3','S2');

/* Instrument performance trend */
CREATE TABLE instrument_performance_trend (
  trend_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  metric_name TEXT,
  measurement_date DATE,
  value REAL,
  unit TEXT,
  baseline_value REAL,
  deviation_percent REAL,
  threshold_high REAL,
  threshold_low REAL,
  status TEXT,
  operator_id TEXT,
  shift TEXT,
  maintenance_cycle INTEGER,
  firmware_version TEXT,
  calibration_id TEXT,
  notes TEXT,
  location TEXT,
  department TEXT,
  data_quality_score REAL
);

INSERT INTO instrument_performance_trend (
  trend_id, instrument_id, metric_name, measurement_date, value, unit,
  baseline_value, deviation_percent, threshold_high, threshold_low,
  status, operator_id, shift, maintenance_cycle, firmware_version,
  calibration_id, notes, location, department, data_quality_score
) VALUES
('TRD001','INST01','SignalNoise','2023-07-10',12.5,'dB',10.0,25.0,15.0,5.0,'Good','OP001','Day',4,'v1.2','CAL001','Stable','LabA','Analytical',0.98);

INSERT INTO instrument_performance_trend (
  trend_id, instrument_id, metric_name, measurement_date, value, unit,
  baseline_value, deviation_percent, threshold_high, threshold_low,
  status, operator_id, shift, maintenance_cycle, firmware_version,
  calibration_id, notes, location, department, data_quality_score
) VALUES
('TRD002','INST02','Resolution','2023-08-12',0.85,'nm',0.80,6.25,1.0,0.5,'Acceptable','OP002','Night',2,'v3.4','CAL005','Slight drift','LabB','Spectroscopy',0.92);

INSERT INTO instrument_performance_trend (
  trend_id, instrument_id, metric_name, measurement_date, value, unit,
  baseline_value, deviation_percent, threshold_high, threshold_low,
  status, operator_id, shift, maintenance_cycle, firmware_version,
  calibration_id, notes, location, department, data_quality_score
) VALUES
('TRD003','INST03','TemperatureStability','2023-09-05',22.3,'C',22.0,1.36,23.0,21.0,'Good','OP003','Day',1,'v2.1','CAL009','Within spec','LabC','Chromatography',0.99);

/* Molecular property prediction */
CREATE TABLE molecular_property_prediction (
  prediction_id TEXT PRIMARY KEY,
  molecule_id TEXT,
  property_name TEXT,
  predicted_value REAL,
  prediction_method TEXT,
  model_version TEXT,
  confidence_score REAL,
  prediction_date DATE,
  researcher_id TEXT,
  validation_status TEXT,
  error_margin REAL,
  dataset_used TEXT,
  training_epoch INTEGER,
  hyperparameters TEXT,
  notes TEXT,
  source_database TEXT,
  chemical_family TEXT,
  molecular_weight REAL,
  logp REAL,
  polar_surface_area REAL
);

INSERT INTO molecular_property_prediction (
  prediction_id, molecule_id, property_name, predicted_value, prediction_method,
  model_version, confidence_score, prediction_date, researcher_id,
  validation_status, error_margin, dataset_used, training_epoch,
  hyperparameters, notes, source_database, chemical_family,
  molecular_weight, logp, polar_surface_area
) VALUES
('PRD001','MOL001','Solubility',0.45,'ML_RF','v1.0',0.88,'2023-07-20','RES001','Pending',0.05,'DS001',150,'max_depth=10','Initial run','PubChem','Organic',180.2,2.1,45.0);

INSERT INTO molecular_property_prediction (
  prediction_id, molecule_id, property_name, predicted_value, prediction_method,
  model_version, confidence_score, prediction_date, researcher_id,
  validation_status, error_margin, dataset_used, training_epoch,
  hyperparameters, notes, source_database, chemical_family,
  molecular_weight, logp, polar_surface_area
) VALUES
('PRD002','MOL002','LogP',3.7,'ML_NN','v2.3',0.92,'2023-08-15','RES002','Validated',0.03,'DS005',200,'layers=3','Improved model','ChEMBL','Aromatic',250.5,3.7,30.2);

INSERT INTO molecular_property_prediction (
  prediction_id, molecule_id, property_name, predicted_value, prediction_method,
  model_version, confidence_score, prediction_date, researcher_id,
  validation_status, error_margin, dataset_used, training_epoch,
  hyperparameters, notes, source_database, chemical_family,
  molecular_weight, logp, polar_surface_area
) VALUES
('PRD003','MOL003','pKa',7.2,'ML_SVM','v1.5',0.81,'2023-09-01','RES003','Pending',0.08,'DS009',120,'C=1.0','Preliminary','DrugBank','Heterocycle',300.0,1.9,55.5);

/* Reaction mechanism detail */
CREATE TABLE reaction_mechanism_detail (
  mechanism_id TEXT PRIMARY KEY,
  reaction_id TEXT,
  step_number INTEGER,
  description TEXT,
  catalyst TEXT,
  temperature REAL,
  pressure REAL,
  solvent TEXT,
  time_minutes REAL,
  yield_percent REAL,
  byproduct TEXT,
  stoichiometry TEXT,
  activation_energy REAL,
  transition_state TEXT,
  rate_constant REAL,
  mechanism_type TEXT,
  researcher_id TEXT,
  validation_date DATE,
  notes TEXT,
  reference TEXT
);

INSERT INTO reaction_mechanism_detail (
  mechanism_id, reaction_id, step_number, description, catalyst,
  temperature, pressure, solvent, time_minutes, yield_percent,
  byproduct, stoichiometry, activation_energy, transition_state,
  rate_constant, mechanism_type, researcher_id, validation_date,
  notes, reference
) VALUES
('MECH001','RXN001',1,'Activation','Pd/C',80.0,1.0,'Ethanol',60.0,85.0,'Water','A+B->C',45.0,'TS1',0.001,'Catalytic','RES001','2023-07-25','No issues','DOI12345');

INSERT INTO reaction_mechanism_detail (
  mechanism_id, reaction_id, step_number, description, catalyst,
  temperature, pressure, solvent, time_minutes, yield_percent,
  byproduct, stoichiometry, activation_energy, transition_state,
  rate_constant, mechanism_type, researcher_id, validation_date,
  notes, reference
) VALUES
('MECH002','RXN002',2,'Cyclization','Acid',120.0,0.5,'DMF',30.0,70.0,'CO2','C+D->E',60.0,'TS2',0.0005,'AcidCatalyzed','RES002','2023-08-10','Side product observed','DOI67890');

INSERT INTO reaction_mechanism_detail (
  mechanism_id, reaction_id, step_number, description, catalyst,
  temperature, pressure, solvent, time_minutes, yield_percent,
  byproduct, stoichiometry, activation_energy, transition_state,
  rate_constant, mechanism_type, researcher_id, validation_date,
  notes, reference
) VALUES
('MECH003','RXN003',3,'Oxidation','FeCl3',95.0,1.0,'Acetone',45.0,65.0,'H2O','E+O2->F',55.0,'TS3',0.0008,'Redox','RES003','2023-09-05','Yield lower than expected','DOI24680');

/* Spectral dataset metadata */
CREATE TABLE spectral_dataset_metadata (
  dataset_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  experiment_id TEXT,
  acquisition_date DATE,
  spectral_range_start REAL,
  spectral_range_end REAL,
  resolution REAL,
  sample_id TEXT,
  sample_type TEXT,
  operator_id TEXT,
  data_format TEXT,
  file_path TEXT,
  file_size_bytes INTEGER,
  processing_software TEXT,
  processing_version TEXT,
  calibration_id TEXT,
  temperature REAL,
  pressure REAL,
  notes TEXT,
  quality_flag TEXT
);

INSERT INTO spectral_dataset_metadata (
  dataset_id, instrument_id, experiment_id, acquisition_date,
  spectral_range_start, spectral_range_end, resolution, sample_id,
  sample_type, operator_id, data_format, file_path, file_size_bytes,
  processing_software, processing_version, calibration_id,
  temperature, pressure, notes, quality_flag
) VALUES
('DS001','INST10','EXP100','2023-07-05',200.0,800.0,0.5,'SMP001','Liquid','OP100','CSV','/data/ds001.csv',2048000,'SpecSoft','2.1','CAL100',22.0,1.0,'Processed','PASS');

INSERT INTO spectral_dataset_metadata (
  dataset_id, instrument_id, experiment_id, acquisition_date,
  spectral_range_start, spectral_range_end, resolution, sample_id,
  sample_type, operator_id, data_format, file_path, file_size_bytes,
  processing_software, processing_version, calibration_id,
  temperature, pressure, notes, quality_flag
) VALUES
('DS002','INST11','EXP101','2023-08-12',100.0,1200.0,1.0,'SMP002','Solid','OP101','TXT','/data/ds002.txt',4096000,'SpecAnalyzer','3.0','CAL101',19.5,0.9,'Noisy region trimmed','WARN');

INSERT INTO spectral_dataset_metadata (
  dataset_id, instrument_id, experiment_id, acquisition_date,
  spectral_range_start, spectral_range_end, resolution, sample_id,
  sample_type, operator_id, data_format, file_path, file_size_bytes,
  processing_software, processing_version, calibration_id,
  temperature, pressure, notes, quality_flag
) VALUES
('DS003','INST12','EXP102','2023-09-20',400.0,1000.0,0.2,'SMP003','Gas','OP102','BIN','/data/ds003.bin',1024000,'SpecPro','1.8','CAL102',25.0,1.2,'All good','PASS');

/* Compound synthesis route */
CREATE TABLE compound_synthesis_route (
  route_id TEXT PRIMARY KEY,
  compound_id TEXT,
  step_number INTEGER,
  reaction_id TEXT,
  reagents TEXT,
  solvent TEXT,
  temperature REAL,
  pressure REAL,
  time_minutes REAL,
  yield_percent REAL,
  purification_method TEXT,
  equipment_used TEXT,
  operator_id TEXT,
  batch_id TEXT,
  scale_mmol REAL,
  notes TEXT,
  hazard_assessment TEXT,
  regulatory_approval TEXT,
  synthesis_date DATE,
  final_product_purity REAL
);

INSERT INTO compound_synthesis_route (
  route_id, compound_id, step_number, reaction_id, reagents, solvent,
  temperature, pressure, time_minutes, yield_percent, purification_method,
  equipment_used, operator_id, batch_id, scale_mmol, notes,
  hazard_assessment, regulatory_approval, synthesis_date, final_product_purity
) VALUES
('RT001','CMP001',1,'RXN200','ReagA;ReagB','MeOH',78.0,1.0,120.0,92.0,'Recrystallization','Reactor1','OP200','BCH001',500.0,'Initial step','Low','Approved','2023-07-15',99.5);

INSERT INTO compound_synthesis_route (
  route_id, compound_id, step_number, reaction_id, reagents, solvent,
  temperature, pressure, time_minutes, yield_percent, purification_method,
  equipment_used, operator_id, batch_id, scale_mmol, notes,
  hazard_assessment, regulatory_approval, synthesis_date, final_product_purity
) VALUES
('RT002','CMP001',2,'RXN201','ReagC','Dichloromethane',45.0,0.8,90.0,78.0,'Distillation','Reactor2','OP201','BCH001',500.0,'Second step','Medium','Pending','2023-07-18',96.0);

INSERT INTO compound_synthesis_route (
  route_id, compound_id, step_number, reaction_id, reagents, solvent,
  temperature, pressure, time_minutes, yield_percent, purification_method,
  equipment_used, operator_id, batch_id, scale_mmol, notes,
  hazard_assessment, regulatory_approval, synthesis_date, final_product_purity
) VALUES
('RT003','CMP001',3,'RXN202','ReagD;ReagE','Acetone',60.0,1.0,60.0,85.0,'Chromatography','Reactor3','OP202','BCH001',500.0,'Final step','High','Approved','2023-07-22',98.2);

/* Lab chemical handling procedure */
CREATE TABLE lab_chemical_handling_procedure (
  procedure_id TEXT PRIMARY KEY,
  chemical_id TEXT,
  procedure_name TEXT,
  handling_instructions TEXT,
  protective_equipment TEXT,
  storage_requirements TEXT,
  disposal_method TEXT,
  spill_response TEXT,
  ventilation_required TEXT,
  temperature_range TEXT,
  humidity_range TEXT,
  expiration_date DATE,
  last_review_date DATE,
  reviewer_id TEXT,
  author_id TEXT,
  version INTEGER,
  approval_status TEXT,
  notes TEXT,
  training_required TEXT,
  applicable_department TEXT
);

INSERT INTO lab_chemical_handling_procedure (
  procedure_id, chemical_id, procedure_name, handling_instructions,
  protective_equipment, storage_requirements, disposal_method, spill_response,
  ventilation_required, temperature_range, humidity_range, expiration_date,
  last_review_date, reviewer_id, author_id, version, approval_status,
  notes, training_required, applicable_department
) VALUES
('PROC001','CHEM001','Handle_Acetone','Use slow pour','Gloves;Goggles','Cool dry cabinet','Incinerate','Absorb with sand','Yes','15-25C','30-60%','2025-12-31','2023-06-01','REV001','AUTH001',1,'Approved','Standard procedure','Yes','OrganicChemistry');

INSERT INTO lab_chemical_handling_procedure (
  procedure_id, chemical_id, procedure_name, handling_instructions,
  protective_equipment, storage_requirements, disposal_method, spill_response,
  ventilation_required, temperature_range, humidity_range, expiration_date,
  last_review_date, reviewer_id, author_id, version, approval_status,
  notes, training_required, applicable_department
) VALUES
('PROC002','CHEM002','Handle_Sodium_Hydroxide','Avoid water contact','Gloves;Apron','Desiccated cabinet','Neutralize','Flush with water','Yes','10-20C','20-50%','2024-06-30','2023-07-15','REV002','AUTH002',2,'Approved','Handle under fume hood','Yes','InorganicChemistry');

INSERT INTO lab_chemical_handling_procedure (
  procedure_id, chemical_id, procedure_name, handling_instructions,
  protective_equipment, storage_requirements, disposal_method, spill_response,
  ventilation_required, temperature_range, humidity_range, expiration_date,
  last_review_date, reviewer_id, author_id, version, approval_status,
  notes, training_required, applicable_department
) VALUES
('PROC003','CHEM003','Handle_Ethylene_Glycol','Transfer with syringes','Gloves;FaceShield','Room temperature','Recycle','Contain and report','No','5-30C','40-70%','2026-03-15','2023-08-20','REV003','AUTH003',1,'Pending','Requires special training','Yes','MaterialsScience');

/* Equipment failure analysis report */
CREATE TABLE equipment_failure_analysis_report (
  report_id TEXT PRIMARY KEY,
  equipment_id TEXT,
  failure_date DATE,
  failure_mode TEXT,
  root_cause TEXT,
  downtime_hours REAL,
  repair_action TEXT,
  parts_replaced TEXT,
  technician_id TEXT,
  repair_cost REAL,
  warranty_claim_status TEXT,
  severity_level TEXT,
  impact_on_operations TEXT,
  preventive_action TEXT,
  follow_up_date DATE,
  notes TEXT,
  location TEXT,
  department TEXT,
  analysis_version INTEGER,
  responsible_manager TEXT
);

INSERT INTO equipment_failure_analysis_report (
  report_id, equipment_id, failure_date, failure_mode, root_cause,
  downtime_hours, repair_action, parts_replaced, technician_id,
  repair_cost, warranty_claim_status, severity_level,
  impact_on_operations, preventive_action, follow_up_date, notes,
  location, department, analysis_version, responsible_manager
) VALUES
('RPT001','EQP001','2023-07-18','Overheating','Cooling fan failure',4.5,'Replace fan','FanModelX','TECH001',250.00,'Approved','High','Production halt','Install temperature sensor','2023-08-01','Resolved quickly','LabA','Manufacturing',1,'MAN001');

INSERT INTO equipment_failure_analysis_report (
  report_id, equipment_id, failure_date, failure_mode, root_cause,
  downtime_hours, repair_action, parts_replaced, technician_id,
  repair_cost, warranty_claim_status, severity_level,
  impact_on_operations, preventive_action, follow_up_date, notes,
  location, department, analysis_version, responsible_manager
) VALUES
('RPT002','EQP002','2023-08-05','Electrical fault','Short circuit',2.0,'Rewired module','CircuitBoardV2','TECH002',400.00,'Rejected','Medium','Minor delay','Annual electrical audit','2023-08-20','Investigate supplier','LabB','Electronics',2,'MAN002');

INSERT INTO equipment_failure_analysis_report (
  report_id, equipment_id, failure_date, failure_mode, root_cause,
  downtime_hours, repair_action, parts_replaced, technician_id,
  repair_cost, warranty_claim_status, severity_level,
  impact_on_operations, preventive_action, follow_up_date, notes,
  location, department, analysis_version, responsible_manager
) VALUES
('RPT003','EQP003','2023-09-12','Mechanical jam','Misaligned gear',6.0,'Realign and lubricate','GearSetA','TECH003',600.00,'Approved','High','Extended downtime','Implement alignment check','2023-09-30','Root cause confirmed','LabC','Mechanical',1,'MAN003');

/* Facility air quality assessment */
CREATE TABLE facility_air_quality_assessment (
  assessment_id TEXT PRIMARY KEY,
  facility_id TEXT,
  assessment_date DATE,
  assessor_name TEXT,
  pm25_level REAL,
  pm10_level REAL,
  co2_level REAL,
  voc_level REAL,
  temperature REAL,
  humidity REAL,
  airflow_rate REAL,
  ventilation_status TEXT,
  filter_efficiency_percent REAL,
  compliance_status TEXT,
  corrective_actions TEXT,
  next_assessment_date DATE,
  notes TEXT,
  zone TEXT,
  building TEXT,
  floor INTEGER
);

INSERT INTO facility_air_quality_assessment (
  assessment_id, facility_id, assessment_date, assessor_name, pm25_level,
  pm10_level, co2_level, voc_level, temperature, humidity,
  airflow_rate, ventilation_status, filter_efficiency_percent,
  compliance_status, corrective_actions, next_assessment_date,
  notes, zone, building, floor
) VALUES
('AQ001','FAC001','2023-07-10','AnnaLee',12.5,25.0,450.0,0.35,22.0,45.0,1.2,'Operational',98.0,'Compliant','Replace HEPA filter Q3','2024-01-10','All parameters within limits','ZoneA','Main','1');

INSERT INTO facility_air_quality_assessment (
  assessment_id, facility_id, assessment_date, assessor_name, pm25_level,
  pm10_level, co2_level, voc_level, temperature, humidity,
  airflow_rate, ventilation_status, filter_efficiency_percent,
  compliance_status, corrective_actions, next_assessment_date,
  notes, zone, building, floor
) VALUES
('AQ002','FAC002','2023-08-22','BenKim',35.0,60.0,800.0,0.80,24.5,55.0,0.9,'Reduced','85.0','Non‑Compliant','Upgrade ventilation system','2024-02-22','Elevated VOCs detected','ZoneB','Annex','2');

INSERT INTO facility_air_quality_assessment (
  assessment_id, facility_id, assessment_date, assessor_name, pm25_level,
  pm10_level, co2_level, voc_level, temperature, humidity,
  airflow_rate, ventilation_status, filter_efficiency_percent,
  compliance_status, corrective_actions, next_assessment_date,
  notes, zone, building, floor
) VALUES
('AQ003','FAC003','2023-09-15','CaraMoe',8.0,15.0,400.0,0.20,20.0,40.0,1.5,'Operational',99.0,'Compliant','No action required','2024-03-15','Excellent air quality','ZoneC','Research','3');

/* Researcher patent application */
CREATE TABLE researcher_patent_application (
  application_id TEXT PRIMARY KEY,
  researcher_id TEXT,
  patent_title TEXT,
  filing_date DATE,
  status TEXT,
  patent_number TEXT,
  jurisdiction TEXT,
  invention_summary TEXT,
  related_project_id TEXT,
  priority_date DATE,
  examiner_id TEXT,
  days_to_decision INTEGER,
  legal_representative TEXT,
  estimated_value REAL,
  co_inventor_ids TEXT,
  technology_field TEXT,
  funding_source TEXT,
  notes TEXT,
  last_update DATE,
  approval_status TEXT
);

INSERT INTO researcher_patent_application (
  application_id, researcher_id, patent_title, filing_date, status,
  patent_number, jurisdiction, invention_summary, related_project_id,
  priority_date, examiner_id, days_to_decision, legal_representative,
  estimated_value, co_inventor_ids, technology_field, funding_source,
  notes, last_update, approval_status
) VALUES
('APP001','RES001','Novel_Catalyst_For_Hydrogenation','2023-06-01','Pending','PN123456','US','Catalyst improves yield 30%','PROJ001','2023-05-20','EXM001',120,'LawFirmA',500000.00,'RES002;RES003','Catalysis','GrantA','Initial filing','2023-07-01','Pending');

INSERT INTO researcher_patent_application (
  application_id, researcher_id, patent_title, filing_date, status,
  patent_number, jurisdiction, invention_summary, related_project_id,
  priority_date, examiner_id, days_to_decision, legal_representative,
  estimated_value, co_inventor_ids, technology_field, funding_source,
  notes, last_update, approval_status
) VALUES
('APP002','RES004','Self‑Healing_Polymer_Composition','2023-07-15','Approved','PN654321','EU','Polymer restores mechanical strength after damage','PROJ009','2023-07-01','EXM004',95,'LawFirmB',750000.00,'RES005','MaterialsScience','GrantB','Approved after examination','2023-09-10','Approved');

INSERT INTO researcher_patent_application (
  application_id, researcher_id, patent_title, filing_date, status,
  patent_number, jurisdiction, invention_summary, related_project_id,
  priority_date, examiner_id, days_to_decision, legal_representative,
  estimated_value, co_inventor_ids, technology_field, funding_source,
  notes, last_update, approval_status
) VALUES
('APP003','RES006','AI‑Driven_Synthesis_Planner','2023-08-20','Pending','PN789012','JP','Software predicts optimal synthetic routes','PROJ015','2023-08-10','EXM007',150,'LawFirmC',1200000.00,'RES007;RES008','ArtificialIntelligence','GrantC','Pending international filing','2023-09-05','Pending');
```