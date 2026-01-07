-- Satellite observation records
CREATE TABLE satellite_observation (
    observation_id   INTEGER PRIMARY KEY,
    satellite_id     TEXT NOT NULL,
    observation_date DATE NOT NULL,
    latitude         REAL NOT NULL,
    longitude        REAL NOT NULL,
    altitude_km      REAL NOT NULL,
    sensor_type      TEXT NOT NULL,
    wavelength_nm    INTEGER NOT NULL,
    resolution_m     REAL NOT NULL,
    cloud_coverage   REAL NOT NULL,
    sun_elevation    REAL NOT NULL,
    mission_phase    TEXT NOT NULL,
    data_quality     TEXT NOT NULL,
    processing_level TEXT NOT NULL,
    file_path        TEXT NOT NULL,
    file_size_mb     REAL NOT NULL,
    operator_name    TEXT NOT NULL,
    ground_station   TEXT NOT NULL,
    observation_mode TEXT NOT NULL,
    remarks          TEXT
);

INSERT INTO satellite_observation VALUES (1, 'SATX1', '2023-04-15', 45.123, -122.456, 700.5, 'Optical', 550, 0.5, 12.3, 45.2, 'Launch', 'High', 'L2', '/data/obs1.bin', 1250.4, 'Alice', 'GS001', 'Nadir', 'Clear sky');
INSERT INTO satellite_observation VALUES (2, 'SATY2', '2023-04-16', 33.987, -98.765, 720.0, 'Radar', 1200, 1.2, 0.0, 30.1, 'Orbit', 'Medium', 'L1', '/data/obs2.bin', 980.2, 'Bob', 'GS002', 'SideLook', 'Minor interference');
INSERT INTO satellite_observation VALUES (3, 'SATZ3', '2023-04-17', -12.345, 130.678, 680.3, 'Infrared', 900, 0.8, 45.6, 60.0, 'Calibration', 'Low', 'L0', '/data/obs3.bin', 740.0, 'Carol', 'GS003', 'Stare', 'High cloud cover');

-- Procurement order records
CREATE TABLE procurement_order (
    order_id               INTEGER PRIMARY KEY,
    vendor_id              TEXT NOT NULL,
    order_date             DATE NOT NULL,
    delivery_deadline      DATE NOT NULL,
    total_amount_usd       REAL NOT NULL,
    currency_code          TEXT NOT NULL,
    payment_terms          TEXT NOT NULL,
    purchasing_department  TEXT NOT NULL,
    requested_by           TEXT NOT NULL,
    approved_by            TEXT NOT NULL,
    item_category          TEXT NOT NULL,
    item_description       TEXT NOT NULL,
    quantity               INTEGER NOT NULL,
    unit_price_usd         REAL NOT NULL,
    tax_rate_percent       REAL NOT NULL,
    shipping_method        TEXT NOT NULL,
    freight_cost_usd       REAL NOT NULL,
    insurance_needed       TEXT NOT NULL,
    contract_number        TEXT NOT NULL,
    notes                  TEXT
);

INSERT INTO procurement_order VALUES (101, 'VEND001', '2023-03-01', '2023-03-15', 25000.00, 'USD', 'Net30', 'IT', 'Dana', 'Evan', 'Hardware', 'Server Rack', 10, 2000.00, 8.5, 'Air', 500.00, 'Yes', 'CNTR123', 'Urgent delivery');
INSERT INTO procurement_order VALUES (102, 'VEND002', '2023-03-05', '2023-04-01', 14500.00, 'USD', 'Net45', 'Facilities', 'Frank', 'Grace', 'Software', 'License Pack', 25, 580.00, 7.0, 'Ground', 300.00, 'No', 'CNTR124', 'Renewal');
INSERT INTO procurement_order VALUES (103, 'VEND003', '2023-03-10', '2023-03-25', 8200.00, 'USD', 'Net15', 'Marketing', 'Helen', 'Ian', 'Services', 'Ad Campaign', 1, 8200.00, 6.0, 'Digital', 0.00, 'No', 'CNTR125', 'Quarterly run');

