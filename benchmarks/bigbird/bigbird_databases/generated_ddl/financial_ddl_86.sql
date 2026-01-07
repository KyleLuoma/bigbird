-- Branch customer profile – demographic and activity information about customers at each branch
CREATE TABLE branch_customer_profile
(
    profile_id               INTEGER      PRIMARY KEY,
    branch_id                INTEGER      NOT NULL,
    customer_segment         TEXT         NOT NULL,
    avg_monthly_balance      REAL         NOT NULL,
    total_accounts           INTEGER      NOT NULL,
    total_loans              INTEGER      NOT NULL,
    total_cards              INTEGER      NOT NULL,
    avg_loan_amount          REAL         NOT NULL,
    avg_card_spend           REAL         NOT NULL,
    online_banking_usage    INTEGER      NOT NULL,
    mobile_app_usage         INTEGER      NOT NULL,
    avg_transaction_count   INTEGER      NOT NULL,
    loyalty_program_member  TEXT         NOT NULL,
    loyalty_tier             TEXT         NOT NULL,
    risk_score               REAL         NOT NULL,
    credit_score_avg         INTEGER      NOT NULL,
    last_update_date         DATE         NOT NULL,
    notes                    TEXT,
    source_system            TEXT         NOT NULL,
    created_timestamp        DATE         NOT NULL,
    modified_timestamp       DATE         NOT NULL,
    data_quality_flag        TEXT         NOT NULL
);

INSERT INTO branch_customer_profile VALUES (1, 101, 'Retail', 15234.56, 1245, 237, 312, 5789.12, 1245.67, 1123, 987, 45, 'Yes', 'Gold', 0.32, 720, '2024-12-01', 'Initial load', 'CoreDB', '2024-12-01', '2024-12-01', 'Good');
INSERT INTO branch_customer_profile VALUES (2, 102, 'SME', 45210.00, 342, 118, 76, 12458.90, 845.30, 563, 412, 28, 'No', 'None', 0.58, 660, '2024-12-01', 'Quarterly update', 'CoreDB', '2024-12-01', '2024-12-01', 'Good');
INSERT INTO branch_customer_profile VALUES (3, 103, 'Corporate', 985000.00, 57, 54, 12, 225000.00, 0.00, 12, 5, 3, 'Yes', 'Platinum', 0.12, 800, '2024-12-01', 'Monthly refresh', 'CoreDB', '2024-12-01', '2024-12-01', 'Good');

-- Market research panel – information about participants in market studies
CREATE TABLE market_research_panel
(
    participant_id           INTEGER      PRIMARY KEY,
    panel_name               TEXT         NOT NULL,
    age                      INTEGER      NOT NULL,
    gender                   TEXT         NOT NULL,
    income_bracket           TEXT         NOT NULL,
    education_level          TEXT         NOT NULL,
    employment_status        TEXT         NOT NULL,
    region_code              TEXT         NOT NULL,
    enrollment_date          DATE         NOT NULL,
    last_survey_date         DATE,
    total_surveys_completed  INTEGER      NOT NULL,
    avg_survey_score         REAL,
    preferred_contact_method TEXT         NOT NULL,
    consent_given            TEXT         NOT NULL,
    data_sharing_opt_in      TEXT         NOT NULL,
    notes                    TEXT,
    source_system            TEXT         NOT NULL,
    created_timestamp        DATE         NOT NULL,
    modified_timestamp       DATE         NOT NULL,
    data_quality_flag        TEXT         NOT NULL,
    panel_group              TEXT,
    eligibility_status      TEXT         NOT NULL
);

INSERT INTO market_research_panel VALUES (1001, 'ConsumerInsights', 34, 'Female', '50k-75k', 'Bachelor', 'Employed', 'R01', '2023-05-10', '2024-11-20', 15, 4.2, 'Email', 'Yes', 'Yes', 'Active participant', 'ResearchDB', '2023-05-10', '2024-11-20', 'Good', 'GroupA', 'Eligible');
INSERT INTO market_research_panel VALUES (1002, 'TechAdopters', 28, 'Male', '75k-100k', 'Master', 'SelfEmployed', 'R02', '2022-09-15', '2024-10-05', 22, 4.8, 'Phone', 'Yes', 'No', 'High activity', 'ResearchDB', '2022-09-15', '2024-10-05', 'Good', 'GroupB', 'Eligible');
INSERT INTO market_research_panel VALUES (1003, 'HealthWatch', 45, 'Female', '25k-50k', 'HighSchool', 'Unemployed', 'R03', '2021-01-20', '2024-08-12', 8, 3.9, 'Mail', 'No', 'No', 'Occasional responder', 'ResearchDB', '2021-01-20', '2024-08-12', 'Fair', 'GroupC', 'Ineligible');

