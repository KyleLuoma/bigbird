-- Metadata for card artwork files
CREATE TABLE card_artwork_metadata (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    uuid TEXT NOT NULL REFERENCES cards(uuid),
    artist_name TEXT,
    artwork_id TEXT,
    resolution TEXT,
    file_format TEXT,
    width INTEGER,
    height INTEGER,
    color_profile TEXT,
    creation_date DATE,
    source_url TEXT,
    license_type TEXT,
    usage_rights TEXT,
    is_approved INTEGER DEFAULT 0,
    approval_date DATE,
    tags TEXT,
    version INTEGER,
    checksum TEXT,
    storage_location TEXT,
    photographer_name TEXT,
    notes TEXT
);

INSERT INTO card_artwork_metadata (uuid,artist_name,artwork_id,resolution,file_format,width,height,color_profile,creation_date,source_url,license_type,usage_rights,is_approved,approval_date,tags,version,checksum,storage_location,photographer_name,notes) VALUES ('uuid_001','John_Doe','art_001','3000x4000','png',3000,4000,'sRGB','2022-05-01','http://example.com/art1.png','standard','full','1','2022-05-10','dragon,legendary',1,'abc123','/assets/art1','Jane_Smith','Initial upload');
INSERT INTO card_artwork_metadata (uuid,artist_name,artwork_id,resolution,file_format,width,height,color_profile,creation_date,source_url,license_type,usage_rights,is_approved,approval_date,tags,version,checksum,storage_location,photographer_name,notes) VALUES ('uuid_002','Alice_Wang','art_002','2500x3500','jpeg',2500,3500,'AdobeRGB','2022-06-15','http://example.com/art2.jpeg','premium','restricted','0',NULL,'elf,rare',2,'def456','/assets/art2','Bob_Lee','Pending review');
INSERT INTO card_artwork_metadata (uuid,artist_name,artwork_id,resolution,file_format,width,height,color_profile,creation_date,source_url,license_type,usage_rights,is_approved,approval_date,tags,version,checksum,storage_location,photographer_name,notes) VALUES ('uuid_003','Mark_Twain','art_003','4000x5000','png',4000,5000,'ProPhotoRGB','2022-07-20','http://example.com/art3.png','standard','full','1','2022-07-25','goblin,common',1,'ghi789','/assets/art3','Sara_Khan','Approved for print');

-- Marketing campaigns for sets
CREATE TABLE set_marketing_campaigns (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    set_code TEXT NOT NULL REFERENCES sets(code),
    campaign_name TEXT,
    start_date DATE,
    end_date DATE,
    budget REAL,
    channel TEXT,
    target_audience TEXT,
    impressions INTEGER,
    clicks INTEGER,
    cpc REAL,
    cpm REAL,
    creative_type TEXT,
    lead_source TEXT,
    conversion_rate REAL,
    sales_attributed REAL,
    manager_name TEXT,
    status TEXT,
    notes TEXT,
    geo_target TEXT,
    platform TEXT
);

INSERT INTO set_marketing_campaigns (set_code,campaign_name,start_date,end_date,budget,channel,target_audience,impressions,clicks,cpc,cpm,creative_type,lead_source,conversion_rate,sales_attributed,manager_name,status,notes,geo_target,platform) VALUES ('STK','Spring_Blast','2023-03-01','2023-04-30',150000.00,'social','players_age_18_35',2000000,15000,0.75,5.00,'video','instagram',0.0075,11250.00,'Laura_Chan','active','Initial rollout','NA','Facebook');
INSERT INTO set_marketing_campaigns (set_code,campaign_name,start_date,end_date,budget,channel,target_audience,impressions,clicks,cpc,cpm,creative_type,lead_source,conversion_rate,sales_attributed,manager_name,status,notes,geo_target,platform) VALUES ('AKH','Adventure_Campaign','2023-05-10','2023-06-20',200000.00,'display','collectors','2500000',20000,0.85,6.00,'banner','google',0.0080,16000.00,'Mike_Davis','active','Mid‑phase','EU','GoogleAds');
INSERT INTO set_marketing_campaigns (set_code,campaign_name,start_date,end_date,budget,channel,target_audience,impressions,clicks,cpc,cpm,creative_type,lead_source,conversion_rate,sales_attributed,manager_name,status,notes,geo_target,platform) VALUES ('M21','Legacy_Relaunch','2023-09-01','2023-10-15',180000.00,'email','veteran_players','1800000',12000,0.65,4.50,'html','newsletter',0.0067,8000.00,'Emily_Roberts','planned','Pre‑launch','APAC','MailChimp');

