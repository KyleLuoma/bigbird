-- Employee benefits plan details
CREATE TABLE employee_benefits_plan
(
    plan_id               INTEGER PRIMARY KEY,
    provider_name         TEXT NOT NULL,
    plan_type             TEXT NOT NULL,
    coverage_level        TEXT NOT NULL,
    enrollment_start      DATE NOT NULL,
    enrollment_end        DATE NOT NULL,
    premium_amount        REAL NOT NULL,
    employee_contribution REAL NOT NULL,
    employer_contribution REAL NOT NULL,
    dependent_coverage    INTEGER NOT NULL,
    medical_network       TEXT NOT NULL,
    dental_coverage       INTEGER NOT NULL,
    vision_coverage       INTEGER NOT NULL,
    life_insurance_amount INTEGER NOT NULL,
    disability_type       TEXT NOT NULL,
    waiting_period_days  INTEGER NOT NULL,
    rollover_allowed      INTEGER NOT NULL,
    max_coverage_amount   INTEGER NOT NULL,
    plan_status           TEXT NOT NULL,
    created_at            DATE NOT NULL,
    updated_at            DATE NOT NULL
);

INSERT INTO employee_benefits_plan VALUES (1,'HealthFirst','Medical','Full','2022-01-01','2023-12-31',250.00,120.00,130.00,1,'NetworkA',1,1,50000,'ShortTerm',30,1,200000,'Active','2022-01-01','2022-06-01');
INSERT INTO employee_benefits_plan VALUES (2,'WellCare','Dental','Partial','2022-02-15','2023-02-14',45.00,20.00,25.00,0,'NetworkB',1,0,0,'None',0,0,50000,'Active','2022-02-15','2022-07-10');
INSERT INTO employee_benefits_plan VALUES (3,'VisionPlus','Vision','Full','2022-03-01','2024-02-28',30.00,15.00,15.00,1,'NetworkC',0,1,0,'None',0,1,75000,'Active','2022-03-01','2022-08-20');

-- Renewable energy farm maintenance log
CREATE TABLE renewable_energy_farm_maintenance_log
(
    log_id            INTEGER PRIMARY KEY,
    farm_id           INTEGER NOT NULL,
    maintenance_date  DATE NOT NULL,
    technician_id     INTEGER NOT NULL,
    task_description  TEXT NOT NULL,
    duration_hours    REAL NOT NULL,
    equipment_used    TEXT NOT NULL,
    cost              REAL NOT NULL,
    downtime_minutes  INTEGER NOT NULL,
    weather_condition TEXT NOT NULL,
    safety_check_passed INTEGER NOT NULL,
    notes             TEXT NOT NULL,
    created_at        DATE NOT NULL,
    updated_at        DATE NOT NULL,
    maintenance_type  TEXT NOT NULL,
    parts_replaced    TEXT NOT NULL,
    next_scheduled    DATE NOT NULL,
    voltage_output    REAL NOT NULL,
    frequency_output  REAL NOT NULL,
    panel_efficiency  REAL NOT NULL
);

INSERT INTO renewable_energy_farm_maintenance_log VALUES (1,101,'2023-04-10',501,'Inverter check',2.5,'Multimeter',150.00,10,'Sunny',1,'All good','2023-04-10','2023-04-10','Preventive','InverterX','2023-10-10',500.0,60.0,0.92);
INSERT INTO renewable_energy_farm_maintenance_log VALUES (2,102,'2023-05-12',502,'Panel cleaning',4.0,'CleaningKit',200.00,5,'Cloudy',1,'No debris','2023-05-12','2023-05-12','Routine','None','2023-11-12',480.0,59.5,0.90);
INSERT INTO renewable_energy_farm_maintenance_log VALUES (3,103,'2023-06-15',503,'Transformer repair',6.0,'WrenchSet',1200.00,30,'Rainy',1,'Replaced fuse','2023-06-15','2023-06-15','Corrective','TransformerY','2024-01-15',515.0,60.2,0.93);

