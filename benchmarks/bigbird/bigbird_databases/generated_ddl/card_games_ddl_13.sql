-- Customer feedback records capturing post‑purchase sentiment
CREATE TABLE customer_feedback (
    feedback_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    order_id INTEGER,
    rating INTEGER,
    comment TEXT,
    submission_date DATE,
    channel TEXT,
    product_category TEXT,
    product_id INTEGER,
    region TEXT,
    device_type TEXT,
    os_version TEXT,
    app_version TEXT,
    session_id TEXT,
    ip_address TEXT,
    browser TEXT,
    response_time_ms INTEGER,
    sentiment_score REAL,
    follow_up_required INTEGER,
    assigned_agent_id INTEGER,
    resolution_status TEXT,
    notes TEXT
);

INSERT INTO customer_feedback (customer_id,order_id,rating,comment,submission_date,channel,product_category,product_id,region,device_type,os_version,app_version,session_id,ip_address,browser,response_time_ms,sentiment_score,follow_up_required,assigned_agent_id,resolution_status,notes) VALUES (101,5001,5,Great product and fast delivery,2023-11-01,web,apparel,2001,NorthAmerica,mobile,iOS14,1.2.3,ABC123,192.168.1.10,Chrome,450,0.95,0,0,Open,);
INSERT INTO customer_feedback (customer_id,order_id,rating,comment,submission_date,channel,product_category,product_id,region,device_type,os_version,app_version,session_id,ip_address,browser,response_time_ms,sentiment_score,follow_up_required,assigned_agent_id,resolution_status,notes) VALUES (202,5002,3,Item arrived damaged,2023-11-02,email,homegoods,2002,Europe,desktop,Windows10,2.0.1,DEF456,172.16.0.5,Firefox,620,0.45,1,12,Pending,Need replacement);
INSERT INTO customer_feedback (customer_id,order_id,rating,comment,submission_date,channel,product_category,product_id,region,device_type,os_version,app_version,session_id,ip_address,browser,response_time_ms,sentiment_score,follow_up_required,assigned_agent_id,resolution_status,notes) VALUES (303,5003,4,Overall satisfied but packaging could improve,2023-11-03,app,electronics,2003,AsiaTablet,tablet,Android11,3.4.5,GHI789,10.0.0.2,Edge,300,0.78,0,0,Closed,);

-- Metrics collected from streaming servers for performance monitoring
CREATE TABLE streaming_server_metrics (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    server_id TEXT NOT NULL,
    timestamp DATETIME NOT NULL,
    cpu_usage_percent REAL,
    memory_usage_mb REAL,
    disk_io_mb_s REAL,
    network_in_mb_s REAL,
    network_out_mb_s REAL,
    active_streams INTEGER,
    peak_viewers INTEGER,
    avg_viewer_duration_sec REAL,
    bitrate_kbps INTEGER,
    dropped_frames INTEGER,
    error_rate_percent REAL,
    temperature_c REAL,
    fan_speed_rpm INTEGER,
    uptime_seconds INTEGER,
    process_count INTEGER,
    thread_count INTEGER,
    gpu_util_percent REAL,
    gpu_memory_mb REAL,
    gpu_temp_c REAL,
    data_center TEXT,
    region TEXT
);

