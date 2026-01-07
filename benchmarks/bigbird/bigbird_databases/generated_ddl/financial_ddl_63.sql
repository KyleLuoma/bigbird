-- Research dataset metadata
CREATE TABLE research_dataset_metadata (
    dataset_id INTEGER PRIMARY KEY,
    title TEXT,
    description TEXT,
    creator_id INTEGER,
    creation_date DATE,
    subject_area TEXT,
    format TEXT,
    size_mb REAL,
    version TEXT,
    access_level TEXT,
    doi TEXT,
    repository_url TEXT,
    keywords TEXT,
    citation_count INTEGER,
    funding_agency TEXT,
    grant_number TEXT,
    reviewed_by INTEGER,
    review_date DATE,
    is_public INTEGER,
    last_updated DATE
);

INSERT INTO research_dataset_metadata (dataset_id, title, description, creator_id, creation_date, subject_area, format, size_mb, version, access_level, doi, repository_url, keywords, citation_count, funding_agency, grant_number, reviewed_by, review_date, is_public, last_updated) VALUES (1, 'Genome_Seq_Study', 'Whole_genome_seq_data', 101, '2022-01-15', 'Genetics', 'FASTQ', 1500.5, 'v1.0', 'Open', '10.1234/xyz', 'http://repo.example.com/ds1', 'genome,sequence', 25, 'NIH', 'R01ABC', 201, '2022-02-01', 1, '2022-03-10');
INSERT INTO research_dataset_metadata (dataset_id, title, description, creator_id, creation_date, subject_area, format, size_mb, version, access_level, doi, repository_url, keywords, citation_count, funding_agency, grant_number, reviewed_by, review_date, is_public, last_updated) VALUES (2, 'Climate_Model_Output', 'Regional_climate_simulation', 102, '2021-06-30', 'Climatology', 'NetCDF', 820.3, 'v2.1', 'Restricted', '10.5678/abc', 'http://repo.example.com/ds2', 'climate,model', 12, 'EPA', 'F22DEF', 202, '2021-07-15', 0, '2021-09-01');
INSERT INTO research_dataset_metadata (dataset_id, title, description, creator_id, creation_date, subject_area, format, size_mb, version, access_level, doi, repository_url, keywords, citation_count, funding_agency, grant_number, reviewed_by, review_date, is_public, last_updated) VALUES (3, 'Social_Network_Analysis', 'User_interaction_graphs', 103, '2020-11-20', 'Sociology', 'CSV', 245.0, 'v3.0', 'Open', '10.9012/def', 'http://repo.example.com/ds3', 'social,network', 8, 'NSF', 'G33HIJ', 203, '2020-12-05', 1, '2021-01-12');

-- Satellite launch log
CREATE TABLE satellite_launch_log (
    launch_id INTEGER PRIMARY KEY,
    mission_name TEXT,
    launch_vehicle TEXT,
    launch_site TEXT,
    launch_date DATE,
    payload_mass_kg REAL,
    orbit_type TEXT,
    target_orbit_alt_km REAL,
    mission_duration_days INTEGER,
    contractor TEXT,
    operator TEXT,
    status TEXT,
    cost_million REAL,
    weather_conditions TEXT,
    flight_path TEXT,
    first_signal_time DATE,
    last_contact_date DATE,
    deorbit_date DATE,
    is_success INTEGER,
    notes TEXT
);

INSERT INTO satellite_launch_log (launch_id, mission_name, launch_vehicle, launch_site, launch_date, payload_mass_kg, orbit_type, target_orbit_alt_km, mission_duration_days, contractor, operator, status, cost_million, weather_conditions, flight_path, first_signal_time, last_contact_date, deorbit_date, is_success, notes) VALUES (101, 'Starlink_15', 'Falcon_9', 'KSC', '2022-03-14', 15400, 'LEO', 550, 730, 'SpaceX', 'SpaceX', 'Active', 90.5, 'Clear', 'EASTBOUND', '2022-03-14', '2024-03-14', NULL, 1, 'Successful deployment');
INSERT INTO satellite_launch_log (launch_id, mission_name, launch_vehicle, launch_site, launch_date, payload_mass_kg, orbit_type, target_orbit_alt_km, mission_duration_days, contractor, operator, status, cost_million, weather_conditions, flight_path, first_signal_time, last_contact_date, deorbit_date, is_success, notes) VALUES (102, 'Sentinel_2B', 'Ariane_5', 'Kourou', '2021-11-07', 1400, 'Sun_Synchronous', 786, 3650, 'Airbus', 'ESA', 'Completed', 120.0, 'Partly_Cloudy', 'NORTHBOUND', '2021-11-07', '2031-11-07', NULL, 1, 'Long‑term Earth observation');
INSERT INTO satellite_launch_log (launch_id, mission_name, launch_vehicle, launch_site, launch_date, payload_mass_kg, orbit_type, target_orbit_alt_km, mission_duration_days, contractor, operator, status, cost_million, weather_conditions, flight_path, first_signal_time, last_contact_date, deorbit_date, is_success, notes) VALUES (103, 'Mars_Orbiter_X', 'Atlas_V', 'CCAFS', '2020-07-30', 2000, 'Mars_Transfer', 200000, 1800, 'Lockheed_Martin', 'NASA', 'Failed', 500.0, 'Storm', 'INTERPLANETARY', '2020-07-30', '2020-08-15', NULL, 0, 'Launch aborted due to engine anomaly');

