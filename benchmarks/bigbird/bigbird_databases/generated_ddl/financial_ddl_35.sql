-- Branch facilities information
CREATE TABLE branch_facilities (
    facility_id INTEGER NOT NULL PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    facility_type INTEGER NOT NULL,
    size_sqft INTEGER NOT NULL,
    capacity INTEGER NOT NULL,
    opening_date INTEGER NOT NULL,
    closing_date INTEGER,
    maintenance_schedule INTEGER NOT NULL,
    energy_rating INTEGER NOT NULL,
    security_level INTEGER NOT NULL,
    wheelchair_access INTEGER NOT NULL,
    cafeteria_present INTEGER NOT NULL,
    parking_spaces INTEGER NOT NULL,
    hvac_system INTEGER NOT NULL,
    security_system INTEGER NOT NULL,
    fire_safety_cert INTEGER NOT NULL,
    last_inspection_date INTEGER NOT NULL,
    compliance_status INTEGER NOT NULL,
    notes INTEGER,
    operational_status INTEGER NOT NULL,
    inspection_cycle_days INTEGER NOT NULL
);
INSERT INTO branch_facilities VALUES (1,101,1,2000,4,20200101,NULL,90,5,3,1,0,50,2,1,1,20210301,1,0,1,180);
INSERT INTO branch_facilities VALUES (2,102,2,3500,8,20190515,NULL,180,4,2,1,1,120,3,2,1,20201220,1,1,2,365);
INSERT INTO branch_facilities VALUES (3,103,3,1500,2,20210810,NULL,60,3,1,0,0,30,1,1,0,20210915,0,0,0,90);

-- Regional demographic survey data
CREATE TABLE regional_demographic_survey (
    survey_id INTEGER NOT NULL PRIMARY KEY,
    region_id INTEGER NOT NULL,
    year INTEGER NOT NULL,
    population_total INTEGER NOT NULL,
    median_age INTEGER NOT NULL,
    gender_ratio INTEGER NOT NULL,
    household_income_median INTEGER NOT NULL,
    unemployment_rate INTEGER NOT NULL,
    education_rate INTEGER NOT NULL,
    ethnicity_major INTEGER NOT NULL,
    ethnicity_minor INTEGER NOT NULL,
    housing_units INTEGER NOT NULL,
    avg_house_price INTEGER NOT NULL,
    vehicle_ownership_rate INTEGER NOT NULL,
    internet_penetration INTEGER NOT NULL,
    health_index INTEGER NOT NULL,
    crime_rate INTEGER NOT NULL,
    survey_conducted_by INTEGER NOT NULL,
    methodology INTEGER NOT NULL,
    confidence_interval INTEGER NOT NULL,
    notes INTEGER,
    data_quality_score INTEGER NOT NULL
);
INSERT INTO regional_demographic_survey VALUES (1,201,2022,1250000,36,1020,55000,6,85,1,2,400000,250000,78,92,80,30,5,3,95,0,88);
INSERT INTO regional_demographic_survey VALUES (2,202,2022,980000,34,1015,48000,5,80,2,3,350000,210000,70,88,75,45,6,2,90,0,82);
INSERT INTO regional_demographic_survey VALUES (3,203,2022,730000,37,1030,61000,7,88,1,4,300000,230000,82,95,85,25,4,1,93,0,90);

-- Marketing media plan details
CREATE TABLE marketing_media_plan (
    plan_id INTEGER NOT NULL PRIMARY KEY,
    campaign_id INTEGER NOT NULL,
    medium_type INTEGER NOT NULL,
    channel_name INTEGER NOT NULL,
    start_date INTEGER NOT NULL,
    end_date INTEGER NOT NULL,
    budget_usd INTEGER NOT NULL,
    allocated_impressions INTEGER NOT NULL,
    cpm INTEGER NOT NULL,
    creative_version INTEGER NOT NULL,
    target_audience INTEGER NOT NULL,
    geographic_target INTEGER NOT NULL,
    frequency_cap INTEGER NOT NULL,
    click_through_rate INTEGER NOT NULL,
    conversion_rate INTEGER NOT NULL,
    sponsor INTEGER NOT NULL,
    approval_status INTEGER NOT NULL,
    created_by INTEGER NOT NULL,
    created_date INTEGER NOT NULL,
    last_modified_by INTEGER NOT NULL,
    last_modified_date INTEGER NOT NULL,
    notes INTEGER
);
INSERT INTO marketing_media_plan VALUES (1,301,1,10,20230101,20230331,500000,2000000,25,2,5,3,3,2,1,7,1,1001,20221215,1002,20230301,0);
INSERT INTO marketing_media_plan VALUES (2,302,2,12,20230401,20230630,750000,3000000,30,3,6,4,2,3,2,8,2,1003,20230301,1004,20230615,1);
INSERT INTO marketing_media_plan VALUES (3,303,3,14,20230701,20230930,600000,2500000,28,1,4,2,4,1,3,9,0,1005,20230610,1006,20230920,0);

