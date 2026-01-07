-- public_art_funding_grant: grants allocated for public art projects
CREATE TABLE public_art_funding_grant
(
    grant_id               INTEGER      PRIMARY KEY,
    agency_name            TEXT         NOT NULL,
    project_title          TEXT         NOT NULL,
    artist_name            TEXT         NOT NULL,
    award_year             INTEGER      NOT NULL,
    grant_amount           REAL         NOT NULL,
    currency_code          TEXT         NOT NULL,
    funding_program        TEXT         NOT NULL,
    application_deadline   DATE         NOT NULL,
    approval_date          DATE         NOT NULL,
    project_start_date     DATE         NOT NULL,
    project_end_date       DATE         NOT NULL,
    status                 TEXT         NOT NULL,
    contact_phone          TEXT         NOT NULL,
    contact_email           TEXT         NOT NULL,
    city_code              TEXT         NOT NULL,
    region_code            TEXT         NOT NULL,
    latitude               REAL         NOT NULL,
    longitude              REAL         NOT NULL,
    created_timestamp      DATE         NOT NULL
);

INSERT INTO public_art_funding_grant VALUES (1, 'National Arts Council', 'River Sculpture', 'Alice Monroe', 2022, 50000.00, 'USD', 'Cultural Development', '2021-11-01', '2021-12-15', '2022-03-01', '2022-09-30', 'Approved', '555-1234', 'alice@example.com', 'NYC', 'NY', 40.7128, -74.0060, '2022-01-05');
INSERT INTO public_art_funding_grant VALUES (2, 'State Arts Board', 'Community Mural', 'Javier Lopez', 2023, 30000.00, 'USD', 'Community Engagement', '2022-07-15', '2022-08-20', '2023-01-10', '2023-04-15', 'Pending', '555-5678', 'javier@example.com', 'LA', 'CA', 34.0522, -118.2437, '2022-09-01');
INSERT INTO public_art_funding_grant VALUES (3, 'City Cultural Fund', 'Digital Light Installation', 'Mia Chen', 2021, 75000.00, 'USD', 'Innovation Grant', '2020-09-30', '2020-10-25', '2021-02-01', '2021-08-31', 'Completed', '555-9012', 'mia@example.com', 'CHI', 'IL', 41.8781, -87.6298, '2021-01-15');

-- municipal_road_maintenance_schedule: schedule of maintenance activities for municipal roads
CREATE TABLE municipal_road_maintenance_schedule
(
    schedule_id            INTEGER      PRIMARY KEY,
    road_segment_id        INTEGER      NOT NULL,
    maintenance_type       TEXT         NOT NULL,
    start_date             DATE         NOT NULL,
    end_date               DATE         NOT NULL,
    contractor_name        TEXT         NOT NULL,
    contract_number        TEXT         NOT NULL,
    budget_amount          REAL         NOT NULL,
    currency_code          TEXT         NOT NULL,
    estimated_traffic_impact INTEGER    NOT NULL,
    lane_closure_count     INTEGER      NOT NULL,
    detour_route_id        INTEGER      NOT NULL,
    required_permits       TEXT         NOT NULL,
    supervisor_employee_id INTEGER      NOT NULL,
    status                 TEXT         NOT NULL,
    priority_level         INTEGER      NOT NULL,
    created_by_user        TEXT         NOT NULL,
    created_timestamp      DATE         NOT NULL,
    last_modified_by       TEXT         NOT NULL,
    last_modified_timestamp DATE        NOT NULL,
    notes                  TEXT         NOT NULL
);

INSERT INTO municipal_road_maintenance_schedule VALUES (101, 5001, 'Pothole Repair', '2023-05-01', '2023-05-03', 'RoadFix Co', 'RF-2023-001', 15000.00, 'USD', 3, 1, 2001, 'PermitA', 301, 'Scheduled', 2, 'admin', '2023-04-10', 'planner', '2023-04-15', 'No major disruptions expected');
INSERT INTO municipal_road_maintenance_schedule VALUES (102, 5023, 'Resurfacing', '2023-06-15', '2023-06-22', 'PavePlus Ltd', 'PP-2023-045', 120000.00, 'USD', 7, 2, 2005, 'PermitB', 302, 'Planned', 1, 'engineer', '2023-05-01', 'engineer', '2023-05-03', 'Expect lane closures during peak hours');
INSERT INTO municipal_road_maintenance_schedule VALUES (103, 5099, 'Bridge Inspection', '2023-07-10', '2023-07-12', 'BridgeInspect Inc', 'BI-2023-010', 8000.00, 'USD', 2, 0, 2010, 'PermitC', 303, 'Confirmed', 3, 'inspector', '2023-06-20', 'inspector', '2023-06-22', 'Safety checks only');

