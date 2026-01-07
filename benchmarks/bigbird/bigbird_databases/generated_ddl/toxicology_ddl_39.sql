-- Table: building_infrastructure
CREATE TABLE building_infrastructure (
  building_id TEXT PRIMARY KEY,
  name TEXT,
  address TEXT,
  city TEXT,
  state TEXT,
  zip_code TEXT,
  year_constructed INTEGER,
  total_floors INTEGER,
  square_feet INTEGER,
  occupancy_type TEXT,
  fire_safety_rating TEXT,
  hvac_system_id TEXT,
  electrical_capacity_kw INTEGER,
  water_supply_type TEXT,
  waste_disposal_method TEXT,
  security_level TEXT,
  building_manager_id TEXT,
  last_inspection_date TEXT,
  certification_status TEXT,
  sustainability_score REAL
);

INSERT INTO building_infrastructure VALUES ('B001','Main Research Facility','123 Science Way','Springfield','IL','62704',1998,5,85000,'Laboratory','A','HVAC01',1500,'Municipal','Incineration','Level3','MGR01','2023-05-10','Certified',85.6);
INSERT INTO building_infrastructure VALUES ('B002','Analytics Center','456 Data Rd','Madison','WI','53703',2005,3,54000,'Office','B','HVAC02',800,'Well','Recycling','Level2','MGR02','2023-06-15','Pending',78.2);
INSERT INTO building_infrastructure VALUES ('B003','Storage Annex','789 Supply Blvd','Columbus','OH','43215',2012,2,30000,'Warehouse','C','HVAC03',600,'Municipal','Landfill','Level1','MGR03','2023-07-20','Certified',66.4);

-- Table: hvac_system_detail
CREATE TABLE hvac_system_detail (
  hvac_id TEXT PRIMARY KEY,
  building_id TEXT,
  system_type TEXT,
  manufacturer TEXT,
  model_number TEXT,
  installation_date TEXT,
  last_maintenance_date TEXT,
  airflow_cfm INTEGER,
  cooling_capacity_tons REAL,
  heating_capacity_btuh INTEGER,
  refrigerant_type TEXT,
  control_system TEXT,
  energy_efficiency_ratio REAL,
  filter_type TEXT,
  filter_change_interval_days INTEGER,
  sensor_count INTEGER,
  zone_count INTEGER,
  power_consumption_kw REAL,
  maintenance_contract_id TEXT,
  operational_status TEXT,
  notes TEXT
);

