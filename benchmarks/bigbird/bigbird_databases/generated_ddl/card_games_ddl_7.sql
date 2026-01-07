-- Table describing large conventions where Magic cards are showcased and sold
CREATE TABLE card_fair_market (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    market_name TEXT,
    location TEXT,
    city TEXT,
    state TEXT,
    country_code TEXT,
    start_date DATE,
    end_date DATE,
    total_visitors INTEGER,
    total_sales REAL,
    average_price REAL,
    featured_set_code TEXT,
    featured_card_uuid TEXT,
    booth_count INTEGER,
    sponsor_count INTEGER,
    media_partner TEXT,
    ticket_price REAL,
    covid_protocols TEXT,
    organizer_contact TEXT,
    special_event_flag INTEGER,
    sponsorship_level TEXT,
    wifi_available INTEGER
);
INSERT INTO card_fair_market (market_name,location,city,state,country_code,start_date,end_date,total_visitors,total_sales,average_price,featured_set_code,featured_card_uuid,booth_count,sponsor_count,media_partner,ticket_price,covid_protocols,organizer_contact,special_event_flag,sponsorship_level,wifi_available) VALUES ('SpringCardFair','ConventionCenterA','LosAngeles','CA','US','2024-03-15','2024-03-20',5000,250000.00,50.00,'KTK','uuid12345',120,15,'CardStream',150.00,'MaskRequired','JohnDoe',1,'Gold',1);
INSERT INTO card_fair_market (market_name,location,city,state,country_code,start_date,end_date,total_visitors,total_sales,average_price,featured_set_code,featured_card_uuid,booth_count,sponsor_count,media_partner,ticket_price,covid_protocols,organizer_contact,special_event_flag,sponsorship_level,wifi_available) VALUES ('SummerManaExpo','HallB','Chicago','IL','US','2024-07-05','2024-07-10',8000,560000.00,70.00,'M21','uuid67890',200,20,'ManaLive',200.00,'VaccinationProof','JaneSmith',0,'Platinum',1);
INSERT INTO card_fair_market (market_name,location,city,state,country_code,start_date,end_date,total_visitors,total_sales,average_price,featured_set_code,featured_card_uuid,booth_count,sponsor_count,media_partner,ticket_price,covid_protocols,organizer_contact,special_event_flag,sponsorship_level,wifi_available) VALUES ('AutumnDraftCon','ExhibitCenter','Seattle','WA','US','2024-10-12','2024-10-16',4500,180000.00,40.00,'IKO','uuid11223',95,10,'DraftTV',120.00,'MaskRequired','MikeBrown',1,'Silver',0);

-- Table tracking historical player rankings across multiple seasons
CREATE TABLE player_rank_history (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    season TEXT,
    ranking INTEGER,
    points REAL,
    matches_played INTEGER,
    wins INTEGER,
    losses INTEGER,
    draws INTEGER,
    win_rate REAL,
    average_opponent_rank REAL,
    peak_rank INTEGER,
    rank_change INTEGER,
    region TEXT,
    preferred_format TEXT,
    deck_id INTEGER,
    tournament_participation INTEGER,
    best_finish TEXT,
    sponsor_id INTEGER,
    last_active_date DATE,
    profile_visibility INTEGER,
    bio_summary TEXT,
    preferred_playstyle TEXT
);
INSERT INTO player_rank_history (player_id,season,ranking,points,matches_played,wins,losses,draws,win_rate,average_opponent_rank,peak_rank,rank_change,region,preferred_format,deck_id,tournament_participation,best_finish,sponsor_id,last_active_date,profile_visibility,bio_summary,preferred_playstyle) VALUES (101,'2023',5,1450.5,30,22,6,2,0.733,12.4,3,2,'NA','Standard',205,12,'Top4',301,'2025-01-01',1,'Veteran player known for aggressive decks','Aggro');
INSERT INTO player_rank_history (player_id,season,ranking,points,matches_played,wins,losses,draws,win_rate,average_opponent_rank,peak_rank,rank_change,region,preferred_format,deck_id,tournament_participation,best_finish,sponsor_id,last_active_date,profile_visibility,bio_summary,preferred_playstyle) VALUES (102,'2023',12,1320.0,28,18,8,2,0.643,15.0,10,-2,'EU','Modern',312,9,'Quarterfinals',302,'2024-11-20',1,'Strategic player focusing on control','Control');
INSERT INTO player_rank_history (player_id,season,ranking,points,matches_played,wins,losses,draws,win_rate,average_opponent_rank,peak_rank,rank_change,region,preferred_format,deck_id,tournament_participation,best_finish,sponsor_id,last_active_date,profile_visibility,bio_summary,preferred_playstyle) VALUES (103,'2023',20,1185.3,25,15,9,1,0.625,18.3,18,0,'APAC','Legacy',418,7,'Top8',303,'2025-02-15',0,'Rising star with combo-oriented decks','Combo');