-- renewable_energy_asset_performance: performance metrics for renewable energy assets
CREATE TABLE renewable_energy_asset_performance
(
    asset_id               INTEGER      PRIMARY KEY,
    asset_name             TEXT         NOT NULL,
    asset_type             TEXT         NOT NULL,
    location_latitude      REAL         NOT NULL,
    location_longitude     REAL         NOT NULL,
    commissioning_date    DATE         NOT NULL,
    capacity_mw            REAL         NOT NULL,
    current_output_mw     REAL         NOT NULL,
    capacity_factor        REAL         NOT NULL,
    availability_percentage REAL       NOT NULL,
    cumulative_energy_mwh REAL         NOT NULL,
    total_operating_hours INTEGER      NOT NULL,
    maintenance_status    TEXT         NOT NULL,
    last_maintenance_date DATE         NOT NULL,
    next_maintenance_due  DATE         NOT NULL,
    operator_company       TEXT         NOT NULL,
    grid_connection_id    TEXT         NOT NULL,
    fault_count            INTEGER      NOT NULL,
    warning_count          INTEGER      NOT NULL,
    performance_rating     TEXT         NOT NULL,
    created_timestamp      DATE         NOT NULL,
    updated_timestamp      DATE         NOT NULL,
    notes                  TEXT         NOT NULL
);

INSERT INTO renewable_energy_asset_performance VALUES (1001, 'Solar Farm Alpha', 'Solar', 35.6789, -120.4567, '2020-03-15', 50.0, 45.2, 0.91, 98.5, 15000.0, 25000, 'Operational', '2022-12-01', '2023-12-01', 'SunPower Ltd', 'GRID-001', 2, 5, 'A', '2022-01-01', '2022-12-15', 'Running within expected parameters');
INSERT INTO renewable_energy_asset_performance VALUES (1002, 'Wind Park Beta', 'Wind', 42.1234, -87.6543, '2018-07-20', 120.0, 110.5, 0.85, 96.2, 34000.0, 40000, 'Operational', '2023-01-10', '2024-01-10', 'WindCorp', 'GRID-045', 1, 3, 'A', '2022-02-01', '2023-01-20', 'Minor turbine wear observed');
INSERT INTO renewable_energy_asset_performance VALUES (1003, 'Hydro Plant Gamma', 'Hydro', 48.5678, -122.3456, '2015-11-05', 200.0, 190.0, 0.95, 99.0, 65000.0, 60000, 'Operational', '2023-03-05', '2024-03-05', 'HydroFlow Inc', 'GRID-078', 0, 1, 'A+', '2022-03-01', '2023-03-10', 'Excellent performance');

-- healthcare_provider_staff: staff roster for healthcare providers
CREATE TABLE healthcare_provider_staff
(
    staff_id               INTEGER      PRIMARY KEY,
    provider_id            INTEGER      NOT NULL,
    first_name             TEXT         NOT NULL,
    last_name              TEXT         NOT NULL,
    job_title              TEXT         NOT NULL,
    department             TEXT         NOT NULL,
    employment_type        TEXT         NOT NULL,
    hire_date              DATE         NOT NULL,
    termination_date       DATE,
    certification_number   TEXT,
    certification_expiry   DATE,
    license_number         TEXT,
    license_state          TEXT,
    shift_pattern          TEXT,
    weekly_hours           INTEGER      NOT NULL,
    hourly_rate            REAL,
    salary_annual          REAL,
    email_address          TEXT,
    phone_number           TEXT,
    emergency_contact_name TEXT,
    emergency_contact_phone TEXT,
    address_line1          TEXT,
    address_line2          TEXT,
    city                   TEXT,
    state                  TEXT,
    postal_code            TEXT,
    created_timestamp      DATE,
    updated_timestamp      DATE,
    status                 TEXT
);

