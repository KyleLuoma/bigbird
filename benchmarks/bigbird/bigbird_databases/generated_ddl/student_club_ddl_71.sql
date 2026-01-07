-- Research project detailed information
CREATE TABLE research_project_detail
(
    proj_id               INTEGER PRIMARY KEY,
    sponsor_id            INTEGER,
    lead_faculty_id       INTEGER,
    start_year            INTEGER,
    end_year              INTEGER,
    budget_total          INTEGER,
    budget_allocated      INTEGER,
    funding_source_id     INTEGER,
    department_code       INTEGER,
    college_code          INTEGER,
    project_phase         INTEGER,
    milestone_1           INTEGER,
    milestone_2           INTEGER,
    milestone_3           INTEGER,
    milestone_4           INTEGER,
    expected_outcome_1    INTEGER,
    expected_outcome_2    INTEGER,
    expected_outcome_3    INTEGER,
    actual_outcome_1      INTEGER,
    actual_outcome_2      INTEGER,
    actual_outcome_3      INTEGER,
    status_flag           INTEGER,
    review_score          INTEGER,
    collaboration_level   INTEGER
);

INSERT INTO research_project_detail VALUES (1,10,100,2022,2025,500000,250000,20,30,40,1,10,20,30,40,5,6,7,5,6,7,1,85,2);
INSERT INTO research_project_detail VALUES (2,11,101,2021,2024,750000,400000,21,31,41,2,11,21,31,41,8,9,10,8,9,10,2,90,3);
INSERT INTO research_project_detail VALUES (3,12,102,2023,2026,600000,300000,22,32,42,3,12,22,32,42,11,12,13,11,12,13,3,88,1);

-- Campus infrastructure assets
CREATE TABLE campus_infrastructure
(
    asset_id                INTEGER PRIMARY KEY,
    asset_type_code         INTEGER,
    location_building_id    INTEGER,
    location_floor          INTEGER,
    acquisition_year        INTEGER,
    cost_initial            INTEGER,
    depreciation_years      INTEGER,
    maintenance_cycle_month INTEGER,
    last_maintenance_year  INTEGER,
    warranty_expiry_year    INTEGER,
    status_code             INTEGER,
    assigned_department_id  INTEGER,
    energy_rating           INTEGER,
    square_feet             INTEGER,
    capacity_units          INTEGER,
    compliance_flag         INTEGER,
    insurance_policy_id     INTEGER,
    vendor_id               INTEGER,
    scrap_value_estimate    INTEGER,
    replacement_cost_est    INTEGER,
    utilization_percent     INTEGER,
    risk_level_code         INTEGER,
    last_inspection_year    INTEGER,
    audit_flag              INTEGER,
    lifecycle_stage         INTEGER,
    sustainability_score    INTEGER,
    funding_source_id       INTEGER,
    project_id_link         INTEGER,
    accountability_officer INTEGER,
    maintenance_budget      INTEGER
);

INSERT INTO campus_infrastructure VALUES (101,1,10,2,2015,200000,20,12,2022,2027,1,5,85,15000,200,1,301,401,50000,250000,75,2,2023,0,3,90,12,2001,6001,1500);
INSERT INTO campus_infrastructure VALUES (102,2,11,3,2018,350000,15,6,2023,2025,1,6,80,25000,300,1,302,402,60000,300000,80,3,2022,1,2,88,13,13,2002,6002,1700);
INSERT INTO campus_infrastructure VALUES (103,3,12,1,2020,500000,10,3,2024,2024,1,7,78,35000,400,1,303,403,70000,350000,85,4,2021,0,1,85,14,14,2003,6003,1900);

