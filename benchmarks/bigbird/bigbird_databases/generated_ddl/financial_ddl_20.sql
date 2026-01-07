-- Table: Branch IT Infrastructure – technical details for each bank branch
CREATE TABLE branch_it_infrastructure
(
    infra_id               INTEGER PRIMARY KEY,
    branch_id              INTEGER NOT NULL,
    server_count           INTEGER NOT NULL,
    rack_units             INTEGER NOT NULL,
    network_switches       INTEGER NOT NULL,
    storage_tb             REAL NOT NULL,
    backup_cycle_days      INTEGER NOT NULL,
    virtualization_enabled INTEGER NOT NULL,
    os_type                TEXT NOT NULL,
    os_version             TEXT NOT NULL,
    virtualization_platform TEXT NOT NULL,
    dc_power_kw            REAL NOT NULL,
    cooling_capacity_kw    REAL NOT NULL,
    ip_address_range       TEXT NOT NULL,
    vlan_count             INTEGER NOT NULL,
    firewall_rules         INTEGER NOT NULL,
    monitoring_tool        TEXT NOT NULL,
    patch_level            TEXT NOT NULL,
    last_audit_date        DATE NOT NULL,
    notes                  TEXT
);

INSERT INTO branch_it_infrastructure VALUES (1, 101, 12, 42, 5, 84.5, 7, 1, Linux, "Ubuntu20.04", VMware, 150.0, 120.0, "10.0.0.0/16", 12, 250, Nagios, "2023-09-15", "2023-10-01", "Up to date");
INSERT INTO branch_it_infrastructure VALUES (2, 102, 8, 30, 3, 60.0, 14, 0, Windows, "Server2019", HyperV, 120.0, 95.0, "10.1.0.0/16", 8, 180, Zabbix, "2023-08-10", "2023-09-20", "Planned upgrade");
INSERT INTO branch_it_infrastructure VALUES (3, 103, 15, 50, 6, 110.2, 10, 1, Linux, "CentOS7", KVM, 180.0, 140.0, "10.2.0.0/16", 15, 320, SolarWinds, "2023-07-05", "2023-08-15", "New servers added");

-- Table: Employee Benefit Plan – enrollment and contribution details
CREATE TABLE employee_benefit_plan
(
    plan_id                INTEGER PRIMARY KEY,
    employee_id            INTEGER NOT NULL,
    plan_name              TEXT NOT NULL,
    enrollment_date        DATE NOT NULL,
    contribution_percent   REAL NOT NULL,
    employer_match_percent REAL NOT NULL,
    plan_type              TEXT NOT NULL,
    vesting_years          INTEGER NOT NULL,
    coverage_level         TEXT NOT NULL,
    dependent_count        INTEGER NOT NULL,
    health_fund_balance    REAL NOT NULL,
    retirement_fund_balance REAL NOT NULL,
    status                 TEXT NOT NULL,
    last_update            DATE NOT NULL,
    plan_provider          TEXT NOT NULL,
    plan_code              TEXT NOT NULL,
    benefit_category       TEXT NOT NULL,
    payroll_deduction_amount REAL NOT NULL,
    eligibility_criteria  TEXT NOT NULL,
    notes                  TEXT
);

INSERT INTO employee_benefit_plan VALUES (1, 1001, "HealthPlus", "2022-03-15", 5.0, 3.0, "Medical", 4, "Family", 2, 1250.75, 3000.00, "Active", "2023-09-30", "HealthCo", "HP001", "Health", 200.00, "FullTime", "Preferred provider");
INSERT INTO employee_benefit_plan VALUES (2, 1002, "RetireSecure", "2021-11-01", 6.0, 4.0, "Pension", 5, "Individual", 0, 0.00, 15000.50, "Active", "2023-08-20", "PensionCorp", "RS002", "Retirement", 250.00, "FullTime", "Auto enrolment");
INSERT INTO employee_benefit_plan VALUES (3, 1003, "DentalCare", "2023-01-20", 2.5, 2.5, "Dental", 3, "Family", 1, 300.00, 0.00, "Pending", "2023-09-15", "DentalInc", "DC003", "Dental", 100.00, "PartTime", "Awaiting approval");

