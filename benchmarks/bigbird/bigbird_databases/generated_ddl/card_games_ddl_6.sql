-- Printing batches for each card set
CREATE TABLE printing_batches (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    batch_code TEXT UNIQUE,
    set_code TEXT,
    printer_name TEXT,
    print_date DATE,
    run_quantity INTEGER,
    color_profile TEXT,
    paper_type TEXT,
    ink_type TEXT,
    coating TEXT,
    feed_rate REAL,
    quality_grade TEXT,
    defect_rate REAL,
    operator_id INTEGER,
    shift TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO printing_batches (batch_code,set_code,printer_name,print_date,run_quantity,color_profile,paper_type,ink_type,coating,feed_rate,quality_grade,defect_rate,operator_id,shift,temperature_c,humidity_percent,notes,created_at,updated_at) VALUES ('BATCH001','KHM','PrintWorks Ltd','2024-03-15',500000,'CMYK','Glossy','WaterBased','UV','1.2','A',0.02,101,'Day',22.5,45.0,'Initial run','2024-03-15','2024-03-15');
INSERT INTO printing_batches (batch_code,set_code,printer_name,print_date,run_quantity,color_profile,paper_type,ink_type,coating,feed_rate,quality_grade,defect_rate,operator_id,shift,temperature_c,humidity_percent,notes,created_at,updated_at) VALUES ('BATCH002','ZNR','AlphaPrint','2024-04-02',300000,'RGB','Matte','Solvent','None','1.0','B',0.05,102,'Night',21.0,50.0,'Adjusted ink density','2024-04-02','2024-04-02');
INSERT INTO printing_batches (batch_code,set_code,printer_name,print_date,run_quantity,color_profile,paper_type,ink_type,coating,feed_rate,quality_grade,defect_rate,operator_id,shift,temperature_c,humidity_percent,notes,created_at,updated_at) VALUES ('BATCH003','WAR','PrintWorks Ltd','2024-05-10',750000,'CMYK','Glossy','WaterBased','UV','1.3','A',0.01,103,'Day',23.0,44.0,'Special foils added','2024-05-10','2024-05-10');

-- Distribution centers storing printed cards
CREATE TABLE distribution_centers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    center_code TEXT UNIQUE,
    name TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    country TEXT,
    latitude REAL,
    longitude REAL,
    capacity_units INTEGER,
    current_occupancy INTEGER,
    manager_user_id INTEGER,
    contact_email TEXT,
    contact_phone TEXT,
    operating_hours TEXT,
    security_level TEXT,
    climate_control INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO distribution_centers (center_code,name,address_line1,address_line2,city,state,postal_code,country,latitude,longitude,capacity_units,current_occupancy,manager_user_id,contact_email,contact_phone,operating_hours,security_level,climate_control,notes,created_at,updated_at) VALUES ('DC01','East Hub','1234 Cardway','Suite 5','New York','NY','10001','USA',40.7128,-74.0060,2000000,950000,201,'easthub@example.com','5551234001','24/7','High',1,'Main distribution center','2024-01-01','2024-01-01');
INSERT INTO distribution_centers (center_code,name,address_line1,address_line2,city,state,postal_code,country,latitude,longitude,capacity_units,current_occupancy,manager_user_id,contact_email,contact_phone,operating_hours,security_level,climate_control,notes,created_at,updated_at) VALUES ('DC02','West Warehouse','5678 Deck St','Unit 12','Los Angeles','CA','90001','USA',34.0522,-118.2437,1500000,800000,202,'westwh@example.com','5551234002','8am-8pm','Medium',1,'Secondary hub','2024-01-01','2024-01-01');
INSERT INTO distribution_centers (center_code,name,address_line1,address_line2,city,state,postal_code,country,latitude,longitude,capacity_units,current_occupancy,manager_user_id,contact_email,contact_phone,operating_hours,security_level,climate_control,notes,created_at,updated_at) VALUES ('DC03','Euro Depot','22 Kartenplatz','','Berlin','BE','10115','Germany',52.5200,13.4050,1800000,1200000,203,'eurodepot@example.com','5551234003','24/7','High',1,'EU regional hub','2024-01-01','2024-01-01');

-- Shipping routes between distribution centers and retail outlets
CREATE TABLE shipping_routes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    route_code TEXT UNIQUE,
    origin_center_code TEXT,
    destination_city TEXT,
    destination_state TEXT,
    destination_country TEXT,
    carrier_name TEXT,
    service_level TEXT,
    transit_time_days INTEGER,
    cost_usd REAL,
    max_weight_kg REAL,
    refrigerated INTEGER,
    tracking_enabled INTEGER,
    scheduled_departure DATE,
    scheduled_arrival DATE,
    frequency_per_week INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    FOREIGN KEY (origin_center_code) REFERENCES distribution_centers(center_code)
);

