-- Branch staff weekly schedule
CREATE TABLE branch_staff_schedule
(
    schedule_id          INTEGER PRIMARY KEY,
    branch_id            INTEGER NOT NULL,
    employee_id          INTEGER NOT NULL,
    week_start_date      DATE NOT NULL,
    shift_monday_start   TIME NOT NULL,
    shift_monday_end     TIME NOT NULL,
    shift_tuesday_start  TIME NOT NULL,
    shift_tuesday_end    TIME NOT NULL,
    shift_wednesday_start TIME NOT NULL,
    shift_wednesday_end  TIME NOT NULL,
    shift_thursday_start TIME NOT NULL,
    shift_thursday_end   TIME NOT NULL,
    shift_friday_start   TIME NOT NULL,
    shift_friday_end     TIME NOT NULL,
    shift_saturday_start TIME,
    shift_saturday_end   TIME,
    shift_sunday_start   TIME,
    shift_sunday_end     TIME,
    total_hours_planned  REAL NOT NULL,
    notes                TEXT,
    created_at           DATE NOT NULL,
    updated_at           DATE NOT NULL,
    is_active            INTEGER NOT NULL
);

INSERT INTO branch_staff_schedule VALUES (1, 101, 1001, '2024-01-01', '08:00', '16:00', '08:00', '16:00',
                                          '08:00', '16:00', '08:00', '16:00', '08:00', '16:00',
                                          NULL, NULL, NULL, NULL, 40.0, 'Regular week', '2024-01-01', '2024-01-02', 1);
INSERT INTO branch_staff_schedule VALUES (2, 102, 1002, '2024-01-01', '09:00', '17:00', '09:00', '17:00',
                                          '09:00', '17:00', '09:00', '17:00', '09:00', '17:00',
                                          '10:00', '14:00', NULL, NULL, 44.0, 'Weekend shift added', '2024-01-01', '2024-01-03', 1);
INSERT INTO branch_staff_schedule VALUES (3, 103, 1003, '2024-01-01', '07:00', '15:00', '07:00', '15:00',
                                          '07:00', '15:00', '07:00', '15:00', '07:00', '15:00',
                                          NULL, NULL, '08:00', '12:00', 36.0, 'Part‑time', '2024-01-01', '2024-01-04', 1);

-- Equipment maintenance log
CREATE TABLE equipment_maintenance_log
(
    maintenance_id          INTEGER PRIMARY KEY,
    equipment_id            INTEGER NOT NULL,
    branch_id               INTEGER NOT NULL,
    maintenance_date        DATE NOT NULL,
    technician_id           INTEGER NOT NULL,
    maintenance_type        TEXT NOT NULL,
    description             TEXT,
    downtime_minutes        INTEGER NOT NULL,
    cost_estimated          REAL,
    cost_actual             REAL,
    parts_used              TEXT,
    status                  TEXT NOT NULL,
    warranty_flag           INTEGER NOT NULL,
    next_maintenance_due    DATE,
    created_timestamp       DATE NOT NULL,
    updated_timestamp       DATE NOT NULL,
    approved_by             INTEGER,
    approval_date           DATE,
    priority_level          INTEGER NOT NULL,
    risk_assessment_score   REAL,
    compliance_check        TEXT,
    notes                   TEXT,
    is_deleted              INTEGER NOT NULL,
    created_by_user         INTEGER NOT NULL
);

INSERT INTO equipment_maintenance_log VALUES (1, 2001, 101, '2024-02-15', 3001, 'Preventive',
                                               'Quarterly check of ATM cash dispenser', 30, 150.0, 145.0,
                                               'Seal Kit', 'Completed', 1, '2024-05-15',
                                               '2024-02-15', '2024-02-15', 4001, '2024-02-15',
                                               2, 3.2, 'Passed', 'All good', 0, 5001);
