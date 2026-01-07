-- Additional artifact enhancements for cards (non‑overlapping with base schema)
CREATE TABLE card_artifact_enhancements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT NOT NULL,
    enhancement_type TEXT,
    level INTEGER,
    bonus_power REAL,
    bonus_toughness REAL,
    added_abilities TEXT,
    mana_cost_modifier REAL,
    rarity_modifier TEXT,
    visual_effects TEXT,
    flavor_note TEXT,
    created_at DATE,
    updated_at DATE,
    is_permanent INTEGER,
    source_pack TEXT,
    cost_in_gems INTEGER,
    unlock_requirement TEXT,
    limited_use INTEGER,
    max_stack INTEGER,
    artist_override TEXT,
    background_theme TEXT,
    audio_cue TEXT,
    lore_reference TEXT,
    external_id TEXT
);
INSERT INTO card_artifact_enhancements VALUES (1,'uuid-001','Glow',2,0.5,0.5,'Flying','0.1','Rare','Sparkle','Bright aura','2023-01-01','2023-01-02',1,'Mystic Set',100,'Level5',0,3,'ArtistA','Night','Chime','Lore001','E001');
INSERT INTO card_artifact_enhancements VALUES (2,'uuid-002','Shield',1,0.0,1.0,'Defender','0.0','Uncommon','Shimmer','Stone guard','2023-02-10','2023-02-11',0,'Core Set',50,'Level2',1,1,'ArtistB','Stone','Clank','Lore002','E002');
INSERT INTO card_artifact_enhancements VALUES (3,'uuid-003','Echo',3,0.3,0.3,'Echo','0.2','Mythic','Pulse','Resonant','2023-03-15','2023-03-16',1,'Expansion X',200,'Level7',0,5,'ArtistC','Pulse','Hum','Lore003','E003');

-- Aggregated competition statistics per player
CREATE TABLE player_competition_stats (
    stat_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER NOT NULL,
    season_year INTEGER,
    total_matches INTEGER,
    wins INTEGER,
    losses INTEGER,
    draws INTEGER,
    win_rate REAL,
    average_opponent_rating REAL,
    highest_rating INTEGER,
    lowest_rating INTEGER,
    total_prizes INTEGER,
    total_earnings REAL,
    average_mana_spent REAL,
    avg_damage_per_game REAL,
    most_played_format TEXT,
    favorite_deck_id INTEGER,
    total_decks_used INTEGER,
    longest_win_streak INTEGER,
    longest_loss_streak INTEGER,
    favorite_color TEXT,
    preferred_play_style TEXT,
    last_updated DATE,
    notes TEXT,
    external_ref TEXT
);
INSERT INTO player_competition_stats VALUES (1,101,2022,120,78,30,12,0.65,1525.3,2000,1100,5,3500.75,3.2,45.6,'Standard',55,8,2,'Blue','Control','2023-01-05','Top tier player','REF001');
INSERT INTO player_competition_stats VALUES (2,102,2022,95,50,40,5,0.53,1450.0,1800,950,3,2100.40,2.8,38.2,'Modern',60,5,3,'Red','Aggro','2023-01-06','Improving steadily','REF002');
INSERT INTO player_competition_stats VALUES (3,103,2022,140,100,35,5,0.71,1600.8,2100,1300,7,4800.00,4.1,52.0,'Legacy',70,12,1,'Green','Midrange','2023-01-07','Consistent performer','REF003');

-- Detailed marketplace listing information for cards
CREATE TABLE marketplace_listing_details (
    listing_id INTEGER PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT NOT NULL,
    seller_user_id INTEGER,
    listing_title TEXT,
    price_amount REAL,
    price_currency TEXT,
    condition TEXT,
    is_foil INTEGER,
    is_signed INTEGER,
    listing_date DATE,
    expiration_date DATE,
    shipping_origin_country TEXT,
    shipping_destination_country TEXT,
    shipping_cost REAL,
    handling_time_days INTEGER,
    quantity_available INTEGER,
    min_purchase_quantity INTEGER,
    max_purchase_quantity INTEGER,
    payment_method TEXT,
    escrow_enabled INTEGER,
    feedback_score INTEGER,
    return_policy TEXT,
    warranty_years INTEGER,
    promotional_tag TEXT,
    featured INTEGER,
    last_updated DATE,
    notes TEXT
);
INSERT INTO marketplace_listing_details VALUES (1,'uuid-010',2001,'Shiny Goblin',45.99,'USD','NearMint',1,0,'2023-04-01','2023-04-30','US','US',5.00,2,3,1,2,'PayPal',1,95,'30days',0,'Featured','1','2023-04-02','');
INSERT INTO marketplace_listing_details VALUES (2,'uuid-011',2002,'Classic Dragon',120.00,'EUR','LightPlay',0,1,'2023-04-05','2023-05-05','DE','DE',10.00,1,1,1,1,'BankTransfer',0,88,'14days',1,'RareFind','0','2023-04-06','Signed by artist');
INSERT INTO marketplace_listing_details VALUES (3,'uuid-012',2003,'Budget Pack',5.50,'USD','Played',0,0,'2023-04-10','2023-05-10','CA','US',2.50,3,10,2,5,'CreditCard',1,70,'NoReturns',0,'Clearance','0','2023-04-11','');