-- Customer support center statistics
CREATE TABLE customer_support_center (
    center_id INTEGER NOT NULL PRIMARY KEY,
    location_city INTEGER NOT NULL,
    opening_date INTEGER NOT NULL,
    total_agents INTEGER NOT NULL,
    average_handle_time INTEGER NOT NULL,
    first_contact_resolution_rate INTEGER NOT NULL,
    satisfaction_score INTEGER NOT NULL,
    call_volume_daily INTEGER NOT NULL,
    email_volume_daily INTEGER NOT NULL,
    chat_volume_daily INTEGER NOT NULL,
    escalation_rate INTEGER NOT NULL,
    training_hours_per_agent INTEGER NOT NULL,
    tech_support_level INTEGER NOT NULL,
    language_supported INTEGER NOT NULL,
    operating_hours INTEGER NOT NULL,
    shift_pattern INTEGER NOT NULL,
    manager_name INTEGER NOT NULL,
    compliance_audit_date INTEGER NOT NULL,
    security_certification INTEGER NOT NULL,
    notes INTEGER,
    performance_score INTEGER NOT NULL,
    last_review_date INTEGER NOT NULL
);
INSERT INTO customer_support_center VALUES (1,501,20180115,25,300,85,90,1500,800,600,5,40,2,1,24,2,2001,20221201,1,0,88,20230115);
INSERT INTO customer_support_center VALUES (2,502,20190520,30,280,88,92,1800,950,700,4,45,3,2,24,3,2002,20221115,1,1,91,20230220);
INSERT INTO customer_support_center VALUES (3,503,20201005,20,320,80,85,1200,600,400,6,35,1,1,24,1,2003,20230110,0,0,82,20230305);

-- Financial product usage metrics
CREATE TABLE financial_product_usage (
    usage_id INTEGER NOT NULL PRIMARY KEY,
    product_id INTEGER NOT NULL,
    customer_segment INTEGER NOT NULL,
    period_start INTEGER NOT NULL,
    period_end INTEGER NOT NULL,
    active_users INTEGER NOT NULL,
    transactions_count INTEGER NOT NULL,
    total_volume INTEGER NOT NULL,
    average_transaction_value INTEGER NOT NULL,
    churn_rate INTEGER NOT NULL,
    net_promoter_score INTEGER NOT NULL,
    upsell_rate INTEGER NOT NULL,
    cross_sell_rate INTEGER NOT NULL,
    support_tickets INTEGER NOT NULL,
    feature_adoption_rate INTEGER NOT NULL,
    feedback_score INTEGER NOT NULL,
    version INTEGER NOT NULL,
    region INTEGER NOT NULL,
    compliance_flag INTEGER NOT NULL,
    last_updated INTEGER NOT NULL,
    notes INTEGER,
    data_source INTEGER NOT NULL
);
INSERT INTO financial_product_usage VALUES (1,601,1,20230101,20230331,15000,45000,7500000,166,5,45,8,12,30,70,80,3,2,1,20230401,0,4);
INSERT INTO financial_product_usage VALUES (2,602,2,20230401,20230630,18000,54000,9000000,166,4,48,9,10,35,73,85,4,3,1,20230701,1,5);
INSERT INTO financial_product_usage VALUES (3,603,3,20230701,20230930,13000,39000,6500000,166,6,42,7,8,28,68,78,2,1,0,20231001,0,3);