-- Alumni giving records
CREATE TABLE alumni_giving
(
    giving_id               INTEGER PRIMARY KEY,
    alumni_id               INTEGER,
    donation_year           INTEGER,
    amount_usd              INTEGER,
    donation_type_code      INTEGER,
    campaign_id             INTEGER,
    fund_designation_id     INTEGER,
    receipt_number          INTEGER,
    tax_deductible_flag     INTEGER,
    matching_gift_flag      INTEGER,
    acknowledgement_sent   INTEGER,
    thank_you_sent          INTEGER,
    recurring_flag          INTEGER,
    payment_method_code     INTEGER,
    pledge_amount           INTEGER,
    pledge_end_year         INTEGER,
    honor_recipient_flag    INTEGER,
    legacy_gift_flag        INTEGER,
    crypto_donation_flag    INTEGER,
    donor_level_code        INTEGER,
    contact_preference_code INTEGER,
    last_update_year        INTEGER,
    audit_trail_id          INTEGER,
    source_system_id        INTEGER,
    verification_status     INTEGER,
    portfolio_id            INTEGER,
    allocation_percent      INTEGER,
    grant_restricted_flag   INTEGER,
    supervisor_id           INTEGER,
    notes_flag              INTEGER
);

INSERT INTO alumni_giving VALUES (1001,5001,2022,15000,1,2001,3001,4001,1,0,1,1,0,2,15000,2025,0,0,0,3,1,2023,9001,10,1,50001,100,0,6001,0);
INSERT INTO alumni_giving VALUES (1002,5002,2021,25000,2,2002,3002,4002,1,1,1,1,1,3,25000,2026,1,0,0,4,2,2022,9002,11,1,50002,120,1,6002,1);
INSERT INTO alumni_giving VALUES (1003,5003,2023,5000,1,2003,3003,4003,1,0,0,0,0,1,5000,2024,0,1,0,3,1,2023,9003,12,0,50003,80,0,6003,0);

-- Health service visit logs
CREATE TABLE health_service_visit
(
    visit_id                 INTEGER PRIMARY KEY,
    patient_id               INTEGER,
    visit_date_year          INTEGER,
    visit_date_month         INTEGER,
    department_code          INTEGER,
    provider_id              INTEGER,
    visit_type_code          INTEGER,
    diagnosis_code           INTEGER,
    procedure_code           INTEGER,
    prescription_flag        INTEGER,
    follow_up_required_flag  INTEGER,
    billing_amount_usd       INTEGER,
    insurance_claim_id       INTEGER,
    copay_amount_usd         INTEGER,
    deductible_met_flag      INTEGER,
    referral_source_id       INTEGER,
    triage_level_code        INTEGER,
    emergency_flag           INTEGER,
    length_of_stay_minutes   INTEGER,
    discharge_status_code    INTEGER,
    notes_flag               INTEGER,
    audit_log_id             INTEGER,
    updated_by_user_id       INTEGER,
    verification_status      INTEGER,
    health_record_id         INTEGER,
    compliance_flag          INTEGER,
    insurance_approval_flag  INTEGER,
    telehealth_flag          INTEGER,
    visit_outcome_code       INTEGER,
    patient_satisfaction_score INTEGER
);

INSERT INTO health_service_visit VALUES (8001,4001,2022,5,10,3001,1,1200,2100,1,0,200,5001,20,1,4101,2,0,30,1,0,9501,7001,1,80001,1,1,0,5,8);
INSERT INTO health_service_visit VALUES (8002,4002,2023,3,12,3002,2,1300,2200,0,1,350,5002,30,0,4102,3,1,45,2,1,9502,7002,0,80002,0,1,1,6,9);
INSERT INTO health_service_visit VALUES (8003,4003,2021,11,11,3003,1,1400,2300,1,1,500,5003,25,1,4103,1,0,60,3,0,9503,7003,1,80003,1,0,0,7,10);

