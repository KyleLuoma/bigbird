-- Player equipment inventory table
CREATE TABLE player_equipment_inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER NOT NULL,
    equipment_type TEXT,
    equipment_name TEXT,
    acquisition_date DATE,
    durability INTEGER,
    level INTEGER,
    rarity TEXT,
    enhancement_slots INTEGER,
    socketed_gems TEXT,
    custom_name TEXT,
    condition TEXT,
    last_maintained DATE,
    manufacturer TEXT,
    warranty_end DATE,
    serial_number TEXT,
    base_power REAL,
    base_defense REAL,
    weight REAL,
    notes TEXT
);

INSERT INTO player_equipment_inventory (player_id,equipment_type,equipment_name,acquisition_date,durability,level,rarity,enhancement_slots,socketed_gems,custom_name,condition,last_maintained,manufacturer,warranty_end,serial_number,base_power,base_defense,weight,notes) VALUES (101,'Weapon','Flame_Sword','2023-05-12',85,3,'Rare',2,'Ruby,Emerald','Blazing Edge','Good','2024-01-01','Arcane_Forges','2025-05-12','FS-001',45.5,12.3,4.2,'First_edition');
INSERT INTO player_equipment_inventory (player_id,equipment_type,equipment_name,acquisition_date,durability,level,rarity,enhancement_slots,socketed_gems,custom_name,condition,last_maintained,manufacturer,warranty_end,serial_number,base_power,base_defense,weight,notes) VALUES (102,'Armor','Dragon_Scale_Chest','2022-11-03',70,2,'Epic',1,'Sapphire','Scales_of_Valor','Excellent','2023-12-20','Mythic_Arms','2024-11-03','DSC-078',0,58.9,15.0,'Limited_run');
INSERT INTO player_equipment_inventory (player_id,equipment_type,equipment_name,acquisition_date,durability,level,rarity,enhancement_slots,socketed_gems,custom_name,condition,last_maintained,manufacturer,warranty_end,serial_number,base_power,base_defense,weight,notes) VALUES (103,'Accessory','Phoenix_Amulet','2024-01-15',95,1,'Mythic',0,'','Eternal_Flame','Pristine','2024-08-01','Celestial_Crafts','2026-01-15','PA-110',12.5,5.5,0.5,'Event_reward');

-- Tournament match schedule table
CREATE TABLE tournament_match_schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER NOT NULL,
    round_number INTEGER,
    match_number INTEGER,
    player1_id INTEGER,
    player2_id INTEGER,
    scheduled_start DATETIME,
    scheduled_end DATETIME,
    venue_id INTEGER,
    stream_channel TEXT,
    broadcast_url TEXT,
    referee_id INTEGER,
    match_status TEXT,
    prize_pool REAL,
    audience_estimate INTEGER,
    game_mode TEXT,
    meta_version TEXT,
    ruleset_version TEXT,
    comments TEXT,
    created_at DATETIME
);

INSERT INTO tournament_match_schedule (tournament_id,round_number,match_number,player1_id,player2_id,scheduled_start,scheduled_end,venue_id,stream_channel,broadcast_url,referee_id,match_status,prize_pool,audience_estimate,game_mode,meta_version,ruleset_version,comments,created_at) VALUES (201,1,1,101,102,'2024-06-01 10:00:00','2024-06-01 10:45:00',301,'Twitch','http://stream.example.com/match1',401,'Scheduled',5000,1200,'Standard','v2.1','2024-03','Quarterfinal_1','2024-05-20 08:00:00');
INSERT INTO tournament_match_schedule (tournament_id,round_number,match_number,player1_id,player2_id,scheduled_start,scheduled_end,venue_id,stream_channel,broadcast_url,referee_id,match_status,prize_pool,audience_estimate,game_mode,meta_version,ruleset_version,comments,created_at) VALUES (201,1,2,103,104,'2024-06-01 11:00:00','2024-06-01 11:40:00',301,'YouTube','http://stream.example.com/match2',402,'Scheduled',5000,1150,'Standard','v2.1','2024-03','Quarterfinal_2','2024-05-20 08:10:00');
INSERT INTO tournament_match_schedule (tournament_id,round_number,match_number,player1_id,player2_id,scheduled_start,scheduled_end,venue_id,stream_channel,broadcast_url,referee_id,match_status,prize_pool,audience_estimate,game_mode,meta_version,ruleset_version,comments,created_at) VALUES (201,2,1,105,106,'2024-06-02 14:00:00','2024-06-02 14:45:00',302,'Mixer','http://stream.example.com/match3',403,'Scheduled',10000,2500,'Standard','v2.1','2024-03','Semifinal_1','2024-05-21 09:00:00');