-- Table logging official set release events and associated metadata
CREATE TABLE set_release_events (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    event_name TEXT,
    venue TEXT,
    city TEXT,
    state TEXT,
    country_code TEXT,
    event_date DATE,
    press_release_url TEXT,
    livestream_url TEXT,
    organizer TEXT,
    expected_copies INTEGER,
    special_edition_flag INTEGER,
    promotional_materials TEXT,
    keynote_speaker TEXT,
    demo_cards_count INTEGER,
    beta_testing_phase TEXT,
    fan_participation INTEGER,
    security_level TEXT,
    ticket_price REAL,
    sponsorship_tier TEXT,
    merchandise_bundle_flag INTEGER,
    post_event_surveys INTEGER
);
INSERT INTO set_release_events (set_code,event_name,venue,city,state,country_code,event_date,press_release_url,livestream_url,organizer,expected_copies,special_edition_flag,promotional_materials,keynote_speaker,demo_cards_count,beta_testing_phase,fan_participation,security_level,ticket_price,sponsorship_tier,merchandise_bundle_flag,post_event_surveys) VALUES ('MID','MidnightMysticRelease','GrandHall','NewYork','NY','US','2024-09-01','http://press.mid.com','http://stream.mid.com','ArcaneEvents',50000,1,'Poster+Stickers','LydiaRook',200,'ClosedBeta',1,'High',250.00,'Platinum',1,150);
INSERT INTO set_release_events (set_code,event_name,venue,city,state,country_code,event_date,press_release_url,livestream_url,organizer,expected_copies,special_edition_flag,promotional_materials,keynote_speaker,demo_cards_count,beta_testing_phase,fan_participation,security_level,ticket_price,sponsorship_tier,merchandise_bundle_flag,post_event_surveys) VALUES ('HOU','HourOfDestinyLaunch','ConventionCenterX','SanFrancisco','CA','US','2025-03-15','http://press.hou.com','http://stream.hou.com','MythicWorks',75000,0,'Flyers+Pins','EranMara',350,'OpenBeta',0,'Medium',180.00,'Gold',0,200);
INSERT INTO set_release_events (set_code,event_name,venue,city,state,country_code,event_date,press_release_url,livestream_url,organizer,expected_copies,special_edition_flag,promotional_materials,keynote_speaker,demo_cards_count,beta_testing_phase,fan_participation,security_level,ticket_price,sponsorship_tier,merchandise_bundle_flag,post_event_surveys) VALUES ('BLM','BlossomRisingEvent','ExpoHall','Toronto','ON','CA','2024-05-20','http://press.blm.com','http://stream.blm.com','NorthernGames',60000,1,'Banner+Badge','SofiaVale',180,'ClosedBeta',1,'Low',130.00,'Silver',1,120);

