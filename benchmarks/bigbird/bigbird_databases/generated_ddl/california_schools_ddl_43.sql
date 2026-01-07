-- District employee benefits information
CREATE TABLE district_employee_benefits
(
    benefit_id               TEXT NOT NULL PRIMARY KEY,
    employee_id              TEXT NULL,
    district_code            INTEGER NULL,
    benefit_type             TEXT NULL,
    enrollment_date          DATE NULL,
    termination_date         DATE NULL,
    coverage_amount          REAL NULL,
    provider_name            TEXT NULL,
    plan_code                TEXT NULL,
    is_active                INTEGER NULL,
    monthly_premium          REAL NULL,
    deductible               REAL NULL,
    out_of_pocket_max        REAL NULL,
    eligibility_criteria    TEXT NULL,
    notes                    TEXT NULL,
    last_updated             DATE NULL,
    created_by               TEXT NULL,
    approved_by              TEXT NULL,
    benefit_category         TEXT NULL,
    benefit_subtype          TEXT NULL,
    contribution_percent    REAL NULL
);

INSERT INTO district_employee_benefits VALUES
('BEN001','EMP123',101,'Health','2022-01-15',NULL,50000,'HealthCo','HC01',1,250.00,1000.00,5000.00,'FullTime','Initial enrollment','2023-07-01','HRAdmin','FinanceMgr','Medical','PPO',5.0);

INSERT INTO district_employee_benefits VALUES
('BEN002','EMP456',101,'Dental','2021-09-01','2023-05-30',2000,'DentalPlus','DP02',0,30.00,0.00,1000.00,'PartTime','Terminated due to resignation','2023-06-01','HRAdmin','FinanceMgr','Dental','HMO',2.5);

INSERT INTO district_employee_benefits VALUES
('BEN003','EMP789',102,'Retirement','2020-03-01',NULL,0,'RetirePlan','RP10',1,0.00,0.00,0.00,'FullTime','Standard 401K','2023-07-01','HRAdmin','FinanceMgr','Retirement','401K',3.0);


-- School energy monitoring devices
CREATE TABLE school_energy_monitoring_devices
(
    device_id               TEXT NOT NULL PRIMARY KEY,
    school_cds              TEXT NULL,
    device_type             TEXT NULL,
    manufacturer            TEXT NULL,
    model_number            TEXT NULL,
    installation_date       DATE NULL,
    last_calibration_date   DATE NULL,
    serial_number           TEXT NULL,
    firmware_version        TEXT NULL,
    ip_address              TEXT NULL,
    mac_address             TEXT NULL,
    power_rating_kw         REAL NULL,
    voltage                 REAL NULL,
    current_amp             REAL NULL,
    location_description    TEXT NULL,
    is_active               INTEGER NULL,
    maintenance_cycle_days  INTEGER NULL,
    last_maintenance_date   DATE NULL,
    data_collection_interval_minutes INTEGER NULL,
    energy_consumed_kwh     REAL NULL,
    peak_demand_kw          REAL NULL,
    alerts_enabled          INTEGER NULL,
    notes                   TEXT NULL,
    last_updated            DATE NULL
);

INSERT INTO school_energy_monitoring_devices VALUES
('DEV001','CDS001','SmartMeter','EnergyTech','SM-100','2021-08-15','2023-06-20','SN123456','v1.2','192.168.1.10','AA:BB:CC:DD:EE:01',0.5,120,4.2,'Main Hall','1',90,'2023-06-01',15,1250.5,12.3,1,'No issues','2023-07-01');

INSERT INTO school_energy_monitoring_devices VALUES
('DEV002','CDS002','PowerAnalyzer','PowerCorp','PA-200','2020-05-10','2022-12-01','SN654321','v3.4','192.168.2.20','AA:BB:CC:DD:EE:02',1.2,240,5.0,'Science Lab','1',180,'2023-05-15',30,3420.0,22.5,1,'Calibrated quarterly','2023-07-01');

