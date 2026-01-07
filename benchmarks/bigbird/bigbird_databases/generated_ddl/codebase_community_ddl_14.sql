-- Product catalog details
CREATE TABLE product_catalog
(
    product_id                INTEGER PRIMARY KEY,
    sku                       TEXT,
    name                      TEXT,
    description               TEXT,
    category_id               INTEGER,
    subcategory_id            INTEGER,
    brand_id                  INTEGER,
    supplier_id               INTEGER,
    manufacturer_id           INTEGER,
    unit_price_cents          INTEGER,
    cost_cents                INTEGER,
    list_price_cents          INTEGER,
    discount_percent          INTEGER,
    weight_grams              INTEGER,
    dimensions_length_mm      INTEGER,
    dimensions_width_mm       INTEGER,
    dimensions_height_mm      INTEGER,
    color_code                INTEGER,
    size_code                 INTEGER,
    stock_quantity            INTEGER,
    reorder_threshold         INTEGER,
    is_active                 INTEGER,
    created_epoch             INTEGER,
    updated_epoch             INTEGER,
    created_by_user_id        INTEGER,
    updated_by_user_id        INTEGER,
    is_discontinued           INTEGER,
    rating_average            INTEGER,
    review_count              INTEGER
);
INSERT INTO product_catalog VALUES (1,'SKU001','WidgetA','Standard widget',10,101,5,200,300,1999,1500,2499,10,500,100,50,30,1,2,500,100,1,1672540800,1672627200,10,20,0,4,25);
INSERT INTO product_catalog VALUES (2,'SKU002','WidgetB','Advanced widget',10,102,5,201,301,2999,2000,3499,15,750,120,60,40,2,3,250,50,1,1672630800,1672717200,11,21,0,5,10);
INSERT INTO product_catalog VALUES (3,'SKU003','GadgetX','Premium gadget',12,103,6,202,302,4999,3500,5999,5,900,150,80,55,3,1,800,200,1,1672722000,1672808400,12,22,0,3,40);

-- Supplier inventory records
CREATE TABLE supplier_inventory
(
    inventory_id               INTEGER PRIMARY KEY,
    supplier_id                INTEGER,
    warehouse_id               INTEGER,
    product_id                 INTEGER,
    batch_number               TEXT,
    received_epoch             INTEGER,
    expiration_epoch           INTEGER,
    quantity_received          INTEGER,
    quantity_available         INTEGER,
    quantity_reserved          INTEGER,
    last_audit_epoch           INTEGER,
    audit_user_id              INTEGER,
    quality_score              INTEGER,
    temperature_celsius        INTEGER,
    humidity_percent           INTEGER,
    is_fragile                 INTEGER,
    handling_instructions      TEXT,
    shipping_method_id        INTEGER,
    carrier_id                 INTEGER,
    tracking_number            TEXT,
    dock_location_code        TEXT,
    pallet_count               INTEGER,
    case_count                 INTEGER,
    box_count                  INTEGER,
    unit_per_box               INTEGER,
    weight_per_unit_grams      INTEGER,
    volume_per_unit_cc         INTEGER,
    is_inspected               INTEGER,
    inspection_result_code    INTEGER,
    notes                      TEXT
);
INSERT INTO supplier_inventory VALUES (1001,200,10,1,'BN001',1672400000,1703936000,1000,950,50,1672500000,500,95,22,50,0,'HandleWithCare',1,300,'TRK12345','DL01',5,20,100,10,500,2500,1,2,'');
INSERT INTO supplier_inventory VALUES (1002,201,11,2,'BN002',1672500000,1704032000,500,480,20,1672600000,501,90,20,60,1,'KeepDry',2,301,'TRK12346','DL02',3,15,75,8,450,2200,1,1,'');
INSERT INTO supplier_inventory VALUES (1003,202,12,3,'BN003',1672600000,1704128000,200,200,0,1672700000,502,85,18,55,0,'StackFlat',3,302,'TRK12347','DL03',2,10,50,5,400,2000,1,0,'');

