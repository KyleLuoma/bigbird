-- Microfinance program information linked to districts but not overlapping core banking data
CREATE TABLE microfinance_program
(
    program_id            INTEGER NOT NULL PRIMARY KEY,
    district_id           INTEGER NOT NULL,
    start_year            INTEGER NOT NULL,
    end_year              INTEGER NOT NULL,
    target_population     INTEGER NOT NULL,
    total_funds           INTEGER NOT NULL,
    disbursed_funds       INTEGER NOT NULL,
    avg_loan_amount       INTEGER NOT NULL,
    max_loan_amount       INTEGER NOT NULL,
    min_loan_amount       INTEGER NOT NULL,
    num_loans             INTEGER NOT NULL,
    default_rate          INTEGER NOT NULL,
    repayment_rate        INTEGER NOT NULL,
    admin_cost            INTEGER NOT NULL,
    monitoring_score      INTEGER NOT NULL,
    training_sessions     INTEGER NOT NULL,
    outreach_events       INTEGER NOT NULL,
    partner_orgs          INTEGER NOT NULL,
    beneficiary_count    INTEGER NOT NULL,
    loan_term_months      INTEGER NOT NULL,
    interest_rate         INTEGER NOT NULL,
    status                INTEGER NOT NULL
);

INSERT INTO microfinance_program (program_id, district_id, start_year, end_year, target_population, total_funds, disbursed_funds, avg_loan_amount, max_loan_amount, min_loan_amount, num_loans, default_rate, repayment_rate, admin_cost, monitoring_score, training_sessions, outreach_events, partner_orgs, beneficiary_count, loan_term_months, interest_rate, status) VALUES (1, 10, 2020, 2025, 5000, 2000000, 1500000, 3000, 5000, 1000, 400, 5, 90, 150000, 85, 12, 8, 3, 4500, 36, 120, 1);
INSERT INTO microfinance_program (program_id, district_id, start_year, end_year, target_population, total_funds, disbursed_funds, avg_loan_amount, max_loan_amount, min_loan_amount, num_loans, default_rate, repayment_rate, admin_cost, monitoring_score, training_sessions, outreach_events, partner_orgs, beneficiary_count, loan_term_months, interest_rate, status) VALUES (2, 23, 2019, 2024, 7200, 3500000, 2800000, 4000, 7000, 1500, 650, 7, 88, 200000, 80, 15, 10, 5, 6800, 48, 115, 1);
INSERT INTO microfinance_program (program_id, district_id, start_year, end_year, target_population, total_funds, disbursed_funds, avg_loan_amount, max_loan_amount, min_loan_amount, num_loans, default_rate, repayment_rate, admin_cost, monitoring_score, training_sessions, outreach_events, partner_orgs, beneficiary_count, loan_term_months, interest_rate, status) VALUES (3, 5, 2021, 2026, 3000, 1200000, 950000, 2500, 4000, 800, 380, 4, 92, 110000, 88, 9, 6, 2, 2900, 30, 125, 0);

-- Government subsidy allocations by sector and year
CREATE TABLE government_subsidy
(
    subsidy_id        INTEGER NOT NULL PRIMARY KEY,
    year              INTEGER NOT NULL,
    sector_code       INTEGER NOT NULL,
    amount_granted    INTEGER NOT NULL,
    amount_disbursed  INTEGER NOT NULL,
    recipient_count   INTEGER NOT NULL,
    avg_grant_amount  INTEGER NOT NULL,
    max_grant_amount  INTEGER NOT NULL,
    min_grant_amount  INTEGER NOT NULL,
    eligibility_score INTEGER NOT NULL,
    compliance_rate   INTEGER NOT NULL,
    audit_findings    INTEGER NOT NULL,
    program_manager_id INTEGER NOT NULL,
    region_code       INTEGER NOT NULL,
    fiscal_quarter    INTEGER NOT NULL,
    adjustment_factor INTEGER NOT NULL,
    carryover_amount  INTEGER NOT NULL,
    revoked_flag      INTEGER NOT NULL,
    renewal_count     INTEGER NOT NULL,
    approval_status   INTEGER NOT NULL,
    reporting_deadline INTEGER NOT NULL,
    fund_source       INTEGER NOT NULL
);

