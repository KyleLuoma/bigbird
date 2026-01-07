-- Campus research center information
CREATE TABLE campus_research_center
(
    center_id               TEXT PRIMARY KEY,
    name                    TEXT,
    building                TEXT,
    floor                   INTEGER,
    established_year        INTEGER,
    director_id             TEXT,
    primary_focus           TEXT,
    funding_source          TEXT,
    annual_budget           REAL,
    staff_count             INTEGER,
    lab_count               INTEGER,
    student_count           INTEGER,
    collaboration_partner   TEXT,
    website                 TEXT,
    email                   TEXT,
    phone                   TEXT,
    address                 TEXT,
    city                    TEXT,
    state                   TEXT,
    zip                     INTEGER,
    accreditation_status    TEXT,
    notes                   TEXT
);

INSERT INTO campus_research_center (center_id, name, building, floor, established_year, director_id, primary_focus, funding_source, annual_budget, staff_count, lab_count, student_count, collaboration_partner, website, email, phone, address, city, state, zip, accreditation_status, notes)
VALUES ('CR001','BioTech Center','Science Hall',2,2005,'M001','Biotech','Federal Grant',1500000,45,12,120,'Partner Univ','bio.tech.edu','contact@bio.tech.edu','5551234567','123 Science Rd','Springfield','IL',62704,'Accredited','Initial setup');

INSERT INTO campus_research_center (center_id, name, building, floor, established_year, director_id, primary_focus, funding_source, annual_budget, staff_count, lab_count, student_count, collaboration_partner, website, email, phone, address, city, state, zip, accreditation_status, notes)
VALUES ('CR002','AI Innovation Lab','Tech Center',3,2012,'M025','Artificial Intelligence','Corporate Sponsorship',2000000,30,8,85,'AI Consortium','ai.lab.edu','ai@lab.edu','5559876543','456 Innovation Ave','Riverdale','CA',90210,'Accredited','Expanded in 2020');

INSERT INTO campus_research_center (center_id, name, building, floor, established_year, director_id, primary_focus, funding_source, annual_budget, staff_count, lab_count, student_count, collaboration_partner, website, email, phone, address, city, state, zip, accreditation_status, notes)
VALUES ('CR003','Renewable Energy Hub','Eco Building',1,2018,'M078','Sustainable Energy','State Grant',1200000,25,5,60,'GreenTech Alliance','renew.energy.edu','energy@hub.edu','5551122334','789 Green St','Laketown','TX',73301,'Pending','Pilot phase');

-- Sustainability initiative programs
CREATE TABLE sustainability_initiative_program
(
    program_id                TEXT PRIMARY KEY,
    title                     TEXT,
    start_date                TEXT,
    end_date                  TEXT,
    lead_department           TEXT,
    coordinator_id            TEXT,
    budget_amount             REAL,
    target_metric             TEXT,
    current_progress          REAL,
    status                    TEXT,
    carbon_reduction_target   REAL,
    waste_reduction_target    REAL,
    water_saving_target       REAL,
    number_of_projects        INTEGER,
    stakeholder_group         TEXT,
    description               TEXT,
    reporting_frequency       TEXT,
    last_report_date          TEXT,
    responsible_officer       TEXT,
    contact_email             TEXT,
    notes                     TEXT,
    external_funding          TEXT
);

INSERT INTO sustainability_initiative_program (program_id, title, start_date, end_date, lead_department, coordinator_id, budget_amount, target_metric, current_progress, status, carbon_reduction_target, waste_reduction_target, water_saving_target, number_of_projects, stakeholder_group, description, reporting_frequency, last_report_date, responsible_officer, contact_email, notes, external_funding)
VALUES ('SI001','Zero Waste Campus','2021-01-01','2025-12-31','Facilities','M045',500000,'Waste Diversion %',45,'Active',0,30,0,12,'Students','Aim to divert 90% waste from landfill','Quarterly','2023-06-30','J Smith','jsmith@university.edu','Progressing well','Yes');

