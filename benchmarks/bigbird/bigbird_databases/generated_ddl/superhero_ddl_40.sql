-- Interstellar Mission Log
CREATE TABLE interstellar_mission_log
(
    mission_id               INTEGER NOT NULL PRIMARY KEY,
    mission_name             TEXT,
    launch_date              TEXT,
    arrival_date             TEXT,
    departure_planet_id      INTEGER,
    destination_planet_id    INTEGER,
    commander_name           TEXT,
    crew_size                INTEGER,
    spacecraft_name          TEXT,
    propulsion_type          TEXT,
    mission_status           TEXT,
    budget_million_usd       REAL,
    scientific_objectives    TEXT,
    payload_mass_kg          REAL,
    crew_experience_years    REAL,
    safety_rating            INTEGER,
    communication_band       TEXT,
    radiation_shielding_level INTEGER,
    mission_duration_days    INTEGER,
    final_report_url         TEXT
);

INSERT INTO interstellar_mission_log (mission_id,mission_name,launch_date,arrival_date,departure_planet_id,destination_planet_id,commander_name,crew_size,spacecraft_name,propulsion_type,mission_status,budget_million_usd,scientific_objectives,payload_mass_kg,crew_experience_years,safety_rating,communication_band,radiation_shielding_level,mission_duration_days,final_report_url) VALUES (1,'VoyagerX','2035-04-12','2037-09-03',101,202,'Dr Selene Nova',12,'Starlight Cruiser','WarpDrive','Completed',850.5,'Exoplanet Survey',32000,15.2,9,'XBand',4,820,'http://reports.example.com/voyagerx.pdf');
INSERT INTO interstellar_mission_log (mission_id,mission_name,launch_date,arrival_date,departure_planet_id,destination_planet_id,commander_name,crew_size,spacecraft_name,propulsion_type,mission_status,budget_million_usd,scientific_objectives,payload_mass_kg,crew_experience_years,safety_rating,communication_band,radiation_shielding_level,mission_duration_days,final_report_url) VALUES (2,'Aurora',2038-01-05,2039-06-14,103,204,'Cmdr Orion Pax',8,'Aurora One','IonThruster','Aborted',420.0,'Asteroid Mining Feasibility',15000,9.8,6,'KaBand',3,530,'http://reports.example.com/aurora.pdf');
INSERT INTO interstellar_mission_log (mission_id,mission_name,launch_date,arrival_date,departure_planet_id,destination_planet_id,commander_name,crew_size,spacecraft_name,propulsion_type,mission_status,budget_million_usd,scientific_objectives,payload_mass_kg,crew_experience_years,safety_rating,communication_band,radiation_shielding_level,mission_duration_days,final_report_url) VALUES (3,'Eclipse',2040-07-21,2042-02-11,110,215,'Lt Mira Reyes',15,'Eclipse Vanguard','FusionPulse','Ongoing',970.2,'Deep Space Probe Deployment',42000,13.5,8,'SBand',5,580,'http://reports.example.com/eclipse.pdf');

-- Alien Species Registry
CREATE TABLE alien_species_registry
(
    species_id                INTEGER NOT NULL PRIMARY KEY,
    common_name               TEXT,
    scientific_name           TEXT,
    homeworld_planet_id       INTEGER,
    average_lifespan_years    REAL,
    classification            TEXT,
    diet_type                 TEXT,
    intelligence_rating       INTEGER,
    morphology_description    TEXT,
    first_contact_date        TEXT,
    discovery_team_lead       TEXT,
    population_estimate       BIGINT,
    known_technology_level    TEXT,
    threat_level              INTEGER,
    diplomatic_status         TEXT,
    language_name             TEXT,
    communication_method      TEXT,
    symbiosis_type            TEXT,
    habitat_type              TEXT,
    conservation_status       TEXT
);