INSERT INTO equipment_maintenance_log VALUES (2, 2002, 102, '2024-02-20', 3002, 'Corrective',
                                               'Replaced faulty card reader', 45, 300.0, 320.0,
                                               'Reader Module', 'Completed', 0, NULL,
                                               '2024-02-20', '2024-02-21', 4002, '2024-02-21',
                                               1, 5.0, 'Passed', 'Replaced ASAP', 0, 5002);
INSERT INTO equipment_maintenance_log VALUES (3, 2003, 103, '2024-03-01', 3003, 'Inspection',
                                               'Annual HVAC inspection', 60, 200.0, 0.0,
                                               NULL, 'Pending', 1, '2025-03-01',
                                               '2024-03-01', '2024-03-01', 4003, NULL,
                                               3, 2.5, 'Pending', 'Awaiting parts', 0, 5003);

-- Marketing channel metrics
CREATE TABLE marketing_channel_metrics
(
    metric_id               INTEGER PRIMARY KEY,
    campaign_id             INTEGER NOT NULL,
    channel_name            TEXT NOT NULL,
    impressions             INTEGER NOT NULL,
    clicks                  INTEGER NOT NULL,
    conversions             INTEGER NOT NULL,
    spend_amount            REAL NOT NULL,
    revenue_generated       REAL,
    ctr_percent             REAL NOT NULL,
    cpc_amount              REAL NOT NULL,
    conversion_rate_percent REAL NOT NULL,
    avg_position            REAL,
    quality_score           INTEGER,
    start_date              DATE NOT NULL,
    end_date                DATE NOT NULL,
    target_audience         TEXT,
    geo_target              TEXT,
    device_type             TEXT,
    ad_format               TEXT,
    budget_allocation       REAL,
    cost_per_conversion     REAL,
    click_through_rate      REAL,
    viewability_rate        REAL,
    attribution_model       TEXT,
    created_timestamp       DATE NOT NULL,
    updated_timestamp       DATE NOT NULL,
    is_active               INTEGER NOT NULL,
    notes                   TEXT
);

INSERT INTO marketing_channel_metrics VALUES (1, 9001, 'SocialMedia', 50000, 2500, 150, 1200.0, 3000.0,
                                               5.0, 0.48, 6.0, 1.8, 8, '2024-01-01', '2024-01-31',
                                               'Adults18-35', 'US', 'Mobile', 'Video', 1500.0,
                                               8.0, 5.0, 70.0, 'LastClick', '2024-01-01', '2024-02-01', 1, '');
INSERT INTO marketing_channel_metrics VALUES (2, 9002, 'Search', 80000, 4000, 300, 2500.0, 6000.0,
                                               5.0, 0.62, 10.0, 1.5, 9, '2024-02-01', '2024-02-28',
                                               'Professionals', 'EU', 'Desktop', 'Text', 2600.0,
                                               8.33, 5.0, 85.0, 'FirstClick', '2024-02-01', '2024-03-01', 1, '');
INSERT INTO marketing_channel_metrics VALUES (3, 9003, 'Email', 20000, 1500, 200, 800.0, 1800.0,
                                               7.5, 0.53, 4.0, 2.0, 7, '2024-03-01', '2024-03-31',
                                               'AllCustomers', 'Global', 'All', 'HTML', 900.0,
                                               4.0, 7.5, 95.0, 'Linear', '2024-03-01', '2024-04-01', 1, '');

-- Site environmental monitoring
CREATE TABLE site_environmental_monitoring
(
    monitoring_id          INTEGER PRIMARY KEY,
    site_id                INTEGER NOT NULL,
    monitor_type           TEXT NOT NULL,
    measurement_value      REAL NOT NULL,
    measurement_unit       TEXT NOT NULL,
    recorded_timestamp     DATE NOT NULL,
    sensor_id              INTEGER NOT NULL,
    calibration_date       DATE,
    status                 TEXT NOT NULL,
    battery_level_percent  INTEGER,
    signal_strength_db     REAL,
    data_quality_score     REAL,
    maintenance_required   INTEGER,
    notes                  TEXT,
    latitude               REAL,
    longitude              REAL,
    altitude_meters        REAL,
    firmware_version       TEXT,
    alert_flag             INTEGER,
    created_at             DATE NOT NULL,
    updated_at             DATE NOT NULL,
    is_retired             INTEGER NOT NULL,
    created_by_user        INTEGER NOT NULL,
    updated_by_user        INTEGER NOT NULL,
    source_system          TEXT,
    compliance_status      TEXT,
    verified_by            INTEGER,
    verification_date      DATE
);

