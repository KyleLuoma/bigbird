-- Research grant applications submitted by faculty members
CREATE TABLE research_grant_application
(
    app_id               TEXT PRIMARY KEY,
    applicant_name       TEXT,
    department           TEXT,
    faculty_id           TEXT,
    grant_title          TEXT,
    abstract_text        TEXT,
    submission_date      TEXT,
    review_score         REAL,
    funding_requested    INTEGER,
    funding_awarded      INTEGER,
    status               TEXT,
    reviewer_id          TEXT,
    decision_date        TEXT,
    project_start_date   TEXT,
    project_end_date     TEXT,
    budget_total         INTEGER,
    overhead_percent     REAL,
    collaborator_list    TEXT,
    prior_awards         TEXT,
    keywords             TEXT
);

INSERT INTO research_grant_application (app_id, applicant_name, department, faculty_id, grant_title, abstract_text, submission_date, review_score, funding_requested, funding_awarded, status, reviewer_id, decision_date, project_start_date, project_end_date, budget_total, overhead_percent, collaborator_list, prior_awards, keywords)
VALUES ('RG001','Alice_Smith','Computer_Science','F001','AI_Ethics_Study','Explores_ethical_implications_of_AI','2024-01-10',4.5,50000,45000,'Approved','R001','2024-02-01','2024-03-01','2025-02-28',100000,15.0,'Bob_Jones;Carol_Wang','RG2020;RG2018','AI;Ethics');

INSERT INTO research_grant_application (app_id, applicant_name, department, faculty_id, grant_title, abstract_text, submission_date, review_score, funding_requested, funding_awarded, status, reviewer_id, decision_date, project_start_date, project_end_date, budget_total, overhead_percent, collaborator_list, prior_awards, keywords)
VALUES ('RG002','David_Lee','Biology','F002','Marine_Biodiversity_Survey','Survey_of_coastal_species','2024-01-15',3.8,75000,0,'Pending','R002','', '','',0,0.0,'Emma_Kim','RG2019','Marine;Biodiversity');

INSERT INTO research_grant_application (app_id, applicant_name, department, faculty_id, grant_title, abstract_text, submission_date, review_score, funding_requested, funding_awarded, status, reviewer_id, decision_date, project_start_date, project_end_date, budget_total, overhead_percent, collaborator_list, prior_awards, keywords)
VALUES ('RG003','Fiona_Garcia','Engineering','F003','Smart_Grid_Infrastructure','Design_of_resilient_smart_grid','2024-01-20',4.2,120000,120000,'Approved','R003','2024-02-10','2024-04-01','2026-03-31',250000,12.5,'Gina_Huang;Hank_Patel','RG2021','SmartGrid;Energy');

-- Campus event survey responses
CREATE TABLE campus_event_survey
(
    survey_id           TEXT PRIMARY KEY,
    event_id            TEXT,
    respondent_id       TEXT,
    overall_rating      INTEGER,
    organization_score  INTEGER,
    content_score       INTEGER,
    venue_score         INTEGER,
    speaker_quality     INTEGER,
    networking_opportunity INTEGER,
    catering_quality    INTEGER,
    timing_convenience  INTEGER,
    likelihood_to_return INTEGER,
    comments            TEXT,
    submission_timestamp TEXT,
    device_type         TEXT,
    browser_used        TEXT,
    os_version          TEXT,
    email_opt_in        TEXT,
    survey_version      TEXT,
    latitude            REAL,
    longitude           REAL,
    altitude            REAL
);

INSERT INTO campus_event_survey (survey_id, event_id, respondent_id, overall_rating, organization_score, content_score, venue_score, speaker_quality, networking_opportunity, catering_quality, timing_convenience, likelihood_to_return, comments, submission_timestamp, device_type, browser_used, os_version, email_opt_in, survey_version, latitude, longitude, altitude)
VALUES ('CS001','E001','M001',8,9,7,8,9,6,8,7,8,'Great_event','2024-02-01T10:15:00','Mobile','Chrome','Android_11','Yes','v1',40.7128,-74.0060,10.5);

