-- Stadium concession menu items and details
CREATE TABLE Stadium_Concessions_Menu (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    vendor_id INTEGER,
    item_code TEXT,
    item_name TEXT,
    category TEXT,
    price_cents INTEGER,
    calories INTEGER,
    veg_option INTEGER,
    gluten_free INTEGER,
    spicy_level INTEGER,
    combo_available INTEGER,
    portion_size_ml INTEGER,
    vendor_contact TEXT,
    last_updated TEXT,
    nutritional_fat_g REAL,
    protein_g REAL,
    carbs_g REAL,
    sodium_mg INTEGER,
    sugar_g REAL,
    allergens TEXT,
    seasonal_item_flag INTEGER,
    promotional_flag INTEGER,
    serving_temperature TEXT,
    supplier_id INTEGER
);
INSERT INTO Stadium_Concessions_Menu (stadium_id,vendor_id,item_code,item_name,category,price_cents,calories,veg_option,gluten_free,spicy_level,combo_available,portion_size_ml,vendor_contact,last_updated,nutritional_fat_g,protein_g,carbs_g,sodium_mg,sugar_g,allergens,seasonal_item_flag,promotional_flag,serving_temperature,supplier_id) VALUES (1,101,'C001','HotDog','Snacks',350,250,0,0,1,1,150,'vendor101@example.com','2024-01-01',12.5,8.0,30.0,500,5.0,'wheat',0,1,'hot',201);
INSERT INTO Stadium_Concessions_Menu (stadium_id,vendor_id,item_code,item_name,category,price_cents,calories,veg_option,gluten_free,spicy_level,combo_available,portion_size_ml,vendor_contact,last_updated,nutritional_fat_g,protein_g,carbs_g,sodium_mg,sugar_g,allergens,seasonal_item_flag,promotional_flag,serving_temperature,supplier_id) VALUES (2,102,'B015','Beer','Beverage',500,0,0,0,0,0,500,'vendor102@example.com','2024-01-02',0,0,0,150,0,'none',0,0,'cold',202);
INSERT INTO Stadium_Concessions_Menu (stadium_id,vendor_id,item_code,item_name,category,price_cents,calories,veg_option,gluten_free,spicy_level,combo_available,portion_size_ml,vendor_contact,last_updated,nutritional_fat_g,protein_g,carbs_g,sodium_mg,sugar_g,allergens,seasonal_item_flag,promotional_flag,serving_temperature,supplier_id) VALUES (3,103,'S020','IceCream','Dessert',300,180,1,1,0,0,120,'vendor103@example.com','2024-01-03',8.0,4.0,22.0,80,18.0,'milk',1,0,'cold',203);

-- Catalog of digital rewards for fans
CREATE TABLE Fan_Digital_Reward_Catalog (
    reward_id INTEGER PRIMARY KEY AUTOINCREMENT,
    reward_name TEXT,
    reward_type TEXT,
    points_required INTEGER,
    expiry_date TEXT,
    limited_quantity INTEGER,
    quantity_available INTEGER,
    digital_asset_url TEXT,
    tier_required TEXT,
    description TEXT,
    launch_date TEXT,
    redemption_url TEXT,
    image_hash TEXT,
    category TEXT,
    sub_category TEXT,
    region TEXT,
    language TEXT,
    vendor_id INTEGER,
    created_at TEXT,
    updated_at TEXT,
    promotional_flag INTEGER
);
INSERT INTO Fan_Digital_Reward_Catalog (reward_name,reward_type,points_required,expiry_date,limited_quantity,quantity_available,digital_asset_url,tier_required,description,launch_date,redemption_url,image_hash,category,sub_category,region,language,vendor_id,created_at,updated_at,promotional_flag) VALUES ('FreeTicket','Ticket',1500,'2025-12-31',100,100,'https://example.com/reward1','Gold','One free match ticket','2024-02-01','https://example.com/redeem1','abc123','Tickets','Match','EU','EN',301,'2024-02-01','2024-02-01',1);
INSERT INTO Fan_Digital_Reward_Catalog (reward_name,reward_type,points_required,expiry_date,limited_quantity,quantity_available,digital_asset_url,tier_required,description,launch_date,redemption_url,image_hash,category,sub_category,region,language,vendor_id,created_at,updated_at,promotional_flag) VALUES ('VIPBadge','Badge',800,'2025-06-30',0,0,'https://example.com/reward2','Silver','VIP status badge','2024-03-01','https://example.com/redeem2','def456','Recognition','Badge','NA','EN',302,'2024-03-01','2024-03-01',0);
INSERT INTO Fan_Digital_Reward_Catalog (reward_name,reward_type,points_required,expiry_date,limited_quantity,quantity_available,digital_asset_url,tier_required,description,launch_date,redemption_url,image_hash,category,sub_category,region,language,vendor_id,created_at,updated_at,promotional_flag) VALUES ('MerchDiscount','Discount',500,'2025-03-31',50,50,'https://example.com/reward3','Bronze','10% off merchandise','2024-04-01','https://example.com/redeem3','ghi789','Discounts','Merchandise','AS','EN',303,'2024-04-01','2024-04-01',1);

