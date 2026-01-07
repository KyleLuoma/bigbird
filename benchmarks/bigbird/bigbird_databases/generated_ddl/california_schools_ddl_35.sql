-- Teacher professional development training sessions
CREATE TABLE teacher_training_sessions (
    session_id TEXT PRIMARY KEY,
    teacher_id TEXT,
    session_date DATE,
    session_type TEXT,
    duration_hours REAL,
    location TEXT,
    topic TEXT,
    trainer_name TEXT,
    certification_obtained TEXT,
    participants_count INTEGER,
    feedback_score REAL,
    online_flag INTEGER,
    materials_provided TEXT,
    session_status TEXT,
    evaluation_submitted INTEGER,
    followup_date DATE,
    budget_amount REAL,
    district_code INTEGER,
    school_code TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    session_version INTEGER,
    attendance_rate REAL,
    session_topic_category TEXT
);

INSERT INTO teacher_training_sessions (session_id,teacher_id,session_date,session_type,duration_hours,location,topic,trainer_name,certification_obtained,participants_count,feedback_score,online_flag,materials_provided,session_status,evaluation_submitted,followup_date,budget_amount,district_code,school_code,notes,created_at,updated_at,session_version,attendance_rate,session_topic_category) VALUES
('TS001','T001','2025-03-12','Workshop',4.0,'MainCampus','DifferentiatedInstruction','DrSmith','PD_Cert','15',4.5,0,'Handouts','Completed',1,'2025-04-01',1200.00,101,'SC001','Introductory session','2025-03-13','2025-03-15',1,0.93,'Instructional'),
('TS002','T014','2025-04-22','Webinar',2.5,'Online','DataDrivenTeaching','MsLee','PD_Cert','20',4.2,1,'DigitalSlides','Completed',1,'2025-05-10',800.00,102,'SC008','Recorded for later','2025-04-23','2025-04-24',1,0.88,'DataAnalytics'),
('TS003','T023','2025-05-05','Conference','8.0','RegionalCenter','STEMIntegration','ProfBrown','PD_Cert','30',4.8,0,'ConferenceKit','Completed',1,'2025-06-01',2500.00,103,'SC015','Keynote speaker present','2025-05-06','2025-05-07',1,0.97,'STEM');

-- Facility energy audit logs
CREATE TABLE facility_energy_audit_logs (
    audit_id TEXT PRIMARY KEY,
    facility_id TEXT,
    audit_date DATE,
    auditor_name TEXT,
    total_energy_consumption REAL,
    hvac_efficiency REAL,
    lighting_efficiency REAL,
    water_usage REAL,
    solar_generation REAL,
    renewable_percent REAL,
    recommendations_count INTEGER,
    followup_required INTEGER,
    followup_deadline DATE,
    audit_status TEXT,
    comments TEXT,
    created_at DATE,
    updated_at DATE,
    district_code INTEGER,
    school_code TEXT,
    building_type TEXT,
    floor_area_sqft REAL,
    energy_star_rating INTEGER,
    carbon_emission_tons REAL,
    peak_demand_kw REAL,
    meter_reading_start REAL,
    meter_reading_end REAL,
    audit_version INTEGER,
    compliance_flag INTEGER,
    audit_type TEXT,
    budget_estimate REAL
);

INSERT INTO facility_energy_audit_logs (audit_id,facility_id,audit_date,auditor_name,total_energy_consumption,hvac_efficiency,lighting_efficiency,water_usage,solar_generation,renewable_percent,recommendations_count,followup_required,followup_deadline,audit_status,comments,created_at,updated_at,district_code,school_code,building_type,floor_area_sqft,energy_star_rating,carbon_emission_tons,peak_demand_kw,meter_reading_start,meter_reading_end,audit_version,compliance_flag,audit_type,budget_estimate) VALUES
('AE001','F001','2025-02-10','EngAuditCo',35000.5,0.78,0.85,1200.0,500.0,14.3,5,1,'2025-03-15','Completed','Minor upgrades needed','2025-02-11','2025-02-12',101,'SC001','Academic','85000',5,22.5,300.0,15000.0,20000.0,1,1,'Comprehensive',4500.00),
('AE002','F045','2025-03-18','EcoInspect Ltd',21000.0,0.82,0.90,800.0,300.0,12.0,3,0,NULL,'Completed','All systems optimal','2025-03-19','2025-03-20',102,'SC007','Gym','45000',6,13.8,200.0,9000.0,12000.0,1,1,'Targeted',2500.00),
('AE003','F078','2025-04-05','GreenMetrics',27500.2,0.75,0.88,950.0,0.0,0.0,7,1,'2025-05-01','Pending','Consider LED retrofit','2025-04-06','2025-04-07',103,'SC014','Administrative','62000',4,19.0,260.0,13000.0,15500.0,1,0,'Comprehensive',3800.00);

