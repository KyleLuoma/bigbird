-- Energy Grid Station
CREATE TABLE energy_grid_station
(
    id                     INTEGER PRIMARY KEY,
    station_code           TEXT,
    region                 TEXT,
    capacity_mw            INTEGER,
    operational_since      DATE,
    voltage_kv             INTEGER,
    transformer_count      INTEGER,
    latitude               DECIMAL,
    longitude              DECIMAL,
    status                 TEXT,
    maintenance_cycle_days INTEGER,
    manager_name           TEXT,
    contact_number         TEXT,
    upstream_substation_id INTEGER,
    downstream_substation_id INTEGER,
    fuel_type              TEXT,
    renewable_percent      INTEGER,
    emissions_tco2         INTEGER,
    grid_operator          TEXT,
    last_inspection_date   DATE,
    notes                  TEXT
);

INSERT INTO energy_grid_station (id,station_code,region,capacity_mw,operational_since,voltage_kv,transformer_count,latitude,longitude,status,maintenance_cycle_days,manager_name,contact_number,upstream_substation_id,downstream_substation_id,fuel_type,renewable_percent,emissions_tco2,grid_operator,last_inspection_date,notes)
VALUES (1,'EGS001','North',500,'2005-06-15',220,12,45.1234,-122.5678,'Active',180,'Alice Smith','5551234',10,12,'Coal',20,3000,'GridCo','2023-05-20','Primary hub');

INSERT INTO energy_grid_station (id,station_code,region,capacity_mw,operational_since,voltage_kv,transformer_count,latitude,longitude,status,maintenance_cycle_days,manager_name,contact_number,upstream_substation_id,downstream_substation_id,fuel_type,renewable_percent,emissions_tcod,grid_operator,last_inspection_date,notes)
VALUES (2,'EGS002','South',350,'2010-09-01',110,8,36.7890,-98.6543,'Active',200,'Bob Jones','5555678',14,15,'NaturalGas',35,1800,'PowerNet','2022-11-12','Secondary hub');

INSERT INTO energy_grid_station (id,station_code,region,capacity_mw,operational_since,voltage_kv,transformer_count,latitude,longitude,status,maintenance_cycle_days,manager_name,contact_number,upstream_substation_id,downstream_substation_id,fuel_type,renewable_percent,emissions_tco2,grid_operator,last_inspection_date,notes)
VALUES (3,'EGS003','East',250,'2015-03-20',330,5,40.5555,-73.2222,'Inactive',0,'Carol Lee','5559012',20,21,'Wind',100,0,'EcoGrid','2021-07-05','Decommissioned');

-- Archaeological Site
CREATE TABLE archaeological_site
(
    id                     INTEGER PRIMARY KEY,
    site_name              TEXT,
    country                TEXT,
    region                 TEXT,
    discovery_year         INTEGER,
    latitude               DECIMAL,
    longitude              DECIMAL,
    site_type              TEXT,
    period                 TEXT,
    area_sqkm              DECIMAL,
    excavated              INTEGER,
    lead_archaeologist     TEXT,
    funding_agency         TEXT,
    artifacts_found        INTEGER,
    preservation_status    TEXT,
    public_access          INTEGER,
    nearest_city           TEXT,
    altitude_m             INTEGER,
    climate_zone           TEXT,
    notes                  TEXT
);

INSERT INTO archaeological_site (id,site_name,country,region,discovery_year,latitude,longitude,site_type,period,area_sqkm,excavated,lead_archaeologist,funding_agency,artifacts_found,preservation_status,public_access,nearest_city,altitude_m,climate_zone,notes)
VALUES (1,'Valley Ruins','Gondwana','Southern Plateau',1998,12.3456,45.6789,'Temple','BronzeAge',2.5,1,'Dr Maya Patel','HeritageFund',124,'Stable',1,'Oldtown',350,'Temperate','Open to tours');

INSERT INTO archaeological_site (id,site_name,country,region,discovery_year,latitude,longitude,site_type,period,area_sqkm,excavated,lead_archaeologist,funding_agency,artifacts_found,preservation_status,public_access,nearest_city,altitude_m,climate_zone,notes)
VALUES (2,'Desert Oasis','Aridia','North Dunes',2005,23.1122,56.3344,'Settlement','IronAge',0.8,0,'Prof Luis Gomez','AridResearch',78,'Fragile',0,'Dustville',150,'Arid','Restricted access');