INSERT INTO alien_species_registry (species_id,common_name,scientific_name,homeworld_planet_id,average_lifespan_years,classification,diet_type,intelligence_rating,morphology_description,first_contact_date,discovery_team_lead,population_estimate,known_technology_level,threat_level,diplomatic_status,language_name,communication_method,symbiosis_type,habitat_type,conservation_status) VALUES (101,'Glintlings','Luminaria iridescens',301,120.5,'Sentient','Omnivore',9,'Bioluminescent quadrupeds',2150-03-12,'Dr Kira Selk',2500000,'Advanced','Low','Friendly','Glintic','Light Pulses','Mutualistic','Forests','Protected');
INSERT INTO alien_species_registry (species_id,common_name,scientific_name,homeworld_planet_id,average_lifespan_years,classification,diet_type,intelligence_rating,morphology_description,first_contact_date,discovery_team_lead,population_estimate,known_technology_level,threat_level,diplomatic_status,language_name,communication_method,symbiosis_type,habitat_type,conservation_status) VALUES (102,'Ravagers','Xenothrax brutalus',402,45.0,'Predator','Carnivore',7,'Armored six‑legged reptiloids',2178-11-05,'Cmdr Dax Roven',800000,'Industrial','High','Hostile','Ravik','Audible Roars','Parasitic','Deserts','Endangered');
INSERT INTO alien_species_registry (species_id,common_name,scientific_name,homeworld_planet_id,average_lifespan_years,classification,diet_type,intelligence_rating,morphology_description,first_contact_date,discovery_team_lead,population_estimate,known_technology_level,threat_level,diplomatic_status,language_name,communication_method,symbiosis_type,habitat_type,conservation_status) VALUES (103,'Void Seeders','Aetheria nullus',510,300.0,'Plantlike','Photosynthetic',5,'Floating spores with etheric tendrils',2195-06-20,'Prof Lian Mores',12000000,'Pre‑Industrial','Medium','Neutral','Seed Tongue','Chemical Diffusion','Commensal','Nebulae','Stable');

-- Quantum Energy Facility Operations
CREATE TABLE quantum_energy_facility_operations
(
    facility_id                  INTEGER NOT NULL PRIMARY KEY,
    facility_name                TEXT,
    location_city                TEXT,
    operational_since_year       INTEGER,
    capacity_gigawatt            REAL,
    current_output_gigawatt      REAL,
    staff_count                  INTEGER,
    safety_incident_count       INTEGER,
    maintenance_cycle_days       INTEGER,
    coolant_type                 TEXT,
    primary_reactor_type         TEXT,
    energy_storage_capacity_mwh  REAL,
    avg_efficiency_percent       REAL,
    regulatory_compliance_status TEXT,
    carbon_footprint_tons_per_year REAL,
    annual_revenue_million_usd   REAL,
    num_active_projects          INTEGER,
    CEO_name                     TEXT,
    funding_source               TEXT,
    last_audit_date              TEXT
);

INSERT INTO quantum_energy_facility_operations (facility_id,facility_name,location_city,operational_since_year,capacity_gigawatt,current_output_gigawatt,staff_count,safety_incident_count,maintenance_cycle_days,coolant_type,primary_reactor_type,energy_storage_capacity_mwh,avg_efficiency_percent,regulatory_compliance_status,carbon_footprint_tons_per_year,annual_revenue_million_usd,num_active_projects,CEO_name,funding_source,last_audit_date) VALUES (1,'Q‑Core Alpha','Nova City',2022,150.0,142.3,320,2,180,'Helium','QuantumFlux','5000',92.5,'Compliant',15.3,420.7,7,'Elena Voss','Government Grant','2025-04-01');
INSERT INTO quantum_energy_facility_operations (facility_id,facility_name,location_city,operational_since_year,capacity_gigawatt,current_output_gigawatt,staff_count,safety_incident_count,maintenance_cycle_days,coolant_type,primary_reactor_type,energy_storage_capacity_mwh,avg_efficiency_percent,regulatory_compliance_status,carbon_footprint_tons_per_year,annual_revenue_million_usd,num_active_projects,CEO_name,funding_source,last_audit_date) VALUES (2,'Q‑Core Beta','Arcadia',2025,200.0,195.9,410,0,150,'Supercritical Water','QuantumLoop','8000',94.2,'Compliant',12.7,610.4,9,'Rashid Khan','Private Equity','2026-08-15');
INSERT INTO quantum_energy_facility_operations (facility_id,facility_name,location_city,operational_since_year,capacity_gigawatt,current_output_gigawatt,staff_count,safety_incident_count,maintenance_cycle_days,coolant_type,primary_reactor_type,energy_storage_capacity_mwh,avg_efficiency_percent,regulatory_compliance_status,carbon_footprint_tons_per_year,annual_revenue_million_usd,num_active_projects,CEO_name,funding_source,last_audit_date) VALUES (3,'Q‑Core Gamma','Lyra Station',2028,250.0,248.5,500,1,210,'Liquid Nitrogen','QuantumCore','12000',95.1,'Pending',9.8,770.9,12,'Mira Lee','International Consortium','2029-02-28');

