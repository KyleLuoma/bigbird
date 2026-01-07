-- Planetary Observatory information
CREATE TABLE planetary_observatory (
    id INTEGER PRIMARY KEY,
    observatory_name TEXT,
    planet TEXT,
    latitude_deg REAL,
    longitude_deg REAL,
    elevation_m INTEGER,
    foundation_year INTEGER,
    primary_mirror_diameter_m REAL,
    secondary_mirror_diameter_m REAL,
    instrument_count INTEGER,
    active_status TEXT,
    director_name TEXT,
    contact_email TEXT,
    phone_number TEXT,
    website_url TEXT,
    funding_agency TEXT,
    annual_budget_musd REAL,
    data_archive_location TEXT,
    last_maintenance_date DATE,
    observation_focus TEXT,
    night_shift_staff INTEGER,
    day_shift_staff INTEGER
);

INSERT INTO planetary_observatory VALUES (1,'LunaScope','Moon',0.67,23.45,1500,1998,2.5,0.6,12,'Active','Dr Luna Vega','luna@observatory.org','555-0101','http://lunascape.org','SpaceScienceFund',12.5,'LunaDataCenter','2023-06-15','LunarSurface','8','6');
INSERT INTO planetary_observatory VALUES (2,'MarsPeak','Mars',-4.56,137.44,2100,2005,3.2,0.8,18,'Active','Dr Ares Patel','marspeak@observatory.org','555-0202','http://marspeak.org','InterplanetaryAgency',20.0,'MarsArchive','2023-04-22','Atmospheric','12','9');
INSERT INTO planetary_observatory VALUES (3,'EuropaWatch','Europa',-1.23,45.67,1000,2012,1.8,0.4,9,'Inactive','Dr Europa Kline','europa@observatory.org','555-0303','http://europawatch.org','OceanicResearchCouncil',8.0,'EuropaVault','2022-12-01','IceSurface','5','4');

-- Renewable Energy Farm details
CREATE TABLE renewable_energy_farm (
    id INTEGER PRIMARY KEY,
    farm_name TEXT,
    country TEXT,
    region TEXT,
    latitude REAL,
    longitude REAL,
    farm_type TEXT,
    capacity_mw REAL,
    number_of_turbines INTEGER,
    panel_count INTEGER,
    average_annual_output_mwh REAL,
    commissioning_year INTEGER,
    operator_company TEXT,
    contact_email TEXT,
    phone TEXT,
    grid_connection_point TEXT,
    land_area_hectares REAL,
    environmental_impact_score INTEGER,
    maintenance_contract_vendor TEXT,
    last_audit_date DATE,
    renewable_certification TEXT,
    carbon_offset_tonnes REAL
);

INSERT INTO renewable_energy_farm VALUES (1,'Solaria Plains','USA','Nevada',36.77,-115.04,'Solar',250.5,0,800000,500000,2015,'SunPower Inc','contact@solariaplains.com','555-1111','GridNodeA',3500,85,'EcoMaintain Ltd','2023-01-10','ISO50001',12000.5);
INSERT INTO renewable_energy_farm VALUES (2,'Windridge Heights','Denmark','Jutland',56.12,9.55,'Wind',180.0,75,0,640000,2018,'NordicWind','info@windridge.dk','555-2222','GridNodeB',4200,78,'WindServ Co','2022-11-20','VERRA',9500.3);
INSERT INTO renewable_energy_farm VALUES (3,'HydroCascade','Canada','British Columbia',51.28,-123.12,'Hydro',95.3,0,0,420000,2020,'CascadeHydro','support@hydrocascade.ca','555-3333','GridNodeC',2100,92,'AquaMaint','2023-05-05','RenewableHydro',7300.0);