INSERT INTO shipping_routes (route_code,origin_center_code,destination_city,destination_state,destination_country,carrier_name,service_level,transit_time_days,cost_usd,max_weight_kg,refrigerated,tracking_enabled,scheduled_departure,scheduled_arrival,frequency_per_week,notes,created_at,updated_at) VALUES ('RT001','DC01','Chicago','IL','USA','FastShip','Standard',3,150.00,5000,0,1,'2024-06-01','2024-06-04',5,'North America corridor','2024-04-01','2024-04-01');
INSERT INTO shipping_routes (route_code,origin_center_code,destination_city,destination_state,destination_country,carrier_name,service_level,transit_time_days,cost_usd,max_weight_kg,refrigerated,tracking_enabled,scheduled_departure,scheduled_arrival,frequency_per_week,notes,created_at,updated_at) VALUES ('RT002','DC02','San Francisco','CA','USA','QuickLogix','Express',1,250.00,3000,0,1,'2024-06-02','2024-06-03',7,'Coastal fast lane','2024-04-01','2024-04-01');
INSERT INTO shipping_routes (route_code,origin_center_code,destination_city,destination_state,destination_country,carrier_name,service_level,transit_time_days,cost_usd,max_weight_kg,refrigerated,tracking_enabled,scheduled_departure,scheduled_arrival,frequency_per_week,notes,created_at,updated_at) VALUES ('RT003','DC03','Paris','','France','EuroFreight','Standard',4,200.00,4000,0,1,'2024-06-05','2024-06-09',3,'EU distribution','2024-04-01','2024-04-01');

-- Card reviews submitted by users
CREATE TABLE card_reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    review_uuid TEXT UNIQUE,
    card_uuid TEXT,
    user_id INTEGER,
    rating INTEGER,
    review_title TEXT,
    review_body TEXT,
    review_date DATE,
    helpful_votes INTEGER,
    total_votes INTEGER,
    device_used TEXT,
    ip_address TEXT,
    app_version TEXT,
    language TEXT,
    verified_purchase INTEGER,
    spoiler_flag INTEGER,
    edit_count INTEGER,
    last_edited DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    FOREIGN KEY (card_uuid) REFERENCES cards(uuid),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO card_reviews (review_uuid,card_uuid,user_id,rating,review_title,review_body,review_date,helpful_votes,total_votes,device_used,ip_address,app_version,language,verified_purchase,spoiler_flag,edit_count,last_edited,notes,created_at,updated_at) VALUES ('REV001','abc123-uuid','1',5,'Excellent card','The synergy with my deck is amazing','2024-05-20',12,15,'Desktop','192.168.1.10','1.4.2','en',1,0,0,'2024-05-20','No issues','2024-05-20','2024-05-20');
INSERT INTO card_reviews (review_uuid,card_uuid,user_id,rating,review_title,review_body,review_date,helpful_votes,total_votes,device_used,ip_address,app_version,language,verified_purchase,spoiler_flag,edit_count,last_edited,notes,created_at,updated_at) VALUES ('REV002','def456-uuid','2',3,'Average','Works but not standout','2024-05-22',5,10,'Mobile','192.168.1.20','1.4.0','en',0,0,1,'2024-05-23','Edited for clarity','2024-05-22','2024-05-23');
INSERT INTO card_reviews (review_uuid,card_uuid,user_id,rating,review_title,review_body,review_date,helpful_votes,total_votes,device_used,ip_address,app_version,language,verified_purchase,spoiler_flag,edit_count,last_edited,notes,created_at,updated_at) VALUES ('REV003','ghi789-uuid','3',4,'Strong addition','Great flavor text and ability','2024-05-25',8,9,'Tablet','192.168.1.30','1.5.0','en',1,0,0,'2024-05-25','Positive feedback','2024-05-25','2024-05-25');

-- Digital asset versions for cards on online platforms
CREATE TABLE digital_asset_versions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_uuid TEXT UNIQUE,
    card_uuid TEXT,
    platform TEXT,
    version_number INTEGER,
    file_format TEXT,
    file_size_bytes INTEGER,
    resolution TEXT,
    color_depth INTEGER,
    sha256_hash TEXT,
    uploaded_by INTEGER,
    upload_date DATE,
    release_notes TEXT,
    is_active INTEGER,
    deprecated_date DATE,
    license_type TEXT,
    crc32 INTEGER,
    storage_location TEXT,
    encryption_key TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    FOREIGN KEY (card_uuid) REFERENCES cards(uuid),
    FOREIGN KEY (uploaded_by) REFERENCES users(id)
);

