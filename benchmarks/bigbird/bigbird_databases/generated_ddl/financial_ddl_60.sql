-- Regional infrastructure projects details
CREATE TABLE regional_infrastructure_projects (
    project_id INTEGER PRIMARY KEY,
    region_code TEXT NOT NULL,
    project_name TEXT NOT NULL,
    project_type TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    budget REAL NOT NULL,
    funding_source TEXT NOT NULL,
    status TEXT NOT NULL,
    estimated_duration INTEGER NOT NULL,
    actual_duration INTEGER,
    stakeholder_count INTEGER NOT NULL,
    environmental_impact_score REAL,
    approval_date DATE,
    manager_id INTEGER,
    site_address TEXT,
    latitude REAL,
    longitude REAL,
    risk_level TEXT,
    notes TEXT
);

INSERT INTO regional_infrastructure_projects VALUES (1, 'RC01', 'BridgeRenewal', 'Bridge', '2022-03-01', '2024-07-15', 12500000.00, 'FederalGrant', 'InProgress', 1800, NULL, 12, 4.5, '2022-02-15', 101, '123 River Rd', 45.1234, -122.5678, 'Medium', 'Phase1Complete');
INSERT INTO regional_infrastructure_projects VALUES (2, 'RC02', 'HighwayExpansion', 'Highway', '2021-06-10', '2025-12-01', 25000000.00, 'StateBond', 'Planned', 1650, NULL, 20, 3.8, NULL, 102, '456 Highway Ave', 46.2345, -123.6789, 'High', NULL);
INSERT INTO regional_infrastructure_projects VALUES (3, 'RC03', 'WaterTreatmentUpgrade', 'WaterFacility', '2020-01-20', '2023-11-30', 8000000.00, 'MunicipalFunds', 'Completed', 1400, 1400, 8, 2.1, '2019-12-01', 103, '789 Canal St', 44.9876, -121.3456, 'Low', 'MetAllRegulations');

-- City utility outage log
CREATE TABLE city_utility_outage_log (
    outage_id INTEGER PRIMARY KEY,
    utility_type TEXT NOT NULL,
    city_zone TEXT NOT NULL,
    start_timestamp DATETIME NOT NULL,
    end_timestamp DATETIME,
    reported_by TEXT,
    cause_category TEXT,
    cause_detail TEXT,
    affected_customers INTEGER,
    estimated_restoration_minutes INTEGER,
    actual_restoration_minutes INTEGER,
    escalation_level TEXT,
    response_team TEXT,
    notes TEXT,
    resolution_status TEXT,
    downtime_hours REAL,
    impact_severity TEXT,
    outage_type TEXT,
    maintenance_window BOOLEAN,
    regulator_notified BOOLEAN,
    follow_up_action TEXT
);

INSERT INTO city_utility_outage_log VALUES (1001, 'Electric', 'NorthSector', '2025-06-01 08:15:00', '2025-06-01 10:45:00', 'OperatorA', 'Weather', 'Storm', 1250, 180, 150, 'Level2', 'TeamAlpha', 'Partial restoration achieved', 'Resolved', 2.5, 'High', 'Unplanned', 0, 1, 'ReviewInfrastructure');
INSERT INTO city_utility_outage_log VALUES (1002, 'Water', 'EastDistrict', '2025-05-20 14:00:00', '2025-05-20 16:30:00', 'OperatorB', 'EquipmentFailure', 'PumpFailure', 800, 120, 150, 'Level1', 'TeamBeta', NULL, 'Resolved', 2.5, 'Medium', 'Planned', 1, 0, 'ReplacePump');
INSERT INTO city_utility_outage_log VALUES (1003, 'Gas', 'CentralZone', '2025-04-10 22:10:00', NULL, 'OperatorC', 'Leak', 'PipelineLeak', 450, 60, NULL, 'Level3', 'TeamGamma', 'Ongoing investigation', 'Open', NULL, 'Critical', 'Unplanned', 0, 1, 'SecureLeak');

