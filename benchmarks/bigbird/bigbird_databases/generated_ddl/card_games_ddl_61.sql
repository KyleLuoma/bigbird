-- Manufacturing work orders for card production
CREATE TABLE manufacturing_workorders (
    workorder_id INTEGER PRIMARY KEY,
    batch_number INTEGER,
    line_number INTEGER,
    shift_code INTEGER,
    supervisor_id INTEGER,
    start_timestamp INTEGER,
    end_timestamp INTEGER,
    machine_id INTEGER,
    material_type_code INTEGER,
    material_quantity REAL,
    quality_check_status INTEGER,
    defect_count INTEGER,
    rework_flag INTEGER,
    scrap_quantity REAL,
    operator_notes_code INTEGER,
    temperature_celsius REAL,
    humidity_percent REAL,
    power_consumption_kwh REAL,
    downtime_minutes INTEGER,
    maintenance_ticket_id INTEGER,
    priority_level INTEGER,
    created_at INTEGER
);
INSERT INTO manufacturing_workorders VALUES (1,1001,12,1,101,202401010800,202401011600,501,10,5000.0,1,0,0,0.0,0,22.5,45.0,150.0,30,2001,3,202401010755);
INSERT INTO manufacturing_workorders VALUES (2,1002,13,2,102,202401020800,202401021600,502,11,5200.5,1,2,1,10.0,1,23.0,44.5,152.5,45,2002,2,202401020755);
INSERT INTO manufacturing_workorders VALUES (3,1003,14,1,103,202401030800,202401031600,503,12,4800.2,0,1,0,5.0,0,21.8,46.2,148.3,20,2003,1,202401030755);

-- Distribution network nodes for card logistics
CREATE TABLE distribution_network_nodes (
    node_id INTEGER PRIMARY KEY,
    region_code INTEGER,
    hub_type INTEGER,
    capacity_units INTEGER,
    current_load_units INTEGER,
    operational_status INTEGER,
    latitude REAL,
    longitude REAL,
    last_maintenance_timestamp INTEGER,
    manager_employee_id INTEGER,
    inbound_route_count INTEGER,
    outbound_route_count INTEGER,
    average_processing_time REAL,
    peak_hour_start INTEGER,
    peak_hour_end INTEGER,
    temperature_celsius REAL,
    humidity_percent REAL,
    power_supply_voltage REAL,
    security_level INTEGER,
    insurance_policy_id INTEGER,
    contract_expiration_timestamp INTEGER,
    notes_code INTEGER
);
INSERT INTO distribution_network_nodes VALUES (1,101,1,20000,15000,1,40.7128,-74.0060,202312150900,501,8,7,2.5,9,17,22.0,50.0,120.0,3,3001,202512150900,0);
INSERT INTO distribution_network_nodes VALUES (2,102,2,15000,12000,1,34.0522,-118.2437,202311200800,502,5,6,3.0,8,16,23.5,48.0,115.0,2,3002,202511200800,1);
INSERT INTO distribution_network_nodes VALUES (3,103,1,25000,20000,0,41.8781,-87.6298,202310101200,503,10,9,2.2,10,18,21.0,55.0,125.0,4,3003,202608101200,2);

-- Marketing campaign overview for new set launches
CREATE TABLE marketing_campaigns_overview (
    campaign_id INTEGER PRIMARY KEY,
    set_code INTEGER,
    launch_phase INTEGER,
    budget_usd REAL,
    spend_usd REAL,
    impressions INTEGER,
    clicks INTEGER,
    conversion_rate REAL,
    cpc_usd REAL,
    cpm_usd REAL,
    start_timestamp INTEGER,
    end_timestamp INTEGER,
    target_audience_code INTEGER,
    channel_mix_code INTEGER,
    creative_asset_id INTEGER,
    lead_count INTEGER,
    revenue_attributed_usd REAL,
    roi_percent REAL,
    approval_status INTEGER,
    created_by_user_id INTEGER,
    last_modified_timestamp INTEGER,
    notes_code INTEGER
);
INSERT INTO marketing_campaigns_overview VALUES (1,5001,1,50000.0,32000.0,2000000,15000,0.75,2.13,15.80,202401010000,202401312359,10,3,1001,250,40000.0,25.0,1,101,202402010800,0);
INSERT INTO marketing_campaigns_overview VALUES (2,5002,2,75000.0,60000.0,3000000,25000,0.83,2.40,20.00,202402010000,202402282359,12,4,1002,400,65000.0,31.9,1,102,202403011200,1);
INSERT INTO marketing_campaigns_overview VALUES (3,5003,3,60000.0,58000.0,2500000,22000,0.88,2.63,19.20,202403010000,202403312359,11,2,1003,350,57000.0,27.5,0,103,202404010900,2);

