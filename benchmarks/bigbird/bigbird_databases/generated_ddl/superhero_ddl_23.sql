-- Advertising budget per campaign
CREATE TABLE advertising_budget
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    campaign_id            INTEGER,
    fiscal_year            INTEGER,
    quarter                INTEGER,
    total_budget           NUMERIC,
    tv_spot_budget         NUMERIC,
    digital_ad_budget      NUMERIC,
    print_ad_budget        NUMERIC,
    radio_ad_budget        NUMERIC,
    outdoor_ad_budget      NUMERIC,
    social_media_budget    NUMERIC,
    influencer_budget      NUMERIC,
    creative_agency_fee    NUMERIC,
    production_cost        NUMERIC,
    media_buy_cost         NUMERIC,
    contingency_fund       NUMERIC,
    approved_by            TEXT,
    start_date             DATE,
    end_date               DATE,
    notes                  TEXT
);

INSERT INTO advertising_budget (id, campaign_id, fiscal_year, quarter, total_budget, tv_spot_budget, digital_ad_budget, print_ad_budget, radio_ad_budget, outdoor_ad_budget, social_media_budget, influencer_budget, creative_agency_fee, production_cost, media_buy_cost, contingency_fund, approved_by, start_date, end_date, notes) VALUES
(1, 101, 2025, 1, 500000, 150000, 120000, 50000, 30000, 40000, 60000, 20000, 25000, 50000, 100000, 5000, alice_smith, '2025-01-01', '2025-03-31', 'Q1 launch');

INSERT INTO advertising_budget (id, campaign_id, fiscal_year, quarter, total_budget, tv_spot_budget, digital_ad_budget, print_ad_budget, radio_ad_budget, outdoor_ad_budget, social_media_budget, influencer_budget, creative_agency_fee, production_cost, media_buy_cost, contingency_fund, approved_by, start_date, end_date, notes) VALUES
(2, 102, 2025, 2, 750000, 200000, 180000, 80000, 50000, 60000, 90000, 30000, 35000, 80000, 150000, 8000, bob_jones, '2025-04-01', '2025-06-30', 'Q2 expansion');

INSERT INTO advertising_budget (id, campaign_id, fiscal_year, quarter, total_budget, tv_spot_budget, digital_ad_budget, print_ad_budget, radio_ad_budget, outdoor_ad_budget, social_media_budget, influencer_budget, creative_agency_fee, production_cost, media_buy_cost, contingency_fund, approved_by, start_date, end_date, notes) VALUES
(3, 103, 2025, 3, 600000, 180000, 150000, 60000, 40000, 50000, 75000, 25000, 30000, 60000, 120000, 6000, carla_lee, '2025-07-01', '2025-09-30', 'Q3 holiday push');

-- Merchandise sales summary per region/product
CREATE TABLE merchandise_sales_summary
(
    id                 INTEGER NOT NULL PRIMARY KEY,
    region_id          INTEGER,
    product_line_id    INTEGER,
    fiscal_month       INTEGER,
    units_sold         INTEGER,
    revenue_usd        NUMERIC,
    cost_of_goods_sold NUMERIC,
    gross_margin       NUMERIC,
    discount_amount    NUMERIC,
    returns_qty        INTEGER,
    net_revenue        NUMERIC,
    avg_unit_price     NUMERIC,
    sales_channel      TEXT,
    store_type         TEXT,
    promotional_flag   INTEGER,
    sales_manager      TEXT,
    report_date        DATE,
    currency           TEXT,
    exchange_rate      NUMERIC,
    notes              TEXT
);

INSERT INTO merchandise_sales_summary (id, region_id, product_line_id, fiscal_month, units_sold, revenue_usd, cost_of_goods_sold, gross_margin, discount_amount, returns_qty, net_revenue, avg_unit_price, sales_channel, store_type, promotional_flag, sales_manager, report_date, currency, exchange_rate, notes) VALUES
(1, 10, 200, 4, 1500, 45000, 30000, 15000, 2000, 50, 43000, 30, online, flagship, 1, dave_kim, '2025-04-30', USD, 1.0, 'April online sales');

INSERT INTO merchandise_sales_summary (id, region_id, product_line_id, fiscal_month, units_sold, revenue_usd, cost_of_goods_sold, gross_margin, discount_amount, returns_qty, net_revenue, avg_unit_price, sales_channel, store_type, promotional_flag, sales_manager, report_date, currency, exchange_rate, notes) VALUES
(2, 20, 210, 4, 800, 24000, 16000, 8000, 1500, 20, 22500, 30, retail, mall, 0, emma_wong, '2025-04-30', USD, 1.0, 'Mall stores performance');

