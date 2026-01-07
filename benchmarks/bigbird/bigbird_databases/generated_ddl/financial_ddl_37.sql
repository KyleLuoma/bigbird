-- Public transport schedule information
CREATE TABLE public_transport_schedule
(
    schedule_id INTEGER PRIMARY KEY,
    line_id INTEGER NOT NULL,
    route_name TEXT NOT NULL,
    start_time TEXT NOT NULL,
    end_time TEXT NOT NULL,
    weekday TEXT NOT NULL,
    weekend TEXT NOT NULL,
    frequency_minutes INTEGER NOT NULL,
    vehicle_type TEXT NOT NULL,
    operator_name TEXT NOT NULL,
    capacity INTEGER NOT NULL,
    first_stop TEXT NOT NULL,
    last_stop TEXT NOT NULL,
    distance_km REAL NOT NULL,
    fare_amount REAL NOT NULL,
    holiday_service TEXT NOT NULL,
    notes TEXT,
    created_date DATE NOT NULL,
    updated_date DATE NOT NULL,
    is_active INTEGER NOT NULL
);

INSERT INTO public_transport_schedule VALUES (1,101,'BlueLine','06:00','22:00','MonFri','SatSun',15,'ElectricBus','MetroTransit',50,'CentralStation','NorthTerminal',25.5,2.5,'Yes','Initial rollout', '2023-01-01','2023-01-01',1);
INSERT INTO public_transport_schedule VALUES (2,102,'RedLine','05:30','23:30','MonFri','SatSun',10,'DieselBus','CityTransit',60,'EastDepot','WestDepot',30.0,3.0,'No','Extended service', '2023-02-15','2023-02-15',1);
INSERT INTO public_transport_schedule VALUES (3,103,'GreenLine','07:00','21:00','MonFri','SatSun',20,'HybridBus','RegionalTransit',45,'SouthPark','NorthPark',22.0,2.0,'Yes','Seasonal adjustment', '2023-03-10','2023-03-10',1);

-- Environmental sensor station metadata
CREATE TABLE environmental_sensor_station
(
    station_id INTEGER PRIMARY KEY,
    station_code TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    elevation_m INTEGER NOT NULL,
    installation_date DATE NOT NULL,
    sensor_type TEXT NOT NULL,
    measurement_interval_min INTEGER NOT NULL,
    power_source TEXT NOT NULL,
    maintenance_contact TEXT NOT NULL,
    last_maintenance DATE NOT NULL,
    calibration_status TEXT NOT NULL,
    firmware_version TEXT NOT NULL,
    data_endpoint TEXT NOT NULL,
    is_active INTEGER NOT NULL,
    region TEXT NOT NULL,
    city TEXT NOT NULL,
    zip_code TEXT NOT NULL,
    owner_agency TEXT NOT NULL,
    notes TEXT
);

INSERT INTO environmental_sensor_station VALUES (1,'STS001',40.7128,-74.0060,10,'2022-05-01','AirQuality',15,'Solar','JohnDoe','2023-06-01','Calibrated','v1.2','http://data.example.com/1',1,'Northeast','NewYork','10001','EPA','Primary city station');
INSERT INTO environmental_sensor_station VALUES (2,'STS002',34.0522,-118.2437,30,'2021-09-15','WaterQuality',30,'Mains','JaneSmith','2023-05-20','Pending','v1.0','http://data.example.com/2',1,'West','LosAngeles','90001','StateWaterDept','Coastal monitoring');
INSERT INTO environmental_sensor_station VALUES (3,'STS003',41.8781,-87.6298,20,'2023-01-10','SoilMoisture',60,'Battery','MikeBrown','2023-07-10','Calibrated','v2.1','http://data.example.com/3',1,'Midwest','Chicago','60601','AgricultureAgency','Urban park station');

-- Vendor performance metrics
CREATE TABLE vendor_performance_metrics
(
    metric_id INTEGER PRIMARY KEY,
    vendor_id INTEGER NOT NULL,
    period_start DATE NOT NULL,
    period_end DATE NOT NULL,
    on_time_delivery_pct REAL NOT NULL,
    defect_rate_pct REAL NOT NULL,
    compliance_score REAL NOT NULL,
    contract_value REAL NOT NULL,
    invoice_accuracy_pct REAL NOT NULL,
    communication_score REAL NOT NULL,
    issue_count INTEGER NOT NULL,
    average_resolution_days REAL NOT NULL,
    risk_level TEXT NOT NULL,
    sustainability_score REAL NOT NULL,
    certification_status TEXT NOT NULL,
    last_audit_date DATE NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    is_active INTEGER NOT NULL,
    reviewer_name TEXT NOT NULL
);

