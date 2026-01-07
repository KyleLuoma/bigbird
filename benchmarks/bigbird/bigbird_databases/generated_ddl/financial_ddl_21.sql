-- Crypto asset holdings for users (non‑overlapping with banking accounts)
CREATE TABLE crypto_asset_holding
(
    holding_id          INTEGER PRIMARY KEY,
    user_id             INTEGER NOT NULL,
    wallet_address      TEXT NOT NULL,
    asset_symbol        TEXT NOT NULL,
    asset_name          TEXT NOT NULL,
    quantity            REAL NOT NULL,
    purchase_date       DATE NOT NULL,
    purchase_price_usd  REAL NOT NULL,
    current_price_usd   REAL NOT NULL,
    exchange_name       TEXT NOT NULL,
    network             TEXT NOT NULL,
    storage_type        TEXT NOT NULL,
    is_staked           INTEGER NOT NULL,
    staking_pool_id     INTEGER,
    daily_interest_rate REAL,
    last_update         DATE,
    tax_year            INTEGER,
    jurisdiction        TEXT,
    kyc_status          TEXT,
    notes               TEXT
);

INSERT INTO crypto_asset_holding (holding_id,user_id,wallet_address,asset_symbol,asset_name,quantity,purchase_date,purchase_price_usd,current_price_usd,exchange_name,network,storage_type,is_staked,staking_pool_id,daily_interest_rate,last_update,tax_year,jurisdiction,kyc_status,notes) VALUES (1,101,'0xabc123','BTC','Bitcoin',0.5,'2022-01-15',30000.0,35000.0,'CoinBase','Bitcoin','Cold',1,2001,0.0005,'2023-01-01',2023,'USA','Verified','First holding');
INSERT INTO crypto_asset_holding (holding_id,user_id,wallet_address,asset_symbol,asset_name,quantity,purchase_date,purchase_price_usd,current_price_usd,exchange_name,network,storage_type,is_staked,staking_pool_id,daily_interest_rate,last_update,tax_year,jurisdiction,kyc_status,notes) VALUES (2,102,'0xdef456','ETH','Ethereum',2.0,'2021-06-10',2000.0,2500.0,'Binance','Ethereum','Hot',0,NULL,NULL,'2023-01-02',2023,'Canada','Pending','Second holding');
INSERT INTO crypto_asset_holding (holding_id,user_id,wallet_address,asset_symbol,asset_name,quantity,purchase_date,purchase_price_usd,current_price_usd,exchange_name,network,storage_type,is_staked,staking_pool_id,daily_interest_rate,last_update,tax_year,jurisdiction,kyc_status,notes) VALUES (3,103,'0xghi789','ADA','Cardano',1000.0,'2020-03-20',0.15,0.40,'Kraken','Cardano','Cold',1,3002,0.001,'2023-01-03',2023,'UK','Verified','Long term hold');

-- Public transport fare records
CREATE TABLE public_transport_fare
(
    fare_id            INTEGER PRIMARY KEY,
    route_id           INTEGER NOT NULL,
    vehicle_type       TEXT NOT NULL,
    fare_type          TEXT NOT NULL,
    price_cents        INTEGER NOT NULL,
    currency           TEXT NOT NULL,
    valid_from         DATE NOT NULL,
    valid_to           DATE NOT NULL,
    zone               TEXT NOT NULL,
    payment_method     TEXT NOT NULL,
    distance_km        REAL,
    peak_hour          INTEGER,
    off_peak_discount  REAL,
    special_event      TEXT,
    operator_name      TEXT,
    bus_number         TEXT,
    train_line         TEXT,
    ticket_id          TEXT,
    scan_timestamp     DATE,
    remarks            TEXT
);