-- Renewable project finance
CREATE TABLE renewable_project_finance (
    finance_id INTEGER PRIMARY KEY,
    project_id INTEGER,
    funding_source TEXT,
    amount_million REAL,
    currency TEXT,
    approval_date DATE,
    disbursement_date DATE,
    repayment_term_years INTEGER,
    interest_rate REAL,
    guarantor TEXT,
    risk_rating TEXT,
    status TEXT,
    allocated_budget REAL,
    spent_to_date REAL,
    remaining_budget REAL,
    fiscal_year INTEGER,
    manager_id INTEGER,
    compliance_check TEXT,
    audit_date DATE,
    remarks TEXT
);

INSERT INTO renewable_project_finance (finance_id, project_id, funding_source, amount_million, currency, approval_date, disbursement_date, repayment_term_years, interest_rate, guarantor, risk_rating, status, allocated_budget, spent_to_date, remaining_budget, fiscal_year, manager_id, compliance_check, audit_date, remarks) VALUES (201, 301, 'Green_Energy_Fund', 45.0, 'USD', '2021-02-10', '2021-03-01', 10, 2.5, 'World_Bank', 'A', 'Active', 45.0, 12.5, 32.5, 2021, 501, 'Passed', '2021-12-15', 'Initial phase funded');
INSERT INTO renewable_project_finance (finance_id, project_id, funding_source, amount_million, currency, approval_date, disbursement_date, repayment_term_years, interest_rate, guarantor, risk_rating, status, allocated_budget, spent_to_date, remaining_budget, fiscal_year, manager_id, compliance_check, audit_date, remarks) VALUES (202, 302, 'Private_Investor', 30.0, 'EUR', '2020-08-20', '2020-09-05', 7, 3.0, 'Investor_Group', 'B', 'Completed', 30.0, 30.0, 0.0, 2020, 502, 'Passed', '2022-01-10', 'Project completed on schedule');
INSERT INTO renewable_project_finance (finance_id, project_id, funding_source, amount_million, currency, approval_date, disbursement_date, repayment_term_years, interest_rate, guarantor, risk_rating, status, allocated_budget, spent_to_date, remaining_budget, fiscal_year, manager_id, compliance_check, audit_date, remarks) VALUES (203, 303, 'Government_Grant', 20.0, 'USD', '2022-05-15', '2022-06-01', 5, 1.8, 'State_Agency', 'A', 'Pending', 20.0, 0.0, 20.0, 2022, 503, 'Pending', NULL, 'Awaiting disbursement');

-- Urban transportation hub
CREATE TABLE urban_transportation_hub (
    hub_id INTEGER PRIMARY KEY,
    name TEXT,
    city TEXT,
    address TEXT,
    opening_date DATE,
    total_platforms INTEGER,
    daily_passenger_volume INTEGER,
    hub_type TEXT,
    operator TEXT,
    contact_number TEXT,
    email TEXT,
    latitude REAL,
    longitude REAL,
    parking_spaces INTEGER,
    bicycle_stands INTEGER,
    retail_space_sqm REAL,
    wheelchair_access INTEGER,
    security_level TEXT,
    maintenance_contract TEXT,
    last_renovation DATE
);

