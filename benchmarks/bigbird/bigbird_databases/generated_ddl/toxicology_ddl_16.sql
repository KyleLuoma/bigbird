-- Lab Shipment Manifest
CREATE TABLE lab_shipment_manifest (
  manifest_id TEXT PRIMARY KEY,
  shipment_date TEXT,
  carrier_name TEXT,
  tracking_number TEXT,
  origin_lab TEXT,
  destination_lab TEXT,
  temperature_control TEXT,
  humidity_control TEXT,
  packaging_type TEXT,
  weight_kg REAL,
  volume_m3 REAL,
  contents_description TEXT,
  special_handling_instructions TEXT,
  sender_contact TEXT,
  receiver_contact TEXT,
  insurance_value_usd REAL,
  customs_declaration_number TEXT,
  status TEXT,
  estimated_arrival_date TEXT,
  actual_arrival_date TEXT
);

INSERT INTO lab_shipment_manifest VALUES
('MAN001','2025-03-10','FastShip','TRK123456','LabA','LabB','Yes','No','Box',12.5,0.03,'Chemicals','Keep upright','John Doe','Jane Smith',5000.00,'CUST001','InTransit','2025-03-15',NULL),
('MAN002','2025-04-02','QuickFreight','TRK789012','LabC','LabD','No','Yes','Cooler',8.0,0.02,'BiologicalSamples','Do not freeze','Alice Lee','Bob Brown',3000.00,'CUST002','Delivered','2025-04-07','2025-04-07'),
('MAN003','2025-05-18','SafeTransit','TRK345678','LabE','LabF','Yes','Yes','Crate',20.0,0.05,'Nanoparticles','Handle with gloves','Carol King','David Black',10000.00,'CUST003','Pending','2025-05-25',NULL);

-- Instrument Performance Log
CREATE TABLE instrument_performance_log (
  log_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  measurement_date TEXT,
  uptime_hours REAL,
  downtime_hours REAL,
  error_count INTEGER,
  mean_time_between_failures REAL,
  calibration_status TEXT,
  firmware_version TEXT,
  software_version TEXT,
  temperature_c REAL,
  voltage_v REAL,
  current_a REAL,
  humidity_percent REAL,
  pressure_pa REAL,
  performance_score REAL,
  technician_id TEXT,
  notes TEXT,
  batch_number TEXT,
  lot_number TEXT,
  operating_mode TEXT,
  last_maintenance_date TEXT
);

INSERT INTO instrument_performance_log VALUES
('LOG001','INST100','2025-02-14',120.5,2.3,1,150.0,'Calibrated','FW1.2','SW3.4',22.5,5.0,0.8,45.0,101325,98.6,'TECH01','All good','BCH001','LOT99','Auto','2025-01-30'),
('LOG002','INST200','2025-02-15',95.0,5.0,3,80.0,'Pending','FW2.0','SW4.1',21.0,4.8,0.7,40.0,100800,87.3,'TECH02','Minor warnings','BCH002','LOT88','Manual','2025-01-20'),
('LOG003','INST300','2025-02-16',130.0,0.0,0,200.0,'Calibrated','FW3.5','SW5.2',23.0,5.2,0.9,50.0,102000,99.9,'TECH03','Excellent performance','BCH003','LOT77','Auto','2025-02-01');

-- Chemical Reaction Event
CREATE TABLE chemical_reaction_event (
  reaction_event_id TEXT PRIMARY KEY,
  reaction_id TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  reactor_id TEXT,
  temperature_c REAL,
  pressure_pa REAL,
  pH REAL,
  stir_rate_rpm REAL,
  catalyst_batch TEXT,
  solvent_type TEXT,
  reactant_a_qty_mol REAL,
  reactant_b_qty_mol REAL,
  product_yield_percent REAL,
  observation_notes TEXT,
  operator_id TEXT,
  safety_check_passed TEXT,
  waste_generated_kg REAL,
  energy_consumption_kwh REAL,
  reaction_status TEXT,
  batch_code TEXT
);

