-- Nanomaterial exposure event summary
CREATE TABLE nanomaterial_exposure_event_summary (
  event_id TEXT PRIMARY KEY,
  batch_id TEXT,
  material_type TEXT,
  particle_size_nm TEXT,
  exposure_concentration_ppm TEXT,
  exposure_duration_min TEXT,
  operator_id TEXT,
  safety_protocol TEXT,
  incident_report_id TEXT,
  location TEXT,
  ventilation_status TEXT,
  temperature_c TEXT,
  humidity_percent TEXT,
  protective_equipment TEXT,
  exposure_outcome TEXT,
  notes TEXT,
  logged_by TEXT,
  log_timestamp TEXT,
  review_status TEXT,
  corrective_action TEXT
);

INSERT INTO nanomaterial_exposure_event_summary VALUES ('NE001','BATCH001','CarbonNanotube','50','0.5','30','OP001','StandardProtocol','IR001','ZoneA','Active','22','45','Gloves','NoEffect','Initial test','USR01','2023-01-01 08:00:00','Pending','None');
INSERT INTO nanomaterial_exposure_event_summary VALUES ('NE002','BATCH002','SilicaNanoparticle','30','1.2','45','OP002','EnhancedProtocol','IR002','ZoneB','Inactive','20','50','Mask','MildIrritation','Follow-up needed','USR02','2023-02-15 09:30:00','Reviewed','MedicalCheck');
INSERT INTO nanomaterial_exposure_event_summary VALUES ('NE003','BATCH003','TitaniumDioxide','80','0.8','60','OP003','StandardProtocol','IR003','ZoneC','Active','23','40','Gloves','NoEffect','Routine monitoring','USR03','2023-03-10 14:15:00','Closed','None');

-- Cryogenic storage monitor
CREATE TABLE cryogenic_storage_monitor (
  monitor_id TEXT PRIMARY KEY,
  freezer_id TEXT,
  storage_section TEXT,
  temperature_c TEXT,
  pressure_kpa TEXT,
  humidity_percent TEXT,
  alarm_status TEXT,
  last_maintenance_date TEXT,
  sensor_serial TEXT,
  firmware_version TEXT,
  battery_level_percent TEXT,
  location TEXT,
  operator_id TEXT,
  log_timestamp TEXT,
  anomaly_detected TEXT,
  anomaly_type TEXT,
  resolution_status TEXT,
  notes TEXT,
  data_quality_flag TEXT,
  calibration_date TEXT
);

INSERT INTO cryogenic_storage_monitor VALUES ('CM001','FREEZER01','SectionA','-150','101','5','OK','2022-12-01','SN001','v1.2','95','Lab1','OP100','2023-01-05 07:00:00','No','None','Resolved','All good','Pass','2022-11-15');
INSERT INTO cryogenic_storage_monitor VALUES ('CM002','FREEZER02','SectionB','-145','99','6','Warning','2022-11-20','SN002','v1.1','88','Lab2','OP101','2023-02-12 08:30:00','Yes','TempDrift','InProgress','Investigating','Fail','2022-10-30');
INSERT INTO cryogenic_storage_monitor VALUES ('CM003','FREEZER03','SectionC','-152','100','4','OK','2023-01-10','SN003','v1.3','92','Lab3','OP102','2023-03-01 09:45:00','No','None','Resolved','Stable','Pass','2023-01-01');

-- Spectrometer optical alignment log
CREATE TABLE spectrometer_optical_alignment_log (
  alignment_id TEXT PRIMARY KEY,
  spectrometer_id TEXT,
  wavelength_nm TEXT,
  alignment_status TEXT,
  technician_id TEXT,
  alignment_date TEXT,
  tilt_angle_deg TEXT,
  focus_position_um TEXT,
  aperture_size_mm TEXT,
  laser_power_mw TEXT,
  temperature_c TEXT,
  humidity_percent TEXT,
  verification_code TEXT,
  notes TEXT,
  approved_by TEXT,
  approval_timestamp TEXT,
  next_due_date TEXT,
  alignment_method TEXT,
  software_version TEXT,
  calibration_certificate_id TEXT
);