INSERT INTO streaming_server_metrics (server_id,timestamp,cpu_usage_percent,memory_usage_mb,disk_io_mb_s,network_in_mb_s,network_out_mb_s,active_streams,peak_viewers,avg_viewer_duration_sec,bitrate_kbps,dropped_frames,error_rate_percent,temperature_c,fan_speed_rpm,uptime_seconds,process_count,thread_count,gpu_util_percent,gpu_memory_mb,gpu_temp_c,data_center,region) VALUES ('srv-01','2023-11-04 08:00:00',55.2,8192,120.5,250.3,240.7,120,1500,180.5,4500,12,0.02,68.5,3400,864000,210,1320,15.3,2048,66.0,DC-East,US);
INSERT INTO streaming_server_metrics (server_id,timestamp,cpu_usage_percent,memory_usage_mb,disk_io_mb_s,network_in_mb_s,network_out_mb_s,active_streams,peak_viewers,avg_viewer_duration_sec,bitrate_kbps,dropped_frames,error_rate_percent,temperature_c,fan_speed_rpm,uptime_seconds,process_count,thread_count,gpu_util_percent,gpu_memory_mb,gpu_temp_c,data_center,region) VALUES ('srv-02','2023-11-04 08:05:00',48.7,6144,98.1,210.4,205.9,95,1300,172.0,4200,8,0.01,63.2,3150,860000,190,1180,12.7,1792,61.5,DC-West,EU);
INSERT INTO streaming_server_metrics (server_id,timestamp,cpu_usage_percent,memory_usage_mb,disk_io_mb_s,network_in_mb_s,network_out_mb_s,active_streams,peak_viewers,avg_viewer_duration_sec,bitrate_kbps,dropped_frames,error_rate_percent,temperature_c,fan_speed_rpm,uptime_seconds,process_count,thread_count,gpu_util_percent,gpu_memory_mb,gpu_temp_c,data_center,region) VALUES ('srv-03','2023-11-04 08:10:00',62.1,10240,135.8,300.2,295.6,140,1700,190.3,5000,20,0.03,71.0,3800,870000,230,1560,18.9,2560,73.2,DC-Central,APAC);

-- API access tokens for user authentication and authorization
CREATE TABLE api_access_tokens (
    token_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    token TEXT NOT NULL,
    issued_at DATETIME NOT NULL,
    expires_at DATETIME NOT NULL,
    last_used_at DATETIME,
    ip_address TEXT,
    user_agent TEXT,
    scopes TEXT,
    is_revoked INTEGER DEFAULT 0,
    revoked_at DATETIME,
    revocation_reason TEXT,
    refresh_token TEXT,
    refresh_expires_at DATETIME,
    client_id TEXT,
    client_name TEXT,
    application_type TEXT,
    permissions_bitmask INTEGER,
    created_by TEXT,
    updated_by TEXT,
    notes TEXT
);

INSERT INTO api_access_tokens (user_id,token,issued_at,expires_at,last_used_at,ip_address,user_agent,scopes,is_revoked,revoked_at,revocation_reason,refresh_token,refresh_expires_at,client_id,client_name,application_type,permissions_bitmask,created_by,updated_by,notes) VALUES (101,'tkn123abc','2023-11-01 09:00:00','2024-11-01 09:00:00','2023-11-04 12:00:00','192.168.0.1','Chrome','read write',0,NULL,NULL,'ref123','2024-11-01 09:00:00','cli001','WebApp','public',7,'system','system',');
INSERT INTO api_access_tokens (user_id,token,issued_at,expires_at,last_used_at,ip_address,user_agent,scopes,is_revoked,revoked_at,revocation_reason,refresh_token,refresh_expires_at,client_id,client_name,application_type,permissions_bitmask,created_by,updated_by,notes) VALUES (202,'tkn456def','2023-11-02 10:30:00','2024-11-02 10:30:00','2023-11-04 13:15:00','10.0.0.2','Firefox','read',0,NULL,NULL,'ref456','2024-11-02 10:30:00','cli002','MobileApp','private',1,'admin','admin','');
INSERT INTO api_access_tokens (user_id,token,issued_at,expires_at,last_used_at,ip_address,user_agent,scopes,is_revoked,revoked_at,revocation_reason,refresh_token,refresh_expires_at,client_id,client_name,application_type,permissions_bitmask,created_by,updated_by,notes) VALUES (303,'tkn789ghi','2023-11-03 08:45:00','2024-11-03 08:45:00','2023-11-04 14:20:00','172.16.5.5','Edge','read write delete',0,NULL,NULL,'ref789','2024-11-03 08:45:00','cli003','DesktopApp','public',15,'system','system','');

-- Audit log for inventory adjustments and stock movements
CREATE TABLE inventory_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    inventory_item_id INTEGER NOT NULL,
    location_id INTEGER NOT NULL,
    previous_quantity INTEGER,
    new_quantity INTEGER,
    adjustment_reason TEXT,
    adjusted_by INTEGER,
    adjustment_timestamp DATETIME,
    batch_number TEXT,
    supplier_id INTEGER,
    lot_number TEXT,
    expiration_date DATE,
    unit_cost REAL,
    total_cost REAL,
    currency TEXT,
    audit_status TEXT,
    comments TEXT,
    verified_by INTEGER,
    verification_timestamp DATETIME,
    audited_by INTEGER,
    audit_type TEXT
);