-- Warehouse location details
CREATE TABLE warehouse_locations
(
    location_id                INTEGER PRIMARY KEY,
    warehouse_id               INTEGER,
    aisle_number               INTEGER,
    bay_number                 INTEGER,
    shelf_number               INTEGER,
    level_number               INTEGER,
    max_weight_kg              INTEGER,
    max_volume_cbm             INTEGER,
    current_weight_kg          INTEGER,
    current_volume_cbm         INTEGER,
    temperature_celsius        INTEGER,
    humidity_percent           INTEGER,
    is_climate_controlled      INTEGER,
    is_accessible              INTEGER,
    security_zone_code         INTEGER,
    fire_suppression_type      TEXT,
    last_inspection_epoch      INTEGER,
    inspection_user_id         INTEGER,
    maintenance_cycle_days     INTEGER,
    next_maintenance_epoch     INTEGER,
    assigned_manager_user_id   INTEGER,
    notes                      TEXT,
    is_active                  INTEGER,
    created_epoch              INTEGER,
    updated_epoch              INTEGER,
    created_by_user_id         INTEGER,
    updated_by_user_id         INTEGER,
    reserved_space_sqft        INTEGER,
    occupancy_rate_percent     INTEGER,
    compliance_status_code     INTEGER
);
INSERT INTO warehouse_locations VALUES (1,10,5,12,3,2,20000,500,15000,350,22,45,1,1,3,'Sprinkler',1672405000,600,30,1675005000,700,'',1,1672400000,1672500000,10,20,2000,75,1);
INSERT INTO warehouse_locations VALUES (2,11,6,14,4,1,25000,600,20000,400,20,50,1,0,2,'Foam',1672410000,601,45,1675010000,701,'',1,1672410000,1672510000,11,21,2500,80,2);
INSERT INTO warehouse_locations VALUES (3,12,7,16,5,3,30000,700,25000,500,18,55,0,1,1,'CO2',1672415000,602,60,1675015000,702,'',1,1672420000,1672520000,12,22,3000,85,3);

-- Shipment log entries
CREATE TABLE shipment_logs
(
    shipment_id                INTEGER PRIMARY KEY,
    order_id                   INTEGER,
    carrier_id                 INTEGER,
    origin_warehouse_id        INTEGER,
    destination_address_id     INTEGER,
    dispatch_epoch             INTEGER,
    estimated_arrival_epoch    INTEGER,
    actual_arrival_epoch       INTEGER,
    status_code                INTEGER,
    tracking_number            TEXT,
    weight_kg                  INTEGER,
    volume_cbm                 INTEGER,
    freight_class_code         INTEGER,
    shipping_rate_cents        INTEGER,
    insurance_amount_cents     INTEGER,
    is_expedited               INTEGER,
    customs_declaration_id     INTEGER,
    duty_amount_cents          INTEGER,
    created_by_user_id         INTEGER,
    created_epoch              INTEGER,
    updated_by_user_id         INTEGER,
    updated_epoch              INTEGER,
    notes                      TEXT,
    is_hazardous               INTEGER,
    temperature_controlled     INTEGER,
    special_handling_instructions TEXT,
    pallet_count               INTEGER,
    container_number           TEXT,
    seal_number                TEXT,
    is_delivered               INTEGER
);
INSERT INTO shipment_logs VALUES (5001,9001,300,10,4001,1672500000,1672600000,1672595000,2,'TRK5001',1500,3,70,20000,5000,0,8001,1000,600,1672500100,601,1672600100,'',0,0,'',2,'C001','S001',1);
INSERT INTO shipment_logs VALUES (5002,9002,301,11,4002,1672600000,1672700000,1672698000,3,'TRK5002',2000,4,80,25000,6000,1,8002,1500,601,1672600100,602,1672700100,'',1,1,'Fragile',3,'C002','S002',1);
INSERT INTO shipment_logs VALUES (5003,9003,302,12,4003,1672700000,1672800000,NULL,1,'TRK5003',1200,2,60,18000,4000,0,8003,800,602,1672700100,603,1672800100,'',0,0,'',1,'C003','S003',0);