INSERT INTO public_transport_fare (fare_id,route_id,vehicle_type,fare_type,price_cents,currency,valid_from,valid_to,zone,payment_method,distance_km,peak_hour,off_peak_discount,special_event,operator_name,bus_number,train_line,ticket_id,scan_timestamp,remarks) VALUES (101,5001,'Bus','Adult',250,'USD','2023-01-01','2023-12-31','Zone1','Contactless',5.0,1,0.10,'NewYear', 'CityTransit','B12',NULL,'TCK1001','2023-02-15','Standard fare');
INSERT INTO public_transport_fare (fare_id,route_id,vehicle_type,fare_type,price_cents,currency,valid_from,valid_to,zone,payment_method,distance_km,peak_hour,off_peak_discount,special_event,operator_name,bus_number,train_line,ticket_id,scan_timestamp,remarks) VALUES (102,5002,'Tram','Child',120,'USD','2023-01-01','2023-12-31','Zone2','MobileApp',3.2,0,0.15,NULL,'MetroLine','', 'T3','TCK1002','2023-03-10','Discounted child fare');
INSERT INTO public_transport_fare (fare_id,route_id,vehicle_type,fare_type,price_cents,currency,valid_from,valid_to,zone,payment_method,distance_km,peak_hour,off_peak_discount,special_event,operator_name,bus_number,train_line,ticket_id,scan_timestamp,remarks) VALUES (103,5003,'Metro','Senior',180,'USD','2023-01-01','2023-12-31','Zone3','Card',8.5,0,0.20,'SeniorDay','UrbanRail','', 'M5','TCK1003','2023-04-20','Senior reduced rate');

-- Urban tree inventory
CREATE TABLE urban_tree_inventory
(
    tree_id                INTEGER PRIMARY KEY,
    city_id                INTEGER NOT NULL,
    species_common         TEXT NOT NULL,
    species_scientific     TEXT NOT NULL,
    planting_date          DATE NOT NULL,
    height_m               REAL,
    diameter_cm            REAL,
    health_status          TEXT,
    last_pruned            DATE,
    owner_type             TEXT,
    land_use               TEXT,
    soil_type              TEXT,
    irrigation_type        TEXT,
    canopy_width_m         REAL,
    gps_lat                REAL,
    gps_long               REAL,
    maintenance_contract_id INTEGER,
    hazard_rating          INTEGER,
    protected_status       TEXT,
    notes                  TEXT
);

INSERT INTO urban_tree_inventory (tree_id,city_id,species_common,species_scientific,planting_date,height_m,diameter_cm,health_status,last_pruned,owner_type,land_use,soil_type,irrigation_type,canopy_width_m,gps_lat,gps_long,maintenance_contract_id,hazard_rating,protected_status,notes) VALUES (2001,10,'London Plane','Platanus x acerifolia','2010-04-12',15.2,45.0,'Good','2022-09-01','Municipal','Park','Loam','Drip',12.5,40.7128,-74.0060,501,2,'Yes','Central park flagship');
INSERT INTO urban_tree_inventory (tree_id,city_id,species_common,species_scientific,planting_date,height_m,diameter_cm,health_status,last_pruned,owner_type,land_use,soil_type,irrigation_type,canopy_width_m,gps_lat,gps_long,maintenance_contract_id,hazard_rating,protected_status,notes) VALUES (2002,11,'Silver Maple','Acer saccharinum','2005-06-20',12.0,38.0,'Fair','2022-05-15','Private','Residential','Sandy','None',10.0,34.0522,-118.2437,502,3,'No','Backyard tree');
INSERT INTO urban_tree_inventory (tree_id,city_id,species_common,species_scientific,planting_date,height_m,diameter_cm,health_status,last_pruned,owner_type,land_use,soil_type,irrigation_type,canopy_width_m,gps_lat,gps_long,maintenance_contract_id,hazard_rating,protected_status,notes) VALUES (2003,12,'Oak','Quercus robur','1998-09-30',20.5,55.0,'Excellent','2023-01-10','Municipal','Street','Clay','Sprinkler',14.0,51.5074,-0.1278,503,1,'Yes','Historic avenue');

-- Solar panel installation records
CREATE TABLE solar_panel_installation
(
    installation_id        INTEGER PRIMARY KEY,
    site_id                INTEGER NOT NULL,
    panel_model            TEXT NOT NULL,
    manufacturer           TEXT NOT NULL,
    capacity_kw            REAL NOT NULL,
    installation_date      DATE NOT NULL,
    orientation            TEXT,
    tilt_angle             REAL,
    inverter_model         TEXT,
    inverter_capacity_kw   REAL,
    grid_connection_date   DATE,
    latitude               REAL,
    longitude              REAL,
    system_owner           TEXT,
    financing_type         TEXT,
    expected_lifetime_years INTEGER,
    commissioning_status  TEXT,
    maintenance_provider   TEXT,
    warranty_expiration    DATE,
    performance_ratio      REAL,
    notes                  TEXT
);