-- Collector analytics for trade and valuation
CREATE TABLE collector_analytics (
    analytics_id INTEGER PRIMARY KEY,
    collector_id INTEGER,
    card_uuid INTEGER,
    valuation_usd REAL,
    last_trade_timestamp INTEGER,
    trade_volume INTEGER,
    market_trend_score REAL,
    rarity_code INTEGER,
    condition_code INTEGER,
    holding_duration_days INTEGER,
    avg_daily_price_change REAL,
    price_volatility REAL,
    price_percentile INTEGER,
    acquisition_method_code INTEGER,
    favorite_flag INTEGER,
    notes_code INTEGER,
    last_updated_timestamp INTEGER,
    view_count INTEGER,
    watchlist_flag INTEGER,
    notification_opt_in INTEGER,
    portfolio_id INTEGER,
    risk_rating INTEGER
);
INSERT INTO collector_analytics VALUES (1,2001,300001,150.0,202312150800,5,0.75,3,2,365,0.02,0.05,80,1,1,0,202312200900,120,0,1,4001,2);
INSERT INTO collector_analytics VALUES (2,2002,300002,250.0,202311200900,3,0.60,4,1,180,0.01,0.03,65,2,0,1,202311210950,95,1,0,4002,3);
INSERT INTO collector_analytics VALUES (3,2003,300003,95.0,202310101200,8,0.85,2,3,730,0.03,0.07,90,3,1,2,202310111300,150,0,1,4003,1);

-- Regulatory compliance events for card publishing
CREATE TABLE regulatory_compliance_events (
    event_id INTEGER PRIMARY KEY,
    jurisdiction_code INTEGER,
    regulation_type_code INTEGER,
    submission_timestamp INTEGER,
    review_timestamp INTEGER,
    outcome_code INTEGER,
    penalty_amount_usd REAL,
    responsible_officer_id INTEGER,
    related_set_code INTEGER,
    documentation_id INTEGER,
    audit_trail_id INTEGER,
    compliance_status INTEGER,
    notes_code INTEGER,
    escalated_flag INTEGER,
    corrective_action_id INTEGER,
    next_review_timestamp INTEGER,
    severity_level INTEGER,
    risk_category_code INTEGER,
    created_at INTEGER,
    updated_at INTEGER,
    source_system_code INTEGER,
    external_reference_id INTEGER
);
INSERT INTO regulatory_compliance_events VALUES (1,10,1,202301010800,202301151200,2,0.0,501,5001,8001,9001,1,0,0,0,202306010800,2,3,202301010800,202301151200,5,10001);
INSERT INTO regulatory_compliance_events VALUES (2,12,2,202302050900,202302201000,3,15000.0,502,5002,8002,9002,0,1,1,7001,202307150900,4,2,202302050900,202302201000,6,10002);
INSERT INTO regulatory_compliance_events VALUES (3,15,3,202303101000,202303251100,1,0.0,503,5003,8003,9003,1,0,0,0,202308200800,1,1,202303101000,202303251100,7,10003);

-- Digital asset metadata extension for collectible images
CREATE TABLE digital_asset_metadata_ext2 (
    asset_id INTEGER PRIMARY KEY,
    original_asset_id INTEGER,
    resolution_width INTEGER,
    resolution_height INTEGER,
    color_depth INTEGER,
    file_size_kb REAL,
    compression_algorithm_code INTEGER,
    generation_timestamp INTEGER,
    creator_user_id INTEGER,
    usage_rights_code INTEGER,
    licensing_fee_usd REAL,
    tag_set_code INTEGER,
    authenticity_hash INTEGER,
    version_number INTEGER,
    approval_status INTEGER,
    featured_flag INTEGER,
    display_priority INTEGER,
    related_collection_id INTEGER,
    geo_origin_latitude REAL,
    geo_origin_longitude REAL,
    last_accessed_timestamp INTEGER,
    archive_status INTEGER
);
INSERT INTO digital_asset_metadata_ext2 VALUES (1,101,1920,1080,24,1500.5,1,202401010900,601,2,0.0,10,123456789,1,1,0,5,2001,40.7128,-74.0060,202401020800,0);
INSERT INTO digital_asset_metadata_ext2 VALUES (2,102,2560,1440,32,2500.0,2,202402011000,602,3,10.0,11,987654321,2,2,1,3,2002,34.0522,-118.2437,202402021100,1);
INSERT INTO digital_asset_metadata_ext2 VALUES (3,103,3840,2160,24,3500.75,3,202403011100,603,1,20.0,12,192837465,3,1,0,4,2003,41.8781,-87.6298,202403021200,0);

-- Inventory audit trails for warehouse stock
CREATE TABLE inventory_audit_trails (
    audit_id INTEGER PRIMARY KEY,
    warehouse_id INTEGER,
    product_sku INTEGER,
    quantity_before INTEGER,
    quantity_after INTEGER,
    adjustment_type_code INTEGER,
    adjusted_by_user_id INTEGER,
    adjustment_timestamp INTEGER,
    reason_code INTEGER,
    supporting_document_id INTEGER,
    verified_flag INTEGER,
    notes_code INTEGER,
    batch_number INTEGER,
    expiration_timestamp INTEGER,
    location_bin_code INTEGER,
    audit_status INTEGER,
    discrepancy_count INTEGER,
    created_at INTEGER,
    updated_at INTEGER,
    auditor_user_id INTEGER,
    corrective_action_id INTEGER,
    external_reference_code INTEGER
);
INSERT INTO inventory_audit_trails VALUES (1,1,50001,100,95,1,701,202401010800,10,8001,1,0,9001,202401311200,301,1,0,202401010800,202401011200,702,0,10001);
INSERT INTO inventory_audit_trails VALUES (2,2,50002,200,210,2,702,202402050900,20,8002,0,1,9002,202402281200,302,2,1,202402050900,202402060900,703,1,10002);
INSERT INTO inventory_audit_trails VALUES (3,3,50003,150,150,3,703,202403101000,30,8003,1,0,9003,202403311200,303,1,0,202403101000,202403111000,704,0,10003);

