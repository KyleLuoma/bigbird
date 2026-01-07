-- Card supply chain information
CREATE TABLE card_supply_chain (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    supplier_name TEXT,
    batch_number TEXT,
    production_date DATE,
    material_type TEXT,
    paper_weight INTEGER,
    paper_gsm INTEGER,
    ink_type TEXT,
    foil_coating TEXT,
    embossing TEXT,
    cut_shape TEXT,
    packaging_type TEXT,
    shipping_method TEXT,
    origin_country TEXT,
    destination_warehouse TEXT,
    customs_status TEXT,
    quality_check_passed INTEGER,
    defect_rate REAL,
    notes TEXT,
    estimated_cost_usd REAL,
    actual_cost_usd REAL,
    created_at DATE
);
INSERT INTO card_supply_chain (supplier_name,batch_number,production_date,material_type,paper_weight,paper_gsm,ink_type,foil_coating,embossing,cut_shape,packaging_type,shipping_method,origin_country,destination_warehouse,customs_status,quality_check_passed,defect_rate,notes,estimated_cost_usd,actual_cost_usd,created_at) VALUES ('AlphaPrints','BATCH001','2023-02-15','Glossy',200,120,'UV','Metallic','None','Rectangle','Box','Air','US','WH001','Cleared',1,0.02,'First batch',5000.00,5200.00,'2023-02-15');
INSERT INTO card_supply_chain (supplier_name,batch_number,production_date,material_type,paper_weight,paper_gsm,ink_type,foil_coating,embossing,cut_shape,packaging_type,shipping_method,origin_country,destination_warehouse,customs_status,quality_check_passed,defect_rate,notes,estimated_cost_usd,actual_cost_usd,created_at) VALUES ('BetaSheets','BATCH002','2023-03-10','Matte',180,110,'Soy','None','Raised','Square','Envelope','Sea','CN','WH002','Pending',0,0.05,'Delay due to customs',4500.00,4700.00,'2023-03-10');
INSERT INTO card_supply_chain (supplier_name,batch_number,production_date,material_type,paper_weight,paper_gsm,ink_type,foil_coating,embossing,cut_shape,packaging_type,shipping_method,origin_country,destination_warehouse,customs_status,quality_check_passed,defect_rate,notes,estimated_cost_usd,actual_cost_usd,created_at) VALUES ('GammaIndustries','BATCH003','2023-04-05','Silk',210,130,'Water','Holographic','None','Rounded','Crate','Land','DE','WH003','Cleared',1,0.01,'All good',6000.00,5900.00,'2023-04-05');

-- Financial data for each set
CREATE TABLE set_financials (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    budget_usd REAL,
    actual_spend_usd REAL,
    marketing_spend_usd REAL,
    licensing_fees_usd REAL,
    printing_cost_usd REAL,
    distribution_cost_usd REAL,
    profit_usd REAL,
    roi_percent REAL,
    forecast_sales_usd REAL,
    actual_sales_usd REAL,
    currency TEXT,
    fiscal_year TEXT,
    approved_by TEXT,
    finance_manager TEXT,
    audit_status TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    last_review_date DATE,
    compliance_flag INTEGER
);
INSERT INTO set_financials (set_code,budget_usd,actual_spend_usd,marketing_spend_usd,licensing_fees_usd,printing_cost_usd,distribution_cost_usd,profit_usd,roi_percent,forecast_sales_usd,actual_sales_usd,currency,fiscal_year,approved_by,finance_manager,audit_status,notes,created_at,updated_at,last_review_date,compliance_flag) VALUES ('KTK','1000000',950000,150000,50000,300000,200000,250000,26.3,1200000,1150000,'USD','2023','CFO_Jane','FM_John','Passed','Initial release', '2023-01-01','2023-06-01','2023-06-01',1);
INSERT INTO set_financials (set_code,budget_usd,actual_spend_usd,marketing_spend_usd,licensing_fees_usd,printing_cost_usd,distribution_cost_usd,profit_usd,roi_percent,forecast_sales_usd,actual_sales_usd,currency,fiscal_year,approved_by,finance_manager,audit_status,notes,created_at,updated_at,last_review_date,compliance_flag) VALUES ('M20','2000000',2100000,250000,80000,500000,300000,150000,7.1,2500000,2400000,'USD','2023','CFO_Mike','FM_Susan','Pending','Over budget', '2023-02-01','2023-07-01','2023-07-01',0);
INSERT INTO set_financials (set_code,budget_usd,actual_spend_usd,marketing_spend_usd,licensing_fees_usd,printing_cost_usd,distribution_cost_usd,profit_usd,roi_percent,forecast_sales_usd,actual_sales_usd,currency,fiscal_year,approved_by,finance_manager,audit_status,notes,created_at,updated_at,last_review_date,compliance_flag) VALUES ('IKO','1500000',1400000,180000,60000,350000,220000,200000,14.3,1800000,1750000,'USD','2023','CFO_Alice','FM_Rob','Passed','Stable', '2023-03-01','2023-08-01','2023-08-01',1);