-- Community partner projects
CREATE TABLE community_partner_projects (
    project_id TEXT PRIMARY KEY,
    partner_id TEXT,
    partner_name TEXT,
    project_name TEXT,
    start_date DATE,
    end_date DATE,
    funding_source TEXT,
    total_funding REAL,
    district_code INTEGER,
    school_code TEXT,
    project_type TEXT,
    target_population TEXT,
    activities_count INTEGER,
    volunteers_needed INTEGER,
    volunteers_assigned INTEGER,
    status TEXT,
    impact_score REAL,
    reporting_frequency TEXT,
    last_report_date DATE,
    contact_person TEXT,
    contact_email TEXT,
    created_at DATE,
    updated_at DATE,
    description TEXT,
    evaluation_method TEXT,
    sustainability_plan TEXT,
    community_benefit TEXT,
    notes TEXT,
    project_phase TEXT,
    risk_level TEXT,
    compliance_status TEXT
);

INSERT INTO community_partner_projects (project_id,partner_id,partner_name,project_name,start_date,end_date,funding_source,total_funding,district_code,school_code,project_type,target_population,activities_count,volunteers_needed,volunteers_assigned,status,impact_score,reporting_frequency,last_report_date,contact_person,contact_email,created_at,updated_at,description,evaluation_method,sustainability_plan,community_benefit,notes,project_phase,risk_level,compliance_status) VALUES
('CP001','P001','Local Library','ReadingBoost','2025-01-15','2025-12-31','Grant',15000.00,101,'SC002','Literacy','Elementary','12','30','28','Active',4.6,'Quarterly','2025-06-01','JaneDoe','jane.doe@example.com','2025-01-10','2025-06-02','After-school reading program','PrePostSurvey','PartnerContinues','Improved literacy rates','All materials delivered','Implementation','Low','Compliant'),
('CP002','P023','Health Clinic','WellnessDays','2025-03-01','2025-09-30','CountyFunds',8000.00,102,'SC009','Health','MiddleSchool','8','20','18','Planned',0.0,'Monthly','2025-02-28','JohnSmith','john.smith@example.com','2025-02-20','2025-02-25','Monthly health screening events','AttendanceMetrics','LocalSponsor','Reduced absenteeism','Pending equipment','Planning','Medium','Pending'),
('CP003','P045','Tech Corp','STEMMentors','2025-04-10','2026-04-09','Corporate',20000.00,103,'SC016','STEM','HighSchool','15','40','35','Active',4.9,'Biannual','2025-07-15','EmilyBrown','emily.brown@example.com','2025-04-01','2025-07-16','Student mentorship in robotics','ProjectOutcomes','CompanySupport','Increased STEM enrollment','Positive feedback','Ongoing','Execution','Low','Compliant');

-- Student health screenings
CREATE TABLE student_health_screenings (
    screening_id TEXT PRIMARY KEY,
    student_id TEXT,
    screening_date DATE,
    screening_type TEXT,
    height_cm REAL,
    weight_kg REAL,
    bmi REAL,
    vision_left REAL,
    vision_right REAL,
    hearing_left REAL,
    hearing_right REAL,
    blood_pressure_systolic INTEGER,
    blood_pressure_diastolic INTEGER,
    immunization_status TEXT,
    screening_result TEXT,
    notes TEXT,
    nurse_id TEXT,
    nurse_name TEXT,
    school_code TEXT,
    district_code INTEGER,
    followup_required INTEGER,
    followup_date DATE,
    created_at DATE,
    updated_at DATE,
    screening_location TEXT,
    parental_consent INTEGER,
    referral_source TEXT,
    health_plan_updated INTEGER,
    screening_version INTEGER,
    data_quality_flag INTEGER,
    confidentiality_level TEXT
);