INSERT INTO healthcare_provider_staff VALUES (5001, 200, 'John', 'Doe', 'Registered Nurse', 'Emergency', 'Full-Time', '2015-06-01', NULL, 'RN12345', '2025-06-01', 'LN7890', 'CA', 'Day', 40, 45.00, 93600.00, 'jdoe@hospital.org', '555-1111', 'Jane Doe', '555-2222', '123 Main St', '', 'Los Angeles', 'CA', '90001', '2022-01-01', '2022-12-01', 'Active');
INSERT INTO healthcare_provider_staff VALUES (5002, 200, 'Emily', 'Smith', 'Physician', 'Cardiology', 'Part-Time', '2018-09-15', NULL, 'MD67890', '2024-09-15', 'LN4567', 'NY', 'Evening', 20, 120.00, 124800.00, 'esmith@hospital.org', '555-3333', 'Mark Smith', '555-4444', '456 Oak Ave', 'Apt 2B', 'New York', 'NY', '10001', '2022-02-01', '2022-11-15', 'Active');
INSERT INTO healthcare_provider_staff VALUES (5003, 201, 'Laura', 'Brown', 'Medical Assistant', 'Pediatrics', 'Full-Time', '2020-01-20', NULL, NULL, NULL, 'LN3210', 'TX', 'Night', 36, 30.00, 62400.00, 'lbrown@clinic.org', '555-5555', 'Sam Brown', '555-6666', '789 Pine Rd', '', 'Houston', 'TX', '77002', '2022-03-01', '2022-10-01', 'Active');

-- corporate_governance_meeting_minutes: minutes of corporate governance meetings
CREATE TABLE corporate_governance_meeting_minutes
(
    meeting_id             INTEGER      PRIMARY KEY,
    meeting_date           DATE         NOT NULL,
    meeting_type           TEXT         NOT NULL,
    location               TEXT         NOT NULL,
    chairperson            TEXT         NOT NULL,
    recorder               TEXT         NOT NULL,
    agenda_item_count      INTEGER      NOT NULL,
    decision_count         INTEGER      NOT NULL,
    action_item_count      INTEGER      NOT NULL,
    attendees_count        INTEGER      NOT NULL,
    absentees_count        INTEGER      NOT NULL,
    quorum_achieved        TEXT         NOT NULL,
    voting_method          TEXT         NOT NULL,
    total_votes_cast       INTEGER      NOT NULL,
    votes_for              INTEGER      NOT NULL,
    votes_against          INTEGER      NOT NULL,
    votes_abstain          INTEGER      NOT NULL,
    summary_text           TEXT         NOT NULL,
    next_meeting_date      DATE,
    created_timestamp      DATE,
    updated_timestamp      DATE,
    file_reference         TEXT
);

INSERT INTO corporate_governance_meeting_minutes VALUES (1, '2023-04-15', 'Board of Directors', 'Headquarters Conference Room', 'Alice Johnson', 'Michael Lee', 12, 8, 5, 15, 2, 'Yes', 'Electronic', 15, 13, 1, 1, 'Approved FY2023 budget and strategic plan.', '2023-10-15', '2023-04-16', '2023-04-20', 'minutes_20230415.pdf');
INSERT INTO corporate_governance_meeting_minutes VALUES (2, '2023-06-20', 'Audit Committee', 'Remote Zoom', 'Robert Kim', 'Sofia Patel', 9, 7, 4, 10, 0, 'Yes', 'Show of Hands', 10, 9, 0, 1, 'Reviewed internal audit findings and risk assessments.', '2023-12-20', '2023-06-21', '2023-06-22', 'minutes_20230620.pdf');
INSERT INTO corporate_governance_meeting_minutes VALUES (3, '2023-09-05', 'Compensation Committee', 'Regional Office', 'Emily Davis', 'Liam Wong', 7, 5, 3, 8, 1, 'Yes', 'Ballot', 8, 7, 0, 1, 'Decided on executive bonus structure for FY2024.', '2024-03-05', '2023-09-06', '2023-09-07', 'minutes_20230905.pdf');