-- Technology patent records
CREATE TABLE technology_patent
(
    patent_id                INTEGER PRIMARY KEY,
    applicant_id             INTEGER,
    filing_year              INTEGER,
    grant_year               INTEGER,
    technology_area_code     INTEGER,
    international_class_code INTEGER,
    claims_count             INTEGER,
    prior_art_refs           INTEGER,
    attorney_id              INTEGER,
    fee_paid_flag            INTEGER,
    maintenance_fee_due_year INTEGER,
    status_code              INTEGER,
    licensing_flag           INTEGER,
    royalty_rate_percent     INTEGER,
    exclusive_license_flag   INTEGER,
    licensee_count           INTEGER,
    expiration_year          INTEGER,
    citation_count           INTEGER,
    foreign_filing_flag      INTEGER,
    escrow_account_id        INTEGER,
    litigation_flag          INTEGER,
    portfolio_id             INTEGER,
    tech_transfer_office_id  INTEGER,
    audit_trail_id           INTEGER,
    update_timestamp_year    INTEGER,
    reviewer_id              INTEGER,
    novelty_score            INTEGER,
    inventive_step_score     INTEGER,
    market_potential_score   INTEGER,
    strategic_importance_score INTEGER,
    compliance_flag          INTEGER,
    funding_source_id        INTEGER,
    internal_review_flag     INTEGER,
    external_review_flag     INTEGER,
    commercialization_stage_code INTEGER,
    risk_assessment_score    INTEGER,
    projected_revenue_usd    INTEGER,
    profit_margin_percent    INTEGER,
    lifecycle_phase_code     INTEGER,
    last_modified_user_id    INTEGER,
    notes_flag               INTEGER
);

INSERT INTO technology_patent VALUES (9001,6001,2018,2020,101,301,12,5,7001,1,2025,1,0,5,1,2,2030,10,0,8001,0,1501,4001,9501,2023,801,85,90,95,80,1,1101,0,0,2,70,500000,20,3,9001,0);
INSERT INTO technology_patent VALUES (9002,6002,2019,2021,102,302,15,8,7002,1,2026,1,1,7,0,3,2035,12,1,8002,1,1502,4002,9502,2024,802,88,92,97,85,1,1102,1,0,3,75,750000,22,3,9002,1);
INSERT INTO technology_patent VALUES (9003,6003,2020,2022,103,303,9,3,7003,0,2027,2,0,4,1,1,2040,8,0,8003,0,1503,4003,9503,2025,803,80,85,90,78,0,1103,0,1,2,65,300000,18,2,9003,0);

-- Sustainability metric logs
CREATE TABLE sustainability_metric_log
(
    metric_id                INTEGER PRIMARY KEY,
    campus_id                INTEGER,
    reporting_year           INTEGER,
    reporting_quarter        INTEGER,
    carbon_emission_tons     INTEGER,
    electricity_consumption_kwh INTEGER,
    water_usage_gallons      INTEGER,
    waste_generated_tons     INTEGER,
    recycling_rate_percent   INTEGER,
    renewable_energy_percent INTEGER,
    green_buildings_count    INTEGER,
    certified_leed_buildings INTEGER,
    sustainable_transport_rides INTEGER,
    bike_share_usage_count   INTEGER,
    tree_plantings_number    INTEGER,
    biodiversity_index       INTEGER,
    air_quality_index        INTEGER,
    noise_pollution_db       INTEGER,
    energy_efficiency_score  INTEGER,
    water_efficiency_score   INTEGER,
    waste_diversion_score    INTEGER,
    sustainability_initiative_flag INTEGER,
    budget_allocated_usd     INTEGER,
    budget_spent_usd         INTEGER,
    external_audit_score     INTEGER,
    compliance_status_code   INTEGER,
    stakeholder_engagement_score INTEGER,
    climate_resilience_score INTEGER,
    greenhouse_gas_reduction_target_percent INTEGER,
    renewable_investment_usd INTEGER,
    carbon_offset_purchased_tons INTEGER,
    sustainability_training_hours INTEGER,
    policy_updates_count     INTEGER,
    awareness_campaigns_count INTEGER,
    green_certifications_obtained INTEGER,
    sustainability_award_flag INTEGER,
    report_approval_user_id  INTEGER,
    last_review_year         INTEGER,
    notes_flag               INTEGER
);

