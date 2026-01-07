-- Card ability definitions adjacent to core card data
CREATE TABLE card_ability_definitions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ability_code TEXT,
    name TEXT,
    description TEXT,
    mana_cost REAL,
    power_modifier INTEGER,
    toughness_modifier INTEGER,
    trigger_timing TEXT,
    zone TEXT,
    requires_target INTEGER,
    is_optional INTEGER,
    rarity TEXT,
    expansion_code TEXT,
    created_at DATE,
    updated_at DATE,
    artist_credit TEXT,
    illustration_id TEXT,
    rule_reference TEXT,
    legacy_flag INTEGER,
    gameplay_category TEXT,
    notes TEXT,
    db_version INTEGER
);

INSERT INTO card_ability_definitions (ability_code, name, description, mana_cost, power_modifier, toughness_modifier, trigger_timing, zone, requires_target, is_optional, rarity, expansion_code, created_at, updated_at, artist_credit, illustration_id, rule_reference, legacy_flag, gameplay_category, notes, db_version)
VALUES ('AB01','Fireball','Deals damage to target',3.0,0,0,'OnCast','Stack',1,0,'Common','M21','2023-01-01','2023-01-02','JohnDoe','ILL01','RULE123',0,'Damage','Basic fire spell',1);

INSERT INTO card_ability_definitions (ability_code, name, description, mana_cost, power_modifier, toughness_modifier, trigger_timing, zone, requires_target, is_optional, rarity, expansion_code, created_at, updated_at, artist_credit, illustration_id, rule_reference, legacy_flag, gameplay_category, notes, db_version)
VALUES ('AB02','Lifelink','Heals controller equal to damage dealt',2.0,0,0,'OnDamage','Battlefield',0,0,'Uncommon','GRN','2023-02-15','2023-02-16','JaneSmith','ILL02','RULE124',0,'Healing','Life gain effect',2);

INSERT INTO card_ability_definitions (ability_code, name, description, mana_cost, power_modifier, toughness_modifier, trigger_timing, zone, requires_target, is_optional, rarity, expansion_code, created_at, updated_at, artist_credit, illustration_id, rule_reference, legacy_flag, gameplay_category, notes, db_version)
VALUES ('AB03','Flying','Can only be blocked by creatures with flying or reach',1.0,0,0,'Static','Battlefield',0,0,'Rare','THB','2023-03-10','2023-03-11','AlexRay','ILL03','RULE125',0,'Evasion','Aerial combat ability',3);


-- Financial data for each card set
CREATE TABLE set_financials (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    production_budget REAL,
    marketing_budget REAL,
    projected_sales INTEGER,
    actual_sales INTEGER,
    profit_margin REAL,
    currency TEXT,
    exchange_rate REAL,
    financial_report_date DATE,
    auditor_name TEXT,
    cost_per_card REAL,
    total_print_runs INTEGER,
    royalty_paid REAL,
    licensing_fee REAL,
    distribution_cost REAL,
    logistics_cost REAL,
    tax_rate REAL,
    net_income REAL,
    gross_income REAL,
    notes TEXT,
    version INTEGER
);

INSERT INTO set_financials (set_code, production_budget, marketing_budget, projected_sales, actual_sales, profit_margin, currency, exchange_rate, financial_report_date, auditor_name, cost_per_card, total_print_runs, royalty_paid, licensing_fee, distribution_cost, logistics_cost, tax_rate, net_income, gross_income, notes, version)
VALUES ('M21',500000.0,250000.0,1500000,1450000,0.12,'USD',1.0,'2023-04-01','AuditCorp',0.30,2000000,150000.0,50000.0,80000.0,60000.0,0.22,130000.0,500000.0,'Mid-year report',1);

INSERT INTO set_financials (set_code, production_budget, marketing_budget, projected_sales, actual_sales, profit_margin, currency, exchange_rate, financial_report_date, auditor_name, cost_per_card, total_print_runs, royalty_paid, licensing_fee, distribution_cost, logistics_cost, tax_rate, net_income, gross_income, notes, version)
VALUES ('GRN',420000.0,210000.0,1200000,1195000,0.15,'USD',1.0,'2023-05-01','FinanceGroup',0.28,1500000,120000.0,45000.0,70000.0,50000.0,0.20,140000.0,400000.0,'Quarterly audit',2);

