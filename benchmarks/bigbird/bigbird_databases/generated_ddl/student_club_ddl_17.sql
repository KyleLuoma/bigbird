-- Table storing reports of incidents that occur on campus facilities
CREATE TABLE campus_incident_report
(
    incident_id            TEXT PRIMARY KEY,
    incident_date          TEXT,
    reported_by            TEXT,
    incident_type          TEXT,
    location_building      TEXT,
    location_room          TEXT,
    severity_level         TEXT,
    description            TEXT,
    immediate_action       TEXT,
    follow_up_needed       TEXT,
    status                 TEXT,
    assigned_to            TEXT,
    resolution_date        TEXT,
    comments               TEXT,
    reporter_contact_email TEXT,
    reporter_contact_phone TEXT,
    detection_method       TEXT,
    incident_category_code TEXT,
    risk_score             REAL,
    mitigation_plan        TEXT,
    created_timestamp      TEXT,
    updated_timestamp      TEXT,
    visibility_level       TEXT,
    compliance_flag        TEXT,
    audit_trail_id         TEXT
);

INSERT INTO campus_incident_report (incident_id,incident_date,reported_by,incident_type,location_building,location_room,severity_level,description,immediate_action,follow_up_needed,status,assigned_to,resolution_date,comments,reporter_contact_email,reporter_contact_phone,detection_method,incident_category_code,risk_score,mitigation_plan,created_timestamp,updated_timestamp,visibility_level,compliance_flag,audit_trail_id) VALUES ('INC001','2023-02-15','jdoe','Fire','Science Hall','Lab 210','High','Minor fire in chemical storage','Evacuated area','Yes','Resolved','facility_manager','2023-02-16','No further issues','jdoe@example.com','5551234','Smoke detector','FI001',9.5,'Install new suppression system','2023-02-15T08:30:00','2023-02-16T10:00:00','Public','Yes','AT001');
INSERT INTO campus_incident_report (incident_id,incident_date,reported_by,incident_type,location_building,location_room,severity_level,description,immediate_action,follow_up_needed,status,assigned_to,resolution_date,comments,reporter_contact_email,reporter_contact_phone,detection_method,incident_category_code,risk_score,mitigation_plan,created_timestamp,updated_timestamp,visibility_level,compliance_flag,audit_trail_id) VALUES ('INC002','2023-03-05','asmith','Power Outage','Engineering Center','Auditorium','Medium','Loss of power during ceremony','Switched to backup generator','Yes','In Progress','maintenance_lead','2023-03-07','Awaiting vendor response','asmith@example.com','5555678','Manual report','PO002',7.0,'Upgrade backup generators','2023-03-05T14:00:00','2023-03-06T09:15:00','Internal','No','AT002');
INSERT INTO campus_incident_report (incident_id,incident_date,reported_by,incident_type,location_building,location_room,severity_level,description,immediate_action,follow_up_needed,status,assigned_to,resolution_date,comments,reporter_contact_email,reporter_contact_phone,detection_method,incident_category_code,risk_score,mitigation_plan,created_timestamp,updated_timestamp,visibility_level,compliance_flag,audit_trail_id) VALUES ('INC003','2023-04-20','mbrown','Water Leak','Library','Basement','Low','Minor leak under floor drains','Notified facilities','No','Closed','janitor_supervisor','2023-04-21','Leak fixed','mbrown@example.com','5559101','Sensor alarm','WL003',3.2,'Regular pipe inspection','2023-04-20T11:45:00','2023-04-21T08:20:00','Public','Yes','AT003');

-- Table tracking inventory of merchandise sold at events
CREATE TABLE event_merchandise_inventory
(
    merch_id               TEXT PRIMARY KEY,
    event_id               TEXT,
    product_name           TEXT,
    sku                    TEXT,
    category               TEXT,
    vendor_name            TEXT,
    purchase_date          TEXT,
    cost_per_unit          REAL,
    retail_price           REAL,
    quantity_purchased     INTEGER,
    quantity_sold          INTEGER,
    quantity_on_hand       INTEGER,
    reorder_point          INTEGER,
    discontinued_flag      TEXT,
    size_variation         TEXT,
    color_variation        TEXT,
    material_type          TEXT,
    seasonal_flag          TEXT,
    promotional_bundle     TEXT,
    barcode                TEXT,
    location_storage       TEXT,
    last_audit_date        TEXT,
    audit_status           TEXT,
    created_timestamp      TEXT,
    updated_timestamp      TEXT,
    notes                  TEXT,
    tax_exempt_flag        TEXT,
    currency_code          TEXT
);