INSERT INTO government_subsidy (subsidy_id, year, sector_code, amount_granted, amount_disbursed, recipient_count, avg_grant_amount, max_grant_amount, min_grant_amount, eligibility_score, compliance_rate, audit_findings, program_manager_id, region_code, fiscal_quarter, adjustment_factor, carryover_amount, revoked_flag, renewal_count, approval_status, reporting_deadline, fund_source) VALUES (101, 2022, 12, 5000000, 4700000, 250, 20000, 50000, 1000, 85, 95, 2, 33, 7, 2, 5, 300000, 0, 1, 1, 20221231, 3);
INSERT INTO government_subsidy (subsidy_id, year, sector_code, amount_granted, amount_disbursed, recipient_count, avg_grant_amount, max_grant_amount, min_grant_amount, eligibility_score, compliance_rate, audit_findings, program_manager_id, region_code, fiscal_quarter, adjustment_factor, carryover_amount, revoked_flag, renewal_count, approval_status, reporting_deadline, fund_source) VALUES (102, 2021, 8, 3200000, 3100000, 180, 17777, 40000, 500, 78, 90, 1, 45, 4, 3, 4, 150000, 0, 0, 1, 20211231, 2);
INSERT INTO government_subsidy (subsidy_id, year, sector_code, amount_granted, amount_disbursed, recipient_count, avg_grant_amount, max_grant_amount, min_grant_amount, eligibility_score, compliance_rate, audit_findings, program_manager_id, region_code, fiscal_quarter, adjustment_factor, carryover_amount, revoked_flag, renewal_count, approval_status, reporting_deadline, fund_source) VALUES (103, 2023, 5, 7500000, 7300000, 320, 22812, 60000, 800, 92, 97, 0, 28, 9, 1, 3, 400000, 0, 2, 1, 20231231, 1);

-- Tax abatements granted to taxpayers
CREATE TABLE tax_abatement
(
    abatement_id        INTEGER NOT NULL PRIMARY KEY,
    tax_year            INTEGER NOT NULL,
    taxpayer_id         INTEGER NOT NULL,
    industry_code       INTEGER NOT NULL,
    original_tax        INTEGER NOT NULL,
    reduced_tax         INTEGER NOT NULL,
    reduction_amount    INTEGER NOT NULL,
    applied_months      INTEGER NOT NULL,
    start_month         INTEGER NOT NULL,
    end_month           INTEGER NOT NULL,
    compliance_flag     INTEGER NOT NULL,
    audit_flag          INTEGER NOT NULL,
    reviewer_id         INTEGER NOT NULL,
    region_code         INTEGER NOT NULL,
    filing_status       INTEGER NOT NULL,
    penalty_waived      INTEGER NOT NULL,
    interest_waived     INTEGER NOT NULL,
    rebate_amount       INTEGER NOT NULL,
    effective_date      INTEGER NOT NULL,
    expiration_date     INTEGER NOT NULL,
    notes_flag          INTEGER NOT NULL,
    approval_level      INTEGER NOT NULL
);

INSERT INTO tax_abatement (abatement_id, tax_year, taxpayer_id, industry_code, original_tax, reduced_tax, reduction_amount, applied_months, start_month, end_month, compliance_flag, audit_flag, reviewer_id, region_code, filing_status, penalty_waived, interest_waived, rebate_amount, effective_date, expiration_date, notes_flag, approval_level) VALUES (201, 2022, 45001, 3, 120000, 80000, 40000, 12, 1, 12, 1, 0, 12, 5, 1, 1, 0, 20000, 20220101, 20230101, 0, 2);
INSERT INTO tax_abatement (abatement_id, tax_year, taxpayer_id, industry_code, original_tax, reduced_tax, reduction_amount, applied_months, start_month, end_month, compliance_flag, audit_flag, reviewer_id, region_code, filing_status, penalty_waived, interest_waived, rebate_amount, effective_date, expiration_date, notes_flag, approval_level) VALUES (202, 2021, 37890, 7, 95000, 60000, 35000, 6, 7, 12, 1, 1, 7, 3, 1, 0, 1, 15000, 20210701, 20220701, 1, 3);
INSERT INTO tax_abatement (abatement_id, tax_year, taxpayer_id, industry_code, original_tax, reduced_tax, reduction_amount, applied_months, start_month, end_month, compliance_flag, audit_flag, reviewer_id, region_code, filing_status, penalty_waived, interest_waived, rebate_amount, effective_date, expiration_date, notes_flag, approval_level) VALUES (203, 2023, 51234, 2, 200000, 150000, 50000, 12, 1, 12, 1, 0, 19, 8, 1, 1, 0, 25000, 20230101, 20240101, 0, 1);