INSERT INTO set_financials (set_code, production_budget, marketing_budget, projected_sales, actual_sales, profit_margin, currency, exchange_rate, financial_report_date, auditor_name, cost_per_card, total_print_runs, royalty_paid, licensing_fee, distribution_cost, logistics_cost, tax_rate, net_income, gross_income, notes, version)
VALUES ('THB',380000.0,190000.0,1100000,1080000,0.10,'USD',1.0,'2023-06-01','ClearAudit',0.35,1300000,110000.0,40000.0,65000.0,45000.0,0.18,100000.0,350000.0,'Year-end summary',3);


-- Inventory of player-owned gear and equipment
CREATE TABLE player_gear_inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    gear_type TEXT,
    brand TEXT,
    model TEXT,
    serial_number TEXT,
    acquired_date DATE,
    warranty_expiry DATE,
    condition TEXT,
    custom_mods TEXT,
    usage_hours INTEGER,
    last_maintenance DATE,
    location_storage TEXT,
    insurance_policy TEXT,
    insured_value REAL,
    resale_value REAL,
    depreciation_rate REAL,
    status TEXT,
    notes TEXT,
    last_updated DATE,
    version INTEGER
);

INSERT INTO player_gear_inventory (player_id, gear_type, brand, model, serial_number, acquired_date, warranty_expiry, condition, custom_mods, usage_hours, last_maintenance, location_storage, insurance_policy, insured_value, resale_value, depreciation_rate, status, notes, last_updated, version)
VALUES (101,'Mouse','LogiTech','G502','SN001','2022-01-15','2025-01-15','New','RGB,Weight','120','2023-12-01','HomeOffice','PolicyA',120.0,80.0,0.25,'Active','High precision gaming mouse','2024-01-01',1);

INSERT INTO player_gear_inventory (player_id, gear_type, brand, model, serial_number, acquired_date, warranty_expiry, condition, custom_mods, usage_hours, last_maintenance, location_storage, insurance_policy, insured_value, resale_value, depreciation_rate, status, notes, last_updated, version)
VALUES (102,'Keyboard','Corsair','K95','SN002','2021-07-20','2024-07-20','Good','MacroKeys,Backlit','350','2023-11-15','DeskDrawer','PolicyB',150.0,100.0,0.30,'Active','Mechanical with macro support','2024-01-02',1);

INSERT INTO player_gear_inventory (player_id, gear_type, brand, model, serial_number, acquired_date, warranty_expiry, condition, custom_mods, usage_hours, last_maintenance, location_storage, insurance_policy, insured_value, resale_value, depreciation_rate, status, notes, last_updated, version)
VALUES (103,'Headset','HyperX','CloudII','SN003','2020-03-05','2023-03-05','Worn','NoiseCancel','500','2023-10-10','LivingRoom','PolicyC',80.0,40.0,0.40,'Inactive','Comfortable but aging','2024-01-03',2);


-- Infrastructure details for tournament venues
CREATE TABLE tournament_infrastructure (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    venue_id INTEGER,
    stage_name TEXT,
    capacity INTEGER,
    seating_type TEXT,
    audio_system TEXT,
    lighting_system TEXT,
    wifi_bandwidth TEXT,
    backup_power TEXT,
    security_level TEXT,
    registration_counter INTEGER,
    streaming_setup TEXT,
    catering_provider TEXT,
    cleaning_schedule TEXT,
    waste_management TEXT,
    emergency_plan TEXT,
    accessibility_features TEXT,
    signage_type TEXT,
    green_certification TEXT,
    notes TEXT,
    created_at DATE
);

INSERT INTO tournament_infrastructure (tournament_id, venue_id, stage_name, capacity, seating_type, audio_system, lighting_system, wifi_bandwidth, backup_power, security_level, registration_counter, streaming_setup, catering_provider, cleaning_schedule, waste_management, emergency_plan, accessibility_features, signage_type, green_certification, notes, created_at)
VALUES (201,301,'Main Stage',2000,'Fixed','Dante','LED','1Gbps','Generator','High',5,'OBS+Nginx','CateringCo','Hourly','Recycling','PlanA','Ramps,AssistiveListening','Digital','LEED','Primary competition area','2023-07-01');

