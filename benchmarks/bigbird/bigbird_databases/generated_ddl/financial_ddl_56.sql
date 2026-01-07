-- Space debris tracking information
CREATE TABLE space_debris_tracking (
    debris_id INTEGER PRIMARY KEY,
    norad_id INTEGER NOT NULL,
    launch_date TEXT NOT NULL,
    decay_date TEXT,
    object_type TEXT NOT NULL,
    mass_kg REAL,
    dimensions_cm TEXT,
    orbit_type TEXT,
    apogee_km REAL,
    perigee_km REAL,
    inclination_deg REAL,
    raan_deg REAL,
    mean_anomaly_deg REAL,
    epoch TEXT,
    country_of_origin TEXT,
    purpose TEXT,
    status TEXT,
    last_observed TEXT,
    sensor_name TEXT,
    confidence_level INTEGER,
    observation_count INTEGER,
    tracking_agency TEXT,
    notes TEXT
);
INSERT INTO space_debris_tracking (debris_id,norad_id,launch_date,decay_date,object_type,mass_kg,dimensions_cm,orbit_type,apogee_km,perigee_km,inclination_deg,raan_deg,mean_anomaly_deg,epoch,country_of_origin,purpose,status,last_observed,sensor_name,confidence_level,observation_count,tracking_agency,notes) VALUES (1,25544,19981120,NULL,Satellite,419.0,10x10x10,LowEarth,420.0,410.0,51.6,0.0,0.0,20250101,USA,Communication,Active,20250102,SensorA,9,1500,AgencyA,NULL);
INSERT INTO space_debris_tracking (debris_id,norad_id,launch_date,decay_date,object_type,mass_kg,dimensions_cm,orbit_type,apogee_km,perigee_km,inclination_deg,raan_deg,mean_anomaly_deg,epoch,country_of_origin,purpose,status,last_observed,sensor_name,confidence_level,observation_count,tracking_agency,notes) VALUES (2,12345,20000115,20231230,RocketBody,1500.0,300x300x300,Geostationary,35786.0,35786.0,0.1,120.0,45.0,20251231,RUS,Research,Decayed,20231230,SensorB,8,200,AgencyB,Reentered);
INSERT INTO space_debris_tracking (debris_id,norad_id,launch_date,decay_date,object_type,mass_kg,dimensions_cm,orbit_type,apogee_km,perigee_km,inclination_deg,raan_deg,mean_anomaly_deg,epoch,country_of_origin,purpose,status,last_observed,sensor_name,confidence_level,observation_count,tracking_agency,notes) VALUES (3,67890,20150601,NULL,Fragment,5.5,2x2x2,LowEarth,550.0,540.0,98.7,250.0,180.0,20251111,CHN,Science,Active,20251112,SensorC,7,800,AgencyC,NewlyDetected);

-- Quantum computing hardware log
CREATE TABLE quantum_computing_log (
    log_id INTEGER PRIMARY KEY,
    system_id TEXT NOT NULL,
    install_date TEXT NOT NULL,
    vendor TEXT,
    qubit_count INTEGER,
    coherence_time_us REAL,
    gate_fidelity REAL,
    cryogenic_temp_mk REAL,
    dilution_refrigerator_model TEXT,
    control_electronics_version TEXT,
    calibration_timestamp TEXT,
    error_rate REAL,
    max_circuit_depth INTEGER,
    software_stack TEXT,
    operating_status TEXT,
    last_maintenance TEXT,
    maintenance_engineer TEXT,
    uptime_hours REAL,
    power_consumption_kw REAL,
    location_building TEXT,
    location_room TEXT,
    notes TEXT,
    created_by TEXT,
    create_timestamp TEXT,
    updated_by TEXT,
    update_timestamp TEXT
);
INSERT INTO quantum_computing_log (log_id,system_id,install_date,vendor,qubit_count,coherence_time_us,gate_fidelity,cryogenic_temp_mk,dilution_refrigerator_model,control_electronics_version,calibration_timestamp,error_rate,max_circuit_depth,software_stack,operating_status,last_maintenance,maintenance_engineer,uptime_hours,power_consumption_kw,location_building,location_room,notes,created_by,create_timestamp,updated_by,update_timestamp) VALUES (1,QSYS001,20200115,IBM,27,80.5,99.7,10.0,ModelX1,CtrlV1,20251101,0.001,1500,Qiskit,Active,20251101,EngA,1200.5,5.2,PhysicsBldg,Room101,InitialInstall,Admin,20251101,Admin,20251101);
INSERT INTO quantum_computing_log (log_id,system_id,install_date,vendor,qubit_count,coherence_time_us,gate_fidelity,cryogenic_temp_mk,dilution_refrigerator_model,control_electronics_version,calibration_timestamp,error_rate,max_circuit_depth,software_stack,operating_status,last_maintenance,maintenance_engineer,uptime_hours,power_consumption_kw,location_building,location_room,notes,created_by,create_timestamp,updated_by,update_timestamp) VALUES (2,QSYS002,20210320,Google,54,120.0,99.9,8.5,ModelY2,CtrlV2,20251102,0.0008,2000,Clifford,Active,20251102,EngB,2400.0,7.0,CompSciBldg,Room202,UpgradedFirmware,Admin,20251102,Admin,20251102);
INSERT INTO quantum_computing_log (log_id,system_id,install_date,vendor,qubit_count,coherence_time_us,gate_fidelity,cryogenic_temp_mk,dilution_refrigerator_model,control_electronics_version,calibration_timestamp,error_rate,max_circuit_depth,software_stack,operating_status,last_maintenance,maintenance_engineer,uptime_hours,power_consumption_kw,location_building,location_room,notes,created_by,create_timestamp,updated_by,update_timestamp) VALUES (3,QSYS003,20220705,Rigetti,32,95.0,99.5,9.0,ModelZ3,CtrlV3,20251103,0.0012,1800,Forest,Maintenance,20251103,EngC,800.0,4.5,EngineeringBldg,Room303,CalibrationNeeded,Admin,20251103,Admin,20251103);