INSERT INTO urban_transportation_hub (hub_id, name, city, address, opening_date, total_platforms, daily_passenger_volume, hub_type, operator, contact_number, email, latitude, longitude, parking_spaces, bicycle_stands, retail_space_sqm, wheelchair_access, security_level, maintenance_contract, last_renovation) VALUES (401, 'Central_Station', 'Metropolis', '123_Main_St', '2015-09-01', 12, 85000, 'Rail', 'MetroCorp', '5551234', 'info@centralstation.com', 40.7128, -74.0060, 500, 250, 12000.5, 1, 'High', 'ABC_Maintenance', '2021-07-20');
INSERT INTO urban_transportation_hub (hub_id, name, city, address, opening_date, total_platforms, daily_passenger_volume, hub_type, operator, contact_number, email, latitude, longitude, parking_spaces, bicycle_stands, retail_space_sqm, wheelchair_access, security_level, maintenance_contract, last_renovation) VALUES (402, 'East_Terminal', 'Gotham', '456_East_Rd', '2018-04-15', 8, 45000, 'Bus', 'CityTransit', '5555678', 'contact@eastterminal.org', 41.8781, -87.6298, 300, 150, 8000.0, 1, 'Medium', 'XYZ_Services', '2020-11-05');
INSERT INTO urban_transportation_hub (hub_id, name, city, address, opening_date, total_platforms, daily_passenger_volume, hub_type, operator, contact_number, email, latitude, longitude, parking_spaces, bicycle_stands, retail_space_sqm, wheelchair_access, security_level, maintenance_contract, last_renovation) VALUES (403, 'West_Dock', 'StarCity', '789_West_Ave', '2020-01-20', 5, 22000, 'Ferry', 'HarborLines', '5559012', 'support@westdock.net', 34.0522, -118.2437, 150, 80, 3000.2, 1, 'Low', 'Harbor_Maint', '2022-02-14');

-- Pharmaceutical clinical trial
CREATE TABLE pharmaceutical_clinical_trial (
    trial_id INTEGER PRIMARY KEY,
    drug_name TEXT,
    phase TEXT,
    sponsor TEXT,
    start_date DATE,
    end_date DATE,
    enrollment_target INTEGER,
    actual_enrollment INTEGER,
    primary_endpoint TEXT,
    secondary_endpoint TEXT,
    status TEXT,
    principal_investigator TEXT,
    site_count INTEGER,
    country TEXT,
    regulatory_status TEXT,
    budget_million REAL,
    data_lock_date DATE,
    results_published INTEGER,
    publication_reference TEXT,
    notes TEXT
);

INSERT INTO pharmaceutical_clinical_trial (trial_id, drug_name, phase, sponsor, start_date, end_date, enrollment_target, actual_enrollment, primary_endpoint, secondary_endpoint, status, principal_investigator, site_count, country, regulatory_status, budget_million, data_lock_date, results_published, publication_reference, notes) VALUES (501, 'CardioX', 'Phase_III', 'PharmaCo', '2020-03-01', '2022-08-31', 1200, 1185, 'MACE_Reduction', 'BP_Control', 'Completed', 'Dr_Smith', 45, 'USA', 'FDA_Approved', 85.0, '2022-09-15', 1, 'J_Clin_Cardiol_2023_45', 'Successful outcome');
INSERT INTO pharmaceutical_clinical_trial (trial_id, drug_name, phase, sponsor, start_date, end_date, enrollment_target, actual_enrollment, primary_endpoint, secondary_endpoint, status, principal_investigator, site_count, country, regulatory_status, budget_million, data_lock_date, results_published, publication_reference, notes) VALUES (502, 'NeuroHeal', 'Phase_II', 'BioGen', '2021-06-10', '2023-12-20', 600, 590, 'Cognitive_Score_Improvement', 'MRI_Volume', 'Ongoing', 'Dr_Jones', 30, 'Germany', 'EMA_Pending', 40.5, NULL, 0, NULL, 'Recruitment ongoing');
INSERT INTO pharmaceutical_clinical_trial (trial_id, drug_name, phase, sponsor, start_date, end_date, enrollment_target, actual_enrollment, primary_endpoint, secondary_endpoint, status, principal_investigator, site_count, country, regulatory_status, budget_million, data_lock_date, results_published, publication_reference, notes) VALUES (503, 'OncoZ', 'Phase_I', 'OncoTech', '2022-01-15', '2022-12-31', 100, 95, 'Safety_Tolerability', 'PK_Profile', 'Completed', 'Dr_Lee', 12, 'Japan', 'PMDA_Approved', 12.0, '2023-01-10', 0, NULL, 'Safety data favorable');

