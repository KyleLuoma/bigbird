-- Artist contracts details
CREATE TABLE artist_contracts (
    contract_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artist_name TEXT,
    start_date DATE,
    end_date DATE,
    royalty_rate REAL,
    exclusivity_flag INTEGER,
    territory TEXT,
    payment_method TEXT,
    bank_account TEXT,
    tax_id TEXT,
    contact_email TEXT,
    phone_number TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO artist_contracts (artist_name,start_date,end_date,royalty_rate,exclusivity_flag,territory,payment_method,bank_account,tax_id,contact_email,phone_number,address_line1,address_line2,city,state,zip_code,country,notes,created_at,updated_at) VALUES ('John Doe','2023-01-01','2025-12-31',5.0,1,'Global','WireTransfer','12345678','TAX123','john@example.com','5551234567','123 Art St','','NewYork','NY','10001','USA','Initial contract','2023-01-01','2023-01-01');
INSERT INTO artist_contracts (artist_name,start_date,end_date,royalty_rate,exclusivity_flag,territory,payment_method,bank_account,tax_id,contact_email,phone_number,address_line1,address_line2,city,state,zip_code,country,notes,created_at,updated_at) VALUES ('Alice Smith','2022-06-15','2024-06-14',7.5,0,'Europe','PayPal','87654321','TAX987','alice@example.com','5559876543','45 Canvas Rd','Apt 2','London','LD','SW1A1AA','UK','Renewal pending','2022-06-15','2022-06-15');
INSERT INTO artist_contracts (artist_name,start_date,end_date,royalty_rate,exclusivity_flag,territory,payment_method,bank_account,tax_id,contact_email,phone_number,address_line1,address_line2,city,state,zip_code,country,notes,created_at,updated_at) VALUES ('Bob Lee','2021-03-01','2023-02-28',6.0,1,'Asia','BankTransfer','11223344','TAX456','bob@example.com','5551122334','78 Brush Ln','','Tokyo','TK','100-0001','JP','Extended term','2021-03-01','2021-03-01');

-- Print run logs
CREATE TABLE print_run_logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    run_number INTEGER,
    printer_name TEXT,
    print_date DATE,
    sheets_printed INTEGER,
    sheets_defective INTEGER,
    total_cards INTEGER,
    cost_usd REAL,
    batch_code TEXT,
    quality_grade TEXT,
    machine_id TEXT,
    operator_name TEXT,
    shift TEXT,
    temperature REAL,
    humidity REAL,
    ink_type TEXT,
    paper_type TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO print_run_logs (set_code,run_number,printer_name,print_date,sheets_printed,sheets_defective,total_cards,cost_usd,batch_code,quality_grade,machine_id,operator_name,shift,temperature,humidity,ink_type,paper_type,notes,created_at,updated_at) VALUES ('MID','1','PrintMaster','2023-07-10',1500,10,7500,2500.0','BCH001','A','MCH01','Jane Doe','Night',22.5,45.0,'UV','Gloss','Run completed','2023-07-10','2023-07-10');
INSERT INTO print_run_logs (set_code,run_number,printer_name,print_date,sheets_printed,sheets_defective,total_cards,cost_usd,batch_code,quality_grade,machine_id,operator_name,shift,temperature,humidity,ink_type,paper_type,notes,created_at,updated_at) VALUES ('WAR','2','ColorPrint','2023-08-05',1800,5,9000,3000.0','BCH002','A+','MCH02','John Smith','Day',23.0,40.0,'Waterbased','Matte','No defects','2023-08-05','2023-08-05');
INSERT INTO print_run_logs (set_code,run_number,printer_name,print_date,sheets_printed,sheets_defective,total_cards,cost_usd,batch_code,quality_grade,machine_id,operator_name,shift,temperature,humidity,ink_type,paper_type,notes,created_at,updated_at) VALUES ('ELD','1','PrimePrint','2023-09-12',2000,12,10000,3500.0','BCH003','B','MCH03','Emily Clark','Evening',21.8,50.0,'Solvent','Silk','Delayed start','2023-09-12','2023-09-12');

-- Digital platform usage
CREATE TABLE digital_platform_usage (
    usage_id INTEGER PRIMARY KEY AUTOINCREMENT,
    platform_name TEXT,
    user_id INTEGER,
    session_start DATE,
    session_end DATE,
    cards_viewed INTEGER,
    decks_created INTEGER,
    matches_played INTEGER,
    avg_latency_ms REAL,
    region TEXT,
    device_type TEXT,
    os_version TEXT,
    app_version TEXT,
    ip_address TEXT,
    country_code TEXT,
    subscription_status TEXT,
    revenue_usd REAL,
    promo_code_used TEXT,
    feedback_score INTEGER,
    created_at DATE,
    updated_at DATE
);

INSERT INTO digital_platform_usage (platform_name,user_id,session_start,session_end,cards_viewed,decks_created,matches_played,avg_latency_ms,region,device_type,os_version,app_version,ip_address,country_code,subscription_status,revenue_usd,promo_code_used,feedback_score,created_at,updated_at) VALUES ('Arena','101','2023-10-01','2023-10-01',120,3,5,85.5,'NA','Desktop','Windows10','1.4.2','192.168.1.10','US','Premium',12.99,'WELCOME','9','2023-10-01','2023-10-01');
INSERT INTO digital_platform_usage (platform_name,user_id,session_start,session_end,cards_viewed,decks_created,matches_played,avg_latency_ms,region,device_type,os_version,app_version,ip_address,country_code,subscription_status,revenue_usd,promo_code_used,feedback_score,created_at,updated_at) VALUES ('MTGO','202','2023-11-15','2023-11-15',80,1,2,120.0,'EU','Mobile','iOS14','2.0.1','10.0.0.5','DE','Free',0.0,'','8','2023-11-15','2023-11-15');
INSERT INTO digital_platform_usage (platform_name,user_id,session_start,session_end,cards_viewed,decks_created,matches_played,avg_latency_ms,region,device_type,os_version,app_version,ip_address,country_code,subscription_status,revenue_usd,promo_code_used,feedback_score,created_at,updated_at) VALUES ('Scryfall','303','2023-12-05','2023-12-05',200,0,0,30.2,'AS','Tablet','Android11','3.1.0','172.16.0.2','JP','Free',0.0,'','10','2023-12-05','2023-12-05');

-- Event logistics
CREATE TABLE event_logistics (
    logistic_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    venue_id INTEGER,
    supplier_name TEXT,
    delivery_date DATE,
    items_delivered TEXT,
    quantity INTEGER,
    cost_usd REAL,
    contact_person TEXT,
    phone TEXT,
    email TEXT,
    checklist_status TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    approved_by TEXT,
    approval_date DATE,
    transport_mode TEXT,
    security_level INTEGER,
    insurance_policy TEXT,
    storage_location TEXT
);

INSERT INTO event_logistics (event_id,venue_id,supplier_name,delivery_date,items_delivered,quantity,cost_usd,contact_person,phone,email,checklist_status,notes,created_at,updated_at,approved_by,approval_date,transport_mode,security_level,insurance_policy,storage_location) VALUES (1,10,'CardPrintCo','2023-08-20','BoosterBoxes',500,7500.0,'Mike Turner','5552223333','mike@printco.com','Complete','All items boxed','2023-08-01','2023-08-01','Laura Lee','2023-08-02','Truck',2,'Policy123','Warehouse A');
INSERT INTO event_logistics (event_id,venue_id,supplier_name,delivery_date,items_delivered,quantity,cost_usd,contact_person,phone,email,checklist_status,notes,created_at,updated_at,approved_by,approval_date,transport_mode,security_level,insurance_policy,storage_location) VALUES (2,12,'SnackSupply','2023-09-10','EnergyBars',200,1200.0,'Sara Kim','5554445555','sara@snacksup.com','Pending','Awaiting packaging','2023-09-01','2023-09-01','Tom Harris','2023-09-02','Van',1,'Policy456','Backstage Storage');
INSERT INTO event_logistics (event_id,venue_id,supplier_name,delivery_date,items_delivered,quantity,cost_usd,contact_person,phone,email,checklist_status,notes,created_at,updated_at,approved_by,approval_date,transport_mode,security_level,insurance_policy,storage_location) VALUES (3,14,'TechRentals','2023-10-05','Projectors',10,5000.0,'Anna Wu','5556667777','anna@techrent.com','Complete','Equipment tested','2023-09-20','2023-09-20','David Ng','2023-09-21','Air',3,'Policy789','Tech Room');

-- Merchandise inventory
CREATE TABLE merchandise_inventory (
    item_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sku TEXT,
    name TEXT,
    category TEXT,
    subcategory TEXT,
    supplier_id INTEGER,
    purchase_price REAL,
    retail_price REAL,
    stock_quantity INTEGER,
    reorder_level INTEGER,
    warehouse_location TEXT,
    barcode TEXT,
    weight_grams REAL,
    dimensions_cm TEXT,
    color TEXT,
    size TEXT,
    launch_date DATE,
    discontinued_flag INTEGER,
    last_stocked DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO merchandise_inventory (sku,name,category,subcategory,supplier_id,purchase_price,retail_price,stock_quantity,reorder_level,warehouse_location,barcode,weight_grams,dimensions_cm,color,size,launch_date,discontinued_flag,last_stocked,notes,created_at,updated_at) VALUES ('TSH001','Mage TShirt','Apparel','TShirt',201,12.5,25.0,150,30,'WH1','0123456789012',200,'30x20x2','Blue','M','2023-03-01',0,'2023-09-15','Best seller','2023-03-01','2023-09-15');
INSERT INTO merchandise_inventory (sku,name,category,subcategory,supplier_id,purchase_price,retail_price,stock_quantity,reorder_level,warehouse_location,barcode,weight_grams,dimensions_cm,color,size,launch_date,discontinued_flag,last_stocked,notes,created_at,updated_at) VALUES ('CAP007','Dragon Cap','Apparel','Cap',202,8.0,18.0,80,20,'WH2','0987654321098',100,'15x15x10','Red','OneSize','2023-04-10',0,'2023-09-10','Limited edition','2023-04-10','2023-09-10');
INSERT INTO merchandise_inventory (sku,name,category,subcategory,supplier_id,purchase_price,retail_price,stock_quantity,reorder_level,warehouse_location,barcode,weight_grams,dimensions_cm,color,size,launch_date,discontinued_flag,last_stocked,notes,created_at,updated_at) VALUES ('MUG023','Mana Mug','Home','Mug',203,5.0,12.0,200,50,'WH1','1234509876543',350,'10x8x8','Green','Standard','2023-05-20',0,'2023-09-12','High demand','2023-05-20','2023-09-12');

-- Sponsor exposure metrics
CREATE TABLE sponsor_exposure_metrics (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    event_id INTEGER,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    spend_usd REAL,
    cpm REAL,
    ad_type TEXT,
    placement TEXT,
    start_date DATE,
    end_date DATE,
    audience_region TEXT,
    device_type TEXT,
    created_at DATE,
    updated_at DATE,
    campaign_name TEXT,
    creative_id TEXT,
    viewability_score REAL,
    brand_safety_flag INTEGER,
    notes TEXT
);

INSERT INTO sponsor_exposure_metrics (sponsor_id,event_id,impressions,clicks,ctr,spend_usd,cpm,ad_type,placement,start_date,end_date,audience_region,device_type,created_at,updated_at,campaign_name,creative_id,viewability_score,brand_safety_flag,notes) VALUES (301,1,50000,250,0.005,2000.0,40.0,'Video','PreRoll','2023-08-01','2023-08-05','NA','Desktop','2023-07-20','2023-07-20','Summer Blast','VID001',0.92,1,'Effective reach');
INSERT INTO sponsor_exposure_metrics (sponsor_id,event_id,impressions,clicks,ctr,spend_usd,cpm,ad_type,placement,start_date,end_date,audience_region,device_type,created_at,updated_at,campaign_name,creative_id,viewability_score,brand_safety_flag,notes) VALUES (302,2,75000,300,0.004,3000.0,40.0,'Banner','Sidebar','2023-09-10','2023-09-15','EU','Mobile','2023-08-30','2023-08-30','Autumn Push','BAN045',0.88,1,'Strong engagement');
INSERT INTO sponsor_exposure_metrics (sponsor_id,event_id,impressions,clicks,ctr,spend_usd,cpm,ad_type,placement,start_date,end_date,audience_region,device_type,created_at,updated_at,campaign_name,creative_id,viewability_score,brand_safety_flag,notes) VALUES (303,3,60000,180,0.003,1500.0,25.0,'Native','Feed','2023-10-20','2023-10-25','AS','Desktop','2023-10-01','2023-10-01','Winter Warmup','NAT210',0.90,1,'Good performance');

-- Deck analysis snapshots
CREATE TABLE deck_analysis_snapshots (
    snapshot_id INTEGER PRIMARY KEY AUTOINCREMENT,
    deck_id INTEGER,
    analysis_date DATE,
    win_rate REAL,
    avg_mana_cost REAL,
    color_distribution TEXT,
    archetype TEXT,
    popularity_rank INTEGER,
    synergies TEXT,
    weaknesses TEXT,
    suggested_cards TEXT,
    removed_cards TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    analyst_name TEXT,
    version TEXT,
    total_games INTEGER,
    average_game_length INTEGER,
    meta_rank INTEGER,
    source TEXT
);

INSERT INTO deck_analysis_snapshots (deck_id,analysis_date,win_rate,avg_mana_cost,color_distribution,archetype,popularity_rank,synergies,weaknesses,suggested_cards,removed_cards,notes,created_at,updated_at,analyst_name,version,total_games,average_game_length,meta_rank,source) VALUES (401,'2023-09-01',0.55,2.8,'30%W,40%U,30%B','Control',5,'Counterspells|Lifegain','Slow start','Opt|Teferi','Lightning Bolt','Stable performance','2023-09-01','2023-09-01','Eve Holt','v1.2',500,15,4,'Internal');
INSERT INTO deck_analysis_snapshots (deck_id,analysis_date,win_rate,avg_mana_cost,color_distribution,archetype,popularity_rank,synergies,weaknesses,suggested_cards,removed_cards,notes,created_at,updated_at,analyst_name,version,total_games,average_game_length,meta_rank,source) VALUES (402,'2023-09-15',0.48,3.2,'25%R,25%G,25%W,25%B','Midrange',12,'Ramp|Removal','Mana flood','Terramancy|Boros Charm','Scavenging Ooze','Requires tuning','2023-09-15','2023-09-15','Liam Grant','v1.3',320,18,9,'Community');
INSERT INTO deck_analysis_snapshots (deck_id,analysis_date,win_rate,avg_mana_cost,color_distribution,archetype,popularity_rank,synergies,weaknesses,suggested_cards,removed_cards,notes,created_at,updated_at,analyst_name,version,total_games,average_game_length,meta_rank,source) VALUES (403,'2023-10-05',0.62,2.1,'50%U,50%G','Combo',2,'Mana Fixing|Card Draw','Fragile win condition','Tymna the Weaver|Niv-Mizzet','Mox Opal','Top tier','2023-10-05','2023-10-05','Nora Patel','v2.0',620,14,2,'Pro Tour');

-- Community poll results
CREATE TABLE community_poll_results (
    poll_id INTEGER PRIMARY KEY AUTOINCREMENT,
    poll_topic TEXT,
    option_a TEXT,
    option_b TEXT,
    option_c TEXT,
    option_d TEXT,
    votes_a INTEGER,
    votes_b INTEGER,
    votes_c INTEGER,
    votes_d INTEGER,
    total_votes INTEGER,
    start_date DATE,
    end_date DATE,
    created_by INTEGER,
    status TEXT,
    description TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    visibility TEXT,
    region TEXT
);

INSERT INTO community_poll_results (poll_topic,option_a,option_b,option_c,option_d,votes_a,votes_b,votes_c,votes_d,total_votes,start_date,end_date,created_by,status,description,notes,created_at,updated_at,visibility,region) VALUES ('Best New Mechanic','Cascade','Mutate','Adventure','Companion',1200,950,800,450,3400,'2023-07-01','2023-07-07',101,'Closed','Community vote on upcoming mechanic','High engagement','2023-07-01','2023-07-07','Public','NA');
INSERT INTO community_poll_results (poll_topic,option_a,option_b,option_c,option_d,votes_a,votes_b,votes_c,votes_d,total_votes,start_date,end_date,created_by,status,description,notes,created_at,updated_at,visibility,region) VALUES ('Preferred Booster Type','Standard','Draft','Playtest','Collector','2000','1500','600','300',4400,'2023-08-15','2023-08-21',102,'Closed','Booster preferences for next set','Useful data','2023-08-15','2023-08-21','Public','EU');
INSERT INTO community_poll_results (poll_topic,option_a,option_b,option_c,option_d,votes_a,votes_b,votes_c,votes_d,total_votes,start_date,end_date,created_by,status,description,notes,created_at,updated_at,visibility,region) VALUES ('Favorite Card Art Style','Abstract','Realistic','Pixel','Minimalist','800','1100','500','200',2600,'2023-09-10','2023-09-16',103,'Closed','Art style preferences','Positive feedback','2023-09-10','2023-09-16','Public','AS');

-- Streaming content assets
CREATE TABLE streaming_content_assets (
    asset_id INTEGER PRIMARY KEY AUTOINCREMENT,
    session_id INTEGER,
    asset_type TEXT,
    file_name TEXT,
    url TEXT,
    duration_seconds INTEGER,
    size_mb REAL,
    resolution TEXT,
    codec TEXT,
    created_by INTEGER,
    upload_date DATE,
    usage_count INTEGER,
    is_featured INTEGER,
    tags TEXT,
    description TEXT,
    copyright_holder TEXT,
    license_type TEXT,
    expiration_date DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO streaming_content_assets (session_id,asset_type,file_name,url,duration_seconds,size_mb,resolution,codec,created_by,upload_date,usage_count,is_featured,tags,description,copyright_holder,license_type,expiration_date,notes,created_at,updated_at) VALUES (501,'Video','intro.mp4','http://media.example.com/intro.mp4',30,15.2,'1920x1080','H264',201,'2023-07-20',120,1,'intro,opening','Opening sequence','StreamerA','Standard','2024-07-20','No issues','2023-07-20','2023-07-20');
INSERT INTO streaming_content_assets (session_id,asset_type,file_name,url,duration_seconds,size_mb,resolution,codec,created_by,upload_date,usage_count,is_featured,tags,description,copyright_holder,license_type,expiration_date,notes,created_at,updated_at) VALUES (502,'Audio','bgm.wav','http://media.example.com/bgm.wav',180,25.0,'','PCM',202,'2023-08-05',80,0,'bgm,loop','Background music loop','StreamerB','RoyaltyFree','2025-08-05','Looped','2023-08-05','2023-08-05');
INSERT INTO streaming_content_assets (session_id,asset_type,file_name,url,duration_seconds,size_mb,resolution,codec,created_by,upload_date,usage_count,is_featured,tags,description,copyright_holder,license_type,expiration_date,notes,created_at,updated_at) VALUES (503,'Image','logo.png','http://media.example.com/logo.png',0,0.5,'800x600','PNG',203,'2023-09-01',200,1,'logo,branding','Channel logo','StreamerC','CreativeCommons','2026-09-01','Updated design','2023-09-01','2023-09-01');

-- API endpoint metrics
CREATE TABLE api_endpoint_metrics (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    endpoint_path TEXT,
    method TEXT,
    request_count INTEGER,
    avg_response_ms REAL,
    max_response_ms INTEGER,
    min_response_ms INTEGER,
    error_rate REAL,
    data_transfer_mb REAL,
    cpu_usage_percent REAL,
    memory_usage_mb REAL,
    client_region TEXT,
    auth_required INTEGER,
    version TEXT,
    last_deployed DATE,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    status TEXT,
    alert_triggered INTEGER
);

INSERT INTO api_endpoint_metrics (endpoint_path,method,request_count,avg_response_ms,max_response_ms,min_response_ms,error_rate,data_transfer_mb,cpu_usage_percent,memory_usage_mb,client_region,auth_required,version,last_deployed,created_at,updated_at,notes,status,alert_triggered) VALUES ('/cards/search','GET',12000,85.3,250,30,0.02,340.5,12.0,256.0,'NA',1,'v1.2','2023-06-15','2023-06-15','2023-06-15','Stable',0);
INSERT INTO api_endpoint_metrics (endpoint_path,method,request_count,avg_response_ms,max_response_ms,min_response_ms,error_rate,data_transfer_mb,cpu_usage_percent,memory_usage_mb,client_region,auth_required,version,last_deployed,created_at,updated_at,notes,status,alert_triggered) VALUES ('/sets/{code}','GET',8000,110.0,300,50,0.05,210.0,15.5,300.0,'EU',1,'v1.1','2023-05-20','2023-05-20','2023-05-20','Degraded',1);
INSERT INTO api_endpoint_metrics (endpoint_path,method,request_count,avg_response_ms,max_response_ms,min_response_ms,error_rate,data_transfer_mb,cpu_usage_percent,memory_usage_mb,client_region,auth_required,version,last_deployed,created_at,updated_at,notes,status,alert_triggered) VALUES ('/users/{id}/profile','POST',3500,140.7,500,70,0.10,95.0,20.0,150.0,'AS',1,'v2.0','2023-08-01','2023-08-01','2023-08-01','Critical',1);