-- Community Service Project
CREATE TABLE community_service_project (
    project_id INTEGER PRIMARY KEY,
    project_name TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    budget REAL NOT NULL,
    num_volunteers INTEGER NOT NULL,
    city TEXT,
    region TEXT,
    partner_org TEXT,
    status TEXT,
    description TEXT,
    impact_score REAL,
    hours_logged INTEGER,
    funding_source TEXT,
    project_type TEXT,
    priority_level INTEGER,
    approved_by INTEGER,
    risk_level TEXT,
    outcome TEXT,
    notes TEXT,
    external_id TEXT
);

INSERT INTO community_service_project VALUES (1, 'GreenParkCleanup', '2024-01-15', '2024-02-20', 5000.0, 25, 'Metropolis', 'NorthRegion', 'EcoOrg', 'Completed', 'Park cleanup event', 85.5, 120, 'Grant', 'Environmental', 2, 101, 'Low', 'Success', 'No issues', 'GPC2024');
INSERT INTO community_service_project VALUES (2, 'LiteracyProgram', '2024-03-01', NULL, 12000.5, 40, 'Gotham', 'EastRegion', 'ReadNow', 'Ongoing', 'Community literacy', 78.3, 200, 'Corporate', 'Education', 1, 102, 'Medium', 'Pending', 'Midway', 'LP2024');
INSERT INTO community_service_project VALUES (3, 'ElderlyCareSupport', '2023-10-10', '2024-05-30', 25000.0, 15, 'StarCity', 'WestRegion', 'CarePlus', 'Planned', 'Support for elderly', 90.0, 0, 'Donations', 'Social', 3, 103, 'High', 'Not started', 'Planning phase', 'ECS2023');

-- Digital Innovation Hub
CREATE TABLE digital_innovation_hub (
    hub_id INTEGER PRIMARY KEY,
    hub_name TEXT NOT NULL,
    location_city TEXT,
    location_state TEXT,
    launch_date DATE,
    total_staff INTEGER,
    active_projects INTEGER,
    total_funding REAL,
    tech_focus TEXT,
    partnership_level TEXT,
    average_daily_visitors INTEGER,
    avg_session_length REAL,
    security_rating INTEGER,
    compliance_status TEXT,
    maintenance_cycle_days INTEGER,
    primary_contact_id INTEGER,
    email TEXT,
    phone TEXT,
    website TEXT,
    notes TEXT,
    external_ref TEXT
);

INSERT INTO digital_innovation_hub VALUES (1, 'TechSphere', 'Innoville', 'CA', '2022-06-01', 45, 12, 3000000.0, 'AI_ML', 'Strategic', 150, 35.5, 9, 'Compliant', 30, 201, 'contact@techsphere.com', '5551234567', 'www.techsphere.com', 'Flagship hub', 'TSH001');
INSERT INTO digital_innovation_hub VALUES (2, 'DataForge', 'Datatown', 'NY', '2023-01-15', 30, 8, 1800000.0, 'BigData', 'Collaborative', 120, 28.0, 8, 'Compliant', 45, 202, 'info@dataforge.com', '5559876543', 'www.dataforge.com', 'Focus on data platforms', 'DFG002');
INSERT INTO digital_innovation_hub VALUES (3, 'QuantumLab', 'QuantumCity', 'TX', '2021-09-20', 22, 5, 2500000.0, 'QuantumComputing', 'Research', 80, 42.0, 7, 'Pending', 60, 203, 'lab@quantumlab.com', '5555551212', 'www.quantumlabs.com', 'Emerging quantum research', 'QLB003');

-- Supply Chain Disruption
CREATE TABLE supply_chain_disruption (
    disruption_id INTEGER PRIMARY KEY,
    incident_date DATE NOT NULL,
    affected_region TEXT,
    product_category TEXT,
    severity_level INTEGER,
    estimated_loss REAL,
    cause TEXT,
    resolution_status TEXT,
    expected_recovery_date DATE,
    reported_by INTEGER,
    notes TEXT,
    mitigation_plan TEXT,
    impact_score REAL,
    duration_days INTEGER,
    alternate_supplier_used TEXT,
    logistics_delay_hours INTEGER,
    compliance_flag TEXT,
    financial_impact INTEGER,
    root_cause_analysis TEXT,
    external_reference TEXT
);