INSERT INTO tournament_infrastructure (tournament_id, venue_id, stage_name, capacity, seating_type, audio_system, lighting_system, wifi_bandwidth, backup_power, security_level, registration_counter, streaming_setup, catering_provider, cleaning_schedule, waste_management, emergency_plan, accessibility_features, signage_type, green_certification, notes, created_at)
VALUES (202,302,'Side Arena',500,'Movable','Yamaha','Spotlight','500Mbps','UPS','Medium',2,'Wirecast','FoodiesInc','TwiceDaily','Compost','PlanB','Elevators','Physical','EnergyStar','Standard side arena','2023-08-10');

INSERT INTO tournament_infrastructure (tournament_id, venue_id, stage_name, capacity, seating_type, audio_system, lighting_system, wifi_bandwidth, backup_power, security_level, registration_counter, streaming_setup, catering_provider, cleaning_schedule, waste_management, emergency_plan, accessibility_features, signage_type, green_certification, notes, created_at)
VALUES (203,303,'Practice Hall',300,'Bench','Shure','Fluorescent','200Mbps','None','Low',1,'None','SnacksCo','Daily','None','PlanC','None','None','None','No certification','Practice area','2023-09-15');


-- Log of digital asset distribution campaigns
CREATE TABLE digital_asset_distribution_log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_id TEXT,
    asset_type TEXT,
    distribution_channel TEXT,
    target_audience TEXT,
    start_date DATE,
    end_date DATE,
    impressions INTEGER,
    clicks INTEGER,
    conversion_rate REAL,
    cost_per_impression REAL,
    total_spent REAL,
    campaign_name TEXT,
    approval_status TEXT,
    created_by TEXT,
    reviewed_by TEXT,
    version INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    geo_target TEXT,
    device_target TEXT
);

INSERT INTO digital_asset_distribution_log (asset_id, asset_type, distribution_channel, target_audience, start_date, end_date, impressions, clicks, conversion_rate, cost_per_impression, total_spent, campaign_name, approval_status, created_by, reviewed_by, version, notes, created_at, updated_at, geo_target, device_target)
VALUES ('AS001','CardArt','SocialMedia','Collectors','2023-01-01','2023-01-15',500000,2500,0.005,0.02,10000.0,'WinterArtDrop','Approved','Mark','Sophie',1,'High quality artwork promotion','2023-01-01','2023-01-16','NA','Mobile');

INSERT INTO digital_asset_distribution_log (asset_id, asset_type, distribution_channel, target_audience, start_date, end_date, impressions, clicks, conversion_rate, cost_per_impression, total_spent, campaign_name, approval_status, created_by, reviewed_by, version, notes, created_at, updated_at, geo_target, device_target)
VALUES ('AS002','PromoVideo','YouTube','Players','2023-02-01','2023-02-10',800000,3200,0.004,0.015,12000.0,'SetTeaserFeb','Approved','Laura','Tom',2,'Video teaser for upcoming set','2023-02-01','2023-02-11','EU','Desktop');

INSERT INTO digital_asset_distribution_log (asset_id, asset_type, distribution_channel, target_audience, start_date, end_date, impressions, clicks, conversion_rate, cost_per_impression, total_spent, campaign_name, approval_status, created_by, reviewed_by, version, notes, created_at, updated_at, geo_target, device_target)
VALUES ('AS003','Banner','Web','NewPlayers','2023-03-05','2023-03-20',600000,1800,0.003,0.01,6000.0,'WelcomeBanner','Pending','Eve','Nina',1,'Banner for onboarding','2023-03-05','2023-03-21','APAC','Tablet');