INSERT INTO event_merchandise_inventory (merch_id,event_id,product_name,sku,category,vendor_name,purchase_date,cost_per_unit,retail_price,quantity_purchased,quantity_sold,quantity_on_hand,reorder_point,discontinued_flag,size_variation,color_variation,material_type,seasonal_flag,promotional_bundle,barcode,location_storage,last_audit_date,audit_status,created_timestamp,updated_timestamp,notes,tax_exempt_flag,currency_code) VALUES ('M001','EVT100','Campus T-Shirt','TSH001','Apparel','PrintCo','2023-01-10',8.5,15.0,200,120,80,50,'No','M','Blue','Cotton','Yes','FallBundle','123456789012','Warehouse A','2023-02-01','Passed','2023-01-10T09:00:00','2023-02-01T10:30:00','Top seller','No','USD');
INSERT INTO event_merchandise_inventory (merch_id,event_id,product_name,sku,category,vendor_name,purchase_date,cost_per_unit,retail_price,quantity_purchased,quantity_sold,quantity_on_hand,reorder_point,discontinued_flag,size_variation,color_variation,material_type,seasonal_flag,promotional_bundle,barcode,location_storage,last_audit_date,audit_status,created_timestamp,updated_timestamp,notes,tax_exempt_flag,currency_code) VALUES ('M002','EVT101','Reusable Water Bottle','WTR001','Accessories','EcoSupply','2023-02-20',3.0,7.5,150,90,60,30,'No','Standard','Clear','Plastic','No','SummerPromo','987654321098','Warehouse B','2023-03-05','Passed','2023-02-20T11:15:00','2023-03-05T14:00:00','Eco friendly','No','USD');
INSERT INTO event_merchandise_inventory (merch_id,event_id,product_name,sku,category,vendor_name,purchase_date,cost_per_unit,retail_price,quantity_purchased,quantity_sold,quantity_on_hand,reorder_point,discontinued_flag,size_variation,color_variation,material_type,seasonal_flag,promotional_bundle,barcode,location_storage,last_audit_date,audit_status,created_timestamp,updated_timestamp,notes,tax_exempt_flag,currency_code) VALUES ('M003','EVT102','Alumni Mug','MUG001','Giftware','CeramicArts','2023-03-15',4.2,9.0,100,40,60,20,'No','Standard','White','Ceramic','No','WinterBundle','112233445566','Warehouse C','2023-04-01','Pending','2023-03-15T13:45:00','2023-04-01T09:20:00','Limited edition','Yes','USD');

-- Table holding certifications for sustainability initiatives
CREATE TABLE sustainability_certification
(
    certification_id          TEXT PRIMARY KEY,
    program_name              TEXT,
    certifying_body           TEXT,
    issue_date                TEXT,
    expiry_date               TEXT,
    certification_level       TEXT,
    scope_description         TEXT,
    audited_by                TEXT,
    audit_score               REAL,
    compliance_status         TEXT,
    renewal_required          TEXT,
    next_review_date          TEXT,
    contact_person            TEXT,
    contact_email             TEXT,
    contact_phone             TEXT,
    related_project_id        TEXT,
    carbon_reduction_target   REAL,
    water_savings_target      REAL,
    waste_diversion_target    REAL,
    energy_efficiency_rating  TEXT,
    documentation_url         TEXT,
    remarks                   TEXT,
    created_timestamp         TEXT,
    updated_timestamp         TEXT,
    active_flag               TEXT,
    region_code               TEXT,
    certification_category    TEXT
);

