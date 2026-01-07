-- Table storing information about laboratory equipment and its maintenance details
CREATE TABLE lab_equipment (
  equipment_id TEXT PRIMARY KEY,
  name TEXT,
  type TEXT,
  manufacturer TEXT,
  model_number TEXT,
  serial_number TEXT,
  purchase_date TEXT,
  warranty_expiration TEXT,
  location TEXT,
  status TEXT,
  calibration_date TEXT,
  calibration_due TEXT,
  last_maintenance TEXT,
  maintenance_interval_days INTEGER,
  owner_user_id TEXT,
  safety_rating TEXT,
  voltage REAL,
  current REAL,
  power_consumption REAL,
  notes TEXT
);

INSERT INTO lab_equipment VALUES ('EQ001','Centrifuge','Rotor','SpinTech','CT-200','SN12345','2021-03-15','2024-03-15','RoomA1','Operational','2023-01-10','2024-01-10','2022-12-01',180,'USR12','High',1200,15,18000,'Checked monthly');
INSERT INTO lab_equipment VALUES ('EQ002','Spectrometer','UVVis','SpecInc','SV-500','SN67890','2020-07-22','2025-07-22','RoomB3','Under_Repair','2022-11-05','2023-11-05','2022-10-20',365,'USR34','Medium',230,0,5290,'Calibration pending');
INSERT INTO lab_equipment VALUES ('EQ003','pH_Meter','Probe','AcmeLabs','PH-10','SN54321','2019-11-01','2022-11-01','RoomC2','Decommissioned','2021-06-30','2022-06-30','2021-05-15',730,'USR56','Low',5,0.5,2.5,'Retired due to wear');

-- Table describing experimental protocols used in the lab
CREATE TABLE experiment_protocol (
  protocol_id TEXT PRIMARY KEY,
  title TEXT,
  description TEXT,
  created_by TEXT,
  creation_date TEXT,
  version TEXT,
  objective TEXT,
  methodology TEXT,
  reagents_list TEXT,
  equipment_required TEXT,
  safety_precautions TEXT,
  estimated_time_minutes INTEGER,
  temperature_range TEXT,
  pressure_range TEXT,
  pH_range TEXT,
  yield_target REAL,
  analysis_method TEXT,
  data_format TEXT,
  approval_status TEXT,
  revision_history TEXT,
  notes TEXT
);

INSERT INTO experiment_protocol VALUES ('PR001','Synthesis_A','Desc_A','USR12','2022-01-10','v1.0','Create compound A','Method A','Reag1;Reag2','EQ001;EQ003','Gloves;Goggles',120,'20-25C','1atm','6-8',85.5,'GC-MS','CSV','Approved','Initial version','No notes');
INSERT INTO experiment_protocol VALUES ('PR002','Extraction_B','Desc_B','USR34','2022-05-05','v2.1','Extract B from sample','Method B','SolventX;SolventY','EQ002','Ventilation;Labcoat',45,'15-20C','0.9-1.1atm','5-7',63.2,'HPLC','JSON','Pending','Updated after review','Requires validation');
INSERT INTO experiment_protocol VALUES ('PR003','Assay_C','Desc_C','USR56','2021-12-20','v1.3','Quantify C','Method C','BufferA;EnzymeZ','EQ001;EQ002','Eye_protection','30','25-30C','1atm','7-9',70.0,'LC-MS','XML','Rejected','Multiple revisions','Revoked due to safety concerns');

-- Table containing researcher profile information
CREATE TABLE researcher (
  researcher_id TEXT PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  affiliation TEXT,
  department TEXT,
  position TEXT,
  phone TEXT,
  hire_date TEXT,
  termination_date TEXT,
  orcid TEXT,
  research_area TEXT,
  supervisor_id TEXT,
  funding_source TEXT,
  grant_number TEXT,
  lab_room TEXT,
  access_level TEXT,
  publications_count INTEGER,
  projects_involved INTEGER,
  bio TEXT,
  twitter_handle TEXT
);