INSERT INTO hvac_system_detail VALUES ('HVAC01','B001','Variable Air Volume','CoolTech','VT-200','2000-03-12','2023-04-01',25000,30.5,120000,'R410A','BMS','16.5','HEPA',90,12,5,45.2,'MC001','Operational','N/A');
INSERT INTO hvac_system_detail VALUES ('HVAC02','B002','Chilled Water','AirFlow Inc','CW-500','2006-08-20','2023-05-10',18000,25.0,95000,'R22','BMS','14.8','MERV13',120,8,4,38.7,'MC002','Operational','Routine check completed');
INSERT INTO hvac_system_detail VALUES ('HVAC03','B003','Split System','EcoCool','SS-310','2015-11-05','2023-06-05',12000,15.0,60000,'R410A','Standalone','13.2','MERV8',180,3,2,21.4','MC003','Under Maintenance','Filter replacement due');

-- Table: power_distribution_unit
CREATE TABLE power_distribution_unit (
  pdu_id TEXT PRIMARY KEY,
  building_id TEXT,
  rack_location TEXT,
  circuit_breaker_rating_amps INTEGER,
  voltage_level INTEGER,
  phase TEXT,
  surge_protection BOOLEAN,
  ip_address TEXT,
  mac_address TEXT,
  firmware_version TEXT,
  installation_date TEXT,
  last_inspection_date TEXT,
  power_load_kw REAL,
  temperature_celsius REAL,
  humidity_percent REAL,
  power_quality_index REAL,
  maintenance_contract_id TEXT,
  operational_status TEXT,
  notes TEXT,
  redundancy_level TEXT,
  serial_number TEXT
);

INSERT INTO power_distribution_unit VALUES ('PDU01','B001','RackA1',20,120,'Single',1,'192.168.1.10','AA:BB:CC:DD:EE:01','v1.2','2020-02-15','2023-03-20',12.5,35.0,45.0,0.98,'MC101','Operational','N/A','N+1','SN001');
INSERT INTO power_distribution_unit VALUES ('PDU02','B002','RackB3',30,240,'Three',1,'192.168.2.20','AA:BB:CC:DD:EE:02','v2.0','2021-07-10','2023-04-18',22.8,30.5,40.0,0.95,'MC102','Operational','N/A','2N','SN002');
INSERT INTO power_distribution_unit VALUES ('PDU03','B003','RackC2',15,120,'Single',0,'192.168.3.30','AA:BB:CC:DD:EE:03','v1.0','2019-11-05','2023-05-12',8.4,28.0,50.0,0.92,'MC103','Degraded','Check cables','N+0','SN003');

-- Table: instrument_software_patch_log
CREATE TABLE instrument_software_patch_log (
  patch_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  software_name TEXT,
  version_before TEXT,
  version_after TEXT,
  patch_date TEXT,
  applied_by TEXT,
  patch_type TEXT,
  description TEXT,
  rollback_available BOOLEAN,
  checksum_before TEXT,
  checksum_after TEXT,
  downtime_minutes INTEGER,
  risk_level TEXT,
  validation_status TEXT,
  notes TEXT,
  documentation_url TEXT,
  approval_id TEXT,
  compliance_status TEXT,
  affected_modules TEXT,
  release_candidate BOOLEAN
);

INSERT INTO instrument_software_patch_log VALUES ('PATCH001','INST001','SpectrometerControl','2.3.1','2.4.0','2023-04-22','tech01','Security','Fixed buffer overflow','1','abc123','def456',15,'Medium','Validated','N/A','http://docs.example.com/patch001','APP001','Compliant','Acquisition,Processing','0');
INSERT INTO instrument_software_patch_log VALUES ('PATCH002','INST002','ChromatographySuite','5.0.0','5.1.2','2023-05-10','tech02','Feature','Added new peak detection algorithm','0','xyz789','uvw012',30,'Low','Validated','Improves sensitivity','http://docs.example.com/patch002','APP002','Compliant','Analysis','1');
INSERT INTO instrument_software_patch_log VALUES ('PATCH003','INST003','MicroscopeViewer','1.8.5','1.9.0','2023-06-01','tech03','Bugfix','Resolved UI freeze issue','1','lmn345','opq678',10,'High','Pending','Critical for imaging','http://docs.example.com/patch003','APP003','Pending','Display','0');

-- Table: sample_transport_route
CREATE TABLE sample_transport_route (
  route_id TEXT PRIMARY KEY,
  origin_location TEXT,
  destination_location TEXT,
  transport_mode TEXT,
  carrier_company TEXT,
  vehicle_id TEXT,
  driver_id TEXT,
  scheduled_departure TEXT,
  scheduled_arrival TEXT,
  actual_departure TEXT,
  actual_arrival TEXT,
  temperature_control BOOLEAN,
  min_temperature_celsius REAL,
  max_temperature_celsius REAL,
  humidity_control BOOLEAN,
  min_humidity_percent REAL,
  max_humidity_percent REAL,
  security_level TEXT,
  tracking_enabled BOOLEAN,
  notes TEXT,
  compliance_document_id TEXT,
  route_status TEXT
);

INSERT INTO sample_transport_route VALUES ('RT001','FreezerA','LabB','RefrigeratedTruck','FastShip','V001','DRV01','2023-07-01 08:00','2023-07-01 10:30','2023-07-01 08:10','2023-07-01 10:25',1,-20.0,-15.0,1,30.0,50.0,'Level2',1,'N/A','DOC001','Completed');
INSERT INTO sample_transport_route VALUES ('RT002','LabC','AnalysisCenter','Courier','QuickDelivery','V002','DRV02','2023-07-02 14:00','2023-07-02 16:45','2023-07-02 14:05','2023-07-02 16:50',0,NULL,NULL,0,NULL,NULL,'Level1',0,'Urgent sample','DOC002','Delayed');
INSERT INTO sample_transport_route VALUES ('RT003','StorageX','FacilityY','AirFreight','AeroShip','V003','DRV03','2023-07-03 06:00','2023-07-03 09:00','2023-07-03 06:10','2023-07-03 09:05',1,2.0,8.0,1,20.0,40.0,'Level3',1,'Handle with care','DOC003','InTransit');

-- Table: research_collaboration_event
CREATE TABLE research_collaboration_event (
  event_id TEXT PRIMARY KEY,
  project_id TEXT,
  collaborating_institution TEXT,
  principal_investigator TEXT,
  event_type TEXT,
  start_date TEXT,
  end_date TEXT,
  funding_amount REAL,
  currency TEXT,
  role_description TEXT,
  data_sharing_agreement TEXT,
  intellectual_property_clause TEXT,
  confidentiality_level TEXT,
  contact_email TEXT,
  contact_phone TEXT,
  status TEXT,
  notes TEXT,
  approval_id TEXT,
  compliance_review_date TEXT,
  outcome_summary TEXT,
  follow_up_action TEXT,
  created_by TEXT
);

INSERT INTO research_collaboration_event VALUES ('EVT001','PRJ001','UniversityA','DrSmith','JointStudy','2023-01-15','2023-12-31',250000,'USD','Lead Analyst','DSA001','IP001','High','smith@univa.edu','555-0101','Active','N/A','APP100','2023-01-20','Positive early results','Publish paper','admin01');
INSERT INTO research_collaboration_event VALUES ('EVT002','PRJ002','InstituteB','DrJones','DataExchange','2023-03-01','2023-09-30',150000,'EUR','Data Curator','DSA002','IP002','Medium','jones@instb.org','555-0202','Completed','All data transferred','APP101','2023-03-05','Successful data integration','Plan next phase','admin02');
INSERT INTO research_collaboration_event VALUES ('EVT003','PRJ003','CompanyC','DrLee','CoDevelopment','2023-05-10','2024-05-09',500000,'USD','Product Engineer','DSA003','IP003','Low','lee@compc.com','555-0303','Pending','Awaiting signatures','APP102','2023-05-15','Proposal under review','Finalize contract','admin03');

-- Table: chemical_storage_integrity_check
CREATE TABLE chemical_storage_integrity_check (
  check_id TEXT PRIMARY KEY,
  storage_location_id TEXT,
  inspector_id TEXT,
  inspection_date TEXT,
  temperature_celsius REAL,
  humidity_percent REAL,
  leak_detected BOOLEAN,
  ventilation_ok BOOLEAN,
  fire_extinguisher_status TEXT,
  containment_integrity TEXT,
  signage_compliance BOOLEAN,
  secondary_containment_present BOOLEAN,
  spill_response_kit_present BOOLEAN,
  notes TEXT,
  corrective_action_required BOOLEAN,
  corrective_action_due_date TEXT,
  follow_up_completed BOOLEAN,
  follow_up_date TEXT,
  audit_reference_id TEXT,
  overall_status TEXT,
  document_reference TEXT,
  created_timestamp TEXT
);

INSERT INTO chemical_storage_integrity_check VALUES ('CHK001','LOC01','INSP01','2023-04-12',22.5,45.0,0,1,'Valid','Intact',1,1,1,'All good',0,NULL,0,NULL,'AUD001','Pass','DOCCHK001','2023-04-12 09:00');
INSERT INTO chemical_storage_integrity_check VALUES ('CHK002','LOC02','INSP02','2023-05-18',19.0,50.0,1,1,'Expired','Compromised',0,0,1,'Leak observed in cabinet',1,'2023-06-01',0,NULL,'AUD002','Fail','DOCCHK002','2023-05-18 11:30');
INSERT INTO chemical_storage_integrity_check VALUES ('CHK003','LOC03','INSP03','2023-06-25',21.0,48.0,0,1,'Valid','Intact',1,1,1,'Routine check',0,NULL,0,NULL,'AUD003','Pass','DOCCHK003','2023-06-25 14:15');

-- Table: waste_disposal_batch_record
CREATE TABLE waste_disposal_batch_record (
  batch_id TEXT PRIMARY KEY,
  waste_type TEXT,
  source_department TEXT,
  quantity_kg REAL,
  collection_date TEXT,
  disposal_method TEXT,
  carrier_company TEXT,
  vehicle_id TEXT,
  driver_id TEXT,
  manifest_number TEXT,
  regulatory_permit_id TEXT,
  disposal_facility TEXT,
  facility_address TEXT,
  facility_city TEXT,
  facility_state TEXT,
  facility_zip TEXT,
  disposal_status TEXT,
  verification_signature TEXT,
  notes TEXT,
  created_by TEXT,
  created_timestamp TEXT,
  last_updated_timestamp TEXT
);

INSERT INTO waste_disposal_batch_record VALUES ('WB001','HazardousLiquid','Chemistry','120.5','2023-04-05','Incineration','EcoDispose','V100','DRV10','MAN001','PERM001','IncineratorCo','500 Waste Rd','Detroit','MI','48201','Completed','SIGN001','No issues','admin10','2023-04-05 08:00','2023-04-05 12:00');
INSERT INTO waste_disposal_batch_record VALUES ('WB002','SolidBiohazard','Biology','85.0','2023-05-12','Autoclave','BioSafe','V101','DRV11','MAN002','PERM002','BioProcessingInc','200 Clean St','Cleveland','OH','44114','Completed','SIGN002','All specimens accounted for','admin11','2023-05-12 09:30','2023-05-12 13:45');
INSERT INTO waste_disposal_batch_record VALUES ('WB003','ElectronicWaste','Engineering','45.3','2023-06-20','Recycling','RecycleNow','V102','DRV12','MAN003','PERM003','RecycleCenter','800 Green Ave','Columbus','OH','43215','Pending','SIGN003','Awaiting carrier pickup','admin12','2023-06-20 07:15','2023-06-20 07:15');

-- Table: nanomaterial_handling_log
CREATE TABLE nanomaterial_handling_log (
  handling_id TEXT PRIMARY KEY,
  nanomaterial_batch_id TEXT,
  technician_id TEXT,
  handling_date TEXT,
  procedure_type TEXT,
  equipment_used TEXT,
  fume_hood_id TEXT,
  protective_equipment TEXT,
  exposure_monitoring BOOLEAN,
  exposure_level_ppm REAL,
  waste_generated_kg REAL,
  disposal_method TEXT,
  incident_reported BOOLEAN,
  incident_description TEXT,
  corrective_action_taken TEXT,
  notes TEXT,
  compliance_status TEXT,
  audit_reference_id TEXT,
  reviewer_id TEXT,
  review_date TEXT,
  overall_risk_rating TEXT,
  created_timestamp TEXT
);

INSERT INTO nanomaterial_handling_log VALUES ('NH001','NB001','TECH01','2023-03-10','Dispersion','Ultrasonicator','FH01','Gloves+Mask+Gown',1,0.02,0.5,'Incineration',0,NULL,NULL,'Handled per SOP','Compliant','AUDN001','REV01','2023-03-11','Low','2023-03-10 08:00');
INSERT INTO nanomaterial_handling_log VALUES ('NH002','NB002','TECH02','2023-04-22','Synthesis','Reactor','FH02','Gloves+Mask',1,0.15,1.2,'Specialized Waste',1,'Minor spill on bench','Cleaned and documented','Handled with caution','Compliant','AUDN002','REV02','2023-04-23','Medium','2023-04-22 09:30');
INSERT INTO nanomaterial_handling_log VALUES ('NH003','NB003','TECH03','2023-05-15','Characterization','TEM','FH03','Gloves+Mask+Gown',0,NULL,0.0,'N/A',0,NULL,NULL,'Standard procedure','Compliant','AUDN003','REV03','2023-05-16','Low','2023-05-15 10:45');

-- Table: clinical_trial_site_audit
CREATE TABLE clinical_trial_site_audit (
  audit_id TEXT PRIMARY KEY,
  trial_id TEXT,
  site_id TEXT,
  auditor_id TEXT,
  audit_date TEXT,
  audit_type TEXT,
  compliance_score REAL,
  protocol_adherence BOOLEAN,
  consent_process_compliance BOOLEAN,
  data_integrity_compliance BOOLEAN,
  adverse_event_reporting BOOLEAN,
  storage_conditions_compliance BOOLEAN,
  staff_training_compliance BOOLEAN,
  equipment_calibration_compliance BOOLEAN,
  findings_summary TEXT,
  corrective_actions_required BOOLEAN,
  corrective_action_details TEXT,
  follow_up_date TEXT,
  overall_status TEXT,
  notes TEXT,
  documentation_reference TEXT,
  created_timestamp TEXT
);

INSERT INTO clinical_trial_site_audit VALUES ('AUD001','CT001','SITE01','AUD01','2023-02-14','Initial','92.5',1,1,1,1,1,1,1,'All areas meet standards',0,NULL,NULL,'Pass','N/A','DOCAUD001','2023-02-14 10:00');
INSERT INTO clinical_trial_site_audit VALUES ('AUD002','CT002','SITE02','AUD02','2023-04-20','Routine','78.0',0,1,0,1,0,1,0,'Issues with consent documentation and data entry',1,'Revise consent forms, retrain staff','2023-05-15','Fail','Follow‑up required','DOCAUD002','2023-04-20 11:30');
INSERT INTO clinical_trial_site_audit VALUES ('AUD003','CT003','SITE03','AUD03','2023-06-05','Closing','85.0',1,1,1,1,1,1,1,'Minor discrepancies resolved',0,NULL,NULL,'Pass','All corrective actions completed','DOCAUD003','2023-06-05 09:45');