-- Community health survey results
CREATE TABLE community_health_survey (
    survey_id INTEGER PRIMARY KEY,
    community_id INTEGER NOT NULL,
    survey_date DATE NOT NULL,
    respondent_count INTEGER NOT NULL,
    avg_age REAL,
    gender_distribution TEXT,
    prevalence_diabetes REAL,
    prevalence_hypertension REAL,
    avg_bmi REAL,
    smoking_rate REAL,
    alcohol_consumption_rate REAL,
    physical_activity_minutes_per_week INTEGER,
    mental_health_score REAL,
    vaccination_rate REAL,
    chronic_respiratory_rate REAL,
    obesity_rate REAL,
    access_to_healthcare_score REAL,
    average_income REAL,
    education_level_distribution TEXT,
    housing_stability_score REAL,
    notes TEXT,
    data_source TEXT
);

INSERT INTO community_health_survey VALUES (501, 10, '2024-12-01', 350, 42.5, 'Male60Female40', 8.2, 15.4, 27.1, 22.0, 12.5, 180, 72.3, 85.0, 9.7, 30.5, 68.2, 54000.00, 'HighSchool50College30Graduate20', 78.0, 'BaselineYear2024', 'HealthDept');
INSERT INTO community_health_survey VALUES (502, 12, '2025-01-15', 420, 39.8, 'Male55Female45', 7.5, 14.0, 25.8, 18.0, 10.0, 200, 75.0, 88.5, 10.2, 28.0, 70.0, 61000.00, 'HighSchool45College35Graduate20', 80.5, 'FollowUpSurvey2025', 'HealthDept');
INSERT INTO community_health_survey VALUES (503, 15, '2025-02-20', 280, 45.1, 'Male58Female42', 9.0, 16.7, 29.4, 25.0, 14.0, 160, 68.5, 80.0, 12.0, 32.0, 65.0, 47000.00, 'HighSchool60College25Graduate15', 74.2, 'MidYearCheck2025', 'HealthDept');

-- Public safety incident records
CREATE TABLE public_safety_incident (
    incident_id INTEGER PRIMARY KEY,
    incident_type TEXT NOT NULL,
    incident_date DATE NOT NULL,
    incident_time TIME NOT NULL,
    location_description TEXT NOT NULL,
    city_zone TEXT,
    responding_agency TEXT,
    officer_id INTEGER,
    severity_level TEXT,
    casualties INTEGER,
    injuries INTEGER,
    property_damage_estimate REAL,
    description TEXT,
    status TEXT,
    closure_date DATE,
    follow_up_required BOOLEAN,
    case_number TEXT,
    witness_count INTEGER,
    evidence_collected BOOLEAN,
    alerts_issued BOOLEAN,
    notes TEXT
);

INSERT INTO public_safety_incident VALUES (2001, 'Theft', '2025-05-05', '22:30:00', 'Main St near 5th Ave', 'WestSide', 'PoliceDept', 301, 'Medium', 0, 0, 1200.00, 'Shoplifting incident', 'Closed', '2025-05-07', 0, 'CASE2025-005', 2, 1, 0, NULL);
INSERT INTO public_safety_incident VALUES (2002, 'Fire', '2025-04-22', '03:15:00', 'Industrial Park Unit 12', 'EastIndustrial', 'FireDept', 415, 'High', 0, 3, 350000.00, 'Warehouse fire caused by electrical fault', 'UnderInvestigation', NULL, 1, 'CASE2025-004', 4, 1, 1, 'Containment ongoing');
INSERT INTO public_safety_incident VALUES (2003, 'Assault', '2025-03-18', '19:45:00', 'Central Park', 'CentralZone', 'PoliceDept', 278, 'Low', 0, 1, 0.00, 'Minor altercation resolved', 'Closed', '2025-03-20', 0, 'CASE2025-003', 1, 0, 0, NULL);

