-- Track Aerodynamics Testing Hubs
CREATE TABLE track_aero_testing_hubs (
    hub_id INTEGER PRIMARY KEY AUTOINCREMENT,
    hub_name TEXT NOT NULL,
    location TEXT,
    country TEXT,
    latitude REAL,
    longitude REAL,
    facility_type TEXT,
    capacity INTEGER,
    year_established INTEGER,
    wind_tunnel_rating REAL,
    drag_coefficient_test_capability INTEGER,
    downforce_test_capability INTEGER,
    max_speed_kmh INTEGER,
    available_hours_per_day INTEGER,
    contact_email TEXT,
    contact_phone TEXT,
    operational_status TEXT,
    last_inspection_date DATE,
    certification_body TEXT,
    certification_valid_until DATE,
    notes TEXT
);

INSERT INTO track_aero_testing_hubs (hub_name,location,country,latitude,longitude,facility_type,capacity,year_established,wind_tunnel_rating,drag_coefficient_test_capability,downforce_test_capability,max_speed_kmh,available_hours_per_day,contact_email,contact_phone,operational_status,last_inspection_date,certification_body,certification_valid_until,notes)
VALUES ('AlphaHub','MetroCity','CountryX',45.12,9.87,'WindTunnel',200,2005,1.2,150,120,350,24,'alpha@hub.com','1112223333','Operational','2023-12-01','FIA','2025-12-31','Primary facility');

INSERT INTO track_aero_testing_hubs (hub_name,location,country,latitude,longitude,facility_type,capacity,year_established,wind_tunnel_rating,drag_coefficient_test_capability,downforce_test_capability,max_speed_kmh,available_hours_per_day,contact_email,contact_phone,operational_status,last_inspection_date,certification_body,certification_valid_until,notes)
VALUES ('BetaWind','RiverTown','CountryY',48.55,12.34,'WindTunnel',150,2010,1.0,130,110,320,20,'beta@wind.com','2223334444','UnderMaintenance','2024-01-15','IOC','2026-06-30','Second tier hub');

INSERT INTO track_aero_testing_hubs (hub_name,location,country,latitude,longitude,facility_type,capacity,year_established,wind_tunnel_rating,drag_coefficient_test_capability,downforce_test_capability,max_speed_kmh,available_hours_per_day,contact_email,contact_phone,operational_status,last_inspection_date,certification_body,certification_valid_until,notes)
VALUES ('GammaAero','CoastalBay','CountryZ',50.01,14.22,'AeroLab',180,2015,1.3,160,130,380,22,'gamma@aero.com','3334445555','Operational','2023-11-20','FIA','2025-11-20','Newly upgraded facility');

-- Fan Digital Interaction Metrics
CREATE TABLE fan_digital_interaction_metrics (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    fan_id INTEGER,
    interaction_type TEXT,
    platform TEXT,
    device_type TEXT,
    session_start TEXT,
    session_end TEXT,
    duration_seconds INTEGER,
    pages_viewed INTEGER,
    clicks INTEGER,
    shares INTEGER,
    likes INTEGER,
    comments INTEGER,
    video_plays INTEGER,
    audio_plays INTEGER,
    reactions TEXT,
    location TEXT,
    ip_address TEXT,
    browser TEXT,
    os TEXT,
    timestamp DATE
);

INSERT INTO fan_digital_interaction_metrics (event_id,fan_id,interaction_type,platform,device_type,session_start,session_end,duration_seconds,pages_viewed,clicks,shares,likes,comments,video_plays,audio_plays,reactions,location,ip_address,browser,os,timestamp)
VALUES (101,1001,'Scroll','MobileApp','Smartphone','2024-03-10 14:00:00','2024-03-10 14:05:30',330,12,45,3,28,5,2,0,'Like','NY','192168001','Chrome','Android','2024-03-10');

INSERT INTO fan_digital_interaction_metrics (event_id,fan_id,interaction_type,platform,device_type,session_start,session_end,duration_seconds,pages_viewed,clicks,shares,likes,comments,video_plays,audio_plays,reactions,location,ip_address,browser,os,timestamp)
VALUES (102,1002,'Comment','WebPortal','Desktop','2024-03-11 09:15:00','2024-03-11 09:20:10',310,8,22,1,15,10,0,0,'Love','LA','192168002','Firefox','Windows','2024-03-11');