-- Risk model parameters
CREATE TABLE risk_model_parameters (
    param_id INTEGER NOT NULL PRIMARY KEY,
    model_name INTEGER NOT NULL,
    version INTEGER NOT NULL,
    effective_date INTEGER NOT NULL,
    param_name INTEGER NOT NULL,
    param_type INTEGER NOT NULL,
    default_value INTEGER NOT NULL,
    min_value INTEGER NOT NULL,
    max_value INTEGER NOT NULL,
    weighting_factor INTEGER NOT NULL,
    impact_score INTEGER NOT NULL,
    data_source INTEGER NOT NULL,
    validation_status INTEGER NOT NULL,
    last_validated INTEGER NOT NULL,
    created_by INTEGER NOT NULL,
    created_date INTEGER NOT NULL,
    notes INTEGER,
    sensitivity INTEGER NOT NULL,
    correlation_with_other INTEGER NOT NULL,
    risk_category INTEGER NOT NULL,
    regulatory_impact INTEGER NOT NULL,
    audit_trail_id INTEGER
);
INSERT INTO risk_model_parameters VALUES (1,701,1,20230101,1001,1,50,10,100,20,80,5,1,20230215,9001,20230101,0,3,2,1,4001);
INSERT INTO risk_model_parameters VALUES (2,702,2,20230401,1002,2,30,5,60,15,70,6,0,20230520,9002,20230401,1,2,3,0,4002);
INSERT INTO risk_model_parameters VALUES (3,703,1,20230701,1003,1,45,15,90,25,85,7,1,20230810,9003,20230701,0,1,1,1,4003);

-- Regulatory policy changes
CREATE TABLE regulatory_policy_change (
    change_id INTEGER NOT NULL PRIMARY KEY,
    policy_name INTEGER NOT NULL,
    amendment_number INTEGER NOT NULL,
    effective_date INTEGER NOT NULL,
    expiration_date INTEGER,
    jurisdiction INTEGER NOT NULL,
    description INTEGER NOT NULL,
    responsible_department INTEGER NOT NULL,
    approval_status INTEGER NOT NULL,
    publication_date INTEGER NOT NULL,
    feedback_deadline INTEGER NOT NULL,
    public_comment_count INTEGER NOT NULL,
    internal_review_score INTEGER NOT NULL,
    compliance_required INTEGER NOT NULL,
    enforcement_mechanism INTEGER NOT NULL,
    penalty_amount INTEGER NOT NULL,
    reference_document INTEGER NOT NULL,
    change_type INTEGER NOT NULL,
    stakeholder_impact INTEGER NOT NULL,
    notes INTEGER,
    last_updated INTEGER NOT NULL,
    status INTEGER NOT NULL
);
INSERT INTO regulatory_policy_change VALUES (1,801,1,20230115,20240115,10,2001,3001,1,20230120,20230215,120,85,1,2,50000,4001,1,3,0,20230301,1);
INSERT INTO regulatory_policy_change VALUES (2,802,2,20230401,NULL,12,2002,3002,0,20230405,20230501,80,78,1,3,75000,4002,2,2,1,20230601,0);
INSERT INTO regulatory_policy_change VALUES (3,803,1,20230710,20240710,11,2003,3003,1,20230715,20230810,150,90,1,1,60000,4003,1,4,0,20230901,1);

-- IT service requests
CREATE TABLE it_service_request (
    request_id INTEGER NOT NULL PRIMARY KEY,
    ticket_number INTEGER NOT NULL,
    requester_id INTEGER NOT NULL,
    department INTEGER NOT NULL,
    request_type INTEGER NOT NULL,
    priority INTEGER NOT NULL,
    status INTEGER NOT NULL,
    opened_date INTEGER NOT NULL,
    closed_date INTEGER,
    sla_due_date INTEGER NOT NULL,
    assigned_to INTEGER NOT NULL,
    resolution_category INTEGER NOT NULL,
    root_cause INTEGER NOT NULL,
    effort_hours INTEGER NOT NULL,
    cost_estimate INTEGER NOT NULL,
    approval_needed INTEGER NOT NULL,
    approved_by INTEGER,
    approval_date INTEGER,
    escalated_flag INTEGER NOT NULL,
    resolution_notes INTEGER,
    last_updated INTEGER NOT NULL,
    satisfaction_score INTEGER
);
INSERT INTO it_service_request VALUES (1,9001,1001,20,1,2,1,20230105,NULL,20230112,2001,3,4,5,200,0,NULL,NULL,0,0,20230110,85);
INSERT INTO it_service_request VALUES (2,9002,1002,22,2,1,0,20230215,20230220,20230222,2002,2,1,8,500,1,3001,20230218,1,1,20230220,90);
INSERT INTO it_service_request VALUES (3,9003,1003,21,3,3,2,20230301,20230310,20230305,2003,5,3,12,750,0,NULL,NULL,0,2,20230308,80);