-- Legal case file records
CREATE TABLE legal_case_file (
    case_id                INTEGER PRIMARY KEY,
    case_number            TEXT NOT NULL,
    filing_date            DATE NOT NULL,
    case_type              TEXT NOT NULL,
    jurisdiction           TEXT NOT NULL,
    plaintiff_name         TEXT NOT NULL,
    defendant_name         TEXT NOT NULL,
    lead_attorney          TEXT NOT NULL,
    opposing_counsel       TEXT NOT NULL,
    status                 TEXT NOT NULL,
    hearing_date           DATE,
    verdict_date           DATE,
    judgment_amount_usd    REAL,
    settlement_amount_usd  REAL,
    case_priority          TEXT NOT NULL,
    case_category          TEXT NOT NULL,
    assigned_department    TEXT NOT NULL,
    court_room_number      TEXT,
    docket_number          TEXT,
    notes                  TEXT
);

INSERT INTO legal_case_file VALUES (2001, 'CF2023-001', '2023-01-12', 'Civil', 'NY', 'John Doe', 'Acme Corp', 'Laura Smith', 'Mark Brown', 'Open', '2023-05-01', NULL, NULL, NULL, 'High', 'Contract', 'Legal', 'Room12', 'DCK1001', 'Initial filing');
INSERT INTO legal_case_file VALUES (2002, 'CF2023-002', '2023-02-08', 'Criminal', 'CA', 'State', 'Jane Roe', 'James Wilson', 'Susan Lee', 'Closed', '2023-04-15', '2023-04-20', 0.00, 25000.00, 'Medium', 'Fraud', 'Criminal', 'Room5', 'DCK1002', 'Plea bargain');
INSERT INTO legal_case_file VALUES (2003, 'CF2023-003', '2023-03-03', 'Family', 'TX', 'Emily Clark', 'Robert Clark', 'Michael Green', 'Patricia White', 'Pending', NULL, NULL, NULL, NULL, 'Low', 'Divorce', 'Family', NULL, 'DCK1003', 'Mediation scheduled');

-- Community event records
CREATE TABLE community_event (
    event_id              INTEGER PRIMARY KEY,
    event_name            TEXT NOT NULL,
    event_date            DATE NOT NULL,
    start_time            TEXT NOT NULL,
    end_time              TEXT NOT NULL,
    location_name         TEXT NOT NULL,
    address_line1         TEXT NOT NULL,
    address_line2         TEXT,
    city                  TEXT NOT NULL,
    state                 TEXT NOT NULL,
    zip_code              TEXT NOT NULL,
    organizer_contact     TEXT NOT NULL,
    sponsor_name          TEXT,
    expected_attendees    INTEGER NOT NULL,
    registration_fee_usd  REAL,
    age_restriction       TEXT,
    event_category        TEXT NOT NULL,
    outdoor               TEXT NOT NULL,
    parking_available     TEXT NOT NULL,
    notes                 TEXT
);

INSERT INTO community_event VALUES (301, 'Spring Fest', '2023-04-20', '10:00', '16:00', 'Central Park', '123 Main St', NULL, 'Springfield', 'IL', '62704', 'alice@example.com', 'Local Bank', 500, 10.00, 'All', 'Festival', 'Yes', 'Yes', 'Food trucks available');
INSERT INTO community_event VALUES (302, 'Tech Talk Series', '2023-04-22', '18:00', '20:00', 'Community Center', '456 Oak Ave', 'Suite 2', 'Greenville', 'NC', '27834', 'bob@example.com', 'TechCorp', 150, 0.00, 'All', 'Education', 'No', 'No', 'Free admission');
INSERT INTO community_event VALUES (303, 'Charity Run', '2023-05-01', '07:00', '12:00', 'River Trail', '789 River Rd', NULL, 'Laketown', 'FL', '32004', 'carol@example.com', 'HealthOrg', 300, 25.00, '18+', 'Sports', 'Yes', 'Yes', 'Water stations on route');