INSERT INTO chemical_reaction_event VALUES
('EVT001','RXN100','2025-03-01 08:00','2025-03-01 12:00','REACT01',80.0,150000,7.2,300,'CAT001','Acetone',0.5,0.5,78.5,'Smooth reaction','OP001','Yes',0.2,15.0,'Completed','BC001'),
('EVT002','RXN200','2025-03-02 09:30','2025-03-02 14:45','REACT02',120.0,200000,6.8,500,'CAT002','Ethanol',1.0,0.8,65.0,'Foaming observed','OP002','No',0.5,22.5,'Interrupted','BC002'),
('EVT003','RXN300','2025-03-03 07:15','2025-03-03 11:30','REACT03',95.0,180000,7.0,400,'CAT003','Methanol',0.75,0.75,82.0,'No issues','OP003','Yes',0.1,18.0,'Completed','BC003');

-- Sample Collection Schedule
CREATE TABLE sample_collection_schedule (
  schedule_id TEXT PRIMARY KEY,
  study_id TEXT,
  collection_date TEXT,
  site_id TEXT,
  sample_type TEXT,
  collector_name TEXT,
  container_type TEXT,
  volume_ml REAL,
  preservation_method TEXT,
  transport_temperature_c REAL,
  transport_time_minutes INTEGER,
  expected_arrival_date TEXT,
  received_by TEXT,
  accession_number TEXT,
  storage_location TEXT,
  priority_level TEXT,
  notes TEXT,
  compliance_flag TEXT,
  protocol_version TEXT,
  qc_status TEXT
);

INSERT INTO sample_collection_schedule VALUES
('SCH001','STDY01','2025-04-10','SITEA','Blood','Emily Clark','Vial',10.0,'Refrigerated',4.0,30,'2025-04-11','Mike Jones','ACC001','FreezerA','High','N/A','Pass','v1.2','Pending'),
('SCH002','STDY02','2025-04-12','SITEB','Soil','David Miller','Bag',500.0,'Dry',22.0,45,'2025-04-13','Sarah Lee','ACC002','ColdRoomB','Medium','Check moisture','Pass','v1.0','Approved'),
('SCH003','STDY03','2025-04-15','SITEC','Water','Laura Patel','Bottle',250.0,'Frozen',-20.0,60,'2025-04-16','Tom Wang','ACC003','FreezerC','Low','Urgent analysis','Fail','v2.0','Pending');

-- Environmental Quality Index
CREATE TABLE environmental_quality_index (
  eqi_id TEXT PRIMARY KEY,
  monitoring_station_id TEXT,
  measurement_date TEXT,
  pm25_ug_m3 REAL,
  pm10_ug_m3 REAL,
  o3_ppb REAL,
  no2_ppb REAL,
  so2_ppb REAL,
  co_ppm REAL,
  temperature_c REAL,
  humidity_percent REAL,
  wind_speed_m_s REAL,
  wind_direction_deg INTEGER,
  aqi INTEGER,
  health_advisory TEXT,
  data_source TEXT,
  calibration_date TEXT,
  sensor_status TEXT,
  auditor_id TEXT,
  remarks TEXT
);

INSERT INTO environmental_quality_index VALUES
('EQI001','STN01','2025-05-01',12.5,25.0,30.0,20.0,5.0,0.7,22.0,55.0,3.5,180,42,'Good','Automated','2025-04-20','Active','AUD001','No issues'),
('EQI002','STN02','2025-05-02',35.0,60.0,45.0,40.0,10.0,1.2,28.0,70.0,5.0,90,85,'Unhealthy for Sensitive Groups','Manual','2025-04-22','Active','AUD002','Sensor drift observed'),
('EQI003','STN03','2025-05-03',80.0,120.0,60.0,55.0,15.0,2.0,30.0,80.0,7.0,270,150,'Unhealthy','Automated','2025-04-25','Maintenance Required','AUD003','Calibration needed');