-- Customer feedback records
CREATE TABLE customer_feedback
(
    feedback_id                INTEGER PRIMARY KEY,
    user_id                    INTEGER,
    product_id                 INTEGER,
    order_id                   INTEGER,
    rating_score               INTEGER,
    feedback_text              TEXT,
    feedback_epoch             INTEGER,
    responded_by_user_id       INTEGER,
    response_text              TEXT,
    response_epoch             INTEGER,
    is_public                  INTEGER,
    platform_type_code         INTEGER,
    device_type_code           INTEGER,
    os_version                 TEXT,
    app_version                TEXT,
    language_code              TEXT,
    sentiment_score            INTEGER,
    helpful_votes              INTEGER,
    unhelpful_votes            INTEGER,
    attached_media_url         TEXT,
    attachment_type_code       INTEGER,
    location_id                INTEGER,
    is_anonymous               INTEGER,
    category_code              INTEGER,
    subcategory_code           INTEGER,
    tags                       TEXT,
    resolved_status_code      INTEGER,
    resolution_epoch           INTEGER,
    created_by_user_id         INTEGER,
    created_epoch              INTEGER,
    updated_by_user_id         INTEGER,
    updated_epoch              INTEGER
);
INSERT INTO customer_feedback VALUES (10001,10,1,9001,5,'Great product',1672505000,20,'Thank you',1672510000,1,1,2,'iOS14','1.2.3','en',90,15,0,'http://img.example.com/1.jpg',1,100,0,10,101,'fast,lightweight',0,NULL,30,1672506000,31,1672512000);
INSERT INTO customer_feedback VALUES (10002,11,2,9002,3,'Average quality',1672605000,21,'We will improve',1672610000,1,2,1,'Android11','1.3.0','es',70,10,2,'http://img.example.com/2.jpg',1,101,0,20,102,'durable',1,1672615000,32,1672606000,33,1672618000);
INSERT INTO customer_feedback VALUES (10003,12,3,9003,1,'Very poor',1672705000,22,'Sorry to hear',1672710000,0,1,3,'Windows10','2.0.0','fr',30,5,5,'http://img.example.com/3.jpg',1,102,1,30,103,'defective',2,1672715000,34,1672706000,35,1672718000);

-- Marketing asset library
CREATE TABLE marketing_assets
(
    asset_id                   INTEGER PRIMARY KEY,
    asset_name                 TEXT,
    asset_type_code            INTEGER,
    file_path                  TEXT,
    file_size_bytes            INTEGER,
    width_pixels               INTEGER,
    height_pixels              INTEGER,
    duration_seconds           INTEGER,
    created_epoch              INTEGER,
    updated_epoch              INTEGER,
    created_by_user_id         INTEGER,
    updated_by_user_id         INTEGER,
    is_active                  INTEGER,
    campaign_id                INTEGER,
    target_audience_code       INTEGER,
    language_code              TEXT,
    region_code                TEXT,
    version_number             INTEGER,
    approval_status_code       INTEGER,
    approved_by_user_id        INTEGER,
    approval_epoch             INTEGER,
    tags                       TEXT,
    description                TEXT,
    usage_count                INTEGER,
    last_used_epoch            INTEGER,
    copyright_holder           TEXT,
    license_type_code          INTEGER,
    expiration_epoch           INTEGER,
    is_external                INTEGER,
    external_source_url        TEXT,
    thumbnail_path             TEXT,
    related_asset_id           INTEGER,
    priority_level             INTEGER,
    notes                      TEXT
);
INSERT INTO marketing_assets VALUES (2001,'BannerSpring','1','/assets/banner_spring.jpg',102400,1200,400,0,1672400000,1672500000,10,20,1,500,2,'en','US',1,3,30,1672405000,'spring,season','Spring campaign banner',150,1672490000,'CompanyX',2,1672600000,0,'','/assets/thumb_banner_spring.jpg',NULL,5,'');
INSERT INTO marketing_assets VALUES (2002,'VideoLaunch','2','/assets/video_launch.mp4',2048000,1920,1080,60,1672410000,1672510000,11,21,1,501,3,'en','EU',2,4,31,1672415000,'launch,product','Product launch video',80,1672500000,'CompanyY',3,1672610000,0,'','/assets/thumb_video_launch.jpg',2001,8,'');
INSERT INTO marketing_assets VALUES (2003,'InfographicQ1','3','/assets/infographic_q1.png',512000,800,1200,0,1672420000,1672520000,12,22,1,502,4,'es','LATAM',1,2,32,1672425000,'q1,stats','Q1 statistics infographic',200,1672510000,'CompanyZ',1,1672620000,0,'','/assets/thumb_infographic_q1.jpg',NULL,3,'');

