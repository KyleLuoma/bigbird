-- Regional transport infrastructure details
CREATE TABLE regional_transport_infrastructure
(
    infra_id INTEGER PRIMARY KEY,
    region_code TEXT NOT NULL,
    road_length_km REAL NOT NULL,
    bridge_count INTEGER NOT NULL,
    tunnel_count INTEGER NOT NULL,
    rail_track_km REAL NOT NULL,
    metro_station_count INTEGER NOT NULL,
    bus_depot_count INTEGER NOT NULL,
    avg_daily_traffic INTEGER NOT NULL,
    freight_capacity_tons INTEGER NOT NULL,
    maintenance_budget REAL NOT NULL,
    last_audit_date DATE NOT NULL,
    gps_coverage_percent REAL NOT NULL,
    smart_signal_count INTEGER NOT NULL,
    bike_lane_km REAL NOT NULL,
    pedestrian_path_km REAL NOT NULL,
    ev_charging_spots INTEGER NOT NULL,
    flood_risk_level TEXT NOT NULL,
    seismic_zone TEXT NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL
);

INSERT INTO regional_transport_infrastructure VALUES (1,'R01',1250.5,45,12,980.3,22,8,340000,210000,1500000.00,'2023-03-15',98.5,312,150.0,200.0,45,'Low','ZoneA','Initial entry','2023-03-16');
INSERT INTO regional_transport_infrastructure VALUES (2,'R02',845.2,30,5,620.7,15,5,220000,120000,950000.00,'2023-04-10',95.2,210,80.0,140.0,30,'Medium','ZoneB','Updated after audit','2023-04-11');
INSERT INTO regional_transport_infrastructure VALUES (3,'R03',1320.9,60,18,1105.4,30,10,410000,260000,1750000.00,'2023-05-05',99.1,380,200.0,250.0,70,'Low','ZoneC','Planned extensions','2023-05-06');

-- Customer engagement channel information
CREATE TABLE customer_engagement_channel
(
    channel_id INTEGER PRIMARY KEY,
    channel_name TEXT NOT NULL,
    description TEXT,
    launch_date DATE NOT NULL,
    active_flag TEXT NOT NULL,
    avg_monthly_sessions INTEGER NOT NULL,
    avg_session_duration_minutes REAL NOT NULL,
    conversion_rate REAL NOT NULL,
    cost_per_acquisition REAL NOT NULL,
    reach_population INTEGER NOT NULL,
    channel_type TEXT NOT NULL,
    primary_audience TEXT NOT NULL,
    device_platform TEXT NOT NULL,
    region TEXT NOT NULL,
    language TEXT NOT NULL,
    support_email TEXT NOT NULL,
    support_phone TEXT NOT NULL,
    retention_rate REAL NOT NULL,
    churn_rate REAL NOT NULL,
    net_promoter_score INTEGER NOT NULL,
    created_at DATE NOT NULL
);

INSERT INTO customer_engagement_channel VALUES (101,'MobileApp','Native mobile application','2022-01-15','Y',12500,5.2,0.04,2.5,2000000,'App','Adults','iOS_Android','NorthAmerica','English','support@bank.com','5551234567',0.78,0.12,68,'2022-01-16');
INSERT INTO customer_engagement_channel VALUES (102,'WebPortal','Online banking web portal','2020-06-01','Y',9800,7.1,0.05,1.8,1500000,'Web','All','Browser','Europe','English','websupport@bank.com','5559876543',0.81,0.09,71,'2020-06-02');
INSERT INTO customer_engagement_channel VALUES (103,'SMSAlerts','Transactional SMS notifications','2021-09-10','Y',23000,0.1,0.01,0.5,3000000,'SMS','All','Mobile','Asia','English','sms@bank.com','5555551212',0.85,0.07,74,'2021-09-11');

-- Digital payment method fee configuration
CREATE TABLE digital_payment_method_fee
(
    fee_id INTEGER PRIMARY KEY,
    method_name TEXT NOT NULL,
    transaction_type TEXT NOT NULL,
    fee_percentage REAL NOT NULL,
    flat_fee REAL NOT NULL,
    currency TEXT NOT NULL,
    min_transaction_amount REAL NOT NULL,
    max_transaction_amount REAL NOT NULL,
    effective_date DATE NOT NULL,
    expiry_date DATE,
    applicable_regions TEXT NOT NULL,
    merchant_category TEXT NOT NULL,
    settlement_period_days INTEGER NOT NULL,
    regulatory_body TEXT NOT NULL,
    notes TEXT,
    created_by TEXT NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    is_active TEXT NOT NULL,
    compliance_status TEXT NOT NULL,
    audit_trail TEXT
);