-- supply_chain_certification_record: records of certifications for supply chain partners
CREATE TABLE supply_chain_certification_record
(
    record_id              INTEGER      PRIMARY KEY,
    partner_id             INTEGER      NOT NULL,
    certification_name     TEXT         NOT NULL,
    certification_body     TEXT         NOT NULL,
    certification_number   TEXT         NOT NULL,
    issue_date             DATE         NOT NULL,
    expiry_date            DATE         NOT NULL,
    status                 TEXT         NOT NULL,
    audit_frequency_months INTEGER      NOT NULL,
    last_audit_date        DATE,
    next_audit_due         DATE,
    scope_description      TEXT         NOT NULL,
    region_covered         TEXT         NOT NULL,
    compliance_score       REAL,
    corrective_actions     TEXT,
    responsible_officer    TEXT,
    contact_email          TEXT,
    contact_phone          TEXT,
    documentation_url      TEXT,
    remarks                TEXT,
    created_timestamp      DATE,
    updated_timestamp      DATE,
    archived_flag          INTEGER      NOT NULL
);

INSERT INTO supply_chain_certification_record VALUES (301, 4001, 'ISO 9001', 'International Standards Org', 'ISO9001-4001', '2021-05-01', '2024-05-01', 'Active', 12, '2022-05-15', '2023-05-15', 'Quality Management Systems', 'North America', 96.5, 'None', 'John Manager', 'john.manager@supplier.com', '555-7777', 'http://docs.supplier.com/iso9001', 'Good standing', '2022-01-01', '2022-12-01', 0);
INSERT INTO supply_chain_certification_record VALUES (302, 4002, 'ISO 14001', 'International Standards Org', 'ISO1401-4002', '2020-09-10', '2023-09-10', 'Expired', 12, '2021-09-12', '2022-09-12', 'Environmental Management', 'Europe', 88.0, 'Implement waste reduction plan', 'Sara Lead', 'sara.lead@supplier.co.uk', '555-8888', 'http://docs.supplier.co.uk/iso14001', 'Renewal required', '2020-02-01', '2021-02-01', 1);
INSERT INTO supply_chain_certification_record VALUES (303, 4003, 'SOC 2', 'AICPA', 'SOC2-4003', '2022-01-20', '2025-01-20', 'Active', 24, '2022-02-05', '2024-02-05', 'Security and Privacy Controls', 'Asia Pacific', 92.3, 'Update access control policies', 'Mike Chen', 'mike.chen@supplier.jp', '555-9999', 'http://docs.supplier.jp/soc2', 'No issues', '2022-03-01', '2022-09-01', 0);

-- digital_ad_campaign_budget: budgets for digital advertising campaigns
CREATE TABLE digital_ad_campaign_budget
(
    campaign_id            INTEGER      PRIMARY KEY,
    campaign_name          TEXT         NOT NULL,
    start_date             DATE         NOT NULL,
    end_date               DATE         NOT NULL,
    total_budget_usd       REAL         NOT NULL,
    allocated_search_usd   REAL,
    allocated_social_usd   REAL,
    allocated_display_usd  REAL,
    allocated_video_usd    REAL,
    currency_code          TEXT         NOT NULL,
    fiscal_quarter         TEXT         NOT NULL,
    approved_by            TEXT         NOT NULL,
    approval_date          DATE         NOT NULL,
    primary_market         TEXT         NOT NULL,
    target_audience        TEXT         NOT NULL,
    cpc_goal_usd           REAL,
    cpm_goal_usd           REAL,
    roi_target_percent     REAL,
    actual_spend_usd       REAL,
    actual_impressions     INTEGER,
    actual_clicks          INTEGER,
    conversions            INTEGER,
    conversion_rate_percent REAL,
    created_timestamp      DATE,
    updated_timestamp      DATE,
    notes                  TEXT
);

INSERT INTO digital_ad_campaign_budget VALUES (9001, 'Summer Sale 2023', '2023-06-01', '2023-08-31', 250000.00, 80000.00, 70000.00, 60000.00, 40000.00, 'USD', 'Q2', 'Laura Manager', '2023-05-15', 'US', 'Adults 25-45', 0.45, 12.00, 150.0, 240000.00, 3500000, 120000, 18000, 15.0, '2023-09-01', '2023-09-10', 'Exceeded spend by 4%');
INSERT INTO digital_ad_campaign_budget VALUES (9002, 'Back to School', '2023-08-01', '2023-09-30', 150000.00, 50000.00, 40000.00, 30000.00, 30000.00, 'USD', 'Q3', 'Mark Supervisor', '2023-07-20', 'Canada', 'Students 13-22', 0.55, 10.00, 130.0, 152000.00, 2100000, 80000, 10000, 12.5, '2023-10-01', '2023-10-05', 'Slight overspend due to extra video ads');
INSERT INTO digital_ad_campaign_budget VALUES (9003, 'Holiday Promo', '2023-11-01', '2023-12-31', 300000.00, 120000.00, 90000.00, 60000.00, 30000.00, 'USD', 'Q4', 'Nina Director', '2023-10-15', 'UK', 'Adults 30-55', 0.60, 11.00, 160.0, 295000.00, 4000000, 150000, 25000, 16.7, '2024-01-05', '2024-01-10', 'Spend within target');

