-- Crypto asset metadata
CREATE TABLE crypto_asset (
    asset_id INTEGER NOT NULL PRIMARY KEY,
    platform_id INTEGER NOT NULL,
    token_symbol_code INTEGER NOT NULL,
    launch_year INTEGER NOT NULL,
    total_supply REAL NOT NULL,
    circulating_supply REAL NOT NULL,
    market_cap_usd REAL NOT NULL,
    price_usd REAL NOT NULL,
    volume_24h_usd REAL NOT NULL,
    max_supply REAL NOT NULL,
    decimals INTEGER NOT NULL,
    is_stablecoin INTEGER NOT NULL,
    consensus_algo_code INTEGER NOT NULL,
    contract_address_hash INTEGER NOT NULL,
    issuer_id INTEGER NOT NULL,
    governance_score REAL NOT NULL,
    daily_active_addresses INTEGER NOT NULL,
    weekly_tx_count INTEGER NOT NULL,
    monthly_new_addresses INTEGER NOT NULL,
    last_update_ts INTEGER NOT NULL
);
INSERT INTO crypto_asset (asset_id,platform_id,token_symbol_code,launch_year,total_supply,circulating_supply,market_cap_usd,price_usd,volume_24h_usd,max_supply,decimals,is_stablecoin,consensus_algo_code,contract_address_hash,issuer_id,governance_score,daily_active_addresses,weekly_tx_count,monthly_new_addresses,last_update_ts) VALUES (1,10,100,2018,5000000,4500000,750000000,0.25,12000000,5000000,18,0,2,123456789,5,82.7,15000,400,8000,20230101);
INSERT INTO crypto_asset (asset_id,platform_id,token_symbol_code,launch_year,total_supply,circulating_supply,market_cap_usd,price_usd,volume_24h_usd,max_supply,decimals,is_stablecoin,consensus_algo_code,contract_address_hash,issuer_id,governance_score,daily_active_addresses,weekly_tx_count,monthly_new_addresses,last_update_ts) VALUES (2,12,101,2020,10000000,9500000,1900000000,0.20,25000000,10000000,18,1,3,987654321,7,90.1,22000,600,12000,20230215);
INSERT INTO crypto_asset (asset_id,platform_id,token_symbol_code,launch_year,total_supply,circulating_supply,market_cap_usd,price_usd,volume_24h_usd,max_supply,decimals,is_stablecoin,consensus_algo_code,contract_address_hash,issuer_id,governance_score,daily_active_addresses,weekly_tx_count,monthly_new_addresses,last_update_ts) VALUES (3,8,102,2015,2000000,1800000,360000000,0.18,8000000,2000000,8,0,1,192837465,3,77.4,9000,250,3000,20230320);