-- City infrastructure project phase details
CREATE TABLE city_infrastructure_project_phase
(
    phase_id                INTEGER PRIMARY KEY,
    project_id              INTEGER NOT NULL,
    phase_name              TEXT NOT NULL,
    start_date              DATE NOT NULL,
    end_date                DATE NOT NULL,
    budget_estimated        REAL NOT NULL,
    budget_spent            REAL NOT NULL,
    responsible_department TEXT NOT NULL,
    status                  TEXT NOT NULL,
    milestones              TEXT NOT NULL,
    risk_level              TEXT NOT NULL,
    stakeholder_contact     TEXT NOT NULL,
    approvals_needed        INTEGER NOT NULL,
    permits_obtained        INTEGER NOT NULL,
    environmental_impact_score REAL NOT NULL,
    notes                   TEXT NOT NULL,
    created_at              DATE NOT NULL,
    updated_at              DATE NOT NULL,
    phase_sequence          INTEGER NOT NULL,
    external_funding        REAL NOT NULL,
    contractor_name         TEXT NOT NULL
);

INSERT INTO city_infrastructure_project_phase VALUES (1,1001,'Design','2023-01-01','2023-03-31',500000.00,250000.00,'Engineering','InProgress','ConceptApproved;SurveyComplete','Medium','JohnDoe',2,2,3.5,'Initial design completed','2023-01-01','2023-03-15',1,100000.00,'BuildCo');
INSERT INTO city_infrastructure_project_phase VALUES (2,1001,'Construction','2023-04-01','2023-12-31',2000000.00,1200000.00,'Construction','Pending','Groundwork;Foundation','High','JaneSmith',3,3,7.2,'Awaiting final permits','2023-04-01','2023-09-01',2,500000.00,'ConstructCorp');
INSERT INTO city_infrastructure_project_phase VALUES (3,1002,'Evaluation','2024-01-01','2024-06-30',300000.00,0.00,'Planning','NotStarted','ImpactStudy','Low','MikeBrown',1,1,2.0,'Project awaiting start','2024-01-01','2024-01-01',1,50000.00,'EvalPartners');

-- Medical device service record
CREATE TABLE medical_device_service_record
(
    service_id           INTEGER PRIMARY KEY,
    device_id            INTEGER NOT NULL,
    service_date         DATE NOT NULL,
    service_center       TEXT NOT NULL,
    technician_name      TEXT NOT NULL,
    service_type         TEXT NOT NULL,
    parts_replaced       TEXT NOT NULL,
    part_cost            REAL NOT NULL,
    labor_hours          REAL NOT NULL,
    total_cost           REAL NOT NULL,
    warranty_status      TEXT NOT NULL,
    next_service_due     DATE NOT NULL,
    device_status        TEXT NOT NULL,
    notes                TEXT NOT NULL,
    created_at           DATE NOT NULL,
    updated_at           DATE NOT NULL,
    calibration_verified INTEGER NOT NULL,
    software_version     TEXT NOT NULL,
    compliance_status    TEXT NOT NULL,
    regulatory_body      TEXT NOT NULL
);

INSERT INTO medical_device_service_record VALUES (1,2001,'2023-02-20','MedCenterA','AliceWhite','Preventive','FilterA',50.00,1.5,120.00,'Valid','2024-02-20','Operational','Cleaned filter','2023-02-20','2023-02-20',1,'v2.3','Compliant','FDA');
INSERT INTO medical_device_service_record VALUES (2,2002,'2023-03-15','MedCenterB','BobGreen','Corrective','BatteryB',200.00,2.0,450.00,'Expired','2024-03-15','Operational','Replaced battery','2023-03-15','2023-03-15',1,'v1.8','Compliant','EMA');
INSERT INTO medical_device_service_record VALUES (3,2003,'2023-04-10','MedCenterC','CarolBlack','Calibration','None',0.00,3.0,300.00,'Valid','2025-04-10','Operational','Calibration successful','2023-04-10','2023-04-10',1,'v3.0','Compliant','MHRA');