-- wildlife_observation_log: log of wildlife observations in protected areas
CREATE TABLE wildlife_observation_log
(
    observation_id         INTEGER      PRIMARY KEY,
    park_id                INTEGER      NOT NULL,
    species_common_name    TEXT         NOT NULL,
    species_scientific_name TEXT        NOT NULL,
    observer_name          TEXT         NOT NULL,
    observation_date       DATE         NOT NULL,
    observation_time       TEXT         NOT NULL,
    count_observed         INTEGER      NOT NULL,
    age_class              TEXT,
    gender                 TEXT,
    behavior_description   TEXT,
    weather_conditions     TEXT,
    temperature_celsius    REAL,
    humidity_percent       REAL,
    location_latitude      REAL,
    location_longitude     REAL,
    photo_filename         TEXT,
    audio_recording        TEXT,
    notes                  TEXT,
    verified_by            TEXT,
    verification_date      DATE,
    created_timestamp      DATE,
    updated_timestamp      DATE,
    status                 TEXT
);

INSERT INTO wildlife_observation_log VALUES (701, 10, 'White-tailed Deer', 'Odocoileus virginianus', 'Emily Green', '2023-07-12', '06:30', 3, 'Adult', 'Female', 'Grazing near meadow', 'Clear', 22.5, 45.0, 45.1234, -122.5678, 'deer_701.jpg', 'deer_701.wav', 'Group moved north after observer left', 'Dr. Hawk', '2023-07-13', '2023-07-14', '2023-07-15', 'Verified');
INSERT INTO wildlife_observation_log VALUES (702, 12, 'Bald Eagle', 'Haliaeetus leucocephalus', 'John Rivers', '2023-08-05', '14:20', 1, 'Adult', 'Male', 'Soaring above river', 'Windy', 18.0, 55.0, 46.7890, -123.0123, 'eagle_702.jpg', 'eagle_702.wav', 'Observed perched on a dead tree later', 'Dr. Falcon', '2023-08-06', '2023-08-07', '2023-08-08', 'Verified');
INSERT INTO wildlife_observation_log VALUES (703, 15, 'Mountain Lion', 'Puma concolor', 'Laura Smith', '2023-09-20', '19:45', 1, 'Subadult', 'Female', 'Resting on ridge', 'Overcast', 15.2, 70.0, 47.3456, -122.9876, 'lion_703.jpg', 'lion_703.wav', 'Tracks found nearby', 'Dr. Cougar', '2023-09-21', '2023-09-22', '2023-09-23', 'Pending');

-- smart_city_iot_device_status: status of IoT devices deployed in a smart city
CREATE TABLE smart_city_iot_device_status
(
    device_id              INTEGER      PRIMARY KEY,
    device_type            TEXT         NOT NULL,
    model_number           TEXT         NOT NULL,
    firmware_version       TEXT         NOT NULL,
    installation_date      DATE         NOT NULL,
    location_latitude      REAL         NOT NULL,
    location_longitude     REAL         NOT NULL,
    network_id             TEXT         NOT NULL,
    ip_address             TEXT         NOT NULL,
    mac_address            TEXT         NOT NULL,
    battery_level_percent  REAL,
    signal_strength_dbm    REAL,
    last_heartbeat         TIMESTAMP    NOT NULL,
    status_current         TEXT         NOT NULL,
    error_code             TEXT,
    maintenance_due_date   DATE,
    assigned_operator      TEXT,
    last_maintenance_date  DATE,
    uptime_seconds         BIGINT,
    data_transmitted_mb    REAL,
    data_received_mb       REAL,
    firmware_update_pending TEXT,
    alert_flag             INTEGER,
    created_timestamp      DATE,
    updated_timestamp      DATE,
    notes                  TEXT
);