INSERT INTO digital_payment_method_fee VALUES (1001,'CreditCard','Purchase',2.5,0.30,'USD',1.00,10000.00,'2023-01-01','2025-12-31','Global','Retail',2,'FinCEN','Standard fee schedule','admin','2023-01-01','2023-01-01','Y','Compliant','initial_create');
INSERT INTO digital_payment_method_fee VALUES (1002,'DigitalWallet','Transfer',1.0,0.10,'EUR',0.50,5000.00,'2023-03-01','2026-02-28','EU','Services',1,'ECB','Reduced fee for e‑wallets','admin','2023-03-01','2023-03-01','Y','Compliant','initial_create');
INSERT INTO digital_payment_method_fee VALUES (1003,'BankTransfer','BillPay',0.75,0.05,'GBP',5.00,20000.00,'2023-05-15',NULL,'UK','Utilities',3,'FCA','No flat fee for high‑value transfers','admin','2023-05-15','2023-05-15','Y','Compliant','initial_create');

-- Insurance policy claims summary
CREATE TABLE insurance_policy_claims_summary
(
    summary_id INTEGER PRIMARY KEY,
    policy_id INTEGER NOT NULL,
    claim_id INTEGER NOT NULL,
    claim_date DATE NOT NULL,
    claim_amount REAL NOT NULL,
    claim_status TEXT NOT NULL,
    settlement_amount REAL,
    settlement_date DATE,
    adjuster_name TEXT,
    loss_type TEXT,
    loss_severity TEXT,
    deductible_applied REAL,
    claimant_relationship TEXT,
    incident_location TEXT,
    police_report_flag TEXT,
    fraud_flag TEXT,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    audit_user TEXT,
    audit_timestamp DATE
);

INSERT INTO insurance_policy_claims_summary VALUES (5001,20001,30001,'2023-02-10',15000.00,'Pending',NULL,NULL,'JohnDoe','Fire','Major',500.00,'Self','Warehouse A','Y','N','Awaiting investigation','2023-02-11','2023-02-11','auditor1','2023-02-11');
INSERT INTO insurance_policy_claims_summary VALUES (5002,20002,30002,'2023-03-05',8000.00,'Approved',8000.00,'2023-03-20','JaneSmith','Theft','Minor',0.00,'Spouse','Retail Store B','Y','N','Paid in full','2023-03-06','2023-03-21','auditor2','2023-03-21');
INSERT INTO insurance_policy_claims_summary VALUES (5003,20003,30003,'2023-04-12',25000.00,'Rejected',0.00,NULL,'MikeBrown','Flood','Severe',1000.00,'Parent','Factory C','Y','Y','Fraud suspected','2023-04-13','2023-04-14','auditor3','2023-04-14');

-- Fleet vehicle maintenance schedule
CREATE TABLE fleet_vehicle_maintenance_schedule
(
    schedule_id INTEGER PRIMARY KEY,
    vehicle_id INTEGER NOT NULL,
    maintenance_type TEXT NOT NULL,
    scheduled_date DATE NOT NULL,
    due_mileage INTEGER NOT NULL,
    last_service_mileage INTEGER NOT NULL,
    service_center TEXT NOT NULL,
    estimated_cost REAL NOT NULL,
    priority_level TEXT NOT NULL,
    mechanic_assigned TEXT,
    parts_required TEXT,
    downtime_hours INTEGER,
    warranty_flag TEXT,
    approved_by TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    status TEXT NOT NULL,
    notes TEXT,
    mileage_at_completion INTEGER,
    cost_actual REAL,
    next_due_date DATE
);

INSERT INTO fleet_vehicle_maintenance_schedule VALUES (9001,401,'OilChange','2023-06-01',30000,25000,'CenterA',150.00,'Low','Mike','OilFilter,Oil',2,'Y','SupervisorA','2023-05-20','2023-05-20','Scheduled','First oil change of year',NULL,NULL,'2023-09-01');
INSERT INTO fleet_vehicle_maintenance_schedule VALUES (9002,402,'BrakeInspection','2023-06-15',45000,40000,'CenterB',300.00,'Medium','Sara','BrakePads,Rotors',4,'N','SupervisorB','2023-05-22','2023-05-23','Scheduled','Check wear levels',NULL,NULL,'2023-12-15');
INSERT INTO fleet_vehicle_maintenance_schedule VALUES (9003,403,'TransmissionCheck','2023-07-10',60000,55000,'CenterC',1200.00,'High','Tom','TransmissionFluid,Filter',8,'N','SupervisorC','2023-05-25','2023-05-26','Pending','Potential issue reported',NULL,NULL,'2024-01-10');

