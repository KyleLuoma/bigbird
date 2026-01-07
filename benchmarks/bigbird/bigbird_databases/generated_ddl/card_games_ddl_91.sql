-- Arcane Research Projects
CREATE TABLE arcane_research_projects (
    project_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    lead_researcher TEXT,
    start_date TEXT,
    end_date TEXT,
    funding_source TEXT,
    budget_amount REAL,
    status TEXT,
    discipline TEXT,
    methodology TEXT,
    hypothesis TEXT,
    expected_outcome TEXT,
    risk_level TEXT,
    compliance_review TEXT,
    data_repository TEXT,
    publication_doi TEXT,
    num_experiments INTEGER,
    total_hours INTEGER,
    equipment_list TEXT,
    notes TEXT
);
INSERT INTO arcane_research_projects (project_id, title, lead_researcher, start_date, end_date, funding_source, budget_amount, status, discipline, methodology, hypothesis, expected_outcome, risk_level, compliance_review, data_repository, publication_doi, num_experiments, total_hours, equipment_list, notes) VALUES (1, 'AlphaProject', 'DrSmith', '2023-01-01', '2023-12-31', 'ArcaneFund', 500000, 'Completed', 'Alchemy', 'Experimental', 'MysticEnergy', 'NewSpell', 'Low', 'Passed', 'RepoA', '10.1234/arcane', 10, 2000, 'Distiller,Condenser', 'None');
INSERT INTO arcane_research_projects (project_id, title, lead_researcher, start_date, end_date, funding_source, budget_amount, status, discipline, methodology, hypothesis, expected_outcome, risk_level, compliance_review, data_repository, publication_doi, num_experiments, total_hours, equipment_list, notes) VALUES (2, 'BetaStudy', 'ProfLuna', '2024-03-15', '2025-03-14', 'MysticGrant', 750000, 'Ongoing', 'RunicScience', 'Observational', 'RunicStability', 'StableRunes', 'Medium', 'Pending', 'RepoB', '10.5678/beta', 15, 3000, 'RuneCutter,Analyzer', 'Phase1');
INSERT INTO arcane_research_projects (project_id, title, lead_researcher, start_date, end_date, funding_source, budget_amount, status, discipline, methodology, hypothesis, expected_outcome, risk_level, compliance_review, data_repository, publication_doi, num_experiments, total_hours, equipment_list, notes) VALUES (3, 'GammaInitiative', 'MageOrion', '2022-06-01', '2023-05-31', 'CelestialPatron', 300000, 'Completed', 'Elemental', 'Simulation', 'ElementFusion', 'FusionCore', 'High', 'Approved', 'RepoC', '10.9012/gamma', 8, 1500, 'FusionChamber,SensorArray', 'Successful');

-- Magical Ingredient Stock
CREATE TABLE magical_ingredient_stock (
    ingredient_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    rarity TEXT,
    origin TEXT,
    batch_number TEXT,
    quantity_on_hand INTEGER,
    unit TEXT,
    expiration_date TEXT,
    storage_location TEXT,
    hazard_level TEXT,
    supplier_id INTEGER,
    last_audit_date TEXT,
    quality_grade TEXT,
    cost_per_unit REAL,
    image_url TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    reorder_threshold INTEGER,
    responsible_user TEXT
);
INSERT INTO magical_ingredient_stock (ingredient_id, name, rarity, origin, batch_number, quantity_on_hand, unit, expiration_date, storage_location, hazard_level, supplier_id, last_audit_date, quality_grade, cost_per_unit, image_url, notes, created_at, updated_at, reorder_threshold, responsible_user) VALUES (1, 'EtherealDust', 'Rare', 'AstralPlane', 'B001', 250, 'grams', '2025-12-31', 'VaultA', 'Low', 12, '2024-01-10', 'A', 5.75, 'http://example.com/ethereal.png', 'Handle with care', '2023-11-01', '2023-11-01', 50, 'AlchemistZ');
INSERT INTO magical_ingredient_stock (ingredient_id, name, rarity, origin, batch_number, quantity_on_hand, unit, expiration_date, storage_location, hazard_level, supplier_id, last_audit_date, quality_grade, cost_per_unit, image_url, notes, created_at, updated_at, reorder_threshold, responsible_user) VALUES (2, 'PhoenixFeather', 'Epic', 'FlameRealm', 'B002', 40, 'pieces', '2024-08-15', 'VaultB', 'Medium', 15, '2024-02-20', 'B', 120.00, 'http://example.com/phoenix.png', 'Do not expose to water', '2023-12-05', '2024-02-20', 10, 'HerbalistY');
INSERT INTO magical_ingredient_stock (ingredient_id, name, rarity, origin, batch_number, quantity_on_hand, unit, expiration_date, storage_location, hazard_level, supplier_id, last_audit_date, quality_grade, cost_per_unit, image_url, notes, created_at, updated_at, reorder_threshold, responsible_user) VALUES (3, 'MoonstoneShards', 'Uncommon', 'LunarCave', 'B003', 500, 'pieces', '2026-03-01', 'VaultC', 'Low', 9, '2024-03-10', 'A', 2.30, 'http://example.com/moonstone.png', 'Store in darkness', '2024-01-15', '2024-03-10', 100, 'MinerX');

