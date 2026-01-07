-- Public health surveillance data
CREATE TABLE public_health_surveillance (
    surv_id INTEGER PRIMARY KEY,
    region_code TEXT NOT NULL,
    report_date DATE NOT NULL,
    disease TEXT NOT NULL,
    case_count INTEGER NOT NULL,
    death_count INTEGER,
    hospitalized INTEGER,
    tests_conducted INTEGER,
    vaccination_rate REAL,
    population INTEGER,
    median_age REAL,
    median_income REAL,
    urbanization_level TEXT,
    weather_condition TEXT,
    air_quality_index INTEGER,
    mobility_index REAL,
    social_distancing_score REAL,
    lab_capacity INTEGER,
    contact_tracing_coverage REAL,
    public_awareness_score REAL,
    healthcare_facilities INTEGER,
    notes TEXT
);
INSERT INTO public_health_surveillance (surv_id,region_code,report_date,disease,case_count,death_count,hospitalized,tests_conducted,vaccination_rate,population,median_age,median_income,urbanization_level,weather_condition,air_quality_index,mobility_index,social_distancing_score,lab_capacity,contact_tracing_coverage,public_awareness_score,healthcare_facilities,notes) VALUES
(1,'R001','2023-01-15','Flu',120,2,15,500,0.68,250000,38.2,54000,'Urban','Cold',45,0.73,0.55,20,0.78,0.62,12,'Initial report');
INSERT INTO public_health_surveillance (surv_id,region_code,report_date,disease,case_count,death_count,hospitalized,tests_conducted,vaccination_rate,population,median_age,median_income,urbanization_level,weather_condition,air_quality_index,mobility_index,social_distancing_score,lab_capacity,contact_tracing_coverage,public_awareness_score,healthcare_facilities,notes) VALUES
(2,'R002','2023-01-16','COVID19',340,5,40,1200,0.81,500000,42.5,72000,'Suburban','Mild',60,0.68,0.49,30,0.85,0.71,20,'Ongoing monitoring');
INSERT INTO public_health_surveillance (surv_id,region_code,report_date,disease,case_count,death_count,hospitalized,tests_conducted,vaccination_rate,population,median_age,median_income,urbanization_level,weather_condition,air_quality_index,mobility_index,social_distancing_score,lab_capacity,contact_tracing_coverage,public_awareness_score,healthcare_facilities,notes) VALUES
(3,'R003','2023-01-17','Measles',25,0,2,300,0.92,150000,30.1,48000,'Rural','Dry',30,0.80,0.62,10,0.65,0.55,8,'Isolated cases');

-- Smart city parking meter data
CREATE TABLE smart_city_parking_meter (
    meter_id INTEGER PRIMARY KEY,
    location_id TEXT NOT NULL,
    installation_date DATE NOT NULL,
    status TEXT NOT NULL,
    hourly_rate REAL NOT NULL,
    max_daily_hours INTEGER NOT NULL,
    payment_method TEXT NOT NULL,
    sensor_status TEXT NOT NULL,
    battery_level REAL NOT NULL,
    firmware_version TEXT NOT NULL,
    maintenance_due DATE NOT NULL,
    last_service_date DATE NOT NULL,
    total_transactions INTEGER NOT NULL,
    revenue_today REAL NOT NULL,
    zone_code TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    occupancy_rate REAL NOT NULL,
    violation_count INTEGER NOT NULL,
    manufacturer TEXT NOT NULL
);
INSERT INTO smart_city_parking_meter (meter_id,location_id,installation_date,status,hourly_rate,max_daily_hours,payment_method,sensor_status,battery_level,firmware_version,maintenance_due,last_service_date,total_transactions,revenue_today,zone_code,latitude,longitude,occupancy_rate,violation_count,manufacturer) VALUES
(101,'LOC1001','2022-06-01','Active',2.5,8,'Card','OK',95.2,'v1.3','2023-12-01','2023-01-10',1200,300.00,'Z01',40.7128,-74.0060,0.76,5,'MeterCo');
INSERT INTO smart_city_parking_meter (meter_id,location_id,installation_date,status,hourly_rate,max_daily_hours,payment_method,sensor_status,battery_level,firmware_version,maintenance_due,last_service_date,total_transactions,revenue_today,zone_code,latitude,longitude,occupancy_rate,violation_count,manufacturer) VALUES
(102,'LOC1002','2022-07-15','Active',3.0,10,'App','OK',88.5,'v1.4','2024-01-15','2023-02-05',900,270.00,'Z02',34.0522,-118.2437,0.68,2,'ParkTech');
INSERT INTO smart_city_parking_meter (meter_id,location_id,installation_date,status,hourly_rate,max_daily_hours,payment_method,sensor_status,battery_level,firmware_version,maintenance_due,last_service_date,total_transactions,revenue_today,zone_code,latitude,longitude,occupancy_rate,violation_count,manufacturer) VALUES
(103,'LOC1003','2023-01-20','Inactive',2.0,6,'Cash','Faulty',72.0,'v1.2','2023-11-20','2022-12-30',300,60.00,'Z03',51.5074,-0.1278,0.44,12,'UrbanMeters');

