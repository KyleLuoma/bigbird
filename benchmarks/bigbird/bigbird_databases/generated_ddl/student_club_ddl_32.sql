-- Digital Asset Metadata
CREATE TABLE digital_asset_metadata
(
    asset_id            TEXT PRIMARY KEY,
    file_name           TEXT,
    file_type           TEXT,
    size_bytes          INTEGER,
    created_date        TEXT,
    modified_date       TEXT,
    creator_user        TEXT,
    description         TEXT,
    tags                TEXT,
    checksum            TEXT,
    storage_location    TEXT,
    access_level        TEXT,
    version             INTEGER,
    is_archived         TEXT,
    retention_policy    TEXT,
    related_project     TEXT,
    department          TEXT,
    usage_count         INTEGER,
    last_accessed       TEXT,
    metadata_hash       TEXT
);
INSERT INTO digital_asset_metadata (asset_id,file_name,file_type,size_bytes,created_date,modified_date,creator_user,description,tags,checksum,storage_location,access_level,version,is_archived,retention_policy,related_project,department,usage_count,last_accessed,metadata_hash) VALUES ('DA001','promo_video.mp4','video',104857600,'2023-01-15','2023-02-01','alice','Campus promotional video','marketing,video','abcd1234','s3://media','public',1,'no','2years','CampusRebrand','Marketing',150,'2023-12-01','hash001');
INSERT INTO digital_asset_metadata (asset_id,file_name,file_type,size_bytes,created_date,modified_date,creator_user,description,tags,checksum,storage_location,access_level,version,is_archived,retention_policy,related_project,department,usage_count,last_accessed,metadata_hash) VALUES ('DA002','research_dataset.csv','csv',5242880,'2022-07-20','2022-07-21','bob','Survey data for study','research,data','efgh5678','s3://datasets','restricted',3,'yes','5years','HealthSurvey','PublicHealth',78,'2023-11-15','hash002');
INSERT INTO digital_asset_metadata (asset_id,file_name,file_type,size_bytes,created_date,modified_date,creator_user,description,tags,checksum,storage_location,access_level,version,is_archived,retention_policy,related_project,department,usage_count,last_accessed,metadata_hash) VALUES ('DA003','logo_design.ai','vector',204800,'2021-05-05','2021-06-10','carol','Official logo design','branding,logo','ijkl9012','s3://assets','internal',2,'no','3years','BrandRefresh','Design',34,'2023-10-20','hash003');

-- Campus Water Quality
CREATE TABLE campus_water_quality
(
    sample_id               TEXT PRIMARY KEY,
    collection_date         TEXT,
    location_name           TEXT,
    pH_level                REAL,
    turbidity_ntu           REAL,
    chlorine_mg_per_l       REAL,
    lead_ppb                REAL,
    bacteria_cfu_per_ml     INTEGER,
    temperature_c           REAL,
    conductivity_us_cm      REAL,
    dissolved_oxygen_mg_l   REAL,
    nitrate_mg_per_l        REAL,
    phosphate_mg_per_l      REAL,
    sample_collector        TEXT,
    analysis_lab            TEXT,
    compliance_status       TEXT,
    notes                   TEXT,
    inspector_id            TEXT,
    approval_date           TEXT,
    revised_by              TEXT
);
INSERT INTO campus_water_quality (sample_id,collection_date,location_name,pH_level,turbidity_ntu,chlorine_mg_per_l,lead_ppb,bacteria_cfu_per_ml,temperature_c,conductivity_us_cm,dissolved_oxygen_mg_l,nitrate_mg_per_l,phosphate_mg_per_l,sample_collector,analysis_lab,compliance_status,notes,inspector_id,approval_date,revised_by) VALUES ('WQ001','2023-09-01','NorthLake',7.2,2.5,0.3,5,150,15.0,250,8.5,3.2,0.5,'dave','LabA','compliant','Routine check','INS001','2023-09-05','bob');
INSERT INTO campus_water_quality (sample_id,collection_date,location_name,pH_level,turbidity_ntu,chlorine_mg_per_l,lead_ppb,bacteria_cfu_per_ml,temperature_c,conductivity_us_cm,dissolved_oxygen_mg_l,nitrate_mg_per_l,phosphate_mg_per_l,sample_collector,analysis_lab,compliance_status,notes,inspector_id,approval_date,revised_by) VALUES ('WQ002','2023-09-15','SouthFountain',6.8,1.1,0.2,2,80,14.2,180,9.1,1.5,0.3,'ellen','LabB','compliant','No issues','INS002','2023-09-18','carol');
INSERT INTO campus_water_quality (sample_id,collection_date,location_name,pH_level,turbidity_ntu,chlorine_mg_per_l,lead_ppb,bacteria_cfu_per_ml,temperature_c,conductivity_us_cm,dissolved_oxygen_mg_l,nitrate_mg_per_l,phosphate_mg_per_l,sample_collector,analysis_lab,compliance_status,notes,inspector_id,approval_date,revised_by) VALUES ('WQ003','2023-10-02','EastPond',7.5,3.0,0.4,8,300,16.5,300,7.8,4.0,0.7,'frank','LabA','non-compliant','High lead level','INS003','2023-10-06','dave');