INSERT INTO sustainability_metric_log VALUES (11001,1,2022,2,1200,5000000,2000000,800,40,25,12,5,3000,1500,200,85,70,55,90,88,80,1,200000,150000,95,1,80,78,10,50000,300,150,5,3,2,1,7001,2023,0);
INSERT INTO sustainability_metric_log VALUES (11002,2,2023,1,1150,4800000,1900000,750,42,27,13,6,3200,1600,220,87,72,53,91,89,82,1,210000,160000,96,1,82,79,12,52000,320,160,6,4,3,1,7002,2023,0);
INSERT INTO sustainability_metric_log VALUES (11003,3,2021,4,1300,5200000,2100000,850,38,23,11,4,2800,1400,180,83,68,57,88,86,78,1,190000,140000,94,1,78,77,9,48000,280,140,4,2,1,0,7003,2022,0);

-- Community event participation logs
CREATE TABLE community_event_participation
(
    participation_id          INTEGER PRIMARY KEY,
    event_id                  TEXT,
    participant_id            TEXT,
    registration_year         INTEGER,
    attendance_status_code    INTEGER,
    volunteer_hours           INTEGER,
    donation_amount_usd       INTEGER,
    feedback_score            INTEGER,
    transport_mode_code       INTEGER,
    arrival_time_hour         INTEGER,
    departure_time_hour       INTEGER,
    meals_provided            INTEGER,
    swag_items_received       INTEGER,
    accessibility_needed_flag INTEGER,
    photo_consent_flag        INTEGER,
    media_coverage_flag       INTEGER,
    sponsor_engagement_level  INTEGER,
    community_partner_id      TEXT,
    repeat_participant_flag   INTEGER,
    age_group_code            INTEGER,
    gender_code               INTEGER,
    ethnicity_code            INTEGER,
    occupation_code           INTEGER,
    education_level_code      INTEGER,
    income_bracket_code       INTEGER,
    household_size            INTEGER,
    marital_status_code       INTEGER,
    children_present_flag     INTEGER,
    pet_friendly_flag         INTEGER,
    parking_required_flag     INTEGER,
    special_needs_flag        INTEGER,
    survey_completed_flag     INTEGER,
    referral_source_code      INTEGER,
    event_feedback_metric_id  TEXT,
    audit_trail_id            INTEGER,
    last_update_user_id       INTEGER,
    notes_flag                INTEGER
);

INSERT INTO community_event_participation VALUES (20001,'E1001','P3001',2022,1,5,100,8,2,9,17,2,1,0,1,1,3,'CP001',0,2,1,3,4,2,3,2,1,0,0,0,0,1,'FMetric001',9501,8001,0);
INSERT INTO community_event_participation VALUES (20002,'E1002','P3002',2023,1,3,0,9,1,10,18,1,0,0,1,0,2,'CP002',1,3,2,2,5,3,4,1,2,1,0,0,0,0,1,'FMetric002',9502,8002,0);
INSERT INTO community_event_participation VALUES (20003,'E1003','P3003',2021,2,0,50,7,3,8,16,0,0,1,0,1,4,'CP003',0,1,1,1,2,1,2,3,0,0,1,1,0,0,1,'FMetric003',9503,8003,0);

