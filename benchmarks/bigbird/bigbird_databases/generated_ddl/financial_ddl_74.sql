-- Branch financial summary table
CREATE TABLE branch_financial_summary (
    branch_id INTEGER NOT NULL,
    fiscal_year INTEGER NOT NULL,
    total_deposits REAL NOT NULL,
    total_loans REAL NOT NULL,
    net_interest_margin REAL NOT NULL,
    operating_expenses REAL NOT NULL,
    noninterest_income REAL NOT NULL,
    loan_loss_provisions REAL NOT NULL,
    capital_adequacy_ratio REAL NOT NULL,
    liquidity_ratio REAL NOT NULL,
    return_on_assets REAL NOT NULL,
    return_on_equity REAL NOT NULL,
    risk_weighted_assets REAL NOT NULL,
    number_of_employees INTEGER NOT NULL,
    average_salary REAL NOT NULL,
    total_assets REAL NOT NULL,
    total_equity REAL NOT NULL,
    branch_region TEXT NOT NULL,
    branch_city TEXT NOT NULL,
    audit_status TEXT NOT NULL,
    compliance_score INTEGER NOT NULL,
    last_audit_date DATE NOT NULL,
    created_timestamp DATE NOT NULL,
    updated_timestamp DATE NOT NULL
);

INSERT INTO branch_financial_summary VALUES (101,2022,1250000.00,950000.00,1.85,300000.00,150000.00,25000.00,12.5,45.0,0.9,1.6,800000.00,45,52000.00,2100000.00,500000.00,'North','Springfield','Passed',85,'2022-12-15','2022-01-01','2022-12-31');
INSERT INTO branch_financial_summary VALUES (102,2022,980000.00,700000.00,2.10,260000.00,120000.00,20000.00,13.2,48.5,0.85,1.4,650000.00,38,47000.00,1650000.00,420000.00,'South','Shelbyville','Pending',78,'2022-12-20','2022-01-01','2022-12-31');
INSERT INTO branch_financial_summary VALUES (103,2022,1400000.00,1100000.00,1.95,340000.00,180000.00,30000.00,11.8,42.0,0.92,1.8,900000.00,52,56000.00,2450000.00,620000.00,'East','Ogden','Passed',90,'2022-12-10','2022-01-01','2022-12-31');

-- Customer risk profile table
CREATE TABLE customer_risk_profile (
    customer_id INTEGER NOT NULL,
    risk_score REAL NOT NULL,
    risk_category TEXT NOT NULL,
    credit_utilization REAL NOT NULL,
    delinquency_rate REAL NOT NULL,
    num_open_accounts INTEGER NOT NULL,
    avg_balance REAL NOT NULL,
    max_drawdown REAL NOT NULL,
    income_bracket TEXT NOT NULL,
    employment_status TEXT NOT NULL,
    debt_to_income_ratio REAL NOT NULL,
    age INTEGER NOT NULL,
    marital_status TEXT NOT NULL,
    home_ownership TEXT NOT NULL,
    num_credit_inquiries INTEGER NOT NULL,
    recent_late_payments INTEGER NOT NULL,
    fraud_flag TEXT NOT NULL,
    risk_assessment_date DATE NOT NULL,
    model_version TEXT NOT NULL,
    region TEXT NOT NULL,
    segment TEXT NOT NULL,
    avg_monthly_spend REAL NOT NULL,
    credit_history_length INTEGER NOT NULL,
    recent_address_change DATE NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    notes TEXT
);

INSERT INTO customer_risk_profile VALUES (2001,72.5,'Medium',0.45,0.02,5,3400.00,1200.00,'Mid','FullTime',0.35,38,'Married','Owned',2,0,'No','2022-11-30','v1.2','West','Retail',560.00,8,'2022-10-15','2022-01-01','2022-12-01','Reviewed annually');
INSERT INTO customer_risk_profile VALUES (2002,88.1,'High',0.78,0.10,7,2100.00,2500.00,'Low','PartTime',0.58,45,'Single','Rented',4,2,'Yes','2022-12-05','v1.2','East','Wholesale',430.00,5,'2022-09-20','2022-01-01','2022-12-01','Flagged for review');
INSERT INTO customer_risk_profile VALUES (2003,45.3,'Low',0.22,0.00,3,7800.00,500.00,'High','FullTime',0.20,29,'Single','Owned',1,0,'No','2022-12-01','v1.2','North','Online',720.00,10,'2022-11-01','2022-01-01','2022-12-01','Stable');