-- Resource allocation for tournaments
CREATE TABLE tournament_resource_allocation (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id TEXT,
    venue_id TEXT,
    staff_count INTEGER,
    security_personnel INTEGER,
    medical_staff INTEGER,
    equipment_rental_cost_usd REAL,
    wifi_bandwidth_mbps INTEGER,
    streaming_bandwidth_mbps INTEGER,
    power_capacity_kw INTEGER,
    backup_generator_present INTEGER,
    signage_count INTEGER,
    badge_printed INTEGER,
    volunteer_hours INTEGER,
    catering_budget_usd REAL,
    transportation_budget_usd REAL,
    waste_management_plan TEXT,
    insurance_policy_number TEXT,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    compliance_checked INTEGER
);
INSERT INTO tournament_resource_allocation (tournament_id,venue_id,staff_count,security_personnel,medical_staff,equipment_rental_cost_usd,wifi_bandwidth_mbps,streaming_bandwidth_mbps,power_capacity_kw,backup_generator_present,signage_count,badge_printed,volunteer_hours,catering_budget_usd,transportation_budget_usd,waste_management_plan,insurance_policy_number,created_at,updated_at,notes,compliance_checked) VALUES ('T001','V001',150,30,10,25000,500,1000,200,1,45,1200,300,15000,8000,'Standard_plan','INS12345','2023-04-01','2023-04-10','First major event',1);
INSERT INTO tournament_resource_allocation (tournament_id,venue_id,staff_count,security_personnel,medical_staff,equipment_rental_cost_usd,wifi_bandwidth_mbps,streaming_bandwidth_mbps,power_capacity_kw,backup_generator_present,signage_count,badge_printed,volunteer_hours,catering_budget_usd,transportation_budget_usd,waste_management_plan,insurance_policy_number,created_at,updated_at,notes,compliance_checked) VALUES ('T002','V002',80,20,5,12000,300,600,120,0,20,800,150,8000,4000,'Eco_plan','INS67890','2023-05-01','2023-05-08','Regional qualifier',1);
INSERT INTO tournament_resource_allocation (tournament_id,venue_id,staff_count,security_personnel,medical_staff,equipment_rental_cost_usd,wifi_bandwidth_mbps,streaming_bandwidth_mbps,power_capacity_kw,backup_generator_present,signage_count,badge_printed,volunteer_hours,catering_budget_usd,transportation_budget_usd,waste_management_plan,insurance_policy_number,created_at,updated_at,notes,compliance_checked) VALUES ('T003','V003',200,40,15,30000,800,1500,350,1,60,1500,500,20000,12000,'Full_plan','INS54321','2023-06-01','2023-06-12','World championship',1);