INSERT INTO digital_asset_versions (asset_uuid,card_uuid,platform,version_number,file_format,file_size_bytes,resolution,color_depth,sha256_hash,uploaded_by,upload_date,release_notes,is_active,deprecated_date,license_type,crc32,storage_location,encryption_key,notes,created_at,updated_at) VALUES ('ASSET001','abc123-uuid','mtgArena','1','png',204800,'1024x1024',24,'a1b2c3d4e5f6','1','2024-04-01','Initial upload',1,NULL,'Standard',12345678,'s3://assets/mtgArena/','key123','First version','2024-04-01','2024-04-01');
INSERT INTO digital_asset_versions (asset_uuid,card_uuid,platform,version_number,file_format,file_size_bytes,resolution,color_depth,sha256_hash,uploaded_by,upload_date,release_notes,is_active,deprecated_date,license_type,crc32,storage_location,encryption_key,notes,created_at,updated_at) VALUES ('ASSET002','def456-uuid','scryfall','2','jpg',307200,'2048x2048',24,'b2c3d4e5f6a1','2','2024-05-10','Updated artwork','1',NULL,'Standard',87654321,'s3://assets/scryfall/','key456','Second version','2024-05-10','2024-05-10');
INSERT INTO digital_asset_versions (asset_uuid,card_uuid,platform,version_number,file_format,file_size_bytes,resolution,color_depth,sha256_hash,uploaded_by,upload_date,release_notes,is_active,deprecated_date,license_type,crc32,storage_location,encryption_key,notes,created_at,updated_at) VALUES ('ASSET003','ghi789-uuid','mtgo','1','png',256000,'1500x2100',24,'c3d4e5f6a1b2','3','2024-06-05','Initial upload for mtgo','1',NULL,'Standard',11223344,'s3://assets/mtgo/','key789','First mtgo version','2024-06-05','2024-06-05');

-- Licensing agreements with artists
CREATE TABLE licensing_agreements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    agreement_uuid TEXT UNIQUE,
    artist_name TEXT,
    contract_start DATE,
    contract_end DATE,
    royalty_percent REAL,
    upfront_fee_usd REAL,
    territory TEXT,
    exclusive INTEGER,
    artwork_type TEXT,
    usage_rights TEXT,
    amendment_date DATE,
    status TEXT,
    legal_representative TEXT,
    governing_law TEXT,
    notice_contact TEXT,
    payment_terms TEXT,
    confidentiality_clause TEXT,
    dispute_resolution TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO licensing_agreements (agreement_uuid,artist_name,contract_start,contract_end,royalty_percent,upfront_fee_usd,territory,exclusive,artwork_type,usage_rights,amendment_date,status,legal_representative,governing_law,notice_contact,payment_terms,confidentiality_clause,dispute_resolution,notes,created_at,updated_at) VALUES ('LIC001','John Doe','2023-01-01','2025-12-31',5.0,2000.00,'Worldwide',1,'Illustration','Print and digital','2024-03-01','Active','Jane Smith','NY','legal@company.com','Net30','Yes','Arbitration','First contract','2023-01-01','2023-01-01');
