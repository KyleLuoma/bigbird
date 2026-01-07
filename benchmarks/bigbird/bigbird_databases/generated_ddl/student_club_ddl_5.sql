-- Post-event survey data
CREATE TABLE post_event_survey
(
    survey_id           TEXT PRIMARY KEY,
    event_id            TEXT,
    respondent_id       TEXT,
    rating_overall      INTEGER,
    rating_content      INTEGER,
    rating_logistics    INTEGER,
    submission_date     TEXT,
    duration_minutes    INTEGER,
    device_used         TEXT,
    ip_address          TEXT,
    consent_given       TEXT,
    survey_version      TEXT,
    q1                  TEXT,
    q2                  TEXT,
    q3                  TEXT,
    q4                  TEXT,
    q5                  TEXT,
    q6                  TEXT,
    q7                  TEXT,
    q8                  TEXT
);

INSERT INTO post_event_survey (survey_id,event_id,respondent_id,rating_overall,rating_content,rating_logistics,submission_date,duration_minutes,device_used,ip_address,consent_given,survey_version,q1,q2,q3,q4,q5,q6,q7,q8) VALUES ('S001','E100','M200',5,4,5,'2023-06-15',12,'mobile','192.168.1.10','yes','v1','yes','no','maybe','yes','no','yes','no','yes');
INSERT INTO post_event_survey (survey_id,event_id,respondent_id,rating_overall,rating_content,rating_logistics,submission_date,duration_minutes,device_used,ip_address,consent_given,survey_version,q1,q2,q3,q4,q5,q6,q7,q8) VALUES ('S002','E101','M201',4,3,4,'2023-06-16',10,'desktop','192.168.1.11','yes','v1','no','yes','yes','no','yes','no','yes','no');
INSERT INTO post_event_survey (survey_id,event_id,respondent_id,rating_overall,rating_content,rating_logistics,submission_date,duration_minutes,device_used,ip_address,consent_given,survey_version,q1,q2,q3,q4,q5,q6,q7,q8) VALUES ('S003','E102','M202',3,3,3,'2023-06-17',8,'tablet','192.168.1.12','yes','v1','maybe','maybe','no','yes','no','yes','no','yes');

-- Digital media archive
CREATE TABLE digital_media_archive
(
    media_id           TEXT PRIMARY KEY,
    event_id           TEXT,
    media_type         TEXT,
    file_name          TEXT,
    file_path          TEXT,
    upload_date        TEXT,
    uploader_id        TEXT,
    size_bytes         INTEGER,
    resolution         TEXT,
    duration_seconds   INTEGER,
    checksum           TEXT,
    license_type       TEXT,
    access_level       TEXT,
    tags               TEXT,
    description        TEXT,
    is_active          TEXT,
    retention_policy   TEXT,
    source_url         TEXT,
    encoding_format    TEXT,
    bitrate            INTEGER
);

INSERT INTO digital_media_archive (media_id,event_id,media_type,file_name,file_path,upload_date,uploader_id,size_bytes,resolution,duration_seconds,checksum,license_type,access_level,tags,description,is_active,retention_policy,source_url,encoding_format,bitrate) VALUES ('M001','E100','video','intro.mp4','/media/intro.mp4','2023-06-10','U001',10485760,'1920x1080',120,'abc123','standard','public','intro,conference','Opening video','yes','5years','http://example.com/intro','h264',4000);
INSERT INTO digital_media_archive (media_id,event_id,media_type,file_name,file_path,upload_date,uploader_id,size_bytes,resolution,duration_seconds,checksum,license_type,access_level,tags,description,is_active,retention_policy,source_url,encoding_format,bitrate) VALUES ('M002','E101','image','banner.jpg','/media/banner.jpg','2023-06-11','U002',204800,'1920x500',0,'def456','creative','internal','banner,marketing','Header banner','yes','3years','http://example.com/banner','jpeg',0);
INSERT INTO digital_media_archive (media_id,event_id,media_type,file_name,file_path,upload_date,uploader_id,size_bytes,resolution,duration_seconds,checksum,license_type,access_level,tags,description,is_active,retention_policy,source_url,encoding_format,bitrate) VALUES ('M003','E102','audio','theme.mp3','/media/theme.mp3','2023-06-12','U003',5242880,'','180','ghi789','standard','public','theme,music','Event theme music','yes','5years','http://example.com/theme','mp3',320);