INSERT INTO researcher VALUES ('USR12','Alice','Smith','alice.smith@example.com','UniX','Chemistry','Postdoc','555-0101','2020-06-15',NULL,'0000-0001-2345-6789','Catalysis','USR99','NSF','NSF-2020-001','R101','Level3',12,3,'Focus on heterogeneous catalysis','@alice_smith');
INSERT INTO researcher VALUES ('USR34','Bob','Jones','bob.jones@example.com','UniY','Biology','Graduate_Student','555-0202','2022-01-10',NULL,'0000-0002-3456-7890','Enzyme Kinetics','USR12','DOE','DOE-2021-045','R202','Level2',4,1,'Studying enzyme mechanisms','@bob_jones');
INSERT INTO researcher VALUES ('USR56','Carol','Lee','carol.lee@example.com','InstituteZ','Physics','Research_Scientist','555-0303','2018-09-01','2025-12-31','0000-0003-4567-8901','Nanomaterials','USR34','EU','EU-2022-078','R303','Level4',20,5,'Nanoparticle synthesis and characterization','@carollee');

-- Table tracking funding details for research projects
CREATE TABLE project_funding (
  funding_id TEXT PRIMARY KEY,
  project_id TEXT,
  agency_name TEXT,
  program_name TEXT,
  award_number TEXT,
  start_date TEXT,
  end_date TEXT,
  total_amount REAL,
  currency TEXT,
  principal_investigator TEXT,
  co_pi TEXT,
  matching_funds REAL,
  reporting_frequency TEXT,
  report_due_date TEXT,
  status TEXT,
  remarks TEXT,
  indirect_rate REAL,
  budget_breakdown TEXT,
  funding_type TEXT,
  notes TEXT
);

INSERT INTO project_funding VALUES ('FD001','PRJ100','National_Science_Foundation','Catalysis_Program','NSF-2020-001','2020-07-01','2023-06-30',750000,'USD','USR12','USR34',50000,'Quarterly','2020-10-01','Active','No remarks',0.15,'Equipment:300k;Personnel:300k;Travel:150k','Grant','Initial award');
INSERT INTO project_funding VALUES ('FD002','PRJ200','Department_of_Energy','Renewable_Energy','DOE-2021-045','2021-01-15','2024-01-14',1200000,'USD','USR34','USR56',200000,'Annual','2022-01-15','Pending','Awaiting final signature',0.12,'Equipment:500k;Personnel:400k;Materials:300k','Contract','Submission in progress');
INSERT INTO project_funding VALUES ('FD003','PRJ300','European_Commission','Horizon2025','EU-2022-078','2022-05-01','2025-04-30',950000,'EUR','USR56','USR12',100000,'Biannual','2022-11-01','Active','Requires mid-term report',0.10,'Equipment:350k;Personnel:350k;Travel:250k','Grant','Mid-project amendment approved');

-- Table logging safety incidents occurring in the laboratory
CREATE TABLE safety_incident (
  incident_id TEXT PRIMARY KEY,
  incident_date TEXT,
  reported_by TEXT,
  location TEXT,
  severity TEXT,
  description TEXT,
  immediate_action TEXT,
  root_cause TEXT,
  corrective_action TEXT,
  preventive_action TEXT,
  downtime_hours INTEGER,
  affected_equipment TEXT,
  number_of_injuries INTEGER,
  injury_details TEXT,
  medical_treatment TEXT,
  investigation_status TEXT,
  closure_date TEXT,
  comments TEXT,
  incident_type TEXT,
  regulatory_reported TEXT
);

INSERT INTO safety_incident VALUES ('SI001','2023-02-14','USR12','RoomA1','High','Spill of corrosive acid','Evacuated area','Improper labeling','Replaced damaged bench','Implement labeling training',4,'EQ001',1,'Chemical burn on left hand','First aid, bandage','Closed','2023-03-01','Incident handled quickly','Chemical','Yes');
INSERT INTO safety_incident VALUES ('SI002','2023-06-08','USR34','RoomB3','Medium','Electrical shock from equipment','Power shut off','Worn power cord','Replaced cord','Routine equipment inspection',2,'EQ002',0,'None','None required','Open','', 'Awaiting inspection report','Electrical','No');
INSERT INTO safety_incident VALUES ('SI003','2023-09-20','USR56','RoomC2','Low','Minor trip hazard','Area cleaned','Clutter on floor','Reorganized storage','Monthly housekeeping reminder',0,'None',0,'None','None','Closed','2023-09-25','No further action needed','Physical','No');