-- Urban infrastructure projects tracking
CREATE TABLE urban_infrastructure_project
(
    project_id          INTEGER NOT NULL PRIMARY KEY,
    district_id         INTEGER NOT NULL,
    project_type        INTEGER NOT NULL,
    budget_estimated    INTEGER NOT NULL,
    budget_spent        INTEGER NOT NULL,
    start_date          INTEGER NOT NULL,
    planned_end_date    INTEGER NOT NULL,
    actual_end_date     INTEGER NOT NULL,
    contractor_id       INTEGER NOT NULL,
    num_contractors    INTEGER NOT NULL,
    permits_obtained    INTEGER NOT NULL,
    permits_pending    INTEGER NOT NULL,
    environmental_score INTEGER NOT NULL,
    safety_incidents    INTEGER NOT NULL,
    workforce_size      INTEGER NOT NULL,
    phases_completed    INTEGER NOT NULL,
    milestones_achieved INTEGER NOT NULL,
    public_meetings     INTEGER NOT NULL,
    complaints_received INTEGER NOT NULL,
    impact_score        INTEGER NOT NULL,
    funding_source      INTEGER NOT NULL,
    status              INTEGER NOT NULL
);

INSERT INTO urban_infrastructure_project (project_id, district_id, project_type, budget_estimated, budget_spent, start_date, planned_end_date, actual_end_date, contractor_id, num_contractors, permits_obtained, permits_pending, environmental_score, safety_incidents, workforce_size, phases_completed, milestones_achieved, public_meetings, complaints_received, impact_score, funding_source, status) VALUES (301, 12, 1, 8000000, 7500000, 20200115, 20221231, 20221130, 55, 3, 5, 0, 92, 1, 150, 4, 6, 12, 3, 88, 2, 1);
INSERT INTO urban_infrastructure_project (project_id, district_id, project_type, budget_estimated, budget_spent, start_date, planned_end_date, actual_end_date, contractor_id, num_contractors, permits_obtained, permits_pending, environmental_score, safety_incidents, workforce_size, phases_completed, milestones_achieved, public_meetings, complaints_received, impact_score, funding_source, status) VALUES (302, 8, 2, 15000000, 15800000, 20210301, 20231215, 20231220, 78, 5, 8, 2, 85, 2, 240, 5, 9, 20, 5, 81, 3, 0);
INSERT INTO urban_infrastructure_project (project_id, district_id, project_type, budget_estimated, budget_spent, start_date, planned_end_date, actual_end_date, contractor_id, num_contractors, permits_obtained, permits_pending, environmental_score, safety_incidents, workforce_size, phases_completed, milestones_achieved, public_meetings, complaints_received, impact_score, funding_source, status) VALUES (303, 19, 3, 5000000, 4700000, 20220510, 20230930, 20230928, 62, 2, 4, 0, 90, 0, 100, 3, 5, 8, 2, 86, 1, 1);

-- Water supply network characteristics
CREATE TABLE water_supply_network
(
    network_id                INTEGER NOT NULL PRIMARY KEY,
    district_id               INTEGER NOT NULL,
    pipe_length_km            INTEGER NOT NULL,
    avg_diameter_cm           INTEGER NOT NULL,
    water_source_id           INTEGER NOT NULL,
    daily_capacity_liters     INTEGER NOT NULL,
    avg_flow_rate             INTEGER NOT NULL,
    pressure_kpa              INTEGER NOT NULL,
    leak_reports              INTEGER NOT NULL,
    maintenance_events        INTEGER NOT NULL,
    upgrade_year              INTEGER NOT NULL,
    compliance_grade          INTEGER NOT NULL,
    water_quality_score       INTEGER NOT NULL,
    population_served         INTEGER NOT NULL,
    avg_consumption_per_capita INTEGER NOT NULL,
    billing_rate              INTEGER NOT NULL,
    revenue_collected         INTEGER NOT NULL,
    tariff_category           INTEGER NOT NULL,
    emergency_reserve_liters  INTEGER NOT NULL,
    sensor_count              INTEGER NOT NULL,
    operational_status        INTEGER NOT NULL,
    notes_flag                INTEGER NOT NULL
);