-- Table: Supplier Performance Review – periodic evaluation of suppliers
CREATE TABLE supplier_performance_review
(
    review_id            INTEGER PRIMARY KEY,
    supplier_id          INTEGER NOT NULL,
    review_date          DATE NOT NULL,
    on_time_delivery_pct REAL NOT NULL,
    quality_score        REAL NOT NULL,
    cost_compliance_pct  REAL NOT NULL,
    communication_rating INTEGER NOT NULL,
    flexibility_rating   INTEGER NOT NULL,
    sustainability_score REAL NOT NULL,
    risk_level           TEXT NOT NULL,
    contract_status      TEXT NOT NULL,
    reviewer_name        TEXT NOT NULL,
    notes                TEXT,
    follow_up_action     TEXT,
    next_review_due      DATE NOT NULL,
    region               TEXT NOT NULL,
    category             TEXT NOT NULL,
    average_lead_time_days INTEGER NOT NULL,
    penalty_incidents    INTEGER NOT NULL,
    warranty_claims      INTEGER NOT NULL,
    overall_rating       REAL NOT NULL
);

INSERT INTO supplier_performance_review VALUES (1, 2001, "2023-09-10", 98.5, 9.2, 95.0, 8, 9, 8.5, "Low", "Active", "AliceSmith", "Good performance", "2024-03-10", "North", "Electronics", 12, 0, 1, 9.0);
INSERT INTO supplier_performance_review VALUES (2, 2002, "2023-08-22", 85.0, 7.5, 88.0, 6, 7, 6.0, "Medium", "RenewalPending", "BobJones", "Needs improvement in delivery", "2024-02-22", "South", "Furniture", 20, 2, 0, 7.1);
INSERT INTO supplier_performance_review VALUES (3, 2003, "2023-07-15", 92.0, 8.8, 90.0, 9, 8, 9.2, "Low", "Active", "CarolLee", "Excellent sustainability", "2024-01-15", "East", "OfficeSupplies", 8, 0, 0, 9.4);

-- Table: Digital Content License – licensing details for digital media assets
CREATE TABLE digital_content_license
(
    license_id           INTEGER PRIMARY KEY,
    content_id           INTEGER NOT NULL,
    license_type         TEXT NOT NULL,
    provider_name        TEXT NOT NULL,
    issue_date           DATE NOT NULL,
    expiry_date          DATE NOT NULL,
    usage_limit          INTEGER NOT NULL,
    geographic_scope     TEXT NOT NULL,
    platform_restriction TEXT NOT NULL,
    cost_amount          REAL NOT NULL,
    currency_code        TEXT NOT NULL,
    renewal_required     INTEGER NOT NULL,
    renewal_notice_days  INTEGER NOT NULL,
    compliance_status    TEXT NOT NULL,
    audit_trail_id       INTEGER,
    notes                TEXT,
    created_by           TEXT NOT NULL,
    created_timestamp    DATE NOT NULL,
    last_modified_by     TEXT,
    last_modified_timestamp DATE
);

INSERT INTO digital_content_license VALUES (1, 5001, "RoyaltyFree", "MediaHub", "2022-05-01", "2025-04-30", 1000000, "Global", "All", 1500.00, "USD", 0, 0, "Compliant", 3001, "Standard license", "Admin", "2022-05-01", "Admin", "2023-09-01");
INSERT INTO digital_content_license VALUES (2, 5002, "Subscription", "StreamLine", "2023-01-15", "2024-01-14", 500000, "EU", "Web", 800.00, "EUR", 1, 30, "PendingRenewal", 3002, "Annual renewal needed", "Admin", "2023-01-15", "Admin", "2023-09-20");
INSERT INTO digital_content_license VALUES (3, 5003, "Perpetual", "AudioWorks", "2020-09-10", "2099-12-31", 0, "NorthAmerica", "Desktop", 2500.00, "USD", 0, 0, "Compliant", 3003, "Lifetime license", "Admin", "2020-09-10", "Admin", "2023-09-15");