INSERT INTO archaeological_site (id,site_name,country,region,discovery_year,latitude,longitude,site_type,period,area_sqkm,excavated,lead_archaeologist,funding_agency,artifacts_found,preservation_status,public_access,nearest_city,altitude_m,climate_zone,notes)
VALUES (3,'Mountain Tomb','Eldoria','High Peaks',2012,34.8899,78.2211,'Burial','Classical',1.1,1,'Dr Hana Kim','MountainTrust',45,'WellPreserved',1,'Peak City',2100,'Alpine','Featured in documentary');

-- Interstellar Trade Route
CREATE TABLE interstellar_trade_route
(
    id                         INTEGER PRIMARY KEY,
    route_name                 TEXT,
    origin_planet              TEXT,
    destination_planet         TEXT,
    distance_ly                DECIMAL,
    travel_time_days           INTEGER,
    primary_goods              TEXT,
    min_security_level         INTEGER,
    established_year           INTEGER,
    governing_body             TEXT,
    fee_per_ton                DECIMAL,
    max_cargo_ton              INTEGER,
    active                     INTEGER,
    last_inspection_date       DATE,
    route_status               TEXT,
    average_sentiment_score    DECIMAL,
    trade_volume_yearly        INTEGER,
    regulatory_compliance      INTEGER,
    notes                      TEXT,
    last_updated               TIMESTAMP
);

INSERT INTO interstellar_trade_route (id,route_name,origin_planet,destination_planet,distance_ly,travel_time_days,primary_goods,min_security_level,established_year,governing_body,fee_per_ton,max_cargo_ton,active,last_inspection_date,route_status,average_sentiment_score,trade_volume_yearly,regulatory_compliance,notes,last_updated)
VALUES (1,'Silk Way','Terra','Xenon',4.2,12,'Textiles',2,2120,'GalacticCouncil',150.00,50000,1,'2125-04-10','Operational',8.7,1200000,1,'High traffic corridor','2125-09-01 14:30:00');

INSERT INTO interstellar_trade_route (id,route_name,origin_planet,destination_planet,distance_ly,travel_time_days,primary_goods,min_security_level,established_year,governing_body,fee_per_ton,max_cargo_ton,active,last_inspection_date,route_status,average_sentiment_score,trade_volume_yearly,regulatory_compliance,notes,last_updated)
VALUES (2,'Aurora Line','Lumen','Orion',12.5,30,'RareGases',4,2135,'StarTradeUnion',300.00,20000,1,'2138-11-22','Operational',7.5,450000,1,'Seasonal demand spikes','2139-02-15 09:00:00');

INSERT INTO interstellar_trade_route (id,route_name,origin_planet,destination_planet,distance_ly,travel_time_days,primary_goods,min_security_level,established_year,governing_body,fee_per_ton,max_cargo_ton,active,last_inspection_date,route_status,average_sentiment_score,trade_volume_yearly,regulatory_compliance,notes,last_updated)
VALUES (3,'Nebula Pass','Vela','Cygnus',25.0,60,'Minerals',5,2150,'InterstellarCommerce',500.00,10000,0,'2155-07-03','Suspended',5.2,0,0,'Closed for repairs','2155-07-04 08:45:00');

-- Cosmic Event Observation
CREATE TABLE cosmic_event_observation
(
    id                     INTEGER PRIMARY KEY,
    event_name             TEXT,
    event_type             TEXT,
    observation_date       DATE,
    telescope_id           INTEGER,
    magnitude              DECIMAL,
    duration_seconds       INTEGER,
    wavelength_nm          INTEGER,
    observer_name          TEXT,
    institute              TEXT,
    coordinates_ra         TEXT,
    coordinates_dec        TEXT,
    redshift               DECIMAL,
    signal_to_noise        DECIMAL,
    data_file_hash         TEXT,
    processed              INTEGER,
    publication_ref        TEXT,
    notes                  TEXT,
    confidence_level       INTEGER,
    archived               INTEGER
);

INSERT INTO cosmic_event_observation (id,event_name,event_type,observation_date,telescope_id,magnitude,duration_seconds,wavelength_nm,observer_name,institute,coordinates_ra,coordinates_dec,redshift,signal_to_noise,data_file_hash,processed,publication_ref,notes,confidence_level,archived)
VALUES (1,'GRB2104A','GammaRayBurst','2021-04-12',101,5.2,45,800,'Dr Elena Vo','SpaceObservatory','12h34m56s','-45d23m11s',0.85,12.5,'abc123def','1','JAstro2022','High energy event','9',0);