-- Metahuman Clinic Records
CREATE TABLE metahuman_clinic_records
(
    record_id               INTEGER NOT NULL PRIMARY KEY,
    metahuman_id            INTEGER,
    clinic_name             TEXT,
    visit_date              TEXT,
    attending_physician     TEXT,
    diagnosis_code          TEXT,
    diagnosis_description   TEXT,
    treatment_plan          TEXT,
    medication_prescribed   TEXT,
    dosage_mg               REAL,
    therapy_sessions        INTEGER,
    follow_up_date          TEXT,
    genetic_marker_tested   TEXT,
    mutation_type           TEXT,
    power_assessment_score  INTEGER,
    risk_level              TEXT,
    insurance_provider      TEXT,
    claim_number            TEXT,
    billing_amount_usd      REAL,
    discharge_status        TEXT
);

INSERT INTO metahuman_clinic_records (record_id,metahuman_id,clinic_name,visit_date,attending_physician,diagnosis_code,diagnosis_description,treatment_plan,medication_prescribed,dosage_mg,therapy_sessions,follow_up_date,genetic_marker_tested,mutation_type,power_assessment_score,risk_level,insurance_provider,claim_number,billing_amount_usd,discharge_status) VALUES (1,1001,'Arcane Health','2040-05-12','Dr Selwyn Hart','M-101','Regenerative Overload','Cryogenic Stabilization','NeuroCalm',50,5,'2040-06-12','MarkerX','TypeA',87,'Medium','MetroCare','CLM123456',1500.00,'Recovered');
INSERT INTO metahuman_clinic_records (record_id,metahuman_id,clinic_name,visit_date,attending_physician,diagnosis_code,diagnosis_description,treatment_plan,medication_prescribed,dosage_mg,therapy_sessions,follow_up_date,genetic_marker_tested,mutation_type,power_assessment_score,risk_level,insurance_provider,claim_number,billing_amount_usd,discharge_status) VALUES (2,1002,'Starlight Medica','2041-03-08','Dr Aisha Noor','M-202','Photonic Burn','Laser Therapy','DermalShield',30,3,'2041-04-08','MarkerY','TypeB',74,'Low','GlobalHealth','CLM789012',900.00,'Stabilized');
INSERT INTO metahuman_clinic_records (record_id,metahuman_id,clinic_name,visit_date,attending_physician,diagnosis_code,diagnosis_description,treatment_plan,medication_prescribed,dosage_mg,therapy_sessions,follow_up_date,genetic_marker_tested,mutation_type,power_assessment_score,risk_level,insurance_provider,claim_number,billing_amount_usd,discharge_status) VALUES (3,1003,'Nimbus Clinic','2042-11-21','Dr Victor Lai','M-303','Gravity Flux','Magnetic Field Realignment','Gravitol',45,4,'2042-12-21','MarkerZ','TypeC',92,'High','HealthPlus','CLM345678',2100.00,'Under Observation');

-- Galactic Trade Route Agreements
CREATE TABLE galactic_trade_route_agreements
(
    agreement_id                 INTEGER NOT NULL PRIMARY KEY,
    route_name                   TEXT,
    originating_system_id        INTEGER,
    destination_system_id        INTEGER,
    signing_date                 TEXT,
    expiry_date                  TEXT,
    governing_body               TEXT,
    trade_volume_yearly_units    BIGINT,
    tariff_rate_percent          REAL,
    commodities_allowed          TEXT,
    security_protocol            TEXT,
    arbitration_mechanism        TEXT,
    involved_factions            TEXT,
    confidentiality_clause       TEXT,
    amendment_count              INTEGER,
    last_amendment_date          TEXT,
    trade_balance_million_credits REAL,
    compliance_audit_status      TEXT,
    trade_route_rating           INTEGER,
    dispute_history_summary      TEXT,
    digital_copy_hash            TEXT
);

