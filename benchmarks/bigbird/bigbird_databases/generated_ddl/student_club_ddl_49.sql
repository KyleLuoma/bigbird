-- Table storing photography assets related to events
CREATE TABLE event_photography_asset
(
    photo_id                TEXT PRIMARY KEY,
    event_id                TEXT,
    photographer_name       TEXT,
    capture_date            TEXT,
    file_path               TEXT,
    file_type               TEXT,
    resolution              TEXT,
    width_px                INTEGER,
    height_px               INTEGER,
    iso                     INTEGER,
    aperture                TEXT,
    shutter_speed           TEXT,
    camera_model            TEXT,
    lens_model              TEXT,
    orientation             TEXT,
    color_profile           TEXT,
    copyright_status       TEXT,
    notes                   TEXT,
    storage_location        TEXT,
    backup_status           TEXT,
    tags                    TEXT
);

INSERT INTO event_photography_asset (photo_id,event_id,photographer_name,capture_date,file_path,file_type,resolution,width_px,height_px,iso,aperture,shutter_speed,camera_model,lens_model,orientation,color_profile,copyright_status,notes,storage_location,backup_status,tags) VALUES
('PH001','E001','Alice Smith','2024-10-01','/assets/photos/PH001.jpg','jpg','4000x3000',4000,3000,200,'f/2.8','1/250','Canon EOS 5D','EF24-70mm','landscape','sRGB','licensed','Opening ceremony shot','cloud','yes','ceremony,opening');

INSERT INTO event_photography_asset (photo_id,event_id,photographer_name,capture_date,file_path,file_type,resolution,width_px,height_px,iso,aperture,shutter_speed,camera_model,lens_model,orientation,color_profile,copyright_status,notes,storage_location,backup_status,tags) VALUES
('PH002','E001','Bob Jones','2024-10-01','/assets/photos/PH002.png','png','6000x4000',6000,4000,400,'f/5.6','1/125','Nikon D850','AF-S 70-200mm','portrait','AdobeRGB','unlicensed','Speaker portrait','cloud','no','speaker,portrait');

INSERT INTO event_photography_asset (photo_id,event_id,photographer_name,capture_date,file_path,file_type,resolution,width_px,height_px,iso,aperture,shutter_speed,camera_model,lens_model,orientation,color_profile,copyright_status,notes,storage_location,backup_status,tags) VALUES
('PH003','E002','Carol Lee','2024-11-15','/assets/photos/PH003.tif','tif','5000x3500',5000,3500,320,'f/4','1/500','Sony A7RIII','FE 24-105mm','landscape','sRGB','licensed','Evening gala','onprem','yes','gala,evening');

-- Table storing members' social media profiles
CREATE TABLE member_social_profile
(
    profile_id          TEXT PRIMARY KEY,
    member_id           TEXT,
    platform            TEXT,
    username            TEXT,
    url                 TEXT,
    followers_count     INTEGER,
    following_count     INTEGER,
    posts_count         INTEGER,
    join_date           TEXT,
    last_active_date    TEXT,
    bio                 TEXT,
    profile_picture_url TEXT,
    verified_status     TEXT,
    privacy_setting     TEXT,
    audience_type       TEXT,
    engagement_rate     REAL,
    last_post_id        TEXT,
    total_likes         INTEGER,
    total_comments      INTEGER,
    audience_location   TEXT,
    language_preference TEXT
);

INSERT INTO member_social_profile (profile_id,member_id,platform,username,url,followers_count,following_count,posts_count,join_date,last_active_date,bio,profile_picture_url,verified_status,privacy_setting,audience_type,engagement_rate,last_post_id,total_likes,total_comments,audience_location,language_preference) VALUES
('SP001','M001','Twitter','alice_smith','https://twitter.com/alice_smith',1200,300,250,'2020-05-01','2024-01-15','Tech enthusiast','https://images.com/alice.jpg','yes','public','followers',3.5,'TW20240110',4800,350,'USA','en');

