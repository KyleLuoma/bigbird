-- Branch event log with numeric codes
CREATE TABLE branch_event_log
(
    event_id           INTEGER PRIMARY KEY,
    branch_id          INTEGER,
    event_type_code    INTEGER,
    event_date         INTEGER,
    severity_level     INTEGER,
    reported_by_id     INTEGER,
    resolved_flag      INTEGER,
    resolution_date    INTEGER,
    impact_score       REAL,
    related_ticket_id  INTEGER,
    created_at         INTEGER,
    updated_at         INTEGER,
    category_code      INTEGER,
    subcategory_code   INTEGER,
    cause_code         INTEGER,
    volume             INTEGER,
    shift_id           INTEGER,
    supervisor_id      INTEGER,
    audit_flag         INTEGER,
    notes_code         INTEGER
);

INSERT INTO branch_event_log VALUES (1,101,5,20230115,2,2001,0,0,3.4,0,20230115,20230115,1,0,12,200,2,3001,0,0);
INSERT INTO branch_event_log VALUES (2,102,3,20230220,1,2002,1,20230225,1.2,45,20230220,20230226,2,1,8,150,1,3002,1,1);
INSERT INTO branch_event_log VALUES (3,103,7,20230310,3,2003,0,0,4.7,78,20230310,20230310,3,2,15,300,3,3003,0,2);

-- District environmental measurements (numeric codes)
CREATE TABLE district_environmental_data
(
    record_id               INTEGER PRIMARY KEY,
    district_id             INTEGER,
    measurement_date        INTEGER,
    aqi_index               INTEGER,
    wqi_index               INTEGER,
    noise_db                INTEGER,
    green_space_pct         REAL,
    avg_temp_c              REAL,
    precipitation_mm        REAL,
    wind_speed_kmh          REAL,
    humidity_pct            REAL,
    soil_ph                 REAL,
    pm2_5_ugm3              REAL,
    pm10_ugm3               REAL,
    ozone_ppb               REAL,
    co_ppb                  REAL,
    no2_ppb                 REAL,
    so2_ppb                 REAL,
    radon_bq_m3             REAL,
    reporting_agency_code   INTEGER
);

INSERT INTO district_environmental_data VALUES (1,10,20230101,42,78,55,12.5,5.3,0.0,12.1,68,6.2,15.4,30,20,0.5,15,0.2,0.3,101);
INSERT INTO district_environmental_data VALUES (2,11,20230201,55,82,60,13.2,6.1,2.5,10.8,70,7.0,16.0,35,25,0.7,18,0.3,0.4,102);
INSERT INTO district_environmental_data VALUES (3,12,20230301,48,80,58,11.9,5.8,1.0,11.5,69,6.5,15.7,32,22,0.6,16,0.25,0.35,103);

-- City infrastructure projects
CREATE TABLE city_infrastructure_project
(
    project_id               INTEGER PRIMARY KEY,
    city_id                  INTEGER,
    project_name_code        INTEGER,
    start_date               INTEGER,
    end_date                 INTEGER,
    budget_million           REAL,
    status_code              INTEGER,
    project_type_code        INTEGER,
    responsible_dept_code    INTEGER,
    contractor_id            INTEGER,
    permits_obtained_flag    INTEGER,
    land_area_sqkm           REAL,
    estimated_jobs           INTEGER,
    actual_jobs              INTEGER,
    impact_score             REAL,
    stakeholder_count        INTEGER,
    phase_code               INTEGER,
    milestone_date           INTEGER,
    risk_level_code          INTEGER,
    notes_code               INTEGER
);

INSERT INTO city_infrastructure_project VALUES (1,1001,501,20230101,20231231,45.6,2,3,4,2001,1,2.5,120,115,8.2,30,1,20230615,2,0);
INSERT INTO city_infrastructure_project VALUES (2,1002,502,20230215,20240430,78.3,1,2,5,2002,1,3.0,200,190,9.1,45,2,20230720,1,1);
INSERT INTO city_infrastructure_project VALUES (3,1003,503,20230401,20251231,60.0,3,1,6,2003,0,1.8,150,0,7.5,20,3,20230910,3,2);

-- Solar farm performance metrics
CREATE TABLE solar_farm_performance
(
    farm_id                 INTEGER PRIMARY KEY,
    farm_name_code          INTEGER,
    reporting_date          INTEGER,
    total_output_mwh        REAL,
    capacity_mw             REAL,
    availability_pct        REAL,
    performance_ratio       REAL,
    downtime_hours          REAL,
    maintenance_events      INTEGER,
    avg_temp_c              REAL,
    solar_irradiance_wm2    REAL,
    degradation_rate_pct    REAL,
    inverter_efficiency_pct REAL,
    panel_efficiency_pct    REAL,
    weather_condition_code INTEGER,
    grid_connection_status  INTEGER,
    power_factor            REAL,
    emission_avoided_tonnes REAL,
    operating_cost_usd      REAL,
    revenue_usd             REAL
);