-- Digital content license agreement
CREATE TABLE digital_content_license_agreement
(
    agreement_id           INTEGER PRIMARY KEY,
    content_id             INTEGER NOT NULL,
    licensee_name          TEXT NOT NULL,
    license_type           TEXT NOT NULL,
    start_date             DATE NOT NULL,
    end_date               DATE NOT NULL,
    territory              TEXT NOT NULL,
    exclusivity            INTEGER NOT NULL,
    royalty_rate           REAL NOT NULL,
    upfront_fee            REAL NOT NULL,
    payment_terms          TEXT NOT NULL,
    usage_limits           TEXT NOT NULL,
    amendment_number       INTEGER NOT NULL,
    signed_by              TEXT NOT NULL,
    signature_date         DATE NOT NULL,
    termination_clause     TEXT NOT NULL,
    renewal_option         TEXT NOT NULL,
    created_at             DATE NOT NULL,
    updated_at             DATE NOT NULL,
    notes                  TEXT NOT NULL,
    compliance_requirements TEXT NOT NULL
);

INSERT INTO digital_content_license_agreement VALUES (1,3001,'MediaCorp','Exclusive','2023-01-01','2025-12-31','Global',1,5.0,10000.00,'Net30','Unlimited','0','JohnLegal','2022-12-15','30days','AutoRenew','2023-01-01','2023-01-01','First agreement','GDPR');
INSERT INTO digital_content_license_agreement VALUES (2,3002,'StreamNow','NonExclusive','2023-06-01','2024-05-31','EU',0,3.5,5000.00,'Net45','5000plays','1','AnnaLegal','2023-05-20','60days','NoRenew','2023-06-01','2023-06-01','Amended usage limits','CCPA');
INSERT INTO digital_content_license_agreement VALUES (3,3003,'EduPlatform','Educational','2024-01-01','2026-12-31','US',0,0.0,2000.00,'Net15','5000students','0','MikeLegal','2023-12-10','90days','AutoRenew','2024-01-01','2024-01-01','Free for education','FERPA');

-- Supply chain shipment schedule
CREATE TABLE supply_chain_shipment_schedule
(
    schedule_id           INTEGER PRIMARY KEY,
    shipment_id           INTEGER NOT NULL,
    origin_warehouse      TEXT NOT NULL,
    destination_warehouse TEXT NOT NULL,
    departure_date        DATE NOT NULL,
    arrival_date          DATE NOT NULL,
    carrier_name          TEXT NOT NULL,
    mode_of_transport     TEXT NOT NULL,
    container_type        TEXT NOT NULL,
    load_weight           REAL NOT NULL,
    volume_cubic_m        REAL NOT NULL,
    priority_level        TEXT NOT NULL,
    status                TEXT NOT NULL,
    estimated_cost        REAL NOT NULL,
    actual_cost           REAL NOT NULL,
    handling_instructions TEXT NOT NULL,
    customs_clearance     INTEGER NOT NULL,
    insurance_amount      REAL NOT NULL,
    tracking_number       TEXT NOT NULL,
    created_at            DATE NOT NULL,
    updated_at            DATE NOT NULL
);

INSERT INTO supply_chain_shipment_schedule VALUES (1,4001,'WH_A','WH_B','2023-07-01','2023-07-05','FastTrans','Truck','Standard',1200.5,15.2,'High','InTransit',800.00,820.00,'Handle with care','1',50000.00,'TRK123456','2023-07-01','2023-07-01');
INSERT INTO supply_chain_shipment_schedule VALUES (2,4002,'WH_C','WH_D','2023-08-10','2023-08-12','Oceanic','Ship','Reefer',5000.0,45.0,'Medium','Scheduled',1500.00,0.00,'Keep refrigerated','0',75000.00,'SHIP987654','2023-08-10','2023-08-10');
INSERT INTO supply_chain_shipment_schedule VALUES (3,4003,'WH_E','WH_F','2023-09-15','2023-09-16','AirExpress','Air','AirCargo',800.0,2.5,'Urgent','Delivered',2500.00,2550.00,'Fragile','1',30000.00,'AIR112233','2023-09-15','2023-09-15');

