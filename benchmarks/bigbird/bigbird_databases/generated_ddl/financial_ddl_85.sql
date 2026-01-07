-- Research funding information
CREATE TABLE research_funding
(
    funding_id INTEGER PRIMARY KEY,
    project_id INTEGER NOT NULL,
    agency_id INTEGER NOT NULL,
    fiscal_year INTEGER NOT NULL,
    amount_requested REAL NOT NULL,
    amount_awarded REAL NOT NULL,
    duration_months INTEGER NOT NULL,
    num_researchers INTEGER NOT NULL,
    indirect_cost_rate REAL NOT NULL,
    start_date INTEGER NOT NULL,
    end_date INTEGER NOT NULL,
    status_code INTEGER NOT NULL,
    field_code INTEGER NOT NULL,
    region_code INTEGER NOT NULL,
    currency_code INTEGER NOT NULL,
    award_type_code INTEGER NOT NULL,
    peer_review_score REAL NOT NULL,
    overhead_percent REAL NOT NULL,
    prior_funding_flag INTEGER NOT NULL,
    collaborative_flag INTEGER NOT NULL,
    multi_institution_flag INTEGER NOT NULL
);
INSERT INTO research_funding VALUES (1,101,10,2022,500000.00,450000.00,36,5,0.15,20220301,20250301,1,2,3,840,1,4.5,0.10,1,0,1);
INSERT INTO research_funding VALUES (2,102,12,2023,750000.00,750000.00,48,8,0.20,20230415,20280415,2,5,1,840,2,4.8,0.12,0,1,0);
INSERT INTO research_funding VALUES (3,103,15,2021,300000.00,250000.00,24,3,0.10,20210110,20230110,3,3,2,978,1,4.2,0.08,1,1,1);

-- Public transport usage statistics
CREATE TABLE public_transport_usage
(
    usage_id INTEGER PRIMARY KEY,
    route_id INTEGER NOT NULL,
    vehicle_id INTEGER NOT NULL,
    day_of_year INTEGER NOT NULL,
    boardings INTEGER NOT NULL,
    alightings INTEGER NOT NULL,
    average_speed REAL NOT NULL,
    distance_km REAL NOT NULL,
    fuel_consumption_l REAL NOT NULL,
    emissions_kg REAL NOT NULL,
    on_time_perc REAL NOT NULL,
    delay_minutes INTEGER NOT NULL,
    capacity INTEGER NOT NULL,
    occupancy_percent REAL NOT NULL,
    service_type_code INTEGER NOT NULL,
    fare_collected REAL NOT NULL,
    ticket_type_code INTEGER NOT NULL,
    weather_code INTEGER NOT NULL,
    incident_flag INTEGER NOT NULL,
    maintenance_flag INTEGER NOT NULL,
    driver_id INTEGER NOT NULL,
    shift_id INTEGER NOT NULL
);
INSERT INTO public_transport_usage VALUES (1,2001,5001,120,350,340,45.2,15.0,30.5,120.0,92.5,5,60,85.0,1,1200.00,2,3,0,0,301,401);
INSERT INTO public_transport_usage VALUES (2,2002,5002,121,410,400,42.8,16.5,32.0,130.5,89.0,8,60,88.0,2,1350.00,1,2,0,1,302,402);
INSERT INTO public_transport_usage VALUES (3,2003,5003,122,295,300,48.0,14.2,28.0,110.0,95.0,3,60,78.0,1,1100.00,3,1,1,0,303,403);