-- Researcher Collaboration Network
CREATE TABLE researcher_collaboration_network (
  collaboration_id TEXT PRIMARY KEY,
  researcher_id_1 TEXT,
  researcher_id_2 TEXT,
  project_id TEXT,
  start_date TEXT,
  end_date TEXT,
  collaboration_type TEXT,
  role_1 TEXT,
  role_2 TEXT,
  funding_amount_usd REAL,
  contribution_percentage_1 REAL,
  contribution_percentage_2 REAL,
  publications_coauthored INTEGER,
  meetings_count INTEGER,
  communication_channel TEXT,
  agreement_signed TEXT,
  data_sharing_policy TEXT,
  confidentiality_level TEXT,
  notes TEXT,
  status TEXT
);

INSERT INTO researcher_collaboration_network VALUES
('COLL001','RES001','RES002','PROJ01','2023-01-01','2024-12-31','Joint','Lead Investigator','Co-Investigator',250000.00,60.0,40.0,5,12,'Email','Yes','Open','Medium','Successful','Active'),
('COLL002','RES003','RES004','PROJ02','2022-06-15','2023-06-14','Consortium','Data Analyst','Modeler',150000.00,50.0,50.0,3,8,'Slack','Yes','Restricted','High','Data integration challenges','Closed'),
('COLL003','RES005','RES006','PROJ03','2024-03-01','2025-03-01','Advisory','Advisor','Research Assistant',50000.00,30.0,70.0,1,4,'Teams','Yes','Open','Low','Initial phase','Active');

-- Computational Model Registry
CREATE TABLE computational_model_registry (
  model_id TEXT PRIMARY KEY,
  model_name TEXT,
  version TEXT,
  description TEXT,
  algorithm_type TEXT,
  input_schema TEXT,
  output_schema TEXT,
  training_dataset_id TEXT,
  validation_dataset_id TEXT,
  accuracy_metric TEXT,
  accuracy_value REAL,
  hyperparameters_json TEXT,
  training_start_date TEXT,
  training_end_date TEXT,
  compute_resource_id TEXT,
  owner_researcher_id TEXT,
  deployment_status TEXT,
  api_endpoint TEXT,
  container_image TEXT,
  license_type TEXT
);

INSERT INTO computational_model_registry VALUES
('MOD001','ProteinPredictor','v1.0','Predicts protein folding','NeuralNetwork','prot_input_v1','prot_output_v1','DS001','DS002','RMSE',0.12,'{\"layers\":4,\"units\":256}','2025-01-10','2025-02-15','CR001','RES010','Deployed','https://api.lab/models/ProteinPredictor','docker.io/lab/proteinpred:1.0','MIT'),
('MOD002','MoleculeGenerator','v2.1','Generates novel molecules','GAN','mol_input_v2','mol_output_v2','DS010','DS011','F1',0.85,'{\"generator_layers\":5,\"discriminator_layers\":5}','2024-11-01','2024-12-20','CR002','RES011','Testing','https://api.lab/models/MoleculeGenerator','docker.io/lab/molgen:2.1','Apache-2.0'),
('MOD003','CellClassifier','v0.9','Classifies cell images','CNN','img_input_v0','class_output_v0','DS020','DS021','Accuracy',0.93,'{\"conv_layers\":3,\"filter_size\":64}','2025-03-05','2025-04-10','CR003','RES012','InDevelopment','https://api.lab/models/CellClassifier','docker.io/lab/cellclass:0.9','GPL-3.0');

-- Facility Energy Audit
CREATE TABLE facility_energy_audit (
  audit_id TEXT PRIMARY KEY,
  facility_id TEXT,
  audit_date TEXT,
  auditor_name TEXT,
  total_energy_kwh REAL,
  electricity_kwh REAL,
  gas_therms REAL,
  water_m3 REAL,
  renewable_percent REAL,
  peak_load_kw REAL,
  average_load_kw REAL,
  hvac_efficiency REAL,
  lighting_efficiency REAL,
  equipment_efficiency REAL,
  recommendations_count INTEGER,
  followup_date TEXT,
  cost_savings_estimate_usd REAL,
  notes TEXT,
  compliance_status TEXT,
  report_url TEXT
);

