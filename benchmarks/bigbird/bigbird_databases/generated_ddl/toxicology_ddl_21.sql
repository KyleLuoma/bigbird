-- Equipment failure root cause details
CREATE TABLE equipment_failure_root_cause (
  failure_id TEXT PRIMARY KEY,
  equipment_id TEXT,
  failure_date TEXT,
  observed_symptom TEXT,
  root_cause_category TEXT,
  root_cause_detail TEXT,
  corrective_action TEXT,
  downtime_hours TEXT,
  impact_severity TEXT,
  reporting_user TEXT,
  verification_status TEXT,
  analysis_method TEXT,
  part_number TEXT,
  manufacturer TEXT,
  warranty_status TEXT,
  cost_estimate TEXT,
  notes TEXT,
  escalation_level TEXT,
  resolution_date TEXT,
  preventive_action_id TEXT,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO equipment_failure_root_cause VALUES
('F001','EQ001','2025-11-01','overheating','thermal','cooling_fan_failure','replace_fan','4','high','user01','verified','root_cause_analysis','PN12345','AcmeCorp','valid','200','Initial investigation','level1','2025-11-05','PA001','2025-11-01','2025-11-01'),
('F002','EQ002','2025-10-15','vibration','mechanical','bearing_wear','lubricate_bearing','2','medium','user02','pending','inspection','PN54321','BetaInc','expired','150','Scheduled maintenance','level2','2025-10-20','PA002','2025-10-15','2025-10-15'),
('F003','EQ003','2025-09-20','no_power','electrical','cable_disconnect','reconnect_cable','1','low','user03','verified','visual_check','PN67890','GammaLtd','valid','0','Cable reattached','level3','2025-09-21','PA003','2025-09-20','2025-09-20');

-- Sample processing protocol definitions
CREATE TABLE sample_processing_protocol (
  protocol_id TEXT PRIMARY KEY,
  protocol_name TEXT,
  description TEXT,
  version TEXT,
  author TEXT,
  creation_date TEXT,
  last_modified_date TEXT,
  step_count TEXT,
  reagent_list TEXT,
  equipment_needed TEXT,
  temperature_range TEXT,
  pH_range TEXT,
  incubation_time TEXT,
  safety_precautions TEXT,
  approval_status TEXT,
  validation_date TEXT,
  associated_study TEXT,
  sample_type TEXT,
  storage_requirements TEXT,
  disposal_method TEXT,
  quality_control_flag TEXT,
  notes TEXT
);

INSERT INTO sample_processing_protocol VALUES
('P001','DNA_extraction','Standard DNA extraction protocol','v1','dr_jones','2025-01-10','2025-02-01','5','bufferA,bufferB','centrifuge','4-8C','7-8','30min','gloves,labsuit','approved','2025-02-02','StudyA','blood','-20C','biohazard_waste','yes','Routine protocol'),
('P002','RNA_isolation','RNA isolation with spin columns','v2','dr_smith','2025-03-05','2025-03-20','6','lysis_buffer,ethanol','spin_column','2-4C','6-7','45min','gloves,mask','pending','2025-03-21','StudyB','tissue','-80C','chemical_waste','no','Optimized for low yield samples'),
('P003','Protein_precipitation','Acetone precipitation of proteins','v1','dr_lee','2025-04-12','2025-04-15','4','acetone,trichloroacetic_acid','cold_block','-20-0C','5-6','60min','labcoat','approved','2025-04-16','StudyC','cell_lysate','-20C','organic_waste','yes','Standard protocol');

-- Chemical safety training records
CREATE TABLE chemical_safety_training (
  training_id TEXT PRIMARY KEY,
  training_title TEXT,
  trainer_name TEXT,
  training_date TEXT,
  duration_minutes TEXT,
  location TEXT,
  participant_id TEXT,
  participant_role TEXT,
  competency_level TEXT,
  signature TEXT,
  training_material_version TEXT,
  safety_topic TEXT,
  hazard_type TEXT,
  equipment_used TEXT,
  assessment_score TEXT,
  pass_fail TEXT,
  next_due_date TEXT,
  comments TEXT,
  created_by TEXT,
  created_at TEXT,
  updated_at TEXT,
  audit_trail TEXT
);

INSERT INTO chemical_safety_training VALUES
('T001','Hazard Communication','alice_wong','2025-06-01','120','LabRoom1','U001','technician','advanced','signed','v1','PPE','chemical','gloves','95','pass','2026-06-01','N/A','admin','2025-06-01','2025-06-01','none'),
('T002','Flammable Materials Handling','bob_kim','2025-07-15','90','LabRoom2','U002','researcher','intermediate','signed','v2','Fire Safety','flammable','fire_extinguisher','88','pass','2026-07-15','Good participation','admin','2025-07-15','2025-07-15','none'),
('T003','Waste Disposal Procedures','carol_lee','2025-08-20','60','LabRoom3','U003','assistant','beginner','signed','v1','Waste Management','hazardous','waste_bins','76','pass','2026-08-20','Needs improvement on documentation','admin','2025-08-20','2025-08-20','none');

-- Lab network topology mapping
CREATE TABLE lab_network_topology (
  node_id TEXT PRIMARY KEY,
  node_name TEXT,
  node_type TEXT,
  ip_address TEXT,
  mac_address TEXT,
  location TEXT,
  rack_number TEXT,
  switch_port TEXT,
  connected_to_node TEXT,
  bandwidth_mbps TEXT,
  latency_ms TEXT,
  firmware_version TEXT,
  last_maintenance TEXT,
  status TEXT,
  owner_department TEXT,
  vlan_id TEXT,
  subnet_mask TEXT,
  gateway TEXT,
  dhcp_enabled TEXT,
  snmp_community TEXT,
  notes TEXT,
  created_at TEXT
);

INSERT INTO lab_network_topology VALUES
('N001','Switch_A','switch','10.0.0.1','AA:BB:CC:DD:EE:01','DataCenter','R01','1','N002','1000','1','v1.2','2025-05-01','active','IT','10','255.255.255.0','10.0.0.254','yes','public','Core switch','2025-05-01'),
('N002','Server_01','server','10.0.0.10','AA:BB:CC:DD:EE:10','LabA','R02','5','N001','1000','2','v2.0','2025-04-15','active','Research','20','255.255.255.0','10.0.0.254','no','private','Data analysis server','2025-04-15'),
('N003','Instrument_X','instrument','10.0.0.20','AA:BB:CC:DD:EE:20','LabB','R03','7','N001','100','5','v1.0','2025-03-20','inactive','Operations','30','255.255.255.0','10.0.0.254','yes','public','Spectrometer interface','2025-03-20');

-- Research data ETL process log
CREATE TABLE research_data_etl_log (
  etl_id TEXT PRIMARY KEY,
  source_system TEXT,
  target_system TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  rows_extracted TEXT,
  rows_transformed TEXT,
  rows_loaded TEXT,
  status TEXT,
  error_message TEXT,
  initiated_by TEXT,
  approved_by TEXT,
  schedule_type TEXT,
  cron_expression TEXT,
  batch_id TEXT,
  data_volume_mb TEXT,
  transformation_script_version TEXT,
  checksum_before TEXT,
  checksum_after TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO research_data_etl_log VALUES
('E001','LIMS','DataWarehouse','2025-09-01 08:00','2025-09-01 08:30','10000','9500','9450','success','','etl_user','manager','daily','0 8 * * *','B001','150','v1.3','abc123','def456','No issues','2025-09-01','2025-09-01'),
('E002','InstrumentLog','AnalyticsDB','2025-09-02 02:00','2025-09-02 02:45','5000','4800','4700','failed','connection_timeout','etl_user','manager','hourly','0 */1 * * *','B002','80','v1.4','ghi789','','Retried twice','2025-09-02','2025-09-02'),
('E003','SensorNetwork','DataLake','2025-09-03 00:00','2025-09-03 00:20','20000','19500','19400','success','','etl_user','manager','weekly','0 0 * * 0','B003','300','v2.0','jkl012','mno345','Batch processing','2025-09-03','2025-09-03');

-- Instrument power consumption records
CREATE TABLE instrument_power_consumption (
  record_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  measurement_timestamp TEXT,
  voltage_volts TEXT,
  current_amps TEXT,
  power_watts TEXT,
  energy_kwh TEXT,
  operating_mode TEXT,
  temperature_c TEXT,
  humidity_percent TEXT,
  voltage_fluctuation TEXT,
  power_factor TEXT,
  peak_power_watts TEXT,
  average_power_watts TEXT,
  min_power_watts TEXT,
  max_current_amps TEXT,
  min_voltage_volts TEXT,
  max_voltage_volts TEXT,
  notes TEXT,
  recorded_by TEXT,
  created_at TEXT
);

INSERT INTO instrument_power_consumption VALUES
('R001','INST001','2025-10-01 10:00','120','5','600','0.5','normal','35','40','0.5','0.98','650','610','590','5.2','118','122','Stable operation','tech01','2025-10-01'),
('R002','INST002','2025-10-01 11:00','230','2','460','0.46','idle','30','35','1.0','0.95','480','470','460','2.1','228','232','Low load','tech02','2025-10-01'),
('R003','INST003','2025-10-01 12:00','110','3','330','0.33','active','28','45','0.8','0.99','350','340','320','3.5','108','112','Peak usage observed','tech03','2025-10-01');

-- Facility water usage tracking
CREATE TABLE facility_water_usage (
  usage_id TEXT PRIMARY KEY,
  facility_zone TEXT,
  measurement_date TEXT,
  water_volume_liters TEXT,
  peak_flow_lpm TEXT,
  average_flow_lpm TEXT,
  total_energy_kwh TEXT,
  meters_reading_start TEXT,
  meters_reading_end TEXT,
  shift TEXT,
  operator_id TEXT,
  anomaly_flag TEXT,
  maintenance_required TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  reported_by TEXT,
  audit_status TEXT,
  cost_estimate TEXT,
  consumption_category TEXT
);

INSERT INTO facility_water_usage VALUES
('U001','ZoneA','2025-09-30','1500','25','15','200','5000','6500','day','OP001','no','no','Normal operation','2025-09-30','2025-09-30','supervisor1','passed','300','process'),
('U002','ZoneB','2025-09-30','1800','30','18','240','6000','7800','night','OP002','yes','yes','Leak detected','2025-09-30','2025-09-30','supervisor2','failed','350','cooling'},
('U003','ZoneC','2025-09-30','1200','20','12','160','7000','8200','day','OP003','no','no','Within limits','2025-09-30','2025-09-30','supervisor3','passed','250','cleaning');

-- Biohazard waste disposal log
CREATE TABLE biohazard_waste_disposal (
  disposal_id TEXT PRIMARY KEY,
  waste_id TEXT,
  waste_type TEXT,
  collection_date TEXT,
  container_id TEXT,
  volume_ml TEXT,
  disposal_method TEXT,
  contractor_name TEXT,
  approval_status TEXT,
  approval_date TEXT,
  disposed_by TEXT,
  disposal_date TEXT,
  biohazard_level TEXT,
  storage_location TEXT,
  temperature_c TEXT,
  documentation_ref TEXT,
  compliance_check TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  verified_by TEXT
);

INSERT INTO biohazard_waste_disposal VALUES
('D001','W001','Sharps','2025-08-15','C001','500','incineration','SafeDisposalCo','approved','2025-08-16','tech01','2025-08-17','level3','FreezerA','-20','DOC123','passed','No issues','2025-08-15','2025-08-17','qa01'),
('D002','W002','Cultures','2025-08-20','C002','1200','autoclave','BioCleanLtd','pending','2025-08-21','tech02','2025-08-22','level2','RoomB','4','DOC124','pending','Awaiting approval','2025-08-20','2025-08-22','qa02'),
('D003','W003','Chemical','2025-08-25','C003','800','chemical_treatment','EnviroSafe','approved','2025-08-26','tech03','2025-08-27','level1','VaultC','22','DOC125','passed','Handled per SOP','2025-08-25','2025-08-27','qa03');

-- Chemical inventory audit records
CREATE TABLE chemical_inventory_audit (
  audit_id TEXT PRIMARY KEY,
  inventory_id TEXT,
  auditor_id TEXT,
  audit_date TEXT,
  chemical_id TEXT,
  recorded_quantity TEXT,
  physical_quantity TEXT,
  discrepancy TEXT,
  discrepancy_reason TEXT,
  corrective_action TEXT,
  status TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  verified_by TEXT,
  verification_date TEXT,
  location TEXT,
  storage_condition TEXT,
  safety_review_status TEXT,
  expiration_date TEXT,
  last_used_date TEXT
);

INSERT INTO chemical_inventory_audit VALUES
('A001','INV001','AUD001','2025-07-10','CHEM001','1000','995','-5','spillage','reorder','closed','Minor loss','2025-07-10','2025-07-10','supervisor1','2025-07-11','CabinetA','room_temp','completed','2025-12-31','2025-06-01'),
('A002','INV002','AUD002','2025-07-12','CHEM002','500','500','0','none','none','closed','All good','2025-07-12','2025-07-12','supervisor2','2025-07-13','ShelfB','refrigerated','completed','2026-03-15','2025-05-20'),
('A003','INV003','AUD003','2025-07-15','CHEM003','200','190','-10','evaporation','replace','open','Check ventilation','2025-07-15','2025-07-15','supervisor3','2025-07-16','DrawerC','room_temp','in_progress','2025-11-30','2025-04-10');

-- Project risk register entries
CREATE TABLE project_risk_register (
  risk_id TEXT PRIMARY KEY,
  project_id TEXT,
  risk_description TEXT,
  risk_category TEXT,
  likelihood_score TEXT,
  impact_score TEXT,
  risk_score TEXT,
  mitigation_plan TEXT,
  owner TEXT,
  detection_date TEXT,
  status TEXT,
  residual_likelihood TEXT,
  residual_impact TEXT,
  residual_score TEXT,
  escalation_level TEXT,
  review_date TEXT,
  created_by TEXT,
  created_at TEXT,
  updated_at TEXT,
  notes TEXT,
  approval_status TEXT
);

INSERT INTO project_risk_register VALUES
('R001','PRJ001','Delay in reagent delivery','logistics','3','4','12','alternative_supplier','manager1','2025-06-01','open','2','2','4','medium','2025-07-01','planner1','2025-06-01','2025-06-15','Monitor supplier performance','pending'),
('R002','PRJ002','Data loss due to hardware failure','technical','2','5','10','regular_backups','it_lead','2025-05-20','mitigated','1','1','1','low','2025-06-20','planner2','2025-05-20','2025-05-25','Backup verified weekly','approved'),
('R003','PRJ003','Regulatory compliance change','regulatory','4','3','12','policy_review','compliance_officer','2025-04-15','open','3','2','6','high','2025-05-15','planner3','2025-04-15','2025-04-30','Engage legal counsel','pending');