INSERT INTO campus_event_survey (survey_id, event_id, respondent_id, overall_rating, organization_score, content_score, venue_score, speaker_quality, networking_opportunity, catering_quality, timing_convenience, likelihood_to_return, comments, submission_timestamp, device_type, browser_used, os_version, email_opt_in, survey_version, latitude, longitude, altitude)
VALUES ('CS002','E002','M002',6,5,6,5,6,5,5,6,5,'Average_experience','2024-02-02T14:30:00','Desktop','Firefox','Windows_10','No','v1',34.0522,-118.2437,15.2);

INSERT INTO campus_event_survey (survey_id, event_id, respondent_id, overall_rating, organization_score, content_score, venue_score, speaker_quality, networking_opportunity, catering_quality, timing_convenience, likelihood_to_return, comments, submission_timestamp, device_type, browser_used, os_version, email_opt_in, survey_version, latitude, longitude, altitude)
VALUES ('CS003','E003','M003',9,9,9,9,9,8,9,9,9,'Excellent!','2024-02-03T09:45:00','Tablet','Safari','iOS_14','Yes','v1',41.8781,-87.6298,12.0);

-- Alumni network activity logs
CREATE TABLE alumni_network_activity
(
    activity_id          TEXT PRIMARY KEY,
    alumni_id            TEXT,
    activity_type        TEXT,
    activity_timestamp   TEXT,
    location_city        TEXT,
    location_state       TEXT,
    platform_used        TEXT,
    duration_minutes     INTEGER,
    engagement_score     REAL,
    related_event_id     TEXT,
    notes                TEXT,
    ip_address           TEXT,
    device_id            TEXT,
    browser_version      TEXT,
    os_name              TEXT,
    subscription_level   TEXT,
    referral_source      TEXT,
    mentor_flag          TEXT,
    volunteer_flag       TEXT,
    donation_amount      REAL,
    points_earned        INTEGER,
    badge_awarded        TEXT
);

INSERT INTO alumni_network_activity (activity_id, alumni_id, activity_type, activity_timestamp, location_city, location_state, platform_used, duration_minutes, engagement_score, related_event_id, notes, ip_address, device_id, browser_version, os_name, subscription_level, referral_source, mentor_flag, volunteer_flag, donation_amount, points_earned, badge_awarded)
VALUES ('AN001','ALU001','Login','2024-02-05T08:20:00','Boston','MA','Web','5',8.2,'','Successful_login','192.168.1.10','DEV123','Chrome_112','Windows','Premium','Email','Yes','No',0.0,10,'Early_Bird');

INSERT INTO alumni_network_activity (activity_id, alumni_id, activity_type, activity_timestamp, location_city, location_state, platform_used, duration_minutes, engagement_score, related_event_id, notes, ip_address, device_id, browser_version, os_name, subscription_level, referral_source, mentor_flag, volunteer_flag, donation_amount, points_earned, badge_awarded)
VALUES ('AN002','ALU002','Forum_Post','2024-02-06T12:45:00','Seattle','WA','Mobile','15',7.5,'E005','Posted_in_tech_forum','10.0.0.5','DEV456','Safari_15','iOS','Standard','Social','No','Yes',25.0,30,'Contributor');

INSERT INTO alumni_network_activity (activity_id, alumni_id, activity_type, activity_timestamp, location_city, location_state, platform_used, duration_minutes, engagement_score, related_event_id, notes, ip_address, device_id, browser_version, os_name, subscription_level, referral_source, mentor_flag, volunteer_flag, donation_amount, points_earned, badge_awarded)
VALUES ('AN003','ALU003','Donate','2024-02-07T16:10:00','Chicago','IL','Web','3',9.0,'','Made_a_donation','172.16.0.2','DEV789','Edge_95','Windows','Premium','Friend','No','No',100.0,50,'Philanthropist');