INSERT INTO solar_farm_performance VALUES (1,301,20230131,1200.5,150.0,98.5,0.99,5.0,2,22.5,800,0.5,96,18,1,1,0.98,350.0,40000.0,56000.0);
INSERT INTO solar_farm_performance VALUES (2,302,20230228,1305.2,160.0,97.2,0.98,6.5,3,23.0,820,0.6,95,17,2,1,0.97,380.0,42000.0,59000.0);
INSERT INTO solar_farm_performance VALUES (3,303,20230331,1150.8,148.0,99.0,0.997,4.2,1,21.8,795,0.4,97,19,1,1,0.99,340.0,39000.0,54000.0);

-- Airline flight schedule (numeric codes)
CREATE TABLE airline_flight_schedule
(
    flight_id               INTEGER PRIMARY KEY,
    airline_code            INTEGER,
    route_code              INTEGER,
    departure_airport_code  INTEGER,
    arrival_airport_code    INTEGER,
    scheduled_departure     INTEGER,
    scheduled_arrival       INTEGER,
    aircraft_type_code      INTEGER,
    seat_capacity           INTEGER,
    crew_count              INTEGER,
    distance_km             INTEGER,
    flight_status_code      INTEGER,
    gate_number             INTEGER,
    terminal_code           INTEGER,
    boarding_time           INTEGER,
    baggage_allowance_kg    INTEGER,
    on_time_performance_pct REAL,
    flight_duration_min     INTEGER,
    fuel_estimate_liters    INTEGER,
    notes_code              INTEGER
);

INSERT INTO airline_flight_schedule VALUES (1,10,1001,200,300,202301150800,202301151200,50,180,8,1500,1,12,5,202301150730,20,95.0,240,5000,0);
INSERT INTO airline_flight_schedule VALUES (2,20,1002,210,310,202302161100,202302161500,60,200,9,1800,2,14,6,202302161030,22,88.5,260,5400,1);
INSERT INTO airline_flight_schedule VALUES (3,30,1003,220,320,202303170900,202303171300,55,190,7,1300,3,10,4,202303170800,18,92.3,230,4800,2);

-- Hospital equipment maintenance logs
CREATE TABLE hospital_equipment_maintenance
(
    maintenance_id          INTEGER PRIMARY KEY,
    equipment_id            INTEGER,
    hospital_id             INTEGER,
    maintenance_date        INTEGER,
    maintenance_type_code   INTEGER,
    technician_id           INTEGER,
    part_replaced_code      INTEGER,
    cost_usd                REAL,
    downtime_hours          REAL,
    next_due_date           INTEGER,
    status_code             INTEGER,
    warranty_flag           INTEGER,
    service_vendor_code     INTEGER,
    priority_level_code     INTEGER,
    remarks_code            INTEGER,
    created_at              INTEGER,
    updated_at              INTEGER,
    compliance_flag         INTEGER,
    approval_id             INTEGER,
    maintenance_duration_min INTEGER
);

INSERT INTO hospital_equipment_maintenance VALUES (1,5001,101,20230120,2,3001,12,1500.0,4.0,20240120,1,1,5,0,0,20230120,20230121,1,4001,240);
INSERT INTO hospital_equipment_maintenance VALUES (2,5002,102,20230215,1,3002,15,2000.0,3.5,20240215,2,0,4,1,0,20230215,20230216,0,4002,180);
INSERT INTO hospital_equipment_maintenance VALUES (3,5003,103,20230310,3,3003,9,1200.0,5.0,20240310,1,1,3,0,0,20230310,20230311,1,4003,300);

-- E‑commerce product reviews (numeric codes)
CREATE TABLE ecommerce_product_review
(
    review_id               INTEGER PRIMARY KEY,
    product_id              INTEGER,
    user_id                 INTEGER,
    review_date             INTEGER,
    rating                  INTEGER,
    review_title_code       INTEGER,
    review_body_code        INTEGER,
    verified_purchase_flag  INTEGER,
    helpful_votes           INTEGER,
    total_votes             INTEGER,
    device_type_code        INTEGER,
    location_code           INTEGER,
    sentiment_score         REAL,
    response_flag           INTEGER,
    response_date           INTEGER,
    moderator_id            INTEGER,
    language_code           INTEGER,
    platform_code           INTEGER,
    source_code             INTEGER,
    notes_code              INTEGER
);