-- Faculty Travel Log
CREATE TABLE faculty_travel_log
(
    travel_id               TEXT PRIMARY KEY,
    faculty_id              TEXT,
    destination_country     TEXT,
    destination_city        TEXT,
    departure_date          TEXT,
    return_date             TEXT,
    purpose                 TEXT,
    funding_source          TEXT,
    travel_status           TEXT,
    airline                 TEXT,
    flight_number           TEXT,
    accommodation_name      TEXT,
    accommodation_nights    INTEGER,
    total_cost              REAL,
    per_diem_rate           REAL,
    expenses_submitted      TEXT,
    approval_user           TEXT,
    notes                   TEXT,
    created_timestamp       TEXT,
    last_modified_timestamp TEXT
);
INSERT INTO faculty_travel_log (travel_id,faculty_id,destination_country,destination_city,departure_date,return_date,purpose,funding_source,travel_status,airline,flight_number,accommodation_name,accommodation_nights,total_cost,per_diem_rate,expenses_submitted,approval_user,notes,created_timestamp,last_modified_timestamp) VALUES ('TR001','F001','Germany','Berlin','2023-08-10','2023-08-18','Conference','GrantA','approved','Lufthansa','LH1234','HotelBerlin',8,4200.00,150.00,'yes','admin','Successful trip','2023-07-01','2023-08-20');
INSERT INTO faculty_travel_log (travel_id,faculty_id,destination_country,destination_city,departure_date,return_date,purpose,funding_source,travel_status,airline,flight_number,accommodation_name,accommodation_nights,total_cost,per_diem_rate,expenses_submitted,approval_user,notes,created_timestamp,last_modified_timestamp) VALUES ('TR002','F002','Japan','Tokyo','2023-09-05','2023-09-12','Research Collaboration','DeptBudget','pending','ANA','NH5678','TokyoInn',7,3800.00,130.00,'no','dept_head','Awaiting approval','2023-08-15','2023-09-13');
INSERT INTO faculty_travel_log (travel_id,faculty_id,destination_country,destination_city,departure_date,return_date,purpose,funding_source,travel_status,airline,flight_number,accommodation_name,accommodation_nights,total_cost,per_diem_rate,expenses_submitted,approval_user,notes,created_timestamp,last_modified_timestamp) VALUES ('TR003','F003','Canada','Toronto','2023-10-01','2023-10-07','Workshop','ExternalSponsor','approved','AirCanada','AC3456','MapleHotel',6,3100.00,125.00,'yes','admin','Travel completed','2023-09-10','2023-10-09');