INSERT INTO water_supply_network (network_id, district_id, pipe_length_km, avg_diameter_cm, water_source_id, daily_capacity_liters, avg_flow_rate, pressure_kpa, leak_reports, maintenance_events, upgrade_year, compliance_grade, water_quality_score, population_served, avg_consumption_per_capita, billing_rate, revenue_collected, tariff_category, emergency_reserve_liters, sensor_count, operational_status, notes_flag) VALUES (401, 11, 250, 30, 5, 12000000, 500, 250, 12, 8, 2020, 2, 95, 85000, 140, 3, 2550000, 1, 200000, 15, 1, 0);
INSERT INTO water_supply_network (network_id, district_id, pipe_length_km, avg_diameter_cm, water_source_id, daily_capacity_liters, avg_flow_rate, pressure_kpa, leak_reports, maintenance_events, upgrade_year, compliance_grade, water_quality_score, population_served, avg_consumption_per_capita, billing_rate, revenue_collected, tariff_category, emergency_reserve_liters, sensor_count, operational_status, notes_flag) VALUES (402, 6, 180, 25, 3, 9000000, 400, 230, 7, 5, 2019, 1, 92, 60000, 150, 4, 1800000, 2, 150000, 12, 1, 1);
INSERT INTO water_supply_network (network_id, district_id, pipe_length_km, avg_diameter_cm, water_source_id, daily_capacity_liters, avg_flow_rate, pressure_kpa, leak_reports, maintenance_events, upgrade_year, compliance_grade, water_quality_score, population_served, avg_consumption_per_capita, billing_rate, revenue_collected, tariff_category, emergency_reserve_liters, sensor_count, operational_status, notes_flag) VALUES (403, 14, 300, 35, 7, 15000000, 600, 260, 20, 10, 2021, 3, 97, 110000, 135, 5, 3400000, 1, 250000, 18, 1, 0);

-- Energy tariff definitions by region and consumer type
CREATE TABLE energy_tariff
(
    tariff_id               INTEGER NOT NULL PRIMARY KEY,
    effective_year          INTEGER NOT NULL,
    tariff_type             INTEGER NOT NULL,
    base_rate               INTEGER NOT NULL,
    peak_rate               INTEGER NOT NULL,
    offpeak_rate            INTEGER NOT NULL,
    fixed_charge            INTEGER NOT NULL,
    demand_charge           INTEGER NOT NULL,
    renewable_credits       INTEGER NOT NULL,
    subsidy_amount          INTEGER NOT NULL,
    region_code             INTEGER NOT NULL,
    consumer_category       INTEGER NOT NULL,
    max_limit               INTEGER NOT NULL,
    min_limit               INTEGER NOT NULL,
    penalty_rate            INTEGER NOT NULL,
    adjustment_factor       INTEGER NOT NULL,
    review_cycle_months     INTEGER NOT NULL,
    last_review_year        INTEGER NOT NULL,
    approval_status         INTEGER NOT NULL,
    gov_approval_flag      INTEGER NOT NULL,
    audit_score             INTEGER NOT NULL,
    notes_flag              INTEGER NOT NULL
);

INSERT INTO energy_tariff (tariff_id, effective_year, tariff_type, base_rate, peak_rate, offpeak_rate, fixed_charge, demand_charge, renewable_credits, subsidy_amount, region_code, consumer_category, max_limit, min_limit, penalty_rate, adjustment_factor, review_cycle_months, last_review_year, approval_status, gov_approval_flag, audit_score, notes_flag) VALUES (501, 2022, 1, 150, 250, 100, 2000, 300, 50, 0, 4, 2, 5000, 500, 20, 5, 12, 2022, 1, 1, 90, 0);
INSERT INTO energy_tariff (tariff_id, effective_year, tariff_type, base_rate, peak_rate, offpeak_rate, fixed_charge, demand_charge, renewable_credits, subsidy_amount, region_code, consumer_category, max_limit, min_limit, penalty_rate, adjustment_factor, review_cycle_months, last_review_year, approval_status, gov_approval_flag, audit_score, notes_flag) VALUES (502, 2021, 2, 180, 300, 120, 2500, 350, 70, 1000, 7, 3, 6000, 600, 25, 4, 6, 2021, 1, 0, 88, 1);
INSERT INTO energy_tariff (tariff_id, effective_year, tariff_type, base_rate, peak_rate, offpeak_rate, fixed_charge, demand_charge, renewable_credits, subsidy_amount, region_code, consumer_category, max_limit, min_limit, penalty_rate, adjustment_factor, review_cycle_months, last_review_year, approval_status, gov_approval_flag, audit_score, notes_flag) VALUES (503, 2023, 1, 160, 260, 110, 2100, 320, 60, 0, 2, 1, 5500, 550, 22, 5, 12, 2023, 0, 1, 92, 0);