INSERT INTO site_environmental_monitoring VALUES (1, 301, 'AirQuality', 42.5, 'AQI', '2024-03-10', 501, '2023-12-01',
                                                   'Active', 85, -70.5, 0.98, 0, 'Normal operation',
                                                   40.7128, -74.0060, 10.2, 'v1.2.3', 0,
                                                   '2024-03-10', '2024-03-10', 0, 1001, 1002,
                                                   'EnvSysA', 'Compliant', 2001, '2024-03-11');
INSERT INTO site_environmental_monitoring VALUES (2, 302, 'NoiseLevel', 68.0, 'dB', '2024-03-10', 502, '2023-11-15',
                                                   'Active', 90, -68.0, 0.95, 0, '',
                                                   34.0522, -118.2437, 30.0, 'v1.2.3', 0,
                                                   '2024-03-10', '2024-03-10', 0, 1003, 1004,
                                                   'EnvSysB', 'Compliant', 2002, '2024-03-11');
INSERT INTO site_environmental_monitoring VALUES (3, 303, 'Temperature', 22.3, 'C', '2024-03-10', 503, '2024-01-20',
                                                   'Active', 78, -72.0, 0.99, 0, '',
                                                   51.5074, -0.1278, 15.0, 'v1.2.3', 0,
                                                   '2024-03-10', '2024-03-10', 0, 1005, 1006,
                                                   'EnvSysC', 'Compliant', 2003, '2024-03-11');

-- Renewable energy asset performance
CREATE TABLE renewable_energy_asset_performance
(
    performance_id            INTEGER PRIMARY KEY,
    asset_id                  INTEGER NOT NULL,
    asset_type                TEXT NOT NULL,
    capacity_mw               REAL NOT NULL,
    generation_mwh            REAL NOT NULL,
    capacity_factor_percent  REAL NOT NULL,
    availability_percent      REAL NOT NULL,
    net_output_mwh            REAL,
    downtime_hours            REAL,
    maintenance_events        INTEGER,
    last_maintenance_date     DATE,
    performance_rating        INTEGER,
    location_city             TEXT,
    location_state            TEXT,
    commissioning_date        DATE,
    decommissioning_date      DATE,
    operator_id               INTEGER,
    ownership_type            TEXT,
    grid_connection_status    TEXT,
    environmental_impact_score REAL,
    incentive_received_amount REAL,
    created_timestamp         DATE NOT NULL,
    updated_timestamp         DATE NOT NULL,
    is_active                 INTEGER NOT NULL,
    notes                     TEXT
);

INSERT INTO renewable_energy_asset_performance VALUES (1, 8001, 'SolarFarm', 50.0, 120000.0, 27.4, 98.5, 118200.0,
                                                       200.0, 3, '2024-01-15', 9, 'Phoenix', 'AZ',
                                                       '2020-06-01', NULL, 6001, 'Public', 'Connected',
                                                       75.0, 500000.0, '2024-03-01', '2024-03-01', 1, '');
INSERT INTO renewable_energy_asset_performance VALUES (2, 8002, 'WindPark', 120.0, 350000.0, 33.3, 97.0, 339500.0,
                                                       300.0, 5, '2023-12-20', 8, 'Austin', 'TX',
                                                       '2018-09-15', NULL, 6002, 'Joint', 'Connected',
                                                       68.0, 750000.0, '2024-03-01', '2024-03-01', 1, '');
INSERT INTO renewable_energy_asset_performance VALUES (3, 8003, 'HydroPlant', 80.0, 700000.0, 100.0, 99.9, 699300.0,
                                                       50.0, 2, '2022-05-10', 10, 'Portland', 'OR',
                                                       '2015-03-20', NULL, 6003, 'Private', 'Connected',
                                                       85.0, 1000000.0, '2024-03-01', '2024-03-01', 1, '');

