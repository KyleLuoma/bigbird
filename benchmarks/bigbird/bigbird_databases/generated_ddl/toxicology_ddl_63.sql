-- Table storing annotations for individual atoms
CREATE TABLE `atom_property_annotation` (
  `annotation_id` TEXT NOT NULL,
  `atom_id` TEXT,
  `property_name` TEXT,
  `property_value` TEXT,
  `annotation_source` TEXT,
  `confidence_score` TEXT,
  `timestamp` TEXT,
  `researcher_id` TEXT,
  `method` TEXT,
  `unit` TEXT,
  `notes` TEXT,
  `related_experiment_id` TEXT,
  `validation_status` TEXT,
  `data_version` TEXT,
  `lab_location` TEXT,
  `equipment_used` TEXT,
  `sample_id` TEXT,
  `batch_number` TEXT,
  `project_id` TEXT,
  `external_reference` TEXT,
  PRIMARY KEY (`annotation_id`)
);
INSERT INTO `atom_property_annotation` VALUES ('ANN001','A001','electronegativity','3.44','spectroscopy','0.95','2024-01-10','R001','XPS','eV','Initial measurement','EXP001','validated','v1','LabA','Spec001','SMP001','BN001','PRJ001','REF001');
INSERT INTO `atom_property_annotation` VALUES ('ANN002','A002','partial_charge','-0.12','simulation','0.88','2024-02-15','R002','DFT','e','Charge calculation','EXP002','pending','v2','LabB','Comp001','SMP002','BN002','PRJ002','REF002');
INSERT INTO `atom_property_annotation` VALUES ('ANN003','A003','radius','1.23','literature','1.00','2024-03-20','R003','XRD','Å','Reference value','EXP003','validated','v1','LabC','Diff001','SMP003','BN003','PRJ003','REF003');

-- Table recording bond energy measurements
CREATE TABLE `bond_energy_record` (
  `bond_energy_id` TEXT NOT NULL,
  `bond_id` TEXT,
  `molecule_id` TEXT,
  `energy_kj_mol` TEXT,
  `measurement_method` TEXT,
  `temperature_c` TEXT,
  `pressure_atm` TEXT,
  `measurement_date` TEXT,
  `instrument_id` TEXT,
  `researcher_id` TEXT,
  `calibration_id` TEXT,
  `confidence` TEXT,
  `notes` TEXT,
  `dataset_version` TEXT,
  `lab_section` TEXT,
  `batch_id` TEXT,
  `project_code` TEXT,
  `external_dataset_id` TEXT,
  `reliability_flag` TEXT,
  `data_source` TEXT,
  `qc_passed` TEXT,
  PRIMARY KEY (`bond_energy_id`)
);
INSERT INTO `bond_energy_record` VALUES ('BE001','B001','M001','350','IR','25','1','2024-01-12','INST01','R001','CAL01','0.97','Standard IR measurement','v1','Chemistry','BN001','PC001','DS001','high','internal','yes');
INSERT INTO `bond_energy_record` VALUES ('BE002','B002','M002','420','Raman','30','1','2024-02-18','INST02','R002','CAL02','0.93','Raman shift observed','v1','Physics','BN002','PC002','DS002','medium','external','yes');
INSERT INTO `bond_energy_record` VALUES ('BE003','B003','M003','285','UVVis','22','1','2024-03-22','INST03','R003','CAL03','0.99','UV-Vis absorption peak','v2','Materials','BN003','PC003','DS003','high','internal','yes');

-- Table containing snapshots of molecular models
CREATE TABLE `molecular_model_snapshot` (
  `snapshot_id` TEXT NOT NULL,
  `molecule_id` TEXT,
  `model_type` TEXT,
  `software_version` TEXT,
  `file_path` TEXT,
  `created_at` TEXT,
  `created_by` TEXT,
  `description` TEXT,
  `num_atoms` TEXT,
  `num_bonds` TEXT,
  `molecular_weight` TEXT,
  `isomeric_smiles` TEXT,
  `canonical_smiles` TEXT,
  `inchi` TEXT,
  `inchi_key` TEXT,
  `energy_kj_mol` TEXT,
  `conformation` TEXT,
  `calculation_method` TEXT,
  `solvent` TEXT,
  `temperature_c` TEXT,
  `pressure_atm` TEXT,
  `gpu_used` TEXT,
  `cpu_cores` TEXT,
  `memory_gb` TEXT,
  `project_id` TEXT,
  `status` TEXT,
  PRIMARY KEY (`snapshot_id`)
);
INSERT INTO `molecular_model_snapshot` VALUES ('SNAP001','M001','DFT','Gaussian16','/models/snap1.chk','2024-01-05','R001','Ground state','25','24','180.2','C1CCCCC1','C1CCCCC1','InChI=1S/C6H12/c1-2-3-4-5-6-1/h1-6H2','XKJH123','-150','staggered','B3LYP','water','298','1','NVIDIA3090','16','64','PRJ001','validated');
INSERT INTO `molecular_model_snapshot` VALUES ('SNAP002','M002','MD','GROMACS','/models/snap2.trr','2024-02-10','R002','Equilibration run','50','48','300.5','C(C)(C)C','C(C)(C)C','InChI=1S/C4H10/c1-4(2)3/h4H,1-3H3','ABCD456','-200','extended','CHARMM','methanol','310','1','RTX3080','32','128','PRJ002','in_progress');
INSERT INTO `molecular_model_snapshot` VALUES ('SNAP003','M003','QM','ORCA','/models/snap3.gbw','2024-03-15','R003','Excited state','30','29','250.8','C1=CC=CC=C1','C1=CC=CC=C1','InChI=1S/C6H6/c1-2-4-6-5-3-1/h1-6H','EFGH789','-120','planar','TDDFT','acetonitrile','350','1','AMDMI100','24','96','PRJ003','review');