-- Digital infrastructure upgrade tracking
CREATE TABLE digital_infrastructure_upgrade
(
    upgrade_id               INTEGER NOT NULL PRIMARY KEY,
    year                     INTEGER NOT NULL,
    region_code              INTEGER NOT NULL,
    fiber_length_km          INTEGER NOT NULL,
    wireless_nodes           INTEGER NOT NULL,
    data_center_capacity_tb  INTEGER NOT NULL,
    latency_ms               INTEGER NOT NULL,
    packet_loss_percent      INTEGER NOT NULL,
    uptime_percent           INTEGER NOT NULL,
    upgrade_cost             INTEGER NOT NULL,
    funded_by                INTEGER NOT NULL,
    vendor_id                INTEGER NOT NULL,
    contracts_signed         INTEGER NOT NULL,
    phases_completed         INTEGER NOT NULL,
    milestones_met           INTEGER NOT NULL,
    incidents_reported       INTEGER NOT NULL,
    security_incidents       INTEGER NOT NULL,
    compliance_audit_score   INTEGER NOT NULL,
    green_certification_level INTEGER NOT NULL,
    projected_bandwidth_gbps INTEGER NOT NULL,
    actual_bandwidth_gbps    INTEGER NOT NULL,
    roi_months               INTEGER NOT NULL,
    status                   INTEGER NOT NULL
);

INSERT INTO digital_infrastructure_upgrade (upgrade_id, year, region_code, fiber_length_km, wireless_nodes, data_center_capacity_tb, latency_ms, packet_loss_percent, uptime_percent, upgrade_cost, funded_by, vendor_id, contracts_signed, phases_completed, milestones_met, incidents_reported, security_incidents, compliance_audit_score, green_certification_level, projected_bandwidth_gbps, actual_bandwidth_gbps, roi_months, status) VALUES (601, 2022, 5, 1200, 250, 500, 30, 2, 99, 8000000, 1, 33, 4, 3, 3, 1, 0, 95, 2, 1000, 950, 24, 1);
INSERT INTO digital_infrastructure_upgrade (upgrade_id, year, region_code, fiber_length_km, wireless_nodes, data_center_capacity_tb, latency_ms, packet_loss_percent, uptime_percent, upgrade_cost, funded_by, vendor_id, contracts_signed, phases_completed, milestones_met, incidents_reported, security_incidents, compliance_audit_score, green_certification_level, projected_bandwidth_gbps, actual_bandwidth_gbps, roi_months, status) VALUES (602, 2021, 8, 900, 180, 350, 35, 3, 98, 6000000, 2, 44, 3, 2, 2, 2, 1, 90, 1, 800, 770, 30, 0);
INSERT INTO digital_infrastructure_upgrade (upgrade_id, year, region_code, fiber_length_km, wireless_nodes, data_center_capacity_tb, latency_ms, packet_loss_percent, uptime_percent, upgrade_cost, funded_by, vendor_id, contracts_signed, phases_completed, milestones_met, incidents_reported, security_incidents, compliance_audit_score, green_certification_level, projected_bandwidth_gbps, actual_bandwidth_gbps, roi_months, status) VALUES (603, 2023, 3, 1500, 300, 650, 28, 1, 99, 9500000, 1, 51, 5, 4, 4, 0, 0, 97, 3, 1200, 1180, 20, 1);