-- Table maintaining an inventory of chemicals stored in the lab
CREATE TABLE chemical_inventory (
  chemical_id TEXT PRIMARY KEY,
  name TEXT,
  formula TEXT,
  cas_number TEXT,
  purity_percent REAL,
  quantity REAL,
  unit TEXT,
  storage_location TEXT,
  hazard_class TEXT,
  sds_version TEXT,
  received_date TEXT,
  opened_date TEXT,
  expiration_date TEXT,
  supplier TEXT,
  lot_number TEXT,
  handling_instructions TEXT,
  disposal_method TEXT,
  inventory_status TEXT,
  last_audit_date TEXT,
  responsible_person TEXT,
  notes TEXT
);

INSERT INTO chemical_inventory VALUES ('CH001','Acetone','C3H6O','67-64-1',99.5,20.0,'L','Cabinet_A1','Flammable','v3','2022-01-10','2022-01-12','2024-01-10','ChemCo','LOT123','Keep away from heat','Collect for hazardous waste','Available','2023-12-01','USR12','Used for extractions');
INSERT INTO chemical_inventory VALUES ('CH002','Sodium_Chloride','NaCl','7647-14-5',98.0,50.0,'kg','Shelf_B3','Irritant','v2','2021-05-05','2021-05-07','2025-05-05','LabSupplies','LOT456','Wear gloves','Dispose according to local regulations','Available','2023-11-15','USR34','Common lab reagent');
INSERT INTO chemical_inventory VALUES ('CH003','Hydrochloric_Acid','HCl','7647-01-0',37.0,10.0,'L','Cabinet_C2','Corrosive','v4','2020-09-20','2020-09-22','2023-09-20','AcidCo','LOT789','Use acid-resistant containers','Neutralize before disposal','Depleted','2022-08-10','USR56','Expired, pending disposal');

-- Table recording raw data acquisition events from experiments
CREATE TABLE data_acquisition (
  acquisition_id TEXT PRIMARY KEY,
  experiment_id TEXT,
  timestamp TEXT,
  sensor_id TEXT,
  sensor_type TEXT,
  raw_value REAL,
  calibrated_value REAL,
  units TEXT,
  sampling_rate_hz REAL,
  channel INTEGER,
  file_path TEXT,
  data_quality_flag TEXT,
  notes TEXT,
  operator_id TEXT,
  firmware_version TEXT,
  battery_level REAL,
  temperature_c REAL,
  humidity_percent REAL,
  location_xyz TEXT,
  software_version TEXT
);

INSERT INTO data_acquisition VALUES ('DA001','EXP100','2023-03-01T10:15:00Z','SEN01','Thermocouple',23.5,24.0,'C',10.0,1,'/data/exp100/run1.csv','Good','Initial run','USR12','v1.2',95.0,22.0,45.0,'X12Y34Z56','v3.0');
INSERT INTO data_acquisition VALUES ('DA002','EXP200','2023-04-12T14:20:00Z','SEN02','Pressure_Transducer',101.3,101.5,'kPa',5.0,2,'/data/exp200/run2.csv','Good','Steady state','USR34','v1.0',88.0,25.0,40.0,'X22Y44Z66','v2.5');
INSERT INTO data_acquisition VALUES ('DA003','EXP300','2023-05-22T09:05:00Z','SEN03','pH_Meter',7.02,7.00,'pH',1.0,3,'/data/exp300/run3.csv','Questionable','Calibration drift observed','USR56','v2.1',70.0,20.0,55.0,'X32Y54Z76','v4.2');

-- Table cataloging scientific publications from the lab
CREATE TABLE publication (
  pub_id TEXT PRIMARY KEY,
  title TEXT,
  journal TEXT,
  volume TEXT,
  issue TEXT,
  pages TEXT,
  year INTEGER,
  doi TEXT,
  authors TEXT,
  abstract TEXT,
  keywords TEXT,
  submission_date TEXT,
  acceptance_date TEXT,
  publication_date TEXT,
  impact_factor REAL,
  citation_count INTEGER,
  corresponding_author TEXT,
  funding_acknowledgment TEXT,
  conflict_of_interest TEXT,
  open_access TEXT,
  url TEXT
);