-- Interstellar Trade Route registry
CREATE TABLE interstellar_trade_route (
    route_id INTEGER PRIMARY KEY,
    route_name TEXT,
    origin_system TEXT,
    destination_system TEXT,
    distance_ly REAL,
    typical_cargo_type TEXT,
    security_level TEXT,
    governing_body TEXT,
    established_year INTEGER,
    route_status TEXT,
    max_ship_size_m REAL,
    average_transit_days REAL,
    customs_agency TEXT,
    frequency_per_month INTEGER,
    insurance_provider TEXT,
    hazard_rating INTEGER,
    navigation_aid_type TEXT,
    last_incident_date DATE,
    cargo_volume_tonnes_month REAL,
    revenue_million_credits REAL,
    regulatory_compliance TEXT,
    notes TEXT
);

INSERT INTO interstellar_trade_route VALUES (1,'Silicon Corridor','AlphaCentauri','ProximaCentauri',4.37,'Minerals','High','GalacticTradeUnion',2120,'Active',1200,14,'Centauri Customs',22,'StellarInsure',3,'QuantumBeacon','2022-08-17',8500,45.2,'Compliant','Primary route for rare earths');
INSERT INTO interstellar_trade_route VALUES (2,'Nebula Stream','Vega','Sirius',25.4,'LuxuryGoods','Medium','InterstellarCouncil',2095,'Active',800,7,'Vega Customs',15,'NebulaShield',2,'LaserLattice','2023-03-02',4200,30.1,'Compliant','Seasonal spikes during festivals');
INSERT INTO interstellar_trade_route VALUES (3,'Void Express','Orion','Andromeda',2.5,'DataPackets','Low','VoidRegulation',2150,'Planned',500,1,'Orion Authority',60,'VoidCover',1,'QuantumRelay','1900-01-01',0,0,'Pending','Experimental high‑speed corridor');

-- Biotech Research Study catalog
CREATE TABLE biotech_research_study (
    study_id INTEGER PRIMARY KEY,
    study_title TEXT,
    lead_investigator TEXT,
    institution TEXT,
    start_date DATE,
    end_date DATE,
    phase TEXT,
    target_disease TEXT,
    therapy_type TEXT,
    enrollment_target INTEGER,
    actual_enrollment INTEGER,
    funding_source TEXT,
    total_budget_usd REAL,
    ethical_approval_status TEXT,
    data_sharing_policy TEXT,
    publication_journal TEXT,
    result_summary TEXT,
    adverse_event_count INTEGER,
    trial_status TEXT,
    site_count INTEGER,
    primary_outcome_measure TEXT,
    secondary_outcome_measure TEXT
);

INSERT INTO biotech_research_study VALUES (1,'CRISPR Immunotherapy','Dr Maya Lin','GenTech Institute','2021-05-01','2024-04-30','PhaseII','Melanoma','GeneEdit','120','115','HealthInnovate Fund',25.5,'Approved','OpenAccess','MedicalGenetics','Significant tumor reduction','2','Completed','5','Overall Survival','Progression-Free Survival');
INSERT INTO biotech_research_study VALUES (2,'RNA Vaccine Booster','Dr Omar Hassan','VaxBio Labs','2022-01-15','2025-12-31','PhaseIII','Influenza','mRNA','2000','1985','GlobalHealth Alliance',150.0,'Approved','Restricted','VaccineJournal','Broad immunity across strains','5','Ongoing','12','Seroconversion Rate','Adverse Reaction Frequency');
INSERT INTO biotech_research_study VALUES (3,'Microbiome Metabolism Study','Dr Elena Rossi','MicroLife Center','2020-09-10','2023-09-09','PhaseI','Obesity','Probiotic','80','78','EcoHealth Grant',8.2,'Approved','Closed','NutritionScience','Improved metabolic markers','0','Completed','3','BMI Reduction','Gut Flora Diversity');