-- Event schedule information
CREATE TABLE event_schedule
(
    event_id                   INTEGER PRIMARY KEY,
    event_name                 TEXT,
    event_type_code            INTEGER,
    start_epoch                INTEGER,
    end_epoch                  INTEGER,
    location_id                INTEGER,
    organizer_user_id          INTEGER,
    max_attendees              INTEGER,
    registration_deadline_epoch INTEGER,
    is_virtual                 INTEGER,
    virtual_meeting_url        TEXT,
    description                TEXT,
    audience_level_code        INTEGER,
    language_code              TEXT,
    category_code              INTEGER,
    subcategory_code           INTEGER,
    sponsorship_level_code    INTEGER,
    is_paid                    INTEGER,
    price_cents                INTEGER,
    early_bird_price_cents     INTEGER,
    created_epoch              INTEGER,
    created_by_user_id         INTEGER,
    updated_epoch              INTEGER,
    updated_by_user_id         INTEGER,
    status_code                INTEGER,
    attendee_count             INTEGER,
    waitlist_count             INTEGER,
    is_recorded                INTEGER,
    recording_url              TEXT,
    feedback_form_id           INTEGER,
    reminder_sent_epoch        INTEGER,
    is_cancelled               INTEGER,
    cancellation_reason_code   INTEGER,
    notes                      TEXT
);
INSERT INTO event_schedule VALUES (3001,'Tech Summit 2023',1,1672600000,1672686400,10,100,500,1672500000,0,'', 'Annual technology summit',2,'en',10,101,3,0,0,0,1672505000,101,1672605000,102,1,450,20,1,'http://recordings.example.com/ts2023','5001',1672650000,0,NULL,'');
INSERT INTO event_schedule VALUES (3002,'Webinar AI Trends',2,1672700000,1672703600,11,101,200,1672650000,1,'https://meet.example.com/ai','Insights on AI advancements',1,'en',11,102,2,1,1999,1499,1672655000,102,1672705000,103,2,180,5,0,'','5002',1672690000,0,NULL,'');
INSERT INTO event_schedule VALUES (3003,'Workshop Data Science',3,1672800000,1672810800,12,102,100,1672750000,0,'', 'Hands‑on data science workshop',3,'es',12,103,1,1,2999,2499,1672755000,103,1672805000,104,3,80,0,0,'','5003',1672808000,0,NULL,'');

