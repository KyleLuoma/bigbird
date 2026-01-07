-- Community health survey data
CREATE TABLE community_health_survey
(
    survey_id               TEXT PRIMARY KEY,
    survey_date             TEXT,
    region                  TEXT,
    population_estimate     INTEGER,
    respondent_count        INTEGER,
    avg_age                 REAL,
    gender_ratio            TEXT,
    income_bracket          TEXT,
    education_level         TEXT,
    chronic_conditions      TEXT,
    vaccination_rate        REAL,
    exercise_frequency      REAL,
    diet_score              REAL,
    smoking_prevalence      REAL,
    alcohol_use             REAL,
    mental_health_score    REAL,
    healthcare_access_score REAL,
    satisfaction_score      REAL,
    notes                   TEXT,
    created_by              TEXT,
    last_updated            TEXT
);

INSERT INTO community_health_survey (survey_id,survey_date,region,population_estimate,respondent_count,avg_age,gender_ratio,income_bracket,education_level,chronic_conditions,vaccination_rate,exercise_frequency,diet_score,smoking_prevalence,alcohol_use,mental_health_score,healthcare_access_score,satisfaction_score,notes,created_by,last_updated) VALUES 
('CHS001','2023-11-15','NorthValley',12000,350,38.5,'M50F50','Mid','Bachelors','None',92.5,3.2,78.0,12.0,8.5,85.0,90.0,88.0,'Initial survey','admin','2023-11-16'),
('CHS002','2024-02-10','EastRidge',8500,210,34.2,'M48F52','Low','HighSchool','Diabetes',87.0,2.8,72.5,18.0,10.0,78.5,80.0,75.0,'Follow up','researcher','2024-02-11'),
('CHS003','2024-05-05','SouthPlains',15000,500,41.0,'M45F55','High','Masters','Hypertension',95.0,3.8,82.0,9.0,7.0,90.5,93.0,92.0,'Quarterly update','analyst','2024-05-06');

-- Facility energy consumption records
CREATE TABLE facility_energy_consumption
(
    record_id            TEXT PRIMARY KEY,
    facility_id          TEXT,
    reporting_month      TEXT,
    electricity_kwh      REAL,
    gas_therms           REAL,
    water_gallons        REAL,
    renewable_percent    REAL,
    peak_demand_kw       REAL,
    avg_daily_usage_kwh  REAL,
    hvac_energy_kwh      REAL,
    lighting_energy_kwh  REAL,
    equipment_energy_kwh REAL,
    carbon_emission_tons REAL,
    meter_reading_start  REAL,
    meter_reading_end    REAL,
    verification_status  TEXT,
    submitted_by         TEXT,
    approval_date        TEXT,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT
);

INSERT INTO facility_energy_consumption (record_id,facility_id,reporting_month,electricity_kwh,gas_therms,water_gallons,renewable_percent,peak_demand_kw,avg_daily_usage_kwh,hvac_energy_kwh,lighting_energy_kwh,equipment_energy_kwh,carbon_emission_tons,meter_reading_start,meter_reading_end,verification_status,submitted_by,approval_date,notes,created_at,updated_at) VALUES 
('EC001','FAC100','2023-12','54200.5','1250.2','300000','15.0','420.0','1770.0','21000.0','8000.0','2520.0','34.5','1500000','1554200','Verified','energy_manager','2024-01-05','Monthly report','2024-01-01','2024-01-05'),
('EC002','FAC200','2024-01','48760.3','1100.0','280000','20.0','380.0','1600.0','19000.0','7200.0','2200.0','31.0','1600000','1648760','Pending','analyst','2024-02-02','Pending verification','2024-02-01','2024-02-02'),
('EC003','FAC300','2024-02','50230.8','1185.5','295000','18.5','395.0','1650.0','20000.0','7500.0','2350.0','32.8','1700000','1750230','Verified','energy_lead','2024-03-03','Quarterly update','2024-03-01','2024-03-03');