INSERT INTO sustainability_initiative_program (program_id, title, start_date, end_date, lead_department, coordinator_id, budget_amount, target_metric, current_progress, status, carbon_reduction_target, waste_reduction_target, water_saving_target, number_of_projects, stakeholder_group, description, reporting_frequency, last_report_date, responsible_officer, contact_email, notes, external_funding)
VALUES ('SI002','Campus Solar Expansion','2022-03-15','2024-12-31','Engineering','M089',750000,'Solar Capacity (kW)',1200,'Active',15,0,0,8,'Faculty','Install additional 2MW solar panels','Biannual','2023-04-15','L Chen','lchen@university.edu','On schedule','No');

INSERT INTO sustainability_initiative_program (program_id, title, start_date, end_date, lead_department, coordinator_id, budget_amount, target_metric, current_progress, status, carbon_reduction_target, waste_reduction_target, water_saving_target, number_of_projects, stakeholder_group, description, reporting_frequency, last_report_date, responsible_officer, contact_email, notes, external_funding)
VALUES ('SI003','Water Conservation Initiative','2020-09-01','2023-08-31','Operations','M012',300000,'Gallons Saved',250000,'Completed',0,0,20,5,'Administration','Upgrade fixtures and implement rainwater harvesting','Annual','2023-08-20','M Patel','mpatel@university.edu','Achieved target','State Grant');

-- Alumni network groups
CREATE TABLE alumni_network_group
(
    group_id               TEXT PRIMARY KEY,
    name                   TEXT,
    created_date           TEXT,
    founder_member_id      TEXT,
    region                 TEXT,
    focus_area             TEXT,
    member_count           INTEGER,
    active_events          INTEGER,
    newsletter_opt_in      TEXT,
    website                TEXT,
    description            TEXT,
    meeting_frequency      TEXT,
    last_meeting_date      TEXT,
    next_meeting_date      TEXT,
    coordinator_id         TEXT,
    social_media_handle    TEXT,
    contact_phone          TEXT,
    email                  TEXT,
    parent_organization    TEXT,
    budget                 REAL,
    notes                  TEXT,
    status                 TEXT
);

INSERT INTO alumni_network_group (group_id, name, created_date, founder_member_id, region, focus_area, member_count, active_events, newsletter_opt_in, website, description, meeting_frequency, last_meeting_date, next_meeting_date, coordinator_id, social_media_handle, contact_phone, email, parent_organization, budget, notes, status)
VALUES ('AG001','Midwest Engineers','2015-04-12','M203','Midwest','Engineering',350,6,'Yes','midwestengineers.org','Connecting engineers across the Midwest','Quarterly','2023-05-20','2023-09-20','M210','@midwesteng','5552211334','engmidwest@alumni.edu','Alumni Association',15000,'Annual picnic added','Active');

INSERT INTO alumni_network_group (group_id, name, created_date, founder_member_id, region, focus_area, member_count, active_events, newsletter_opt_in, website, description, meeting_frequency, last_meeting_date, next_meeting_date, coordinator_id, social_media_handle, contact_phone, email, parent_organization, budget, notes, status)
VALUES ('AG002','Global Business Leaders','2010-08-01','M578','International','Business',1200,12,'Yes','globalbizleaders.org','Network for alumni in global commerce','Monthly','2023-06-10','2023-07-10','M590','@globalbiz','5553324455','bizglobal@alumni.edu','Alumni Association',50000,'Webinar series launched','Active');

INSERT INTO alumni_network_group (group_id, name, created_date, founder_member_id, region, focus_area, member_count, active_events, newsletter_opt_in, website, description, meeting_frequency, last_meeting_date, next_meeting_date, coordinator_id, social_media_handle, contact_phone, email, parent_organization, budget, notes, status)
VALUES ('AG003','Arts & Humanities Circle','2018-02-20','M801','Northeast','Arts',220,4,'No','artsnh.org','Promoting arts collaborations','Biannual','2023-03-15','2023-09-15','M805','@artsnh','5554433221','artsnh@alumni.edu','Alumni Association',8000,'Planning gallery tour','Active');