INSERT INTO spectrometer_optical_alignment_log VALUES ('AL001','SPEC001','532','Success','TECH01','2023-01-20','0.1','250','2.5','5','21','40','VC001','Baseline alignment','MANAGER01','2023-01-21 10:00:00','2024-01-20','LaserBased','v3.4','CERT001');
INSERT INTO spectrometer_optical_alignment_log VALUES ('AL002','SPEC002','405','Partial','TECH02','2023-02-10','0.3','260','3.0','4.5','22','38','VC002','Adjusted tilt','MANAGER02','2023-02-11 11:15:00','2024-02-10','Interferometer','v3.5','CERT002');
INSERT INTO spectrometer_optical_alignment_log VALUES ('AL003','SPEC003','785','Success','TECH03','2023-03-05','0.05','255','2.8','5.2','20','42','VC003','Routine check','MANAGER03','2023-03-06 09:45:00','2024-03-05','LaserBased','v3.6','CERT003');

-- Bioinformatics tool license
CREATE TABLE bioinformatics_tool_license (
  license_id TEXT PRIMARY KEY,
  tool_name TEXT,
  vendor TEXT,
  license_type TEXT,
  seat_count TEXT,
  purchase_date TEXT,
  expiry_date TEXT,
  license_key TEXT,
  assigned_to TEXT,
  department TEXT,
  cost_usd TEXT,
  support_contact TEXT,
  support_expiry TEXT,
  compliance_status TEXT,
  notes TEXT,
  last_audit_date TEXT,
  audit_result TEXT,
  renewal_notification_sent TEXT,
  renewal_deadline TEXT,
  procurement_order_id TEXT
);

INSERT INTO bioinformatics_tool_license VALUES ('LIC001','GenomeAnalyzer','BioSoft','Enterprise','50','2021-06-15','2024-06-14','KEY-AAA-111','TeamA','Genomics','25000','support@biosoft.com','2023-12-31','Compliant','Annual renewal needed','2023-01-10','Pass','Yes','2024-05-30','PO12345');
INSERT INTO bioinformatics_tool_license VALUES ('LIC002','ProteinViewer','ProtVis','Perpetual','20','2019-03-01','2099-12-31','KEY-BBB-222','TeamB','Proteomics','15000','support@protvis.com','2025-04-30','Compliant','No upcoming renewal','2022-12-01','Pass','No','N/A','PO67890');
INSERT INTO bioinformatics_tool_license VALUES ('LIC003','PathwayMapper','PathSoft','Subscription','30','2022-01-20','2023-01-19','KEY-CCC-333','TeamC','Metabolomics','12000','support@pathsoft.com','2023-01-19','Pending','Renewal pending approval','2023-02-15','Fail','Yes','2023-01-15','PO54321');

-- Equipment decommission plan
CREATE TABLE equipment_decommission_plan (
  plan_id TEXT PRIMARY KEY,
  equipment_id TEXT,
  decommission_date TEXT,
  reason TEXT,
  approved_by TEXT,
  approval_date TEXT,
  disposal_method TEXT,
  contractor_name TEXT,
  contract_id TEXT,
  cost_estimate_usd TEXT,
  environmental_impact_assessment TEXT,
  regulatory_approval_id TEXT,
  data_wipe_status TEXT,
  data_wipe_method TEXT,
  asset_tag TEXT,
  location TEXT,
  notes TEXT,
  status TEXT,
  last_updated TEXT,
  updated_by TEXT
);

INSERT INTO equipment_decommission_plan VALUES ('DP001','EQP001','2023-04-01','Obsolete','DIR001','2023-03-15','Recycle','CleanRecycleCo','CON001','5000','Completed','REG001','Done','SecureErase','AT001','LabA','Removed from inventory','Closed','2023-04-02','USR01');
INSERT INTO equipment_decommission_plan VALUES ('DP002','EQP002','2023-06-15','Damage','DIR002','2023-05-20','Incineration','WasteManageLtd','CON002','3000','Pending','REG002','Pending','Degauss','AT002','LabB','Awaiting hazardous material clearance','Open','2023-05-21','USR02');
INSERT INTO equipment_decommission_plan VALUES ('DP003','EQP003','2023-09-30','Upgrade','DIR003','2023-09-01','Resale','TechResellInc','CON003','4000','Completed','REG003','Done','Overwrite','AT003','LabC','Scheduled for transfer to partner facility','Planned','2023-09-02','USR03');