INSERT INTO fan_digital_interaction_metrics (event_id,fan_id,interaction_type,platform,device_type,session_start,session_end,duration_seconds,pages_viewed,clicks,shares,likes,comments,video_plays,audio_plays,reactions,location,ip_address,browser,os,timestamp)
VALUES (103,1003,'VideoPlay','MobileApp','Tablet','2024-03-12 18:45:00','2024-03-12 18:50:20',320,5,10,0,5,2,1,0,'Wow','TX','192168003','Safari','iOS','2024-03-12');

-- Climate Control System Logs
CREATE TABLE climate_control_system_logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    system_id INTEGER,
    circuit_id INTEGER,
    log_timestamp TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    airflow_cfm REAL,
    filter_status TEXT,
    cooling_mode TEXT,
    heating_mode TEXT,
    setpoint_temp REAL,
    setpoint_humidity REAL,
    energy_consumption_kwh REAL,
    error_code INTEGER,
    maintenance_required TEXT,
    operator_id INTEGER,
    notes TEXT,
    software_version TEXT,
    firmware_version TEXT,
    ambient_temp_c REAL,
    ambient_humidity REAL
);

INSERT INTO climate_control_system_logs (system_id,circuit_id,log_timestamp,temperature_c,humidity_percent,airflow_cfm,filter_status,cooling_mode,heating_mode,setpoint_temp,setpoint_humidity,energy_consumption_kwh,error_code,maintenance_required,operator_id,notes,software_version,firmware_version,ambient_temp_c,ambient_humidity)
VALUES (1,10,'2024-03-15 08:00:00',22.5,45.0,1500,'Good','Auto','Off',20.0,40.0,120.5,0,'No',501,'Routine check','v2.3','f1.0',23.0,44.0);

INSERT INTO climate_control_system_logs (system_id,circuit_id,log_timestamp,temperature_c,humidity_percent,airflow_cfm,filter_status,cooling_mode,heating_mode,setpoint_temp,setpoint_humidity,energy_consumption_kwh,error_code,maintenance_required,operator_id,notes,software_version,firmware_version,ambient_temp_c,ambient_humidity)
VALUES (2,12,'2024-03-15 09:30:00',24.0,48.5,1600,'ReplaceSoon','Auto','Auto',22.0,45.0,135.0,2,'Yes',502,'Filter warning','v2.4','f1.1',24.5,48.0);

INSERT INTO climate_control_system_logs (system_id,circuit_id,log_timestamp,temperature_c,humidity_percent,airflow_cfm,filter_status,cooling_mode,heating_mode,setpoint_temp,setpoint_humidity,energy_consumption_kwh,error_code,maintenance_required,operator_id,notes,software_version,firmware_version,ambient_temp_c,ambient_humidity)
VALUES (3,14,'2024-03-15 11:15:00',21.0,42.0,1400,'Good','Off','Auto',19.0,38.0,110.2,0,'No',503,'All normal','v2.5','f1.2',21.5,42.5);

-- Vehicle Powertrain Inventory
CREATE TABLE vehicle_powertrain_inventory (
    inventory_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    vehicle_id INTEGER,
    engine_model TEXT,
    motor_type TEXT,
    battery_capacity_kwh REAL,
    fuel_type TEXT,
    hybrid_system TEXT,
    transmission_type TEXT,
    gear_count INTEGER,
    power_kw REAL,
    torque_nm REAL,
    rpm_limit INTEGER,
    weight_kg REAL,
    chassis_material TEXT,
    aero_package TEXT,
    last_service_date DATE,
    next_service_due DATE,
    status TEXT,
    location TEXT,
    notes TEXT
);