INSERT INTO sustainability_certification (certification_id,program_name,certifying_body,issue_date,expiry_date,certification_level,scope_description,audited_by,audit_score,compliance_status,renewal_required,next_review_date,contact_person,contact_email,contact_phone,related_project_id,carbon_reduction_target,water_savings_target,waste_diversion_target,energy_efficiency_rating,documentation_url,remarks,created_timestamp,updated_timestamp,active_flag,region_code,certification_category) VALUES ('CERT001','Green Campus','EcoCert International','2022-05-01','2025-05-01','Gold','All campus facilities','AuditTeamA',95.5,'Compliant','Yes','2025-04-30','Laura Green','laura.green@university.edu','5552222','PRJ200','15.0','200000','75','A+','http://certificates.university.edu/cert001','Annual review pending','2022-05-01T08:00:00','2023-01-10T12:30:00','Yes','US-NE','Environmental');
INSERT INTO sustainability_certification (certification_id,program_name,certifying_body,issue_date,expiry_date,certification_level,scope_description,audited_by,audit_score,compliance_status,renewal_required,next_review_date,contact_person,contact_email,contact_phone,related_project_id,carbon_reduction_target,water_savings_target,waste_diversion_target,energy_efficiency_rating,documentation_url,remarks,created_timestamp,updated_timestamp,active_flag,region_code,certification_category) VALUES ('CERT002','Renewable Energy Initiative','Green Standards Org','2021-09-15','2024-09-15','Silver','Solar installations across campus','AuditTeamB',88.0,'Compliant','No','2024-09-10','Mark Solar','mark.solar@university.edu','5553333','PRJ210','10.0','0','0','B','http://certificates.university.edu/cert002','Pending upgrade to Gold','2021-09-15T09:30:00','2022-08-20T11:45:00','Yes','US-NW','Energy');
INSERT INTO sustainability_certification (certification_id,program_name,certifying_body,issue_date,expiry_date,certification_level,scope_description,audited_by,audit_score,compliance_status,renewal_required,next_review_date,contact_person,contact_email,contact_phone,related_project_id,carbon_reduction_target,water_savings_target,waste_diversion_target,energy_efficiency_rating,documentation_url,remarks,created_timestamp,updated_timestamp,active_flag,region_code,certification_category) VALUES ('CERT003','Zero Waste Program','Sustainability Council','2023-01-20','2026-01-20','Bronze','Campus dining services','AuditTeamC',72.5,'Conditional','Yes','2025-12-15','Nina Waste','nina.waste@university.edu','5554444','PRJ220','5.0','50000','60','C','http://certificates.university.edu/cert003','Improvement plan in place','2023-01-20T10:10:00','2023-06-01T14:20:00','Yes','US-SE','Waste');

-- Table registering gifts pledged by alumni donors
CREATE TABLE alumni_gift_registry
(
    pledge_id               TEXT PRIMARY KEY,
    alumni_id               TEXT,
    pledge_date             TEXT,
    amount pledged          REAL,
    payment_method          TEXT,
    pledged_item_description TEXT,
    estimated_delivery_date TEXT,
    status                  TEXT,
    acknowledgment_sent    TEXT,
    thank_you_note_sent    TEXT,
    gift_type               TEXT,
    restricted_use_flag    TEXT,
    project_code            TEXT,
    donor_contact_email     TEXT,
    donor_contact_phone     TEXT,
    address_line1           TEXT,
    address_line2           TEXT,
    city                    TEXT,
    state                   TEXT,
    zip_code                TEXT,
    country                 TEXT,
    tax_receipt_number      TEXT,
    notes                   TEXT,
    created_timestamp       TEXT,
    updated_timestamp       TEXT,
    visibility_level        TEXT,
    legacy_flag             TEXT,
    currency_code           TEXT,
    exchange_rate_to_usd    REAL
);

INSERT INTO alumni_gift_registry (pledge_id,alumni_id,pledge_date,amount pleded,payment_method,pledged_item_description,estimated_delivery_date,status,acknowledgment_sent,thank_you_note_sent,gift_type,restricted_use_flag,project_code,donor_contact_email,donor_contact_phone,address_line1,address_line2,city,state,zip_code,country,tax_receipt_number,notes,created_timestamp,updated_timestamp,visibility_level,legacy_flag,currency_code,exchange_rate_to_usd) VALUES ('P001','ALU123','2023-07-10',2500.00,'Check','Scholarship endowment','2024-01-01','Pending','No','No','Monetary','No','SCH001','alice.smith@alumni.edu','5557777','123 Oak St','','Springfield','IL','62704','USA','TK001','First pledge','2023-07-10T09:00:00','2023-07-12T15:30:00','Public','No','USD',1.0);
INSERT INTO alumni_gift_registry (pledge_id,alumni_id,pledge_date,amount pleded,payment_method,pledged_item_description,estimated_delivery_date,status,acknowledgment_sent,thank_you_note_sent,gift_type,restricted_use_flag,project_code,donor_contact_email,donor_contact_phone,address_line1,address_line2,city,state,zip_code,country,tax_receipt_number,notes,created_timestamp,updated_timestamp,visibility_level,legacy_flag,currency_code,exchange_rate_to_usd) VALUES ('P002','ALU456','2023-08-15',5000.00,'Credit Card','Laboratory equipment','2023-12-15','Confirmed','Yes','Yes','In Kind','Yes','LAB007','bob.jones@alumni.edu','5558888','456 Maple Ave','Apt 4B','Centerville','OH','45459','USA','TK002','Equipment donation','2023-08-15T10:20:00','2023-08-16T11:45:00','Internal','No','USD',1.0);
INSERT INTO alumni_gift_registry (pledge_id,alumni_id,pledge_date,amount pleded,payment_method,pledged_item_description,estimated_delivery_date,status,acknowledgment_sent,thank_you_note_sent,gift_type,restricted_use_flag,project_code,donor_contact_email,donor_contact_phone,address_line1,address_line2,city,state,zip_code,country,tax_receipt_number,notes,created_timestamp,updated_timestamp,visibility_level,legacy_flag,currency_code,exchange_rate_to_usd) VALUES ('P003','ALU789','2023-09-05',1200.00,'Online','Art studio furniture','2024-02-20','Pending','No','No','Monetary','No','ART010','carol.white@alumni.edu','5559999','789 Pine Rd','','Laketown','MI','49684','USA','TK003','Pending acknowledgment','2023-09-05T14:05:00','2023-09-06T09:30:00','Public','Yes','USD',1.0);