-- Galactic Event Schedule
CREATE TABLE galactic_event_schedule (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    galaxy TEXT,
    sector TEXT,
    start_datetime TEXT,
    end_datetime TEXT,
    description TEXT,
    participating_factions TEXT,
    estimated_impact TEXT,
    security_level TEXT,
    coordinator TEXT,
    budget REAL,
    resource_requirements TEXT,
    status TEXT,
    outcome_summary TEXT,
    created_at TEXT,
    updated_at TEXT,
    log_file_path TEXT,
    priority TEXT,
    risk_assessment TEXT,
    communication_channel TEXT
);
INSERT INTO galactic_event_schedule (event_id, name, galaxy, sector, start_datetime, end_datetime, description, participating_factions, estimated_impact, security_level, coordinator, budget, resource_requirements, status, outcome_summary, created_at, updated_at, log_file_path, priority, risk_assessment, communication_channel) VALUES (1, 'NebulaConvergence', 'Andromeda', 'Sector7', '2030-05-01T08:00', '2030-05-10T20:00', 'Alignment of nebulae causing magic surge', 'FactionA,FactionB', 'High', 'TopSecret', 'CommanderZ', 2500000, 'Shipyard,EnergyCells', 'Planned', 'Pending', '2024-04-01', '2024-04-01', '/logs/nebula.log', 'High', 'Critical', 'SecureChannel');
INSERT INTO galactic_event_schedule (event_id, name, galaxy, sector, start_datetime, end_datetime, description, participating_factions, estimated_impact, security_level, coordinator, budget, resource_requirements, status, outcome_summary, created_at, updated_at, log_file_path, priority, risk_assessment, communication_channel) VALUES (2, 'StellarSummit', 'MilkyWay', 'Sector12', '2031-09-15T09:00', '2031-09-20T18:00', 'Gathering of star guilds for trade accords', 'GuildX,GuildY', 'Medium', 'Confidential', 'EnvoyL', 1200000, 'Translators,Diplomats', 'Scheduled', 'Pending', '2024-05-10', '2024-05-10', '/logs/stellar.log', 'Medium', 'Moderate', 'EncryptedLink');
INSERT INTO galactic_event_schedule (event_id, name, galaxy, sector, start_datetime, end_datetime, description, participating_factions, estimated_impact, security_level, coordinator, budget, resource_requirements, status, outcome_summary, created_at, updated_at, log_file_path, priority, risk_assessment, communication_channel) VALUES (3, 'VoidRiftClosure', 'Triangulum', 'Sector3', '2032-02-01T00:00', '2032-02-05T23:59', 'Closure of a destabilizing void rift', 'FactionC', 'Extreme', 'TopSecret', 'GeneralM', 5000000, 'RiftStabilizers,QuantumCore', 'InProgress', 'Ongoing', '2024-06-20', '2024-07-01', '/logs/voidrift.log', 'Critical', 'Extreme', 'SecureChannel');