INSERT INTO student_health_screenings (screening_id,student_id,screening_date,screening_type,height_cm,weight_kg,bmi,vision_left,vision_right,hearing_left,hearing_right,blood_pressure_systolic,blood_pressure_diastolic,immunization_status,screening_result,notes,nurse_id,nurse_name,school_code,district_code,followup_required,followup_date,created_at,updated_at,screening_location,parental_consent,referral_source,health_plan_updated,screening_version,data_quality_flag,confidentiality_level) VALUES
('HS001','S1001','2025-02-20','Annual','150.0','45.0','20.0','1.0','1.0','30','30','110','70','UpToDate','Normal','No concerns','N001','AnnaLee','SC001',101,0,NULL,'2025-02-21','2025-02-22','Gym','1','NurseReferral','1','1','0','High'),
('HS002','S1054','2025-03-15','Vision','160.0','55.0','21.5','0.8','0.8','30','30','115','75','UpToDate','NeedsGlasses','Prescribed glasses','N003','MarkKim','SC009',102,1,'2025-04-10','2025-03-16','NurseOffice','1','TeacherReferral','1','1','0','High'),
('HS003','S1122','2025-04-10','Dental','155.0','50.0','20.8','1.0','1.0','30','30','108','68','UpToDate','CavityFound','Referred to dentist','N002','LindaZhou','SC014',103,1,'2025-05-01','2025-04-11','DentalClinic','1','ParentInitiated','1','1','0','High');

-- District transportation fleet maintenance
CREATE TABLE district_transportation_fleet_maintenance (
    maintenance_id TEXT PRIMARY KEY,
    vehicle_id TEXT,
    vehicle_type TEXT,
    service_date DATE,
    mileage_at_service INTEGER,
    service_type TEXT,
    service_provider TEXT,
    cost REAL,
    parts_replaced TEXT,
    labor_hours REAL,
    technician_id TEXT,
    technician_name TEXT,
    next_service_mileage INTEGER,
    service_notes TEXT,
    district_code INTEGER,
    school_code TEXT,
    fuel_type TEXT,
    emission_status TEXT,
    warranty_flag INTEGER,
    created_at DATE,
    updated_at DATE,
    inspection_passed INTEGER,
    registration_expiry DATE,
    insurance_expiry DATE,
    odometer_reading INTEGER,
    depot_location TEXT,
    maintenance_status TEXT,
    downtime_hours REAL,
    compliance_check INTEGER,
    maintenance_category TEXT,
    budget_line_item TEXT
);

INSERT INTO district_transportation_fleet_maintenance (maintenance_id,vehicle_id,vehicle_type,service_date,mileage_at_service,service_type,service_provider,cost,parts_replaced,labor_hours,technician_id,technician_name,next_service_mileage,service_notes,district_code,school_code,fuel_type,emission_status,warranty_flag,created_at,updated_at,inspection_passed,registration_expiry,insurance_expiry,odometer_reading,depot_location,maintenance_status,downtime_hours,compliance_check,maintenance_category,budget_line_item) VALUES
('MT001','V001','SchoolBus','2025-02-05',45200,'OilChange','AutoCare','250.00','OilFilter','1.5','T001','SamGreen',50000,'Routine oil change',101,'SC001','Diesel','Compliant',1,'2025-02-06','2025-02-07',1,'2025-12-31','2025-11-30',45200,'DepotA','Completed',0.5,1,'Preventive','TransportMaintenance'),
('MT002','V017','Van','2025-03-12',31200,'BrakeService','BrakeMasters','800.00','BrakePads,Rotors','3.0','T003','LaraWhite',35000,'Replaced front brakes',102,'SC008','Gasoline','Compliant',0,'2025-03-13','2025-03-14',1,'2026-01-15','2025-12-20',31200,'DepotB','Completed',2.0,1,'Corrective','TransportMaintenance'),
('MT003','V023','SchoolBus','2025-04-20',62000,'TireReplacement','TireDepot','1200.00','TiresAll','2.5','T005','MikeBrown',70000,'Replaced all four tires',103,'SC015','Diesel','Compliant',1,'2025-04-21','2025-04-22',1,'2025-11-30','2025-10-15',62000,'DepotC','Completed',1.0,1,'Preventive','TransportMaintenance');

-- School art exhibit inventory
CREATE TABLE school_art_exhibit_inventory (
    exhibit_id TEXT PRIMARY KEY,
    school_code TEXT,
    district_code INTEGER,
    exhibit_name TEXT,
    start_date DATE,
    end_date DATE,
    curator_name TEXT,
    total_items INTEGER,
    medium TEXT,
    artist_name TEXT,
    acquisition_method TEXT,
    value_estimated REAL,
    insurance_policy TEXT,
    display_location TEXT,
    lighting_requirements TEXT,
    climate_control_needed INTEGER,
    security_level TEXT,
    condition_report TEXT,
    loan_status TEXT,
    public_access_flag INTEGER,
    visitor_estimate INTEGER,
    sponsor_name TEXT,
    sponsor_type TEXT,
    created_at DATE,
    updated_at DATE,
    exhibit_theme TEXT,
    installation_company TEXT,
    maintenance_schedule TEXT,
    decommission_date DATE,
    notes TEXT,
    exhibit_status TEXT,
    conservation_needs TEXT
);