INSERT INTO inventory_audit_log (inventory_item_id,location_id,previous_quantity,new_quantity,adjustment_reason,adjusted_by,adjustment_timestamp,batch_number,supplier_id,lot_number,expiration_date,unit_cost,total_cost,currency,audit_status,comments,verified_by,verification_timestamp,audited_by,audit_type) VALUES (5001,10,100,95,Damage,12,'2023-11-04 09:00:00','BN001',200,'LT001','2024-12-31',12.5,1187.5,'USD','Completed','Removed damaged units',15,'2023-11-04 10:00:00',20,'Physical');
INSERT INTO inventory_audit_log (inventory_item_id,location_id,previous_quantity,new_quantity,adjustment_reason,adjusted_by,adjustment_timestamp,batch_number,supplier_id,lot_number,expiration_date,unit_cost,total_cost,currency,audit_status,comments,verified_by,verification_timestamp,audited_by,audit_type) VALUES (5002,20,250,260,Restock,13,'2023-11-04 09:30:00','BN002',201,'LT002','2025-03-15',8.0,2080.0,'USD','Pending','New shipment received',16,'2023-11-04 11:00:00',21,'Physical');
INSERT INTO inventory_audit_log (inventory_item_id,location_id,previous_quantity,new_quantity,adjustment_reason,adjusted_by,adjustment_timestamp,batch_number,supplier_id,lot_number,expiration_date,unit_cost,total_cost,currency,audit_status,comments,verified_by,verification_timestamp,audited_by,audit_type) VALUES (5003,30,50,45,Theft,14,'2023-11-04 10:15:00','BN003',202,'LT003','2024-08-20',15.0,750.0,'USD','Completed','Reported missing items',17,'2023-11-04 12:00:00',22,'Physical');

-- Performance metrics for external marketing partners
CREATE TABLE partner_performance_metrics (
    partner_id INTEGER NOT NULL,
    period_start DATE NOT NULL,
    period_end DATE NOT NULL,
    total_leads INTEGER,
    qualified_leads INTEGER,
    conversion_rate REAL,
    revenue_generated REAL,
    avg_deal_size REAL,
    new_customers INTEGER,
    churn_rate REAL,
    net_promoter_score INTEGER,
    marketing_spend REAL,
    cost_per_acquisition REAL,
    channel_mix TEXT,
    region TEXT,
    industry TEXT,
    contact_email TEXT,
    account_manager_id INTEGER,
    last_update DATETIME,
    data_source TEXT,
    notes TEXT,
    risk_score REAL,
    compliance_status TEXT,
    PRIMARY KEY (partner_id, period_start)
);