-- Regional water quality index data
CREATE TABLE regional_water_quality_index (
    wq_id INTEGER PRIMARY KEY,
    region_id TEXT NOT NULL,
    sample_date DATE NOT NULL,
    ph_level REAL NOT NULL,
    turbidity REAL NOT NULL,
    dissolved_oxygen REAL NOT NULL,
    temperature_c REAL NOT NULL,
    nitrate_mg_l REAL NOT NULL,
    phosphate_mg_l REAL NOT NULL,
    bacterial_count INTEGER NOT NULL,
    lead_ppb REAL,
    mercury_ppb REAL,
    arsenic_ppb REAL,
    conductivity_us_cm REAL,
    water_source_type TEXT NOT NULL,
    sampling_method TEXT NOT NULL,
    analyst_name TEXT NOT NULL,
    report_status TEXT NOT NULL,
    notes TEXT,
    quality_category TEXT NOT NULL,
    data_source TEXT NOT NULL
);
INSERT INTO regional_water_quality_index (wq_id,region_id,sample_date,ph_level,turbidity,dissolved_oxygen,temperature_c,nitrate_mg_l,phosphate_mg_l,bacterial_count,lead_ppb,mercury_ppb,arsenic_ppb,conductivity_us_cm,water_source_type,sampling_method,analyst_name,report_status,notes,quality_category,data_source) VALUES
(1,'RG01','2023-01-10',7.2,1.5,8.1,15.0,3.2,0.4,120,5.0,0.2,1.0,250,'River','Grab','Alice','Approved','All parameters within limits','Good','DeptEnv');
INSERT INTO regional_water_quality_index (wq_id,region_id,sample_date,ph_level,turbidity,dissolved_oxygen,temperature_c,nitrate_mg_l,phosphate_mg_l,bacterial_count,lead_ppb,mercury_ppb,arsenic_ppb,conductivity_us_cm,water_source_type,sampling_method,analyst_name,report_status,notes,quality_category,data_source) VALUES
(2,'RG02','2023-01-12',6.8,2.3,7.5,12.5,5.0,0.7,250,12.0,0.5,2.5,300,'Lake','Automatic','Bob','Pending','Elevated nitrate','Moderate','DeptEnv');
INSERT INTO regional_water_quality_index (wq_id,region_id,sample_date,ph_level,turbidity,dissolved_oxygen,temperature_c,nitrate_mg_l,phosphate_mg_l,bacterial_count,lead_ppb,mercury_ppb,arsenic_ppb,conductivity_us_cm,water_source_type,sampling_method,analyst_name,report_status,notes,quality_category,data_source) VALUES
(3,'RG03','2023-01-14',8.0,0.8,9.0,10.0,1.5,0.2,80,2.0,0.1,0.5,180,'Groundwater','Manual','Carol','Approved','Excellent water quality','Excellent','DeptEnv');