-- Branch analytics snapshots
CREATE TABLE branch_analytics (
    analytics_id INTEGER NOT NULL PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    year INTEGER NOT NULL,
    month INTEGER NOT NULL,
    total_deposits REAL NOT NULL,
    total_loans REAL NOT NULL,
    avg_account_balance REAL NOT NULL,
    new_accounts INTEGER NOT NULL,
    closed_accounts INTEGER NOT NULL,
    atm_transactions INTEGER NOT NULL,
    online_transactions INTEGER NOT NULL,
    customer_visits INTEGER NOT NULL,
    staff_hours INTEGER NOT NULL,
    operational_cost REAL NOT NULL,
    profit_margin REAL NOT NULL,
    fraud_cases INTEGER NOT NULL,
    compliance_issues INTEGER NOT NULL,
    net_promoter_score INTEGER NOT NULL,
    csat_score INTEGER NOT NULL,
    digital_adoption_rate REAL NOT NULL,
    report_generated_ts INTEGER NOT NULL
);
INSERT INTO branch_analytics (analytics_id,branch_id,year,month,total_deposits,total_loans,avg_account_balance,new_accounts,closed_accounts,atm_transactions,online_transactions,customer_visits,staff_hours,operational_cost,profit_margin,fraud_cases,compliance_issues,net_promoter_score,csat_score,digital_adoption_rate,report_generated_ts) VALUES (1,101,2023,1,1250000.50,850000.75,2000.30,120,5,3400,5600,2100,480,75000.20,0.12,2,1,68,85,0.45,20230131);
INSERT INTO branch_analytics (analytics_id,branch_id,year,month,total_deposits,total_loans,avg_account_balance,new_accounts,closed_accounts,atm_transactions,online_transactions,customer_visits,staff_hours,operational_cost,profit_margin,fraud_cases,compliance_issues,net_promoter_score,csat_score,digital_adoption_rate,report_generated_ts) VALUES (2,102,2023,1,980000.00,620000.00,1850.00,95,3,2900,4700,1800,410,63000.00,0.10,1,0,72,88,0.52,20230131);
INSERT INTO branch_analytics (analytics_id,branch_id,year,month,total_deposits,total_loans,avg_account_balance,new_accounts,closed_accounts,atm_transactions,online_transactions,customer_visits,staff_hours,operational_cost,profit_margin,fraud_cases,compliance_issues,net_promoter_score,csat_score,digital_adoption_rate,report_generated_ts) VALUES (3,103,2023,1,1435000.80,970000.60,2105.40,130,7,4000,6200,2350,530,82000.75,0.14,3,2,65,80,0.48,20230131);

-- Customer device registry
CREATE TABLE customer_device (
    device_id INTEGER NOT NULL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    device_type_code INTEGER NOT NULL,
    os_version INTEGER NOT NULL,
    app_version INTEGER NOT NULL,
    last_login_ts INTEGER NOT NULL,
    registration_ts INTEGER NOT NULL,
    push_token_hash INTEGER NOT NULL,
    is_active INTEGER NOT NULL,
    failed_login_attempts INTEGER NOT NULL,
    total_sessions INTEGER NOT NULL,
    avg_session_duration REAL NOT NULL,
    location_region_code INTEGER NOT NULL,
    carrier_id INTEGER NOT NULL,
    imei_hash INTEGER NOT NULL,
    mac_address_hash INTEGER NOT NULL,
    firmware_version INTEGER NOT NULL,
    battery_health INTEGER NOT NULL,
    encryption_enabled INTEGER NOT NULL,
    device_status_code INTEGER NOT NULL
);
INSERT INTO customer_device (device_id,customer_id,device_type_code,os_version,app_version,last_login_ts,registration_ts,push_token_hash,is_active,failed_login_attempts,total_sessions,avg_session_duration,location_region_code,carrier_id,imei_hash,mac_address_hash,firmware_version,battery_health,encryption_enabled,device_status_code) VALUES (1,1001,1,29,105,20230301,20221215,1122334455,1,0,250,15.2,12,3,99887766,44332211,7,95,1,0);
INSERT INTO customer_device (device_id,customer_id,device_type_code,os_version,app_version,last_login_ts,registration_ts,push_token_hash,is_active,failed_login_attempts,total_sessions,avg_session_duration,location_region_code,carrier_id,imei_hash,mac_address_hash,firmware_version,battery_health,encryption_enabled,device_status_code) VALUES (2,1002,2,30,108,20230302,20230110,2233445566,1,1,180,12.8,8,5,88776655,55443322,8,89,1,1);
INSERT INTO customer_device (device_id,customer_id,device_type_code,os_version,app_version,last_login_ts,registration_ts,push_token_hash,is_active,failed_login_attempts,total_sessions,avg_session_duration,location_region_code,carrier_id,imei_hash,mac_address_hash,firmware_version,battery_health,encryption_enabled,device_status_code) VALUES (3,1003,1,28,102,20230303,20221105,3344556677,0,3,95,9.5,4,2,77665544,66554433,6,72,0,2);