-- Elder Scrolls Archive
CREATE TABLE elder_scrolls_archive (
    scroll_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    era TEXT,
    language TEXT,
    provenance TEXT,
    condition TEXT,
    storage_location TEXT,
    digitized_flag INTEGER,
    digitization_date TEXT,
    curator TEXT,
    related_artifacts TEXT,
    access_level TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    physical_dimensions TEXT,
    weight REAL,
    material TEXT,
    preservation_status TEXT,
    metadata_hash TEXT
);
INSERT INTO elder_scrolls_archive (scroll_id, title, era, language, provenance, condition, storage_location, digitized_flag, digitization_date, curator, related_artifacts, access_level, notes, created_at, updated_at, physical_dimensions, weight, material, preservation_status, metadata_hash) VALUES (1, 'ChronicleOfEld', 'AgeOfMagi', 'OldTongue', 'TempleVault', 'Good', 'ShelfA', 1, '2022-11-01', 'KeeperA', 'ArtifactX', 'Restricted', 'Highly valued', '2022-10-01', '2023-01-15', '30x20cm', 1.2, 'Papyrus', 'Stable', 'abc123def456');
INSERT INTO elder_scrolls_archive (scroll_id, title, era, language, provenance, condition, storage_location, digitized_flag, digitization_date, curator, related_artifacts, access_level, notes, created_at, updated_at, physical_dimensions, weight, material, preservation_status, metadata_hash) VALUES (2, 'LoresOfTheStars', 'CelestialEra', 'StarScript', 'Observatory', 'Fair', 'ShelfB', 0, NULL, 'KeeperB', 'ArtifactY', 'Public', 'Pending digitization', '2023-02-05', '2023-02-05', '40x25cm', 1.5, 'Vellum', 'NeedsCare', 'def789ghi012');
INSERT INTO elder_scrolls_archive (scroll_id, title, era, language, provenance, condition, storage_location, digitized_flag, digitization_date, curator, related_artifacts, access_level, notes, created_at, updated_at, physical_dimensions, weight, material, preservation_status, metadata_hash) VALUES (3, 'TalesOfAges', 'Ancient', 'RuneGlyph', 'RoyalLibrary', 'Excellent', 'ShelfC', 1, '2021-07-20', 'KeeperC', 'ArtifactZ', 'Restricted', 'On display', '2021-06-15', '2023-03-01', '35x22cm', 1.3, 'Silk', 'Excellent', 'ghi345jkl678');

-- Celestial Alignment Events
CREATE TABLE celestial_alignment_events (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    alignment_type TEXT,
    start_date TEXT,
    end_date TEXT,
    visibility_level TEXT,
    observed_by TEXT,
    instrument_used TEXT,
    data_files TEXT,
    scientific_notes TEXT,
    impact_estimate TEXT,
    associated_legends TEXT,
    status TEXT,
    created_at TEXT,
    updated_at TEXT,
    location_coordinates TEXT,
    duration_hours INTEGER,
    magnitude REAL,
    risk_level TEXT,
    follow_up_actions TEXT
);
INSERT INTO celestial_alignment_events (event_id, name, alignment_type, start_date, end_date, visibility_level, observed_by, instrument_used, data_files, scientific_notes, impact_estimate, associated_legends, status, created_at, updated_at, location_coordinates, duration_hours, magnitude, risk_level, follow_up_actions) VALUES (1, 'SolarEclipseX', 'Solar', '2024-04-08', '2024-04-08', 'High', 'ObservatoryA', 'TelescopeAlpha', 'file1.fits', 'Notable corona activity', 'Low', 'Prophecy of Light', 'Observed', '2024-03-01', '2024-03-01', '12.34,-45.67', 2, 1.5, 'Low', 'PublishPaper');
INSERT INTO celestial_alignment_events (event_id, name, alignment_type, start_date, end_date, visibility_level, observed_by, instrument_used, data_files, scientific_notes, impact_estimate, associated_legends, status, created_at, updated_at, location_coordinates, duration_hours, magnitude, risk_level, follow_up_actions) VALUES (2, 'DualPlanetConjunction', 'Planetary', '2025-09-15', '2025-09-16', 'Medium', 'ObservatoryB', 'SpectrographBeta', 'file2.fits', 'Atmospheric analysis', 'Medium', 'Twin Gods Tale', 'Planned', '2024-04-10', '2024-04-10', '23.45,67.89', 24, 2.2, 'Medium', 'ScheduleFurtherObservations');
INSERT INTO celestial_alignment_events (event_id, name, alignment_type, start_date, end_date, visibility_level, observed_by, instrument_used, data_files, scientific_notes, impact_estimate, associated_legends, status, created_at, updated_at, location_coordinates, duration_hours, magnitude, risk_level, follow_up_actions) VALUES (3, 'LunarTransit', 'Lunar', '2026-12-01', '2026-12-01', 'Low', 'ObservatoryC', 'CameraGamma', 'file3.fits', 'Surface temperature drop', 'Low', 'Moon Whisper Legend', 'Pending', '2024-05-20', '2024-05-20', '45.67,-23.45', 1, 0.8, 'Low', 'AddToArchive');