-- Digital twin asset registry
CREATE TABLE digital_twin_asset (
    twin_id INTEGER PRIMARY KEY,
    asset_type TEXT NOT NULL,
    asset_id INTEGER NOT NULL,
    model_version TEXT NOT NULL,
    last_sync TIMESTAMP NOT NULL,
    health_score REAL NOT NULL,
    status TEXT NOT NULL,
    location_lat REAL NOT NULL,
    location_long REAL NOT NULL,
    manufacturer TEXT NOT NULL,
    installation_year INTEGER NOT NULL,
    warranty_end DATE NOT NULL,
    maintenance_cycle_days INTEGER NOT NULL,
    firmware_version TEXT NOT NULL,
    config_hash TEXT NOT NULL,
    usage_hours INTEGER NOT NULL,
    error_count INTEGER NOT NULL,
    last_error_code TEXT,
    owner_department TEXT NOT NULL,
    lifecycle_stage TEXT NOT NULL,
    depreciation_value REAL NOT NULL
);
INSERT INTO digital_twin_asset (twin_id,asset_type,asset_id,model_version,last_sync,health_score,status,location_lat,location_long,manufacturer,installation_year,warranty_end,maintenance_cycle_days,firmware_version,config_hash,usage_hours,error_count,last_error_code,owner_department,lifecycle_stage,depreciation_value) VALUES
(1,'HVAC',2001,'v2.1','2023-01-20 10:15:00',0.92,'Operational',40.7128,-74.0060,'CoolTech',2018,'2023-12-31',180,'fw3.5','abcd1234efgh5678',4500,2,'E001','Facilities','Midlife',15000.00);
INSERT INTO digital_twin_asset (twin_id,asset_type,asset_id,model_version,last_sync,health_score,status,location_lat,location_long,manufacturer,installation_year,warranty_end,maintenance_cycle_days,firmware_version,config_hash,usage_hours,error_count,last_error_code,owner_department,lifecycle_stage,depreciation_value) VALUES
(2,'Elevator',3005,'v1.8','2023-01-21 08:30:00',0.78,'Degraded',34.0522,-118.2437,'LiftPro',2015,'2022-06-30',365,'fw2.9','ijkl9012mnop3456',8200,5,'E015','Operations','Aging',23000.00);
INSERT INTO digital_twin_asset (twin_id,asset_type,asset_id,model_version,last_sync,health_score,status,location_lat,location_long,manufacturer,installation_year,warranty_end,maintenance_cycle_days,firmware_version,config_hash,usage_hours,error_count,last_error_code,owner_department,lifecycle_stage,depreciation_value) VALUES
(3,'Generator',4002,'v3.0','2023-01-22 14:45:00',0.99,'Operational',51.5074,-0.1278,'PowerGen',2020,'2025-12-31',90,'fw4.1','qrst7890uvwx1234',1500,0,NULL,'Energy','New',8000.00);