INSERT INTO merchandise_sales_summary (id, region_id, product_line_id, fiscal_month, units_sold, revenue_usd, cost_of_goods_sold, gross_margin, discount_amount, returns_qty, net_revenue, avg_unit_price, sales_channel, store_type, promotional_flag, sales_manager, report_date, currency, exchange_rate, notes) VALUES
(3, 30, 220, 4, 1200, 36000, 24000, 12000, 1800, 30, 34200, 30, wholesale, distributor, 1, frank_liu, '2025-04-30', USD, 1.0, 'Distributor bulk order');

-- Detailed licensing agreement information
CREATE TABLE licensing_agreement_detail
(
    id                          INTEGER NOT NULL PRIMARY KEY,
    licensor_id                 INTEGER,
    licensee_id                 INTEGER,
    product_category            TEXT,
    territory                   TEXT,
    start_date                  DATE,
    end_date                    DATE,
    royalty_percent             NUMERIC,
    minimum_guarantee_usd       NUMERIC,
    advance_payment_usd         NUMERIC,
    audit_rights_flag           INTEGER,
    exclusivity_flag           INTEGER,
    sublicensing_allowed_flag   INTEGER,
    termination_notice_days    INTEGER,
    governing_law               TEXT,
    contract_version            TEXT,
    signed_by                   TEXT,
    approval_status             TEXT,
    amendment_count             INTEGER,
    notes                       TEXT
);

INSERT INTO licensing_agreement_detail (id, licensor_id, licensee_id, product_category, territory, start_date, end_date, royalty_percent, minimum_guarantee_usd, advance_payment_usd, audit_rights_flag, exclusivity_flag, sublicensing_allowed_flag, termination_notice_days, governing_law, contract_version, signed_by, approval_status, amendment_count, notes) VALUES
(1, 500, 600, toys, north_america, '2023-01-01', '2028-12-31', 7.5, 200000, 50000, 1, 1, 0, 90, ny_law, v1, linda_green, approved, 2, 'Initial five‑year term');

INSERT INTO licensing_agreement_detail (id, licensor_id, licensee_id, product_category, territory, start_date, end_date, royalty_percent, minimum_guarantee_usd, advance_payment_usd, audit_rights_flag, exclusivity_flag, sublicensing_allowed_flag, termination_notice_days, governing_law, contract_version, signed_by, approval_status, amendment_count, notes) VALUES
(2, 501, 601, apparel, europe, '2024-06-15', '2029-06-14', 6.0, 150000, 30000, 1, 0, 1, 60, uk_law, v2, mark_taylor, pending, 0, 'Expansion to EU market');

INSERT INTO licensing_agreement_detail (id, licensor_id, licensee_id, product_category, territory, start_date, end_date, royalty_percent, minimum_guarantee_usd, advance_payment_usd, audit_rights_flag, exclusivity_flag, sublicensing_allowed_flag, termination_notice_days, governing_law, contract_version, signed_by, approval_status, amendment_count, notes) VALUES
(3, 502, 602, digital_games, asia_pacific, '2025-03-01', '2030-02-28', 8.0, 250000, 60000, 1, 0, 0, 120, ca_law, v1, nina_perez, approved, 1, 'First APAC digital title');

-- Nodes in the distribution network
CREATE TABLE distribution_network_node
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    node_name              TEXT,
    node_type              TEXT,
    latitude               NUMERIC,
    longitude              NUMERIC,
    country_code           TEXT,
    region                 TEXT,
    capacity_units         INTEGER,
    operational_status     TEXT,
    last_maintenance_date  DATE,
    next_maintenance_date  DATE,
    manager_name           TEXT,
    contact_phone          TEXT,
    contact_email          TEXT,
    ip_address             TEXT,
    bandwidth_gbps         NUMERIC,
    storage_tb             NUMERIC,
    power_source           TEXT,
    backup_generator_flag  INTEGER,
    security_level         TEXT,
    notes                  TEXT
);