-- Digital content license agreement details
CREATE TABLE digital_content_license_agreement
(
    agreement_id          TEXT PRIMARY KEY,
    content_id            TEXT,
    licensor_name         TEXT,
    licensee_name         TEXT,
    license_type          TEXT,
    start_date            TEXT,
    end_date              TEXT,
    territory             TEXT,
    exclusive_flag        TEXT,
    royalty_rate_percent  REAL,
    flat_fee_amount       REAL,
    payment_schedule      TEXT,
    renewal_option        TEXT,
    termination_clause    TEXT,
    restrictions          TEXT,
    approval_status       TEXT,
    approved_by           TEXT,
    approval_date         TEXT,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT
);

INSERT INTO digital_content_license_agreement (agreement_id,content_id,licensor_name,licensee_name,license_type,start_date,end_date,territory,exclusive_flag,royalty_rate_percent,flat_fee_amount,payment_schedule,renewal_option,termination_clause,restrictions,approval_status,approved_by,approval_date,notes,created_at,updated_at) VALUES 
('LA001','CNT1001','MediaCorp','EduPlatform','Streaming','2023-06-01','2025-05-31','Global','Yes',12.5,25000,'Quarterly','AutoRenew','30DaysNotice','NoSubLicensing','Approved','legal_head','2023-05-20','Initial agreement','2023-05-15','2023-05-20'),
('LA002','CNT2002','TechBooks','OnlineLibrary','Download','2024-01-15','2026-01-14','NorthAmerica','No',8.0,15000,'Annual','Negotiable','60DaysNotice','SingleUserOnly','Pending','legal_assistant','2023-12-30','Awaiting signatures','2023-12-25','2023-12-30'),
('LA003','CNT3003','ArtStudio','DesignHub','Print','2022-09-01','2024-08-31','Europe','Yes',0.0,50000,'Monthly','OptionToExtend','Immediate','NoModification','Approved','legal_director','2022-08-20','Extended for 2 years','2022-08-15','2022-08-20');

-- Alumni mentor match records
CREATE TABLE alumni_mentor_match
(
    match_id               TEXT PRIMARY KEY,
    alumni_id              TEXT,
    mentee_id              TEXT,
    match_date             TEXT,
    mentorship_area        TEXT,
    duration_months        INTEGER,
    meeting_frequency      TEXT,
    communication_mode     TEXT,
    goals_set              TEXT,
    progress_notes         TEXT,
    status                 TEXT,
    evaluator_id           TEXT,
    evaluation_date        TEXT,
    rating_out_of_5        INTEGER,
    feedback_summary       TEXT,
    created_by             TEXT,
    created_at             TEXT,
    updated_by             TEXT,
    updated_at             TEXT,
    archived_flag          TEXT
);

INSERT INTO alumni_mentor_match (match_id,alumni_id,mentee_id,match_date,mentorship_area,duration_months,meeting_frequency,communication_mode,goals_set,progress_notes,status,evaluator_id,evaluation_date,rating_out_of_5,feedback_summary,created_by,created_at,updated_by,updated_at,archived_flag) VALUES 
('MM001','ALU100','STU200','2023-09-01','CareerDevelopment',12,'Monthly','VideoCall','SecureInternship','OnTrack','Active','EV001','2024-01-15',4,'PositiveProgress','admin','2023-09-01','admin','2024-01-15','No'),
('MM002','ALU101','STU201','2024-02-10','ResearchMethods',6,'BiWeekly','Email','PublishPaper','Initial','Active','EV002','2024-07-01',5,'Excellent','coordinator','2024-02-10','coordinator','2024-07-01','No'),
('MM003','ALU102','STU202','2023-05-20','Entrepreneurship',9,'Quarterly','Phone','LaunchStartup','Delayed','Closed','EV003','2024-03-30',3,'MixedResults','admin','2023-05-20','admin','2024-03-30','Yes');