INSERT INTO vendor_performance_metrics VALUES (1,2001,'2023-01-01','2023-06-30',98.5,0.7,92.3,1500000,99.0,85.0,3,2.5,'Low',85.0,'ISO9001','2023-07-01','Quarterly review','2023-07-01','2023-07-01',1,'AliceGreen');
INSERT INTO vendor_performance_metrics VALUES (2,2002,'2023-01-01','2023-06-30',95.0,1.2,88.0,800000,97.5,80.0,5,3.2,'Medium',78.0,'ISO14001','2023-07-02','Mid‑year assessment','2023-07-02','2023-07-02',1,'BobWhite');
INSERT INTO vendor_performance_metrics VALUES (3,2003,'2023-01-01','2023-06-30',99.0,0.3,95.0,2200000,99.8,90.0,1,1.8,'Low',92.0,'ISO45001','2023-07-03','Excellent performance','2023-07-03','2023-07-03',1,'CarolBlack');

-- Digital content license records
CREATE TABLE digital_content_license
(
    license_id INTEGER PRIMARY KEY,
    content_id INTEGER NOT NULL,
    license_type TEXT NOT NULL,
    provider TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    territory TEXT NOT NULL,
    usage_limit INTEGER NOT NULL,
    accessed_count INTEGER NOT NULL,
    cost REAL NOT NULL,
    renewal_required INTEGER NOT NULL,
    digital_rights_management TEXT NOT NULL,
    format TEXT NOT NULL,
    version TEXT NOT NULL,
    is_exclusive INTEGER NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    status TEXT NOT NULL,
    owner_department TEXT NOT NULL
);

INSERT INTO digital_content_license VALUES (1,5001,'Subscription','MediaCorp','2023-01-01','2023-12-31','Global',10000,2500,199.99,1,'DRMStandard','MP4','v1','0','Annual subscription','2023-01-01','2023-01-01','Active','Marketing');
INSERT INTO digital_content_license VALUES (2,5002,'Perpetual','ContentHub','2022-06-15','2099-12-31','NorthAmerica',0,0,999.99,0,'DRMPro','AVI','v2','1','One‑time purchase','2022-06-15','2022-06-15','Active','ProductDevelopment');
INSERT INTO digital_content_license VALUES (3,5003,'PayPerUse','StreamLine','2023-03-01','2023-09-30','Europe',500,120,49.99,0,'DRMLite','MKV','v1','0','Quarterly campaign','2023-03-01','2023-03-01','Active','Sales');

-- Research grant allocation details
CREATE TABLE research_grant_allocation
(
    grant_id INTEGER PRIMARY KEY,
    project_id INTEGER NOT NULL,
    funding_agency TEXT NOT NULL,
    award_date DATE NOT NULL,
    amount_granted REAL NOT NULL,
    fiscal_year INTEGER NOT NULL,
    duration_months INTEGER NOT NULL,
    principal_investigator TEXT NOT NULL,
    co_pi TEXT,
    allocation_category TEXT NOT NULL,
    reporting_requirement TEXT NOT NULL,
    spend_to_date REAL NOT NULL,
    remaining_balance REAL NOT NULL,
    status TEXT NOT NULL,
    audit_flag INTEGER NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    is_active INTEGER NOT NULL,
    review_cycle TEXT NOT NULL
);

INSERT INTO research_grant_allocation VALUES (1,3001,'NationalScienceFund','2023-02-01',500000,2023,36,'DrSmith','DrLee','BasicResearch','Annual','120000',380000,'Ongoing',0,'First installment','2023-02-01','2023-02-01',1,'Annual');
INSERT INTO research_grant_allocation VALUES (2,3002,'HealthInnovationAgency','2022-07-15',750000,2022,48,'DrBrown',NULL,'AppliedResearch','SemiAnnual','300000',450000,'Active',1,'Mid‑term review','2022-07-15','2022-07-15',1,'SemiAnnual');
INSERT INTO research_grant_allocation VALUES (3,3003,'EnergyDept','2021-01-10',250000,2021,24,'DrWhite','DrGreen','Exploratory','Quarterly','200000',50000,'Completed',0,'Final report submitted','2021-01-10','2021-01-10',0,'Quarterly');