-- Artwork production details
CREATE TABLE artwork_production (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    artwork_id TEXT,
    creator_name TEXT,
    style TEXT,
    software_used TEXT,
    resolution_px INTEGER,
    color_mode TEXT,
    file_format TEXT,
    file_size_mb REAL,
    creation_date DATE,
    revision_number INTEGER,
    approved_by TEXT,
    approval_date DATE,
    usage_rights TEXT,
    royalty_percentage REAL,
    license_type TEXT,
    distribution_channel TEXT,
    version_hash TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    archive_path TEXT,
    is_active INTEGER
);
INSERT INTO artwork_production (artwork_id,creator_name,style,software_used,resolution_px,color_mode,file_format,file_size_mb,creation_date,revision_number,approved_by,approval_date,usage_rights,royalty_percentage,license_type,distribution_channel,version_hash,notes,created_at,updated_at,archive_path,is_active) VALUES ('A001','JohnDoe','Fantasy','Photoshop',3000,'RGB','PNG',45.6,'2023-01-10',1,'JaneSmith','2023-01-15','Limited','5.0','Standard','Online','HASH001','Initial draft','2023-01-10','2023-01-20','/archive/art/A001','1');
INSERT INTO artwork_production (artwork_id,creator_name,style,software_used,resolution_px,color_mode,file_format,file_size_mb,creation_date,revision_number,approved_by,approval_date,usage_rights,royalty_percentage,license_type,distribution_channel,version_hash,notes,created_at,updated_at,archive_path,is_active) VALUES ('A002','AliceW','Illustrative','Illustrator',2500,'CMYK','TIFF',60.2,'2023-02-05',2,'BobLee','2023-02-12','Exclusive','7.5','Premium','Print','HASH002','Color correction','2023-02-05','2023-02-18','/archive/art/A002','1');
INSERT INTO artwork_production (artwork_id,creator_name,style,software_used,resolution_px,color_mode,file_format,file_size_mb,creation_date,revision_number,approved_by,approval_date,usage_rights,royalty_percentage,license_type,distribution_channel,version_hash,notes,created_at,updated_at,archive_path,is_active) VALUES ('A003','SamK','Digital','Procreate',4000,'RGB','JPEG',30.1,'2023-03-12',1,'EveR','2023-03-18','RoyaltyFree','0.0','Open','Web','HASH003','Final version','2023-03-12','2023-03-20','/archive/art/A003','1');

-- Game mechanics experiment records
CREATE TABLE game_mechanics_experiment (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    experiment_code TEXT,
    description TEXT,
    hypothesis TEXT,
    start_date DATE,
    end_date DATE,
    participant_count INTEGER,
    control_group_size INTEGER,
    variable_name TEXT,
    variable_value TEXT,
    outcome_metric TEXT,
    result_value REAL,
    statistical_significance REAL,
    conclusion TEXT,
    lead_researcher TEXT,
    reviewer TEXT,
    approval_status TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    data_source TEXT,
    version TEXT
);
INSERT INTO game_mechanics_experiment (experiment_code,description,hypothesis,start_date,end_date,participant_count,control_group_size,variable_name,variable_value,outcome_metric,result_value,statistical_significance,conclusion,lead_researcher,reviewer,approval_status,notes,created_at,updated_at,data_source,version) VALUES ('EXP001','Mana cost reduction test','Lower cost increases play frequency','2023-01-01','2023-01-31',500,250,'ManaCost','-1','WinRate',0.58,0.04,'Significant increase','DrSmith','ProfJones','Approved','First iteration','2023-01-01','2023-02-01','GameLogs','v1');
INSERT INTO game_mechanics_experiment (experiment_code,description,hypothesis,start_date,end_date,participant_count,control_group_size,variable_name,variable_value,outcome_metric,result_value,statistical_significance,conclusion,lead_researcher,reviewer,approval_status,notes,created_at,updated_at,data_source,version) VALUES ('EXP002','Legendary draw chance','Higher draw chance improves engagement','2023-02-01','2023-02-28',400,200,'DrawChance','+10%','AvgSessionLength',45.2,0.07,'Positive trend','DrLee','ProfKim','Pending','Awaiting data','2023-02-01','2023-03-01','Analytics','v2');
INSERT INTO game_mechanics_experiment (experiment_code,description,hypothesis,start_date,end_date,participant_count,control_group_size,variable_name,variable_value,outcome_metric,result_value,statistical_significance,conclusion,lead_researcher,reviewer,approval_status,notes,created_at,updated_at,data_source,version) VALUES ('EXP003','Artifact durability','Increased durability reduces breakage','2023-03-01','2023-03-31',300,150,'Durability','+20%','BreakageRate',0.03,0.02,'Significant reduction','DrChen','ProfPatel','Approved','Final results','2023-03-01','2023-04-01','Telemetry','v1');