INSERT INTO partner_performance_metrics (partner_id,period_start,period_end,total_leads,qualified_leads,conversion_rate,revenue_generated,avg_deal_size,new_customers,churn_rate,net_promoter_score,marketing_spend,cost_per_acquisition,channel_mix,region,industry,contact_email,account_manager_id,last_update,data_source,notes,risk_score,compliance_status) VALUES (1,'2023-10-01','2023-10-31',1200,300,0.25,75000,250,45,0.05,68,15000,50,'email,social','NorthAmerica','Technology','partner1@example.com',101,'2023-11-04 08:00:00','CRM','',0.12,'Compliant');
INSERT INTO partner_performance_metrics (partner_id,period_start,period_end,total_leads,qualified_leads,conversion_rate,revenue_generated,avg_deal_size,new_customers,churn_rate,net_promoter_score,marketing_spend,cost_per_acquisition,channel_mix,region,industry,contact_email,account_manager_id,last_update,data_source,notes,risk_score,compliance_status) VALUES (2,'2023-10-01','2023-10-31',900,250,0.28,56000,224,38,0.04,72,12000,48,'search,affiliate','Europe','Finance','partner2@example.com',102,'2023-11-04 09:00:00','Analytics','',0.09,'Compliant');
INSERT INTO partner_performance_metrics (partner_id,period_start,period_end,total_leads,qualified_leads,conversion_rate,revenue_generated,avg_deal_size,new_customers,churn_rate,net_promoter_score,marketing_spend,cost_per_acquisition,channel_mix,region,industry,contact_email,account_manager_id,last_update,data_source,notes,risk_score,compliance_status) VALUES (3,'2023-10-01','2023-10-31',1500,400,0.27,90000,225,60,0.06,65,18000,45,'social,display','AsiaPacific','Retail','partner3@example.com',103,'2023-11-04 10:00:00','Dashboard','',0.15,'Pending');

-- Readings from environmental sensors deployed in data centres
CREATE TABLE environmental_sensor_readings (
    reading_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sensor_id TEXT NOT NULL,
    location_id INTEGER NOT NULL,
    timestamp DATETIME NOT NULL,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm REAL,
    pm2_5_ug_m3 REAL,
    pm10_ug_m3 REAL,
    noise_db REAL,
    light_lux REAL,
    vibration_g REAL,
    battery_level_percent INTEGER,
    signal_strength_dbm REAL,
    firmware_version TEXT,
    alert_triggered INTEGER,
    alert_type TEXT,
    maintenance_required INTEGER,
    calibration_date DATE,
    latitude REAL,
    longitude REAL,
    altitude_m REAL,
    sensor_status TEXT,
    data_quality_flag TEXT,
    notes TEXT
);

INSERT INTO environmental_sensor_readings (sensor_id,location_id,timestamp,temperature_c,humidity_percent,co2_ppm,pm2_5_ug_m3,pm10_ug_m3,noise_db,light_lux,vibration_g,battery_level_percent,signal_strength_dbm,firmware_version,alert_triggered,alert_type,maintenance_required,calibration_date,latitude,longitude,altitude_m,sensor_status,data_quality_flag,notes) VALUES ('SEN001',101,'2023-11-04 08:00:00',22.5,45.0,420,12.3,25.6,55.0,300,0.02,98,-70,'v1.2',0,'',0,'2023-01-15',37.7749,-122.4194,15.0,'Active','Good','');
INSERT INTO environmental_sensor_readings (sensor_id,location_id,timestamp,temperature_c,humidity_percent,co2_ppm,pm2_5_ug_m3,pm10_ug_m3,noise_db,light_lux,vibration_g,battery_level_percent,signal_strength_dbm,firmware_version,alert_triggered,alert_type,maintenance_required,calibration_date,latitude,longitude,altitude_m,sensor_status,data_quality_flag,notes) VALUES ('SEN002',102,'2023-11-04 08:05:00',24.0,48.5,410,10.8,22.1,58.0,320,0.01,96,-68,'v1.3',1,'TempHigh',1,'2023-02-20',40.7128,-74.0060,10.0,'Active','Warning','Temp exceeds threshold');
INSERT INTO environmental_sensor_readings (sensor_id,location_id,timestamp,temperature_c,humidity_percent,co2_ppm,pm2_5_ug_m3,pm10_ug_m3,noise_db,light_lux,vibration_g,battery_level_percent,signal_strength_dbm,firmware_version,alert_triggered,alert_type,maintenance_required,calibration_date,latitude,longitude,altitude_m,sensor_status,data_quality_flag,notes) VALUES ('SEN003',103,'2023-11-04 08:10:00',21.2,42.3,430,11.5,24.0,53.0,280,0.03,99,-72,'v1.2',0,'',0,'2023-03-10',34.0522,-118.2437,30.0,'Active','Good','');

