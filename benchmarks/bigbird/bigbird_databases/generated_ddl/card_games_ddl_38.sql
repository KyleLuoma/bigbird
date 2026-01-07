-- Venue inspection records
CREATE TABLE venue_inspections
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    inspection_date DATE,
    inspector_name TEXT,
    overall_score INTEGER,
    safety_compliance INTEGER,
    fire_exit_status TEXT,
    electrical_check TEXT,
    plumbing_status TEXT,
    hvac_status TEXT,
    structural_integrity TEXT,
    sanitation_grade TEXT,
    notes TEXT,
    follow_up_required INTEGER,
    follow_up_date DATE,
    inspector_contact TEXT,
    temperature_celsius REAL,
    humidity_percent REAL,
    air_quality_index INTEGER,
    emergency_plan_updated INTEGER,
    remarks TEXT
);

INSERT INTO venue_inspections VALUES (1, 101, '2024-11-01', 'Alice Smith', 92, 1, 'Clear', 'Pass', 'Pass', 'Pass', 'Good', 'A', 'All good', 0, NULL, '555-1234', 22.5, 45.0, 15, 1, 'No issues');
INSERT INTO venue_inspections VALUES (2, 102, '2024-11-03', 'Bob Jones', 78, 0, 'Obstructed', 'Fail', 'Pass', 'Pass', 'Fair', 'B', 'Fire exit blocked', 1, '2024-11-10', '555-5678', 21.0, 50.0, 30, 0, 'Needs remediation');
INSERT INTO venue_inspections VALUES (3, 103, '2024-11-05', 'Carol Lee', 85, 1, 'Clear', 'Pass', 'Pass', 'Fail', 'Good', 'A', 'HVAC filter replaced', 0, NULL, '555-9012', 23.0, 40.0, 20, 1, 'Routine check complete');

-- Equipment maintenance logs
CREATE TABLE equipment_maintenance_logs
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    equipment_id INTEGER,
    maintenance_date DATE,
    technician_name TEXT,
    maintenance_type TEXT,
    duration_minutes INTEGER,
    parts_replaced TEXT,
    cost_usd REAL,
    next_scheduled_date DATE,
    status TEXT,
    notes TEXT,
    warranty_valid INTEGER,
    serial_number TEXT,
    model_number TEXT,
    location TEXT,
    temperature_celsius REAL,
    voltage_volts REAL,
    current_amps REAL,
    vibration_level REAL,
    pressure_psi REAL,
    calibration_required INTEGER,
    calibration_date DATE
);

INSERT INTO equipment_maintenance_logs VALUES (1, 2001, '2024-10-20', 'Dave Kim', 'Routine', 45, 'None', 150.00, '2025-01-20', 'Completed', 'All parameters normal', 1, 'SN2001A', 'MDL-X1', 'Hall A', 22.0, 120.0, 5.0, 0.02, 30.0, 0, NULL);
INSERT INTO equipment_maintenance_logs VALUES (2, 2002, '2024-10-22', 'Eve Patel', 'Repair', 120, 'Valve,Seal', 430.75, '2025-04-22', 'Completed', 'Replaced faulty valve', 0, 'SN2002B', 'MDL-Y2', 'Hall B', 24.5, 115.0, 4.5, 0.03, 28.0, 1, '2024-09-15');
INSERT INTO equipment_maintenance_logs VALUES (3, 2003, '2024-10-25', 'Frank Liu', 'Calibration', 60, 'None', 200.00, '2025-07-25', 'Completed', 'Calibrated pressure sensor', 1, 'SN2003C', 'MDL-Z3', 'Hall C', 21.8, 118.0, 5.2, 0.01, 32.0, 1, '2024-08-01');

-- Community moderator activity
CREATE TABLE community_moderator_activity
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    moderator_id INTEGER,
    activity_date DATE,
    posts_reviewed INTEGER,
    threads_closed INTEGER,
    users_warned INTEGER,
    bans_issued INTEGER,
    comments_deleted INTEGER,
    edits_made INTEGER,
    reports_handled INTEGER,
    average_response_time_seconds REAL,
    shift_start TIME,
    shift_end TIME,
    platform TEXT,
    notes TEXT,
    overtime_hours REAL,
    escalation_count INTEGER,
    training_completed INTEGER,
    last_training_date DATE,
    active BOOLEAN,
    team TEXT,
    region TEXT,
    performance_score INTEGER
);