-- Energy grid snapshot
CREATE TABLE energy_grid_snapshot
(
    snapshot_id INTEGER PRIMARY KEY,
    node_id INTEGER NOT NULL,
    timestamp INTEGER NOT NULL,
    voltage_kv REAL NOT NULL,
    current_a REAL NOT NULL,
    power_mw REAL NOT NULL,
    frequency_hz REAL NOT NULL,
    load_percent REAL NOT NULL,
    temperature_c REAL NOT NULL,
    humidity_percent REAL NOT NULL,
    outage_flag INTEGER NOT NULL,
    maintenance_flag INTEGER NOT NULL,
    renewable_share_percent REAL NOT NULL,
    fault_code INTEGER NOT NULL,
    transformer_id INTEGER NOT NULL,
    switch_status INTEGER NOT NULL,
    protective_relay_status INTEGER NOT NULL,
    segment_id INTEGER NOT NULL,
    demand_forecast_mw REAL NOT NULL,
    supply_forecast_mw REAL NOT NULL,
    net_exchange_mw REAL NOT NULL,
    voltage_unbalance_percent REAL NOT NULL,
    harmonic_distortion_percent REAL NOT NULL
);
INSERT INTO energy_grid_snapshot VALUES (1,1010,202304150830,110.5,250.0,27.6,50.0,78.0,22.5,55.0,0,0,35.0,0,501,1,1,301,28.0,27.0,1.0,0.5,2.3);
INSERT INTO energy_grid_snapshot VALUES (2,1011,202304150845,115.2,260.0,29.9,50.0,81.0,23.0,54.0,0,1,30.0,2,502,0,1,302,30.5,30.0,0.5,0.7,1.9);
INSERT INTO energy_grid_snapshot VALUES (3,1012,202304150900,108.9,240.0,26.1,50.0,75.0,21.8,56.0,1,0,40.0,0,503,1,0,303,25.0,24.5,0.5,0.6,2.5);

-- Wildlife survey records
CREATE TABLE wildlife_survey
(
    survey_id INTEGER PRIMARY KEY,
    region_code INTEGER NOT NULL,
    observer_id INTEGER NOT NULL,
    survey_date INTEGER NOT NULL,
    species_code INTEGER NOT NULL,
    count_observed INTEGER NOT NULL,
    avg_weight_kg REAL NOT NULL,
    avg_length_cm REAL NOT NULL,
    habitat_type_code INTEGER NOT NULL,
    weather_code INTEGER NOT NULL,
    temperature_c REAL NOT NULL,
    precipitation_mm REAL NOT NULL,
    time_start INTEGER NOT NULL,
    time_end INTEGER NOT NULL,
    method_code INTEGER NOT NULL,
    effort_hours REAL NOT NULL,
    detection_probability REAL NOT NULL,
    notes_code INTEGER NOT NULL,
    protected_status INTEGER NOT NULL,
    GPS_latitude REAL NOT NULL,
    GPS_longitude REAL NOT NULL,
    altitude_m INTEGER NOT NULL,
    observer_experience_years INTEGER NOT NULL
);
INSERT INTO wildlife_survey VALUES (1,10,200,20230312,501,15,2.3,45.0,3,2,16.5,0.0,800,1100,1,2.5,0.85,0,1,45.1234,-71.5678,250,5);
INSERT INTO wildlife_survey VALUES (2,12,201,20230315,502,8,5.0,70.0,2,1,12.0,1.2,900,1200,2,3.0,0.78,1,0,46.2345,-72.6789,300,8);
INSERT INTO wildlife_survey VALUES (3,11,202,20230318,503,22,1.1,30.0,4,3,18.2,0.0,700,1000,1,1.8,0.92,0,1,44.9876,-70.4567,200,3);

-- Satellite mission log
CREATE TABLE satellite_mission_log
(
    log_id INTEGER PRIMARY KEY,
    satellite_id INTEGER NOT NULL,
    mission_phase_code INTEGER NOT NULL,
    event_timestamp INTEGER NOT NULL,
    altitude_km REAL NOT NULL,
    inclination_deg REAL NOT NULL,
    apogee_km REAL NOT NULL,
    perigee_km REAL NOT NULL,
    velocity_km_s REAL NOT NULL,
    fuel_remaining_kg REAL NOT NULL,
    battery_level_percent REAL NOT NULL,
    temperature_c REAL NOT NULL,
    radiation_dose_mSv REAL NOT NULL,
    anomaly_flag INTEGER NOT NULL,
    ground_station_id INTEGER NOT NULL,
    downlink_rate_mbps REAL NOT NULL,
    uplink_rate_mbps REAL NOT NULL,
    data_volume_mb REAL NOT NULL,
    command_executed_code INTEGER NOT NULL,
    orbit_type_code INTEGER NOT NULL,
    mission_status_code INTEGER NOT NULL,
    subsystems_active INTEGER NOT NULL,
    software_version INTEGER NOT NULL,
    operator_id INTEGER NOT NULL
);
INSERT INTO satellite_mission_log VALUES (1,3001,1,202303010000,550.0,98.7,560.0,540.0,7.8,1200.0,95.0,22.0,0.05,0,101,150.0,20.0,500.0,301,2,1,1,5,401);
INSERT INTO satellite_mission_log VALUES (2,3002,2,202303050500,560.0,97.5,570.0,550.0,7.6,1150.0,93.0,24.0,0.06,1,102,148.0,21.0,520.0,302,2,2,0,6,402);
INSERT INTO satellite_mission_log VALUES (3,3003,3,202303101200,540.0,99.0,550.0,530.0,7.9,1180.0,94.5,23.5,0.04,0,103,152.0,19.5,510.0,303,1,1,1,5,403);