INSERT INTO supply_chain_disruption VALUES (1, '2024-04-10', 'Midwest', 'Electronics', 4, 750000.0, 'PortStrike', 'InProgress', '2024-05-15', 301, 'Awaiting data from ports', 'Diversify supplier base', 88.5, 35, 'SupplierX', 48, 'Yes', 750000, 'Labor dispute unresolved', 'SC001');
INSERT INTO supply_chain_disruption VALUES (2, '2023-12-01', 'Southeast', 'Pharmaceuticals', 5, 1200000.0, 'RegulatoryHold', 'Resolved', '2024-01-20', 302, 'Product hold lifted', 'Adjust inventory levels', 95.0, 50, 'SupplierY', 72, 'No', 1200000, 'Regulation change compliance', 'SC002');
INSERT INTO supply_chain_disruption VALUES (3, '2024-02-18', 'Northwest', 'Automotive', 3, 300000.0, 'WeatherEvent', 'Resolved', '2024-03-05', 303, 'Snowstorm cleared', 'Route rerouting', 70.0, 15, 'SupplierZ', 12, 'No', 300000, 'Unforecasted snow severity', 'SC003');

-- Regulatory Whistleblower Report
CREATE TABLE regulatory_whistleblower_report (
    report_id INTEGER PRIMARY KEY,
    reporter_id INTEGER,
    report_date DATE,
    department TEXT,
    allegation_type TEXT,
    description TEXT,
    severity INTEGER,
    status TEXT,
    investigation_start DATE,
    investigation_end DATE,
    investigator_id INTEGER,
    resolution TEXT,
    followup_actions TEXT,
    confidentiality_flag INTEGER,
    legal_action_taken TEXT,
    penalty_amount REAL,
    regulatory_body TEXT,
    case_number TEXT,
    notes TEXT,
    external_id TEXT
);

INSERT INTO regulatory_whistleblower_report VALUES (1, 901, '2024-03-12', 'Compliance', 'DataManipulation', 'Alleged alteration of financial statements', 5, 'Open', '2024-03-15', NULL, 801, NULL, 'Pending interview', 1, NULL, NULL, 'SEC', 'CASE20240312', 'Initial review completed', 'WR001');
INSERT INTO regulatory_whistleblower_report VALUES (2, 902, '2023-11-05', 'Operations', 'SafetyViolation', 'Ignored safety protocols in factory', 4, 'Closed', '2023-11-07', '2023-12-01', 802, 'Fine imposed', 'Safety training mandatory', 0, 'Fine', 25000.0, 'OSHA', 'CASE20231105', 'Fine paid', 'WR002');
INSERT INTO regulatory_whistleblower_report VALUES (3, 903, '2024-01-20', 'HR', 'Discrimination', 'Unfair hiring practices reported', 3, 'InReview', '2024-01-22', NULL, 803, NULL, 'Policy revision pending', 1, NULL, NULL, 'EEOC', 'CASE20240120', 'Awaiting investigation', 'WR003');

-- Environmental Impact Metric
CREATE TABLE environmental_impact_metric (
    metric_id INTEGER PRIMARY KEY,
    measurement_date DATE,
    location_id INTEGER,
    metric_type TEXT,
    value REAL,
    unit TEXT,
    source TEXT,
    confidence_level INTEGER,
    audited_by INTEGER,
    audit_date DATE,
    notes TEXT,
    regulatory_threshold REAL,
    exceedance_flag INTEGER,
    mitigation_action TEXT,
    reported_by INTEGER,
    reporting_period TEXT,
    weather_condition TEXT,
    data_quality_score REAL,
    external_dataset_id TEXT,
    comments TEXT
);

INSERT INTO environmental_impact_metric VALUES (1, '2024-04-01', 101, 'AirQualityPM2.5', 35.2, 'µg/m3', 'SensorA', 9, 401, '2024-04-02', 'Normal levels', 40.0, 0, 'None', 501, 'Monthly', 'Clear', 0.95, 'ENVDS001', 'Within limits');
INSERT INTO environmental_impact_metric VALUES (2, '2024-04-01', 102, 'WaterPH', 6.8, 'pH', 'LabTestB', 8, 402, '2024-04-03', 'Slightly acidic', 7.0, 0, 'Neutralization recommended', 502, 'Monthly', 'Rainy', 0.88, 'ENVDS002', 'Acceptable');
INSERT INTO environmental_impact_metric VALUES (3, '2024-04-01', 103, 'NoiseLevel', 72.5, 'dB', 'MonitorC', 7, 403, '2024-04-04', 'Above threshold', 70.0, 1, 'Install acoustic panels', 503, 'Monthly', 'Windy', 0.80, 'ENVDS003', 'Exceeds limit');