-- Student Hackathon Event
CREATE TABLE student_hackathon_event
(
    hackathon_id            TEXT PRIMARY KEY,
    event_name              TEXT,
    start_date              TEXT,
    end_date                TEXT,
    theme                   TEXT,
    hosting_department      TEXT,
    sponsor_name            TEXT,
    venue_name              TEXT,
    max_participants        INTEGER,
    registration_deadline   TEXT,
    judging_panel           TEXT,
    prize_fund_usd          REAL,
    tech_stack_allowed     TEXT,
    mentor_count            INTEGER,
    volunteer_count         INTEGER,
    meals_provided          TEXT,
    wifi_ssid               TEXT,
    wifi_password           TEXT,
    safety_guidelines       TEXT,
    outcome_summary         TEXT
);
INSERT INTO student_hackathon_event (hackathon_id,event_name,start_date,end_date,theme,hosting_department,sponsor_name,venue_name,max_participants,registration_deadline,judging_panel,prize_fund_usd,tech_stack_allowed,mentor_count,volunteer_count,meals_provided,wifi_ssid,wifi_password,safety_guidelines,outcome_summary) VALUES ('HH001','Innovate2023','2023-11-10','2023-11-12','AI for Good','ComputerScience','TechCorp','MainHall',150,'2023-10-31','ProfA,ProfB,ProfC',20000,'Python,JavaScript,TensorFlow',12,20,'yes','CampusWiFi','hack2023','WearBadge,NoFoodOutside','35 projects submitted');
INSERT INTO student_hackathon_event (hackathon_id,event_name,start_date,end_date,theme,hosting_department,sponsor_name,venue_name,max_participants,registration_deadline,judging_panel,prize_fund_usd,tech_stack_allowed,mentor_count,volunteer_count,meals_provided,wifi_ssid,wifi_password,safety_guidelines,outcome_summary) VALUES ('HH002','HealthHack','2023-12-05','2023-12-07','Digital Health','BiomedicalEngineering','HealthInc','LabComplex',100,'2023-11-25','DrX,DrY,DrZ',15000,'R,Python,SQL',8,15,'yes','HealthWiFi','health2023','FirstAidAvailable','22 prototypes developed');
INSERT INTO student_hackathon_event (hackathon_id,event_name,start_date,end_date,theme,hosting_department,sponsor_name,venue_name,max_participants,registration_deadline,judging_panel,prize_fund_usd,tech_stack_allowed,mentor_count,volunteer_count,meals_provided,wifi_ssid,wifi_password,safety_guidelines,outcome_summary) VALUES ('HH003','EcoHack','2024-01-15','2024-01-17','Sustainability','EnvironmentalScience','GreenOrg','EcoCenter',120,'2023-12-31','ProfEco,ProfSust,ProfRenew',18000,'Java,NodeJS,GIS',10,18,'yes','EcoWiFi','eco2024','RecyclingBins,NoPlastics','30 solutions focused on waste reduction');

-- Green Infrastructure Project
CREATE TABLE green_infrastructure_project
(
    project_id              TEXT PRIMARY KEY,
    project_name            TEXT,
    start_date              TEXT,
    end_date                TEXT,
    lead_engineer           TEXT,
    budget_usd              REAL,
    status                  TEXT,
    location_campus         TEXT,
    description             TEXT,
    sustainability_score    INTEGER,
    water_reuse_percent    REAL,
    solar_capacity_kw       REAL,
    green_roof_area_sqm     REAL,
    tree_planting_count     INTEGER,
    native_species_used     TEXT,
    permits_obtained        TEXT,
    community_engagement    TEXT,
    monitoring_plan         TEXT,
    risk_assessment_level   TEXT,
    final_report_link       TEXT
);
INSERT INTO green_infrastructure_project (project_id,project_name,start_date,end_date,lead_engineer,budget_usd,status,location_campus,description,sustainability_score,water_reuse_percent,solar_capacity_kw,green_roof_area_sqm,tree_planting_count,native_species_used,permits_obtained,community_engagement,monitoring_plan,risk_assessment_level,final_report_link) VALUES ('GP001','SolarCanopy','2022-03-01','2023-08-15','gina','750000','completed','EastWing','Solar panels over parking lot',92,0.0,500,0,0,'N/A','yes','public_workshop','monthly','low','/reports/gp001.pdf');
INSERT INTO green_infrastructure_project (project_id,project_name,start_date,end_date,lead_engineer,budget_usd,status,location_campus,description,sustainability_score,water_reuse_percent,solar_capacity_kw,green_roof_area_sqm,tree_planting_count,native_species_used,permits_obtained,community_engagement,monitoring_plan,risk_assessment_level,final_report_link) VALUES ('GP002','RainGarden','2023-01-10','2023-12-20','harry','320000','in_progress','NorthCampus','Rain garden for stormwater management',85,45.5,0,1500,120,'oak,maple','yes','student_volunteers','quarterly','moderate','/reports/gp002.pdf');
INSERT INTO green_infrastructure_project (project_id,project_name,start_date,end_date,lead_engineer,budget_usd,status,location_campus,description,sustainability_score,water_reuse_percent,solar_capacity_kw,green_roof_area_sqm,tree_planting_count,native_species_used,permits_obtained,community_engagement,monitoring_plan,risk_assessment_level,final_report_link) VALUES ('GP003','LivingWall','2023-06-05','2024-06-05','irene','210000','planned','WestQuad','Vertical garden on building facade',78,0.0,0,200,0,'ivy,ferns','pending','faculty_matches','biannual','low','/reports/gp003.pdf');