-- Financial activity of players
CREATE TABLE player_financial_transactions (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER NOT NULL,
    transaction_id TEXT,
    transaction_date DATE,
    amount REAL,
    currency TEXT,
    transaction_type TEXT,
    description TEXT,
    method TEXT,
    status TEXT,
    foreign_exchange_rate REAL,
    source_account TEXT,
    destination_account TEXT,
    fee REAL,
    net_amount REAL,
    processed_by TEXT,
    audit_timestamp DATE,
    category TEXT,
    subcategory TEXT,
    receipt_url TEXT,
    notes TEXT
);

INSERT INTO player_financial_transactions (player_id,transaction_id,transaction_date,amount,currency,transaction_type,description,method,status,foreign_exchange_rate,source_account,destination_account,fee,net_amount,processed_by,audit_timestamp,category,subcategory,receipt_url,notes) VALUES (101,'txn_001','2023-02-15',49.99,'USD','purchase','deck_pack','credit_card','completed',1.0,'card_ending_1234','platform_wallet',1.00,48.99,'system','2023-02-15','digital_goods','deck','http://example.com/receipt1','first purchase');
INSERT INTO player_financial_transactions (player_id,transaction_id,transaction_date,amount,currency,transaction_type,description,method,status,foreign_exchange_rate,source_account,destination_account,fee,net_amount,processed_by,audit_timestamp,category,subcategory,receipt_url,notes) VALUES (102,'txn_002','2023-03-05',5.00,'USD','subscription','monthly_pass','paypal','completed',1.0,'paypal_account','platform_wallet',0.30,4.70,'system','2023-03-05','subscription','monthly','http://example.com/receipt2','auto‑renew');
INSERT INTO player_financial_transactions (player_id,transaction_id,transaction_date,amount,currency,transaction_type,description,method,status,foreign_exchange_rate,source_account,destination_account,fee,net_amount,processed_by,audit_timestamp,category,subcategory,receipt_url,notes) VALUES (103,'txn_003','2023-04-20',100.00,'USD','withdrawal','cash_out','bank_transfer','pending',1.0,'platform_wallet','bank_account_5678',2.00,98.00,'admin','2023-04-20','cash','withdrawal','http://example.com/receipt3','awaiting approval');

-- Detailed logistics for tournaments
CREATE TABLE tournament_logistics_details (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER NOT NULL,
    venue_id INTEGER NOT NULL,
    logistics_manager TEXT,
    setup_start DATETIME,
    setup_end DATETIME,
    equipment_list TEXT,
    staff_count INTEGER,
    security_level TEXT,
    transport_arrangements TEXT,
    accommodation_details TEXT,
    catering_provider TEXT,
    wifi_ssid TEXT,
    wifi_password TEXT,
    power_capacity_kw REAL,
    backup_generator INTEGER,
    parking_spaces INTEGER,
    signage_plan TEXT,
    waste_management TEXT,
    health_protocols TEXT,
    emergency_contact TEXT
);