-- Healthcare provider records
CREATE TABLE healthcare_provider (
    provider_id          INTEGER PRIMARY KEY,
    npi_number           TEXT NOT NULL,
    provider_name        TEXT NOT NULL,
    provider_type        TEXT NOT NULL,
    specialty            TEXT,
    address_line1        TEXT NOT NULL,
    address_line2        TEXT,
    city                 TEXT NOT NULL,
    state                TEXT NOT NULL,
    zip_code             TEXT NOT NULL,
    phone_number         TEXT NOT NULL,
    email_address        TEXT NOT NULL,
    license_status       TEXT NOT NULL,
    board_certified      TEXT NOT NULL,
    years_in_practice    INTEGER NOT NULL,
    affiliation_hospital TEXT,
    accepts_medicare     TEXT NOT NULL,
    accepts_medicaid     TEXT NOT NULL,
    telehealth_enabled   TEXT NOT NULL,
    notes                TEXT
);

INSERT INTO healthcare_provider VALUES (401, '1234567890', 'Green Valley Clinic', 'Clinic', 'Family Medicine', '101 Health St', NULL, 'Greenville', 'SC', '29601', '555-1234', 'info@greenvalley.com', 'Active', 'Yes', 12, 'Greenville Hospital', 'Yes', 'Yes', 'Yes', 'Walk‑in hours on Fridays');
INSERT INTO healthcare_provider VALUES (402, '0987654321', 'Sunrise Hospital', 'Hospital', 'General', '202 Medical Plaza', 'Suite 300', 'Sun City', 'AZ', '85123', '555-5678', 'contact@sunrisehosp.com', 'Active', 'Yes', 45, NULL, 'Yes', 'Yes', 'Yes', '24‑hour emergency department');
INSERT INTO healthcare_provider VALUES (403, '1122334455', 'Dr Emily Hart', 'Physician', 'Dermatology', '303 Skin Rd', NULL, 'Lakeside', 'CA', '91711', '555-9012', 'ehart@derma.com', 'Active', 'Yes', 8, 'Lakeside Medical Center', 'Yes', 'No', 'Yes', 'Offers cosmetic procedures');

-- Product catalog records
CREATE TABLE product_catalog (
    product_id            INTEGER PRIMARY KEY,
    sku                   TEXT NOT NULL,
    product_name          TEXT NOT NULL,
    category              TEXT NOT NULL,
    subcategory           TEXT,
    brand_name            TEXT NOT NULL,
    model_number          TEXT,
    description           TEXT,
    release_date          DATE,
    discontinue_date      DATE,
    list_price_usd        REAL NOT NULL,
    discount_percent      REAL,
    weight_kg             REAL,
    dimensions_cm         TEXT,
    color_variant         TEXT,
    material_type         TEXT,
    warranty_years        INTEGER,
    supplier_id           TEXT,
    stock_quantity        INTEGER NOT NULL,
    reorder_level         INTEGER NOT NULL,
    notes                 TEXT
);

INSERT INTO product_catalog VALUES (501, 'SKU001', 'UltraWidget Pro', 'Electronics', 'Gadgets', 'TechCo', 'UW‑P100', 'High‑performance widget', '2022-01-15', NULL, 199.99, 10.0, 0.75, '10x5x2', 'Black', 'Aluminum', 2, 'SUPP001', 150, 30, 'Bestseller');
INSERT INTO product_catalog VALUES (502, 'SKU002', 'EcoBottle', 'Home', 'Kitchen', 'GreenLife', 'EB‑200', 'Reusable water bottle', '2021-06-01', NULL, 24.99, 5.0, 0.2, '8x8x20', 'Blue', 'StainlessSteel', 1, 'SUPP002', 500, 100, 'Eco‑friendly');
INSERT INTO product_catalog VALUES (503, 'SKU003', 'FitnessBand X', 'Fitness', 'Wearables', 'FitGear', 'FBX‑300', 'Advanced activity tracker', '2023-02-20', NULL, 79.99, 0.0, 0.05, '5x5x1', 'Red', 'Silicone', 1, 'SUPP003', 250, 50, 'Includes heart‑rate monitor');

