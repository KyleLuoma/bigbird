-- Table storing detailed climate control metrics for each laboratory zone
CREATE TABLE lab_climate_control (
  control_id TEXT NOT NULL,
  zone_id TEXT,
  timestamp TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  co2_ppm REAL,
  airflow_cfm REAL,
  pressure_pa REAL,
  filter_status TEXT,
  hvac_mode TEXT,
  setpoint_temp REAL,
  setpoint_humidity REAL,
  damper_position REAL,
  fan_speed_rpm REAL,
  cooling_capacity_kw REAL,
  heating_capacity_kw REAL,
  alarm_status TEXT,
  maintenance_due_date TEXT,
  sensor_calibration_date TEXT,
  operator_id TEXT,
  PRIMARY KEY (control_id)
);

INSERT INTO lab_climate_control VALUES
('CTRL001','ZONEA','2024-05-01T08:00:00',22.5,45.0,600,350,101.3,'OK','COOL','22.0','40.0',0.75,1500,15.0,10.0,'NORMAL','2024-12-01','2024-03-15','OP123');

INSERT INTO lab_climate_control VALUES
('CTRL002','ZONEB','2024-05-01T08:05:00',21.8,48.0,580,340,101.5,'OK','HEAT','22.0','45.0',0.70,1450,14.5,11.0,'NORMAL','2024-11-20','2024-02-28','OP124');

INSERT INTO lab_climate_control VALUES
('CTRL003','ZONEC','2024-05-01T08:10:00',23.0,42.0,610,360,101.2,'OK','AUTO','23.0','42.0',0.80,1550,16.0,9.5,'NORMAL','2025-01-10','2024-04-01','OP125');



-- Table capturing detailed usage metrics for each instrument
CREATE TABLE instrument_usage_metric (
  usage_id TEXT NOT NULL,
  instrument_id TEXT,
  usage_date TEXT,
  start_time TEXT,
  end_time TEXT,
  total_runtime_minutes INTEGER,
  samples_processed INTEGER,
  runtime_error_minutes INTEGER,
  idle_minutes INTEGER,
  maintenance_flag TEXT,
  operator_id TEXT,
  project_code TEXT,
  batch_id TEXT,
  temperature_c REAL,
  voltage_v REAL,
  current_a REAL,
  power_w REAL,
  software_version TEXT,
  firmware_version TEXT,
  cpu_load_percent REAL,
  memory_usage_mb REAL,
  PRIMARY KEY (usage_id)
);

INSERT INTO instrument_usage_metric VALUES
('USE001','INST001','2024-04-30','08:00','12:00',240,120,5,15,'NO','OP200','PRJ001','BATCH01',22.0,5.0,1.2,6.0,'v2.3','fw1.1',45.0,1024);