INSERT INTO school_art_exhibit_inventory (exhibit_id,school_code,district_code,exhibit_name,start_date,end_date,curator_name,total_items,medium,artist_name,acquisition_method,value_estimated,insurance_policy,display_location,lighting_requirements,climate_control_needed,security_level,condition_report,loan_status,public_access_flag,visitor_estimate,sponsor_name,sponsor_type,created_at,updated_at,exhibit_theme,installation_company,maintenance_schedule,decommission_date,notes,exhibit_status,conservation_needs) VALUES
('EX001','SC004',101,'SpringColors','2025-04-01','2025-05-15','EmilyStone','30','OilPainting','Various','Donation',15000.00,'PolicyA','MainHall','TrackLighting',0,'Medium','Good','Owned',1,500,'LocalArtsCouncil','Grant','2025-03-20','2025-04-02','Nature','ArtInstallersInc','Monthly','2025-05-16','All pieces displayed','Active','None'),
('EX002','SC011',102,'TechFuture','2025-06-10','2025-07-20','RajPatel','20','DigitalMedia','Various','Purchase',25000.00,'PolicyB','TechLab','LED',0,'High','Excellent','Loaned',1,800,'TechCorp','Sponsorship','2025-05-30','2025-06-12','Innovation','DigitalSetupLtd','Quarterly','2025-07-21','Interactive displays','Active','SoftwareUpdates'),
('EX003','SC019',103,'HistoricalVisions','2025-09-05','2025-10-30','LindaGomez','15','Sculpture','Various','Commission',40000.00,'PolicyC','SculptureGarden','Natural',1,'High','Fair','Owned',1,300,'HeritageFoundation','Donation','2025-08-20','2025-09-06','History','SculptureWorks','Biannual','2025-10-31','Needs periodic cleaning','Planned','ConservationPlan');

-- Alumni career placement statistics
CREATE TABLE alumni_career_placement_stats (
    alumni_id TEXT PRIMARY KEY,
    graduate_year INTEGER,
    program_name TEXT,
    degree_type TEXT,
    current_employer TEXT,
    job_title TEXT,
    employment_status TEXT,
    salary_usd REAL,
    industry TEXT,
    location_city TEXT,
    location_state TEXT,
    work_start_date DATE,
    job_duration_months INTEGER,
    promotion_count INTEGER,
    professional_certifications TEXT,
    linkedin_url TEXT,
    mentor_assigned INTEGER,
    mentor_name TEXT,
    alumni_email TEXT,
    contact_number TEXT,
    survey_participation INTEGER,
    survey_date DATE,
    created_at DATE,
    updated_at DATE,
    alumni_status TEXT,
    education_level TEXT,
    prior_experience_years INTEGER,
    relocation_flag INTEGER,
    remote_work_flag INTEGER,
    career_change_flag INTEGER,
    notes TEXT
);

INSERT INTO alumni_career_placement_stats (alumni_id,graduate_year,program_name,degree_type,current_employer,job_title,employment_status,salary_usd,industry,location_city,location_state,work_start_date,job_duration_months,promotion_count,professional_certifications,linkedin_url,mentor_assigned,mentor_name,alumni_email,contact_number,survey_participation,survey_date,created_at,updated_at,alumni_status,education_level,prior_experience_years,relocation_flag,remote_work_flag,career_change_flag,notes) VALUES
('ALU001',2022,'ComputerScience','BSc','TechSolutions','SoftwareEngineer','FullTime',95000,'Technology','Austin','TX','2022-08-15',24,1,'AWS Certified','https://linkedin.com/in/alumni001',1,'DrJones','alumni001@example.com','5551234567',1,'2025-01-10','2025-01-11','2025-01-12','Active','Bachelors',2,0,1,0,'Rapid progression in role'),
('ALU002',2020,'BusinessAdministration','MBA','FinServe','FinancialAnalyst','FullTime',72000,'Finance','Chicago','IL','2020-09-01',38,0,'CFA','https://linkedin.com/in/alumni002',0,NULL,'alumni002@example.com','5559876543',1,'2025-02-15','2025-02-16','2025-02-17','Active','Masters',3,1,0,0,'Relocated after graduation'),
('ALU003',2018,'Education','MEd','GreenSchool','CurriculumCoordinator','FullTime',68000,'Education','Seattle','WA','2019-01-10',70,2,'Reading Specialist','https://linkedin.com/in/alumni003',1,'MsTaylor','alumni003@example.com','5553217890',1,'2025-03-20','2025-03-21','2025-03-22','Active','Masters',1,0,0,0,'Promoted twice within 5 years');