-- Environmental sensor station metadata
CREATE TABLE environmental_sensor_station_meta
(
    station_id                 INTEGER PRIMARY KEY,
    station_name               TEXT NOT NULL,
    latitude                   REAL NOT NULL,
    longitude                  REAL NOT NULL,
    installation_date          DATE NOT NULL,
    sensor_type                TEXT NOT NULL,
    manufacturer               TEXT NOT NULL,
    model_number               TEXT NOT NULL,
    firmware_version           TEXT NOT NULL,
    calibration_date           DATE NOT NULL,
    maintenance_interval_days  INTEGER NOT NULL,
    data_upload_endpoint       TEXT NOT NULL,
    power_source               TEXT NOT NULL,
    battery_capacity           REAL NOT NULL,
    communication_protocol     TEXT NOT NULL,
    status                     TEXT NOT NULL,
    last_maintenance           DATE NOT NULL,
    notes                      TEXT NOT NULL,
    created_at                 DATE NOT NULL,
    updated_at                 DATE NOT NULL,
    region                     TEXT NOT NULL
);

INSERT INTO environmental_sensor_station_meta VALUES (1,'StationAlpha',45.1234,-122.5678,'2022-05-01','AirQuality','EcoSensors','AQ100','1.0.3','2022-10-01',180,'https://data.example.com/alpha','Solar',12.5,'LTE','Active','2023-03-01','No issues','2022-05-01','2023-03-01','NorthRegion');
INSERT INTO environmental_sensor_station_meta VALUES (2,'StationBeta',46.2345,-123.6789,'2022-06-15','WaterQuality','HydroTech','WQ200','2.1.0','2022-12-01',365,'https://data.example.com/beta','Battery',8.2,'WiFi','Active','2023-01-15','Battery replaced','2022-06-15','2023-01-15','SouthRegion');
INSERT INTO environmental_sensor_station_meta VALUES (3,'StationGamma',47.3456,-124.7890,'2023-01-20','SoilMoisture','AgriSense','SM300','3.0.1','2023-04-01',90,'https://data.example.com/gamma','Grid','N/A','LoRa','Active','2023-04-15','Calibrated','2023-01-20','2023-04-15','EastRegion');

-- Public transport route details
CREATE TABLE public_transport_route_details
(
    route_id               INTEGER PRIMARY KEY,
    route_name             TEXT NOT NULL,
    transport_mode         TEXT NOT NULL,
    start_stop             TEXT NOT NULL,
    end_stop               TEXT NOT NULL,
    total_distance_km      REAL NOT NULL,
    average_travel_time_min REAL NOT NULL,
    frequency_minutes      INTEGER NOT NULL,
    operating_hours        TEXT NOT NULL,
    fare_structure         TEXT NOT NULL,
    accessibility_features TEXT NOT NULL,
    vehicle_type           TEXT NOT NULL,
    capacity               INTEGER NOT NULL,
    operator_name          TEXT NOT NULL,
    last_updated           DATE NOT NULL,
    schedule_url           TEXT NOT NULL,
    active_status          INTEGER NOT NULL,
    notes                  TEXT NOT NULL,
    created_at             DATE NOT NULL,
    updated_at             DATE NOT NULL,
    city                   TEXT NOT NULL
);

INSERT INTO public_transport_route_details VALUES (1,'RouteA','Bus','Stop1','Stop20',15.2,35.0,10,'05:00-23:00','FlatRate','WheelchairRamp','ElectricBus',50,'CityTransit','2023-07-01','http://schedule.city/routea',1,'Main corridor','2023-07-01','2023-07-01','MetroCity');
INSERT INTO public_transport_route_details VALUES (2,'RouteB','Tram','StopA','StopZ',8.5,20.0,5,'06:00-22:00','ZoneBased','LowFloor','TramCar',120,'MetroRail','2023-08-01','http://schedule.city/routeb',1,'High demand','2023-08-01','2023-08-01','MetroCity');
INSERT INTO public_transport_route_details VALUES (3,'RouteC','Metro','StationX','StationY',25.0,45.0,3,'04:30-01:00','DistanceBased','Elevators','MetroTrain',300,'UrbanMetro','2023-09-01','http://schedule.city/routec',1,'Express service','2023-09-01','2023-09-01','MetroCity');