-- Campus artifact catalog
CREATE TABLE campus_artifact_catalog
(
    artifact_id            TEXT PRIMARY KEY,
    name                   TEXT,
    description            TEXT,
    origin                 TEXT,
    period                 TEXT,
    material               TEXT,
    dimensions             TEXT,
    weight                 REAL,
    location_building      TEXT,
    location_room          TEXT,
    acquisition_date       TEXT,
    acquired_from          TEXT,
    value_estimate         REAL,
    conservation_status    TEXT,
    last_conservation_date TEXT,
    curator_id             TEXT,
    display_status         TEXT,
    catalog_number         TEXT,
    exhibition_history     TEXT,
    image_url              TEXT,
    insurance_policy       TEXT,
    notes                  TEXT
);

INSERT INTO campus_artifact_catalog (artifact_id, name, description, origin, period, material, dimensions, weight, location_building, location_room, acquisition_date, acquired_from, value_estimate, conservation_status, last_conservation_date, curator_id, display_status, catalog_number, exhibition_history, image_url, insurance_policy, notes)
VALUES ('AR001','Bronze Statue','A small bronze statue of a scholar','Greece','Classical','Bronze','12x8x5','3.2','Humanities Hall','Room 101','2001-05-12','Estate Sale',25000,'Good','2022-11-05','M301','On Display','CN-001','Summer Exhibition 2022','http://images.university.edu/artifacts/ar001.jpg','Policy-123','N/A');

INSERT INTO campus_artifact_catalog (artifact_id, name, description, origin, period, material, dimensions, weight, location_building, location_room, acquisition_date, acquired_from, value_estimate, conservation_status, last_conservation_date, curator_id, display_status, catalog_number, exhibition_history, image_url, insurance_policy, notes)
VALUES ('AR002','Medieval Manuscript','Illuminated manuscript of poetry','France','Medieval','Parchment','9x12','0.5','Library Annex','Room 202','1995-09-30','Donation','80000','Fair','2021-06-18','M312','In Storage','CN-002','Rare Books Exhibit 2020','http://images.university.edu/artifacts/ar002.jpg','Policy-456','Handled with gloves');

INSERT INTO campus_artifact_catalog (artifact_id, name, description, origin, period, material, dimensions, weight, location_building, location_room, acquisition_date, acquired_from, value_estimate, conservation_status, last_conservation_date, curator_id, display_status, catalog_number, exhibition_history, image_url, insurance_policy, notes)
VALUES ('AR003','Indigenous Textile','Handwoven textile pattern','Mexico','Pre-Columbian','Cotton','24x30','1.1','Cultural Center','Room 303','2010-03-15','Acquisition Fund',12000,'Excellent','2023-02-10','M325','On Loan','CN-003','Culture Fest 2021','http://images.university.edu/artifacts/ar003.jpg','Policy-789','Loan to museum');

-- Technology incubator funding rounds
CREATE TABLE technology_incubator_funding_round
(
    round_id               TEXT PRIMARY KEY,
    incubator_id           TEXT,
    round_name             TEXT,
    start_date             TEXT,
    end_date               TEXT,
    total_funds            REAL,
    number_of_startups     INTEGER,
    lead_investor          TEXT,
    co_investor            TEXT,
    eligibility_criteria   TEXT,
    application_deadline   TEXT,
    selected_startups      TEXT,
    follow_on_funds        REAL,
    management_fee         REAL,
    reporting_requirements TEXT,
    contact_person         TEXT,
    contact_email          TEXT,
    notes                  TEXT,
    status                 TEXT,
    evaluation_score       REAL,
    fund_disbursement_date TEXT,
    program_manager_id     TEXT
);

INSERT INTO technology_incubator_funding_round (round_id, incubator_id, round_name, start_date, end_date, total_funds, number_of_startups, lead_investor, co_investor, eligibility_criteria, application_deadline, selected_startups, follow_on_funds, management_fee, reporting_requirements, contact_person, contact_email, notes, status, evaluation_score, fund_disbursement_date, program_manager_id)
VALUES ('TR001','INC01','Spring 2023 Seed','2023-02-01','2023-05-31',1000000,15,'VentureCo','AngelGroup','Early-stage tech',2023-01-15,'StartupA;StartupB;StartupC',200000,50000,'Quarterly', 'A Lee','alee@incubator.edu','First round completed','Closed',85.5,'2023-06-15','M410');