-- Sustainability initiative score tracking
CREATE TABLE sustainability_initiative_score
(
    score_id                TEXT PRIMARY KEY,
    initiative_id           TEXT,
    reporting_period        TEXT,
    carbon_reduction_tons   REAL,
    energy_savings_kwh      REAL,
    water_savings_gallons   REAL,
    waste_diverted_percent REAL,
    biodiversity_index      REAL,
    community_engagements   INTEGER,
    education_sessions      INTEGER,
    certifications_obtained  INTEGER,
    overall_score           REAL,
    rank_within_category    INTEGER,
    notes                   TEXT,
    created_by              TEXT,
    created_at              TEXT,
    updated_by              TEXT,
    updated_at              TEXT,
    approval_status         TEXT,
    reviewer_id             TEXT
);

INSERT INTO sustainability_initiative_score (score_id,initiative_id,reporting_period,carbon_reduction_tons,energy_savings_kwh,water_savings_gallons,waste_diverted_percent,biodiversity_index,community_engagements,education_sessions,certifications_obtained,overall_score,rank_within_category,notes,created_by,created_at,updated_by,updated_at,approval_status,reviewer_id) VALUES 
('SI001','INIT100','2023Q4',120.5,35000,500000,85.0,4.2,30,12,3,92.5,1,'Excellent performance','sustainability_officer','2024-01-05','sustainability_officer','2024-01-05','Approved','REV001'),
('SI002','INIT101','2024Q1',95.0,28000,420000,78.0,3.8,25,10,2,88.0,2,'Good progress','analyst','2024-04-10','analyst','2024-04-10','Pending','REV002'),
('SI003','INIT102','2024Q1',60.0,15000,250000,65.0,3.1,18,8,1,75.5,5,'Needs improvement','assistant','2024-04-12','assistant','2024-04-12','Approved','REV003');

-- Fleet vehicle maintenance log
CREATE TABLE fleet_vehicle_maintenance_log
(
    log_id                 TEXT PRIMARY KEY,
    vehicle_id             TEXT,
    maintenance_date       TEXT,
    odometer_reading      INTEGER,
    service_type           TEXT,
    service_center         TEXT,
    cost_amount            REAL,
    parts_replaced         TEXT,
    technician_name        TEXT,
    next_service_due_km    INTEGER,
    warranty_status        TEXT,
    notes                  TEXT,
    recorded_by            TEXT,
    recorded_at            TEXT,
    approved_by            TEXT,
    approved_at            TEXT,
    maintenance_status     TEXT,
    fuel_type              TEXT,
    emission_rating        TEXT,
    insurance_claim_number TEXT,
    compliance_flag        TEXT
);

INSERT INTO fleet_vehicle_maintenance_log (log_id,vehicle_id,maintenance_date,odometer_reading,service_type,service_center,cost_amount,parts_replaced,technician_name,next_service_due_km,warranty_status,notes,recorded_by,recorded_at,approved_by,approved_at,maintenance_status,fuel_type,emission_rating,insurance_claim_number,compliance_flag) VALUES 
('VM001','VEH001','2024-03-15',45200,'OilChange','AutoCareCenter',120.00,'OilFilter','JohnDoe',50000,'InWarranty','Routine oil change','fleet_manager','2024-03-15','fleet_manager','2024-03-15','Completed','Diesel','Euro5','ICN001','Yes'),
('VM002','VEH002','2024-02-28',37800,'BrakeInspection','BrakeMasters',340.00,'BrakePads,Rotors','JaneSmith',42000,'OutOfWarranty','Replaced front pads','fleet_coordinator','2024-02-28','fleet_coordinator','2024-02-28','Completed','Petrol','Euro4','ICN002','Yes'),
('VM003','VEH003','2024-01-20','31000','TireRotation','TireHub',80.00,'None','MikeLee',35000,'InWarranty','Rotated all tires','fleet_technician','2024-01-20','fleet_technician','2024-01-20','Completed','Hybrid','Euro6','ICN003','Yes');

-- Library digital media asset catalog
CREATE TABLE library_digital_media_asset
(
    asset_id               TEXT PRIMARY KEY,
    title                  TEXT,
    creator_name           TEXT,
    media_type             TEXT,
    format                 TEXT,
    publication_year       INTEGER,
    isbn_issn              TEXT,
    language               TEXT,
    rights_status          TEXT,
    access_level           TEXT,
    file_size_mb           REAL,
    duration_minutes       REAL,
    resolution             TEXT,
    checksum               TEXT,
    storage_location       TEXT,
    acquisition_date       TEXT,
    license_expiration     TEXT,
    usage_restrictions     TEXT,
    metadata_quality_score REAL,
    notes                  TEXT,
    created_by             TEXT,
    created_at             TEXT,
    updated_by             TEXT,
    updated_at             TEXT
);

