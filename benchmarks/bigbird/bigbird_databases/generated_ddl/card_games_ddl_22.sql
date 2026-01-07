-- Production facilities information
CREATE TABLE production_facilities (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    facility_name TEXT,
    location_city TEXT,
    location_country TEXT,
    capacity_units INTEGER,
    operating_since DATE,
    manager_name TEXT,
    contact_number TEXT,
    email_address TEXT,
    safety_certified INTEGER,
    environmental_score REAL,
    shift_count INTEGER,
    machine_count INTEGER,
    maintenance_budget REAL,
    energy_consumption_kwh REAL,
    water_usage_liters REAL,
    waste_recycled_percent REAL,
    iso_standard TEXT,
    remote_monitoring INTEGER,
    notes TEXT
);
INSERT INTO production_facilities (facility_name,location_city,location_country,capacity_units,operating_since,manager_name,contact_number,email_address,safety_certified,environmental_score,shift_count,machine_count,maintenance_budget,energy_consumption_kwh,water_usage_liters,waste_recycled_percent,iso_standard,remote_monitoring,notes) VALUES ('AlphaPrint','Seattle','USA',50000,'John Doe','5551234','john.doe@example.com',1,92.5,3,120,250000.00,3500000.00,2000000.00,85.0,'ISO9001',1,'First facility');
INSERT INTO production_facilities (facility_name,location_city,location_country,capacity_units,operating_since,manager_name,contact_number,email_address,safety_certified,environmental_score,shift_count,machine_count,maintenance_budget,energy_consumption_kwh,water_usage_liters,waste_recycled_percent,iso_standard,remote_monitoring,notes) VALUES ('BetaForge','Dublin','Ireland',30000,'2015-06-20','Emma Smith','5555678','emma.smith@example.com',1,88.0,2,80,150000.00,2100000.00,1100000.00,78.5,'ISO14001',0,'Secondary site');
INSERT INTO production_facilities (facility_name,location_city,location_country,capacity_units,operating_since,manager_name,contact_number,email_address,safety_certified,environmental_score,shift_count,machine_count,maintenance_budget,energy_consumption_kwh,water_usage_liters,waste_recycled_percent,iso_standard,remote_monitoring,notes) VALUES ('GammaWorks','Tokyo','Japan',75000,'2010-03-15','Ken Tanaka','5559012','ken.tanaka@example.com',1,94.2,4,150,400000.00,5000000.00,2500000.00,90.0,'ISO45001',1,'High output plant');

-- Logistics routes between distribution centers
CREATE TABLE logistics_routes (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    route_code TEXT,
    origin_center TEXT,
    destination_center TEXT,
    distance_km INTEGER,
    average_transit_days INTEGER,
    transport_mode TEXT,
    carrier_name TEXT,
    max_load_tons REAL,
    min_load_tons REAL,
    fuel_type TEXT,
    carbon_emission_kg REAL,
    insurance_coverage_usd REAL,
    customs_clearance_required INTEGER,
    temperature_controlled INTEGER,
    hazardous_material_allowed INTEGER,
    sla_hours INTEGER,
    route_status TEXT,
    last_inspection_date DATE,
    notes TEXT,
    created_by TEXT,
    created_at DATE
);
INSERT INTO logistics_routes (route_code,origin_center,destination_center,distance_km,average_transit_days,transport_mode,carrier_name,max_load_tons,min_load_tons,fuel_type,carbon_emission_kg,insurance_coverage_usd,customs_clearance_required,temperature_controlled,hazardous_material_allowed,sla_hours,route_status,last_inspection_date,notes,created_by,created_at) VALUES ('R001','DC_NY','DC_LA',4500,5,'Truck','FastTrans',30.5,5.0,'Diesel',1200.0,50000,0,0,0,72,'Active','2024-11-01','NorthSouth corridor','admin','2023-01-10');
INSERT INTO logistics_routes (route_code,origin_center,destination_center,distance_km,average_transit_days,transport_mode,carrier_name,max_load_tons,min_load_tons,fuel_type,carbon_emission_kg,insurance_coverage_usd,customs_clearance_required,temperature_controlled,hazardous_material_allowed,sla_hours,route_status,last_inspection_date,notes,created_by,created_at) VALUES ('R002','DC_HK','DC_SG',2600,3,'Air','SkyCargo',15.0,2.0,'JetA',800.0,200000,1,1,0,48,'Active','2024-10-15','Priority express route','logistics','2023-03-22');
INSERT INTO logistics_routes (route_code,origin_center,destination_center,distance_km,average_transit_days,transport_mode,carrier_name,max_load_tons,min_load_tons,fuel_type,carbon_emission_kg,insurance_coverage_usd,customs_clearance_required,temperature_controlled,hazardous_material_allowed,sla_hours,route_status,last_inspection_date,notes,created_by,created_at) VALUES ('R003','DC_BER','DC_MAD',1800,2,'Rail','EuroRail',40.0,10.0,'Electric',500.0,75000,0,0,1,96,'Maintenance','2024-09-20','Seasonal maintenance planned','ops','2023-07-05');