-- Branch energy source mix report
CREATE TABLE branch_energy_source_mix
(
    mix_id INTEGER PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    report_date DATE NOT NULL,
    solar_percentage REAL NOT NULL,
    wind_percentage REAL NOT NULL,
    hydro_percentage REAL NOT NULL,
    geothermal_percentage REAL NOT NULL,
    nuclear_percentage REAL NOT NULL,
    coal_percentage REAL NOT NULL,
    natural_gas_percentage REAL NOT NULL,
    biomass_percentage REAL NOT NULL,
    other_percentage REAL NOT NULL,
    total_consumption_mwh REAL NOT NULL,
    peak_demand_mw REAL NOT NULL,
    avg_load_factor REAL NOT NULL,
    emissions_co2_tons REAL NOT NULL,
    renewable_certificates INTEGER NOT NULL,
    grid_import_mwh REAL NOT NULL,
    grid_export_mwh REAL NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_by TEXT NOT NULL
);

INSERT INTO branch_energy_source_mix VALUES (1,10,'2023-04-30',25.0,15.0,10.0,0.0,0.0,30.0,15.0,5.0,0.0,1200.00,5.2,0.55,200.0,150,300.00,20.00,'Quarterly report','2023-05-01','analyst1');
INSERT INTO branch_energy_source_mix VALUES (2,11,'2023-04-30',30.0,20.0,5.0,0.0,0.0,20.0,20.0,5.0,0.0,1500.00,6.0,0.60,250.0,180,350.00,15.00,'Quarterly report','2023-05-01','analyst2');
INSERT INTO branch_energy_source_mix VALUES (3,12,'2023-04-30',20.0,10.0,15.0,0.0,0.0,35.0,15.0,5.0,0.0,1000.00,4.8,0.50,180.0,120,250.00,25.00,'Quarterly report','2023-05-01','analyst3');

-- ATM cash replenishment log
CREATE TABLE atm_cash_replenishment_log
(
    log_id INTEGER PRIMARY KEY,
    atm_id INTEGER NOT NULL,
    replenishment_date DATE NOT NULL,
    amount_dispensed INTEGER NOT NULL,
    amount_replenished INTEGER NOT NULL,
    cash_balance_before INTEGER NOT NULL,
    cash_balance_after INTEGER NOT NULL,
    employee_id INTEGER NOT NULL,
    route_id INTEGER NOT NULL,
    vehicle_id INTEGER NOT NULL,
    shift TEXT NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL,
    approved_by TEXT NOT NULL,
    audit_status TEXT NOT NULL,
    discrepancy_flag TEXT NOT NULL,
    replenishment_method TEXT NOT NULL,
    carrier_company TEXT NOT NULL,
    transaction_id INTEGER NOT NULL,
    time_start TEXT NOT NULL,
    time_end TEXT NOT NULL
);

INSERT INTO atm_cash_replenishment_log VALUES (4001,101,'2023-05-20',5000,20000,10000,25000,501,301,701,'Day','No issues','2023-05-20','manager1','Completed','N','Vehicle','LogisticsCo',90001,'08:00','09:30');
INSERT INTO atm_cash_replenishment_log VALUES (4002,102,'2023-05-21',3000,15000,8000,21000,502,302,702,'Evening','Minor discrepancy resolved','2023-05-21','manager2','Completed','Y','Armored','SecureTrans',90002,'17:00','18:45');
INSERT INTO atm_cash_replenishment_log VALUES (4003,103,'2023-05-22',7000,25000,12000,39000,503,303,703,'Night','All good','2023-05-22','manager3','Completed','N','Vehicle','LogisticsCo',90003,'22:00','23:30');

-- Loan application review records
CREATE TABLE loan_application_review
(
    review_id INTEGER PRIMARY KEY,
    application_id INTEGER NOT NULL,
    reviewer_id INTEGER NOT NULL,
    review_date DATE NOT NULL,
    risk_score REAL NOT NULL,
    approval_status TEXT NOT NULL,
    comments TEXT,
    recommended_limit INTEGER,
    recommended_term INTEGER,
    underwriting_notes TEXT,
    compliance_check TEXT,
    fraud_check TEXT,
    credit_history_score REAL,
    income_verification_status TEXT,
    collateral_valuation REAL,
    debt_to_income_ratio REAL,
    previous_defaults INTEGER,
    recommendation TEXT,
    final_decision TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL
);