-- Table managing inventory of digital collectible artifacts associated with cards
CREATE TABLE digital_artifact_inventory (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    artifact_uuid TEXT,
    card_uuid TEXT,
    artifact_name TEXT,
    rarity TEXT,
    edition TEXT,
    mint_date DATE,
    creator_address TEXT,
    ownership_status TEXT,
    current_owner_id INTEGER,
    last_transfer_date DATE,
    transfer_count INTEGER,
    metadata_hash TEXT,
    file_type TEXT,
    file_size_bytes INTEGER,
    resolution TEXT,
    storage_location TEXT,
    access_url TEXT,
    usage_license TEXT,
    royalty_percentage REAL,
    provenance_notes TEXT,
    market_listing_id INTEGER,
    valuation_usd REAL
);
INSERT INTO digital_artifact_inventory (artifact_uuid,card_uuid,artifact_name,rarity,edition,mint_date,creator_address,ownership_status,current_owner_id,last_transfer_date,transfer_count,metadata_hash,file_type,file_size_bytes,resolution,storage_location,access_url,usage_license,royalty_percentage,provenance_notes,market_listing_id,valuation_usd) VALUES ('artuuid001','uuid12345','DragonPortrait','Mythic','First','2024-01-10','0xABCDEF123456','Owned',1001,'2024-06-01',2,'hashabc123','png',2048000,'1920x1080','IPFSNode1','http://ipfs.io/art1','CCBYSA',5.0,'Minted at official launch',20001,3500.00);
INSERT INTO digital_artifact_inventory (artifact_uuid,card_uuid,artifact_name,rarity,edition,mint_date,creator_address,ownership_status,current_owner_id,last_transfer_date,transfer_count,metadata_hash,file_type,file_size_bytes,resolution,storage_location,access_url,usage_license,royalty_percentage,provenance_notes,market_listing_id,valuation_usd) VALUES ('artuuid002','uuid67890','ElfIllustration','Rare','Promo','2024-02-15','0x123456ABCDEF','Transferred',1002,'2024-07-12',1,'hashdef456','jpg',1024000,'1080x720','IPFSNode2','http://ipfs.io/art2','CC0',2.5,'Given as tournament prize',20002,1200.00);
INSERT INTO digital_artifact_inventory (artifact_uuid,card_uuid,artifact_name,rarity,edition,mint_date,creator_address,ownership_status,current_owner_id,last_transfer_date,transfer_count,metadata_hash,file_type,file_size_bytes,resolution,storage_location,access_url,usage_license,royalty_percentage,provenance_notes,market_listing_id,valuation_usd) VALUES ('artuuid003','uuid11223','GoblinToken','Common','Standard','2024-03-05','0xFEDCBA654321','Owned',1003,'2024-05-20',3,'hashghi789','gif',512000,'500x500','IPFSNode3','http://ipfs.io/art3','CCBY',1.0,'Created for community event',20003,300.00);