-- Urban transportation hub statistics
CREATE TABLE urban_transportation_hub_stats
(
    hub_id                     INTEGER PRIMARY KEY,
    hub_name                  TEXT NOT NULL,
    city                      TEXT NOT NULL,
    state                     TEXT NOT NULL,
    total_daily_ridership     INTEGER NOT NULL,
    peak_hour_ridership       INTEGER NOT NULL,
    number_of_lines           INTEGER NOT NULL,
    number_of_platforms       INTEGER NOT NULL,
    average_wait_time_min     REAL NOT NULL,
    on_time_performance_percent REAL NOT NULL,
    incident_count_daily      INTEGER,
    maintenance_events_monthly INTEGER,
    fuel_consumption_liters   REAL,
    electricity_consumption_kwh REAL,
    emissions_co2_kg          REAL,
    accessibility_score       INTEGER,
    wifi_coverage_percent     REAL,
    security_incidents_monthly INTEGER,
    retail_space_sqft         REAL,
    parking_spaces_available INTEGER,
    created_date              DATE NOT NULL,
    last_updated_date         DATE NOT NULL,
    is_operational            INTEGER NOT NULL,
    notes                     TEXT
);

INSERT INTO urban_transportation_hub_stats VALUES (1, 'Central Station', 'Chicago', 'IL', 85000, 12000, 8, 16,
                                                   3.2, 92.5, 4, 2, 0.0, 12500.0, 3500.0,
                                                   85, 98.0, 1, 50000.0, 2000,
                                                   '2024-01-01', '2024-03-01', 1, '');
INSERT INTO urban_transportation_hub_stats VALUES (2, 'Downtown Hub', 'Seattle', 'WA', 53000, 8000, 5, 10,
                                                   4.1, 88.0, 2, 1, 0.0, 7500.0, 2100.0,
                                                   80, 95.0, 0, 30000.0, 1500,
                                                   '2024-01-01', '2024-03-01', 1, '');
INSERT INTO urban_transportation_hub_stats VALUES (3, 'Metro Center', 'Boston', 'MA', 67000, 9500, 6, 12,
                                                   3.8, 90.0, 3, 3, 0.0, 9800.0, 2800.0,
                                                   82, 96.5, 2, 40000.0, 1800,
                                                   '2024-01-01', '2024-03-01', 1, '');

-- Healthcare provider contract
CREATE TABLE healthcare_provider_contract
(
    contract_id               INTEGER PRIMARY KEY,
    provider_id               INTEGER NOT NULL,
    provider_name             TEXT NOT NULL,
    contract_start_date       DATE NOT NULL,
    contract_end_date         DATE NOT NULL,
    service_type              TEXT NOT NULL,
    fee_structure             TEXT NOT NULL,
    annual_fee_amount         REAL,
    per_service_fee           REAL,
    performance_bonus_percent REAL,
    penalty_rate_percent      REAL,
    max_coverage_units        INTEGER,
    renewal_option_flag       INTEGER NOT NULL,
    exclusivity_flag          INTEGER NOT NULL,
    governing_law             TEXT,
    jurisdiction              TEXT,
    termination_notice_days   INTEGER,
    dispute_resolution_method TEXT,
    confidentiality_clause    TEXT,
    audit_rights_flag         INTEGER,
    created_timestamp         DATE NOT NULL,
    updated_timestamp         DATE NOT NULL,
    is_active                 INTEGER NOT NULL,
    notes                     TEXT
);

INSERT INTO healthcare_provider_contract VALUES (1, 4001, 'HealthPlus Clinic', '2023-01-01', '2025-12-31',
                                                'PrimaryCare', 'Fixed', 250000.0, NULL, 5.0, 2.0,
                                                10000, 1, 0, 'StateLaw', 'California', 60,
                                                'Arbitration', 'Standard', 1,
                                                '2024-01-01', '2024-01-01', 1, '');