INSERT INTO school_energy_monitoring_devices VALUES
('DEV003','CDS003','ThermalSensor','HeatSense','TS-300','2019-11-05','2023-01-12','SN789012','v2.1','192.168.3.30','AA:BB:CC:DD:EE:03',0.3,110,2.8','Gymnasium','0',365,'2022-12-01',60,2100.7,8.9,0,'Decommissioned','2023-06-30');


-- Community arts funding grants
CREATE TABLE community_arts_funding_grants
(
    grant_id                TEXT NOT NULL PRIMARY KEY,
    grant_name              TEXT NULL,
    funding_agency          TEXT NULL,
    award_year              INTEGER NULL,
    amount_awarded          REAL NULL,
    currency                TEXT NULL,
    purpose_description     TEXT NULL,
    recipient_organization  TEXT NULL,
    contact_person          TEXT NULL,
    contact_email           TEXT NULL,
    start_date              DATE NULL,
    end_date                DATE NULL,
    status                  TEXT NULL,
    reporting_requirements TEXT NULL,
    matched_funds_required  REAL NULL,
    matching_funds_received REAL NULL,
    grant_type              TEXT NULL,
    eligibility_criteria   TEXT NULL,
    application_deadline    DATE NULL,
    notes                   TEXT NULL,
    last_updated            DATE NULL,
    created_by              TEXT NULL,
    approved_by             TEXT NULL,
    program_area            TEXT NULL,
    geographic_scope        TEXT NULL
);

INSERT INTO community_arts_funding_grants VALUES
('GR001','CreativeSpaces','StateArtsCouncil',2022,25000,'USD','Public mural projects','DowntownArtsAssoc','JaneDoe','jane.doe@example.com','2022-07-01','2023-06-30','Active','Quarterly reports','5000','4500','Community','Nonprofit eligible','2022-04-30','First award for city','2023-07-01','AdminUser','Director','VisualArts','County');

INSERT INTO community_arts_funding_grants VALUES
('GR002','YouthPerformanceGrant','NationalEndowment','2021',15000,'USD','Youth theater productions','YoungStages','JohnSmith','john.smith@example.com','2021-09-01','2022-08-31','Closed','Annual report','2000','2000','ArtsEducation','Schools and NGOs','2021-06-15','Completed two plays','2022-09-01','AdminUser','Director','PerformingArts','State');

INSERT INTO community_arts_funding_grants VALUES
('GR003','HeritagePreservation','LocalHeritageFund',2023,10000,'USD','Historic building art installations','HeritagePartners','EmilyClark','emily.clark@example.com','2023-01-15','2023-12-31','Pending','Mid-year report','0','0','Historical','Registered historic sites','2022-11-30','Awaiting approval','2023-07-02','AdminUser','Director','PublicArt','City');


-- Student extracurricular sponsorships
CREATE TABLE student_extracurricular_sponsorships
(
    sponsorship_id          TEXT NOT NULL PRIMARY KEY,
    student_id              TEXT NULL,
    school_cds              TEXT NULL,
    activity_name           TEXT NULL,
    sponsor_name            TEXT NULL,
    sponsor_type            TEXT NULL,
    amount                  REAL NULL,
    currency                TEXT NULL,
    sponsor_contact         TEXT NULL,
    sponsor_email           TEXT NULL,
    start_date              DATE NULL,
    end_date                DATE NULL,
    is_active               INTEGER NULL,
    sponsor_logo_url        TEXT NULL,
    agreement_signed        INTEGER NULL,
    payment_method          TEXT NULL,
    tax_exempt_status       TEXT NULL,
    notes                   TEXT NULL,
    last_updated            DATE NULL,
    created_by              TEXT NULL,
    approved_by             TEXT NULL,
    sponsorship_category   TEXT NULL,
    renewal_option          TEXT NULL,
    reporting_frequency    TEXT NULL,
    compliance_status      TEXT NULL
);

INSERT INTO student_extracurricular_sponsorships VALUES
('SP001','STU1001','CDS001','Robotics Club','TechCorp','Corporate',5000,'USD','AliceBrown','alice.brown@techcorp.com','2022-09-01','2023-06-30',1,'http://techcorp.com/logo.png',1,'Check','Exempt','Annual equipment grant','2023-07-01','AdminA','ExecDir','Equipment','Automatic','Quarterly','Compliant');

INSERT INTO student_extracurricular_sponsorships VALUES
('SP002','STU2002','CDS002','Jazz Band','HarmonyBank','Financial',3000,'USD','BobGreen','bob.green@harmonybank.com','2021-09-01','2022-08-31',0,'http://harmonybank.com/logo.png',1,'BankTransfer','NonExempt','One-time recital support','2022-09-01','AdminB','ExecDir','Performance','None','Annual','Closed');

INSERT INTO student_extracurricular_sponsorships VALUES
('SP003','STU3003','CDS003','Science Olympiad','EcoEnergy','EnergyCo',2000,'USD','CarolWhite','carol.white@ecoenergy.com','2023-01-01','2023-12-31',1,NULL,0,'CreditCard','Exempt','Materials and travel','2023-07-02','AdminC','ExecDir','Materials','Renewable','SemiAnnual','Pending');


-- Technology project milestones
CREATE TABLE technology_project_milestones
(
    milestone_id            TEXT NOT NULL PRIMARY KEY,
    project_id              TEXT NULL,
    project_name            TEXT NULL,
    milestone_name          TEXT NULL,
    description             TEXT NULL,
    target_completion_date  DATE NULL,
    actual_completion_date  DATE NULL,
    status                  TEXT NULL,
    responsible_team        TEXT NULL,
    owner_contact           TEXT NULL,
    budget_allocated        REAL NULL,
    budget_spent            REAL NULL,
    risk_level              TEXT NULL,
    dependencies            TEXT NULL,
    deliverables            TEXT NULL,
    acceptance_criteria     TEXT NULL,
    change_request_needed  INTEGER NULL,
    notes                   TEXT NULL,
    last_updated            DATE NULL,
    created_by              TEXT NULL,
    approved_by             TEXT NULL,
    milestone_type          TEXT NULL,
    priority                TEXT NULL,
    stakeholder_group       TEXT NULL,
    communication_plan      TEXT NULL,
    escalation_path         TEXT NULL
);

INSERT INTO technology_project_milestones VALUES
('ML001','PRJ100','NetworkUpgrade','Phase1_Infrastructure','Upgrade core switches','2023-05-01','2023-04-28','Completed','NetworkTeam','MikeLee','20000','19000','Low','None','Switches installed','All devices operational','0','On schedule','2023-05-02','PMUser','CTO','Infrastructure','High','IT','Weekly email','NetworkLead');

INSERT INTO technology_project_milestones VALUES
('ML002','PRJ101','LearningPlatform','BetaRelease','Launch beta version for teachers','2023-08-15',NULL,'InProgress','SoftwareTeam','SaraKim','50000','30000','Medium','Phase1_Infrastructure','Beta app','User acceptance testing','1','Delay due to staffing','2023-07-01','PMUser','CTO','Software','Medium','Education','Biweekly demo','ProductOwner');

INSERT INTO technology_project_milestones VALUES
('ML003','PRJ102','DataWarehouse','DataMartsCompletion','Create departmental data marts','2023-12-31',NULL,'Planned','DataTeam','TomNg','75000',0,'High','BetaRelease','Data mart schemas','All marts populated','1','Pending resource allocation','2023-07-01','PMUser','CTO','Data','High','Analytics','Monthly report','DataLead');


-- Facility safety equipment inventory
CREATE TABLE facility_safety_equipment_inventory
(
    equipment_id            TEXT NOT NULL PRIMARY KEY,
    school_cds              TEXT NULL,
    equipment_type          TEXT NULL,
    manufacturer            TEXT NULL,
    model_number            TEXT NULL,
    serial_number           TEXT NULL,
    purchase_date           DATE NULL,
    installation_date       DATE NULL,
    location_description    TEXT NULL,
    quantity                INTEGER NULL,
    unit_price              REAL NULL,
    total_cost              REAL NULL,
    warranty_expiration     DATE NULL,
    last_inspection_date    DATE NULL,
    inspection_interval_days INTEGER NULL,
    is_active               INTEGER NULL,
    compliance_status       TEXT NULL,
    maintenance_required    INTEGER NULL,
    last_maintenance_date   DATE NULL,
    maintenance_interval_days INTEGER NULL,
    assigned_responsible    TEXT NULL,
    notes                   TEXT NULL,
    last_updated            DATE NULL,
    created_by              TEXT NULL,
    approved_by             TEXT NULL,
    equipment_category      TEXT NULL,
    hazard_type             TEXT NULL,
    replacement_plan        TEXT NULL,
    disposal_method         TEXT NULL
);

INSERT INTO facility_safety_equipment_inventory VALUES
('EQ001','CDS001','FireExtinguisher','SafeGuard','FE-100','SN001','2020-03-10','2020-03-15','Main Lobby',10,45.00,450.00,'2025-03-10','2023-06-01',365,1,'Compliant',0,NULL,365,'FacilitiesMgr','Mounted on walls','2023-07-01','AdminA','Director','FireSafety','ClassA','Replace after 10 years','Recycling');

INSERT INTO facility_safety_equipment_inventory VALUES
('EQ002','CDS002','EmergencyExitLight','BrightWay','EEL-20','SN002','2019-11-20','2019-11-25','Hallway 2B',15,30.00,450.00,'2024-11-20','2023-05-20',180,1,'Compliant',1,'2023-05-20',180,'ElectricianTeam','Battery replacement due','2023-07-01','AdminB','Director','Lighting','BatteryPowered','Annual battery check','Disposal at hazardous waste');

INSERT INTO facility_safety_equipment_inventory VALUES
('EQ003','CDS003','FirstAidKit','MediSupply','FAK-5','SN003','2021-07-01','2021-07-05','Nurse Office',5,120.00,600.00,'2026-07-01','2023-04-15',365,1,'Compliant',0,NULL,365,'NurseStaff','Restocked annually','2023-07-01','AdminC','Director','Medical','General','Replace after 5 years','Donation');


-- Transportation route demographics
CREATE TABLE transportation_route_demographics
(
    route_id                TEXT NOT NULL PRIMARY KEY,
    district_code           INTEGER NULL,
    route_name              TEXT NULL,
    total_students          INTEGER NULL,
    avg_travel_time_min     REAL NULL,
    pct_low_income          REAL NULL,
    pct_special_education   REAL NULL,
    pct_english_learners    REAL NULL,
    median_household_income REAL NULL,
    pct_owned_homes         REAL NULL,
    pct_rented_homes        REAL NULL,
    avg_distance_miles      REAL NULL,
    pct_rural               REAL NULL,
    pct_urban               REAL NULL,
    pct_suburban            REAL NULL,
    pct_carpool_participation REAL NULL,
    pct_bus_usage           REAL NULL,
    pct_walk_to_school      REAL NULL,
    pct_bike_to_school      REAL NULL,
    pct_public_transport_use REAL NULL,
    last_updated            DATE NULL,
    notes                   TEXT NULL,
    created_by              TEXT NULL,
    approved_by             TEXT NULL,
    data_source             TEXT NULL,
    verification_status    TEXT NULL,
    comments                TEXT NULL
);

INSERT INTO transportation_route_demographics VALUES
('RT001',101,'NorthLine',350,15.5,45.0,8.0,12.5,42000,60.0,40.0,3.2,20.0,70.0,10.0,85.0,15.0,5.0,2.0,10.0,'2023-07-01','Stable usage','AdminX','Planner','DistrictSurvey','Verified','');

INSERT INTO transportation_route_demographics VALUES
('RT002',102,'EastWest',420,12.0,30.0,6.0,18.0,53000,70.0,30.0,2.5,25.0,60.0,15.0,90.0,10.0,8.0,1.5,12.0,'2023-07-01','Increasing enrollment','AdminY','Planner','DistrictSurvey','Verified','');

INSERT INTO transportation_route_demographics VALUES
('RT003',103,'SouthLoop',280,18.0,55.0,10.0,9.0,38000,50.0,50.0,4.0,15.0,75.0,10.0,70.0,20.0,4.0,3.0,8.0,'2023-07-01','High low‑income concentration','AdminZ','Planner','DistrictSurvey','Verified','');


-- Health nutrition supplier contracts
CREATE TABLE health_nutrition_supplier_contracts
(
    contract_id             TEXT NOT NULL PRIMARY KEY,
    supplier_name           TEXT NULL,
    contract_start_date     DATE NULL,
    contract_end_date       DATE NULL,
    service_type            TEXT NULL,
    total_value_usd         REAL NULL,
    annual_fee_usd          REAL NULL,
    payment_terms           TEXT NULL,
    contact_person          TEXT NULL,
    contact_phone            TEXT NULL,
    contact_email           TEXT NULL,
    product_category        TEXT NULL,
    delivery_frequency_days INTEGER NULL,
    minimum_order_quantity  INTEGER NULL,
    compliance_certificates TEXT NULL,
    insurance_required      TEXT NULL,
    exclusivity_clause      TEXT NULL,
    renewal_option          TEXT NULL,
    termination_notice_days INTEGER NULL,
    performance_metrics     TEXT NULL,
    last_audit_date         DATE NULL,
    audit_status            TEXT NULL,
    notes                   TEXT NULL,
    last_updated            DATE NULL,
    created_by              TEXT NULL,
    approved_by             TEXT NULL,
    contract_manager        TEXT NULL,
    amendment_count         INTEGER NULL,
    dispute_resolution      TEXT NULL
);

INSERT INTO health_nutrition_supplier_contracts VALUES
('HC001','FreshFoodsInc','2022-01-01','2024-12-31','MealPrep','150000',25000,'Net30','LauraSmith','5551234567','laura.smith@freshfoods.com','FreshProduce',30,100,'ISO9001','LiabilityCoverage','Exclusive','OptionToRenew','60','OnTimeDelivery','2023-06-15','Pass','Annual review completed','2023-07-01','AdminA','Director','JohnDoe',2,'Mediation');

INSERT INTO health_nutrition_supplier_contracts VALUES
('HC002','SnackSolutions','2021-07-01','2023-06-30','SnackSupply','80000',12000,'Net45','MikeBrown','5559876543','mike.brown@snacksol.com','Snacks',15,200,'FSSC22000','GeneralLiability','NonExclusive','NoRenewal','90','QualityAssurance','2022-12-01','Pass','No issues','2023-07-01','AdminB','Director','JaneDoe',1,'Arbitration');

INSERT INTO health_nutrition_supplier_contracts VALUES
('HC003','NutriBeverageCo','2023-03-01','2025-02-28','BeverageSupply','50000',8000,'Net60','SaraLee','5555551234','sara.lee@nutribv.com','Beverages',7,150,'ISO22000','ProductLiability','Exclusive','OptionToRenew','30','TemperatureControl','2023-05-20','Pass','Monitoring temperature logs','2023-07-01','AdminC','Director','TomKim',0,'Negotiation');


-- Library digital subscription details
CREATE TABLE library_digital_subscription_details
(
    subscription_id         TEXT NOT NULL PRIMARY KEY,
    library_cds             TEXT NULL,
    vendor_name             TEXT NULL,
    product_name            TEXT NULL,
    subscription_start_date DATE NULL,
    subscription_end_date   DATE NULL,
    annual_cost_usd         REAL NULL,
    concurrent_user_limit   INTEGER NULL,
    access_platform         TEXT NULL,
    content_type            TEXT NULL,
    license_type            TEXT NULL,
    coverage_years          TEXT NULL,
    renewal_auto_flag       INTEGER NULL,
    usage_statistics_url    TEXT NULL,
    last_usage_report_date DATE NULL,
    terms_of_service_url    TEXT NULL,
    support_contact_name    TEXT NULL,
    support_contact_email   TEXT NULL,
    support_contact_phone   TEXT NULL,
    notes                   TEXT NULL,
    last_updated            DATE NULL,
    created_by              TEXT NULL,
    approved_by             TEXT NULL,
    subscription_category   TEXT NULL,
    digital_format          TEXT NULL,
    access_restriction      TEXT NULL,
    budget_line_item_code   TEXT NULL,
    compliance_requirements TEXT NULL,
    archival_policy         TEXT NULL
);

INSERT INTO library_digital_subscription_details VALUES
('SUB001','CDS001','Ebsco','Academic Search Premier','2022-01-01','2025-12-31',18000,500,'Web','ScholarlyArticles','FullText','2000-2025','1','http://ebsco.com/usage','2023-06-01','http://ebsco.com/terms','EmilyWhite','emily.white@ebsco.com','5551112222','Renewed annually','2023-07-01','AdminL','Director','Research','PDF','IPOnly','BL001','DataPrivacy','LongTerm');

INSERT INTO library_digital_subscription_details VALUES
('SUB002','CDS002','ProQuest','Dissertations & Theses','2021-09-01','2024-08-31',12000,300,'Web','Theses','MetadataOnly','1990-2024','0','http://proquest.com/usage','2023-05-15','http://proquest.com/terms','DavidGreen','david.green@proquest.com','5553334444','No auto-renew','2023-07-01','AdminM','Director','Academic','HTML','IPOnly','BL002','Copyright','Archive5yr');

INSERT INTO library_digital_subscription_details VALUES
('SUB003','CDS003','Gale','Literature Resource Center','2023-03-01','2026-02-28',9000,250,'Web','Fiction','FullText','2010-2026','1','http://gale.com/usage','2023-06-20','http://gale.com/terms','LauraBlack','laura.black@gale.com','5557778888','Includes eBooks','2023-07-01','AdminN','Director','Fiction','ePub','IPOnly','BL003','DataSecurity','Archive10yr');


-- School cybersecurity training sessions
CREATE TABLE school_cybersecurity_training_sessions
(
    session_id              TEXT NOT NULL PRIMARY KEY,
    school_cds              TEXT NULL,
    training_title          TEXT NULL,
    trainer_name            TEXT NULL,
    trainer_affiliation     TEXT NULL,
    session_date            DATE NULL,
    duration_minutes        INTEGER NULL,
    target_audience         TEXT NULL,
    delivery_method         TEXT NULL,
    materials_provided      TEXT NULL,
    attendance_count        INTEGER NULL,
    pass_rate_percent       REAL NULL,
    certification_obtained  TEXT NULL,
    feedback_score_avg      REAL NULL,
    technical_level         TEXT NULL,
    prerequisites           TEXT NULL,
    follow_up_actions       TEXT NULL,
    notes                   TEXT NULL,
    last_updated            DATE NULL,
    created_by              TEXT NULL,
    approved_by             TEXT NULL,
    location_description    TEXT NULL,
    virtual_meeting_link    TEXT NULL,
    compliance_standard     TEXT NULL,
    cost_usd                REAL NULL,
    sponsor_organization    TEXT NULL,
    evaluation_report_url   TEXT NULL,
    incident_response_included INTEGER NULL,
    post_training_survey_url TEXT NULL
);

INSERT INTO school_cybersecurity_training_sessions VALUES
('CS001','CDS001','Phishing Awareness','KarenHill','SecureNow','2023-04-15',90,'All Staff','InPerson','Slides,Handouts',45,96.0,'Yes',4.5,'Beginner','None','Reminder emails','Positive feedback','2023-04-16','AdminSec','ChiefIT','Room101',NULL,'NIST','0','DistrictOffice','http://district.org/report/cs001',1,'http://survey.com/cs001');

INSERT INTO school_cybersecurity_training_sessions VALUES
('CS002','CDS002','Data Privacy Essentials','MikeRiver','PrivacyGuard','2023-06-20',120,'Teachers,Admins','Virtual','PDF,Video',30,88.0,'No',3.8,'Intermediate','Basic IT','Update policies','Good engagement','2023-06-21','AdminSec','ChiefIT','Online', 'https://meet.link/cs002','ISO27001','200','StateDept','http://state.org/report/cs002',0,'http://survey.com/cs002');

INSERT INTO school_cybersecurity_training_sessions VALUES
('CS003','CDS003','Advanced Threat Modeling','LisaQuinn','CyberEdge','2023-08-05',180,'IT Staff','Hybrid','Workbook,Toolkits',15,100.0,'Yes',4.9,'Advanced','Intro to Threat Modeling','Implement new monitoring','Highly technical','2023-08-06','AdminSec','ChiefIT','Room202','https://meet.link/cs003','CIS','500','FederalGrant','http://federal.org/report/cs003',1,'http://survey.com/cs003');


-- Facility safety equipment inventory (additional distinct table)
CREATE TABLE facility_evacuation_drill_log
(
    drill_id                TEXT NOT NULL PRIMARY KEY,
    school_cds              TEXT NULL,
    drill_date              DATE NULL,
    drill_type              TEXT NULL,
    start_time              TEXT NULL,
    end_time                TEXT NULL,
    total_participants      INTEGER NULL,
    evacuated_students      INTEGER NULL,
    evacuated_staff         INTEGER NULL,
    evacuation_time_seconds INTEGER NULL,
    assembly_point          TEXT NULL,
    drill_conductor         TEXT NULL,
    observations            TEXT NULL,
    issues_reported         TEXT NULL,
    corrective_actions      TEXT NULL,
    follow_up_date          DATE NULL,
    compliance_status       TEXT NULL,
    auditor_name            TEXT NULL,
    audit_comments          TEXT NULL,
    last_updated            DATE NULL,
    created_by              TEXT NULL,
    approved_by             TEXT NULL,
    drill_category          TEXT NULL,
    communication_method    TEXT NULL,
    drill_scenario          TEXT NULL,
    equipment_used          TEXT NULL,
    drill_duration_minutes  INTEGER NULL,
    documentation_link      TEXT NULL,
    external_observer       TEXT NULL
);

INSERT INTO facility_evacuation_drill_log VALUES
('DR001','CDS001','2023-03-10','Fire','08:00','08:07',350,340,10,420,'Playground','JohnDoe','All exit routes clear','None','None','2023-04-01','Compliant','JaneSmith','Good execution','2023-03-11','AdminEvac','Principal','Quarterly','AlarmOnly','Standard','FireExtinguishers',7,'http://district.org/drills/dr001','CountyFireDept');

INSERT INTO facility_evacuation_drill_log VALUES
('DR002','CDS002','2023-05-22','SevereWeather','13:15','13:23',420,410,10,480,'Gymnasium','EmilyBrown','Students assembled promptly','Minor bottleneck at east exit','Added signage','2023-06-15','Compliant','MikeGreen','Minor delays noted','2023-05-23','AdminEvac','Principal','Biannual','SirenAndPA','Tornado','EmergencyKits',8,'http://district.org/drills/dr002','StateEmergencyMgmt');

INSERT INTO facility_evacuation_drill_log VALUES
('DR003','CDS003','2023-09-01','ActiveShooter','10:30','10:35',300,0,0,300,'SecureRoom','LauraWhite','Lockdown procedures successful','None','None','2023-09-15','Compliant','SarahLee','Excellent lockdown','2023-09-02','AdminEvac','Principal','Annual','PAOnly','ActiveShooter','LockdownBars',5,'http://district.org/drills/dr003','LocalPolice');


-- Transportation vehicles maintenance log
CREATE TABLE transportation_vehicles_maintenance_log
(
    maintenance_id          TEXT NOT NULL PRIMARY KEY,
    vehicle_id              TEXT NULL,
    vehicle_type            TEXT NULL,
    service_date            DATE NULL,
    odometer_miles          INTEGER NULL,
    maintenance_type        TEXT NULL,
    service_provider        TEXT NULL,
    cost_usd                REAL NULL,
    parts_replaced          TEXT NULL,
    labor_hours             REAL NULL,
    next_service_due_miles  INTEGER NULL,
    next_service_due_date   DATE NULL,
    technician_name         TEXT NULL,
    work_order_number       TEXT NULL,
    notes                   TEXT NULL,
    warranty_coverage       TEXT NULL,
    downtime_minutes        INTEGER NULL,
    compliance_check_passed INTEGER NULL,
    inspector_name          TEXT NULL,
    inspection_date         DATE NULL,
    last_updated            DATE NULL,
    created_by              TEXT NULL,
    approved_by             TEXT NULL,
    fleet_category          TEXT NULL,
    fuel_type               TEXT NULL,
    emission_standard       TEXT NULL,
    registration_number     TEXT NULL,
    insurance_expiration    DATE NULL,
    GPS_enabled             INTEGER NULL,
    maintenance_priority    TEXT NULL
);

INSERT INTO transportation_vehicles_maintenance_log VALUES
('MT001','BUS001','SchoolBus','2023-04-10',42000,'EngineTuneUp','AutoCare','800.00','OilFilter,AirFilter',5.0,50000,'2023-12-01','TomRay','WO12345','Routine service','Yes',30,1,'MikeL','2023-04-11','2023-04-12','AdminFleet','OperationsMgr','Diesel','EPA2021','REG001','2024-05-01',1,'Medium');

INSERT INTO transportation_vehicles_maintenance_log VALUES
('MT002','VAN005','TransportVan','2023-06-15',25000,'BrakeReplacement','BrakePlus','450.00','BrakePads,Rotors',3.5,30000,'2024-06-15','SaraKim','WO54321','Replaced worn brakes','No',45,1,'AnnaK','2023-06-16','2023-06-17','AdminFleet','OpsMgr','Gasoline','EPA2020','REG005','2023-12-31',1,'High');

INSERT INTO transportation_vehicles_maintenance_log VALUES
('MT003','TRK010','MaintenanceTruck','2023-08-05',65000,'TransmissionRepair','TransTech','2200.00','TransmissionAssembly',12.0,80000,'2024-08-05','LeonMax','WO98765','Major transmission issue','Yes',120,0,'LauraB','2023-08-06','2023-08-07','AdminFleet','OpsMgr','Diesel','EPA2021','REG010','2025-01-15',0,'Critical');


-- School arts program funding
CREATE TABLE school_arts_program_funding
(
    funding_id              TEXT NOT NULL PRIMARY KEY,
    school_cds              TEXT NULL,
    program_name            TEXT NULL,
    fiscal_year             TEXT NULL,
    allocated_amount_usd    REAL NULL,
    spent_amount_usd        REAL NULL,
    funding_source          TEXT NULL,
    grant_number            TEXT NULL,
    matching_funds_required REAL NULL,
    matching_funds_received REAL NULL,
    expenditure_category    TEXT NULL,
    expense_description     TEXT NULL,
    approval_date           DATE NULL,
    disbursement_date       DATE NULL,
    fund_status             TEXT NULL,
    notes                   TEXT NULL,
    last_updated            DATE NULL,
    created_by              TEXT NULL,
    approved_by             TEXT NULL,
    program_director        TEXT NULL,
    sponsor_organization    TEXT NULL,
    audit_status            TEXT NULL,
    compliance_requirements TEXT NULL,
    reporting_frequency     TEXT NULL,
    budget_line_item_code   TEXT NULL,
    cost_center_code        TEXT NULL,
    project_phase           TEXT NULL,
    external_audit_report   TEXT NULL,
    reallocation_allowed    INTEGER NULL,
    variance_percent        REAL NULL
);

INSERT INTO school_arts_program_funding VALUES
('AF001','CDS001','VisualArts','2023-24',15000,10500,'StateArtsGrant','AG2023-001',2000,1800,'Supplies','Paints,Canvas','2023-03-01','2023-03-15','Active','Mid-year review','2023-07-01','AdminArts','Director','LauraWhite','ArtsCouncil','Pass','AnnualReport','Quarterly','BLV001','CC100','Implementation','http://state.gov/audit/af001',1,30.0);

INSERT INTO school_arts_program_funding VALUES
('AF002','CDS002','Theatre','2022-23',25000,20000,'PrivateDonor','PD-THR-2022',0,0,'Production','StageRental,Costumes','2022-02-10','2022-02-20','Closed','Final report submitted','2022-12-01','AdminArts','Director','MikeGreen','TheatreFoundation','Pass','FinalReport','Annual','BLT001','CC200','Completion','http://theatre.org/audit/af002',0,20.0);

INSERT INTO school_arts_program_funding VALUES
('AF003','CDS003','Music','2023-24',18000,15000,'FederalArtsProgram','FAP-2023-MUS',3000,2500,'Instruments','Strings,Woodwinds','2023-04-05','2023-04-12','Active','Pending final audit','2023-07-01','AdminArts','Director','SusanBlack','NationalArts','Pending','QuarterlyReport','SemiAnnual','BLM001','CC300','Implementation','http://federal.gov/audit/af003',1,16.7);


-- Technology vendor performance metrics
CREATE TABLE technology_vendor_performance_metrics
(
    metric_id                TEXT NOT NULL PRIMARY KEY,
    vendor_name              TEXT NULL,
    contract_id              TEXT NULL,
    evaluation_period_start  DATE NULL,
    evaluation_period_end    DATE NULL,
    service_availability_pct REAL NULL,
    mean_time_to_resolve_min REAL NULL,
    incidents_reported       INTEGER NULL,
    severity_critical_count  INTEGER NULL,
    severity_high_count      INTEGER NULL,
    severity_medium_count    INTEGER NULL,
    severity_low_count       INTEGER NULL,
    compliance_score         REAL NULL,
    cost_variance_percent    REAL NULL,
    contract_renewal_likelihood TEXT NULL,
    satisfaction_score       REAL NULL,
    net_promoter_score       REAL NULL,
    feedback_comments        TEXT NULL,
    last_evaluation_date    DATE NULL,
    evaluator_name          TEXT NULL,
    notes                    TEXT NULL,
    last_updated            DATE NULL,
    created_by              TEXT NULL,
    approved_by             TEXT NULL,
    service_type           TEXT NULL,
    sla_met                 INTEGER NULL,
    penalty_applied         REAL NULL,
    improvement_plan        TEXT NULL,
    risk_level              TEXT NULL,
    escalation_contact      TEXT NULL
);

INSERT INTO technology_vendor_performance_metrics VALUES
('VM001','TechSolutions','CT-2022-01','2023-01-01','2023-06-30',99.5,45.0,12,1,3,5,3,95.0,2.0,'High',4.8,45.0,'Excellent response times','2023-07-01','JohnAudit','No issues','2023-07-01','AdminTech','Director','CloudServices',1,0.00,'Continue current processes','Low','MikeLead');

INSERT INTO technology_vendor_performance_metrics VALUES
('VM002','EduSoft','CT-2021-07','2023-01-01','2023-06-30',96.0,120.0,20,2,4,8,6,88.0,-5.0,'Medium',3.9,30.0,'Improvement needed in ticket triage','2023-07-01','AnnaAudit','Pending corrective actions','2023-07-01','AdminTech','Director','SoftwareLicensing',0,5000.00,'Implement new SLA tracking','Medium','SaraLead');

INSERT INTO technology_vendor_performance_metrics VALUES
('VM003','SecureNet','CT-2023-03','2023-01-01','2023-06-30',98.2,60.0,8,0,1,3,4,92.0,1.5,'High',4.5,40.0,'Consistent performance','2023-07-01','LeeAudit','Maintain current SLA','2023-07-01','AdminTech','Director','NetworkSecurity',1,0.00,'No changes required','Low','TomLead');


-- District demographic indicators
CREATE TABLE district_demographic_indicators
(
    indicator_id           TEXT NOT NULL PRIMARY KEY,
    district_code          INTEGER NULL,
    year                   TEXT NULL,
    total_population       INTEGER NULL,
    median_household_income REAL NULL,
    poverty_rate_percent   REAL NULL,
    unemployment_rate_percent REAL NULL,
    high_school_grad_rate_percent REAL NULL,
    college_attainment_percent REAL NULL,
    racial_ethnic_breakdown TEXT NULL,
    language_diversity_score REAL NULL,
    housing_ownership_rate_percent REAL NULL,
    average_commute_time_minutes REAL NULL,
    population_density_per_sq_mi REAL NULL,
    median_age_years      REAL NULL,
    disability_rate_percent REAL NULL,
    veteran_population     INTEGER NULL,
    crime_rate_per_1000    REAL NULL,
    public_health_index    REAL NULL,
    education_spending_per_student REAL NULL,
    last_updated           DATE NULL,
    notes                  TEXT NULL,
    created_by             TEXT NULL,
    approved_by            TEXT NULL,
    data_source            TEXT NULL,
    verification_status    TEXT NULL,
    region_type            TEXT NULL,
    urbanization_level     TEXT NULL,
    growth_rate_percent    REAL NULL,
    projected_population_2030 INTEGER NULL,
    income_inequality_index REAL NULL
);

INSERT INTO district_demographic_indicators VALUES
('DI001',101,'2023',150000,55000,12.5,4.2,85.0,32.0,'White:60,Black:20,Asian:10,Hispanic:10',0.75,68.0,25.0,1200.0,38.5,8.0,400,2.5,78.0,11500,'2023-07-01','Stable growth','AdminDem','Director','Census','Verified','Metropolitan','High','1.2',160000,0.45);

INSERT INTO district_demographic_indicators VALUES
('DI002',102,'2023',95000,62000,9.0,3.8,90.0,40.0,'White:55,Black:15,Asian:15,Hispanic:15',0.68,72.0,20.0,800.0,36.0,7.5,250,1.8,82.0,10200,'2023-07-01','Moderate growth','AdminDem','Director','Census','Verified','Urban','Medium','0.9',105000,0.38);

INSERT INTO district_demographic_indicators VALUES
('DI003',103,'2023',210000,48000,15.0,5.0,78.0,28.0,'White:70,Black:10,Asian:5,Hispanic:15',0.80,60.0,30.0,1500.0,40.0,9.0,600,3.0,70.0,9500,'2023-07-01','Declining growth','AdminDem','Director','Census','Verified','Rural','Low','-0.5',190000,0.52);