-- Digital collectible series metadata table
CREATE TABLE digital_collectible_series_metadata (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    series_name TEXT,
    series_code TEXT,
    launch_date DATE,
    total_items INTEGER,
    blockchain TEXT,
    contract_address TEXT,
    royalty_percent REAL,
    creator TEXT,
    description TEXT,
    theme TEXT,
    rarity_distribution TEXT,
    max_supply INTEGER,
    current_supply INTEGER,
    last_mint_date DATE,
    mint_price REAL,
    metadata_uri TEXT,
    image_base_uri TEXT,
    series_status TEXT,
    external_link TEXT,
    created_by TEXT
);

INSERT INTO digital_collectible_series_metadata (series_name,series_code,launch_date,total_items,blockchain,contract_address,royalty_percent,creator,description,theme,rarity_distribution,max_supply,current_supply,last_mint_date,mint_price,metadata_uri,image_base_uri,series_status,external_link,created_by) VALUES ('Arcane_Artifacts','AA01','2023-09-15',100,'Ethereum','0xABC123DEF456',5.0,'Eldritch_Studios','A_collection_of_mystic_artifacts','Arcane','Common:70,Uncommon:20,Rare:9,Legendary:1',1000,250,'2024-04-10',0.08,'ipfs://metadata/aa','ipfs://images/aa','Active','http://arcaneartifacts.example.com','admin');
INSERT INTO digital_collectible_series_metadata (series_name,series_code,launch_date,total_items,blockchain,contract_address,royalty_percent,creator,description,theme,rarity_distribution,max_supply,current_supply,last_mint_date,mint_price,metadata_uri,image_base_uri,series_status,external_link,created_by) VALUES ('Celestial_Chronicles','CC99','2022-12-01',200,'Solana','0x987ZYX654WVU',3.5,'Stellar_Forge','Chronicles_of_the_cosmos','Space','Common:80,Uncommon:15,Rare:4,Mythic:1',2000,750,'2024-03-22',0.12,'ipfs://metadata/cc','ipfs://images/cc','Paused','http://celestial.example.com','system');
INSERT INTO digital_collectible_series_metadata (series_name,series_code,launch_date,total_items,blockchain,contract_address,royalty_percent,creator,description,theme,rarity_distribution,max_supply,current_supply,last_mint_date,mint_price,metadata_uri,image_base_uri,series_status,external_link,created_by) VALUES ('Mythic_Realms','MR07','2024-02-20',50,'Polygon','0x456MNO789PQR',7.0,'Mythic_Labs','Explorations_of_legendary_realms','Fantasy','Common:60,Uncommon:25,Rare:10,Legendary:5',500,120,'2024-05-01',0.15,'ipfs://metadata/mr','ipfs://images/mr','Upcoming','http://mythicrealms.example.com','admin');

-- Arena match outcomes table
CREATE TABLE arena_match_outcomes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    arena_match_id INTEGER NOT NULL,
    player_id INTEGER,
    opponent_id INTEGER,
    result TEXT,
    win_loss_streak INTEGER,
    life_total_start INTEGER,
    life_total_end INTEGER,
    turns_taken INTEGER,
    decks_used TEXT,
    gold_earned REAL,
    experience_gained INTEGER,
    match_date DATE,
    time_played TIME,
    arena_rank_before INTEGER,
    arena_rank_after INTEGER,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    is_ranked INTEGER
);