INSERT INTO cosmic_event_observation (id,event_name,event_type,observation_date,telescope_id,magnitude,duration_seconds,wavelength_nm,observer_name,institute,coordinates_ra,coordinates_dec,redshift,signal_to_noise,data_file_hash,processed,publication_ref,notes,confidence_level,archived)
VALUES (2,'SN2020X','Supernova','2020-11-03',202,14.1,1200,550,'Dr Max Lee','GalaxyInstitute','02h15m30s','+22d10m45s',0.03,8.2,'def456ghi','1','MNRAS2021','Type Ia supernova','8',0);

INSERT INTO cosmic_event_observation (id,event_name,event_type,observation_date,telescope_id,magnitude,duration_seconds,wavelength_nm,observer_name,institute,coordinates_ra,coordinates_dec,redshift,signal_to_noise,data_file_hash,processed,publication_ref,notes,confidence_level,archived)
VALUES (3,'Lensing2022B','GravitationalLens','2022-07-19',303,22.0,3600,650,'Dr Sara K','LensLab','18h05m12s','-12d34m56s',1.12,15.0,'ghi789jkl','0','Pending','Strong lensing candidate','7',0);

-- Metahuman Clinic
CREATE TABLE metahuman_clinic
(
    id                     INTEGER PRIMARY KEY,
    clinic_name            TEXT,
    location_city          TEXT,
    location_state         TEXT,
    capacity_beds          INTEGER,
    director_name          TEXT,
    accreditation_level    TEXT,
    opening_date           DATE,
    specialization         TEXT,
    license_number         TEXT,
    contact_email          TEXT,
    contact_phone          TEXT,
    emergency_services    INTEGER,
    research_active        INTEGER,
    number_of_doctors      INTEGER,
    number_of_nurses       INTEGER,
    average_wait_time_minutes INTEGER,
    patient_satisfaction_score DECIMAL,
    insurance_accepted    TEXT,
    notes                  TEXT
);

INSERT INTO metahuman_clinic (id,clinic_name,location_city,location_state,capacity_beds,director_name,accreditation_level,opening_date,specialization,license_number,contact_email,contact_phone,emergency_services,research_active,number_of_doctors,number_of_nurses,average_wait_time_minutes,patient_satisfaction_score,insurance_accepted,notes)
VALUES (1,'Arcadia Metahuman Center','Metrocity','CA',120,'Dr Nova Hart','LevelA','2015-09-01','Regeneration', 'LIC12345','info@arcadiahealth.org','5551111',1,1,35,80,15,9.2,'All','State‑of‑the‑art facilities');

INSERT INTO metahuman_clinic (id,clinic_name,location_city,location_state,capacity_beds,director_name,accreditation_level,opening_date,specialization,license_number,contact_email,contact_phone,emergency_services,research_active,number_of_doctors,number_of_nurses,average_wait_time_minutes,patient_satisfaction_score,insurance_accepted,notes)
VALUES (2,'Lumen Healing Institute','Skyport','NV',80,'Dr Orion Vale','LevelB','2018-03-15','Energy Manipulation','LIC67890','contact@lumencare.com','5552222',1,0,20,50,10,8.5,'PremiumOnly','Focus on energy‑based ailments');

INSERT INTO metahuman_clinic (id,clinic_name,location_city,location_state,capacity_beds,director_name,accreditation_level,opening_date,specialization,license_number,contact_email,contact_phone,emergency_services,research_active,number_of_doctors,number_of_nurses,average_wait_time_minutes,patient_satisfaction_score,insurance_accepted,notes)
VALUES (3,'Nebula Regeneration Facility','Starhaven','TX',150,'Dr Selene Ray','LevelA','2020-11-20','Regeneration','LIC54321','admin@nebulargx.net','5553333',1,1,45,100,20,9.0,'All','High patient turnover');

-- Galactic Trade Hub
CREATE TABLE galactic_trade_hub
(
    id                     INTEGER PRIMARY KEY,
    hub_name               TEXT,
    sector                 TEXT,
    galaxy                 TEXT,
    coordinates            TEXT,
    number_of_docks        INTEGER,
    max_ship_size          INTEGER,
    annual_throughput_tons INTEGER,
    primary_commodities    TEXT,
    security_level         INTEGER,
    operating_company      TEXT,
    established_year       INTEGER,
    hub_manager            TEXT,
    contact_number         TEXT,
    docking_fee_per_day    DECIMAL,
    maintenance_status     TEXT,
    last_audit_date        DATE,
    regulatory_body        TEXT,
    notes                  TEXT,
    active                 INTEGER
);