-- Table storing kinetic datasets for reactions
CREATE TABLE `reaction_kinetics_dataset` (
  `dataset_id` TEXT NOT NULL,
  `reaction_id` TEXT,
  `temperature_c` TEXT,
  `pressure_atm` TEXT,
  `catalyst` TEXT,
  `solvent` TEXT,
  `time_point_s` TEXT,
  `concentration_mol_l` TEXT,
  `rate_constant` TEXT,
  `activation_energy` TEXT,
  `method` TEXT,
  `instrument_id` TEXT,
  `researcher_id` TEXT,
  `batch_id` TEXT,
  `lab_section` TEXT,
  `notes` TEXT,
  `data_quality_flag` TEXT,
  `version` TEXT,
  `created_at` TEXT,
  `modified_at` TEXT,
  `related_publication_id` TEXT,
  `analysis_software` TEXT,
  `dataset_url` TEXT,
  PRIMARY KEY (`dataset_id`)
);
INSERT INTO `reaction_kinetics_dataset` VALUES ('KD001','RXN001','25','1','Pd/C','ethanol','10','0.85','0.012','45','UVVis','INST01','R001','BN001','Chemistry','Initial trial','good','v1','2024-01-08','2024-01-09','PUB001','KineticFit','http://data.org/kd001');
INSERT INTO `reaction_kinetics_dataset` VALUES ('KD002','RXN002','40','1','FeCl3','acetonitrile','20','0.60','0.018','60','NMR','INST02','R002','BN002','Physics','Follow up','moderate','v1','2024-02-12','2024-02-13','PUB002','Kintek','http://data.org/kd002');
INSERT INTO `reaction_kinetics_dataset` VALUES ('KD003','RXN003','30','1','CuBr','water','5','1.10','0.009','35','IR','INST03','R003','BN003','Materials','Replicate','good','v2','2024-03-20','2024-03-21','PUB003','Kinsoft','http://data.org/kd003');

-- Table describing synthetic pathways
CREATE TABLE `synthetic_pathway_metadata` (
  `pathway_id` TEXT NOT NULL,
  `start_compound_id` TEXT,
  `end_product_id` TEXT,
  `steps_count` TEXT,
  `total_yield_percent` TEXT,
  `overall_time_h` TEXT,
  `main_reaction_type` TEXT,
  `primary_catalyst` TEXT,
  `solvents_used` TEXT,
  `purification_method` TEXT,
  `safety_review_id` TEXT,
  `project_id` TEXT,
  `lead_researcher_id` TEXT,
  `funding_source` TEXT,
  `start_date` TEXT,
  `end_date` TEXT,
  `status` TEXT,
  `notes` TEXT,
  `document_reference` TEXT,
  `version` TEXT,
  `last_updated` TEXT,
  `review_cycle` TEXT,
  PRIMARY KEY (`pathway_id`)
);
INSERT INTO `synthetic_pathway_metadata` VALUES ('PW001','CMP001','PROD001','5','78','48','Suzuki','Pd(PPh3)4','ethanol,water','chromatography','SR001','PRJ001','R001','GrantA','2024-01-01','2024-02-15','completed','No issues','DOC001','v1','2024-02-16','annual');
INSERT INTO `synthetic_pathway_metadata` VALUES ('PW002','CMP002','PROD002','7','62','72','Heck','PdCl2','DMF','recrystallization','SR002','PRJ002','R002','GrantB','2024-02-01','2024-04-20','in_progress','Scaling up required','DOC002','v1','2024-04-21','quarterly');
INSERT INTO `synthetic_pathway_metadata` VALUES ('PW003','CMP003','PROD003','4','85','36','Buchwald','Pd2(dba)3','toluene','distillation','SR003','PRJ003','R003','GrantC','2024-03-10','2024-04-05','completed','Yield improved','DOC003','v2','2024-04-06','annual');