-- Progress tracking for users enrolled in training courses
CREATE TABLE training_course_progress (
    progress_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    enrollment_date DATE,
    completion_date DATE,
    last_accessed DATETIME,
    progress_percent REAL,
    quiz_score_avg REAL,
    assignment_score_avg REAL,
    certificate_issued INTEGER,
    certificate_id TEXT,
    instructor_id INTEGER,
    time_spent_minutes INTEGER,
    modules_completed INTEGER,
    modules_total INTEGER,
    forum_posts INTEGER,
    peer_reviews_given INTEGER,
    peer_reviews_received INTEGER,
    badge_earned INTEGER,
    badge_id TEXT,
    notes TEXT,
    status TEXT
);

INSERT INTO training_course_progress (user_id,course_id,enrollment_date,completion_date,last_accessed,progress_percent,quiz_score_avg,assignment_score_avg,certificate_issued,certificate_id,instructor_id,time_spent_minutes,modules_completed,modules_total,forum_posts,peer_reviews_given,peer_reviews_received,badge_earned,badge_id,notes,status) VALUES (101,301,'2023-09-01','2023-10-15','2023-10-15 14:30:00',100,92.5,88.0,1,'CERT001',201,720,12,12,8,5,5,1,'BADGE01','',Completed);
INSERT INTO training_course_progress (user_id,course_id,enrollment_date,completion_date,last_accessed,progress_percent,quiz_score_avg,assignment_score_avg,certificate_issued,certificate_id,instructor_id,time_spent_minutes,modules_completed,modules_total,forum_posts,peer_reviews_given,peer_reviews_received,badge_earned,badge_id,notes,status) VALUES (202,302,'2023-10-05',NULL,'2023-11-03 09:20:00',45,78.0,70.5,0,NULL,202,300,5,12,2,1,0,0,NULL,'On track','InProgress');
INSERT INTO training_course_progress (user_id,course_id,enrollment_date,completion_date,last_accessed,progress_percent,quiz_score_avg,assignment_score_avg,certificate_issued,certificate_id,instructor_id,time_spent_minutes,modules_completed,modules_total,forum_posts,peer_reviews_given,peer_reviews_received,badge_earned,badge_id,notes,status) VALUES (303,303,'2023-08-20','2023-09-30','2023-09-30 16:45:00',100,95.0,93.0,1,'CERT003',203,650,10,10,12,6,6,1,'BADGE03','Excellent performance','Completed');

-- Schedule for firmware updates across hardware assets
CREATE TABLE hardware_firmware_update_schedule (
    schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    hardware_id TEXT NOT NULL,
    firmware_version TEXT NOT NULL,
    release_date DATE,
    rollout_start DATE,
    rollout_end DATE,
    target_region TEXT,
    priority_level INTEGER,
    status TEXT,
    initiated_by TEXT,
    approved_by TEXT,
    approval_date DATE,
    rollback_version TEXT,
    rollback_date DATE,
    notes TEXT,
    checksum TEXT,
    file_size_mb REAL,
    download_url TEXT,
    expected_downtime_minutes INTEGER,
    maintenance_window TEXT,
    post_update_validation_passed INTEGER
);