-- Digital channel usage table
CREATE TABLE digital_channel_usage (
    channel_id INTEGER NOT NULL,
    channel_name TEXT NOT NULL,
    total_visits INTEGER NOT NULL,
    unique_users INTEGER NOT NULL,
    avg_session_duration REAL NOT NULL,
    bounce_rate REAL NOT NULL,
    conversion_rate REAL NOT NULL,
    usage_date DATE NOT NULL,
    month INTEGER NOT NULL,
    year INTEGER NOT NULL,
    device_type TEXT NOT NULL,
    operating_system TEXT NOT NULL,
    browser TEXT NOT NULL,
    country TEXT NOT NULL,
    city TEXT NOT NULL,
    traffic_source TEXT NOT NULL,
    campaigns_linked TEXT NOT NULL,
    api_calls INTEGER NOT NULL,
    error_rate REAL NOT NULL,
    data_transferred_gb REAL NOT NULL,
    peak_concurrent_users INTEGER NOT NULL,
    downtime_minutes INTEGER NOT NULL,
    maintenance_window TEXT NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    notes TEXT,
    version TEXT NOT NULL
);

INSERT INTO digital_channel_usage VALUES (1,'MobileApp',12450,8300,5.2,0.34,0.07,'2022-12-01',12,2022,'Mobile','iOS','Safari','USA','Chicago','Organic','SummerPromo',3456,0.01,12.5,210,15,'02:00-03:00','2022-01-01','2022-12-01','Stable performance','v3');
INSERT INTO digital_channel_usage VALUES (2,'WebPortal',23800,15200,7.1,0.27,0.12,'2022-12-01',12,2022,'Desktop','Windows','Chrome','Canada','Toronto','Paid','HolidayCampaign',5789,0.02,22.3,340,8,'03:00-04:00','2022-01-01','2022-12-01','Minor latency spikes','v3');
INSERT INTO digital_channel_usage VALUES (3,'API',45200,0,0.0,0.00,0.00,'2022-12-01',12,2022,'Server','Linux','N/A','Germany','Berlin','Partner','PartnerIntegration',12457,0.00,30.0,1200,2,'04:00-05:00','2022-01-01','2022-12-01','No issues','v3');

-- Regional transportation statistics table
CREATE TABLE regional_transportation_stats (
    region_id INTEGER NOT NULL,
    year INTEGER NOT NULL,
    total_passengers INTEGER NOT NULL,
    passenger_km REAL NOT NULL,
    total_freight_tons REAL NOT NULL,
    freight_km REAL NOT NULL,
    avg_delay_minutes REAL NOT NULL,
    on_time_performance REAL NOT NULL,
    number_of_routes INTEGER NOT NULL,
    number_of_vehicles INTEGER NOT NULL,
    fuel_consumption_liters REAL NOT NULL,
    emissions_tonnes REAL NOT NULL,
    accidents_reported INTEGER NOT NULL,
    infrastructure_investment REAL NOT NULL,
    public_subsidy REAL NOT NULL,
    ticket_revenue REAL NOT NULL,
    freight_revenue REAL NOT NULL,
    operational_costs REAL NOT NULL,
    net_profit REAL NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    notes TEXT,
    data_source TEXT NOT NULL,
    region_name TEXT NOT NULL,
    population INTEGER NOT NULL,
    gdp REAL NOT NULL,
    urbanization_rate REAL NOT NULL,
    average_commute_time REAL NOT NULL
);