-- Table: Customer Behavior Analysis – aggregated metrics per customer segment
CREATE TABLE customer_behavior_analysis
(
    analysis_id                 INTEGER PRIMARY KEY,
    segment_id                  INTEGER NOT NULL,
    period_start                DATE NOT NULL,
    period_end                  DATE NOT NULL,
    avg_transaction_amount     REAL NOT NULL,
    median_transaction_amount   REAL NOT NULL,
    transaction_count           INTEGER NOT NULL,
    active_days_ratio           REAL NOT NULL,
    churn_probability           REAL NOT NULL,
    net_promoter_score          INTEGER NOT NULL,
    cross_sell_opportunity_score REAL NOT NULL,
    product_usage_index         REAL NOT NULL,
    channel_preference          TEXT NOT NULL,
    avg_session_duration_secs   INTEGER NOT NULL,
    complaints_count            INTEGER NOT NULL,
    support_ticket_resolution_rate REAL NOT NULL,
    email_open_rate             REAL NOT NULL,
    sms_click_through_rate      REAL NOT NULL,
    web_visits_per_month        INTEGER NOT NULL,
    notes                       TEXT
);

INSERT INTO customer_behavior_analysis VALUES (1, 10, "2023-01-01", "2023-12-31", 125.50, 110.00, 4520, 0.68, 0.12, 45, 78.5, 0.81, "Online", 300, 5, 0.92, 0.45, 0.22, 15, "Steady growth");
INSERT INTO customer_behavior_analysis VALUES (2, 20, "2023-01-01", "2023-12-31", 85.20, 80.00, 3780, 0.55, 0.20, 38, 62.3, 0.74, "Branch", 240, 12, 0.88, 0.30, 0.15, 12, "Higher churn");
INSERT INTO customer_behavior_analysis VALUES (3, 30, "2023-01-01", "2023-12-31", 210.75, 200.00, 2150, 0.80, 0.05, 70, 89.2, 0.93, "Mobile", 420, 1, 0.97, 0.68, 0.40, 20, "Premium segment");

-- Table: Logistics Warehouse Capacity – storage and throughput figures for each warehouse
CREATE TABLE logistics_warehouse_capacity
(
    warehouse_id               INTEGER PRIMARY KEY,
    location_code              TEXT NOT NULL,
    total_sqft                 INTEGER NOT NULL,
    racking_units              INTEGER NOT NULL,
    pallet_spaces              INTEGER NOT NULL,
    max_weight_tons            REAL NOT NULL,
    current_occupied_pct       REAL NOT NULL,
    inbound_docks              INTEGER NOT NULL,
    outbound_docks             INTEGER NOT NULL,
    temperature_controlled_sqft INTEGER NOT NULL,
    humidity_controlled_pct    REAL NOT NULL,
    loading_time_avg_minutes   INTEGER NOT NULL,
    unloading_time_avg_minutes INTEGER NOT NULL,
    safety_incidents_last_year INTEGER NOT NULL,
    energy_consumption_kwh     REAL NOT NULL,
    staff_count                INTEGER NOT NULL,
    automation_level           TEXT NOT NULL,
    last_inspection_date       DATE NOT NULL,
    next_maintenance_date      DATE NOT NULL,
    notes                      TEXT
);

INSERT INTO logistics_warehouse_capacity VALUES (1, "WH001", 250000, 1200, 3500, 800.0, 62.5, 8, 6, 50000, 40.0, 15, 20, 2, 125000.5, 45, "High", "2023-06-15", "2024-06-15", "Expanding racking");
INSERT INTO logistics_warehouse_capacity VALUES (2, "WH002", 180000, 900, 2600, 600.0, 48.0, 5, 5, 30000, 35.0, 18, 22, 0, 95000.0, 30, "Medium", "2023-08-01", "2024-08-01", "Scheduled expansion");
INSERT INTO logistics_warehouse_capacity VALUES (3, "WH003", 320000, 1500, 4200, 950.0, 71.0, 10, 8, 75000, 45.0, 12, 18, 1, 140500.2, 60, "VeryHigh", "2023-05-20", "2024-05-20", "New automation system");