INSERT INTO instrument_usage_metric VALUES
('USE002','INST002','2024-04-30','09:15','13:45',270,200,2,20,'YES','OP201','PRJ002','BATCH02',23.5,12.0,0.8,9.6','v1.9','fw2.0',55.0,2048);

INSERT INTO instrument_usage_metric VALUES
('USE003','INST003','2024-04-30','07:30','11:30',240,150,0,30,'NO','OP202','PRJ003','BATCH03',21.0,3.3,1.5,4.95','v3.1','fw3.5',35.0,512);



-- Log of material safety reviews performed on chemicals and reagents
CREATE TABLE material_safety_review_log (
  review_id TEXT NOT NULL,
  material_id TEXT,
  review_date TEXT,
  reviewer_id TEXT,
  risk_category TEXT,
  exposure_limit_ppm REAL,
  storage_location TEXT,
  containment_type TEXT,
  emergency_procedure TEXT,
  disposal_method TEXT,
  last_incident_date TEXT,
  incident_count INTEGER,
  training_required TEXT,
  ppe_required TEXT,
  ventilation_rating TEXT,
  flammability_rating TEXT,
  toxicity_rating TEXT,
  sds_version TEXT,
  regulatory_status TEXT,
  comments TEXT,
  PRIMARY KEY (review_id)
);

INSERT INTO material_safety_review_log VALUES
('REV001','MAT001','2024-03-10','RV001','HIGH',5.0,'CabinetA',' sealed','EvacuateAndContain','Incineration','2023-11-22',2,'YES','Gloves,Mask','A','3','4','v5','Compliant','Reviewed after incident');

INSERT INTO material_safety_review_log VALUES
('REV002','MAT002','2024-04-05','RV002','MEDIUM',20.0,'CabinetB',' vented','VentilateArea','Neutralization','2024-01-15',0,'NO','Gloves','B','2','2','v3','Compliant','Routine review');

INSERT INTO material_safety_review_log VALUES
('REV003','MAT003','2024-04-20','RV003','LOW',100.0,'ShelfC','open','NoAction','Landfill','2022-08-10',1,'NO','None','C','1','1','v2','Exempt','Low risk material');



-- Detailed records from facility energy audits
CREATE TABLE facility_energy_audit_detail (
  audit_id TEXT NOT NULL,
  facility_id TEXT,
  audit_date TEXT,
  auditor_id TEXT,
  total_energy_kwh REAL,
  peak_demand_kw REAL,
  average_power_factor REAL,
  hvac_energy_kwh REAL,
  lighting_energy_kwh REAL,
  equipment_energy_kwh REAL,
  renewable_energy_percent REAL,
  carbon_emission_kg REAL,
  cooling_efficiency REAL,
  heating_efficiency REAL,
  insulation_rating TEXT,
  window_u_value REAL,
  roof_u_value REAL,
  floor_u_value REAL,
  recommendations_count INTEGER,
  followup_due_date TEXT,
  PRIMARY KEY (audit_id)
);

INSERT INTO facility_energy_audit_detail VALUES
('AUD001','FAC001','2024-02-15','AU001',125000.0,350.0,0.95,50000.0,20000.0,55000.0,15.0,90000.0,0.85,0.80,'B',0.35,0.28,0.30,12,'2024-08-15');

INSERT INTO facility_energy_audit_detail VALUES
('AUD002','FAC002','2024-03-10','AU002',98000.0,300.0,0.93,42000.0,18000.0,38000.0,12.0,72000.0,0.88,0.82,'A',0.30,0.25,0.27,9,'2024-09-10');

INSERT INTO facility_energy_audit_detail VALUES
('AUD003','FAC003','2024-04-01','AU003',110500.0,330.0,0.94,46000.0,19000.0,45500.0,14.0,80000.0,0.86,0.81,'C',0.38,0.31,0.32,10,'2024-10-01');



-- Inventory of computational cluster nodes
CREATE TABLE computational_cluster_node (
  node_id TEXT NOT NULL,
  hostname TEXT,
  ip_address TEXT,
  cpu_cores INTEGER,
  gpu_count INTEGER,
  memory_gb REAL,
  storage_tb REAL,
  os_version TEXT,
  installed_sw_version TEXT,
  rack_location TEXT,
  power_supply_w REAL,
  network_bandwidth_gbps REAL,
  date_commissioned TEXT,
  last_maintenance TEXT,
  health_status TEXT,
  virtualization_enabled TEXT,
  thermal_zone TEXT,
  firmware_version TEXT,
  security_patch_level TEXT,
  owner_group TEXT,
  PRIMARY KEY (node_id)
);

INSERT INTO computational_cluster_node VALUES
('NODE001','clust-node01','10.0.0.1',32,4,256.0,8.0,'Ubuntu20.04','v5.2','RackA1',1200.0,40.0,'2022-06-15','2024-03-01','Healthy','YES','Z1','fw1.0','2024-02-20','COMPUTE_GROUP_A');

INSERT INTO computational_cluster_node VALUES
('NODE002','clust-node02','10.0.0.2',24,2,128.0,4.0,'Ubuntu20.04','v5.2','RackA2',900.0,20.0,'2022-07-10','2024-02-20','Healthy','YES','Z1','fw1.0','2024-01-15','COMPUTE_GROUP_A');

INSERT INTO computational_cluster_node VALUES
('NODE003','clust-node03','10.0.0.3',48,8,512.0,12.0,'Ubuntu22.04','v5.3','RackB1',1500.0,100.0,'2023-01-20','2024-04-05','Degraded','YES','Z2','fw2.1','2024-03-30','COMPUTE_GROUP_B');



-- Records of chemical process batches
CREATE TABLE chemical_process_batch (
  batch_id TEXT NOT NULL,
  process_id TEXT,
  start_date TEXT,
  end_date TEXT,
  raw_material_qty_kg REAL,
  catalyst_type TEXT,
  reaction_temperature_c REAL,
  reaction_pressure_bar REAL,
  residence_time_min REAL,
  yield_percent REAL,
  impurity_level_ppm REAL,
  batch_status TEXT,
  operator_id TEXT,
  qc_passed TEXT,
  qc_report_id TEXT,
  safety_incident_flag TEXT,
  equipment_id TEXT,
  monitoring_system_id TEXT,
  batch_notes TEXT,
  disposal_location TEXT,
  PRIMARY KEY (batch_id)
);

INSERT INTO chemical_process_batch VALUES
('BATCH001','PROC100','2024-01-05','2024-01-07',150.0,'CatA',120.0,5.0,60.0,92.5,150,'COMPLETED','OP300','YES','QCR001','NO','EQ001','MON001','No issues','DISP01');

INSERT INTO chemical_process_batch VALUES
('BATCH002','PROC101','2024-02-10','2024-02-12',200.0,'CatB',130.0,6.5,45.0,88.0,300,'COMPLETED','OP301','NO','QCR002','YES','EQ002','MON002','Minor leak observed','DISP02');

INSERT INTO chemical_process_batch VALUES
('BATCH003','PROC102','2024-03-01','2024-03-03',180.0,'CatC',115.0,4.8,70.0,95.0,80,'COMPLETED','OP302','YES','QCR003','NO','EQ003','MON003','All parameters within spec','DISP03');



-- Monitoring of nanomaterial exposure in laboratory zones
CREATE TABLE nanomaterial_exposure_monitor (
  monitor_id TEXT NOT NULL,
  location_id TEXT,
  sample_datetime TEXT,
  particle_concentration_np_per_cm3 REAL,
  avg_diameter_nm REAL,
  surface_area_m2_per_g REAL,
  zeta_potential_mv REAL,
  chemical_composition TEXT,
  airflow_rate_cfm REAL,
  temperature_c REAL,
  humidity_percent REAL,
  alarm_triggered TEXT,
  maintenance_date TEXT,
  calibration_factor REAL,
  sensor_serial TEXT,
  data_logger_id TEXT,
  alert_recipient TEXT,
  exposure_limit_np_per_cm3 REAL,
  cumulative_exposure_np_hr REAL,
  comments TEXT,
  PRIMARY KEY (monitor_id)
);

INSERT INTO nanomaterial_exposure_monitor VALUES
('MONX001','LOC01','2024-04-20T09:00:00',1500.0,45.0,30.0,-12.0,'SiO2',200.0,22.0,40.0,'NO','2024-03-15',1.02,'SN001','DL001','OP400',2000.0,45.0,'Stable readings');

INSERT INTO nanomaterial_exposure_monitor VALUES
('MONX002','LOC02','2024-04-20T09:05:00',2500.0,50.0,35.0,-10.0,'TiO2',210.0,21.5,42.0,'YES','2024-03-20',0.98,'SN002','DL002','OP401',2000.0,55.0,'Alarm triggered due to high concentration');

INSERT INTO nanomaterial_exposure_monitor VALUES
('MONX003','LOC03','2024-04-20T09:10:00',1200.0,40.0,28.0,-15.0,'Al2O3',190.0,23.0,38.0,'NO','2024-03-10',1.00,'SN003','DL003','OP402',2000.0,38.0,'All within limits');



-- Maintenance records for laboratory ventilation systems
CREATE TABLE lab_ventilation_system_maintenance (
  maintenance_id TEXT NOT NULL,
  system_id TEXT,
  maintenance_date TEXT,
  technician_id TEXT,
  filter_change_date TEXT,
  motor_inspection_status TEXT,
  duct_cleaning_status TEXT,
  airflow_test_cfm REAL,
  pressure_drop_pa REAL,
  control_panel_version TEXT,
  firmware_version TEXT,
  parts_replaced TEXT,
  labor_hours REAL,
  cost_usd REAL,
  next_maintenance_due TEXT,
  ventilation_efficiency_percent REAL,
  compliance_status TEXT,
  notes TEXT,
  regulatory_reference TEXT,
  approval_signature TEXT,
  PRIMARY KEY (maintenance_id)
);

INSERT INTO lab_ventilation_system_maintenance VALUES
('VM001','VNT001','2024-03-01','TECH001','2024-02-15','OK','COMPLETED',350.0,12.5,'v3.1','fw2.0','Filter,Motor',4.5,750.0,'2024-09-01',92.0,'COMPLIANT','Routine check','REG123','SIG001');

INSERT INTO lab_ventilation_system_maintenance VALUES
('VM002','VNT002','2024-03-10','TECH002','2024-02-20','REPLACED','COMPLETED',360.0,10.0,'v3.1','fw2.0','Duct',5.0,900.0,'2024-09-10',94.0,'COMPLIANT','Duct cleaning and motor replacement','REG124','SIG002');

INSERT INTO lab_ventilation_system_maintenance VALUES
('VM003','VNT003','2024-03-20','TECH003','2024-02-25','OK','PENDING',340.0,13.0,'v3.0','fw1.9','Filter',3.5,600.0,'2024-09-20',90.0,'NONCOMPLIANT','Pending duct cleaning','REG125','SIG003');



-- Agreements governing research collaborations between institutions
CREATE TABLE research_collaboration_agreement (
  agreement_id TEXT NOT NULL,
  lead_institution TEXT,
  partner_institution TEXT,
  start_date TEXT,
  end_date TEXT,
  principal_investigator TEXT,
  co_pi TEXT,
  funding_amount_usd REAL,
  funding_source TEXT,
  data_sharing_policy TEXT,
  publication_rights TEXT,
  intellectual_property_clause TEXT,
  confidentiality_level TEXT,
  compliance_requirements TEXT,
  ethics_approval_id TEXT,
  status TEXT,
  revision_number INTEGER,
  signatory_lead TEXT,
  signatory_partner TEXT,
  amendment_history TEXT,
  PRIMARY KEY (agreement_id)
);

INSERT INTO research_collaboration_agreement VALUES
('AGR001','INST_A','INST_B','2023-01-01','2025-12-31','DrSmith','DrLee',500000,'GovGrant','Open','Joint','Shared','High','IRB001','ACTIVE',2,'DrSmith','DrLee','None');

INSERT INTO research_collaboration_agreement VALUES
('AGR002','INST_C','INST_D','2022-06-15','2024-06-14','DrKim','DrPatel',300000,'PrivateFund','Restricted','Lead','Owned','Medium','IRB002','COMPLETED',3,'DrKim','DrPatel','Amendment1');

INSERT INTO research_collaboration_agreement VALUES
('AGR003','INST_E','INST_F','2024-02-01','2026-01-31','DrGarcia','DrNakamura',750000,'Consortium','Open','Joint','Joint','Low','IRB003','PENDING',1,'DrGarcia','DrNakamura','None');



-- Logs of spectrometer calibration activities
CREATE TABLE spectrometer_calibration_log (
  calibration_id TEXT NOT NULL,
  spectrometer_id TEXT,
  calibration_date TEXT,
  technician_id TEXT,
  calibration_standard TEXT,
  wavelength_range_nm TEXT,
  resolution_nm REAL,
  intensity_factor REAL,
  baseline_shift REAL,
  temperature_c REAL,
  humidity_percent REAL,
  pressure_pa REAL,
  software_version TEXT,
  firmware_version TEXT,
  passed TEXT,
  notes TEXT,
  next_due_date TEXT,
  calibration_certificate_id TEXT,
  reference_document TEXT,
  audit_trail_id TEXT,
  PRIMARY KEY (calibration_id)
);

INSERT INTO spectrometer_calibration_log VALUES
('CAL001','SPEC001','2024-02-20','TECH100','StdA','200-800',0.5,1.02,0.01,22.0,45.0,101.3,'v4.0','fw1.2','YES','All parameters within spec','2025-02-20','CERT001','DOC123','AUDIT001');

INSERT INTO spectrometer_calibration_log VALUES
('CAL002','SPEC002','2024-03-15','TECH101','StdB','100-700',0.6,0.98,-0.02,21.5,48.0,101.2,'v4.1','fw1.3','YES','Minor baseline drift corrected','2025-03-15','CERT002','DOC124','AUDIT002');

INSERT INTO spectrometer_calibration_log VALUES
('CAL003','SPEC003','2024-04-10','TECH102','StdC','150-750',0.55,1.00,0.00,23.0,40.0,101.5,'v4.2','fw1.4','NO','Resolution out of tolerance','2025-04-10','CERT003','DOC125','AUDIT003');