-- Historical payments made by sponsors to clubs
CREATE TABLE Club_Sponsorship_Payment_History (
    payment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    club_id INTEGER,
    fiscal_year INTEGER,
    quarter INTEGER,
    amount_cents INTEGER,
    currency TEXT,
    payment_date TEXT,
    method TEXT,
    invoice_number TEXT,
    contract_id INTEGER,
    is_late_fee_applied INTEGER,
    late_fee_cents INTEGER,
    notes TEXT,
    created_by TEXT,
    approved_by TEXT,
    approval_date TEXT,
    created_at TEXT,
    updated_at TEXT,
    payment_status TEXT,
    bank_reference TEXT
);
INSERT INTO Club_Sponsorship_Payment_History (sponsor_id,club_id,fiscal_year,quarter,amount_cents,currency,payment_date,method,invoice_number,contract_id,is_late_fee_applied,late_fee_cents,notes,created_by,approved_by,approval_date,created_at,updated_at,payment_status,bank_reference) VALUES (401,10,2023,2,2500000,'USD','2023-07-15','Wire','INV20230715',501,0,0,'Quarterly payment','alice','bob','2023-07-16','2023-07-15','2023-07-15','Completed','BR12345');
INSERT INTO Club_Sponsorship_Payment_History (sponsor_id,club_id,fiscal_year,quarter,amount_cents,currency,payment_date,method,invoice_number,contract_id,is_late_fee_applied,late_fee_cents,notes,created_by,approved_by,approval_date,created_at,updated_at,payment_status,bank_reference) VALUES (402,12,2023,3,4000000,'EUR','2023-10-10','SEPA','INV20231010',502,1,20000,'Late fee applied','carol','dave','2023-10-11','2023-10-10','2023-10-10','Pending','BR67890');
INSERT INTO Club_Sponsorship_Payment_History (sponsor_id,club_id,fiscal_year,quarter,amount_cents,currency,payment_date,method,invoice_number,contract_id,is_late_fee_applied,late_fee_cents,notes,created_by,approved_by,approval_date,created_at,updated_at,payment_status,bank_reference) VALUES (403,15,2024,1,1500000,'GBP','2024-02-05','ACH','INV20240205',503,0,0,'Initial payment','eve','frank','2024-02-06','2024-02-05','2024-02-05','Completed','BR24680');