INSERT INTO solar_panel_installation (installation_id,site_id,panel_model,manufacturer,capacity_kw,installation_date,orientation,tilt_angle,inverter_model,inverter_capacity_kw,grid_connection_date,latitude,longitude,system_owner,financing_type,expected_lifetime_years,commissioning_status,maintenance_provider,warranty_expiration,performance_ratio,notes) VALUES (3001,1001,'SunPower X22-370','SunPower',370.0,'2021-07-15','South',15.0,'SunPower SPS','350.0','2021-08-01',35.6895,139.6917,'CityUtility','Lease',25,'Commissioned','SolarTech','2031-07-15',0.85,'Rooftop installation');
INSERT INTO solar_panel_installation (installation_id,site_id,panel_model,manufacturer,capacity_kw,installation_date,orientation,tilt_angle,inverter_model,inverter_capacity_kw,grid_connection_date,latitude,longitude,system_owner,financing_type,expected_lifetime_years,commissioning_status,maintenance_provider,warranty_expiration,performance_ratio,notes) VALUES (3002,1002,'LG NeON 2','LG',250.0,'2020-05-10','West',10.0,'LG Solar Inverter','240.0','2020-06-01',40.7128,-74.0060,'PrivateOwner','Cash',20,'Commissioned','EcoPower','2040-05-10',0.87,'Ground mount farm');
INSERT INTO solar_panel_installation (installation_id,site_id,panel_model,manufacturer,capacity_kw,installation_date,orientation,tilt_angle,inverter_model,inverter_capacity_kw,grid_connection_date,latitude,longitude,system_owner,financing_type,expected_lifetime_years,commissioning_status,maintenance_provider,warranty_expiration,performance_ratio,notes) VALUES (3003,1003,'Canadian Solar HiKu','CanadianSolar',500.0,'2019-09-20','East',20.0,'Canadian Solar Smart','480.0','2019-10-15',51.5074,-0.1278,'Corporate','PPAs',30,'Commissioned','SolarMaintain','2049-09-20',0.82,'Utility scale plant');

-- Museum visitation log
CREATE TABLE museum_visitation_log
(
    visit_id               INTEGER PRIMARY KEY,
    museum_id              INTEGER NOT NULL,
    visitor_id             INTEGER NOT NULL,
    visit_date             DATE NOT NULL,
    visit_time             TEXT NOT NULL,
    ticket_type            TEXT NOT NULL,
    ticket_price           REAL NOT NULL,
    membership_status      TEXT,
    guide_name             TEXT,
    group_size             INTEGER,
    exhibition_id          INTEGER,
    audio_guide_used       INTEGER,
    gift_shop_purchase     REAL,
    cafe_spend             REAL,
    feedback_score         INTEGER,
    comments               TEXT,
    language_preference    TEXT,
    age_group              TEXT,
    gender                 TEXT,
    device_used            TEXT
);

INSERT INTO museum_visitation_log (visit_id,museum_id,visitor_id,visit_date,visit_time,ticket_type,ticket_price,membership_status,guide_name,group_size,exhibition_id,audio_guide_used,gift_shop_purchase,cafe_spend,feedback_score,comments,language_preference,age_group,gender,device_used) VALUES (4001,1,9001,'2023-03-12','10:30','Adult',15.00,'Member','Alice Smith',2,101,1,20.5,8.0,5,'Excellent','English','Adult','Female','Smartphone');
INSERT INTO museum_visitation_log (visit_id,museum_id,visitor_id,visit_date,visit_time,ticket_type,ticket_price,membership_status,guide_name,group_size,exhibition_id,audio_guide_used,gift_shop_purchase,cafe_spend,feedback_score,comments,language_preference,age_group,gender,device_used) VALUES (4002,1,9002,'2023-03-13','14:15','Child',0.00,'NonMember','Bob Jones',1,102,0,0.0,5.5,4,'Good','Spanish','Child','Male','Tablet');
INSERT INTO museum_visitation_log (visit_id,museum_id,visitor_id,visit_date,visit_time,ticket_type,ticket_price,membership_status,guide_name,group_size,exhibition_id,audio_guide_used,gift_shop_purchase,cafe_spend,feedback_score,comments,language_preference,age_group,gender,device_used) VALUES (4003,2,9003,'2023-03-14','09:45','Senior',10.00,'Member','Carol Lee',3,103,1,15.0,0.0,5,'Very good','French','Senior','Female','Laptop');