INSERT INTO galactic_trade_route_agreements (agreement_id,route_name,originating_system_id,destination_system_id,signing_date,expiry_date,governing_body,trade_volume_yearly_units,tariff_rate_percent,commodities_allowed,security_protocol,arbitration_mechanism,involved_factions,confidentiality_clause,amendment_count,last_amendment_date,trade_balance_million_credits,compliance_audit_status,trade_route_rating,dispute_history_summary,digital_copy_hash) VALUES (1,'Silk Corridor',501,602,'2090-02-15','2150-02-15','Interstellar Council',1250000000,2.5,'Textiles,Spices', 'Quantum Encryption','Mediation Panel','FactionA,FactionB','Tier1','3','2135-07-01',12.5,'Pass','8','Minor disputes resolved','AB12CD34EF56');
INSERT INTO galactic_trade_route_agreements (agreement_id,route_name,originating_system_id,destination_system_id,signing_date,expiry_date,governing_body,trade_volume_yearly_units,tariff_rate_percent,commodities_allowed,security_protocol,arbitration_mechanism,involved_factions,confidentiality_clause,amendment_count,last_amendment_date,trade_balance_million_credits,compliance_audit_status,trade_route_rating,dispute_history_summary,digital_copy_hash) VALUES (2,'Nebula Exchange',703,804,'2105-09-30','2175-09-30','Unified Trade Authority',980000000,3.0,'Metals,Alloys', 'Photon Shields','Star Court','FactionC,FactionD','Tier2','1','2120-11-12',-4.3,'Conditional','7','One breach settlement','CD34EF56AB12');
INSERT INTO galactic_trade_route_agreements (agreement_id,route_name,originating_system_id,destination_system_id,signing_date,expiry_date,governing_body,trade_volume_yearly_units,tariff_rate_percent,commodities_allowed,security_protocol,arbitration_mechanism,involved_factions,confidentiality_clause,amendment_count,last_amendment_date,trade_balance_million_credits,compliance_audit_status,trade_route_rating,dispute_history_summary,digital_copy_hash) VALUES (3,'Quantum Bridge',905,1006,'2112-06-18','2182-06-18','Galactic Senate',1500000000,1.8,'Energy Crystals,Data', 'Entangle Guard','Nebula Tribunal','FactionE,FactionF','Tier0','2','2140-03-20',23.1,'Pass','9','No disputes','EF56AB12CD34');

-- Cosmic Event Observation Log
CREATE TABLE cosmic_event_observation_log
(
    event_id               INTEGER NOT NULL PRIMARY KEY,
    event_name             TEXT,
    event_type             TEXT,
    detection_date         TEXT,
    observed_by_observatory TEXT,
    wavelength_range_nm    TEXT,
    peak_intensity_watts   REAL,
    duration_seconds       BIGINT,
    distance_light_years   REAL,
    associated_objects     TEXT,
    scientific_paper_reference TEXT,
    data_archive_url       TEXT,
    confidence_level       INTEGER,
    public_announcement_date TEXT,
    funding_agency         TEXT,
    lead_scientist         TEXT,
    instrument_used        TEXT,
    observation_conditions TEXT,
    follow_up_mission_id   INTEGER,
    remarks                TEXT
);

INSERT INTO cosmic_event_observation_log (event_id,event_name,event_type,detection_date,observed_by_observatory,wavelength_range_nm,peak_intensity_watts,duration_seconds,distance_light_years,associated_objects,scientific_paper_reference,data_archive_url,confidence_level,public_announcement_date,funding_agency,lead_scientist,instrument_used,observation_conditions,follow_up_mission_id,remarks) VALUES (1,'GRB210419A','Gamma Ray Burst','2021-04-19','Vega Array','10-1000','3.2e45','45','12.5','Galaxy XJ-23','doi:10.1234/astro.2021.001','http://archive.example.com/grb210419a','95','2021-04-21','Space Research Fund','Dr Lena Ortiz','Gamma Spectrometer','Clear Sky','301','High energy event captured');
INSERT INTO cosmic_event_observation_log (event_id,event_name,event_type,detection_date,observed_by_observatory,wavelength_range_nm,peak_intensity_watts,duration_seconds,distance_light_years,associated_objects,scientific_paper_reference,data_archive_url,confidence_level,public_announcement_date,funding_agency,lead_scientist,instrument_used,observation_conditions,follow_up_mission_id,remarks) VALUES (2,'Supernova SN2025A','Supernova','2025-07-03','Orion Telescope','400-700','1.1e38','864000','4.2','Star System YZ-12','doi:10.5678/astro.2025.014','http://archive.example.com/sn2025a','98','2025-07-05','AstroFund','Prof Kai Nakamura','Optical Imager','Partial Cloud','342','Bright Type Ia observed');
INSERT INTO cosmic_event_observation_log (event_id,event_name,event_type,detection_date,observed_by_observatory,wavelength_range_nm,peak_intensity_watts,duration_seconds,distance_light_years,associated_objects,scientific_paper_reference,data_archive_url,confidence_level,public_announcement_date,funding_agency,lead_scientist,instrument_used,observation_conditions,follow_up_mission_id,remarks) VALUES (3,'Fast Radio Burst FRB180916','FRB','2018-09-16','Deep Space Array','1-10','2.5e43','0.2','500','Host Galaxy ZD-5','doi:10.9012/astro.2018.098','http://archive.example.com/frb180916','92','2018-09-18','National Science Agency','Dr Maya Patel','Radio Receiver','Low Interference','0','Repeating source with 16‑day cycle');