INSERT INTO healthcare_provider_contract VALUES (2, 4002, 'Urban Hospital', '2022-06-01', '2027-05-31',
                                                'Surgery', 'FeePerService', NULL, 1500.0, 3.0, 1.5,
                                                5000, 1, 1, 'FederalLaw', 'NewYork', 30,
                                                'Mediation', 'Strict', 1,
                                                '2024-01-01', '2024-02-01', 1, '');
INSERT INTO healthcare_provider_contract VALUES (3, 4003, 'Regional Labs', '2021-09-15', '2026-09-14',
                                                'Diagnostics', 'Hybrid', 120000.0, 200.0, 4.0, 2.5,
                                                8000, 0, 0, 'StateLaw', 'Texas', 45,
                                                'Litigation', 'Limited', 0,
                                                '2024-01-01', '2024-03-01', 1, '');

-- Supply chain shipment detail
CREATE TABLE supply_chain_shipment_detail
(
    shipment_id               INTEGER PRIMARY KEY,
    order_id                  INTEGER NOT NULL,
    carrier_id                INTEGER NOT NULL,
    origin_warehouse_id       INTEGER NOT NULL,
    destination_warehouse_id  INTEGER NOT NULL,
    ship_date                 DATE NOT NULL,
    estimated_arrival_date    DATE NOT NULL,
    actual_arrival_date       DATE,
    shipment_mode             TEXT NOT NULL,
    pallet_count              INTEGER NOT NULL,
    total_weight_kg           REAL NOT NULL,
    volume_cubic_meters       REAL,
    freight_cost_usd          REAL,
    insurance_cost_usd        REAL,
    carrier_tracking_number   TEXT,
    customs_declaration_flag  INTEGER,
    hazardous_material_flag   INTEGER,
    temperature_control_flag  INTEGER,
    special_handling_instructions TEXT,
    status                    TEXT NOT NULL,
    delay_reason              TEXT,
    created_timestamp         DATE NOT NULL,
    updated_timestamp         DATE NOT NULL,
    is_delivered              INTEGER NOT NULL,
    notes                     TEXT
);

INSERT INTO supply_chain_shipment_detail VALUES (1, 7001, 9001, 1101, 1201, '2024-02-20', '2024-02-25',
                                                '2024-02-24', 'Truck', 12, 3400.0, 18.5,
                                                1500.0, 200.0, 'TRK123456', 0, 0, 0,
                                                'None', 'Delivered', NULL,
                                                '2024-02-20', '2024-02-24', 1, '');
INSERT INTO supply_chain_shipment_detail VALUES (2, 7002, 9002, 1102, 1202, '2024-02-22', '2024-03-01',
                                                NULL, 'Air', 4, 1200.0, 6.0,
                                                3000.0, 350.0, 'AIR987654', 0, 1, 1,
                                                'Keep frozen', 'InTransit', NULL,
                                                '2024-02-22', '2024-02-28', 0, '');
INSERT INTO supply_chain_shipment_detail VALUES (3, 7003, 9003, 1103, 1203, '2024-02-25', '2024-03-05',
                                                NULL, 'Sea', 20, 8500.0, 45.0,
                                                5000.0, 600.0, 'SEA555555', 1, 0, 0,
                                                'Handle with care', 'Pending', NULL,
                                                '2024-02-25', '2024-02-27', 0, '');

-- Corporate governance meeting summary
CREATE TABLE corporate_governance_meeting_summary
(
    meeting_id                INTEGER PRIMARY KEY,
    meeting_date              DATE NOT NULL,
    meeting_type              TEXT NOT NULL,
    chairperson_id            INTEGER NOT NULL,
    location                  TEXT NOT NULL,
    duration_minutes          INTEGER NOT NULL,
    agenda_items_count        INTEGER NOT NULL,
    decisions_made_count      INTEGER NOT NULL,
    action_items_count        INTEGER NOT NULL,
    attendance_total          INTEGER NOT NULL,
    attendance_percentage     REAL NOT NULL,
    board_members_present     TEXT,
    external_guests_present   TEXT,
    minutes_document_path     TEXT,
    recording_url             TEXT,
    follow_up_deadline_date   DATE,
    risk_assessment_level     TEXT,
    compliance_issues_flag    INTEGER,
    next_meeting_date         DATE,
    created_timestamp         DATE NOT NULL,
    updated_timestamp         DATE NOT NULL,
    is_finalized              INTEGER NOT NULL,
    notes                     TEXT
);

