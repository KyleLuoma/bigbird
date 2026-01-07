-- Facility energy audit records
CREATE TABLE facility_energy_audit
(
    audit_id                 INTEGER PRIMARY KEY,
    facility_id              INTEGER NOT NULL,
    audit_year               INTEGER NOT NULL,
    total_kwh                REAL NOT NULL,
    peak_demand_kw           REAL NOT NULL,
    hvac_efficiency_pct      REAL NOT NULL,
    lighting_efficiency_pct  REAL NOT NULL,
    solar_generation_kwh     REAL NOT NULL,
    wind_generation_kwh      REAL NOT NULL,
    diesel_backup_hours      INTEGER NOT NULL,
    meter_start_reading      REAL NOT NULL,
    meter_end_reading        REAL NOT NULL,
    auditor_name_id          INTEGER NOT NULL,
    audit_status_id          INTEGER NOT NULL,
    notes_id                 INTEGER,
    created_yyyymmdd         INTEGER NOT NULL,
    updated_yyyymmdd         INTEGER,
    compliance_score         INTEGER,
    remarks_id               INTEGER,
    region_code_id           INTEGER
);

INSERT INTO facility_energy_audit VALUES (1,101,2022,1250000.5,450.3,92.5,88.1,15000.0,8000.0,120,100000.0,115000.0,1001,1,0,20220115,20220120,85,0,10);
INSERT INTO facility_energy_audit VALUES (2,102,2023,1325000.0,470.0,93.0,89.0,16000.0,8500.0,130,105000.0,121000.0,1002,2,0,20230110,20230112,88,0,11);
INSERT INTO facility_energy_audit VALUES (3,103,2021,1198000.3,430.7,91.2,87.5,14000.0,7500.0,110,98000.0,112000.0,1003,1,0,20211205,20211207,82,0,12);

-- Branch employee statistics
CREATE TABLE branch_employee_stats
(
    stat_id                  INTEGER PRIMARY KEY,
    branch_id                INTEGER NOT NULL,
    year                     INTEGER NOT NULL,
    total_employees          INTEGER NOT NULL,
    full_time_count          INTEGER NOT NULL,
    part_time_count          INTEGER NOT NULL,
    avg_tenure_years         REAL NOT NULL,
    turnover_rate_pct        REAL NOT NULL,
    training_hours_per_emp   REAL NOT NULL,
    certifications_obtained  INTEGER NOT NULL,
    promotions_last_year     INTEGER NOT NULL,
    grievances_filed         INTEGER,
    avg_salary_usd           REAL NOT NULL,
    bonus_pool_usd           REAL,
    overtime_hours           REAL,
    employee_satisfaction_pct REAL,
    sick_days_taken          INTEGER,
    maternity_leaves_taken   INTEGER,
    retirement_age_avg       REAL,
    diversity_index          REAL,
    remote_work_pct          REAL
);

INSERT INTO branch_employee_stats VALUES (1,201,2022,85,60,25,5.3,7.2,12.5,30,5,2,72000.0,150000.0,300.0,78.5,12,1,58.0,0.42,20.0);
INSERT INTO branch_employee_stats VALUES (2,202,2023,92,70,22,4.8,6.5,13.0,35,6,1,75000.0,160000.0,280.0,80.1,10,0,60.0,0.45,22.0);
INSERT INTO branch_employee_stats VALUES (3,203,2021,78,55,23,6.1,8.0,11.8,28,4,3,69500.0,140000.0,320.0,75.0,14,2,57.5,0.40,18.0);

-- Digital service usage log
CREATE TABLE digital_service_log
(
    log_id                   INTEGER PRIMARY KEY,
    service_id               INTEGER NOT NULL,
    user_id                  INTEGER NOT NULL,
    access_date_yyyymmdd     INTEGER NOT NULL,
    access_time_hhmmss       INTEGER NOT NULL,
    device_type_id           INTEGER NOT NULL,
    os_version_id            INTEGER NOT NULL,
    app_version_id           INTEGER NOT NULL,
    session_duration_sec     REAL NOT NULL,
    api_calls_made           INTEGER NOT NULL,
    data_consumed_mb         REAL NOT NULL,
    error_code_id            INTEGER,
    response_time_ms         REAL,
    location_region_id       INTEGER,
    ip_address_num           INTEGER,
    vpn_used_flag            INTEGER,
    two_factor_auth_flag     INTEGER,
    payload_size_kb          REAL,
    feature_flag_id          INTEGER,
    subscription_tier_id     INTEGER,
    churn_risk_score         REAL
);