INSERT INTO ecommerce_product_review VALUES (1,9001,8001,20230105,4,101,201,1,10,12,1,100,0.78,0,0,0,1,2,3,0);
INSERT INTO ecommerce_product_review VALUES (2,9002,8002,20230212,5,102,202,1,15,16,2,101,0.92,1,20230215,5001,2,3,4,1);
INSERT INTO ecommerce_product_review VALUES (3,9003,8003,20230320,3,103,203,0,5,7,1,102,0.55,0,0,0,1,2,3,0);

-- Water treatment plant daily metrics
CREATE TABLE water_treatment_plant_metrics
(
    plant_id                INTEGER PRIMARY KEY,
    plant_name_code         INTEGER,
    measurement_date        INTEGER,
    influent_flow_m3h       REAL,
    effluent_flow_m3h       REAL,
    biogas_production_m3    REAL,
    sludge_volume_m3        REAL,
    chemical_usage_kg       REAL,
    energy_consumption_mwh  REAL,
    compliance_ph           REAL,
    compliance_turbidity_ntu REAL,
    temperature_c           REAL,
    nitrate_mg_l            REAL,
    phosphate_mg_l          REAL,
    total_coliform_cfu_ml   REAL,
    oxygen_demand_mg_l      REAL,
    operating_hours         REAL,
    staff_on_shift          INTEGER,
    maintenance_flag        INTEGER,
    notes_code              INTEGER
);

INSERT INTO water_treatment_plant_metrics VALUES (1,601,20230102,1500.5,1498.0,120.0,30.0,45.2,800.0,7.2,0.5,15.0,2.1,0.8,1500,0.9,24.0,8,0,0);
INSERT INTO water_treatment_plant_metrics VALUES (2,602,20230202,1600.0,1595.5,130.0,32.0,48.0,820.0,7.1,0.6,14.8,2.3,0.9,1550,1.0,24.5,9,1,1);
INSERT INTO water_treatment_plant_metrics VALUES (3,603,20230302,1550.3,1548.0,125.0,31.0,46.5,810.0,7.3,0.55,15.2,2.2,0.85,1525,0.95,24.2,8,0,0);

-- Public transport pass usage statistics
CREATE TABLE public_transport_pass_usage
(
    pass_id                INTEGER PRIMARY KEY,
    pass_type_code         INTEGER,
    issue_date             INTEGER,
    expiry_date            INTEGER,
    user_id                INTEGER,
    city_id                INTEGER,
    total_rides            INTEGER,
    total_distance_km      REAL,
    last_ride_date         INTEGER,
    balance_amount_cents   INTEGER,
    fare_zone_code         INTEGER,
    discount_rate_pct      REAL,
    activation_flag        INTEGER,
    deactivation_date      INTEGER,
    renewal_count          INTEGER,
    smartcard_id           INTEGER,
    issuer_branch_id       INTEGER,
    validation_errors      INTEGER,
    load_timestamp         INTEGER,
    notes_code             INTEGER
);

INSERT INTO public_transport_pass_usage VALUES (1,1,20220101,20240101,7001,100,250,3450.5,20230315,5000,3,10.0,1,0,2,9001,101,0,20230315,0);
INSERT INTO public_transport_pass_usage VALUES (2,2,20220215,20240215,7002,101,300,4200.0,20230420,7500,2,15.0,1,0,3,9002,102,1,20230420,1);
INSERT INTO public_transport_pass_usage VALUES (3,1,20220310,20240310,7003,102,180,2600.8,20230505,3000,4,5.0,0,20230506,1,9003,103,0,20230505,0);

-- Research grant allocation records
CREATE TABLE research_grant_allocation
(
    grant_id               INTEGER PRIMARY KEY,
    grant_title_code       INTEGER,
    funding_agency_code    INTEGER,
    start_date             INTEGER,
    end_date               INTEGER,
    total_amount_usd       REAL,
    allocated_amount_usd   REAL,
    principal_investigator_id INTEGER,
    department_code        INTEGER,
    project_code           INTEGER,
    status_code            INTEGER,
    review_score           REAL,
    ethical_approval_flag  INTEGER,
    reporting_frequency_months INTEGER,
    last_report_date       INTEGER,
    publications_expected  INTEGER,
    patents_expected       INTEGER,
    overhead_percent       REAL,
    co_funding_amount_usd  REAL,
    notes_code             INTEGER
);

INSERT INTO research_grant_allocation VALUES (1,701,801,20220101,20231231,500000.0,350000.0,4001,10,9001,1,4.5,1,12,20230301,5,2,15.0,75000.0,0);
INSERT INTO research_grant_allocation VALUES (2,702,802,20220315,20240515,750000.0,500000.0,4002,12,9002,2,4.2,1,6,20230415,8,3,12.0,90000.0,1);
INSERT INTO research_grant_allocation VALUES (3,703,803,20220520,20251120,600000.0,420000.0,4003,11,9003,3,4.8,0,9,20230520,6,1,14.0,80000.0,2);