INSERT INTO galactic_trade_hub (id,hub_name,sector,galaxy,coordinates,number_of_docks,max_ship_size,annual_throughput_tons,primary_commodities,security_level,operating_company,established_year,hub_manager,contact_number,docking_fee_per_day,maintenance_status,last_audit_date,regulatory_body,notes,active)
VALUES (1,'Orion Nexus','Alpha Quadrant','MilkyWay','X:124,Y:87,Z:33',25,3000,1500000,'Metals,Tech',4,'Stellar Logistics',2095,'Mara Voss','5554444',250.00,'Good','2124-02-18','Galactic Trade Authority','Key hub for western sector',1);

INSERT INTO galactic_trade_hub (id,hub_name,sector,galaxy,coordinates,number_of_docks,max_ship_size,annual_throughput_tons,primary_commodities,security_level,operating_company,established_year,hub_manager,contact_number,docking_fee_per_day,maintenance_status,last_audit_date,regulatory_body,notes,active)
VALUES (2,'Zenith Port','Beta Sector','Andromeda','X:78,Y:45,Z:12',15,2000,800000,'Food,Spices',3,'Interstellar Trade Corp',2102,'Jax Lorne','5555555',180.00,'Excellent','2130-06-05','Andromeda Trade Council','Primary gateway to Andromeda',1);

INSERT INTO galactic_trade_hub (id,hub_name,sector,galaxy,coordinates,number_of_docks,max_ship_size,annual_throughput_tons,primary_commodities,security_level,operating_company,established_year,hub_manager,contact_number,docking_fee_per_day,maintenance_status,last_audit_date,regulatory_body,notes,active)
VALUES (3,'Void Exchange','Gamma Rim','Triangulum','X:33,Y:66,Z:99',10,1500,500000,'Rare Minerals',5,'Void Enterprises',2080,'Lena Aria','5556666',300.00,'Fair','2120-09-30','Triangulum Commerce Board','Specializes in exotic materials',0);

-- Nanotech Manufacturing Facility
CREATE TABLE nanotech_manufacturing_facility
(
    id                     INTEGER PRIMARY KEY,
    facility_name          TEXT,
    location               TEXT,
    capacity_sqft          INTEGER,
    nanobot_type           TEXT,
    production_rate_per_hour INTEGER,
    main_client            TEXT,
    compliance_cert        TEXT,
    opening_date           DATE,
    manager_name           TEXT,
    contact_phone          TEXT,
    cleanroom_class        TEXT,
    hazardous_materials_handled INTEGER,
    waste_disposal_method  TEXT,
    energy_consumption_mwh INTEGER,
    uptime_percent         DECIMAL,
    last_safety_inspection DATE,
    notes                  TEXT,
    certifications         TEXT,
    active                 INTEGER
);

INSERT INTO nanotech_manufacturing_facility (id,facility_name,location,capacity_sqft,nanobot_type,production_rate_per_hour,main_client,compliance_cert,opening_date,manager_name,contact_phone,cleanroom_class,hazardous_materials_handled,waste_disposal_method,energy_consumption_mwh,uptime_percent,last_safety_inspection,notes,certifications,active)
VALUES (1,'NanoForge Labs','Sector 7G','50000','Medical','1200','BioHealth Inc','ISO9001','2012-05-20','Dr Felix Yuan','5557777','Class100','0','Recycling','2500',99.5,'2023-03-15','Focus on biomedical nanobots','ISO14001',1);

INSERT INTO nanotech_manufacturing_facility (id,facility_name,location,capacity_sqft,nanobot_type,production_rate_per_hour,main_client,compliance_cert,opening_date,manager_name,contact_phone,cleanroom_class,hazardous_materials_handled,waste_disposal_method,energy_consumption_mwh,uptime_percent,last_safety_inspection,notes,certifications,active)
VALUES (2,'Quantum NanoWorks','Orbit Station Alpha','75000','Quantum','2000','Quantum Dynamics','ISO27001','2016-11-08','Dr Maya Lin','5558888','Class10','1','SecureContainment','3200',97.2,'2022-12-01','Produces quantum‑grade nanites','ISO9001,ISO45001',1);