-- Table aggregating seasonal statistics for tournaments across regions
CREATE TABLE tournament_season_stats (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    season TEXT,
    region TEXT,
    total_events INTEGER,
    total_players INTEGER,
    average_players_per_event REAL,
    total_prize_pool_usd REAL,
    highest_prize_event TEXT,
    average_match_duration_minutes REAL,
    formats_supported TEXT,
    online_vs_offline_ratio REAL,
    sponsor_count INTEGER,
    average_viewers INTEGER,
    peak_concurrent_viewers INTEGER,
    total_stream_hours REAL,
    social_media_mentions INTEGER,
    new_card_appearances INTEGER,
    metas_rotated INTEGER,
    deck_quality_score REAL,
    player_satisfaction_score REAL,
    rule_change_count INTEGER,
    special_award_events INTEGER,
    feedback_submission_rate REAL
);
INSERT INTO tournament_season_stats (season,region,total_events,total_players,average_players_per_event,total_prize_pool_usd,highest_prize_event,average_match_duration_minutes,formats_supported,online_vs_offline_ratio,sponsor_count,average_viewers,peak_concurrent_viewers,total_stream_hours,social_media_mentions,new_card_appearances,metas_rotated,deck_quality_score,player_satisfaction_score,rule_change_count,special_award_events,feedback_submission_rate) VALUES ('2024','NA',48,7200,150.0,1250000.00,'GrandFinalsNA','35.5','Standard,Modern',0.6,22,8000,25000,3200.0,5400,120,8,8.7,9.2,3,2,0.45);
INSERT INTO tournament_season_stats (season,region,total_events,total_players,average_players_per_event,total_prize_pool_usd,highest_prize_event,average_match_duration_minutes,formats_supported,online_vs_offline_ratio,sponsor_count,average_viewers,peak_concurrent_viewers,total_stream_hours,social_media_mentions,new_card_appearances,metas_rotated,deck_quality_score,player_satisfaction_score,rule_change_count,special_award_events,feedback_submission_rate) VALUES ('2024','EU',36,5400,150.0,950000.00,'EuroChampionship','38.2','Standard,Legacy',0.55,18,6200,21000,2700.0,4300,95,7,8.2,8.8,2,1,0.38);
INSERT INTO tournament_season_stats (season,region,total_events,total_players,average_players_per_event,total_prize_pool_usd,highest_prize_event,average_match_duration_minutes,formats_supported,online_vs_offline_ratio,sponsor_count,average_viewers,peak_concurrent_viewers,total_stream_hours,social_media_mentions,new_card_appearances,metas_rotated,deck_quality_score,player_satisfaction_score,rule_change_count,special_award_events,feedback_submission_rate) VALUES ('2024','APAC',30,4200,140.0,800000.00,'AsiaPacificOpen','34.0','Standard,Modern',0.7,15,5000,18000,2400.0,3800,80,5,7.9,8.5,1,0,0.41);

-- Table noting advertising break slots within streaming sessions
CREATE TABLE streaming_ad_breaks (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    stream_id INTEGER,
    ad_break_number INTEGER,
    start_timestamp_seconds INTEGER,
    end_timestamp_seconds INTEGER,
    ad_partner TEXT,
    ad_type TEXT,
    duration_seconds INTEGER,
    estimated_impressions INTEGER,
    cost_usd REAL,
    creative_id TEXT,
    targeting_criteria TEXT,
    viewability_rate REAL,
    click_through_rate REAL,
    ad_quality_score REAL,
    compliance_flag INTEGER,
    insertion_order TEXT,
    campaign_name TEXT,
    region TEXT,
    device_type TEXT,
    ad_status TEXT,
    verification_id TEXT
);
INSERT INTO streaming_ad_breaks (stream_id,ad_break_number,start_timestamp_seconds,end_timestamp_seconds,ad_partner,ad_type,duration_seconds,estimated_impressions,cost_usd,creative_id,targeting_criteria,viewability_rate,click_through_rate,ad_quality_score,compliance_flag,insertion_order,campaign_name,region,device_type,ad_status,verification_id) VALUES (301,1,300,330,'CardAdsCo','Video',30,15000,200.00,'crid001','RegionNA+Desktop',0.92,0.015,8.5,0,'IO123','SpringPromo','NA','Desktop','Served','VFY001');
INSERT INTO streaming_ad_breaks (stream_id,ad_break_number,start_timestamp_seconds,end_timestamp_seconds,ad_partner,ad_type,duration_seconds,estimated_impressions,cost_usd,creative_id,targeting_criteria,viewability_rate,click_through_rate,ad_quality_score,compliance_flag,insertion_order,campaign_name,region,device_type,ad_status,verification_id) VALUES (301,2,900,930,'ManaMedia','Banner',30,12000,150.00,'crid002','RegionEU+Mobile',0.88,0.012,7.9,0,'IO124','MidSeasonPush','EU','Mobile','Served','VFY002');
INSERT INTO streaming_ad_breaks (stream_id,ad_break_number,start_timestamp_seconds,end_timestamp_seconds,ad_partner,ad_type,duration_seconds,estimated_impressions,cost_usd,creative_id,targeting_criteria,viewability_rate,click_through_rate,ad_quality_score,compliance_flag,insertion_order,campaign_name,region,device_type,ad_status,verification_id) VALUES (302,1,600,630,'DeckBoost','Video',30,18000,250.00,'crid003','RegionAPAC+Desktop',0.95,0.018,9.0,0,'IO125','FallLaunch','APAC','Desktop','Served','VFY003');

