-- Conference series information
CREATE TABLE conference_series
(
    series_id               TEXT PRIMARY KEY,
    series_name             TEXT,
    description             TEXT,
    start_year              INTEGER,
    end_year                INTEGER,
    frequency               TEXT,
    organizer               TEXT,
    contact_email           TEXT,
    website                 TEXT,
    headquarters_city       TEXT,
    headquarters_state      TEXT,
    total_events            INTEGER,
    average_attendance      INTEGER,
    budget_estimate         REAL,
    sponsor_level           TEXT,
    logo_url                TEXT,
    social_media_handle     TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    notes                   TEXT
);

INSERT INTO conference_series VALUES ('CS001','GlobalTechSummit','Annual tech summit',2010,2025,'Annual','TechOrg','info@techorg.com','www.globaltechsummit.com','SanFrancisco','CA',15,1200,50000.0,'Platinum','http://logo.com/gt.png','@gt_summit','2022-01-01','2022-12-31','Initial entry');
INSERT INTO conference_series VALUES ('CS002','HealthInnovationForum','Forum on health tech',2015,2025,'Biannual','HealthInc','contact@healthinc.com','www.healthforum.com','Boston','MA',20,800,30000.0,'Gold','http://logo.com/hif.png','@healthforum','2022-02-01','2022-12-31','Second entry');
INSERT INTO conference_series VALUES ('CS003','EduFutureCon','Conference for education future',2018,2025,'Annual','EduFuture','support@edufuture.org','www.edufuturecon.com','Chicago','IL',10,500,20000.0,'Silver','http://logo.com/efc.png','@edufuture','2022-03-01','2022-12-31','Third entry');

-- Equipment maintenance log
CREATE TABLE equipment_maintenance_log
(
    maintenance_id          TEXT PRIMARY KEY,
    equipment_id            TEXT,
    equipment_type          TEXT,
    serial_number           TEXT,
    maintenance_date        TEXT,
    technician_name         TEXT,
    technician_cert         TEXT,
    service_provider        TEXT,
    cost                    REAL,
    downtime_hours          REAL,
    parts_replaced          TEXT,
    next_due_date           TEXT,
    maintenance_type        TEXT,
    location                TEXT,
    department_responsible  TEXT,
    warranty_status         TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    status                  TEXT
);

INSERT INTO equipment_maintenance_log VALUES ('EML001','EQ1001','Projector','SN12345','2022-04-15','JohnDoe','CertA','TechServ','150.0','2.5','Lamp,Filter','2023-04-15','Preventive','MainHall','AV','Valid','Checked and cleaned','2022-04-15','2022-04-16','Completed');
INSERT INTO equipment_maintenance_log VALUES ('EML002','EQ2002','SoundSystem','SN67890','2022-05-10','JaneSmith','CertB','AudioFix','300.0','4.0','Amplifier','2023-05-10','Corrective','Auditorium','Audio','Expired','Replaced faulty amp','2022-05-10','2022-05-11','Completed');
INSERT INTO equipment_maintenance_log VALUES ('EML003','EQ3003','LightingRig','SN54321','2022-06-01','MikeBrown','CertC','LightCo','200.0','3.0','LEDPanel','2023-06-01','Preventive','StageLeft','Lighting','Valid','Firmware updated','2022-06-01','2022-06-02','Completed');

-- Media license records
CREATE TABLE media_license
(
    license_id              TEXT PRIMARY KEY,
    media_type              TEXT,
    title                   TEXT,
    creator_name            TEXT,
    provider                TEXT,
    license_start_date      TEXT,
    license_end_date        TEXT,
    cost                    REAL,
    usage_scope             TEXT,
    region_allowed          TEXT,
    exclusivity_flag        TEXT,
    renewal_required        TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    status                  TEXT,
    contact_email           TEXT,
    contact_phone           TEXT,
    contract_number         TEXT,
    compliance_check_date   TEXT
);

