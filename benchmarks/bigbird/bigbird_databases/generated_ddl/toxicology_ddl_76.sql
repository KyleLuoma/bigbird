-- Geological survey site information
CREATE TABLE geological_survey_site (
  site_id TEXT PRIMARY KEY,
  site_name TEXT,
  latitude REAL,
  longitude REAL,
  region TEXT,
  terrain_type TEXT,
  survey_date TEXT,
  lead_geologist TEXT,
  sample_count INTEGER,
  equipment_used TEXT,
  notes TEXT,
  altitude_m REAL,
  soil_ph REAL,
  mineral_presence TEXT,
  water_table_depth_m REAL,
  climate_zone TEXT,
  accessibility_rating INTEGER,
  permit_number TEXT,
  data_quality_score REAL,
  satellite_imagery_ref TEXT
);

INSERT INTO geological_survey_site VALUES (
  'GS001','RockyRidge',45.1234,-122.5678,'NorthPlateau','Rocky','2023-04-12','DrSmith',120,'SeismicDrill','Initial survey','850.5',6.8,'Quartz; Feldspar',30.2,'Temperate',4,'PERM12345',0.92,'IMG20230412A'
);
INSERT INTO geological_survey_site VALUES (
  'GS002','SandyValley',38.9876,-115.2345,'SouthBasin','Sandy','2022-09-03','DrLee',85,'GroundPenetratingRadar','Follow up','420.0',5.4,'Calcite',15.0,'Arid',2,'PERM67890',0.88,'IMG20220903B'
);
INSERT INTO geological_survey_site VALUES (
  'GS003','ForestHollow',52.3456,-99.8765,'EastForest','Forest','2024-01-20','DrKhan',200,'SoilCoreSampler','Annual collection','300.0',6.2,'Mica',22.5','Subtropical',5,'PERM54321',0.95,'IMG20240120C'
);

-- Marine vessel logbook
CREATE TABLE marine_vessel_logbook (
  vessel_id TEXT PRIMARY KEY,
  vessel_name TEXT,
  imo_number TEXT,
  departure_port TEXT,
  arrival_port TEXT,
  departure_date TEXT,
  arrival_date TEXT,
  captain_name TEXT,
  crew_size INTEGER,
  cargo_type TEXT,
  cargo_weight_t REAL,
  fuel_consumed_l REAL,
  engine_hours REAL,
  weather_conditions TEXT,
  sea_state TEXT,
  incidents_reported TEXT,
  maintenance_flag INTEGER,
  logbook_version TEXT,
  compliance_status TEXT,
  gps_track_file TEXT
);

INSERT INTO marine_vessel_logbook VALUES (
  'V001','OceanExplorer','IMO1234567','PortA','PortB','2023-06-01','2023-06-12','CaptainA',24,'Containers',1500.5,80000.0,350.2,'Clear','Calm','None',0,'v1.0','Compliant','trackV001_202306'
);
INSERT INTO marine_vessel_logbook VALUES (
  'V002','SeaVoyager','IMO2345678','HarborX','HarborY','2022-11-15','2022-11-28','CaptainB',30,'BulkOre',2000.0,95000.0,420.5,'Rainy','Rough','MinorEngineGlitch',1,'v2.1','Compliant','trackV002_202211'
);
INSERT INTO marine_vessel_logbook VALUES (
  'V003','AquaQuest','IMO3456789','Dock1','Dock2','2024-02-20','2024-03-05','CaptainC',18,'Liquids',1200.3,60000.0,280.0,'Foggy','Moderate','None',0,'v1.3','Compliant','trackV003_202402'
);

-- Urban infrastructure project details
CREATE TABLE urban_infrastructure_project (
  project_id TEXT PRIMARY KEY,
  project_name TEXT,
  city TEXT,
  district TEXT,
  start_date TEXT,
  planned_end_date TEXT,
  actual_end_date TEXT,
  budget_usd REAL,
  contractor TEXT,
  project_manager TEXT,
  status TEXT,
  total_jobs_created INTEGER,
  environmental_impact_score REAL,
  permits_obtained TEXT,
  traffic_disruption_level INTEGER,
  public_feedback_score REAL,
  renewable_materials_pct REAL,
  smart_tech_integration TEXT,
  risk_assessment_doc TEXT,
  final_report_link TEXT
);