-- Table: Research Grant Allocation – details of grants awarded to research projects
CREATE TABLE research_grant_allocation
(
    grant_id            INTEGER PRIMARY KEY,
    project_id          INTEGER NOT NULL,
    funding_agency      TEXT NOT NULL,
    grant_amount        REAL NOT NULL,
    currency_code       TEXT NOT NULL,
    award_date          DATE NOT NULL,
    start_date          DATE NOT NULL,
    end_date            DATE NOT NULL,
    matching_funds      REAL,
    indirect_cost_rate  REAL NOT NULL,
    principal_investigator TEXT NOT NULL,
    co_investigators    TEXT,
    research_area       TEXT NOT NULL,
    status              TEXT NOT NULL,
    reporting_frequency TEXT NOT NULL,
    next_report_due     DATE NOT NULL,
    compliance_requirements TEXT,
    notes               TEXT,
    created_by          TEXT NOT NULL,
    created_timestamp   DATE NOT NULL,
    last_modified_by    TEXT,
    last_modified_timestamp DATE
);

INSERT INTO research_grant_allocation VALUES (1, 8001, "NationalScienceFund", 500000.00, "USD", "2022-03-01", "2022-04-01", "2025-03-31", 25000.00, 0.25, "DrSmith", "DrLee;DrKim", "Biotechnology", "Active", "Quarterly", "2023-12-31", "Annual audit", "Phase 1 ongoing", "Admin", "2022-03-01", "Admin", "2023-09-01");
INSERT INTO research_grant_allocation VALUES (2, 8002, "HealthResearchCouncil", 300000.00, "EUR", "2023-01-15", "2023-02-01", "2024-12-31", NULL, 0.20, "ProfMuller", "ProfGonzalez", "Epidemiology", "Active", "SemiAnnual", "2024-06-30", "Data protection", "Initial data collection", "Admin", "2023-01-15", "Admin", "2023-09-15");
INSERT INTO research_grant_allocation VALUES (3, 8003, "TechInnovationAgency", 750000.00, "USD", "2021-07-10", "2021-08-01", "2024-07-31", 50000.00, 0.30, "DrNguyen", "DrPatel;DrO'Connor", "ArtificialIntelligence", "Completed", "Annual", "2024-07-31", "Open access required", "Project completed successfully", "Admin", "2021-07-10", "Admin", "2023-09-20");

-- Table: Environmental Impact Assessment – records of impact studies for projects
CREATE TABLE environmental_impact_assessment
(
    assessment_id          INTEGER PRIMARY KEY,
    project_id             INTEGER NOT NULL,
    assessment_date        DATE NOT NULL,
    assessor_name          TEXT NOT NULL,
    impact_score           REAL NOT NULL,
    air_quality_impact    TEXT NOT NULL,
    water_quality_impact  TEXT NOT NULL,
    soil_contamination_risk TEXT NOT NULL,
    biodiversity_effect   TEXT NOT NULL,
    noise_level_change_db REAL NOT NULL,
    waste_generated_tons   REAL NOT NULL,
    mitigation_measures    TEXT NOT NULL,
    public_consultation_required INTEGER NOT NULL,
    consultation_date      DATE,
    approval_status        TEXT NOT NULL,
    remarks                TEXT,
    follow_up_actions      TEXT,
    next_review_date       DATE,
    created_by             TEXT NOT NULL,
    created_timestamp      DATE NOT NULL,
    last_modified_by       TEXT,
    last_modified_timestamp DATE
);