INSERT INTO community_moderator_activity VALUES (1, 301, '2024-10-31', 150, 20, 5, 2, 30, 12, 45, 180.5, '08:00', '16:00', 'Forum', 'Normal workload', 0.0, 1, 1, '2024-06-15', 1, 'Alpha', 'NA', 88);
INSERT INTO community_moderator_activity VALUES (2, 302, '2024-10-31', 200, 25, 8, 3, 45, 20, 60, 150.2, '12:00', '20:00', 'Discord', 'High activity', 2.5, 2, 0, NULL, 1, 'Beta', 'EU', 92);
INSERT INTO community_moderator_activity VALUES (3, 303, '2024-10-31', 120, 15, 3, 1, 20, 8, 30, 210.0, '00:00', '08:00', 'Chat', 'Low traffic', 0.0, 0, 1, '2024-03-10', 1, 'Gamma', 'APAC', 81);

-- Digital asset usage statistics
CREATE TABLE digital_asset_usage_stats
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    asset_id INTEGER,
    asset_type TEXT,
    date DATE,
    views INTEGER,
    downloads INTEGER,
    likes INTEGER,
    shares INTEGER,
    average_view_duration_seconds REAL,
    unique_viewers INTEGER,
    source_platform TEXT,
    region TEXT,
    device_type TEXT,
    bandwidth_mb REAL,
    error_rate_percent REAL,
    conversion_rate_percent REAL,
    revenue_usd REAL,
    comments_count INTEGER,
    rating_average REAL,
    rating_count INTEGER,
    last_updated TIMESTAMP,
    tags TEXT,
    category TEXT,
    is_active BOOLEAN,
    retention_rate_percent REAL,
    engagement_score REAL
);

INSERT INTO digital_asset_usage_stats VALUES (1, 5001, 'Image', '2024-10-30', 3400, 120, 250, 80, 45.6, 2100, 'Web', 'NA', 'Desktop', 1.2, 0.5, 2.0, 150.00, 12, 4.5, 30, '2024-10-31 10:00:00', 'art,card', 'Illustration', 1, 70.0, 85.3);
INSERT INTO digital_asset_usage_stats VALUES (2, 5002, 'Video', '2024-10-30', 5600, 300, 500, 200, 120.3, 3500, 'Mobile', 'EU', 'Phone', 2.8, 0.8, 3.5, 420.75, 45, 4.2, 150, '2024-10-31 10:05:00', 'promo,trailer', 'Video', 1, 78.0, 92.1);
INSERT INTO digital_asset_usage_stats VALUES (3, 5003, 'Audio', '2024-10-30', 2100, 80, 150, 60, 30.2, 1800, 'App', 'APAC', 'Tablet', 0.9, 0.3, 1.8, 80.20, 8, 4.8, 20, '2024-10-31 10:10:00', 'music,theme', 'Audio', 1, 65.0, 78.4);

-- Gameplay balance change log
CREATE TABLE gameplay_balance_changes
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    change_id TEXT,
    effective_date DATE,
    description TEXT,
    affected_card_uuid TEXT,
    old_power TEXT,
    new_power TEXT,
    old_toughness TEXT,
    new_toughness TEXT,
    old_mana_cost TEXT,
    new_mana_cost TEXT,
    old_ability TEXT,
    new_ability TEXT,
    change_type TEXT,
    author TEXT,
    review_status TEXT,
    test_coverage_percent REAL,
    impact_score INTEGER,
    notes TEXT,
    rollback_possible BOOLEAN,
    rollback_date DATE,
    severity_level TEXT,
    region TEXT,
    platform TEXT,
    approval_timestamp TIMESTAMP,
    documentation_url TEXT,
    related_patch TEXT
);