INSERT INTO hardware_firmware_update_schedule (hardware_id,firmware_version,release_date,rollout_start,rollout_end,target_region,priority_level,status,initiated_by,approved_by,approval_date,rollback_version,rollback_date,notes,checksum,file_size_mb,download_url,expected_downtime_minutes,maintenance_window,post_update_validation_passed) VALUES ('HW001','v3.4.1','2023-11-01','2023-11-05','2023-11-10','US-East',1,'Scheduled','ops','lead','2023-10-28','v3.3.9','2023-11-04','Critical security patch','abc123def456',45.2,'https://updates.example.com/fw/v3.4.1.bin',5,'02:00-04:00',1);
INSERT INTO hardware_firmware_update_schedule (hardware_id,firmware_version,release_date,rollout_start,rollout_end,target_region,priority_level,status,initiated_by,approved_by,approval_date,rollback_version,rollback_date,notes,checksum,file_size_mb,download_url,expected_downtime_minutes,maintenance_window,post_update_validation_passed) VALUES ('HW002','v2.9.0','2023-10-20','2023-10-25','2023-10-30','EU-West',2,'Completed','devops','manager','2023-10-15','v2.8.5','2023-10-24','Feature enhancement','def789ghi012',30.0,'https://updates.example.com/fw/v2.9.0.bin',3,'01:00-02:30',1);
INSERT INTO hardware_firmware_update_schedule (hardware_id,firmware_version,release_date,rollout_start,rollout_end,target_region,priority_level,status,initiated_by,approved_by,approval_date,rollback_version,rollback_date,notes,checksum,file_size_mb,download_url,expected_downtime_minutes,maintenance_window,post_update_validation_passed) VALUES ('HW003','v5.1.2','2023-11-10','2023-11-12','2023-11-17','APAC',3,'Pending','engineer','director','2023-11-08','v5.0.9','2023-11-11','Performance tuning','ghi345jkl678',55.5,'https://updates.example.com/fw/v5.1.2.bin',7,'03:00-05:00',0);

-- Invoices sent to sponsors for event participation
CREATE TABLE event_sponsorship_invoices (
    invoice_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER NOT NULL,
    sponsor_id INTEGER NOT NULL,
    invoice_date DATE,
    due_date DATE,
    amount_due REAL,
    currency TEXT,
    tax_amount REAL,
    total_amount REAL,
    payment_status TEXT,
    payment_method TEXT,
    paid_date DATE,
    late_fee_applied INTEGER,
    late_fee_amount REAL,
    discount_applied INTEGER,
    discount_amount REAL,
    invoice_number TEXT,
    contract_reference TEXT,
    billing_contact TEXT,
    billing_email TEXT,
    notes TEXT,
    created_by TEXT,
    approved_by TEXT,
    approval_date DATE
);

INSERT INTO event_sponsorship_invoices (event_id,sponsor_id,invoice_date,due_date,amount_due,currency,tax_amount,total_amount,payment_status,payment_method,paid_date,late_fee_applied,late_fee_amount,discount_applied,discount_amount,invoice_number,contract_reference,billing_contact,billing_email,notes,created_by,approved_by,approval_date) VALUES (1001,501,'2023-10-15','2023-11-15',15000,'USD',1500,16500,'Pending','BankTransfer',NULL,0,0,1,500,'INV1001','CTR-2023-01','John Doe','john.doe@example.com','', 'finance','cfo','2023-10-10');
INSERT INTO event_sponsorship_invoices (event_id,sponsor_id,invoice_date,due_date,amount_due,currency,tax_amount,total_amount,payment_status,payment_method,paid_date,late_fee_applied,late_fee_amount,discount_applied,discount_amount,invoice_number,contract_reference,billing_contact,billing_email,notes,created_by,approved_by,approval_date) VALUES (1002,502,'2023-10-20','2023-11-20',20000,'USD',2000,22000,'Paid','CreditCard','2023-10-25',0,0,0,0,'INV1002','CTR-2023-02','Jane Smith','jane.smith@example.com','Early payment discount applied','finance','cfo','2023-10-15');
INSERT INTO event_sponsorship_invoices (event_id,sponsor_id,invoice_date,due_date,amount_due,currency,tax_amount,total_amount,payment_status,payment_method,paid_date,late_fee_applied,late_fee_amount,discount_applied,discount_amount,invoice_number,contract_reference,billing_contact,billing_email,notes,created_by,approved_by,approval_date) VALUES (1003,503,'2023-10-25','2023-11-25',12000,'USD',1200,13200,'Overdue','WireTransfer',NULL,1,300,0,0,'INV1003','CTR-2023-03','Alice Brown','alice.brown@example.com','Late fee applied','finance','cfo','2023-10-20');

