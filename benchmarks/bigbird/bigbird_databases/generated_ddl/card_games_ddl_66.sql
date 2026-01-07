-- Arcane Research Projects
CREATE TABLE arcane_research_projects (
    project_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    lead_researcher TEXT,
    start_date DATE,
    end_date DATE,
    budget_usd REAL,
    status TEXT,
    field TEXT,
    hypothesis TEXT,
    methodology TEXT,
    result_summary TEXT,
    publication_doi TEXT,
    citation_count INTEGER,
    funding_source TEXT,
    risk_level TEXT,
    team_size INTEGER,
    lab_location TEXT,
    equipment_list TEXT,
    data_volume_gb REAL,
    compliance_status TEXT
);
INSERT INTO arcane_research_projects VALUES (1,'ManaFluxStudy','Eldric Sage','2022-01-15','2023-06-30',250000,'Completed','Mana Dynamics','Flux correlates with ambient aura','Longitudinal sampling','Positive correlation observed','10.1234/arcane.2024.001',15,'ArcaneCouncil','Medium',5,'TowerOfInsight','FluxSensorArray',120.5,'Compliant');
INSERT INTO arcane_research_projects VALUES (2,'EtherealBinding','Lyra Weaver','2023-03-01','2024-12-15',400000,'Ongoing','Binding Techniques','Ethereal threads improve binding durability','Controlled lab experiments','Preliminary results promising','10.1234/arcane.2024.002',8,'MysticGuild','High',7,'VaultOfSecrets','BindingLoom',95.3,'Pending');
INSERT INTO arcane_research_projects VALUES (3,'ChronoStasis','Talos Chronos','2021-07-20','2022-11-10',180000,'Completed','Temporal Magic','Stasis field can pause time locally','Field stabilization trials','Successfully paused 5 seconds','10.1234/arcane.2023.005',22,'ChronomancersUnion','Low',4,'ChronoLab','TimeStasisCore',60.0,'Compliant');

-- Lore Locations
CREATE TABLE lore_locations (
    location_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    region TEXT,
    continent TEXT,
    climate TEXT,
    predominant_species TEXT,
    discovered_by TEXT,
    first_mentioned_in TEXT,
    coordinates_lat REAL,
    coordinates_long REAL,
    terrain_type TEXT,
    resource_richness TEXT,
    magical_affinity TEXT,
    historical_significance TEXT,
    current_control TEXT,
    population_estimate INTEGER,
    language_spoken TEXT,
    notable_structure TEXT,
    legend_summary TEXT,
    map_image_url TEXT
);
INSERT INTO lore_locations VALUES (1,'Eldoria','NorthernReach','Aetheria','Temperate','SilverwingEagles','AriaNightwind','ChroniclesOfDawn',45.12,12.34,'Mountainous','High','Arcane','BirthplaceOfTheFirstMage','EldorianCouncil',12000,'Eldorian','SkyspireTower','TheTowerWasBuiltFromClouds','http://maps.example.com/eldoria');
INSERT INTO lore_locations VALUES (2,'Shadewood','Darklands','Obsidian','Tropical','ShadowStalkers','MorrickTheWanderer','TalesOfTheVoid',23.56,78.90,'DenseForest','Medium','Shadow','SiteOfAncientBattles','ShadowClan',8000,'Shadish','ObsidianShrine','LegendsSpeakOfAHiddenPortal','http://maps.example.com/shadewood');
INSERT INTO lore_locations VALUES (3,'SolarisBay','CoastalEdge','Solara','Arid','SunscaleLizards','LinaSunblade','SagaOfTheSun',10.01,55.20,'Coastal','Low','Solar','TradingHubSinceTheAgeOfSands','SolarianMerchantsGuild',25000,'Solaric','SunlitColonnade','MerchantsClaimTheBayGlowsAtSunset','http://maps.example.com/solarisbay');