-- Table cataloguing research data repositories
CREATE TABLE research_data_repository
(
    repository_id           TEXT PRIMARY KEY,
    repository_name         TEXT,
    hosting_institution     TEXT,
    url                     TEXT,
    storage_type            TEXT,
    total_capacity_tb       REAL,
    used_capacity_tb        REAL,
    access_policy           TEXT,
    data_retention_years    INTEGER,
    compliance_standards    TEXT,
    last_audit_date         TEXT,
    audit_status            TEXT,
    primary_contact_name    TEXT,
    primary_contact_email   TEXT,
    primary_contact_phone   TEXT,
    supported_file_formats  TEXT,
    encryption_enabled      TEXT,
    backup_frequency_daily  INTEGER,
    disaster_recovery_plan  TEXT,
    metadata_schema_version TEXT,
    doi_prefix              TEXT,
    citation_guidelines     TEXT,
    sustainability_plan     TEXT,
    created_timestamp       TEXT,
    updated_timestamp       TEXT,
    notes                   TEXT,
    active_flag             TEXT,
    region_code             TEXT,
    budget_allocation_usd   REAL
);

INSERT INTO research_data_repository (repository_id,repository_name,hosting_institution,url,storage_type,total_capacity_tb,used_capacity_tb,access_policy,data_retention_years,compliance_standards,last_audit_date,audit_status,primary_contact_name,primary_contact_email,primary_contact_phone,supported_file_formats,encryption_enabled,backup_frequency_daily,disaster_recovery_plan,metadata_schema_version,doi_prefix,citation_guidelines,sustainability_plan,created_timestamp,updated_timestamp,notes,active_flag,region_code,budget_allocation_usd) VALUES ('RDR001','OpenScienceData','University Library','http://data.university.edu','Object Storage',500.0,120.5,'Open',10,'FAIR',2023-03-15,'Passed','Dr Emily Rivera','emily.rivera@university.edu','5551111','CSV|JSON|XML','Yes',1,'Standard DR Plan v2','1.2','10.1234','Use citation format X','Carbon neutral by 2025','2023-01-10T08:00:00','2023-04-01T13:20:00','Main repository','Yes','US-NE',250000);
INSERT INTO research_data_repository (repository_id,repository_name,hosting_institution,url,storage_type,total_capacity_tb,used_capacity_tb,access_policy,data_retention_years,compliance_standards,last_audit_date,audit_status,primary_contact_name,primary_contact_email,primary_contact_phone,supported_file_formats,encryption_enabled,backup_frequency_daily,disaster_recovery_plan,metadata_schema_version,doi_prefix,citation_guidelines,sustainability_plan,created_timestamp,updated_timestamp,notes,active_flag,region_code,budget_allocation_usd) VALUES ('RDR002','BioDataVault','Medical School','http://biodata.university.edu','Hybrid Cloud',300.0,250.0,'Restricted',7,'HIPAA',2023-05-20,'Pending','Dr Alan Chen','alan.chen@university.edu','5552222','FASTQ|BAM|VCF','Yes',2,'Custom DR Plan','2.0','10.5678','Use citation format Y','Renewable energy powered','2023-02-05T09:30:00','2023-05-21T10:10:00','High utilization','Yes','US-MW',180000);
INSERT INTO research_data_repository (repository_id,repository_name,hosting_institution,url,storage_type,total_capacity_tb,used_capacity_tb,access_policy,data_retention_years,compliance_standards,last_audit_date,audit_status,primary_contact_name,primary_contact_email,primary_contact_phone,supported_file_formats,encryption_enabled,backup_frequency_daily,disaster_recovery_plan,metadata_schema_version,doi_prefix,citation_guidelines,sustainability_plan,created_timestamp,updated_timestamp,notes,active_flag,region_code,budget_allocation_usd) VALUES ('RDR003','SocialScienceArchive','School of Arts','http://ssa.university.edu','NAS',150.0,45.0,'Open',15,'ISO27001',2023-01-10,'Passed','Dr Maya Patel','maya.patel@university.edu','5553333','SPSS|CSV|DTA','Yes',1,'Standard DR Plan','1.0','10.9012','Use citation format Z','Aim for zero waste','2023-01-01T07:45:00','2023-03-12T12:00:00','Low traffic','Yes','US-SE',95000);