-- Digital marketplace activity logs
CREATE TABLE digital_marketplace_activity (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id TEXT,
    activity_type TEXT,
    asset_id TEXT,
    asset_type TEXT,
    transaction_amount_usd REAL,
    transaction_currency TEXT,
    transaction_date DATE,
    ip_address TEXT,
    device_type TEXT,
    session_id TEXT,
    geolocation TEXT,
    referral_source TEXT,
    promo_code_used TEXT,
    payment_method TEXT,
    status TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    is_fraud_flag INTEGER,
    verification_level TEXT,
    processing_time_ms INTEGER
);
INSERT INTO digital_marketplace_activity (user_id,activity_type,asset_id,asset_type,transaction_amount_usd,transaction_currency,transaction_date,ip_address,device_type,session_id,geolocation,referral_source,promo_code_used,payment_method,status,notes,created_at,updated_at,is_fraud_flag,verification_level,processing_time_ms) VALUES ('U001','Purchase','AS001','Card','12.99','USD','2023-04-10','192.168.1.10','Desktop','SID001','NA','Ads','SPRING21','CreditCard','Completed','First purchase','2023-04-10','2023-04-10',0,'High',350);
INSERT INTO digital_marketplace_activity (user_id,activity_type,asset_id,asset_type,transaction_amount_usd,transaction_currency,transaction_date,ip_address,device_type,session_id,geolocation,referral_source,promo_code_used,payment_method,status,notes,created_at,updated_at,is_fraud_flag,verification_level,processing_time_ms) VALUES ('U002','Bid','AS045','Foil','5.00','USD','2023-04-12','10.0.0.2','Mobile','SID002','EU','Email','WINTER22','PayPal','Pending','Bid placed','2023-04-12','2023-04-12',0,'Medium',420);
INSERT INTO digital_marketplace_activity (user_id,activity_type,asset_id,asset_type,transaction_amount_usd,transaction_currency,transaction_date,ip_address,device_type,session_id,geolocation,referral_source,promo_code_used,payment_method,status,notes,created_at,updated_at,is_fraud_flag,verification_level,processing_time_ms) VALUES ('U003','Refund','AS078','Deck','-3.00','USD','2023-04-15','172.16.0.5','Tablet','SID003','AS','Referral','SUMMER23','CreditCard','Completed','Refund processed','2023-04-15','2023-04-15',0,'High',290);

-- Distribution channel statistics
CREATE TABLE distribution_channel_stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    channel_name TEXT,
    region TEXT,
    avg_delivery_days REAL,
    on_time_rate_percent REAL,
    return_rate_percent REAL,
    total_units_shipped INTEGER,
    total_units_returned INTEGER,
    shipping_cost_per_unit_usd REAL,
    handling_fee_usd REAL,
    carrier_name TEXT,
    tracking_supported INTEGER,
    customs_clearance_time_days REAL,
    peak_season_capacity INTEGER,
    low_season_capacity INTEGER,
    sla_met_percent REAL,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    last_audit_date DATE,
    compliance_status TEXT
);
INSERT INTO distribution_channel_stats (channel_name,region,avg_delivery_days,on_time_rate_percent,return_rate_percent,total_units_shipped,total_units_returned,shipping_cost_per_unit_usd,handling_fee_usd,carrier_name,tracking_supported,customs_clearance_time_days,peak_season_capacity,low_season_capacity,sla_met_percent,notes,created_at,updated_at,last_audit_date,compliance_status) VALUES ('StandardShip','NA',5.2,96.5,2.1,50000,1050,1.50,0.30,'FedEx',1,1.5,20000,8000,98.0,'Standard channel','2023-01-01','2023-06-01','2023-06-01','Compliant');
INSERT INTO distribution_channel_stats (channel_name,region,avg_delivery_days,on_time_rate_percent,return_rate_percent,total_units_shipped,total_units_returned,shipping_cost_per_unit_usd,handling_fee_usd,carrier_name,tracking_supported,customs_clearance_time_days,peak_season_capacity,low_season_capacity,sla_met_percent,notes,created_at,updated_at,last_audit_date,compliance_status) VALUES ('ExpressShip','EU',2.1,99.2,1.0,30000,300,2.80,0.50,'DPD',1,0.8,15000,5000,99.5,'Fast EU channel','2023-02-01','2023-07-01','2023-07-01','Compliant');
INSERT INTO distribution_channel_stats (channel_name,region,avg_delivery_days,on_time_rate_percent,return_rate_percent,total_units_shipped,total_units_returned,shipping_cost_per_unit_usd,handling_fee_usd,carrier_name,tracking_supported,customs_clearance_time_days,peak_season_capacity,low_season_capacity,sla_met_percent,notes,created_at,updated_at,last_audit_date,compliance_status) VALUES ('EcoShip','APAC',7.8,92.0,3.5,20000,700,1.20,0.20,'SFExpress',0,2.2,12000,4000,94.0,'Carbon offset option','2023-03-01','2023-08-01','2023-08-01','Pending');