-- Internal audit log
CREATE TABLE internal_audit_log (
    audit_entry_id INTEGER NOT NULL PRIMARY KEY,
    audit_type_code INTEGER NOT NULL,
    auditor_id INTEGER NOT NULL,
    target_table_id INTEGER NOT NULL,
    target_row_id INTEGER NOT NULL,
    change_timestamp INTEGER NOT NULL,
    old_value_hash INTEGER NOT NULL,
    new_value_hash INTEGER NOT NULL,
    risk_level INTEGER NOT NULL,
    comments_hash INTEGER NOT NULL,
    is_resolved INTEGER NOT NULL,
    resolution_timestamp INTEGER NOT NULL,
    follow_up_action_code INTEGER NOT NULL,
    department_id INTEGER NOT NULL,
    file_attachment_hash INTEGER NOT NULL,
    severity_score REAL NOT NULL,
    compliance_flag INTEGER NOT NULL,
    review_cycle INTEGER NOT NULL,
    audit_batch_id INTEGER NOT NULL,
    created_by_user INTEGER NOT NULL
);
INSERT INTO internal_audit_log (audit_entry_id,audit_type_code,auditor_id,target_table_id,target_row_id,change_timestamp,old_value_hash,new_value_hash,risk_level,comments_hash,is_resolved,resolution_timestamp,follow_up_action_code,department_id,file_attachment_hash,severity_score,compliance_flag,review_cycle,audit_batch_id,created_by_user) VALUES (1,2,501,10,2001,20230115,123456789,987654321,3,555555555,0,0,7,12,111222333,8.5,1,2,3001,450);
INSERT INTO internal_audit_log (audit_entry_id,audit_type_code,auditor_id,target_table_id,target_row_id,change_timestamp,old_value_hash,new_value_hash,risk_level,comments_hash,is_resolved,resolution_timestamp,follow_up_action_code,department_id,file_attachment_hash,severity_score,compliance_flag,review_cycle,audit_batch_id,created_by_user) VALUES (2,3,502,12,2005,20230220,222333444,444333222,5,666666666,1,20230301,9,15,222333444,9.2,0,1,3002,451);
INSERT INTO internal_audit_log (audit_entry_id,audit_type_code,auditor_id,target_table_id,target_row_id,change_timestamp,old_value_hash,new_value_hash,risk_level,comments_hash,is_resolved,resolution_timestamp,follow_up_action_code,department_id,file_attachment_hash,severity_score,compliance_flag,review_cycle,audit_batch_id,created_by_user) VALUES (3,1,503,15,2010,20230310,333444555,555444333,2,777777777,0,0,4,9,333444555,7.3,1,3,3003,452);