INSERT INTO corporate_governance_meeting_summary VALUES (1, '2024-02-15', 'Quarterly', 8001, 'Headquarters Conference Room',
                                                       180, 8, 5, 4, 12, 100.0,
                                                       'John Doe;Jane Smith;Bob Lee', 'Auditor A;Consultant B',
                                                       '/docs/minutes/q1_2024.pdf', 'https://videos.corp.com/q1_2024',
                                                       '2024-03-01', 'Low', 0, '2024-05-15',
                                                       '2024-02-15', '2024-02-16', 1, '');
INSERT INTO corporate_governance_meeting_summary VALUES (2, '2024-04-10', 'Annual', 8002, 'Main Office Boardroom',
                                                       240, 12, 9, 6, 15, 100.0,
                                                       'Alice Green;Mark White;Sophie Black', 'Legal Counsel',
                                                       '/docs/minutes/annual_2024.pdf', 'https://videos.corp.com/annual_2024',
                                                       '2024-04-30', 'Medium', 1, '2024-07-10',
                                                       '2024-04-10', '2024-04-11', 1, '');
INSERT INTO corporate_governance_meeting_summary VALUES (3, '2024-06-20', 'Special', 8003, 'Remote Zoom',
                                                       90, 5, 3, 2, 10, 80.0,
                                                       'Tom Brown;Lisa Gray', 'Regulator X',
                                                       '/docs/minutes/special_2024.pdf', 'https://videos.corp.com/special_2024',
                                                       '2024-07-05', 'High', 1, '2024-08-15',
                                                       '2024-06-20', '2024-06-21', 0, '');

-- Customer loyalty activity log
CREATE TABLE customer_loyalty_activity_log
(
    activity_id               INTEGER PRIMARY KEY,
    customer_id               INTEGER NOT NULL,
    loyalty_program_id        INTEGER NOT NULL,
    activity_date             DATE NOT NULL,
    activity_type             TEXT NOT NULL,
    points_earned             INTEGER,
    points_redeemed           INTEGER,
    tier_before               TEXT,
    tier_after                TEXT,
    transaction_reference     TEXT,
    channel                   TEXT,
    location_id               INTEGER,
    campaign_code             TEXT,
    promotion_applied_flag    INTEGER,
    bonus_multiplier          REAL,
    notes                     TEXT,
    created_timestamp         DATE NOT NULL,
    updated_timestamp         DATE NOT NULL,
    is_successful             INTEGER NOT NULL,
    audit_user_id             INTEGER,
    audit_timestamp           DATE
);

INSERT INTO customer_loyalty_activity_log VALUES (1, 5001, 3001, '2024-02-05', 'Purchase', 120, 0,
                                                  'Silver', 'Gold', 'TXN12345', 'Online', 101,
                                                  'SPRING2024', 1, 1.0, '', '2024-02-05', '2024-02-05', 1, 9001, '2024-02-05');
INSERT INTO customer_loyalty_activity_log VALUES (2, 5002, 3001, '2024-02-12', 'Redemption', 0, 200,
                                                  'Gold', 'Gold', 'RDM67890', 'InStore', 102,
                                                  'WINTER2024', 0, 1.0, '', '2024-02-12', '2024-02-12', 1, 9002, '2024-02-12');
INSERT INTO customer_loyalty_activity_log VALUES (3, 5003, 3002, '2024-02-20', 'Referral', 300, 0,
                                                  'Bronze', 'Silver', 'REF34567', 'MobileApp', 103,
                                                  'REFERRAL2024', 1, 2.0, 'Friend referred', '2024-02-20', '2024-02-20', 1, 9003, '2024-02-20');