-- Production phases for each set (adjacent to set information)
CREATE TABLE set_production_phases (
    phase_id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT NOT NULL,
    phase_name TEXT,
    start_date DATE,
    end_date DATE,
    responsible_department TEXT,
    lead_manager TEXT,
    budget_usd REAL,
    resource_count INTEGER,
    external_vendor TEXT,
    quality_check_passed INTEGER,
    notes TEXT,
    milestone_flag INTEGER,
    location_code TEXT,
    work_order_number TEXT,
    estimated_hours INTEGER,
    actual_hours INTEGER,
    risk_level TEXT,
    mitigation_plan TEXT,
    approval_status TEXT,
    revision_number INTEGER,
    compliance_tag TEXT,
    created_at DATE,
    updated_at DATE,
    extra_info TEXT,
    reference_id TEXT
);
INSERT INTO set_production_phases VALUES (1,'M21','Artwork Creation','2021-01-01','2021-02-15','Art','Liam','150000',20,'ArtCo','1','Initial art pass','1','NY01','WO-1001',320,300,'Low','Standard','Approved',3,'ART','2021-01-02','2021-02-16','','REFP001');
INSERT INTO set_production_phases VALUES (2,'M21','Print Preparation','2021-02-20','2021-03-10','Print','Mia','200000',15,'PrintWorks','1','Pre‑print QC','1','LA02','WO-1002',280,275,'Medium','Extra QA','Approved',2,'PRT','2021-02-21','2021-03-11','','REFP002');
INSERT INTO set_production_phases VALUES (3,'M21','Distribution','2021-03-15','2021-04-05','Logistics','Noah','120000',10,'ShipFast','1','Final dispatch','1','CHI03','WO-1003',200,190,'Low','Standard','Approved',1,'DIS','2021-03-16','2021-04-06','','REFP003');

-- Officials assigned to each tournament match
CREATE TABLE tournament_match_officials (
    assignment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER NOT NULL,
    official_id INTEGER NOT NULL,
    role TEXT,
    certification_level TEXT,
    assigned_date DATE,
    confirmed INTEGER,
    notes TEXT,
    shift_start TIME,
    shift_end TIME,
    location_zone TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    replacement_allowed INTEGER,
    max_matches_per_day INTEGER,
    overtime_allowed INTEGER,
    language_preference TEXT,
    travel_expense_budget REAL,
    accommodation_type TEXT,
    meals_provided INTEGER,
    equipment_assigned TEXT,
    briefing_completed INTEGER,
    debrief_completed INTEGER,
    created_at DATE,
    updated_at DATE,
    external_reference TEXT
);
INSERT INTO tournament_match_officials VALUES (1,5001,3001,'HeadJudge','Level3','2023-06-01',1,'','08:00','16:00','NorthWing','judge1@example.com','5551234',1,5,0,'English',250.00,'Hotel','1','Whistle','1','0','2023-05-20','2023-06-02','REFO001');
INSERT INTO tournament_match_officials VALUES (2,5002,3002,'ScoreKeeper','Level2','2023-06-02',1,'','09:00','17:00','SouthWing','judge2@example.com','5555678',0,4,0,'Spanish',150.00,'Inn','0','Tablet','1','1','2023-05-21','2023-06-03','REFO002');
INSERT INTO tournament_match_officials VALUES (3,5003,3003,'Timer','Level1','2023-06-03',0,'Pending confirmation','10:00','18:00','EastWing','judge3@example.com','5559012',1,3,1,'French',100.00,'None','0','Clock','0','0','2023-05-22','2023-06-04','REFO003');