-- Fleet Route Optimization
CREATE TABLE fleet_route_optimization (
    optimization_id INTEGER PRIMARY KEY,
    fleet_id INTEGER,
    vehicle_id INTEGER,
    route_id INTEGER,
    start_time TEXT,
    end_time TEXT,
    distance_km REAL,
    fuel_consumed_liters REAL,
    avg_speed_kmh REAL,
    emissions_kg REAL,
    driver_id INTEGER,
    optimization_algorithm TEXT,
    cost_savings REAL,
    time_savings_minutes INTEGER,
    weather_conditions TEXT,
    traffic_level TEXT,
    risk_score REAL,
    notes TEXT,
    approved_by INTEGER,
    external_job_id TEXT
);

INSERT INTO fleet_route_optimizatioN VALUES (1, 201, 301, 401, '2024-04-10 08:00', '2024-04-10 12:30', 250.5, 30.2, 62.5, 55.0, 601, 'GeneticAlgo', 1500.0, 20, 'Sunny', 'Moderate', 0.12, 'Optimal route selected', 701, 'JOB001');
INSERT INTO fleet_route_optimization VALUES (2, 202, 302, 402, '2024-04-11 09:15', '2024-04-11 13:45', 300.0, 35.0, 64.0, 62.0, 602, 'SimulatedAnnealing', 1800.0, 25, 'Rainy', 'Heavy', 0.18, 'Adjusted for traffic', 702, 'JOB002');
INSERT INTO fleet_route_optimization VALUES (3, 203, 303, 403, '2024-04-12 07:30', '2024-04-12 11:00', 210.0, 25.5, 60.0, 48.0, 603, 'LinearProgramming', 1200.0, 15, 'Foggy', 'Light', 0.09, 'Standard conditions', 703, 'JOB003');

-- Customer Survey Response
CREATE TABLE customer_survey_response (
    response_id INTEGER PRIMARY KEY,
    survey_id INTEGER,
    customer_id INTEGER,
    response_date DATE,
    overall_satisfaction INTEGER,
    net_promoter_score INTEGER,
    product_quality INTEGER,
    service_speed INTEGER,
    staff_friendliness INTEGER,
    likelihood_to_return INTEGER,
    comments TEXT,
    channel TEXT,
    duration_seconds INTEGER,
    device_type TEXT,
    location_city TEXT,
    location_region TEXT,
    age_group TEXT,
    gender TEXT,
    income_bracket TEXT,
    referral_source TEXT
);

INSERT INTO customer_survey_response VALUES (1, 1001, 9001, '2024-03-20', 9, 8, 9, 8, 9, 9, 'Great experience', 'Online', 180, 'Mobile', 'Metropolis', 'North', '35-44', 'Male', '70k-90k', 'Friend');
INSERT INTO customer_survey_response VALUES (2, 1002, 9002, '2024-03-22', 7, 6, 7, 6, 7, 6, 'Average service', 'Phone', 240, 'Desktop', 'Gotham', 'East', '25-34', 'Female', '50k-70k', 'Advertisement');
INSERT INTO customer_survey_response VALUES (3, 1003, 9003, '2024-03-25', 5, 4, 5, 4, 5, 4, 'Needs improvement', 'InStore', 300, 'Tablet', 'StarCity', 'West', '45-54', 'Other', '90k-110k', 'Website');

-- Vendor Payment Schedule
CREATE TABLE vendor_payment_schedule (
    schedule_id INTEGER PRIMARY KEY,
    vendor_id INTEGER,
    contract_id INTEGER,
    payment_due_date DATE,
    amount_due REAL,
    currency TEXT,
    payment_method TEXT,
    approved_by INTEGER,
    approval_date DATE,
    status TEXT,
    invoice_number TEXT,
    payment_reference TEXT,
    early_payment_discount REAL,
    late_fee REAL,
    notes TEXT,
    accounting_code TEXT,
    fiscal_year INTEGER,
    quarter INTEGER,
    processed_by INTEGER,
    external_reference TEXT
);