-- Detailed marketing campaign metrics
CREATE TABLE marketing_campaigns_detail (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    campaign_name TEXT,
    start_date DATE,
    end_date DATE,
    budget_usd REAL,
    target_audience TEXT,
    channel_primary TEXT,
    channel_secondary TEXT,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    cpc REAL,
    cpm REAL,
    ctr REAL,
    conversion_rate REAL,
    roi_percent REAL,
    creative_type TEXT,
    landing_page TEXT,
    geographic_scope TEXT,
    language TEXT,
    approved_by TEXT,
    approval_date DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO marketing_campaigns_detail (campaign_name,start_date,end_date,budget_usd,target_audience,channel_primary,channel_secondary,impressions,clicks,conversions,cpc,cpm,ctr,conversion_rate,roi_percent,creative_type,landing_page,geographic_scope,language,approved_by,approval_date,notes,created_at,updated_at) VALUES ('SpringLaunch','2024-03-01','2024-04-30',250000.00,'Collectors','Social','Email',1200000,45000,8000,5.55,208.33,3.75,0.18,2.22,150.0,'Video','spring2024.html','NorthAmerica','English','marketing_mgr','2024-02-20','Successful first wave','2024-02-01','2024-04-30');
INSERT INTO marketing_campaigns_detail (campaign_name,start_date,end_date,budget_usd,target_audience,channel_primary,channel_secondary,impressions,clicks,conversions,cpc,cpm,ctr,conversion_rate,roi_percent,creative_type,landing_page,geographic_scope,language,approved_by,approval_date,notes,created_at,updated_at) VALUES ('HolidayBoost','2024-11-15','2024-12-31',500000.00,'CasualPlayers','TV','Digital','3000000',90000,15000,5.56,166.67,3.00,0.17,1.67,200.0,'Banner','holiday2024.html','Global','Multiple','senior_dir','2024-11-01','Focus on holiday season','2024-10-20','2025-01-05');
INSERT INTO marketing_campaigns_detail (campaign_name,start_date,end_date,budget_usd,target_audience,channel_primary,channel_secondary,impressions,clicks,conversions,cpc,cpm,ctr,conversion_rate,roi_percent,creative_type,landing_page,geographic_scope,language,approved_by,approval_date,notes,created_at,updated_at) VALUES ('SummerTour','2024-06-01','2024-08-31',300000.00,'Streamers','Online','Social','1800000',72000,12000,4.17,166.67,4.00,0.17,1.67,180.0,'LiveStream','summertour.html','Europe','English','campaign_lead','2024-05-15','Coordinated with event schedule','2024-05-01','2024-09-01');

-- Community forum activity metrics
CREATE TABLE community_forum_metrics (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    forum_name TEXT,
    metric_date DATE,
    active_users INTEGER,
    new_posts INTEGER,
    new_threads INTEGER,
    replies INTEGER,
    average_post_length INTEGER,
    peak_concurrent_users INTEGER,
    moderation_actions INTEGER,
    spam_reports INTEGER,
    average_response_time_seconds REAL,
    top_contributor TEXT,
    top_thread_id INTEGER,
    content_flagged INTEGER,
    sentiment_score REAL,
    language_distribution TEXT,
    device_type_distribution TEXT,
    platform TEXT,
    region TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO community_forum_metrics (forum_name,metric_date,active_users,new_posts,new_threads,replies,average_post_length,peak_concurrent_users,moderation_actions,spam_reports,average_response_time_seconds,top_contributor,top_thread_id,content_flagged,sentiment_score,language_distribution,device_type_distribution,platform,region,notes,created_at,updated_at) VALUES ('MagicTalk','2024-10-01',4520,1230,340,980,210,600,45,12,45.2,'AliceW',5872,5,0.78,'EN:80,DE:10,FR:5,ES:5','Desktop:70,Mobile:30','Web','NorthAmerica','Daily snapshot','2024-10-01','2024-10-01');
INSERT INTO community_forum_metrics (forum_name,metric_date,active_users,new_posts,new_threads,replies,average_post_length,peak_concurrent_users,moderation_actions,spam_reports,average_response_time_seconds,top_contributor,top_thread_id,content_flagged,sentiment_score,language_distribution,device_type_distribution,platform,region,notes,created_at,updated_at) VALUES ('MagicTalk','2024-10-02',4680,1350,360,1020,215,620,50,9,42.5,'BobK',6031,3,0.81,'EN:85,DE:8,FR:4,ES:3','Desktop:68,Mobile:32','Web','NorthAmerica','Daily snapshot','2024-10-02','2024-10-02');
INSERT INTO community_forum_metrics (forum_name,metric_date,active_users,new_posts,new_threads,replies,average_post_length,peak_concurrent_users,moderation_actions,spam_reports,average_response_time_seconds,top_contributor,top_thread_id,content_flagged,sentiment_score,language_distribution,device_type_distribution,platform,region,notes,created_at,updated_at) VALUES ('MagicTalk','2024-10-03',4600,1280,350,990,212,610,48,11,44.0,'CharlieM',5950,4,0.79,'EN:82,DE:9,FR:5,ES:4','Desktop:69,Mobile:31','Web','NorthAmerica','Daily snapshot','2024-10-03','2024-10-03');

-- Digital platform feature catalog
CREATE TABLE digital_platform_features (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    platform_name TEXT,
    feature_code TEXT,
    feature_name TEXT,
    description TEXT,
    release_version TEXT,
    release_date DATE,
    is_experimental INTEGER,
    is_deprecated INTEGER,
    supported_languages TEXT,
    max_concurrent_users INTEGER,
    avg_latency_ms REAL,
    requires_authentication INTEGER,
    ui_category TEXT,
    backend_service TEXT,
    documentation_url TEXT,
    internal_owner TEXT,
    status TEXT,
    last_updated DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO digital_platform_features (platform_name,feature_code,feature_name,description,release_version,release_date,is_experimental,is_deprecated,supported_languages,max_concurrent_users,avg_latency_ms,requires_authentication,ui_category,backend_service,documentation_url,internal_owner,status,last_updated,notes,created_at,updated_at) VALUES ('Arena','FT001','Deck Builder','Allows users to construct decks','2.4','2024-02-15',0,0,'EN,DE,FR',200000,85.5,1,'Construction','DeckService','http://docs.example.com/ft001','prod_team','Active','2024-09-20','Stable release','2024-01-01','2024-09-20');
INSERT INTO digital_platform_features (platform_name,feature_code,feature_name,description,release_version,release_date,is_experimental,is_deprecated,supported_languages,max_concurrent_users,avg_latency_ms,requires_authentication,ui_category,backend_service,documentation_url,internal_owner,status,last_updated,notes,created_at,updated_at) VALUES ('Arena','FT002','Live Replay','Replay recent matches in real time','2.5','2024-05-10',1,0,'EN,ES',150000,95.0,1,'Playback','ReplayService','http://docs.example.com/ft002','dev_ops','Beta','2024-09-25','Beta testing','2024-03-01','2024-09-25');
INSERT INTO digital_platform_features (platform_name,feature_code,feature_name,description,release_version,release_date,is_experimental,is_deprecated,supported_languages,max_concurrent_users,avg_latency_ms,requires_authentication,ui_category,backend_service,documentation_url,internal_owner,status,last_updated,notes,created_at,updated_at) VALUES ('Arena','FT003','Marketplace','Facilitate card trading between users','2.3','2023-11-01',0,0,'EN,DE,FR,JP',120000,78.0,1,'Commerce','MarketService','http://docs.example.com/ft003','biz_team','Active','2024-09-18','High usage','2023-10-01','2024-09-18');

-- Broadcast partner agreements
CREATE TABLE broadcast_partner_agreements (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    partner_name TEXT,
    agreement_code TEXT,
    start_date DATE,
    end_date DATE,
    broadcast_region TEXT,
    exclusive_rights INTEGER,
    revenue_share_percent REAL,
    fixed_fee_usd REAL,
    content_type TEXT,
    delivery_method TEXT,
    technical_requirements TEXT,
    compliance_requirements TEXT,
    contact_person TEXT,
    contact_email TEXT,
    status TEXT,
    renewal_option INTEGER,
    notes TEXT,
    created_by TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO broadcast_partner_agreements (partner_name,agreement_code,start_date,end_date,broadcast_region,exclusive_rights,revenue_share_percent,fixed_fee_usd,content_type,delivery_method,technical_requirements,compliance_requirements,contact_person,contact_email,status,renewal_option,notes,created_by,created_at,updated_at) VALUES ('StreamWorld','BP001','2023-01-01','2025-12-31','Global',1,30.0,50000.00,'Live','HLS','1080p60','GDPR','Laura Lee','laura.lee@streamworld.com','Active',1,'First major partner','legal','2022-12-01','2023-01-01');
INSERT INTO broadcast_partner_agreements (partner_name,agreement_code,start_date,end_date,broadcast_region,exclusive_rights,revenue_share_percent,fixed_fee_usd,content_type,delivery_method,technical_requirements,compliance_requirements,contact_person,contact_email,status,renewal_option,notes,created_by,created_at,updated_at) VALUES ('GameCast','BP002','2024-06-01','2026-05-31','Europe',0,25.0,30000.00,'Highlights','DASH','720p30','EUDataLaw','Mark Chen','mark.chen@gamecast.eu','Pending',0,'Negotiations ongoing','legal','2024-05-15','2024-06-01');
INSERT INTO broadcast_partner_agreements (partner_name,agreement_code,start_date,end_date,broadcast_region,exclusive_rights,revenue_share_percent,fixed_fee_usd,content_type,delivery_method,technical_requirements,compliance_requirements,contact_person,contact_email,status,renewal_option,notes,created_by,created_at,updated_at) VALUES ('ViewLive','BP003','2024-01-15','2027-01-14','Asia',0,20.0,40000.00,'Replays','RTMP','1080p30','LocalRegulations','Sophie Wang','sophie.wang@viewlive.asia','Active',1,'Extended for 3 years','legal','2023-12-10','2024-01-15');

-- Event security incident logs
CREATE TABLE event_security_logs (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    incident_timestamp DATE,
    incident_type TEXT,
    severity_level INTEGER,
    description TEXT,
    reported_by TEXT,
    action_taken TEXT,
    resolved INTEGER,
    resolution_timestamp DATE,
    notes TEXT,
    location TEXT,
    affected_areas TEXT,
    equipment_involved TEXT,
    external_agency_notified INTEGER,
    follow_up_required INTEGER,
    follow_up_due DATE,
    created_at DATE,
    updated_at DATE
);
INSERT INTO event_security_logs (event_id,incident_timestamp,incident_type,severity_level,description,reported_by,action_taken,resolved,resolution_timestamp,notes,location,affected_areas,equipment_involved,external_agency_notified,follow_up_required,follow_up_due,created_at,updated_at) VALUES (101,'2024-09-12','Access Breach',4,'Unauthorized entry at backstage','SecurityGuard1','Patrolled area and secured door',1,'2024-09-12','No injuries','Main Hall','Backstage','DoorSensor',0,0,NULL,'2024-09-12','2024-09-12');
INSERT INTO event_security_logs (event_id,incident_timestamp,incident_type,severity_level,description,reported_by,action_taken,resolved,resolution_timestamp,notes,location,affected_areas,equipment_involved,external_agency_notified,follow_up_required,follow_up_due,created_at,updated_at) VALUES (102,'2024-10-05','Fire Alarm',3,'Smoke detected near food court','StaffMember7','Evacuated venue, fire unit dispatched',1,'2024-10-05','False alarm after inspection','Food Court','North Wing','SmokeDetector',1,1,'2024-10-20','2024-10-05','2024-10-05');
INSERT INTO event_security_logs (event_id,incident_timestamp,incident_type,severity_level,description,reported_by,action_taken,resolved,resolution_timestamp,notes,location,affected_areas,equipment_involved,external_agency_notified,follow_up_required,follow_up_due,created_at,updated_at) VALUES (103,'2024-11-20','Medical Emergency',5,'Attendee fainted near stage','Volunteer12','EMT called, provided aid',1,'2024-11-20','Recovered and left venue','Stage Area','Main Stage','FirstAidKit',1,0,NULL,'2024-11-20','2024-11-20');

-- Player financial holdings
CREATE TABLE player_financial_holdings (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    currency TEXT,
    balance REAL,
    frozen_amount REAL,
    last_deposit_date DATE,
    last_withdrawal_date DATE,
    total_deposits REAL,
    total_withdrawals REAL,
    bonus_points INTEGER,
    loyalty_tier TEXT,
    account_status TEXT,
    verification_level INTEGER,
    tax_residency_country TEXT,
    tax_id_number TEXT,
    preferred_payment_method TEXT,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    risk_score REAL,
    compliance_flag INTEGER
);
INSERT INTO player_financial_holdings (player_id,currency,balance,frozen_amount,last_deposit_date,last_withdrawal_date,total_deposits,total_withdrawals,bonus_points,loyalty_tier,account_status,verification_level,tax_residency_country,tax_id_number,preferred_payment_method,created_at,updated_at,notes,risk_score,compliance_flag) VALUES (2001,'USD',1500.75,0.00,'2024-08-01','2024-09-10',5000.00,3500.00,250,'Gold','Active',3,'US','123456789','CreditCard','2024-07-01','2024-09-12','No issues',0.12,0);
INSERT INTO player_financial_holdings (player_id,currency,balance,frozen_amount,last_deposit_date,last_withdrawal_date,total_deposits,total_withdrawals,bonus_points,loyalty_tier,account_status,verification_level,tax_residency_country,tax_id_number,preferred_payment_method,created_at,updated_at,notes,risk_score,compliance_flag) VALUES (2002,'EUR',320.40,50.00,'2024-06-15','2024-09-05',1200.00,900.00,120,'Silver','Active',2,'DE','DE987654321','BankTransfer','2024-05-20','2024-09-06','Partial freeze due to suspicious activity',0.45,1);
INSERT INTO player_financial_holdings (player_id,currency,balance,frozen_amount,last_deposit_date,last_withdrawal_date,total_deposits,total_withdrawals,bonus_points,loyalty_tier,account_status,verification_level,tax_residency_country,tax_id_number,preferred_payment_method,created_at,updated_at,notes,risk_score,compliance_flag) VALUES (2003,'JPY',80000.00,0.00,'2024-07-20','2024-09-01',200000.00,120000.00,500,'Platinum','Active',4,'JP','JP11223344','DigitalWallet','2024-06-01','2024-09-02','High volume account',0.05,0);

-- Artwork license usage statistics
CREATE TABLE artwork_license_usage (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    artwork_id INTEGER,
    license_type TEXT,
    usage_start_date DATE,
    usage_end_date DATE,
    total_views INTEGER,
    total_downloads INTEGER,
    revenue_generated_usd REAL,
    exclusive INTEGER,
    region_allowed TEXT,
    platform_allowed TEXT,
    attribution_required INTEGER,
    last_audit_date DATE,
    audit_status TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    compliance_flag INTEGER,
    royalty_rate_percent REAL,
    partner_name TEXT
);
INSERT INTO artwork_license_usage (artwork_id,license_type,usage_start_date,usage_end_date,total_views,total_downloads,revenue_generated_usd,exclusive,region_allowed,platform_allowed,attribution_required,last_audit_date,audit_status,notes,created_at,updated_at,compliance_flag,royalty_rate_percent,partner_name) VALUES (501,'Standard','2024-01-01','2024-12-31',25000,1500,8000.00,0,'Global','Web,Mobile',1,'2024-09-01','Passed','No issues','2024-01-01','2024-09-02',0,10.0,'ArtCo');
INSERT INTO artwork_license_usage (artwork_id,license_type,usage_start_date,usage_end_date,total_views,total_downloads,revenue_generated_usd,exclusive,region_allowed,platform_allowed,attribution_required,last_audit_date,audit_status,notes,created_at,updated_at,compliance_flag,royalty_rate_percent,partner_name) VALUES (502,'Exclusive','2024-03-15','2025-03-14',12000,800,5000.00,1,'EU','Print',0,'2024-09-05','Pending','Awaiting audit','2024-03-15','2024-09-05',1,15.0,'PrintWorks');
INSERT INTO artwork_license_usage (artwork_id,license_type,usage_start_date,usage_end_date,total_views,total_downloads,revenue_generated_usd,exclusive,region_allowed,platform_allowed,attribution_required,last_audit_date,audit_status,notes,created_at,updated_at,compliance_flag,royalty_rate_percent,partner_name) VALUES (503,'RoyaltyFree','2024-05-01','2024-10-31',45000,3000,12000.00,0,'NA','Web',1,'2024-09-10','Passed','High engagement','2024-05-01','2024-09-10',0,5.0,'DigitalArts');

-- Regulation compliance audit logs
CREATE TABLE regulation_compliance_audits (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    audit_date DATE,
    audit_type TEXT,
    department TEXT,
    auditor_name TEXT,
    findings TEXT,
    severity_level INTEGER,
    corrective_action TEXT,
    action_due_date DATE,
    status TEXT,
    follow_up_required INTEGER,
    follow_up_date DATE,
    documentation_link TEXT,
    risk_score REAL,
    compliance_score REAL,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    audit_scope TEXT,
    regulatory_body TEXT
);
INSERT INTO regulation_compliance_audits (audit_date,audit_type,department,auditor_name,findings,severity_level,corrective_action,action_due_date,status,follow_up_required,follow_up_date,documentation_link,risk_score,compliance_score,notes,created_at,updated_at,audit_scope,regulatory_body) VALUES ('2024-08-15','Data Privacy','IT','Anna Lee','Missing encryption on backup files',4,'Implement AES-256 encryption', '2024-09-30','Open',1,'2024-10-15','http://docs.example.com/audit1','0.78','72','High priority', '2024-08-15','2024-08-15','Backup Systems','GDPR');
INSERT INTO regulation_compliance_audits (audit_date,audit_type,department,auditor_name,findings,severity_level,corrective_action,action_due_date,status,follow_up_required,follow_up_date,documentation_link,risk_score,compliance_score,notes,created_at,updated_at,audit_scope,regulatory_body) VALUES ('2024-07-10','Financial Reporting','Finance','Mark Patel','Late filing of quarterly report',3,'Submit missing report', '2024-08-01','Closed',0,NULL,'http://docs.example.com/audit2','0.45','85','Resolved promptly', '2024-07-10','2024-08-02','Reporting','SEC');
INSERT INTO regulation_compliance_audits (audit_date,audit_type,department,auditor_name,findings,severity_level,corrective_action,action_due_date,status,follow_up_required,follow_up_date,documentation_link,risk_score,compliance_score,notes,created_at,updated_at,audit_scope,regulatory_body) VALUES ('2024-09-05','Safety','Operations','Luis Gomez','Insufficient signage in warehouse',2,'Install proper safety signs', '2024-09-20','Open',1,'2024-10-05','http://docs.example.com/audit3','0.30','90','Pending installation', '2024-09-05','2024-09-05','Facility Safety','OSHA');

-- Supplier contract performance metrics
CREATE TABLE supplier_contract_performance (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    supplier_id INTEGER,
    contract_code TEXT,
    effective_start DATE,
    effective_end DATE,
    performance_score REAL,
    on_time_delivery_percent REAL,
    quality_defect_rate REAL,
    compliance_incidents INTEGER,
    penalty_amount_usd REAL,
    renewal_option INTEGER,
    contract_status TEXT,
    last_review_date DATE,
    next_review_date DATE,
    contact_person TEXT,
    contact_email TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    region TEXT,
    product_category TEXT
);
INSERT INTO supplier_contract_performance (supplier_id,contract_code,effective_start,effective_end,performance_score,on_time_delivery_percent,quality_defect_rate,compliance_incidents,penalty_amount_usd,renewal_option,contract_status,last_review_date,next_review_date,contact_person,contact_email,notes,created_at,updated_at,region,product_category) VALUES (301,'SC001','2023-01-01','2025-12-31',88.5,96.0,1.2,0,0.00,1,'Active','2024-06-01','2025-06-01','Sarah Liu','sarah.liu@supplier.com','Consistent performance','2023-01-01','2024-06-01','Asia','Printing');
INSERT INTO supplier_contract_performance (supplier_id,contract_code,effective_start,effective_end,performance_score,on_time_delivery_percent,quality_defect_rate,compliance_incidents,penalty_amount_usd,renewal_option,contract_status,last_review_date,next_review_date,contact_person,contact_email,notes,created_at,updated_at,region,product_category) VALUES (302,'SC002','2022-07-15','2024-07-14',72.0,85.0,3.5,2,1500.00,0,'Expired','2024-05-20','2024-06-20','Tom Reed','tom.reed@supplier.com','Issues with late shipments','2022-07-15','2024-05-20','Europe','Packaging');
INSERT INTO supplier_contract_performance (supplier_id,contract_code,effective_start,effective_end,performance_score,on_time_delivery_percent,quality_defect_rate,compliance_incidents,penalty_amount_usd,renewal_option,contract_status,last_review_date,next_review_date,contact_person,contact_email,notes,created_at,updated_at,region,product_category) VALUES (303,'SC003','2024-01-01','2026-12-31',95.0,99.0,0.5,0,0.00,1,'Active','2024-09-01','2025-09-01','Emily Chen','emily.chen@supplier.com','Excellent quality','2024-01-01','2024-09-01','NorthAmerica','DigitalHardware');

-- Environmental sensor readings per venue
CREATE TABLE venue_environmental_readings (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    sensor_id TEXT,
    reading_timestamp DATE,
    temperature_celsius REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    noise_db REAL,
    occupancy INTEGER,
    air_quality_index INTEGER,
    light_lux REAL,
    vibration_level REAL,
    battery_level_percent INTEGER,
    sensor_status TEXT,
    maintenance_due DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    firmware_version TEXT,
    calibration_date DATE
);
INSERT INTO venue_environmental_readings (venue_id,sensor_id,reading_timestamp,temperature_celsius,humidity_percent,co2_ppm,noise_db,occupancy,air_quality_index,light_lux,vibration_level,battery_level_percent,sensor_status,maintenance_due,notes,created_at,updated_at,firmware_version,calibration_date) VALUES (10,'TMP001','2024-09-20',22.5,45.0,420,55.0,120,42,350.0,0.02,95,'OK','2025-01-15','Regular monitoring','2024-09-20','2024-09-20','v1.3','2024-06-01');
INSERT INTO venue_environmental_readings (venue_id,sensor_id,reading_timestamp,temperature_celsius,humidity_percent,co2_ppm,noise_db,occupancy,air_quality_index,light_lux,vibration_level,battery_level_percent,sensor_status,maintenance_due,notes,created_at,updated_at,firmware_version,calibration_date) VALUES (11,'HMD002','2024-09-20',19.8,50.0,380,48.0,80,38,300.0,0.01,88,'OK','2025-02-20','All values normal','2024-09-20','2024-09-20','v2.0','2024-05-15');
INSERT INTO venue_environmental_readings (venue_id,sensor_id,reading_timestamp,temperature_celsius,humidity_percent,co2_ppm,noise_db,occupancy,air_quality_index,light_lux,vibration_level,battery_level_percent,sensor_status,maintenance_due,notes,created_at,updated_at,firmware_version,calibration_date) VALUES (12,'CO2A03','2024-09-20',21.0,48.0,600,60.0,200,55,400.0,0.03,80,'Alert','2024-12-01','High CO2 level, investigate ventilation','2024-09-20','2024-09-20','v1.8','2024-04-10');

-- Digital asset collection snapshots
CREATE TABLE digital_asset_collection_snapshots (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    collection_name TEXT,
    snapshot_timestamp DATE,
    total_assets INTEGER,
    total_storage_gb REAL,
    unique_creators INTEGER,
    most_common_format TEXT,
    average_asset_size_mb REAL,
    total_downloads INTEGER,
    total_views INTEGER,
    licensing_status TEXT,
    featured_asset_id INTEGER,
    checksum_algorithm TEXT,
    integrity_passed INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    source_system TEXT,
    retention_policy TEXT,
    access_level TEXT,
    audit_trail TEXT
);
INSERT INTO digital_asset_collection_snapshots (collection_name,snapshot_timestamp,total_assets,total_storage_gb,unique_creators,most_common_format,average_asset_size_mb,total_downloads,total_views,licensing_status,featured_asset_id,checksum_algorithm,integrity_passed,notes,created_at,updated_at,source_system,retention_policy,access_level,audit_trail) VALUES ('CardArt','2024-09-01',12500,750.5,45,'PNG',60.2,34000,125000,'Licensed',5021,'SHA256',1,'Quarterly snapshot','2024-09-01','2024-09-01','AssetMgmt','30days','Public','audit123');
INSERT INTO digital_asset_collection_snapshots (collection_name,snapshot_timestamp,total_assets,total_storage_gb,unique_creators,most_common_format,average_asset_size_mb,total_downloads,total_views,licensing_status,featured_asset_id,checksum_algorithm,integrity_passed,notes,created_at,updated_at,source_system,retention_policy,access_level,audit_trail) VALUES ('PromoVideos','2024-09-01',845,4200.0,12,'MP4',5000.0,15000,60000,'RoyaltyFree',784,'MD5',1,'Snapshot before campaign','2024-09-01','2024-09-01','MediaHub','90days','Internal','audit124');
INSERT INTO digital_asset_collection_snapshots (collection_name,snapshot_timestamp,total_assets,total_storage_gb,unique_creators,most_common_format,average_asset_size_mb,total_downloads,total_views,licensing_status,featured_asset_id,checksum_algorithm,integrity_passed,notes,created_at,updated_at,source_system,retention_policy,access_level,audit_trail) VALUES ('EventPhotos','2024-09-01',2300,1200.0,30,'JPEG',520.0,25000,95000,'Exclusive',3105,'SHA1',1,'End of season','2024-09-01','2024-09-01','PhotoRepo','180days','Restricted','audit125');