-- Transport schedule records
CREATE TABLE transport_schedule (
    schedule_id           INTEGER PRIMARY KEY,
    route_id              TEXT NOT NULL,
    vehicle_id            TEXT NOT NULL,
    departure_time        TEXT NOT NULL,
    arrival_time          TEXT NOT NULL,
    departure_station     TEXT NOT NULL,
    arrival_station       TEXT NOT NULL,
    days_of_week          TEXT NOT NULL,
    service_type          TEXT NOT NULL,
    operator_name         TEXT NOT NULL,
    capacity_seats        INTEGER NOT NULL,
    capacity_kg           REAL NOT NULL,
    fare_usd              REAL NOT NULL,
    ticket_class          TEXT NOT NULL,
    wheelchair_accessible TEXT NOT NULL,
    wifi_available        TEXT NOT NULL,
    on_board_service      TEXT,
    delay_history_minutes INTEGER,
    last_updated          DATE NOT NULL,
    notes                 TEXT
);

INSERT INTO transport_schedule VALUES (601, 'R100', 'V001', '08:00', '09:30', 'Central Station', 'North Terminal', 'MonTueWedThuFri', 'Express', 'MetroOps', 200, 25000.0, 2.50, 'Standard', 'Yes', 'Yes', 'Coffee', 5, '2023-03-01', 'Peak hour service');
INSERT INTO transport_schedule VALUES (602, 'R200', 'V045', '14:15', '16:00', 'East Depot', 'West Hub', 'SatSun', 'Local', 'CityTransit', 50, 6000.0, 1.75, 'Economy', 'No', 'No', NULL, 0, '2023-02-20', 'Weekend schedule');
INSERT INTO transport_schedule VALUES (603, 'R300', 'V078', '22:00', '23:45', 'Airport', 'Downtown', 'MonTueWedThuFriSatSun', 'Night', 'NightLine', 120, 15000.0, 3.00, 'Premium', 'Yes', 'Yes', 'SnackBar', 2, '2023-03-10', 'Late night service');

-- Energy grid node records
CREATE TABLE energy_grid_node (
    node_id                INTEGER PRIMARY KEY,
    node_code              TEXT NOT NULL,
    node_type              TEXT NOT NULL,
    voltage_kv             REAL NOT NULL,
    capacity_mw            REAL NOT NULL,
    installation_date      DATE NOT NULL,
    last_maintenance_date  DATE,
    operator_company       TEXT NOT NULL,
    region                 TEXT NOT NULL,
    latitude               REAL NOT NULL,
    longitude              REAL NOT NULL,
    status                 TEXT NOT NULL,
    load_factor_percent    REAL,
    reactive_power_mvar    REAL,
    transformer_count      INTEGER,
    substation_name        TEXT,
    redundancy_level       TEXT,
    smart_grid_enabled     TEXT NOT NULL,
    outage_history_days    INTEGER,
    notes                  TEXT
);

INSERT INTO energy_grid_node VALUES (701, 'N001', 'Substation', 220.0, 150.0, '2010-05-12', '2023-01-15', 'PowerCo', 'North', 45.123, -122.456, 'Active', 78.5, 30.2, 4, 'North Sub', 'High', 'Yes', 2, 'Upgraded 2022');
INSERT INTO energy_grid_node VALUES (702, 'N002', 'Transformer', 33.0, 25.0, '2015-09-30', '2022-11-20', 'EnergyGrid', 'South', 34.567, -118.234, 'Active', 65.0, 12.5, 2, 'South Transform', 'Medium', 'Yes', 5, 'Scheduled for replacement');
INSERT INTO energy_grid_node VALUES (703, 'N003', 'Switchgear', 11.0, 10.0, '2018-03-05', NULL, 'UtilityInc', 'East', 40.789, -119.876, 'UnderConstruction', NULL, NULL, 1, 'East Switch', 'Low', 'No', 0, 'Construction phase');

