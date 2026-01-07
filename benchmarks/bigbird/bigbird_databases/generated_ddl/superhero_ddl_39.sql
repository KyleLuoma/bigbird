-- Table: supply_chain_incident
CREATE TABLE supply_chain_incident (
    id INTEGER PRIMARY KEY,
    incident_date INTEGER,
    incident_type TEXT,
    description TEXT,
    severity INTEGER,
    reported_by TEXT,
    resolved INTEGER,
    resolution_date INTEGER,
    impact_units INTEGER,
    location_id INTEGER,
    supplier_id INTEGER,
    transport_mode TEXT,
    carrier_name TEXT,
    delay_hours INTEGER,
    cost_overrun REAL,
    corrective_action TEXT,
    status TEXT,
    created_at INTEGER,
    updated_at INTEGER,
    notes TEXT
);
INSERT INTO supply_chain_incident VALUES (1,20250101,1,1,3,101,0,0,500,10,20,1,301,24,1500.75,1,1,20250102,20250103,1);
INSERT INTO supply_chain_incident VALUES (2,20250215,2,2,2,102,1,20250220,300,11,21,2,302,12,500.00,2,2,20250216,20250221,2);
INSERT INTO supply_chain_incident VALUES (3,20250310,3,3,5,103,0,0,800,12,22,3,303,48,2500.25,3,3,20250311,20250312,3);

-- Table: digital_asset_license
CREATE TABLE digital_asset_license (
    id INTEGER PRIMARY KEY,
    asset_id INTEGER,
    license_type TEXT,
    start_date INTEGER,
    end_date INTEGER,
    region_code TEXT,
    fee_amount REAL,
    currency TEXT,
    renewal_required INTEGER,
    usage_limit INTEGER,
    current_usage INTEGER,
    authorized_by TEXT,
    terms_version INTEGER,
    audit_status TEXT,
    created_at INTEGER,
    updated_at INTEGER,
    notes TEXT,
    compliance_score INTEGER,
    revocation_date INTEGER,
    holder_id INTEGER
);
INSERT INTO digital_asset_license VALUES (1,1001,1,20240101,20250101,US,1000.00,USD,1,10000,2500,200,2,2,20240102,20240103,1,85,0,3001);
INSERT INTO digital_asset_license VALUES (2,1002,2,20240215,20250215,EU,1500.50,EUR,0,20000,5000,201,3,1,20240216,20240217,2,90,0,3002);
INSERT INTO digital_asset_license VALUES (3,1003,3,20240310,20250310,APAC,2000.75,JPY,1,15000,7500,202,4,0,20240311,20240312,3,75,20250311,3003);

-- Table: storyboard_version
CREATE TABLE storyboard_version (
    id INTEGER PRIMARY KEY,
    storyboard_id INTEGER,
    version_number INTEGER,
    created_by TEXT,
    created_at INTEGER,
    approved_by TEXT,
    approved_at INTEGER,
    scene_count INTEGER,
    page_count INTEGER,
    art_style TEXT,
    revisions INTEGER,
    comments TEXT,
    status TEXT,
    thumbnail_path TEXT,
    file_path TEXT,
    file_size INTEGER,
    checksum TEXT,
    external_review INTEGER,
    rating INTEGER,
    notes TEXT
);
INSERT INTO storyboard_version VALUES (1,2001,1,101,20240105,201,20240106,45,30,1,0,1,1,1,1,1500,1,0,5,1);
INSERT INTO storyboard_version VALUES (2,2002,2,102,20240210,202,20240211,50,35,2,1,2,2,2,2,1700,2,1,4,2);
INSERT INTO storyboard_version VALUES (3,2003,3,103,20240315,203,20240316,55,40,3,2,3,3,3,3,1900,3,0,3,3);