-- Table evaluating return on investment for event sponsors
CREATE TABLE sponsor_roi_metrics (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    event_id INTEGER,
    total_spend_usd REAL,
    brand_exposure_views INTEGER,
    engagement_rate REAL,
    lead_generation_count INTEGER,
    conversion_rate REAL,
    revenue_attributed_usd REAL,
    roi_percentage REAL,
    sponsorship_tier TEXT,
    activation_type TEXT,
    audience_demographic TEXT,
    average_view_duration_seconds REAL,
    social_mentions INTEGER,
    onsite_activation_score REAL,
    post_event_survey_score REAL,
    contract_start_date DATE,
    contract_end_date DATE,
    renewal_likelihood INTEGER,
    exclusive_rights_flag INTEGER,
    custom_benefits TEXT,
    feedback_summary TEXT
);
INSERT INTO sponsor_roi_metrics (sponsor_id,event_id,total_spend_usd,brand_exposure_views,engagement_rate,lead_generation_count,conversion_rate,revenue_attributed_usd,roi_percentage,sponsorship_tier,activation_type,audience_demographic,average_view_duration_seconds,social_mentions,onsite_activation_score,post_event_survey_score,contract_start_date,contract_end_date,renewal_likelihood,exclusive_rights_flag,custom_benefits,feedback_summary) VALUES (501,1001,50000.00,250000,0.07,300,0.12,80000.00,60.0,'Gold','Booth','Age18-34',180.0,850,8.5,9.0,'2023-01-01','2025-12-31',85,1,'VIPLoungeAccess','Positive feedback and high engagement');
INSERT INTO sponsor_roi_metrics (sponsor_id,event_id,total_spend_usd,brand_exposure_views,engagement_rate,lead_generation_count,conversion_rate,revenue_attributed_usd,roi_percentage,sponsorship_tier,activation_type,audience_demographic,average_view_duration_seconds,social_mentions,onsite_activation_score,post_event_survey_score,contract_start_date,contract_end_date,renewal_likelihood,exclusive_rights_flag,custom_benefits,feedback_summary) VALUES (502,1002,30000.00,150000,0.05,180,0.10,45000.00,50.0,'Silver','DigitalBanner','Age25-44',150.0,600,7.2,8.2,'2023-06-15','2024-06-14',70,0,'CustomARFilter','Mixed feedback with suggestions for improvement');
INSERT INTO sponsor_roi_metrics (sponsor_id,event_id,total_spend_usd,brand_exposure_views,engagement_rate,lead_generation_count,conversion_rate,revenue_attributed_usd,roi_percentage,sponsorship_tier,activation_type,audience_demographic,average_view_duration_seconds,social_mentions,onsite_activation_score,post_event_survey_score,contract_start_date,contract_end_date,renewal_likelihood,exclusive_rights_flag,custom_benefits,feedback_summary) VALUES (503,1003,20000.00,100000,0.04,120,0.08,30000.00,50.0,'Bronze','Giveaway','Age13-24',130.0,400,6.8,7.5,'2024-02-01','2024-08-31',55,0,'LimitedEditionStickers','Positive but low engagement');