-- Table for community volunteer training programs
CREATE TABLE community_volunteer_training
(
    training_id               TEXT PRIMARY KEY,
    program_name              TEXT,
    provider_organization     TEXT,
    start_date                TEXT,
    end_date                  TEXT,
    duration_hours            INTEGER,
    delivery_method           TEXT,
    target_audience           TEXT,
    capacity                  INTEGER,
    enrollment_count          INTEGER,
    prerequisite              TEXT,
    certification_awarded    TEXT,
    trainer_name              TEXT,
    trainer_contact_email     TEXT,
    trainer_contact_phone     TEXT,
    location_venue            TEXT,
    materials_provided        TEXT,
    assessment_type           TEXT,
    pass_score                REAL,
    feedback_collected        TEXT,
    evaluation_summary        TEXT,
    budget_usd                REAL,
    created_timestamp         TEXT,
    updated_timestamp         TEXT,
    notes                     TEXT,
    active_flag               TEXT,
    region_code               TEXT,
    sponsor_name              TEXT,
    max_waitlist              INTEGER
);

INSERT INTO community_volunteer_training (training_id,program_name,provider_organization,start_date,end_date,duration_hours,delivery_method,target_audience,capacity,enrollment_count,prerequisite,certification_awarded,trainer_name,trainer_contact_email,trainer_contact_phone,location_venue,materials_provided,assessment_type,pass_score,feedback_collected,evaluation_summary,budget_usd,created_timestamp,updated_timestamp,notes,active_flag,region_code,sponsor_name,max_waitlist) VALUES ('TVT001','First Aid Basics','Red Cross','2023-06-01','2023-06-03',16,'In Person','Community Volunteers',30,28,'None','First Aid Certified','John Doe','john.doe@redcross.org','5554444','Health Center','Manuals|Bandages','Practical','85.0','Yes','Positive overall','5000','2023-04-15T09:00:00','2023-05-20T14:30:00','High demand','Yes','US-NE','Local Hospital',5);
INSERT INTO community_volunteer_training (training_id,program_name,provider_organization,start_date,end_date,duration_hours,delivery_method,target_audience,capacity,enrollment_count,prerequisite,certification_awarded,trainer_name,trainer_contact_email,trainer_contact_phone,location_venue,materials_provided,assessment_type,pass_score,feedback_collected,evaluation_summary,budget_usd,created_timestamp,updated_timestamp,notes,active_flag,region_code,sponsor_name,max_waitlist) VALUES ('TVT002','Environmental Stewardship','EcoGroups','2023-07-10','2023-07-12',12,'Online','Students','40',35,'None','Eco Steward Badge','Lisa Green','lisa.green@ecogroups.org','5555555','Virtual Classroom','Digital Guides','Quiz','80.0','Yes','Improved knowledge','3000','2023-05-01T10:15:00','2023-06-20T11:45:00','Well received','Yes','US-MW','EcoFund',3);
INSERT INTO community_volunteer_training (training_id,program_name,provider_organization,start_date,end_date,duration_hours,delivery_method,target_audience,capacity,enrollment_count,prerequisite,certification_awarded,trainer_name,trainer_contact_email,trainer_contact_phone,location_venue,materials_provided,assessment_type,pass_score,feedback_collected,evaluation_summary,budget_usd,created_timestamp,updated_timestamp,notes,active_flag,region_code,sponsor_name,max_waitlist) VALUES ('TVT003','Senior Support Skills','Community Center','2023-08-05','2023-08-07',18,'In Person','Adult Volunteers',25,22,'Basic Communication','Senior Care Certificate','Mark Brown','mark.brown@communitycenter.org','5556666','Community Hall','Handouts|Role Play','Practical','90.0','Yes','High satisfaction','4000','2023-06-10T08:30:00','2023-07-15T13:20:00','Need more sessions','Yes','US-SE','Senior Aid Org',2);

-- Table tracking digital banner advertisements
CREATE TABLE digital_banner_ad
(
    banner_id               TEXT PRIMARY KEY,
    campaign_name           TEXT,
    advertiser_name         TEXT,
    start_date              TEXT,
    end_date                TEXT,
    impression_goal         INTEGER,
    click_through_goal      INTEGER,
    cost_per_mille          REAL,
    total_spent_usd         REAL,
    creative_type           TEXT,
    dimensions_px           TEXT,
    landing_page_url        TEXT,
    target_audience         TEXT,
    geo_targeting           TEXT,
    device_targeting        TEXT,
    frequency_cap           INTEGER,
    viewability_rate        REAL,
    conversion_event        TEXT,
    conversion_value_usd    REAL,
    status                  TEXT,
    created_timestamp       TEXT,
    updated_timestamp       TEXT,
    notes                   TEXT,
    active_flag             TEXT,
    platform                TEXT,
    ad_group                TEXT,
    budget_usd              REAL,
    cpm_actual              REAL,
    ctr_actual              REAL
);