-- Alumni Network Group
CREATE TABLE alumni_network_group
(
    group_id                TEXT PRIMARY KEY,
    group_name              TEXT,
    creation_date           TEXT,
    founder_alumni_id       TEXT,
    member_count            INTEGER,
    focus_area              TEXT,
    meeting_frequency       TEXT,
    last_meeting_date       TEXT,
    communication_channel   TEXT,
    linkedin_group_url      TEXT,
    slack_workspace         TEXT,
    mentorship_program      TEXT,
    regional_chapter        TEXT,
    annual_budget_usd       REAL,
    sponsor_company         TEXT,
    event_hosted_last_year  TEXT,
    newsletter_subscribers  INTEGER,
    social_media_handle     TEXT,
    privacy_policy_url      TEXT,
    notes                   TEXT
);
INSERT INTO alumni_network_group (group_id,group_name,creation_date,founder_alumni_id,member_count,focus_area,meeting_frequency,last_meeting_date,communication_channel,linkedin_group_url,slack_workspace,mentorship_program,regional_chapter,annual_budget_usd,sponsor_company,event_hosted_last_year,newsletter_subscribers,social_media_handle,privacy_policy_url,notes) VALUES ('AG001','Tech Innovators','2018-05-12','ALU001',480,'Technology','monthly','2023-11-20','email','https://linkedin.com/groups/techinn','tech_slack','yes','NorthRegion',15000,'TechCo','2023 Hackathon',800,'@techinnovators','https://university.edu/privacy','Active networking group');
INSERT INTO alumni_network_group (group_id,group_name,creation_date,founder_alumni_id,member_count,focus_area,meeting_frequency,last_meeting_date,communication_channel,linkedin_group_url,slack_workspace,mentorship_program,regional_chapter,annual_budget_usd,sponsor_company,event_hosted_last_year,newsletter_subscribers,social_media_handle,privacy_policy_url,notes) VALUES ('AG002','Health Leaders','2020-09-01','ALU045',320,'Healthcare','quarterly','2023-10-05','mailing_list','https://linkedin.com/groups/healthlead','health_slack','yes','SouthRegion',12000,'HealthCorp','2023 Wellness Summit',500,'@healthleaders','https://university.edu/privacy','Focus on alumni in health sector');
INSERT INTO alumni_network_group (group_id,group_name,creation_date,founder_alumni_id,member_count,focus_area,meeting_frequency,last_meeting_date,communication_channel,linkedin_group_url,slack_workspace,mentorship_program,regional_chapter,annual_budget_usd,sponsor_company,event_hosted_last_year,newsletter_subscribers,social_media_handle,privacy_policy_url,notes) VALUES ('AG003','Arts & Culture Circle','2015-02-20','ALU078',210,'Arts','biannual','2023-08-15','email','https://linkedin.com/groups/artscircle','arts_slack','no','EastRegion',8000,'ArtFund','2023 Gallery Night',300,'@artscircle','https://university.edu/privacy','Promotes artistic collaborations');