-- Licensing terms for digital assets
CREATE TABLE digital_asset_licensing_terms (
    term_id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_uuid TEXT NOT NULL,
    license_type TEXT,
    valid_from DATE,
    valid_to DATE,
    max_downloads INTEGER,
    allowed_regions TEXT,
    commercial_use INTEGER,
    attribution_required INTEGER,
    modification_allowed INTEGER,
    redistribution_allowed INTEGER,
    royalty_fee_percent REAL,
    upfront_fee REAL,
    exclusive INTEGER,
    sublicensing_allowed INTEGER,
    audit_frequency_days INTEGER,
    compliance_contact TEXT,
    termination_clause TEXT,
    renewal_option TEXT,
    notes TEXT,
    created_by INTEGER,
    approved_by INTEGER,
    approval_date DATE,
    last_review DATE,
    external_doc_id TEXT,
    version_number INTEGER,
    status TEXT
);
INSERT INTO digital_asset_licensing_terms VALUES (1,'da-001','Standard','2023-01-01','2025-12-31',1000,'NA',1,1,0,0,5.0,200.00,0,1,180,'legal@example.com','30day notice','AutoRenew','Initial term','10','20','2023-01-05','2023-06-01','DOC1001',1,'Active');
INSERT INTO digital_asset_licensing_terms VALUES (2,'da-002','Premium','2023-03-15','2028-03-14',5000,'Global',1,1,1,1,7.5,500.00,1,0,90,'legal2@example.com','90day notice','ManualRenew','Premium agreement','12','22','2023-03-20','2024-03-20','DOC1002',2,'Active');
INSERT INTO digital_asset_licensing_terms VALUES (3,'da-003','Restricted','2022-07-01','2024-06-30',200,'EU',0,0,0,0,0.0,0.00,0,0,365,'legal3@example.com','Immediate','NoRenew','Restricted use','5','15','2022-07-05','2023-07-05','DOC1003',1,'Expired');

-- Records of Magic theory experiments
CREATE TABLE magic_theory_experiments (
    experiment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    experiment_name TEXT,
    hypothesis TEXT,
    start_date DATE,
    end_date DATE,
    lead_researcher TEXT,
    team_members TEXT,
    mana_curve_analysis TEXT,
    win_rate_delta REAL,
    average_game_length REAL,
    decklist_snapshot TEXT,
    data_source TEXT,
    statistical_significance REAL,
    notes TEXT,
    published INTEGER,
    publication_url TEXT,
    peer_review_status TEXT,
    funding_source TEXT,
    budget_usd REAL,
    required_equipment TEXT,
    environment_conditions TEXT,
    revision_number INTEGER,
    compliance_flag INTEGER,
    created_at DATE,
    updated_at DATE,
    external_reference TEXT,
    status TEXT
);
INSERT INTO magic_theory_experiments VALUES (1,'Blue Aggro vs Red Burn','Test if blue aggro can outpace red burn','2023-02-01','2023-02-28','DrSmith','Alice,Bob','Steep','0.07','22.5','deck-001','Arena','0.95','Preliminary results','0','','Pending','GrantA','50000','High‑CPU','RoomTemp',1,1,'2023-02-01','2023-03-01','EXP001','InProgress');
INSERT INTO magic_theory_experiments VALUES (2,'Mana Curve Optimization','Identify optimal curve for midrange','2023-03-05','2023-04-10','ProfLee','Carol,David','Balanced','0.03','25.0','deck-002','MTGO','0.88','Detailed analysis','1','http://example.com/paper','Accepted','SponsorB','75000','GPUCluster','Controlled',2,0,'2023-03-05','2023-04-15','EXP002','Completed');
INSERT INTO magic_theory_experiments VALUES (3,'Artifact Synergy','Assess synergy of artifact creatures','2023-05-01','2023-05-20','DrKhan','Eve,Frank','Flat','-0.01','27.0','deck-003','Local','0.60','Negative trend','0','','Rejected','Internal','30000','StandardPC','Ambient',1,1,'2023-05-01','2023-05-25','EXP003','Abandoned');

-- Parameters used by the card pricing algorithm
CREATE TABLE card_pricing_algorithm_params (
    param_id INTEGER PRIMARY KEY AUTOINCREMENT,
    algorithm_version TEXT,
    base_price_factor REAL,
    rarity_multiplier REAL,
    demand_index_weight REAL,
    supply_index_weight REAL,
    age_decay_rate REAL,
    tournament_performance_weight REAL,
    foil_modifier REAL,
    signed_modifier REAL,
    condition_multiplier REAL,
    market_volatility_factor REAL,
    currency_adjustment REAL,
    seasonal_factor REAL,
    region_multiplier TEXT,
    special_event_bonus REAL,
    max_price_cap REAL,
    min_price_floor REAL,
    rounding_precision INTEGER,
    log_timestamp DATE,
    created_by INTEGER,
    description TEXT,
    notes TEXT,
    active INTEGER,
    last_updated DATE,
    external_id TEXT,
    audit_flag INTEGER
);
INSERT INTO card_pricing_algorithm_params VALUES (1,'v1.0',1.0,2.5,0.4,0.3,0.02,0.1,1.2,1.5,1.0,0.8,1.0,1.0,'NA',0.05,5000,0.5,2,'2023-01-01',10,'Initial release','',1,'2023-01-02','PA001',0);
INSERT INTO card_pricing_algorithm_params VALUES (2,'v1.1',1.05,2.7,0.45,0.35,0.018,0.12,1.25,1.55,1.05,0.85,0.98,1.02,'EU',0.07,5500,0.6,2,'2023-06-01',12,'Adjusted for EU market','',1,'2023-06-02','PA002',0);
INSERT INTO card_pricing_algorithm_params VALUES (3,'v2.0',1.10,3.0,0.5,0.4,0.015,0.15,1.3,1.6,1.1,0.9,0.95,1.05,'APAC',0.1,6000,0.7,3,'2024-01-01',15,'Beta version for APAC','',0,'2024-01-02','PA003',1);