INSERT INTO digital_banner_ad (banner_id,campaign_name,advertiser_name,start_date,end_date,impression_goal,click_through_goal,cost_per_mille,total_spent_usd,creative_type,dimensions_px,landing_page_url,target_audience,geo_targeting,device_targeting,frequency_cap,viewability_rate,conversion_event,conversion_value_usd,status,created_timestamp,updated_timestamp,notes,active_flag,platform,ad_group,budget_usd,cpm_actual,ctr_actual) VALUES ('DBA001','Fall Open House','University Admissions','2023-09-01','2023-09-30',100000,2000,12.5,1250,'Static','728x90','http://university.edu/openhouse','Prospective Students','US-NE','Desktop',3,0.68,'Form Submit',5000,'Active','2023-08-15T09:00:00','2023-09-10T14:45:00','Running smoothly','Yes','GoogleAds','GroupA',1500,13.2,1.8);
INSERT INTO digital_banner_ad (banner_id,campaign_name,advertiser_name,start_date,end_date,impression_goal,click_through_goal,cost_per_mille,total_spent_usd,creative_type,dimensions_px,landing_page_url,target_audience,geo_targeting,device_targeting,frequency_cap,viewability_rate,conversion_event,conversion_value_usd,status,created_timestamp,updated_timestamp,notes,active_flag,platform,ad_group,budget_usd,cpm_actual,ctr_actual) VALUES ('DBA002','Spring Research Symposium','Research Office','2023-04-10','2023-04-20',50000,800,15.0,750,'Animated','300x250','http://university.edu/researchsymposium','Researchers','US-MW','Mobile',2,0.73,'Registration',2000,'Completed','2023-03-20T10:30:00','2023-04-15T12:00:00','Exceeded goals','Yes','FacebookAds','GroupB',1000,15.5,1.6);
INSERT INTO digital_banner_ad (banner_id,campaign_name,advertiser_name,start_date,end_date,impression_goal,click_through_goal,cost_per_mille,total_spent_usd,creative_type,dimensions_px,landing_page_url,target_audience,geo_targeting,device_targeting,frequency_cap,viewability_rate,conversion_event,conversion_value_usd,status,created_timestamp,updated_timestamp,notes,active_flag,platform,ad_group,budget_usd,cpm_actual,ctr_actual) VALUES ('DBA003','Alumni Giving Day','Alumni Relations','2023-11-01','2023-11-03',200000,4000,10.0,2000,'Static','160x600','http://university.edu/alumnigiving','Alumni','US-ALL','All',4,0.80,'Donation',15000,'Active','2023-10-15T11:20:00','2023-11-02T16:40:00','High engagement','Yes','LinkedInAds','GroupC',2500,10.5,2.0);

-- Table detailing transportation incident logs
CREATE TABLE transportation_incident_log
(
    incident_log_id         TEXT PRIMARY KEY,
    vehicle_id              TEXT,
    incident_date           TEXT,
    incident_time           TEXT,
    location_description    TEXT,
    incident_type           TEXT,
    severity                TEXT,
    description             TEXT,
    reported_by             TEXT,
    action_taken            TEXT,
    downtime_minutes        INTEGER,
    cost_estimate_usd       REAL,
    insurance_claim_number  TEXT,
    police_report_filed     TEXT,
    follow_up_required      TEXT,
    status                  TEXT,
    resolved_date           TEXT,
    assigned_investigator   TEXT,
    investigation_summary   TEXT,
    corrective_measures     TEXT,
    created_timestamp       TEXT,
    updated_timestamp       TEXT,
    notes                   TEXT,
    active_flag             TEXT,
    region_code             TEXT,
    transport_department    TEXT,
    risk_rating             REAL,
    compliance_status       TEXT
);