INSERT INTO member_social_profile (profile_id,member_id,platform,username,url,followers_count,following_count,posts_count,join_date,last_active_date,bio,profile_picture_url,verified_status,privacy_setting,audience_type,engagement_rate,last_post_id,total_likes,total_comments,audience_location,language_preference) VALUES
('SP002','M002','LinkedIn','bob-jones','https://linkedin.com/in/bob-jones',850,150,80,'2018-09-12','2024-01-10','Project manager','https://images.com/bob.jpg','no','connections','connections',2.1,'LI20240109',2300,120,'Canada','en');

INSERT INTO member_social_profile (profile_id,member_id,platform,username,url,followers_count,following_count,posts_count,join_date,last_active_date,bio,profile_picture_url,verified_status,privacy_setting,audience_type,engagement_rate,last_post_id,total_likes,total_comments,audience_location,language_preference) VALUES
('SP003','M003','Instagram','carollee','https://instagram.com/carollee',2000,500,400,'2019-03-20','2024-01-12','Creative designer','https://images.com/carol.jpg','yes','private','followers',4.0,'IG20240108',6200,480,'UK','en');

-- Table storing logistical contracts for events
CREATE TABLE event_logistical_contract
(
    contract_id         TEXT PRIMARY KEY,
    event_id            TEXT,
    vendor_id           TEXT,
    contract_type       TEXT,
    start_date          TEXT,
    end_date            TEXT,
    total_amount        REAL,
    currency            TEXT,
    payment_terms       TEXT,
    service_level       TEXT,
    cancellation_policy TEXT,
    insurance_required  TEXT,
    liability_limit     REAL,
    signed_by           TEXT,
    signature_date      TEXT,
    status              TEXT,
    notes               TEXT,
    amendment_number    INTEGER,
    amendment_date      TEXT,
    renewal_flag        TEXT,
    compliance_check    TEXT
);

INSERT INTO event_logistical_contract (contract_id,event_id,vendor_id,contract_type,start_date,end_date,total_amount,currency,payment_terms,service_level,cancellation_policy,insurance_required,liability_limit,signed_by,signature_date,status,notes,amendment_number,amendment_date,renewal_flag,compliance_check) VALUES
('LC001','E001','V001','Catering','2024-09-20','2024-10-02',15000.00,'USD','50% upfront','Premium','30 days','yes',50000.00,'Alice Smith','2024-08-15','active','Includes vegan options',0,NULL,'no','passed');

INSERT INTO event_logistical_contract (contract_id,event_id,vendor_id,contract_type,start_date,end_date,total_amount,currency,payment_terms,service_level,cancellation_policy,insurance_required,liability_limit,signed_by,signature_date,status,notes,amendment_number,amendment_date,renewal_flag,compliance_check) VALUES
('LC002','E002','V002','AudioVisual','2024-11-10','2024-11-16',8000.00,'USD','30% upon signing','Standard','45 days','no',25000.00,'Bob Jones','2024-10-01','active','Additional screens added',1,'2024-10-20','no','passed');

INSERT INTO event_logistical_contract (contract_id,event_id,vendor_id,contract_type,start_date,end_date,total_amount,currency,payment_terms,service_level,cancellation_policy,insurance_required,liability_limit,signed_by,signature_date,status,notes,amendment_number,amendment_date,renewal_flag,compliance_check) VALUES
('LC003','E003','V003','Security','2024-12-01','2024-12-05',5000.00,'USD','full','Gold','60 days','yes',100000.00,'Carol Lee','2024-11-05','pending','Awaiting final approval',0,NULL,'yes','pending');

-- Table linking majors to course offerings
CREATE TABLE major_course_offering
(
    offering_id          TEXT PRIMARY KEY,
    major_id             TEXT,
    course_code          TEXT,
    course_name          TEXT,
    semester             TEXT,
    year                 INTEGER,
    credit_hours         REAL,
    instructor_id        TEXT,
    room_number          TEXT,
    schedule_days        TEXT,
    schedule_time_start  TEXT,
    schedule_time_end    TEXT,
    enrollment_limit     INTEGER,
    enrolled_count       INTEGER,
    prerequisite_course  TEXT,
    corequisite_course   TEXT,
    delivery_mode        TEXT,
    syllabus_url         TEXT,
    assessment_method    TEXT,
    grading_scale        TEXT,
    notes                TEXT
);