INSERT INTO vehicle_powertrain_inventory (team_id,vehicle_id,engine_model,motor_type,battery_capacity_kwh,fuel_type,hybrid_system,transmission_type,gear_count,power_kw,torque_nm,rpm_limit,weight_kg,chassis_material,aero_package,last_service_date,next_service_due,status,location,notes)
VALUES (1,101,'V8Turbo','None',0,'Petrol','No','Sequential','8',550,650,15000,740,'CarbonFiber','Standard','2024-02-01','2024-08-01','Active','GarageA','Primary race car');

INSERT INTO vehicle_powertrain_inventory (team_id,vehicle_id,engine_model,motor_type,battery_capacity_kwh,fuel_type,hybrid_system,transmission_type,gear_count,power_kw,torque_nm,rpm_limit,weight_kg,chassis_material,aero_package,last_service_date,next_service_due,status,location,notes)
VALUES (2,102,'V6Hybrid','Electric',12.5,'Hybrid','Yes','DualClutch','7',480,550,14500,720,'Aluminum','Advanced','2024-01-15','2024-07-15','Active','GarageB','Hybrid test vehicle');

INSERT INTO vehicle_powertrain_inventory (team_id,vehicle_id,engine_model,motor_type,battery_capacity_kwh,fuel_type,hybrid_system,transmission_type,gear_count,power_kw,torque_nm,rpm_limit,weight_kg,chassis_material,aero_package,last_service_date,next_service_due,status,location,notes)
VALUES (3,103,'ElectricPower','Electric',18.0,'Electric','Full','SingleSpeed','1',400,500,0,680,'CarbonFiber','Aerodynamic','2024-02-20','2024-08-20','Testing','GarageC','Full electric prototype');

-- Pit Lane Safety Equipment
CREATE TABLE pit_lane_safety_equipment (
    equipment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    pit_lane_id INTEGER,
    equipment_type TEXT,
    manufacturer TEXT,
    model_number TEXT,
    serial_number TEXT,
    install_date DATE,
    last_inspection_date DATE,
    inspection_interval_days INTEGER,
    status TEXT,
    capacity INTEGER,
    weight_kg REAL,
    color TEXT,
    safety_rating TEXT,
    compliance_standard TEXT,
    operator_id INTEGER,
    maintenance_log TEXT,
    next_service_due DATE,
    location_coordinates TEXT,
    notes TEXT,
    active BOOLEAN
);

INSERT INTO pit_lane_safety_equipment (pit_lane_id,equipment_type,manufacturer,model_number,serial_number,install_date,last_inspection_date,inspection_interval_days,status,capacity,weight_kg,color,safety_rating,compliance_standard,operator_id,maintenance_log,next_service_due,location_coordinates,notes,active)
VALUES (1,'FireExtinguisher','Safex','FX-200','SN001','2022-05-10','2024-02-15',365,'Good',2,12.5,'Red','A','ISO7200',201,'Checked, refilled','2025-02-15','45.12,9.87','Mounted near pit entry',1);

INSERT INTO pit_lane_safety_equipment (pit_lane_id,equipment_type,manufacturer,model_number,serial_number,install_date,last_inspection_date,inspection_interval_days,status,capacity,weight_kg,color,safety_rating,compliance_standard,operator_id,maintenance_log,next_service_due,location_coordinates,notes,active)
VALUES (2,'Barrier','SecureBar','SB-400','SN002','2021-09-01','2024-01-20',730,'NeedsRepair',1,85.0,'Yellow','B','ISO7201',202,'Repaired hinge','2025-01-20','48.55,12.34','Side barrier',1);

INSERT INTO pit_lane_safety_equipment (pit_lane_id,equipment_type,manufacturer,model_number,serial_number,install_date,last_inspection_date,inspection_interval_days,status,capacity,weight_kg,color,safety_rating,compliance_standard,operator_id,maintenance_log,next_service_due,location_coordinates,notes,active)
VALUES (3,'SafetyNet','NetGuard','NG-150','SN003','2023-03-15','2024-03-10',180,'Good',1,30.0,'Blue','A','ISO7202',203,'Routine check','2024-09-10','50.01,14.22','Overhead net',1);

