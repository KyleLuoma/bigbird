-- Interstellar Communication Hub
CREATE TABLE interstellar_communication_hub
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    hub_name               TEXT,
    location_city          TEXT,
    location_planet        TEXT,
    establishment_year    INTEGER,
    capacity_tb            INTEGER,
    operational_status    TEXT,
    frequency_range_mhz    INTEGER,
    antenna_count          INTEGER,
    staff_count            INTEGER,
    director_name          TEXT,
    contact_email          TEXT,
    security_level         TEXT,
    power_source           TEXT,
    redundancy_level       TEXT,
    maintenance_window     TEXT,
    backup_generator       TEXT,
    last_inspection_date   DATE,
    uptime_percentage      INTEGER,
    notes                  TEXT
);
INSERT INTO interstellar_communication_hub VALUES (1,'AlphaHub','New Eden','Xenon','2125',5000,'Active',2200,42,120,'Dr Selene Ray','contact@alphahub.com','Level3','Fusion','High','Weekly','GenX-2000','2129-07-15',99,'Primary gateway');
INSERT INTO interstellar_communication_hub VALUES (2,'BetaRelay','Orion Station','Orion','2130',3200,'Active',1800,30,85,'Lt Cmdr Rho Vega','beta@relay.net','Level2','Solar','Medium','Monthly','GenX-1500','2131-03-22',97,'Secondary node');
INSERT INTO interstellar_communication_hub VALUES (3,'GammaArray','Nova Prime','Nova','2120',4100,'Maintenance',2000,36,100,'Prof Ilya Kor','gamma@array.org','Level4','Antimatter','Very High','Quarterly','GenX-1800','2125-11-05',95,'Array for deep scans');

-- Cosmic Resource Extraction Site
CREATE TABLE cosmic_resource_extraction_site
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    site_name              TEXT,
    planet                 TEXT,
    region                 TEXT,
    resource_type          TEXT,
    estimated_reserves_mt  INTEGER,
    extraction_method      TEXT,
    operational_since_year INTEGER,
    staff_on_site          INTEGER,
    safety_rating          TEXT,
    environmental_impact_score INTEGER,
    ownership_entity       TEXT,
    licensing_status       TEXT,
    daily_output_tons      INTEGER,
    energy_consumption_mwh INTEGER,
    waste_generated_tons   INTEGER,
    remote_monitoring_enabled TEXT,
    last_report_date       DATE,
    compliance_audit_passed TEXT,
    comments               TEXT
);
INSERT INTO cosmic_resource_extraction_site VALUES (1,'Helios Mine','Ares','Northern Basin','Helium-3',12000,'Vacuum Drilling',2115,250,'A','45','Helios Corp','Approved',1800,2600,300,'Yes','2124-06-30','Yes','Key supplier for orbital fuel');
INSERT INTO cosmic_resource_extraction_site VALUES (2,'Luna Quarry','Luna','South Ridge','Regolith',8000,'Robotic Excavation',2120,180,'B','30','Lunar Ventures','Pending',1200,1800,150,'Yes','2125-09-12','No','Awaiting final license');
INSERT INTO cosmic_resource_extraction_site VALUES (3,'Titanic Harvest','Titan','Cryo Plains','Methane',15000,'Thermal Sublimation',2122,300,'A','40','Titan Harvest Ltd','Approved',2100,3000,400,'No','2126-01-18','Yes','Supports deep space habitats');

-- Multiverse Governance Body
CREATE TABLE multiverse_governance_body
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    body_name              TEXT,
    jurisdiction_scope     TEXT,
    member_count           INTEGER,
    chairperson_name       TEXT,
    founding_year          INTEGER,
    budget_million_usd     INTEGER,
    meeting_frequency      TEXT,
    decision_threshold     TEXT,
    official_language      TEXT,
    headquarters_city      TEXT,
    headquarters_planet    TEXT,
    is_active              TEXT,
    secretariat_head       TEXT,
    online_portal_url      TEXT,
    transparency_score     INTEGER,
    publication_cycle      TEXT,
    last_meeting_date      DATE,
    next_election_year     INTEGER,
    charter_document_hash  TEXT,
    notes                  TEXT
);
INSERT INTO multiverse_governance_body VALUES (1,'Council of Realms','All Known Universes',125,'Lord Arcturus',2100,350,'Quarterly','TwoThirds','Universal','Atrium','Core','Yes','Archivist Selene','council.universe.org',88,'Annual','2129-11-20',2135,'AB12CD34EF56','Primary legislative body');
INSERT INTO multiverse_governance_body VALUES (2,'Synod of Dimensions','Parallel Dimensions',78,'Chrona Vale',2115,210,'Biannual','SimpleMajority','Dimensional','Nexus','Axis','Yes','Keeper Vort','synod.dim.org',79,'Semiannual','2130-03-10',2140,'CD78EF90AB12','Advisory council');
INSERT INTO multiverse_governance_body VALUES (3,'Assembly of Planes','Extra Planar Entities',45,'Elder Kora',2122,95,'Annual','ThreeQuarters','Planar','Echelon','Aurora','No','Mediator Lyr','assembly.planar.net',65,'Annual','2131-08-05',2138,'EF34AB56CD78','Limited authority');