-- Academic research dataset metadata
CREATE TABLE academic_research_dataset
(
    dataset_id           INTEGER PRIMARY KEY,
    project_id           INTEGER NOT NULL,
    title                TEXT NOT NULL,
    description          TEXT,
    primary_author       TEXT,
    publication_date     DATE,
    version              INTEGER,
    doi                  TEXT,
    file_format          TEXT,
    file_size_mb         REAL,
    access_level         TEXT,
    storage_location     TEXT,
    checksum             TEXT,
    record_count         INTEGER,
    variables_count      INTEGER,
    subject_area         TEXT,
    funding_agency       TEXT,
    grant_number         TEXT,
    embargo_end_date     DATE,
    notes                TEXT
);

INSERT INTO academic_research_dataset (dataset_id,project_id,title,description,primary_author,publication_date,version,doi,file_format,file_size_mb,access_level,storage_location,checksum,record_count,variables_count,subject_area,funding_agency,grant_number,embargo_end_date,notes) VALUES (5001,2001,'Global Climate Indicators','Monthly climate data worldwide','Dr Jane Doe','2022-11-01',1,'10.1234/abcd.1','CSV',2500.0,'Public','/data/climate','abc123def456',1200000,30,'Climatology','NSF','CLIM2020','2023-12-31','Open data set');
INSERT INTO academic_research_dataset (dataset_id,project_id,title,description,primary_author,publication_date,version,doi,file_format,file_size_mb,access_level,storage_location,checksum,record_count,variables_count,subject_area,funding_agency,grant_number,embargo_end_date,notes) VALUES (5002,2002,'Urban Mobility Survey','Survey responses on city transport usage','Prof John Smith','2021-06-15',2,'10.5678/efgh.2','JSON',850.0,'Restricted','/data/transport','def789ghi012',45000,25,'Transportation','DOE','TRANS2021','2024-06-30','Requires approval');
INSERT INTO academic_research_dataset (dataset_id,project_id,title,description,primary_author,publication_date,version,doi,file_format,file_size_mb,access_level,storage_location,checksum,record_count,variables_count,subject_area,funding_agency,grant_number,embargo_end_date,notes) VALUES (5003,2003,'Genomic Sequences of Marine Microbes','DNA sequences from ocean samples','Dr Emily Zhang','2023-02-10',1,'10.9101/ijkl.3','FASTA',15000.0,'Controlled','/data/genomics','ghi345jkl678',3000,5,'Genomics','NIH','GEN2023','2025-01-01','Sensitive data');

-- Food inspection records for restaurants
CREATE TABLE food_inspection_record
(
    inspection_id          INTEGER PRIMARY KEY,
    restaurant_id          INTEGER NOT NULL,
    inspection_date        DATE NOT NULL,
    inspector_id           INTEGER NOT NULL,
    score                  INTEGER,
    grade                  TEXT,
    violations_count       INTEGER,
    critical_violations    INTEGER,
    non_critical_violations INTEGER,
    cuisine_type           TEXT,
    seating_capacity       INTEGER,
    ownership_type         TEXT,
    licensed_until         DATE,
    compliance_status      TEXT,
    remedial_action        TEXT,
    follow_up_date         DATE,
    manager_name           TEXT,
    contact_phone          TEXT,
    latitude               REAL,
    longitude              REAL
);

INSERT INTO food_inspection_record (inspection_id,restaurant_id,inspection_date,inspector_id,score,grade,violations_count,critical_violations,non_critical_violations,cuisine_type,seating_capacity,ownership_type,licensed_until,compliance_status,remedial_action,follow_up_date,manager_name,contact_phone,latitude,longitude) VALUES (6001,3001,'2023-04-20',401,92,'A',2,0,2,'Italian',80,'Franchise','2025-12-31','Compliant','None','2023-05-20','Marco Rossi','5551234567',34.0522,-118.2437);
INSERT INTO food_inspection_record (inspection_id,restaurant_id,inspection_date,inspector_id,score,grade,violations_count,critical_violations,non_critical_violations,cuisine_type,seating_capacity,ownership_type,licensed_until,compliance_status,remedial_action,follow_up_date,manager_name,contact_phone,latitude,longitude) VALUES (6002,3002,'2023-04-22',402,78,'B',5,1,4,'Chinese',120,'Independent','2024-08-15','Conditional','Deep clean kitchen','2023-06-01','Li Wei','5559876543',40.7128,-74.0060);
INSERT INTO food_inspection_record (inspection_id,restaurant_id,inspection_date,inspector_id,score,grade,violations_count,critical_violations,non_critical_violations,cuisine_type,seating_capacity,ownership_type,licensed_until,compliance_status,remedial_action,follow_up_date,manager_name,contact_phone,latitude,longitude) VALUES (6003,3003,'2023-04-25',403,85,'A',3,0,3,'Mexican',60,'Franchise','2026-03-10','Compliant','Minor repairs','2023-05-15','Ana Lopez','5552468101',51.5074,-0.1278);