-- Player mental health assessment records (adjacent to player data)
CREATE TABLE player_mental_health_assessments (
    assessment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER NOT NULL,
    assessment_date DATE,
    therapist_name TEXT,
    stress_level INTEGER,
    anxiety_score INTEGER,
    depression_score INTEGER,
    concentration_score INTEGER,
    sleep_quality INTEGER,
    recommended_actions TEXT,
    follow_up_date DATE,
    session_notes TEXT,
    confidentiality_level TEXT,
    assessment_type TEXT,
    duration_minutes INTEGER,
    mood_rating INTEGER,
    burnout_indicator INTEGER,
    coping_mechanisms TEXT,
    referrals TEXT,
    created_at DATE,
    updated_at DATE,
    status TEXT,
    external_reference TEXT,
    audit_flag INTEGER,
    notes TEXT,
    version_number INTEGER
);
INSERT INTO player_mental_health_assessments VALUES (1,101,'2023-04-10','DrSmith',3,40,30,75,6,'Meditation,Reduced gaming','2023-05-10','Patient reported increased pressure','High','Routine',60,7,0,'Breathing exercises','None','2023-04-10','2023-04-15','Open','MH001',0,'','1');
INSERT INTO player_mental_health_assessments VALUES (2,102,'2023-05-12','DrLee',5,55,45,60,4,'Therapy sessions,Exercise','2023-06-12','Signs of burnout emerging','Medium','Follow‑up',45,5,1,'Journaling','Psychiatrist referral','2023-05-12','2023-05-18','Open','MH002',0,'','1');
INSERT INTO player_mental_health_assessments VALUES (3,103,'2023-06-20','DrKhan',2,20,15,85,8,'Maintain current routine','2023-07-20','Stable mental state','Low','Routine',30,9,0,'Mindfulness apps','None','2023-06-20','2023-06-25','Closed','MH003',0,'','1');

-- Detailed arena match outcomes (adjacent to arena data)
CREATE TABLE arena_match_outcomes (
    outcome_id INTEGER PRIMARY KEY AUTOINCREMENT,
    arena_match_id INTEGER NOT NULL,
    player_uuid TEXT,
    opponent_uuid TEXT,
    result TEXT,
    game_length_seconds INTEGER,
    total_mana_spent REAL,
    damage_dealt INTEGER,
    damage_received INTEGER,
    cards_played INTEGER,
    cards_drawn INTEGER,
    turns_taken INTEGER,
    win_reason TEXT,
    loss_reason TEXT,
    first_turn_player TEXT,
    final_life_total INTEGER,
    opponent_final_life INTEGER,
    resources_remaining REAL,
    special_events_triggered TEXT,
    rank_change INTEGER,
    elo_before INTEGER,
    elo_after INTEGER,
    match_date DATE,
    tournament_id INTEGER,
    notes TEXT,
    recorded_by INTEGER,
    verification_status TEXT,
    created_at DATE,
    updated_at DATE,
    external_log_id TEXT
);
INSERT INTO arena_match_outcomes VALUES (1,9001,'uuid-901','uuid-902','Win',750,23.5,45,12,30,5,12,'Aggressive strategy','', 'Player','2','0',10.0,'Quadra Strike',15,1500,1515,'2023-07-01',10,'Good game',20,'Verified','2023-07-01','2023-07-02','LOG001');
INSERT INTO arena_match_outcomes VALUES (2,9002,'uuid-903','uuid-904','Loss',680,21.0,30,38,28,6,11,'','Overcommit','Opponent','0','20',8.5,'Mana Burn',-10,1510,1500,'2023-07-02',11,'Tough loss',21,'Pending','2023-07-02','2023-07-03','LOG002');
INSERT INTO arena_match_outcomes VALUES (3,9003,'uuid-905','uuid-906','Draw',720,22.2,38,38,32,7,13,'','Tie after 13 turns','Player','1','1',9.0,'None',0,1520,1520,'2023-07-03',12,'Even match',22,'Verified','2023-07-03','2023-07-04','LOG003');