INSERT INTO urban_infrastructure_project VALUES (
  'UP001','RiverBridgeUpgrade','MetroCity','NorthDistrict','2021-03-01','2023-09-30','2023-09-28',25000000.0,'BuildCorp','AliceJohnson','Completed',450,3.2,'PERM001; PERM002',2,4.5,12.5,'Yes','risk_doc_up001.pdf','report_up001.pdf'
);
INSERT INTO urban_infrastructure_project VALUES (
  'UP002','DowntownBikeLane','MetroCity','Central','2022-05-15','2024-12-31',NULL,8000000.0,'UrbanConstruct','BobSmith','InProgress',120,2.8,'PERM010',3,3.9,8.0,'No','risk_doc_up002.pdf','report_up002.pdf'
);
INSERT INTO urban_infrastructure_project VALUES (
  'UP003','EastSideParkRevamp','MetroCity','EastSide','2020-01-10','2022-06-30','2022-06-28',15000000.0,'GreenBuild','ClaraLee','Completed',300,1.5,'PERM020; PERM021',1,4.8,15.0,'Yes','risk_doc_up003.pdf','report_up003.pdf'
);

-- Renewable energy asset registry
CREATE TABLE renewable_energy_asset_registry (
  asset_id TEXT PRIMARY KEY,
  asset_type TEXT,
  location TEXT,
  capacity_mw REAL,
  commissioning_date TEXT,
  operator TEXT,
  maintenance_contract TEXT,
  performance_ratio REAL,
  avg_annual_output_mwh REAL,
  grid_connection_point TEXT,
  latitude REAL,
  longitude REAL,
  site_area_ha REAL,
  financial_investment_usd REAL,
  subsidy_amount_usd REAL,
  decommissioning_plan TEXT,
  warranty_expiry TEXT,
  monitoring_system TEXT,
  last_inspection_date TEXT,
  notes TEXT
);

INSERT INTO renewable_energy_asset_registry VALUES (
  'RE001','Solar','DesertEdge','50.0','2020-04-15','SunPower','ContractA',0.85,425000.0,'NodeA',33.4567,-115.6789,120.0,75000000.0,5000000.0,'PlanA','2025-04-15','SCADA','2023-12-01','High solar irradiance area'
);
INSERT INTO renewable_energy_asset_registry VALUES (
  'RE002','Wind','CoastalCliff','30.0','2019-09-10','WindGen','ContractB',0.78,210000.0,'NodeB',36.1234,-121.5678,85.0,60000000.0,3000000.0,'PlanB','2024-09-10','SCADA','2023-11-20','Site with steady wind patterns'
);
INSERT INTO renewable_energy_asset_registry VALUES (
  'RE003','Hydro','RiverValley','10.0','2021-06-01','HydroFlow','ContractC',0.90,78500.0,'NodeC',45.6789,-100.2345,40.0,40000000.0,2000000.0,'PlanC','2026-06-01','SCADA','2024-01-15','Run-of-river installation'
);

-- Biobank donor profile
CREATE TABLE biobank_donor_profile (
  donor_id TEXT PRIMARY KEY,
  consent_given TEXT,
  age INTEGER,
  sex TEXT,
  ethnicity TEXT,
  blood_type TEXT,
  height_cm REAL,
  weight_kg REAL,
  medical_history_summary TEXT,
  medication_list TEXT,
  lifestyle_factors TEXT,
  donation_date TEXT,
  sample_type TEXT,
  storage_location TEXT,
  aliquot_count INTEGER,
  freezer_id TEXT,
  freezer_section TEXT,
  quality_control_passed INTEGER,
  biobank_manager TEXT,
  notes TEXT,
  data_access_level TEXT
);

INSERT INTO biobank_donor_profile VALUES (
  'D001','Yes',45,'Female','Asian','A+','162.5','58.0','None','None','NonSmoker;Active','2023-05-20','Blood','LocA-01',12,'FRZ01','A1',1,'DrMiller','First donation','Restricted'
);
INSERT INTO biobank_donor_profile VALUES (
  'D002','Yes',60,'Male','Caucasian','O-','175.0','82.5','Hypertension','Lisinopril','FormerSmoker','2022-11-12','Tissue','LocB-03',8,'FRZ02','B2',1,'DrMiller','Second donation','Open'
);
INSERT INTO biobank_donor_profile VALUES (
  'D003','No',30,'NonBinary','Hispanic','B+','168.0','70.0','Asthma','Albuterol','Active','2024-01-05','Saliva','LocC-07',5,'FRZ03','C3',0,'DrMiller','Consent pending','Restricted'
);