INSERT INTO regional_transportation_stats VALUES (10,2022,8500000,34000000.0,720000.0,2600000.0,3.5,92.0,120,750,450000.0,2100.0,15,12500000.0,8000000.0,5400000.0,3100000.0,9000000.0,2100000.0,'2022-01-01','2022-12-31','Yearly summary','TransportDept','Midland',5000000,250000000.0,78.5,28.0);
INSERT INTO regional_transportation_stats VALUES (11,2022,6200000,25000000.0,500000.0,1800000.0,4.2,89.5,95,620,350000.0,1600.0,9,9500000.0,6200000.0,4100000.0,2400000.0,7200000.0,1300000.0,'2022-01-01','2022-12-31','Yearly summary','TransportDept','Eastside',3200000,180000000.0,74.2,27.5);
INSERT INTO regional_transportation_stats VALUES (12,2022,10200000,41000000.0,950000.0,3400000.0,2.8,95.3,150,950,560000.0,2600.0,21,15800000.0,10200000.0,6800000.0,4000000.0,11500000.0,2300000.0,'2022-01-01','2022-12-31','Yearly summary','TransportDept','Westfield',7200000,340000000.0,81.0,29.2);

-- Market trend analysis table
CREATE TABLE market_trend_analysis (
    analysis_id INTEGER NOT NULL,
    market_segment TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    avg_price REAL NOT NULL,
    price_volatility REAL NOT NULL,
    volume_traded INTEGER NOT NULL,
    market_share REAL NOT NULL,
    competitor_count INTEGER NOT NULL,
    new_entries INTEGER NOT NULL,
    exits INTEGER NOT NULL,
    regulatory_changes TEXT NOT NULL,
    macro_indicator TEXT NOT NULL,
    sentiment_score REAL NOT NULL,
    analyst_rating TEXT NOT NULL,
    forecast_next_quarter REAL NOT NULL,
    forecast_next_year REAL NOT NULL,
    confidence_interval_low REAL NOT NULL,
    confidence_interval_high REAL NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    notes TEXT,
    data_provider TEXT NOT NULL,
    currency TEXT NOT NULL,
    region TEXT NOT NULL,
    sector TEXT NOT NULL,
    trend_category TEXT NOT NULL,
    risk_level TEXT NOT NULL
);

INSERT INTO market_trend_analysis VALUES (1001,'ConsumerElectronics','2022-01-01','2022-12-31',245.75,12.5,7800000,18.3,45,5,2,'TaxChange2022','GDPGrowth','Positive','Buy',260.00,290.00,250.00,300.00,'2022-01-01','2022-12-31','Steady growth','MarketDataInc','USD','NorthAmerica','Retail','Uptrend','Medium');
INSERT INTO market_trend_analysis VALUES (1002,'RenewableEnergy','2022-01-01','2022-12-31',78.20,8.1,4200000,22.7,30,3,1,'IncentivePhase','Inflation','Neutral','Hold',85.00,95.00,80.00,100.00,'2022-01-01','2022-12-31','Volatile due to policy','EnergyStats','USD','Europe','Energy','Uptrend','Low');
INSERT INTO market_trend_analysis VALUES (1003,'Automotive','2022-01-01','2022-12-31',31200.00,1500.00,1500000,12.5,60,2,4,'EmissionsRegulation','InterestRate','Negative','Sell',28500.00,27000.00,26000.00,31000.00,'2022-01-01','2022-12-31','Declining demand','AutoReports','EUR','Asia','Manufacturing','Downtrend','High');

-- Service provider agreement table
CREATE TABLE service_provider_agreement (
    agreement_id INTEGER NOT NULL,
    provider_id INTEGER NOT NULL,
    service_type TEXT NOT NULL,
    contract_start_date DATE NOT NULL,
    contract_end_date DATE NOT NULL,
    monthly_fee REAL NOT NULL,
    annual_increment_percentage REAL NOT NULL,
    service_level_agreement TEXT NOT NULL,
    uptime_guarantee REAL NOT NULL,
    response_time_seconds INTEGER NOT NULL,
    penalty_rate REAL NOT NULL,
    renewal_option TEXT NOT NULL,
    termination_notice_days INTEGER NOT NULL,
    confidentiality_clause TEXT NOT NULL,
    data_retention_months INTEGER NOT NULL,
    compliance_requirements TEXT NOT NULL,
    audit_frequency_months INTEGER NOT NULL,
    authorized_contacts TEXT NOT NULL,
    primary_contact_name TEXT NOT NULL,
    primary_contact_email TEXT NOT NULL,
    secondary_contact_name TEXT NOT NULL,
    secondary_contact_phone TEXT NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    notes TEXT,
    jurisdiction TEXT NOT NULL,
    currency TEXT NOT NULL,
    payment_terms TEXT NOT NULL,
    insurance_requirements TEXT NOT NULL,
    escrow_account TEXT NOT NULL
);