-- Urban planning project details
CREATE TABLE urban_planning_project
(
    project_id INTEGER PRIMARY KEY,
    city_code INTEGER NOT NULL,
    project_name_code INTEGER NOT NULL,
    start_date INTEGER NOT NULL,
    end_date INTEGER NOT NULL,
    budget_million REAL NOT NULL,
    allocated_funds_million REAL NOT NULL,
    cost_overrun_percent REAL NOT NULL,
    phase_code INTEGER NOT NULL,
    status_code INTEGER NOT NULL,
    area_sqkm REAL NOT NULL,
    population_estimate INTEGER NOT NULL,
    green_space_percent REAL NOT NULL,
    housing_units INTEGER NOT NULL,
    commercial_space_sqkm REAL NOT NULL,
    transit_improvement_score REAL NOT NULL,
    stakeholder_count INTEGER NOT NULL,
    public_comments INTEGER NOT NULL,
    environmental_impact_score REAL NOT NULL,
    regulatory_approval_flag INTEGER NOT NULL,
    lead_engineer_id INTEGER NOT NULL,
    project_manager_id INTEGER NOT NULL,
    funding_source_code INTEGER NOT NULL,
    risk_level_code INTEGER NOT NULL,
    zoning_change_flag INTEGER NOT NULL
);
INSERT INTO urban_planning_project VALUES (1,1001,2001,20230101,20241231,250.0,240.0,5.0,1,2,15.0,120000,30.0,8000,2.5,85.0,12,150,7.5,1,501,601,10,3,0);
INSERT INTO urban_planning_project VALUES (2,1002,2002,20230215,20251130,180.0,175.0,2.8,2,1,10.0,90000,25.0,5000,1.8,78.0,10,200,6.2,1,502,602,12,2,1);
INSERT INTO urban_planning_project VALUES (3,1003,2003,20230401,20260930,300.0,295.0,1.7,3,3,20.0,150000,35.0,12000,3.0,90.0,15,250,8.1,0,503,603,14,4,0);

-- Hospital equipment inventory
CREATE TABLE hospital_equipment_inventory
(
    equipment_id INTEGER PRIMARY KEY,
    hospital_id INTEGER NOT NULL,
    equipment_type_code INTEGER NOT NULL,
    purchase_date INTEGER NOT NULL,
    warranty_expiry INTEGER NOT NULL,
    cost_usd REAL NOT NULL,
    maintenance_cost_usd REAL NOT NULL,
    depreciation_rate_percent REAL NOT NULL,
    quantity INTEGER NOT NULL,
    operational_status_code INTEGER NOT NULL,
    last_service_date INTEGER NOT NULL,
    next_service_due INTEGER NOT NULL,
    manufacturer_code INTEGER NOT NULL,
    model_number_code INTEGER NOT NULL,
    serial_number_code INTEGER NOT NULL,
    power_requirement_kw REAL NOT NULL,
    floor_location_code INTEGER NOT NULL,
    department_code INTEGER NOT NULL,
    utilization_percent REAL NOT NULL,
    calibration_required_flag INTEGER NOT NULL,
    hazard_class_code INTEGER NOT NULL,
    disposal_status_code INTEGER NOT NULL,
    insurance_coverage_usd REAL NOT NULL,
    replacement_year INTEGER NOT NULL,
    asset_tag_code INTEGER NOT NULL
);
INSERT INTO hospital_equipment_inventory VALUES (1,9001,10,20180101,20240101,25000.0,1200.0,10.0,2,1,20221201,20231201,300,4001,5001,5.5,3,12,85.0,0,2,1,30000.0,2025,6001);
INSERT INTO hospital_equipment_inventory VALUES (2,9002,12,20190515,20250515,15000.0,800.0,12.0,5,2,20221120,20231120,301,4002,5002,3.2,4,13,78.0,1,3,0,20000.0,2024,6002);
INSERT INTO hospital_equipment_inventory VALUES (3,9003,15,20200630,20270630,50000.0,2500.0,8.0,1,1,20230110,20240110,302,4003,5003,7.0,2,14,92.0,0,1,1,45000.0,2026,6003);