INSERT INTO gameplay_balance_changes VALUES (1, 'CHG-001', '2024-11-01', 'Increase power of DragonLord', 'uuid-abc123', '5', '6', '5', '5', '4R', '4R', 'Flying', 'Flying,Trample', 'StatBoost', 'LeadDesigner', 'Approved', 95.0, 80, 'Tested in beta', 1, NULL, 'High', 'Global', 'PC', '2024-10-28 14:30:00', 'http://docs.example.com/chg001', 'Patch 1.2');
INSERT INTO gameplay_balance_changes VALUES (2, 'CHG-002', '2024-11-05', 'Remove ability from SpellX', 'uuid-def456', NULL, NULL, NULL, NULL, '2U', '2U', 'DrawCard', NULL, 'AbilityRemoval', 'GameBalTeam', 'Pending', 70.0, 60, 'Awaiting QA', 0, NULL, 'Medium', 'EU', 'Mobile', '2024-10-30 09:15:00', 'http://docs.example.com/chg002', 'Patch 1.2');
INSERT INTO gameplay_balance_changes VALUES (3, 'CHG-003', '2024-11-10', 'Adjust mana cost of ArtifactY', 'uuid-ghi789', NULL, NULL, NULL, NULL, '3', '2', NULL, NULL, 'CostAdjustment', 'ProdManager', 'Approved', 85.0, 70, 'Changes applied', 1, '2024-12-01', 'Low', 'APAC', 'Console', '2024-11-01 12:00:00', 'http://docs.example.com/chg003', 'Patch 1.3');

-- Analytics user session summary
CREATE TABLE analytics_user_sessions
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    session_id TEXT,
    user_id INTEGER,
    start_timestamp TIMESTAMP,
    end_timestamp TIMESTAMP,
    duration_seconds INTEGER,
    device_type TEXT,
    operating_system TEXT,
    app_version TEXT,
    activity_count INTEGER,
    pages_viewed INTEGER,
    events_triggered INTEGER,
    conversion_flag INTEGER,
    revenue_usd REAL,
    country_code TEXT,
    region TEXT,
    browser TEXT,
    ip_address TEXT,
    referral_source TEXT,
    campaign_id TEXT,
    is_new_user INTEGER,
    churn_risk_score REAL,
    avg_interaction_interval_seconds REAL,
    last_event_timestamp TIMESTAMP,
    session_score INTEGER,
    notes TEXT
);

INSERT INTO analytics_user_sessions VALUES (1, 'sess-1001', 401, '2024-10-31 08:00:00', '2024-10-31 08:25:30', 1530, 'Mobile', 'iOS', '2.3.1', 45, 12, 3, 0, 0.00, 'US', 'NA', 'Safari', '192.168.1.10', 'AdCampaignA', 'camp-01', 1, 0.2, 30.5, '2024-10-31 08:25:00', 78, 'First session');
INSERT INTO analytics_user_sessions VALUES (2, 'sess-1002', 402, '2024-10-31 09:10:00', '2024-10-31 09:45:00', 2100, 'Desktop', 'Windows', '2.3.1', 80, 20, 5, 1, 12.50, 'DE', 'EU', 'Chrome', '192.168.2.20', 'Organic', NULL, 0, 0.5, 25.0, '2024-10-31 09:44:30', 85, 'Returning user');
INSERT INTO analytics_user_sessions VALUES (3, 'sess-1003', 403, '2024-10-31 10:30:00', '2024-10-31 10:55:15', 1515, 'Tablet', 'Android', '2.3.1', 60, 15, 4, 0, 0.00, 'JP', 'APAC', 'Firefox', '192.168.3.30', 'SocialMedia', 'camp-02', 1, 0.1, 28.0, '2024-10-31 10:55:00', 80, 'New user from campaign');

-- Content translation workflow tracking
CREATE TABLE content_translation_workflows
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    workflow_id TEXT,
    content_id INTEGER,
    source_language TEXT,
    target_language TEXT,
    translator_id INTEGER,
    start_date DATE,
    due_date DATE,
    completion_date DATE,
    status TEXT,
    word_count INTEGER,
    characters_count INTEGER,
    quality_score INTEGER,
    revision_needed INTEGER,
    revision_deadline DATE,
    notes TEXT,
    project_manager_id INTEGER,
    budget_usd REAL,
    actual_cost_usd REAL,
    client_feedback TEXT,
    approval_status TEXT,
    last_modified TIMESTAMP,
    translation_tool TEXT,
    glossary_used INTEGER,
    segment_count INTEGER,
    average_segment_length REAL
);