-- Environmental impact assessments for production facilities
CREATE TABLE environmental_impact_assessment (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    assessment_date DATE,
    location_code TEXT,
    co2_emission_tons REAL,
    water_usage_cubic_m REAL,
    energy_consumption_kwh REAL,
    waste_generated_kg REAL,
    recycling_rate REAL,
    compliance_score INTEGER,
    auditor TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    assessment_version INTEGER,
    renewable_energy_percent REAL,
    hazardous_materials_handled INTEGER,
    transport_emission_tons REAL,
    supplier_rating INTEGER,
    mitigation_actions TEXT,
    projected_savings REAL,
    report_url TEXT
);

INSERT INTO environmental_impact_assessment (assessment_date, location_code, co2_emission_tons, water_usage_cubic_m, energy_consumption_kwh, waste_generated_kg, recycling_rate, compliance_score, auditor, notes, created_at, updated_at, assessment_version, renewable_energy_percent, hazardous_materials_handled, transport_emission_tons, supplier_rating, mitigation_actions, projected_savings, report_url)
VALUES ('2023-04-15','FAC01',120.5,4500.0,80000.0,3000.0,0.65,88,'EcoAuditInc','Quarterly intake','2023-04-15','2023-04-20',1,35.0,5,25.0,90,'Install solar panels','15000.0','http://reports.example.com/fac01_q1');

INSERT INTO environmental_impact_assessment (assessment_date, location_code, co2_emission_tons, water_usage_cubic_m, energy_consumption_kwh, waste_generated_kg, recycling_rate, compliance_score, auditor, notes, created_at, updated_at, assessment_version, renewable_energy_percent, hazardous_materials_handled, transport_emission_tons, supplier_rating, mitigation_actions, projected_savings, report_url)
VALUES ('2023-07-10','FAC02',95.0,3800.0,73000.0,2500.0,0.70,92,'GreenCheck','Mid-year review','2023-07-10','2023-07-12',2,40.0,3,20.0,95,'Upgrade HVAC filters','12000.0','http://reports.example.com/fac02_mid');

INSERT INTO environmental_impact_assessment (assessment_date, location_code, co2_emission_tons, water_usage_cubic_m, energy_consumption_kwh, waste_generated_kg, recycling_rate, compliance_score, auditor, notes, created_at, updated_at, assessment_version, renewable_energy_percent, hazardous_materials_handled, transport_emission_tons, supplier_rating, mitigation_actions, projected_savings, report_url)
VALUES ('2023-10-05','FAC03',110.0,4200.0,77000.0,2800.0,0.68,90,'SustainAudit','Annual summary','2023-10-05','2023-10-07',3,38.0,4,22.0,88,'Implement rainwater harvesting','14000.0','http://reports.example.com/fac03_annual');


-- Detailed sponsor engagement metrics per campaign
CREATE TABLE sponsor_engagement_metrics_detail (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    campaign_id INTEGER,
    event_id INTEGER,
    impressions INTEGER,
    engagements INTEGER,
    lead_conversions INTEGER,
    revenue_attributed REAL,
    cost_per_lead REAL,
    start_date DATE,
    end_date DATE,
    channel TEXT,
    audience_segment TEXT,
    satisfaction_score INTEGER,
    feedback_notes TEXT,
    created_at DATE,
    updated_at DATE,
    metric_version INTEGER,
    geographic_region TEXT,
    digital_vs_physical TEXT,
    total_budget REAL
);

INSERT INTO sponsor_engagement_metrics_detail (sponsor_id, campaign_id, event_id, impressions, engagements, lead_conversions, revenue_attributed, cost_per_lead, start_date, end_date, channel, audience_segment, satisfaction_score, feedback_notes, created_at, updated_at, metric_version, geographic_region, digital_vs_physical, total_budget)
VALUES (301,401,501,200000,8000,250,50000.0,20.0,'2023-05-01','2023-05-10','Online','CorePlayers',85,'Positive response to booth','2023-05-01','2023-05-11',1,'NA','Digital',150000.0);

INSERT INTO sponsor_engagement_metrics_detail (sponsor_id, campaign_id, event_id, impressions, engagements, lead_conversions, revenue_attributed, cost_per_lead, start_date, end_date, channel, audience_segment, satisfaction_score, feedback_notes, created_at, updated_at, metric_version, geographic_region, digital_vs_physical, total_budget)
VALUES (302,402,502,150000,6000,180,40000.0,22.2,'2023-06-15','2023-06-20','Physical','CasualFans',78,'Good foot traffic but low conversion','2023-06-15','2023-06-21',2,'EU','Physical',120000.0);