-- Social interactions between players on the platform
CREATE TABLE player_social_interactions (
    interaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER NOT NULL,
    target_player_id INTEGER NOT NULL,
    interaction_type TEXT,
    interaction_timestamp DATETIME,
    platform TEXT,
    content_id TEXT,
    content_type TEXT,
    message_text TEXT,
    is_public INTEGER,
    likes_count INTEGER,
    replies_count INTEGER,
    shares_count INTEGER,
    reaction_type TEXT,
    reported_flag INTEGER,
    report_reason TEXT,
    moderation_status TEXT,
    moderated_by INTEGER,
    moderation_timestamp DATETIME,
    notes TEXT
);

INSERT INTO player_social_interactions (player_id,target_player_id,interaction_type,interaction_timestamp,platform,content_id,content_type,message_text,is_public,likes_count,replies_count,shares_count,reaction_type,reported_flag,report_reason,moderation_status,moderated_by,moderation_timestamp,notes) VALUES (101,202,'friend_request','2023-11-03 12:00:00','web','FR001','request','',1,0,0,0,NULL,0,NULL,'Pending',NULL,NULL,'');
INSERT INTO player_social_interactions (player_id,target_player_id,interaction_type,interaction_timestamp,platform,content_id,content_type,message_text,is_public,likes_count,replies_count,shares_count,reaction_type,reported_flag,report_reason,moderation_status,moderated_by,moderation_timestamp,notes) VALUES (202,101,'message','2023-11-03 12:05:00','mobile','MSG001','text','Congrats on the win!',1,3,0,0,'like',0,NULL,'Approved',101,'2023-11-03 12:06:00','');
INSERT INTO player_social_interactions (player_id,target_player_id,interaction_type,interaction_timestamp,platform,content_id,content_type,message_text,is_public,likes_count,replies_count,shares_count,reaction_type,reported_flag,report_reason,moderation_status,moderated_by,moderation_timestamp,notes) VALUES (303,101,'comment','2023-11-04 09:30:00','web','CMT001','comment','Great deck strategy',1,5,2,1,'love',0,NULL,'Approved',202,'2023-11-04 09:35:00','');

-- Records of player interactions on the marketplace (buy/sell/offers)
CREATE TABLE marketplace_transactions (
    transaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
    buyer_id INTEGER NOT NULL,
    seller_id INTEGER NOT NULL,
    card_uuid TEXT NOT NULL,
    transaction_type TEXT,
    transaction_date DATETIME,
    payment_method TEXT,
    amount REAL,
    currency TEXT,
    platform_fee REAL,
    tax_amount REAL,
    total_paid REAL,
    shipping_required INTEGER,
    shipping_cost REAL,
    delivery_estimate DATE,
    transaction_status TEXT,
    escrow_release_date DATE,
    dispute_flag INTEGER,
    dispute_reason TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    external_reference TEXT
);

INSERT INTO marketplace_transactions (buyer_id,seller_id,card_uuid,transaction_type,transaction_date,payment_method,amount,currency,platform_fee,tax_amount,total_paid,shipping_required,shipping_cost,delivery_estimate,transaction_status,escrow_release_date,dispute_flag,dispute_reason,notes,created_at,updated_at,external_reference) VALUES (101,202,'uuid-abc-123','purchase','2023-11-01 14:20:00','CreditCard',50.00,'USD',2.50,1.00,53.50,1,5.00,'2023-11-07','Completed','2023-11-04',0,NULL,'','2023-11-01 14:21:00','2023-11-04 10:00:00','REF001');
INSERT INTO marketplace_transactions (buyer_id,seller_id,card_uuid,transaction_type,transaction_date,payment_method,amount,currency,platform_fee,tax_amount,total_paid,shipping_required,shipping_cost,delivery_estimate,transaction_status,escrow_release_date,dispute_flag,dispute_reason,notes,created_at,updated_at,external_reference) VALUES (202,303,'uuid-def-456','offer','2023-11-03 09:15:00','PayPal',45.00,'USD',2.25,0.90,48.15,0,0,'','Pending',NULL,0,NULL,'Waiting for seller acceptance','2023-11-03 09:16:00','2023-11-03 09:16:00','REF002');
INSERT INTO marketplace_transactions (buyer_id,seller_id,card_uuid,transaction_type,transaction_date,payment_method,amount,currency,platform_fee,tax_amount,total_paid,shipping_required,shipping_cost,delivery_estimate,transaction_status,escrow_release_date,dispute_flag,dispute_reason,notes,created_at,updated_at,external_reference) VALUES (303,101,'uuid-ghi-789','purchase','2023-11-04 11:45:00','BankTransfer',60.00,'USD',3.00,1.20,64.20,1,7.00,'2023-11-10','Completed','2023-11-08',0,NULL,'','2023-11-04 11:46:00','2023-11-08 15:30:00','REF003');