INSERT INTO technology_incubator_funding_round (round_id, incubator_id, round_name, start_date, end_date, total_funds, number_of_startups, lead_investor, co_investor, eligibility_criteria, application_deadline, selected_startups, follow_on_funds, management_fee, reporting_requirements, contact_person, contact_email, notes, status, evaluation_score, fund_disbursement_date, program_manager_id)
VALUES ('TR002','INC01','Fall 2023 Growth','2023-08-01','2023-11-30',1500000,10,'GrowthCapital','StrategicPartners','Series A ready',2023-07-15,'StartupX;StartupY',300000,75000,'Biannual','K Patel','kpatel@incubator.edu','Mid round with new sectors','Open',92.0,NULL,'M425');

INSERT INTO technology_incubator_funding_round (round_id, incubator_id, round_name, start_date, end_date, total_funds, number_of_startups, lead_investor, co_investor, eligibility_criteria, application_deadline, selected_startups, follow_on_funds, management_fee, reporting_requirements, contact_person, contact_email, notes, status, evaluation_score, fund_disbursement_date, program_manager_id)
VALUES ('TR003','INC02','Winter 2024 Expansion','2024-01-10','2024-04-30',2000000,20,'MegaVentures','GlobalPartners','Scale-up',2023-12-20,'StartupM;StartupN;StartupO',400000,100000,'Monthly','S Gomez','sgomez@incubator2.edu','Planning stage','Planned',NULL,NULL,'M440');

-- Campus energy meter readings
CREATE TABLE campus_energy_meter_reading
(
    reading_id            TEXT PRIMARY KEY,
    meter_id              TEXT,
    building              TEXT,
    floor                 INTEGER,
    reading_date          TEXT,
    reading_value         REAL,
    unit                  TEXT,
    meter_type            TEXT,
    calibration_date      TEXT,
    calibrated_by         TEXT,
    anomaly_flag          TEXT,
    notes                 TEXT,
    recorded_by           TEXT,
    verification_status   TEXT,
    consumption_category  TEXT,
    peak_load             REAL,
    off_peak_load         REAL,
    annual_estimate       REAL,
    maintenance_required  TEXT,
    last_maintenance_date TEXT,
    next_maintenance_due TEXT,
    energy_source         TEXT,
    cost_per_unit         REAL
);

INSERT INTO campus_energy_meter_reading (reading_id, meter_id, building, floor, reading_date, reading_value, unit, meter_type, calibration_date, calibrated_by, anomaly_flag, notes, recorded_by, verification_status, consumption_category, peak_load, off_peak_load, annual_estimate, maintenance_required, last_maintenance_date, next_maintenance_due, energy_source, cost_per_unit)
VALUES ('EM001','MTR1001','Science Hall',2,'2023-06-30',1250.5,'kWh','Electric','2023-01-15','TechTeam','No','Normal operation','J Doe','Verified','Academic','300','200','15000','No','2023-02-10','2023-08-10','Grid',0.12);

INSERT INTO campus_energy_meter_reading (reading_id, meter_id, building, floor, reading_date, reading_value, unit, meter_type, calibration_date, calibrated_by, anomaly_flag, notes, recorded_by, verification_status, consumption_category, peak_load, off_peak_load, annual_estimate, maintenance_required, last_maintenance_date, next_maintenance_due, energy_source, cost_per_unit)
VALUES ('EM002','MTR2002','Library Annex',1,'2023-06-30',890.0,'kWh','Electric','2022-12-01','Facilities','No','Seasonal variation','A Smith','Verified','Library','250','150','11000','Yes','2023-03-20','2023-09-20','Grid',0.12);