-- Corporate governance meeting records
CREATE TABLE corporate_governance_meeting
(
    meeting_id          INTEGER PRIMARY KEY,
    meeting_date        DATE NOT NULL,
    meeting_type        TEXT NOT NULL,
    chairperson         TEXT NOT NULL,
    location            TEXT NOT NULL,
    agenda              TEXT NOT NULL,
    minutes_url         TEXT NOT NULL,
    attendees_count     INTEGER NOT NULL,
    decisions_made      TEXT NOT NULL,
    action_items        TEXT NOT NULL,
    follow_up_date      DATE NOT NULL,
    confidential        INTEGER NOT NULL,
    created_at          DATE NOT NULL,
    updated_at          DATE NOT NULL,
    meeting_duration_minutes INTEGER NOT NULL,
    board_members_present TEXT NOT NULL,
    external_guests     TEXT NOT NULL,
    voting_results      TEXT NOT NULL,
    compliance_review   INTEGER NOT NULL,
    notes               TEXT NOT NULL,
    summary             TEXT NOT NULL
);

INSERT INTO corporate_governance_meeting VALUES (1,'2023-04-15','Board','LauraSmith','ConferenceRoom1','StrategicPlan;BudgetReview','http://docs.corp/minutes1',12,'ApprovedBudget;NewPolicy','PrepareReport;UpdateKPIs','2023-05-01',1,'2023-04-15','2023-04-15',180,'LauraSmith,MarkLee','None','Yes','1','All items covered','Quarterly board meeting');
INSERT INTO corporate_governance_meeting VALUES (2,'2023-07-20','Audit','JamesBrown','AuditHall','AuditFindings;RiskAssessment','http://docs.corp/minutes2',8,'RiskMitigationPlan','ImplementControls','2023-08-15',1,'2023-07-20','2023-07-20',120,'JamesBrown,EmilyWhite','ExternalAuditorCo','Yes','1','Action plan defined','Annual audit review');
INSERT INTO corporate_governance_meeting VALUES (3,'2023-10-05','Committee','SarahGreen','Room302','ESG initiatives;StakeholderEngagement','http://docs.corp/minutes3',6,'AdoptESGPolicy','PublishReport','2024-01-10',0,'2023-10-05','2023-10-05',150,'SarahGreen,TomGrey','NGO_EnvGroup','Yes','0','Policy draft approved','ESG committee session');

-- AI model version history
CREATE TABLE ai_model_version_history
(
    model_version_id   INTEGER PRIMARY KEY,
    model_name         TEXT NOT NULL,
    version_number     TEXT NOT NULL,
    release_date       DATE NOT NULL,
    training_dataset   TEXT NOT NULL,
    algorithm_type     TEXT NOT NULL,
    hyperparameters    TEXT NOT NULL,
    performance_metric REAL NOT NULL,
    benchmark_dataset  TEXT NOT NULL,
    validation_score   REAL NOT NULL,
    deployment_status  TEXT NOT NULL,
    responsible_engineer TEXT NOT NULL,
    compute_resources  TEXT NOT NULL,
    training_time_hours REAL NOT NULL,
    notes              TEXT NOT NULL,
    created_at         DATE NOT NULL,
    updated_at         DATE NOT NULL,
    model_status       TEXT NOT NULL,
    regulatory_approval INTEGER NOT NULL,
    change_log         TEXT NOT NULL,
    usage_limitations  TEXT NOT NULL
);

INSERT INTO ai_model_version_history VALUES (1,'FraudDetector','v1.0','2023-01-15','TransactionLog2022','GradientBoosting','max_depth=5;learning_rate=0.1','0.92','FraudBenchV1','0.89','Production','AliceMiller','GPUCluster','48','Initial release','2023-01-15','2023-01-15','Active','1','Added feature engineering','None');
INSERT INTO ai_model_version_history VALUES (2,'FraudDetector','v1.1','2023-06-20','TransactionLog2022+2023','GradientBoosting','max_depth=6;learning_rate=0.08','0.94','FraudBenchV1','0.91','Production','BobTaylor','GPUCluster','36','Improved hyperparameters','2023-06-20','2023-06-20','Active','1','Tuned max_depth','None');
INSERT INTO ai_model_version_history VALUES (3,'RiskScorer','v2.0','2023-09-10','CreditHistory2023','NeuralNetwork','layers=4;units=128','0.88','RiskBenchV2','0.85','Staging','ClaraNg','TPUCluster','72','New model for risk scoring','2023-09-10','2023-09-10','Testing','0','Architecture change','Limited to pilot region');