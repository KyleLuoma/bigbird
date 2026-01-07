-- Research Grant metadata
CREATE TABLE research_grant
(
    grant_id               INTEGER PRIMARY KEY,
    grant_name             TEXT,
    sponsor_org            TEXT,
    amount_usd             DECIMAL,
    start_date             DATE,
    end_date               DATE,
    field_of_study         TEXT,
    principal_investigator TEXT,
    institution            TEXT,
    grant_status           TEXT,
    review_score           INTEGER,
    funding_cycle          TEXT,
    award_type             TEXT,
    currency               TEXT,
    exchange_rate_usd      DECIMAL,
    is_multi_year          BOOLEAN,
    total_years            INTEGER,
    allocated_budget_usd   DECIMAL,
    spent_budget_usd       DECIMAL,
    remaining_budget_usd   DECIMAL
);

INSERT INTO research_grant VALUES (1, 'Quantum Computing Initiative', 'National Science Foundation', 2500000, '2023-01-15', '2026-01-14', 'Computer Science', 'Alice Johnson', 'Tech University', 'Active', 92, 'Annual', 'Grant', 'USD', 1.0, TRUE, 3, 2500000, 750000, 1750000);
INSERT INTO research_grant VALUES (2, 'Renewable Energy Pilot', 'Department of Energy', 1800000, '2022-06-01', '2025-05-31', 'Environmental Engineering', 'Bob Smith', 'Green Institute', 'Completed', 88, 'Biannual', 'Contract', 'USD', 1.0, FALSE, 3, 1800000, 1800000, 0);
INSERT INTO research_grant VALUES (3, 'Astrophysics Survey', 'Space Agency', 3200000, '2024-03-10', '2029-03-09', 'Astrophysics', 'Carol Lee', 'Space Research Center', 'Pending', 0, 'Annual', 'Grant', 'USD', 1.0, TRUE, 5, 3200000, 0, 3200000);

-- Facility Security Log
CREATE TABLE facility_security_log
(
    log_id                INTEGER PRIMARY KEY,
    facility_id           INTEGER,
    event_timestamp       DATETIME,
    security_personnel_id INTEGER,
    event_type            TEXT,
    event_description     TEXT,
    severity_level        TEXT,
    resolution_status     TEXT,
    follow_up_required    BOOLEAN,
    cameras_active        BOOLEAN,
    door_locked           BOOLEAN,
    badge_id_used         TEXT,
    ip_address            TEXT,
    device_serial         TEXT,
    breach_detected       BOOLEAN,
    response_time_seconds INTEGER,
    escalation_level      TEXT,
    notes                 TEXT,
    audit_user            TEXT,
    audit_timestamp       DATETIME
);

INSERT INTO facility_security_log VALUES (101, 12, '2025-07-21 14:35:00', 4, 'AccessAttempt', 'Employee badge read at main entrance', 'Low', 'Resolved', FALSE, TRUE, TRUE, 'B12345', '192.168.1.10', 'DS1001', FALSE, 30, 'None', 'No issues', 'system', '2025-07-21 14:35:05');
INSERT INTO facility_security_log VALUES (102, 12, '2025-07-22 02:12:00', 7, 'Breach', 'Unauthorized entry detected in storage area', 'High', 'Unresolved', TRUE, TRUE, FALSE, 'B67890', '192.168.1.12', 'DS1002', TRUE, 5, 'Level2', 'Investigation ongoing', 'admin', '2025-07-22 02:12:10');
INSERT INTO facility_security_log VALUES (103, 8, '2025-07-23 09:00:00', 3, 'SystemTest', 'Routine camera system check', 'Info', 'Completed', FALSE, TRUE, TRUE, 'B00000', '192.168.1.15', 'DS1003', FALSE, 120, 'None', 'All cameras operational', 'system', '2025-07-23 09:02:00');

-- Environmental Monitoring Station
CREATE TABLE environmental_monitoring_station
(
    station_id               INTEGER PRIMARY KEY,
    station_name             TEXT,
    latitude                 DECIMAL,
    longitude                DECIMAL,
    elevation_m              INTEGER,
    installed_date           DATE,
    operator_org             TEXT,
    sensor_type              TEXT,
    measurement_interval_sec INTEGER,
    last_maintenance_date    DATE,
    status                   TEXT,
    temperature_c            DECIMAL,
    humidity_percent         DECIMAL,
    air_quality_index        INTEGER,
    noise_db                 DECIMAL,
    radiation_umSv           DECIMAL,
    battery_level_percent   INTEGER,
    firmware_version         TEXT,
    endpoint_identifier      TEXT,
    calibration_date         DATE,
    notes                    TEXT
);