-- Digital wallet activity
CREATE TABLE digital_wallet_activity
(
    wallet_activity_id        INTEGER PRIMARY KEY,
    wallet_id                 INTEGER NOT NULL,
    user_id                   INTEGER NOT NULL,
    activity_timestamp        DATE NOT NULL,
    activity_type             TEXT NOT NULL,
    amount_usd                REAL NOT NULL,
    currency_code             TEXT NOT NULL,
    counterpart_wallet_id     INTEGER,
    transaction_status        TEXT NOT NULL,
    fee_usd                   REAL,
    exchange_rate             REAL,
    device_id                 INTEGER,
    ip_address                TEXT,
    geo_location              TEXT,
    merchant_category_code    TEXT,
    auth_method               TEXT,
    fraud_flag                INTEGER,
    notes                     TEXT,
    created_timestamp         DATE NOT NULL,
    updated_timestamp         DATE NOT NULL,
    is_refunded               INTEGER,
    refund_amount_usd         REAL,
    settlement_date           DATE
);

INSERT INTO digital_wallet_activity VALUES (1, 7001, 8001, '2024-02-10', 'Purchase', 45.00, 'USD', 9001,
                                            'Completed', 0.30, 1.00, 4001, '192.168.1.10', 'NewYork,NY',
                                            '5411', 'Password', 0, '', '2024-02-10', '2024-02-10', 0, NULL, '2024-02-11');
INSERT INTO digital_wallet_activity VALUES (2, 7002, 8002, '2024-02-12', 'Transfer', 150.00, 'EUR', 9002,
                                            'Pending', 0.50, 1.10, 4002, '192.168.1.20', 'Berlin,DE',
                                            '6012', 'Biometric', 0, '', '2024-02-12', '2024-02-12', 0, NULL, NULL);
INSERT INTO digital_wallet_activity VALUES (3, 7003, 8003, '2024-02-15', 'Withdrawal', 200.00, 'USD', NULL,
                                            'Completed', 0.00, 1.00, 4003, '192.168.1.30', 'Chicago,IL',
                                            '6011', 'Pin', 1, 'Suspicious activity flag raised', '2024-02-15',
                                            '2024-02-15', 0, NULL, '2024-02-16');

-- Loan product feature
CREATE TABLE loan_product_feature
(
    feature_id                INTEGER PRIMARY KEY,
    loan_product_id           INTEGER NOT NULL,
    feature_name              TEXT NOT NULL,
    description               TEXT,
    is_optional               INTEGER NOT NULL,
    default_value             TEXT,
    max_limit_amount          REAL,
    min_limit_amount          REAL,
    eligibility_criteria      TEXT,
    interest_rate_type        TEXT,
    fixed_rate_percent        REAL,
    variable_rate_base        REAL,
    rate_adjustment_frequency TEXT,
    grace_period_days         INTEGER,
    prepayment_penalty_flag   INTEGER,
    prepayment_penalty_percent REAL,
    insurance_required_flag   INTEGER,
    insurance_provider_id     INTEGER,
    late_fee_fixed_amount     REAL,
    late_fee_percent          REAL,
    created_timestamp         DATE NOT NULL,
    updated_timestamp         DATE NOT NULL,
    is_active                 INTEGER NOT NULL,
    notes                     TEXT
);

INSERT INTO loan_product_feature VALUES (1, 9001, 'EarlyRepaymentOption', 'Allows borrower to repay before term without penalty',
                                         1, 'Enabled', NULL, NULL, 'All credit scores', 'Fixed', 5.5,
                                         NULL, NULL, 30, 0, NULL, 1, 1, 25.0, NULL,
                                         '2024-01-01', '2024-01-01', 1, '');