-- Table mapping venue capacities by date and time slots
CREATE TABLE venue_capacity_schedule (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    date DATE,
    time_slot TEXT,
    max_capacity INTEGER,
    seated_capacity INTEGER,
    standing_capacity INTEGER,
    vip_capacity INTEGER,
    media_capacity INTEGER,
    accessibility_capacity INTEGER,
    security_staff_required INTEGER,
    cleaning_staff_required INTEGER,
    parking_spaces INTEGER,
    nearby_hotel_rooms INTEGER,
    public_transport_links INTEGER,
    avg_foot_traffic INTEGER,
    restricted_areas TEXT,
    fire_safety_rating INTEGER,
    noise_limit_db INTEGER,
    catering_allowed INTEGER,
    live_streaming_permitted INTEGER,
    event_type_allowed TEXT,
    notes TEXT
);
INSERT INTO venue_capacity_schedule (venue_id,date,time_slot,max_capacity,seated_capacity,standing_capacity,vip_capacity,media_capacity,accessibility_capacity,security_staff_required,cleaning_staff_required,parking_spaces,nearby_hotel_rooms,public_transport_links,avg_foot_traffic,restricted_areas,fire_safety_rating,noise_limit_db,catering_allowed,live_streaming_permitted,event_type_allowed,notes) VALUES (801,'2024-09-15','Morning',2000,1200,800,100,50,150,20,10,300,25,5,1500,'BackstageOnly',5,85,1,1,'Convention',NULL);
INSERT INTO venue_capacity_schedule (venue_id,date,time_slot,max_capacity,seated_capacity,standing_capacity,vip_capacity,media_capacity,accessibility_capacity,security_staff_required,cleaning_staff_required,parking_spaces,nearby_hotel_rooms,public_transport_links,avg_foot_traffic,restricted_areas,fire_safety_rating,noise_limit_db,catering_allowed,live_streaming_permitted,event_type_allowed,notes) VALUES (801,'2024-09-15','Afternoon',3500,2000,1500,200,80,250,30,15,500,40,8,2500,'StageAccess',5,90,1,1,'Concert',NULL);
INSERT INTO venue_capacity_schedule (venue_id,date,time_slot,max_capacity,seated_capacity,standing_capacity,vip_capacity,media_capacity,accessibility_capacity,security_staff_required,cleaning_staff_required,parking_spaces,nearby_hotel_rooms,public_transport_links,avg_foot_traffic,restricted_areas,fire_safety_rating,noise_limit_db,catering_allowed,live_streaming_permitted,event_type_allowed,notes) VALUES (801,'2024-09-15','Evening',5000,2500,2500,300,100,300,40,20,800,60,12,3500,'NoRestricted',5,95,1,1,'Tournament',NULL);

-- Table documenting game mechanics, keywords and associated rule texts
CREATE TABLE game_mechanics_reference (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    mechanic_name TEXT,
    keyword TEXT,
    description TEXT,
    rule_reference TEXT,
    first_appearance_set TEXT,
    first_appearance_card TEXT,
    complexity_level INTEGER,
    typical_usage TEXT,
    interactions TEXT,
    designer_notes TEXT,
    rulings_count INTEGER,
    official_rulings_url TEXT,
    community_discussion_url TEXT,
    synergy_with TEXT,
    countermeasures TEXT,
    power_level_rating REAL,
    balance_status TEXT,
    expansion_potential TEXT,
    related_mechanics TEXT,
    card_type_affinity TEXT,
    example_card_uuid TEXT,
    release_date DATE
);
INSERT INTO game_mechanics_reference (mechanic_name,keyword,description,rule_reference,first_appearance_set,first_appearance_card,complexity_level,typical_usage,interactions,designer_notes,rulings_count,official_rulings_url,community_discussion_url,synergy_with,countermeasures,power_level_rating,balance_status,expansion_potential,related_mechanics,card_type_affinity,example_card_uuid,release_date) VALUES ('Flying','Flying','Creature can only be blocked by creatures with flying or reach','509.2a','ALR','Sphinx of the Final','2','Offensive','Avoids ground blockers','Designed for aerial combat','12','http://rulings.com/flying','http://forum.com/flying','Reach','Ground creatures','7.5','Balanced','High','First strike','Creature','uuid12345','1993-06-01');
INSERT INTO game_mechanics_reference (mechanic_name,keyword,description,rule_reference,first_appearance_set,first_appearance_card,complexity_level,typical_usage,interactions,designer_notes,rulings_count,official_rulings_url,community_discussion_url,synergy_with,countermeasures,power_level_rating,balance_status,expansion_potential,related_mechanics,card_type_affinity,example_card_uuid,release_date) VALUES ('Deathtouch','Deathtouch','Any amount of damage destroys a creature','702.15b','ARN','Llanowar Elves','1','Defensive','Kills any blocker','Created for kill effect','18','http://rulings.com/deathtouch','http://forum.com/deathtouch','Poison','Protective abilities','8.0','Balanced','Medium','First strike','Creature','uuid67890','2008-03-01');
INSERT INTO game_mechanics_reference (mechanic_name,keyword,description,rule_reference,first_appearance_set,first_appearance_card,complexity_level,typical_usage,interactions,designer_notes,rulings_count,official_rulings_url,community_discussion_url,synergy_with,countermeasures,power_level_rating,balance_status,expansion_potential,related_mechanics,card_type_affinity,example_card_uuid,release_date) VALUES ('Hexproof','Hexproof','Cannot be targeted by opponent''s spells or abilities','702.45c','M13','Charming Prince','3','Protective','Avoids targeted removal','Added for new defensive dynamics','22','http://rulings.com/hexproof','http://forum.com/hexproof','Indestructible','Targeted removal','6.5','Fine-tuned','Medium','Shroud','Creature','uuid11223','2012-07-13');