INSERT INTO arena_match_outcomes (arena_match_id,player_id,opponent_id,result,win_loss_streak,life_total_start,life_total_end,turns_taken,decks_used,gold_earned,experience_gained,match_date,time_played,arena_rank_before,arena_rank_after,notes,created_at,updated_at,is_ranked) VALUES (301,101,102,'Win',3,20,0,7,'Aggro_Red',150.0,200,'2024-04-12','14:35:00',1500,1520,'Quick_victory','2024-04-12 14:40:00','2024-04-12 14:40:00',1);
INSERT INTO arena_match_outcomes (arena_match_id,player_id,opponent_id,result,win_loss_streak,life_total_start,life_total_end,turns_taken,decks_used,gold_earned,experience_gained,match_date,time_played,arena_rank_before,arena_rank_after,notes,created_at,updated_at,is_ranked) VALUES (302,103,104,'Loss',-1,20,5,9,'Control_Blue',80.0,120,'2024-04-13','16:10:00',1400,1385,'Recovered_late','2024-04-13 16:20:00','2024-04-13 16:20:00',1);
INSERT INTO arena_match_outcomes (arena_match_id,player_id,opponent_id,result,win_loss_streak,life_total_start,life_total_end,turns_taken,decks_used,gold_earned,experience_gained,match_date,time_played,arena_rank_before,arena_rank_after,notes,created_at,updated_at,is_ranked) VALUES (303,105,106,'Win',2,20,0,6,'Midrange_Green',130.0,170,'2024-04-14','12:00:00',1600,1620,'Steady_control','2024-04-14 12:05:00','2024-04-14 12:05:00',1);

-- Magical affinity profiles table
CREATE TABLE magical_affinity_profiles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER NOT NULL,
    affinity_type TEXT,
    affinity_score REAL,
    last_updated DATE,
    source TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    is_active INTEGER,
    rank INTEGER,
    related_spell TEXT,
    elemental_association TEXT,
    bonus_effect TEXT,
    cooldown_modifier REAL,
    max_capacity INTEGER,
    unlock_level INTEGER,
    color_code TEXT,
    visual_icon TEXT,
    description TEXT,
    tag TEXT
);

INSERT INTO magical_affinity_profiles (player_id,affinity_type,affinity_score,last_updated,source,notes,created_at,updated_at,is_active,rank,related_spell,elemental_association,bonus_effect,cooldown_modifier,max_capacity,unlock_level,color_code,visual_icon,description,tag) VALUES (101,'Fire',78.5,'2024-05-01','Gameplay','High_damage_output','2024-05-01 09:00:00','2024-05-01 09:00:00',1,2,'Flame_Burst','Red','Burn','0.9',100,5,'#FF4500','fire_icon.png','Affinity_for_flame','fire_aff');
INSERT INTO magical_affinity_profiles (player_id,affinity_type,affinity_score,last_updated,source,notes,created_at,updated_at,is_active,rank,related_spell,elemental_association,bonus_effect,cooldown_modifier,max_capacity,unlock_level,color_code,visual_icon,description,tag) VALUES (102,'Water',65.2,'2024-04-20','Quest','Improved_defense','2024-04-20 10:30:00','2024-04-20 10:30:00',1,3,'Tidal_Wave','Blue','Heal','1.1',120,4,'#1E90FF','water_icon.png','Affinity_for_liquid','water_aff');
INSERT INTO magical_affinity_profiles (player_id,affinity_type,affinity_score,last_updated,source,notes,created_at,updated_at,is_active,rank,related_spell,elemental_association,bonus_effect,cooldown_modifier,max_capacity,unlock_level,color_code,visual_icon,description,tag) VALUES (103,'Earth',82.0,'2024-03-15','Training','Strong_tank','2024-03-15 08:45:00','2024-03-15 08:45:00',1,1,'Stone_Shield','Green','Armor','0.95',150,6,'#228B22','earth_icon.png','Affinity_for_stone','earth_aff');