-- Table for predicted chemical properties
CREATE TABLE `chemical_property_prediction` (
  `prediction_id` TEXT NOT NULL,
  `molecule_id` TEXT,
  `property_name` TEXT,
  `predicted_value` TEXT,
  `prediction_method` TEXT,
  `model_version` TEXT,
  `training_dataset_id` TEXT,
  `confidence_interval_low` TEXT,
  `confidence_interval_high` TEXT,
  `predictor_researcher_id` TEXT,
  `prediction_date` TEXT,
  `validation_status` TEXT,
  `error_metric` TEXT,
  `notes` TEXT,
  `project_id` TEXT,
  `batch_id` TEXT,
  `source_tool` TEXT,
  `compute_node_id` TEXT,
  `runtime_seconds` TEXT,
  `dataset_version` TEXT,
  `external_reference` TEXT,
  PRIMARY KEY (`prediction_id`)
);
INSERT INTO `chemical_property_prediction` VALUES ('PRED001','M001','logP','2.35','RandomForest','v3','DS001','2.10','2.60','R001','2024-01-15','validated','RMSE0.12','Standard prediction','PRJ001','BN001','ChemPredict','NODE01','45','v1','REF001');
INSERT INTO `chemical_property_prediction` VALUES ('PRED002','M002','pKa','7.8','NeuralNet','v2','DS002','7.5','8.1','R002','2024-02-20','pending','MAE0.25','Requires experimental confirmation','PRJ002','BN002','ChemAI','NODE02','60','v1','REF002');
INSERT INTO `chemical_property_prediction` VALUES ('PRED003','M003','solubility','0.45','SVM','v1','DS003','0.30','0.60','R003','2024-03-25','validated','RMSE0.08','High confidence','PRJ003','BN003','SolPredict','NODE03','30','v2','REF003');

-- Table logging image captures from analytical instruments
CREATE TABLE `instrument_image_capture` (
  `capture_id` TEXT NOT NULL,
  `instrument_id` TEXT,
  `molecule_id` TEXT,
  `image_type` TEXT,
  `file_path` TEXT,
  `resolution_px` TEXT,
  `color_mode` TEXT,
  `capture_date` TEXT,
  `operator_id` TEXT,
  `exposure_time_ms` TEXT,
  `lamp_intensity` TEXT,
  `filter_set` TEXT,
  `notes` TEXT,
  `validation_status` TEXT,
  `related_experiment_id` TEXT,
  `project_id` TEXT,
  `batch_number` TEXT,
  `storage_location` TEXT,
  `checksum` TEXT,
  `qc_passed` TEXT,
  `data_format` TEXT,
  PRIMARY KEY (`capture_id`)
);
INSERT INTO `instrument_image_capture` VALUES ('IMG001','INST01','M001','SEM','/images/img1.tif','1024x768','grayscale','2024-01-11','OP001','150','high','none','Initial SEM image','validated','EXP001','PRJ001','BN001','ArchiveA','chk001','yes','tiff');
INSERT INTO `instrument_image_capture` VALUES ('IMG002','INST02','M002','TEM','/images/img2.tif','2048x2048','grayscale','2024-02-17','OP002','200','medium','lowpass','High‑resolution TEM','validated','EXP002','PRJ002','BN002','ArchiveB','chk002','yes','tiff');
INSERT INTO `instrument_image_capture` VALUES ('IMG003','INST03','M003','AFM','/images/img3.tif','512x512','grayscale','2024-03-23','OP003','100','low','none','Surface topology','pending','EXP003','PRJ003','BN003','ArchiveC','chk003','no','tiff');

-- Table tracking chemical order history
CREATE TABLE `lab_chemical_order_history` (
  `order_id` TEXT NOT NULL,
  `chemical_id` TEXT,
  `supplier_id` TEXT,
  `order_date` TEXT,
  `quantity` TEXT,
  `unit` TEXT,
  `lot_number` TEXT,
  `expiration_date` TEXT,
  `received_date` TEXT,
  `storage_location` TEXT,
  `qc_status` TEXT,
  `certificate_id` TEXT,
  `cost_usd` TEXT,
  `purchasing_agent_id` TEXT,
  `project_id` TEXT,
  `priority_level` TEXT,
  `notes` TEXT,
  `approval_status` TEXT,
  `delivery_method` TEXT,
  `batch_id` TEXT,
  `compliance_check` TEXT,
  `verification_date` TEXT,
  PRIMARY KEY (`order_id`)
);
INSERT INTO `lab_chemical_order_history` VALUES ('ORD001','CHEM001','SUP001','2024-01-03','5','L','LOT123','2025-01-03','2024-01-08','CabinetA','passed','CERT001','250','AG001','PRJ001','high','Urgent order','approved','courier','BN001','yes','2024-01-09');
INSERT INTO `lab_chemical_order_history` VALUES ('ORD002','CHEM002','SUP002','2024-02-14','10','kg','LOT456','2026-02-14','2024-02-20','CabinetB','passed','CERT002','800','AG002','PRJ002','medium','Standard restock','approved','freight','BN002','yes','2024-02-21');
INSERT INTO `lab_chemical_order_history` VALUES ('ORD003','CHEM003','SUP003','2024-03-19','2','g','LOT789','2025-03-19','2024-03-25','CabinetC','failed','CERT003','120','AG003','PRJ003','low','Quality issue detected','pending','pickup','BN003','no','2024-03-26');