INSERT INTO environmental_monitoring_station VALUES (1, 'North Ridge', 45.1234, -122.5678, 350, '2021-04-10', 'EnviroTech', 'MultiSensor', 300, '2024-12-01', 'Active', 22.5, 55.2, 42, 65.3, 0.12, 87, 'v2.1.4', 'ENDP001', '2024-11-20', 'No issues');
INSERT INTO environmental_monitoring_station VALUES (2, 'Lake View', 44.9876, -123.4567, 120, '2020-09-15', 'GreenWatch', 'AirQuality', 600, '2024-10-15', 'Active', 19.8, 62.0, 35, 48.0, 0.08, 73, 'v2.0.9', 'ENDP002', '2024-10-01', 'Battery replacement needed soon');
INSERT INTO environmental_monitoring_station VALUES (3, 'Desert Edge', 33.2123, -115.3456, 15, '2022-01-20', 'SolarMetrics', 'Radiation', 900, '2024-11-10', 'MaintenanceRequired', 30.1, 20.5, 58, 72.5, 1.45, 45, 'v1.9.3', 'ENDP003', '2024-10-25', 'Firmware update pending');

-- Public Transport Schedule
CREATE TABLE public_transport_schedule
(
    schedule_id            INTEGER PRIMARY KEY,
    route_number           TEXT,
    vehicle_type           TEXT,
    departure_time         TIME,
    arrival_time           TIME,
    origin_stop            TEXT,
    destination_stop       TEXT,
    days_of_week           TEXT,
    service_status         TEXT,
    driver_id              INTEGER,
    vehicle_id             INTEGER,
    capacity_seats         INTEGER,
    fare_cents             INTEGER,
    wheelchair_accessible BOOLEAN,
    special_notes          TEXT,
    created_by             TEXT,
    creation_date          DATE,
    last_updated_by        TEXT,
    last_update_date       DATE,
    compliance_flag        BOOLEAN
);

INSERT INTO public_transport_schedule VALUES (1001, 'A10', 'Bus', '06:30:00', '07:15:00', 'CentralStation', 'NorthPark', 'MonTueWedThuFri', 'OnTime', 45, 3001, 40, 250, TRUE, 'First stop priority', 'scheduler', '2024-01-05', 'scheduler', '2024-06-01', TRUE);
INSERT INTO public_transport_schedule VALUES (1002, 'B22', 'Tram', '08:00:00', '08:45:00', 'EastSide', 'WestEnd', 'SatSun', 'Delayed', 52, 3002, 60, 350, FALSE, 'Maintenance check', 'planner', '2024-02-10', 'planner', '2024-06-15', FALSE);
INSERT INTO public_transport_schedule VALUES (1003, 'C5', 'Metro', '09:15:00', '09:45:00', 'Uptown', 'Downtown', 'MonTueWedThuFriSatSun', 'OnTime', 60, 3003, 200, 500, TRUE, '', 'auto', '2023-12-20', 'auto', '2024-05-20', TRUE);

-- Legal Compliance Record
CREATE TABLE legal_compliance_record
(
    record_id               INTEGER PRIMARY KEY,
    regulation_code         TEXT,
    jurisdiction            TEXT,
    effective_date          DATE,
    review_date             DATE,
    compliance_status       TEXT,
    responsible_party       TEXT,
    evidence_document_id    TEXT,
    penalty_amount_usd      DECIMAL,
    remedial_action         TEXT,
    notes                   TEXT,
    last_audit_date         DATE,
    auditor_name            TEXT,
    risk_level              TEXT,
    enforcement_agency      TEXT,
    breach_count            INTEGER,
    corrective_deadline     DATE,
    is_active               BOOLEAN,
    compliance_owner        TEXT,
    monitoring_frequency_days INTEGER
);

INSERT INTO legal_compliance_record VALUES (1, 'ENV-2022-01', 'State', '2022-01-01', '2025-01-01', 'Compliant', 'EnvironmentalTeam', 'DOC123', 0, 'AnnualReport', 'All metrics within limits', '2024-12-15', 'Laura', 'Low', 'StateAgency', 0, '2025-01-01', TRUE, 'ComplianceLead', 365);
INSERT INTO legal_compliance_record VALUES (2, 'FIN-2021-05', 'Federal', '2021-05-15', '2024-05-15', 'NonCompliant', 'FinanceDept', 'DOC456', 15000, 'PolicyUpdate', 'Late filing of reports', '2024-04-20', 'Mike', 'High', 'FederalCommission', 2, '2024-06-30', FALSE, 'FinanceHead', 180);
INSERT INTO legal_compliance_record VALUES (3, 'LAB-2023-09', 'International', '2023-09-01', '2026-09-01', 'Compliant', 'LabSafetyTeam', 'DOC789', 0, 'RoutineInspection', 'Safety equipment verified', '2024-08-10', 'Sara', 'Medium', 'InternationalBody', 0, '2026-09-01', TRUE, 'SafetyOfficer', 730);

