-- Supplier contracts for lab reagents and services
CREATE TABLE supplier_contracts (
  contract_id TEXT NOT NULL,
  supplier_id TEXT,
  supplier_name TEXT,
  contract_start DATE,
  contract_end DATE,
  contract_type TEXT,
  currency TEXT,
  total_value REAL,
  payment_terms TEXT,
  delivery_method TEXT,
  quality_certification TEXT,
  contact_person TEXT,
  contact_email TEXT,
  contact_phone TEXT,
  renewal_option TEXT,
  notice_period INTEGER,
  governing_law TEXT,
  signed_by TEXT,
  signed_date DATE,
  remarks TEXT,
  PRIMARY KEY (contract_id)
);
INSERT INTO supplier_contracts VALUES ('C001','SUP01','AcmeChemicals','2023-01-15','2024-01-14','Supply','USD',150000,'Net30','Air','ISO9001','John Doe','jdoe@acme.com','5551234','Automatic',60,'US','DrSmith','2023-01-10','Initial contract');
INSERT INTO supplier_contracts VALUES ('C002','SUP02','BioLab Instruments','2022-06-01','2025-05-31','Service','EUR',250000,'Net45','Ground','ISO13485','Anna Lee','alee@bialab.com','5555678','Manual',90,'EU','DrBrown','2022-05-20','Extended support');
INSERT INTO supplier_contracts VALUES ('C003','SUP03','GreenSolvents','2023-09-01','2026-08-31','Supply','USD',80000,'Net15','Sea','ISO14001','Mike Chen','mchen@greensol.com','5559012','Automatic',30,'US','DrWhite','2023-08-25','Preferred vendor');

-- Waste management and disposal logs
CREATE TABLE waste_management_log (
  waste_id TEXT NOT NULL,
  waste_type TEXT,
  collection_date DATE,
  disposal_date DATE,
  quantity_kg REAL,
  container_id TEXT,
  storage_location TEXT,
  disposal_method TEXT,
  carrier_company TEXT,
  carrier_contact TEXT,
  manifest_number TEXT,
  regulatory_code TEXT,
  hazard_level TEXT,
  temperature_control TEXT,
  insurance_policy TEXT,
  cost_usd REAL,
  approved_by TEXT,
  approval_date DATE,
  notes TEXT,
  auditor_name TEXT,
  audit_date DATE,
  PRIMARY KEY (waste_id)
);
INSERT INTO waste_management_log VALUES ('W001','OrganicSolvent','2023-03-10','2023-03-12',12.5,'CONT100','WarehouseA','Incineration','SafeTrans','5551111','MAN123','R15','High','Yes','POL001',500,'DrGreen','2023-03-08','No issues','AuditorA','2023-03-15');
INSERT INTO waste_management_log VALUES ('W002','HeavyMetal','2023-04-05','2023-04-07',5.0,'CONT101','WarehouseB','SecureLandfill','WasteMovers','5552222','MAN124','R22','Critical','No','POL002',750,'DrBlue','2023-04-03','Handled with extra PPE','AuditorB','2023-04-10');
INSERT INTO waste_management_log VALUES ('W003','Biohazard','2023-05-20','2023-05-22',2.3,'CONT102','BioRoom','Autoclave','BioSafe','5553333','MAN125','R30','Medium','Yes','POL003',300,'DrRed','2023-05-18','Decontamination confirmed','AuditorC','2023-05-25');

-- Equipment maintenance schedule
CREATE TABLE equipment_maintenance_schedule (
  schedule_id TEXT NOT NULL,
  equipment_id TEXT,
  equipment_name TEXT,
  maintenance_type TEXT,
  frequency_days INTEGER,
  last_service_date DATE,
  next_service_date DATE,
  service_provider TEXT,
  technician_name TEXT,
  technician_certification TEXT,
  service_cost REAL,
  downtime_est_hrs REAL,
  parts_required TEXT,
  safety_check TEXT,
  documentation_ref TEXT,
  approved_by TEXT,
  approval_date DATE,
  remarks TEXT,
  priority_level TEXT,
  status TEXT,
  created_at DATE,
  PRIMARY KEY (schedule_id)
);
INSERT INTO equipment_maintenance_schedule VALUES ('MS001','EQ001','Centrifuge','Preventive','180','2023-01-10','2023-07-09','BioMaint','Laura Kim','CertA',1200,4,'Rotor,Seal','Passed','DOC100','DrWhite','2023-01-05','Routine check','Medium','Scheduled','2023-01-01');
INSERT INTO equipment_maintenance_schedule VALUES ('MS002','EQ002','Spectrometer','Calibration','365','2022-12-01','2023-12-01','SpecCal','Tom Reed','CertB',2000,6,'Lamp,Grating','Passed','DOC101','DrBlack','2022-11-28','Annual calibration','High','Completed','2022-12-01');
INSERT INTO equipment_maintenance_schedule VALUES ('MS003','EQ003','Freezer','Preventive','90','2023-02-15','2023-05-16','CoolServ','Nina Patel','CertC',800,2,'Thermostat','Passed','DOC102','DrGreen','2023-02-10','Temperature stability check','Low','Pending','2023-02-12');