-- Aircraft maintenance log
CREATE TABLE aircraft_maintenance_log (
    log_id INTEGER PRIMARY KEY,
    aircraft_reg TEXT NOT NULL,
    maintenance_date DATE NOT NULL,
    maintenance_type TEXT NOT NULL,
    performed_by TEXT NOT NULL,
    hangar_location TEXT NOT NULL,
    flight_hours INTEGER NOT NULL,
    cycles INTEGER NOT NULL,
    parts_replaced TEXT,
    labor_hours REAL NOT NULL,
    cost REAL NOT NULL,
    next_due_date DATE NOT NULL,
    remarks TEXT,
    certification_status TEXT NOT NULL,
    inspector_id INTEGER NOT NULL,
    downtime_minutes INTEGER NOT NULL,
    fuel_before REAL NOT NULL,
    fuel_after REAL NOT NULL,
    overhaul_required INTEGER NOT NULL,
    compliance_flag INTEGER NOT NULL,
    maintenance_group TEXT NOT NULL
);
INSERT INTO aircraft_maintenance_log (log_id,aircraft_reg,maintenance_date,maintenance_type,performed_by,hangar_location,flight_hours,cycles,parts_replaced,labor_hours,cost,next_due_date,remarks,certification_status,inspector_id,downtime_minutes,fuel_before,fuel_after,overhaul_required,compliance_flag,maintenance_group) VALUES
(1,'N12345','2023-01-05','A-Check','TechA','Hangar1',1500,800,'Filter,BrakePads',12.5,8500.00,'2023-06-05','Routine A‑Check','Certified',101,180,5000,4800,0,1,'GroupA');
INSERT INTO aircraft_maintenance_log (log_id,aircraft_reg,maintenance_date,maintenance_type,performed_by,hangar_location,flight_hours,cycles,parts_replaced,labor_hours,cost,next_due_date,remarks,certification_status,inspector_id,downtime_minutes,fuel_before,fuel_after,overhaul_required,compliance_flag,maintenance_group) VALUES
(2,'N67890','2023-01-12','Engine Overhaul','TechB','Hangar2',3200,1500,'Engine1,Turbocharger',48.0,42000.00,'2024-01-12','Major engine work','Pending',102,720,12000,11000,1,0,'GroupB');
INSERT INTO aircraft_maintenance_log (log_id,aircraft_reg,maintenance_date,maintenance_type,performed_by,hangar_location,flight_hours,cycles,parts_replaced,labor_hours,cost,next_due_date,remarks,certification_status,inspector_id,downtime_minutes,fuel_before,fuel_after,overhaul_required,compliance_flag,maintenance_group) VALUES
(3,'N54321','2023-01-20','C-Check','TechC','Hangar3',2400,1200,'Avionics,LandingGear',30.0,15000.00,'2023-12-20','Comprehensive C‑Check','Certified',103,360,8000,7800,0,1,'GroupC');

-- Consumer credit history table
CREATE TABLE consumer_credit_history (
    record_id INTEGER PRIMARY KEY,
    consumer_id INTEGER NOT NULL,
    report_date DATE NOT NULL,
    credit_score INTEGER NOT NULL,
    total_accounts INTEGER NOT NULL,
    open_accounts INTEGER NOT NULL,
    closed_accounts INTEGER NOT NULL,
    total_credit_limit REAL NOT NULL,
    used_credit REAL NOT NULL,
    delinquent_accounts INTEGER NOT NULL,
    recent_inquiries INTEGER NOT NULL,
    public_records INTEGER NOT NULL,
    bankruptcies INTEGER NOT NULL,
    collections INTEGER NOT NULL,
    revolving_balance REAL NOT NULL,
    installment_balance REAL NOT NULL,
    mortgage_balance REAL NOT NULL,
    credit_utilization REAL NOT NULL,
    risk_category TEXT NOT NULL,
    notes TEXT,
    source_agency TEXT NOT NULL
);
INSERT INTO consumer_credit_history (record_id,consumer_id,report_date,credit_score,total_accounts,open_accounts,closed_accounts,total_credit_limit,used_credit,delinquent_accounts,recent_inquiries,public_records,bankruptcies,collections,revolving_balance,installment_balance,mortgage_balance,credit_utilization,risk_category,notes,source_agency) VALUES
(1,1001,'2023-01-01',720,12,8,4,250000,85000,0,2,0,0,0,60000,20000,100000,0.34,'Low','No issues','Equifax');
INSERT INTO consumer_credit_history (record_id,consumer_id,report_date,credit_score,total_accounts,open_accounts,closed_accounts,total_credit_limit,used_credit,delinquent_accounts,recent_inquiries,public_records,bankruptcies,collections,revolving_balance,installment_balance,mortgage_balance,credit_utilization,risk_category,notes,source_agency) VALUES
(2,1002,'2023-01-02',650,9,5,4,150000,120000,1,4,1,0,1,90000,15000,80000,0.80,'Medium','Late payments observed','TransUnion');
INSERT INTO consumer_credit_history (record_id,consumer_id,report_date,credit_score,total_accounts,open_accounts,closed_accounts,total_credit_limit,used_credit,delinquent_accounts,recent_inquiries,public_records,bankruptcies,collections,revolving_balance,installment_balance,mortgage_balance,credit_utilization,risk_category,notes,source_agency) VALUES
(3,1003,'2023-01-03',580,6,2,4,80000,70000,2,6,2,1,2,50000,10000,15000,0.88,'High','Recent bankruptcy','Experian');