-- Player engagement surveys for community feedback
CREATE TABLE player_engagement_surveys (
    survey_id INTEGER PRIMARY KEY,
    player_id INTEGER,
    survey_timestamp INTEGER,
    satisfaction_score INTEGER,
    feature_importance_code INTEGER,
    difficulty_rating INTEGER,
    frequency_of_play INTEGER,
    net_promoter_score INTEGER,
    suggested_improvement_code INTEGER,
    consent_to_contact INTEGER,
    device_type_code INTEGER,
    region_code INTEGER,
    language_preference_code INTEGER,
    completion_time_seconds INTEGER,
    survey_version INTEGER,
    channel_code INTEGER,
    incentive_offered INTEGER,
    incentive_redeemed INTEGER,
    reviewer_user_id INTEGER,
    notes_code INTEGER,
    analysis_status INTEGER,
    archived_flag INTEGER
);
INSERT INTO player_engagement_surveys VALUES (1,3001,202401150800,8,5,3,120,9,2,1,1,101,1,240,1,2,1,0,801,0,0,0);
INSERT INTO player_engagement_surveys VALUES (2,3002,202402200900,7,4,2,80,7,3,1,2,102,2,180,1,1,0,0,802,1,1,0);
INSERT INTO player_engagement_surveys VALUES (3,3003,202403250950,9,6,4,150,10,1,1,1,103,1,300,2,3,1,1,803,0,0,1);

-- Event logistics resources for tournament venues
CREATE TABLE event_logistics_resources (
    resource_id INTEGER PRIMARY KEY,
    event_id INTEGER,
    venue_id INTEGER,
    resource_type_code INTEGER,
    quantity INTEGER,
    allocated_timestamp INTEGER,
    release_timestamp INTEGER,
    provider_company_id INTEGER,
    cost_usd REAL,
    contract_id INTEGER,
    compliance_check_passed INTEGER,
    notes_code INTEGER,
    maintenance_required_flag INTEGER,
    maintenance_window_start INTEGER,
    maintenance_window_end INTEGER,
    insurance_coverage_usd REAL,
    liability_limit_usd REAL,
    escalation_contact_user_id INTEGER,
    status_code INTEGER,
    created_at INTEGER,
    updated_at INTEGER,
    audit_log_id INTEGER,
    external_reference_id INTEGER
);
INSERT INTO event_logistics_resources VALUES (1,4001,10,1,500,202401010800,202401311200,9001,2500.0,1001,1,0,0,0,0,50000.0,100000.0,601,1,202401010800,202401011200,701,10001);
INSERT INTO event_logistics_resources VALUES (2,4002,11,2,200,202402050900,202402281200,9002,1200.0,1002,1,1,1,202402151200,202402151500,30000.0,60000.0,602,2,202402050900,202402060900,702,10002);
INSERT INTO event_logistics_resources VALUES (3,4003,12,3,100,202403101000,202403311200,9003,800.0,1003,0,2,0,0,0,20000.0,40000.0,603,3,202403101000,202403111000,703,10003);

-- Sponsor outreach programs for marketing partnerships
CREATE TABLE sponsor_outreach_programs (
    program_id INTEGER PRIMARY KEY,
    sponsor_id INTEGER,
    campaign_id INTEGER,
    outreach_phase_code INTEGER,
    target_audience_code INTEGER,
    contact_method_code INTEGER,
    outreach_timestamp INTEGER,
    response_received INTEGER,
    response_timestamp INTEGER,
    engagement_score REAL,
    followup_required INTEGER,
    followup_timestamp INTEGER,
    assigned_rep_user_id INTEGER,
    notes_code INTEGER,
    budget_usd REAL,
    spend_usd REAL,
    roi_percent REAL,
    status_code INTEGER,
    created_at INTEGER,
    updated_at INTEGER,
    approval_user_id INTEGER,
    audit_trail_id INTEGER
);
INSERT INTO sponsor_outreach_programs VALUES (1,6001,7001,1,10,2,202401020900,1,202401031000,85.5,0,0,801,0,5000.0,3000.0,60.0,1,202401020900,202401031200,901,801);
INSERT INTO sponsor_outreach_programs VALUES (2,6002,7002,2,12,1,202402060950,0,0,0.0,1,202402151000,802,1,6000.0,4000.0,55.0,2,202402060950,202402070900,902,802);
INSERT INTO sponsor_outreach_programs VALUES (3,6003,7003,3,11,3,202403101100,1,202403111200,92.0,0,0,803,0,5500.0,3500.0,58.3,1,202403101100,202403111300,903,803);