-- Virtual Collectible Marketplace Transactions
CREATE TABLE virtual_collectible_marketplace_transactions
(
    transaction_id          INTEGER NOT NULL PRIMARY KEY,
    marketplace_name        TEXT,
    buyer_user_id           INTEGER,
    seller_user_id          INTEGER,
    collectible_item_id     INTEGER,
    transaction_date        TEXT,
    price_usd               REAL,
    cryptocurrency_used     TEXT,
    blockchain_tx_hash      TEXT,
    platform_fee_usd        REAL,
    shipping_required       INTEGER,
    shipping_method         TEXT,
    delivery_estimate_days  INTEGER,
    transaction_status      TEXT,
    rating_given            INTEGER,
    review_text             TEXT,
    payment_processor       TEXT,
    escrow_service          TEXT,
    tax_applied_usd         REAL,
    loyalty_points_used    INTEGER
);

INSERT INTO virtual_collectible_marketplace_transactions (transaction_id,marketplace_name,buyer_user_id,seller_user_id,collectible_item_id,transaction_date,price_usd,cryptocurrency_used,blockchain_tx_hash,platform_fee_usd,shipping_required,shipping_method,delivery_estimate_days,transaction_status,rating_given,review_text,payment_processor,escrow_service,tax_applied_usd,loyalty_points_used) VALUES (1,'MetaCollect','2001','3001','50001','2026-03-14',149.99,'Ether','0xabc123def456','2.50',0,'None',0,'Completed',5,'Excellent transaction','Stripe','None',12.50,0);
INSERT INTO virtual_collectible_marketplace_transactions (transaction_id,marketplace_name,buyer_user_id,seller_user_id,collectible_item_id,transaction_date,price_usd,cryptocurrency_used,blockchain_tx_hash,platform_fee_usd,shipping_required,shipping_method,delivery_estimate_days,transaction_status,rating_given,review_text,payment_processor,escrow_service,tax_applied_usd,loyalty_points_used) VALUES (2,'VaultTrade','2002','3002','50002','2026-04-01',299.00,'Bitcoin','0xdef789abc012','4.00',1,'Standard','5','Shipped',4,'Item arrived in good condition','PayPal','EscrowX',24.00,150);
INSERT INTO virtual_collectible_marketplace_transactions (transaction_id,marketplace_name,buyer_user_id,seller_user_id,collectible_item_id,transaction_date,price_usd,cryptocurrency_used,blockchain_tx_hash,platform_fee_usd,shipping_required,shipping_method,delivery_estimate_days,transaction_status,rating_given,review_text,payment_processor,escrow_service,tax_applied_usd,loyalty_points_used) VALUES (3,'NeoCollect','2003','3003','50003','2026-04-18',89.95,'Litecoin','0xlmn345opq678','1.80',0,'None',0,'Completed',5,'Fast and easy','Square','None',7.20,0);

-- Research Grant Funding
CREATE TABLE research_grant_funding
(
    grant_id               INTEGER NOT NULL PRIMARY KEY,
    grant_title            TEXT,
    funding_agency         TEXT,
    start_date             TEXT,
    end_date               TEXT,
    total_budget_usd       REAL,
    principal_investigator TEXT,
    co_investigators       TEXT,
    research_field         TEXT,
    project_summary        TEXT,
    eligibility_criteria   TEXT,
    review_score           REAL,
    award_status           TEXT,
    funded_phase           TEXT,
    reporting_requirements TEXT,
    renewal_possible       INTEGER,
    intellectual_property_clause TEXT,
    data_sharing_policy    TEXT,
    ethics_approval_required INTEGER,
    grant_category         TEXT,
    public_access_url      TEXT
);