-- School Wi‑Fi access point inventory
CREATE TABLE school_wifi_access_point_inventory (
    ap_id TEXT PRIMARY KEY,
    school_code TEXT,
    district_code INTEGER,
    ap_location TEXT,
    mac_address TEXT,
    ip_address TEXT,
    model TEXT,
    manufacturer TEXT,
    firmware_version TEXT,
    installation_date DATE,
    last_maintenance DATE,
    status TEXT,
    throughput_mbps REAL,
    channel INTEGER,
    frequency_band TEXT,
    power_level_dbm REAL,
    ssid TEXT,
    security_mode TEXT,
    client_capacity INTEGER,
    current_clients INTEGER,
    uptime_hours REAL,
    temperature_celsius REAL,
    voltage_volts REAL,
    poe_enabled INTEGER,
    antenna_type TEXT,
    antenna_gain_dbi REAL,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    warranty_expiration DATE,
    maintenance_contract TEXT,
    compliance_status TEXT
);

INSERT INTO school_wifi_access_point_inventory (ap_id,school_code,district_code,ap_location,mac_address,ip_address,model,manufacturer,firmware_version,installation_date,last_maintenance,status,throughput_mbps,channel,frequency_band,power_level_dbm,ssid,security_mode,client_capacity,current_clients,uptime_hours,temperature_celsius,voltage_volts,poe_enabled,antenna_type,antenna_gain_dbi,created_at,updated_at,notes,warranty_expiration,maintenance_contract,compliance_status) VALUES
('AP001','SC005',101,'Library','AA:BB:CC:DD:EE:01','192.168.1.10','UAP-AC-PRO','Ubiquiti','5.13.27','2025-01-15','2025-06-01','Active',800.0,36,'5GHz',20.0,'SchoolWiFi','WPA2',100,45,8760.0,35.0,48.0,1,'Omni','5.0','2025-01-16','2025-06-02','No issues','2027-01-15','UbiquitiSupport','Compliant'),
('AP002','SC012',102,'Gym','AA:BB:CC:DD:EE:02','192.168.1.11','Aruba802.11ac','Aruba','8.5.1','2025-02-10','2025-07-10','Active',600.0,11,'2.4GHz',18.0,'GymNet','WPA2-Enterprise',80,30,4320.0,38.0,48.0,1,'Directional','8.0','2025-02-11','2025-07-11','Slightly dusty','2028-02-10','ArubaCare','Compliant'),
('AP003','SC020',103,'AdminOffice','AA:BB:CC:DD:EE:03','192.168.1.12','Catalyst 9115','Cisco','16.9.3','2025-03-05','2025-08-20','Active',500.0,1,'5GHz',22.0,'AdminWiFi','WPA3',60,20,2160.0,30.0,48.0,0,'Omni','3.0','2025-03-06','2025-08-21','Pending firmware update','2029-03-05','CiscoSupport','Compliant');

-- Environmental sensor network
CREATE TABLE environmental_sensor_network (
    sensor_id TEXT PRIMARY KEY,
    sensor_type TEXT,
    location TEXT,
    installation_date DATE,
    manufacturer TEXT,
    model TEXT,
    firmware_version TEXT,
    latitude REAL,
    longitude REAL,
    altitude_m REAL,
    measurement_unit TEXT,
    calibration_date DATE,
    last_maintenance DATE,
    battery_level_percent REAL,
    signal_strength_dbm REAL,
    data_transmission_interval_sec INTEGER,
    status TEXT,
    current_value REAL,
    threshold_min REAL,
    threshold_max REAL,
    alert_triggered INTEGER,
    alert_timestamp DATE,
    maintenance_required INTEGER,
    replacement_due_date DATE,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    network_id TEXT,
    data_quality_flag INTEGER,
    compliance_certified INTEGER,
    integration_platform TEXT
);