-- Vehicle fleet status records
CREATE TABLE vehicle_fleet_status
(
    vehicle_id                INTEGER PRIMARY KEY,
    fleet_type_code           INTEGER,
    acquisition_year          INTEGER,
    mileage_km                INTEGER,
    last_service_year         INTEGER,
    next_service_due_km       INTEGER,
    fuel_type_code            INTEGER,
    emission_class_code       INTEGER,
    status_code               INTEGER,
    assigned_driver_id        INTEGER,
    location_depot_id         INTEGER,
    insurance_policy_id       INTEGER,
    registration_expiry_year  INTEGER,
    warranty_expiry_year      INTEGER,
    depreciation_value_usd    INTEGER,
    purchase_price_usd        INTEGER,
    current_value_usd         INTEGER,
    fuel_efficiency_l_per_100km INTEGER,
    gps_tracker_id            INTEGER,
    telematics_enabled_flag   INTEGER,
    downtime_days_last_year   INTEGER,
    accidents_reported        INTEGER,
    violations_reported       INTEGER,
    maintenance_cost_usd_year INTEGER,
    fuel_cost_usd_year        INTEGER,
    total_operating_cost_usd_year INTEGER,
    carbon_footprint_kg       INTEGER,
    allocated_route_id        INTEGER,
    utilization_percent       INTEGER,
    driver_rating_average     INTEGER,
    compliance_audit_flag     INTEGER,
    audit_trail_id            INTEGER,
    last_inspection_year     INTEGER,
    next_inspection_year      INTEGER,
    replacement_plan_year     INTEGER,
    disposal_status_code      INTEGER,
    leasing_company_id        INTEGER,
    financing_term_months     INTEGER,
    residual_value_usd        INTEGER,
    notes_flag                INTEGER
);

INSERT INTO vehicle_fleet_status VALUES (301,1,2015,85000,2023,90000,1,5,1,401,501,601,2025,2028,15000,30000,12000,8,701,1,5,0,0,800,600,1400,12000,701,85,4,1,9501,2022,2023,2026,0,701,36,18000,0);
INSERT INTO vehicle_fleet_status VALUES (302,2,2018,60000,2022,65000,2,4,1,402,502,602,2024,2027,12000,25000,13000,7,702,1,3,1,1,500,400,900,1100,9000,701,75,5,1,9502,2021,2022,2025,0,702,48,20000,0);
INSERT INTO vehicle_fleet_status VALUES (303,1,2020,30000,2023,35000,1,3,1,403,503,603,2026,2029,8000,20000,15000,9,703,0,2,0,0,300,250,550,800,7500,702,70,3,1,9503,2023,2024,2027,0,703,24,15000,0);

-- Digital content asset records
CREATE TABLE digital_content_asset
(
    asset_id                 INTEGER PRIMARY KEY,
    asset_type_code          INTEGER,
    creation_year            INTEGER,
    creator_user_id          INTEGER,
    file_size_mb             INTEGER,
    duration_seconds         INTEGER,
    resolution_width         INTEGER,
    resolution_height        INTEGER,
    bitrate_kbps             INTEGER,
    language_code            INTEGER,
    copyright_status_code    INTEGER,
    license_type_code        INTEGER,
    usage_count              INTEGER,
    last_access_year         INTEGER,
    last_modified_year       INTEGER,
    format_code              INTEGER,
    is_featured_flag         INTEGER,
    tags_count               INTEGER,
    related_asset_id         INTEGER,
    storage_location_id      INTEGER,
    backup_location_id       INTEGER,
    encryption_enabled_flag  INTEGER,
    access_level_code        INTEGER,
    approval_status_code     INTEGER,
    rating_average           INTEGER,
    comments_count           INTEGER,
    shares_count             INTEGER,
    downloads_count          INTEGER,
    view_count               INTEGER,
    conversion_rate_percent  INTEGER,
    seo_score                INTEGER,
    engagement_score         INTEGER,
    compliance_flag          INTEGER,
    audit_trail_id           INTEGER,
    version_number           INTEGER,
    original_asset_id        INTEGER,
    archiving_status_code    INTEGER,
    retention_period_years   INTEGER,
    notes_flag               INTEGER
);