INSERT INTO environmental_impact_assessment VALUES (1, 9001, "2023-04-12", "EcoConsult", 3.5, "Low", "Moderate", "Low", "Negligible", 2.1, 0.8, "Tree planting; Emission controls", 1, "2023-05-01", "Approved", "Minor monitoring required", "Install air filters", "2024-04-12", "Admin", "2023-04-12", "Admin", "2023-09-10");
INSERT INTO environmental_impact_assessment VALUES (2, 9002, "2023-06-20", "GreenMetrics", 7.2, "High", "High", "Medium", "Significant", 12.5, 4.2, "Water treatment; Soil remediation", 1, "2023-07-10", "Pending", "Further data needed", "Awaiting additional surveys", "2023-12-20", "Admin", "2023-06-20", "Admin", "2023-09-12");
INSERT INTO environmental_impact_assessment VALUES (3, 9003, "2022-11-05", "NatureCheck", 2.1, "None", "Low", "None", "Positive", 0.5, 0.2, "No action required", 0, NULL, "Approved", "No issues", "Annual monitoring", "2023-11-05", "Admin", "2022-11-05", "Admin", "2023-09-15");

-- Table: Fleet Fuel Consumption – fuel usage metrics for each vehicle
CREATE TABLE fleet_fuel_consumption
(
    record_id            INTEGER PRIMARY KEY,
    vehicle_id           INTEGER NOT NULL,
    fuel_type            TEXT NOT NULL,
    fuel_volume_liters   REAL NOT NULL,
    distance_km          REAL NOT NULL,
    consumption_l_per_100km REAL NOT NULL,
    odometer_reading_km  REAL NOT NULL,
    refuel_date          DATE NOT NULL,
    driver_id            INTEGER NOT NULL,
    route_id             INTEGER NOT NULL,
    trip_start_time      DATE NOT NULL,
    trip_end_time        DATE NOT NULL,
    emissions_kg_co2     REAL NOT NULL,
    cost_usd             REAL NOT NULL,
    payment_method       TEXT NOT NULL,
    depot_location       TEXT NOT NULL,
    notes                TEXT,
    created_by           TEXT NOT NULL,
    created_timestamp    DATE NOT NULL,
    last_modified_by     TEXT,
    last_modified_timestamp DATE
);

INSERT INTO fleet_fuel_consumption VALUES (1, 4001, "Diesel", 150.0, 800.0, 18.75, 12000.0, "2023-09-01", 3001, 5001, "2023-09-01", "2023-09-01", 350.0, 210.00, "CorporateCard", "DepotA", "Routine delivery", "Admin", "2023-09-01", "Admin", "2023-09-02");
INSERT INTO fleet_fuel_consumption VALUES (2, 4002, "Petrol", 80.0, 500.0, 16.00, 8500.0, "2023-09-05", 3002, 5002, "2023-09-05", "2023-09-05", 200.0, 120.00, "Cash", "DepotB", "Urgent client visit", "Admin", "2023-09-05", "Admin", "2023-09-06");
INSERT INTO fleet_fuel_consumption VALUES (3, 4003, "Electric", 0.0, 300.0, 0.00, 5000.0, "2023-09-10", 3003, 5003, "2023-09-10", "2023-09-10", 0.0, 0.00, "CompanyCard", "DepotC", "City courier", "Admin", "2023-09-10", "Admin", "2023-09-11");

-- Table: Insurance Policy Premium History – tracking premium changes over time
CREATE TABLE insurance_policy_premium_history
(
    history_id          INTEGER PRIMARY KEY,
    policy_id           INTEGER NOT NULL,
    effective_date      DATE NOT NULL,
    expiration_date     DATE NOT NULL,
    premium_amount      REAL NOT NULL,
    currency_code       TEXT NOT NULL,
    payment_frequency   TEXT NOT NULL,
    discount_percent    REAL,
    surcharge_percent   REAL,
    underwriting_score  REAL,
    risk_factor         REAL,
    policy_status       TEXT NOT NULL,
    notes               TEXT,
    updated_by          TEXT NOT NULL,
    updated_timestamp   DATE NOT NULL,
    approved_by         TEXT,
    approval_timestamp  DATE,
    rebate_amount       REAL,
    total_due_amount    REAL,
    next_review_date    DATE,
    created_by          TEXT NOT NULL,
    created_timestamp   DATE NOT NULL
);