INSERT INTO digital_service_log VALUES (1,301,5001,20230315,83045,1,10,5,240.5,15,12.3,NULL,120.5,3,3232235777,0,1,0.8,2,1,0.23);
INSERT INTO digital_service_log VALUES (2,302,5002,20230401,94530,2,11,6,315.0,20,15.7,404,130.2,5,3232235778,1,0,1.2,3,2,0.45);
INSERT INTO digital_service_log VALUES (3,303,5003,20230220,112015,3,12,7,180.2,10,9.5,NULL,95.0,2,3232235779,0,1,0.5,1,3,0.15);

-- Supply chain event tracking
CREATE TABLE supply_chain_event
(
    event_id                 INTEGER PRIMARY KEY,
    shipment_id              INTEGER NOT NULL,
    event_type_id            INTEGER NOT NULL,
    event_timestamp_yyyymmdd INTEGER NOT NULL,
    location_id              INTEGER NOT NULL,
    carrier_id               INTEGER NOT NULL,
    status_code_id           INTEGER NOT NULL,
    temperature_celsius      REAL,
    humidity_percent         REAL,
    weight_kg                REAL,
    volume_cbm               REAL,
    delay_minutes            INTEGER,
    reason_code_id           INTEGER,
    notes_id                 INTEGER,
    inspected_flag           INTEGER,
    customs_clearance_flag   INTEGER,
    damage_reported_flag     INTEGER,
    insurance_claim_id       INTEGER,
    estimated_arrival_yyyymmdd INTEGER,
    actual_arrival_yyyymmdd   INTEGER,
    priority_level_id        INTEGER
);

INSERT INTO supply_chain_event VALUES (1,4001,1,20230601,101,201,2,5.0,65.0,1200.5,2.5,30,3,0,1,1,0,0,20230610,20230612,1);
INSERT INTO supply_chain_event VALUES (2,4002,2,20230520,102,202,3,2.0,55.0,800.0,1.8,0,0,0,1,0,0,0,20230525,20230525,2);
INSERT INTO supply_chain_event VALUES (3,4003,3,20230715,103,203,4,8.0,70.0,1500.0,3.0,45,5,1,0,1,1,1001,20230722,20230724,1);

-- Environmental compliance record
CREATE TABLE environmental_compliance_record
(
    record_id                INTEGER PRIMARY KEY,
    site_id                  INTEGER NOT NULL,
    reporting_year           INTEGER NOT NULL,
    emission_co2_tons        REAL NOT NULL,
    emission_ch4_tons        REAL NOT NULL,
    waste_generated_tons     REAL NOT NULL,
    waste_recycled_tons      REAL NOT NULL,
    water_consumption_m3     REAL NOT NULL,
    energy_consumption_mwh   REAL NOT NULL,
    compliance_status_id    INTEGER NOT NULL,
    audit_score              REAL,
    corrective_actions       INTEGER,
    fines_imposed_usd        REAL,
    inspector_id             INTEGER,
    inspection_date_yyyymmdd INTEGER,
    permit_valid_until_yyyymmdd INTEGER,
    renewable_energy_pct     REAL,
    biodiversity_index       REAL,
    community_engagement_score REAL,
    sustainability_rating_id INTEGER,
    greenhouse_gas_intensity REAL,
    certification_id         INTEGER
);

INSERT INTO environmental_compliance_record VALUES (1,501,2022,1200.5,45.3,300.0,250.0,50000.0,8000.0,1,92.5,2,15000.0,301,20221215,20231215,35.0,0.78,85.0,3,0.45,101);
INSERT INTO environmental_compliance_record VALUES (2,502,2023,1150.0,40.0,280.0,260.0,48000.0,7900.0,1,94.0,1,12000.0,302,20230110,20240110,38.0,0.80,88.0,3,0.42,102);
INSERT INTO environmental_compliance_record VALUES (3,503,2021,1300.7,50.1,320.5,270.0,52000.0,8200.0,2,85.0,3,20000.0,303,20211105,20221105,30.0,0.72,80.0,4,0.50,103);