-- Legal document repository
CREATE TABLE legal_document_repository (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    doc_type TEXT,
    title TEXT,
    version_number TEXT,
    effective_date DATE,
    expiry_date DATE,
    author TEXT,
    reviewer TEXT,
    approver TEXT,
    document_status TEXT,
    confidentiality_level TEXT,
    storage_location TEXT,
    checksum TEXT,
    file_format TEXT,
    file_size_kb INTEGER,
    related_contract_id TEXT,
    jurisdiction TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    last_accessed DATE,
    access_permission TEXT
);
INSERT INTO legal_document_repository (doc_type,title,version_number,effective_date,expiry_date,author,reviewer,approver,document_status,confidentiality_level,storage_location,checksum,file_format,file_size_kb,related_contract_id,jurisdiction,notes,created_at,updated_at,last_accessed,access_permission) VALUES ('License','ArtWork License Agreement','v1','2023-01-01','2025-01-01','LegalTeam','Compliance','CEO','Active','High','/docs/licenses/artwork_v1.pdf','ABC123DEF','PDF',256,'C001','US','Initial version','2023-01-01','2023-06-01','2023-06-01','ReadOnly');
INSERT INTO legal_document_repository (doc_type,title,version_number,effective_date,expiry_date,author,reviewer,approver,document_status,confidentiality_level,storage_location,checksum,file_format,file_size_kb,related_contract_id,jurisdiction,notes,created_at,updated_at,last_accessed,access_permission) VALUES ('NDA','Supplier NDA','v2','2023-03-15','2026-03-15','LegalDept','HR','CFO','Active','Medium','/docs/nda/supplier_v2.pdf','XYZ789GHI','PDF',180,'C002','DE','Updated clauses','2023-03-15','2023-08-01','2023-08-01','ReadWrite');
INSERT INTO legal_document_repository (doc_type,title,version_number,effective_date,expiry_date,author,reviewer,approver,document_status,confidentiality_level,storage_location,checksum,file_format,file_size_kb,related_contract_id,jurisdiction,notes,created_at,updated_at,last_accessed,access_permission) VALUES ('Policy','Data Privacy Policy','v3','2022-12-01','2024-12-01','PrivacyTeam','Legal','CTO','Active','High','/policies/privacy_v3.pdf','LMN456OPQ','PDF',320,'','EU','Revised GDPR compliance','2022-12-01','2023-11-01','2023-11-01','ReadOnly');