-- Financial forecast scenarios
CREATE TABLE financial_forecast (
    forecast_id INTEGER NOT NULL PRIMARY KEY,
    scenario_id INTEGER NOT NULL,
    year INTEGER NOT NULL,
    quarter INTEGER NOT NULL,
    projected_revenue REAL NOT NULL,
    projected_expense REAL NOT NULL,
    projected_profit REAL NOT NULL,
    projected_growth_rate REAL NOT NULL,
    confidence_interval_low REAL NOT NULL,
    confidence_interval_high REAL NOT NULL,
    model_version INTEGER NOT NULL,
    data_source_id INTEGER NOT NULL,
    assumptions_hash INTEGER NOT NULL,
    created_timestamp INTEGER NOT NULL,
    approved_by_user INTEGER NOT NULL,
    review_status INTEGER NOT NULL,
    risk_adjusted_return REAL NOT NULL,
    net_present_value REAL NOT NULL,
    internal_rate_of_return REAL NOT NULL,
    cash_flow_projection REAL NOT NULL
);
INSERT INTO financial_forecast (forecast_id,scenario_id,year,quarter,projected_revenue,projected_expense,projected_profit,projected_growth_rate,confidence_interval_low,confidence_interval_high,model_version,data_source_id,assumptions_hash,created_timestamp,approved_by_user,review_status,risk_adjusted_return,net_present_value,internal_rate_of_return,cash_flow_projection) VALUES (1,101,2024,1,12500000.00,8500000.00,4000000.00,0.07,3500000.00,4500000.00,3,12,123123123,20230105,601,1,0.12,5000000.00,0.08,15000000.00);
INSERT INTO financial_forecast (forecast_id,scenario_id,year,quarter,projected_revenue,projected_expense,projected_profit,projected_growth_rate,confidence_interval_low,confidence_interval_high,model_version,data_source_id,assumptions_hash,created_timestamp,approved_by_user,review_status,risk_adjusted_return,net_present_value,internal_rate_of_return,cash_flow_projection) VALUES (2,102,2024,1,13800000.00,9100000.00,4700000.00,0.09,4100000.00,5300000.00,3,13,321321321,20230106,602,2,0.15,5600000.00,0.09,16200000.00);
INSERT INTO financial_forecast (forecast_id,scenario_id,year,quarter,projected_revenue,projected_expense,projected_profit,projected_growth_rate,confidence_interval_low,confidence_interval_high,model_version,data_source_id,assumptions_hash,created_timestamp,approved_by_user,review_status,risk_adjusted_return,net_present_value,internal_rate_of_return,cash_flow_projection) VALUES (3,103,2024,1,15000000.00,9700000.00,5300000.00,0.10,4600000.00,6100000.00,4,14,456456456,20230107,603,1,0.13,6200000.00,0.10,17500000.00);

-- Risk factor matrix
CREATE TABLE risk_factor_matrix (
    risk_factor_id INTEGER NOT NULL PRIMARY KEY,
    factor_category_code INTEGER NOT NULL,
    subcategory_code INTEGER NOT NULL,
    weight REAL NOT NULL,
    threshold_low REAL NOT NULL,
    threshold_high REAL NOT NULL,
    impact_score REAL NOT NULL,
    mitigation_plan_id INTEGER NOT NULL,
    monitoring_frequency_days INTEGER NOT NULL,
    last_review_ts INTEGER NOT NULL,
    responsible_team_id INTEGER NOT NULL,
    is_active INTEGER NOT NULL,
    description_hash INTEGER NOT NULL,
    regulatory_reference_id INTEGER NOT NULL,
    historical_average REAL NOT NULL,
    volatility_measure REAL NOT NULL,
    correlation_group_id INTEGER NOT NULL,
    scenario_adjustment REAL NOT NULL,
    audit_trail_id INTEGER NOT NULL,
    created_by_user INTEGER NOT NULL,
    created_timestamp INTEGER NOT NULL
);
INSERT INTO risk_factor_matrix (risk_factor_id,factor_category_code,subcategory_code,weight,threshold_low,threshold_high,impact_score,mitigation_plan_id,monitoring_frequency_days,last_review_ts,responsible_team_id,is_active,description_hash,regulatory_reference_id,historical_average,volatility_measure,correlation_group_id,scenario_adjustment,audit_trail_id,created_by_user,created_timestamp) VALUES (1,10,101,0.25,0.10,0.30,0.45,2001,30,20230115,12,1,111111111,5001,0.22,0.05,3,0.00,9001,401,20221201);
INSERT INTO risk_factor_matrix (risk_factor_id,factor_category_code,subcategory_code,weight,threshold_low,threshold_high,impact_score,mitigation_plan_id,monitoring_frequency_days,last_review_ts,responsible_team_id,is_active,description_hash,regulatory_reference_id,historical_average,volatility_measure,correlation_group_id,scenario_adjustment,audit_trail_id,created_by_user,created_timestamp) VALUES (2,12,103,0.40,0.20,0.50,0.60,2003,45,20230220,15,1,222222222,5003,0.35,0.07,4,0.02,9003,402,20221215);
INSERT INTO risk_factor_matrix (risk_factor_id,factor_category_code,subcategory_code,weight,threshold_low,threshold_high,impact_score,mitigation_plan_id,monitoring_frequency_days,last_review_ts,responsible_team_id,is_active,description_hash,regulatory_reference_id,historical_average,volatility_measure,correlation_group_id,scenario_adjustment,audit_trail_id,created_by_user,created_timestamp) VALUES (3,14,105,0.30,0.15,0.40,0.50,2005,60,20230310,18,0,333333333,5005,0.28,0.06,5,0.01,9005,403,20230101);