-- Corporate governance details
CREATE TABLE corporate_governance
(
    gov_id                   INTEGER PRIMARY KEY,
    board_id                 INTEGER NOT NULL,
    meeting_date_yyyymmdd    INTEGER NOT NULL,
    meeting_type_id          INTEGER NOT NULL,
    attendees_count          INTEGER NOT NULL,
    resolutions_passed       INTEGER,
    conflicts_of_interest    INTEGER,
    audit_committee_flag     INTEGER,
    compensation_committee_flag INTEGER,
    risk_committee_flag      INTEGER,
    external_auditor_id      INTEGER,
    auditor_fee_usd          REAL,
    legal_fee_usd            REAL,
    compliance_officer_id    INTEGER,
    policy_updates           INTEGER,
    shareholder_votes        INTEGER,
    voting_percentage        REAL,
    executive_retention_rate REAL,
    board_diversity_index    REAL,
    succession_plan_flag     INTEGER,
    ESG_score                REAL,
    regulatory_fines_usd     REAL,
    notes_id                 INTEGER
);

INSERT INTO corporate_governance VALUES (1,601,20230120,1,12,5,0,1,1,1,701,25000.0,15000.0,801,3,200,95.0,88.5,0.67,1,78.0,0,0);
INSERT INTO corporate_governance VALUES (2,602,20230715,2,14,6,1,1,0,1,702,26000.0,15500.0,802,4,210,96.0,90.0,0.70,1,80.5,0,0);
INSERT INTO corporate_governance VALUES (3,603,20221205,1,10,4,0,0,1,0,703,24000.0,14000.0,803,2,190,94.0,85.0,0.65,0,75.0,5000.0,0);

-- Market research survey results
CREATE TABLE market_research_survey
(
    survey_id                INTEGER PRIMARY KEY,
    campaign_id              INTEGER NOT NULL,
    respondent_id            INTEGER NOT NULL,
    response_date_yyyymmdd   INTEGER NOT NULL,
    age                      INTEGER,
    gender_id                INTEGER,
    income_bracket_id        INTEGER,
    education_level_id       INTEGER,
    employment_status_id     INTEGER,
    satisfaction_score       REAL,
    likelihood_to_recommend  REAL,
    product_usage_freq_week  REAL,
    brand_awareness_score    REAL,
    price_sensitivity_score  REAL,
    feature_importance_1     REAL,
    feature_importance_2     REAL,
    feature_importance_3     REAL,
    overall_rating           REAL,
    comments_id              INTEGER,
    net_promoter_score       REAL,
    segment_id               INTEGER,
    survey_completion_time_sec REAL,
    device_used_id           INTEGER
);

INSERT INTO market_research_survey VALUES (1,801,9001,20230412,35,1,3,2,1,8.5,7.2,3.0,6.8,5.5,9.1,8.7,8.3,8.0,0,9.0,2,420.5,1);
INSERT INTO market_research_survey VALUES (2,802,9002,20230508,42,2,4,3,2,7.0,6.5,2.5,5.9,6.0,8.0,7.5,8.1,7.5,0,8.0,3,380.0,2);
INSERT INTO market_research_survey VALUES (3,803,9003,20230620,28,1,2,1,1,9.2,8.8,4.0,7.5,4.9,9.5,9.2,9.0,9.3,0,9.5,1,450.2,1);

-- Health and safety inspection logs
CREATE TABLE health_safety_inspection
(
    inspection_id            INTEGER PRIMARY KEY,
    site_id                  INTEGER NOT NULL,
    inspector_id             INTEGER NOT NULL,
    inspection_date_yyyymmdd INTEGER NOT NULL,
    inspection_type_id       INTEGER NOT NULL,
    violations_found         INTEGER,
    severity_score           REAL,
    corrective_actions_taken INTEGER,
    follow_up_date_yyyymmdd  INTEGER,
    equipment_checked        INTEGER,
    fire_extinguishers_ok    INTEGER,
    emergency_exits_ok       INTEGER,
    first_aid_kits_ok        INTEGER,
    hazardous_materials_ok   INTEGER,
    PPE_compliance_pct       REAL,
    training_completed_flag  INTEGER,
    incident_reports_reviewed INTEGER,
    safety_meeting_conducted INTEGER,
    notes_id                 INTEGER,
    overall_compliance_pct   REAL,
    penalty_fine_usd         REAL,
    insurance_claim_id       INTEGER,
    continuous_improvement_score REAL
);