-- Community health center statistics
CREATE TABLE community_health_center
(
    center_id                INTEGER NOT NULL PRIMARY KEY,
    district_id              INTEGER NOT NULL,
    beds                     INTEGER NOT NULL,
    doctors                  INTEGER NOT NULL,
    nurses                   INTEGER NOT NULL,
    staff                    INTEGER NOT NULL,
    annual_visits            INTEGER NOT NULL,
    immunizations_administered INTEGER NOT NULL,
    chronic_cases_managed   INTEGER NOT NULL,
    avg_wait_time_minutes   INTEGER NOT NULL,
    equipment_count          INTEGER NOT NULL,
    funding_received         INTEGER NOT NULL,
    operating_budget         INTEGER NOT NULL,
    maintenance_events       INTEGER NOT NULL,
    inspection_score         INTEGER NOT NULL,
    emergency_cases         INTEGER NOT NULL,
    referral_count           INTEGER NOT NULL,
    telemedicine_sessions   INTEGER NOT NULL,
    health_education_events INTEGER NOT NULL,
    community_outreach_events INTEGER NOT NULL,
    satisfaction_score       INTEGER NOT NULL,
    status                   INTEGER NOT NULL
);

INSERT INTO community_health_center (center_id, district_id, beds, doctors, nurses, staff, annual_visits, immunizations_administered, chronic_cases_managed, avg_wait_time_minutes, equipment_count, funding_received, operating_budget, maintenance_events, inspection_score, emergency_cases, referral_count, telemedicine_sessions, health_education_events, community_outreach_events, satisfaction_score, status) VALUES (701, 9, 45, 12, 30, 80, 25000, 18000, 3200, 25, 150, 2000000, 1800000, 12, 88, 500, 200, 1500, 40, 30, 85, 1);
INSERT INTO community_health_center (center_id, district_id, beds, doctors, nurses, staff, annual_visits, immunizations_administered, chronic_cases_managed, avg_wait_time_minutes, equipment_count, funding_received, operating_budget, maintenance_events, inspection_score, emergency_cases, referral_count, telemedicine_sessions, health_education_events, community_outreach_events, satisfaction_score, status) VALUES (702, 2, 60, 18, 45, 110, 35000, 26000, 4800, 20, 200, 3000000, 2700000, 15, 92, 650, 300, 2100, 55, 45, 90, 1);
INSERT INTO community_health_center (center_id, district_id, beds, doctors, nurses, staff, annual_visits, immunizations_administered, chronic_cases_managed, avg_wait_time_minutes, equipment_count, funding_received, operating_budget, maintenance_events, inspection_score, emergency_cases, referral_count, telemedicine_sessions, health_education_events, community_outreach_events, satisfaction_score, status) VALUES (703, 15, 30, 8, 20, 60, 18000, 13000, 2100, 30, 120, 1500000, 1300000, 10, 85, 400, 150, 1200, 35, 25, 80, 0);

-- Transportation maintenance log for vehicle fleet
CREATE TABLE transportation_maintenance_log
(
    log_id                INTEGER NOT NULL PRIMARY KEY,
    vehicle_id            INTEGER NOT NULL,
    vehicle_type          INTEGER NOT NULL,
    maintenance_date      INTEGER NOT NULL,
    mileage               INTEGER NOT NULL,
    service_type          INTEGER NOT NULL,
    cost                  INTEGER NOT NULL,
    downtime_hours        INTEGER NOT NULL,
    parts_replaced        INTEGER NOT NULL,
    vendor_id             INTEGER NOT NULL,
    compliance_flag       INTEGER NOT NULL,
    inspection_score      INTEGER NOT NULL,
    fuel_efficiency_before INTEGER NOT NULL,
    fuel_efficiency_after INTEGER NOT NULL,
    emissions_before      INTEGER NOT NULL,
    emissions_after       INTEGER NOT NULL,
    warranty_claim_flag   INTEGER NOT NULL,
    next_service_due_km   INTEGER NOT NULL,
    notes_flag            INTEGER NOT NULL,
    approved_by           INTEGER NOT NULL,
    audit_flag            INTEGER NOT NULL,
    status                INTEGER NOT NULL
);