-- Investment strategy detail
CREATE TABLE investment_strategy_detail (
    strategy_id INTEGER NOT NULL PRIMARY KEY,
    strategy_name_hash INTEGER NOT NULL,
    asset_class_code INTEGER NOT NULL,
    allocation_percentage REAL NOT NULL,
    risk_tolerance_level INTEGER NOT NULL,
    expected_return REAL NOT NULL,
    volatility REAL NOT NULL,
    benchmark_index_id INTEGER NOT NULL,
    inception_date INTEGER NOT NULL,
    manager_id INTEGER NOT NULL,
    fee_rate REAL NOT NULL,
    minimum_investment REAL NOT NULL,
    liquidity_score REAL NOT NULL,
    ESG_score REAL NOT NULL,
    rebalancing_frequency_days INTEGER NOT NULL,
    performance_last_year REAL NOT NULL,
    performance_last_5yr REAL NOT NULL,
    drawdown_max REAL NOT NULL,
    status_code INTEGER NOT NULL,
    last_update_ts INTEGER NOT NULL
);
INSERT INTO investment_strategy_detail (strategy_id,strategy_name_hash,asset_class_code,allocation_percentage,risk_tolerance_level,expected_return,volatility,benchmark_index_id,inception_date,manager_id,fee_rate,minimum_investment,liquidity_score,ESG_score,rebalancing_frequency_days,performance_last_year,performance_last_5yr,drawdown_max,status_code,last_update_ts) VALUES (1,111000111,1,55.0,3,0.08,0.12,1001,20180101,301,0.015,50000.00,0.85,0.70,30,0.10,0.45,0.20,1,20230301);
INSERT INTO investment_strategy_detail (strategy_id,strategy_name_hash,asset_class_code,allocation_percentage,risk_tolerance_level,expected_return,volatility,benchmark_index_id,inception_date,manager_id,fee_rate,minimum_investment,liquidity_score,ESG_score,rebalancing_frequency_days,performance_last_year,performance_last_5yr,drawdown_max,status_code,last_update_ts) VALUES (2,222000222,2,35.0,2,0.06,0.09,1002,20190515,302,0.012,25000.00,0.78,0.65,45,0.07,0.38,0.15,2,20230302);
INSERT INTO investment_strategy_detail (strategy_id,strategy_name_hash,asset_class_code,allocation_percentage,risk_tolerance_level,expected_return,volatility,benchmark_index_id,inception_date,manager_id,fee_rate,minimum_investment,liquidity_score,ESG_score,rebalancing_frequency_days,performance_last_year,performance_last_5yr,drawdown_max,status_code,last_update_ts) VALUES (3,333000333,3,10.0,5,0.12,0.20,1003,20210120,303,0.020,100000.00,0.90,0.80,60,0.15,0.55,0.30,1,20230303);