-- Digital advertising performance
CREATE TABLE digital_ad_performance
(
    performance_id INTEGER PRIMARY KEY,
    campaign_id INTEGER NOT NULL,
    ad_group_id INTEGER NOT NULL,
    ad_id INTEGER NOT NULL,
    date INTEGER NOT NULL,
    impressions INTEGER NOT NULL,
    clicks INTEGER NOT NULL,
    ctr_percent REAL NOT NULL,
    cpc_usd REAL NOT NULL,
    spend_usd REAL NOT NULL,
    conversions INTEGER NOT NULL,
    conversion_rate_percent REAL NOT NULL,
    revenue_usd REAL NOT NULL,
    roas REAL NOT NULL,
    avg_position REAL NOT NULL,
    quality_score INTEGER NOT NULL,
    device_type_code INTEGER NOT NULL,
    audience_segment_code INTEGER NOT NULL,
    geography_code INTEGER NOT NULL,
    ad_format_code INTEGER NOT NULL,
    viewability_percent REAL NOT NULL,
    video_completion_percent REAL NOT NULL,
    frequency_cap INTEGER NOT NULL,
    budget_daily_usd REAL NOT NULL,
    bid_strategy_code INTEGER NOT NULL
);
INSERT INTO digital_ad_performance VALUES (1,10001,20001,30001,20230301,50000,2500,5.0,0.75,1875.0,120,4.8,6000.0,3.2,1.8,8,1,101,201,1,85.0,70.0,3,200.0,2);
INSERT INTO digital_ad_performance VALUES (2,10002,20002,30002,20230302,75000,3500,4.7,0.80,2800.0,150,4.3,7500.0,2.7,2.0,7,2,102,202,2,80.0,65.0,4,250.0,1);
INSERT INTO digital_ad_performance VALUES (3,10003,20003,30003,20230303,60000,3000,5.0,0.70,2100.0,130,4.5,6800.0,3.2,1.9,9,1,103,203,1,82.0,68.0,2,220.0,3);

-- Agricultural crop report
CREATE TABLE agricultural_crop_report
(
    report_id INTEGER PRIMARY KEY,
    farm_id INTEGER NOT NULL,
    crop_type_code INTEGER NOT NULL,
    planting_date INTEGER NOT NULL,
    harvest_date INTEGER NOT NULL,
    area_hectares REAL NOT NULL,
    yield_tonnes REAL NOT NULL,
    average_maturity_days INTEGER NOT NULL,
    irrigation_liters_per_hectare REAL NOT NULL,
    fertilizer_kg_per_hectare REAL NOT NULL,
    pesticide_applications INTEGER NOT NULL,
    disease_incidence_percent REAL NOT NULL,
    soil_ph REAL NOT NULL,
    soil_nitrogen_ppm REAL NOT NULL,
    soil_phosphorus_ppm REAL NOT NULL,
    soil_potassium_ppm REAL NOT NULL,
    weather_station_id INTEGER NOT NULL,
    avg_temperature_c REAL NOT NULL,
    total_rainfall_mm REAL NOT NULL,
    sunlight_hours REAL NOT NULL,
    harvest_quality_score REAL NOT NULL,
    market_price_usd_per_tonne REAL NOT NULL,
    revenue_usd REAL NOT NULL,
    profit_usd REAL NOT NULL,
    farmer_experience_years INTEGER NOT NULL
);
INSERT INTO agricultural_crop_report VALUES (1,4001,10,20220415,20230820,120.5,350.0,115,5000.0,120.0,3,2.5,6.5,15.0,30.0,20.0,801,22.0,350.0,1800.0,85.0,250.0,87500.0,25000.0,12);
INSERT INTO agricultural_crop_report VALUES (2,4002,12,20220301,20230715,80.0,200.0,110,4500.0,100.0,2,1.8,6.8,14.5,28.0,19.0,802,21.5,300.0,1700.0,80.0,260.0,52000.0,15000.0,8);
INSERT INTO agricultural_crop_report VALUES (3,4003,15,20220510,20230930,150.0,500.0,120,5200.0,130.0,4,3.0,6.2,16.0,32.0,22.0,803,23.0,400.0,1900.0,88.0,240.0,120000.0,30000.0,15);