-- Library Rare Book
CREATE TABLE library_rare_book
(
    rare_book_id            TEXT PRIMARY KEY,
    title                   TEXT,
    author                  TEXT,
    publication_year        INTEGER,
    edition                 TEXT,
    language                TEXT,
    call_number             TEXT,
    condition_grade         TEXT,
    acquisition_date        TEXT,
    donor_name              TEXT,
    donor_relation          TEXT,
    preservation_status     TEXT,
    location_shelf          TEXT,
    insurance_value_usd     REAL,
    restricted_access       TEXT,
    digital_scan_available  TEXT,
    scan_url                TEXT,
    notes                   TEXT,
    cataloger_id            TEXT,
    last_inventory_check    TEXT
);
INSERT INTO library_rare_book (rare_book_id,title,author,publication_year,edition,language,call_number,condition_grade,acquisition_date,donor_name,donor_relation,preservation_status,location_shelf,insurance_value_usd,restricted_access,digital_scan_available,scan_url,notes,cataloger_id,last_inventory_check) VALUES ('RB001','Principia Mathematica','Isaac Newton','1687','First','Latin','QA76 .N5','Excellent','2005-04-10','John Doe','Alumni','climate controlled','Rare-01',2500000,'yes','yes','/digital/rb001.pdf','Historical significance','CAT001','2023-09-01');
INSERT INTO library_rare_book (rare_book_id,title,author,publication_year,edition,language,call_number,condition_grade,acquisition_date,donor_name,donor_relation,preservation_status,location_shelf,insurance_value_usd,restricted_access,digital_scan_available,scan_url,notes,cataloger_id,last_inventory_check) VALUES ('RB002','The Canterbury Tales','Geoffrey Chaucer','1400','Second','Middle English','PR2100 .C5','Good','2010-11-22','Emily Smith','Faculty','temperature regulated','Rare-02',1800000,'yes','no','', 'Fragile binding','CAT002','2023-10-15');
INSERT INTO library_rare_book (rare_book_id,title,author,publication_year,edition,language,call_number,condition_grade,acquisition_date,donor_name,donor_relation,preservation_status,location_shelf,insurance_value_usd,restricted_access,digital_scan_available,scan_url,notes,cataloger_id,last_inventory_check) VALUES ('RB003','Moby Dick','Herman Melville','1851','First','English','PS3519 .M5','Fair','2018-06-05','Michael Lee','Alumni','standard','Rare-03',750000,'no','yes','/digital/rb003.pdf','Slight water damage','CAT003','2023-11-20');

-- Equipment Leasing Agreement
CREATE TABLE equipment_leasing_agreement
(
    lease_id                TEXT PRIMARY KEY,
    equipment_id            TEXT,
    lessee_department       TEXT,
    lease_start_date        TEXT,
    lease_end_date          TEXT,
    monthly_rate_usd        REAL,
    total_value_usd         REAL,
    maintenance_included    TEXT,
    insurance_required      TEXT,
    primary_contact         TEXT,
    secondary_contact       TEXT,
    payment_terms           TEXT,
    early_termination_fee   REAL,
    renewal_option          TEXT,
    special_conditions      TEXT,
    authorized_by           TEXT,
    approval_date           TEXT,
    notes                   TEXT,
    last_amendment_date     TEXT,
    lease_status            TEXT
);
INSERT INTO equipment_leasing_agreement (lease_id,equipment_id,lessee_department,lease_start_date,lease_end_date,monthly_rate_usd,total_value_usd,maintenance_included,insurance_required,primary_contact,secondary_contact,payment_terms,early_termination_fee,renewal_option,special_conditions,authorized_by,approval_date,notes,last_amendment_date,lease_status) VALUES ('LE001','EQ1001','AudioVisual','2023-01-01','2025-12-31',2500.00,90000.00,'yes','yes','alice','bob','net30',5000.00,'yes','none','DeanAudio','admin','2022-12-15','Equipment used for events','2023-06-01','active');
INSERT INTO equipment_leasing_agreement (lease_id,equipment_id,lessee_department,lease_start_date,lease_end_date,monthly_rate_usd,total_value_usd,maintenance_included,insurance_required,primary_contact,secondary_contact,payment_terms,early_termination_fee,renewal_option,special_conditions,authorized_by,approval_date,notes,last_amendment_date,lease_status) VALUES ('LE002','EQ2002','ResearchLab','2023-03-15','2024-03-14',4000.00,48000.00,'no','yes','carol','dave','net45',3000.00,'no','requires quarterly calibration','DeptHead','2023-02-20','High precision microscope','2023-08-10','active');
INSERT INTO equipment_leasing_agreement (lease_id,equipment_id,lessee_department,lease_start_date,lease_end_date,monthly_rate_usd,total_value_usd,maintenance_included,insurance_required,primary_contact,secondary_contact,payment_terms,early_termination_fee,renewal_option,special_conditions,authorized_by,approval_date,notes,last_amendment_date,lease_status) VALUES ('LE003','EQ3003','ITSupport','2022-07-01','2023-06-30',1500.00,18000.00,'yes','no','ellen','frank','net30',0.00,'yes','upgrade option included','CIO','2022-06-10','Server rack leasing','2023-01-15','terminated');