-- Astronomical event catalog
CREATE TABLE astronomical_event_catalog (
  event_id TEXT PRIMARY KEY,
  event_type TEXT,
  event_date TEXT,
  right_ascension TEXT,
  declination TEXT,
  magnitude REAL,
  duration_seconds REAL,
  instrument_used TEXT,
  observer TEXT,
  data_product_link TEXT,
  processing_version TEXT,
  calibration_status TEXT,
  sky_condition TEXT,
  observation_site TEXT,
  wavelength_range_nm TEXT,
  redshift REAL,
  source_catalog_id TEXT,
  notes TEXT,
  public_release_date TEXT,
  citation TEXT
);

INSERT INTO astronomical_event_catalog VALUES (
  'AE001','Supernova','2023-07-14','13h29m52s','-47d12m30s','-19.3','86400','TelescopeX','DrNova','s3://astro/ae001.fits','v2.1','Calibrated','Clear','ObservatoryA','350-800','0.03','SCAT123','Bright Type Ia','2023-12-01','Doe2023'
);
INSERT INTO astronomical_event_catalog VALUES (
  'AE002','GammaRayBurst','2022-11-03','02h15m30s','+22d45m10s','-24.0','120','SatelliteGRB','TeamGRB','s3://astro/ae002.fits','v1.9','Calibrated','Clear','Space','10-1000','1.7','SCAT456','Short GRB','2023-01-15','Smith2022'
);
INSERT INTO astronomical_event_catalog VALUES (
  'AE003','Transit','2024-02-20','09h45m12s','-12d33m44s','12.5','5400','TelescopeY','DrTransit','s3://astro/ae003.fits','v3.0','Pending','PartlyCloudy','ObservatoryB','400-900','0.001','SCAT789','Exoplanet HD1234b','2024-08-10','Lee2024'
);

-- Trial site quality assessment
CREATE TABLE trial_site_quality_assessment (
  assessment_id TEXT PRIMARY KEY,
  site_id TEXT,
  assessment_date TEXT,
  auditor_name TEXT,
  compliance_score REAL,
  adverse_event_reporting TEXT,
  data_integrity_score REAL,
  facility_score REAL,
  staff_training_score REAL,
  equipment_calibration_score REAL,
  participant_recruitment_status TEXT,
  SOP_adherence TEXT,
  corrective_action_plan TEXT,
  next_assessment_due TEXT,
  notes TEXT,
  documentation_link TEXT,
  overall_rating TEXT,
  risk_level TEXT,
  followup_actions TEXT,
  amendment_record TEXT,
  archived_flag INTEGER
);

INSERT INTO trial_site_quality_assessment VALUES (
  'QA001','TS001','2023-09-10','AuditorA',92.5,'Complete',88.0,90.0,85.0,95.0,'OnTrack','Full','PlanA','2024-09-10','All metrics within range','docs/qa001.pdf','Excellent','Low','None','None',0
);
INSERT INTO trial_site_quality_assessment VALUES (
  'QA002','TS002','2022-12-05','AuditorB',78.0,'Partial',70.5,75.0,68.0,80.0,'Delayed','Partial','PlanB','2023-12-05','Issues with staff training','docs/qa002.pdf','Fair','Medium','Staff retraining','AmendmentB',0
);
INSERT INTO trial_site_quality_assessment VALUES (
  'QA003','TS003','2024-03-22','AuditorC',85.0,'Complete',82.0,88.0,80.0,90.0,'OnTrack','Full','PlanC','2025-03-22','Minor equipment calibration delays','docs/qa003.pdf','Good','Low','Schedule calibration','None',0
);

-- Urban noise source register
CREATE TABLE urban_noise_source_register (
  source_id TEXT PRIMARY KEY,
  source_type TEXT,
  location_description TEXT,
  latitude REAL,
  longitude REAL,
  operating_hours TEXT,
  noise_level_db REAL,
  measurement_method TEXT,
  owner_entity TEXT,
  installation_date TEXT,
  maintenance_schedule TEXT,
  compliance_status TEXT,
  mitigation_measures TEXT,
  incident_log_ref TEXT,
  contact_person TEXT,
  phone_number TEXT,
  email TEXT,
  notes TEXT,
  last_updated TEXT,
  regulatory_reference TEXT
);