INSERT INTO transportation_incident_log (incident_log_id,vehicle_id,incident_date,incident_time,location_description,incident_type,severity,description,reported_by,action_taken,downtime_minutes,cost_estimate_usd,insurance_claim_number,police_report_filed,follow_up_required,status,resolved_date,assigned_investigator,investigation_summary,corrective_measures,created_timestamp,updated_timestamp,notes,active_flag,region_code,transport_department,risk_rating,compliance_status) VALUES ('TIL001','VHC100','2023-05-12','08:30','Main parking lot','Collision','Medium','Rear-end minor collision','Driver A','Tow to service center',120,800.00,'CLM555','Yes','Yes','Closed','2023-05-14','Investigator Jane','No injuries, vehicle repaired','Install rear sensors','2023-05-12T09:00:00','2023-05-15T10:30:00','Resolved quickly','Yes','US-NE','Fleet Ops',3.2,'Compliant');
INSERT INTO transportation_incident_log (incident_log_id,vehicle_id,incident_date,incident_time,location_description,incident_type,severity,description,reported_by,action_taken,downtime_minutes,cost_estimate_usd,insurance_claim_number,police_report_filed,follow_up_required,status,resolved_date,assigned_investigator,investigation_summary,corrective_measures,created_timestamp,updated_timestamp,notes,active_flag,region_code,transport_department,risk_rating,compliance_status) VALUES ('TIL002','VHC205','2023-06-20','14:15','Campus bridge','Flat Tire','Low','Tire puncture on bridge','Driver B','Replace tire on site',30,150.00,'CLM562','No','No','Closed','2023-06-20','Investigator Sam','Tire inspected, replaced','Add tire pressure monitoring','2023-06-20T14:45:00','2023-06-20T15:30:00','Routine issue','Yes','US-MW','Fleet Ops',1.1,'Compliant');
INSERT INTO transportation_incident_log (incident_log_id,vehicle_id,incident_date,incident_time,location_description,incident_type,severity,description,reported_by,action_taken,downtime_minutes,cost_estimate_usd,insurance_claim_number,police_report_filed,follow_up_required,status,resolved_date,assigned_investigator,investigation_summary,corrective_measures,created_timestamp,updated_timestamp,notes,active_flag,region_code,transport_department,risk_rating,compliance_status) VALUES ('TIL003','VHC310','2023-07-05','19:00','Gym parking area','Unauthorized Use','High','Vehicle used without permission','Security','Vehicle towed','0',0.00,'','No','Yes','Open','','Investigator Kim','Investigation ongoing','Review access controls','2023-07-05T19:30:00','2023-07-06T08:00:00','Pending disciplinary action','Yes','US-SE','Fleet Ops',4.5,'Pending');

-- Table for facility space booking requests
CREATE TABLE facility_space_booking
(
    booking_id                TEXT PRIMARY KEY,
    request_date              TEXT,
    requested_by              TEXT,
    department                TEXT,
    contact_email             TEXT,
    contact_phone             TEXT,
    space_name                TEXT,
    building                  TEXT,
    floor_number              INTEGER,
    room_number               TEXT,
    start_datetime            TEXT,
    end_datetime              TEXT,
    purpose_description       TEXT,
    attendance_estimate       INTEGER,
    equipment_needed          TEXT,
    catering_required         TEXT,
    special_requirements      TEXT,
    approval_status           TEXT,
    approved_by               TEXT,
    approval_date             TEXT,
    usage_fee_usd             REAL,
    billing_account           TEXT,
    created_timestamp         TEXT,
    updated_timestamp         TEXT,
    notes                     TEXT,
    active_flag               TEXT,
    region_code               TEXT,
    funding_source            TEXT,
    recurring_flag            TEXT,
    max_capacity              INTEGER
);

INSERT INTO facility_space_booking (booking_id,request_date,requested_by,department,contact_email,contact_phone,space_name,building,floor_number,room_number,start_datetime,end_datetime,purpose_description,attendance_estimate,equipment_needed,catering_required,special_requirements,approval_status,approved_by,approval_date,usage_fee_usd,billing_account,created_timestamp,updated_timestamp,notes,active_flag,region_code,funding_source,recurring_flag,max_capacity) VALUES ('BK001','2023-08-01','alice.wilson','Computer Science','alice.wilson@university.edu','5557777','Lecture Hall','Science Hall',2,'210','2023-09-10 09:00','2023-09-10 12:00','Guest Lecture on AI','150','Projector|Microphone','No','None','Pending','','','0','DeptCS','2023-08-01T10:00:00','2023-08-02T11:15:00','First request','Yes','US-NE','Grant','No',200);
INSERT INTO facility_space_booking (booking_id,request_date,requested_by,department,contact_email,contact_phone,space_name,building,floor_number,room_number,start_datetime,end_datetime,purpose_description,attendance_estimate,equipment_needed,catering_required,special_requirements,approval_status,approved_by,approval_date,usage_fee_usd,billing_account,created_timestamp,updated_timestamp,notes,active_flag,region_code,funding_source,recurring_flag,max_capacity) VALUES ('BK002','2023-08-15','bob.martin','Marketing','bob.martin@university.edu','5558888','Conference Room','Administration','1','A101','2023-10-05 14:00','2023-10-05 17:00','Product Launch Planning','30','Whiteboard|Speakerphone','Yes','Coffee and Snacks','Approved','Dana Lee','2023-08-20','250','DeptMkt','2023-08-15T09:30:00','2023-08-22T13:45:00','Approved quickly','Yes','US-MW','Department Budget','No',40);
INSERT INTO facility_space_booking (booking_id,request_date,requested_by,department,contact_email,contact_phone,space_name,building,floor_number,room_number,start_datetime,end_datetime,purpose_description,attendance_estimate,equipment_needed,catering_required,special_requirements,approval_status,approved_by,approval_date,usage_fee_usd,billing_account,created_timestamp,updated_timestamp,notes,active_flag,region_code,funding_source,recurring_flag,max_capacity) VALUES ('BK003','2023-09-10','carol.tan','Student Affairs','carol.tan@university.edu','5559999','Auditorium','Student Center',0,'Aud1','2023-11-20 10:00','2023-11-20 13:00','Alumni Reunion','300','Stage Lighting|PA System','Yes','Vegetarian Meal','Pending','','','0','DeptSA','2023-09-10T12:00:00','2023-09-12T15:20:00','Awaiting budget clearance','Yes','US-SE','Alumni Fund','Yes',350);