-- Climate change indicator dataset
CREATE TABLE climate_change_indicator
(
    indicator_id INTEGER PRIMARY KEY,
    region_code INTEGER NOT NULL,
    year INTEGER NOT NULL,
    co2_concentration_ppm REAL NOT NULL,
    methane_concentration_ppb REAL NOT NULL,
    nitrous_oxide_ppb REAL NOT NULL,
    temperature_anomaly_c REAL NOT NULL,
    sea_level_rise_mm REAL NOT NULL,
    glacier_mass_loss_gt REAL NOT NULL,
    extreme_weather_events INTEGER NOT NULL,
    drought_index REAL NOT NULL,
    precipitation_change_percent REAL NOT NULL,
    ocean_acidity_pH REAL NOT NULL,
    biodiversity_loss_percent REAL NOT NULL,
    permafrost_thaw_percent REAL NOT NULL,
    carbon_budget_deficit_gt REAL NOT NULL,
    renewable_energy_percent REAL NOT NULL,
    fossil_fuel_consumption_petajoules REAL NOT NULL,
    forest_cover_percent REAL NOT NULL,
    arctic_ice_extent_million_sqkm REAL NOT NULL,
    policy_implementation_score REAL NOT NULL,
    adaptation_funding_usd_million REAL NOT NULL,
    mitigation_funding_usd_million REAL NOT NULL,
    climate_risk_score REAL NOT NULL,
    emissions_intensity_per_gdp REAL NOT NULL,
    sustainable_development_index REAL NOT NULL
);
INSERT INTO climate_change_indicator VALUES (1,10,2022,419.5,1900.0,330.0,1.12,3.5,0.7,45,0.8,4.5,8.2,12.0,5.0,0.9,28.0,4000.0,62.5,14.8,78.0,500.0,600.0,70.0,0.45,85.0);
INSERT INTO climate_change_indicator VALUES (2,12,2022,418.9,1895.0,328.0,1.08,3.3,0.6,40,0.7,3.9,8.1,11.5,4.8,0.85,27.5,3950.0,63.0,15.0,80.0,480.0,580.0,68.0,0.43,84.0);
INSERT INTO climate_change_indicator VALUES (3,11,2022,419.2,1898.0,329.0,1.10,3.4,0.65,42,0.75,4.2,8.15,11.8,4.9,0.88,27.8,3980.0,62.8,14.9,79.0,490.0,590.0,69.0,0.44,84.5);