-- Sponsor engagement records
CREATE TABLE sponsor_engagement
(
    engagement_id          TEXT PRIMARY KEY,
    sponsor_id             TEXT,
    event_id               TEXT,
    engagement_type        TEXT,
    start_date             TEXT,
    end_date               TEXT,
    contract_value         INTEGER,
    contact_person         TEXT,
    contact_email          TEXT,
    notes                  TEXT,
    status                 TEXT,
    renewal_option         TEXT,
    engagement_level       TEXT,
    benefits_requested     TEXT,
    benefits_delivered     TEXT,
    compliance_status     TEXT,
    last_review_date      TEXT,
    next_review_date      TEXT,
    feedback_score         INTEGER,
    created_at            TEXT
);

INSERT INTO sponsor_engagement (engagement_id,sponsor_id,event_id,engagement_type,start_date,end_date,contract_value,contact_person,contact_email,notes,status,renewal_option,engagement_level,benefits_requested,benefits_delivered,compliance_status,last_review_date,next_review_date,feedback_score,created_at) VALUES ('EGR001','SP100','E100','title_sponsor','2023-01-01','2023-12-31',50000,'Alice Smith','alice@example.com','First year engagement','active','optional','high','logo,booth','logo,booth','compliant','2023-06-01','2024-06-01',8,'2023-01-01');
INSERT INTO sponsor_engagement (engagement_id,sponsor_id,event_id,engagement_type,start_date,end_date,contract_value,contact_person,contact_email,notes,status,renewal_option,engagement_level,benefits_requested,benefits_delivered,compliance_status,last_review_date,next_review_date,feedback_score,created_at) VALUES ('EGR002','SP101','E101','media_partner','2023-02-15','2023-11-30',30000,'Bob Jones','bob@example.com','Media partnership','active','mandatory','medium','ad_spots','ad_spots','compliant','2023-07-01','2024-07-01',7,'2023-02-15');
INSERT INTO sponsor_engagement (engagement_id,sponsor_id,event_id,engagement_type,start_date,end_date,contract_value,contact_person,contact_email,notes,status,renewal_option,engagement_level,benefits_requested,benefits_delivered,compliance_status,last_review_date,next_review_date,feedback_score,created_at) VALUES ('EGR003','SP102','E102','product_demo','2023-03-01','2023-09-30',20000,'Carol Lee','carol@example.com','Demo booth and samples','pending','optional','low','demo_space','demo_space','pending','2023-08-01','2024-08-01',5,'2023-03-01');

-- Venue operation log
CREATE TABLE venue_operation_log
(
    log_id               TEXT PRIMARY KEY,
    venue_id             TEXT,
    event_id             TEXT,
    operation_date       TEXT,
    opening_time         TEXT,
    closing_time         TEXT,
    staff_on_duty        TEXT,
    cleaning_completed   TEXT,
    security_checks      TEXT,
    equipment_status     TEXT,
    temperature_c        REAL,
    humidity_percent     REAL,
    notes                TEXT,
    incident_reported    TEXT,
    maintenance_requested TEXT,
    power_status         TEXT,
    wifi_status          TEXT,
    lighting_status      TEXT,
    HVAC_status          TEXT,
    auditor              TEXT
);