-- Table tracking scholarship application records
CREATE TABLE scholarship_application
(
    application_id            TEXT PRIMARY KEY,
    applicant_id              TEXT,
    scholarship_name          TEXT,
    application_date          TEXT,
    academic_year             TEXT,
    major_id                  TEXT,
    gpa                       REAL,
    semester_credits          INTEGER,
    extracurriculars          TEXT,
    essay_submitted           TEXT,
    recommendation_count      INTEGER,
    financial_need_score      REAL,
    status                    TEXT,
    decision_date             TEXT,
    award_amount_usd          REAL,
    disbursement_schedule    TEXT,
    renewal_required          TEXT,
    renewal_criteria          TEXT,
    contact_email             TEXT,
    contact_phone             TEXT,
    created_timestamp         TEXT,
    updated_timestamp         TEXT,
    notes                     TEXT,
    active_flag               TEXT,
    reviewer_id               TEXT,
    review_score              REAL,
    fund_source               TEXT,
    legacy_flag               TEXT,
    expiry_date               TEXT
);

INSERT INTO scholarship_application (application_id,applicant_id,scholarship_name,application_date,academic_year,major_id,gpa,semester_credits,extracurriculars,essay_submitted,recommendation_count,financial_need_score,status,decision_date,award_amount_usd,disbursement_schedule,renewal_required,renewal_criteria,contact_email,contact_phone,created_timestamp,updated_timestamp,notes,active_flag,reviewer_id,review_score,fund_source,legacy_flag,expiry_date) VALUES ('APP001','STU123','STEM Excellence','2023-02-15','2023-2024','MAJ001',3.85,15,'Robotics Club','Yes',2,8.5,'Pending','','0','Annual','Yes','Maintain GPA 3.5','student1@university.edu','5551111','2023-02-10T09:30:00','2023-02-20T11:45:00','First review','Yes','REV01',0.0,'University Fund','No','2025-06-30');
INSERT INTO scholarship_application (application_id,applicant_id,scholarship_name,application_date,academic_year,major_id,gpa,semester_credits,extracurriculars,essay_submitted,recommendation_count,financial_need_score,status,decision_date,award_amount_usd,disbursement_schedule,renewal_required,renewal_criteria,contact_email,contact_phone,created_timestamp,updated_timestamp,notes,active_flag,reviewer_id,review_score,fund_source,legacy_flag,expiry_date) VALUES ('APP002','STU456','Community Leadership','2023-03-01','2023-2024','MAJ005',3.60,12,'Volunteer Tutoring','Yes',3,6.0,'Approved','2023-04-10',1500,'Semester','No','','student2@university.edu','5552222','2023-02-28T08:45:00','2023-04-12T10:20:00','Awarded based on service','Yes','REV02',9.2,'Donor Fund','No','2025-12-31');
INSERT INTO scholarship_application (application_id,applicant_id,scholarship_name,application_date,academic_year,major_id,gpa,semester_credits,extracurriculars,essay_submitted,recommendation_count,financial_need_score,status,decision_date,award_amount_usd,disbursement_schedule,renewal_required,renewal_criteria,contact_email,contact_phone,created_timestamp,updated_timestamp,notes,active_flag,reviewer_id,review_score,fund_source,legacy_flag,expiry_date) VALUES ('APP003','STU789','Arts Merit','2023-01-20','2023-2024','MAJ012',3.92,18,'Student Art Society','Yes',1,4.0,'Rejected','2023-02-28',0,'','No','','student3@university.edu','5553333','2023-01-15T07:30:00','2023-02-28T16:00:00','Did not meet criteria','Yes','REV03',5.5,'University Fund','Yes','2025-05-15');