-- Table: licensing_compliance_audit
CREATE TABLE licensing_compliance_audit (
    id INTEGER PRIMARY KEY,
    audit_date INTEGER,
    auditor_id INTEGER,
    license_id INTEGER,
    compliance_status TEXT,
    violations INTEGER,
    penalty_amount REAL,
    corrective_action TEXT,
    due_date INTEGER,
    resolved INTEGER,
    comments TEXT,
    risk_level TEXT,
    affected_regions TEXT,
    audit_score INTEGER,
    next_audit_date INTEGER,
    created_at INTEGER,
    updated_at INTEGER,
    notes TEXT,
    audit_type TEXT,
    follow_up_needed INTEGER
);
INSERT INTO licensing_compliance_audit VALUES (1,20240401,401,5001,1,0,0.00,1,20240430,1,1,1,1,95,20250501,20240402,20240403,1,1,0);
INSERT INTO licensing_compliance_audit VALUES (2,20240515,402,5002,2,2,2500.00,2,20240615,0,2,2,2,80,20250615,20240516,20240517,2,2,1);
INSERT INTO licensing_compliance_audit VALUES (3,20240620,403,5003,1,1,1000.00,3,20240720,1,3,3,3,88,20250820,20240621,20240622,3,1,0);

-- Table: venue_access_log
CREATE TABLE venue_access_log (
    id INTEGER PRIMARY KEY,
    venue_id INTEGER,
    event_id INTEGER,
    access_time INTEGER,
    personnel_id INTEGER,
    access_type TEXT,
    purpose TEXT,
    duration_minutes INTEGER,
    authorized_by TEXT,
    security_level INTEGER,
    device_id INTEGER,
    entry_point TEXT,
    exit_point TEXT,
    notes TEXT,
    created_at INTEGER,
    updated_at INTEGER,
    incident_reported INTEGER,
    clearance_status TEXT,
    badge_number INTEGER,
    shift_id INTEGER
);
INSERT INTO venue_access_log VALUES (1,601,701,20240110,801,1,1,30,901,2,1001,1,2,1,20240111,20240112,0,1,5001,10);
INSERT INTO venue_access_log VALUES (2,602,702,20240220,802,2,2,45,902,3,1002,2,3,2,20240221,20240222,1,2,5002,11);
INSERT INTO venue_access_log VALUES (3,603,703,20240330,803,1,3,60,903,1,1003,3,4,3,20240331,20240401,0,1,5003,12);

-- Table: marketing_budget_allocation
CREATE TABLE marketing_budget_allocation (
    id INTEGER PRIMARY KEY,
    campaign_id INTEGER,
    fiscal_year INTEGER,
    quarter INTEGER,
    allocated_amount REAL,
    spent_amount REAL,
    remaining_amount REAL,
    currency TEXT,
    department_code TEXT,
    manager_id INTEGER,
    approval_status TEXT,
    approval_date INTEGER,
    revised_amount REAL,
    revision_reason TEXT,
    cost_center TEXT,
    created_at INTEGER,
    updated_at INTEGER,
    notes TEXT,
    forecasted_spend REAL,
    variance_percent REAL
);
INSERT INTO marketing_budget_allocation VALUES (1,801,2024,1,50000.00,20000.00,30000.00,USD,MD01,1101,1,20240105,52000.00,1,CC01,20240106,20240107,1,21000.00,5.0);
INSERT INTO marketing_budget_allocation VALUES (2,802,2024,2,60000.00,35000.00,25000.00,EUR,MD02,1102,2,20240210,61000.00,2,CC02,20240211,20240212,2,36000.00,3.5);
INSERT INTO marketing_budget_allocation VALUES (3,803,2024,3,70000.00,40000.00,30000.00,JPY,MD03,1103,1,20240315,72000.00,3,CC03,20240316,20240317,3,42000.00,2.8);

-- Table: fan_feedback_survey
CREATE TABLE fan_feedback_survey (
    id INTEGER PRIMARY KEY,
    survey_id INTEGER,
    respondent_id INTEGER,
    response_date INTEGER,
    overall_rating INTEGER,
    storyline_rating INTEGER,
    character_rating INTEGER,
    artwork_rating INTEGER,
    pacing_rating INTEGER,
    satisfaction_score INTEGER,
    comments TEXT,
    platform TEXT,
    device_type TEXT,
    location_code TEXT,
    time_spent_minutes INTEGER,
    completed INTEGER,
    referral_source TEXT,
    demographic_segment TEXT,
    net_promoter_score INTEGER,
    follow_up_needed INTEGER
);
INSERT INTO fan_feedback_survey VALUES (1,901,10001,20240112,8,7,9,8,6,85,1,1,1,1,15,1,1,1,70,0);
INSERT INTO fan_feedback_survey VALUES (2,902,10002,20240218,9,8,8,9,7,90,2,2,2,2,20,1,2,2,75,0);
INSERT INTO fan_feedback_survey VALUES (3,903,10003,20240325,7,6,7,6,5,80,3,3,3,3,10,0,3,3,65,1);