-- Inventory Audit
CREATE TABLE inventory_audit
(
    audit_id                 INTEGER PRIMARY KEY,
    audit_date               DATE,
    auditor_id               INTEGER,
    warehouse_id             INTEGER,
    total_items              INTEGER,
    discrepancy_count        INTEGER,
    total_value_usd          DECIMAL,
    audit_method             TEXT,
    notes                    TEXT,
    approved_by              TEXT,
    approval_date            DATE,
    random_sampling_percent  DECIMAL,
    item_category            TEXT,
    shift                    TEXT,
    weather_conditions       TEXT,
    equipment_used           TEXT,
    duration_minutes         INTEGER,
    anomalies_found          INTEGER,
    corrective_action_plan   TEXT,
    next_audit_due           DATE,
    is_finalized             BOOLEAN
);

INSERT INTO inventory_audit VALUES (5001, '2024-07-01', 12, 3, 15000, 5, 1250000, 'SpotCheck', 'Minor packaging errors', 'manager', '2024-07-02', 10.0, 'Electronics', 'Night', 'Clear', 'Scanner', 180, 2, 'Repackaging', '2025-01-01', TRUE);
INSERT INTO inventory_audit VALUES (5002, '2024-07-15', 15, 5, 23000, 0, 2100000, 'FullCount', 'All counts matched', 'director', '2024-07-16', 100.0, 'Furniture', 'Day', 'Rain', 'ManualCount', 240, 0, 'None', '2025-07-15', TRUE);
INSERT INTO inventory_audit VALUES (5003, '2024-08-05', 18, 2, 8000, 12, 540000, 'Statistical', 'High variance in small parts', 'supervisor', '2024-08-06', 5.0, 'Components', 'Evening', 'Windy', 'Handheld', 120, 12, 'ProcessReview', '2025-02-05', FALSE);

-- Customer Feedback
CREATE TABLE customer_feedback
(
    feedback_id            INTEGER PRIMARY KEY,
    customer_id            INTEGER,
    feedback_date          DATE,
    channel                TEXT,
    rating_score           INTEGER,
    comments               TEXT,
    product_id             INTEGER,
    order_id               INTEGER,
    response_required      BOOLEAN,
    response_deadline      DATE,
    assigned_agent_id      INTEGER,
    sentiment              TEXT,
    follow_up_action       TEXT,
    resolved_flag          BOOLEAN,
    resolution_date        DATE,
    survey_version         TEXT,
    nps_score              INTEGER,
    loyalty_score          INTEGER,
    geographic_region      TEXT,
    device_type            TEXT
);

INSERT INTO customer_feedback VALUES (9001, 321, '2024-06-20', 'Email', 4, 'Quick delivery and good quality', 1501, 50001, FALSE, NULL, NULL, 'Positive', '', TRUE, '2024-06-20', 'v2', 8, 7, 'NorthAmerica', 'Desktop');
INSERT INTO customer_feedback VALUES (9002, 322, '2024-06-22', 'Phone', 2, 'Item arrived damaged', 1502, 50002, TRUE, '2024-06-30', 45, 'Negative', 'Send replacement', FALSE, NULL, 'v2', 2, 3, 'Europe', 'Mobile');
INSERT INTO customer_feedback VALUES (9003, 323, '2024-06-25', 'Web', 5, 'Excellent customer service', 1503, 50003, FALSE, NULL, NULL, 'Positive', '', TRUE, '2024-06-25', 'v2', 9, 9, 'Asia', 'Tablet');

-- Supplier Contract
CREATE TABLE supplier_contract
(
    contract_id                INTEGER PRIMARY KEY,
    supplier_id                INTEGER,
    contract_start_date        DATE,
    contract_end_date          DATE,
    contract_value_usd         DECIMAL,
    payment_terms_days         INTEGER,
    renewal_option             TEXT,
    confidentiality_clause     TEXT,
    termination_notice_days    INTEGER,
    primary_contact_name       TEXT,
    primary_contact_phone      TEXT,
    primary_contact_email      TEXT,
    service_level_agreement    TEXT,
    penalty_clause             TEXT,
    performance_rating         INTEGER,
    last_review_date           DATE,
    next_review_date           DATE,
    is_active                  BOOLEAN,
    contract_type              TEXT,
    governing_law              TEXT
);