-- Art gallery acquisition
CREATE TABLE art_gallery_acquisition (
    acquisition_id INTEGER PRIMARY KEY,
    artwork_title TEXT,
    artist_name TEXT,
    acquisition_date DATE,
    purchase_price REAL,
    currency TEXT,
    gallery_section TEXT,
    medium TEXT,
    dimensions TEXT,
    provenance TEXT,
    insurance_value REAL,
    insurance_company TEXT,
    condition_rating INTEGER,
    displayed INTEGER,
    exhibition_name TEXT,
    curator TEXT,
    donor_name TEXT,
    donor_type TEXT,
    acquisition_method TEXT,
    remarks TEXT
);

INSERT INTO art_gallery_acquisition (acquisition_id, artwork_title, artist_name, acquisition_date, purchase_price, currency, gallery_section, medium, dimensions, provenance, insurance_value, insurance_company, condition_rating, displayed, exhibition_name, curator, donor_name, donor_type, acquisition_method, remarks) VALUES (601, 'Sunset_Over_River', 'A_Artist', '2021-05-12', 250000.0, 'USD', 'Modern', 'Oil_on_Canvas', '120x80cm', 'Private_Collection', 300000.0, 'SecureInsure', 9, 1, 'Spring_Exhibit', 'Curator_K', 'John_Doe', 'Private', 'Purchase', 'Highlighted in catalog');
INSERT INTO art_gallery_acquisition (acquisition_id, artwork_title, artist_name, acquisition_date, purchase_price, currency, gallery_section, medium, dimensions, provenance, insurance_value, insurance_company, condition_rating, displayed, exhibition_name, curator, donor_name, donor_type, acquisition_method, remarks) VALUES (602, 'Abstract_Forms', 'B_Artist', '2020-11-03', 180000.0, 'EUR', 'Contemporary', 'Acrylic', '100x100cm', 'Artist_Gallery', 210000.0, 'ArtSafe', 8, 0, NULL, 'Curator_L', 'Emily_Smith', 'Foundation', 'Donation', 'Pending installation');
INSERT INTO art_gallery_acquisition (acquisition_id, artwork_title, artist_name, acquisition_date, purchase_price, currency, gallery_section, medium, dimensions, provenance, insurance_value, insurance_company, condition_rating, displayed, exhibition_name, curator, donor_name, donor_type, acquisition_method, remarks) VALUES (603, 'Sculpture_of_Time', 'C_Artist', '2019-08-20', 500000.0, 'USD', 'Sculpture', 'Bronze', '200x150x100cm', 'Estate_Sale', 550000.0, 'Heritage_Insure', 10, 1, 'Winter_Gala', 'Curator_M', 'Museum_Trust', 'Institution', 'Purchase', 'Featured in sculpture garden');

-- Space mission control
CREATE TABLE space_mission_control (
    control_id INTEGER PRIMARY KEY,
    mission_name TEXT,
    control_center TEXT,
    shift_start TEXT,
    shift_end TEXT,
    supervisor_id INTEGER,
    contact_phone TEXT,
    communication_link TEXT,
    status TEXT,
    last_update TEXT,
    incident_report TEXT,
    backup_center TEXT,
    software_version TEXT,
    hardware_version TEXT,
    redundancy_level INTEGER,
    power_status TEXT,
    cooling_status TEXT,
    security_clearance_level INTEGER,
    notes TEXT,
    archive_location TEXT
);

INSERT INTO space_mission_control (control_id, mission_name, control_center, shift_start, shift_end, supervisor_id, contact_phone, communication_link, status, last_update, incident_report, backup_center, software_version, hardware_version, redundancy_level, power_status, cooling_status, security_clearance_level, notes, archive_location) VALUES (701, 'Lunar_Orbiter_1', 'Houston_CC', '08:00', '16:00', 801, '555-0101', 'link1', 'Operational', '2023-04-01 14:22:00', NULL, 'Kennedy_CC', 'v3.2.1', 'HW2', 3, 'Nominal', 'Nominal', 5, 'All systems nominal', '/archive/lunar1/');
INSERT INTO space_mission_control (control_id, mission_name, control_center, shift_start, shift_end, supervisor_id, contact_phone, communication_link, status, last_update, incident_report, backup_center, software_version, hardware_version, redundancy_level, power_status, cooling_status, security_clearance_level, notes, archive_location) VALUES (702, 'Mars_Rover_Alpha', 'Pasadena_CC', '16:00', '00:00', 802, '555-0202', 'link2', 'Alert', '2023-04-02 03:45:00', 'CommLoss_20230402', 'Pasadena_Backup', 'v4.0.0', 'HW3', 2, 'Reduced', 'Elevated', 4, 'Intermittent signal', '/archive/mars_alpha/');
INSERT INTO space_mission_control (control_id, mission_name, control_center, shift_start, shift_end, supervisor_id, contact_phone, communication_link, status, last_update, incident_report, backup_center, software_version, hardware_version, redundancy_level, power_status, cooling_status, security_clearance_level, notes, archive_location) VALUES (703, 'Deep_Space_Probe_X', 'Flagstaff_CC', '00:00', '08:00', 803, '555-0303', 'link3', 'Maintenance', '2023-04-03 09:10:00', NULL, 'Flagstaff_Backup', 'v5.1.0', 'HW4', 4, 'Nominal', 'Nominal', 5, 'Scheduled software update', '/archive/deep_probe_x/');

