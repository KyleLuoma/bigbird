-- Lab building information
CREATE TABLE lab_building_info (
  building_id TEXT PRIMARY KEY,
  name TEXT,
  address_line1 TEXT,
  address_line2 TEXT,
  city TEXT,
  state TEXT,
  zip_code TEXT,
  num_floors INTEGER,
  total_sqft INTEGER,
  fire_safety_grade TEXT,
  hvac_system_type TEXT,
  construction_year INTEGER,
  renovation_year INTEGER,
  primary_contact_name TEXT,
  primary_contact_phone TEXT,
  emergency_exit_count INTEGER,
  stairwell_count INTEGER,
  elevator_count INTEGER,
  security_level TEXT,
  waste_disposal_area TEXT,
  parking_capacity INTEGER
);

INSERT INTO lab_building_info (building_id,name,address_line1,address_line2,city,state,zip_code,num_floors,total_sqft,fire_safety_grade,hvac_system_type,construction_year,renovation_year,primary_contact_name,primary_contact_phone,emergency_exit_count,stairwell_count,elevator_count,security_level,waste_disposal_area,parking_capacity) VALUES ('B001','MainLab','123ScienceRd','', 'Springfield','IL','62704',5,25000,'A','VariableAir','1995','2020','JohnDoe','5551234567',8,4,2,'High','AreaA','150');
INSERT INTO lab_building_info (building_id,name,address_line1,address_line2,city,state,zip_code,num_floors,total_sqft,fire_safety_grade,hvac_system_type,construction_year,renovation_year,primary_contact_name,primary_contact_phone,emergency_exit_count,stairwell_count,elevator_count,security_level,waste_disposal_area,parking_capacity) VALUES ('B002','ChemistryWing','456LabSt','Suite200','Madison','WI','53703',3,18000,'B','ChilledAir','2001','2018','JaneSmith','5559876543',6,3,1,'Medium','AreaB','80');
INSERT INTO lab_building_info (building_id,name,address_line1,address_line2,city,state,zip_code,num_floors,total_sqft,fire_safety_grade,hvac_system_type,construction_year,renovation_year,primary_contact_name,primary_contact_phone,emergency_exit_count,stairwell_count,elevator_count,security_level,waste_disposal_area,parking_capacity) VALUES ('B003','BioSafetyCenter','789HealthAve','', 'Columbus','OH','43215',4,22000,'A','HEPAFiltered','1998','2022','EmilyBrown','5551122334',7,4,2,'High','AreaC','120');

-- Instrument field deployment records
CREATE TABLE instrument_field_deployment (
  deployment_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  site_name TEXT,
  latitude REAL,
  longitude REAL,
  deployment_start_date TEXT,
  deployment_end_date TEXT,
  technician_id TEXT,
  calibration_status TEXT,
  firmware_version TEXT,
  power_source TEXT,
  enclosure_type TEXT,
  mounting_method TEXT,
  network_ip TEXT,
  data_log_interval_sec INTEGER,
  environmental_rating TEXT,
  warranty_expiry TEXT,
  notes TEXT,
  last_maintenance_date TEXT,
  status TEXT
);