INSERT INTO health_safety_inspection VALUES (1,701,901,20230310,1,2,4.5,3,20230410,1,1,1,1,1,92.0,1,5,1,0,95.0,5000.0,1001,80.0);
INSERT INTO health_safety_inspection VALUES (2,702,902,20230422,2,0,0.0,0,20230522,1,1,1,1,1,98.0,1,3,1,0,99.0,0.0,1002,90.0);
INSERT INTO health_safety_inspection VALUES (3,703,903,20230515,1,5,6.2,4,20230615,1,0,0,1,0,85.0,0,7,0,0,80.0,7500.0,1003,70.0);

-- IT asset inventory
CREATE TABLE it_asset_inventory
(
    asset_id                 INTEGER PRIMARY KEY,
    asset_type_id            INTEGER NOT NULL,
    manufacturer_id          INTEGER NOT NULL,
    model_number_id          INTEGER NOT NULL,
    serial_number            TEXT NOT NULL,
    purchase_date_yyyymmdd   INTEGER NOT NULL,
    warranty_expiry_yyyymmdd INTEGER,
    assigned_to_user_id      INTEGER,
    location_id              INTEGER,
    status_id                INTEGER,
    cpu_cores                INTEGER,
    ram_gb                   REAL,
    storage_tb               REAL,
    os_version_id            INTEGER,
    last_patch_date_yyyymmdd INTEGER,
    network_ip_address_num   INTEGER,
    mac_address_num          INTEGER,
    asset_value_usd          REAL,
    depreciation_pct         REAL,
    disposal_date_yyyymmdd    INTEGER,
    disposal_method_id       INTEGER,
    insurance_coverage_usd   REAL,
    maintenance_contract_id  INTEGER,
    notes_id                 INTEGER,
    compliance_tag_id        INTEGER
);

INSERT INTO it_asset_inventory VALUES (1,1,10,1001,'SN123456',20200115,20240115,5001,801,1,8,16.0,1.0,5,20230301,3232235777,11223344,2000.0,20.0,0,0,5000.0,3001,0,2);
INSERT INTO it_asset_inventory VALUES (2,2,11,1002,'SN234567',20210320,20250320,5002,802,1,4,8.0,0.5,6,20230415,3232235778,11223345,800.0,25.0,0,0,3500.0,3002,0,3);
INSERT INTO it_asset_inventory VALUES (3,3,12,1003,'SN345678',20220705,20260705,5003,803,2,16,32.0,2.0,7,20230510,3232235779,11223346,4500.0,15.0,0,0,7500.0,3003,0,4);

-- Customer interaction channel usage
CREATE TABLE customer_interaction_channel
(
    interaction_id           INTEGER PRIMARY KEY,
    customer_id              INTEGER NOT NULL,
    channel_type_id          INTEGER NOT NULL,
    interaction_timestamp_yyyymmdd INTEGER NOT NULL,
    duration_sec             REAL,
    resolved_flag            INTEGER,
    agent_id                 INTEGER,
    satisfaction_score       REAL,
    escalation_flag          INTEGER,
    feedback_score           REAL,
    issue_category_id        INTEGER,
    priority_level_id        INTEGER,
    first_contact_resolve_flag INTEGER,
    follow_up_needed_flag    INTEGER,
    survey_sent_flag         INTEGER,
    survey_response_rate_pct REAL,
    net_promoter_score       REAL,
    csat_score               REAL,
    notes_id                 INTEGER,
    cost_usd                 REAL,
    revenue_generated_usd    REAL,
    channel_efficiency_score REAL,
    average_handle_time_sec  REAL,
    root_cause_analysis_id   INTEGER
);

INSERT INTO customer_interaction_channel VALUES (1,6001,1,20230612,300.5,1,7001,9.2,0,8.5,2,1,1,0,1,85.0,9.0,9.5,0,15.0,0,0.90,300.5,101);
INSERT INTO customer_interaction_channel VALUES (2,6002,2,20230525,420.0,0,7002,6.8,1,6.0,4,2,0,1,1,70.0,5.0,6.5,0,25.0,0,0.65,420.0,102);
INSERT INTO customer_interaction_channel VALUES (3,6003,3,20230418,150.2,1,7003,8.0,0,7.5,1,3,1,0,0,80.0,8.0,8.2,0,10.0,0,0.85,150.2,103);