-- Wildlife conservation area table
CREATE TABLE wildlife_conservation_area (
    area_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    designation_date DATE NOT NULL,
    region_code TEXT NOT NULL,
    total_area_sqkm REAL NOT NULL,
    habitat_type TEXT NOT NULL,
    protected_species INTEGER NOT NULL,
    endangered_species INTEGER NOT NULL,
    poaching_incidents INTEGER NOT NULL,
    ranger_staff INTEGER NOT NULL,
    patrols_per_month INTEGER NOT NULL,
    funding_budget REAL NOT NULL,
    donor_agency TEXT NOT NULL,
    management_plan_version TEXT NOT NULL,
    monitoring_frequency TEXT NOT NULL,
    last_audit_date DATE NOT NULL,
    climate_zone TEXT NOT NULL,
    average_rainfall_mm REAL NOT NULL,
    average_temperature_c REAL NOT NULL,
    notes TEXT,
    gps_boundary_blob TEXT NOT NULL
);
INSERT INTO wildlife_conservation_area (area_id,name,designation_date,region_code,total_area_sqkm,habitat_type,protected_species,endangered_species,poaching_incidents,ranger_staff,patrols_per_month,funding_budget,donor_agency,management_plan_version,monitoring_frequency,last_audit_date,climate_zone,average_rainfall_mm,average_temperature_c,notes,gps_boundary_blob) VALUES
(1,'Green Valley','2020-05-15','RC01',350.5,'Savanna',45,12,3,15,20,1250000,'WorldWildlife','MPV1','Quarterly','2022-11-01','Tropical',1200.5,27.3,'No major issues','POLYDATA1');
INSERT INTO wildlife_conservation_area (area_id,name,designation_date,region_code,total_area_sqkm,habitat_type,protected_species,endangered_species,poaching_incidents,ranger_staff,patrols_per_month,funding_budget,donor_agency,management_plan_version,monitoring_frequency,last_audit_date,climate_zone,average_rainfall_mm,average_temperature_c,notes,gps_boundary_blob) VALUES
(2,'Blue Ridge','2018-09-30','RC02',120.0,'Temperate Forest',30,5,0,10,12,800000,'EcoFund','MPV2','Biannual','2023-02-15','Temperate',950.0,15.8,'Stable population','POLYDATA2');
INSERT INTO wildlife_conservation_area (area_id,name,designation_date,region_code,total_area_sqkm,habitat_type,protected_species,endangered_species,poaching_incidents,ranger_staff,patrols_per_month,funding_budget,donor_agency,management_plan_version,monitoring_frequency,last_audit_date,climate_zone,average_rainfall_mm,average_temperature_c,notes,gps_boundary_blob) VALUES
(3,'Red Desert','2019-12-01','RC03',500.0,'Desert',15,2,7,8,8,600000,'DesertAlliance','MPV1','Annual','2022-08-20','Arid',250.0,30.0,'Poaching concerns','POLYDATA3');