-- Crowd Flow Analytics
CREATE TABLE crowd_flow_analytics (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    timestamp TEXT,
    entry_gate_id INTEGER,
    exit_gate_id INTEGER,
    people_in INTEGER,
    people_out INTEGER,
    current_occupancy INTEGER,
    avg_wait_time_seconds INTEGER,
    peak_wait_time_seconds INTEGER,
    temperature_c REAL,
    humidity_percent REAL,
    noise_level_db REAL,
    lighting_level_lux REAL,
    video_feed_id INTEGER,
    sensor_status TEXT,
    alert_flag BOOLEAN,
    operator_id INTEGER,
    remarks TEXT,
    weather_condition TEXT,
    zone TEXT
);

INSERT INTO crowd_flow_analytics (event_id,timestamp,entry_gate_id,exit_gate_id,people_in,people_out,current_occupancy,avg_wait_time_seconds,peak_wait_time_seconds,temperature_c,humidity_percent,noise_level_db,lighting_level_lux,video_feed_id,sensor_status,alert_flag,operator_id,remarks,weather_condition,zone)
VALUES (101,'2024-03-20 10:00:00',1,2,1500,1400,300,45,90,22.0,55,75,800,12,'Operational',0,301,'Normal flow','Sunny','Grandstand');

INSERT INTO crowd_flow_analytics (event_id,timestamp,entry_gate_id,exit_gate_id,people_in,people_out,current_occupancy,avg_wait_time_seconds,peak_wait_time_seconds,temperature_c,humidity_percent,noise_level_db,lighting_level_lux,video_feed_id,sensor_status,alert_flag,operator_id,remarks,weather_condition,zone)
VALUES (101,'2024-03-20 12:30:00',3,4,2200,2100,400,60,120,24.5,60,80,850,13,'Operational',1,302,'High congestion','PartlyCloudy','PitLane');

INSERT INTO crowd_flow_analytics (event_id,timestamp,entry_gate_id,exit_gate_id,people_in,people_out,current_occupancy,avg_wait_time_seconds,peak_wait_time_seconds,temperature_c,humidity_percent,noise_level_db,lighting_level_lux,video_feed_id,sensor_status,alert_flag,operator_id,remarks,weather_condition,zone)
VALUES (101,'2024-03-20 15:00:00',5,6,1800,1750,250,30,70,26.0,58,78,820,14,'Operational',0,303,'Smooth flow','Sunny','Paddock');

-- Sponsor Media Exposure Log
CREATE TABLE sponsor_media_exposure_log (
    exposure_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    media_id INTEGER,
    event_id INTEGER,
    exposure_type TEXT,
    platform TEXT,
    duration_seconds INTEGER,
    impressions INTEGER,
    clicks INTEGER,
    cost_usd REAL,
    campaign_name TEXT,
    start_date DATE,
    end_date DATE,
    creative_id TEXT,
    target_audience TEXT,
    geo_location TEXT,
    brand_alignment_score REAL,
    viewability_rate REAL,
    verification_status TEXT,
    notes TEXT,
    recorded_at TEXT
);

INSERT INTO sponsor_media_exposure_log (sponsor_id,media_id,event_id,exposure_type,platform,duration_seconds,impressions,clicks,cost_usd,campaign_name,start_date,end_date,creative_id,target_audience,geo_location,brand_alignment_score,viewability_rate,verification_status,notes,recorded_at)
VALUES (201,301,101,'Banner','Website',30,50000,1200,2500.00,'SpeedBoost','2023-12-01','2024-02-28','CR1001','Adults18-45','EU','0.85','0.92','Verified','High impact banner','2024-03-01 08:00:00');

INSERT INTO sponsor_media_exposure_log (sponsor_id,media_id,event_id,exposure_type,platform,duration_seconds,impressions,clicks,cost_usd,campaign_name,start_date,end_date,creative_id,target_audience,geo_location,brand_alignment_score,viewability_rate,verification_status,notes,recorded_at)
VALUES (202,302,102,'Video','SocialMedia',45,75000,3400,3800.00,'TurboCharge','2024-01-15','2024-03-15','CR1002','YoungFans','NA','0.78','0.88','Pending','Pre‑race video ad','2024-03-02 09:30:00');