-- Technical skill assessments for youth academy players
CREATE TABLE Youth_Academy_Technical_Skills (
    skill_id INTEGER PRIMARY KEY AUTOINCREMENT,
    academy_id INTEGER,
    skill_name TEXT,
    skill_category TEXT,
    proficiency_level INTEGER,
    assessment_date TEXT,
    assessor_id INTEGER,
    notes TEXT,
    video_url TEXT,
    duration_seconds INTEGER,
    equipment_needed TEXT,
    age_group TEXT,
    gender TEXT,
    is_core_skill INTEGER,
    weight_in_overall REAL,
    max_score INTEGER,
    min_score INTEGER,
    average_score REAL,
    std_dev REAL,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Youth_Academy_Technical_Skills (academy_id,skill_name,skill_category,proficiency_level,assessment_date,assessor_id,notes,video_url,duration_seconds,equipment_needed,age_group,gender,is_core_skill,weight_in_overall,max_score,min_score,average_score,std_dev,created_at,updated_at) VALUES (1,'Dribbling','BallControl',4,'2024-01-20',1001,'Good close control','https://example.com/video1',45,'cones','U15','M',1,0.15,10,4,7.2,1.1,'2024-01-20','2024-01-20');
INSERT INTO Youth_Academy_Technical_Skills (academy_id,skill_name,skill_category,proficiency_level,assessment_date,assessor_id,notes,video_url,duration_seconds,equipment_needed,age_group,gender,is_core_skill,weight_in_overall,max_score,min_score,average_score,std_dev,created_at,updated_at) VALUES (2,'Passing','Distribution',3,'2024-02-10',1002,'Accurate short passes','https://example.com/video2',30,'balls','U17','F',1,0.12,10,2,6.8,0.9,'2024-02-10','2024-02-10');
INSERT INTO Youth_Academy_Technical_Skills (academy_id,skill_name,skill_category,proficiency_level,assessment_date,assessor_id,notes,video_url,duration_seconds,equipment_needed,age_group,gender,is_core_skill,weight_in_overall,max_score,min_score,average_score,std_dev,created_at,updated_at) VALUES (3,'Shooting','Finishing',5,'2024-03-05',1003,'Powerful and accurate','https://example.com/video3',60,'goals','U19','M',1,0.18,10,5,9.0,0.5,'2024-03-05','2024-03-05');

-- Energy supply logs for stadiums
CREATE TABLE Stadium_Energy_Supply_Log (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    supply_date TEXT,
    energy_source_type TEXT,
    supplier_name TEXT,
    contract_id INTEGER,
    volume_mwh REAL,
    cost_cents INTEGER,
    carbon_intensity_g_per_kwh REAL,
    peak_demand_kw REAL,
    off_peak_demand_kw REAL,
    renewable_percent REAL,
    demand_response_event INTEGER,
    incentive_amount_cents INTEGER,
    notes TEXT,
    recorded_by TEXT,
    created_at TEXT,
    updated_at TEXT,
    verification_status TEXT,
    meter_id INTEGER
);
INSERT INTO Stadium_Energy_Supply_Log (stadium_id,supply_date,energy_source_type,supplier_name,contract_id,volume_mwh,cost_cents,carbon_intensity_g_per_kwh,peak_demand_kw,off_peak_demand_kw,renewable_percent,demand_response_event,incentive_amount_cents,notes,recorded_by,created_at,updated_at,verification_status,meter_id) VALUES (1,'2024-01-15','Solar','GreenPowerCo',701,120.5,18000,45.2,3500,1500,85,0,0,'Solar supply Jan','system','2024-01-15','2024-01-15','Verified',1001);
INSERT INTO Stadium_Energy_Supply_Log (stadium_id,supply_date,energy_source_type,supplier_name,contract_id,volume_mwh,cost_cents,carbon_intensity_g_per_kwh,peak_demand_kw,off_peak_demand_kw,renewable_percent,demand_response_event,incentive_amount_cents,notes,recorded_by,created_at,updated_at,verification_status,meter_id) VALUES (2,'2024-02-15','Grid','NationalEnergy',702,200.0,30000,350.0,5000,2500,30,1,5000,'Demand response Feb','system','2024-02-15','2024-02-15','Pending',1002);
INSERT INTO Stadium_Energy_Supply_Log (stadium_id,supply_date,energy_source_type,supplier_name,contract_id,volume_mwh,cost_cents,carbon_intensity_g_per_kwh,peak_demand_kw,off_peak_demand_kw,renewable_percent,demand_response_event,incentive_amount_cents,notes,recorded_by,created_at,updated_at,verification_status,meter_id) VALUES (3,'2024-03-15','Wind','WindEnergyInc',703,150.0,22500,120.0,4000,1800,70,0,0,'Wind supply March','system','2024-03-15','2024-03-15','Verified',1003);

-- Licensing terms for broadcast rights
CREATE TABLE Media_Broadcast_License_Terms (
    license_id INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcaster_id INTEGER,
    league_id INTEGER,
    season TEXT,
    territory TEXT,
    start_date TEXT,
    end_date TEXT,
    fee_cents INTEGER,
    exclusivity_flag INTEGER,
    channels_allowed TEXT,
    language_supported TEXT,
    broadcast_format TEXT,
    hd_flag INTEGER,
    ultra_hd_flag INTEGER,
    ad_cap_per_hour INTEGER,
    revenue_share_percent REAL,
    audit_clause TEXT,
    termination_notice_days INTEGER,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Media_Broadcast_License_Terms (broadcaster_id,league_id,season,territory,start_date,end_date,fee_cents,exclusivity_flag,channels_allowed,language_supported,broadcast_format,hd_flag,ultra_hd_flag,ad_cap_per_hour,revenue_share_percent,audit_clause,termination_notice_days,created_at,updated_at) VALUES (801,1,'2024/2025','EU','2024-08-01','2025-05-31',50000000,1,'ChannelA,ChannelB','EN','HD',1,0,3,12.5,'Annual audit required',60,'2024-07-01','2024-07-01');
INSERT INTO Media_Broadcast_License_Terms (broadcaster_id,league_id,season,territory,start_date,end_date,fee_cents,exclusivity_flag,channels_allowed,language_supported,broadcast_format,hd_flag,ultra_hd_flag,ad_cap_per_hour,revenue_share_percent,audit_clause,termination_notice_days,created_at,updated_at) VALUES (802,2,'2024/2025','NA','2024-09-01','2025-06-30',40000000,0,'ChannelC','EN,ES','SD',0,0,2,10.0,'Bi‑annual audit',45,'2024-08-15','2024-08-15');
INSERT INTO Media_Broadcast_License_Terms (broadcaster_id,league_id,season,territory,start_date,end_date,fee_cents,exclusivity_flag,channels_allowed,language_supported,broadcast_format,hd_flag,ultra_hd_flag,ad_cap_per_hour,revenue_share_percent,audit_clause,termination_notice_days,created_at,updated_at) VALUES (803,3,'2024/2025','AS','2024-07-15','2025-04-30',30000000,1,'ChannelD','EN','UHD',1,1,4,15.0,'Quarterly audit',30,'2024-07-01','2024-07-01');

-- Performance evaluation for match officials
CREATE TABLE Match_Official_Performance_Evaluation (
    evaluation_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    official_id INTEGER,
    role TEXT,
    evaluation_date TEXT,
    overall_score REAL,
    fitness_score REAL,
    decision_accuracy_score REAL,
    communication_score REAL,
    punctuality_score REAL,
    professionalism_score REAL,
    stress_management_score REAL,
    rule_knowledge_score REAL,
    teamwork_score REAL,
    tech_assistance_used_flag INTEGER,
    total_penalties_given INTEGER,
    total_decisions_made INTEGER,
    average_decision_time_seconds REAL,
    notes TEXT,
    evaluator_id INTEGER,
    video_review_available INTEGER,
    review_url TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    follow_up_action TEXT
);
INSERT INTO Match_Official_Performance_Evaluation (match_id,official_id,role,evaluation_date,overall_score,fitness_score,decision_accuracy_score,communication_score,punctuality_score,professionalism_score,stress_management_score,rule_knowledge_score,teamwork_score,tech_assistance_used_flag,total_penalties_given,total_decisions_made,average_decision_time_seconds,notes,evaluator_id,video_review_available,review_url,created_at,updated_at,status,follow_up_action) VALUES (1001,2001,'Referee','2024-04-10',8.5,9.0,8.0,8.5,9.5,9.0,7.5,8.0,8.5,0,2,45,2.8,'Good overall performance',3001,1,'https://example.com/review1','2024-04-10','2024-04-10','Completed','None');
INSERT INTO Match_Official_Performance_Evaluation (match_id,official_id,role,evaluation_date,overall_score,fitness_score,decision_accuracy_score,communication_score,punctuality_score,professionalism_score,stress_management_score,rule_knowledge_score,teamwork_score,tech_assistance_used_flag,total_penalties_given,total_decisions_made,average_decision_time_seconds,notes,evaluator_id,video_review_available,review_url,created_at,updated_at,status,follow_up_action) VALUES (1002,2002,'Assistant','2024-04-11',7.8,8.5,7.5,7.0,8.0,7.5,6.5,7.0,7.5,1,3,38,3.1,'Needs improvement on signaling',3002,1,'https://example.com/review2','2024-04-11','2024-04-11','Pending','Schedule follow‑up training');
INSERT INTO Match_Official_Performance_Evaluation (match_id,official_id,role,evaluation_date,overall_score,fitness_score,decision_accuracy_score,communication_score,punctuality_score,professionalism_score,stress_management_score,rule_knowledge_score,teamwork_score,tech_assistance_used_flag,total_penalties_given,total_decisions_made,average_decision_time_seconds,notes,evaluator_id,video_review_available,review_url,created_at,updated_at,status,follow_up_action) VALUES (1003,2003,'VAR','2024-04-12',9.0,9.5,9.2,9.0,9.8,9.5,8.8,9.0,9.2,0,0,0,0.0,'Excellent VAR operation',3003,1,'https://example.com/review3','2024-04-12','2024-04-12','Completed','None');

-- Contributions from community donors to clubs
CREATE TABLE Club_Community_Donor_Contribution (
    donation_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    donor_name TEXT,
    donor_type TEXT,
    contribution_date TEXT,
    amount_cents INTEGER,
    currency TEXT,
    campaign_id INTEGER,
    project_id INTEGER,
    receipt_number TEXT,
    tax_deductible_flag INTEGER,
    acknowledgment_sent_date TEXT,
    donor_contact_email TEXT,
    donor_contact_phone TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Club_Community_Donor_Contribution (club_id,donor_name,donor_type,contribution_date,amount_cents,currency,campaign_id,project_id,receipt_number,tax_deductible_flag,acknowledgment_sent_date,donor_contact_email,donor_contact_phone,address_line1,address_line2,city,state,zip_code,country,created_at,updated_at) VALUES (10,'John Doe','Individual','2024-03-01',500000,'USD',901,1001,'RCPT001',1,'2024-03-02','john.doe@example.com','5551234567','123 Main St','Apt 4','Springfield','IL','62704','USA','2024-03-01','2024-03-01');
INSERT INTO Club_Community_Donor_Contribution (club_id,donor_name,donor_type,contribution_date,amount_cents,currency,campaign_id,project_id,receipt_number,tax_deductible_flag,acknowledgment_sent_date,donor_contact_email,donor_contact_phone,address_line1,address_line2,city,state,zip_code,country,created_at,updated_at) VALUES (12,'Acme Corp','Corporate','2024-04-15',2500000,'EUR',902,1002,'RCPT002',1,'2024-04-16','contact@acmecorp.eu','442071234567','456 Business Rd','','London','London','SW1A1AA','UK','2024-04-15','2024-04-15');
INSERT INTO Club_Community_Donor_Contribution (club_id,donor_name,donor_type,contribution_date,amount_cents,currency,campaign_id,project_id,receipt_number,tax_deductible_flag,acknowledgment_sent_date,donor_contact_email,donor_contact_phone,address_line1,address_line2,city,state,zip_code,country,created_at,updated_at) VALUES (15,'Global Fund','Foundation','2024-05-20',10000000,'GBP',903,1003,'RCPT003',0,'2024-05-21','info@globalfund.org','440207654321','789 Charity Blvd','Suite 10','Manchester','Greater Manchester','M1 2AB','UK','2024-05-20','2024-05-20');

-- Environmental impact of team travel itineraries
CREATE TABLE Travel_Itinerary_Environmental_Impact (
    itinerary_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    travel_start_date TEXT,
    travel_end_date TEXT,
    departure_city TEXT,
    destination_city TEXT,
    mode_of_transport TEXT,
    distance_km REAL,
    emissions_kg_co2 REAL,
    carbon_offset_used_flag INTEGER,
    offset_amount_kg REAL,
    fuel_type TEXT,
    vehicle_id TEXT,
    driver_id INTEGER,
    purpose TEXT,
    notes TEXT,
    created_by TEXT,
    approved_by TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Travel_Itinerary_Environmental_Impact (team_id,travel_start_date,travel_end_date,departure_city,destination_city,mode_of_transport,distance_km,emissions_kg_co2,carbon_offset_used_flag,offset_amount_kg,fuel_type,vehicle_id,driver_id,purpose,notes,created_by,approved_by,created_at,updated_at) VALUES (10,'2024-06-01','2024-06-03','London','Manchester','Bus',300.0,45.0,0,0.0,'Diesel','BUS123',4001,'Match','Standard away trip','alice','bob','2024-05-20','2024-05-20');
INSERT INTO Travel_Itinerary_Environmental_Impact (team_id,travel_start_date,travel_end_date,departure_city,destination_city,mode_of_transport,distance_km,emissions_kg_co2,carbon_offset_used_flag,offset_amount_kg,fuel_type,vehicle_id,driver_id,purpose,notes,created_by,approved_by,created_at,updated_at) VALUES (12,'2024-07-10','2024-07-12','Berlin','Paris','Train',1050.0,20.0,1,20.0,'Electric','TRAIN456',4002,'Friendly','Offset applied','carol','dave','2024-06-30','2024-06-30');
INSERT INTO Travel_Itinerary_Environmental_Impact (team_id,travel_start_date,travel_end_date,departure_city,destination_city,mode_of_transport,distance_km,emissions_kg_co2,carbon_offset_used_flag,offset_amount_kg,fuel_type,vehicle_id,driver_id,purpose,notes,created_by,approved_by,created_at,updated_at) VALUES (15,'2024-08-15','2024-08-20','Rome','Madrid','Airplane',1400.0,340.0,1,340.0,'JetA','FLIGHT789',4003,'Tournament','Long haul with carbon offset','eve','frank','2024-08-01','2024-08-01');

-- Metadata for archived digital assets
CREATE TABLE Digital_Asset_Metadata_Archive (
    asset_id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_type TEXT,
    file_name TEXT,
    file_extension TEXT,
    file_size_bytes INTEGER,
    checksum_md5 TEXT,
    checksum_sha256 TEXT,
    uploaded_by TEXT,
    upload_date TEXT,
    last_accessed TEXT,
    access_count INTEGER,
    tags TEXT,
    description TEXT,
    related_asset_id INTEGER,
    version_number INTEGER,
    is_active_flag INTEGER,
    retention_policy_days INTEGER,
    deletion_date TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Digital_Asset_Metadata_Archive (asset_type,file_name,file_extension,file_size_bytes,checksum_md5,checksum_sha256,uploaded_by,upload_date,last_accessed,access_count,tags,description,related_asset_id,version_number,is_active_flag,retention_policy_days,deletion_date,created_at,updated_at) VALUES ('Image','team_logo','png',204800,'a1b2c3d4e5f6','123abc456def','alice','2024-01-05','2024-04-01',12,'team,logo','Official team logo',NULL,1,1,365,NULL,'2024-01-05','2024-01-05');
INSERT INTO Digital_Asset_Metadata_Archive (asset_type,file_name,file_extension,file_size_bytes,checksum_md5,checksum_sha256,uploaded_by,upload_date,last_accessed,access_count,tags,description,related_asset_id,version_number,is_active_flag,retention_policy_days,deletion_date,created_at,updated_at) VALUES ('Video','match_highlights','mp4',52428800,'b2c3d4e5f6a1','456def123abc','bob','2024-02-10','2024-04-02',5,'match,highlights','Highlights from season opener',NULL,1,1,730,NULL,'2024-02-10','2024-02-10');
INSERT INTO Digital_Asset_Metadata_Archive (asset_type,file_name,file_extension,file_size_bytes,checksum_md5,checksum_sha256,uploaded_by,upload_date,last_accessed,access_count,tags,description,related_asset_id,version_number,is_active_flag,retention_policy_days,deletion_date,created_at,updated_at) VALUES ('Document','sponsorship_agreement','pdf',1048576,'c3d4e5f6a1b2','789ghi012jkl','carol','2024-03-15','2024-04-03',1,'sponsor,contract','Signed sponsorship contract 2024',NULL,1,1,180,NULL,'2024-03-15','2024-03-15');