-- City infrastructure project records
CREATE TABLE city_infrastructure_project
(
    project_id INTEGER PRIMARY KEY,
    project_name TEXT NOT NULL,
    project_type TEXT NOT NULL,
    start_date DATE NOT NULL,
    planned_end_date DATE NOT NULL,
    actual_end_date DATE,
    budget_estimated REAL NOT NULL,
    budget_spent REAL NOT NULL,
    contractor_id INTEGER NOT NULL,
    status TEXT NOT NULL,
    priority_level TEXT NOT NULL,
    affected_area TEXT NOT NULL,
    permits_required INTEGER NOT NULL,
    environmental_impact_score REAL NOT NULL,
    stakeholder_group TEXT NOT NULL,
    risk_level TEXT NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    is_active INTEGER NOT NULL,
    city_zone TEXT NOT NULL
);

INSERT INTO city_infrastructure_project VALUES (1,'Downtown Bridge Replacement','Bridge','2023-01-15','2025-12-31',NULL,12000000,3000000,4001,'InProgress','High','Downtown','2',78.5,'Residents,Commuters','Medium','Phase 1 completed','2023-01-15','2023-06-01',1,'Central');
INSERT INTO city_infrastructure_project VALUES (2,'River Flood Mitigation','Stormwater','2022-05-01','2024-04-30','2024-04-15',8500000,8500000,4002,'Completed','Medium','Riverbank','3',92.0,'Businesses,EnvironmentalGroups','Low','Project delivered on time','2022-05-01','2024-04-15',0,'North');
INSERT INTO city_infrastructure_project VALUES (3,'Eastside Light Rail Expansion','Transit','2023-09-01','2026-08-31',NULL,5000000,1500000,4003,'Planning','High','Eastside','4',85.0,'PublicTransportAuthority','High','Environmental study ongoing','2023-09-01','2023-09-15',1,'East');

-- Medical equipment inventory
CREATE TABLE medical_equipment_inventory
(
    equipment_id INTEGER PRIMARY KEY,
    equipment_type TEXT NOT NULL,
    model_number TEXT NOT NULL,
    serial_number TEXT NOT NULL,
    purchase_date DATE NOT NULL,
    warranty_expiration DATE NOT NULL,
    location TEXT NOT NULL,
    department TEXT NOT NULL,
    status TEXT NOT NULL,
    last_service_date DATE NOT NULL,
    service_interval_days INTEGER NOT NULL,
    calibration_due DATE NOT NULL,
    assigned_to TEXT,
    cost REAL NOT NULL,
    depreciation_rate REAL NOT NULL,
    is_critical INTEGER NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    is_active INTEGER NOT NULL,
    supplier_id INTEGER NOT NULL
);

INSERT INTO medical_equipment_inventory VALUES (1,'MRI Scanner','ModelX200','SN12345','2020-03-01','2025-03-01','Radiology Wing','Radiology','Operational','2023-06-01',180,'2023-12-01','DrAllen',2500000,0.10,1,'Annual maintenance contract','2020-03-01','2023-06-01',1,6001);
INSERT INTO medical_equipment_inventory VALUES (2,'Ventilator','VentPro500','SN67890','2021-11-15','2026-11-15','ICU','Intensive Care','Operational','2023-05-15',90,'2023-08-15','NurseKelly',150000,0.08,1,'Spare unit','2021-11-15','2023-05-15',1,6002);
INSERT INTO medical_equipment_inventory VALUES (3,'Ultrasound','UltraSoundA1','SN54321','2019-07-20','2024-07-20','Maternity','Obstetrics','UnderMaintenance','2023-04-01',365,'2024-04-01','DrMiller',85000,0.12,0,'Scheduled for replacement','2019-07-20','2023-04-01',1,6003);

-- Renewable energy farm metrics
CREATE TABLE renewable_energy_farm_metrics
(
    farm_id INTEGER PRIMARY KEY,
    farm_name TEXT NOT NULL,
    energy_type TEXT NOT NULL,
    installed_capacity_mw REAL NOT NULL,
    operational_since DATE NOT NULL,
    average_output_mwh REAL NOT NULL,
    capacity_factor REAL NOT NULL,
    maintenance_downtime_hours INTEGER NOT NULL,
    grid_connection_status TEXT NOT NULL,
    regulatory_compliance INTEGER NOT NULL,
    carbon_offset_tons REAL NOT NULL,
    revenue_annual REAL NOT NULL,
    opex_annual REAL NOT NULL,
    loan_balance REAL NOT NULL,
    owner_company TEXT NOT NULL,
    region TEXT NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    is_active INTEGER NOT NULL,
    certification_status TEXT NOT NULL
);