-- Log of community poll results for feature voting
CREATE TABLE community_poll_results (
    poll_id INTEGER NOT NULL,
    option_id INTEGER NOT NULL,
    votes INTEGER,
    poll_date DATE,
    option_text TEXT,
    created_by TEXT,
    created_at DATETIME,
    notes TEXT,
    PRIMARY KEY (poll_id, option_id)
);

INSERT INTO community_poll_results (poll_id,option_id,votes,poll_date,option_text,created_by,created_at,notes) VALUES (1,1,120,'2023-11-01','Add new card rarity','admin','2023-10-30 08:00:00','');
INSERT INTO community_poll_results (poll_id,option_id,votes,poll_date,option_text,created_by,created_at,notes) VALUES (1,2,85,'2023-11-01','Introduce limited‑time events','admin','2023-10-30 08:00:00','');
INSERT INTO community_poll_results (poll_id,option_id,votes,poll_date,option_text,created_by,created_at,notes) VALUES (1,3,45,'2023-11-01','Improve matchmaking algorithm','admin','2023-10-30 08:00:00','');

-- Records of sponsor engagement surveys
CREATE TABLE sponsor_engagement_surveys (
    survey_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER NOT NULL,
    event_id INTEGER NOT NULL,
    survey_date DATE,
    overall_satisfaction INTEGER,
    brand_visibility_score INTEGER,
    lead_quality_score INTEGER,
    net_promoter_score INTEGER,
    comments TEXT,
    follow_up_required INTEGER,
    follow_up_action TEXT,
    responded_by TEXT,
    response_timestamp DATETIME,
    created_by TEXT,
    created_at DATETIME,
    notes TEXT
);

INSERT INTO sponsor_engagement_surveys (sponsor_id,event_id,survey_date,overall_satisfaction,brand_visibility_score,lead_quality_score,net_promoter_score,comments,follow_up_required,follow_up_action,responded_by,response_timestamp,created_by,created_at,notes) VALUES (501,1001,'2023-11-02',8,7,6,9,'Great exposure',0,NULL,'alice','2023-11-03 09:00:00','bob','2023-11-02 10:00:00','');
INSERT INTO sponsor_engagement_surveys (sponsor_id,event_id,survey_date,overall_satisfaction,brand_visibility_score,lead_quality_score,net_promoter_score,comments,follow_up_required,follow_up_action,responded_by,response_timestamp,created_by,created_at,notes) VALUES (502,1002,'2023-11-03',6,5,5,4,'Average results, consider more booth space',1,'Schedule meeting with marketing team','charlie','2023-11-04 11:30:00','dave','2023-11-03 12:00:00','');
INSERT INTO sponsor_engagement_surveys (sponsor_id,event_id,survey_date,overall_satisfaction,brand_visibility_score,lead_quality_score,net_promoter_score,comments,follow_up_required,follow_up_action,responded_by,response_timestamp,created_by,created_at,notes) VALUES (503,1003,'2023-11-04',9,9,8,10,'Excellent partnership',0,NULL,'eve','2023-11-05 14:45:00','frank','2023-11-04 15:00:00','');