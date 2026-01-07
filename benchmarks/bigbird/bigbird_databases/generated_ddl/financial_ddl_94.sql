-- Branch security device inventory
CREATE TABLE branch_security_device_inventory (
    device_id INTEGER PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    device_type TEXT NOT NULL,
    manufacturer TEXT,
    model_number TEXT,
    serial_number TEXT,
    installation_date DATE,
    warranty_expiry DATE,
    firmware_version TEXT,
    status TEXT,
    last_maintenance DATE,
    next_maintenance DATE,
    configuration TEXT,
    ip_address TEXT,
    mac_address TEXT,
    location_description TEXT,
    alarm_threshold REAL,
    battery_level INTEGER,
    signal_strength INTEGER,
    notes TEXT
);

INSERT INTO branch_security_device_inventory VALUES (1,101,'Camera','SecureCam','X100','SN001','2022-01-15','2025-01-15','v1.2','Active','2023-06-01','2023-12-01','1080p','192.168.1.10','AA:BB:CC:DD:EE:01','Entrance Lobby',0.8,95,80,'Initial install');
INSERT INTO branch_security_device_inventory VALUES (2,102,'MotionSensor','SafeSense','MS200','SN002','2021-09-10','2024-09-10','v3.4','Active','2023-05-20','2023-11-20','Infrared','192.168.2.20','AA:BB:CC:DD:EE:02','Vault Corridor',0.5,90,85,'Calibrated');
INSERT INTO branch_security_device_inventory VALUES (3,103,'AlarmPanel','AlertTech','AP500','SN003','2020-03-05','2023-03-05','v2.0','Maintenance','2023-04-15','2023-10-15','Panel v2','192.168.3.30','AA:BB:CC:DD:EE:03','Main Hall',0.0,100,90,'Panel upgrade due');

-- Fleet vehicle maintenance schedule
CREATE TABLE fleet_vehicle_maintenance_schedule (
    schedule_id INTEGER PRIMARY KEY,
    vehicle_id INTEGER NOT NULL,
    service_type TEXT NOT NULL,
    provider TEXT,
    scheduled_date DATE,
    due_km INTEGER,
    odometer_reading INTEGER,
    cost_estimate REAL,
    parts_needed TEXT,
    priority TEXT,
    status TEXT,
    created_by TEXT,
    created_at DATE,
    updated_by TEXT,
    updated_at DATE,
    notes TEXT,
    warranty_covered INTEGER,
    service_cycle_months INTEGER,
    last_service_date DATE,
    next_service_date DATE
);

INSERT INTO fleet_vehicle_maintenance_schedule VALUES (1,1001,'OilChange','AutoCare','2023-07-15',15000,14500,120.50,'OilFilter', 'High','Scheduled','scheduler','2023-04-01','admin','2023-04-01','Replace oil filter as well','1',6,'2023-01-15','2023-07-15');
INSERT INTO fleet_vehicle_maintenance_schedule VALUES (2,1002,'TireRotation','TirePro','2023-08-01',30000,29800,80.00,'TireSet', 'Medium','Planned','scheduler','2023-04-05','admin','2023-04-05','Check tire pressure','0',12,'2022-08-01','2023-08-01');
INSERT INTO fleet_vehicle_maintenance_schedule VALUES (3,1003,'BrakeInspection','BrakeWorks','2023-09-10',50000,49500,200.00,'BrakePads', 'High','Pending','scheduler','2023-04-10','admin','2023-04-10','Brake fluid replace recommended','1',9,'2023-03-10','2023-09-10');

-- Environmental sensor station readings
CREATE TABLE environmental_sensor_station_readings (
    reading_id INTEGER PRIMARY KEY,
    station_id INTEGER NOT NULL,
    sensor_type TEXT NOT NULL,
    reading_value REAL NOT NULL,
    unit TEXT NOT NULL,
    reading_timestamp DATETIME NOT NULL,
    battery_voltage REAL,
    signal_strength INTEGER,
    firmware_version TEXT,
    calibration_date DATE,
    latitude REAL,
    longitude REAL,
    altitude REAL,
    status TEXT,
    notes TEXT,
    temperature REAL,
    humidity REAL,
    pressure REAL,
    wind_speed REAL,
    wind_direction TEXT
);