-- Water resource management data
CREATE TABLE water_resource_management (
    record_id INTEGER PRIMARY KEY,
    watershed_id TEXT NOT NULL,
    measurement_date DATE NOT NULL,
    river_flow_cubic_m_per_sec REAL,
    reservoir_level_percent REAL,
    groundwater_table_depth_m REAL,
    precipitation_last_24h_mm REAL,
    temperature_celsius REAL,
    water_quality_index REAL,
    contamination_events INTEGER,
    irrigation_usage_cubic_m REAL,
    municipal_usage_cubic_m REAL,
    industrial_usage_cubic_m REAL,
    avg_ph REAL,
    dissolved_oxygen_mg_per_l REAL,
    turbidity_ntu REAL,
    nitrate_mg_per_l REAL,
    phosphate_mg_per_l REAL,
    comments TEXT,
    data_collectors TEXT
);

INSERT INTO water_resource_management VALUES (9001, 'WS01', '2025-06-01', 250.5, 78.2, 12.3, 5.0, 22.5, 85.0, 0, 15000.0, 12000.0, 3000.0, 7.2, 8.5, 3.1, 1.2, 0.4, 'Stable conditions', 'DeptHydrology');
INSERT INTO water_resource_management VALUES (9002, 'WS02', '2025-06-02', 180.0, 65.0, 15.0, 0.0, 21.0, 78.5, 1, 13000.0, 10000.0, 2500.0, 7.0, 7.8, 2.9, 1.5, 0.6, 'Minor algal bloom observed', 'DeptHydrology');
INSERT INTO water_resource_management VALUES (9003, 'WS03', '2025-06-03', 300.2, 82.5, 10.5, 12.0, 23.0, 90.0, 0, 16000.0, 14000.0, 3500.0, 7.4, 9.0, 2.5, 0.9, 0.3, 'High flow after storm', 'DeptHydrology');

-- Energy efficiency program participation
CREATE TABLE energy_efficiency_program (
    participation_id INTEGER PRIMARY KEY,
    program_name TEXT NOT NULL,
    participant_type TEXT NOT NULL,
    enrollment_date DATE NOT NULL,
    city_zone TEXT,
    building_type TEXT,
    square_feet INTEGER,
    baseline_energy_consumption_kwh REAL,
    projected_savings_percent REAL,
    actual_savings_percent REAL,
    incentive_amount REAL,
    audit_completed BOOLEAN,
    retrofit_status TEXT,
    contractor_id INTEGER,
    financing_option TEXT,
    expected_payback_years REAL,
    notes TEXT,
    status TEXT,
    last_update DATE,
    compliance_certified BOOLEAN,
    certification_body TEXT
);

INSERT INTO energy_efficiency_program VALUES (4001, 'GreenBuilding', 'Commercial', '2024-09-15', 'NorthDistrict', 'Office', 25000, 500000.0, 15.0, 14.2, 75000.00, 1, 'Completed', 701, 'Loan', 5.0, 'LED retrofit done', 'Active', '2025-05-01', 1, 'EPA');
INSERT INTO energy_efficiency_program VALUES (4002, 'SmartHome', 'Residential', '2025-01-20', 'SouthSuburb', 'SingleFamily', 1800, 12000.0, 10.0, NULL, 1500.00, 0, 'InProgress', 702, 'Grant', 3.5, 'Thermostat upgrade pending', 'Pending', '2025-05-10', 0, NULL);
INSERT INTO energy_efficiency_program VALUES (4003, 'IndustrialUpgrade', 'Industrial', '2023-06-05', 'IndustrialPark', 'Factory', 150000, 8000000.0, 20.0, 18.5, 500000.00, 1, 'Completed', 703, 'SelfFunded', 4.0, 'Machinery efficiency improved', 'Closed', '2025-04-15', 1, 'ISO');