INSERT INTO venue_operation_log (log_id,venue_id,event_id,operation_date,opening_time,closing_time,staff_on_duty,cleaning_completed,security_checks,equipment_status,temperature_c,humidity_percent,notes,incident_reported,maintenance_requested,power_status,wifi_status,lighting_status,HVAC_status,auditor) VALUES ('VOL001','V001','E100','2023-06-15','08:00','22:00','John Doe','yes','yes','good',22.5,45.0,'All set','no','no','online','online','on','operational','Anna Kim');
INSERT INTO venue_operation_log (log_id,venue_id,event_id,operation_date,opening_time,closing_time,staff_on_duty,cleaning_completed,security_checks,equipment_status,temperature_c,humidity_percent,notes,incident_reported,maintenance_requested,power_status,wifi_status,lighting_status,HVAC_status,auditor) VALUES ('VOL002','V002','E101','2023-06-16','07:30','21:30','Emily Ray','yes','yes','good',21.0,40.0,'Minor delay in setup','no','yes','online','online','on','operational','Mark Lee');
INSERT INTO venue_operation_log (log_id,venue_id,event_id,operation_date,opening_time,closing_time,staff_on_duty,cleaning_completed,security_checks,equipment_status,temperature_c,humidity_percent,notes,incident_reported,maintenance_requested,power_status,wifi_status,lighting_status,HVAC_status,auditor) VALUES ('VOL003','V003','E102','2023-06-17','09:00','23:00','Sam Patel','no','yes','partial',23.0,50.0,'Cleaning pending','yes','no','offline','online','off','maintenance','Laura Chen');

-- Transport fuel log
CREATE TABLE transport_fuel_log
(
    fuel_log_id          TEXT PRIMARY KEY,
    vehicle_id           TEXT,
    date_filled          TEXT,
    fuel_type            TEXT,
    gallons              REAL,
    price_per_gallon     REAL,
    total_cost           REAL,
    odometer_start       INTEGER,
    odometer_end         INTEGER,
    driver_id            TEXT,
    route_id             TEXT,
    fuel_station         TEXT,
    receipt_number       TEXT,
    comments             TEXT,
    verified_by          TEXT,
    fuel_efficiency_mpg  REAL,
    avg_speed_mph        REAL,
    cargo_weight_lbs     INTEGER,
    emission_estimate_kg REAL,
    shift_id             TEXT
);

INSERT INTO transport_fuel_log (fuel_log_id,vehicle_id,date_filled,fuel_type,gallons,price_per_gallon,total_cost,odometer_start,odometer_end,driver_id,route_id,fuel_station,receipt_number,comments,verified_by,fuel_efficiency_mpg,avg_speed_mph,cargo_weight_lbs,emission_estimate_kg,shift_id) VALUES ('FL001','VH001','2023-06-10','diesel',15.5,3.25,50.38,12000,12155,'DR001','RT001','StationA','RC001','no issues','SUP001',15.8,45.0,2000,2.5,'SH001');
INSERT INTO transport_fuel_log (fuel_log_id,vehicle_id,date_filled,fuel_type,gallons,price_per_gallon,total_cost,odometer_start,odometer_end,driver_id,route_id,fuel_station,receipt_number,comments,verified_by,fuel_efficiency_mpg,avg_speed_mph,cargo_weight_lbs,emission_estimate_kg,shift_id) VALUES ('FL002','VH002','2023-06-11','gasoline',12.0,3.10,37.20,23000,23120,'DR002','RT002','StationB','RC002','slight delay','SUP002',14.5,40.0,1500,2.2,'SH002');
INSERT INTO transport_fuel_log (fuel_log_id,vehicle_id,date_filled,fuel_type,gallons,price_per_gallon,total_cost,odometer_start,odometer_end,driver_id,route_id,fuel_station,receipt_number,comments,verified_by,fuel_efficiency_mpg,avg_speed_mph,cargo_weight_lbs,emission_estimate_kg,shift_id) VALUES ('FL003','VH003','2023-06-12','electric','0',0,0,34000,34000,'DR003','RT003','StationC','RC003','charged fully','SUP003',0,0,0,0,'SH003');

-- Catering quality check
CREATE TABLE catering_quality_check
(
    check_id               TEXT PRIMARY KEY,
    catering_id            TEXT,
    event_id               TEXT,
    inspection_date        TEXT,
    inspector_name         TEXT,
    temperature_c          REAL,
    hygiene_score          INTEGER,
    plating_score          INTEGER,
    taste_score            INTEGER,
    portion_size_score     INTEGER,
    presentation_score     INTEGER,
    allergen_label_check   TEXT,
    waste_percentage       REAL,
    comments               TEXT,
    corrective_action      TEXT,
    status                 TEXT,
    follow_up_date         TEXT,
    sample_count           INTEGER,
    supplier_contact       TEXT,
    compliance_certified   TEXT,
    created_at            TEXT
);