INSERT INTO tournament_logistics_details (tournament_id,venue_id,logistics_manager,setup_start,setup_end,equipment_list,staff_count,security_level,transport_arrangements,accommodation_details,catering_provider,wifi_ssid,wifi_password,power_capacity_kw,backup_generator,parking_spaces,signage_plan,waste_management,health_protocols,emergency_contact) VALUES (201,301,'Anna_Klein','2023-07-01 08:00:00','2023-07-01 12:00:00','tables,chairs,projectors,servers',25,'high','shuttle_service','hotel_grand','CateringCo','TourneyWiFi','pass123',150.0,1,200,'banner_plan','recycling','mask_required','5551234567');
INSERT INTO tournament_logistics_details (tournament_id,venue_id,logistics_manager,setup_start,setup_end,equipment_list,staff_count,security_level,transport_arrangements,accommodation_details,catering_provider,wifi_ssid,wifi_password,power_capacity_kw,backup_generator,parking_spaces,signage_plan,waste_management,health_protocols,emergency_contact) VALUES (202,302,'Liam_Orr','2023-08-15 07:30:00','2023-08-15 11:30:00','stage,lights,sound_system',30,'medium','rental_buses','resort_lake','Foodies','EventNet','event2023',200.0,1,150,'digital_signage','compost','temperature_checks','5559876543');
INSERT INTO tournament_logistics_details (tournament_id,venue_id,logistics_manager,setup_start,setup_end,equipment_list,staff_count,security_level,transport_arrangements,accommodation_details,catering_provider,wifi_ssid,wifi_password,power_capacity_kw,backup_generator,parking_spaces,signage_plan,waste_management,health_protocols,emergency_contact) VALUES (203,303,'Sofia_Martinez','2023-09-20 09:00:00','2023-09-20 13:00:00','booths,monitors,routers',20,'low','private_cars','city_hotel','QuickEats','PlayWiFi','play2023',120.0,0,80,'floor_stickers','landfill','hand_sanitizer_station','5555551212');

-- License terms for digital assets
CREATE TABLE digital_asset_license_terms (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    asset_id INTEGER NOT NULL,
    license_name TEXT,
    version TEXT,
    effective_date DATE,
    expiration_date DATE,
    usage_scope TEXT,
    territory TEXT,
    royalty_rate REAL,
    upfront_fee REAL,
    minimum_term_months INTEGER,
    renewal_option TEXT,
    termination_clause TEXT,
    confidentiality_required INTEGER,
    audit_rights TEXT,
    indemnification TEXT,
    governing_law TEXT,
    contact_email TEXT,
    notes TEXT,
    is_active INTEGER,
    last_updated DATE,
    source_system TEXT
);

INSERT INTO digital_asset_license_terms (asset_id,license_name,version,effective_date,expiration_date,usage_scope,territory,royalty_rate,upfront_fee,minimum_term_months,renewal_option,termination_clause,confidentiality_required,audit_rights,indemnification,governing_law,contact_email,notes,is_active,last_updated,source_system) VALUES (401,'Standard_Digital','1.0','2023-01-01','2025-12-31','online','worldwide',0.05,1000.00,12,'auto','30_day_notice',1,'annual','limited','US','legal@example.com','Initial license','1','2023-01-02','AssetMgmt');
INSERT INTO digital_asset_license_terms (asset_id,license_name,version,effective_date,expiration_date,usage_scope,territory,royalty_rate,upfront_fee,minimum_term_months,renewal_option,termination_clause,confidentiality_required,audit_rights,indemnification,governing_law,contact_email,notes,is_active,last_updated,source_system) VALUES (402,'Premium_Digital','2.1','2023-06-15','2026-06-14','print,online','EU',0.10,2500.00,24,'manual','60_day_notice',1,'quarterly','full','EU','eu_legal@example.eu','Premium content','1','2023-06-16','AssetMgmt');
INSERT INTO digital_asset_license_terms (asset_id,license_name,version,effective_date,expiration_date,usage_scope,territory,royalty_rate,upfront_fee,minimum_term_months,renewal_option,termination_clause,confidentiality_required,audit_rights,indemnification,governing_law,contact_email,notes,is_active,last_updated,source_system) VALUES (403,'Legacy_Asset','0.9','2022-03-01','2024-02-28','archival','NA',0.00,0.00,0,'none','none',0,'none','none','NA','legacy@example.com','Legacy license no royalties','0','2022-03-02','LegacySystem');