-- Quantum Computing Cluster inventory
CREATE TABLE quantum_computing_cluster (
    cluster_id INTEGER PRIMARY KEY,
    cluster_name TEXT,
    location_city TEXT,
    location_country TEXT,
    num_qubits INTEGER,
    processor_type TEXT,
    cooling_method TEXT,
    operational_since_year INTEGER,
    firmware_version TEXT,
    maintenance_vendor TEXT,
    uptime_percentage REAL,
    power_consumption_kw REAL,
    supported_languages TEXT,
    security_certification TEXT,
    budget_usd REAL,
    head_scientist TEXT,
    partner_institutions TEXT,
    largest_problem_solved TEXT,
    average_job_queue_time_minutes REAL,
    total_jobs_processed INTEGER,
    funding_agency TEXT,
    public_access_status TEXT
);

INSERT INTO quantum_computing_cluster VALUES (1,'Q-Alpha','Zurich','Switzerland',112,'Superconducting','DilutionRefrigerator',2019,'v2.3.1','QuantumServ Ltd',99.2,350,'Qiskit,OpenQASM','ISO27001',12.0,'Prof Dr Hans Keller','ETH Zurich;IBM','Optimization of logistics network',5.4,120000,'SwissScienceFund','Restricted');
INSERT INTO quantum_computing_cluster VALUES (2,'Q-Beta','Tokyo','Japan',256,'TrappedIon','Cryogenic','2021','v1.9.0','NanotechMaint','98.7',480,'Cirq,OpenQASM','ISO27001',18.5,'Dr Yuki Sato','University of Tokyo;Google','Molecular simulation of protein folding',7.2,85000,'JSPS','Open');
INSERT INTO quantum_computing_cluster VALUES (3,'Q-Gamma','Boston','USA',64,'Photonic','RoomTemp','2020','v3.0.0','PhotonixCare','97.5',210,'Forest','SOC2','10.0','Dr Alice Monroe','MIT;Harvard','Financial risk analysis model',4.9,50000,'NSF','Restricted');

-- Cosmic Anomaly Log
CREATE TABLE cosmic_anomaly_log (
    anomaly_id INTEGER PRIMARY KEY,
    anomaly_name TEXT,
    discovery_date DATE,
    discovered_by TEXT,
    celestial_body TEXT,
    anomaly_type TEXT,
    magnitude REAL,
    duration_days INTEGER,
    observation_instrument TEXT,
    wavelength_range_nm TEXT,
    associated_event TEXT,
    data_volume_tb REAL,
    follow_up_mission TEXT,
    status TEXT,
    risk_assessment_level INTEGER,
    potential_impact TEXT,
    comments TEXT,
    latitude_deg REAL,
    longitude_deg REAL,
    distance_ly REAL,
    archival_location TEXT
);