INSERT INTO digital_content_asset VALUES (4001,1,2022,1001,500,300,1920,1080,3500,1,1,2,150,2023,2023,3,1,5,4002,601,701,1,2,1,4,10,20,30,5000,60,95,80,85,1,9501,1,0,2,5,0);
INSERT INTO digital_content_asset VALUES (4002,2,2021,1002,250,180,1280,720,2500,2,1,1,200,2022,2022,2,0,8,4003,602,702,0,1,2,5,15,25,35,6000,55,90,78,80,0,9502,2,0,3,4,0);
INSERT INTO digital_content_asset VALUES (4003,3,2023,1003,750,600,3840,2160,5000,1,2,3,100,2023,2023,4,1,3,4004,603,703,1,3,1,5,8,12,18,7000,70,97,88,90,1,9503,3,0,1,6,0);

-- Faculty committee membership records
CREATE TABLE faculty_committee_membership
(
    membership_id            INTEGER PRIMARY KEY,
    faculty_id               INTEGER,
    committee_id             INTEGER,
    appointment_year         INTEGER,
    term_length_years        INTEGER,
    role_code                INTEGER,
    is_chair_flag           INTEGER,
    meeting_frequency_code   INTEGER,
    last_meeting_year        INTEGER,
    next_meeting_year        INTEGER,
    attendance_rate_percent  INTEGER,
    assignments_count        INTEGER,
    reports_submitted        INTEGER,
    budget_responsibility_usd INTEGER,
    stakeholder_engagement_score INTEGER,
    policy_contributions_count INTEGER,
    research_influence_score INTEGER,
    teaching_influence_score INTEGER,
    service_hours            INTEGER,
    external_affiliation_id  INTEGER,
    conflict_of_interest_flag INTEGER,
    approval_status_code     INTEGER,
    audit_trail_id           INTEGER,
    last_updated_year        INTEGER,
    reviewer_id              INTEGER,
    compliance_flag          INTEGER,
    evaluation_score         INTEGER,
    mentorship_hours         INTEGER,
    outreach_events_participated INTEGER,
    grant_review_count       INTEGER,
    publication_count        INTEGER,
    citation_count           INTEGER,
    awards_received_count    INTEGER,
    succession_plan_flag     INTEGER,
    notes_flag               INTEGER
);

INSERT INTO faculty_committee_membership VALUES (5001,2001,3001,2020,3,2,1,1,2022,2023,95,5,4,20000,80,2,85,70,120,4001,0,1,9501,2023,8001,1,88,30,2,3,12,50,5,1,0);
INSERT INTO faculty_committee_membership VALUES (5002,2002,3002,2021,2,3,0,2,2022,2024,88,4,3,15000,75,1,80,65,100,4002,1,1,9502,2023,8002,1,85,25,3,1,5,40,3,0,0);
INSERT INTO faculty_committee_membership VALUES (5003,2003,3003,2019,4,1,0,1,2021,2022,92,6,5,25000,85,3,90,75,140,4003,0,0,9503,2022,8003,1,90,35,1,4,8,60,4,1,0);

-- Event media asset catalog
CREATE TABLE event_media_asset_catalog
(
    media_id                 INTEGER PRIMARY KEY,
    event_id                 TEXT,
    media_type_code          INTEGER,
    capture_date_year        INTEGER,
    capture_date_month       INTEGER,
    creator_user_id          INTEGER,
    file_size_mb             INTEGER,
    resolution_width         INTEGER,
    resolution_height        INTEGER,
    duration_seconds         INTEGER,
    codec_code               INTEGER,
    language_code            INTEGER,
    copyright_status_code    INTEGER,
    usage_rights_code        INTEGER,
    copyright_holder_id      TEXT,
    distribution_platform_id  INTEGER,
    view_count               INTEGER,
    download_count           INTEGER,
    share_count              INTEGER,
    rating_average           INTEGER,
    tags_count               INTEGER,
    is_featured_flag         INTEGER,
    approved_flag            INTEGER,
    approval_user_id         INTEGER,
    last_modified_year       INTEGER,
    audit_trail_id           INTEGER,
    storage_location_id      INTEGER,
    backup_location_id       INTEGER,
    encryption_enabled_flag  INTEGER,
    access_level_code        INTEGER,
    compliance_flag          INTEGER,
    notes_flag               INTEGER,
    geo_location_id          INTEGER,
    audience_target_code     INTEGER,
    promotional_use_flag     INTEGER,
    archival_status_code     INTEGER,
    retention_period_years   INTEGER,
    external_reference_id    TEXT,
    version_number           INTEGER
);