INSERT INTO nanotech_manufacturing_facility (id,facility_name,location,capacity_sqft,nanobot_type,production_rate_per_hour,main_client,compliance_cert,opening_date,manager_name,contact_phone,cleanroom_class,hazardous_materials_handled,waste_disposal_method,energy_consumption_mwh,uptime_percent,last_safety_inspection,notes,certifications,active)
VALUES (3,'Aether NanoSystems','Luna Base','60000','Environmental','1500','EcoSphere Corp','ISO14001','2020-04-14','Dr Omar Patel','5559999','Class1000','0','Neutralization','2800',98.0,'2024-01-10','Eco‑focused nanobot production','ISO14001,ISO9001',1);

-- Alien Species Registry
CREATE TABLE alien_species_registry
(
    id                     INTEGER PRIMARY KEY,
    species_name           TEXT,
    home_planet            TEXT,
    classification         TEXT,
    average_lifespan_years INTEGER,
    typical_height_cm      INTEGER,
    typical_weight_kg      INTEGER,
    diet                   TEXT,
    sentience_level        INTEGER,
    discovery_date         DATE,
    discoverer_name        TEXT,
    status                 TEXT,
    population_estimate    INTEGER,
    conservation_status    TEXT,
    genetic_sequence_hash  TEXT,
    known_symbiosis        TEXT,
    notable_abilities      TEXT,
    habitat                TEXT,
    notes                  TEXT,
    active                 INTEGER
);

INSERT INTO alien_species_registry (id,species_name,home_planet,classification,average_lifespan_years,typical_height_cm,typical_weight_kg,diet,sentience_level,discovery_date,discoverer_name,status,population_estimate,conservation_status,genetic_sequence_hash,known_symbiosis,notable_abilities,habitat,notes,active)
VALUES (1,'Xel\'Nara','Xelara','Mammaloid',120,210,95,'Omnivore',9,'2140-06-12','Dr Kira Voss','Endangered',5000,'Critical','hashx123','Fungal','Regeneration','Temperate Forests','Sensitive to temperature changes',1);

INSERT INTO alien_species_registry (id,species_name,home_planet,classification,average_lifespan_years,typical_height_cm,typical_weight_kg,diet,sentience_level,discovery_date,discoverer_name,status,population_estimate,conservation_status,genetic_sequence_hash,known_symbiosis,notable_abilities,habitat,notes,active)
VALUES (2,'Zyphorans','Zyphos','Reptilian',80,180,70,'Carnivore',8,'2135-02-28','Dr Lin Kwan','Stable',20000,'LeastConcern','hashz456','Algae','Camouflage','Desert Dunes','Adapted to extreme heat',1);

INSERT INTO alien_species_registry (id,species_name,home_planet,classification,average_lifespan_years,typical_height_cm,typical_weight_kg,diet,sentience_level,discovery_date,discoverer_name,status,population_estimate,conservation_status,genetic_sequence_hash,known_symbiosis,notable_abilities,habitat,notes,active)
VALUES (3,'Quoril','Quor','Insectoid',35,95,12,'Herbivore',7,'2152-11-05','Dr Aria Nunez','Vulnerable',1200,'Endangered','hashq789','None','Bioluminescence','Swamp Marshes','Night‑active species',1);

-- Virtual Reality Exhibit
CREATE TABLE virtual_reality_exhibit
(
    id                     INTEGER PRIMARY KEY,
    exhibit_title          TEXT,
    theme                  TEXT,
    launch_date            DATE,
    platform               TEXT,
    developer_studio       TEXT,
    vr_headset_compatible  TEXT,
    average_session_minutes INTEGER,
    concurrent_users_max   INTEGER,
    region                 TEXT,
    language_support       TEXT,
    accessibility_features TEXT,
    revenue_usd            DECIMAL,
    sponsor_name           TEXT,
    marketing_budget_usd   DECIMAL,
    user_rating            DECIMAL,
    feedback_summary       TEXT,
    maintenance_status     TEXT,
    last_update            TIMESTAMP,
    active                 INTEGER
);

INSERT INTO virtual_reality_exhibit (id,exhibit_title,theme,launch_date,platform,developer_studio,vr_headset_compatible,average_session_minutes,concurrent_users_max,region,language_support,accessibility_features,revenue_usd,sponsor_name,marketing_budget_usd,user_rating,feedback_summary,maintenance_status,last_update,active)
VALUES (1,'Chronicles of Gaia','Eco‑Adventure','2023-03-01','OmniVR','GreenPulse Studios','MetaQuest,ValveIndex',45,12000,'North America','EN,ES,FR','Subtitle,AudioDescription',750000,'EcoCorp','150000',4.6,'Positive overall','Stable','2024-06-15 10:00:00',1);