-- Table: media_partner_performance
CREATE TABLE media_partner_performance (
    id INTEGER PRIMARY KEY,
    partner_id INTEGER,
    campaign_id INTEGER,
    start_date INTEGER,
    end_date INTEGER,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    cpm REAL,
    spend REAL,
    revenue_generated REAL,
    roi REAL,
    performance_grade TEXT,
    notes TEXT,
    created_at INTEGER,
    updated_at INTEGER,
    contract_type TEXT,
    renewal_date INTEGER,
    compliance_status TEXT,
    audit_required INTEGER
);
INSERT INTO media_partner_performance VALUES (1,1101,1201,20240101,20240131,100000,5000,5.0,10.0,5000.00,8000.00,1.6,A,1,20240102,20240103,Fixed,20240201,1,0);
INSERT INTO media_partner_performance VALUES (2,1102,1202,20240201,20240228,150000,7500,5.0,12.0,9000.00,13000.00,1.44,B,2,20240202,20240203,Variable,20240301,0,1);
INSERT INTO media_partner_performance VALUES (3,1103,1203,20240301,20240331,200000,10000,5.0,11.0,12000.00,18000.00,1.5,A,3,20240302,20240303,Fixed,20240401,1,0);

-- Table: animation_production_cost
CREATE TABLE animation_production_cost (
    id INTEGER PRIMARY KEY,
    project_id INTEGER,
    season_number INTEGER,
    episode_number INTEGER,
    direct_cost REAL,
    indirect_cost REAL,
    total_cost REAL,
    currency TEXT,
    cost_center_code TEXT,
    vendor_id INTEGER,
    start_date INTEGER,
    end_date INTEGER,
    overruns REAL,
    variance_percent REAL,
    approval_status TEXT,
    approved_by TEXT,
    created_at INTEGER,
    updated_at INTEGER,
    notes TEXT,
    funding_source TEXT,
    tax_credit_amount REAL
);
INSERT INTO animation_production_cost VALUES (1,1301,1,1,250000.00,50000.00,300000.00,USD,CC01,1401,20240101,20240131,5000.00,1.7,1,1501,20240102,20240103,1,GrantA,20000.00);
INSERT INTO animation_production_cost VALUES (2,1302,1,2,260000.00,52000.00,312000.00,EUR,CC02,1402,20240201,20240228,6000.00,1.9,2,1502,20240202,20240203,2,GrantB,25000.00);
INSERT INTO animation_production_cost VALUES (3,1303,2,1,270000.00,54000.00,324000.00,JPY,CC03,1403,20240301,20240331,7000.00,2.1,1,1503,20240302,20240303,3,GrantC,30000.00);

-- Table: character_voice_cast
CREATE TABLE character_voice_cast (
    id INTEGER PRIMARY KEY,
    character_id INTEGER,
    actor_id INTEGER,
    language_code TEXT,
    recording_date INTEGER,
    role_type TEXT,
    contract_id INTEGER,
    fee_amount REAL,
    currency TEXT,
    union_status TEXT,
    performance_notes TEXT,
    approved_by TEXT,
    approval_date INTEGER,
    audio_file_path TEXT,
    file_size INTEGER,
    bitrate INTEGER,
    sample_rate INTEGER,
    voice_tone TEXT,
    accent TEXT,
    created_at INTEGER,
    updated_at INTEGER
);
INSERT INTO character_voice_cast VALUES (1,20001,21001,EN,20240105,Lead,3001,5000.00,USD,Yes,1,1510,20240106,1,2000000,320,44100,Warm,American,20240107,20240108);
INSERT INTO character_voice_cast VALUES (2,20002,21002,FR,20240210,Supporting,3002,4000.00,EUR,No,2,1511,20240211,2,1800000,256,48000,Deep,British,20240212,20240213);
INSERT INTO character_voice_cast VALUES (3,20003,21003,JP,20240315,Guest,3003,4500.00,JPY,Yes,3,1512,20240316,3,1900000,192,44100,Soft,Japanese,20240317,20240318);