INSERT INTO content_translation_workflows VALUES (1, 'WF-001', 6001, 'en', 'de', 701, '2024-10-20', '2024-11-05', NULL, 'InProgress', 2500, 15000, NULL, 0, NULL, 'Initial translation phase', 801, 500.00, 0.00, NULL, NULL, '2024-10-30 12:00:00', 'ToolA', 1, 300, 8.3);
INSERT INTO content_translation_workflows VALUES (2, 'WF-002', 6002, 'en', 'fr', 702, '2024-09-15', '2024-09-30', '2024-09-28', 'Completed', 3400, 21000, 92, 0, NULL, 'Final review completed', 802, 700.00, 710.00, 'Positive', 'Approved', '2024-09-28 16:45:00', 'ToolB', 1, 420, 9.1);
INSERT INTO content_translation_workflows VALUES (3, 'WF-003', 6003, 'ja', 'en', 703, '2024-10-01', '2024-10-20', NULL, 'PendingReview', 1800, 11000, NULL, 1, '2024-10-22', 'Awaiting QA feedback', 803, 400.00, 0.00, NULL, NULL, '2024-10-15 09:30:00', 'ToolC', 0, 250, 7.5);

-- Sponsor contact history
CREATE TABLE sponsor_contact_history
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    contact_date DATE,
    contact_method TEXT,
    representative_name TEXT,
    representative_role TEXT,
    discussion_topic TEXT,
    outcome TEXT,
    follow_up_required INTEGER,
    follow_up_date DATE,
    notes TEXT,
    email_address TEXT,
    phone_number TEXT,
    meeting_location TEXT,
    contract_stage TEXT,
    projected_value_usd REAL,
    actual_value_usd REAL,
    renewal_likelihood_percent REAL,
    last_contact_timestamp TIMESTAMP,
    engagement_score INTEGER,
    sponsor_region TEXT,
    sponsor_category TEXT,
    priority_level TEXT,
    assigned_manager_id INTEGER,
    next_step TEXT,
    created_at TIMESTAMP
);

INSERT INTO sponsor_contact_history VALUES (1, 901, '2024-10-15', 'Email', 'Laura Green', 'MarketingDirector', 'BrandVisibility', 'PositiveResponse', 1, '2024-11-01', 'Requested media kit', 'laura@example.com', '555-1111', 'HQ Office', 'Negotiation', 250000.00, 0.00, 60.0, '2024-10-15 08:30:00', 70, 'NA', 'Tech', 'High', 1001, 'Send proposal', '2024-10-15 08:00:00');
INSERT INTO sponsor_contact_history VALUES (2, 902, '2024-10-20', 'Phone', 'Mike Brown', 'SponsorshipManager', 'EventSponsorship', 'PendingDecision', 0, NULL, 'Awaiting budget approval', 'mike@example.org', '555-2222', 'Remote', 'Proposal', 150000.00, 0.00, 40.0, '2024-10-20 14:45:00', 55, 'EU', 'Lifestyle', 'Medium', 1002, 'Follow up in 2 weeks', '2024-10-20 14:20:00');
INSERT INTO sponsor_contact_history VALUES (3, 903, '2024-10-25', 'InPerson', 'Sara Lee', 'CommunityLead', 'CommunityProgram', 'Accepted', 0, NULL, 'Signed agreement on spot', 'sara@example.net', '555-3333', 'Conference Hall', 'Closed', 300000.00, 300000.00, 90.0, '2024-10-25 10:15:00', 85, 'APAC', 'Entertainment', 'High', 1003, 'Finalize logistics', '2024-10-25 09:50:00');

-- Environmental compliance checks
CREATE TABLE environmental_compliance_checks
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    check_id TEXT,
    facility_id INTEGER,
    check_date DATE,
    inspector_name TEXT,
    compliance_status TEXT,
    carbon_footprint_tons REAL,
    waste_generated_kg REAL,
    recycling_rate_percent REAL,
    water_usage_liters REAL,
    energy_consumption_kwh REAL,
    hazardous_materials_handled INTEGER,
    incident_reported INTEGER,
    corrective_actions TEXT,
    follow_up_date DATE,
    notes TEXT,
    regulator_agency TEXT,
    penalty_amount_usd REAL,
    compliance_certificate_issued INTEGER,
    certificate_number TEXT,
    region TEXT,
    facility_type TEXT,
    audit_score INTEGER,
    last_updated TIMESTAMP,
    documentation_url TEXT,
    next_scheduled_check DATE
);