-- Mana Flow Network
CREATE TABLE mana_flow_network (
    node_id INTEGER PRIMARY KEY AUTOINCREMENT,
    node_name TEXT,
    region TEXT,
    capacity REAL,
    current_flow REAL,
    max_flow REAL,
    overload_flag INTEGER,
    temperature REAL,
    pressure REAL,
    last_maintenance TEXT,
    operator TEXT,
    connected_nodes TEXT,
    latency_ms INTEGER,
    bandwidth_mbps REAL,
    power_consumption_kw REAL,
    firmware_version TEXT,
    status TEXT,
    deployment_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO mana_flow_network (node_id, node_name, region, capacity, current_flow, max_flow, overload_flag, temperature, pressure, last_maintenance, operator, connected_nodes, latency_ms, bandwidth_mbps, power_consumption_kw, firmware_version, status, deployment_date, notes, created_at, updated_at) VALUES (1, 'NodeAlpha', 'NorthRealm', 5000, 3200, 6000, 0, 72.5, 1.02, '2023-12-01', 'EngineerA', 'NodeBeta,NodeGamma', 15, 250.5, 12.3, 'v1.4', 'Active', '2022-01-15', 'Stable operation', '2022-01-15', '2023-11-30');
INSERT INTO mana_flow_network (node_id, node_name, region, capacity, current_flow, max_flow, overload_flag, temperature, pressure, last_maintenance, operator, connected_nodes, latency_ms, bandwidth_mbps, power_consumption_kw, firmware_version, status, deployment_date, notes, created_at, updated_at) VALUES (2, 'NodeBeta', 'EastRealm', 3000, 2900, 3500, 1, 78.0, 1.10, '2024-01-10', 'EngineerB', 'NodeAlpha,NodeDelta', 20, 180.0, 9.5, 'v1.3', 'Degraded', '2022-06-20', 'Overload warning', '2022-06-20', '2024-01-10');
INSERT INTO mana_flow_network (node_id, node_name, region, capacity, current_flow, max_flow, overload_flag, temperature, pressure, last_maintenance, operator, connected_nodes, latency_ms, bandwidth_mbps, power_consumption_kw, firmware_version, status, deployment_date, notes, created_at, updated_at) VALUES (3, 'NodeGamma', 'SouthRealm', 4000, 3800, 4500, 0, 70.2, 1.00, '2023-08-15', 'EngineerC', 'NodeAlpha', 12, 220.0, 10.8, 'v1.5', 'Active', '2023-02-10', 'Operating within limits', '2023-02-10', '2023-08-15');

-- Arcane Device Inventory
CREATE TABLE arcane_device_inventory (
    device_id INTEGER PRIMARY KEY AUTOINCREMENT,
    device_type TEXT,
    model_number TEXT,
    serial_number TEXT,
    acquisition_date TEXT,
    vendor TEXT,
    warranty_expiration TEXT,
    location TEXT,
    status TEXT,
    firmware_version TEXT,
    last_calibration TEXT,
    calibration_interval_days INTEGER,
    assigned_to_user TEXT,
    usage_hours INTEGER,
    power_rating_w REAL,
    network_address TEXT,
    mac_address TEXT,
    ip_address TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO arcane_device_inventory (device_id, device_type, model_number, serial_number, acquisition_date, vendor, warranty_expiration, location, status, firmware_version, last_calibration, calibration_interval_days, assigned_to_user, usage_hours, power_rating_w, network_address, mac_address, ip_address, notes, created_at, updated_at) VALUES (1, 'ManaCondenser', 'MC-200', 'SN12345', '2021-05-01', 'ArcaneTech', '2024-05-01', 'LabA', 'Active', 'fw2.1', '2023-11-20', 180, 'MageLuna', 1500, 250.0, 'net001', 'AA:BB:CC:DD:EE:01', '192.168.1.10', 'No issues', '2021-05-01', '2023-11-20');
INSERT INTO arcane_device_inventory (device_id, device_type, model_number, serial_number, acquisition_date, vendor, warranty_expiration, location, status, firmware_version, last_calibration, calibration_interval_days, assigned_to_user, usage_hours, power_rating_w, network_address, mac_address, ip_address, notes, created_at, updated_at) VALUES (2, 'RuneEncoder', 'RE-500', 'SN54321', '2022-03-15', 'MysticWorks', '2025-03-15', 'LabB', 'Maintenance', 'fw3.0', '2024-02-10', 365, 'ScribeOrion', 800, 120.5, 'net002', 'AA:BB:CC:DD:EE:02', '192.168.1.11', 'Calibration due', '2022-03-15', '2024-02-10');
INSERT INTO arcane_device_inventory (device_id, device_type, model_number, serial_number, acquisition_date, vendor, warranty_expiration, location, status, firmware_version, last_calibration, calibration_interval_days, assigned_to_user, usage_hours, power_rating_w, network_address, mac_address, ip_address, notes, created_at, updated_at) VALUES (3, 'EnergyAmplifier', 'EA-900', 'SN98765', '2020-11-20', 'ArcaneSupplies', '2023-11-20', 'LabC', 'Retired', 'fw1.8', '2022-12-01', 730, 'EngineerM', 2500, 500.0, 'net003', 'AA:BB:CC:DD:EE:03', '192.168.1.12', 'Decommissioned', '2020-11-20', '2022-12-01');

-- Arcane Lore Repository
CREATE TABLE arcane_lore_repository (
    entry_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    category TEXT,
    subcategory TEXT,
    author TEXT,
    creation_date TEXT,
    revision_number INTEGER,
    content_summary TEXT,
    full_text_path TEXT,
    related_entries TEXT,
    access_level TEXT,
    tags TEXT,
    language TEXT,
    page_count INTEGER,
    word_count INTEGER,
    citation_count INTEGER,
    references TEXT,
    status TEXT,
    last_reviewed TEXT,
    notes TEXT
);
INSERT INTO arcane_lore_repository (entry_id, title, category, subcategory, author, creation_date, revision_number, content_summary, full_text_path, related_entries, access_level, tags, language, page_count, word_count, citation_count, references, status, last_reviewed, notes) VALUES (1, 'OriginsOfMana', 'Theory', 'Mana', 'ArchMageZ', '2020-01-10', 3, 'Overview of mana origins', '/lore/origins_mana.pdf', '2,3', 'Public', 'mana,origin', 'English', 45, 12000, 15, 'RefA,RefB', 'Approved', '2023-04-01', 'Reviewed annually');
INSERT INTO arcane_lore_repository (entry_id, title, category, subcategory, author, creation_date, revision_number, content_summary, full_text_path, related_entries, access_level, tags, language, page_count, word_count, citation_count, references, status, last_reviewed, notes) VALUES (2, 'RuneCraftingGuide', 'Manual', 'Runes', 'ScribeLuna', '2019-06-05', 5, 'Step by step rune crafting', '/lore/rune_guide.pdf', '1,4', 'Restricted', 'rune,crafting', 'English', 78, 22000, 30, 'RefC,RefD', 'Approved', '2023-05-12', 'Includes diagrams');
INSERT INTO arcane_lore_repository (entry_id, title, category, subcategory, author, creation_date, revision_number, content_summary, full_text_path, related_entries, access_level, tags, language, page_count, word_count, citation_count, references, status, last_reviewed, notes) VALUES (3, 'ChroniclesOfTheElders', 'History', 'Elders', 'HistorianM', '2018-09-20', 2, 'Historical accounts of elder council', '/lore/elders_chronicles.pdf', '1,2', 'Public', 'history,elders', 'English', 120, 35000, 45, 'RefE,RefF', 'Pending', '2023-06-18', 'Awaiting peer review');

-- Eldritch Artifact Registry
CREATE TABLE eldritch_artifact_registry (
    artifact_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    origin_dimension TEXT,
    discovery_date TEXT,
    discoverer TEXT,
    material_composition TEXT,
    power_level TEXT,
    containment_status TEXT,
    storage_location TEXT,
    last_moved_date TEXT,
    risk_class TEXT,
    handling_instructions TEXT,
    associated_events TEXT,
    archival_reference TEXT,
    image_uri TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    current_owner TEXT,
    decommissioned_flag INTEGER
);
INSERT INTO eldritch_artifact_registry (artifact_id, name, origin_dimension, discovery_date, discoverer, material_composition, power_level, containment_status, storage_location, last_moved_date, risk_class, handling_instructions, associated_events, archival_reference, image_uri, notes, created_at, updated_at, current_owner, decommissioned_flag) VALUES (1, 'HeartOfAbyss', 'NetherPlane', '2021-04-12', 'ExplorerR', 'Obsidian', 'Extreme', 'Secure', 'VaultX', '2023-02-01', 'ClassA', 'Wear gloves', 'EventX', 'ARC001', 'http://img.example.com/heart.png', 'Highly volatile', '2021-04-12', '2023-02-01', 'ArcaneInstitute', 0);
INSERT INTO eldritch_artifact_registry (artifact_id, name, origin_dimension, discovery_date, discoverer, material_composition, power_level, containment_status, storage_location, last_moved_date, risk_class, handling_instructions, associated_events, archival_reference, image_uri, notes, created_at, updated_at, current_owner, decommissioned_flag) VALUES (2, 'ScepterOfEchoes', 'EchoRealm', '2020-11-05', 'MageL', 'Crystal', 'High', 'Quarantine', 'VaultY', '2022-09-15', 'ClassB', 'No direct contact', 'EventY', 'ARC002', 'http://img.example.com/scepter.png', 'Resonates at night', '2020-11-05', '2022-09-15', 'MysticOrder', 0);
INSERT INTO eldritch_artifact_registry (artifact_id, name, origin_dimension, discovery_date, discoverer, material_composition, power_level, containment_status, storage_location, last_moved_date, risk_class, handling_instructions, associated_events, archival_reference, image_uri, notes, created_at, updated_at, current_owner, decommissioned_flag) VALUES (3, 'VeilOfShadows', 'ShadowDepths', '2019-07-22', 'RogueV', 'Silk', 'Medium', 'Locked', 'VaultZ', '2021-12-30', 'ClassC', 'Handle in darkness', 'EventZ', 'ARC003', 'http://img.example.com/veil.png', 'Absorbs light', '2019-07-22', '2021-12-30', 'ShadowGuild', 0);

-- Interdimensional Trade Routes
CREATE TABLE interdimensional_trade_routes (
    route_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    origin_plane TEXT,
    destination_plane TEXT,
    distance_ly REAL,
    travel_time_days INTEGER,
    security_level TEXT,
    governing_body TEXT,
    trade_volume REAL,
    commodity_types TEXT,
    fee_structure TEXT,
    last_inspection TEXT,
    status TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    max_cargo_weight REAL,
    max_cargo_volume REAL,
    route_manager TEXT,
    hazard_reports TEXT
);
INSERT INTO interdimensional_trade_routes (route_id, name, origin_plane, destination_plane, distance_ly, travel_time_days, security_level, governing_body, trade_volume, commodity_types, fee_structure, last_inspection, status, created_at, updated_at, notes, max_cargo_weight, max_cargo_volume, route_manager, hazard_reports) VALUES (1, 'SilverThread', 'PlaneA', 'PlaneB', 1200.5, 15, 'High', 'TradeCouncil', 50000.0, 'Artifacts,Spices', 'FlatRate', '2023-11-20', 'Active', '2023-01-10', '2023-11-20', 'Stable route', 2000.0, 1500.0, 'ManagerX', 'None');
INSERT INTO interdimensional_trade_routes (route_id, name, origin_plane, destination_plane, distance_ly, travel_time_days, security_level, governing_body, trade_volume, commodity_types, fee_structure, last_inspection, status, created_at, updated_at, notes, max_cargo_weight, max_cargo_volume, route_manager, hazard_reports) VALUES (2, 'ObsidianPath', 'PlaneC', 'PlaneD', 2500.0, 30, 'Medium', 'InterPlaneAlliance', 75000.0, 'Metals,Enchantments', 'Percentage', '2024-02-15', 'Planned', '2023-06-05', '2024-02-15', 'Requires security upgrade', 3000.0, 2500.0, 'ManagerY', 'Storms');
INSERT INTO interdimensional_trade_routes (route_id, name, origin_plane, destination_plane, distance_ly, travel_time_days, security_level, governing_body, trade_volume, commodity_types, fee_structure, last_inspection, status, created_at, updated_at, notes, max_cargo_weight, max_cargo_volume, route_manager, hazard_reports) VALUES (3, 'CelestialPassage', 'PlaneE', 'PlaneF', 800.0, 10, 'Low', 'CelestialCommittee', 30000.0, 'Herbs,Potions', 'FlatRate', '2023-09-01', 'Active', '2023-02-20', '2023-09-01', 'Low traffic', 1500.0, 1200.0, 'ManagerZ', 'MinorFlux');