-- Quantum Transport Network
CREATE TABLE quantum_transport_network
(
    id                       INTEGER NOT NULL PRIMARY KEY,
    network_name             TEXT,
    primary_route            TEXT,
    total_nodes              INTEGER,
    average_latency_ms       INTEGER,
    max_speed_c              INTEGER,
    encryption_level         TEXT,
    regulatory_body          TEXT,
    operational_since        DATE,
    maintenance_cycle_days   INTEGER,
    chief_engineer           TEXT,
    funding_source           TEXT,
    annual_budget_usd        INTEGER,
    incident_reported_last_year INTEGER,
    redundancy_factor        TEXT,
    sustainability_rating    TEXT,
    public_accessible        TEXT,
    user_authentication_method TEXT,
    version_release          TEXT,
    decommissioned_flag      TEXT,
    notes                    TEXT
);
INSERT INTO quantum_transport_network VALUES (1,'Q-Transit','Xenon-Delta','120','15','300000','Quantum','TransReg','2128-04-01',180,'Dr Mira Kline','Interstellar Fund',500,'2','High','A','Yes','Biometric','v3.2','No','Core interstellar corridor');
INSERT INTO quantum_transport_network VALUES (2,'FluxLine','Orion-Alpha','85','20','250000','AES256','FluxAuthority','2130-09-15',210,'Engr Kai Orin','Galactic Bonds',320,'1','Medium','B','No','Token','v2.9','No','Regional cargo transport');
INSERT INTO quantum_transport_network VALUES (3,'NebulaPath','Nova-Prime','60','12','280000','Quantum','Nebula Council','2125-01-20',150,'Lt Cmdr Sel',210,'0','None','A','Yes','Password','v4.0','No','Passenger shuttle network');

-- Astroarchaeology Expedition
CREATE TABLE astroarchaeology_expedition
(
    id                 INTEGER NOT NULL PRIMARY KEY,
    expedition_name    TEXT,
    lead_archaeologist TEXT,
    launch_date        DATE,
    target_planet      TEXT,
    site_coordinates   TEXT,
    artifacts_expected INTEGER,
    team_size          INTEGER,
    funding_agency     TEXT,
    budget_usd         INTEGER,
    equipment_list     TEXT,
    permit_number      TEXT,
    research_focus     TEXT,
    data_storage_location TEXT,
    preliminary_findings TEXT,
    publication_status TEXT,
    media_coverage_level TEXT,
    safety_incident_flag TEXT,
    last_update_date   DATE,
    final_report_url   TEXT,
    notes              TEXT
);
INSERT INTO astroarchaeology_expedition VALUES (1,'Echoes of Luna','Dr Selene Ray','2129-03-12','Luna','45N-30W',150,30,'Lunar Institute',800000,'Drill, Spectrometer','PERM-LO-001','Ancient Catacombs','LunaDataVault','Stone formations','Draft','High','No','2129-08-04','http://luna-reports.org/echoes','First expedition to southern basin');
INSERT INTO astroarchaeology_expedition VALUES (2,'Titanic Relics','Prof Ilya Kor','2130-07-22','Titan','12S-55E',200,40,'Titan Exploration Agency',1200000,'Seismic array, Rover','PERM-TI-112','Cryogenic Fossils','TitanArchive','Ice core anomalies','In Review','Medium','No','2130-12-15','http://titan-research.net/relics','Second season field work');
INSERT INTO astroarchaeology_expedition VALUES (3,'Ares Valley Survey','Lt Cmdr Rho Vega','2131-01-05','Ares','78N-10E',75,25,'Mars Heritage Council',600000,'Ground Penetrating Radar','PERM-AR-078','Martian Settlement','AresDataHub','Ceramic shards','Published','Low','Yes','2131-05-20','http://aresvault.org/survey','Incident: minor equipment loss');