-- Aviation flight schedule information
CREATE TABLE aviation_flight_schedule
(
    flight_id               INTEGER PRIMARY KEY,
    airline_code            TEXT NOT NULL,
    flight_number           TEXT NOT NULL,
    departure_airport       TEXT NOT NULL,
    arrival_airport         TEXT NOT NULL,
    scheduled_departure     TEXT NOT NULL,
    scheduled_arrival       TEXT NOT NULL,
    aircraft_type           TEXT,
    crew_count              INTEGER,
    passenger_capacity      INTEGER,
    status                  TEXT,
    gate_departure          TEXT,
    gate_arrival            TEXT,
    terminal_departure      TEXT,
    terminal_arrival        TEXT,
    distance_nm             REAL,
    fuel_required_kg        REAL,
    estimated_cost_usd      REAL,
    weather_conditions      TEXT,
    notes                   TEXT
);

INSERT INTO aviation_flight_schedule (flight_id,airline_code,flight_number,departure_airport,arrival_airport,scheduled_departure,scheduled_arrival,aircraft_type,crew_count,passenger_capacity,status,gate_departure,gate_arrival,terminal_departure,terminal_arrival,distance_nm,fuel_required_kg,estimated_cost_usd,weather_conditions,notes) VALUES (7001,'AA','AA123','JFK','LAX','2023-07-01 08:00','2023-07-01 11:00','Boeing 737',6,160,'On Time','D12','A3','4','2',2475,12000,15000,'Clear','Routine flight');
INSERT INTO aviation_flight_schedule (flight_id,airline_code,flight_number,departure_airport,arrival_airport,scheduled_departure,scheduled_arrival,aircraft_type,crew_count,passenger_capacity,status,gate_departure,gate_arrival,terminal_departure,terminal_arrival,distance_nm,fuel_required_kg,estimated_cost_usd,weather_conditions,notes) VALUES (7002,'DL','DL456','ATL','ORD','2023-07-01 09:30','2023-07-01 11:15','Airbus A320',5,150,'Delayed','B8','C1','3','1',606,3000,3500,'Thunderstorms','Delayed due to weather');
INSERT INTO aviation_flight_schedule (flight_id,airline_code,flight_number,departure_airport,arrival_airport,scheduled_departure,scheduled_arrival,aircraft_type,crew_count,passenger_capacity,status,gate_departure,gate_arrival,terminal_departure,terminal_arrival,distance_nm,fuel_required_kg,estimated_cost_usd,weather_conditions,notes) VALUES (7003,'UA','UA789','SFO','SEA','2023-07-01 07:15','2023-07-01 09:00','Boeing 757',7,200,'Cancelled','C5','D2','2','3',679,3500,4000,'Fog','Cancelled due to low visibility');

-- Maritime port activity logs
CREATE TABLE maritime_port_activity
(
    activity_id            INTEGER PRIMARY KEY,
    port_id                INTEGER NOT NULL,
    vessel_name            TEXT NOT NULL,
    imo_number             INTEGER,
    arrival_date           DATE,
    departure_date         DATE,
    cargo_type             TEXT,
    cargo_quantity_tons   REAL,
    berth_number           INTEGER,
    pilot_name             TEXT,
    agent_company          TEXT,
    customs_clearance_status TEXT,
    inspection_flag        INTEGER,
    destination_port       TEXT,
    origin_port            TEXT,
    draught_m              REAL,
    draft_status           TEXT,
    liner_service          TEXT,
    estimated_turnaround_hours REAL,
    remarks                TEXT
);