INSERT INTO service_provider_agreement VALUES (5001,300,'CloudHosting','2022-01-01','2025-12-31',12000.00,3.5,'Gold','99.9',120,0.02,'Automatic',90,'Standard','24','ISO27001','12','John Doe','John Doe','john.doe@example.com','Jane Smith','5551234567','2022-01-01','2022-12-31','Initial contract','USA','USD','Net30','LiabilityCover','Escrow123');
INSERT INTO service_provider_agreement VALUES (5002,301,'DataProcessing','2022-06-01','2024-05-31',8000.00,2.0,'Silver','99.5',180,0.03,'Manual',60,'Restricted','18','GDPR','6','Alice Brown','Alice Brown','alice.brown@example.com','Bob White','5559876543','2022-06-01','2022-12-31','Renewal pending','EU','EUR','Net45','DataProtection','Escrow456');
INSERT INTO service_provider_agreement VALUES (5003,302,'NetworkMaintenance','2021-03-15','2026-03-14',15000.00,4.0,'Platinum','99.99',90,0.015,'Automatic',120,'Comprehensive','36','PCI-DSS','12','Carlos Ruiz','Carlos Ruiz','carlos.ruiz@example.com','Diana Lee','5555551212','2021-03-15','2022-12-31','Extended support','Canada','CAD','Net30','CyberLiability','Escrow789');

-- Environmental impact assessment detail table
CREATE TABLE environmental_impact_assessment_detail (
    assessment_id INTEGER NOT NULL,
    project_id INTEGER NOT NULL,
    assessment_date DATE NOT NULL,
    assessor_name TEXT NOT NULL,
    region TEXT NOT NULL,
    habitat_type TEXT NOT NULL,
    species_affected TEXT NOT NULL,
    mitigation_measures TEXT NOT NULL,
    impact_score REAL NOT NULL,
    likelihood TEXT NOT NULL,
    severity TEXT NOT NULL,
    compliance_status TEXT NOT NULL,
    regulatory_body TEXT NOT NULL,
    report_version TEXT NOT NULL,
    data_source TEXT NOT NULL,
    carbon_emissions_tonnes REAL NOT NULL,
    water_usage_cubic_meters REAL NOT NULL,
    waste_generated_tonnes REAL NOT NULL,
    noise_level_db REAL NOT NULL,
    air_quality_index INTEGER NOT NULL,
    biodiversity_index REAL NOT NULL,
    land_use_change_sqkm REAL NOT NULL,
    public_consultation_date DATE NOT NULL,
    stakeholder_feedback TEXT NOT NULL,
    follow_up_actions TEXT NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    notes TEXT,
    approval_status TEXT NOT NULL,
    funding_source TEXT NOT NULL
);

INSERT INTO environmental_impact_assessment_detail VALUES (7001,4001,'2022-08-15','Emma Green','Northwest','Forest','Deer, Owl','Reforestation, BufferZones',3.2,'Medium','High','Compliant','EPA','v2','Satellite','12.5','3400','1.2','68.0',45,78.5,0.8,'2022-07-20','Positive with concerns','Monitor water quality','2022-08-15','2022-12-01','Assessment complete','Approved','GovernmentGrant');
INSERT INTO environmental_impact_assessment_detail VALUES (7002,4002,'2022-09-10','Liam Patel','Southeast','Wetland','Frog, Turtle','Wetland restoration, Flow control',2.5,'Low','Moderate','Pending','StateEnvDept','v1','Drone','8.0','2100','0.5','55.0',30,65.0,0.5,'2022-08-05','Mixed feedback','Implement additional filtration','2022-09-10','2023-01-15','Follow‑up needed','Pending','PrivateInvestment');
INSERT INTO environmental_impact_assessment_detail VALUES (7003,4003,'2022-10-05','Sofia Rossi','Midwest','Grassland','Prairie Dog','Seed dispersal, Fencing',4.0,'High','Severe','Non‑compliant','FederalAgency','v3','FieldSurvey','20.0','5000','3.0','80.0',70,72.0,1.5,'2022-09-20','Negative','Revise project layout','2022-10-05','2022-12-20','Re‑assessment required','Rejected','CorporateFunding');

