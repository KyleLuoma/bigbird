-- Artist Profiles
CREATE TABLE artist_profiles (
    artist_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    birth_year INTEGER,
    country TEXT,
    active_start_year INTEGER,
    active_end_year INTEGER,
    primary_style TEXT,
    notable_works TEXT,
    awards TEXT,
    social_media_handle TEXT,
    website_url TEXT,
    biography TEXT,
    education TEXT,
    agency TEXT,
    representation_status INTEGER,
    total_commissions INTEGER,
    average_commission_price REAL,
    last_exhibition_year INTEGER,
    genre_tags TEXT,
    portrait_image_url TEXT,
    bio_keywords TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO artist_profiles (artist_id,name,birth_year,country,active_start_year,active_end_year,primary_style,notable_works,awards,social_media_handle,website_url,biography,education,agency,representation_status,total_commissions,average_commission_price,last_exhibition_year,genre_tags,portrait_image_url,bio_keywords,created_at,updated_at) VALUES (1,JohnDoe,1975,USA,1995,0,Illustration,CardArt1|CardArt2,BestArtistAward,JohnD,https://johndoe.com,Artistbio1,ArtSchoolX,AgencyY,1,120,250.5,2022,Fantasy|SciFi,https://images.com/john.jpg,magical|vibrant,2024-01-01,2024-01-01);
INSERT INTO artist_profiles (artist_id,name,birth_year,country,active_start_year,active_end_year,primary_style,notable_works,awards,social_media_handle,website_url,biography,education,agency,representation_status,total_commissions,average_commission_price,last_exhibition_year,genre_tags,portrait_image_url,bio_keywords,created_at,updated_at) VALUES (2,JaneSmith,1982,UK,2002,0,ConceptArt,CardArt3|CardArt4,IllustratorAward,JaneS,https://janesmithart.com,Artistbio2,DesignInstituteZ,AgencyW,1,85,300.0,2023,Mythic|Nature,https://images.com/jane.jpg,detail|colorful,2024-01-02,2024-01-02);
INSERT INTO artist_profiles (artist_id,name,birth_year,country,active_start_year,active_end_year,primary_style,notable_works,awards,social_media_handle,website_url,biography,education,agency,representation_status,total_commissions,average_commission_price,last_exhibition_year,genre_tags,portrait_image_url,bio_keywords,created_at,updated_at) VALUES (3,LeoKhan,1990,Japan,2010,0,DigitalPaint,CardArt5|CardArt6,EmergingArtist,LeoK,https://leokhan.jp,Artistbio3,TokyoArtCollege,AgencyV,0,45,180.75,2021,Urban|Abstract,https://images.com/leo.jpg,sharp|dynamic,2024-01-03,2024-01-03);

-- Card Print Runs
CREATE TABLE card_print_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    printing_type TEXT,
    run_number INTEGER,
    total_cards INTEGER,
    sheets_used INTEGER,
    sheet_format TEXT,
    printer_facility TEXT,
    ink_type TEXT,
    paper_stock TEXT,
    start_date TEXT,
    end_date TEXT,
    quality_check_passed INTEGER,
    defects_found INTEGER,
    avg_print_time_seconds REAL,
    operator_name TEXT,
    supervisor_name TEXT,
    batch_notes TEXT,
    cost_per_sheet REAL,
    total_cost REAL,
    shipping_method TEXT,
    carrier TEXT,
    tracking_number TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO card_print_runs (run_id,set_code,printing_type,run_number,total_cards,sheets_used,sheet_format,printer_facility,ink_type,paper_stock,start_date,end_date,quality_check_passed,defects_found,avg_print_time_seconds,operator_name,supervisor_name,batch_notes,cost_per_sheet,total_cost,shipping_method,carrier,tracking_number,created_at,updated_at) VALUES (1,IKO,FOIL,1,10000,250,Standard,FacilityA,UV,Glossy,2023-06-01,2023-06-10,1,2,45.3,Tom,Anna,RunA,0.12,3000.0,Air,CarrierX,TRK123456,2024-01-01,2024-01-01);
INSERT INTO card_print_runs (run_id,set_code,printing_type,run_number,total_cards,sheets_used,sheet_format,printer_facility,ink_type,paper_stock,start_date,end_date,quality_check_passed,defects_found,avg_print_time_seconds,operator_name,supervisor_name,batch_notes,cost_per_sheet,total_cost,shipping_method,carrier,tracking_number,created_at,updated_at) VALUES (2,RIX,NONFOIL,2,15000,375,Standard,FacilityB,Waterbased,Matte,2023-07-15,2023-07-25,1,0,40.0,Mark,Lee,RunB,0.10,3750.0,Sea,CarrierY,TRK654321,2024-01-02,2024-01-02);
INSERT INTO card_print_runs (run_id,set_code,printing_type,run_number,total_cards,sheets_used,sheet_format,printer_facility,ink_type,paper_stock,start_date,end_date,quality_check_passed,defects_found,avg_print_time_seconds,operator_name,supervisor_name,batch_notes,cost_per_sheet,total_cost,shipping_method,carrier,tracking_number,created_at,updated_at) VALUES (3,THB,FOIL,3,8000,200,Standard,FacilityC,UV,Glossy,2023-08-05,2023-08-12,0,5,50.7,Sara,Kim,RunC,0.15,3000.0,Land,CarrierZ,TRK112233,2024-01-03,2024-01-03);

-- Set Release History
CREATE TABLE set_release_history (
    history_id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    release_phase TEXT,
    planned_release_date TEXT,
    actual_release_date TEXT,
    delay_days INTEGER,
    reason_for_delay TEXT,
    announced_by TEXT,
    press_release_url TEXT,
    marketing_budget REAL,
    tickets_sold INTEGER,
    preorders INTEGER,
    special_editions INTEGER,
    regional_release TEXT,
    launch_event_location TEXT,
    livestream_url TEXT,
    media_coverage_count INTEGER,
    social_media_mentions INTEGER,
    fan_engagement_score REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO set_release_history (history_id,set_code,release_phase,planned_release_date,actual_release_date,delay_days,reason_for_delay,announced_by,press_release_url,marketing_budget,tickets_sold,preorders,special_editions,regional_release,launch_event_location,livestream_url,media_coverage_count,social_media_mentions,fan_engagement_score,notes,created_at,updated_at) VALUES (1,IKO,Initial,2023-09-01,2023-09-05,4,PrintingIssue,MarketingTeam,https://press.com/iko,500000.0,1200,5000,2,Global,NewYorkArena,https://live.com/iko,15,2000,8.5,Success,2024-01-01,2024-01-01);
INSERT INTO set_release_history (history_id,set_code,release_phase,planned_release_date,actual_release_date,delay_days,reason_for_delay,announced_by,press_release_url,marketing_budget,tickets_sold,preorders,special_editions,regional_release,launch_event_location,livestream_url,media_coverage_count,social_media_mentions,fan_engagement_score,notes,created_at,updated_at) VALUES (2,RIX,Initial,2023-10-10,2023-10-10,0,None,PRTeam,https://press.com/rix,300000.0,800,3000,1,NA,SanFranciscoHall,https://live.com/rix,10,1500,7.2,OnTime,2024-01-02,2024-01-02);
INSERT INTO set_release_history (history_id,set_code,release_phase,planned_release_date,actual_release_date,delay_days,reason_for_delay,announced_by,press_release_url,marketing_budget,tickets_sold,preorders,special_editions,regional_release,launch_event_location,livestream_url,media_coverage_count,social_media_mentions,fan_engagement_score,notes,created_at,updated_at) VALUES (3,THB,Initial,2023-11-20,2023-11-25,5,Logistics,EventTeam,https://press.com/thb,400000.0,950,4000,3,EU,LondonVenue,https://live.com/thb,12,1800,7.8,MinorDelay,2024-01-03,2024-01-03);

-- MTG Convention Events
CREATE TABLE mtg_convention_events (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    convention_name TEXT,
    year INTEGER,
    city TEXT,
    country TEXT,
    venue_name TEXT,
    start_date TEXT,
    end_date TEXT,
    attendance_estimate INTEGER,
    ticket_price_standard REAL,
    ticket_price_vip REAL,
    sponsor_primary TEXT,
    sponsor_secondary TEXT,
    featured_set TEXT,
    special_guest TEXT,
    panel_topics TEXT,
    side_event_count INTEGER,
    tournament_count INTEGER,
    merch_stall_count INTEGER,
    livestream_available INTEGER,
    livestream_url TEXT,
    social_media_hashtag TEXT,
    post_event_survey_score REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO mtg_convention_events (event_id,convention_name,year,city,country,venue_name,start_date,end_date,attendance_estimate,ticket_price_standard,ticket_price_vip,sponsor_primary,sponsor_secondary,featured_set,special_guest,panel_topics,side_event_count,tournament_count,merch_stall_count,livestream_available,livestream_url,social_media_hashtag,post_event_survey_score,notes,created_at,updated_at) VALUES (1,MagicCon,2023,Seattle,USA,SeattleCenter,2023-08-15,2023-08-18,25000,150.0,300.0,Wizards,Hasbro,IKO,JohnDoe,"Deckbuilding|Lore",12,8,20,1,https://live.com/magiccon2023,#MagicCon2023,9.1,GreatFeedback,2024-01-01,2024-01-01);
INSERT INTO mtg_convention_events (event_id,convention_name,year,city,country,venue_name,start_date,end_date,attendance_estimate,ticket_price_standard,ticket_price_vip,sponsor_primary,sponsor_secondary,featured_set,special_guest,panel_topics,side_event_count,tournament_count,merch_stall_count,livestream_available,livestream_url,social_media_hashtag,post_event_survey_score,notes,created_at,updated_at) VALUES (2,WorldMTGExpo,2022,Tokyo,Japan,TokyoBigSight,2022-11-05,2022-11-08,30000,180.0,350.0,Wizards,CardMarket,RIX,JaneSmith,"Art|Strategy",15,10,25,1,https://live.com/worldmtg2022,#WorldMTG2022,8.7,Excellent,2024-01-02,2024-01-02);
INSERT INTO mtg_convention_events (event_id,convention_name,year,city,country,venue_name,start_date,end_date,attendance_estimate,ticket_price_standard,ticket_price_vip,sponsor_primary,sponsor_secondary,featured_set,special_guest,panel_topics,side_event_count,tournament_count,merch_stall_count,livestream_available,livestream_url,social_media_hashtag,post_event_survey_score,notes,created_at,updated_at) VALUES (3,EuroMagicFest,2024,Berlin,Germany,MesseBerlin,2024-04-20,2024-04-23,20000,130.0,280.0,Wizards,LocalShop,THB,LeoKhan,"Lore|Design",10,6,18,0,NULL,#EuroMagicFest2024,8.2,Pending,2024-01-03,2024-01-03);

-- Rule Explanations
CREATE TABLE rule_explanations (
    rule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    rule_code TEXT,
    description TEXT,
    detailed_explanation TEXT,
    example_scenario TEXT,
    related_rules TEXT,
    official_reference TEXT,
    created_by TEXT,
    creation_date TEXT,
    last_updated_by TEXT,
    last_update_date TEXT,
    rule_category TEXT,
    complexity_level INTEGER,
    affected_areas TEXT,
    enforcement_status TEXT,
    notes TEXT,
    source_document TEXT,
    version INTEGER,
    is_active INTEGER,
    tags TEXT,
    reference_link TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO rule_explanations (rule_id,rule_code,description,detailed_explanation,example_scenario,related_rules,official_reference,created_by,creation_date,last_updated_by,last_update_date,rule_category,complexity_level,affected_areas,enforcement_status,notes,source_document,version,is_active,tags,reference_link,created_at,updated_at) VALUES (1,RULE001,CombatDamage,DamageIsDealtDuringCombatStep,CreatureAAttacksAndCreatureBBlocks,COMBAT_STEP|DAMAGE_STEP,WizardsRulebook,admin,2023-01-01,admin,2023-01-01,Combat,2,CreatureInteraction,Active,StandardRule,RulebookV1,1,1,damage|combat,https://rules.com/rule001,2024-01-01,2024-01-01);
INSERT INTO rule_explanations (rule_id,rule_code,description,detailed_explanation,example_scenario,related_rules,official_reference,created_by,creation_date,last_updated_by,last_update_date,rule_category,complexity_level,affected_areas,enforcement_status,notes,source_document,version,is_active,tags,reference_link,created_at,updated_at) VALUES (2,RULE045,PlaneswalkerLoyalty,PlaneswalkersGainOrLoseLoyalty,PlayerActivatesLoyaltyAbility,ABILITY_RULE|PHASE_RULE,WizardsPR,admin,2023-02-15,admin,2023-02-15,Planeswalker,3,PlaneswalkerInteraction,Active,ImportantForDeckBuilding,PRGuideV3,1,1,loyalty|planeswalker,https://rules.com/rule045,2024-01-02,2024-01-02);
INSERT INTO rule_explanations (rule_id,rule_code,description,detailed_explanation,example_scenario,related_rules,official_reference,created_by,creation_date,last_updated_by,last_update_date,rule_category,complexity_level,affected_areas,enforcement_status,notes,source_document,version,is_active,tags,reference_link,created_at,updated_at) VALUES (3,RULE102,MillMechanic,CardsFromLibraryAreSentToGraveyard,PlayerUsesMillSpell,GRAVEYARD_RULE|CARD_DRAW,WizardsCompendium,admin,2023-03-10,admin,2023-03-10,Graveyard,1,DeckInteraction,Active,MillerCards,CompendiumV2,1,1,mill|graveyard,https://rules.com/rule102,2024-01-03,2024-01-03);

-- Card Market Trends Extended
CREATE TABLE card_market_trends_extended (
    trend_id INTEGER PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT,
    date_snapshot TEXT,
    market_price REAL,
    price_change_percentage REAL,
    volume_traded INTEGER,
    average_sell_price REAL,
    median_sell_price REAL,
    highest_price REAL,
    lowest_price REAL,
    number_of_listings INTEGER,
    days_on_market INTEGER,
    seller_rating_average REAL,
    buyer_rating_average REAL,
    price_volatility_index REAL,
    market_segment TEXT,
    region TEXT,
    currency TEXT,
    source_platform TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO card_market_trends_extended (trend_id,card_uuid,date_snapshot,market_price,price_change_percentage,volume_traded,average_sell_price,median_sell_price,highest_price,lowest_price,number_of_listings,days_on_market,seller_rating_average,buyer_rating_average,price_volatility_index,market_segment,region,currency,source_platform,notes,created_at,updated_at) VALUES (1,UUID123,2024-01-01,12.5,5.2,200,12.0,11.8,13.0,10.5,15,30,4.5,4.8,0.3,Standard,NA,USD,PlatformA,HighDemand,2024-01-01,2024-01-01);
INSERT INTO card_market_trends_extended (trend_id,card_uuid,date_snapshot,market_price,price_change_percentage,volume_traded,average_sell_price,median_sell_price,highest_price,lowest_price,number_of_listings,days_on_market,seller_rating_average,buyer_rating_average,price_volatility_index,market_segment,region,currency,source_platform,notes,created_at,updated_at) VALUES (2,UUID456,2024-01-01,45.0,-2.1,120,44.5,44.0,46.0,42.5,10,45,4.2,4.6,0.5,Modern,EU,EUR,PlatformB,Stable,2024-01-02,2024-01-02);
INSERT INTO card_market_trends_extended (trend_id,card_uuid,date_snapshot,market_price,price_change_percentage,volume_traded,average_sell_price,median_sell_price,highest_price,lowest_price,number_of_listings,days_on_market,seller_rating_average,buyer_rating_average,price_volatility_index,market_segment,region,currency,source_platform,notes,created_at,updated_at) VALUES (3,UUID789,2024-01-01,3.75,0.0,500,3.7,3.8,4.0,3.5,25,20,4.8,4.9,0.1,Commander,AS,USD,PlatformC,LowVolatility,2024-01-03,2024-01-03);

-- Player Collection Snapshots
CREATE TABLE player_collection_snapshots (
    snapshot_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    snapshot_date TEXT,
    total_cards INTEGER,
    unique_cards INTEGER,
    total_foils INTEGER,
    total_nonfoil INTEGER,
    total_promos INTEGER,
    total_reprints INTEGER,
    total_rare INTEGER,
    total_mythic INTEGER,
    total_uncommon INTEGER,
    total_common INTEGER,
    total_land INTEGER,
    total_artifact INTEGER,
    total_creature INTEGER,
    total_enchantment INTEGER,
    total_instant INTEGER,
    total_sorcery INTEGER,
    total_planeswalker INTEGER,
    deck_count INTEGER,
    favorite_set TEXT,
    average_card_price REAL,
    total_collection_value REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO player_collection_snapshots (snapshot_id,player_id,snapshot_date,total_cards,unique_cards,total_foils,total_nonfoil,total_promos,total_reprints,total_rare,total_mythic,total_uncommon,total_common,total_land,total_artifact,total_creature,total_enchantment,total_instant,total_sorcery,total_planeswalker,deck_count,favorite_set,average_card_price,total_collection_value,notes,created_at,updated_at) VALUES (1,101,2024-01-01,1500,1200,200,1300,50,100,300,80,400,500,200,150,550,250,180,220,30,5,IKO,7.5,11250.0,InitialSnapshot,2024-01-01,2024-01-01);
INSERT INTO player_collection_snapshots (snapshot_id,player_id,snapshot_date,total_cards,unique_cards,total_foils,total_nonfoil,total_promos,total_reprints,total_rare,total_mythic,total_uncommon,total_common,total_land,total_artifact,total_creature,total_enchantment,total_instant,total_sorcery,total_planeswalker,deck_count,favorite_set,average_card_price,total_collection_value,notes,created_at,updated_at) VALUES (2,102,2024-01-01,800,750,120,680,20,40,180,60,200,300,150,90,70,280,120,100,110,20,3,RIX,6.2,4960.0,SnapshotAfterEvent,2024-01-02,2024-01-02);
INSERT INTO player_collection_snapshots (snapshot_id,player_id,snapshot_date,total_cards,unique_cards,total_foils,total_nonfoil,total_promos,total_reprints,total_rare,total_mythic,total_uncommon,total_common,total_land,total_artifact,total_creature,total_enchantment,total_instant,total_sorcery,total_planeswalker,deck_count,favorite_set,average_card_price,total_collection_value,notes,created_at,updated_at) VALUES (3,103,2024-01-01,2300,2000,350,1950,80,150,500,120,600,700,300,250,180,800,350,300,80,12,8,THB,8.0,18400.0,GrowingCollection,2024-01-03,2024-01-03);

-- Digital Artifact Catalog
CREATE TABLE digital_artifact_catalog (
    artifact_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artifact_name TEXT,
    artifact_type TEXT,
    associated_set TEXT,
    rarity TEXT,
    version_number INTEGER,
    release_date TEXT,
    file_format TEXT,
    file_size_mb REAL,
    resolution TEXT,
    creator_name TEXT,
    license_type TEXT,
    usage_rights TEXT,
    is_tradeable INTEGER,
    marketplace_url TEXT,
    blockchain_id TEXT,
    token_id TEXT,
    metadata_hash TEXT,
    description TEXT,
    tags TEXT,
    status TEXT,
    lifecycle_stage TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO digital_artifact_catalog (artifact_id,artifact_name,artifact_type,associated_set,rarity,version_number,release_date,file_format,file_size_mb,resolution,creator_name,license_type,usage_rights,is_tradeable,marketplace_url,blockchain_id,token_id,metadata_hash,description,tags,status,lifecycle_stage,created_at,updated_at) VALUES (1,DragonFlameArt,Illustration,IKO,Rare,1,2023-06-01,PNG,12.5,3000x4000,JohnDoe,CreativeCommon,PersonalUse,1,https://market.com/dragonflame,ETH,0xABC123,hash123,DigitalIllustrationDragon,fantasy|fire|dragon,Active,Live,2024-01-01,2024-01-01);
INSERT INTO digital_artifact_catalog (artifact_id,artifact_name,artifact_type,associated_set,rarity,version_number,release_date,file_format,file_size_mb,resolution,creator_name,license_type,usage_rights,is_tradeable,marketplace_url,blockchain_id,token_id,metadata_hash,description,tags,status,lifecycle_stage,created_at,updated_at) VALUES (2,AncientRuneCard,Token,RIX,Mythic,2,2023-07-15,JPG,8.2,2000x3000,JaneSmith,Proprietary,Commercial,0,NULL,ETH,0xDEF456,hash456,RuneCardDigitalAsset,rune|ancient|magic,Inactive,Archived,2024-01-02,2024-01-02);
INSERT INTO digital_artifact_catalog (artifact_id,artifact_name,artifact_type,associated_set,rarity,version_number,release_date,file_format,file_size_mb,resolution,creator_name,license_type,usage_rights,is_tradeable,marketplace_url,blockchain_id,token_id,metadata_hash,description,tags,status,lifecycle_stage,created_at,updated_at) VALUES (3,ForestSpirit3D,Model,THB,Uncommon,1,2023-08-20,GLTF,25.0,4096x4096,LeoKhan,CreativeCommon,PersonalUse,1,https://market.com/forestspirit,ETH,0xGHI789,hash789,3DModelForestSpirit,nature|spirit|3d,Active,Live,2024-01-03,2024-01-03);

-- Mechanic Interaction Matrix
CREATE TABLE mechanic_interaction_matrix (
    matrix_id INTEGER PRIMARY KEY AUTOINCREMENT,
    mechanic_a TEXT,
    mechanic_b TEXT,
    interaction_type TEXT,
    description TEXT,
    synergy_score REAL,
    conflict_score REAL,
    example_card_uuid TEXT,
    affected_phases TEXT,
    rule_reference TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO mechanic_interaction_matrix (matrix_id,mechanic_a,mechanic_b,interaction_type,description,synergy_score,conflict_score,example_card_uuid,affected_phases,rule_reference,notes,created_at,updated_at) VALUES (1,Deathtouch,Poisonous,Synergy,PoisonousAddsAdditionalDamage,8.5,1.0,UUID001,Combat,Rule001,WorksWellTogether,2024-01-01,2024-01-01);
INSERT INTO mechanic_interaction_matrix (matrix_id,mechanic_a,mechanic_b,interaction_type,description,synergy_score,conflict_score,example_card_uuid,affected_phases,rule_reference,notes,created_at,updated_at) VALUES (2,Madness,Flash,Conflict,MadnessTriggersOnlyWhenNotFlashed,2.0,7.5,UUID002,Main,Rule045,CanCauseTimingIssues,2024-01-02,2024-01-02);
INSERT INTO mechanic_interaction_matrix (matrix_id,mechanic_a,mechanic_b,interaction_type,description,synergy_score,conflict_score,example_card_uuid,affected_phases,rule_reference,notes,created_at,updated_at) VALUES (3,Suspend,Flood,Synergy,SuspendAllowsDelayedDeployment,6.0,0.5,UUID003,Main,Rule102,ProvidesStrategicDepth,2024-01-03,2024-01-03);

-- Set Distribution Log
CREATE TABLE set_distribution_log (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    region TEXT,
    distribution_center TEXT,
    arrival_date TEXT,
    departure_date TEXT,
    quantity_shipped INTEGER,
    quantity_received INTEGER,
    shipping_method TEXT,
    carrier TEXT,
    tracking_number TEXT,
    customs_cleared INTEGER,
    customs_notes TEXT,
    storage_location TEXT,
    temperature_control INTEGER,
    humidity_control INTEGER,
    handling_instructions TEXT,
    damage_reported INTEGER,
    damage_details TEXT,
    inspection_status TEXT,
    remarks TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO set_distribution_log (log_id,set_code,region,distribution_center,arrival_date,departure_date,quantity_shipped,quantity_received,shipping_method,carrier,tracking_number,customs_cleared,customs_notes,storage_location,temperature_control,humidity_control,handling_instructions,damage_reported,damage_details,inspection_status,remarks,created_at,updated_at) VALUES (1,IKO,NA,DC_NorthAmerica,2023-09-02,2023-09-04,12000,11980,Air,CarrierA,TRK001,1,Clear,WarehouseA,1,1,HandleWithCare,1,SlightCornerDamage,Passed,MinorIssues,2024-01-01,2024-01-01);
INSERT INTO set_distribution_log (log_id,set_code,region,distribution_center,arrival_date,departure_date,quantity_shipped,quantity_received,shipping_method,carrier,tracking_number,customs_cleared,customs_notes,storage_location,temperature_control,humidity_control,handling_instructions,damage_reported,damage_details,inspection_status,remarks,created_at,updated_at) VALUES (2,RIX,EU,DC_Europe,2023-10-12,2023-10-14,15000,15000,Sea,CarrierB,TRK002,1,Clear,WarehouseB,0,0,StackFlat,0,NULL,Passed,NoIssues,2024-01-02,2024-01-02);
INSERT INTO set_distribution_log (log_id,set_code,region,distribution_center,arrival_date,departure_date,quantity_shipped,quantity_received,shipping_method,carrier,tracking_number,customs_cleared,customs_notes,storage_location,temperature_control,humidity_control,handling_instructions,damage_reported,damage_details,inspection_status,remarks,created_at,updated_at) VALUES (3,THB,AS,DC_Asia,2023-11-20,2023-11-23,8000,7950,Land,CarrierC,TRK003,1,Clear,WarehouseC,1,0,KeepDry,1,WaterDamage,Failed,Investigate,2024-01-03,2024-01-03);