INSERT INTO library_digital_media_asset (asset_id,title,creator_name,media_type,format,publication_year,isbn_issn,language,rights_status,access_level,file_size_mb,duration_minutes,resolution,checksum,storage_location,acquisition_date,license_expiration,usage_restrictions,metadata_quality_score,notes,created_by,created_at,updated_by,updated_at) VALUES 
('DM001','QuantumPhysicsLecture','DrSmith','Video','MP4',2022,'ISBN1234567890','English','Licensed','Open',1500.5,90,'1920x1080','CHK123ABC','/media/quantum','2023-01-10','2025-01-10','None',98.5,'High demand lecture','cataloger','2023-01-11','cataloger','2023-01-11'),
('DM002','ShakespeareCompleteWorks','LitPress','Ebook','EPUB',2019,'ISBN0987654321','English','PublicDomain','Open',250.0,NULL,NULL,'CHK456DEF','/ebooks/shakespeare','2020-05-22',NULL,'None',95.0,'Classic literature','cataloger','2020-05-23','cataloger','2020-05-23'),
('DM003','WorldWarIIArchivalPhotos','NationalArchive','Image','TIFF',1975,'ISSN11223344','Multiple','Restricted','Restricted',75.3,NULL,'3000x2000','CHK789GHI','/images/wwii','1975-07-14',NULL,'ResearchOnly',88.0,'Historical photographs','archivist','1975-07-15','archivist','1975-07-15');

-- Grant payment schedule
CREATE TABLE grant_payment_schedule
(
    schedule_id           TEXT PRIMARY KEY,
    grant_id              TEXT,
    payment_number        INTEGER,
    due_date              TEXT,
    amount_due            REAL,
    amount_paid           REAL,
    payment_date          TEXT,
    payment_method        TEXT,
    payer_name            TEXT,
    receipt_number        TEXT,
    status                TEXT,
    notes                 TEXT,
    created_by            TEXT,
    created_at            TEXT,
    updated_by            TEXT,
    updated_at            TEXT,
    approval_required     TEXT,
    approved_by           TEXT,
    approval_date         TEXT,
    compliance_check     TEXT,
    audit_flag            TEXT
);

INSERT INTO grant_payment_schedule (schedule_id,grant_id,payment_number,due_date,amount_due,amount_paid,payment_date,payment_method,payer_name,receipt_number,status,notes,created_by,created_at,updated_by,updated_at,approval_required,approved_by,approval_date,compliance_check,audit_flag) VALUES 
('GPS001','GRNT001',1,'2024-03-01',25000.00,25000.00,'2024-03-02','BankTransfer','UniversityFinance','RCPT1001','Completed','First tranche','finance_officer','2024-02-28','finance_officer','2024-03-02','Yes','dean','2024-03-03','Passed','No'),
('GPS002','GRNT001',2,'2024-09-01',25000.00,0.00,NULL,'','UniversityFinance','RCPT1002','Pending','Second tranche','finance_officer','2024-04-01','finance_officer','2024-04-01','Yes','dean','2024-04-02','Pending','No'),
('GPS003','GRNT002',1,'2024-05-15',50000.00,50000.00,'2024-05-16','Check','ResearchOffice','RCPT2001','Completed','Initial grant payment','admin','2024-05-01','admin','2024-05-16','No','','','Completed','No');

-- Research data repository snapshot metadata
CREATE TABLE research_data_repository_snapshot
(
    snapshot_id           TEXT PRIMARY KEY,
    repository_id         TEXT,
    snapshot_date         TEXT,
    total_datasets        INTEGER,
    total_records         BIGINT,
    storage_used_tb       REAL,
    storage_quota_tb      REAL,
    access_level          TEXT,
    retention_policy      TEXT,
    checksum_algorithm    TEXT,
    integrity_status      TEXT,
    notes                 TEXT,
    created_by            TEXT,
    created_at            TEXT,
    updated_by            TEXT,
    updated_at            TEXT,
    compliance_status     TEXT,
    audit_reference       TEXT,
    data_classification   TEXT,
    encryption_enabled    TEXT,
    backup_schedule       TEXT
);