INSERT INTO major_course_offering (offering_id,major_id,course_code,course_name,semester,year,credit_hours,instructor_id,room_number,schedule_days,schedule_time_start,schedule_time_end,enrollment_limit,enrolled_count,prerequisite_course,corequisite_course,delivery_mode,syllabus_url,assessment_method,grading_scale,notes) VALUES
('CO001','MA001','CS101','Intro to Computing','Fall',2024,3.0,'I001','B102','MonWedFri','09:00','10:15',120,115,NULL,NULL,'InPerson','https://syllabi.univ.edu/CS101.pdf','Exams','A-F','Core requirement');

INSERT INTO major_course_offering (offering_id,major_id,course_code,course_name,semester,year,credit_hours,instructor_id,room_number,schedule_days,schedule_time_start,schedule_time_end,enrollment_limit,enrolled_count,prerequisite_course,corequisite_course,delivery_mode,syllabus_url,assessment_method,grading_scale,notes) VALUES
('CO002','MA002','BIO202','Genetics','Spring',2025,4.0,'I002','C210','TueThu','11:00','12:30',80,78,'BIO101',NULL,'Hybrid','https://syllabi.univ.edu/BIO202.pdf','Projects','A-F','Lab component required');

INSERT INTO major_course_offering (offering_id,major_id,course_code,course_name,semester,year,credit_hours,instructor_id,room_number,schedule_days,schedule_time_start,schedule_time_end,enrollment_limit,enrolled_count,prerequisite_course,corequisite_course,delivery_mode,syllabus_url,assessment_method,grading_scale,notes) VALUES
('CO003','MA003','ENG305','Shakespeare Studies','Fall',2024,3.0,'I003','D015','MonWed','13:00','14:15',40,38,'ENG201','ENG202','InPerson','https://syllabi.univ.edu/ENG305.pdf','Essays','A-F','Advanced literature elective');

-- Table with demographic details tied to zip codes
CREATE TABLE zip_code_demographics
(
    zip_code                     INTEGER PRIMARY KEY,
    population                   INTEGER,
    median_age                   REAL,
    household_income             INTEGER,
    housing_units                INTEGER,
    owner_occupied               INTEGER,
    renter_occupied              INTEGER,
    average_household_size       REAL,
    unemployment_rate            REAL,
    education_bachelors_percent  REAL,
    education_higher_percent     REAL,
    median_home_value            INTEGER,
    poverty_rate                 REAL,
    ethnic_majority              TEXT,
    language_primary             TEXT,
    crime_rate                   REAL,
    distance_to_campus           REAL,
    public_transport_score       REAL,
    green_space_percent          REAL,
    health_index                 REAL
);

INSERT INTO zip_code_demographics (zip_code,population,median_age,household_income,housing_units,owner_occupied,renter_occupied,average_household_size,unemployment_rate,education_bachelors_percent,education_higher_percent,median_home_value,poverty_rate,ethnic_majority,language_primary,crime_rate,distance_to_campus,public_transport_score,green_space_percent,health_index) VALUES
(12345,25000,35.2,55000,8000,5000,3000,2.8,5.1,32.0,12.5,220000,8.3,'White','English',4.5,2.1,78.0,15.0,78.5);

INSERT INTO zip_code_demographics (zip_code,population,median_age,household_income,housing_units,owner_occupied,renter_occupied,average_household_size,unemployment_rate,education_bachelors_percent,education_higher_percent,median_home_value,poverty_rate,ethnic_majority,language_primary,crime_rate,distance_to_campus,public_transport_score,green_space_percent,health_index) VALUES
(67890,18000,28.7,42000,6000,3500,2500,2.5,7.4,25.0,9.0,180000,12.0,'Hispanic','Spanish',6.2,5.8,65.0,10.0,70.2);

INSERT INTO zip_code_demographics (zip_code,population,median_age,household_income,housing_units,owner_occupied,renter_occupied,average_household_size,unemployment_rate,education_bachelors_percent,education_higher_percent,median_home_value,poverty_rate,ethnic_majority,language_primary,crime_rate,distance_to_campus,public_transport_score,green_space_percent,health_index) VALUES
(24680,32000,42.1,68000,10000,7000,3000,3.0,4.0,38.0,15.0,250000,5.5,'Asian','English',3.1,1.2,85.0,20.0,82.7);