-- Fleet operational metrics table
CREATE TABLE fleet_operational_metrics (
    metric_id INTEGER NOT NULL,
    fleet_id INTEGER NOT NULL,
    reporting_date DATE NOT NULL,
    total_miles REAL NOT NULL,
    avg_fuel_efficiency_mpg REAL NOT NULL,
    total_fuel_consumed_gallons REAL NOT NULL,
    average_maintenance_cost REAL NOT NULL,
    breakdowns_reported INTEGER NOT NULL,
    on_time_deliveries REAL NOT NULL,
    average_load_factor REAL NOT NULL,
    idle_time_minutes INTEGER NOT NULL,
    driver_hours INTEGER NOT NULL,
    emissions_tonnes REAL NOT NULL,
    route_efficiency_score REAL NOT NULL,
    incidents_reported INTEGER NOT NULL,
    compliance_violations INTEGER NOT NULL,
    telematics_uptime_percent REAL NOT NULL,
    average_speed_mph REAL NOT NULL,
    max_speed_mph REAL NOT NULL,
    geo_fence_violations INTEGER NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    notes TEXT,
    data_source TEXT NOT NULL,
    region TEXT NOT NULL,
    vehicle_type TEXT NOT NULL,
    operating_shift TEXT NOT NULL
);

INSERT INTO fleet_operational_metrics VALUES (9001,6001,'2022-12-31',124500.0,8.5,14647.0,7850.0,12,96.4,0.78,320,1450,2.1,85.0,3,1,99.5,42.0,78.0,0,'2022-01-01','2022-12-31','All metrics within targets','FleetSys','Midwest','Truck','Day');
INSERT INTO fleet_operational_metrics VALUES (9002,6002,'2022-12-31',98000.0,7.9,12410.0,6500.0,9,93.2,0.74,410,1320,1.8,80.5,2,0,98.8,39.0,75.0,1,'2022-01-01','2022-12-31','Slight increase in idle time','FleetSys','South','Van','Night');
INSERT INTO fleet_operational_metrics VALUES (9003,6003,'2022-12-31',152300.0,9.1,16731.0,8450.0,15,97.8,0.82,210,1580,2.4,88.2,4,2,99.9,45.0,82.0,0,'2022-01-01','2022-12-31','Best performance this quarter','FleetSys','East','Semi‑Trailer','Day');

-- Loan product feature detail table
CREATE TABLE loan_product_feature_detail (
    feature_id INTEGER NOT NULL,
    loan_product_id INTEGER NOT NULL,
    feature_name TEXT NOT NULL,
    description TEXT NOT NULL,
    is_mandatory TEXT NOT NULL,
    max_value REAL NOT NULL,
    min_value REAL NOT NULL,
    default_value REAL NOT NULL,
    effective_date DATE NOT NULL,
    expiration_date DATE,
    regulatory_approval TEXT NOT NULL,
    risk_weight REAL NOT NULL,
    pricing_factor REAL NOT NULL,
    eligibility_criteria TEXT NOT NULL,
    documentation_required TEXT NOT NULL,
    audit_trail TEXT NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    notes TEXT,
    version TEXT NOT NULL,
    data_owner TEXT NOT NULL,
    compliance_status TEXT NOT NULL,
    region TEXT NOT NULL,
    currency TEXT NOT NULL,
    amortization_type TEXT NOT NULL,
    interest_calculation_method TEXT NOT NULL,
    penalty_rate REAL NOT NULL,
    grace_period_days INTEGER NOT NULL,
    early_repayment_penalty REAL NOT NULL,
    max_loan_amount REAL NOT NULL,
    min_loan_amount REAL NOT NULL
);