-- Community Art Installation
CREATE TABLE community_art_installation
(
    installation_id         TEXT PRIMARY KEY,
    title                   TEXT,
    artist_name             TEXT,
    installation_date       TEXT,
    removal_date            TEXT,
    location_description    TEXT,
    material_used           TEXT,
    dimensions_cm           TEXT,
    funding_source          TEXT,
    budget_usd              REAL,
    sponsor_name            TEXT,
    community_partner       TEXT,
    permits_obtained        TEXT,
    maintenance_plan        TEXT,
    visitor_estimate_monthly INTEGER,
    accessibility_features TEXT,
    lighting_requirements  TEXT,
    safety_inspections      TEXT,
    public_feedback_link    TEXT,
    notes                   TEXT
);
INSERT INTO community_art_installation (installation_id,title,artist_name,installation_date,removal_date,location_description,material_used,dimensions_cm,funding_source,budget_usd,sponsor_name,community_partner,permits_obtained,maintenance_plan,visitor_estimate_monthly,accessibility_features,lighting_requirements,safety_inspections,public_feedback_link,notes) VALUES ('AI001','Waves of Light','Mia Rivera','2023-05-20','2024-05-20','Central Plaza','LED panels','500x200','UniversityGrant',120000,'TechCorp','CityArtsCouncil','yes','monthly cleaning','1500','wheelchair ramps','motion sensors','quarterly','/feedback/ai001','Interactive light display');
INSERT INTO community_art_installation (installation_id,title,artist_name,installation_date,removal_date,location_description,material_used,dimensions_cm,funding_source,budget_usd,sponsor_name,community_partner,permits_obtained,maintenance_plan,visitor_estimate_monthly,accessibility_features,lighting_requirements,safety_inspections,public_feedback_link,notes) VALUES ('AI002','Eco Spiral','Liam Chen','2023-09-10','2025-09-10','North Garden','Recycled metal','300x300','AlumniDonations',85000,'EcoFund','GreenCampusOrg','yes','biannual polishing','800','braille plaques','solar powered','biannual','/feedback/ai002','Sustainable sculpture');
INSERT INTO community_art_installation (installation_id,title,artist_name,installation_date,removal_date,location_description,material_used,dimensions_cm,funding_source,budget_usd,sponsor_name,community_partner,permits_obtained,maintenance_plan,visitor_estimate_monthly,accessibility_features,lighting_requirements,safety_inspections,public_feedback_link,notes) VALUES ('AI003','Harmony Fountain','Sofia Patel','2024-02-01','2027-02-01','East Quad','Stone and water','400x200','CorporateSponsor',200000,'AquaCo','CampusFacilities','yes','weekly water quality checks','2000','audio description','LED underwater','monthly','/feedback/ai003','Interactive water feature');

-- Health Service Immunization Record
CREATE TABLE health_service_immunization_record
(
    record_id               TEXT PRIMARY KEY,
    patient_id              TEXT,
    vaccine_name            TEXT,
    dose_number             INTEGER,
    administration_date     TEXT,
    administering_provider TEXT,
    lot_number              TEXT,
    site_of_administration  TEXT,
    reaction_observed       TEXT,
    booster_required        TEXT,
    next_due_date           TEXT,
    clinical_notes          TEXT,
    verified_by             TEXT,
    verification_date       TEXT,
    insurance_covered       TEXT,
    cost_usd                REAL,
    clinic_location         TEXT,
    follow_up_needed        TEXT,
    follow_up_date          TEXT,
    record_status           TEXT
);
INSERT INTO health_service_immunization_record (record_id,patient_id,vaccine_name,dose_number,administration_date,administering_provider,lot_number,site_of_administration,reaction_observed,booster_required,next_due_date,clinical_notes,verified_by,verification_date,insurance_covered,cost_usd,clinic_location,follow_up_needed,follow_up_date,record_status) VALUES ('IM001','PAT001','Influenza','1','2023-10-12','nurse_jane','LOT12345','deltoid','none','no','2024-10-12','Seasonal flu shot','dr_smith','2023-10-13','yes',0,'HealthCenterA','no','','completed');
INSERT INTO health_service_immunization_record (record_id,patient_id,vaccine_name,dose_number,administration_date,administering_provider,lot_number,site_of_administration,reaction_observed,booster_required,next_due_date,clinical_notes,verified_by,verification_date,insurance_covered,cost_usd,clinic_location,follow_up_needed,follow_up_date,record_status) VALUES ('IM002','PAT045','COVID19','2','2022-06-20','nurse_lee','LOT98765','deltoid','mild_fever','yes','2023-06-20','Second dose completed','dr_adams','2022-06-21','yes',0,'HealthCenterB','yes','2023-06-18','pending');
INSERT INTO health_service_immunization_record (record_id,patient_id,vaccine_name,dose_number,administration_date,administering_provider,lot_number,site_of_administration,reaction_observed,booster_required,next_due_date,clinical_notes,verified_by,verification_date,insurance_covered,cost_usd,clinic_location,follow_up_needed,follow_up_date,record_status) VALUES ('IM003','PAT078','Tetanus','1','2021-03-05','nurse_kim','LOT55555','arm','none','yes','2026-03-05','Standard tetanus immunization','dr_lee','2021-03-06','no',25,'HealthCenterC','no','','completed');