INSERT INTO cosmic_anomaly_log VALUES (1,'Gamma Flare X1','2022-11-03','Dr Lila Chen','NGC 253','GammaRayBurst',9.5,2,'SpaceGamma Telescope','100-500','Star formation burst',1.2,'Mission Gamma-2','Confirmed',4,'High Energy Emission','No immediate threat','-12.34','45.67',11.2,'GammaArchive1');
INSERT INTO cosmic_anomaly_log VALUES (2,'Dark Matter Lens','2021-07-19','Prof Marco Rossi','Abell 1689','GravitationalLensing',7.8,0,'DeepSpace LensCam','400-800','Potential dark matter mapping',0.9,'LensProbe','Pending',3,'Scientific Insight','Requires further spectroscopy','-23.45','78.90',1.3,'LensArchiveA');
INSERT INTO cosmic_anomaly_log VALUES (3,'Fast Radio Burst FRB-2020B','2020-03-12','Dr Nina Patel','Milky Way','FastRadioBurst',5.2,0,'RadioArray X','300-1500','Unknown origin',0.4,'FRB Followup','Confirmed',2,'Low','Observed in multiple bands','-5.67','12.34',0.02','FRBArchive');

-- Mythic Artifact Registry
CREATE TABLE mythic_artifact_registry (
    artifact_id INTEGER PRIMARY KEY,
    artifact_name TEXT,
    origin_culture TEXT,
    discovery_site TEXT,
    discovery_year INTEGER,
    material_composition TEXT,
    estimated_age_years INTEGER,
    current_location TEXT,
    custodian_institution TEXT,
    legal_status TEXT,
    acquisition_method TEXT,
    valuation_usd REAL,
    preservation_status TEXT,
    display_status TEXT,
    last_exhibited_year INTEGER,
    related_legends TEXT,
    dimensions_cm TEXT,
    weight_kg REAL,
    conservation_notes TEXT,
    public_accessibility TEXT,
    loan_history_summary TEXT,
    insurance_policy_number TEXT
);

INSERT INTO mythic_artifact_registry VALUES (1,'Aegis of Anubis','Ancient Egypt','Giza Plateau',1923,'Gold, Lapis Lazuli','4500','Egyptian Museum','Egyptian Ministry of Culture','Protected','Excavation','12,000,000','Excellent','OnDisplay',2018,'Guardian of the Afterlife','150x80x60',35.5,'Regular climate control','Yes','Loaned to Louvre 2019','INS-EE-001');
INSERT INTO mythic_artifact_registry VALUES (2,'Sun Stone of Tiwanaku','Pre-Columbian','Tiwanaku Ruins',1912,'Stone, Quartz','800','National Museum of Bolivia','Bolivia National Heritage','Protected','Donation','3,500,000','Good','Stored',0,'Creation myth of the Sun','120x120x30',22.0,'Periodic cleaning','Limited','Exhibited in Berlin 2020','INS-BO-023');
INSERT INTO mythic_artifact_registry VALUES (3,'Dragon Crown','Mythical','Unknown','0','Mythic Alloy','Infinity','Vault of the Arcane','Arcane Council','Classified','Recovered','N/A','Unknown','Restricted',0,'Legends of Sky Dominion','200x150x80',120.0,'Enchanted preservation','No','Never loaned','ARC-DRG-999');

-- AI Model Deployment Log
CREATE TABLE ai_model_deployment (
    deployment_id INTEGER PRIMARY KEY,
    model_name TEXT,
    version TEXT,
    developer_team TEXT,
    deployment_date DATE,
    environment TEXT,
    serving_framework TEXT,
    compute_instance_type TEXT,
    cpu_cores INTEGER,
    gpu_count INTEGER,
    memory_gb INTEGER,
    storage_gb INTEGER,
    avg_latency_ms REAL,
    throughput_qps REAL,
    error_rate_percent REAL,
    monitoring_tool TEXT,
    alert_thresholds TEXT,
    compliance_certification TEXT,
    business_unit TEXT,
    SLA_uptime_percent REAL,
    cost_per_hour_usd REAL,
    responsible_owner TEXT,
    deprecation_date DATE
);

INSERT INTO ai_model_deployment VALUES (1,'VisionX','1.4.2','ComputerVisionTeam','2023-02-15','Production','TensorFlow Serving','c5.4xlarge',16,2,64,500,45.3,250.0,0.15,'Prometheus','Latency>100ms:Alert','ISO27001','MediaAnalytics','99.9',3.75,'Dr Eva Gomez','2025-12-31');
INSERT INTO ai_model_deployment VALUES (2,'LangPredict','3.0.0','NLPGroup','2022-11-01','Staging','TorchServe','g4dn.xlarge',8,1,32,250,78.9,120.5,0.30,'Grafana','ErrorRate>1%:Alert','SOC2','CustomerSupport','99.5',2.10,'Ms Lina Patel','2024-06-30');
INSERT INTO ai_model_deployment VALUES (3,'RiskScore','0.9.5','FinanceAI','2023-07-20','Production','ONNX Runtime','m5.2xlarge',8,0,32,200,22.1,500.0,0.05,'DataDog','Throughput<100qps:Alert','ISO9001','RiskManagement','99.95',4.00,'Mr Alex Wu','2026-03-31');

-- Urban Transport Hub database
CREATE TABLE urban_transport_hub (
    hub_id INTEGER PRIMARY KEY,
    hub_name TEXT,
    city TEXT,
    country TEXT,
    hub_type TEXT,
    latitude REAL,
    longitude REAL,
    opening_year INTEGER,
    operator_company TEXT,
    number_of_platforms INTEGER,
    daily_passenger_capacity INTEGER,
    average_daily_passengers INTEGER,
    number_of_lines_served INTEGER,
    connectivity_rating INTEGER,
    parking_spaces INTEGER,
    bicycle_racks INTEGER,
    accessibility_features TEXT,
    security_staff_count INTEGER,
    emergency_exits INTEGER,
    WiFi_coverage_percent INTEGER,
    retail_space_sqm REAL,
    annual_maintenance_budget_usd REAL,
    sustainability_score INTEGER
);

INSERT INTO urban_transport_hub VALUES (1,'Central Station','Berlin','Germany','Station',52.525,13.369,1896,'Deutsche Bahn',12,80000,75000,6,9,1500,300,'Elevators,Escalators,AudioGuides',120,8,95,3500,12.5,88);
INSERT INTO urban_transport_hub VALUES (2,'Harbor Terminal','Sydney','Australia','Terminal',-33.864,151.209,1975,'Transport NSW',8,50000,46000,4,7,800,200,'WheelchairAccess,Ramps',90,5,90,2100,8.0,81);
INSERT INTO urban_transport_hub VALUES (3,'Metro Hub','Tokyo','Japan','Station',35.681,139.767,1914,'Tokyo Metro',15,120000,115000,9,10,2000,500,'TactilePaving,SignLanguageDisplays',150,10,98,4200,20.3,94);

-- Archaeological Site Record
CREATE TABLE archaeological_site_record (
    site_id INTEGER PRIMARY KEY,
    site_name TEXT,
    country TEXT,
    region TEXT,
    coordinates_lat REAL,
    coordinates_long REAL,
    discovery_year INTEGER,
    lead_archaeologist TEXT,
    period TEXT,
    primary_findings TEXT,
    site_area_hectares REAL,
    excavation_status TEXT,
    funding_agency TEXT,
    total_grants_usd REAL,
    number_of_publications INTEGER,
    UNESCO_world_heritage_status TEXT,
    visitor_accessibility TEXT,
    onsite_museum_present TEXT,
    conservation_plan_version TEXT,
    last_conservation_date DATE,
    threats_identified TEXT,
    collaborative_institutions TEXT,
    digital_archive_url TEXT
);

INSERT INTO archaeological_site_record VALUES (1,'Göbekli Tepe','Turkey','Southeastern Anatolia',37.223,38.921,1994,'Dr Mehmet Öz','Pre-Pottery Neolithic','T-shaped pillars, stone circles',0.5,'Ongoing','European Research Council',4.5,12,'Inscribed','Limited','Yes','v2.1','2022-09-15','Erosion, Looting','University of Berlin;Oxford Archaeology','http://gobeklitepe.archive.org');
INSERT INTO archaeological_site_record VALUES (2,'Machu Picchu','Peru','Cusco Region',-13.163, -72.545,1911,'Dr Hiram Bingham','Inca Empire','Terraced fields, Temple of the Sun',32.0,'Completed','National Council of Culture',12.0,45,'Inscribed','Moderate','Yes','v3.0','2023-03-02','Weathering, Visitor Impact','Harvard University;Cambridge Archaeology','http://machupicchu.digital.org');
INSERT INTO archaeological_site_record VALUES (3,'Terracotta Army','China','Shaanxi',34.384,109.278,1973,'Dr Zhu Dan','Qin Dynasty','Life-size clay soldiers',8.0,'Ongoing','Chinese Academy of Sciences',18.0,30,'NotInscribed','High','No','v1.5','2021-11-20','Soil Salinity, Flooding','University of Tokyo;Stanford Archaeology','http://terracotta.digital.cn');