INSERT INTO campus_energy_meter_reading (reading_id, meter_id, building, floor, reading_date, reading_value, unit, meter_type, calibration_date, calibrated_by, anomaly_flag, notes, recorded_by, verification_status, consumption_category, peak_load, off_peak_load, annual_estimate, maintenance_required, last_maintenance_date, next_maintenance_due, energy_source, cost_per_unit)
VALUES ('EM003','MTR3003','Eco Building',0,'2023-06-30',560.7,'kWh','Solar','2023-02-10','SolarTeam','No','Sunny day','L Zhang','Verified','Renewable','180','120','7200','No','2023-04-05','2023-10-05','Solar',0.08);

-- Community health initiative metrics
CREATE TABLE community_health_initiative_metric
(
    metric_id               TEXT PRIMARY KEY,
    initiative_name         TEXT,
    start_date              TEXT,
    end_date                TEXT,
    target_population       INTEGER,
    metric_name             TEXT,
    baseline_value          REAL,
    current_value           REAL,
    target_value            REAL,
    measurement_date        TEXT,
    data_source             TEXT,
    responsible_officer     TEXT,
    status                  TEXT,
    notes                   TEXT,
    funding_source          TEXT,
    community_partner       TEXT,
    geographic_area         TEXT,
    frequency               TEXT,
    evaluation_method       TEXT,
    impact_score            REAL,
    follow_up_action        TEXT,
    last_updated            TEXT
);

INSERT INTO community_health_initiative_metric (metric_id, initiative_name, start_date, end_date, target_population, metric_name, baseline_value, current_value, target_value, measurement_date, data_source, responsible_officer, status, notes, funding_source, community_partner, geographic_area, frequency, evaluation_method, impact_score, follow_up_action, last_updated)
VALUES ('CH001','Healthy Kids Program','2022-01-01','2024-12-31',5000,'BMI Reduction',22.5,21.8,20.0,'2023-06-15','Clinic Surveys','M550','Active','Improving nutrition','County Grant','Local Health Dept','Metro Region','Annual','Survey','78.5','Expand nutrition workshops','2023-07-01');

INSERT INTO community_health_initiative_metric (metric_id, initiative_name, start_date, end_date, target_population, metric_name, baseline_value, current_value, target_value, measurement_date, data_source, responsible_officer, status, notes, funding_source, community_partner, geographic_area, frequency, evaluation_method, impact_score, follow_up_action, last_updated)
VALUES ('CH002','Senior Wellness Outreach','2021-06-01','2023-05-31',2000,'Blood Pressure Control',130,125,120,'2023-03-20','Health Center','M562','Completed','Positive outcomes','State Health Fund','Senior Center','Urban District','Biannual','Clinical Exams','85.0','Maintain follow‑up calls','2023-04-15');

INSERT INTO community_health_initiative_metric (metric_id, initiative_name, start_date, end_date, target_population, metric_name, baseline_value, current_value, target_value, measurement_date, data_source, responsible_officer, status, notes, funding_source, community_partner, geographic_area, frequency, evaluation_method, impact_score, follow_up_action, last_updated)
VALUES ('CH003','Mental Health Awareness','2023-02-01','2025-01-31',3000,'Depression Screening Rate',45,55,60,'2023-06-10','Survey Platform','M578','Active','Increasing participation','Private Donation','Community Clinic','Suburban Area','Quarterly','Questionnaire','70.2','Launch additional workshops','2023-07-05');

-- Library digital media assets
CREATE TABLE library_digital_media_asset
(
    asset_id                TEXT PRIMARY KEY,
    title                   TEXT,
    creator                 TEXT,
    publication_date        TEXT,
    format                  TEXT,
    file_size_mb            REAL,
    checksum                TEXT,
    license_type            TEXT,
    access_level            TEXT,
    download_url            TEXT,
    related_course          TEXT,
    department              TEXT,
    tags                    TEXT,
    description             TEXT,
    preservation_status     TEXT,
    last_accessed           TEXT,
    usage_count             INTEGER,
    metadata_schema         TEXT,
    language                TEXT,
    rights_holder           TEXT,
    embargo_end_date        TEXT,
    notes                   TEXT
);