-- Resources allocated for community events
CREATE TABLE community_event_resources (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER NOT NULL,
    resource_type TEXT,
    provider TEXT,
    quantity INTEGER,
    cost REAL,
    allocation_date DATE,
    return_date DATE,
    condition TEXT,
    storage_location TEXT,
    assigned_to TEXT,
    usage_notes TEXT,
    approved_by TEXT,
    status TEXT,
    priority INTEGER,
    notes TEXT,
    contact_phone TEXT,
    email TEXT,
    external_reference TEXT,
    is_shared INTEGER,
    depreciation_rate REAL,
    maintenance_schedule TEXT
);

INSERT INTO community_event_resources (event_id,resource_type,provider,quantity,cost,allocation_date,return_date,condition,storage_location,assigned_to,usage_notes,approved_by,status,priority,notes,contact_phone,email,external_reference,is_shared,depreciation_rate,maintenance_schedule) VALUES (501,'projector','AV_Supplies',5,750.00,'2023-04-01','2023-04-05','good','warehouse_a','Tech_Team','used for live streams','Mia_Tan','allocated',1,'high demand','5551112222','av@example.com','proj_ref_001',1,0.10,'annual_check');
INSERT INTO community_event_resources (event_id,resource_type,provider,quantity,cost,allocation_date,return_date,condition,storage_location,assigned_to,usage_notes,approved_by,status,priority,notes,contact_phone,email,external_reference,is_shared,depreciation_rate,maintenance_schedule) VALUES (502,'table','Furniture_Rentals',20,1200.00,'2023-05-10','2023-05-12','excellent','storage_b','Event_Staff','setup for panels','Jorge_Li','allocated',2,'standard set','5553334444','furn@example.com','tbl_ref_045',0,0.05,'monthly_inspection');
INSERT INTO community_event_resources (event_id,resource_type,provider,quantity,cost,allocation_date,return_date,condition,storage_location,assigned_to,usage_notes,approved_by,status,priority,notes,contact_phone,email,external_reference,is_shared,depreciation_rate,maintenance_schedule) VALUES (503,'laptop','Tech_Labs',10,5000.00,'2023-06-15','2023-06-18','good','tech_room','Dev_Team','demo stations','Lena_Oh','allocated',3,'reserved for workshops','5557778888','techlabs@example.com','laptop_ref_77',1,0.15,'biannual_service');

-- Extended arena match statistics
CREATE TABLE arena_match_statistics_ext (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    match_uuid TEXT NOT NULL,
    player_uuid TEXT NOT NULL,
    opponent_uuid TEXT NOT NULL,
    result TEXT,
    duration_seconds INTEGER,
    damage_dealt INTEGER,
    damage_taken INTEGER,
    cards_played INTEGER,
    cards_drawn INTEGER,
    mana_spent REAL,
    life_lost INTEGER,
    life_gained INTEGER,
    special_events TEXT,
    mulligans INTEGER,
    win_concentration REAL,
    average_hand_size REAL,
    rank_change INTEGER,
    xp_earned INTEGER,
    gold_earned REAL,
    match_timestamp DATE,
    notes TEXT
);

INSERT INTO arena_match_statistics_ext (match_uuid,player_uuid,opponent_uuid,result,duration_seconds,damage_dealt,damage_taken,cards_played,cards_drawn,mana_spent,life_lost,life_gained,special_events,mulligans,win_concentration,average_hand_size,rank_change,xp_earned,gold_earned,match_timestamp,notes) VALUES ('match_001','player_001','player_002','win',1800,45,20,30,12,150.5,10,0,'double_strike',1,0.85,5.2,2,1500,300.00,'2023-07-10','First win of season');
INSERT INTO arena_match_statistics_ext (match_uuid,player_uuid,opponent_uuid,result,duration_seconds,damage_dealt,damage_taken,cards_played,cards_drawn,mana_spent,life_lost,life_gained,special_events,mulligans,win_concentration,average_hand_size,rank_change,xp_earned,gold_earned,match_timestamp,notes) VALUES ('match_002','player_003','player_004','loss',2100,30,50,28,15,165.0,15,5,'counter_spell',2,0.60,4.8,-3,1200,250.00,'2023-07-12','Close match');
INSERT INTO arena_match_statistics_ext (match_uuid,player_uuid,opponent_uuid,result,duration_seconds,damage_dealt,damage_taken,cards_played,cards_drawn,mana_spent,life_lost,life_gained,special_events,mulligans,win_concentration,average_hand_size,rank_change,xp_earned,gold_earned,match_timestamp,notes) VALUES ('match_003','player_005','player_006','draw',1900,40,40,25,13,158.2,5,5,'none',0,0.75,5.0,0,1300,275.00,'2023-07-14','Evenly matched');