-- Artifact forge operations table
CREATE TABLE artifact_forge_operations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    artifact_id INTEGER NOT NULL,
    operation_type TEXT,
    operator_id INTEGER,
    start_time DATETIME,
    end_time DATETIME,
    material_used TEXT,
    energy_consumed REAL,
    success_flag INTEGER,
    quality_score REAL,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    batch_number INTEGER,
    temperature REAL,
    pressure REAL,
    catalyst TEXT,
    output_quantity INTEGER,
    defects_found INTEGER,
    warranty_until DATE
);

INSERT INTO artifact_forge_operations (artifact_id,operation_type,operator_id,start_time,end_time,material_used,energy_consumed,success_flag,quality_score,notes,created_at,updated_at,batch_number,temperature,pressure,catalyst,output_quantity,defects_found,warranty_until) VALUES (501,'Enchantment','201','2024-04-01 08:00:00','2024-04-01 12:00:00','Mystic_Ore',250.5,1,92.3,'Runed_success','2024-04-01 12:05:00','2024-04-01 12:05:00',12,1800,5.2,'Arcane_Dust',1,0,'2026-04-01');
INSERT INTO artifact_forge_operations (artifact_id,operation_type,operator_id,start_time,end_time,material_used,energy_consumed,success_flag,quality_score,notes,created_at,updated_at,batch_number,temperature,pressure,catalyst,output_quantity,defects_found,warranty_until) VALUES (502,'Repair','202','2024-04-03 09:30:00','2024-04-03 11:45:00','Reinforced_Steel',180.0,1,88.7,'Minor_cracks_fixed','2024-04-03 11:50:00','2024-04-03 11:50:00',13,1500,4.8,'Flux_Gem',1,0,'2025-04-03');
INSERT INTO artifact_forge_operations (artifact_id,operation_type,operator_id,start_time,end_time,material_used,energy_consumed,success_flag,quality_score,notes,created_at,updated_at,batch_number,temperature,pressure,catalyst,output_quantity,defects_found,warranty_until) VALUES (503,'Replication','203','2024-04-05 14:00:00','2024-04-05 18:30:00','Ethereal_Essence',320.0,0,45.2,'Failed_due_to_instability','2024-04-05 18:35:00','2024-04-05 18:35:00',14,2000,6.0,'Void_Crystal',0,3,'2024-10-05');

-- Streaming ad campaign details table
CREATE TABLE streaming_ad_campaign_details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    campaign_name TEXT,
    advertiser TEXT,
    start_date DATE,
    end_date DATE,
    total_impressions INTEGER,
    total_clicks INTEGER,
    ctr REAL,
    cpm REAL,
    cpc REAL,
    budget REAL,
    spent REAL,
    target_audience TEXT,
    geo_target TEXT,
    platform TEXT,
    creative_id TEXT,
    frequency_cap INTEGER,
    viewability_rate REAL,
    ad_format TEXT,
    status TEXT,
    created_by TEXT,
    created_at DATETIME
);

INSERT INTO streaming_ad_campaign_details (campaign_name,advertiser,start_date,end_date,total_impressions,total_clicks,ctr,cpm,cpc,budget,spent,target_audience,geo_target,platform,creative_id,frequency_cap,viewability_rate,ad_format,status,created_by,created_at) VALUES ('Spring_Fantasy_Promo','Arcane_Studios','2024-04-01','2024-04-30',500000,12000,2.4,5.0,2.1,20000,18000,'Players_18-35','NA','Twitch','CR-101',3,85.0,'Video','Active','admin','2024-03-20 09:15:00');
INSERT INTO streaming_ad_campaign_details (campaign_name,advertiser,start_date,end_date,total_impressions,total_clicks,ctr,cpm,cpc,budget,spent,target_audience,geo_target,platform,creative_id,frequency_cap,viewability_rate,ad_format,status,created_by,created_at) VALUES ('Summer_Series_Launch','Mythic_Labs','2024-06-15','2024-07-15',750000,18000,2.4,6.5,2.7,30000,25000,'Players_25-45','EU','YouTube','CR-202',4,90.0,'PreRoll','Paused','marketing','2024-05-10 11:00:00');
INSERT INTO streaming_ad_campaign_details (campaign_name,advertiser,start_date,end_date,total_impressions,total_clicks,ctr,cpm,cpc,budget,spent,target_audience,geo_target,platform,creative_id,frequency_cap,viewability_rate,ad_format,status,created_by,created_at) VALUES ('Autumn_Arcane_Upgrade','Celestial_Forge','2024-09-01','2024-09-30',600000,15000,2.5,5.8,2.3,25000,23000,'Players_21-40','APAC','Mixer','CR-303',2,88.0,'Display','Active','product','2024-08-15 14:30:00');