-- Environmental incident log – records of environmental events reported near facilities
CREATE TABLE environmental_incident_log
(
    incident_id               INTEGER      PRIMARY KEY,
    facility_id               INTEGER      NOT NULL,
    incident_type             TEXT         NOT NULL,
    severity_level            TEXT         NOT NULL,
    reported_date             DATE         NOT NULL,
    detection_method          TEXT         NOT NULL,
    description               TEXT,
    corrective_action         TEXT,
    status                    TEXT         NOT NULL,
    resolved_date             DATE,
    estimated_impact_cost     REAL,
    regulatory_fine           REAL,
    notified_agency           TEXT,
    follow_up_required        TEXT,
    follow_up_date            DATE,
    responsible_department    TEXT,
    source_system             TEXT         NOT NULL,
    created_timestamp         DATE         NOT NULL,
    modified_timestamp        DATE         NOT NULL,
    data_quality_flag         TEXT         NOT NULL,
    location_coordinates      TEXT,
    weather_conditions        TEXT
);

INSERT INTO environmental_incident_log VALUES (5001, 301, 'Spill', 'High', '2024-07-15', 'Sensor', 'Oil spill in storage area', 'Containment and cleanup', 'Open', NULL, 125000.00, 25000.00, 'EPA', 'Yes', '2024-08-01', 'Operations', 'EnvDB', '2024-07-15', '2024-07-15', 'Good', '45.67,-122.33', 'Rainy');
INSERT INTO environmental_incident_log VALUES (5002, 302, 'Emission', 'Medium', '2024-06-20', 'Manual', 'Excessive NOx emission', 'Filter upgrade', 'Closed', '2024-07-05', 50000.00, 0.00, 'StateAgency', 'No', NULL, 'Compliance', 'EnvDB', '2024-06-20', '2024-07-05', 'Good', '46.12,-121.98', 'Clear');
INSERT INTO environmental_incident_log VALUES (5003, 303, 'Waste', 'Low', '2024-05-10', 'Audit', 'Improper waste segregation', 'Staff training', 'Closed', '2024-05-25', 12000.00, 0.00, 'LocalGov', 'Yes', '2024-06-01', 'Facilities', 'EnvDB', '2024-05-10', '2024-05-25', 'Good', '44.88,-123.45', 'Windy');

-- Digital product release – metadata about software product releases
CREATE TABLE digital_product_release
(
    release_id               INTEGER      PRIMARY KEY,
    product_name             TEXT         NOT NULL,
    version_number           TEXT         NOT NULL,
    release_date             DATE         NOT NULL,
    release_type             TEXT         NOT NULL,
    change_summary           TEXT,
    jira_ticket              TEXT,
    repository_url           TEXT,
    build_number             TEXT,
    code_branch              TEXT,
    released_by              TEXT,
    qa_approved              TEXT,
    security_review_passed   TEXT,
    performance_test_passed  TEXT,
    documentation_updated    TEXT,
    rollback_plan_exists     TEXT,
    rollback_plan_location   TEXT,
    source_system            TEXT         NOT NULL,
    created_timestamp        DATE         NOT NULL,
    modified_timestamp       DATE         NOT NULL,
    data_quality_flag        TEXT         NOT NULL,
    deployment_environment   TEXT,
    notes                    TEXT
);

INSERT INTO digital_product_release VALUES (9001, 'MobileBanking', '3.2.1', '2024-09-01', 'Major', 'Added new wallet feature', 'JIRA-1245', 'git://repo/mobile', 'B123', 'release/3.2', 'Alice', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '/docs/rollback3.2.pdf', 'DevOpsDB', '2024-09-01', '2024-09-01', 'Good', 'Production', 'First major release of 2024');
INSERT INTO digital_product_release VALUES (9002, 'OnlinePortal', '5.0.0', '2024-08-15', 'Minor', 'UI refresh and bug fixes', 'JIRA-1278', 'git://repo/portal', 'B124', 'release/5.0', 'Bob', 'Yes', 'Yes', 'Yes', 'Yes', 'No', NULL, 'DevOpsDB', '2024-08-15', '2024-08-15', 'Good', 'Staging', 'Minor UI update');
INSERT INTO digital_product_release VALUES (9003, 'APIEngine', '2.5.4', '2024-07-30', 'Patch', 'Security patch CVE-2024-1234', 'JIRA-1301', 'git://repo/api', 'B125', 'hotfix/2.5.4', 'Carol', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '/docs/rollback2.5.4.pdf', 'DevOpsDB', '2024-07-30', '2024-07-30', 'Good', 'Production', 'Critical security patch');