INSERT INTO licensing_agreements (agreement_uuid,artist_name,contract_start,contract_end,royalty_percent,upfront_fee_usd,territory,exclusive,artwork_type,usage_rights,amendment_date,status,legal_representative,governing_law,notice_contact,payment_terms,confidentiality_clause,dispute_resolution,notes,created_at,updated_at) VALUES ('LIC002','Alice Art','2022-06-15','2024-06-14',7.5,1500.00','EU',0,'Concept','Digital only','2023-06-01','Active','Bob Legal','UK','contract@aliceart.com','Net45','Yes','Mediation','Renewal pending','2022-06-15','2022-06-15');
INSERT INTO licensing_agreements (agreement_uuid,artist_name,contract_start,contract_end,royalty_percent,upfront_fee_usd,territory,exclusive,artwork_type,usage_rights,amendment_date,status,legal_representative,governing_law,notice_contact,payment_terms,confidentiality_clause,dispute_resolution,notes,created_at,updated_at) VALUES ('LIC003','Mike Sketch','2021-09-01','2026-08-31',4.0,3000.00,'NA',1,'Illustration','Print only','2024-01-10','Active','Sue Attorney','CA','mike@sketch.com','Net60','Yes','Arbitration','Extended term','2021-09-01','2021-09-01');

-- Tournament prize catalog
CREATE TABLE tournament_prizes_catalog (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    prize_code TEXT UNIQUE,
    name TEXT,
    description TEXT,
    prize_type TEXT,
    rarity TEXT,
    estimated_value_usd REAL,
    weight_grams REAL,
    dimensions_cm TEXT,
    manufacturer TEXT,
    country_of_origin TEXT,
    stock_quantity INTEGER,
    discontinued INTEGER,
    release_date DATE,
    image_url TEXT,
    condition TEXT,
    exclusive_to_event TEXT,
    warranty_years INTEGER,
    special_features TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO tournament_prizes_catalog (prize_code,name,description,prize_type,rarity,estimated_value_usd,weight_grams,dimensions_cm,manufacturer,country_of_origin,stock_quantity,discontinued,release_date,image_url,condition,exclusive_to_event,warranty_years,special_features,notes,created_at,updated_at) VALUES ('PRZ001','Gold Collector Figure','Limited edition figure of a collector','Merchandise','Ultra Rare',150.00,800,'15x10x5','FigureCo','USA',25,0,'2024-02-01','http://example.com/img1.png','New','Worlds2024',2,'Glow in the dark','First release','2024-02-01','2024-02-01');
INSERT INTO tournament_prizes_catalog (prize_code,name,description,prize_type,rarity,estimated_value_usd,weight_grams,dimensions_cm,manufacturer,country_of_origin,stock_quantity,discontinued,release_date,image_url,condition,exclusive_to_event,warranty_years,special_features,notes,created_at,updated_at) VALUES ('PRZ002','Signed Playmat','Playmat signed by top players','Accessory','Rare',75.00,1200,'91x61','MatMakers','Germany',100,0,'2023-08-15','http://example.com/img2.png','New','GrandPrix2023',1,'Holographic border','High demand','2023-08-15','2023-08-15');
INSERT INTO tournament_prizes_catalog (prize_code,name,description,prize_type,rarity,estimated_value_usd,weight_grams,dimensions_cm,manufacturer,country_of_origin,stock_quantity,discontinued,release_date,image_url,condition,exclusive_to_event,warranty_years,special_features,notes,created_at,updated_at) VALUES ('PRZ003','Custom Deck Box','Custom engraved deck box','Accessory','Common',25.00,500,'12x9x3','BoxWorks','USA',500,0,'2022-11-20','http://example.com/img3.png','New',NULL,1,'Laser engraving','Standard issue','2022-11-20','2022-11-20');

-- Marketing campaigns for new sets
CREATE TABLE marketing_campaigns (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    campaign_code TEXT UNIQUE,
    set_code TEXT,
    name TEXT,
    start_date DATE,
    end_date DATE,
    budget_usd REAL,
    channel TEXT,
    target_audience TEXT,
    headline TEXT,
    subheadline TEXT,
    creative_asset_url TEXT,
    landing_page_url TEXT,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    cpa REAL,
    status TEXT,
    manager_user_id INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    FOREIGN KEY (set_code) REFERENCES sets(code),
    FOREIGN KEY (manager_user_id) REFERENCES users(id)
);

INSERT INTO marketing_campaigns (campaign_code,set_code,name,start_date,end_date,budget_usd,channel,target_audience,headline,subheadline,creative_asset_url,landing_page_url,impressions,clicks,conversions,cpa,status,manager_user_id,notes,created_at,updated_at) VALUES ('MKT001','KHM','Kaldheim Launch','2024-02-01','2024-03-01',50000,'Social Media','Collectors','Explore the realms of Kaldheim','Epic fantasy awaits','http://example.com/asset1.jpg','http://example.com/khm','1000000',25000,5000,10.0','Active',101,'First wave','2024-02-01','2024-02-01');
INSERT INTO marketing_campaigns (campaign_code,set_code,name,start_date,end_date,budget_usd,channel,target_audience,headline,subheadline,creative_asset_url,landing_page_url,impressions,clicks,conversions,cpa,status,manager_user_id,notes,created_at,updated_at) VALUES ('MKT002','ZNR','Zendikar Rising Boost','2024-04-10','2024-05-10',75000,'Email','Players','Rise with the land','Adventure returns','http://example.com/asset2.jpg','http://example.com/znr','1500000',35000,7000,10.71','Active',102,'Second wave','2024-04-10','2024-04-10');
INSERT INTO marketing_campaigns (campaign_code,set_code,name,start_date,end_date,budget_usd,channel,target_audience,headline,subheadline,creative_asset_url,landing_page_url,impressions,clicks,conversions,cpa,status,manager_user_id,notes,created_at,updated_at) VALUES ('MKT003','WAR','War of the Spark Finale','2024-06-15','2024-07-15',100000,'TV','Fans','The ultimate clash','Gather your forces','http://example.com/asset3.jpg','http://example.com/war','2000000',50000,10000,10.0','Planned',103,'Final push','2024-06-15','2024-06-15');

-- Supplier contacts for raw materials
CREATE TABLE supplier_contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    supplier_code TEXT UNIQUE,
    company_name TEXT,
    contact_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    country TEXT,
    material_type TEXT,
    certification TEXT,
    lead_time_days INTEGER,
    min_order_quantity INTEGER,
    price_per_kg REAL,
    payment_terms TEXT,
    rating INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO supplier_contacts (supplier_code,company_name,contact_name,contact_email,contact_phone,address_line1,address_line2,city,state,postal_code,country,material_type,certification,lead_time_days,min_order_quantity,price_per_kg,payment_terms,rating,notes,created_at,updated_at) VALUES ('SUP001','PaperCo','Laura Paper','laura@paperco.com','5551110001','123 Paper St','Suite 10','Portland','OR','97035','USA','Paper','FSC','7',1000,2.50,'Net30',5,'Preferred paper supplier','2024-01-01','2024-01-01');
INSERT INTO supplier_contacts (supplier_code,company_name,contact_name,contact_email,contact_phone,address_line1,address_line2,city,state,postal_code,country,material_type,certification,lead_time_days,min_order_quantity,price_per_kg,payment_terms,rating,notes,created_at,updated_at) VALUES ('SUP002','InkMasters','Tom Ink','tom@inkmasters.com','5552220002','456 Ink Rd','','Atlanta','GA','30301','USA','Ink','ISO9001','5',500,4.20,'Net45',4,'High quality inks','2024-01-01','2024-01-01');
INSERT INTO supplier_contacts (supplier_code,company_name,contact_name,contact_email,contact_phone,address_line1,address_line2,city,state,postal_code,country,material_type,certification,lead_time_days,min_order_quantity,price_per_kg,payment_terms,rating,notes,created_at,updated_at) VALUES ('SUP003','CoatTech','Emily Coat','emily@coattech.com','5553330003','789 Coat Ave','Bldg A','Chicago','IL','60601','USA','Coating','ISO14001','10',200,1.75,'Net30',5,'Eco-friendly coating','2024-01-01','2024-01-01');

-- Card sales channels and performance metrics
CREATE TABLE card_sales_channels (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    channel_code TEXT UNIQUE,
    channel_name TEXT,
    channel_type TEXT,
    region TEXT,
    launch_date DATE,
    primary_currency TEXT,
    commission_percent REAL,
    average_order_value_usd REAL,
    monthly_active_users INTEGER,
    conversion_rate REAL,
    return_rate REAL,
    avg_delivery_days REAL,
    support_contact TEXT,
    sla_hours INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO card_sales_channels (channel_code,channel_name,channel_type,region,launch_date,primary_currency,commission_percent,average_order_value_usd,monthly_active_users,conversion_rate,return_rate,avg_delivery_days,support_contact,sla_hours,notes,created_at,updated_at) VALUES ('CH001','MTGStore Online','E‑commerce','Global','2020-01-01','USD',5.0,55.00,250000,0.03,0.01,5.0,'support@mtgstore.com',24,'Main online store','2024-01-01','2024-01-01');
INSERT INTO card_sales_channels (channel_code,channel_name,channel_type,region,launch_date,primary_currency,commission_percent,average_order_value_usd,monthly_active_users,conversion_rate,return_rate,avg_delivery_days,support_contact,sla_hours,notes,created_at,updated_at) VALUES ('CH002','CardKingdom Retail','Physical','North America','2015-06-15','USD',7.0,45.00,80000,0.025,0.015,7.0,'retail@cardkingdom.com',48,'Brick‑and‑mortar stores','2024-01-01','2024-01-01');
INSERT INTO card_sales_channels (channel_code,channel_name,channel_type,region,launch_date,primary_currency,commission_percent,average_order_value_usd,monthly_active_users,conversion_rate,return_rate,avg_delivery_days,support_contact,sla_hours,notes,created_at,updated_at) VALUES ('CH003','Asian Market Partner','Wholesale','Asia','2018-03-22','JPY',6.5,60.00,120000,0.028,0.012,6.5,'partner@asia.com',36,'Regional distribution partner','2024-01-01','2024-01-01');