INSERT INTO loan_application_review VALUES (8001,12001,701,'2023-06-01',78.5,'Pending','Review in progress',50000,60,'All criteria met','Pass','Clear',720.0,'Verified',120000.0,0.30,0,'Approve','Pending','2023-06-01','2023-06-01');
INSERT INTO loan_application_review VALUES (8002,12002,702,'2023-06-02',65.0,'Rejected','High risk due to low credit','20000',36,'Credit score low','Pass','Flagged',580.0,'Verified',50000.0,0.45,2,'Reject','Rejected','2023-06-02','2023-06-02');
INSERT INTO loan_application_review VALUES (8003,12003,703,'2023-06-03',82.0,'Approved','Excellent profile','75000',84,'Strong collateral','Pass','Clear',770.0,'Verified',200000.0,0.25,0,'Approve','Approved','2023-06-03','2023-06-03');

-- Customer reward redemption log
CREATE TABLE customer_reward_redemption
(
    redemption_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    reward_id INTEGER NOT NULL,
    redemption_date DATE NOT NULL,
    points_redeemed INTEGER NOT NULL,
    reward_value REAL NOT NULL,
    redemption_status TEXT NOT NULL,
    channel TEXT NOT NULL,
    store_id INTEGER,
    employee_id INTEGER,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_by TEXT NOT NULL,
    verification_code TEXT NOT NULL,
    expiry_date DATE,
    loyalty_tier TEXT,
    discount_percent REAL,
    tax_applied REAL,
    net_value REAL,
    transaction_id INTEGER,
    audit_log TEXT
);

INSERT INTO customer_reward_redemption VALUES (6001,301,401,'2023-07-01',1500,25.00,'Completed','Online',NULL,NULL,'Redeemed via website','2023-07-01','system','ABC123','2023-12-31','Gold',10.0,2.00,23.00,70001,'log1');
INSERT INTO customer_reward_redemption VALUES (6002,302,402,'2023-07-05',2000,40.00,'Pending','InStore',12,45,'Awaiting verification','2023-07-05','system','DEF456','2024-01-15','Platinum',12.5,3.20,36.80,70002,'log2');
INSERT INTO customer_reward_redemption VALUES (6003,303,403,'2023-07-10',1000,15.00,'Cancelled','MobileApp',NULL,NULL,'Customer cancelled request','2023-07-10','system','GHI789','2023-11-30','Silver',5.0,1.00,14.00,70003,'log3');

-- Environmental compliance audit detail table
CREATE TABLE environmental_compliance_audit_detail
(
    audit_id INTEGER PRIMARY KEY,
    facility_id INTEGER NOT NULL,
    audit_date DATE NOT NULL,
    auditor_name TEXT NOT NULL,
    audit_type TEXT NOT NULL,
    compliance_score REAL NOT NULL,
    violations_found INTEGER NOT NULL,
    corrective_actions TEXT,
    deadline_date DATE,
    follow_up_date DATE,
    status TEXT NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    regulatory_body TEXT NOT NULL,
    region TEXT NOT NULL,
    checklist_version TEXT,
    risk_level TEXT,
    total_fine_amount REAL,
    fine_paid_flag TEXT,
    documentation_path TEXT
);

INSERT INTO environmental_compliance_audit_detail VALUES (90001,501,'2023-08-01','LauraWhite','Annual','92.5',1,'Install filter system','2023-09-30','2023-10-15','Open','Minor emission exceedance','2023-08-01','2023-08-02','EPA','Midwest','v2.1','Medium',5000.00,'N','/docs/audit90001.pdf');
INSERT INTO environmental_compliance_audit_detail VALUES (90002,502,'2023-08-15','MarkGreen','Spot','85.0',3,'Upgrade waste treatment','2023-10-01','2023-10-20','Open','Several waste handling issues','2023-08-15','2023-08-16','EPA','Southwest','v2.1','High',12000.00,'N','/docs/audit90002.pdf');
INSERT INTO environmental_compliance_audit_detail VALUES (90003,503,'2023-09-05','AnnaBlue','Follow‑up','96.0',0,NULL,NULL,NULL,'Closed','All corrective actions completed','2023-09-05','2023-09-05','EPA','Northeast','v2.1','Low',0.00,'Y','/docs/audit90003.pdf');