-- Mortgage amortization schedule
CREATE TABLE mortgage_amortization (
    amort_id INTEGER NOT NULL PRIMARY KEY,
    mortgage_id INTEGER NOT NULL,
    borrower_id INTEGER NOT NULL,
    start_date INTEGER NOT NULL,
    end_date INTEGER NOT NULL,
    principal_amount REAL NOT NULL,
    interest_rate REAL NOT NULL,
    monthly_payment REAL NOT NULL,
    total_interest_paid REAL NOT NULL,
    remaining_balance REAL NOT NULL,
    payment_number INTEGER NOT NULL,
    payment_date INTEGER NOT NULL,
    principal_paid REAL NOT NULL,
    interest_paid REAL NOT NULL,
    escrow_amount REAL NOT NULL,
    payment_status_code INTEGER NOT NULL,
    late_fees_accrued REAL NOT NULL,
    payoff_date_estimated INTEGER NOT NULL,
    last_modified_ts INTEGER NOT NULL,
    created_by_user INTEGER NOT NULL
);
INSERT INTO mortgage_amortization (amort_id,mortgage_id,borrower_id,start_date,end_date,principal_amount,interest_rate,monthly_payment,total_interest_paid,remaining_balance,payment_number,payment_date,principal_paid,interest_paid,escrow_amount,payment_status_code,late_fees_accrued,payoff_date_estimated,last_modified_ts,created_by_user) VALUES (1,5001,8001,20200101,20451231,250000.00,0.035,1150.00,150000.00,200000.00,12,20201201,1100.00,50.00,200.00,0,0.00,20351231,20231201,901);
INSERT INTO mortgage_amortization (amort_id,mortgage_id,borrower_id,start_date,end_date,principal_amount,interest_rate,monthly_payment,total_interest_paid,remaining_balance,payment_number,payment_date,principal_paid,interest_paid,escrow_amount,payment_status_code,late_fees_accrued,payoff_date_estimated,last_modified_ts,created_by_user) VALUES (2,5002,8002,20180515,20301231,300000.00,0.040,1380.00,180000.00,250000.00,24,20210715,1300.00,80.00,250.00,0,15.00,20361231,20231215,902);
INSERT INTO mortgage_amortization (amort_id,mortgage_id,borrower_id,start_date,end_date,principal_amount,interest_rate,monthly_payment,total_interest_paid,remaining_balance,payment_number,payment_date,principal_paid,interest_paid,escrow_amount,payment_status_code,late_fees_accrued,payoff_date_estimated,last_modified_ts,created_by_user) VALUES (3,5003,8003,20191001,20391231,200000.00,0.038,950.00,120000.00,180000.00,6,20200401,900.00,50.00,150.00,1,0.00,20341001,20231220,903);

-- Payment method registry
CREATE TABLE payment_method_registry (
    method_id INTEGER NOT NULL PRIMARY KEY,
    method_type_code INTEGER NOT NULL,
    provider_id INTEGER NOT NULL,
    active_since INTEGER NOT NULL,
    deactivation_date INTEGER NOT NULL,
    transaction_fee_percent REAL NOT NULL,
    max_transaction_limit REAL NOT NULL,
    min_transaction_limit REAL NOT NULL,
    currency_code INTEGER NOT NULL,
    settlement_time_days INTEGER NOT NULL,
    compliance_check_passed INTEGER NOT NULL,
    risk_score REAL NOT NULL,
    last_audit_ts INTEGER NOT NULL,
    created_by_user INTEGER NOT NULL,
    status_code INTEGER NOT NULL,
    support_contact_id INTEGER NOT NULL,
    api_endpoint_hash INTEGER NOT NULL,
    version_number INTEGER NOT NULL,
    usage_count INTEGER NOT NULL,
    avg_processing_time_ms REAL NOT NULL
);
INSERT INTO payment_method_registry (method_id,method_type_code,provider_id,active_since,deactivation_date,transaction_fee_percent,max_transaction_limit,min_transaction_limit,currency_code,settlement_time_days,compliance_check_passed,risk_score,last_audit_ts,created_by_user,status_code,support_contact_id,api_endpoint_hash,version_number,usage_count,avg_processing_time_ms) VALUES (1,1,1001,20200101,0,0.025,100000.00,10.00,840,2,1,0.30,20230201,501,1,2001,999888777,3,15000,250.5);
INSERT INTO payment_method_registry (method_id,method_type_code,provider_id,active_since,deactivation_date,transaction_fee_percent,max_transaction_limit,min_transaction_limit,currency_code,settlement_time_days,compliance_check_passed,risk_score,last_audit_ts,created_by_user,status_code,support_contact_id,api_endpoint_hash,version_number,usage_count,avg_processing_time_ms) VALUES (2,2,1002,20200615,0,0.030,50000.00,5.00,978,1,1,0.45,20230215,502,1,2002,888777666,4,23000,315.2);
INSERT INTO payment_method_registry (method_id,method_type_code,provider_id,active_since,deactivation_date,transaction_fee_percent,max_transaction_limit,min_transaction_limit,currency_code,settlement_time_days,compliance_check_passed,risk_score,last_audit_ts,created_by_user,status_code,support_contact_id,api_endpoint_hash,version_number,usage_count,avg_processing_time_ms) VALUES (3,3,1003,20201120,0,0.020,200000.00,20.00,840,3,1,0.25,20230301,503,0,2003,777666555,5,32000,198.7);