INSERT INTO renewable_energy_farm_metrics VALUES (1,'WindPark Alpha','Wind',150.0,'2018-05-01',400000,0.30,120,'Connected',1,120000,25000000,5000000,8000000,'GreenEnergyCo','Midwest','Phase 2 expansion ongoing','2018-05-01','2023-07-01',1,'ISO14001');
INSERT INTO renewable_energy_farm_metrics VALUES (2,'SolarFields Beta','Solar',80.0,'2020-09-15',200000,0.28,80,'Connected',1,60000,12000000,3000000,2000000,'SunPowerInc','Southwest','Added battery storage','2020-09-15','2023-07-01',1,'ISO50001');
INSERT INTO renewable_energy_farm_metrics VALUES (3,'HydroStream Gamma','Hydro',50.0,'2015-03-20',300000,0.35,50,'Disconnected',0,90000,18000000,4000000,5000000,'AquaEnergy','Pacific','Undergoing refurbishment','2015-03-20','2023-07-01',0,'ISO9001');

-- Fraud detection events
CREATE TABLE fraud_detection_event
(
    event_id INTEGER PRIMARY KEY,
    account_id INTEGER NOT NULL,
    detection_timestamp DATE NOT NULL,
    event_type TEXT NOT NULL,
    risk_score REAL NOT NULL,
    source TEXT NOT NULL,
    description TEXT,
    resolved INTEGER NOT NULL,
    resolution_timestamp DATE,
    analyst_name TEXT,
    recommended_action TEXT,
    fraud_category TEXT,
    amount_affected REAL,
    transaction_id INTEGER,
    is_false_positive INTEGER NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    status TEXT NOT NULL,
    escalation_level TEXT NOT NULL
);

INSERT INTO fraud_detection_event VALUES (1,1001,'2023-07-10','CardSkimming',85.5,'POS','Multiple small withdrawals detected',0,NULL,'AnaSmith','BlockCard','CardFraud',2500,45001,0,'Investigating pattern','2023-07-10','2023-07-10','Open','High');
INSERT INTO fraud_detection_event VALUES (2,1002,'2023-06-22','AccountTakeover',92.0,'Online','Login from unrecognized device',1,'2023-06-23','BobJones','ResetCredentials','IdentityTheft',0,0,0,'Account secured','2023-06-22','2023-06-23','Closed','Medium');
INSERT INTO fraud_detection_event VALUES (3,1003,'2023-05-15','TransferLoop',78.0,'Wire','Series of rapid transfers between internal accounts',1,'2023-05-16','CarolLee','FreezeAccounts','MoneyLaundering',50000,78009,0,'Funds recovered','2023-05-15','2023-05-16','Closed','Low');

-- Customer loyalty activity log
CREATE TABLE customer_loyalty_activity
(
    activity_id INTEGER PRIMARY KEY,
    client_id INTEGER NOT NULL,
    program_id INTEGER NOT NULL,
    activity_date DATE NOT NULL,
    activity_type TEXT NOT NULL,
    points_earned INTEGER NOT NULL,
    points_redeemed INTEGER NOT NULL,
    tier_before TEXT NOT NULL,
    tier_after TEXT NOT NULL,
    channel TEXT NOT NULL,
    location TEXT NOT NULL,
    transaction_id INTEGER,
    amount_spent REAL,
    product_category TEXT,
    campaign_code TEXT,
    is_bonus INTEGER NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    is_active INTEGER NOT NULL,
    reward_status TEXT NOT NULL
);

INSERT INTO customer_loyalty_activity VALUES (1,50001,101,'2023-07-01','Purchase',120,0,'Silver','Gold','Online','Website',70001,350.75,'Electronics','SUMMER23',0,'First gold tier upgrade','2023-07-01','2023-07-01',1,'Pending');
INSERT INTO customer_loyalty_activity VALUES (2,50002,102,'2023-06-15','Referral',200,0,'Gold','Platinum','InStore','BranchA',70002,0,NULL,'REFERRAL2023',1,'Referral bonus awarded','2023-06-15','2023-06-15',1,'Credited');
INSERT INTO customer_loyalty_activity VALUES (3,50003,101,'2023-05-20','Redemption',0,150,'Bronze','Bronze','MobileApp','App',70003,0,NULL,'REDEEM150',0,'Points redeemed for gift card','2023-05-20','2023-05-20',1,'Completed');