INSERT INTO distribution_network_node (id, node_name, node_type, latitude, longitude, country_code, region, capacity_units, operational_status, last_maintenance_date, next_maintenance_date, manager_name, contact_phone, contact_email, ip_address, bandwidth_gbps, storage_tb, power_source, backup_generator_flag, security_level, notes) VALUES
(1, hub_ny, data_center, 40.7128, -74.0060, US, northeast, 5000, active, '2024-12-01', '2025-06-01', sara_lee, '5551234000', saralee@example.com, '10.0.0.1', 40, 200, grid, 1, high, 'Primary east coast hub');

INSERT INTO distribution_network_node (id, node_name, node_type, latitude, longitude, country_code, region, capacity_units, operational_status, last_maintenance_date, next_maintenance_date, manager_name, contact_phone, contact_email, ip_address, bandwidth_gbps, storage_tb, power_source, backup_generator_flag, security_level, notes) VALUES
(2, hub_la, edge_node, 34.0522, -118.2437, US, west, 3000, active, '2024-11-15', '2025-05-15', tom_harris, '5551235000', tomh@example.com, '10.0.0.2', 30, 150, solar, 1, medium, 'West coast edge');

INSERT INTO distribution_network_node (id, node_name, node_type, latitude, longitude, country_code, region, capacity_units, operational_status, last_maintenance_date, next_maintenance_date, manager_name, contact_phone, contact_email, ip_address, bandwidth_gps, storage_tb, power_source, backup_generator_flag, security_level, notes) VALUES
(3, hub_lon, data_center, 51.5074, -0.1278, GB, europe, 4000, active, '2024-10-20', '2025-04-20', alice_khan, '5551236000', alicek@example.com, '10.0.0.3', 35, 180, grid, 1, high, 'European regional hub');

-- Sponsorship packages for events
CREATE TABLE event_sponsorship_package
(
    id                    INTEGER NOT NULL PRIMARY KEY,
    event_id              INTEGER,
    sponsor_id            INTEGER,
    package_name          TEXT,
    tier_level            TEXT,
    contribution_usd      NUMERIC,
    branding_opportunities TEXT,
    booth_space_sqm       INTEGER,
    speaking_slots        INTEGER,
    logo_placements       TEXT,
    social_media_mentions INTEGER,
    post_event_report_flag INTEGER,
    contract_signed_date  DATE,
    activation_start_date DATE,
    activation_end_date   DATE,
    contact_person        TEXT,
    contact_email         TEXT,
    notes                 TEXT,
    created_at            DATE,
    updated_at            DATE
);

INSERT INTO event_sponsorship_package (id, event_id, sponsor_id, package_name, tier_level, contribution_usd, branding_opportunities, booth_space_sqm, speaking_slots, logo_placements, social_media_mentions, post_event_report_flag, contract_signed_date, activation_start_date, activation_end_date, contact_person, contact_email, notes, created_at, updated_at) VALUES
(1, 3001, 800, platinum, high, 250000, main_stage_banner, 50, 3, stage_backdrop, 10, 1, '2025-01-10', '2025-03-01', '2025-03-05', karen_moore, karenm@example.com, 'Top tier sponsor', '2025-01-10', '2025-03-05');

INSERT INTO event_sponsorship_package (id, event_id, sponsor_id, package_name, tier_level, contribution_usd, branding_opportunities, booth_space_sqm, speaking_slots, logo_placements, social_media_mentions, post_event_report_flag, contract_signed_date, activation_start_date, activation_end_date, contact_person, contact_email, notes, created_at, updated_at) VALUES
(2, 3002, 801, gold, medium, 150000, side_stage_banner, 30, 2, side_panels, 6, 1, '2025-02-15', '2025-04-01', '2025-04-04', mike_johnson, mikej@example.com, 'Mid tier sponsor', '2025-02-15', '2025-04-04');

INSERT INTO event_sponsorship_package (id, event_id, sponsor_id, package_name, tier_level, contribution_usd, branding_opportunities, booth_space_sqm, speaking_slots, logo_placements, social_media_mentions, post_event_report_flag, contract_signed_date, activation_start_date, activation_end_date, contact_person, contact_email, notes, created_at, updated_at) VALUES
(3, 3003, 802, silver, low, 80000, lobby_display, 15, 1, lobby_signage, 3, 0, '2025-03-20', '2025-05-01', '2025-05-03', lisa_chan, lisac@example.com, 'Entry level sponsor', '2025-03-20', '2025-05-03');