INSERT INTO virtual_reality_exhibit (id,exhibit_title,theme,launch_date,platform,developer_studio,vr_headset_compatible,average_session_minutes,concurrent_users_max,region,language_support,accessibility_features,revenue_usd,sponsor_name,marketing_budget_usd,user_rating,feedback_summary,maintenance_status,last_update,active)
VALUES (2,'Stellar Frontier','Space Exploration','2022-11-20','StarVR','Nova Interactive','HTCVive,PlayStationVR',30,18000,'Europe','EN,DE,IT','VRHandTracking','1200000','SpaceTech','250000',4.8,'Excellent immersion','Ongoing','2024-05-22 14:30:00',1);

INSERT INTO virtual_reality_exhibit (id,exhibit_title,theme,launch_date,platform,developer_studio,vr_headset_compatible,average_session_minutes,concurrent_users_max,region,language_support,accessibility_features,revenue_usd,sponsor_name,marketing_budget_usd,user_rating,feedback_summary,maintenance_status,last_update,active)
VALUES (3,'Mythic Realms','Fantasy Quest','2024-01-15','EpicVR','Legendary Labs','OculusQuest2','60','25000','Asia','EN,JA,KO','GestureControl','950000','MythicGames','200000',4.4,'Mixed feedback on difficulty','Stable','2024-08-01 09:15:00',1);

-- Heroic Legacy Award
CREATE TABLE heroic_legacy_award
(
    id                     INTEGER PRIMARY KEY,
    award_name             TEXT,
    awarding_body          TEXT,
    year_established       INTEGER,
    criteria               TEXT,
    trophy_material        TEXT,
    design_artist          TEXT,
    monetary_prize_usd     DECIMAL,
    nomination_process    TEXT,
    eligibility            TEXT,
    past_winners           TEXT,
    last_awarded_year      INTEGER,
    ceremony_location      TEXT,
    broadcast_channel      TEXT,
    press_release_url      TEXT,
    sponsor                TEXT,
    award_status           TEXT,
    notes                  TEXT,
    created_at             TIMESTAMP,
    active                 INTEGER
);

INSERT INTO heroic_legacy_award (id,award_name,awarding_body,year_established,criteria,trophy_material,design_artist,monetary_prize_usd,nomination_process,eligibility,past_winners,last_awarded_year,ceremony_location,broadcast_channel,press_release_url,sponsor,award_status,notes,created_at,active)
VALUES (1,'Guardian of Justice','League of Heroes',2005,'Outstanding courage','Platinum','Anna Rivera',50000,'Peer nomination','All heroes','Jade Storm, Aurora Light',2023,'Metro City Hall','HeroNet','http://leagueheroes.org/press2023','ShieldCo','Active','Awarded annually in June','2023-05-01 12:00:00',1);

INSERT INTO heroic_legacy_award (id,award_name,awarding_body,year_established,criteria,trophy_material,design_artist,monetary_prize_usd,nomination_process,eligibility,past_winners,last_awarded_year,ceremony_location,broadcast_channel,press_release_url,sponsor,award_status,notes,created_at,active)
VALUES (2,'Star Defender Medal','Universal Alliance',2010,'Exemplary interstellar service','Titanium','Luis Ortega',75000,'Open submission','All sentient beings','Nova Prime, Solaris',2022,'Celestial Arena','GalacticTV','http://universalalliance.org/press2022','StarCorp','Active','Includes a ceremonial flight','2022-11-20 09:30:00',1);

INSERT INTO heroic_legacy_award (id,award_name,awarding_body,year_established,criteria,trophy_material,design_artist,monetary_prize_usd,nomination_process,eligibility,past_winners,last_awarded_year,ceremony_location,broadcast_channel,press_release_url,sponsor,award_status,notes,created_at,active)
VALUES (3,'Valor Vanguard','Council of Guardians',2015,'Leadership in crisis','Gold','Mia Chen',100000,'Committee selection','Guardians only','Eclipse, Dawnblade',2021,'Summit Hall','GuardianChannel','http://councilguardians.org/press2021','ValorInc','Inactive','Paused due to budget','2015-03-15 08:00:00',0);