-- Sustainability report entries for campus initiatives
CREATE TABLE sustainability_report
(
    report_id            TEXT PRIMARY KEY,
    initiative_name      TEXT,
    start_date           TEXT,
    end_date             TEXT,
    status               TEXT,
    carbon_reduction_tons REAL,
    water_saved_gallons  INTEGER,
    energy_saved_kwh     INTEGER,
    waste_diverted_pct   REAL,
    funding_source       TEXT,
    total_cost           INTEGER,
    responsible_dept     TEXT,
    lead_coordinator     TEXT,
    stakeholder_feedback TEXT,
    verification_method TEXT,
    comments             TEXT,
    last_updated         TEXT,
    auditor_name         TEXT,
    audit_score          REAL,
    compliance_level     TEXT,
    future_target_tons   REAL,
    projected_savings    REAL,
    risk_assessment      TEXT
);

INSERT INTO sustainability_report (report_id, initiative_name, start_date, end_date, status, carbon_reduction_tons, water_saved_gallons, energy_saved_kwh, waste_diverted_pct, funding_source, total_cost, responsible_dept, lead_coordinator, stakeholder_feedback, verification_method, comments, last_updated, auditor_name, audit_score, compliance_level, future_target_tons, projected_savings, risk_assessment)
VALUES ('SR001','Solar_Panel_Expansion','2023-01-01','2023-12-31','Completed',150.5,0,500000,75.0,'Grant','1200000','Facilities','John_Doe','Positive','Third_Party','Installed_200kW','2024-01-15','Audit_Inc',95.0,'High','200.0','250000','Low');

INSERT INTO sustainability_report (report_id, initiative_name, start_date, end_date, status, carbon_reduction_tons, water_saved_gallons, energy_saved_kwh, waste_diverted_pct, funding_source, total_cost, responsible_dept, lead_coordinator, stakeholder_feedback, verification_method, comments, last_updated, auditor_name, audit_score, compliance_level, future_target_tons, projected_savings, risk_assessment)
VALUES ('SR002','Rainwater_Capture','2023-03-15','2024-03-14','In_Progress',0.0,1200000,0,0.0,'Donations','300000','Environmental_Sciences','Jane_Smith','Mixed','Self_Reported','Phase_2_Construction','2024-02-20','Green_Audits',88.5,'Medium','0.5','120000','Medium');

INSERT INTO sustainability_report (report_id, initiative_name, start_date, end_date, status, carbon_reduction_tons, water_saved_gallons, energy_saved_kwh, waste_diverted_pct, funding_source, total_cost, responsible_dept, lead_coordinator, stakeholder_feedback, verification_method, comments, last_updated, auditor_name, audit_score, compliance_level, future_target_tons, projected_savings, risk_assessment)
VALUES ('SR003','Zero_Waste_Cafeteria','2022-09-01','2023-08-31','Completed',0.0,0,0,95.0,'Campus_Budget','200000','Food_Services','Mike_Lee','Very_Positive','Internal','Reduced_food_waste_by_40_percent','2023-09-05','Campus_Audit',92.0,'High','0.0','0','Low');

-- Digital marketing metrics for campaigns
CREATE TABLE digital_marketing_metrics
(
    metric_id            TEXT PRIMARY KEY,
    campaign_id          TEXT,
    metric_date          TEXT,
    impressions          INTEGER,
    clicks               INTEGER,
    conversions          INTEGER,
    spend_usd            REAL,
    cpc_usd              REAL,
    cpm_usd              REAL,
    ctr_percent          REAL,
    conversion_rate_percent REAL,
    revenue_usd          REAL,
    roi_percent          REAL,
    audience_age_group   TEXT,
    audience_gender      TEXT,
    device_type          TEXT,
    platform_name        TEXT,
    ad_format            TEXT,
    geo_region           TEXT,
    traffic_source       TEXT,
    landing_page_id      TEXT,
    bounce_rate_percent  REAL,
    avg_session_duration_seconds INTEGER,
    goal_completion_rate_percent REAL
);