INSERT INTO event_media_asset_catalog VALUES (6001,'E1001',1,2022,5,1001,800,1920,1080,300,1,1,1,2,'C2001',301,1500,200,50,4,6,1,1,8002,2023,9501,401,501,0,2,1,0,'G1001',3,1,2,5,'REF001',1);
INSERT INTO event_media_asset_catalog VALUES (6002,'E1002',2,2023,3,1002,500,1280,720,180,2,2,1,3,'C2002',302,1200,180,40,5,8,0,1,8003,2023,9502,402,502,1,1,0,0,'G1002',4,0,1,3,'REF002',1);
INSERT INTO event_media_asset_catalog VALUES (6003,'E1003',3,2021,11,1003,1200,3840,2160,600,3,1,2,4,'C2003',303,2000,250,70,5,10,1,1,8004,2022,9503,403,503,0,3,1,0,'G1003',2,1,3,4,'REF003',2);

-- Campus event logistics records
CREATE TABLE campus_event_logistics
(
    logistics_id               INTEGER PRIMARY KEY,
    event_id                   TEXT,
    setup_start_hour           INTEGER,
    teardown_end_hour          INTEGER,
    vendor_service_id          INTEGER,
    equipment_list_id          INTEGER,
    seating_capacity           INTEGER,
    standing_capacity          INTEGER,
    catering_service_id        INTEGER,
    security_plan_id           INTEGER,
    parking_plan_id            INTEGER,
    signage_plan_id            INTEGER,
    waste_management_id        INTEGER,
    audio_visual_id            INTEGER,
    lighting_plan_id           INTEGER,
    emergency_contact_id       INTEGER,
    insurance_policy_id        INTEGER,
    budget_allocation_usd      INTEGER,
    actual_expense_usd         INTEGER,
    sponsor_contribution_usd   INTEGER,
    volunteer_count            INTEGER,
    staff_count                INTEGER,
    artist_fee_usd             INTEGER,
    transportation_cost_usd     INTEGER,
    permits_obtained_flag      INTEGER,
    compliance_audit_flag      INTEGER,
    risk_assessment_score      INTEGER,
    sustainability_score       INTEGER,
    accessibility_score        INTEGER,
    weather_contingency_plan_id INTEGER,
    health_service_id          INTEGER,
    IT_support_id              INTEGER,
    communication_plan_id      INTEGER,
    marketing_plan_id          INTEGER,
    post_event_cleanup_id      INTEGER,
    feedback_collection_id     INTEGER,
    audit_trail_id             INTEGER,
    last_updated_year          INTEGER,
    notes_flag                 INTEGER
);

INSERT INTO campus_event_logistics VALUES (7001,'E1001',8,22,5001,6001,300,150,7001,8001,9001,10001,11001,12001,13001,14001,15001,200000,180000,50000,20,10,10000,8000,1,1,85,90,95,16001,17001,18001,19001,20001,21001,22001,23001,24001,9501,2023,0);
INSERT INTO campus_event_logistics VALUES (7002,'E1002',9,23,5002,6002,350,180,7002,8002,9002,10002,11002,12002,13002,14002,15002,210000,190000,60000,25,12,12000,9500,1,1,88,92,96,16002,17002,18002,19002,20002,21002,22002,23002,24002,9502,2023,0);
INSERT INTO campus_event_logistics VALUES (7003,'E1003',7,21,5003,6003,280,130,7003,8003,9003,10003,11003,12003,13003,14003,15003,190000,170000,45000,15,8,9000,7000,1,1,82,85,89,16003,17003,18003,19003,20003,21003,22003,23003,24003,9503,2022,0);