-- Exoplanet Climatology Station
CREATE TABLE exoplanet_climatology_station
(
    id                         INTEGER NOT NULL PRIMARY KEY,
    station_name               TEXT,
    orbiting_planet            TEXT,
    orbital_altitude_km        INTEGER,
    sensor_package             TEXT,
    data_collection_rate_per_hour INTEGER,
    power_source_type          TEXT,
    backup_power_type          TEXT,
    operational_status         TEXT,
    install_date               DATE,
    last_maintenance_date      DATE,
    uptime_percentage          INTEGER,
    data_transmission_bandwidth_mbps INTEGER,
    remote_control_enabled     TEXT,
    principal_scientist        TEXT,
    affiliated_institute       TEXT,
    funding_cycle_year         INTEGER,
    climate_model_version     TEXT,
    archived_data_volume_tb    INTEGER,
    public_access_flag         TEXT,
    notes                      TEXT
);
INSERT INTO exoplanet_climatology_station VALUES (1,'Cetus Station','Cetus-3','6500','Thermal, Spectral, Radiometer',240,'Solar','Battery','Active','2128-05-10','2130-06-15',98,150,'Yes','Dr Mira Kline','Cetus University',2129,'v5.2',320,'Yes','Key station for atmospheric studies');
INSERT INTO exoplanet_climatology_station VALUES (2,'Orion Outpost','Orion-7','7200','Wind, Magnetometer',180,'Nuclear','FuelCell','Active','2129-09-21','2131-02-11',95,120,'Yes','Prof Ilya Kor','Orion Institute',2130,'v4.8',210,'No','Supports deep-space weather modeling');
INSERT INTO exoplanet_climatology_station VALUES (3,'Nova Watch','Nova-1','5800','Radiation, UV',300,'Fusion','Capacitor','Maintenance','2130-03-05','2132-01-20',92,200,'No','Lt Cmdr Rho Vega','Nova Research Center',2131,'v6.0',400,'Yes','Upgraded sensor suite in 2131');

-- Nanotech Manufacturing Facility
CREATE TABLE nanotech_manufacturing_facility
(
    id                               INTEGER NOT NULL PRIMARY KEY,
    facility_name                    TEXT,
    location_city                    TEXT,
    location_country                 TEXT,
    primary_product                  TEXT,
    production_capacity_units_per_day INTEGER,
    cleanroom_class                  TEXT,
    number_of_nano_robots            INTEGER,
    automation_level                 TEXT,
    operating_shift                  TEXT,
    manager_name                     TEXT,
    health_and_safety_certified      TEXT,
    waste_disposal_method            TEXT,
    energy_source                    TEXT,
    carbon_footprint_tons_per_year   INTEGER,
    annual_revenue_usd               INTEGER,
    patents_held                     INTEGER,
    supplier_network_size            INTEGER,
    quality_control_pass_rate       INTEGER,
    last_audit_date                  DATE,
    notes                            TEXT
);
INSERT INTO nanotech_manufacturing_facility VALUES (1,'NanoForge','Neo City','Novus','Medical Nanobots',50000,'Class1',1200,'Full','24/7','Dr Selene Ray','Yes','Recycling','Fusion',150,8500000,42,35,97,'2129-12-01','Leading producer of therapeutic nanobots');
INSERT INTO nanotech_manufacturing_facility VALUES (2,'AtomCraft','Helios Port','Solaris','Carbon Nanotubes',30000,'Class10',800,'High','ShiftA','Lt Cmdr Rho Vega','Yes','Incineration','Solar',90,5600000,27,28,94,'2130-05-18','Specializes in conductive materials');
INSERT INTO nanotech_manufacturing_facility VALUES (3,'QuantumWeave','Titan Station','Titania','Quantum Sensors',20000,'Class100',500,'Medium','ShiftB','Prof Ilya Kor','No','Landfill','Nuclear',120,4100000,15,22,92,'2131-03-22','Experimental line for quantum detection');

-- Interdimensional Trade Agreement
CREATE TABLE interdimensional_trade_agreement
(
    id                           INTEGER NOT NULL PRIMARY KEY,
    agreement_name               TEXT,
    participating_dimens         TEXT,
    start_date                   DATE,
    end_date                     DATE,
    governing_body               TEXT,
    trade_volume_usd             INTEGER,
    tariff_rate_percentage       INTEGER,
    dispute_resolution_mechanism TEXT,
    confidentiality_clause       TEXT,
    renewal_option_years         INTEGER,
    signatory_countries          TEXT,
    oversight_committee          TEXT,
    compliance_status            TEXT,
    amendment_count              INTEGER,
    last_amendment_date          DATE,
    digital_signature_hash       TEXT,
    public_release_flag          TEXT,
    notes                        TEXT
);
INSERT INTO interdimensional_trade_agreement VALUES (1,'Pact of the Nine','DimA,DimB,DimC','2125-01-01','2150-12-31','Interdim Council',750000000,5,'Mediation Panel','None',5,'CountryX,CountryY','Council of Trade','Compliant',3,'2130-07-15','AB12CD34EF56','Yes','Long‑term resource exchange');
INSERT INTO interdimensional_trade_agreement VALUES (2,'Axis Accord','DimD,DimE','2130-06-01','2145-05-30','Axis Authority',430000000,8,'Arbitration Board','Limited','3','CountryZ','Axis Oversight','Pending',1,'2132-02-20','CD78EF90AB12','No','Focused on technology transfer');
INSERT INTO interdimensional_trade_agreement VALUES (3,'Galactic Union Treaty','DimF,DimG,DimH','2128-09-15','2140-09-14','Galactic Union','620000000',6,'Unified Tribunal','Restricted','4','CountryM,CountryN','Union Committee','Compliant',2,'2131-11-05','EF34AB56CD78','Yes','Includes cultural exchange provisions');