INSERT INTO environmental_compliance_checks VALUES (1, 'EC-1001', 1101, '2024-09-30', 'Tom White', 'Compliant', 1.2, 300.0, 85.0, 5000.0, 12000.0, 0, 0, NULL, NULL, 'Annual review completed', 'EnvAgencyA', 0.00, 1, 'CERT-001', 'NA', 'Production', 92, '2024-09-30 15:00:00', 'http://docs.example.com/ec1001', '2025-09-30');
INSERT INTO environmental_compliance_checks VALUES (2, 'EC-1002', 1102, '2024-10-10', 'Anna Black', 'NonCompliant', 2.5, 600.0, 60.0, 8000.0, 20000.0, 2, 1, 'Improve waste segregation', '2024-11-15', 'Follow up required due to incident', 'EnvAgencyB', 15000.00, 0, NULL, 'EU', 'Warehouse', 68, '2024-10-10 11:30:00', 'http://docs.example.com/ec1002', '2025-01-10');
INSERT INTO environmental_compliance_checks VALUES (3, 'EC-1003', 1103, '2024-10-20', 'Luis Gomez', 'Compliant', 0.9, 200.0, 90.0, 4500.0, 10000.0, 0, 0, NULL, NULL, 'No issues found', 'EnvAgencyC', 0.00, 1, 'CERT-003', 'APAC', 'Office', 95, '2024-10-20 09:45:00', 'http://docs.example.com/ec1003', '2025-10-20');

-- Sponsor contract terms
CREATE TABLE sponsor_contract_terms
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    contract_id TEXT,
    sponsor_id INTEGER,
    start_date DATE,
    end_date DATE,
    renewal_option TEXT,
    exclusivity_flag INTEGER,
    payment_schedule TEXT,
    total_value_usd REAL,
    currency TEXT,
    payment_method TEXT,
    invoicing_contact TEXT,
    invoicing_email TEXT,
    termination_notice_days INTEGER,
    confidentiality_clause TEXT,
    branding_guidelines TEXT,
    performance_metrics TEXT,
    audit_rights INTEGER,
    dispute_resolution TEXT,
    governing_law TEXT,
    amendment_history TEXT,
    signature_date DATE,
    signed_by TEXT,
    approved_by TEXT,
    created_timestamp TIMESTAMP,
    last_modified_timestamp TIMESTAMP,
    comments TEXT
);

INSERT INTO sponsor_contract_terms VALUES (1, 'CT-001', 901, '2024-01-01', '2025-12-31', 'AutoRenew', 1, 'Quarterly', 500000.00, 'USD', 'BankTransfer', 'Emily Clark', 'finance@example.com', 30, 'StandardNDA', 'BrandGuideV2', 'KPIsDefined', 1, 'Arbitration', 'NYLaw', 'Amendment2024-06', '2024-01-01', 'John Doe', 'Jane Smith', '2024-01-01 09:00:00', '2024-06-15 14:20:00', 'Initial contract signed');
INSERT INTO sponsor_contract_terms VALUES (2, 'CT-002', 902, '2023-07-01', '2024-06-30', 'NoRenewal', 0, 'Annual', 250000.00, 'EUR', 'CreditCard', 'Mark Lee', 'payments@example.eu', 60, 'EnhancedNDA', 'BrandGuideEU', 'KPIsPending', 0, 'Mediation', 'GermanLaw', 'Amendment2024-03', '2023-07-01', 'Anna Schmidt', 'Karl Muller', '2023-07-01 10:30:00', '2024-03-20 11:45:00', 'Extended term requested');
INSERT INTO sponsor_contract_terms VALUES (3, 'CT-003', 903, '2024-04-15', '2026-04-14', 'AutoRenew', 1, 'Monthly', 800000.00, 'USD', 'Wire', 'Sophie Tan', 'contracts@example.com', 45, 'StandardNDA', 'BrandGuideAPAC', 'KPIMeasured', 1, 'Arbitration', 'SingaporeLaw', 'Amendment2025-01', '2024-04-15', 'David Ng', 'Li Wei', '2024-04-15 08:20:00', '2025-01-10 16:00:00', 'Added new activation clause');