INSERT INTO insurance_policy_premium_history VALUES (1, 6001, "2022-01-01", "2022-12-31", 1200.00, "USD", "Annual", 5.0, NULL, 78.5, 0.9, "Active", "Standard premium", "Admin", "2022-01-01", "Manager", "2022-01-02", 0.00, 1140.00, "2023-01-01", "Admin", "2022-01-01");
INSERT INTO insurance_policy_premium_history VALUES (2, 6002, "2023-03-01", "2024-02-28", 950.00, "EUR", "SemiAnnual", NULL, 2.0, 82.0, 1.1, "Pending", "Premium increase due to risk", "Admin", "2023-03-01", "Supervisor", "2023-03-02", 0.00, 969.00, "2024-03-01", "Admin", "2023-03-01");
INSERT INTO insurance_policy_premium_history VALUES (3, 6003, "2021-07-15", "2022-07-14", 800.00, "USD", "Monthly", 3.0, NULL, 75.0, 0.8, "Cancelled", "Policy cancelled early", "Admin", "2021-07-15", "Manager", "2021-07-16", 0.00, 776.00, "2021-08-15", "Admin", "2021-07-15");

-- Table: Mobile App Event Log – events generated by the banking mobile application
CREATE TABLE mobile_app_event_log
(
    event_id            INTEGER PRIMARY KEY,
    user_id             INTEGER NOT NULL,
    device_id           TEXT NOT NULL,
    session_id          TEXT NOT NULL,
    event_type          TEXT NOT NULL,
    event_timestamp     DATE NOT NULL,
    app_version         TEXT NOT NULL,
    os_version          TEXT NOT NULL,
    screen_name         TEXT NOT NULL,
    button_name         TEXT,
    error_code          TEXT,
    network_type        TEXT NOT NULL,
    latitude            REAL,
    longitude           REAL,
    duration_seconds    INTEGER,
    payload             TEXT,
    source_ip           TEXT,
    country_code        TEXT,
    city_name           TEXT,
    mitigation_action   TEXT,
    notes               TEXT,
    created_by          TEXT NOT NULL,
    created_timestamp   DATE NOT NULL
);

INSERT INTO mobile_app_event_log VALUES (1, 7001, "DEV001", "SID12345", "LoginSuccess", "2023-09-01", "5.2.1", "iOS14.6", "LoginScreen", NULL, NULL, "WiFi", 40.7128, -74.0060, 5, NULL, "192.168.1.10", "US", "NewYork", "None", "First login of day", "System", "2023-09-01");
INSERT INTO mobile_app_event_log VALUES (2, 7002, "DEV002", "SID67890", "TransferInitiated", "2023-09-05", "5.3.0", "Android11", "TransferScreen", "ConfirmButton", NULL, "4G", 34.0522, -118.2437, 12, "{\"amount\":250}", "10.0.0.5", "US", "LosAngeles", "None", "User initiated transfer", "System", "2023-09-05");
INSERT INTO mobile_app_event_log VALUES (3, 7003, "DEV003", "SID54321", "Error", "2023-09-10", "5.2.5", "iOS15.0", "ProfileScreen", "SaveButton", "ERR_401", "Cellular", 51.5074, -0.1278, 3, "{\"reason\":\"Unauthorized\"}", "172.16.0.3", "GB", "London", "PromptLogin", "Session expired", "System", "2023-09-10");

-- Table: Branch Community Outreach – records of community programs run by branches
CREATE TABLE branch_community_outreach
(
    outreach_id          INTEGER PRIMARY KEY,
    branch_id            INTEGER NOT NULL,
    program_name         TEXT NOT NULL,
    start_date           DATE NOT NULL,
    end_date             DATE NOT NULL,
    target_audience      TEXT NOT NULL,
    budget_usd           REAL NOT NULL,
    actual_spent_usd     REAL,
    sponsor_name         TEXT,
    volunteer_count      INTEGER,
    participants_count   INTEGER,
    location_desc        TEXT,
    outcome_summary      TEXT,
    media_coverage_links TEXT,
    feedback_score       REAL,
    manager_responsible  TEXT NOT NULL,
    status               TEXT NOT NULL,
    notes                TEXT,
    created_by           TEXT NOT NULL,
    created_timestamp    DATE NOT NULL,
    last_modified_by     TEXT,
    last_modified_timestamp DATE
);