-- Table summarizing attendance metrics for events
CREATE TABLE attendance_summary
(
    summary_id               TEXT PRIMARY KEY,
    event_id                 TEXT,
    total_attended           INTEGER,
    total_checked_in         INTEGER,
    no_show_count            INTEGER,
    vip_count                INTEGER,
    student_count            INTEGER,
    staff_count              INTEGER,
    external_attendees       INTEGER,
    average_arrival_time     TEXT,
    average_departure_time   TEXT,
    peak_checkin_time        TEXT,
    weather_condition        TEXT,
    notes                    TEXT,
    created_date             TEXT,
    last_updated             TEXT,
    data_source              TEXT,
    verification_status      TEXT,
    adjusted_total           INTEGER,
    estimation_method        TEXT,
    confidence_interval      TEXT
);

INSERT INTO attendance_summary (summary_id,event_id,total_attended,total_checked_in,no_show_count,vip_count,student_count,staff_count,external_attendees,average_arrival_time,average_departure_time,peak_checkin_time,weather_condition,notes,created_date,last_updated,data_source,verification_status,adjusted_total,estimation_method,confidence_interval) VALUES
('AS001','E001',300,285,15,20,120,50,95,'08:45','18:30','09:10','Sunny','All sessions full', '2024-10-05','2024-10-06','system','verified',290,'manual','95%');

INSERT INTO attendance_summary (summary_id,event_id,total_attended,total_checked_in,no_show_count,vip_count,student_count,staff_count,external_attendees,average_arrival_time,average_departure_time,peak_checkin_time,weather_condition,notes,created_date,last_updated,data_source,verification_status,adjusted_total,estimation_method,confidence_interval) VALUES
('AS002','E002',150,145,5,10,80,30,25,'10:15','17:00','10:30','Rainy','Reduced seats due to weather', '2024-11-20','2024-11-21','manual','pending',152,'model','90%');

INSERT INTO attendance_summary (summary_id,event_id,total_attended,total_checked_in,no_show_count,vip_count,student_count,staff_count,external_attendees,average_arrival_time,average_departure_time,peak_checkin_time,weather_condition,notes,created_date,last_updated,data_source,verification_status,adjusted_total,estimation_method,confidence_interval) VALUES
('AS003','E003',500,492,8,25,200,70,207,'09:00','20:00','09:20','Cloudy','High demand event', '2025-01-10','2025-01-11','system','verified',505,'statistical','98%');

-- Table for projected budget figures
CREATE TABLE budget_projection
(
    projection_id          TEXT PRIMARY KEY,
    fiscal_year            INTEGER,
    department             TEXT,
    category               TEXT,
    projected_amount       REAL,
    approved_amount        REAL,
    variance               REAL,
    variance_percent       REAL,
    notes                  TEXT,
    created_by             TEXT,
    created_date           TEXT,
    reviewed_by            TEXT,
    reviewed_date          TEXT,
    status                 TEXT,
    adjustment_reason      TEXT,
    last_update            TEXT,
    currency               TEXT,
    exchange_rate          REAL,
    forecast_method        TEXT,
    confidence_level       TEXT,
    external_factor        TEXT
);

INSERT INTO budget_projection (projection_id,fiscal_year,department,category,projected_amount,approved_amount,variance,variance_percent,notes,created_by,created_date,reviewed_by,reviewed_date,status,adjustment_reason,last_update,currency,exchange_rate,forecast_method,confidence_level,external_factor) VALUES
('BP001',2025,'Events','Catering',20000.00,19000.00,1000.00,5.26,'Adjusted for inflation','Alice Smith','2024-09-01','Bob Jones','2024-09-15','pending','inflation','2024-09-20','USD',1.0,'trend','high','market_prices');

INSERT INTO budget_projection (projection_id,fiscal_year,department,category,projected_amount,approved_amount,variance,variance_percent,notes,created_by,created_date,reviewed_by,reviewed_date,status,adjustment_reason,last_update,currency,exchange_rate,forecast_method,confidence_level,external_factor) VALUES
('BP002',2025,'Facilities','Maintenance',50000.00,52000.00,-2000.00,-3.85,'Extra repairs needed','Carol Lee','2024-09-05','Dana White','2024-09-18','approved','unexpected_damage','2024-09-22','USD',1.0,'historical','medium','weather_events');