INSERT INTO supplier_contract VALUES (2001, 78, '2023-01-01', '2025-12-31', 750000, 30, 'Automatic', 'StandardNDA', 60, 'JohnDoe', '5551234567', 'jdoe@example.com', '99PercentUptime', 'LateDeliveryFine', 85, '2024-06-01', '2025-06-01', TRUE, 'Supply', 'StateLaw');
INSERT INTO supplier_contract VALUES (2002, 79, '2022-05-15', '2024-05-14', 420000, 45, 'Manual', 'StrictNDA', 90, 'JaneSmith', '5559876543', 'jsmith@example.com', 'OnTimeDelivery', 'QualityPenalty', 78, '2024-01-20', '2024-12-20', FALSE, 'Services', 'FederalLaw');
INSERT INTO supplier_contract VALUES (2003, 80, '2024-03-01', '2027-02-28', 1350000, 60, 'Automatic', 'StandardNDA', 30, 'MikeBrown', '5552223344', 'mbrown@example.com', 'ResponseTimeWithin2hrs', 'BreachFine', 92, '2024-07-15', '2025-07-15', TRUE, 'Consulting', 'InternationalLaw');

-- Energy Consumption Report
CREATE TABLE energy_consumption_report
(
    report_id                INTEGER PRIMARY KEY,
    reporting_period_start   DATE,
    reporting_period_end     DATE,
    facility_id              INTEGER,
    total_energy_kwh         DECIMAL,
    peak_demand_kw           DECIMAL,
    average_load_kw          DECIMAL,
    renewable_percentage     DECIMAL,
    carbon_emission_kg       DECIMAL,
    cost_usd                 DECIMAL,
    tariff_type              TEXT,
    meter_reading_start      DECIMAL,
    meter_reading_end        DECIMAL,
    data_source              TEXT,
    verification_status      TEXT,
    analyst_id               INTEGER,
    submission_date          DATE,
    notes                    TEXT,
    audit_trail              TEXT,
    is_estimated             BOOLEAN,
    correction_factor        DECIMAL
);

INSERT INTO energy_consumption_report VALUES (3001, '2024-01-01', '2024-01-31', 4, 125000, 560, 420, 45.0, 31000, 15000, 'Fixed', 5000, 5125, 'SCADA', 'Verified', 11, '2024-02-05', 'January consumption', 'system', FALSE, 1.0);
INSERT INTO energy_consumption_report VALUES (3002, '2024-02-01', '2024-02-29', 4, 118000, 540, 400, 48.5, 29500, 14200, 'Variable', 5125, 5245, 'SCADA', 'Pending', 12, '2024-03-07', 'February consumption', 'system', TRUE, 0.98);
INSERT INTO energy_consumption_report VALUES (3003, '2024-03-01', '2024-03-31', 4, 132500, 580, 440, 42.0, 33000, 15800, 'Fixed', 5245, 5375, 'SCADA', 'Verified', 13, '2024-04-06', 'March consumption', 'system', FALSE, 1.02);

-- Metadata Taxonomy
CREATE TABLE metadata_taxonomy
(
    taxonomy_id          INTEGER PRIMARY KEY,
    entity_type          TEXT,
    attribute_name       TEXT,
    data_type            TEXT,
    description          TEXT,
    is_required          BOOLEAN,
    max_length           INTEGER,
    allowed_values       TEXT,
    default_value        TEXT,
    created_by           TEXT,
    created_date         DATE,
    last_modified_by     TEXT,
    last_modified_date   DATE,
    version_number       INTEGER,
    is_active            BOOLEAN,
    notes                TEXT,
    display_order        INTEGER,
    related_entity       TEXT,
    validation_regex     TEXT,
    deprecation_date     DATE
);

INSERT INTO metadata_taxonomy VALUES (1, 'Superhero', 'strength_level', 'INTEGER', 'Numeric strength rating', TRUE, 3, '1-10', '5', 'admin', '2024-01-10', 'admin', '2024-06-01', 2, TRUE, '', 1, 'HeroAttribute', '^[1-9]$|10', NULL);
INSERT INTO metadata_taxonomy VALUES (2, 'MerchandiseItem', 'release_year', 'INTEGER', 'Year item was released', FALSE, 4, NULL, NULL, 'product_team', '2024-02-15', 'product_team', '2024-07-20', 1, TRUE, 'Year may be unknown for vintage items', 2, 'ItemMetadata', '^(19|20)\\d{2}$', NULL);
INSERT INTO metadata_taxonomy VALUES (3, 'FanClub', 'membership_status', 'TEXT', 'Current status of membership', TRUE, 12, 'Active,Inactive,Suspended', 'Active', 'hr', '2024-03-05', 'hr', '2024-08-10', 3, TRUE, '', 3, 'ClubMember', '^(Active|Inactive|Suspended)$', NULL);