INSERT INTO loan_product_feature VALUES (2, 9002, 'VariableInterest', 'Interest rate varies with market index',
                                         0, 'Disabled', 200000.0, 5000.0, 'Credit score > 700', 'Variable',
                                         NULL, 1.5, 'Quarterly', 15, 1, 2.0, 0, NULL, 30.0, 1.5,
                                         '2024-01-01', '2024-01-01', 1, '');
INSERT INTO loan_product_feature VALUES (3, 9003, 'InsuranceCover', 'Loan protection insurance',
                                         1, 'Optional', NULL, NULL, 'Loan amount > 10000', 'Fixed',
                                         4.0, NULL, NULL, 0, 0, NULL, 1, 2, 0.0, NULL,
                                         '2024-01-01', '2024-01-01', 1, '');

-- Card fraud detection
CREATE TABLE card_fraud_detection
(
    detection_id              INTEGER PRIMARY KEY,
    card_id                   INTEGER NOT NULL,
    detection_timestamp       DATE NOT NULL,
    fraud_type                TEXT NOT NULL,
    risk_score                REAL NOT NULL,
    transaction_id            INTEGER,
    amount_usd                REAL,
    merchant_category_code    TEXT,
    device_id                 INTEGER,
    ip_address                TEXT,
    location_city             TEXT,
    location_country          TEXT,
    alert_generated_flag      INTEGER NOT NULL,
    action_taken              TEXT,
    analyst_id                INTEGER,
    notes                     TEXT,
    created_timestamp         DATE NOT NULL,
    updated_timestamp         DATE NOT NULL,
    is_resolved               INTEGER NOT NULL,
    resolution_timestamp      DATE,
    resolved_by_user_id       INTEGER,
    resolution_notes          TEXT
);

INSERT INTO card_fraud_detection VALUES (1, 3001, '2024-02-18', 'CardNotPresent', 87.5, 4001, 1200.00,
                                         '5732', 5001, '203.0.113.5', 'LosAngeles', 'US',
                                         1, 'Card blocked', 6001, '', '2024-02-18', '2024-02-18', 1,
                                         '2024-02-19', 7001, 'Confirmed fraud, card reissued');
INSERT INTO card_fraud_detection VALUES (2, 3002, '2024-02-20', 'Velocity', 65.0, 4002, 300.00,
                                         '5812', 5002, '198.51.100.23', 'Seattle', 'US',
                                         1, 'Transaction declined', 6002, '', '2024-02-20', '2024-02-20', 1,
                                         '2024-02-21', 7002, 'User verified, limit increased');
INSERT INTO card_fraud_detection VALUES (3, 3003, '2024-02-22', 'GeolocationMismatch', 72.0, 4003, 750.00,
                                         '5999', 5003, '192.0.2.45', 'Chicago', 'US',
                                         1, 'Alert sent to user', 6003, '', '2024-02-22', '2024-02-22', 0,
                                         NULL, NULL, '');

-- Risk metric time series
CREATE TABLE risk_metric_time_series
(
    metric_series_id          INTEGER PRIMARY KEY,
    metric_name               TEXT NOT NULL,
    observation_date          DATE NOT NULL,
    value_numeric             REAL NOT NULL,
    confidence_interval_low   REAL,
    confidence_interval_high  REAL,
    source_system             TEXT,
    notes                     TEXT,
    created_timestamp         DATE NOT NULL,
    updated_timestamp         DATE NOT NULL,
    is_active                 INTEGER NOT NULL
);

INSERT INTO risk_metric_time_series VALUES (1, 'CreditDefaultProbability', '2024-02-01', 0.015,
                                            0.010, 0.020, 'RiskEngine', '', '2024-02-01', '2024-02-01', 1);
INSERT INTO risk_metric_time_series VALUES (2, 'LiquidityStressLevel', '2024-02-01', 0.35,
                                            0.30, 0.40, 'LiquidityModule', '', '2024-02-01', '2024-02-01', 1);
INSERT INTO risk_metric_time_series VALUES (3, 'MarketVolatilityIndex', '2024-02-01', 22.5,
                                            20.0, 25.0, 'MarketDataFeed', '', '2024-02-01', '2024-02-01', 1);