-- Environmental impact projects
CREATE TABLE environmental_impact_project (
    project_id INTEGER NOT NULL PRIMARY KEY,
    project_name INTEGER NOT NULL,
    start_date INTEGER NOT NULL,
    end_date INTEGER,
    location_id INTEGER NOT NULL,
    sector INTEGER NOT NULL,
    expected_reduction_co2 INTEGER NOT NULL,
    budget_usd INTEGER NOT NULL,
    funding_source INTEGER NOT NULL,
    project_manager INTEGER NOT NULL,
    stakeholder_count INTEGER NOT NULL,
    compliance_status INTEGER NOT NULL,
    risk_level INTEGER NOT NULL,
    monitoring_frequency INTEGER NOT NULL,
    data_collection_method INTEGER NOT NULL,
    reported_metrics INTEGER NOT NULL,
    third_party_audit INTEGER NOT NULL,
    certification INTEGER NOT NULL,
    public_announcement_date INTEGER NOT NULL,
    notes INTEGER,
    last_review_date INTEGER NOT NULL,
    status INTEGER NOT NULL
);
INSERT INTO environmental_impact_project VALUES (1,10001,20220101,20231231,501,1,5000,2000000,10,4001,25,1,2,30,5,0,1,1,20220115,0,20231201,1);
INSERT INTO environmental_impact_project VALUES (2,10002,20220315,20240930,502,2,8000,3500000,11,4002,40,1,3,45,6,1,0,2,20220320,1,20240901,2);
INSERT INTO environmental_impact_project VALUES (3,10003,20230501,NULL,503,3,3000,1500000,12,4003,15,0,1,60,4,0,0,0,20230510,0,20231215,0);

-- Vendor licensing records
CREATE TABLE vendor_licensing (
    license_id INTEGER NOT NULL PRIMARY KEY,
    vendor_id INTEGER NOT NULL,
    license_type INTEGER NOT NULL,
    license_key INTEGER NOT NULL,
    issue_date INTEGER NOT NULL,
    expiry_date INTEGER NOT NULL,
    renewal_required INTEGER NOT NULL,
    compliance_status INTEGER NOT NULL,
    usage_limit INTEGER NOT NULL,
    used_quantity INTEGER NOT NULL,
    authorized_regions INTEGER NOT NULL,
    cost_usd INTEGER NOT NULL,
    contract_id INTEGER NOT NULL,
    primary_contact INTEGER NOT NULL,
    contact_email INTEGER NOT NULL,
    support_level INTEGER NOT NULL,
    audit_date INTEGER NOT NULL,
    last_checked INTEGER NOT NULL,
    notes INTEGER,
    status INTEGER NOT NULL,
    last_updated INTEGER NOT NULL,
    risk_score INTEGER NOT NULL
);
INSERT INTO vendor_licensing VALUES (1,6001,1,123456,20220101,20230101,1,1,1000,200,5,50000,7001,8001,9001,2,20221215,20221220,0,1,20230101,20);
INSERT INTO vendor_licensing VALUES (2,6002,2,234567,20220415,20230415,1,0,1500,300,6,75000,7002,8002,9002,3,20230310,20230312,1,0,20230415,35);
INSERT INTO vendor_licensing VALUES (3,6003,1,345678,20220720,20230720,0,1,2000,500,7,100000,7003,8003,9003,1,20230601,20230605,0,1,20230720,15);