INSERT INTO instrument_field_deployment (deployment_id,instrument_id,site_name,latitude,longitude,deployment_start_date,deployment_end_date,technician_id,calibration_status,firmware_version,power_source,enclosure_type,mounting_method,network_ip,data_log_interval_sec,environmental_rating,warranty_expiry,notes,last_maintenance_date,status) VALUES ('D001','INS001','FieldSiteAlpha',41.40338,2.17403','2023-01-15','2024-01-15','TECH001','Calibrated','v1.2.3','Solar','Rugged','WallMount','192.168.10.10',60,'IP65','2025-01-01','Initial deployment','2023-12-20','Active');
INSERT INTO instrument_field_deployment (deployment_id,instrument_id,site_name,latitude,longitude,deployment_start_date,deployment_end_date,technician_id,calibration_status,firmware_version,power_source,enclosure_type,mounting_method,network_ip,data_log_interval_sec,environmental_rating,warranty_expiry,notes,last_maintenance_date,status) VALUES ('D002','INS002','FieldSiteBeta',34.05223,-118.24368','2022-06-01','2023-06-01','TECH002','Pending','v2.0.0','Battery','Standard','PoleMount','192.168.20.20',120,'IP54','2024-06-01','Battery replacement required','2022-12-10','MaintenanceNeeded');
INSERT INTO instrument_field_deployment (deployment_id,instrument_id,site_name,latitude,longitude,deployment_start_date,deployment_end_date,technician_id,calibration_status,firmware_version,power_source,enclosure_type,mounting_method,network_ip,data_log_interval_sec,environmental_rating,warranty_expiry,notes,last_maintenance_date,status) VALUES ('D003','INS003','FieldSiteGamma',48.85661,2.35222','2021-03-20','2022-03-20','TECH003','Calibrated','v3.1.4','Mains','Waterproof','RoofMount','192.168.30.30',30,'IP68','2023-03-20','No issues','2021-12-05','Active');

-- Sample processing batch details
CREATE TABLE sample_processing_batch (
  batch_id TEXT PRIMARY KEY,
  process_type TEXT,
  sample_count INTEGER,
  operator_id TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  centrifuge_speed_rpm INTEGER,
  incubation_time_min INTEGER,
  reagent_batch_id TEXT,
  qc_passed TEXT,
  qc_score REAL,
  equipment_id TEXT,
  software_version TEXT,
  notes TEXT,
  storage_location TEXT,
  disposal_method TEXT,
  audit_trail_id TEXT,
  related_project_id TEXT
);

INSERT INTO sample_processing_batch (batch_id,process_type,sample_count,operator_id,start_timestamp,end_timestamp,temperature_c,humidity_percent,centrifuge_speed_rpm,incubation_time_min,reagent_batch_id,qc_passed,qc_score,equipment_id,software_version,notes,storage_location,disposal_method,audit_trail_id,related_project_id) VALUES ('BATCH001','DNAExtraction',120,'OP001','2023-07-01 08:00','2023-07-01 12:00',4.0,30.5,8000,45,'REB001','Yes',98.7,'EQ001','v5.0','Standard protocol','FreezerA','Retain','AUD001','PROJ001');
INSERT INTO sample_processing_batch (batch_id,process_type,sample_count,operator_id,start_timestamp,end_timestamp,temperature_c,humidity_percent,centrifuge_speed_rpm,incubation_time_min,reagent_batch_id,qc_passed,qc_score,equipment_id,software_version,notes,storage_location,disposal_method,audit_trail_id,related_project_id) VALUES ('BATCH002','ProteinPurification',80,'OP002','2023-07-02 09:30','2023-07-02 14:15',22.0,40.0,12000,60,'REB002','No',75.3,'EQ002','v3.2','Low yield','FreezerB','Discard','AUD002','PROJ002');
INSERT INTO sample_processing_batch (batch_id,process_type,sample_count,operator_id,start_timestamp,end_timestamp,temperature_c,humidity_percent,centrifuge_speed_rpm,incubation_time_min,reagent_batch_id,qc_passed,qc_score,equipment_id,software_version,notes,storage_location,disposal_method,audit_trail_id,related_project_id) VALUES ('BATCH003','CellCulture',200,'OP003','2023-07-03 07:45','2023-07-03 18:00',37.0,55.0,5000,120,'REB003','Yes',88.2,'EQ003','v4.1','Extended incubation','Incubator1','Retain','AUD003','PROJ003');

-- Environmental incident response records
CREATE TABLE environmental_incident_response (
  incident_id TEXT PRIMARY KEY,
  incident_date TEXT,
  incident_time TEXT,
  location TEXT,
  incident_type TEXT,
  severity_level TEXT,
  reporter_id TEXT,
  description TEXT,
  immediate_action TEXT,
  containment_status TEXT,
  environmental_impact_score REAL,
  remediation_plan_id TEXT,
  followup_date TEXT,
  followup_responsible TEXT,
  regulatory_notification_sent TEXT,
  notification_date TEXT,
  closure_date TEXT,
  lessons_learned TEXT,
  cost_estimate REAL,
  status TEXT
);

INSERT INTO environmental_incident_response (incident_id,incident_date,incident_time,location,incident_type,severity_level,reporter_id,description,immediate_action,containment_status,environmental_impact_score,remediation_plan_id,followup_date,followup_responsible,regulatory_notification_sent,notification_date,closure_date,lessons_learned,cost_estimate,status) VALUES ('EI001','2023-05-10','14:30','LabWing3','Spill','Medium','EMP001','Minor solvent spill on floor','Absorbent pads deployed','Contained','2.5','RP001','2023-05-20','ENG001','Yes','2023-05-11','2023-05-25','Improved spill training','1500','Closed');
INSERT INTO environmental_incident_response (incident_id,incident_date,incident_time,location,incident_type,severity_level,reporter_id,description,immediate_action,containment_status,environmental_impact_score,remediation_plan_id,followup_date,followup_responsible,regulatory_notification_sent,notification_date,closure_date,lessons_learned,cost_estimate,status) VALUES ('EI002','2023-06-02','09:15','RoofTerrace','Leak','High','EMP002','Water leak affecting drainage','Shut off valve','Partial','4.8','RP002','2023-06-12','ENG002','Yes','2023-06-03','2023-07-01','Upgrade pipe material','7200','Closed');
INSERT INTO environmental_incident_response (incident_id,incident_date,incident_time,location,incident_type,severity_level,reporter_id,description,immediate_action,containment_status,environmental_impact_score,remediation_plan_id,followup_date,followup_responsible,regulatory_notification_sent,notification_date,closure_date,lessons_learned,cost_estimate,status) VALUES ('EI003','2023-07-15','22:45','WasteStorage','Fire','Critical','EMP003','Fire in chemical waste container','Fire extinguished','Extinguished','9.2','RP003','2023-07-25','ENG003','Yes','2023-07-16','2023-08-05','Review waste segregation','21000','Closed');

-- Research collaborator profiles
CREATE TABLE research_collaborator_profile (
  collaborator_id TEXT PRIMARY KEY,
  organization_name TEXT,
  department TEXT,
  primary_contact TEXT,
  contact_email TEXT,
  contact_phone TEXT,
  collaboration_start_date TEXT,
  collaboration_end_date TEXT,
  research_focus TEXT,
  funding_amount REAL,
  agreement_document_id TEXT,
  data_sharing_policy TEXT,
  intellectual_property_clause TEXT,
  confidentiality_level TEXT,
  active_status TEXT,
  last_review_date TEXT,
  notes TEXT,
  address_line1 TEXT,
  city TEXT,
  country TEXT,
  zip_code TEXT
);

INSERT INTO research_collaborator_profile (collaborator_id,organization_name,department,primary_contact,contact_email,contact_phone,collaboration_start_date,collaboration_end_date,research_focus,funding_amount,agreement_document_id,data_sharing_policy,intellectual_property_clause,confidentiality_level,active_status,last_review_date,notes,address_line1,city,country,zip_code) VALUES ('COL001','GenomicsInstitute','Bioinformatics','AliceGreen','alice.green@genomics.org','5552233445','2022-01-15','2025-01-15','Genomic sequencing',250000,'AG001','Open','JointOwnership','High','Yes','2023-12-01','Annual joint meetings','100 Research Blvd','Boston','USA','02115');
INSERT INTO research_collaborator_profile (collaborator_id,organization_name,department,primary_contact,contact_email,contact_phone,collaboration_start_date,collaboration_end_date,research_focus,funding_amount,agreement_document_id,data_sharing_policy,intellectual_property_clause,confidentiality_level,active_status,last_review_date,notes,address_line1,city,country,zip_code) VALUES ('COL002','NanoTechLabs','MaterialsScience','BobWhite','bob.white@nanotech.com','5553344556','2021-06-01','2024-06-01','Nanoparticle synthesis',180000,'AG002','Restricted','LabOnly','Medium','Yes','2023-11-15','Focus on safety protocols','200 Nano Way','SanJose','USA','95112');
INSERT INTO research_collaborator_profile (collaborator_id,organization_name,department,primary_contact,contact_email,contact_phone,collaboration_start_date,collaboration_end_date,research_focus,funding_amount,agreement_document_id,data_sharing_policy,intellectual_property_clause,confidentiality_level,active_status,last_review_date,notes,address_line1,city,country,zip_code) VALUES ('COL003','HealthDataCorp','Epidemiology','CarolBlack','carol.black@healthdata.com','5554455667','2023-03-01','2026-03-01','Clinical data analytics',300000,'AG003','Limited','Shared','Low','Yes','2023-09-20','Data use for COVID research','500 Health Ave','Seattle','USA','98101');

-- Computational cluster job metrics
CREATE TABLE computational_cluster_job_metrics (
  metric_id TEXT PRIMARY KEY,
  job_id TEXT,
  node_id TEXT,
  cpu_usage_percent REAL,
  memory_usage_mb REAL,
  gpu_usage_percent REAL,
  io_read_mb REAL,
  io_write_mb REAL,
  network_in_mb REAL,
  network_out_mb REAL,
  start_time TEXT,
  end_time TEXT,
  elapsed_seconds INTEGER,
  exit_code INTEGER,
  error_message TEXT,
  user_id TEXT,
  priority_level TEXT,
  queue_name TEXT,
  allocated_cores INTEGER,
  allocated_memory_mb INTEGER
);

INSERT INTO computational_cluster_job_metrics (metric_id,job_id,node_id,cpu_usage_percent,memory_usage_mb,gpu_usage_percent,io_read_mb,io_write_mb,network_in_mb,network_out_mb,start_time,end_time,elapsed_seconds,exit_code,error_message,user_id,priority_level,queue_name,allocated_cores,allocated_memory_mb) VALUES ('M001','JOB001','NODE01',75.3,2048,10.5,150.0,120.0,30.0,25.0,'2023-08-01 10:00','2023-08-01 12:30',9000,0,'','USR001','High','GPU','16','32768');
INSERT INTO computational_cluster_job_metrics (metric_id,job_id,node_id,cpu_usage_percent,memory_usage_mb,gpu_usage_percent,io_read_mb,io_write_mb,network_in_mb,network_out_mb,start_time,end_time,elapsed_seconds,exit_code,error_message,user_id,priority_level,queue_name,allocated_cores,allocated_memory_mb) VALUES ('M002','JOB002','NODE03',45.0,1024,0.0,80.0,60.0,15.0,10.0,'2023-08-02 14:15','2023-08-02 16:00',6300,1,'SegFault','USR002','Medium','CPU','8','16384');
INSERT INTO computational_cluster_job_metrics (metric_id,job_id,node_id,cpu_usage_percent,memory_usage_mb,gpu_usage_percent,io_read_mb,io_write_mb,network_in_mb,network_out_mb,start_time,end_time,elapsed_seconds,exit_code,error_message,user_id,priority_level,queue_name,allocated_cores,allocated_memory_mb) VALUES ('M003','JOB003','NODE02',90.0,4096,20.0,200.0,180.0,50.0,45.0,'2023-08-03 08:00','2023-08-03 11:45',13500,0,'','USR003','Critical','GPU','32','65536');

-- Chemical hazard incident records
CREATE TABLE chemical_hazard_incident (
  hazard_incident_id TEXT PRIMARY KEY,
  chemical_id TEXT,
  incident_date TEXT,
  incident_time TEXT,
  location TEXT,
  exposed_person_id TEXT,
  exposure_level TEXT,
  protective_equipment_used TEXT,
  immediate_response TEXT,
  medical_treatment_given TEXT,
  incident_description TEXT,
  root_cause_analysis TEXT,
  corrective_action TEXT,
  followup_date TEXT,
  regulatory_reported TEXT,
  report_number TEXT,
  status TEXT,
  cost_incurred REAL,
  lessons_learned TEXT,
  notes TEXT
);

INSERT INTO chemical_hazard_incident (hazard_incident_id,chemical_id,incident_date,incident_time,location,exposed_person_id,exposure_level,protective_equipment_used,immediate_response,medical_treatment_given,incident_description,root_cause_analysis,corrective_action,followup_date,regulatory_reported,report_number,status,cost_incurred,lessons_learned,notes) VALUES ('CH001','CHEM001','2023-04-12','11:20','StorageRoom1','EMP010','Low','Gloves','Ventilation increased','None','Spill of 50ml acetone','Improper labeling','Update label policy','2023-04-20','Yes','RPT001','Closed',500,'Emphasize label checks','');
INSERT INTO chemical_hazard_incident (hazard_incident_id,chemical_id,incident_date,incident_time,location,exposed_person_id,exposure_level,protective_equipment_used,immediate_response,medical_treatment_given,incident_description,root_cause_analysis,corrective_action,followup_date,regulatory_reported,report_number,status,cost_incurred,lessons_learned,notes) VALUES ('CH002','CHEM005','2023-05-30','09:45','LabBench3','EMP015','High','Full suit','Evacuation','First aid','Exposure to toxic gas','Vent failure','Replace vent filters','2023-06-10','Yes','RPT002','Open',2500,'Inspect ventilation quarterly','');
INSERT INTO chemical_hazard_incident (hazard_incident_id,chemical_id,incident_date,incident_time,location,exposed_person_id,exposure_level,protective_equipment_used,immediate_response,medical_treatment_given,incident_description,root_cause_analysis,corrective_action,followup_date,regulatory_reported,report_number,status,cost_incurred,lessons_learned,notes) VALUES ('CH003','CHEM009','2023-07-08','14:05','PrepArea','EMP022','Medium','Mask','Spill contained','None','Spill of corrosive acid','Container cracked','Switch to stronger containers','2023-07-15','No','', 'Closed',1200,'Inspect container integrity','');

-- Facility access card log
CREATE TABLE facility_access_card_log (
  access_log_id TEXT PRIMARY KEY,
  card_id TEXT,
  holder_name TEXT,
  access_point TEXT,
  access_time TEXT,
  access_date TEXT,
  result TEXT,
  device_id TEXT,
  manager_approval TEXT,
  shift TEXT,
  department TEXT,
  card_status TEXT,
  expiration_date TEXT,
  issued_date TEXT,
  revocation_date TEXT,
  notes TEXT,
  firmware_version TEXT,
  last_sync_time TEXT,
  audit_id TEXT,
  location_zone TEXT
);

INSERT INTO facility_access_card_log (access_log_id,card_id,holder_name,access_point,access_time,access_date,result,device_id,manager_approval,shift,department,card_status,expiration_date,issued_date,revocation_date,notes,firmware_version,last_sync_time,audit_id,location_zone) VALUES ('LOG001','CARD001','JohnDoe','MainEntrance','08:15','2023-08-01','Granted','DEV01','Yes','Day','Research','Active','2024-12-31','2022-01-10','', '','v1.0','2023-08-01 08:00','AUD001','ZoneA');
INSERT INTO facility_access_card_log (access_log_id,card_id,holder_name,access_point,access_time,access_date,result,device_id,manager_approval,shift,department,card_status,expiration_date,issued_date,revocation_date,notes,firmware_version,last_sync_time,audit_id,location_zone) VALUES ('LOG002','CARD002','JaneSmith','LabWing2','13:45','2023-08-01','Denied','DEV02','No','Evening','Quality','Inactive','2023-09-30','2023-02-15','2023-08-01','Lost card','v1.2','2023-08-01 13:30','AUD002','ZoneB');
INSERT INTO facility_access_card_log (access_log_id,card_id,holder_name,access_point,access_time,access_date,result,device_id,manager_approval,shift,department,card_status,expiration_date,issued_date,revocation_date,notes,firmware_version,last_sync_time,audit_id,location_zone) VALUES ('LOG003','CARD003','EmilyBrown','CleanRoom','22:05','2023-08-01','Granted','DEV03','Yes','Night','Research','Active','2025-03-15','2021-11-20','', '','v1.1','2023-08-01 22:00','AUD003','ZoneC');

-- Nanomaterial quality assurance records
CREATE TABLE nanomaterial_quality_assurance (
  qa_record_id TEXT PRIMARY KEY,
  batch_id TEXT,
  material_type TEXT,
  synthesis_date TEXT,
  particle_size_nm REAL,
  zeta_potential_mv REAL,
  purity_percent REAL,
  surface_area_m2g REAL,
  morphology TEXT,
  testing_lab TEXT,
  analyst_id TEXT,
  test_method TEXT,
  result_passed TEXT,
  result_score REAL,
  comments TEXT,
  certification_id TEXT,
  expiry_date TEXT,
  storage_location TEXT,
  handling_instructions TEXT,
  regulatory_compliance TEXT,
  status TEXT
);

INSERT INTO nanomaterial_quality_assurance (qa_record_id,batch_id,material_type,synthesis_date,particle_size_nm,zeta_potential_mv,purity_percent,surface_area_m2g,morphology,testing_lab,analyst_id,test_method,result_passed,result_score,comments,certification_id,expiry_date,storage_location,handling_instructions,regulatory_compliance,status) VALUES ('QA001','NB001','GoldNanoparticle','2023-06-01',50.2,-30.5,99.1,120.0,'Spherical','LabA','AN001','DLS','Yes',95.0,'Stable suspension','CERT001','2025-06-01','FreezerA','Keep dry','ISO9001','Approved');
INSERT INTO nanomaterial_quality_assurance (qa_record_id,batch_id,material_type,synthesis_date,particle_size_nm,zeta_potential_mv,purity_percent,surface_area_m2g,morphology,testing_lab,analyst_id,test_method,result_passed,result_score,comments,certification_id,expiry_date,storage_location,handling_instructions,regulatory_compliance,status) VALUES ('QA002','NB002','SilicaNanoparticle','2023-05-15',150.0,20.0,98.5,80.0,'Rod','LabB','AN002','SEM','Yes',88.5','Minor agglomeration','CERT002','2024-12-31','ColdRoomB','Avoid moisture','ISO14001','Approved');
INSERT INTO nanomaterial_quality_assurance (qa_record_id,batch_id,material_type,synthesis_date,particle_size_nm,zeta_potential_mv,purity_percent,surface_area_m2g,morphology,testing_lab,analyst_id,test_method,result_passed,result_score,comments,certification_id,expiry_date,storage_location,handling_instructions,regulatory_compliance,status) VALUES ('QA003','NB003','CarbonNanotube','2023-04-20',10.0,5.0,97.0,200.0,'Tubular','LabC','AN003','TEM','No',60.0','Impurities detected','CERT003','2025-01-15','ShelfC','Use gloves','ISO45001','Pending');

-- Clinical trial site staff directory
CREATE TABLE clinical_trial_site_staff (
  staff_id TEXT PRIMARY KEY,
  site_id TEXT,
  first_name TEXT,
  last_name TEXT,
  role TEXT,
  qualifications TEXT,
  certification_id TEXT,
  hire_date TEXT,
  termination_date TEXT,
  primary_contact_phone TEXT,
  email TEXT,
  shift_pattern TEXT,
  training_completed TEXT,
  training_due_date TEXT,
  background_check_status TEXT,
  security_clearance_level TEXT,
  notes TEXT,
  supervisor_id TEXT,
  work_location TEXT,
  active_flag TEXT
);

INSERT INTO clinical_trial_site_staff (staff_id,site_id,first_name,last_name,role,qualifications,certification_id,hire_date,termination_date,primary_contact_phone,email,shift_pattern,training_completed,training_due_date,background_check_status,security_clearance_level,notes,supervisor_id,work_location,active_flag) VALUES ('STAFF001','SITE01','Michael','Anderson','Coordinator','BSN','CERTA001','2022-03-01','', '5556677889','michael.anderson@clinic.org','Day','Yes','2023-12-01','Clear','Level2','','SUP001','BuildingA','Yes');
INSERT INTO clinical_trial_site_staff (staff_id,site_id,first_name,last_name,role,qualifications,certification_id,hire_date,termination_date,primary_contact_phone,email,shift_pattern,training_completed,training_due_date,background_check_status,security_clearance_level,notes,supervisor_id,work_location,active_flag) VALUES ('STAFF002','SITE02','Laura','Miller','Nurse','RN','CERTA002','2021-07-15','', '5557788990','laura.miller@clinic.org','Night','Yes','2024-03-01','Clear','Level3','','SUP002','BuildingB','Yes');
INSERT INTO clinical_trial_site_staff (staff_id,site_id,first_name,last_name,role,qualifications,certification_id,hire_date,termination_date,primary_contact_phone,email,shift_pattern,training_completed,training_due_date,background_check_status,security_clearance_level,notes,supervisor_id,work_location,active_flag) VALUES ('STAFF003','SITE03','David','Lee','Investigator','PhD','CERTA003','2020-01-20','', '5558899001','david.lee@clinic.org','Rotating','Yes','2023-11-15','Clear','Level4','','SUP003','BuildingC','Yes');