-- Extended log for sample preparation procedures
CREATE TABLE `sample_preparation_log_extended` (
  `prep_id` TEXT NOT NULL,
  `sample_id` TEXT,
  `protocol_id` TEXT,
  `start_time` TEXT,
  `end_time` TEXT,
  `technician_id` TEXT,
  `equipment_id` TEXT,
  `reagent_ids` TEXT,
  `volumes_ml` TEXT,
  `temperatures_c` TEXT,
  `pH` TEXT,
  `centrifuge_speed_rpm` TEXT,
  `duration_minutes` TEXT,
  `notes` TEXT,
  `verification_status` TEXT,
  `batch_number` TEXT,
  `project_id` TEXT,
  `storage_location` TEXT,
  `preservation_method` TEXT,
  `aliquot_number` TEXT,
  `qc_passed` TEXT,
  `data_version` TEXT,
  `related_analysis_id` TEXT,
  PRIMARY KEY (`prep_id`)
);
INSERT INTO `sample_preparation_log_extended` VALUES ('PREP001','SMP001','PROT001','2024-01-06 08:00','2024-01-06 09:30','TECH001','EQ001','REAG001,REAG002','10,5','4','7.2','12000','90','Prepared with vortex','verified','BN001','PRJ001','FreezerA','cryopreservation','A1','yes','v1','ANL001');
INSERT INTO `sample_preparation_log_extended` VALUES ('PREP002','SMP002','PROT002','2024-02-11 10:15','2024-02-11 11:00','TECH002','EQ002','REAG003','20','25','8.0','8000','45','Filtered and aliquoted','verified','BN002','PRJ002','FridgeB','refrigeration','B3','yes','v1','ANL002');
INSERT INTO `sample_preparation_log_extended` VALUES ('PREP003','SMP003','PROT003','2024-03-18 14:00','2024-03-18 15:20','TECH003','EQ003','REAG004,REAG005','15,2','37','7.5','15000','80','Enzyme digestion step added','pending','BN003','PRJ003','FreezerC','lyophilization','C2','no','v2','ANL003');

-- Table storing visualization assets for molecules
CREATE TABLE `molecule_visualization_asset` (
  `asset_id` TEXT NOT NULL,
  `molecule_id` TEXT,
  `viewer_tool` TEXT,
  `asset_type` TEXT,
  `file_path` TEXT,
  `thumbnail_path` TEXT,
  `dimensions_px` TEXT,
  `creation_date` TEXT,
  `creator_id` TEXT,
  `rendering_method` TEXT,
  `lighting_setup` TEXT,
  `camera_angle` TEXT,
  `annotations` TEXT,
  `version` TEXT,
  `license` TEXT,
  `project_id` TEXT,
  `access_level` TEXT,
  `checksum` TEXT,
  `usage_count` TEXT,
  `last_accessed` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`asset_id`)
);
INSERT INTO `molecule_visualization_asset` VALUES ('ASSET001','M001','PyMOL','3Dmodel','/viz/m001.pdb','/viz/thumb_m001.png','1024x768','2024-01-04','R001','raytracing','soft','45deg','highlighted active site','v1','CC0','PRJ001','public','cksum001','12','2024-02-01','Initial release');
INSERT INTO `molecule_visualization_asset` VALUES ('ASSET002','M002','VMD','trajectory','/viz/m002.trj','/viz/thumb_m002.png','1280x720','2024-02-09','R002','MD','hard','30deg','none','v1','MIT','PRJ002','restricted','cksum002','5','2024-03-01','Used for presentation');
INSERT INTO `molecule_visualization_asset` VALUES ('ASSET003','M003','Chimera','surface','/viz/m003.pse','/viz/thumb_m003.png','800x600','2024-03-14','R003','mesh','soft','60deg','labelled binding pocket','v2','GPL','PRJ003','public','cksum003','20','2024-04-01','Updated after review');