-- Renewable energy farm performance
CREATE TABLE renewable_energy_farm_performance
(
    performance_id INTEGER PRIMARY KEY,
    farm_id INTEGER NOT NULL,
    farm_type_code INTEGER NOT NULL,
    reporting_month INTEGER NOT NULL,
    energy_generated_mwh REAL NOT NULL,
    capacity_factor_percent REAL NOT NULL,
    availability_percent REAL NOT NULL,
    downtime_hours REAL NOT NULL,
    net_output_mwh REAL NOT NULL,
    curtailment_mwh REAL NOT NULL,
    grid_connection_status INTEGER NOT NULL,
    maintenance_flag INTEGER NOT NULL,
    weather_condition_code INTEGER NOT NULL,
    average_wind_speed_m_s REAL NOT NULL,
    solar_irradiance_w_m2 REAL NOT NULL,
    temperature_c REAL NOT NULL,
    humidity_percent REAL NOT NULL,
    operational_cost_usd REAL NOT NULL,
    revenue_usd REAL NOT NULL,
    profit_usd REAL NOT NULL,
    power_purchase_agreement_price_usd_per_mwh REAL NOT NULL,
    subsidy_amount_usd REAL NOT NULL,
    emissions_avoided_tonnes_co2 REAL NOT NULL,
    land_use_hectares REAL NOT NULL,
    turbine_count INTEGER NOT NULL,
    panel_count INTEGER NOT NULL,
    owner_id INTEGER NOT NULL,
    region_code INTEGER NOT NULL
);
INSERT INTO renewable_energy_farm_performance VALUES (1,7001,1,202303,5000.0,35.0,97.0,12.0,4850.0,150.0,1,0,2,8.5,0.0,22.0,45.0,200000.0,300000.0,100000.0,60.0,20000.0,4500.0,120.0,50,0,901,10);
INSERT INTO renewable_energy_farm_performance VALUES (2,7002,2,202303,4200.0,30.0,95.0,15.0,4000.0,200.0,1,1,3,0.0,650.0,25.0,40.0,180000.0,250000.0,70000.0,55.0,15000.0,3500.0,150.0,0,200,902,12);
INSERT INTO renewable_energy_farm_performance VALUES (3,7003,1,202303,5300.0,36.0,98.0,10.0,5150.0,150.0,1,0,2,9.0,0.0,21.5,46.0,210000.0,320000.0,110000.0,62.0,22000.0,4700.0,130.0,55,0,903,11);

-- Supply chain shipment schedule
CREATE TABLE supply_chain_shipment_schedule
(
    schedule_id INTEGER PRIMARY KEY,
    shipment_id INTEGER NOT NULL,
    origin_warehouse_id INTEGER NOT NULL,
    destination_warehouse_id INTEGER NOT NULL,
    departure_date INTEGER NOT NULL,
    arrival_date INTEGER NOT NULL,
    carrier_id INTEGER NOT NULL,
    mode_of_transport_code INTEGER NOT NULL,
    container_type_code INTEGER NOT NULL,
    total_weight_kg REAL NOT NULL,
    total_volume_cubic_m REAL NOT NULL,
    number_of_packages INTEGER NOT NULL,
    hazardous_material_flag INTEGER NOT NULL,
    temperature_control_flag INTEGER NOT NULL,
    customs_clearance_flag INTEGER NOT NULL,
    priority_level INTEGER NOT NULL,
    cost_usd REAL NOT NULL,
    insurance_usd REAL NOT NULL,
    handling_instructions_code INTEGER NOT NULL,
    tracking_number_code INTEGER NOT NULL,
    delay_minutes INTEGER NOT NULL,
    status_code INTEGER NOT NULL,
    driver_id INTEGER NOT NULL,
    vehicle_id INTEGER NOT NULL,
    route_id INTEGER NOT NULL,
    estimated_fuel_consumption_l REAL NOT NULL,
    carbon_emission_kg REAL NOT NULL,
    last_updated INTEGER NOT NULL
);
INSERT INTO supply_chain_shipment_schedule VALUES (1,90001,101,202,20230115,20230120,301,1,2,2500.0,12.5,150,0,0,1,2,1500.0,200.0,5,80001,30,3,401,501,601,350.0,800.0,20230110);
INSERT INTO supply_chain_shipment_schedule VALUES (2,90002,102,203,20230201,20230206,302,2,3,3000.0,15.0,180,1,1,0,1,1800.0,250.0,7,80002,45,2,402,502,602,400.0,900.0,20230125);
INSERT INTO supply_chain_shipment_schedule VALUES (3,90003,103,204,20230310,20230315,303,1,1,2200.0,10.0,130,0,0,1,3,1300.0,180.0,4,80003,20,4,403,503,603,300.0,700.0,20230305);