-- Research grant records
CREATE TABLE research_grant (
    grant_id               INTEGER PRIMARY KEY,
    grant_number           TEXT NOT NULL,
    funding_agency         TEXT NOT NULL,
    principal_investigator TEXT NOT NULL,
    project_title          TEXT NOT NULL,
    start_date             DATE NOT NULL,
    end_date               DATE NOT NULL,
    total_amount_usd       REAL NOT NULL,
    annual_budget_usd      REAL NOT NULL,
    field_of_study         TEXT NOT NULL,
    research_type          TEXT NOT NULL,
    peer_review_status     TEXT NOT NULL,
    report_submitted       TEXT NOT NULL,
    data_sharing_plan      TEXT,
    ethical_approval       TEXT NOT NULL,
    collaborating_institutions TEXT,
    number_of_researchers  INTEGER NOT NULL,
    publications_expected  INTEGER,
    milestones_completed   INTEGER,
    notes                  TEXT
);

INSERT INTO research_grant VALUES (801, 'RG-2021-001', 'NationalScienceFund', 'Dr. Alice Morgan', 'Quantum Computing Advances', '2021-01-01', '2024-12-31', 5000000.00, 1250000.00, 'Computer Science', 'Basic', 'Approved', 'Yes', 'OpenAccess', 'Approved', 'Tech University; State Lab', 12, 8, 4, 'Phase 1 completed');
INSERT INTO research_grant VALUES (802, 'RG-2022-015', 'HealthResearchCouncil', 'Prof. Brian Lee', 'Novel Antiviral Agents', '2022-06-15', '2025-06-14', 3000000.00, 1000000.00, 'Biochemistry', 'Applied', 'Pending', 'No', 'Restricted', 'Pending', 'Medical School; PharmaCo', 9, 5, 2, 'Recruitment ongoing');
INSERT INTO research_grant VALUES (803, 'RG-2023-042', 'EnvironmentalAgency', 'Dr. Carla Singh', 'Urban Air Quality Monitoring', '2023-03-01', '2026-02-28', 1500000.00, 500000.00, 'Environmental Science', 'Interdisciplinary', 'Approved', 'Yes', 'Public', 'Approved', 'City University; GreenTech', 7, 3, 1, 'Sensor deployment in Phase 2');

-- Digital content metadata records
CREATE TABLE digital_content_metadata (
    content_id                INTEGER PRIMARY KEY,
    content_uuid              TEXT NOT NULL,
    title                     TEXT NOT NULL,
    description               TEXT,
    content_type              TEXT NOT NULL,
    format                    TEXT NOT NULL,
    file_size_mb              REAL NOT NULL,
    duration_seconds          INTEGER,
    resolution_width          INTEGER,
    resolution_height         INTEGER,
    aspect_ratio              TEXT,
    color_profile             TEXT,
    language                  TEXT,
    publication_date          DATE,
    author_name               TEXT,
    copyright_holder          TEXT,
    license_type              TEXT,
    tags                      TEXT,
    access_level              TEXT NOT NULL,
    download_count            INTEGER NOT NULL,
    last_accessed            DATE,
    notes                     TEXT
);

INSERT INTO digital_content_metadata VALUES (901, 'UUID-001', 'Sunrise Timelapse', 'A 30‑second timelapse of sunrise over mountains.', 'Video', 'MP4', 150.5, 30, 1920, 1080, '16:9', 'sRGB', 'English', '2022-08-15', 'John Doe', 'Nature Studios', 'CC-BY', 'nature;timelapse;sunrise', 'Public', 1200, '2023-03-20', 'Featured on homepage');
INSERT INTO digital_content_metadata VALUES (902, 'UUID-002', 'Annual Report 2022', 'PDF document containing the financial annual report.', 'Document', 'PDF', 5.2, NULL, NULL, NULL, NULL, NULL, 'English', '2023-01-10', 'Finance Dept', 'Company', 'Internal', 'finance;report;2022', 'Restricted', 300, '2023-02-28', 'Access limited to staff');
INSERT INTO digital_content_metadata VALUES (903, 'UUID-003', 'Jazz Classics Album', 'A collection of classic jazz recordings.', 'Audio', 'FLAC', 120.0, 7200, NULL, NULL, NULL, NULL, 'English', '2021-05-01', 'Various Artists', 'Music Label', 'RoyaltyFree', 'jazz;classic;music', 'Public', 850, '2023-03-01', 'Available for streaming');