-- Alumni Network Activity
CREATE TABLE alumni_network_activity
(
    activity_id             TEXT PRIMARY KEY,
    alumni_id               TEXT,
    activity_type           TEXT,
    activity_date           TEXT,
    description             TEXT,
    location                TEXT,
    organizer               TEXT,
    attendance_count        INTEGER,
    outcome                 TEXT,
    follow_up_action        TEXT,
    related_group_id        TEXT,
    sponsor_name            TEXT,
    budget_usd              REAL,
    media_coverage_link     TEXT,
    feedback_score          REAL,
    digital_materials_link  TEXT,
    notes                   TEXT,
    recorded_by             TEXT,
    record_timestamp        TEXT,
    status                  TEXT
);
INSERT INTO alumni_network_activity (activity_id,alumni_id,activity_type,activity_date,description,location,organizer,attendance_count,outcome,follow_up_action,related_group_id,sponsor_name,budget_usd,media_coverage_link,feedback_score,digital_materials_link,notes,recorded_by,record_timestamp,status) VALUES ('AA001','ALU012','Mentorship Session','2023-11-05','One‑on‑one career guidance','Online','career_center',1,'Guidance provided','schedule_next_meeting','AG001','TechCorp',0,'','4.5','/materials/aa001','Positive feedback','admin','2023-11-06','completed');
INSERT INTO alumni_network_activity (activity_id,alumni_id,activity_type,activity_date,description,location,organizer,attendance_count,outcome,follow_up_action,related_group_id,sponsor_name,budget_usd,media_coverage_link,feedback_score,digital_materials_link,notes,recorded_by,record_timestamp,status) VALUES ('AA002','ALU034','Panel Discussion','2023-10-20','Industry trends panel','Conference Hall','AlumniRelations',75,'Engaged audience','send_survey','AG002','HealthCorp',5000,'/media/aa002','4.2','/materials/aa002','Well attended','admin','2023-10-21','completed');
INSERT INTO alumni_network_activity (activity_id,alumni_id,activity_type,activity_date,description,location,organizer,attendance_count,outcome,follow_up_action,related_group_id,sponsor_name,budget_usd,media_coverage_link,feedback_score,digital_materials_link,notes,recorded_by,record_timestamp,status) VALUES ('AA003','ALU056','Fundraising Gala','2023-09-15','Annual fundraising event','Grand Ballroom','FundraisingCommittee',200,'Raised 25000','thank_you_letters','AG003','AlumniDonors',25000,'/media/aa003','4.8','/materials/aa003','Exceeded goal','admin','2023-09-16','completed');