INSERT INTO sponsor_media_exposure_log (sponsor_id,media_id,event_id,exposure_type,platform,duration_seconds,impressions,clicks,cost_usd,campaign_name,start_date,end_date,creative_id,target_audience,geo_location,brand_alignment_score,viewability_rate,verification_status,notes,recorded_at)
VALUES (203,303,103,'SponsoredPost','MobileApp',15,30000,800,1200.00,'EcoDrive','2024-02-01','2024-04-01','CR1003','EcoConscious','ASIA','0.90','0.95','Verified','Green initiative post','2024-03-03 11:15:00');

-- Race Technology Vendor Registry
CREATE TABLE race_technology_vendor_registry (
    vendor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    vendor_name TEXT,
    technology_category TEXT,
    contact_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    address TEXT,
    city TEXT,
    country TEXT,
    website TEXT,
    contract_start DATE,
    contract_end DATE,
    service_level TEXT,
    pricing_model TEXT,
    sla_hours INTEGER,
    last_audit_date DATE,
    compliance_status TEXT,
    notes TEXT,
    registered_by INTEGER,
    registration_date DATE,
    active BOOLEAN
);

INSERT INTO race_technology_vendor_registry (vendor_name,technology_category,contact_name,contact_email,contact_phone,address,city,country,website,contract_start,contract_end,service_level,pricing_model,sla_hours,last_audit_date,compliance_status,notes,registered_by,registration_date,active)
VALUES ('TelemetryPro','Telemetry','Alice Smith','alice@telemetrypro.com','5551234567','123 Tech Ave','TechCity','CountryX','www.telemetrypro.com','2023-01-01','2025-12-31','Premium','Subscription',24,'2024-02-10','Compliant','Provides real‑time data','501','2023-01-02',1);

INSERT INTO race_technology_vendor_registry (vendor_name,technology_category,contact_name,contact_email,contact_phone,address,city,country,website,contract_start,contract_end,service_level,pricing_model,sla_hours,last_audit_date,compliance_status,notes,registered_by,registration_date,active)
VALUES ('PitLaneGear','Equipment','Bob Johnson','bob@pitlaneg.com','5559876543','77 Engine Rd','MotorTown','CountryY','www.pitlaneg.com','2022-06-15','2024-06-14','Standard','OneTime','48','2023-12-20','Pending','Supplies pit lane barriers','502','2022-06-16',0);

INSERT INTO race_technology_vendor_registry (vendor_name,technology_category,contact_name,contact_email,contact_phone,address,city,country,website,contract_start,contract_end,service_level,pricing_model,sla_hours,last_audit_date,compliance_status,notes,registered_by,registration_date,active)
VALUES ('EcoFuelSolutions','FuelSupply','Clara Lee','clara@ecofuel.com','5552223333','45 Green St','EcoCity','CountryZ','www.ecofuel.com','2024-03-01','2027-02-28','Gold','Volume','12','2024-03-05','Compliant','Sustainable fuel provider','503','2024-03-01',1);

-- Circuit Heritage Conservation Projects
CREATE TABLE circuit_heritage_conservation_projects (
    project_id INTEGER PRIMARY KEY AUTOINCREMENT,
    circuit_id INTEGER,
    project_name TEXT,
    description TEXT,
    start_date DATE,
    end_date DATE,
    budget_usd REAL,
    funding_source TEXT,
    lead_conservator TEXT,
    partner_organization TEXT,
    status TEXT,
    heritage_item TEXT,
    preservation_method TEXT,
    materials_used TEXT,
    estimated_completion DATE,
    actual_completion DATE,
    impact_score REAL,
    public_access BOOLEAN,
    media_release_link TEXT,
    notes TEXT,
    last_updated DATE
);

INSERT INTO circuit_heritage_conservation_projects (circuit_id,project_name,description,start_date,end_date,budget_usd,funding_source,lead_conservator,partner_organization,status,heritage_item,preservation_method,materials_used,estimated_completion,actual_completion,impact_score,public_access,media_release_link,notes,last_updated)
VALUES (10,'Grandstand Restoration','Restoring historic grandstand to original specs','2023-04-01','2024-03-31',250000,'HeritageFund','Marco Rossi','LocalMuseum','InProgress','Grandstand','Structural','Steel,Wood','2024-03-15',NULL,0.78,1,'http://media.circuit.com/grandstand','Phase 1 completed','2024-02-20');