-- City infrastructure funding table
CREATE TABLE city_infrastructure_funding (
    fund_id INTEGER PRIMARY KEY,
    project_id INTEGER NOT NULL,
    fiscal_year INTEGER NOT NULL,
    allocated_amount REAL NOT NULL,
    spent_amount REAL NOT NULL,
    funding_source TEXT NOT NULL,
    approval_date DATE NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    project_manager TEXT NOT NULL,
    department TEXT NOT NULL,
    status TEXT NOT NULL,
    contingency_reserve REAL,
    cost_overrun REAL,
    remarks TEXT,
    external_audit_flag INTEGER NOT NULL,
    audit_date DATE,
    revised_budget REAL,
    next_funding_round DATE,
    grant_number TEXT,
    matching_funds REAL
);
INSERT INTO city_infrastructure_funding (fund_id,project_id,fiscal_year,allocated_amount,spent_amount,funding_source,approval_date,start_date,end_date,project_manager,department,status,contingency_reserve,cost_overrun,remarks,external_audit_flag,audit_date,revised_budget,next_funding_round,grant_number,matching_funds) VALUES
(1,2001,2023,5000000,1200000,'FederalGrant','2022-12-01','2023-01-15','2025-12-31','Alice Smith','Transportation','Active',250000,NULL,'Phase 1 underway',0,NULL,NULL,'2024-01-01','GRNT2023A',50000);
INSERT INTO city_infrastructure_funding (fund_id,project_id,fiscal_year,allocated_amount,spent_amount,funding_source,approval_date,start_date,end_date,project_manager,department,status,contingency_reserve,cost_overrun,remarks,external_audit_flag,audit_date,revised_budget,next_funding_round,grant_number,matching_funds) VALUES
(2,2002,2023,3000000,2500000,'MunicipalBond','2023-02-10','2023-03-01','2026-06-30','Bob Jones','WaterWorks','Delayed',150000,200000,'Unexpected soil issues',1,'2023-08-15',3200000,'2024-06-01','GRNT2023B',100000);
INSERT INTO city_infrastructure_funding (fund_id,project_id,fiscal_year,allocated_amount,spent_amount,funding_source,approval_date,start_date,end_date,project_manager,department,status,contingency_reserve,cost_overrun,remarks,external_audit_flag,audit_date,revised_budget,next_funding_round,grant_number,matching_funds) VALUES
(3,2003,2023,2000000,500000,'StateFund','2023-01-20','2023-02-15','2024-12-31','Carol Lee','Energy','Planning',100000,NULL,'Pre‑construction',0,NULL,NULL,'2024-01-15','GRNT2023C',25000);

-- Telecom 5G node table
CREATE TABLE telecom_5g_node (
    node_id INTEGER PRIMARY KEY,
    site_name TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    installation_date DATE NOT NULL,
    vendor TEXT NOT NULL,
    antenna_type TEXT NOT NULL,
    frequency_band TEXT NOT NULL,
    max_capacity INTEGER NOT NULL,
    current_load INTEGER NOT NULL,
    backhaul_type TEXT NOT NULL,
    backhaul_capacity REAL NOT NULL,
    power_source TEXT NOT NULL,
    temperature_c REAL NOT NULL,
    humidity_percent REAL NOT NULL,
    firmware_version TEXT NOT NULL,
    maintenance_cycle_days INTEGER NOT NULL,
    last_maintenance DATE NOT NULL,
    status TEXT NOT NULL,
    alerts_count INTEGER NOT NULL,
    notes TEXT
);
INSERT INTO telecom_5g_node (node_id,site_name,latitude,longitude,installation_date,vendor,antenna_type,frequency_band,max_capacity,current_load,backhaul_type,backhaul_capacity,power_source,temperature_c,humidity_percent,firmware_version,maintenance_cycle_days,last_maintenance,status,alerts_count,notes) VALUES
(101,'NodeA',40.7128,-74.0060,'2022-11-01','Nokia','MassiveMIMO','mmWave',10000,4200,'Fiber','10Gbps','Solar',22.5,55.0,'v5.2',180,'2023-07-01','Active',2,'Core downtown site');
INSERT INTO telecom_5g_node (node_id,site_name,latitude,longitude,installation_date,vendor,antenna_type,frequency_band,max_capacity,current_load,backhaul_type,backhaul_capacity,power_source,temperature_c,humidity_percent,firmware_version,maintenance_cycle_days,last_maintenance,status,alerts_count,notes) VALUES
(102,'NodeB',34.0522,-118.2437,'2023-01-15','Ericsson','Sub6','Sub6GHz',8000,6000,'Microwave','5Gbps','Grid',24.0,45.0,'v5.3',150,'2023-06-20','Active',0,'Westside coverage');
INSERT INTO telecom_5g_node (node_id,site_name,latitude,longitude,installation_date,vendor,antenna_type,frequency_band,max_capacity,current_load,backhaul_type,backhaul_capacity,power_source,temperature_c,humidity_percent,firmware_version,maintenance_cycle_days,last_maintenance,status,alerts_count,notes) VALUES
(103,'NodeC',51.5074,-0.1278,'2023-02-20','Huawei','MassiveMIMO','mmWave',12000,7500,'Fiber','12Gbps','Hybrid',20.0,60.0,'v5.4',200,'2023-07-10','Maintenance',5,'London central hub');