-- Digital Asset License
CREATE TABLE digital_asset_license
(
    license_id              TEXT PRIMARY KEY,
    asset_id                TEXT,
    license_type            TEXT,
    issued_by               TEXT,
    issue_date              TEXT,
    expiration_date         TEXT,
    usage_scope             TEXT,
    restrictions            TEXT,
    cost_usd                REAL,
    renewal_required        TEXT,
    renewal_notice_period   INTEGER,
    authorized_user         TEXT,
    compliance_check_date   TEXT,
    compliance_status       TEXT,
    notes                   TEXT,
    attached_contract_id    TEXT,
    digital_signature       TEXT,
    last_updated            TEXT,
    status                  TEXT,
    audit_trail_id          TEXT
);
INSERT INTO digital_asset_license (license_id,asset_id,license_type,issued_by,issue_date,expiration_date,usage_scope,restrictions,cost_usd,renewal_required,renewal_notice_period,authorized_user,compliance_check_date,compliance_status,notes,attached_contract_id,digital_signature,last_updated,status,audit_trail_id) VALUES ('LIC001','DA001','RoyaltyFree','MediaDept','2022-01-01','2025-01-01','global','no_modification','0','yes','30','alice','2023-12-01','compliant','Standard license','CON001','sig123','2023-11-20','active','AT001');
INSERT INTO digital_asset_license (license_id,asset_id,license_type,issued_by,issue_date,expiration_date,usage_scope,restrictions,cost_usd,renewal_required,renewal_notice_period,authorized_user,compliance_check_date,compliance_status,notes,attached_contract_id,digital_signature,last_updated,status,audit_trail_id) VALUES ('LIC002','DA002','Academic','ResearchOffice','2021-06-15','2024-06-15','campus-only','no_commercial_use','500','yes','60','bob','2023-11-10','compliant','License for research data','CON002','sig456','2023-11-12','active','AT002');
INSERT INTO digital_asset_license (license_id,asset_id,license_type,issued_by,issue_date,expiration_date,usage_scope,restrictions,cost_usd,renewal_required,renewal_notice_period,authorized_user,compliance_check_date,compliance_status,notes,attached_contract_id,digital_signature,last_updated,status,audit_trail_id) VALUES ('LIC003','DA003','CreativeCommons','DesignDept','2020-03-20','2023-03-20','regional','attribution_required','0','no','0','carol','2023-02-28','expired','CC BY‑SA 4.0','CON003','sig789','2023-03-01','inactive','AT003');

-- Campus Energy Source
CREATE TABLE campus_energy_source
(
    source_id                TEXT PRIMARY KEY,
    source_type              TEXT,
    installation_date        TEXT,
    capacity_mw              REAL,
    provider_name            TEXT,
    location_description     TEXT,
    operational_status       TEXT,
    maintenance_schedule     TEXT,
    last_inspection_date    TEXT,
    next_inspection_due      TEXT,
    carbon_intensity_gco2_per_mwh REAL,
    cost_per_mwh_usd         REAL,
    contract_start_date      TEXT,
    contract_end_date        TEXT,
    renewable_percentage     REAL,
    backup_capacity_mw       REAL,
    notes                    TEXT,
    recorded_by              TEXT,
    record_timestamp         TEXT,
    status                   TEXT
);
INSERT INTO campus_energy_source (source_id,source_type,installation_date,capacity_mw,provider_name,location_description,operational_status,maintenance_schedule,last_inspection_date,next_inspection_due,carbon_intensity_gco2_per_mwh,cost_per_mwh_usd,contract_start_date,contract_end_date,renewable_percentage,backup_capacity_mw,notes,recorded_by,record_timestamp,status) VALUES ('ES001','Solar','2020-04-15',5.0,'SunPower','SouthRoof','active','annual','2023-09-01','2024-09-01','0','45','2020-04-01','2030-04-01','100',1.0','Added in Phase 2','admin','2023-11-01','operational');
INSERT INTO campus_energy_source (source_id,source_type,installation_date,capacity_mw,provider_name,location_description,operational_status,maintenance_schedule,last_inspection_date,next_inspection_due,carbon_intensity_gco2_per_mwh,cost_per_mwh_usd,contract_start_date,contract_end_date,renewable_percentage,backup_capacity_mw,notes,recorded_by,record_timestamp,status) VALUES ('ES002','NaturalGas','2015-08-01',20.0','EnergyCo','NorthPlant','active','biannual','2023-08-15','2024-08-15','350','30','2015-07-01','2025-07-01','0',5.0','Upgraded turbines 2022','admin','2023-11-02','operational');
INSERT INTO campus_energy_source (source_id,source_type,installation_date,capacity_mw,provider_name,location_description,operational_status,maintenance_schedule,last_inspection_date,next_inspection_due,carbon_intensity_gco2_per_mwh,cost_per_mwh_usd,contract_start_date,contract_end_date,renewable_percentage,backup_capacity_mw,notes,recorded_by,record_timestamp,status) VALUES ('ES003','Geothermal','2018-03-10',3.5','GeoEnergy','EastBasement','active','quarterly','2023-10-20','2024-04-20','50','60','2018-03-01','2033-03-01','80',0.5','Heat exchange system in place','admin','2023-11-03','operational');