INSERT INTO library_digital_media_asset (asset_id, title, creator, publication_date, format, file_size_mb, checksum, license_type, access_level, download_url, related_course, department, tags, description, preservation_status, last_accessed, usage_count, metadata_schema, language, rights_holder, embargo_end_date, notes)
VALUES ('LM001','Quantum Mechanics Lecture','Prof A Brown','2022-09-01','MP4','850.5','abc123def','CC BY-NC','Open','http://library.university.edu/media/lm001.mp4','PHYS101','Physics','quantum;lecture;science','Introductory quantum mechanics lecture','Stable','2023-06-20',120,'Dublin Core','English','University','2024-01-01','High demand');

INSERT INTO library_digital_media_asset (asset_id, title, creator, publication_date, format, file_size_mb, checksum, license_type, access_level, download_url, related_course, department, tags, description, preservation_status, last_accessed, usage_count, metadata_schema, language, rights_holder, embargo_end_date, notes)
VALUES ('LM002','Shakespeare Complete Works','Literature Dept','2020-03-15','PDF','125.0','def456ghi','Public Domain','Restricted','http://library.university.edu/media/lm002.pdf','ENG201','English','shakespeare;literature;classic','Complete collection of Shakespeare plays','Preserved','2023-05-10',85,'METS','English','University Press','2022-12-31','Used in literature courses');

INSERT INTO library_digital_media_asset (asset_id, title, creator, publication_date, format, file_size_mb, checksum, license_type, access_level, download_url, related_course, department, tags, description, preservation_status, last_accessed, usage_count, metadata_schema, language, rights_holder, embargo_end_date, notes)
VALUES ('LM003','Data Science Python Notebook','Dr C Lee','2023-01-20','IPYNB','15.2','ghi789jkl','CC BY','Open','http://library.university.edu/media/lm003.ipynb','DS301','Computer Science','data;python;machinelearning','Practical Jupyter notebook for data science','Stable','2023-07-01',45,'custom','English','Dr C Lee','2025-01-01','Featured in workshop');

-- Campus green building metrics
CREATE TABLE campus_green_building_metrics
(
    building_id                     TEXT PRIMARY KEY,
    building_name                   TEXT,
    certification_level             TEXT,
    year_certified                  INTEGER,
    total_floor_area                REAL,
    energy_use_intensity            REAL,
    water_use_intensity             REAL,
    waste_diversion_rate            REAL,
    renewable_energy_percentage     REAL,
    indoor_air_quality_score        REAL,
    daylight_factor                 REAL,
    green_roof_area                 REAL,
    living_wall_area                REAL,
    sustainable_materials_percentage REAL,
    occupant_satisfaction_score     REAL,
    maintenance_cost_per_sqft       REAL,
    carbon_emission_reduction       REAL,
    benchmarking_year               INTEGER,
    certification_body              TEXT,
    notes                           TEXT,
    last_audit_date                TEXT,
    auditor_name                    TEXT
);

INSERT INTO campus_green_building_metrics (building_id, building_name, certification_level, year_certified, total_floor_area, energy_use_intensity, water_use_intensity, waste_diversion_rate, renewable_energy_percentage, indoor_air_quality_score, daylight_factor, green_roof_area, living_wall_area, sustainable_materials_percentage, occupant_satisfaction_score, maintenance_cost_per_sqft, carbon_emission_reduction, benchmarking_year, certification_body, notes, last_audit_date, auditor_name)
VALUES ('GB001','Eco Sciences Center','LEED Gold',2021,85000,45.2,30.5,78,25,85,0.55,1500,200,35,90,12.5,22,2020,'Green Building Council','Excellent performance','2022-11-15','E Walker');