INSERT INTO facility_energy_audit VALUES
('AUD001','FAC01','2025-02-20','Anna Green',50000.0,35000.0,1200.0,800.0,25.0,150.0,120.0,0.85,0.78,0.80,12,'2025-05-20',15000.0,'Implemented LED retrofit','Compliant','http://reports.lab/aud001.pdf'),
('AUD002','FAC02','2025-03-15','Brian White',75000.0,50000.0,1800.0,1200.0,30.0,200.0,160.0,0.80,0.70,0.75,15,'2025-06-15',25000.0','Added solar panels','Compliant','http://reports.lab/aud002.pdf'),
('AUD003','FAC03','2025-04-10','Clara Black','60000.0','40000.0','1500.0','1000.0','20.0','180.0','140.0','0.82','0.75','0.78','10','2025-07-10','12000.0','Optimized HVAC schedule','Pending','http://reports.lab/aud003.pdf');

-- Nanomaterial Exposure Record
CREATE TABLE nanomaterial_exposure_record (
  exposure_id TEXT PRIMARY KEY,
  nanomaterial_id TEXT,
  employee_id TEXT,
  exposure_date TEXT,
  exposure_duration_minutes INTEGER,
  concentration_ug_m3 REAL,
  control_measure TEXT,
  protective_equipment TEXT,
  health_monitoring_result TEXT,
  symptom_reported TEXT,
  medical_review_status TEXT,
  followup_action TEXT,
  exposure_location TEXT,
  ventilation_rate_cfm REAL,
  risk_assessment_score REAL,
  training_completed TEXT,
  supervisor_id TEXT,
  notes TEXT,
  remediation_status TEXT,
  documentation_link TEXT
);

INSERT INTO nanomaterial_exposure_record VALUES
('EXP001','NM001','EMP001','2025-01-12',45,0.8,'Local Exhaust','Respirator','Normal','None','Clear','Annual Check','Lab A',350.0,2.5,'Yes','SUP001','No issues','Resolved','http://docs.lab/exp001.pdf'),
('EXP002','NM002','EMP002','2025-02-05',30,1.2,'Fume Hood','Mask','Elevated','Mild throat irritation','Pending','Medical Consultation','Lab B',400.0,3.0,'Yes','SUP002','Follow-up needed','Open','http://docs.lab/exp002.pdf'),
('EXP003','NM003','EMP003','2025-03-20',60,0.5,'Ventilation Upgrade','Gloves','Normal','None','Clear','Routine Monitoring','Lab C',500.0,1.8,'Yes','SUP003','All clear','Closed','http://docs.lab/exp003.pdf');

-- Clinical Trial Site Visit
CREATE TABLE clinical_trial_site_visit (
  visit_id TEXT PRIMARY KEY,
  trial_id TEXT,
  site_id TEXT,
  visit_date TEXT,
  visit_type TEXT,
  auditor_name TEXT,
  compliance_score INTEGER,
  deviations_found INTEGER,
  corrective_action_plan TEXT,
  followup_date TEXT,
  site_contact TEXT,
  visit_notes TEXT,
  document_uploaded TEXT,
  regulatory_status TEXT,
  safety_check_passed TEXT,
  equipment_inspection_passed TEXT,
  records_reviewed_count INTEGER,
  training_verification TEXT,
  data_integrity_check TEXT,
  overall_status TEXT
);

INSERT INTO clinical_trial_site_visit VALUES
('VIS001','TRIAL01','SITEA','2025-04-01','Initial','Dr. Helen','95','0','None','2025-04-30','John Doe','All documentation in order','Yes','Approved','Yes','Yes',20,'Yes','Pass','Completed'),
('VIS002','TRIAL02','SITEB','2025-04-15','Routine','Dr. Mark','80','2','Update SOPs','2025-05-15','Jane Smith','Minor deviations noted','Yes','Pending','No','Yes',15,'No','Fail','FollowUpRequired'),
('VIS003','TRIAL03','SITEC','2025-05-05','Closeout','Dr. Susan','88','1','Corrective training','2025-06-01','Emily Johnson','Final compliance achieved','Yes','Approved','Yes','Yes',25,'Yes','Pass','Closed');