INSERT INTO environmental_sensor_station_readings VALUES (1,201,'AirQuality',42.5,'AQI','2023-06-20 08:00:00',3.7,78,'v1.0','2022-12-01',40.7128,-74.0060,10,'OK','Routine',22.5,55,1013,5.2,'NE');
INSERT INTO environmental_sensor_station_readings VALUES (2,202,'WaterLevel',3.2,'m','2023-06-20 08:05:00',3.9,80,'v1.2','2023-01-15',34.0522,-118.2437,30,'OK','Calibrated',19.0,60,1010,0.0,'N');
INSERT INTO environmental_sensor_station_readings VALUES (3,203,'SoilMoisture',18.7,'%','2023-06-20 08:10:00',3.5,75,'v1.1','2022-11-20',51.5074,-0.1278,15,'OK','No issues',16.0,70,1015,0.0,'S');

-- Digital wallet transaction log
CREATE TABLE digital_wallet_transaction_log (
    txn_id INTEGER PRIMARY KEY,
    wallet_id INTEGER NOT NULL,
    transaction_type TEXT NOT NULL,
    amount REAL NOT NULL,
    currency TEXT NOT NULL,
    txn_date DATE NOT NULL,
    merchant_name TEXT,
    merchant_category TEXT,
    status TEXT,
    auth_code TEXT,
    settlement_date DATE,
    fees REAL,
    exchange_rate REAL,
    ip_address TEXT,
    device_id TEXT,
    location_city TEXT,
    location_country TEXT,
    notes TEXT,
    receipt_number TEXT,
    loyalty_points_earned INTEGER
);

INSERT INTO digital_wallet_transaction_log VALUES (1,301,'Purchase',45.99,'USD','2023-06-18','CoffeeHouse','Food & Beverage','Completed','AC123','2023-06-19',0.30,1.0,'192.168.10.5','DEV001','NewYork','USA','Morning coffee', 'RCPT001',10);
INSERT INTO digital_wallet_transaction_log VALUES (2,302,'Transfer',250.00,'EUR','2023-06-19','Friend','Personal','Completed','AT456','2023-06-20',0.00,1.1,'192.168.10.6','DEV002','Berlin','Germany','Rent payment', 'RCPT002',0);
INSERT INTO digital_wallet_transaction_log VALUES (3,303,'Withdrawal',100.00,'USD','2023-06-20','ATMNetwork','Cash Withdrawal','Pending','AW789','2023-06-21',0.50,1.0,'192.168.10.7','DEV003','Chicago','USA','ATM cash pick-up', 'RCPT003',0);

-- Marketing campaign performance
CREATE TABLE marketing_campaign_performance (
    campaign_id INTEGER PRIMARY KEY,
    campaign_name TEXT NOT NULL,
    start_date DATE,
    end_date DATE,
    budget REAL,
    channel TEXT,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    conversion_rate REAL,
    cost_per_click REAL,
    cost_per_acquisition REAL,
    revenue_generated REAL,
    roi REAL,
    target_audience TEXT,
    geo_target TEXT,
    device_target TEXT,
    status TEXT,
    created_by TEXT,
    notes TEXT
);

INSERT INTO marketing_campaign_performance VALUES (1,'SummerSale','2023-06-01','2023-06-30',50000,'Email',1200000,35000,2500,0.071,1.43,20.00,75000,1.5,'Adults 25-45','NorthAmerica','Mobile','Active','marketer','Seasonal discount');
INSERT INTO marketing_campaign_performance VALUES (2,'BackToSchool','2023-08-01','2023-08-31',40000,'SocialMedia',900000,27000,1800,0.067,1.48,22.22,65000,1.62,'Students 18-24','Europe','Desktop','Planned','marketer','Upcoming campaign');
INSERT INTO marketing_campaign_performance VALUES (3,'YearEndPromo','2023-12-01','2023-12-31',60000,'Search',1500000,45000,3000,0.067,1.33,20.00,90000,1.5,'All Ages','Global','All','Active','marketer','Holiday push');