INSERT INTO vendor_payment_schedule VALUES (1, 801, 901, '2024-05-15', 25000.0, 'USD', 'Wire', 601, '2024-04-30', 'Pending', 'INV001', 'PAYREF001', 500.0, 0.0, 'First installment', 'ACCT1001', 2024, 2, 701, 'VPS001');
INSERT INTO vendor_payment_schedule VALUES (2, 802, 902, '2024-06-20', 40000.0, 'EUR', 'BankTransfer', 602, '2024-05-05', 'Approved', 'INV002', 'PAYREF002', 800.0, 0.0, 'Second installment', 'ACCT1002', 2024, 2, 702, 'VPS002');
INSERT INTO vendor_payment_schedule VALUES (3, 803, 903, '2024-07-10', 15000.0, 'GBP', 'Cheque', 603, '2024-06-01', 'Paid', 'INV003', 'PAYREF003', 300.0, 0.0, 'Final payment', 'ACCT1003', 2024, 3, 703, 'VPS003');

-- Branch Energy Efficiency
CREATE TABLE branch_energy_efficiency (
    record_id INTEGER PRIMARY KEY,
    branch_id INTEGER,
    measurement_date DATE,
    total_energy_kwh REAL,
    peak_demand_kw REAL,
    renewable_share_percent REAL,
    carbon_emission_kg REAL,
    efficiency_rating INTEGER,
    hvac_system_status TEXT,
    lighting_efficiency TEXT,
    equipment_maintenance_flag INTEGER,
    notes TEXT,
    reported_by INTEGER,
    verification_date DATE,
    audit_score REAL,
    energy_saving_initiative TEXT,
    projected_savings_kwh REAL,
    actual_savings_kwh REAL,
    external_audit_id TEXT,
    compliance_status TEXT
);

INSERT INTO branch_energy_efficiency VALUES (1, 101, '2024-04-01', 120000.0, 500.0, 35.0, 42000.0, 8, 'Operational', 'LED', 0, 'No issues', 401, '2024-04-02', 92.5, 'LED retrofit', 15000.0, 14000.0, 'AUD001', 'Compliant');
INSERT INTO branch_energy_efficiency VALUES (2, 102, '2024-04-01', 95000.0, 420.0, 30.0, 34000.0, 7, 'Operational', 'LED', 1, 'Filter replacement needed', 402, '2024-04-03', 88.0, 'HVAC optimization', 12000.0, 11000.0, 'AUD002', 'Compliant');
INSERT INTO branch_energy_efficiency VALUES (3, 103, '2024-04-01', 130000.0, 550.0, 40.0, 46000.0, 9, 'Operational', 'LED', 0, 'All systems green', 403, '2024-04-04', 95.0, 'Solar panels', 20000.0, 19000.0, 'AUD003', 'Compliant');

-- Research Publication
CREATE TABLE research_publication (
    publication_id INTEGER PRIMARY KEY,
    title TEXT,
    authors TEXT,
    journal TEXT,
    publication_date DATE,
    doi TEXT,
    impact_factor REAL,
    citation_count INTEGER,
    abstract TEXT,
    keywords TEXT,
    research_area TEXT,
    funding_source TEXT,
    grant_number TEXT,
    page_start INTEGER,
    page_end INTEGER,
    volume INTEGER,
    issue INTEGER,
    url TEXT,
    peer_review_status TEXT,
    notes TEXT
);

INSERT INTO research_publication VALUES (1, 'Quantum Entanglement in Communication', 'Doe J;Smith A', 'Journal of Quantum Tech', '2023-11-15', '10.1234/qe2023', 5.6, 45, 'Study of entanglement applications', 'quantum,communication,entanglement', 'Quantum Physics', 'National Science Fund', 'GRNT001', 12, 30, 12, 4, 'http://example.com/qe2023', 'Accepted', 'Highly cited');
INSERT INTO research_publication VALUES (2, 'AI-based Predictive Maintenance', 'Lee B;Kim C', 'International AI Review', '2024-02-10', '10.5678/ai2024', 4.2, 12, 'Predictive models for equipment', 'AI,maintenance,predictive', 'Artificial Intelligence', 'Tech Innovators Grant', 'GRNT002', 45, 60, 8, 1, 'http://example.com/ai2024', 'Under Review', 'Pending citation data');
INSERT INTO research_publication VALUES (3, 'Renewable Energy Integration Challenges', 'Garcia L;Patel M', 'Energy Systems Journal', '2023-08-05', '10.9101/esj2023', 3.9, 30, 'Challenges in grid integration', 'renewable,grid,energy', 'Energy Engineering', 'Global Green Fund', 'GRNT003', 101, 120, 15, 2, 'http://example.com/esj2023', 'Published', 'Includes case studies');