-- Media partner agreements
CREATE TABLE media_partner_agreement
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    partner_id             INTEGER,
    media_type             TEXT,
    region                 TEXT,
    start_date             DATE,
    end_date               DATE,
    exclusive_flag         INTEGER,
    content_share_percentage NUMERIC,
    ad_inventory_units    INTEGER,
    cost_per_unit_usd      NUMERIC,
    performance_metric     TEXT,
    reporting_frequency    TEXT,
    compliance_requirements TEXT,
    legal_review_status    TEXT,
    signed_by              TEXT,
    contract_value_usd     NUMERIC,
    renewal_option_flag    INTEGER,
    notes                  TEXT,
    created_at             DATE,
    updated_at             DATE
);

INSERT INTO media_partner_agreement (id, partner_id, media_type, region, start_date, end_date, exclusive_flag, content_share_percentage, ad_inventory_units, cost_per_unit_usd, performance_metric, reporting_frequency, compliance_requirements, legal_review_status, signed_by, contract_value_usd, renewal_option_flag, notes, created_at, updated_at) VALUES
(1, 900, streaming, north_america, '2024-01-01', '2026-12-31', 0, 12.5, 200000, 2.5, cpm, monthly, standard, cleared, john_doe, 500000, 1, 'Primary streaming partner', '2024-01-01', '2024-01-01');

INSERT INTO media_partner_agreement (id, partner_id, media_type, region, start_date, end_date, exclusive_flag, content_share_percentage, ad_inventory_units, cost_per_unit_usd, performance_metric, reporting_frequency, compliance_requirements, legal_review_status, signed_by, contract_value_usd, renewal_option_flag, notes, created_at, updated_at) VALUES
(2, 901, broadcast, europe, '2024-06-01', '2027-05-31', 1, 15.0, 150000, 3.0, cpm, quarterly, high, pending, jane_smith, 400000, 0, 'Exclusive broadcast rights', '2024-06-01', '2024-06-01');

INSERT INTO media_partner_agreement (id, partner_id, media_type, region, start_date, end_date, exclusive_flag, content_share_percentage, ad_inventory_units, cost_per_unit_usd, performance_metric, reporting_frequency, compliance_requirements, legal_review_status, signed_by, contract_value_usd, renewal_option_flag, notes, created_at, updated_at) VALUES
(3, 902, print, asia, '2025-02-01', '2028-01-31', 0, 10.0, 100000, 1.8, cpm, monthly, standard, cleared, alice_wong, 300000, 1, 'Print media partnership', '2025-02-01', '2025-02-01');

-- Supply chain routes details
CREATE TABLE supply_chain_route
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    route_name             TEXT,
    origin_warehouse_id    INTEGER,
    destination_store_id   INTEGER,
    transport_mode         TEXT,
    average_transit_days   INTEGER,
    max_load_kg            NUMERIC,
    carrier_name           TEXT,
    carrier_contact        TEXT,
    frequency_per_week     INTEGER,
    schedule_start_date    DATE,
    schedule_end_date      DATE,
    cost_per_km_usd        NUMERIC,
    fuel_type              TEXT,
    emissions_kg_co2       NUMERIC,
    temperature_control_flag INTEGER,
    security_check_flag    INTEGER,
    route_manager          TEXT,
    last_inspection_date   DATE,
    notes                  TEXT
);

INSERT INTO supply_chain_route (id, route_name, origin_warehouse_id, destination_store_id, transport_mode, average_transit_days, max_load_kg, carrier_name, carrier_contact, frequency_per_week, schedule_start_date, schedule_end_date, cost_per_km_usd, fuel_type, emissions_kg_co2, temperature_control_flag, security_check_flag, route_manager, last_inspection_date, notes) VALUES
(1, east_coast_express, 1001, 2001, truck, 2, 15000, speedy_logistics, 5559870001, 5, '2025-01-01', '2025-12-31', 0.75, diesel, 1200, 0, 1, michael_brown, '2025-01-15', 'High volume route');

INSERT INTO supply_chain_route (id, route_name, origin_warehouse_id, destination_store_id, transport_mode, average_transit_days, max_load_kg, carrier_name, carrier_contact, frequency_per_week, schedule_start_date, schedule_end_date, cost_per_km_usd, fuel_type, emissions_kg_co2, temperature_control_flag, security_check_flag, route_manager, last_inspection_date, notes) VALUES
(2, west_coast_freight, 1002, 2002, rail, 4, 30000, continental_rail, 5559870002, 3, '2025-01-01', '2025-12-31', 0.55, electric, 800, 0, 1, sarah_lee, '2025-02-01', 'Rail corridor');