INSERT INTO research_grant_funding (grant_id,grant_title,funding_agency,start_date,end_date,total_budget_usd,principal_investigator,co_investigators,research_field,project_summary,eligibility_criteria,review_score,award_status,funded_phase,reporting_requirements,renewal_possible,intellectual_property_clause,data_sharing_policy,ethics_approval_required,grant_category,public_access_url) VALUES (1,'Quantum Entanglement Networks','National Science Fund','2030-01-15','2035-01-14',12500000,'Dr Aria Lin','Dr Samir Patel;Dr Nadia Gomez','Quantum Computing','Develop scalable entanglement protocols for distributed systems','University researchers','9.1','Awarded','Phase I','Annual report','1','Standard IP','Open Data','1','Science & Technology','http://grants.example.com/qen2023');
INSERT INTO research_grant_funding (grant_id,grant_title,funding_agency,start_date,end_date,total_budget_usd,principal_investigator,co_investigators,research_field,project_summary,eligibility_criteria,review_score,award_status,funded_phase,reporting_requirements,renewal_possible,intellectual_property_clause,data_sharing_policy,ethics_approval_required,grant_category,public_access_url) VALUES (2,'Metahuman Genetics Study','Global Health Initiative','2032-06-01','2038-05-31',8000000,'Prof Lina Wu','Dr Omar Al-Hashim;Dr Eva Novak','Genetics','Investigate genetic markers linked to metahuman abilities','Medical institutions','8.5','Pending','Phase II','Biannual report','0','Joint IP','Restricted Access','1','Medical Research','http://grants.example.com/mgs2024');
INSERT INTO research_grant_funding (grant_id,grant_title,funding_agency,start_date,end_date,total_budget_usd,principal_investigator,co_investigators,research_field,project_summary,eligibility_criteria,review_score,award_status,funded_phase,reporting_requirements,renewal_possible,intellectual_property_clause,data_sharing_policy,ethics_approval_required,grant_category,public_access_url) VALUES (3,'Sustainable Energy Grid','Earth Alliance','2031-03-20','2036-03-19',15000000,'Dr Miguel Santos','Dr Priya Kaur;Dr Thomas Becker','Renewable Energy','Design resilient micro‑grid architecture for interstellar colonies','Corporate and government partners','9.4','Awarded','Phase III','Quarterly report','1','Shared IP','Open Access','0','Energy & Environment','http://grants.example.com/seg2022');

-- Environmental Monitoring Station Readings
CREATE TABLE environmental_monitoring_station_readings
(
    station_id               INTEGER NOT NULL PRIMARY KEY,
    station_name             TEXT,
    location_latitude        REAL,
    location_longitude       REAL,
    measurement_date         TEXT,
    temperature_celsius      REAL,
    humidity_percent         REAL,
    air_quality_index        INTEGER,
    pm2_5_ug_m3              REAL,
    pm10_ug_m3               REAL,
    ozone_ppb                REAL,
    nitrogen_dioxide_ppb     REAL,
    sulfur_dioxide_ppb      REAL,
    carbon_monoxide_ppm      REAL,
    radiation_msv            REAL,
    wind_speed_mps           REAL,
    wind_direction_deg       INTEGER,
    precipitation_mm         REAL,
    sensor_status            TEXT,
    data_quality_flag        TEXT
);