-- Chemical process simulation run
CREATE TABLE chemical_process_simulation_run (
  simulation_id TEXT PRIMARY KEY,
  process_name TEXT,
  simulation_software TEXT,
  version TEXT,
  start_time TEXT,
  end_time TEXT,
  compute_node TEXT,
  cpu_hours TEXT,
  memory_gb TEXT,
  input_file TEXT,
  output_file TEXT,
  mesh_density TEXT,
  convergence_status TEXT,
  residual_error TEXT,
  temperature_profile TEXT,
  pressure_profile TEXT,
  catalyst_used TEXT,
  reaction_yield_percent TEXT,
  notes TEXT,
  verified_by TEXT,
  verification_date TEXT
);

INSERT INTO chemical_process_simulation_run VALUES ('SIM001','AmmoniaSynthesis','ChemSimX','2.1','2023-01-10 08:00:00','2023-01-10 12:30:00','node01','4.5','16','input1.dat','output1.dat','Fine','Converged','0.001','Ramp','Constant','FeCatalyst','85','Initial run','ENG001','2023-01-11');
INSERT INTO chemical_process_simulation_run VALUES ('SIM002','MethanolProduction','ProcessSim','3.0','2023-02-20 09:15:00','2023-02-20 14:45:00','node07','6.0','32','meth_input.dat','meth_output.dat','Medium','Converged','0.0005','Step','Variable','CuZnCatalyst','78','Optimized parameters','ENG002','2023-02-21');
INSERT INTO chemical_process_simulation_run VALUES ('SIM003','Polymerization','PolySim','1.8','2023-03-15 10:00:00','2023-03-15 16:00:00','node03','8.0','64','poly_input.dat','poly_output.dat','Coarse','NotConverged','0.01','Linear','Variable','ZieglerNatta','60','Needs refinement','ENG003','2023-03-16');

-- Facility HVAC energy profile
CREATE TABLE facility_hvac_energy_profile (
  profile_id TEXT PRIMARY KEY,
  hvac_zone TEXT,
  date TEXT,
  total_energy_kwh TEXT,
  cooling_energy_kwh TEXT,
  heating_energy_kwh TEXT,
  fan_energy_kwh TEXT,
  outside_temp_c TEXT,
  inside_temp_c TEXT,
  humidity_percent TEXT,
  occupancy_status TEXT,
  setpoint_temp_c TEXT,
  setpoint_humidity_percent TEXT,
  economizer_status TEXT,
  damper_position_percent TEXT,
  runtime_hours TEXT,
  maintenance_flag TEXT,
  notes TEXT,
  recorded_by TEXT,
  record_timestamp TEXT
);

INSERT INTO facility_hvac_energy_profile VALUES ('HP001','ZoneA','2023-01-01','500','300','150','50','-5','22','40','Full','21','45','Open','80','24','No','Normal day','SYS01','2023-01-02 00:00:00');
INSERT INTO facility_hvac_energy_profile VALUES ('HP002','ZoneB','2023-01-01','450','280','120','50','-5','20','38','Partial','20','40','Closed','60','22','Yes','Maintenance scheduled','SYS02','2023-01-02 00:05:00');
INSERT INTO facility_hvac_energy_profile VALUES ('HP003','ZoneC','2023-01-01','600','350','180','70','-5','23','42','Full','22','46','Open','85','25','No','High occupancy','SYS03','2023-01-02 00:10:00');

-- Lab robotic arm task log
CREATE TABLE lab_robotic_arm_task_log (
  task_id TEXT PRIMARY KEY,
  robot_id TEXT,
  task_type TEXT,
  specimen_id TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  operator_id TEXT,
  status TEXT,
  error_code TEXT,
  error_description TEXT,
  tool_used TEXT,
  grip_force_n TEXT,
  speed_mm_per_s TEXT,
  trajectory_id TEXT,
  calibration_version TEXT,
  notes TEXT,
  approved_by TEXT,
  approval_timestamp TEXT,
  maintenance_required TEXT,
  next_scheduled_task TEXT
);