-- Training session catalog
CREATE TABLE training_sessions
(
    session_id                 INTEGER PRIMARY KEY,
    title                      TEXT,
    module_code                TEXT,
    trainer_user_id            INTEGER,
    location_id                INTEGER,
    start_epoch                INTEGER,
    end_epoch                  INTEGER,
    capacity                   INTEGER,
    enrolled_count             INTEGER,
    waitlist_count             INTEGER,
    is_mandatory               INTEGER,
    certification_required    INTEGER,
    certification_id           INTEGER,
    language_code              TEXT,
    difficulty_level_code      INTEGER,
    pre_requisite_module_code  TEXT,
    materials_url              TEXT,
    video_url                  TEXT,
    created_epoch              INTEGER,
    created_by_user_id         INTEGER,
    updated_epoch              INTEGER,
    updated_by_user_id         INTEGER,
    status_code                INTEGER,
    feedback_form_id           INTEGER,
    average_score              INTEGER,
    completion_rate_percent    INTEGER,
    is_archived                INTEGER,
    archive_epoch              INTEGER,
    notes                      TEXT,
    external_partner_id        INTEGER,
    cost_cents                 INTEGER,
    discount_percent           INTEGER,
    is_active                  INTEGER,
    priority_level             INTEGER
);
INSERT INTO training_sessions VALUES (4001,'Intro to SQL', 'SQL101', 200, 10, 1672900000, 1672910800, 30, 25, 0, 1, 0, NULL, 'en', 1, NULL, '/materials/sql101.zip', 'http://videos.example.com/sql101', 1672850000, 200, 1672915000, 201, 1, 5001, 85, 90, 0, NULL, '', 0, 0, 0, 1, 3);
INSERT INTO training_sessions VALUES (4002,'Advanced Python', 'PY202', 201, 11, 1673000000, 1673010800, 20, 20, 2, 0, 1, 3001, 'en', 3, 'PY101', '/materials/py202.zip', 'http://videos.example.com/py202', 1672950000, 201, 1673015000, 202, 2, 5002, 92, 95, 0, NULL, '', 1, 1500, 10, 1, 2);
INSERT INTO training_sessions VALUES (4003,'Data Visualization', 'DV303', 202, 12, 1673100000, 1673110800, 25, 22, 1, 0, 0, NULL, 'es', 2, 'DV101', '/materials/dv303.zip', 'http://videos.example.com/dv303', 1673050000, 202, 1673115000, 203, 1, 5003, 88, 85, 0, NULL, '', 2, 2000, 15, 1, 1);