-- Nanomaterials inventory registry
CREATE TABLE nanomaterials_inventory (
    material_id INTEGER PRIMARY KEY,
    material_name TEXT NOT NULL,
    chemical_formula TEXT,
    synthesis_method TEXT,
    batch_number TEXT,
    production_date TEXT,
    expiry_date TEXT,
    purity_percent REAL,
    particle_size_nm REAL,
    surface_area_m2g REAL,
    morphology TEXT,
    storage_location TEXT,
    quantity_grams REAL,
    hazard_class TEXT,
    safety_data_sheet TEXT,
    supplier_name TEXT,
    supplier_contact TEXT,
    received_by TEXT,
    received_date TEXT,
    last_inspection TEXT,
    inspector_name TEXT,
    condition_status TEXT,
    notes TEXT,
    created_by TEXT,
    create_timestamp TEXT,
    updated_by TEXT,
    update_timestamp TEXT
);
INSERT INTO nanomaterials_inventory (material_id,material_name,chemical_formula,synthesis_method,batch_number,production_date,expiry_date,purity_percent,particle_size_nm,surface_area_m2g,morphology,storage_location,quantity_grams,hazard_class,safety_data_sheet,supplier_name,supplier_contact,received_by,received_date,last_inspection,inspector_name,condition_status,notes,created_by,create_timestamp,updated_by,update_timestamp) VALUES (1,CarbonNanotube,CNT,ArcDischarge,B001,20240101,20260101,98.5,10.0,500.0,Tubular,ColdRoomA,250.0,Flammable,SDS001,SupplierX,5551234,TechA,20240102,20240115,TechB,Good,InitialStock,Admin,20240115,Admin,20240115);
INSERT INTO nanomaterials_inventory (material_id,material_name,chemical_formula,synthesis_method,batch_number,production_date,expiry_date,purity_percent,particle_size_nm,surface_area_m2g,morphology,storage_location,quantity_grams,hazard_class,safety_data_sheet,supplier_name,supplier_contact,received_by,received_date,last_inspection,inspector_name,condition_status,notes,created_by,create_timestamp,updated_by,update_timestamp) VALUES (2,SilverNanoparticle,Ag,ChemicalReduction,B002,20240210,20260210,99.0,20.0,150.0,Spherical,ColdRoomB,120.0,Toxic,SDS002,SupplierY,5555678,TechC,20240212,20240220,TechD,Good,QualityChecked,Admin,20240220,Admin,20240220);
INSERT INTO nanomaterials_inventory (material_id,material_name,chemical_formula,synthesis_method,batch_number,production_date,expiry_date,purity_percent,particle_size_nm,surface_area_m2g,morphology,storage_location,quantity_grams,hazard_class,safety_data_sheet,supplier_name,supplier_contact,received_by,received_date,last_inspection,inspector_name,condition_status,notes,created_by,create_timestamp,updated_by,update_timestamp) VALUES (3,GrapheneOxide,GO,Exfoliation,B003,20240305,20260305,97.0,5.0,300.0,Layered,ColdRoomC,80.0,Corrosive,SDS003,SupplierZ,5559876,TechE,20240307,20240315,TechF,Good,StoredDry,Admin,20240315,Admin,20240315);

-- Bioinformatics dataset catalog
CREATE TABLE bioinformatics_dataset (
    dataset_id INTEGER PRIMARY KEY,
    dataset_name TEXT NOT NULL,
    organism TEXT,
    data_type TEXT,
    accession_number TEXT,
    release_date TEXT,
    version TEXT,
    file_format TEXT,
    file_size_gb REAL,
    number_of_samples INTEGER,
    sequencing_technology TEXT,
    coverage_x REAL,
    assembly_version TEXT,
    annotation_source TEXT,
    submitted_by TEXT,
    submission_date TEXT,
    last_updated TEXT,
    curator TEXT,
    access_restriction TEXT,
    doi TEXT,
    publication_reference TEXT,
    notes TEXT,
    created_by TEXT,
    create_timestamp TEXT,
    updated_by TEXT,
    update_timestamp TEXT
);
INSERT INTO bioinformatics_dataset (dataset_id,dataset_name,organism,data_type,accession_number,release_date,version,file_format,file_size_gb,number_of_samples,sequencing_technology,cov...
INSERT INTO bioinformatics_dataset (dataset_id,dataset_name,organism,data_type,accession_number,release_date,version,file_format,file_size_gb,number_of_samples,sequencing_technology,cov...
INSERT INTO bioinformatics_dataset (dataset_id,dataset_name,organism,data_type,accession_number,release_date,version,file_format,file_size_gb,number_of_samples,sequencing_technology,cov...
[Due to message length constraints, continue in next part.]