-- Bioengineered Species Registry
CREATE TABLE bioengineered_species_registry
(
    id                              INTEGER NOT NULL PRIMARY KEY,
    species_name                    TEXT,
    taxonomy_class                  TEXT,
    genetic_modification_description TEXT,
    creator_institute               TEXT,
    creation_date                   DATE,
    intended_use                    TEXT,
    ethical_approval_status        TEXT,
    containment_level               TEXT,
    average_lifespan_years          INTEGER,
    population_estimate            INTEGER,
    geographic_distribution         TEXT,
    regulatory_agency               TEXT,
    hazard_classification          TEXT,
    monitoring_frequency_days      INTEGER,
    last_inspection_date           DATE,
    data_owner                     TEXT,
    external_collaborators          TEXT,
    publication_reference           TEXT,
    notes                           TEXT
);
INSERT INTO bioengineered_species_registry VALUES (1,'Luminae','Avian','Bioluminescent feathers','Nova Institute','2129-04-20','Illumination','Approved','Level2',12,3400,'Sector Alpha','BioReg Authority','Low','30','2129-12-10','Dr Selene Ray','Dept of Light Studies','DOI-10.1234/luminae','Used in city lighting');
INSERT INTO bioengineered_species_registry VALUES (2,'Tritonox','Aquatic','Metallic scales','Aquaris Labs','2130-08-11','Structural reinforcement','Conditional','Level3',8,1500,'Oceanic Belt','Marine Oversight','Medium','45','2131-03-01','Lt Cmdr Rho Vega','Deep Sea Consortium','DOI-10.5678/tritonox','Deployed in hull plating');
INSERT INTO bioengineered_species_registry VALUES (3,'Gryphonix','Mammal','Enhanced muscle fibers','Terra Genetics','2131-02-05','Heavy lifting','Approved','Level1',15,800, 'Highland Range','Genetic Ethics Board','Low','60','2131-07-22','Prof Ilya Kor','Industrial BioTech Group','DOI-10.9012/gryphonix','Used in construction drones');

-- Dark Energy Observation Campaign
CREATE TABLE dark_energy_observation_campaign
(
    id                       INTEGER NOT NULL PRIMARY KEY,
    campaign_name            TEXT,
    lead_observatory         TEXT,
    start_date               DATE,
    end_date                 DATE,
    instrument_type          TEXT,
    wavelength_range_nm      INTEGER,
    data_volume_tb           INTEGER,
    funding_agency           TEXT,
    principal_investigator  TEXT,
    number_of_collaborating_institutes INTEGER,
    observation_time_hours   INTEGER,
    calibration_method       TEXT,
    data_processing_pipeline TEXT,
    public_data_release_date DATE,
    citation_doi             TEXT,
    results_summary          TEXT,
    peer_review_status       TEXT,
    followup_projects        TEXT,
    notes                    TEXT
);
INSERT INTO dark_energy_observation_campaign VALUES (1,'Eclipse Survey','Nova Observatory','2130-01-01','2132-12-31','Spectrograph',500,1200,'Interstellar Science Fund','Dr Selene Ray',12,8500,'Laser Calibration','PipelineX','2133-06-15','DOI-10.1111/eclipse','Detected subtle fluctuations','Accepted','Void Mapping Initiative','Major contribution to cosmology');
INSERT INTO dark_energy_observation_campaign VALUES (2,'Quantum Void Mapping','Quantum Array','2131-03-15','2133-09-30','Interferometer',300,950,'Quantum Research Council','Lt Cmdr Rho Vega',9,7200,'Quantum Reference','PipelineY','2134-02-20','DOI-10.2222/void','High‑resolution void structure','Under Review','Dark Matter Correlation Study','First of its kind dataset');
INSERT INTO dark_energy_observation_campaign VALUES (3,'Nebula Drift','Helios Space Telescope','2129-07-10','2131-06-20','Imager',700,800,'Helios Funding Agency','Prof Ilya Kor',7,6400,'Standard Stars','PipelineZ','2131-12-05','DOI-10.3333/nebula','Measured nebular expansion rates','Published','Supernova Follow‑up','Supports stellar evolution models');