INSERT INTO smart_city_iot_device_status VALUES (10001, 'AirQualitySensor', 'AQ-200', 'v3.2.1', '2022-03-15', 40.7128, -74.0060, 'NET-01', '192.168.1.10', 'AA:BB:CC:DD:EE:01', 85.0, -70.5, '2023-12-01 08:00:00', 'Online', NULL, '2024-03-01', 'TechTeamA', '2023-06-15', 31536000, 1200.5, 1150.3, 'No', 0, '2023-01-01', '2023-12-01', 'All parameters normal');
INSERT INTO smart_city_iot_device_status VALUES (10002, 'SmartParkingSpot', 'SP-45', 'v1.4.0', '2021-11-20', 34.0522, -118.2437, 'NET-02', '192.168.2.20', 'AA:BB:CC:DD:EE:02', 60.0, -65.0, '2023-12-01 08:05:00', 'Online', 'E101', '2024-02-15', 'TechTeamB', '2023-05-10', 63072000, 2500.0, 2400.0, 'Yes', 1, '2022-02-01', '2023-11-30', 'Battery replacement due soon');
INSERT INTO smart_city_iot_device_status VALUES (10003, 'StreetLightController', 'SL-300', 'v2.0.5', '2020-07-05', 41.8781, -87.6298, 'NET-03', '192.168.3.30', 'AA:BB:CC:DD:EE:03', 100.0, -55.0, '2023-12-01 08:10:00', 'Offline', 'E202', '2024-01-10', 'TechTeamC', '2023-03-20', 94608000, 5000.0, 4800.0, 'No', 0, '2020-07-05', '2023-12-01', 'Power outage reported');

-- insurance_policy_claim_detail: detailed records of insurance policy claims
CREATE TABLE insurance_policy_claim_detail
(
    claim_id               INTEGER      PRIMARY KEY,
    policy_id              INTEGER      NOT NULL,
    claimant_name          TEXT         NOT NULL,
    claimant_contact       TEXT,
    claim_type             TEXT         NOT NULL,
    incident_date          DATE         NOT NULL,
    report_date            DATE         NOT NULL,
    claim_status           TEXT         NOT NULL,
    loss_amount_estimated  REAL,
    loss_amount_paid       REAL,
    deductible_amount      REAL,
    adjuster_name          TEXT,
    adjuster_contact       TEXT,
    investigation_notes    TEXT,
    settlement_date        DATE,
    settlement_method      TEXT,
    payment_reference      TEXT,
    fraud_flag             INTEGER,
    fraud_investigation_id INTEGER,
    court_case_number      TEXT,
    legal_representative   TEXT,
    documents_url          TEXT,
    created_timestamp      DATE,
    updated_timestamp      DATE,
    notes                  TEXT
);

INSERT INTO insurance_policy_claim_detail VALUES (40001, 8001, 'Michael Brown', '555-1234', 'AutoCollision', '2023-04-10', '2023-04-12', 'Approved', 15000.00, 14500.00, 500.00, 'Anna Adjuster', '555-5678', 'Vehicle towed, driver uninjured', '2023-05-01', 'Direct Deposit', 'PAY-8001-001', 0, NULL, NULL, NULL, 'http://claims.insurance.com/40001/docs', '2023-04-12', '2023-05-02', 'Settled without issue');
INSERT INTO insurance_policy_claim_detail VALUES (40002, 8002, 'Sarah Lee', '555-8765', 'HomeFire', '2023-06-15', '2023-06-16', 'Pending', 75000.00, NULL, 2000.00, 'Tom Investigator', '555-4321', 'Fire damage to kitchen and living area', NULL, NULL, NULL, 1, 9001, 'CASE-2023-09', 'LawFirm XYZ', 'http://claims.insurance.com/40002/docs', '2023-06-16', '2023-07-01', 'Awaiting investigation results');
INSERT INTO insurance_policy_claim_detail VALUES (40003, 8003, 'Laura Kim', '555-1111', 'Medical', '2022-12-01', '2022-12-02', 'Denied', 5000.00, 0.00, 500.00, 'Rebecca Analyst', '555-2222', 'Claim rejected due to pre-existing condition', '2023-01-15', 'Check', 'PAY-8003-001', 0, NULL, NULL, NULL, 'http://claims.insurance.com/40003/docs', '2022-12-02', '2023-01-20', 'Denial based on policy terms');