INSERT INTO sponsor_engagement_metrics_detail (sponsor_id, campaign_id, event_id, impressions, engagements, lead_conversions, revenue_attributed, cost_per_lead, start_date, end_date, channel, audience_segment, satisfaction_score, feedback_notes, created_at, updated_at, metric_version, geographic_region, digital_vs_physical, total_budget)
VALUES (303,403,503,250000,12000,400,75000.0,18.75,'2023-08-01','2023-08-05','Hybrid','ProPlayers',92,'Highly engaged streaming audience','2023-08-01','2023-08-06',1,'APAC','Hybrid',180000.0);


-- Hierarchical data for fantasy world locations
CREATE TABLE lore_location_hierarchy (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    location_id TEXT,
    parent_location_id TEXT,
    name TEXT,
    type TEXT,
    region TEXT,
    continent TEXT,
    climate TEXT,
    dominant_species TEXT,
    historical_significance TEXT,
    first_mentioned_year INTEGER,
    last_mentioned_year INTEGER,
    primary_language TEXT,
    governing_body TEXT,
    known_resources TEXT,
    threat_level TEXT,
    notable_events TEXT,
    map_coordinates TEXT,
    description TEXT,
    created_at DATE,
    updated_at DATE,
    version INTEGER
);

INSERT INTO lore_location_hierarchy (location_id, parent_location_id, name, type, region, continent, climate, dominant_species, historical_significance, first_mentioned_year, last_mentioned_year, primary_language, governing_body, known_resources, threat_level, notable_events, map_coordinates, description, created_at, updated_at, version)
VALUES ('LOC001','WRLD001','Eldoria','Kingdom','Northlands','Eldara','Temperate','Humans','Birthplace of the First Mage',1020,2023,'Eldorian','RoyalCouncil','Gold,Spice','Low','Coronation of Queen Alia','45N,30E','A prosperous kingdom known for its scholars','2023-01-01','2023-01-02',1);

INSERT INTO lore_location_hierarchy (location_id, parent_location_id, name, type, region, continent, climate, dominant_species, historical_significance, first_mentioned_year, last_mentioned_year, primary_language, governing_body, known_resources, threat_level, notable_events, map_coordinates, description, created_at, updated_at, version)
VALUES ('LOC002','WRLD001','Drakespire','MountainRange','Highlands','Eldara','Cold','Dragons','Site of the Great Dragon War',1500,1910,'AncientRunes','ElderCouncil','Mythril,Obsidian','High','Battle of Ember Peak','60N,45E','Jagged peaks home to ancient dragons','2023-02-01','2023-02-02',1);

INSERT INTO lore_location_hierarchy (location_id, parent_location_id, name, type, region, continent, climate, dominant_species, historical_significance, first_mentioned_year, last_mentioned_year, primary_language, governing_body, known_resources, threat_level, notable_events, map_coordinates, description, created_at, updated_at, version)
VALUES ('LOC003','LOC001','Silvern Vale','Town','East Plains','Eldara','Mild','Elves','Known for silver mines',1800,2022,'Elvish','MayorCouncil','Silver,Timber','Medium','Festival of Lights','50N,35E','A bustling trade town with elven architecture','2023-03-01','2023-03-02',1);


-- Metrics for magical (arcane) energy consumption
CREATE TABLE arcane_energy_metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    source_id TEXT,
    source_type TEXT,
    consumption_rate_per_hour REAL,
    peak_consumption REAL,
    average_consumption REAL,
    energy_source TEXT,
    conversion_efficiency REAL,
    timestamp DATE,
    recorded_by TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    compliance_flag INTEGER,
    regulatory_body TEXT,
    cost_per_unit REAL,
    total_cost REAL,
    energy_savings REAL,
    mitigation_plan TEXT,
    version INTEGER
);