-- Laboratory space allocation and usage
CREATE TABLE lab_space_allocation (
  allocation_id TEXT NOT NULL,
  lab_room TEXT,
  building TEXT,
  floor INTEGER,
  sq_meters REAL,
  occupant_group TEXT,
  start_date DATE,
  end_date DATE,
  primary_researcher TEXT,
  secondary_researcher TEXT,
  equipment_count INTEGER,
  safety_zone TEXT,
  air_change_rate REAL,
  humidity_control TEXT,
  temperature_range TEXT,
  access_level TEXT,
  keycode TEXT,
  cleaning_schedule TEXT,
  max_occupancy INTEGER,
  current_occupancy INTEGER,
  notes TEXT,
  PRIMARY KEY (allocation_id)
);
INSERT INTO lab_space_allocation VALUES ('A001','Room101','ScienceBlock','1',45.0,'OrganicChem','2022-09-01','2025-08-31','DrSmith','DrJones',12,'ZoneA',12.5,'Yes','20C-25C','Level2','KC123','Weekly',15,8,'Near window');
INSERT INTO lab_space_allocation VALUES ('A002','Room202','TechCenter','2',60.0,'BioAnalytics','2023-01-15','2026-01-14','DrBrown','DrWhite',18,'ZoneB',15.0,'No','18C-22C','Level3','KC456','Biweekly',20,5,'Close to sink');
INSERT INTO lab_space_allocation VALUES ('A003','Room303','InnovationHub','3',30.0,'MaterialsScience','2023-05-01','2024-04-30','DrGreen','DrBlack',9,'ZoneC',10.0,'Yes','19C-23C','Level1','KC789','Monthly',10,2,'Isolated area');

-- Regulatory permits and compliance records
CREATE TABLE regulatory_permit (
  permit_id TEXT NOT NULL,
  permit_type TEXT,
  authority TEXT,
  issue_date DATE,
  expiry_date DATE,
  reference_number TEXT,
  scope TEXT,
  conditions TEXT,
  fee_usd REAL,
  compliance_status TEXT,
  last_audit_date DATE,
  next_audit_due DATE,
  responsible_officer TEXT,
  contact_phone TEXT,
  contact_email TEXT,
  attached_document TEXT,
  notes TEXT,
  renewal_required TEXT,
  renewal_notice_days INTEGER,
  approved_by TEXT,
  approval_date DATE,
  PRIMARY KEY (permit_id)
);
INSERT INTO regulatory_permit VALUES ('P001','HazardousWaste','EPA','2022-03-01','2025-02-28','RW12345','WasteDisposal','MonthlyReporting',2500,'Compliant','2023-02-15','2024-02-15','DrWhite','5557777','dw@example.com','doc_rw123.pdf','All conditions met','Yes',90,'DrSmith','2022-02-20');
INSERT INTO regulatory_permit VALUES ('P002','Radiation','NRC','2021-07-10','2024-07-09','RD54321','RadiationUse','QuarterlySafetyChecks',5000,'Pending','2023-06-01','2023-12-01','DrBrown','5558888','rb@example.com','doc_rd543.pdf','Pending final review','No',0,'DrJones','2021-07-05');
INSERT INTO regulatory_permit VALUES ('P003','ChemicalStorage','OSHA','2023-01-20','2026-01-19','CS98765','SolventStorage','AnnualInspection',1200,'Compliant','2023-01-15','2024-01-15','DrGreen','5559999','cs@example.com','doc_cs987.pdf','No issues','Yes',120,'DrBlack','2023-01-10');