INSERT INTO budget_projection (projection_id,fiscal_year,department,category,projected_amount,approved_amount,variance,variance_percent,notes,created_by,created_date,reviewed_by,reviewed_date,status,adjustment_reason,last_update,currency,exchange_rate,forecast_method,confidence_level,external_factor) VALUES
('BP003',2025,'Marketing','Digital Ads',30000.00,31000.00,-1000.00,-3.23,'Higher CPM rates','Eve Turner','2024-09-10','Frank Green','2024-09-20','pending','cpm_increase','2024-09-25','USD',1.0,'model','low','platform_changes');

-- Table defining expense categories
CREATE TABLE expense_category
(
    category_id            TEXT PRIMARY KEY,
    parent_category_id    TEXT,
    category_name         TEXT,
    description           TEXT,
    expense_type          TEXT,
    default_account_code  TEXT,
    budget_line_item      TEXT,
    active_flag           TEXT,
    created_date          TEXT,
    created_by            TEXT,
    modified_date         TEXT,
    modified_by           TEXT,
    depreciation_allowed  TEXT,
    approver_role         TEXT,
    approval_required     TEXT,
    tax_deductible        TEXT,
    allocation_method     TEXT,
    reporting_frequency   TEXT,
    notes                 TEXT,
    external_code         TEXT
);

INSERT INTO expense_category (category_id,parent_category_id,category_name,description,expense_type,default_account_code,budget_line_item,active_flag,created_date,created_by,modified_date,modified_by,depreciation_allowed,approver_role,approval_required,tax_deductible,allocation_method,reporting_frequency,notes,external_code) VALUES
('EC001',NULL,'Travel','Transportation and lodging','Operational','5001','Travel Budget','yes','2024-01-01','Alice Smith','2024-06-01','Bob Jones','no','Manager','yes','yes','percentage','monthly','Include airfare and mileage','TRV01');

INSERT INTO expense_category (category_id,parent_category_id,category_name,description,expense_type,default_account_code,budget_line_item,active_flag,created_date,created_by,modified_date,modified_by,depreciation_allowed,approver_role,approval_required,tax_deductible,allocation_method,reporting_frequency,notes,external_code) VALUES
('EC002','EC001','Airfare','Flight costs','Operational','5002','Travel Budget','yes','2024-01-05','Alice Smith','2024-06-05','Bob Jones','no','Manager','yes','yes','percentage','monthly','Domestic and international flights','AIR01');

INSERT INTO expense_category (category_id,parent_category_id,category_name,description,expense_type,default_account_code,budget_line_item,active_flag,created_date,created_by,modified_date,modified_by,depreciation_allowed,approver_role,approval_required,tax_deductible,allocation_method,reporting_frequency,notes,external_code) VALUES
('EC003','EC001','Lodging','Hotel accommodations','Operational','5003','Travel Budget','yes','2024-01-10','Alice Smith','2024-06-10','Bob Jones','no','Manager','yes','yes','percentage','monthly','Include per diem allowances','LOD01');

-- Table describing income sources in detail
CREATE TABLE income_source_detail
(
    source_id              TEXT PRIMARY KEY,
    source_name            TEXT,
    source_type            TEXT,
    contact_person         TEXT,
    contact_email          TEXT,
    phone_number           TEXT,
    address_line1          TEXT,
    address_line2          TEXT,
    city                   TEXT,
    state                  TEXT,
    zip_code               TEXT,
    tax_id                 TEXT,
    payment_terms          TEXT,
    currency               TEXT,
    default_allocation_percent REAL,
    active_flag            TEXT,
    created_date           TEXT,
    created_by             TEXT,
    notes                  TEXT,
    external_reference     TEXT,
    compliance_status      TEXT
);