-- Climate resilience plan table
CREATE TABLE climate_resilience_plan (
    plan_id INTEGER PRIMARY KEY,
    municipality_code TEXT NOT NULL,
    plan_year INTEGER NOT NULL,
    adaptation_strategy TEXT NOT NULL,
    mitigation_strategy TEXT NOT NULL,
    budget_estimate REAL NOT NULL,
    funding_source TEXT NOT NULL,
    stakeholder_group TEXT NOT NULL,
    risk_assessment_score REAL NOT NULL,
    projected_impact TEXT NOT NULL,
    implementation_phase TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    responsible_agency TEXT NOT NULL,
    monitoring_indicator TEXT NOT NULL,
    review_cycle_years INTEGER NOT NULL,
    last_review_date DATE NOT NULL,
    next_review_date DATE NOT NULL,
    status TEXT NOT NULL,
    comments TEXT,
    data_version TEXT NOT NULL
);
INSERT INTO climate_resilience_plan (plan_id,municipality_code,plan_year,adaptation_strategy,mitigation_strategy,budget_estimate,funding_source,stakeholder_group,risk_assessment_score,projected_impact,implementation_phase,start_date,end_date,responsible_agency,monitoring_indicator,review_cycle_years,last_review_date,next_review_date,status,comments,data_version) VALUES
(1,'M001',2023,'Floodplain restoration','Renewable energy upgrade',2500000,'StateGrant','LocalCommunity',7.5,'Reduced flood risk','Phase1','2023-03-01','2025-12-31','EnvironmentalDept','WaterLevelSensor',2,'2023-04-15','2025-04-15','Active','Initial rollout','v1.0');
INSERT INTO climate_resilience_plan (plan_id,municipality_code,plan_year,adaptation_strategy,mitigation_strategy,budget_estimate,funding_source,stakeholder_group,risk_assessment_score,projected_impact,implementation_phase,start_date,end_date,responsible_agency,monitoring_indicator,review_cycle_years,last_review_date,next_review_date,status,comments,data_version) VALUES
(2,'M002',2023,'Heat island mitigation','Public transport electrification',4000000,'FederalFund','RegionalCouncil',8.2,'Lower heat stress','Phase2','2023-05-01','2026-06-30','UrbanPlanningDept','TemperatureReadings',3,'2023-06-01','2026-06-01','Planning','Awaiting approvals','v1.1');
INSERT INTO climate_resilience_plan (plan_id,municipality_code,plan_year,adaptation_strategy,mitigation_strategy,budget_estimate,funding_source,stakeholder_group,risk_assessment_score,projected_impact,implementation_phase,start_date,end_date,responsible_agency,monitoring_indicator,review_cycle_years,last_review_date,next_review_date,status,comments,data_version) VALUES
(3,'M003',2023,'Coastal dune reinforcement','Carbon sequestration program',3500000,'PrivatePartnership','NGOs',7.9,'Protect shoreline','Phase1','2023-07-15','2027-12-31','CoastalManagementAgency','ErosionRate',4,'2023-08-01','2027-08-01','Active','Community workshops scheduled','v1.0');