-- City emergency services
CREATE TABLE city_emergency_services (
    service_id INTEGER PRIMARY KEY,
    service_type TEXT,
    department_name TEXT,
    station_address TEXT,
    opening_date DATE,
    staff_count INTEGER,
    vehicles_available INTEGER,
    avg_response_minutes INTEGER,
    coverage_area_sqkm REAL,
    jurisdiction TEXT,
    chief_officer TEXT,
    contact_number TEXT,
    email TEXT,
    budget_million REAL,
    equipment_list TEXT,
    training_hours_per_year INTEGER,
    certification_level TEXT,
    mutual_aid_agreement TEXT,
    last_audit_date DATE,
    remarks TEXT
);

INSERT INTO city_emergency_services (service_id, service_type, department_name, station_address, opening_date, staff_count, vehicles_available, avg_response_minutes, coverage_area_sqkm, jurisdiction, chief_officer, contact_number, email, budget_million, equipment_list, training_hours_per_year, certification_level, mutual_aid_agreement, last_audit_date, remarks) VALUES (801, 'Fire', 'Central_Fire_Department', '12_Fire_St', '1995-06-01', 120, 45, 7, 150.5, 'Metropolis', 'Chief_Rodriguez', '555-1111', 'firedept@city.gov', 25.0, 'Engine, Ladder, Rescue', 200, 'National', 'Statewide_Pact', '2022-12-15', 'Recent upgrade of communications');
INSERT INTO city_emergency_services (service_id, service_type, department_name, station_address, opening_date, staff_count, vehicles_available, avg_response_minutes, coverage_area_sqkm, jurisdiction, chief_officer, contact_number, email, budget_million, equipment_list, training_hours_per_year, certification_level, mutual_aid_agreement, last_audit_date, remarks) VALUES (802, 'EMS', 'City_Ambulance_Service', '34_Health_Ave', '2000-03-15', 85, 30, 5, 120.0, 'Gotham', 'Chief_Lin', '555-2222', 'ems@city.gov', 18.5, 'Ambulance, Medics, Equipment', 180, 'State', 'Regional_Pact', '2023-01-20', 'New fleet introduced 2022');
INSERT INTO city_emergency_services (service_id, service_type, department_name, station_address, opening_date, staff_count, vehicles_available, avg_response_minutes, coverage_area_sqkm, jurisdiction, chief_officer, contact_number, email, budget_million, equipment_list, training_hours_per_year, certification_level, mutual_aid_agreement, last_audit_date, remarks) VALUES (803, 'Police', 'Central_Police_Department', '78_Safety_Rd', '1980-09-30', 200, 80, 4, 200.0, 'StarCity', 'Chief_Anderson', '555-3333', 'police@city.gov', 40.0, 'Patrol_Cars, Drones, K9', 250, 'Federal', 'National_Pact', '2022-11-05', 'Body‑camera rollout completed');

-- Digital infrastructure patch
CREATE TABLE digital_infrastructure_patch (
    patch_id INTEGER PRIMARY KEY,
    system_name TEXT,
    version_before TEXT,
    version_after TEXT,
    release_date DATE,
    applied_by INTEGER,
    downtime_minutes INTEGER,
    affected_modules TEXT,
    risk_level TEXT,
    rollback_plan TEXT,
    compliance_check TEXT,
    change_request_id INTEGER,
    approval_status TEXT,
    notes TEXT,
    testing_status TEXT,
    post_deployment_verification TEXT,
    ticket_id INTEGER,
    issue_resolved INTEGER,
    documentation_url TEXT,
    monitoring_status TEXT
);