INSERT INTO urban_noise_source_register VALUES (
  'NS001','Construction','MainSt 5thAve','40.7128','-74.0060','06:00-22:00',78.5,'SoundLevelMeter','BuildCo','2022-01-15','Quarterly','Compliant','Barriers;LowProfile','inc_log_ns001','JohnDoe','5551234567','john.doe@example.com','Near residential area','2023-11-01','Reg123'
);
INSERT INTO urban_noise_source_register VALUES (
  'NS002','Traffic','Highway 101 mile12','34.0522','-118.2437','24/7',72.0,'ContinuousMonitor','DeptTransport','2020-06-01','Monthly','Compliant','NoiseWalls','inc_log_ns002','JaneSmith','5559876543','jane.smith@example.com','Heavy truck traffic','2023-10-15','Reg456'
);
INSERT INTO urban_noise_source_register VALUES (
  'NS003','Industrial','Factory Zone A','41.8781','-87.6298','07:00-19:00',80.3','PortableMeter','IndusCorp','2021-03-20','Biannual','Conditional','EnclosureUpgrade','inc_log_ns003','MikeBrown','5552468101','mike.brown@example.com','Machinery operations','2023-09-20','Reg789'
);

-- Lab robotics task template
CREATE TABLE lab_robotics_task_template (
  template_id TEXT PRIMARY KEY,
  task_name TEXT,
  description TEXT,
  required_robot_model TEXT,
  estimated_duration_min REAL,
  safety_level TEXT,
  prerequisite_tasks TEXT,
  required_materials TEXT,
  tool_list TEXT,
  programming_language TEXT,
  version TEXT,
  author TEXT,
  approval_status TEXT,
  last_modified_date TEXT,
  usage_count INTEGER,
  average_success_rate REAL,
  error_log_path TEXT,
  documentation_url TEXT,
  maintenance_interval_hours REAL,
  deprecation_flag INTEGER
);

INSERT INTO lab_robotics_task_template VALUES (
  'RT001','PlateRearrangement','Move plates between incubators','RoboArmX',15.0,'Medium','None','PlateRack','Gripper;Sensor','Python','1.0','EngineerA','Approved','2023-07-01',120,0.97,'logs/rt001_err.log','http://docs/rt001','200',0
);
INSERT INTO lab_robotics_task_template VALUES (
  'RT002','SampleAliquoting','Create aliquots from master stock','RoboPipetteY',30.0,'High','PlateRearrangement','ReagentA;ReagentB','Pipette','C++','2.1','EngineerB','Pending','2023-08-15',45,0.89,'logs/rt002_err.log','http://docs/rt002','150',0
);
INSERT INTO lab_robotics_task_template VALUES (
  'RT003','InstrumentCleaning','Automated cleaning of spectrometer','CleanBotZ',20.0,'Low','None','CleaningSolvent','Brush;UVLamp','Java','1.2','EngineerC','Approved','2023-06-20',200,0.95,'logs/rt003_err.log','http://docs/rt003','250',0
);

-- Nanomaterial biokinetic parameters
CREATE TABLE nanomaterial_biokinetic_parameters (
  param_id TEXT PRIMARY KEY,
  material_name TEXT,
  particle_size_nm REAL,
  shape_description TEXT,
  surface_coating TEXT,
  dissolution_rate_per_hr REAL,
  cellular_uptake_rate REAL,
  clearance_half_life_hr REAL,
  organ_distribution_profile TEXT,
  toxicity_score REAL,
  reference_study_id TEXT,
  measurement_method TEXT,
  lab_id TEXT,
  temperature_c REAL,
  ph REAL,
  ionic_strength REAL,
  dosage_mg_per_kg REAL,
  exposure_route TEXT,
  data_quality_flag TEXT,
  notes TEXT
);

INSERT INTO nanomaterial_biokinetic_parameters VALUES (
  'KP001','GoldNanoparticle',20.5,'Spherical','PEG','0.02','0.85','12.0','Liver;Spleen',1.2,'STUDY123','ICP-MS','LabA','37.0','7.4','0.1',0.5,'Intravenous','High','Stable suspension'
);
INSERT INTO nanomaterial_biokinetic_parameters VALUES (
  'KP002','SilicaNanotube',150.0,'Tubular','Silane','0.05','0.60','24.0','Lung;Kidney',2.8,'STUDY456','TEM','LabB','38.0','7.2','0.15',1.0,'Inhalation','Medium','Agglomeration observed'
);
INSERT INTO nanomaterial_biokinetic_parameters VALUES (
  'KP003','CarbonDot',5.0,'Dot','Carboxyl','0.01','0.95','8.0','Brain;Heart',0.9,'STUDY789','Fluorescence','LabC','36.5','7.0','0.05',0.2,'Oral','High','High quantum yield'
);