-- Galactic Event Schedule
CREATE TABLE galactic_event_schedule (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    event_type TEXT,
    start_timestamp DATETIME,
    end_timestamp DATETIME,
    affected_systems TEXT,
    description TEXT,
    organizer TEXT,
    ticket_price_usd REAL,
    max_attendees INTEGER,
    registration_deadline DATE,
    virtual_platform TEXT,
    live_stream_url TEXT,
    sponsor TEXT,
    security_level TEXT,
    required_clearance TEXT,
    reward_points INTEGER,
    hazard_rating TEXT,
    timezone TEXT,
    status TEXT
);
INSERT INTO galactic_event_schedule VALUES (1,'CelestialConvergence','Astronomical','2025-03-10 20:00:00','2025-03-12 04:00:00','AlphaCentauri,Betelgeuse','Alignment of three moons','InterstellarCouncil',150.00,5000,'2025-02-28','StarNet','http://streams.example.com/convergence','NovaCorp','High','Level5',2000,'Medium','UTC+2','Scheduled');
INSERT INTO galactic_event_schedule VALUES (2,'QuantumRelayTournament','Competitive','2024-11-05 10:00:00','2024-11-07 22:00:00','Kepler-442b','Teams compete in quantum relay races','GalacticSportsAuthority',75.00,3000,'2024-10-20','QuantumArena','http://streams.example.com/relay','QuantumDynamics','Medium','Level3',1500,'Low','UTC-5','Open');
INSERT INTO galactic_event_schedule VALUES (3,'NebulaArtExpo','Cultural','2026-06-01 09:00:00','2026-06-05 18:00:00','OrionNebula','Exhibition of nebula inspired art','UniversalArtsGuild',0.00,20000,'2026-05-15','ArtSphere','http://streams.example.com/nebulaxpo','StarArts','Low','Public',0,'None','UTC+0','Planned');

-- Alchemy Ingredient Inventory
CREATE TABLE alchemy_ingredient_inventory (
    ingredient_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    alchemical_class TEXT,
    base_element TEXT,
    rarity TEXT,
    source TEXT,
    acquisition_date DATE,
    quantity REAL,
    unit TEXT,
    purity_percent REAL,
    storage_temperature_c REAL,
    storage_location TEXT,
    expiration_date DATE,
    hazard_level TEXT,
    price_per_unit_usd REAL,
    supplier TEXT,
    batch_number TEXT,
    last_inspection_date DATE,
    regulatory_compliance TEXT,
    notes TEXT
);
INSERT INTO alchemy_ingredient_inventory VALUES (1,'DragonScaleDust','Solid','Fire','Rare','DragonsLair','2023-04-12',12.5,'grams',98.7,5.0,'VaultA1','2025-04-12','High',250.00,'MythicSupplies','DSD-2023-04',2024-01-15,'Compliant','HandleWithGlove');
INSERT INTO alchemy_ingredient_inventory VALUES (2,'MoonlitWater','Liquid','Water','Uncommon','LunarOasis','2023-09-01',200.0,'ml',99.2,2.0,'ChamberB3','2024-09-01','Medium',15.75,'CelestialLiquids','MLW-2023-09',2023-12-20,'Compliant','StoreAwayFromBrightLight');
INSERT INTO alchemy_ingredient_inventory VALUES (3,'EtherealEssence','Gas','Air','VeryRare','EtherPlane','2022-12-20',5.0,'liters',99.9,-5.0,'CryoShelfC2','2025-12-20','Extreme',500.00,'ArcaneExtracts','EE-2022-12',2023-11-30,'Compliant','RequiresSealedContainer');

-- Mythic Creature Genealogy
CREATE TABLE mythic_creature_genealogy (
    lineage_id INTEGER PRIMARY KEY AUTOINCREMENT,
    creature_name TEXT,
    species TEXT,
    generation_number INTEGER,
    parent1_id INTEGER,
    parent2_id INTEGER,
    birth_date DATE,
    death_date DATE,
    dominant_trait TEXT,
    magical_power_level INTEGER,
    habitat TEXT,
    diet TEXT,
    lifespan_years INTEGER,
    rarity TEXT,
    discovered_by TEXT,
    first_recorded_in TEXT,
    mythical_story TEXT,
    associated_deity TEXT,
    genetic_marker TEXT,
    conservation_status TEXT
);
INSERT INTO mythic_creature_genealogy VALUES (1,'Aurelion','CelestialDragon',3,101,102,'1500-01-01','1600-12-31','GoldenBreath',95,'SkyPeaks','MysticEnergies',200,'Legendary','ElderSage','ChroniclesOfLight','BornFromAStar','Solara','AUR-GEN-01','Protected');
INSERT INTO mythic_creature_genealogy VALUES (2,'Nymara','ForestNymph',2,201,202,'1700-05-12',NULL,'SongOfHealing',78,'AncientWoods','BerryNectar',120,'Rare','RangerLyra','SongsOfTheWild','GuardianOfTheGlade','Sylvan','NYM-GEN-07','Endangered');
INSERT INTO mythic_creature_genealogy VALUES (3,'Krakenus','AbyssalKraken',4,301,302,'1400-07-20','1505-03-15','Inkstorm',88,'DeepOcean','SeaCreatures',300,'Mythic','CaptainMaris','SeaLegends','RulerOfTheCurrents','Triton','KRA-GEN-12','Vulnerable');