INSERT INTO transportation_maintenance_log (log_id, vehicle_id, vehicle_type, maintenance_date, mileage, service_type, cost, downtime_hours, parts_replaced, vendor_id, compliance_flag, inspection_score, fuel_efficiency_before, fuel_efficiency_after, emissions_before, emissions_after, warranty_claim_flag, next_service_due_km, notes_flag, approved_by, audit_flag, status) VALUES (801, 1001, 1, 20220715, 45000, 2, 800, 5, 3, 22, 1, 90, 12, 13, 150, 140, 0, 60000, 0, 5, 0, 1);
INSERT INTO transportation_maintenance_log (log_id, vehicle_id, vehicle_type, maintenance_date, mileage, service_type, cost, downtime_hours, parts_replaced, vendor_id, compliance_flag, inspection_score, fuel_efficiency_before, fuel_efficiency_after, emissions_before, emissions_after, warranty_claim_flag, next_service_due_km, notes_flag, approved_by, audit_flag, status) VALUES (802, 1005, 2, 20220930, 72000, 3, 1200, 8, 5, 27, 1, 85, 10, 11, 180, 170, 1, 90000, 1, 8, 1, 0);
INSERT INTO transportation_maintenance_log (log_id, vehicle_id, vehicle_type, maintenance_date, mileage, service_type, cost, downtime_hours, parts_replaced, vendor_id, compliance_flag, inspection_score, fuel_efficiency_before, fuel_efficiency_after, emissions_before, emissions_after, warranty_claim_flag, next_service_due_km, notes_flag, approved_by, audit_flag, status) VALUES (803, 1010, 1, 20221205, 60000, 1, 500, 3, 2, 19, 1, 92, 13, 14, 130, 125, 0, 75000, 0, 6, 0, 1);

-- Agricultural cooperative performance data
CREATE TABLE agricultural_cooperative
(
    coop_id                     INTEGER NOT NULL PRIMARY KEY,
    district_id                 INTEGER NOT NULL,
    member_farms                INTEGER NOT NULL,
    total_acreage               INTEGER NOT NULL,
    avg_yield_per_acre         INTEGER NOT NULL,
    total_production            INTEGER NOT NULL,
    market_share_percent        INTEGER NOT NULL,
    annual_revenue              INTEGER NOT NULL,
    subsidy_received            INTEGER NOT NULL,
    equipment_units             INTEGER NOT NULL,
    storage_capacity_tons       INTEGER NOT NULL,
    processing_units            INTEGER NOT NULL,
    training_sessions           INTEGER NOT NULL,
    export_volume               INTEGER NOT NULL,
    domestic_volume             INTEGER NOT NULL,
    certifications_obtained     INTEGER NOT NULL,
    quality_score               INTEGER NOT NULL,
    waste_reduction_percent     INTEGER NOT NULL,
    investment_funded           INTEGER NOT NULL,
    loan_amount                 INTEGER NOT NULL,
    interest_rate_basis_points  INTEGER NOT NULL,
    status                      INTEGER NOT NULL
);

INSERT INTO agricultural_cooperative (coop_id, district_id, member_farms, total_acreage, avg_yield_per_acre, total_production, market_share_percent, annual_revenue, subsidy_received, equipment_units, storage_capacity_tons, processing_units, training_sessions, export_volume, domestic_volume, certifications_obtained, quality_score, waste_reduction_percent, investment_funded, loan_amount, interest_rate_basis_points, status) VALUES (901, 4, 120, 4500, 3000, 13500000, 12, 8000000, 500000, 80, 2000, 15, 25, 4000000, 6000000, 5, 88, 15, 2000000, 300000, 75, 1);
INSERT INTO agricultural_cooperative (coop_id, district_id, member_farms, total_acreage, avg_yield_per_acre, total_production, market_share_percent, annual_revenue, subsidy_received, equipment_units, storage_capacity_tons, processing_units, training_sessions, export_volume, domestic_volume, certifications_obtained, quality_score, waste_reduction_percent, investment_funded, loan_amount, interest_rate_basis_points, status) VALUES (902, 13, 95, 3800, 2800, 10640000, 9, 6500000, 350000, 70, 1500, 12, 20, 3500000, 5000000, 4, 85, 12, 1500000, 250000, 80, 0);
INSERT INTO agricultural_cooperative (coop_id, district_id, member_farms, total_acreage, avg_yield_per_acre, total_production, market_share_percent, annual_revenue, subsidy_received, equipment_units, storage_capacity_tons, processing_units, training_sessions, export_volume, domestic_volume, certifications_obtained, quality_score, waste_reduction_percent, investment_funded, loan_amount, interest_rate_basis_points, status) VALUES (903, 7, 150, 6000, 3200, 19200000, 15, 12000000, 800000, 95, 2500, 20, 30, 8000000, 11000000, 6, 90, 18, 3000000, 400000, 70, 1);