-- Table linking cards to multilingual translations used in foreign language releases
CREATE TABLE card_translation_matrix (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT,
    language_code TEXT,
    translated_name TEXT,
    translated_type TEXT,
    translated_text TEXT,
    translated_flavor TEXT,
    translator_name TEXT,
    translation_date DATE,
    edition_code TEXT,
    is_official INTEGER,
    notes TEXT,
    source_material TEXT,
    verification_status TEXT,
    lexical_complexity INTEGER,
    character_limit INTEGER,
    uses_special_characters INTEGER,
    regional_variation TEXT,
    copyright_holder TEXT,
    distribution_rights TEXT,
    update_cycle_days INTEGER,
    linked_english_uuid TEXT,
    quality_score REAL
);
INSERT INTO card_translation_matrix (card_uuid,language_code,translated_name,translated_type,translated_text,translated_flavor,translator_name,translation_date,edition_code,is_official,notes,source_material,verification_status,lexical_complexity,character_limit,uses_special_characters,regional_variation,copyright_holder,distribution_rights,update_cycle_days,linked_english_uuid,quality_score) VALUES ('uuid12345','FR','Feu de Dragon','Créature','{R}: Cette créature gagne +1/+0 jusqu''à la fin du tour','Le feu brûle tout', 'JeanDupont','2024-02-10','M21',1,'Standard translation','Original','Verified',8,200,0,'France','Wizards of the Coast','Global',30,'uuid12345',9.2);
INSERT INTO card_translation_matrix (card_uuid,language_code,translated_name,translated_type,translated_text,translated_flavor,translator_name,translation_date,edition_code,is_official,notes,source_material,verification_status,lexical_complexity,character_limit,uses_special_characters,regional_variation,copyright_holder,distribution_rights,update_cycle_days,linked_english_uuid,quality_score) VALUES ('uuid67890','DE','Drachenfeuer','Kreatur','{R}: Diese Kreatur erhält bis zum Ende des Zuges +1/+0','Das Feuer verzehrt alles','HansMüller','2024-03-12','M21',1,'Lokale Anpassung','Original','Verified',7,180,0,'Deutschland','Wizards of the Coast','Global',30,'uuid67890',9.0);
INSERT INTO card_translation_matrix (card_uuid,language_code,translated_name,translated_type,translated_text,translated_flavor,translator_name,translation_date,edition_code,is_official,notes,source_material,verification_status,lexical_complexity,character_limit,uses_special_characters,regional_variation,copyright_holder,distribution_rights,update_cycle_days,linked_english_uuid,quality_score) VALUES ('uuid11223','JA','ドラゴンの炎','クリーチャー','{R}: このクリーチャーはターン終了まで+1/+0を得る','炎は全てを焼く','YukiSato','2024-04-05','M21',1,'Japanese localization','Original','Verified',9,250,0,'Japan','Wizards of the Coast','Global',30,'uuid11223',9.3);