-- Facility security audit – periodic security assessments of physical facilities
CREATE TABLE facility_security_audit
(
    audit_id                  INTEGER      PRIMARY KEY,
    facility_id               INTEGER      NOT NULL,
    audit_date                DATE         NOT NULL,
    auditor_name              TEXT         NOT NULL,
    audit_scope               TEXT         NOT NULL,
    compliance_score          REAL         NOT NULL,
    violations_found          INTEGER      NOT NULL,
    high_risk_violations      INTEGER      NOT NULL,
    medium_risk_violations    INTEGER      NOT NULL,
    low_risk_violations       INTEGER      NOT NULL,
    corrective_actions_needed TEXT,
    follow_up_date            DATE,
    overall_status            TEXT,
    notes                     TEXT,
    source_system             TEXT         NOT NULL,
    created_timestamp         DATE         NOT NULL,
    modified_timestamp        DATE         NOT NULL,
    data_quality_flag         TEXT         NOT NULL,
    location_code             TEXT,
    audit_type                TEXT,
    external_audit_flag       TEXT
);

INSERT INTO facility_security_audit VALUES (7001, 401, '2024-06-01', 'John Doe', 'PhysicalEntry', 85.5, 4, 1, 2, 1, 'Upgrade cameras, replace locks', '2024-07-15', 'Open', 'Initial audit indicates need for improvements', 'SecDB', '2024-06-01', '2024-06-01', 'Good', 'LOC01', 'Internal', 'No');
INSERT INTO facility_security_audit VALUES (7002, 402, '2024-05-20', 'Jane Smith', 'Perimeter', 92.0, 1, 0, 1, 0, 'Reinforce fence at north gate', '2024-06-10', 'Closed', 'Minor issue resolved', 'SecDB', '2024-05-20', '2024-06-10', 'Good', 'LOC02', 'External', 'Yes');
INSERT INTO facility_security_audit VALUES (7003, 403, '2024-04-15', 'Mike Lee', 'CyberPhysical', 78.3, 6, 2, 3, 1, 'Implement MFA, update firmware', '2024-05-30', 'Open', 'Significant vulnerabilities found', 'SecDB', '2024-04-15', '2024-04-15', 'Fair', 'LOC03', 'Internal', 'No');

-- Supply chain disruption event – records of major disruptions affecting supply chain
CREATE TABLE supply_chain_disruption_event
(
    disruption_id            INTEGER      PRIMARY KEY,
    event_name               TEXT         NOT NULL,
    start_date               DATE         NOT NULL,
    end_date                 DATE,
    affected_region          TEXT         NOT NULL,
    disruption_type          TEXT         NOT NULL,
    severity                 TEXT         NOT NULL,
    impacted_suppliers       INTEGER      NOT NULL,
    impacted_customers       INTEGER      NOT NULL,
    estimated_loss_usd       REAL,
    mitigation_actions       TEXT,
    responsible_team         TEXT,
    status                  TEXT,
    notes                    TEXT,
    source_system            TEXT         NOT NULL,
    created_timestamp        DATE         NOT NULL,
    modified_timestamp       DATE         NOT NULL,
    data_quality_flag        TEXT         NOT NULL,
    reporting_channel        TEXT,
    regulatory_notification  TEXT
);

INSERT INTO supply_chain_disruption_event VALUES (8001, 'PortStrike', '2024-03-10', '2024-03-20', 'WestCoast', 'LaborStrike', 'High', 12, 2500, 3400000.00, 'Reroute to EastPort, expedite air freight', 'LogisticsTeam', 'Closed', 'Operations returned to normal', 'SCMDB', '2024-03-10', '2024-03-20', 'Good', 'Email', 'Yes');
INSERT INTO supply_chain_disruption_event VALUES (8002, 'Flooding', '2024-07-01', NULL, 'Midwest', 'NaturalDisaster', 'Medium', 5, 800, 850000.00, 'Use alternate warehouses, increase safety stock', 'RiskManagement', 'Open', 'Assessing ongoing impact', 'SCMDB', '2024-07-01', '2024-07-01', 'Good', 'Portal', 'No');
INSERT INTO supply_chain_disruption_event VALUES (8003, 'CyberAttack', '2024-09-05', '2024-09-07', 'Global', 'CyberIncident', 'Critical', 20, 15000, 12500000.00, 'Isolate systems, apply patches', 'ITSecurity', 'Closed', 'Systems restored, post‑mortem completed', 'SCMDB', '2024-09-05', '2024-09-07', 'Good', 'Dashboard', 'Yes');