INSERT INTO supply_chain_route (id, route_name, origin_warehouse_id, destination_store_id, transport_mode, average_transit_days, max_load_kg, carrier_name, carrier_contact, frequency_per_week, schedule_start_date, schedule_end_date, cost_per_km_usd, fuel_type, emissions_kg_co2, temperature_control_flag, security_check_flag, route_manager, last_inspection_date, notes) VALUES
(3, international_air, 1003, 2003, air, 1, 5000, global_air, 5559870003, 7, '2025-01-01', '2025-12-31', 2.5, jet_fuel, 3500, 1, 1, david_kim, '2025-01-20', 'Temperature controlled shipments');

-- Royalty payment logs
CREATE TABLE royalty_payment_log
(
    id                       INTEGER NOT NULL PRIMARY KEY,
    agreement_id             INTEGER,
    period_start_date        DATE,
    period_end_date          DATE,
    gross_royalty_usd        NUMERIC,
    deductions_usd           NUMERIC,
    net_payment_usd          NUMERIC,
    payment_date             DATE,
    paid_by                  TEXT,
    payment_method           TEXT,
    transaction_reference    TEXT,
    audit_flag               INTEGER,
    notes                    TEXT,
    created_at               DATE,
    updated_at               DATE,
    currency                 TEXT,
    exchange_rate            NUMERIC,
    royalty_percentage       NUMERIC,
    serviced_by              TEXT,
    approval_status          TEXT,
    finance_contact          TEXT
);

INSERT INTO royalty_payment_log (id, agreement_id, period_start_date, period_end_date, gross_royalty_usd, deductions_usd, net_payment_usd, payment_date, paid_by, payment_method, transaction_reference, audit_flag, notes, created_at, updated_at, currency, exchange_rate, royalty_percentage, serviced_by, approval_status, finance_contact) VALUES
(1, 1, '2025-01-01', '2025-03-31', 50000, 5000, 45000, '2025-04-15', corporate_account, wire, REF12345, 0, 'Q1 payment', '2025-04-15', '2025-04-15', USD, 1.0, 7.5, finance_team, approved, alice_finance);

INSERT INTO royalty_payment_log (id, agreement_id, period_start_date, period_end_date, gross_royalty_usd, deductions_usd, net_payment_usd, payment_date, paid_by, payment_method, transaction_reference, audit_flag, notes, created_at, updated_at, currency, exchange_rate, royalty_percentage, serviced_by, approval_status, finance_contact) VALUES
(2, 2, '2025-04-01', '2025-06-30', 60000, 6000, 54000, '2025-07-15', corporate_account, wire, REF12346, 0, 'Q2 payment', '2025-07-15', '2025-07-15', USD, 1.0, 6.0, finance_team, approved, bob_finance);

INSERT INTO royalty_payment_log (id, agreement_id, period_start_date, period_end_date, gross_royalty_usd, deductions_usd, net_payment_usd, payment_date, paid_by, payment_method, transaction_reference, audit_flag, notes, created_at, updated_at, currency, exchange_rate, royalty_percentage, serviced_by, approval_status, finance_contact) VALUES
(3, 3, '2025-07-01', '2025-09-30', 55000, 5500, 49500, '2025-10-15', corporate_account, wire, REF12347, 0, 'Q3 payment', '2025-10-15', '2025-10-15', USD, 1.0, 8.0, finance_team, approved, carla_finance);

-- Digital content engagement metrics
CREATE TABLE digital_content_engagement
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    content_id             INTEGER,
    platform_id            INTEGER,
    engagement_date        DATE,
    impressions            INTEGER,
    clicks                 INTEGER,
    view_time_seconds      INTEGER,
    unique_viewers         INTEGER,
    average_view_duration  NUMERIC,
    bounce_rate_percent    NUMERIC,
    conversion_events      INTEGER,
    revenue_usd            NUMERIC,
    cost_usd               NUMERIC,
    roi_percent            NUMERIC,
    engagement_score       NUMERIC,
    geographic_region      TEXT,
    device_type            TEXT,
    age_group              TEXT,
    gender_group           TEXT,
    notes                  TEXT,
    created_at             DATE
);