-- Calibration certificates for analytical instruments
CREATE TABLE calibration_certificate (
  cert_id TEXT NOT NULL,
  instrument_id TEXT,
  instrument_name TEXT,
  cert_issue_date DATE,
  cert_expiry_date DATE,
  cert_number TEXT,
  certified_by TEXT,
  calibration_method TEXT,
  reference_standard TEXT,
  uncertainty_ppm REAL,
  temperature_control TEXT,
  humidity_control TEXT,
  technician_id TEXT,
  technician_name TEXT,
  notes TEXT,
  attached_file TEXT,
  approval_status TEXT,
  approved_by TEXT,
  approval_date DATE,
  next_calibration_due DATE,
  PRIMARY KEY (cert_id)
);
INSERT INTO calibration_certificate VALUES ('CC001','IN001','pH Meter','2023-02-01','2024-01-31','CERT1001','LabCal Inc','TwoPoint','StandardBuffer','0.5','25C','45%','T001','Sam Lee','Calibrated before project start','cert_cc001.pdf','Approved','DrWhite','2023-02-02','2024-01-30');
INSERT INTO calibration_certificate VALUES ('CC002','IN002','GC-MS','2022-11-15','2023-11-14','CERT2002','Analytica','Multipeak','NISTMix','1.2','22C','40%','T002','Eva Green','Routine calibration','cert_cc002.pdf','Approved','DrBrown','2022-11-16','2023-11-13');
INSERT INTO calibration_certificate VALUES ('CC003','IN003','UV-Vis Spectrophotometer','2023-04-10','2024-04-09','CERT3003','SpecCal Labs','SingleWavelength','SRM900','0.8','23C','50%','T003','Liam Wong','Verified linearity','cert_cc003.pdf','Pending','DrGreen','2023-04-11','2024-04-08');

-- Safety Data Sheets (SDS) for hazardous materials
CREATE TABLE hazard_materials_sds (
  sds_id TEXT NOT NULL,
  chemical_name TEXT,
  cas_number TEXT,
  supplier TEXT,
  revision_date DATE,
  hazard_class TEXT,
  ppe_required TEXT,
  storage_instructions TEXT,
  disposal_instructions TEXT,
  first_aid_measures TEXT,
  fire_fighting_measures TEXT,
  spill_response TEXT,
  ecological_information TEXT,
  transport_information TEXT,
  regulatory_information TEXT,
  physical_state TEXT,
  color TEXT,
  odor TEXT,
  flash_point_celsius REAL,
  sds_document TEXT,
  notes TEXT,
  PRIMARY KEY (sds_id)
);
INSERT INTO hazard_materials_sds VALUES ('SDS001','Acetone','67-64-1','ChemSupply','2023-01-15','Flammable','Gloves Goggles','Cool dry place','Collect waste container','Eye wash','CO2','Absorb with sand','Aquatic toxicity unknown','UN1993','OSHA','Liquid','Colorless','Pungent','-20','sds_acetone.pdf','Standard solvent');
INSERT INTO hazard_materials_sds VALUES ('SDS002','Benzene','71-43-2','LabChem','2022-12-10','Carcinogenic','Respirator Gloves','Ventilated area','Hazardous waste disposal','Immediate medical attention','Use foam','Contain with vermiculite','Highly toxic to aquatic life','UN1114','EPA','Liquid','Colorless','Sweet','-11','sds_benzene.pdf','Handle with extreme caution');
INSERT INTO hazard_materials_sds VALUES ('SDS003','Sodium Hydroxide','1310-73-2','PureReagents','2023-03-05','Corrosive','Safety goggles Gloves','Store in sealed container','Neutralize before disposal','Rinse with water','Use water spray','Neutralize with acid','Caustic to aquatic organisms','UN1824','EPA','Solid','White','Odorless',NULL,'sds_naoh.pdf','Strong base');

-- Research grant applications and awards
CREATE TABLE research_grant_application (
  application_id TEXT NOT NULL,
  grant_title TEXT,
  funding_agency TEXT,
  submission_deadline DATE,
  submission_date DATE,
  requested_amount_usd REAL,
  approved_amount_usd REAL,
  project_start DATE,
  project_end DATE,
  principal_investigator TEXT,
  co_investigator TEXT,
  department TEXT,
  abstract TEXT,
  keywords TEXT,
  status TEXT,
  reviewer_1 TEXT,
  reviewer_2 TEXT,
  reviewer_3 TEXT,
  decision_date DATE,
  award_letter TEXT,
  notes TEXT,
  PRIMARY KEY (application_id)
);
INSERT INTO research_grant_application VALUES ('GA001','Advanced Catalysis','NSF','2023-04-01','2023-03-20',300000,250000,'2023-09-01','2026-08-31','DrSmith','DrLee','Chemistry','Develop new catalytic processes','catalysis,green chemistry','Awarded','RevA','RevB','RevC','2023-04-15','award_ga001.pdf','First year progress required');
INSERT INTO research_grant_application VALUES ('GA002','Nanomaterial Sensors','DOE','2023-06-15','2023-06-01',500000,0,'2024-01-01','2027-12-31','DrBrown','DrWhite','MaterialsScience','Create sensor arrays using nanomaterials','nanotech,sensors','Rejected','RevD','RevE','RevF','2023-06-20','', 'Will resubmit next cycle');
INSERT INTO research_grant_application VALUES ('GA003','Bioinformatics Platform','NIH','2022-11-30','2022-11-20',200000,180000,'2023-03-01','2025-02-28','DrGreen','DrBlack','Bioinformatics','Integrate omics data for disease studies','bioinformatics,omics','Awarded','RevG','RevH','RevI','2022-12-10','award_ga003.pdf','Multi‑institution collaboration');