-- Regulatory fine detail
CREATE TABLE regulatory_fine_detail (
    fine_id INTEGER PRIMARY KEY,
    entity_id INTEGER NOT NULL,
    entity_type TEXT NOT NULL,
    regulation TEXT NOT NULL,
    violation_date DATE,
    fine_amount REAL,
    fine_currency TEXT,
    paid_amount REAL,
    paid_date DATE,
    status TEXT,
    inspector_id INTEGER,
    inspection_date DATE,
    notes TEXT,
    penalty_points INTEGER,
    settlement_agreement TEXT,
    legal_reference TEXT,
    compliance_deadline DATE,
    fine_category TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO regulatory_fine_detail VALUES (1,100,'Branch','AntiMoneyLaundering','2023-04-12',15000,'USD',15000,'2023-05-01','Paid',501,'2023-04-15','Late filing of reports',5,'AgreementA','Reg123','2023-06-30','Compliance', '2023-04-01','2023-05-02');
INSERT INTO regulatory_fine_detail VALUES (2,200,'Employee','DataProtection','2023-03-20',8000,'USD',0,NULL,'Unpaid',502,'2023-03-22','Unauthorized data access',3,'NegotiationPending','Reg456','2023-07-15','Security', '2023-03-01','2023-03-25');
INSERT INTO regulatory_fine_detail VALUES (3,300,'Supplier','ConsumerRights','2023-02-05',5000,'EUR',5000,'2023-02-20','Paid',503,'2023-02-07','Misleading advertising',2,'SettlementB','Reg789','2023-04-30','Advertising', '2023-02-01','2023-02-06');

-- Supplier contract detail
CREATE TABLE supplier_contract_detail (
    contract_id INTEGER PRIMARY KEY,
    supplier_id INTEGER NOT NULL,
    contract_name TEXT NOT NULL,
    start_date DATE,
    end_date DATE,
    contract_value REAL,
    currency TEXT,
    payment_terms TEXT,
    renewal_option TEXT,
    clause_summary TEXT,
    responsible_manager TEXT,
    status TEXT,
    signed_date DATE,
    effective_date DATE,
    termination_notice_days INTEGER,
    performance_score REAL,
    risk_rating TEXT,
    audit_frequency TEXT,
    notes TEXT,
    created_by TEXT,
    updated_at DATE
);

INSERT INTO supplier_contract_detail VALUES (1,400,'OfficeSupplies','2022-01-01','2024-12-31',250000,'USD','Net30','Automatic','Delivery,Quality,Liability','John Doe','Active','2021-12-15','2022-01-01',60,89.5,'Medium','Annual','Standard supplies contract','procurement','2023-04-01');
INSERT INTO supplier_contract_detail VALUES (2,401,'ITServices','2023-03-01','2026-02-28',500000,'USD','Net45','Optional','Support,SLAs,Confidentiality','Jane Smith','Negotiation','2023-02-20','2023-03-01',90,76.0,'High','Quarterly','Managed IT services','procurement','2023-04-05');
INSERT INTO supplier_contract_detail VALUES (3,402,'CleaningServices','2021-06-01','2023-05-31',120000,'USD','Net30','Automatic','Scope,Hours,Compliance','Mike Brown','Expired','2021-05-20','2021-06-01',30,82.0,'Low','Biannual','Office cleaning agreement','procurement','2023-04-10');

-- Healthcare provider staff
CREATE TABLE healthcare_provider_staff (
    staff_id INTEGER PRIMARY KEY,
    provider_id INTEGER NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    role TEXT NOT NULL,
    specialty TEXT,
    license_number TEXT,
    license_expiry DATE,
    hire_date DATE,
    termination_date DATE,
    status TEXT,
    shift_pattern TEXT,
    department TEXT,
    email TEXT,
    phone_number TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    notes TEXT
);

INSERT INTO healthcare_provider_staff VALUES (1,500,'Alice','Johnson','Physician','Cardiology','LIC12345','2025-08-31','2018-07-01',NULL,'Active','Day','Cardiology','alice.johnson@clinic.org','5551234567','123 Heart St','Metrocity','CA','90001','Board certified');
INSERT INTO healthcare_provider_staff VALUES (2,501,'Bob','Smith','Nurse','Pediatrics','LIC67890','2024-05-15','2020-01-15',NULL,'Active','Night','Pediatrics','bob.smith@clinic.org','5559876543','456 Kid Rd','Metrocity','CA','90002','5 years experience');
INSERT INTO healthcare_provider_staff VALUES (3,502,'Carol','Lee','Administrator',NULL,'ADM001','2030-12-31','2015-03-20',NULL,'Active','Rotating','Administration','carol.lee@clinic.org','5555555555','789 Admin Blvd','Metrocity','CA','90003','Oversees operations');

-- Renewable energy farm performance
CREATE TABLE renewable_energy_farm_performance (
    farm_id INTEGER PRIMARY KEY,
    farm_name TEXT NOT NULL,
    location TEXT,
    capacity_mw REAL,
    current_output_mw REAL,
    daily_generation_mwh REAL,
    monthly_generation_mwh REAL,
    yearly_generation_mwh REAL,
    availability_percentage REAL,
    failure_events INTEGER,
    maintenance_hours REAL,
    grid_connection_status TEXT,
    feed_in_tariff REAL,
    weather_condition TEXT,
    temperature_c REAL,
    wind_speed_mps REAL,
    solar_irradiance_w_per_m2 REAL,
    operational_status TEXT,
    last_inspection_date DATE,
    notes TEXT
);

INSERT INTO renewable_energy_farm_performance VALUES (1,'SolarParkNorth','Desert Valley',50.0,48.5,1150.0,34000.0,410000.0,97.5,2,120.0,'Connected',0.08,'Clear',35.0,0.0,850.0,'Operational','2023-05-10','Peak production season');
INSERT INTO renewable_energy_farm_performance VALUES (2,'WindFarmCoast','Coastal Ridge',120.0,115.0,2800.0,84000.0,1020000.0,96.0,5,300.0,'Connected',0.12,'Windy',22.0,12.5,0.0,'Operational','2023-04-20','Turbine #12 under maintenance');
INSERT INTO renewable_energy_farm_performance VALUES (3,'HybridEcoSite','Lake Region',80.0,78.0,1900.0,57000.0,690000.0,98.0,1,90.0,'Connected',0.10,'Mixed',28.0,5.0,600.0,'Operational','2023-06-01','Combined solar and wind');

-- City traffic signal timing
CREATE TABLE city_traffic_signal_timing (
    signal_id INTEGER PRIMARY KEY,
    intersection_id INTEGER NOT NULL,
    direction TEXT NOT NULL,
    green_time_sec INTEGER,
    yellow_time_sec INTEGER,
    red_time_sec INTEGER,
    cycle_length_sec INTEGER,
    peak_hour_start TIME,
    peak_hour_end TIME,
    off_peak_cycle_adjustment INTEGER,
    sensor_type TEXT,
    detection_threshold REAL,
    coordinated_group INTEGER,
    status TEXT,
    last_maintenance DATE,
    firmware_version TEXT,
    notes TEXT,
    created_by TEXT,
    updated_at DATE,
    active INTEGER
);

INSERT INTO city_traffic_signal_timing VALUES (1,1001,'Northbound',45,5,50,100,'07:00:00','09:00:00',10,'InductiveLoop',0.7,1,'Active','2023-03-15','v2.3','Adjusted for school zone','engineer','2023-04-01',1);
INSERT INTO city_traffic_signal_timing VALUES (2,1002,'Eastbound',40,4,56,100,'16:00:00','18:00:00',8,'Video',0.6,1,'Active','2023-02-20','v2.2','High traffic during evening rush','engineer','2023-04-02',1);
INSERT INTO city_traffic_signal_timing VALUES (3,1003,'Southbound',35,3,62,100,'10:00:00','12:00:00',5,'Radar',0.5,2,'Planned','2023-01-10','v2.1','Planned optimization for midday','engineer','2023-04-03',0);