INSERT INTO catering_quality_check (check_id,catering_id,event_id,inspection_date,inspector_name,temperature_c,hygiene_score,plating_score,taste_score,portion_size_score,presentation_score,allergen_label_check,waste_percentage,comments,corrective_action,status,follow_up_date,sample_count,supplier_contact,compliance_certified,created_at) VALUES ('CQ001','C001','E100','2023-06-14','Mike Ross',4.0,9,8,7,8,9,'yes',2.5,'good overall','none','passed','2023-07-01',20,'SupplierA','yes','2023-06-14');
INSERT INTO catering_quality_check (check_id,catering_id,event_id,inspection_date,inspector_name,temperature_c,hygiene_score,plating_score,taste_score,portion_size_score,presentation_score,allergen_label_check,waste_percentage,comments,corrective_action,status,follow_up_date,sample_count,supplier_contact,compliance_certified,created_at) VALUES ('CQ002','C002','E101','2023-06-15','Laura Green',5.0,8,7,6,7,8,'no',5.0,'label missing','update labels','conditional','2023-07-10',15,'SupplierB','no','2023-06-15');
INSERT INTO catering_quality_check (check_id,catering_id,event_id,inspection_date,inspector_name,temperature_c,hygiene_score,plating_score,taste_score,portion_size_score,presentation_score,allergen_label_check,waste_percentage,comments,corrective_action,status,follow_up_date,sample_count,supplier_contact,compliance_certified,created_at) VALUES ('CQ003','C003','E102','2023-06-16','Sam Lee',3.5,10,9,9,9,10,'yes',1.0,'excellent','none','passed','2023-07-05',25,'SupplierC','yes','2023-06-16');

-- Security staff schedule
CREATE TABLE security_staff_schedule
(
    schedule_id          TEXT PRIMARY KEY,
    staff_id             TEXT,
    event_id             TEXT,
    shift_date           TEXT,
    shift_start          TEXT,
    shift_end            TEXT,
    assigned_zone        TEXT,
    role                 TEXT,
    equipment_assigned   TEXT,
    briefing_completed   TEXT,
    post_shift_report    TEXT,
    incidents_logged     INTEGER,
    overtime_hours       REAL,
    supervisor_id        TEXT,
    notes                TEXT,
    status               TEXT,
    created_at          TEXT,
    updated_at          TEXT,
    badge_number         TEXT,
    contact_phone        TEXT,
    email                TEXT
);

INSERT INTO security_staff_schedule (schedule_id,staff_id,event_id,shift_date,shift_start,shift_end,assigned_zone,role,equipment_assigned,briefing_completed,post_shift_report,incidents_logged,overtime_hours,supervisor_id,notes,status,created_at,updated_at,badge_number,contact_phone,email) VALUES ('SS001','SEC001','E100','2023-06-15','08:00','14:00','Main Entrance','Guard','radio','yes','submitted',0,0,'SUP001','none','confirmed','2023-06-10','2023-06-15','B123','5551234','sec1@example.com');
INSERT INTO security_staff_schedule (schedule_id,staff_id,event_id,shift_date,shift_start,shift_end,assigned_zone,role,equipment_assigned,briefing_completed,post_shift_report,incidents_logged,overtime_hours,supervisor_id,notes,status,created_at,updated_at,badge_number,contact_phone,email) VALUES ('SS002','SEC002','E101','2023-06-16','14:00','20:00','Parking Lot','Patrol','walkie','yes','submitted',1,2,'SUP002','minor incident','confirmed','2023-06-11','2023-06-16','B124','5555678','sec2@example.com');
INSERT INTO security_staff_schedule (schedule_id,staff_id,event_id,shift_date,shift_start,shift_end,assigned_zone,role,equipment_assigned,briefing_completed,post_shift_report,incidents_logged,overtime_hours,supervisor_id,notes,status,created_at,updated_at,badge_number,contact_phone,email) VALUES ('SS003','SEC003','E102','2023-06-17','20:00','02:00','VIP Lounge','Supervisor','radio,flashlight','yes','submitted',0,1.5,'SUP003','all clear','confirmed','2023-06-12','2023-06-17','B125','5559012','sec3@example.com');