-- Venue environmental readings table
CREATE TABLE venue_environmental_readings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER NOT NULL,
    reading_timestamp DATETIME,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    noise_db REAL,
    light_lux INTEGER,
    air_quality_index INTEGER,
    occupancy INTEGER,
    energy_consumption_kwh REAL,
    water_usage_liters REAL,
    vibration_level REAL,
    sensor_status TEXT,
    maintenance_required INTEGER,
    notes TEXT,
    recorded_by TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO venue_environmental_readings (venue_id,reading_timestamp,temperature_c,humidity_percent,co2_ppm,noise_db,light_lux,air_quality_index,occupancy,energy_consumption_kwh,water_usage_liters,vibration_level,sensor_status,maintenance_required,notes,recorded_by,created_at,updated_at) VALUES (301,'2024-05-01 10:00:00',22.5,45.0,420,55.0,350,75,120,1500.5,20000.0,0.02,'OK',0,'All_normal','system','2024-05-01 10:05:00','2024-05-01 10:05:00');
INSERT INTO venue_environmental_readings (venue_id,reading_timestamp,temperature_c,humidity_percent,co2_ppm,noise_db,light_lux,air_quality_index,occupancy,energy_consumption_kwh,water_usage_liters,vibration_level,sensor_status,maintenance_required,notes,recorded_by,created_at,updated_at) VALUES (302,'2024-05-01 11:00:00',24.0,50.0,500,60.0,400,80,200,1800.0,25000.0,0.03,'OK',0,'Ventilation_optimal','system','2024-05-01 11:05:00','2024-05-01 11:05:00');
INSERT INTO venue_environmental_readings (venue_id,reading_timestamp,temperature_c,humidity_percent,co2_ppm,noise_db,light_lux,air_quality_index,occupancy,energy_consumption_kwh,water_usage_liters,vibration_level,sensor_status,maintenance_required,notes,recorded_by,created_at,updated_at) VALUES (303,'2024-05-01 12:00:00',23.0,48.0,460,58.0,380,78,150,1600.2,22000.0,0.025,'OK',1,'Scheduled_maintenance_needed','system','2024-05-01 12:05:00','2024-05-01 12:05:00');

-- Player mental health assessments table
CREATE TABLE player_mental_health_assessments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER NOT NULL,
    assessment_date DATE,
    psychologist TEXT,
    stress_level INTEGER,
    anxiety_score INTEGER,
    focus_score INTEGER,
    sleep_quality INTEGER,
    mood TEXT,
    recommendation TEXT,
    follow_up_date DATE,
    created_at DATETIME,
    updated_at DATETIME,
    confidentiality_flag INTEGER,
    assessment_type TEXT,
    overall_score INTEGER,
    notes TEXT,
    rating TEXT,
    survey_version TEXT,
    completed INTEGER
);