-- Data analysis workflow definitions
CREATE TABLE data_analysis_workflow (
  workflow_id TEXT NOT NULL,
  workflow_name TEXT,
  version INTEGER,
  created_by TEXT,
  creation_date DATE,
  last_modified_by TEXT,
  last_modified_date DATE,
  input_data_type TEXT,
  output_data_type TEXT,
  description TEXT,
  steps TEXT,
  software_used TEXT,
  compute_resources TEXT,
  storage_location TEXT,
  validation_method TEXT,
  quality_metrics TEXT,
  responsible_user TEXT,
  approval_status TEXT,
  approved_by TEXT,
  approval_date DATE,
  notes TEXT,
  PRIMARY KEY (workflow_id)
);
INSERT INTO data_analysis_workflow VALUES ('WF001','SpectraPreprocess','1','DrSmith','2023-01-05','DrSmith','2023-01-05','RawSpectra','ProcessedSpectra','Baseline correction and smoothing','Step1:Baseline;Step2:Smooth','MATLAB','8CPU/16GB','/data/processed','CrossValidation','SNR,Resolution','DrSmith','Approved','DrWhite','2023-01-10','Used for all GC-MS data');
INSERT INTO data_analysis_workflow VALUES ('WF002','GeneExpressionPipeline','3','DrBrown','2022-11-12','DrBrown','2023-02-20','FASTQ','Counts','Alignment and quantification','Step1:Trim;Step2:Align;Step3:Count','STAR,FeatureCounts','16CPU/32GB','/data/gene','Benchmark with spike‑ins','RPKM,TPM','DrBrown','Approved','DrGreen','2022-11-20','Updated for new reference genome');
INSERT INTO data_analysis_workflow VALUES ('WF003','MaterialSim','2','DrGreen','2023-03-01','DrGreen','2023-03-15','CADModels','SimulationResults','Finite element analysis of composites','Step1:Mesh;Step2:ApplyLoad;Step3:Solve','Abaqus','32CPU/64GB','/simulations','Comparison to experimental','Stress,Strain','DrGreen','Pending','',NULL,'Awaiting validation');

-- External collaborations and consortium memberships
CREATE TABLE external_collaboration (
  collaboration_id TEXT NOT NULL,
  consortium_name TEXT,
  role TEXT,
  start_date DATE,
  end_date DATE,
  contact_organization TEXT,
  contact_person TEXT,
  contact_email TEXT,
  contact_phone TEXT,
  data_sharing_agreement TEXT,
  funding_contribution_usd REAL,
  deliverables TEXT,
  milestones TEXT,
  reporting_frequency TEXT,
  meeting_schedule TEXT,
  shared_resources TEXT,
  intellectual_property TEXT,
  confidentiality_level TEXT,
  status TEXT,
  last_review_date DATE,
  notes TEXT,
  PRIMARY KEY (collaboration_id)
);
INSERT INTO external_collaboration VALUES ('EC001','GlobalChemConsortium','Member','2022-01-01','2025-12-31','ChemGlobal Inc','Anna Kim','akim@chemglobal.com','5554444','DSA2022','50000','Annual report, joint publication','Milestone1:2023, Milestone2:2024','Quarterly','Jan/Apr/Jul/Oct','Shared lab space, computational cluster','Joint ownership','Restricted','Active','2023-06-15','Collaboration yields high‑impact paper');
INSERT INTO external_collaboration VALUES ('EC002','NanotechAlliance','Lead','2023-03-15','2026-03-14','NanoTech Ltd','Brian Lee','blee@nanotech.com','5555555','DSA2023','120000','Prototype device, patent filing','Prototype ready 2024, Patent Q1 2025','Biannual','Every June and December','Cleanroom, electron microscope','Lead institution','Confidential','Active','2023-07-01','Milestone on track');
INSERT INTO external_collaboration VALUES ('EC003','BioDataNetwork','Observer','2021-06-01','2024-05-31','BioData Org','Clara Wu','cwu@biodata.org','5556666','DSA2021','0','Access to data sets','Data access Q1 2022, Publication Q3 2023','Annual','July','Data repository','Data‑only','Public','Completed','2024-04-20','Data used in several grant applications');