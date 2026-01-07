-- Research collaborator profile
CREATE TABLE research_collaborator_profile (
    collaborator_id TEXT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    institution TEXT,
    department TEXT,
    email TEXT,
    phone TEXT,
    research_area TEXT,
    start_date TEXT,
    end_date TEXT,
    collaboration_type TEXT,
    funding_source TEXT,
    grant_id TEXT,
    project_id TEXT,
    role TEXT,
    contribution_percentage REAL,
    publications_count INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO research_collaborator_profile VALUES ('RC001','Alice','Smith','UniversityA','Physics','alice.smith@unia.edu','5551234','Quantum Computing','2022-01-15','2025-01-14','CoPI','GrantX','G001','P001','CoInvestigator',15.5,3,'Initial entry','2023-01-01','2023-01-01');
INSERT INTO research_collaborator_profile VALUES ('RC002','Bob','Jones','InstituteB','Biology','bob.jones@instb.org','5555678','Genomics','2021-06-01','2024-05-31','Partner','GrantY','G002','P002','DataAnalyst',10.0,5,'Second entry','2023-01-02','2023-01-02');
INSERT INTO research_collaborator_profile VALUES ('RC003','Carol','Lee','CollegeC','Chemistry','carol.lee@colc.edu','5559012','Catalysis','2020-09-10','2023-09-09','Consultant','GrantZ','G003','P003','Advisor',5.0,2,'Third entry','2023-01-03','2023-01-03');

-- Campus energy contract
CREATE TABLE campus_energy_contract (
    contract_id TEXT PRIMARY KEY,
    vendor_name TEXT,
    contract_start TEXT,
    contract_end TEXT,
    energy_type TEXT,
    price_per_kwh REAL,
    total_volume_kwh INTEGER,
    annual_cap INTEGER,
    rebate_amount REAL,
    service_level TEXT,
    contact_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    payment_terms TEXT,
    renewal_option TEXT,
    status TEXT,
    created_date TEXT,
    approved_by TEXT,
    notes TEXT,
    last_modified TEXT
);
INSERT INTO campus_energy_contract VALUES ('EC001','GreenPower Co','2022-07-01','2027-06-30','Electricity',0.11,500000,100000,2500,'Gold','Dana White','dana.white@greenpower.com','5551122','Net30','Automatic','Active','2022-06-15','Chief Financial Officer','Initial contract','2023-01-05');
INSERT INTO campus_energy_contract VALUES ('EC002','SolarBright Ltd','2021-01-01','2026-12-31','Solar','0.07',300000,80000,1500,'Silver','Eli Brown','eli.brown@solarbright.com','5553344','Net45','Manual','Active','2020-12-20','VP Operations','Renewed last year','2023-01-06');
INSERT INTO campus_energy_contract VALUES ('EC003','EcoGas Inc','2023-03-15','2028-03-14','Natural Gas',0.09,400000,90000,2000,'Platinum','Fiona Green','fiona.green@ecogas.com','5555566','Net15','Automatic','Pending','2023-03-01','Director Energy','Pending approval','2023-01-07');

-- Event media asset
CREATE TABLE event_media_asset (
    asset_id TEXT PRIMARY KEY,
    event_id TEXT,
    asset_type TEXT,
    file_name TEXT,
    file_path TEXT,
    mime_type TEXT,
    file_size_bytes INTEGER,
    upload_date TEXT,
    uploaded_by TEXT,
    description TEXT,
    license_type TEXT,
    usage_rights TEXT,
    resolution TEXT,
    duration_seconds INTEGER,
    thumbnail_path TEXT,
    tags TEXT,
    is_public TEXT,
    view_count INTEGER,
    download_count INTEGER,
    last_accessed TEXT
);
INSERT INTO event_media_asset VALUES ('MA001','E001','photo','opening_ceremony.jpg','/media/photos/opening_ceremony.jpg','image/jpeg',245678,'2023-02-10','media_admin','Opening ceremony photo','CC0','Unlimited','1920x1080',0,'/media/thumbnails/opening_ceremony_thumb.jpg','ceremony,opening', 'yes',120,30,'2023-02-20');
INSERT INTO event_media_asset VALUES ('MA002','E001','video','keynote_speech.mp4','/media/videos/keynote_speech.mp4','video/mp4',10485760,'2023-02-12','media_admin','Keynote speech recording','Restricted','Internal','1920x1080',3600,'/media/thumbnails/keynote_thumb.jpg','keynote,speech', 'no',45,10,'2023-02-22');
INSERT INTO event_media_asset VALUES ('MA003','E002','document','agenda.pdf','/media/docs/agenda.pdf','application/pdf',52428,'2023-02-08','media_admin','Event agenda','Public','Unlimited','',0,'','agenda,program','yes',200,50,'2023-02-19');

-- Member training record
CREATE TABLE member_training_record (
    record_id TEXT PRIMARY KEY,
    member_id TEXT,
    training_program_id TEXT,
    completion_date TEXT,
    expiration_date TEXT,
    status TEXT,
    score REAL,
    certificate_id TEXT,
    trainer_name TEXT,
    trainer_contact TEXT,
    location TEXT,
    hours REAL,
    modality TEXT,
    feedback_score REAL,
    comments TEXT,
    created_at TEXT,
    updated_at TEXT,
    archived_flag TEXT,
    notes TEXT,
    verification_code TEXT
);
INSERT INTO member_training_record VALUES ('TR001','M001','TP001','2023-01-15','2025-01-15','Completed',92.5,'CERT001','Laura Kim','5557788','Room 101',8,'Online',4.5','Good understanding','2023-01-10','2023-01-16','no','N/A','VC001');
INSERT INTO member_training_record VALUES ('TR002','M002','TP002','2022-11-20','2024-11-20','Completed',88.0,'CERT002','Mike Patel','5558899','Lab A',6,'InPerson',4.0','Satisfactory','2022-11-15','2022-11-21','no','Needs refresher','VC002');
INSERT INTO member_training_record VALUES ('TR003','M003','TP003','2023-02-05','2025-02-05','Pending',0,'','Sara Lee','5559900','Conference Hall',0,'Online',0,'','2023-01-30','2023-02-06','no','Waiting for completion','VC003');

-- Facility space utilization
CREATE TABLE facility_space_utilization (
    record_id TEXT PRIMARY KEY,
    facility_id TEXT,
    space_name TEXT,
    date TEXT,
    start_time TEXT,
    end_time TEXT,
    occupancy_count INTEGER,
    max_capacity INTEGER,
    utilization_percent REAL,
    event_id TEXT,
    reservation_id TEXT,
    purpose TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    lighting_level_lux INTEGER,
    noise_db REAL,
    cleaning_status TEXT,
    maintenance_required TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO facility_space_utilization VALUES ('FSU001','F001','Auditorium','2023-03-10','09:00','12:00',150,300,50.0,'E001','R001','Lecture',22.5,45.0,500,35.0,'Clean','No','Morning lecture','2023-03-05','2023-03-10');
INSERT INTO facility_space_utilization VALUES ('FSU002','F002','Gymnasium','2023-03-11','14:00','16:00',80,120,66.7','E002','R002','Exercise Class',20.0,40.0,300,45.0,'Clean','Yes','Floor polishing needed','2023-03-06','2023-03-11');
INSERT INTO facility_space_utilization VALUES ('FSU003','F003','Conference Room A','2023-03-12','10:00','11:30',12,20,60.0,'E003','R003','Team Meeting',21.0,42.0,400,30.0,'Clean','No','All good','2023-03-07','2023-03-12');

-- Sponsor engagement metric
CREATE TABLE sponsor_engagement_metric (
    metric_id TEXT PRIMARY KEY,
    sponsor_id TEXT,
    event_id TEXT,
    engagement_type TEXT,
    metric_value REAL,
    measurement_date TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_active TEXT,
    target_value REAL,
    variance REAL,
    weight REAL,
    comments TEXT,
    contact_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    contract_id TEXT,
    renewal_status TEXT,
    engagement_score REAL,
    brand_exposure INTEGER,
    social_impressions INTEGER,
    lead_generated INTEGER,
    follow_up_required TEXT
);
INSERT INTO sponsor_engagement_metric VALUES ('EM001','S001','E001','BoothVisits',350,'2023-02-15','High traffic','analyst1','2023-02-16','2023-02-16','yes',300,50,1.2,'Positive trend','Karen Wu','karen.wu@sponsor.com','5551239','C001','Renewed',85.0,5000,20000,150,'yes');
INSERT INTO sponsor_engagement_metric VALUES ('EM002','S002','E002','SocialMentions',1200,'2023-02-20','Strong online presence','analyst2','2023-02-21','2023-02-21','yes',1000,200,1.0,'Steady growth','Luis Gomez','luis.gomez@sponsor.com','5551240','C002','Pending',78.5,8000,35000,300,'no');
INSERT INTO sponsor_engagement_metric VALUES ('EM003','S003','E003','LeadCaptures',45,'2023-02-25','Moderate interest','analyst3','2023-02-26','2023-02-26','yes',50,-5,0.9','Below target','Mia Chen','mia.chen@sponsor.com','5551241','C003','Renewed',65.0,1200,5000,80,'yes');

-- Digital ad impression
CREATE TABLE digital_ad_impression (
    impression_id TEXT PRIMARY KEY,
    campaign_id TEXT,
    ad_variant TEXT,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    cpc REAL,
    cost REAL,
    date TEXT,
    platform TEXT,
    device_type TEXT,
    geo_region TEXT,
    audience_segment TEXT,
    view_time_seconds REAL,
    conversion_count INTEGER,
    revenue REAL,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    is_viewable TEXT,
    ad_format TEXT
);
INSERT INTO digital_ad_impression VALUES ('DI001','CAMP001','VariantA',15000,300,2.0,0.75,225.0,'2023-02-01','Facebook','Mobile','NorthAmerica','Students',5.2,20,500.0,'2023-01-31','2023-02-01','Good performance','yes','banner');
INSERT INTO digital_ad_impression VALUES ('DI002','CAMP001','VariantB',12000,180,1.5,0.80,144.0,'2023-02-01','Instagram','Desktop','Europe','Alumni',4.8,15,350.0,'2023-01-31','2023-02-01','Slightly lower CTR','yes','video');
INSERT INTO digital_ad_impression VALUES ('DI003','CAMP002','VariantA',20000,500,2.5,0.70,350.0,'2023-02-02','Twitter','Mobile','Asia','Prospects',6.0,30,800.0,'2023-02-01','2023-02-02','High engagement','yes','carousel');

-- Transport vehicle maintenance
CREATE TABLE transport_vehicle_maintenance (
    maintenance_id TEXT PRIMARY KEY,
    vehicle_id TEXT,
    maintenance_type TEXT,
    service_date TEXT,
    odometer_km INTEGER,
    provider_name TEXT,
    provider_contact TEXT,
    cost REAL,
    parts_replaced TEXT,
    warranty_expiration TEXT,
    next_service_due TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    mileage_since_last INTEGER,
    service_center TEXT,
    technician_name TEXT,
    technician_cert TEXT,
    service_order_number TEXT
);
INSERT INTO transport_vehicle_maintenance VALUES ('VM001','V001','Oil Change','2023-01-20',45200,'AutoCare Ltd','5552100',120.0,'Oil Filter',2024-01-20,'2023-07-20','Routine oil change','2023-01-20','2023-01-20','Completed',45200,'Main Service Center','John Doe','CERT123','SO1001');
INSERT INTO transport_vehicle_maintenance VALUES ('VM002','V002','Brake Inspection','2023-02-05',37600,'BrakePro Inc','5552200',250.0','Brake Pads,Rotors','2024-02-05','2023-08-05','Replaced front brake pads','2023-02-05','2023-02-05','Completed',37600,'North Service Hub','Anna Smith','CERT124','SO1002');
INSERT INTO transport_vehicle_maintenance VALUES ('VM003','V003','Tire Rotation','2023-02-15',28000,'TireWorks','5552300',80.0,'All Tires','2025-02-15','2023-08-15','Rotated tires for even wear','2023-02-15','2023-02-15','Completed',28000,'East Service Center','Mike Lee','CERT125','SO1003');

-- Grant disbursement schedule
CREATE TABLE grant_disbursement_schedule (
    schedule_id TEXT PRIMARY KEY,
    grant_id TEXT,
    disbursement_number INTEGER,
    amount REAL,
    scheduled_date TEXT,
    actual_date TEXT,
    status TEXT,
    account_number TEXT,
    fiscal_year TEXT,
    approval_code TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    disbursement_reason TEXT,
    cash_flow_category TEXT,
    reporting_required TEXT,
    attached_document_id TEXT,
    verified_by TEXT,
    verification_date TEXT,
    payment_method TEXT
);
INSERT INTO grant_disbursement_schedule VALUES ('DS001','G001',1,50000,'2023-03-01','2023-03-02','Completed','ACC001','FY2023','APPR001','First tranche','2023-02-20','2023-03-02','Research equipment','Capital','Yes','DOC001','FinanceMgr','2023-03-03','Wire Transfer');
INSERT INTO grant_disbursement_schedule VALUES ('DS002','G001',2,30000,'2023-06-01','2023-06-05','Completed','ACC001','FY2023','APPR002','Second tranche','2023-05-20','2023-06-05','Staff salaries','Operating','Yes','DOC002','FinanceMgr','2023-06-06','Check');
INSERT INTO grant_disbursement_schedule VALUES ('DS003','G002',1,75000,'2023-04-15','2023-04-16','Completed','ACC002','FY2023','APPR003','Initial payment','2023-04-01','2023-04-16','Field study','Operating','Yes','DOC003','FinanceMgr','2023-04-17','Wire Transfer');

-- Community service event
CREATE TABLE community_service_event (
    cs_event_id TEXT PRIMARY KEY,
    event_name TEXT,
    organizer_id TEXT,
    location TEXT,
    start_date TEXT,
    end_date TEXT,
    total_volunteers INTEGER,
    volunteer_hours REAL,
    beneficiary_organization TEXT,
    cause_area TEXT,
    budget_estimated REAL,
    budget_spent REAL,
    status TEXT,
    registration_deadline TEXT,
    contact_name TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    outcome_summary TEXT,
    photos_path TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO community_service_event VALUES ('CS001','Park Cleanup','M005','Central Park','2023-04-10','2023-04-10',40,120.0,'GreenFuture','Environment',2000,1800,'Completed','2023-04-01','Emily Davis','5553400','emily.davis@greenfuture.org','Removed 5 tons of litter','/photos/park_cleanup/','2023-03-20','2023-04-11');
INSERT INTO community_service_event VALUES ('CS002','Food Drive','M006','Community Center','2023-05-05','2023-05-05',60,180.0,'FoodBank','Hunger Relief',3000,2700,'Completed','2023-04-25','James Lee','5553500','james.lee@foodbank.org','Collected 2,500 meals','/photos/food_drive/','2023-04-15','2023-05-06');
INSERT INTO community_service_event VALUES ('CS003','Senior Tech Workshop','M007','Senior Center','2023-06-12','2023-06-12',25,50.0,'GoldenAges','Education',1500,1300,'Completed','2023-06-01','Linda Park','5553600','linda.park@goldenaages.org','Taught basic computer skills to 30 seniors','/photos/tech_workshop/','2023-05-30','2023-06-13');