INSERT INTO digital_marketing_metrics (metric_id, campaign_id, metric_date, impressions, clicks, conversions, spend_usd, cpc_usd, cpm_usd, ctr_percent, conversion_rate_percent, revenue_usd, roi_percent, audience_age_group, audience_gender, device_type, platform_name, ad_format, geo_region, traffic_source, landing_page_id, bounce_rate_percent, avg_session_duration_seconds, goal_completion_rate_percent)
VALUES ('DM001','CMP001','2024-01-31',50000,2500,150,2000.0,0.80,40.0,5.0,6.0,3000.0,50.0,'18-24','Female','Mobile','Facebook','Video','North_America','Social','LP001',30.0,180,25.0);

INSERT INTO digital_marketing_metrics (metric_id, campaign_id, metric_date, impressions, clicks, conversions, spend_usd, cpc_usd, cpm_usd, ctr_percent, conversion_rate_percent, revenue_usd, roi_percent, audience_age_group, audience_gender, device_type, platform_name, ad_format, geo_region, traffic_source, landing_page_id, bounce_rate_percent, avg_session_duration_seconds, goal_completion_rate_percent)
VALUES ('DM002','CMP002','2024-02-15',75000,3000,200,3500.0,1.17,46.7,4.0,6.7,4500.0,28.6,'25-34','Male','Desktop','Google','Search','Europe','Search','LP002',45.0,210,18.0);