INSERT INTO circuit_heritage_conservation_projects (circuit_id,project_name,description,start_date,end_date,budget_usd,funding_source,lead_conservator,partner_organization,status,heritage_item,preservation_method,materials_used,estimated_completion,actual_completion,impact_score,public_access,media_release_link,notes,last_updated)
VALUES (12,'Pit Wall Murals','Commissioning murals celebrating past champions','2023-09-15','2024-06-30',85000,'CulturalArts','Lena Patel','ArtInstitute','Planned','PitWall','Artistic','Acrylic,Silk','2024-06-01',NULL,0.65,0,'http://media.circuit.com/pitwalls','Design phase','2024-01-10');

INSERT INTO circuit_heritage_conservation_projects (circuit_id,project_name,description,start_date,end_date,budget_usd,funding_source,lead_conservator,partner_organization,status,heritage_item,preservation_method,materials_used,estimated_completion,actual_completion,impact_score,public_access,media_release_link,notes,last_updated)
VALUES (14,'Start/Finish Archive','Digitizing historic start/finish footage','2022-11-01','2024-12-31',120000,'TechGrant','Samuel Ng','ArchiveCenter','Ongoing','VideoArchive','Digital','4K Scanners','2024-11-30',NULL,0.82,1,'http://media.circuit.com/archives','Halfway through','2024-03-05');

-- Driver Education Workshops
CREATE TABLE driver_education_workshops (
    workshop_id INTEGER PRIMARY KEY AUTOINCREMENT,
    driver_id INTEGER,
    workshop_title TEXT,
    location TEXT,
    date DATE,
    duration_hours INTEGER,
    instructor_name TEXT,
    instructor_affiliation TEXT,
    topics_covered TEXT,
    certification_awarded BOOLEAN,
    certificate_id TEXT,
    attendance_count INTEGER,
    feedback_score REAL,
    notes TEXT,
    material_link TEXT,
    sponsor_id INTEGER,
    capacity INTEGER,
    registered_count INTEGER,
    status TEXT,
    followup_date DATE,
    recorded_by INTEGER
);

INSERT INTO driver_education_workshops (driver_id,workshop_title,location,date,duration_hours,instructor_name,instructor_affiliation,topics_covered,certification_awarded,certificate_id,attendance_count,feedback_score,notes,material_link,sponsor_id,capacity,registered_count,status,followup_date,recorded_by)
VALUES (1001,'Advanced Wet‑Weather Driving','RacingAcademy','2024-04-10',8,'Tom Daly','RacingSchool','Wet tyres, braking, visibility','1','CERT1001',15,4.7,'Excellent participation','http://materials.racingacademy.com/wet','301',20,15,'Completed','2024-05-01',601);

INSERT INTO driver_education_workshops (driver_id,workshop_title,location,date,duration_hours,instructor_name,instructor_affiliation,topics_covered,certification_awarded,certificate_id,attendance_count,feedback_score,notes,material_link,sponsor_id,capacity,registered_count,status,followup_date,recorded_by)
VALUES (1002,'Mental Resilience Training','PerformanceCenter','2024-05-05',6,'Dr Eva Hart','SportsPsychologyInstitute','Stress management, focus, visualization','1','CERT1002',12,4.9,'Highly engaged','http://materials.perfcen.com/mental','302',15,12,'Completed','2024-06-01',602);

INSERT INTO driver_education_workshops (driver_id,workshop_title,location,date,duration_hours,instructor_name,instructor_affiliation,topics_covered,certification_awarded,certificate_id,attendance_count,feedback_score,notes,material_link,sponsor_id,capacity,registered_count,status,followup_date,recorded_by)
VALUES (1003,'Data‑Driven Performance Analysis','TechLab','2024-06-15',5,'Liam O''Connor','DataScienceGroup','Telemetry review, lap time optimization','0',NULL,10,4.3,'Good discussion','http://materials.techlab.com/data','303',12,10,'Scheduled','2024-07-01',603);