-- Customer engagement survey – results from periodic surveys of customers
CREATE TABLE customer_engagement_survey
(
    survey_id                INTEGER      PRIMARY KEY,
    survey_name              TEXT         NOT NULL,
    launch_date              DATE         NOT NULL,
    close_date               DATE,
    target_audience          TEXT         NOT NULL,
    total_invited            INTEGER      NOT NULL,
    total_responses          INTEGER      NOT NULL,
    response_rate_percent    REAL,
    average_satisfaction     REAL,
    nps_score                INTEGER,
    top_positive_feedback    TEXT,
    top_negative_feedback    TEXT,
    action_items             TEXT,
    survey_status            TEXT,
    notes                    TEXT,
    source_system            TEXT         NOT NULL,
    created_timestamp        DATE         NOT NULL,
    modified_timestamp       DATE         NOT NULL,
    data_quality_flag        TEXT         NOT NULL,
    survey_method            TEXT,
    language_version         TEXT
);

INSERT INTO customer_engagement_survey VALUES (6001, 'Q4Experience', '2024-10-01', '2024-10-31', 'AllCustomers', 50000, 24000, 48.0, 4.1, 32, 'Fast service', 'Long wait times', 'Improve staffing', 'Closed', 'Good response overall', 'SurveyDB', '2024-10-01', '2024-10-31', 'Good', 'Online', 'EN');
INSERT INTO customer_engagement_survey VALUES (6002, 'NewProductFeedback', '2024-08-15', '2024-09-05', 'BetaUsers', 8000, 5600, 70.0, 4.6, 45, 'User-friendly UI', 'Limited features', 'Add more functions', 'Closed', 'Positive reception', 'SurveyDB', '2024-08-15', '2024-09-05', 'Good', 'Email', 'EN');
INSERT INTO customer_engagement_survey VALUES (6003, 'ServiceQuality', '2024-06-01', '2024-06-20', 'RetailCustomers', 30000, 15000, 50.0, 3.9, 20, 'Helpful staff', 'Inconsistent service', 'Standardize training', 'Closed', 'Mixed feedback', 'SurveyDB', '2024-06-01', '2024-06-20', 'Good', 'Phone', 'EN');

-- Regional infrastructure project – data about large public works projects
CREATE TABLE regional_infrastructure_project
(
    project_id               INTEGER      PRIMARY KEY,
    project_name             TEXT         NOT NULL,
    start_date               DATE         NOT NULL,
    planned_end_date         DATE,
    actual_end_date          DATE,
    region_code              TEXT         NOT NULL,
    project_type             TEXT         NOT NULL,
    budget_usd               REAL,
    spent_usd                REAL,
    percent_complete         REAL,
    contractor_name          TEXT,
    lead_engineer            TEXT,
    status                   TEXT,
    risk_level               TEXT,
    environmental_impact     TEXT,
    community_feedback       TEXT,
    source_system            TEXT         NOT NULL,
    created_timestamp        DATE         NOT NULL,
    modified_timestamp       DATE         NOT NULL,
    data_quality_flag        TEXT         NOT NULL,
    funding_source           TEXT,
    oversight_committee      TEXT
);

INSERT INTO regional_infrastructure_project VALUES (4001, 'NorthBridge', '2022-01-15', '2025-12-31', NULL, 'R01', 'Bridge', 250000000.00, 180000000.00, 72.0, 'BridgeCo', 'Laura Kim', 'InProgress', 'Medium', 'Low', 'Positive', 'InfraDB', '2022-01-15', '2024-11-01', 'Good', 'FederalGrant', 'CommitteeA');
INSERT INTO regional_infrastructure_project VALUES (4002, 'EastRailExtension', '2021-06-01', '2024-06-30', '2024-06-20', 'R02', 'Rail', 500000000.00, 495000000.00, 99.0, 'RailBuild Ltd', 'Mark Patel', 'Completed', 'Low', 'Moderate', 'Mixed', 'InfraDB', '2021-06-01', '2024-06-20', 'Good', 'StateBond', 'CommitteeB');
INSERT INTO regional_infrastructure_project VALUES (4003, 'SouthWaterTreatment', '2023-03-01', '2026-09-30', NULL, 'R03', 'Water', 120000000.00, 45000000.00, 38.0, 'CleanWater Inc', 'Sofia Alvarez', 'InProgress', 'High', 'High', 'Concerned', 'InfraDB', '2023-03-01', '2024-11-01', 'Good', 'Municipal', 'CommitteeC');