INSERT INTO media_license VALUES ('ML001','Video','CampusTour','MediaWorks','StreamNow','2022-01-01','2023-01-01','1200.0','Online','Global','No','Yes','Standard license','2022-01-01','2022-01-02','Active','licensing@mediaworks.com','5551234567','CN001','2022-06-01');
INSERT INTO media_license VALUES ('ML002','Image','EventBanner','PhotoPro','ImageHub','2022-03-15','2024-03-15','500.0','Print','US','Yes','No','Exclusive print rights','2022-03-15','2022-03-16','Active','contact@photopro.com','5559876543','CN002','2022-09-15');
INSERT INTO media_license VALUES ('ML003','Audio','ThemeMusic','SoundStudio','AudioStream','2022-05-01','2025-05-01','800.0','Broadcast','EU','No','Yes','Broadcast license','2022-05-01','2022-05-02','Active','info@soundstudio.com','5552223333','CN003','2022-11-01');

-- Academic collaboration projects
CREATE TABLE academic_collaboration
(
    project_id              TEXT PRIMARY KEY,
    project_name            TEXT,
    lead_institution        TEXT,
    partner_institution     TEXT,
    funding_agency          TEXT,
    grant_number            TEXT,
    start_date              TEXT,
    end_date                TEXT,
    total_budget            REAL,
    allocated_to_research   REAL,
    allocated_to_development REAL,
    status                  TEXT,
    principal_investigator  TEXT,
    co_pi_names             TEXT,
    research_area           TEXT,
    deliverables            TEXT,
    milestones              TEXT,
    reporting_frequency     TEXT,
    contact_email           TEXT,
    contact_phone           TEXT,
    notes                   TEXT
);

INSERT INTO academic_collaboration VALUES ('AC001','AIforEducation','UniversityA','InstituteB','NSF','GR12345','2022-01-01','2024-12-31','250000.0','150000.0','100000.0','Ongoing','DrAlice','DrBob,DrCarol','ArtificialIntelligence','Prototype,Paper','Phase1,Phase2','Quarterly','alice@univa.edu','5551112222','Initial phase started');
INSERT INTO academic_collaboration VALUES ('AC002','RenewableEnergyGrid','UniversityC','CollegeD','DOE','GR67890','2021-06-15','2025-06-14','400000.0','250000.0','150000.0','Ongoing','DrEve','DrFrank,DrGrace','EnergySystems','Testbed,Report','Design,Implementation','Biannual','eve@univc.edu','5553334444','Midterm review completed');
INSERT INTO academic_collaboration VALUES ('AC003','HealthDataAnalytics','UniversityE','HospitalF','NIH','GR24680','2020-09-01','2023-08-31','300000.0','200000.0','100000.0','Completed','DrHeidi','DrIvan,DrJudy','DataScience','Toolbox,Publications','DataCollection,Modeling','Annual','heidi@unie.edu','5555556666','Project concluded successfully');

-- Inventory audit records
CREATE TABLE inventory_audit
(
    audit_id                TEXT PRIMARY KEY,
    audit_date              TEXT,
    auditor_name            TEXT,
    department              TEXT,
    location                TEXT,
    total_items_count       INTEGER,
    discrepancies_found     INTEGER,
    variance_percentage     REAL,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    status                  TEXT,
    audit_type              TEXT,
    equipment_category      TEXT,
    high_value_items        INTEGER,
    low_value_items         INTEGER,
    corrective_actions      TEXT,
    next_audit_due          TEXT,
    contact_email           TEXT,
    contact_phone           TEXT,
    reference_document      TEXT
);

INSERT INTO inventory_audit VALUES ('IA001','2022-07-01','SamAudit','AV','MainHall',150,2,1.33,'Two items missing tags','2022-07-01','2022-07-02','Completed','Physical','Projector',5,145,'Tag replacement','2023-01-01','sam.audit@example.com','5557778888','DOC001');
INSERT INTO inventory_audit VALUES ('IA002','2022-08-15','LaraCheck','Lighting','StageLeft',80,0,0.0,'All items accounted for','2022-08-15','2022-08-16','Completed','Physical','LEDPanel',10,70,'N/A','2023-02-15','lara.check@example.com','5559990000','DOC002');
INSERT INTO inventory_audit VALUES ('IA003','2022-09-10','MikeReview','Audio','Auditorium',60,1,1.67,'One cable missing','2022-09-10','2022-09-11','Completed','Physical','Cable',2,58,'Replace cable','2023-03-10','mike.review@example.com','5551113333','DOC003');