-- Transportation fare structure details
CREATE TABLE transportation_fare_structure (
    fare_id INTEGER PRIMARY KEY,
    transport_mode TEXT NOT NULL,
    fare_category TEXT NOT NULL,
    base_fare REAL NOT NULL,
    per_km_rate REAL,
    peak_multiplier REAL,
    offpeak_multiplier REAL,
    concessions_allowed BOOLEAN,
    concession_rate REAL,
    max_daily_cap REAL,
    zone_applicability TEXT,
    effective_start_date DATE,
    effective_end_date DATE,
    fare_revision_number INTEGER,
    notes TEXT,
    currency TEXT,
    ticket_type TEXT,
    validation_method TEXT,
    transfer_allowed BOOLEAN,
    transfer_window_minutes INTEGER,
    surcharge_applicable BOOLEAN,
    surcharge_amount REAL
);

INSERT INTO transportation_fare_structure VALUES (701, 'Bus', 'Adult', 2.50, 0.30, 1.2, 0.8, 1, 0.5, 10.00, 'Zone1-3', '2024-01-01', NULL, 3, 'Standard fare', 'USD', 'SingleRide', 'Tap', 1, 60, 0, NULL);
INSERT INTO transportation_fare_structure VALUES (702, 'Metro', 'Student', 1.80, 0.25, 1.0, 0.9, 1, 0.5, 8.00, 'AllZones', '2024-01-01', NULL, 3, 'Student discount', 'USD', 'SingleRide', 'Tap', 1, 45, 0, NULL);
INSERT INTO transportation_fare_structure VALUES (703, 'Tram', 'Senior', 1.50, 0.20, 1.0, 0.8, 1, 0.4, 7.00, 'Zone2-4', '2024-01-01', NULL, 3, 'Senior fare', 'USD', 'SingleRide', 'Tap', 1, 30, 0, NULL);

-- Digital infrastructure inventory
CREATE TABLE digital_infrastructure_inventory (
    asset_id INTEGER PRIMARY KEY,
    asset_type TEXT NOT NULL,
    manufacturer TEXT,
    model TEXT,
    serial_number TEXT,
    installation_date DATE,
    warranty_expiration DATE,
    firmware_version TEXT,
    ip_address TEXT,
    mac_address TEXT,
    location_description TEXT,
    rack_position TEXT,
    power_capacity_watts REAL,
    redundancy_level TEXT,
    maintenance_contract BOOLEAN,
    contract_provider TEXT,
    last_maintenance_date DATE,
    status TEXT,
    uptime_hours REAL,
    temperature_celsius REAL,
    notes TEXT,
    compliance_certified BOOLEAN
);

INSERT INTO digital_infrastructure_inventory VALUES (8001, 'Server', 'Dell', 'PowerEdgeR740', 'SN123456', '2022-05-10', '2025-05-10', 'v2.3.1', '10.0.0.5', 'AA:BB:CC:DD:EE:01', 'DataCenterA Rack12', 'U4-U6', 2000.0, 'N+1', 1, 'TechServ', '2025-02-15', 'Operational', 15000.5, 32.5, 'Primary DB server', 1);
INSERT INTO digital_infrastructure_inventory VALUES (8002, 'Switch', 'Cisco', 'Catalyst9500', 'SN789012', '2023-01-20', '2026-01-20', 'v1.9.0', '10.0.1.2', 'AA:BB:CC:DD:EE:02', 'DataCenterB Rack03', 'Slot1', 800.0, 'N+2', 1, 'NetSolutions', '2025-03-10', 'Operational', 12000.0, 28.0, 'Core network switch', 1);
INSERT INTO digital_infrastructure_inventory VALUES (8003, 'Firewall', 'PaloAlto', 'PA-5220', 'SN345678', '2021-11-05', '2024-11-05', 'v9.1.5', '10.0.2.1', 'AA:BB:CC:DD:EE:03', 'DataCenterA Rack01', 'U1', 1500.0, 'N+1', 0, NULL, '2024-12-01', 'Decommissioned', 30000.0, 35.0, 'Retired after migration', 0);