INSERT INTO player_mental_health_assessments (player_id,assessment_date,psychologist,stress_level,anxiety_score,focus_score,sleep_quality,mood,recommendation,follow_up_date,created_at,updated_at,confidentiality_flag,assessment_type,overall_score,notes,rating,survey_version,completed) VALUES (101,'2024-04-10','Dr_Smith',7,6,8,5,'Stable','Mindfulness_practice','2024-05-01','2024-04-10 09:00:00','2024-04-10 09:00:00',1,'Standard',71,'No_major_issues','A','v1',1);
INSERT INTO player_mental_health_assessments (player_id,assessment_date,psychologist,stress_level,anxiety_score,focus_score,sleep_quality,mood,recommendation,follow_up_date,created_at,updated_at,confidentiality_flag,assessment_type,overall_score,notes,rating,survey_version,completed) VALUES (102,'2024-04-12','Dr_Jones',5,4,7,8,'Positive','Maintain_current_routine','2024-05-15','2024-04-12 10:30:00','2024-04-12 10:30:00',1,'Standard',80,'Good_progress','B','v1',1);
INSERT INTO player_mental_health_assessments (player_id,assessment_date,psychologist,stress_level,anxiety_score,focus_score,sleep_quality,mood,recommendation,follow_up_date,created_at,updated_at,confidentiality_flag,assessment_type,overall_score,notes,rating,survey_version,completed) VALUES (103,'2024-04-15','Dr_Lee',8,7,5,4,'Irritable','Schedule_counseling','2024-05-20','2024-04-15 14:20:00','2024-04-15 14:20:00',1,'Standard',62,'Monitor_stress_levels','C','v1',1);

-- Game mechanics experiment sessions table
CREATE TABLE game_mechanics_experiment_sessions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    experiment_name TEXT,
    start_time DATETIME,
    end_time DATETIME,
    mechanic_under_test TEXT,
    variant_description TEXT,
    participant_group TEXT,
    sample_size INTEGER,
    control_group TEXT,
    result_summary TEXT,
    statistical_significance REAL,
    effect_size REAL,
    notes TEXT,
    conducted_by TEXT,
    approved_by TEXT,
    status TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    data_repository TEXT,
    version INTEGER
);

INSERT INTO game_mechanics_experiment_sessions (experiment_name,start_time,end_time,mechanic_under_test,variant_description,participant_group,sample_size,control_group,result_summary,statistical_significance,effect_size,notes,conducted_by,approved_by,status,created_at,updated_at,data_repository,version) VALUES ('Mana_Curve_Tuning','2024-03-01 09:00:00','2024-03-01 17:00:00','Mana_Cost_Adjustment','Reduced_cost_by_1','Beta_Testers',150,'Standard_Set','Improved_playability','0.03','0.45','Positive_feedback','dev_lead','qa_manager','Completed','2024-03-01 18:00:00','2024-03-01 18:00:00','/data/exp/mana_curve','1');
INSERT INTO game_mechanics_experiment_sessions (experiment_name,start_time,end_time,mechanic_under_test,variant_description,participant_group,sample_size,control_group,result_summary,statistical_significance,effect_size,notes,conducted_by,approved_by,status,created_at,updated_at,data_repository,version) VALUES ('Artifact_Interaction','2024-04-10 10:00:00','2024-04-10 15:30:00','Artifact_Trigger','Added_extra_trigger','Pro_Player_Group',80,'Standard_Artifact','No_significant_change','0.12','0.10','Neutral_results','lead_engineer','product_owner','Pending','2024-04-10 16:00:00','2024-04-10 16:00:00','/data/exp/artifact_interaction','2');
INSERT INTO game_mechanics_experiment_sessions (experiment_name,start_time,end_time,mechanic_under_test,variant_description,participant_group,sample_size,control_group,result_summary,statistical_significance,effect_size,notes,conducted_by,approved_by,status,created_at,updated_at,data_repository,version) VALUES ('Deck_Build_Limit','2024-05-20 08:30:00','2024-05-20 12:45:00','Deck_Size','Increased_limit_to_100','Casual_Community',200,'Standard_Limit','Higher_engagement','0.02','0.55','Very_positive','game_designer','senior_pm','Completed','2024-05-20 13:00:00','2024-05-20 13:00:00','/data/exp/deck_limit','3');