INSERT INTO environmental_sensor_network (sensor_id,sensor_type,location,installation_date,manufacturer,model,firmware_version,latitude,longitude,altitude_m,measurement_unit,calibration_date,last_maintenance,battery_level_percent,signal_strength_dbm,data_transmission_interval_sec,status,current_value,threshold_min,threshold_max,alert_triggered,alert_timestamp,maintenance_required,replacement_due_date,created_at,updated_at,notes,network_id,data_quality_flag,compliance_certified,integration_platform) VALUES
('SN001','AirQuality','MainHall','2025-01-20','EnviroTech','AQ-100','1.02',34.0522,-118.2437,89.0,'µg/m3','2025-06-01','2025-06-15',95.0,-70,300,'Active',12.5,0,25,0,NULL,0,'2027-01-20','2025-01-21','2025-01-22','No alerts','NET01',1,1,'IoTPlatformA'),
('SN002','Temperature','ScienceLab','2025-02-10','SensorCo','TempPro','3.5',40.7128,-74.0060,10.0,'°C','2025-07-01','2025-07-10',88.0,-65,600,'Active',22.0,18,26,0,NULL,0,'2028-02-10','2025-02-11','2025-02-12','Stable','NET01',1,1,'IoTPlatformA'),
('SN003','Humidity','Gym','2025-03-05','ClimateSense','HumidX','2.1',41.8781,-87.6298,180.0,'%','2025-08-15','2025-08-20',76.0,-80,900,'Active',45.0,30,60,1','2025-09-01',1,'2029-03-05','2025-03-06','2025-03-07','Alert sent','NET01',1,1,'IoTPlatformA');

-- School budget forecast
CREATE TABLE school_budget_forecast (
    forecast_id TEXT PRIMARY KEY,
    school_code TEXT,
    district_code INTEGER,
    fiscal_year TEXT,
    total_revenue_estimate REAL,
    total_expenditure_estimate REAL,
    net_position_estimate REAL,
    revenue_federal REAL,
    revenue_state REAL,
    revenue_local REAL,
    revenue_other REAL,
    expenditure_personnel REAL,
    expenditure_operations REAL,
    expenditure_capital REAL,
    expenditure_technology REAL,
    expenditure_maintenance REAL,
    surplus_deficit_flag INTEGER,
    variance_percent REAL,
    approval_status TEXT,
    approved_by TEXT,
    approval_date DATE,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    scenario_description TEXT,
    sensitivity_analysis TEXT,
    risk_factor TEXT,
    contingency_fund_allocation REAL,
    inflation_rate_percent REAL,
    enrollment_projection INTEGER,
    per_student_expenditure REAL,
    budget_version INTEGER,
    compliance_review_flag INTEGER,
    external_audit_flag INTEGER
);

INSERT INTO school_budget_forecast (forecast_id,school_code,district_code,fiscal_year,total_revenue_estimate,total_expenditure_estimate,net_position_estimate,revenue_federal,revenue_state,revenue_local,revenue_other,expenditure_personnel,expenditure_operations,expenditure_capital,expenditure_technology,expenditure_maintenance,surplus_deficit_flag,variance_percent,approval_status,approved_by,approval_date,created_at,updated_at,notes,scenario_description,sensitivity_analysis,risk_factor,contingency_fund_allocation,inflation_rate_percent,enrollment_projection,per_student_expenditure,budget_version,compliance_review_flag,external_audit_flag) VALUES
('BF001','SC006',101,'2025-2026',1500000.00,1400000.00,100000.00,300000.00,500000.00,600000.00,100000.00,800000.00,400000.00,50000.00,200000.00,50000.00,1,0.07,'Approved','Superintendent','2025-01-15','2025-01-10','2025-01-12','Base scenario','Low sensitivity','Medium','50000.00',2.5,250,6000.00,1,1,0),
('BF002','SC013',102,'2025-2026',1200000.00,1250000.00,-50000.00,250000.00,400000.00,500000.00,50000.00,700000.00,350000.00,40000.00,150000.00,45000.00,0,-0.04,'Pending','FinanceDirector','2025-02-01','2025-01-20','2025-01-22','Optimistic enrollment increase','High sensitivity','High','30000.00',3.0,200,5600.00,2,0,1),
('BF003','SC021',103,'2025-2026',1800000.00,1700000.00,100000.00,350000.00,600000.00,700000.00,150000.00,900000.00,450000.00,60000.00,220000.00,60000.00,1,0.06,'Approved','ChiefFinancialOfficer','2025-03-10','2025-02-28','2025-03-01','Conservative spending','Medium sensitivity','Low','75000.00',2.0,300,6000.00,3,1,0);