-- Research projects on Magic theory
CREATE TABLE magic_theory_research_projects (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    project_name TEXT,
    lead_scientist TEXT,
    start_date DATE,
    end_date DATE,
    hypothesis TEXT,
    methodology TEXT,
    dataset_reference TEXT,
    findings_summary TEXT,
    publication_url TEXT,
    funding_amount REAL,
    funding_agency TEXT,
    status TEXT,
    related_set_code TEXT,
    related_card_uuid TEXT,
    experiment_count INTEGER,
    peer_review_score REAL,
    ethical_approval INTEGER,
    notes TEXT,
    last_updated DATE
);

INSERT INTO magic_theory_research_projects (project_name,lead_scientist,start_date,end_date,hypothesis,methodology,dataset_reference,findings_summary,publication_url,funding_amount,funding_agency,status,related_set_code,related_card_uuid,experiment_count,peer_review_score,ethical_approval,notes,last_updated) VALUES ('Mana Flow Dynamics','Dr_Smith','2022-01-15','mana efficiency improves with dual lands','simulation','mana_dataset_v1','identified optimal land ratios','http://example.com/pub1',500000.00,'Arcane_Foundation','completed','KHM','uuid_010',12,4.5,1,'Published in Journal of Arcane Studies','2023-01-10');
INSERT INTO magic_theory_research_projects (project_name,lead_scientist,start_date,end_date,hypothesis,methodology,dataset_reference,findings_summary,publication_url,funding_amount,funding_agency,status,related_set_code,related_card_uuid,experiment_count,peer_review_score,ethical_approval,notes,last_updated) VALUES ('Plane Shift Mechanics','Prof_Liu','2023-03-01','inter‑plane spells have hidden cost factors','empirical','plane_shift_data','revealed hidden mana tax','http://example.com/pub2',300000.00,'Multiversal_Initiative','in_progress','M21','uuid_011',8,3.9,1,'Data collection ongoing','2023-08-01');
INSERT INTO magic_theory_research_projects (project_name,lead_scientist,start_date,end_date,hypothesis,methodology,dataset_reference,findings_summary,publication_url,funding_amount,funding_agency,status,related_set_code,related_card_uuid,experiment_count,peer_review_score,ethical_approval,notes,last_updated) VALUES ('Artifact Resonance','Dr_Khan','2022-07-20','artifacts affect adjacent permanents','lab_test','artifact_resonance_set','found resonance patterns','http://example.com/pub3',250000.00,'Artifact_Research_Council','review','STK','uuid_012',5,4.2,1,'Pending peer review','2023-06-15');

-- Forge operation logs for magical artifacts
CREATE TABLE artifact_forge_operations_log (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    artifact_id TEXT,
    operation_type TEXT,
    operator_name TEXT,
    operation_timestamp DATE,
    input_materials TEXT,
    output_product TEXT,
    quality_score REAL,
    duration_minutes INTEGER,
    energy_consumed_kwh REAL,
    temperature_celsius REAL,
    pressure_bar REAL,
    safety_checks_passed INTEGER,
    notes TEXT,
    batch_number TEXT,
    certification_id TEXT,
    location TEXT,
    maintenance_required INTEGER,
    cost REAL,
    compliance_status TEXT
);