-- Beneficiary profile
CREATE TABLE beneficiary_profile (
    beneficiary_id INTEGER NOT NULL PRIMARY KEY,
    client_id INTEGER NOT NULL,
    relationship_type_code INTEGER NOT NULL,
    benefit_type_code INTEGER NOT NULL,
    start_date INTEGER NOT NULL,
    end_date INTEGER NOT NULL,
    amount REAL NOT NULL,
    frequency_code INTEGER NOT NULL,
    tax_exempt INTEGER NOT NULL,
    region_code INTEGER NOT NULL,
    eligibility_score REAL NOT NULL,
    approval_status INTEGER NOT NULL,
    approved_by_user INTEGER NOT NULL,
    verification_timestamp INTEGER NOT NULL,
    documentation_hash INTEGER NOT NULL,
    revocation_reason_code INTEGER NOT NULL,
    last_updated_ts INTEGER NOT NULL,
    created_timestamp INTEGER NOT NULL,
    notes_hash INTEGER NOT NULL,
    active_flag INTEGER NOT NULL,
    renewal_needed INTEGER NOT NULL
);
INSERT INTO beneficiary_profile (beneficiary_id,client_id,relationship_type_code,benefit_type_code,start_date,end_date,amount,frequency_code,tax_exempt,region_code,eligibility_score,approval_status,approved_by_user,verification_timestamp,documentation_hash,revocation_reason_code,last_updated_ts,created_timestamp,notes_hash,active_flag,renewal_needed) VALUES (1,2001,1,10,20200101,20251231,1500.00,12,1,5,0.85,1,601,20230110,111000111,0,20231201,20221215,222000222,1,0);
INSERT INTO beneficiary_profile (beneficiary_id,client_id,relationship_type_code,benefit_type_code,start_date,end_date,amount,frequency_code,tax_exempt,region_code,eligibility_score,approval_status,approved_by_user,verification_timestamp,documentation_hash,revocation_reason_code,last_updated_ts,created_timestamp,notes_hash,active_flag,renewal_needed) VALUES (2,2002,2,12,20210301,20260301,2000.00,6,0,8,0.78,2,602,20230405,333000333,1,20230410,20230301,444000444,0,1);
INSERT INTO beneficiary_profile (beneficiary_id,client_id,relationship_type_code,benefit_type_code,start_date,end_date,amount,frequency_code,tax_exempt,region_code,eligibility_score,approval_status,approved_by_user,verification_timestamp,documentation_hash,revocation_reason_code,last_updated_ts,created_timestamp,notes_hash,active_flag,renewal_needed) VALUES (3,2003,3,14,20220715,20280715,2500.00,3,1,12,0.92,1,603,20230820,555000555,0,20230830,20230715,666000666,1,0);