-- Player Psych Profile
CREATE TABLE player_psych_profile (
    profile_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    assessment_date DATE,
    stress_level INTEGER,
    focus_score INTEGER,
    reaction_time_ms INTEGER,
    decision_making_style TEXT,
    risk_aversion INTEGER,
    motivation_factor INTEGER,
    teamwork_score INTEGER,
    leadership_tendency INTEGER,
    emotional_stability INTEGER,
    confidence_index INTEGER,
    sleep_quality INTEGER,
    nutrition_score INTEGER,
    physical_fatigue INTEGER,
    mental_fatigue INTEGER,
    biofeedback_score INTEGER,
    session_notes TEXT,
    overall_rating INTEGER
);
INSERT INTO player_psych_profile VALUES (1,1001,'2024-02-15',30,85,210,'Analytical',40,75,90,65,80,88,70,85,20,25,78,'GoodPerformanceUnderPressure',84);
INSERT INTO player_psych_profile VALUES (2,1002,'2024-03-10',45,70,250,'Impulsive',60,60,70,55,65,72,55,70,40,35,65,'NeedsImprovementInFocus',68);
INSERT INTO player_psych_profile VALUES (3,1003,'2024-01-20',20,92,190,'Strategic',30,85,95,80,90,92,80,90,15,10,85,'ExcellentOverall',92);

-- Virtual Realm Traffic
CREATE TABLE virtual_realm_traffic (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    realm_id INTEGER,
    timestamp DATETIME,
    active_users INTEGER,
    peak_concurrent INTEGER,
    avg_latency_ms REAL,
    packet_loss_percent REAL,
    bandwidth_mbps REAL,
    region_distribution TEXT,
    new_signups INTEGER,
    churn_rate_percent REAL,
    feature_usage_requests INTEGER,
    error_rate_percent REAL,
    server_cpu_utilization REAL,
    server_memory_utilization REAL,
    db_query_latency_ms REAL,
    cache_hit_rate_percent REAL,
    api_call_volume INTEGER,
    incident_flag INTEGER,
    remarks TEXT
);
INSERT INTO virtual_realm_traffic VALUES (1,10,'2024-04-01 12:00:00',4500,6200,45.3,0.2,350.5,'NA:1500;EU:1800;AS:1200',300,1.5,5400,0.3,78.5,68.2,12.5,92.0,25000,0,'Stable');
INSERT INTO virtual_realm_traffic VALUES (2,11,'2024-04-01 12:00:00',3800,5000,48.7,0.3,300.1,'NA:1300;EU:1500;AS:1000',250,2.0,4300,0.4,82.0,70.5,13.2,90.5,22000,1,'MinorLatencySpike');
INSERT INTO virtual_realm_traffic VALUES (3,12,'2024-04-01 12:00:00',5200,7200,42.1,0.1,400.0,'NA:2000;EU:2100;AS:1100',350,1.2,6100,0.2,76.8,65.7,11.8,94.3,27000,0,'OptimalPerformance');