INSERT INTO branch_community_outreach VALUES (1, 101, "Financial Literacy Workshop", "2023-03-01", "2023-03-05", "Adults", 5000.00, 4700.00, "LocalBank", 12, 80, "Community Center Hall", "Improved budgeting skills", "http://news.example.com/finlit", 4.5, "AliceBrown", "Completed", "Positive feedback", "Admin", "2023-03-06", "Admin", "2023-03-07");
INSERT INTO branch_community_outreach VALUES (2, 102, "Youth Coding Camp", "2023-07-10", "2023-07-15", "Teens", 8000.00, 8200.00, "TechCorp", 15, 100, "School Auditorium", "Introduced basic programming", "http://news.example.com/codingcamp", 4.8, "BobWhite", "Completed", "Over budget due to equipment rental", "Admin", "2023-07-16", "Admin", "2023-07-17");
INSERT INTO branch_community_outreach VALUES (3, 103, "Senior Health Fair", "2023-10-20", "2023-10-22", "Seniors", 3000.00, NULL, "HealthOrg", 8, 60, "Town Hall", "Provided health screenings", "http://news.example.com/healthfair", 4.2, "CarolGreen", "Planned", "Awaiting final approvals", "Admin", "2023-10-23", "Admin", "2023-10-24");

-- Table: Financial Market News – curated news items relevant to banking products
CREATE TABLE financial_market_news
(
    news_id             INTEGER PRIMARY KEY,
    headline            TEXT NOT NULL,
    publish_date        DATE NOT NULL,
    source_name         TEXT NOT NULL,
    category            TEXT NOT NULL,
    relevance_score     REAL NOT NULL,
    summary             TEXT NOT NULL,
    url                 TEXT NOT NULL,
    sentiment           TEXT NOT NULL,
    impacted_sectors    TEXT,
    region_focus        TEXT,
    author_name         TEXT,
    language            TEXT NOT NULL,
    view_count          INTEGER,
    share_count         INTEGER,
    comment_count       INTEGER,
    tags                TEXT,
    editor_notes        TEXT,
    status              TEXT NOT NULL,
    created_by          TEXT NOT NULL,
    created_timestamp   DATE NOT NULL,
    last_modified_by    TEXT,
    last_modified_timestamp DATE
);

INSERT INTO financial_market_news VALUES (1, "Central Bank Lowers Interest Rates", "2023-09-01", "FinanceTimes", "MonetaryPolicy", 9.2, "The central bank reduced the policy rate by 0.5% to stimulate growth.", "http://financetimes.example.com/central-bank-rate-cut", "Positive", "Banking;Mortgage", "Global", "JohnDoe", "EN", 1500, 200, 45, "rate,centralbank,policy", "High impact on loan products", "Published", "Editor", "2023-09-02", "Editor", "2023-09-03");
INSERT INTO financial_market_news VALUES (2, "Tech Stocks Surge Amid AI Boom", "2023-08-20", "TechDaily", "Equities", 8.5, "AI-driven companies see unprecedented gains, pushing major indices higher.", "http://techdaily.example.com/ai-stock-surge", "Positive", "Technology;Investment", "NorthAmerica", "JaneSmith", "EN", 2300, 350, 78, "AI,stocks,technology", "Relevant for investment funds", "Published", "Editor", "2023-08-21", "Editor", "2023-08-22");
INSERT INTO financial_market_news VALUES (3, "Regulatory Clampdown on Crypto Exchanges", "2023-07-15", "RegNews", "Regulation", 7.8, "New regulations impose stricter KYC and reporting requirements on crypto platforms.", "http://regnews.example.com/crypto-regulation", "Negative", "Cryptocurrency;Compliance", "Europe", "MikeBrown", "EN", 1200, 180, 30, "crypto,regulation,compliance", "Potential impact on digital wallet services", "Published", "Editor", "2023-07-16", "Editor", "2023-07-17");