-- Transport vehicle registry
CREATE TABLE transport_vehicle
(
    vehicle_id              TEXT PRIMARY KEY,
    license_plate           TEXT,
    vehicle_type            TEXT,
    make_model              TEXT,
    year_of_manufacture     INTEGER,
    capacity_seats          INTEGER,
    fuel_type               TEXT,
    mileage_km              REAL,
    service_expiration      TEXT,
    insurance_provider      TEXT,
    insurance_policy_number TEXT,
    registration_state      TEXT,
    assigned_driver_id      TEXT,
    maintenance_status      TEXT,
    last_inspection_date    TEXT,
    next_inspection_due     TEXT,
    gps_enabled             TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    status                  TEXT
);

INSERT INTO transport_vehicle VALUES ('TV001','ABC1234','Van','FordTransit',2019,12,'Diesel',45000.0','2023-12-31','InsureCo','POL12345','CA','DR001','UpToDate','2022-05-01','2023-05-01','Yes','Used for shuttle services','2022-01-01','2022-01-02','Active');
INSERT INTO transport_vehicle VALUES ('TV002','XYZ5678','Truck','VolvoFH',2020,2,'Diesel',30000.0','2024-06-30','SecureIns','POL67890','NY','DR002','UpToDate','2022-06-15','2023-06-15','Yes','Cargo transport','2022-02-01','2022-02-02','Active');
INSERT INTO transport_vehicle VALUES ('TV003','LMN2468','Sedan','ToyotaCamry',2021,5,'Hybrid',15000.0','2025-03-31','AutoCover','POL24680','TX','DR003','UpToDate','2022-09-10','2023-09-10','Yes','Executive transport','2022-03-01','2022-03-02','Active');

-- Catering supplier directory
CREATE TABLE catering_supplier
(
    supplier_id             TEXT PRIMARY KEY,
    supplier_name           TEXT,
    contact_name            TEXT,
    contact_email            TEXT,
    contact_phone           TEXT,
    address_line1           TEXT,
    address_line2           TEXT,
    city                    TEXT,
    state                   TEXT,
    zip_code                TEXT,
    cuisine_type            TEXT,
    dietary_options         TEXT,
    service_capacity        INTEGER,
    average_rating          REAL,
    contract_start_date     TEXT,
    contract_end_date       TEXT,
    payment_terms           TEXT,
    insurance_provider      TEXT,
    insurance_policy_number TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    status                  TEXT
);

INSERT INTO catering_supplier VALUES ('CS001','TasteDelights','AnnaChef','anna@tastedelights.com','5552221111','123 Food St','Suite10','LosAngeles','CA','90001','American','Vegan,GlutenFree',200,4.5,'2022-01-01','2024-12-31','Net30','SafeFood','IN12345','Preferred supplier','2022-01-01','2022-01-02','Active');
INSERT INTO catering_supplier VALUES ('CS002','SpiceRoute','BasilSpice','basil@spiceroute.com','5553332222','456 Flavor Ave','Floor2','NewYork','NY','10001','Asian','Vegetarian',150,4.2,'2021-06-15','2023-06-14','Net45','FoodSecure','IN67890','Secondary supplier','2021-06-15','2021-06-16','Active');
INSERT INTO catering_supplier VALUES ('CS003','GreenBite','LaraFresh','lara@greenbite.com','5554443333','789 Healthy Blvd','Unit5','Chicago','IL','60601','Mediterranean','Vegan',100,4.7,'2022-03-01','2025-02-28','Net30','HealthGuard','IN24680','Newly contracted','2022-03-01','2022-03-02','Active');

-- Event feedback metrics
CREATE TABLE event_feedback_metric
(
    metric_id               TEXT PRIMARY KEY,
    event_id                TEXT,
    respondent_id           TEXT,
    rating_overall          INTEGER,
    rating_content          INTEGER,
    rating_organization     INTEGER,
    rating_venue            INTEGER,
    comments                TEXT,
    submitted_at            TEXT,
    follow_up_required      TEXT,
    follow_up_action        TEXT,
    survey_version          TEXT,
    device_type             TEXT,
    ip_address              TEXT,
    language_preference     TEXT,
    anonymity_flag          TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    status                  TEXT,
    notes                   TEXT,
    analyst_responsible     TEXT
);

INSERT INTO event_feedback_metric VALUES ('EFM001','E001','U001',5,4,5,4,'Great event','2022-07-10','No','','V1','Mobile','192.168.1.10','EN','Yes','2022-07-10','2022-07-11','Completed','No issues','AnalystA');
INSERT INTO event_feedback_metric VALUES ('EFM002','E002','U002',3,3,2,3,'Average experience','2022-08-15','Yes','Contact for improvements','V1','Desktop','192.168.1.20','EN','Yes','2022-08-15','2022-08-16','Pending','Needs review','AnalystB');
INSERT INTO event_feedback_metric VALUES ('EFM003','E003','U003',4,5,4,5,'Excellent organization','2022-09-05','No','','V2','Tablet','192.168.1.30','EN','Yes','2022-09-05','2022-09-06','Completed','Positive feedback','AnalystC');

-- Safety training records
CREATE TABLE safety_training_record
(
    training_id             TEXT PRIMARY KEY,
    employee_id             TEXT,
    training_name           TEXT,
    training_date           TEXT,
    trainer_name            TEXT,
    duration_hours          REAL,
    certification_obtained  TEXT,
    expiration_date         TEXT,
    location                TEXT,
    mandatory_flag          TEXT,
    completion_status       TEXT,
    score_percent           REAL,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    status                  TEXT,
    department              TEXT,
    training_type           TEXT,
    material_version        TEXT,
    verification_method     TEXT,
    reviewer_id             TEXT
);

INSERT INTO safety_training_record VALUES ('STR001','EMP001','FireSafety','2022-04-20','JohnSafety','2.0','Yes','2024-04-20','Room101','Yes','Completed','95.0','All good','2022-04-20','2022-04-21','Active','Operations','Mandatory','v1','Quiz','REV001');
INSERT INTO safety_training_record VALUES ('STR002','EMP002','FirstAid','2022-05-15','JaneAid','3.0','Yes','2025-05-15','Room202','Yes','Completed','88.0','Needs refresher','2022-05-15','2022-05-16','Active','HR','Optional','v2','Practical','REV002');
INSERT INTO safety_training_record VALUES ('STR003','EMP003','ElectricalSafety','2022-06-10','MikeVolt','1.5','No','2023-06-10','Room303','Yes','Incomplete','0.0','Did not attend','2022-06-10','2022-06-11','Pending','Engineering','Mandatory','v1','Attendance','REV003');

-- Digital asset repository
CREATE TABLE digital_asset
(
    asset_id                TEXT PRIMARY KEY,
    asset_name              TEXT,
    asset_type              TEXT,
    file_extension          TEXT,
    file_size_kb            INTEGER,
    created_by              TEXT,
    created_at              TEXT,
    modified_at             TEXT,
    url                     TEXT,
    access_level            TEXT,
    usage_rights            TEXT,
    expiration_date         TEXT,
    related_event_id        TEXT,
    tags                    TEXT,
    description             TEXT,
    checksum                TEXT,
    version_number          TEXT,
    storage_location        TEXT,
    encryption_status       TEXT,
    notes                   TEXT,
    status                  TEXT,
    last_accessed           TEXT,
    retained_for_years      INTEGER,
    owner_department        TEXT
);

INSERT INTO digital_asset VALUES ('DA001','KeynoteSlide','Presentation','pptx',2048,'EMP001','2022-01-05','2022-01-10','http://assets.com/keynote.pptx','Public','Company','2025-01-01','E001','keynote,2022','Main keynote slides','ABC123','v1','S3','No','Initial upload','Active','2022-02-01',3,'Marketing');
INSERT INTO digital_asset VALUES ('DA002','EventPhoto01','Image','jpg',512,'EMP002','2022-02-15','2022-02-16','http://assets.com/photo01.jpg','Restricted','Company','2024-02-15','E002','photo,stage','Photo of opening ceremony','DEF456','v1','S3','No','High resolution','Active','2022-03-01',2,'Media');
INSERT INTO digital_asset VALUES ('DA003','SponsorVideo','Video','mp4',10240,'EMP003','2022-03-20','2022-03-22','http://assets.com/sponsor.mp4','Public','Company','2026-03-20','E003','sponsor,video','Sponsor promotional video','GHI789','v1','S3','Yes','Encoded','Active','2022-04-01',4,'Sponsorship');