-- Environmental impact report
CREATE TABLE environmental_impact_report
(
    report_id                     TEXT PRIMARY KEY,
    event_id                      TEXT,
    report_date                   TEXT,
    carbon_emissions_kg           REAL,
    water_usage_liters            REAL,
    waste_generated_kg            REAL,
    recycled_percentage           REAL,
    energy_consumed_kwh           REAL,
    transportation_emissions_kg   REAL,
    vendor_sustainability_score   INTEGER,
    renewable_energy_used_percent REAL,
    notes                         TEXT,
    auditor_name                  TEXT,
    verified                      TEXT,
    peak_power_kw                 REAL,
    average_power_kw              REAL,
    heat_generated_kg             REAL,
    noise_level_db               REAL,
    green_certification_status   TEXT,
    mitigation_measures           TEXT,
    created_at                   TEXT
);

INSERT INTO environmental_impact_report (report_id,event_id,report_date,carbon_emissions_kg,water_usage_liters,waste_generated_kg,recycled_percentage,energy_consumed_kwh,transportation_emissions_kg,vendor_sustainability_score,renewable_energy_used_percent,notes,auditor_name,verified,peak_power_kw,average_power_kw,heat_generated_kg,noise_level_db,green_certification_status,mitigation_measures,created_at) VALUES ('EI001','E100','2023-06-20',120.5,3500,200,45.0,800,30.2,85,20.0,'good overall','Anna Kim','yes',50.0,30.0,150.0,70.0,'certified','recycling program', '2023-06-20');
INSERT INTO environmental_impact_report (report_id,event_id,report_date,carbon_emissions_kg,water_usage_liters,waste_generated_kg,recycled_percentage,energy_consumed_kwh,transportation_emissions_kg,vendor_sustainability_score,renewable_energy_used_percent,notes,auditor_name,verified,peak_power_kw,average_power_kw,heat_generated_kg,noise_level_db,green_certification_status,mitigation_measures,created_at) VALUES ('EI002','E101','2023-06-21',95.0,3000,150,50.0,700,25.0,90,25.0,'minor issues','Mark Lee','no',45.0,28.0,130.0,65.0,'pending','waste reduction plan','2023-06-21');
INSERT INTO environmental_impact_report (report_id,event_id,report_date,carbon_emissions_kg,water_usage_liters,waste_generated_kg,recycled_percentage,energy_consumed_kwh,transportation_emissions_kg,vendor_sustainability_score,renewable_energy_used_percent,notes,auditor_name,verified,peak_power_kw,average_power_kw,heat_generated_kg,noise_level_db,green_certification_status,mitigation_measures,created_at) VALUES ('EI003','E102','2023-06-22',80.0,2800,120,55.0,650,20.0,95,30.0,'excellent','Laura Chen','yes',40.0,25.0,110.0,60.0,'certified','carbon offset purchase','2023-06-22');

-- Community partner
CREATE TABLE community_partner
(
    partner_id                TEXT PRIMARY KEY,
    organization_name         TEXT,
    contact_name              TEXT,
    contact_email             TEXT,
    contact_phone             TEXT,
    partnership_type          TEXT,
    start_date                TEXT,
    end_date                  TEXT,
    description               TEXT,
    active_status             TEXT,
    last_interaction_date     TEXT,
    notes                     TEXT,
    agreement_document        TEXT,
    funding_amount            INTEGER,
    in_kind_contributions    TEXT,
    partner_category          TEXT,
    region                    TEXT,
    website                   TEXT,
    social_media_handle       TEXT,
    created_at               TEXT
);