INSERT INTO campus_green_building_metrics (building_id, building_name, certification_level, year_certified, total_floor_area, energy_use_intensity, water_use_intensity, waste_diversion_rate, renewable_energy_percentage, indoor_air_quality_score, daylight_factor, green_roof_area, living_wall_area, sustainable_materials_percentage, occupant_satisfaction_score, maintenance_cost_per_sqft, carbon_emission_reduction, benchmarking_year, certification_body, notes, last_audit_date, auditor_name)
VALUES ('GB002','Sustainable Arts Hall','LEED Silver',2019,60000,60.1,45.0,65,15,78,0.40,800,120,28,80,15.0,15,2018,'Green Building Council','Needs improvement in water use','2021-09-30','M Patel');

INSERT INTO campus_green_building_metrics (building_id, building_name, certification_level, year_certified, total_floor_area, energy_use_intensity, water_use_intensity, waste_diversion_rate, renewable_energy_percentage, indoor_air_quality_score, daylight_factor, green_roof_area, living_wall_area, sustainable_materials_percentage, occupant_satisfaction_score, maintenance_cost_per_sqft, carbon_emission_reduction, benchmarking_year, certification_body, notes, last_audit_date, auditor_name)
VALUES ('GB003','Renewable Energy Pavilion','LEED Platinum',2023,40000,30.0,20.0,85,40,92,0.70,2000,300,45,95,10.0,30,2023,'Green Building Council','Model building for campus','2023-12-01','S Gomez');

-- Alumni giving pledges
CREATE TABLE alumni_giving_pledge
(
    pledge_id               TEXT PRIMARY KEY,
    member_id               TEXT,
    pledge_amount           REAL,
    pledge_date             TEXT,
    payment_schedule        TEXT,
    total_paid              REAL,
    remaining_balance       REAL,
    pledge_status           TEXT,
    recognition_level       TEXT,
    acknowledgement_sent    TEXT,
    event_associated        TEXT,
    notes                   TEXT,
    pledged_program         TEXT,
    fiscal_year             INTEGER,
    payment_method          TEXT,
    last_payment_date       TEXT,
    next_due_date           TEXT,
    donor_advisor_id        TEXT,
    tax_receipt_sent        TEXT,
    matching_gift           TEXT,
    created_by              TEXT,
    created_timestamp       TEXT
);

INSERT INTO alumni_giving_pledge (pledge_id, member_id, pledge_amount, pledge_date, payment_schedule, total_paid, remaining_balance, pledge_status, recognition_level, acknowledgement_sent, event_associated, notes, pledged_program, fiscal_year, payment_method, last_payment_date, next_due_date, donor_advisor_id, tax_receipt_sent, matching_gift, created_by, created_timestamp)
VALUES ('PG001','M900','5000','2022-05-10','Annual','3000','2000','Active','Gold','Yes','Alumni Gala','Allocated to scholarship fund','Scholarship','2022','Check','2023-04-15','2024-04-15','A Lee','Yes','No','M910','2022-05-10');

INSERT INTO alumni_giving_pledge (pledge_id, member_id, pledge_amount, pledge_date, payment_schedule, total_paid, remaining_balance, pledge_status, recognition_level, acknowledgement_sent, event_associated, notes, pledged_program, fiscal_year, payment_method, last_payment_date, next_due_date, donor_advisor_id, tax_receipt_sent, matching_gift, created_by, created_timestamp)
VALUES ('PG002','M910','12000','2021-09-20','Quarterly','12000','0','Fulfilled','Platinum','Yes','Class Reunion','Fully paid for building renovation','Building Fund','2021','Credit Card','2022-12-20','2023-03-20','B Kim','Yes','Yes','M915','2021-09-20');

INSERT INTO alumni_giving_pledge (pledge_id, member_id, pledge_amount, pledge_date, payment_schedule, total_paid, remaining_balance, pledge_status, recognition_level, acknowledgement_sent, event_associated, notes, pledged_program, fiscal_year, payment_method, last_payment_date, next_due_date, donor_advisor_id, tax_receipt_sent, matching_gift, created_by, created_timestamp)
VALUES ('PG003','M925','2500','2023-01-15','Semiannual','1250','1250','Active','Silver','No','Online Donation','Partial payment, pending second installment','Research Fund','2023','Bank Transfer','2023-06-01','2023-12-01','C Patel','No','No','M930','2023-01-15');