INSERT INTO publication VALUES ('PUB001','Catalytic conversion of CO2','Journal_of_Chemistry','45','2','123-135',2022,'10.1000/jc.2022.001','Alice_Smith;Bob_Jones','Study on CO2 conversion','CO2;Catalysis;Green_chemistry','2021-09-10','2021-12-01','2022-02-15',5.6,24,'Alice_Smith','Supported by NSF-2020-001','None','Yes','http://example.com/pub001');
INSERT INTO publication VALUES ('PUB002','Enzyme kinetics in novel substrates','Biotech_Reports','12','4','210-219',2023,'10.2000/br.2023.045','Bob_Jones;Carol_Lee','Enzyme activity assessment','Enzyme;Kinetics;Biocatalysis','2022-03-05','2022-07-20','2023-01-10',3.2,8,'Bob_Jones','DOE-2021-045','None','No','http://example.com/pub002');
INSERT INTO publication VALUES ('PUB003','Nanoparticle synthesis under microwave irradiation','Nano_Materials','8','1','55-70',2021,'10.3000/nm.2021.007','Carol_Lee;Alice_Smith','Rapid synthesis method','Nanoparticles;Microwave;Materials','2020-10-15','2021-01-20','2021-03-05',6.1,15,'Carol_Lee','EU-2022-078','None','Yes','http://example.com/pub003');

-- Table recording training sessions completed by lab personnel
CREATE TABLE training_record (
  training_id TEXT PRIMARY KEY,
  employee_id TEXT,
  training_name TEXT,
  trainer_name TEXT,
  training_date TEXT,
  expiration_date TEXT,
  status TEXT,
  score REAL,
  certification_number TEXT,
  location TEXT,
  hours INTEGER,
  module_version TEXT,
  feedback TEXT,
  refresher_needed TEXT,
  next_due_date TEXT,
  notes TEXT,
  evidence_file_path TEXT,
  compliance_flag TEXT,
  department TEXT,
  training_type TEXT
);

INSERT INTO training_record VALUES ('TR001','USR12','Chemical Safety','Trainer_A','2022-02-10','2025-02-10','Completed',95.0,'CERT001','RoomA','8','v1.0','Very useful','No','2025-02-10','N/A','/evidence/tr001.pdf','Yes','Chemistry','Safety');
INSERT INTO training_record VALUES ('TR002','USR34','Instrumentation Operation','Trainer_B','2022-07-22','2024-07-22','Completed',88.5,'CERT002','RoomB','6','v2.1','Good content','Yes','2023-07-22','Needs refresher on new model','/evidence/tr002.pdf','Yes','Biology','Technical');
INSERT INTO training_record VALUES ('TR003','USR56','Data Management','Trainer_C','2023-01-15','2026-01-15','Completed',92.0,'CERT003','RoomC','4','v3.0','Applicable','No','2026-01-15','All data stored per policy','/evidence/tr003.pdf','Yes','Physics','Compliance');

-- Table storing information about instrument calibrations performed in the lab
CREATE TABLE instrument_calibration (
  calibration_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  calibration_date TEXT,
  technician_id TEXT,
  method TEXT,
  standard_used TEXT,
  result_pass TEXT,
  correction_factor REAL,
  next_due_date TEXT,
  calibration_certificate TEXT,
  notes TEXT,
  lab_section TEXT,
  equipment_type TEXT,
  manufacturer TEXT,
  model TEXT,
  serial_number TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  pressure_kpa REAL,
  calibration_software_version TEXT,
  remarks TEXT
);

INSERT INTO instrument_calibration VALUES ('CAL001','EQ001','2023-01-10','USR12','Standard_Method','StdA','Pass',1.02,'2024-01-10','cert_eq001_2023.pdf','No issues','Analytical','Centrifuge','SpinTech','CT-200','SN12345',22.0,45.0,101.3,'v5.0','Initial calibration');
INSERT INTO instrument_calibration VALUES ('CAL002','EQ002','2022-11-05','USR34','Advanced_Method','StdB','Fail',0.98,'2023-11-05','cert_eq002_2022.pdf','Recalibration required','Spectroscopy','Spectrometer','SV-500','SN67890',20.0,40.0,100.0,'v4.2','Failed due to drift');
INSERT INTO instrument_calibration VALUES ('CAL003','EQ003','2021-06-30','USR56','Standard_Method','StdC','Pass',1.00','2022-06-30','cert_eq003_2021.pdf','All parameters within tolerance','pH_Measurement','pH_Meter','PH-10','SN54321',23.5,50.0,101.5,'v3.5','Routine annual calibration');