-- Environmental impact records for facilities
CREATE TABLE environmental_impact_record (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    record_date DATE,
    facility_id TEXT,
    energy_consumption_kwh REAL,
    water_usage_liters REAL,
    waste_generated_kg REAL,
    recycling_rate_percent REAL,
    carbon_emissions_kg REAL,
    hvac_efficiency_percent REAL,
    renewable_energy_percent REAL,
    compliance_status TEXT,
    auditor_name TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    emission_source TEXT,
    waste_type TEXT,
    disposal_method TEXT,
    offset_credits_purchased INTEGER,
    sustainability_score REAL,
    corrective_actions TEXT
);
INSERT INTO environmental_impact_record (record_date,facility_id,energy_consumption_kwh,water_usage_liters,waste_generated_kg,recycling_rate_percent,carbon_emissions_kg,hvac_efficiency_percent,renewable_energy_percent,compliance_status,auditor_name,notes,created_at,updated_at,emission_source,waste_type,disposal_method,offset_credits_purchased,sustainability_score,corrective_actions) VALUES ('2023-04-01','F001',150000,20000,5000,85.0,12000,92.5,30.0,'Compliant','AuditorJoe','Quarterly report','2023-04-01','2023-04-01','Electricity','Plastic','Recycling','1000',78.5,'Improve packaging');
INSERT INTO environmental_impact_record (record_date,facility_id,energy_consumption_kwh,water_usage_liters,waste_generated_kg,recycling_rate_percent,carbon_emissions_kg,hvac_efficiency_percent,renewable_energy_percent,compliance_status,auditor_name,notes,created_at,updated_at,emission_source,waste_type,disposal_method,offset_credits_purchased,sustainability_score,corrective_actions) VALUES ('2023-04-01','F002',180000,25000,6500,78.0,15000,88.0,25.0,'Pending','AuditorAnna','Mid‑year audit','2023-04-01','2023-04-01','NaturalGas','Metal','Landfill','800',72.0,'Upgrade HVAC');
INSERT INTO environmental_impact_record (record_date,facility_id,energy_consumption_kwh,water_usage_liters,waste_generated_kg,recycling_rate_percent,carbon_emissions_kg,hvac_efficiency_percent,renewable_energy_percent,compliance_status,auditor_name,notes,created_at,updated_at,emission_source,waste_type,disposal_method,offset_credits_purchased,sustainability_score,corrective_actions) VALUES ('2023-04-01','F003',130000,18000,4000,90.0,10000,95.0,40.0,'Compliant','AuditorMike','Annual summary','2023-04-01','2023-04-01','Solar','Organic','Composting','1200',82.0,'Maintain current standards');

-- Community engagement metrics per platform
CREATE TABLE community_engagement_metric (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    platform_name TEXT,
    metric_date DATE,
    active_users INTEGER,
    new_signups INTEGER,
    posts_created INTEGER,
    comments_made INTEGER,
    likes_given INTEGER,
    shares_done INTEGER,
    average_session_minutes REAL,
    bounce_rate_percent REAL,
    retention_rate_percent REAL,
    net_promoter_score INTEGER,
    support_tickets INTEGER,
    resolved_tickets INTEGER,
    feedback_submitted INTEGER,
    feature_requests INTEGER,
    bugs_reported INTEGER,
    content_views INTEGER,
    ad_impressions INTEGER,
    revenue_usd REAL,
    notes TEXT
);
INSERT INTO community_engagement_metric (platform_name,metric_date,active_users,new_signups,posts_created,comments_made,likes_given,shares_done,average_session_minutes,bounce_rate_percent,retention_rate_percent,net_promoter_score,support_tickets,resolved_tickets,feedback_submitted,feature_requests,bugs_reported,content_views,ad_impressions,revenue_usd,notes) VALUES ('ForumA','2023-04-30',12000,500,3000,8000,15000,2000,12.5,45.0,70.0,55,250,240,180,90,30,50000,120000,8000.00,'Steady growth');
INSERT INTO community_engagement_metric (platform_name,metric_date,active_users,new_signups,posts_created,comments_made,likes_given,shares_done,average_session_minutes,bounce_rate_percent,retention_rate_percent,net_promoter_score,support_tickets,resolved_tickets,feedback_submitted,feature_requests,bugs_reported,content_views,ad_impressions,revenue_usd,notes) VALUES ('SocialX','2023-04-30',25000,800,5000,12000,25000,3500,8.2,35.0,80.0,70,400,390,300,150,50,75000,200000,15000.00,'High engagement');
INSERT INTO community_engagement_metric (platform_name,metric_date,active_users,new_signups,posts_created,comments_made,likes_given,shares_done,average_session_minutes,bounce_rate_percent,retention_rate_percent,net_promoter_score,support_tickets,resolved_tickets,feedback_submitted,feature_requests,bugs_reported,content_views,ad_impressions,revenue_usd,notes) VALUES ('DiscordY','2023-04-30',18000,600,2500,9000,18000,2500,15.0,50.0,65.0,60,300,295,220,110,40,60000,130000,10000.00,'Active community');