INSERT INTO digital_content_engagement (id, content_id, platform_id, engagement_date, impressions, clicks, view_time_seconds, unique_viewers, average_view_duration, bounce_rate_percent, conversion_events, revenue_usd, cost_usd, roi_percent, engagement_score, geographic_region, device_type, age_group, gender_group, notes, created_at) VALUES
(1, 10001, 1, '2025-04-10', 200000, 5000, 1500000, 180000, 8.33, 45.0, 300, 12000, 4000, 200.0, 85.5, north_america, mobile, 18_34, male, 'Strong weekend performance', '2025-04-10');

INSERT INTO digital_content_engagement (id, content_id, platform_id, engagement_date, impressions, clicks, view_time_seconds, unique_viewers, average_view_duration, bounce_rate_percent, conversion_events, revenue_usd, cost_usd, roi_percent, engagement_score, geographic_region, device_type, age_group, gender_group, notes, created_at) VALUES
(2, 10002, 2, '2025-04-11', 150000, 3000, 900000, 130000, 6.92, 38.0, 200, 8000, 3500, 128.6, 78.2, europe, desktop, 35_54, female, 'Steady weekday activity', '2025-04-11');

INSERT INTO digital_content_engagement (id, content_id, platform_id, engagement_date, impressions, clicks, view_time_seconds, unique_viewers, average_view_duration, bounce_rate_percent, conversion_events, revenue_usd, cost_usd, roi_percent, engagement_score, geographic_region, device_type, age_group, gender_group, notes, created_at) VALUES
(3, 10003, 3, '2025-04-12', 250000, 7000, 2100000, 210000, 9.5, 42.0, 500, 20000, 7000, 185.7, 92.0, asia, tablet, 18_34, female, 'High engagement during launch', '2025-04-12');

-- Corporate partnership agreements
CREATE TABLE corporate_partnership_agreement
(
    id                       INTEGER NOT NULL PRIMARY KEY,
    corporation_id           INTEGER,
    partnership_type         TEXT,
    start_date               DATE,
    end_date                 DATE,
    primary_contact_name     TEXT,
    primary_contact_email    TEXT,
    financial_commitment_usd NUMERIC,
    joint_marketing_flag     INTEGER,
    co_branded_product_flag  INTEGER,
    shared_intellectual_property_flag INTEGER,
    governance_body          TEXT,
    reporting_frequency      TEXT,
    performance_metrics      TEXT,
    renewal_option_years     INTEGER,
    termination_clause       TEXT,
    confidentiality_agreement_flag INTEGER,
    compliance_audit_flag    INTEGER,
    created_at               DATE,
    updated_at               DATE
);

INSERT INTO corporate_partnership_agreement (id, corporation_id, partnership_type, start_date, end_date, primary_contact_name, primary_contact_email, financial_commitment_usd, joint_marketing_flag, co_branded_product_flag, shared_intellectual_property_flag, governance_body, reporting_frequency, performance_metrics, renewal_option_years, termination_clause, confidentiality_agreement_flag, compliance_audit_flag, created_at, updated_at) VALUES
(1, 9001, strategic, '2024-06-01', '2029-05-31', laura_ford, lauraf@example.com, 2000000, 1, 1, 0, steering_committee, quarterly, revenue_growth, 2, mutual, 1, 1, '2024-06-01', '2024-06-01');

INSERT INTO corporate_partnership_agreement (id, corporation_id, partnership_type, start_date, end_date, primary_contact_name, primary_contact_email, financial_commitment_usd, joint_marketing_flag, co_branded_product_flag, shared_intellectual_property_flag, governance_body, reporting_frequency, performance_metrics, renewal_option_years, termination_clause, confidentiality_agreement_flag, compliance_audit_flag, created_at, updated_at) VALUES
(2, 9002, licensing, '2025-01-15', '2030-01-14', martin_lee, martinl@example.com, 1500000, 0, 1, 1, advisory_board, semiannual, market_share, 1, notice_60_days, 1, 0, '2025-01-15', '2025-01-15');

INSERT INTO corporate_partnership_agreement (id, corporation_id, partnership_type, start_date, end_date, primary_contact_name, primary_contact_email, financial_commitment_usd, joint_marketing_flag, co_branded_product_flag, shared_intellectual_property_flag, governance_body, reporting_frequency, performance_metrics, renewal_option_years, termination_clause, confidentiality_agreement_flag, compliance_audit_flag, created_at, updated_at) VALUES
(3, 9003, co_marketing, '2025-03-01', '2028-02-28', nina_paul, ninar@example.com, 1000000, 1, 0, 0, joint_steering, monthly, brand_awareness, 0, breach, 1, 1, '2025-03-01', '2025-03-01');