INSERT INTO community_partner (partner_id,organization_name,contact_name,contact_email,contact_phone,partnership_type,start_date,end_date,description,active_status,last_interaction_date,notes,agreement_document,funding_amount,in_kind_contributions,partner_category,region,website,social_media_handle,created_at) VALUES ('CP001','GreenFuture','Emily Green','emily@greenfuture.org','5551111','sponsor','2022-01-01','2024-12-31','Environmental initiatives','yes','2023-06-10','positive feedback','green_agreement.pdf',15000,'volunteer_hours','nonprofit','Midwest','http://greenfuture.org','@greenfuture','2023-01-01');
INSERT INTO community_partner (partner_id,organization_name,contact_name,contact_email,contact_phone,partnership_type,start_date,end_date,description,active_status,last_interaction_date,notes,agreement_document,funding_amount,in_kind_contributions,partner_category,region,website,social_media_handle,created_at) VALUES ('CP002','TechBridge','John Tech','john@techbridge.com','5552222','partner','2023-03-15','2025-03-14','STEM education support','yes','2023-06-12','ongoing projects','tech_agreement.pdf',25000,'equipment','corporate','West','http://techbridge.com','@techbridge','2023-03-15');
INSERT INTO community_partner (partner_id,organization_name,contact_name,contact_email,contact_phone,partnership_type,start_date,end_date,description,active_status,last_interaction_date,notes,agreement_document,funding_amount,in_kind_contributions,partner_category,region,website,social_media_handle,created_at) VALUES ('CP003','HealthFirst','Linda Care','linda@healthfirst.org','5553333','donor','2021-06-01','2023-05-31','Community health programs','no','2023-05-20','ended partnership','health_agreement.pdf',10000,'medical_supplies','nonprofit','South','http://healthfirst.org','@healthfirst','2021-06-01');

-- Grant disbursement
CREATE TABLE grant_disbursement
(
    disbursement_id          TEXT PRIMARY KEY,
    grant_id                 TEXT,
    amount                   INTEGER,
    disbursement_date        TEXT,
    recipient_id             TEXT,
    purpose                  TEXT,
    fiscal_year              TEXT,
    approved_by              TEXT,
    notes                    TEXT,
    payment_method           TEXT,
    transaction_id           TEXT,
    account_number           TEXT,
    bank_name                TEXT,
    currency                 TEXT,
    exchange_rate            REAL,
    tax_withheld            REAL,
    voucher_number           TEXT,
    status                   TEXT,
    created_at              TEXT,
    updated_at              TEXT
);

INSERT INTO grant_disbursement (disbursement_id,grant_id,amount,disbursement_date,recipient_id,purpose,fiscal_year,approved_by,notes,payment_method,transaction_id,account_number,bank_name,currency,exchange_rate,tax_withheld,voucher_number,status,created_at,updated_at) VALUES ('GD001','GR001',5000,'2023-04-01','M200','equipment purchase','2023','Dean Smith','first installment','wire','TX001','12345678','BankA','USD',1.0,0,'V001','completed','2023-03-20','2023-04-01');
INSERT INTO grant_disbursement (disbursement_id,grant_id,amount,disbursement_date,recipient_id,purpose,fiscal_year,approved_by,notes,payment_method,transaction_id,account_number,bank_name,currency,exchange_rate,tax_withheld,voucher_number,status,created_at,updated_at) VALUES ('GD002','GR002',3000,'2023-05-15','M201','travel expenses','2023','Dean Jones','second installment','check','TX002','87654321','BankB','USD',1.0,0,'V002','completed','2023-05-01','2023-05-15');
INSERT INTO grant_disbursement (disbursement_id,grant_id,amount,disbursement_date,recipient_id,purpose,fiscal_year,approved_by,notes,payment_method,transaction_id,account_number,bank_name,currency,exchange_rate,tax_withheld,voucher_number,status,created_at,updated_at) VALUES ('GD003','GR003',2000,'2023-06-10','M202','software licenses','2023','Dean Lee','final payment','wire','TX003','11223344','BankC','USD',1.0,0,'V003','completed','2023-05-20','2023-06-10');