INSERT INTO digital_infrastructure_patch (patch_id, system_name, version_before, version_after, release_date, applied_by, downtime_minutes, affected_modules, risk_level, rollback_plan, compliance_check, change_request_id, approval_status, notes, testing_status, post_deployment_verification, ticket_id, issue_resolved, documentation_url, monitoring_status) VALUES (901, 'Core_Banking', '5.4.2', '5.5.0', '2023-03-10', 1001, 30, 'Transaction_Engine,Auth_Service', 'Medium', 'Rollback_5.4.2', 'Passed', 3001, 'Approved', 'Improved transaction latency', 'Passed', 'Verified', 4001, 1, 'http://docs.bank.com/patch901', 'Active');
INSERT INTO digital_infrastructure_patch (patch_id, system_name, version_before, version_after, release_date, applied_by, downtime_minutes, affected_modules, risk_level, rollback_plan, compliance_check, change_request_id, approval_status, notes, testing_status, post_deployment_verification, ticket_id, issue_resolved, documentation_url, monitoring_status) VALUES (902, 'Customer_Portals', '3.1.0', '3.2.1', '2023-04-22', 1002, 15, 'Web_UI,API_Gateway', 'Low', 'Rollback_3.1.0', 'Passed', 3002, 'Approved', 'UI enhancements for accessibility', 'Passed', 'Verified', 4002, 1, 'http://docs.bank.com/patch902', 'Active');
INSERT INTO digital_infrastructure_patch (patch_id, system_name, version_before, version_after, release_date, applied_by, downtime_minutes, affected_modules, risk_level, rollback_plan, compliance_check, change_request_id, approval_status, notes, testing_status, post_deployment_verification, ticket_id, issue_resolved, documentation_url, monitoring_status) VALUES (903, 'Payment_Gateway', '2.9.5', '3.0.0', '2023-05-15', 1003, 45, 'Gateway_Core,Security_Module', 'High', 'Rollback_2.9.5', 'Pending', 3003, 'Pending', 'Major security patch', 'In_Test', 'Pending', 4003, 0, 'http://docs.bank.com/patch903', 'Scheduled');

-- Agricultural commodity market
CREATE TABLE agri_commodity_market (
    market_id INTEGER PRIMARY KEY,
    commodity TEXT,
    market_date DATE,
    opening_price REAL,
    closing_price REAL,
    high_price REAL,
    low_price REAL,
    volume_trade INTEGER,
    exchange TEXT,
    country TEXT,
    currency TEXT,
    price_change_percent REAL,
    settlement_price REAL,
    contract_type TEXT,
    futures_id INTEGER,
    spot_price REAL,
    previous_close REAL,
    market_status TEXT,
    analysis_summary TEXT,
    regulator TEXT
);

INSERT INTO agri_commodity_market (market_id, commodity, market_date, opening_price, closing_price, high_price, low_price, volume_trade, exchange, country, currency, price_change_percent, settlement_price, contract_type, futures_id, spot_price, previous_close, market_status, analysis_summary, regulator) VALUES (1001, 'Wheat', '2023-04-01', 6.45, 6.52, 6.60, 6.40, 2500000, 'CBOT', 'USA', 'USD', 1.09, 6.51, 'Future', 2001, 6.48, 6.45, 'Open', 'Steady demand, mild weather impact', 'US_CFTC');
INSERT INTO agri_commodity_market (market_id, commodity, market_date, opening_price, closing_price, high_price, low_price, volume_trade, exchange, country, currency, price_change_percent, settlement_price, contract_type, futures_id, spot_price, previous_close, market_status, analysis_summary, regulator) VALUES (1002, 'Corn', '2023-04-01', 5.30, 5.25, 5.35, 5.20, 3200000, 'ICE', 'USA', 'USD', -0.94, 5.24, 'Future', 2002, 5.22, 5.30, 'Open', 'Supply concerns due to planting delays', 'US_CFTC');
INSERT INTO agri_commodity_market (market_id, commodity, market_date, opening_price, closing_price, high_price, low_price, volume_trade, exchange, country, currency, price_change_percent, settlement_price, contract_type, futures_id, spot_price, previous_close, market_status, analysis_summary, regulator) VALUES (1003, 'Soybeans', '2023-04-01', 13.10, 13.15, 13.30, 12.95, 1800000, 'CBOT', 'USA', 'USD', 0.38, 13.14, 'Future', 2003, 13.12, 13.10, 'Open', 'Demand from China stabilizes', 'US_CFTC');