INSERT INTO environmental_monitoring_station_readings (station_id,station_name,location_latitude,location_longitude,measurement_date,temperature_celsius,humidity_percent,air_quality_index,pm2_5_ug_m3,pm10_ug_m3,ozone_ppb,nitrogen_dioxide_ppb,sulfur_dioxide_ppb,carbon_monoxide_ppm,radiation_msv,wind_speed_mps,wind_direction_deg,precipitation_mm,sensor_status,data_quality_flag) VALUES (1,'Aurora North','45.1234','-122.5678','2040-01-15',22.5,48,42,12.3,20.1,30,15,5,0.7,0.02,5.4,180,0.0,'Active','Good');
INSERT INTO environmental_monitoring_station_readings (station_id,station_name,location_latitude,location_longitude,measurement_date,temperature_celsius,humidity_percent,air_quality_index,pm2_5_ug_m3,pm10_ug_m3,ozone_ppb,nitrogen_dioxide_ppb,sulfur_dioxide_ppb,carbon_monoxide_ppm,radiation_msv,wind_speed_mps,wind_direction_deg,precipitation_mm,sensor_status,data_quality_flag) VALUES (2,'Celestia South','-23.4567','150.2345','2040-01-15',28.1,65,55,25.7,40.3,45,22,8,1.1,0.05,3.1,90,2.4,'Active','Good');
INSERT INTO environmental_monitoring_station_readings (station_id,station_name,location_latitude,location_longitude,measurement_date,temperature_celsius,humidity_percent,air_quality_index,pm2_5_ug_m3,pm10_ug_m3,ozone_ppb,nitrogen_dioxide_ppb,sulfur_dioxide_ppb,carbon_monoxide_ppm,radiation_msv,wind_speed_mps,wind_direction_deg,precipitation_mm,sensor_status,data_quality_flag) VALUES (3,'Nebula Base','12.9876','-45.6789','2040-01-15',15.8,70,38,9.2,15.0,20,10,3,0.4,0.01,6.7,270,0.0,'Maintenance','Fair');

-- Interdimensional Portal Registry
CREATE TABLE interdimensional_portal_registry
(
    portal_id                      INTEGER NOT NULL PRIMARY KEY,
    portal_name                    TEXT,
    origin_dimension               TEXT,
    destination_dimension          TEXT,
    creator_entity                 TEXT,
    activation_date                TEXT,
    stability_rating               INTEGER,
    energy_requirement_mj          REAL,
    containment_field_type         TEXT,
    access_permission_level       TEXT,
    last_maintenance_date         TEXT,
    observed_anomalies            TEXT,
    portal_size_meters             REAL,
    max_travelers                 INTEGER,
    security_clearance_required   TEXT,
    regulatory_status              TEXT,
    associated_project             TEXT,
    notes                          TEXT,
    deactivation_plan              TEXT,
    archival_record_url            TEXT
);

INSERT INTO interdimensional_portal_registry (portal_id,portal_name,origin_dimension,destination_dimension,creator_entity,activation_date,stability_rating,energy_requirement_mj,containment_field_type,access_permission_level,last_maintenance_date,observed_anomalies,portal_size_meters,max_travelers,security_clearance_required,regulatory_status,associated_project,notes,deactivation_plan,archival_record_url) VALUES (1,'Aether Gate','Earth-Prime','Xenon-9','Arcane Council','2035-07-20',8,1250.5,'Quantum Mesh','Level 3','2039-11-05','Temporal Fluctuations','12.5',25,'Class B','Approved','Project Dawn','Stable after calibration','Phase out after 10 years','http://archives.example.com/aethergate');
INSERT INTO interdimensional_portal_registry (portal_id,portal_name,origin_dimension,destination_dimension,creator_entity,activation_date,stability_rating,energy_requirement_mj,containment_field_type,access_permission_level,last_maintenance_date,observed_anomalies,portal_size_meters,max_travelers,security_clearance_required,regulatory_status,associated_project,notes,deactivation_plan,archival_record_url) VALUES (2,'Void Rift','Nebula-Core','Void-Alpha','Quantum Syndicate','2040-02-14',6,2100.0,'Phase Shield','Level 5','2043-05-12','Spatial Distortions','8.0',15,'Class A','Pending','Project Veil','Requires constant monitoring','Review in 15 years','http://archives.example.com/voidrift');
INSERT INTO interdimensional_portal_registry (portal_id,portal_name,origin_dimension,destination_dimension,creator_entity,activation_date,stability_rating,energy_requirement_mj,containment_field_type,access_permission_level,last_maintenance_date,observed_anomalies,portal_size_meters,max_travelers,security_clearance_required,regulatory_status,associated_project,notes,deactivation_plan,archival_record_url) VALUES (3,'Chrono Span','Chronos-1','Chronos-2','Temporal Authority','2045-09-30',9,950.75,'Temporal Lattice','Level 2','2048-01-20','Minor Time Lag','5.5',30,'Class C','Approved','Project Continuum','Fully synchronized','Decommission after 20 years','http://archives.example.com/chronospan');