INSERT INTO digital_marketing_metrics (metric_id, campaign_id, metric_date, impressions, clicks, conversions, spend_usd, cpc_usd, cpm_usd, ctr_percent, conversion_rate_percent, revenue_usd, roi_percent, audience_age_group, audience_gender, device_type, platform_name, ad_format, geo_region, traffic_source, landing_page_id, bounce_rate_percent, avg_session_duration_seconds, goal_completion_rate_percent)
VALUES ('DM003','CMP003','2024-03-05',60000,2700,180,2800.0,1.04,46.7,4.5,6.7,3800.0,35.7','35-44','All','Tablet','LinkedIn','Sponsored_Content','Asia','Referral','LP003',38.0,195,22.0);

-- Health service appointment records
CREATE TABLE health_service_appointment
(
    appointment_id       TEXT PRIMARY KEY,
    patient_id           TEXT,
    provider_id          TEXT,
    appointment_date     TEXT,
    appointment_time     TEXT,
    department           TEXT,
    visit_type           TEXT,
    reason_for_visit     TEXT,
    insurance_provider   TEXT,
    copay_amount         REAL,
    status               TEXT,
    check_in_timestamp   TEXT,
    check_out_timestamp  TEXT,
    diagnosis_code       TEXT,
    prescription_given   TEXT,
    follow_up_required   TEXT,
    follow_up_date       TEXT,
    notes                TEXT,
    referral_source      TEXT,
    telehealth_flag      TEXT,
    room_number          TEXT,
    duration_minutes     INTEGER,
    patient_feedback_score INTEGER,
    billing_code         TEXT
);

INSERT INTO health_service_appointment (appointment_id, patient_id, provider_id, appointment_date, appointment_time, department, visit_type, reason_for_visit, insurance_provider, copay_amount, status, check_in_timestamp, check_out_timestamp, diagnosis_code, prescription_given, follow_up_required, follow_up_date, notes, referral_source, telehealth_flag, room_number, duration_minutes, patient_feedback_score, billing_code)
VALUES ('HA001','PAT001','PROV001','2024-02-10','09:30','Primary_Care','In_Person','Flu_Symptoms','HealthPlus',20.0,'Completed','2024-02-10T09:25','2024-02-10T09:55','J10','Tamiflu','No','','','Walk_In','No','101',30,9,'99213');

INSERT INTO health_service_appointment (appointment_id, patient_id, provider_id, appointment_date, appointment_time, department, visit_type, reason_for_visit, insurance_provider, copay_amount, status, check_in_timestamp, check_out_timestamp, diagnosis_code, prescription_given, follow_up_required, follow_up_date, notes, referral_source, telehealth_flag, room_number, duration_minutes, patient_feedback_score, billing_code)
VALUES ('HA002','PAT002','PROV002','2024-02-12','14:00','Dermatology','Telehealth','Rash','MediCare',15.0,'Completed','2024-02-12T13:55','2024-02-12T14:20','L23','Hydrocortisone','Yes','2024-03-01','Mild_irritation','Online','Yes','Virtual',25,8,'99204');

INSERT INTO health_service_appointment (appointment_id, patient_id, provider_id, appointment_date, appointment_time, department, visit_type, reason_for_visit, insurance_provider, copay_amount, status, check_in_timestamp, check_out_timestamp, diagnosis_code, prescription_given, follow_up_required, follow_up_date, notes, referral_source, telehealth_flag, room_number, duration_minutes, patient_feedback_score, billing_code)
VALUES ('HA003','PAT003','PROV003','2024-02-15','11:15','Mental_Health','In_Person','Anxiety','HealthSecure',0.0,'Completed','2024-02-15T11:10','2024-02-15T11:50','F41','','Yes','2024-04-01','Counseling_session','Referral','No','210',40,10,'90837');

-- Library digital collection metadata
CREATE TABLE library_digital_collection
(
    collection_id        TEXT PRIMARY KEY,
    title                TEXT,
    creator              TEXT,
    publication_year     INTEGER,
    format_type          TEXT,
    language             TEXT,
    subject              TEXT,
    abstract_summary     TEXT,
    access_level         TEXT,
    rights_statement     TEXT,
    doi                  TEXT,
    isbn                 TEXT,
    issn                 TEXT,
    digital_object_id    TEXT,
    file_size_mb         REAL,
    checksum_md5         TEXT,
    license_type         TEXT,
    related_series       TEXT,
    keywords             TEXT,
    contributor          TEXT,
    publisher            TEXT,
    acquisition_date     TEXT,
    preservation_status  TEXT,
    last_accessed        TEXT,
    usage_count          INTEGER
);

INSERT INTO library_digital_collection (collection_id, title, creator, publication_year, format_type, language, subject, abstract_summary, access_level, rights_statement, doi, isbn, issn, digital_object_id, file_size_mb, checksum_md5, license_type, related_series, keywords, contributor, publisher, acquisition_date, preservation_status, last_accessed, usage_count)
VALUES ('LC001','Artificial_Intelligence_Essentials','John_Doe',2022,'PDF','English','Computer_Science','Comprehensive_overview_of_AI','Open','Public_Domain','10.1234/ai2022','9781234567890','','DOI001',12.5,'ABCD1234','CC0','Series_AI','AI;Machine_Learning','Jane_Smith','Tech_Press','2023-01-10','Preserved','2024-02-01',150);

INSERT INTO library_digital_collection (collection_id, title, creator, publication_year, format_type, language, subject, abstract_summary, access_level, rights_statement, doi, isbn, issn, digital_object_id, file_size_mb, checksum_md5, license_type, related_series, keywords, contributor, publisher, acquisition_date, preservation_status, last_accessed, usage_count)
VALUES ('LC002','Historical_Documents_Archive','Various',1990,'Image_Collection','English','History','Scanned_documents_of_19th_century','Restricted','All_Rights_Reserved','','-','1234-5678','IMG001',250.0,'EFGH5678','All_Rights_Reserved','Series_History','History;Archive','Michael_Brown','Archive_Org','2020-05-15','Preserved','2024-02-02',85);

INSERT INTO library_digital_collection (collection_id, title, creator, publication_year, format_type, language, subject, abstract_summary, access_level, rights_statement, doi, isbn, issn, digital_object_id, file_size_mb, checksum_md5, license_type, related_series, keywords, contributor, publisher, acquisition_date, preservation_status, last_accessed, usage_count)
VALUES ('LC003','Quantum_Physics_Videos','Dr_Alice_Wang',2021,'MP4','English','Physics','Lecture_series_on_quantum_mechanics','Open','Creative_Commons','10.5678/qp2021','-','-','VID001',850.0,'IJKL9012','CC-BY','Series_Physics','Quantum;Physics','Dr_Bob_Lee','Science_Media','2022-09-20','Preserved','2024-02-03',200);

-- Transportation asset registry
CREATE TABLE transportation_asset
(
    asset_id             TEXT PRIMARY KEY,
    asset_type           TEXT,
    make_model           TEXT,
    year_of_manufacture  INTEGER,
    vin                  TEXT,
    license_plate        TEXT,
    registration_state   TEXT,
    acquisition_date     TEXT,
    purchase_price       REAL,
    current_value        REAL,
    mileage              INTEGER,
    fuel_type            TEXT,
    fuel_capacity_gallons REAL,
    maintenance_status   TEXT,
    last_maintenance_date TEXT,
    next_maintenance_due TEXT,
    assigned_department  TEXT,
    driver_assigned      TEXT,
    insurance_provider   TEXT,
    insurance_policy_number TEXT,
    registration_expiration TEXT,
    gps_tracker_id       TEXT,
    active_flag          TEXT,
    depreciation_rate_percent REAL,
    asset_condition      TEXT,
    notes                TEXT,
    disposal_date        TEXT,
    disposal_reason      TEXT,
    resale_value         REAL
);

INSERT INTO transportation_asset (asset_id, asset_type, make_model, year_of_manufacture, vin, license_plate, registration_state, acquisition_date, purchase_price, current_value, mileage, fuel_type, fuel_capacity_gallons, maintenance_status, last_maintenance_date, next_maintenance_due, assigned_department, driver_assigned, insurance_provider, insurance_policy_number, registration_expiration, gps_tracker_id, active_flag, depreciation_rate_percent, asset_condition, notes, disposal_date, disposal_reason, resale_value)
VALUES ('TA001','Vehicle','Ford_Focus',2018,'1FADP3F20JL123456','ABC123','MA','2018-03-01',18000.0,12000.0,45000,'Gasoline',15.0,'Good','2024-01-10','2024-07-10','Facilities','John_Doe','Acme_Insurance','POL12345','2024-12-31','GPS001','Yes',15.0,'Fair','Regular_maintenance','2024-06-01','Sold','15000.0');

INSERT INTO transportation_asset (asset_id, asset_type, make_model, year_of_manufacture, vin, license_plate, registration_state, acquisition_date, purchase_price, current_value, mileage, fuel_type, fuel_capacity_gallons, maintenance_status, last_maintenance_date, next_maintenance_due, assigned_department, driver_assigned, insurance_provider, insurance_policy_number, registration_expiration, gps_tracker_id, active_flag, depreciation_rate_percent, asset_condition, notes, disposal_date, disposal_reason, resale_value)
VALUES ('TA002','Vehicle','Tesla_Model3',2021,'5YJ3E1EA7MF123456','EV2021','CA','2021-04-15',40000.0,35000.0,15000,'Electric',0.0,'Excellent','2024-02-20','2024-08-20','Transportation','Emily_Clark','Eco_Insurance','POL67890','2025-04-14','GPS002','Yes',10.0,'Excellent','Battery_check_done','', '', '',0.0');

INSERT INTO transportation_asset (asset_id, asset_type, make_model, year_of_manufacture, vin, license_plate, registration_state, acquisition_date, purchase_price, current_value, mileage, fuel_type, fuel_capacity_gallons, maintenance_status, last_maintenance_date, next_maintenance_due, assigned_department, driver_assigned, insurance_provider, insurance_policy_number, registration_expiration, gps_tracker_id, active_flag, depreciation_rate_percent, asset_condition, notes, disposal_date, disposal_reason, resale_value)
VALUES ('TA003','Truck','Volvo_VNL',2019,'4V4NC9EH5JN123456','TRK019','TX','2019-07-20',85000.0,60000.0,80000,'Diesel',30.0,'Needs_Repair','2024-01-05','2024-07-05','Logistics','Mike_Johnson','Secure_Insurance','POL11223','2024-11-30','GPS003','Yes',13.0,'Good','Brake_issue_pending','2025-01-01','Retired','25000.0');

-- Food service inventory tracking
CREATE TABLE food_service_inventory
(
    inventory_id         TEXT PRIMARY KEY,
    item_name            TEXT,
    sku                  TEXT,
    category             TEXT,
    supplier_id          TEXT,
    unit_of_measure      TEXT,
    quantity_on_hand     INTEGER,
    reorder_point        INTEGER,
    max_stock_level      INTEGER,
    average_daily_usage  REAL,
    last_received_date   TEXT,
    expiration_date      TEXT,
    storage_location     TEXT,
    temperature_requirement TEXT,
    organic_flag         TEXT,
    gluten_free_flag     TEXT,
    halal_flag           TEXT,
    kosher_flag          TEXT,
    vegan_flag           TEXT,
    cost_per_unit        REAL,
    last_cost_update     TEXT,
    barcode              TEXT,
    weight_per_unit_grams REAL,
    volume_per_unit_ml   REAL,
    last_audit_timestamp TEXT,
    audit_responsible    TEXT,
    notes                TEXT,
    discontinued_flag    TEXT,
    substitute_item_id   TEXT,
    external_reference   TEXT
);

INSERT INTO food_service_inventory (inventory_id, item_name, sku, category, supplier_id, unit_of_measure, quantity_on_hand, reorder_point, max_stock_level, average_daily_usage, last_received_date, expiration_date, storage_location, temperature_requirement, organic_flag, gluten_free_flag, halal_flag, kosher_flag, vegan_flag, cost_per_unit, last_cost_update, barcode, weight_per_unit_grams, volume_per_unit_ml, last_audit_timestamp, audit_responsible, notes, discontinued_flag, substitute_item_id, external_reference)
VALUES ('FI001','Whole_Wheat_Flour','WF001','Baking','SUP001','kg',200,50,500,1.5,'2024-01-20','2025-01-20','Pantry_A','Room_Temp','Yes','Yes','No','No','Yes',0.80,'2024-01-22','123456789012','1000','0','2024-02-01','Jane_Smith','All_good','No','FI010','REF001');

INSERT INTO food_service_inventory (inventory_id, item_name, sku, category, supplier_id, unit_of_measure, quantity_on_hand, reorder_point, max_stock_level, average_daily_usage, last_received_date, expiration_date, storage_location, temperature_requirement, organic_flag, gluten_free_flag, halal_flag, kosher_flag, vegan_flag, cost_per_unit, last_cost_update, barcode, weight_per_unit_grams, volume_per_unit_ml, last_audit_timestamp, audit_responsible, notes, discontinued_flag, substitute_item_id, external_reference)
VALUES ('FI002','Olive_Oil','OO001','Condiments','SUP002','L',150,30,300,0.8,'2024-02-05','2026-02-05','Pantry_B','Cool_Room','No','Yes','Yes','Yes','Yes',5.50,'2024-02-06','234567890123','950','0','2024-02-10','John_Doe','Check_quality','No','FI011','REF002');

INSERT INTO food_service_inventory (inventory_id, item_name, sku, category, supplier_id, unit_of_measure, quantity_on_hand, reorder_point, max_stock_level, average_daily_usage, last_received_date, expiration_date, storage_location, temperature_requirement, organic_flag, gluten_free_flag, halal_flag, kosher_flag, vegan_flag, cost_per_unit, last_cost_update, barcode, weight_per_unit_grams, volume_per_unit_ml, last_audit_timestamp, audit_responsible, notes, discontinued_flag, substitute_item_id, external_reference)
VALUES ('FI003','Cheddar_Cheese','CH001','Dairy','SUP003','kg',80,20,150,0.5,'2024-01-28','2024-03-10','Refrigerator_1','4C','No','No','No','No','No',4.20,'2024-01-30','345678901234','500','0','2024-02-12','Emily_Clark','Monitor_spoilage','No','FI012','REF003');

-- Facility energy usage logs
CREATE TABLE facility_energy_usage
(
    usage_id            TEXT PRIMARY KEY,
    building_id         TEXT,
    floor_number        INTEGER,
    meter_id            TEXT,
    reading_timestamp   TEXT,
    energy_type         TEXT,
    consumption_kwh     REAL,
    peak_demand_kw      REAL,
    voltage_volts       REAL,
    current_amperes     REAL,
    power_factor        REAL,
    temperature_celsius REAL,
    humidity_percent    REAL,
    occupancy_count     INTEGER,
    daylight_hours      REAL,
    equipment_running   TEXT,
    renewable_source    TEXT,
    carbon_emission_kg  REAL,
    cost_usd            REAL,
    billing_period_start TEXT,
    billing_period_end   TEXT,
    tariff_type         TEXT,
    meter_status        TEXT,
    anomaly_flag        TEXT,
    notes               TEXT,
    verified_by         TEXT,
    verification_date   TEXT,
    estimated_savings_percent REAL,
    projected_next_reading TEXT
);

INSERT INTO facility_energy_usage (usage_id, building_id, floor_number, meter_id, reading_timestamp, energy_type, consumption_kwh, peak_demand_kw, voltage_volts, current_amperes, power_factor, temperature_celsius, humidity_percent, occupancy_count, daylight_hours, equipment_running, renewable_source, carbon_emission_kg, cost_usd, billing_period_start, billing_period_end, tariff_type, meter_status, anomaly_flag, notes, verified_by, verification_date, estimated_savings_percent, projected_next_reading)
VALUES ('EU001','B001',2,'MTR001','2024-02-01T12:00:00','Electric',3500.5,120.0,240.0,500.0,0.95,22.5,45.0,150,8.0,'HVAC;Lights','Solar',1500.3,420.75,'2024-01-01','2024-01-31','Flat','Active','No','Monthly_reading','Anna_Kent','2024-02-02',5.0,'2024-03-01T12:00:00');

INSERT INTO facility_energy_usage (usage_id, building_id, floor_number, meter_id, reading_timestamp, energy_type, consumption_kwh, peak_demand_kw, voltage_volts, current_amperes, power_factor, temperature_celsius, humidity_percent, occupancy_count, daylight_hours, equipment_running, renewable_source, carbon_emission_kg, cost_usd, billing_period_start, billing_period_end, tariff_type, meter_status, anomaly_flag, notes, verified_by, verification_date, estimated_savings_percent, projected_next_reading)
VALUES ('EU002','B002',1,'MTR002','2024-02-01T12:00:00','Electric',2100.0,80.0,230.0,400.0,0.97,21.0,40.0,80,9.5,'Computers;Lights','Wind',900.0,250.00,'2024-01-01','2024-01-31','Time_Of_Use','Active','No','No_anomalies','Mark_Twain','2024-02-02',3.5,'2024-03-01T12:00:00');

INSERT INTO facility_energy_usage (usage_id, building_id, floor_number, meter_id, reading_timestamp, energy_type, consumption_kwh, peak_demand_kw, voltage_volts, current_amperes, power_factor, temperature_celsius, humidity_percent, occupancy_count, daylight_hours, equipment_running, renewable_source, carbon_emission_kg, cost_usd, billing_period_start, billing_period_end, tariff_type, meter_status, anomaly_flag, notes, verified_by, verification_date, estimated_savings_percent, projected_next_reading)
VALUES ('EU003','B003',3,'MTR003','2024-02-01T12:00:00','Electric',4800.7,150.0,250.0,600.0,0.93,23.0,50.0,200,7.0,'Elevators;HVAC','Geothermal',2100.5,600.90,'2024-01-01','2024-01-31','Flat','Active','Yes','High_peak_usage','Laura_Payne','2024-02-02',7.0,'2024-03-01T12:00:00');