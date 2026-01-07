-- Card marketplace listings
CREATE TABLE card_marketplace (
    listing_id INTEGER PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT,
    seller_user_id INTEGER,
    price_usd REAL,
    currency TEXT,
    condition TEXT,
    language TEXT,
    foil INTEGER,
    signed INTEGER,
    edition TEXT,
    listed_date DATE,
    expiration_date DATE,
    shipping_region TEXT,
    shipping_cost REAL,
    payment_method TEXT,
    quantity INTEGER,
    fulfilled INTEGER,
    rating REAL,
    feedback_score INTEGER,
    notes TEXT
);

INSERT INTO card_marketplace (card_uuid,seller_user_id,price_usd,currency,condition,language,foil,signed,edition,listed_date,expiration_date,shipping_region,shipping_cost,payment_method,quantity,fulfilled,rating,feedback_score,notes) VALUES ('uuid1',1,12.99,'USD','NM','English',1,0,'Alpha','2023-01-01','2023-06-01','NA',5.0,'PayPal',2,0,4.8,100,'First listing');
INSERT INTO card_marketplace (card_uuid,seller_user_id,price_usd,currency,condition,language,foil,signed,edition,listed_date,expiration_date,shipping_region,shipping_cost,payment_method,quantity,fulfilled,rating,feedback_score,notes) VALUES ('uuid2',2,0.0,'USD','PR','Japanese',0,1,'Beta','2023-02-15','2023-07-15','EU',7.5,'CreditCard',1,1,5.0,250,'Signed copy');
INSERT INTO card_marketplace (card_uuid,seller_user_id,price_usd,currency,condition,language,foil,signed,edition,listed_date,expiration_date,shipping_region,shipping_cost,payment_method,quantity,fulfilled,rating,feedback_score,notes) VALUES ('uuid3',3,45.5,'USD','EX','English',1,0,'Unlimited','2023-03-10','2023-08-10','ASIA',10.0,'BankTransfer',5,0,4.5,80,'Foil set');

-- Venue locations for events
CREATE TABLE venue_locations (
    venue_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    country_code TEXT,
    capacity INTEGER,
    indoor_outdoor TEXT,
    has_parking INTEGER,
    has_wifi INTEGER,
    contact_name TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    latitude REAL,
    longitude REAL,
    opening_hours TEXT,
    notes TEXT,
    accessibility_features TEXT,
    security_level TEXT
);