INSERT INTO research_data_repository_snapshot (snapshot_id,repository_id,snapshot_date,total_datasets,total_records,storage_used_tb,storage_quota_tb,access_level,retention_policy,checksum_algorithm,integrity_status,notes,created_by,created_at,updated_by,updated_at,compliance_status,audit_reference,data_classification,encryption_enabled,backup_schedule) VALUES 
('RS001','REPO01','2024-03-31',1250,4520000,12.5,20.0,'Restricted','7Years','SHA256','Pass','Quarterly snapshot','data_manager','2024-04-01','data_manager','2024-04-01','Compliant','AUD001','Confidential','Yes','Weekly'),
('RS002','REPO02','2024-03-31',980,3400000,9.2,15.0,'Open','5Years','MD5','Pass','Quarterly snapshot','data_manager','2024-04-01','data_manager','2024-04-01','Compliant','AUD002','Public','No','Daily'),
('RS003','REPO03','2024-03-31',1500,6200000,18.7,25.0,'Restricted','10Years','SHA1','Pass','Quarterly snapshot','data_manager','2024-04-01','data_manager','2024-04-01','Compliant','AUD003','Sensitive','Yes','Monthly');

-- Campus green infrastructure asset registry
CREATE TABLE campus_green_infrastructure_asset
(
    asset_id                TEXT PRIMARY KEY,
    asset_type              TEXT,
    location_description    TEXT,
    installation_date       TEXT,
    capacity_units          REAL,
    material_composition    TEXT,
    maintenance_interval_days INTEGER,
    last_maintenance_date  TEXT,
    next_maintenance_due   TEXT,
    responsible_department  TEXT,
    sustainability_rating   REAL,
    operational_status      TEXT,
    warranty_expiration     TEXT,
    funding_source          TEXT,
    lifecycle_stage         TEXT,
    carbon_sequestration_tons REAL,
    water_retention_liters REAL,
    biodiversity_score      REAL,
    notes                   TEXT,
    created_by              TEXT,
    created_at              TEXT,
    updated_by              TEXT,
    updated_at              TEXT,
    compliance_certified    TEXT,
    audit_reference         TEXT
);

INSERT INTO campus_green_infrastructure_asset (asset_id,asset_type,location_description,installation_date,capacity_units,material_composition,maintenance_interval_days,last_maintenance_date,next_maintenance_due,responsible_department,sustainability_rating,operational_status,warranty_expiration,funding_source,lifecycle_stage,carbon_sequestration_tons,water_retention_liters,biodiversity_score,notes,created_by,created_at,updated_by,updated_at,compliance_certified,audit_reference) VALUES 
('GI001','RainGarden','NorthCampusLot','2021-04-15',5000,'Soil+Gravel',365,'2023-04-20','2024-04-20','Facilities','9.2','Operational','2025-04-15','Grant','Mature',12.5,30000,4.5,'Installed as part of sustainability plan','env_manager','2021-04-10','env_manager','2023-04-20','Yes','AUD1001'),
('GI002','SolarPanelArray','EastRoof','2020-09-01',250,'Silicon',180,'2023-09-10','2024-03-10','Energy','8.8','Operational','2028-09-01','Donations','Mature',0,0,0,'Provides 250kWh per day','energy_manager','2020-08-15','energy_manager','2023-09-10','Yes','AUD1002'),
('GI003','GreenWall','WestBuildingFacade','2022-06-30',1200,'LivingPlants+Metal',730,'2023-06-30','2025-06-30','Facilities','9.0','Operational','2027-06-30','CampusBudget','Mature',5.0,15000,6.0,'Improves air quality','facilities_coordinator','2022-06-20','facilities_coordinator','2023-06-30','Yes','AUD1003');