-- Partner integration definitions
CREATE TABLE partner_integrations
(
    integration_id             INTEGER PRIMARY KEY,
    partner_name               TEXT,
    api_endpoint_url           TEXT,
    authentication_method_code INTEGER,
    api_key                    TEXT,
    secret_key                 TEXT,
    oauth_token_url            TEXT,
    webhook_url                TEXT,
    data_format_code           INTEGER,
    request_rate_limit_per_min INTEGER,
    daily_quota                INTEGER,
    is_active                  INTEGER,
    created_epoch              INTEGER,
    created_by_user_id         INTEGER,
    updated_epoch              INTEGER,
    updated_by_user_id         INTEGER,
    last_successful_sync_epoch INTEGER,
    last_error_code            INTEGER,
    error_message              TEXT,
    sync_direction_code        INTEGER,
    data_mapping_version       TEXT,
    support_contact_email      TEXT,
    support_contact_phone      TEXT,
    sla_hours                  INTEGER,
    contract_start_epoch       INTEGER,
    contract_end_epoch         INTEGER,
    billing_plan_code          INTEGER,
    cost_per_month_cents       INTEGER,
    usage_this_month_cents     INTEGER,
    overage_fee_cents          INTEGER,
    notes                      TEXT,
    is_test_environment        INTEGER,
    test_endpoint_url          TEXT,
    test_api_key               TEXT,
    test_secret_key            TEXT,
    deprecation_date_epoch     INTEGER,
    replacement_integration_id INTEGER,
    compliance_certification_code INTEGER,
    last_audit_epoch           INTEGER,
    audit_user_id              INTEGER
);
INSERT INTO partner_integrations VALUES (6001,'AcmeAnalytics','https://api.acme.com/data',1,'APIKEY123','SECRET123','https://auth.acme.com/token','https://hooks.acme.com/notify',1,500,10000,1,1672400000,100,1672500000,101,1672590000,NULL,'',2,'v1.0','support@acme.com','1234567890',24,1672405000,1703936000,2,5000,3000,0,'',0,'','',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO partner_integrations VALUES (6002,'BetaCRM','https://api.beta-crm.com/records',2,'APIKEY456','SECRET456','https://auth.beta-crm.com/token','https://hooks.beta-crm.com/notify',2,300,5000,1,1672410000,101,1672510000,102,1672600000,1,'AuthFailed',3,'v2.1','support@beta-crm.com','0987654321',12,1672415000,1704032000,3,7000,4500,200,'',0,'','',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO partner_integrations VALUES (6003,'GammaPayments','https://payments.gamma.com/api',3,'APIKEY789','SECRET789','https://auth.gamma.com/token','https://hooks.gamma.com/notify',3,200,8000,1,1672420000,102,1672520000,103,1672610000,2,'Timeout',1,'v3.3','support@gamma.com','1122334455',48,1672425000,1704128000,1,9000,6000,500,'',0,'','',NULL,NULL,NULL,NULL,NULL,NULL);

-- System audit trail entries
CREATE TABLE audit_trail
(
    audit_id                   INTEGER PRIMARY KEY,
    event_timestamp_epoch      INTEGER,
    actor_user_id              INTEGER,
    actor_role_code            INTEGER,
    action_type_code           INTEGER,
    target_table_name          TEXT,
    target_record_id           INTEGER,
    changed_columns            TEXT,
    old_values                 TEXT,
    new_values                 TEXT,
    ip_address                 TEXT,
    user_agent                 TEXT,
    source_application_code    INTEGER,
    is_successful              INTEGER,
    error_code                 INTEGER,
    error_message              TEXT,
    session_id                 INTEGER,
    correlation_id             TEXT,
    notes                      TEXT,
    severity_level_code        INTEGER,
    remediation_required       INTEGER,
    remediation_deadline_epoch INTEGER,
    completed_epoch            INTEGER,
    completed_by_user_id       INTEGER,
    audit_status_code          INTEGER,
    reviewed_by_user_id        INTEGER,
    review_timestamp_epoch     INTEGER,
    compliance_flag_code       INTEGER,
    retention_policy_days      INTEGER,
    is_archived                INTEGER,
    archive_epoch              INTEGER,
    external_reference_id      TEXT,
    related_audit_id           INTEGER,
    notification_sent          INTEGER,
    notification_timestamp_epoch INTEGER,
    notification_method_code   INTEGER,
    affected_system_code       INTEGER,
    impacted_user_id           INTEGER,
    risk_score                 INTEGER,
    justification              TEXT
);
INSERT INTO audit_trail VALUES (8001,1672500000,10,1,1,'users',20,'displayname,location','John Doe','John D', '192.168.1.10','Mozilla/5.0',2,1,NULL,'',5001,'CORR001','',3,0,NULL,NULL,NULL,1,100,1672505000,2,0,30,0,NULL,NULL,0,NULL,NULL,0,0,0,'');
INSERT INTO audit_trail VALUES (8002,1672600000,11,2,2,'posts',9001,'title,body','Old Title','New Title','192.168.1.11','Chrome/90',3,1,NULL,'',5002,'CORR002','',2,0,NULL,NULL,NULL,2,101,1672605000,3,0,60,0,NULL,NULL,0,NULL,NULL,0,0,0,'');
INSERT INTO audit_trail VALUES (8003,1672700000,12,3,3,'votes',3001,'voteTypeId','2','3','192.168.1.12','Safari/14',4,0,101,'ConstraintViolation',5003,'CORR003','',4,1,1672800000,NULL,NULL,3,102,1672705000,4,1,90,0,NULL,NULL,0,NULL,NULL,0,0,0,'');