INSERT INTO artifact_forge_operations_log (artifact_id,operation_type,operator_name,operation_timestamp,input_materials,output_product,quality_score,duration_minutes,energy_consumed_kwh,temperature_celsius,pressure_bar,safety_checks_passed,notes,batch_number,certification_id,location,maintenance_required,cost,compliance_status) VALUES ('artifact_001','creation','Eve_Marsh','2023-05-10','mithril,ether','Arcane_Sword',92.5,180,350.0,1200.0,5.0,1,'first prototype','BATCH_A1','CERT_1001','Forge_Hall_1',0,15000.00,'compliant');
INSERT INTO artifact_forge_operations_log (artifact_id,operation_type,operator_name,operation_timestamp,input_materials,output_product,quality_score,duration_minutes,energy_consumed_kwh,temperature_celsius,pressure_bar,safety_checks_passed,notes,batch_number,certification_id,location,maintenance_required,cost,compliance_status) VALUES ('artifact_002','enhancement','Liam_Ong','2023-06-22','arcane_essence','Enchanted_Amulet',88.0,90,200.0,950.0,3.5,1,'added resilience','BATCH_B2','CERT_1002','Forge_Hall_2',0,8000.00,'compliant');
INSERT INTO artifact_forge_operations_log (artifact_id,operation_type,operator_name,operation_timestamp,input_materials,output_product,quality_score,duration_minutes,energy_consumed_kwh,temperature_celsius,pressure_bar,safety_checks_passed,notes,batch_number,certification_id,location,maintenance_required,cost,compliance_status) VALUES ('artifact_003','recycling','Mia_Tan','2023-07-15','depleted_core','Reclaimed_Metal',75.0,60,150.0,800.0,2.0,1,'material recovery','BATCH_C3','CERT_1003','Forge_Hall_3',1,3000.00,'pending_inspection');

-- Environmental monitoring for venues
CREATE TABLE venue_environmental_monitoring (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER NOT NULL,
    sensor_id TEXT,
    sensor_type TEXT,
    reading_value REAL,
    reading_unit TEXT,
    reading_timestamp DATE,
    status TEXT,
    threshold_min REAL,
    threshold_max REAL,
    calibrated_date DATE,
    firmware_version TEXT,
    battery_level_percent INTEGER,
    location_description TEXT,
    alert_triggered INTEGER,
    maintenance_due DATE,
    notes TEXT,
    recorded_by TEXT,
    latitude REAL,
    longitude REAL,
    data_quality_score REAL
);

INSERT INTO venue_environmental_monitoring (venue_id,sensor_id,sensor_type,reading_value,reading_unit,reading_timestamp,status,threshold_min,threshold_max,calibrated_date,firmware_version,battery_level_percent,location_description,alert_triggered,maintenance_due,notes,recorded_by,latitude,longitude,data_quality_score) VALUES (301,'sensor_01','temperature',22.5,'C','2023-08-01', 'normal',18.0,26.0,'2023-01-01','v1.2',95,'main_hall',0,'2024-01-01','stable reading','system','40.7128','-74.0060',0.98);
INSERT INTO venue_environmental_monitoring (venue_id,sensor_id,sensor_type,reading_value,reading_unit,reading_timestamp,status,threshold_min,threshold_max,calibrated_date,firmware_version,battery_level_percent,location_description,alert_triggered,maintenance_due,notes,recorded_by,latitude,longitude,data_quality_score) VALUES (302,'sensor_02','humidity',45.0,'%','2023-08-01','normal',30.0,60.0,'2023-02-15','v1.3',90,'conference_room',0,'2024-02-15','within range','system','34.0522','-118.2437',0.95);
INSERT INTO venue_environmental_monitoring (venue_id,sensor_id,sensor_type,reading_value,reading_unit,reading_timestamp,status,threshold_min,threshold_max,calibrated_date,firmware_version,battery_level_percent,location_description,alert_triggered,maintenance_due,notes,recorded_by,latitude,longitude,data_quality_score) VALUES (303,'sensor_03','CO2','800','ppm','2023-08-01','warning',400,1000,'2023-03-10','v2.0',85,'lobby',1,'2024-03-10','elevated levels','system','51.5074','-0.1278',0.88);