-- Energy market trade summary – aggregated daily trade data for energy markets
CREATE TABLE energy_market_trade_summary
(
    trade_day                DATE         PRIMARY KEY,
    market_region            TEXT         NOT NULL,
    total_volume_mwh         REAL         NOT NULL,
    avg_price_per_mwh        REAL,
    peak_price_per_mwh       REAL,
    lowest_price_per_mwh     REAL,
    number_of_trades         INTEGER,
    market_participant_count INTEGER,
    net_imports_mwh          REAL,
    net_exports_mwh          REAL,
    regulatory_notice        TEXT,
    settlement_due_date      DATE,
    source_system            TEXT         NOT NULL,
    created_timestamp        DATE         NOT NULL,
    modified_timestamp       DATE         NOT NULL,
    data_quality_flag        TEXT         NOT NULL,
    currency                 TEXT,
    price_unit               TEXT,
    comments                 TEXT
);

INSERT INTO energy_market_trade_summary VALUES ('2024-11-01', 'North', 145000.00, 56.23, 78.90, 44.12, 238, 45, 12000.00, 8000.00, 'None', '2024-11-02', 'EnergyDB', '2024-11-01', '2024-11-01', 'Good', 'USD', 'USD/MWh', 'Stable market day');
INSERT INTO energy_market_trade_summary VALUES ('2024-11-02', 'North', 152300.00, 58.10, 81.00, 45.50, 250, 46, 13000.00, 9000.00, 'Minor reporting delay', '2024-11-03', 'EnergyDB', '2024-11-02', '2024-11-02', 'Good', 'USD', 'USD/MWh', 'Slight uptick');
INSERT INTO energy_market_trade_summary VALUES ('2024-11-01', 'South', 98000.00, 49.75, 70.20, 35.60, 190, 38, 7000.00, 4000.00, 'None', '2024-11-02', 'EnergyDB', '2024-11-01', '2024-11-01', 'Good', 'USD', 'USD/MWh', 'Cooler demand');

-- Healthcare claim detail – detailed records of individual healthcare claims
CREATE TABLE healthcare_claim_detail
(
    claim_id                 INTEGER      PRIMARY KEY,
    patient_id               INTEGER      NOT NULL,
    provider_id              INTEGER      NOT NULL,
    claim_date               DATE         NOT NULL,
    service_code             TEXT         NOT NULL,
    diagnosis_code           TEXT,
    procedure_code           TEXT,
    claim_amount             REAL,
    approved_amount          REAL,
    patient_responsibility   REAL,
    claim_status             TEXT,
    adjudication_date        DATE,
    payment_date             DATE,
    payment_method           TEXT,
    notes                    TEXT,
    source_system            TEXT         NOT NULL,
    created_timestamp        DATE         NOT NULL,
    modified_timestamp       DATE         NOT NULL,
    data_quality_flag        TEXT         NOT NULL,
    insurance_plan           TEXT,
    claim_type               TEXT
);

INSERT INTO healthcare_claim_detail VALUES (30001, 11001, 2101, '2024-10-15', 'SVC100', 'D123', 'P456', 1250.00, 1100.00, 150.00, 'Approved', '2024-10-20', '2024-10-25', 'Electronic', 'Routine checkup', 'HealthDB', '2024-10-15', '2024-10-25', 'Good', 'PlanA', 'Outpatient');
INSERT INTO healthcare_claim_detail VALUES (30002, 11002, 2102, '2024-09-05', 'SVC200', 'D456', 'P789', 3400.00, 3000.00, 400.00, 'Approved', '2024-09-10', '2024-09-18', 'Check', 'Minor surgery', 'HealthDB', '2024-09-05', '2024-09-18', 'Good', 'PlanB', 'Inpatient');
INSERT INTO healthcare_claim_detail VALUES (30003, 11003, 2103, '2024-08-22', 'SVC300', 'D789', 'P012', 750.00, 600.00, 150.00, 'Denied', '2024-08-27', NULL, NULL, 'Lab test not covered', 'HealthDB', '2024-08-22', '2024-08-27', 'Good', 'PlanC', 'Outpatient');