INSERT INTO income_source_detail (source_id,source_name,source_type,contact_person,contact_email,phone_number,address_line1,address_line2,city,state,zip_code,tax_id,payment_terms,currency,default_allocation_percent,active_flag,created_date,created_by,notes,external_reference,compliance_status) VALUES
('IS001','Alumni Association','Donation','John Doe','jdoe@alumni.org','5551234567','123 Alumni Way','', 'Springfield','IL','62704','12-3456789','Net30','USD',100.0,'yes','2024-02-01','Alice Smith','Annual giving program','ALU001','compliant');

INSERT INTO income_source_detail (source_id,source_name,source_type,contact_person,contact_email,phone_number,address_line1,address_line2,city,state,zip_code,tax_id,payment_terms,currency,default_allocation_percent,active_flag,created_date,created_by,notes,external_reference,compliance_status) VALUES
('IS002','Corporate Sponsor Inc','Sponsorship','Emily Clark','eclark@corp.com','5559876543','456 Corporate Blvd','Suite 200','Metropolis','NY','10001','98-7654321','Net45','USD',75.0,'yes','2024-03-15','Bob Jones','Tech conference sponsor','CORP002','pending');

INSERT INTO income_source_detail (source_id,source_name,source_type,contact_person,contact_email,phone_number,address_line1,address_line2,city,state,zip_code,tax_id,payment_terms,currency,default_allocation_percent,active_flag,created_date,created_by,notes,external_reference,compliance_status) VALUES
('IS003','Government Grant Agency','Grant','Linda Green','lgreen@gov.org','5551122334','789 Government Plaza','', 'Capital City','DC','20001','00-1234567','Net60','USD',50.0,'yes','2024-04-10','Carol Lee','Research funding for 2025','GOV003','compliant');

-- Table capturing members' skillsets
CREATE TABLE member_skillset
(
    skill_id               TEXT PRIMARY KEY,
    member_id              TEXT,
    skill_name             TEXT,
    proficiency_level      TEXT,
    years_experience       INTEGER,
    certification_obtained TEXT,
    certification_body     TEXT,
    certification_date     TEXT,
    last_used_date         TEXT,
    endorsement_count      INTEGER,
    endorsed_by            TEXT,
    training_completed     TEXT,
    training_provider      TEXT,
    training_date          TEXT,
    related_project_id     TEXT,
    notes                  TEXT,
    created_date           TEXT,
    created_by             TEXT,
    active_flag            TEXT,
    skill_category         TEXT,
    skill_subcategory      TEXT
);

INSERT INTO member_skillset (skill_id,member_id,skill_name,proficiency_level,years_experience,certification_obtained,certification_body,certification_date,last_used_date,endorsement_count,endorsed_by,training_completed,training_provider,training_date,related_project_id,notes,created_date,created_by,active_flag,skill_category,skill_subcategory) VALUES
('SK001','M001','Data Analysis','Advanced',5,'Certified Data Analyst','Data Institute','2022-05-10','2024-01-20',12,'I005','yes','DataCamp','2023-03-15','PRJ001','Used for event attendance reports','2024-02-01','Alice Smith','yes','Analytics','Statistical Modeling');

INSERT INTO member_skillset (skill_id,member_id,skill_name,proficiency_level,years_experience,certification_obtained,certification_body,certification_date,last_used_date,endorsement_count,endorsed_by,training_completed,training_provider,training_date,related_project_id,notes,created_date,created_by,active_flag,skill_category,skill_subcategory) VALUES
('SK002','M002','Public Speaking','Intermediate',3,'','',NULL,'2024-01-10',8,'I006','yes','Toastmasters','2022-11-05','PRJ005','Led keynote sessions','2024-02-15','Bob Jones','yes','Communication','Presentation');

INSERT INTO member_skillset (skill_id,member_id,skill_name,proficiency_level,years_experience,certification_obtained,certification_body,certification_date,last_used_date,endorsement_count,endorsed_by,training_completed,training_provider,training_date,related_project_id,notes,created_date,created_by,active_flag,skill_category,skill_subcategory) VALUES
('SK003','M003','Graphic Design','Advanced',7,'Adobe Certified Expert','Adobe','2020-09-30','2024-01-05',15,'I007','yes','Udemy','2021-06-20','PRJ010','Created event branding','2024-03-01','Carol Lee','yes','Design','Visual Communication');