INSERT INTO lab_robotic_arm_task_log VALUES ('RT001','ROB001','Transfer','SPEC001','2023-01-05 08:00:00','2023-01-05 08:05:00','OP200','Completed','','','GripperA','15','120','TRJ001','CAL001','No issues','SUP001','2023-01-05 08:10:00','No','RT005');
INSERT INTO lab_robotic_arm_task_log VALUES ('RT002','ROB002','Pipette','SPEC002','2023-01-06 09:15:00','2023-01-06 09:20:00','OP201','Error','E101','Tip jammed','PipetteB','0','80','TRJ002','CAL002','Tip jam cleared','SUP002','2023-01-06 09:25:00','Yes','RT006');
INSERT INTO lab_robotic_arm_task_log VALUES ('RT003','ROB001','Mix','SPEC003','2023-01-07 10:30:00','2023-01-07 10:38:00','OP202','Completed','','','StirrerC','10','100','TRJ003','CAL001','Mixing successful','SUP001','2023-01-07 10:40:00','No','RT007');

-- Environmental noise event history
CREATE TABLE environmental_noise_event_history (
  event_id TEXT PRIMARY KEY,
  sensor_id TEXT,
  location TEXT,
  start_time TEXT,
  end_time TEXT,
  max_noise_db TEXT,
  avg_noise_db TEXT,
  frequency_band_hz TEXT,
  weather_condition TEXT,
  wind_speed_m_s TEXT,
  temperature_c TEXT,
  humidity_percent TEXT,
  incident_report_id TEXT,
  mitigation_action TEXT,
  responsible_party TEXT,
  status TEXT,
  notes TEXT,
  logged_by TEXT,
  log_timestamp TEXT,
  followup_required TEXT
);

INSERT INTO environmental_noise_event_history VALUES ('EN001','SNS001','LabEntrance','2023-02-01 07:00:00','2023-02-01 07:15:00','85','70','250-500','Clear','2.5','18','55','IRN001','Install sound barrier','ENG001','Resolved','No additional issues','USR10','2023-02-02 08:00:00','No');
INSERT INTO environmental_noise_event_history VALUES ('EN002','SNS002','HVACRoom','2023-02-05 14:30:00','2023-02-05 14:45:00','92','78','500-1000','Cloudy','3.0','20','60','IRN002','Adjust fan speed','ENG002','InProgress','Monitoring ongoing','USR11','2023-02-06 09:30:00','Yes');
INSERT INTO environmental_noise_event_history VALUES ('EN003','SNS003','Warehouse','2023-02-10 11:00:00','2023-02-10 11:20:00','88','73','100-250','Windy','5.5','22','50','IRN003','Schedule maintenance','ENG003','Open','Noise spikes observed','USR12','2023-02-11 10:00:00','Yes');

-- Research project risk assessment
CREATE TABLE research_project_risk_assessment (
  assessment_id TEXT PRIMARY KEY,
  project_id TEXT,
  risk_id TEXT,
  risk_description TEXT,
  likelihood TEXT,
  impact TEXT,
  mitigation_strategy TEXT,
  owner TEXT,
  due_date TEXT,
  status TEXT,
  last_review_date TEXT,
  reviewer TEXT,
  comments TEXT,
  risk_category TEXT,
  probability_score TEXT,
  impact_score TEXT,
  risk_score TEXT,
  escalation_level TEXT,
  contingency_plan TEXT,
  documented_by TEXT,
  document_timestamp TEXT
);

INSERT INTO research_project_risk_assessment VALUES ('RA001','PRJ001','R001','Data loss due to server failure','High','Critical','Implement redundant backups','IT001','2023-04-01','Open','2023-03-01','AUD001','Needs immediate action','Technical','9','10','90','Level1','Offsite backup','USR20','2023-03-02 09:00:00');
INSERT INTO research_project_risk_assessment VALUES ('RA002','PRJ002','R002','Regulatory non‑compliance','Medium','High','Regular audit and training','REG001','2023-05-15','InProgress','2023-04-20','AUD002','Monitoring compliance','Regulatory','6','8','48','Level2','Hire compliance consultant','USR21','2023-04-21 10:30:00');
INSERT INTO research_project_risk_assessment VALUES ('RA003','PRJ003','R003','Supply chain disruption for critical reagents','Low','Medium','Identify secondary suppliers','SCM001','2023-06-30','Closed','2023-05-10','AUD003','Resolved','Operational','3','5','15','Level3','Maintain safety stock','USR22','2023-05-11 11:45:00');