-- Artifact Restoration Logs
CREATE TABLE artifact_restoration_logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artifact_id INTEGER,
    restoration_date DATE,
    restored_by TEXT,
    condition_before TEXT,
    condition_after TEXT,
    materials_used TEXT,
    techniques_applied TEXT,
    time_spent_hours REAL,
    cost_usd REAL,
    location TEXT,
    conservation_status TEXT,
    temperature_control_c REAL,
    humidity_control_percent REAL,
    light_exposure_lux REAL,
    notes TEXT,
    approval_signature TEXT,
    quality_assurance_passed INTEGER,
    followup_date DATE,
    archival_reference TEXT
);
INSERT INTO artifact_restoration_logs VALUES (1,5001,'2023-07-15','Eldric Sage','Cracked','Repaired','SilverFilament','Microfusion',8.5,1200.00,'RestorationLabA','Restored',22.0,45.0,300,'NoVisibleSeams','ES-2023',1,'2023-12-01','ARC-5001-2023');
INSERT INTO artifact_restoration_logs VALUES (2,5002,'2024-02-10','Lyra Weaver','FadedPaint','Repainted','AlchemicalPaint','LayeredCoating',12.0,1800.00,'RestorationLabB','Restored',20.0,40.0,250,'ColorMatchVerified','LW-2024',1,'2024-07-15','ARC-5002-2024');
INSERT INTO artifact_restoration_logs VALUES (3,5003,'2022-11-05','Talos Chronos','MissingGem','GemInserted','ChronoCrystal','PrecisionEmbedding',6.0,950.00,'RestorationLabC','Restored',18.0,42.0,280,'GemAlignsWithRunePattern','TC-2022',1,'2023-04-20','ARC-5003-2022');

-- Magic Energy Consumption
CREATE TABLE magic_energy_consumption (
    consumption_id INTEGER PRIMARY KEY AUTOINCREMENT,
    source_id INTEGER,
    date DATE,
    total_energy_kwh REAL,
    peak_demand_kw REAL,
    average_voltage_v REAL,
    power_factor REAL,
    renewable_percent REAL,
    nonrenewable_percent REAL,
    carbon_emission_kg REAL,
    cost_usd REAL,
    grid_operator TEXT,
    region TEXT,
    meter_reading_start REAL,
    meter_reading_end REAL,
    anomalies_detected TEXT,
    corrective_actions TEXT,
    reporting_status TEXT,
    auditor TEXT,
    notes TEXT
);
INSERT INTO magic_energy_consumption VALUES (1,101,'2024-03-31',12500.5,850.0,220.0,0.98,65.0,35.0,4200.0,1500.00,'ArcaneGrid','NorthSector',5000.0,16250.5,'None','N/A','Submitted','JennaAria');
INSERT INTO magic_energy_consumption VALUES (2,102,'2024-03-31',9800.3,720.5,215.0,0.96,55.0,45.0,3500.0,1200.00,'MysticPower','EastSector',3000.0,12800.3,'VoltageDip','AdjustedTransformer','Approved','MarekLorn');
INSERT INTO magic_energy_consumption VALUES (3,103,'2024-03-31',14320.7,910.2,225.0,0.99,70.0,30.0,5000.0,1750.00,'ElderSupply','SouthSector',8000.0,22120.7,'PhaseImbalance','RecalibratedPhases','Pending','SofiaVale');

-- World Marketplace Stats
CREATE TABLE world_marketplace_stats (
    stat_id INTEGER PRIMARY KEY AUTOINCREMENT,
    marketplace_id INTEGER,
    date DATE,
    total_transactions INTEGER,
    total_volume_usd REAL,
    average_transaction_value REAL,
    unique_buyers INTEGER,
    unique_sellers INTEGER,
    top_category TEXT,
    category_sales_usd REAL,
    failed_transactions INTEGER,
    chargeback_rate_percent REAL,
    average_fulfillment_time_days REAL,
    shipping_cost_average_usd REAL,
    rating_average REAL,
    review_count INTEGER,
    active_listings INTEGER,
    new_listings INTEGER,
    discontinued_items INTEGER,
    notes TEXT
);
INSERT INTO world_marketplace_stats VALUES (1,201,'2024-03-31',125000,7850000.00,62.80,85000,79000,'Artifacts',2100000.00,500,0.4,2.5,8.75,4.6,25000,15000,1200,'SteadyGrowth');
INSERT INTO world_marketplace_stats VALUES (2,202,'2024-03-31',98000,5400000.00,55.10,67000,63000,'Potions',1350000.00,300,0.3,3.0,7.20,4.4,18000,12000,800,'SeasonalDip');
INSERT INTO world_marketplace_stats VALUES (3,203,'2024-03-31',143500,10200000.00,71.10,102000,98000,'Enchantments',2500000.00,450,0.5,2.2,9.10,4.8,30000,17000,1500,'PeakHolidaySales');