INSERT INTO venue_locations (name,address_line1,address_line2,city,state,postal_code,country_code,capacity,indoor_outdoor,has_parking,has_wifi,contact_name,contact_phone,contact_email,latitude,longitude,opening_hours,notes,accessibility_features,security_level) VALUES ('Grand Hall','123 Main St','Suite A','Metropolis','NY','10001','US',5000,'Indoor',1,1,'John Doe','5551234567','john@example.com',40.7128,-74.0060','9am-9pm','Main conference venue','WheelchairRamp','High');
INSERT INTO venue_locations (name,address_line1,address_line2,city,state,postal_code,country_code,capacity,indoor_outdoor,has_parking,has_wifi,contact_name,contact_phone,contact_email,latitude,longitude,opening_hours,notes,accessibility_features,security_level) VALUES ('Riverside Arena','456 River Rd','','Rivercity','CA','90001','US',3000,'Indoor',0,1,'Jane Smith','5559876543','jane@example.com',34.0522,-118.2437','10am-10pm','Open air seating','ElevatorAccess','Medium');
INSERT INTO venue_locations (name,address_line1,address_line2,city,state,postal_code,country_code,capacity,indoor_outdoor,has_parking,has_wifi,contact_name,contact_phone,contact_email,latitude,longitude,opening_hours,notes,accessibility_features,security_level) VALUES ('Mountain Pavilion','789 Alpine Way','Building B','Hilltown','CO','80014','US',1500,'Outdoor',1,0,'Bob Lee','5555551212','bob@example.com',39.7392,-104.9903','8am-6pm','Scenic outdoor site','BrailleSignage','Low');

-- Streaming metrics for sessions
CREATE TABLE streaming_metrics (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    session_id INTEGER,
    timestamp DATETIME,
    viewers_current INTEGER,
    viewers_cumulative INTEGER,
    chat_messages INTEGER,
    new_subscribers INTEGER,
    bits_received INTEGER,
    average_latency_ms REAL,
    bitrate_kbps REAL,
    resolution TEXT,
    cpu_usage_percent REAL,
    memory_usage_mb REAL,
    network_in_kbps REAL,
    network_out_kbps REAL,
    stream_duration_seconds INTEGER,
    region TEXT,
    device_type TEXT,
    platform TEXT,
    notes TEXT
);

INSERT INTO streaming_metrics (session_id,timestamp,viewers_current,viewers_cumulative,chat_messages,new_subscribers,bits_received,average_latency_ms,bitrate_kbps,resolution,cpu_usage_percent,memory_usage_mb,network_in_kbps,network_out_kbps,stream_duration_seconds,region,device_type,platform,notes) VALUES (101,'2023-04-01 14:00:00',1200,5000,300,15,2000,45.5,4500,'1080p',30.2,2048,5000,4500,7200,'NA','Desktop','Twitch','Peak hour');
INSERT INTO streaming_metrics (session_id,timestamp,viewers_current,viewers_cumulative,chat_messages,new_subscribers,bits_received,average_latency_ms,bitrate_kbps,resolution,cpu_usage_percent,memory_usage_mb,network_in_kbps,network_out_kbps,stream_duration_seconds,region,device_type,platform,notes) VALUES (102,'2023-04-01 15:30:00',800,3000,150,8,800,38.1,3500,'720p',25.0,1800,3500,3000,5400,'EU','Mobile','YouTube','Steady growth');
INSERT INTO streaming_metrics (session_id,timestamp,viewers_current,viewers_cumulative,chat_messages,new_subscribers,bits_received,average_latency_ms,bitrate_kbps,resolution,cpu_usage_percent,memory_usage_mb,network_in_kbps,network_out_kbps,stream_duration_seconds,region,device_type,platform,notes) VALUES (103,'2023-04-01 17:45:00',200,1200,20,2,150,60.0,2500,'480p',15.5,1200,2000,1800,3600,'ASIA','Console','Facebook','Low latency test');

-- Sponsor engagements
CREATE TABLE sponsor_engagements (
    engagement_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    event_id INTEGER,
    contract_start_date DATE,
    contract_end_date DATE,
    amount_usd REAL,
    tier TEXT,
    logo_url TEXT,
    activation_type TEXT,
    exclusivity INTEGER,
    deliverables TEXT,
    performance_metric TEXT,
    payment_schedule TEXT,
    contact_person TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    status TEXT,
    renewal_option TEXT
);

INSERT INTO sponsor_engagements (sponsor_id,event_id,contract_start_date,contract_end_date,amount_usd,tier,logo_url,activation_type,exclusivity,deliverables,performance_metric,payment_schedule,contact_person,contact_email,contact_phone,notes,created_at,updated_at,status,renewal_option) VALUES (201,301,'2023-01-01','2023-12-31',50000,'Gold','http://example.com/logo1.png','OnSite','1','Booth,Banner','Impressions','Quarterly','Alice Green','alice@example.com','5551112222','Top tier sponsor','2023-01-10 09:00:00','2023-01-10 09:00:00','Active','Optional');
INSERT INTO sponsor_engagements (sponsor_id,event_id,contract_start_date,contract_end_date,amount_usd,tier,logo_url,activation_type,exclusivity,deliverables,performance_metric,payment_schedule,contact_person,contact_email,contact_phone,notes,created_at,updated_at,status,renewal_option) VALUES (202,302,'2023-03-15','2024-03-14',25000,'Silver','http://example.com/logo2.png','Digital','0','AdSlots,SocialPost','Clicks','Monthly','Bob Brown','bob@example.com','5553334444','Mid tier sponsor','2023-03-20 10:30:00','2023-03-20 10:30:00','Active','None');
INSERT INTO sponsor_engagements (sponsor_id,event_id,contract_start_date,contract_end_date,amount_usd,tier,logo_url,activation_type,exclusivity,deliverables,performance_metric,payment_schedule,contact_person,contact_email,contact_phone,notes,created_at,updated_at,status,renewal_option) VALUES (203,303,'2023-05-01','2023-10-31',10000,'Bronze','http://example.com/logo3.png','Product','0','Samples','Leads','Upfront','Carol White','carol@example.com','5555556666','Entry level sponsor','2023-05-02 14:20:00','2023-05-02 14:20:00','Active','Optional');

-- Deck performance statistics
CREATE TABLE deck_performance_stats (
    deck_id INTEGER,
    tournament_id INTEGER,
    player_id INTEGER,
    wins INTEGER,
    losses INTEGER,
    draws INTEGER,
    total_matches INTEGER,
    average_game_time_sec REAL,
    win_rate REAL,
    average_mana_spent REAL,
    avg_damage_dealt REAL,
    avg_life_gained REAL,
    deck_rating REAL,
    meta_rank INTEGER,
    version TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    is_active INTEGER,
    play_style TEXT,
    PRIMARY KEY (deck_id,tournament_id)
);

INSERT INTO deck_performance_stats (deck_id,tournament_id,player_id,wins,losses,draws,total_matches,average_game_time_sec,win_rate,average_mana_spent,avg_damage_dealt,avg_life_gained,deck_rating,meta_rank,version,notes,created_at,updated_at,is_active,play_style) VALUES (401,501,1001,5,2,0,7,320.5,0.714,3.2,12.5,2.0,1800,2,'v1','Aggro deck','2023-04-15 08:00:00','2023-04-15 08:00:00',1,'Aggressive');
INSERT INTO deck_performance_stats (deck_id,tournament_id,player_id,wins,losses,draws,total_matches,average_game_time_sec,win_rate,average_mana_spent,avg_damage_dealt,avg_life_gained,deck_rating,meta_rank,version,notes,created_at,updated_at,is_active,play_style) VALUES (402,502,1002,3,4,0,7,410.0,0.429,4.5,8.0,3.5,1500,5,'v2','Control style','2023-05-20 09:30:00','2023-05-20 09:30:00',1,'Control');
INSERT INTO deck_performance_stats (deck_id,tournament_id,player_id,wins,losses,draws,total_matches,average_game_time_sec,win_rate,average_mana_spent,avg_damage_dealt,avg_life_gained,deck_rating,meta_rank,version,notes,created_at,updated_at,is_active,play_style) VALUES (403,503,1003,6,1,0,7,295.0,0.857,2.8,15.0,1.0,2000,1,'v3','Midrange deck','2023-06-10 11:15:00','2023-06-10 11:15:00',1,'Midrange');

-- Artwork licensing information
CREATE TABLE artwork_licenses (
    license_id INTEGER PRIMARY KEY AUTOINCREMENT,
    license_number TEXT,
    artwork_id INTEGER,
    artist_name TEXT,
    license_type TEXT,
    start_date DATE,
    end_date DATE,
    exclusive INTEGER,
    territory TEXT,
    usage_rights TEXT,
    royalty_percent REAL,
    royalty_amount_usd REAL,
    payment_terms TEXT,
    contact_name TEXT,
    contact_email TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    status TEXT,
    agreement_url TEXT
);

INSERT INTO artwork_licenses (license_number,artwork_id,artist_name,license_type,start_date,end_date,exclusive,territory,usage_rights,royalty_percent,royalty_amount_usd,payment_terms,contact_name,contact_email,notes,created_at,updated_at,status,agreement_url) VALUES ('LIC001',601,'John Artist','Exclusive','2023-01-01','2025-12-31',1,'World','Print,Digital',5.0,2500,'Annual','Emily Clark','emily@example.com','First license','2023-01-05 10:00:00','2023-01-05 10:00:00','Active','http://example.com/agreement1.pdf');
INSERT INTO artwork_licenses (license_number,artwork_id,artist_name,license_type,start_date,end_date,exclusive,territory,usage_rights,royalty_percent,royalty_amount_usd,payment_terms,contact_name,contact_email,notes,created_at,updated_at,status,agreement_url) VALUES ('LIC002',602,'Anna Painter','NonExclusive','2023-03-15','2024-03-14',0,'EU','Digital',3.0,1200,'Quarterly','Mark Davis','mark@example.com','Secondary license','2023-03-20 14:30:00','2023-03-20 14:30:00','Active','http://example.com/agreement2.pdf');
INSERT INTO artwork_licenses (license_number,artwork_id,artist_name,license_type,start_date,end_date,exclusive,territory,usage_rights,royalty_percent,royalty_amount_usd,payment_terms,contact_name,contact_email,notes,created_at,updated_at,status,agreement_url) VALUES ('LIC003',603,'Liu Sketch','Exclusive','2023-06-01','2026-05-31',1,'Asia','Print',4.5,1800,'BiAnnual','Sophie Lee','sophie@example.com','Asia exclusive','2023-06-05 09:15:00','2023-06-05 09:15:00','Pending','http://example.com/agreement3.pdf');

-- Player communication logs
CREATE TABLE player_communication_logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    communication_type TEXT,
    channel TEXT,
    subject TEXT,
    body_preview TEXT,
    sent_at DATETIME,
    delivered_at DATETIME,
    opened_at DATETIME,
    clicked_at DATETIME,
    response_received INTEGER,
    response_time_sec INTEGER,
    agent_id INTEGER,
    priority INTEGER,
    status TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    tags TEXT,
    attachment_count INTEGER
);

INSERT INTO player_communication_logs (player_id,communication_type,channel,subject,body_preview,sent_at,delivered_at,opened_at,clicked_at,response_received,response_time_sec,agent_id,priority,status,notes,created_at,updated_at,tags,attachment_count) VALUES (1001,'Email','SMTP','Welcome','Welcome to the platform','2023-04-01 08:00:00','2023-04-01 08:00:05','2023-04-01 08:05:00','2023-04-01 08:07:00',1,420,10,1,'Sent','First welcome email','2023-04-01 08:00:00','2023-04-01 08:00:00','welcome, onboarding',0);
INSERT INTO player_communication_logs (player_id,communication_type,channel,subject,body_preview,sent_at,delivered_at,opened_at,clicked_at,response_received,response_time_sec,agent_id,priority,status,notes,created_at,updated_at,tags,attachment_count) VALUES (1002,'InApp','Notification','Tournament Reminder','Your tournament starts tomorrow','2023-04-10 12:00:00','2023-04-10 12:00:01','2023-04-10 12:01:00',NULL,0,NULL,20,2,'Delivered','Reminder sent','2023-04-10 12:00:00','2023-04-10 12:00:00','reminder, tournament',0);
INSERT INTO player_communication_logs (player_id,communication_type,channel,subject,body_preview,sent_at,delivered_at,opened_at,clicked_at,response_received,response_time_sec,agent_id,priority,status,notes,created_at,updated_at,tags,attachment_count) VALUES (1003,'SMS','Twilio','Code','Your verification code is 123456','2023-04-15 14:30:00','2023-04-15 14:30:02','2023-04-15 14:31:00',NULL,0,NULL,30,3,'Sent','Verification code','2023-04-15 14:30:00','2023-04-15 14:30:00','verification',0);

-- Tournament schedule details
CREATE TABLE tournament_schedule (
    schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    round_number INTEGER,
    start_time DATETIME,
    end_time DATETIME,
    venue_id INTEGER,
    match_type TEXT,
    max_players INTEGER,
    prize_pool_usd REAL,
    sponsor_id INTEGER,
    broadcast_url TEXT,
    livestream_platform TEXT,
    official_rules_url TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    status TEXT,
    organizer_id INTEGER,
    seating_capacity INTEGER,
    region TEXT
);

INSERT INTO tournament_schedule (tournament_id,round_number,start_time,end_time,venue_id,match_type,max_players,prize_pool_usd,sponsor_id,broadcast_url,livestream_platform,official_rules_url,notes,created_at,updated_at,status,organizer_id,seating_capacity,region) VALUES (601,1,'2023-07-01 09:00:00','2023-07-01 12:00:00',1,'Swiss',64,20000,201,'http://example.com/stream1','Twitch','http://example.com/rules','Opening round','2023-06-01 10:00:00','2023-06-01 10:00:00','Scheduled',1001,5000,'NA');
INSERT INTO tournament_schedule (tournament_id,round_number,start_time,end_time,venue_id,match_type,max_players,prize_pool_usd,sponsor_id,broadcast_url,livestream_platform,official_rules_url,notes,created_at,updated_at,status,organizer_id,seating_capacity,region) VALUES (602,2,'2023-07-02 13:00:00','2023-07-02 16:00:00',2,'Elimination',32,15000,202,'http://example.com/stream2','YouTube','http://example.com/rules2','Quarterfinals','2023-06-02 11:00:00','2023-06-02 11:00:00','Scheduled',1002,3000,'EU');
INSERT INTO tournament_schedule (tournament_id,round_number,start_time,end_time,venue_id,match_type,max_players,prize_pool_usd,sponsor_id,broadcast_url,livestream_platform,official_rules_url,notes,created_at,updated_at,status,organizer_id,seating_capacity,region) VALUES (603,3,'2023-07-03 17:00:00','2023-07-03 20:00:00',3,'Final',8,50000,203,'http://example.com/stream3','Facebook','http://example.com/rules3','Final match','2023-06-03 12:00:00','2023-06-03 12:00:00','Scheduled',1003,1000,'ASIA');

-- Inventory stock for merchandise
CREATE TABLE inventory_stock (
    item_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sku TEXT,
    name TEXT,
    category TEXT,
    supplier_id INTEGER,
    purchase_price_usd REAL,
    sell_price_usd REAL,
    quantity_on_hand INTEGER,
    reorder_level INTEGER,
    reorder_quantity INTEGER,
    last_restock_date DATE,
    next_expected_delivery DATE,
    warehouse_location TEXT,
    weight_grams REAL,
    dimensions_cm TEXT,
    barcode TEXT,
    ean TEXT,
    upc TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    status TEXT
);

INSERT INTO inventory_stock (sku,name,category,supplier_id,purchase_price_usd,sell_price_usd,quantity_on_hand,reorder_level,reorder_quantity,last_restock_date,next_expected_delivery,warehouse_location,weight_grams,dimensions_cm,barcode,ean,upc,notes,created_at,updated_at,status) VALUES ('SKU001','Deck Box','Accessories',301,2.5,5.0,150,20,50,'2023-03-01','2023-04-01','WH1',200,'10x10x5','123456789012','1234567890123','0123456789012','Standard deck box','2023-03-10 09:00:00','2023-03-10 09:00:00','InStock');
INSERT INTO inventory_stock (sku,name,category,supplier_id,purchase_price_usd,sell_price_usd,quantity_on_hand,reorder_level,reorder_quantity,last_restock_date,next_expected_delivery,warehouse_location,weight_grams,dimensions_cm,barcode,ean,upc,notes,created_at,updated_at,status) VALUES ('SKU002','Playmat','Accessories',302,5.0,12.0,80,10,30,'2023-02-15','2023-03-15','WH2',500,'60x30x2','234567890123','2345678901234','1234567890123','Premium playmat','2023-02-20 10:30:00','2023-02-20 10:30:00','InStock');
INSERT INTO inventory_stock (sku,name,category,supplier_id,purchase_price_usd,sell_price_usd,quantity_on_hand,reorder_level,reorder_quantity,last_restock_date,next_expected_delivery,warehouse_location,weight_grams,dimensions_cm,barcode,ean,upc,notes,created_at,updated_at,status) VALUES ('SKU003','Card Sleeves','Accessories',303,0.01,0.05,2000,500,1000,'2023-01-10','2023-02-10','WH1',2,'9x6x0.5','345678901234','3456789012345','2345678901234','Standard sleeves pack','2023-01-15 08:45:00','2023-01-15 08:45:00','InStock');

-- API usage logs
CREATE TABLE api_usage_logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    api_key_id INTEGER,
    endpoint TEXT,
    http_method TEXT,
    request_timestamp DATETIME,
    response_status INTEGER,
    response_time_ms INTEGER,
    bytes_sent INTEGER,
    bytes_received INTEGER,
    ip_address TEXT,
    user_agent TEXT,
    country_code TEXT,
    throttled INTEGER,
    error_message TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    request_id TEXT,
    correlation_id TEXT,
    client_app TEXT
);

INSERT INTO api_usage_logs (api_key_id,endpoint,http_method,request_timestamp,response_status,response_time_ms,bytes_sent,bytes_received,ip_address,user_agent,country_code,throttled,error_message,notes,created_at,updated_at,request_id,correlation_id,client_app) VALUES (1,'/cards','GET','2023-04-01 10:00:00',200,120,500,1500,'192.168.1.10','PostmanRuntime/7.28','US',0,'','Successful request','2023-04-01 10:00:00','2023-04-01 10:00:00','REQ001','CORR001','WebApp');
INSERT INTO api_usage_logs (api_key_id,endpoint,http_method,request_timestamp,response_status,response_time_ms,bytes_sent,bytes_received,ip_address,user_agent,country_code,throttled,error_message,notes,created_at,updated_at,request_id,correlation_id,client_app) VALUES (2,'/sets','POST','2023-04-01 11:30:00',201,250,800,2000,'203.0.113.5','curl/7.68.0','EU',0,'','Set creation','2023-04-01 11:30:00','2023-04-01 11:30:00','REQ002','CORR002','CLI');
INSERT INTO api_usage_logs (api_key_id,endpoint,http_method,request_timestamp,response_status,response_time_ms,bytes_sent,bytes_received,ip_address,user_agent,country_code,throttled,error_message,notes,created_at,updated_at,request_id,correlation_id,client_app) VALUES (3,'/rulings','GET','2023-04-01 12:45:00',429,30,300,0,'198.51.100.22','Mozilla/5.0','AS',1,'Rate limit exceeded','Throttled request','2023-04-01 12:45:00','2023-04-01 12:45:00','REQ003','CORR003','MobileApp');