INSERT INTO loan_product_feature_detail VALUES (11001,8001,'InterestRate','Standard variable interest rate','Yes',7.5,3.0,5.0,'2022-01-01','2032-12-31','Approved','1.2','1.05','CreditScore > 650','ID Proof, Income Statement','Log123','2022-01-01','2022-12-01','Reviewed annually','v1','RiskTeam','Compliant','NorthAmerica','USD','Fixed','Daily','0.05',30,0.02,500000.00,5000.00);
INSERT INTO loan_product_feature_detail VALUES (11002,8002,'LoanTerm','Maximum repayment period in months','Yes',84,12,36,'2022-01-01','2032-12-31','Approved','1.0','1.00','Employment Length > 2 years','ID Proof, Tax Return','Log124','2022-01-01','2022-12-01','Reviewed annually','v1','RiskTeam','Compliant','Europe','EUR','Fixed','Monthly','0.04',45,0.015,300000.00,10000.00);
INSERT INTO loan_product_feature_detail VALUES (11003,8003,'CollateralRequired','Whether collateral is needed','No',1,0,0,'2022-01-01','2032-12-31','Approved','0.8','1.00','None','N/A','Log125','2022-01-01','2022-12-01','Reviewed annually','v1','RiskTeam','Compliant','Asia','JPY','Variable','Monthly','0.03',60,0.01,2000000.00,50000.00);

-- Card issuance policy table
CREATE TABLE card_issuance_policy (
    policy_id INTEGER NOT NULL,
    card_type TEXT NOT NULL,
    issuance_channel TEXT NOT NULL,
    eligibility_criteria TEXT NOT NULL,
    required_documents TEXT NOT NULL,
    max_cards_per_customer INTEGER NOT NULL,
    annual_fee REAL NOT NULL,
    interest_rate REAL NOT NULL,
    reward_program TEXT NOT NULL,
    credit_limit_min REAL NOT NULL,
    credit_limit_max REAL NOT NULL,
    fraud_detection_level TEXT NOT NULL,
    approval_workflow TEXT NOT NULL,
    compliance_checklist TEXT NOT NULL,
    review_cycle_months INTEGER NOT NULL,
    last_review_date DATE NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    notes TEXT,
    version TEXT NOT NULL,
    data_owner TEXT NOT NULL,
    regional_applicability TEXT NOT NULL,
    currency TEXT NOT NULL,
    marketing_approval_required TEXT NOT NULL,
    risk_assessment_score REAL NOT NULL,
    transaction_limits_daily REAL NOT NULL,
    transaction_limits_monthly REAL NOT NULL,
    international_usage_allowed TEXT NOT NULL,
    surcharge_percentage REAL NOT NULL,
    renewal_policy TEXT NOT NULL,
    termination_conditions TEXT NOT NULL
);

INSERT INTO card_issuance_policy VALUES (20001,'Platinum','Online','Income > 80000 AND CreditScore > 750','ID, IncomeProof',2,120.00,15.0,'PremiumPoints',5000.00,20000.00,'High','TwoStage','Full','12','2022-12-01','2022-01-01','2022-12-01','Priority support','v2','PolicyTeam','NorthAmerica','USD','Yes',85.5,10000.00,30000.00,'Yes',2.5,'AutoRenew','TerminationOnFraud');
INSERT INTO card_issuance_policy VALUES (20002,'Gold','Branch','Income > 50000 AND CreditScore > 680','ID, SalarySlip',3,75.00,12.5,'RewardPoints',3000.00,15000.00,'Medium','SingleStage','Standard','12','2022-11-15','2022-01-01','2022-12-01','Standard terms','v2','PolicyTeam','Europe','EUR','No',70.0,8000.00,25000.00,'Yes',2.0,'AnnualRenew','TerminationOnInactivity');
INSERT INTO card_issuance_policy VALUES (20003,'Standard','MobileApp','No specific income requirement','ID',5,0.00,18.0,'Cashback',1000.00,5000.00,'Low','Automated','Basic','6','2022-10-20','2022-01-01','2022-12-01','Entry level card','v1','PolicyTeam','Asia','JPY','No',55.0,5000.00,15000.00,'No',1.5,'YearlyRenew','TerminationOnRequest');