-- Cultural heritage event schedule
CREATE TABLE cultural_heritage_event (
    event_id INTEGER PRIMARY KEY,
    heritage_site TEXT NOT NULL,
    event_name TEXT NOT NULL,
    event_type TEXT,
    start_date DATE NOT NULL,
    end_date DATE,
    organizer TEXT,
    expected_attendance INTEGER,
    ticket_price REAL,
    sponsor TEXT,
    activities_description TEXT,
    age_restriction TEXT,
    accessibility_features TEXT,
    marketing_channel TEXT,
    status TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    website_url TEXT,
    notes TEXT,
    compliance_requirements TEXT,
    insurance_provider TEXT
);

INSERT INTO cultural_heritage_event VALUES (6001, 'HistoricMuseum', 'SpringArtExhibit', 'Exhibition', '2025-04-10', '2025-06-30', 'ArtCouncil', 5000, 12.00, 'LocalBank', 'Paintings from 19th century', 'AllAges', 'WheelchairRamp', 'SocialMedia', 'Scheduled', '5551234567', 'info@artcouncil.org', 'http://artcouncil.org/spring', NULL, 'FireSafety', 'SecureInsure');
INSERT INTO cultural_heritage_event VALUES (6002, 'AncientRuins', 'NightArchaeologyTour', 'Tour', '2025-07-15', '2025-07-15', 'HeritageTrust', 200, 25.00, 'HeritageFund', 'Guided night walk with lanterns', '12+', 'AudioGuides', 'EmailNewsletter', 'Planned', '5559876543', 'events@heritagetrust.org', 'http://heritagetrust.org/nighttour', 'Limited spots', 'MedicalReady', 'SafeCover');
INSERT INTO cultural_heritage_event VALUES (6003, 'OldTownSquare', 'SummerMusicFestival', 'Festival', '2025-08-01', '2025-08-03', 'CityCultureDept', 12000, 0.00, 'CityCouncil', 'Live bands and food stalls', 'AllAges', 'AccessibleStages', 'Radio', 'Confirmed', '5555551212', 'festival@city.gov', 'http://city.gov/festival', 'Free entry', 'NoisePermits', 'CityInsure');

-- Agricultural market price index
CREATE TABLE agri_market_price_index (
    index_id INTEGER PRIMARY KEY,
    commodity TEXT NOT NULL,
    market_region TEXT NOT NULL,
    reference_date DATE NOT NULL,
    price_per_ton REAL,
    price_per_bushel REAL,
    price_change_percent REAL,
    volume_traded_tons INTEGER,
    seasonal_adjustment_factor REAL,
    inflation_adjusted_price REAL,
    source_agency TEXT,
    notes TEXT,
    cumulative_year_to_date_change REAL,
    previous_year_same_month REAL,
    forecast_next_month REAL,
    volatility_index REAL,
    export_quantity_tons INTEGER,
    import_quantity_tons INTEGER,
    domestic_consumption_tons INTEGER,
    price_index_category TEXT,
    data_quality_score INTEGER
);

INSERT INTO agri_market_price_index VALUES (801, 'Wheat', 'Midwest', '2025-05-01', 210.5, NULL, 2.3, 150000, 1.02, 215.0, 'USDA', 'Steady demand', 5.0, 205.0, 212.0, 0.8, 50000, 20000, 80000, 'Cereal', 95);
INSERT INTO agri_market_price_index VALUES (802, 'Corn', 'Midwest', '2025-05-01', 180.0, 4.5, -1.1, 200000, 1.01, 181.0, 'USDA', 'Weather impact', -2.0, 185.0, 179.0, 1.1, 60000, 25000, 115000, 'Cereal', 92);
INSERT INTO agri_market_price_index VALUES (803, 'Soybeans', 'SouthPlains', '2025-05-01', 350.0, 12.2, 3.5, 90000, 1.03, 360.0, 'USDA', 'Export growth', 7.0, 340.0, 355.0, 0.9, 30000, 15000, 45000, 'Legume', 94);