INSERT INTO arcane_energy_metrics (source_id, source_type, consumption_rate_per_hour, peak_consumption, average_consumption, energy_source, conversion_efficiency, timestamp, recorded_by, notes, created_at, updated_at, compliance_flag, regulatory_body, cost_per_unit, total_cost, energy_savings, mitigation_plan, version)
VALUES ('SRC001','ManaWell',15.5,30.0,20.0,'Mana','0.85','2023-04-01','ArcaneDept','Normal operation','2023-04-01','2023-04-02',1,'ArcaneReg','2.5','75.0','5.0','Install flow regulator',1);

INSERT INTO arcane_energy_metrics (source_id, source_type, consumption_rate_per_hour, peak_consumption, average_consumption, energy_source, conversion_efficiency, timestamp, recorded_by, notes, created_at, updated_at, compliance_flag, regulatory_body, cost_per_unit, total_cost, energy_savings, mitigation_plan, version)
VALUES ('SRC002','EnchantedForge',22.0,40.0,30.0,'Ether','0.78','2023-05-15','ForgeOps','Higher than expected usage','2023-05-15','2023-05-16',0,'ForgeAuthority','3.0','660.0','10.0','Upgrade ventilation system',2);

INSERT INTO arcane_energy_metrics (source_id, source_type, consumption_rate_per_hour, peak_consumption, average_consumption, energy_source, conversion_efficiency, timestamp, recorded_by, notes, created_at, updated_at, compliance_flag, regulatory_body, cost_per_unit, total_cost, energy_savings, mitigation_plan, version)
VALUES ('SRC003','CrystalArray',8.0,12.0,9.5,'Crystal','0.92','2023-06-20','CrystalTeam','Stable performance','2023-06-20','2023-06-21',1,'CrystalBoard','1.8','16.2','2.0','Routine maintenance',1);


-- Records of artifact forging operations
CREATE TABLE artifact_forge_operations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    forge_id TEXT,
    artifact_id TEXT,
    operation_type TEXT,
    start_timestamp DATE,
    end_timestamp DATE,
    technician_id INTEGER,
    material_used TEXT,
    material_quantity REAL,
    energy_consumed_kwh REAL,
    waste_generated_kg REAL,
    quality_grade TEXT,
    inspection_passed INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    version INTEGER,
    cost_estimate REAL,
    downtime_minutes INTEGER,
    safety_incidents INTEGER,
    regulatory_compliance TEXT
);

INSERT INTO artifact_forge_operations (forge_id, artifact_id, operation_type, start_timestamp, end_timestamp, technician_id, material_used, material_quantity, energy_consumed_kwh, waste_generated_kg, quality_grade, inspection_passed, notes, created_at, updated_at, version, cost_estimate, downtime_minutes, safety_incidents, regulatory_compliance)
VALUES ('FRG001','ART001','Imbue','2023-07-01','2023-07-02',110,'AetherCrystal',5.0,1200.0,15.0,'A','1','Successful imbue of core',2023-07-01,2023-07-02,1,2500.0,30,0,'Full');

INSERT INTO artifact_forge_operations (forge_id, artifact_id, operation_type, start_timestamp, end_timestamp, technician_id, material_used, material_quantity, energy_consumed_kwh, waste_generated_kg, quality_grade, inspection_passed, notes, created_at, updated_at, version, cost_estimate, downtime_minutes, safety_incidents, regulatory_compliance)
VALUES ('FRG002','ART002','Temper','2023-08-10','2023-08-11',115,'DragonScale',3.5,900.0,10.0,'B','1','Temperatures stabilized',2023-08-10,2023-08-11,2,1800.0,45,1,'Partial');

INSERT INTO artifact_forge_operations (forge_id, artifact_id, operation_type, start_timestamp, end_timestamp, technician_id, material_used, material_quantity, energy_consumed_kwh, waste_generated_kg, quality_grade, inspection_passed, notes, created_at, updated_at, version, cost_estimate, downtime_minutes, safety_incidents, regulatory_compliance)
VALUES ('FRG003','ART003','Polish','2023-09-05','2023-09-05',118,'MysticDust',1.2,300.0,5.0,'A','1','Achieved mirror finish',2023-09-05,2023-09-05,1,900.0,15,0,'Full');