INSERT INTO maritime_port_activity (activity_id,port_id,vessel_name,imo_number,arrival_date,departure_date,cargo_type,cargo_quantity_tons,berth_number,pilot_name,agent_company,customs_clearance_status,inspection_flag,destination_port,origin_port,draught_m,draft_status,liner_service,estimated_turnaround_hours,remarks) VALUES (8001,10,'Evergreen',9291234,'2023-06-15','2023-06-20','Container',50000.0,12,'John Doe','Global Agents','Cleared',0,'Shanghai','Rotterdam',12.5,'OK','Evergreen Line',48,'No issues');
INSERT INTO maritime_port_activity (activity_id,port_id,vessel_name,imo_number,arrival_date,departure_date,cargo_type,cargo_quantity_tons,berth_number,pilot_name,agent_company,customs_clearance_status,inspection_flag,destination_port,origin_port,draught_m,draft_status,liner_service,estimated_turnaround_hours,remarks) VALUES (8002,11,'Oceanic',9385678,'2023-06-18','2023-06-22','Bulk',75000.0,8,'Alice Smith','Maritime Brokers','Pending',1,'Houston','Buenos Aires',15.0,'Inspection Required','Oceanic Shipping',72,'Minor leak reported');
INSERT INTO maritime_port_activity (activity_id,port_id,vessel_name,imo_number,arrival_date,departure_date,cargo_type,cargo_quantity_tons,berth_number,pilot_name,agent_company,customs_clearance_status,inspection_flag,destination_port,origin_port,draught_m,draft_status,liner_service,estimated_turnaround_hours,remarks) VALUES (8003,12,'SeaStar',9453210,'2023-06-20','2023-06-25','Oil',120000.0,5,'Carlos Ruiz','Energy Logistics','Cleared',0,'Singapore','Norway',20.0,'OK','SeaStar Tankers',96,'All safety checks passed');

-- Telemedicine session logs
CREATE TABLE telemedicine_session
(
    session_id                INTEGER PRIMARY KEY,
    patient_id                INTEGER NOT NULL,
    provider_id               INTEGER NOT NULL,
    session_date              DATE NOT NULL,
    start_time                TEXT NOT NULL,
    end_time                  TEXT NOT NULL,
    modality                  TEXT,
    diagnosis_code            TEXT,
    prescription_given        TEXT,
    follow_up_required        INTEGER,
    session_notes             TEXT,
    video_quality_score       INTEGER,
    audio_quality_score       INTEGER,
    connection_type           TEXT,
    platform_used             TEXT,
    billing_code              TEXT,
    insurance_approved        INTEGER,
    duration_minutes          INTEGER,
    patient_feedback_score    INTEGER,
    session_outcome           TEXT
);

INSERT INTO telemedicine_session (session_id,patient_id,provider_id,session_date,start_time,end_time,modality,diagnosis_code,prescription_given,follow_up_required,session_notes,video_quality_score,audio_quality_score,connection_type,platform_used,billing_code,insurance_approved,duration_minutes,patient_feedback_score,session_outcome) VALUES (9001,4001,2001,'2023-05-10','09:00','09:30','Video','J20','Amoxicillin',1,'Routine checkup',8,9,'WiFi','HealthLink','TM100','1',30,5,'Resolved');
INSERT INTO telemedicine_session (session_id,patient_id,provider_id,session_date,start_time,end_time,modality,diagnosis_code,prescription_given,follow_up_required,session_notes,video_quality_score,audio_quality_score,connection_type,platform_used,billing_code,insurance_approved,duration_minutes,patient_feedback_score,session_outcome) VALUES (9002,4002,2002,'2023-05-11','14:15','14:45','Audio','R05','None',0,'Follow‑up call only',7,8,'Cellular','MediCall','TM200','0',30,4,'Advised lifestyle changes');
INSERT INTO telemedicine_session (session_id,patient_id,provider_id,session_date,start_time,end_time,modality,diagnosis_code,prescription_given,follow_up_required,session_notes,video_quality_score,audio_quality_score,connection_type,platform_used,billing_code,insurance_approved,duration_minutes,patient_feedback_score,session_outcome) VALUES (9003,4003,2003,'2023-05-12','11:00','11:40','Video','E11','Ibuprofen',1,'Skin rash evaluation',9,9,'WiFi','HealthConnect','TM300','1',40,5,'Referral to dermatologist');