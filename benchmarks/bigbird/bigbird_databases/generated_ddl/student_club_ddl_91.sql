-- Campus research funding details
CREATE TABLE campus_research_funding
(
    funding_id                TEXT PRIMARY KEY,
    source_name               TEXT,
    grant_number              TEXT,
    fiscal_year               INTEGER,
    amount_requested          REAL,
    amount_awarded            REAL,
    award_date                TEXT,
    expiration_date           TEXT,
    principal_investigator    TEXT,
    department                TEXT,
    college                   TEXT,
    funding_type              TEXT,
    status                    TEXT,
    review_score              REAL,
    comments                  TEXT,
    currency                  TEXT,
    exchange_rate             REAL,
    funding_agency_contact    TEXT,
    program_area              TEXT,
    report_due_date           TEXT,
    keywords                  TEXT,
    compliance_flag           TEXT
);

INSERT INTO campus_research_funding VALUES
('FND001','National Science Foundation','NSF-2021-001',2021,150000,120000,'2021-05-10','2024-05-09','DrAliceSmith','ComputerScience','Engineering','Grant','Active',4.5,'Initial award','USD',1.0,'contact1@nsf.gov','AIResearch','2022-12-31','machinelearning,ai','Yes');

INSERT INTO campus_research_funding VALUES
('FND002','Department of Energy','DOE-2020-042',2020,200000,200000,'2020-03-15','2025-03-14','DrBobLee','Physics','Science','Contract','Completed',5.0,'Full funding','USD',1.0,'contact2@doe.gov','RenewableEnergy','2023-06-30','solar,grid','Yes');

INSERT INTO campus_research_funding VALUES
('FND003','Private Foundation','PF-2022-77',2022,80000,60000,'2022-09-01','2025-08-31','DrCarolNg','Biology','Science','Fellowship','Active',4.0,'Partial funding','USD',1.0,'contact3@pf.org','Genomics','2024-04-15','geneediting','No');

-- Student wellness activity tracking
CREATE TABLE student_wellness_activity
(
    activity_id            TEXT PRIMARY KEY,
    student_id             TEXT,
    activity_type          TEXT,
    activity_date          TEXT,
    duration_minutes       INTEGER,
    calories_burned        INTEGER,
    location               TEXT,
    instructor_name        TEXT,
    mood_before            TEXT,
    mood_after             TEXT,
    steps_count            INTEGER,
    heart_rate_average     INTEGER,
    water_intake_oz        INTEGER,
    sleep_hours_previous   REAL,
    stress_level_before    INTEGER,
    stress_level_after     INTEGER,
    notes                  TEXT,
    wellness_program_id    TEXT,
    program_version        TEXT,
    facilitator_contact    TEXT,
    participation_status   TEXT,
    reward_points_earned   INTEGER,
    feedback_rating        INTEGER,
    follow_up_required     TEXT
);

INSERT INTO student_wellness_activity VALUES
('ACT001','STU1001','Yoga','2023-09-01',60,200,'WellnessCenter','EmilyZhou','Stressed','Relaxed',0,70,16,7.0,3,1,'Felt calm after session','WP001','v2','coach@email.edu','Completed',50,5,'No');

INSERT INTO student_wellness_activity VALUES
('ACT002','STU1023','Running','2023-09-03',45,350,'TrackField','CoachMike','Tired','Energized',6000,150,12,6.5,4,2,'Improved stamina','WP001','v2','coach@email.edu','Completed',40,4,'Yes');

INSERT INTO student_wellness_activity VALUES
('ACT003','STU1089','Meditation','2023-09-04',30,0,'Room101','LauraKim','Anxious','Calm',0,65,8,8.0,2,1,'Good focus','WP002','v1','meditation@univ.edu','Completed',30,5','No');

-- Environmental sensor deployment records
CREATE TABLE environmental_sensor_deployment
(
    deployment_id           TEXT PRIMARY KEY,
    sensor_id               TEXT,
    sensor_type             TEXT,
    model_number            TEXT,
    firmware_version        TEXT,
    installation_date       TEXT,
    latitude                REAL,
    longitude               REAL,
    elevation_meters        REAL,
    site_name               TEXT,
    site_description        TEXT,
    jurisdiction            TEXT,
    calibration_date        TEXT,
    calibration_status      TEXT,
    power_source            TEXT,
    battery_level_percent   INTEGER,
    connectivity_type       TEXT,
    network_id              TEXT,
    data_collection_interval INTEGER,
    last_maintenance_date   TEXT,
    maintenance_status      TEXT,
    data_quality_score      REAL,
    owner_department        TEXT,
    notes                   TEXT,
    active_flag             TEXT
);

INSERT INTO environmental_sensor_deployment VALUES
('DEP001','SNS100','AirQuality','AQ-3000','1.2.5','2022-01-15',40.7128,-74.0060,10.5','CentralPark','Near the east meadow','NYC','2022-12-01','Passed','Solar','85','WiFi','NET001',15,'2023-08-20','Completed',0.96,'EnvironmentalScience','No issues','Yes');

INSERT INTO environmental_sensor_deployment VALUES
('DEP002','SNS101','SoilMoisture','SM-200','3.0.1','2021-06-10',34.0522,-118.2437,85.0','WestCampus','Agricultural testing field','LA County','2023-01-10','Passed','Battery','60','Cellular','NET002',30,'2023-07-15','Pending',0.89,'Agronomy','Battery replacement needed','Yes');

INSERT INTO environmental_sensor_deployment VALUES
('DEP003','SNS102','WaterLevel','WL-500','2.4.0','2023-03-05',41.8781,-87.6298,180.0','LakeSide','Near the north dock','Chicago','2023-04-01','Passed','Mains','100','Ethernet','NET003',10,'2023-09-01','Completed',0.98,'Hydrology','All clear','Yes');

-- Digital asset repository metadata
CREATE TABLE digital_asset_repository
(
    asset_id               TEXT PRIMARY KEY,
    asset_name             TEXT,
    asset_type             TEXT,
    file_format            TEXT,
    file_size_bytes        INTEGER,
    uploaded_by            TEXT,
    upload_date            TEXT,
    description            TEXT,
    tags                   TEXT,
    access_level           TEXT,
    license_type           TEXT,
    expiration_date        TEXT,
    checksum_md5           TEXT,
    checksum_sha256        TEXT,
    related_project_id     TEXT,
    usage_count            INTEGER,
    last_accessed          TEXT,
    retention_policy       TEXT,
    creator_department     TEXT,
    provenance_notes       TEXT,
    digital_signature      TEXT,
    encryption_status      TEXT,
    storage_location       TEXT,
    backup_status          TEXT,
    metadata_version       TEXT,
    active_flag            TEXT
);

INSERT INTO digital_asset_repository VALUES
('ASSET001','CampusMap2023','Image','PNG',3456789,'admin','2023-01-12','High‑resolution campus map','map,campus,2023','Public','CC‑BY','2099-12-31','d41d8cd98f00b204e9800998ecf8427e','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','PRJ001',124,'2023-09-05','Indefinite','Facilities','Original GIS export','sig001','Encrypted','ServerA','BackedUp','v1','Yes');

INSERT INTO digital_asset_repository VALUES
('ASSET002','LectureSeriesAudio01','Audio','MP3',76543210,'jdoe','2022-11-20','Audio recording of guest lecture','lecture,guest,2022','Restricted','AllRightsReserved','2025-11-20','9e107d9d372bb6826bd81d3542a419d6','d2d2ae8d5e1b2c3d4f5a6b7c8d9e0f12','PRJ015',58,'2023-08-22','3‑year','Arts','Recorded by campus AV','sig002','Encrypted','ServerB','BackedUp','v2','Yes');

INSERT INTO digital_asset_repository VALUES
('ASSET003','ResearchDataset_XYZ','Dataset','CSV',254000000,'slee','2023-07-01','Raw experimental data set for project XYZ','data,experiment,xyz','Confidential','DataUseAgreement','2028-07-01','0cc175b9c0f1b6a831c399e269772661','3a7bd3e2360a3d3e0f7c5c6e29c73b6a','PRJ023',3,'2023-09-01','5‑year','Research','Collected by lab team','sig003','Unencrypted','ServerC','BackedUp','v1','Yes');

-- Facility energy audit logs
CREATE TABLE facility_energy_audit
(
    audit_id               TEXT PRIMARY KEY,
    facility_id            TEXT,
    audit_date             TEXT,
    auditor_name           TEXT,
    total_energy_consumed_kwh REAL,
    electricity_cost_usd   REAL,
    natural_gas_consumed_therms REAL,
    gas_cost_usd           REAL,
    renewable_energy_percent REAL,
    peak_demand_kw         REAL,
    baseline_year          INTEGER,
    recommendations        TEXT,
    estimated_savings_usd  REAL,
    implementation_deadline TEXT,
    status                 TEXT,
    follow_up_date         TEXT,
    comments               TEXT,
    building_sqft          INTEGER,
    hvac_system_type       TEXT,
    lighting_system_type   TEXT,
    insulation_rating      TEXT,
    window_glazing_type    TEXT,
    occupancy_hours_per_day INTEGER,
    variance_from_baseline_percent REAL,
    energy_star_rating     INTEGER,
    audit_report_path      TEXT,
    active_flag            TEXT
);

INSERT INTO facility_energy_audit VALUES
('AUD001','BLDG01','2023-04-15','MarkTaylor',245000,30000,12000,1050,22.5,350,2019,'Upgrade LED lighting, optimize HVAC schedule',8000,'2024-12-31','Completed','2025-01-15','Audit successful','150000','VAV','LED','R‑5','Low‑E','10',5.2,85,'/reports/aud001.pdf','Yes');

INSERT INTO facility_energy_audit VALUES
('AUD002','BLDG02','2022-11-02','SusanLee',180000,22000,8000,750,15.0,275,2018,'Install solar panels, improve insulation',12000,'2023-09-30','InProgress','2023-10-10','Pending roof assessment','200000','CAV','Fluorescent','R‑3','DoublePane','8',3.8,78,'/reports/aud002.pdf','Yes');

INSERT INTO facility_energy_audit VALUES
('AUD003','BLDG03','2023-07-20','AlanChen',310000,38000,15000,1320,30.0,410,2020,'Retrofitting building envelope, replace old boilers',15000,'2025-06-30','Planned','2025-07-15','Scheduled for Q3','250000','VRF','LED','R‑4','Low‑E','12',6.5,90,'/reports/aud003.pdf','Yes');

-- Community outreach program schedule
CREATE TABLE community_outreach_program
(
    program_id               TEXT PRIMARY KEY,
    program_name             TEXT,
    target_audience          TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    coordinator_name         TEXT,
    coordinator_contact      TEXT,
    location                 TEXT,
    city                     TEXT,
    state                    TEXT,
    expected_participants    INTEGER,
    actual_participants      INTEGER,
    budget_usd               REAL,
    funding_source           TEXT,
    activities_description   TEXT,
    materials_provided       TEXT,
    feedback_score_average   REAL,
    evaluation_report_path   TEXT,
    partner_organizations    TEXT,
    registration_required    TEXT,
    online_registration_link TEXT,
    health_safety_measures   TEXT,
    transportation_arranged   TEXT,
    catering_details         TEXT,
    promotional_channels     TEXT,
    social_media_hashtag     TEXT,
    volunteer_hours          INTEGER,
    outcome_metrics          TEXT,
    notes                    TEXT,
    active_flag              TEXT
);

INSERT INTO community_outreach_program VALUES
('PROG001','STEM Summer Camp','HighSchoolStudents','2023-06-01','2023-08-15','LauraBrown','lbrown@univ.edu','Campus Recreation Center','Springfield','IL',200,185,25000,'University Grant','Robotics workshops, coding labs','Toolkits, laptops','4.5','/reports/prog001_eval.pdf','LocalSchools,TechCo','Yes','https://univ.edu/register','Masks, Sanitizers','Shuttle from downtown','Pizza, water','Flyers, email','#STEMCamp2023',500,'Increased STEM interest','All sessions successful','Yes');

INSERT INTO community_outreach_program VALUES
('PROG002','Health Awareness Fair','CommunityAdults','2023-09-10','2023-09-12','MichaelGreen','mgreen@univ.edu','City Hall Plaza','Riverdale','GA',350,340,18000,'Health Dept Sponsorship','Blood pressure checks, nutrition talks','Brochures, free kits','4.2','/reports/prog002_eval.pdf','LocalHospitals,NonProfits','No','', 'Social distancing, handgel stations','Bus routes from campus','Fruit, smoothies','Social media, radio','#HealthFair2023',270,'Improved health knowledge','Positive community feedback','Yes');

INSERT INTO community_outreach_program VALUES
('PROG003','Cultural Heritage Festival','GeneralPublic','2023-10-05','2023-10-07','Sonia Patel','spatel@univ.edu','University Quad','Metropolis','NY',500,475,30000,'Corporate Sponsors','Music, dance, food stalls','Cultural artifacts, flyers','4.8','/reports/prog003_eval.pdf','Cultural Orgs, Sponsors','Yes','https://univ.edu/culturefest','Masks, crowd control','Shuttle from train station','International cuisine','Posters, local TV','#CultureFest23',800,'Enhanced cultural appreciation','High attendance','Yes');

-- Transport fleet vehicle inventory
CREATE TABLE transport_fleet_vehicle
(
    vehicle_id               TEXT PRIMARY KEY,
    vehicle_type             TEXT,
    make                     TEXT,
    model                    TEXT,
    year_manufactured        INTEGER,
    vin_number               TEXT,
    license_plate            TEXT,
    registration_state       TEXT,
    registration_expiry      TEXT,
    mileage_current          INTEGER,
    fuel_type                TEXT,
    fuel_capacity_gallons    REAL,
    last_service_date        TEXT,
    next_service_due_km      INTEGER,
    gps_tracker_id           TEXT,
    assigned_driver_id       TEXT,
    insurance_provider       TEXT,
    insurance_policy_number  TEXT,
    insurance_expiry         TEXT,
    depreciation_value_usd   REAL,
    purchase_price_usd       REAL,
    status                   TEXT,
    usage_category           TEXT,
    maintenance_notes        TEXT,
    lease_or_owned           TEXT,
    acquisition_date         TEXT,
    disposal_date            TEXT,
    disposal_reason          TEXT,
    current_location         TEXT,
    active_flag              TEXT
);

INSERT INTO transport_fleet_vehicle VALUES
('VEH001','Shuttle','Ford','Transit','2019','1FTSW21P07EB12345','UNI-001','IL','2025-06-30',45200,'Diesel',20.0,'2023-08-01',50000,'GPS001','DRV100','AllState','AS-987654','2024-12-31',8000,25000,'Active','CampusTransport','Tire rotation completed','Owned','2019-04-15','',,'Main Campus Parking','Yes');

INSERT INTO transport_fleet_vehicle VALUES
('VEH002','Cargo Van','Mercedes','Sprinter','2021','WD3PE8CD4KP123456','UNI-002','IL','2026-03-15',21500,'Electric',0.0,'2023-07-10',30000,'GPS002','DRV101','StateFarm','SF-123456','2025-03-15',12000,30000,'Active','SuppliesDelivery','Battery check done','Leased','2021-05-20','',,'North Campus Loading Bay','Yes');

INSERT INTO transport_fleet_vehicle VALUES
('VEH003','Electric Bus','Proterra','E2','2022','PRAK1234567890ABC','UNI-003','IL','2027-09-01',8000,'Electric',0.0,'2023-09-20',15000,'GPS003','DRV102','Nationwide','NW-654321','2025-09-01',15000,500000,'Active','StudentTransport','Charging station installed','Owned','2022-08-01','',,'Student Parking Lot','Yes');

-- Sustainability initiative metrics
CREATE TABLE sustainability_initiative_metric
(
    metric_id                TEXT PRIMARY KEY,
    initiative_name          TEXT,
    metric_name              TEXT,
    measurement_period_start TEXT,
    measurement_period_end   TEXT,
    target_value             REAL,
    actual_value             REAL,
    unit_of_measure          TEXT,
    data_source              TEXT,
    responsible_department   TEXT,
    calculation_method       TEXT,
    verification_status      TEXT,
    notes                    TEXT,
    last_updated             TEXT,
    trend_indicator          TEXT,
    confidence_level_percent REAL,
    related_project_id       TEXT,
    stakeholder_engagement   TEXT,
    reporting_frequency      TEXT,
    benchmark_comparison     TEXT,
    optional_flag            TEXT,
    corrective_action_needed TEXT,
    documentation_link       TEXT,
    created_by               TEXT,
    creation_date            TEXT,
    last_reviewed_by         TEXT,
    last_review_date         TEXT,
    active_flag              TEXT,
    comments                 TEXT,
    data_quality_score       REAL
);

INSERT INTO sustainability_initiative_metric VALUES
('MET001','Campus Solar Expansion','SolarGenerationMWh','2023-01-01','2023-12-31',1500,1380,'MWh','EnergyMetering','Facilities','Sum of daily generation','Verified','Slightly below target','2024-01-10','Downward',92.5,'PROJ005','High','Annual','AboveNationalAverage','Yes','Yes','/docs/solar_metric.pdf','AnaSmith','2024-01-01','JohnDoe','2024-01-08','Yes','Monitor weather impact','0.95');

INSERT INTO sustainability_initiative_metric VALUES
('MET002','Waste Reduction Program','RecycledTons','2023-04-01','2023-09-30',120,135,'Tons','WasteAudit','Facilities','Weight of recycled material','Verified','Exceeded target','2023-10-05','Upward',98.0,'PROJ012','Medium','SemiAnnual','Top10University','Yes','No','/docs/waste_metric.pdf','MikeLee','2023-10-01','SarahKim','2023-10-03','Yes','Continue current practices','0.97');

INSERT INTO sustainability_initiative_metric VALUES
('MET003','Water Conservation','GallonsSaved','2023-07-01','2023-12-31',200000,185000,'Gallons','WaterMeter','Facilities','Difference from baseline','Pending','Near target','2024-01-15','Downward',85.0,'PROJ019','Low','Quarterly','BelowStateAvg','Yes','Yes','/docs/water_metric.pdf','LindaWu','2024-01-10','TomRay','2024-01-12','Yes','Investigate leak sources','0.88');

-- Library preservation task log
CREATE TABLE library_preservation_task
(
    task_id                 TEXT PRIMARY KEY,
    collection_name         TEXT,
    item_type               TEXT,
    item_identifier         TEXT,
    preservation_action     TEXT,
    scheduled_start_date    TEXT,
    scheduled_end_date      TEXT,
    actual_start_date       TEXT,
    actual_end_date         TEXT,
    responsible_staff       TEXT,
    supervisor              TEXT,
    required_materials      TEXT,
    tool_used               TEXT,
    condition_before        TEXT,
    condition_after         TEXT,
    notes                   TEXT,
    status                  TEXT,
    priority_level          TEXT,
    budget_allocated_usd    REAL,
    actual_cost_usd         REAL,
    funding_source          TEXT,
    related_project_id      TEXT,
    documentation_path      TEXT,
    external_contractor     TEXT,
    contractor_contact      TEXT,
    risk_assessment_score   REAL,
    preservation_category   TEXT,
    created_timestamp       TEXT,
    last_modified_timestamp TEXT,
    active_flag             TEXT
);

INSERT INTO library_preservation_task VALUES
('LT001','Rare Manuscripts','Manuscript','MS-019','Deacidification','2023-09-01','2023-09-10','2023-09-02','2023-09-09','EmilyClark','DrHelenMiller','Deacidification Solution','Sprayer','Fair','Excellent','Completed without issues','Completed','High',5000,4700,'Grant','PRJ021','/docs/lt001.pdf','PreserveCo','+1-555-0123',2.5,'Conservation','2023-08-20','2023-09-10','Yes');

INSERT INTO library_preservation_task VALUES
('LT002','Historical Photographs','Photograph','PH-112','Climate Controlled Storage','2023-10-15','2023-10-20','2023-10-16','2023-10-19','MarkDavis','DrLauraKing','Humidity Control Units','HVAC','Good','Good','Moved to new storage','Completed','Medium',2000,1900,'University Funds','PRJ034','/docs/lt002.pdf','',,'',1.0,'Environmental','2023-09-30','2023-10-20','Yes');

INSERT INTO library_preservation_task VALUES
('LT003','Local Newspapers','Newspaper','NP-540','Digitization','2023-11-01','2023-12-15','2023-11-03','2023-12-14','SophieNg','DrPeterGomez','Scanners, OCR Software','Flatbed Scanner','Poor','Digitized','Ongoing, 80% completed','InProgress','Low',15000,12000,'External Grant','PRJ045','/docs/lt003.pdf','DigitalScan Inc','+1-555-0987',3.0,'Digital','2023-10-25','2023-12-01','Yes');

-- Event security incident records
CREATE TABLE event_security_incident
(
    incident_id               TEXT PRIMARY KEY,
    event_id                  TEXT,
    incident_date_time        TEXT,
    incident_type             TEXT,
    description               TEXT,
    reported_by               TEXT,
    security_officer_id       TEXT,
    location_within_event     TEXT,
    severity_level            TEXT,
    immediate_action_taken    TEXT,
    witnesses                 TEXT,
    evidence_collected        TEXT,
    follow_up_required        TEXT,
    follow_up_deadline        TEXT,
    status                    TEXT,
    resolution_summary        TEXT,
    captured_video_path       TEXT,
    photos_path               TEXT,
    notification_sent_to      TEXT,
    investigation_report_path TEXT,
    created_timestamp         TEXT,
    last_updated_timestamp    TEXT,
    active_flag               TEXT,
    notes                     TEXT,
    external_agency_involved  TEXT,
    external_report_number    TEXT,
    corrective_measures       TEXT,
    impact_estimate           TEXT,
    risk_level                TEXT,
    documented_by             TEXT,
    documentation_date        TEXT
);

INSERT INTO event_security_incident VALUES
('INC001','EVT100','2023-08-12 19:45','UnauthorizedAccess','Attendee attempted to enter backstage without badge','SecurityTeamLead','SEC001','Backstage Entrance','Medium','Denied entry, escorted out','None','SecurityLog001','Yes','2023-08-20','Closed','No further action needed','/media/inc001_video.mp4','/media/inc001_photos.zip','EventOrganizer','/reports/inc001_report.pdf','2023-08-13 08:00','2023-08-20 15:30','Yes','Handled per protocol','Police','PR-2023-001','Enhanced badge checks','Low','High','OfficerJohn','2023-08-20');

INSERT INTO event_security_incident VALUES
('INC002','EVT101','2023-09-05 14:10','MedicalEmergency','Attendee suffered a seizure during keynote','MedicalTeamLead','MED001','Main Hall','High','Provided first aid, called EMS','2 attendees','MedicalReport002','No','2023-09-05','Closed','Attendee received care, no further incident','/media/inc002_video.mp4','/media/inc002_photos.zip','EventCoordinator','/reports/inc002_report.pdf','2023-09-05 15:00','2023-09-06 10:00','Yes','Followed medical protocol','EMS','EMS-2023-045','Review medical readiness','Medium','Critical','NurseAmy','2023-09-06');

INSERT INTO event_security_incident VALUES
('INC003','EVT102','2023-10-20 22:30','FireAlarm','False fire alarm triggered by speaker equipment','VenueManager','SEC010','Auditorium','Low','Evacuated audience safely, checked venue','None','AlarmLog003','No','2023-10-21','Closed','Alarm reset, equipment inspected','/media/inc003_video.mp4','/media/inc003_photos.zip','FacilityTeam','/reports/inc003_report.pdf','2023-10-20 23:00','2023-10-21 09:00','Yes','Examined speaker wiring','ElectricalDept','ED-2023-078','Update equipment safeguards','Low','Low','TechnicianRaj','2023-10-21');

-- Digital learning content metadata
CREATE TABLE digital_learning_content
(
    content_id               TEXT PRIMARY KEY,
    title                    TEXT,
    content_type             TEXT,
    format                   TEXT,
    version                  TEXT,
    language                 TEXT,
    length_minutes           INTEGER,
    author_id                TEXT,
    department               TEXT,
    course_associated        TEXT,
    release_date             TEXT,
    last_updated             TEXT,
    access_level             TEXT,
    license_type             TEXT,
    copyright_holder         TEXT,
    url                      TEXT,
    thumbnail_path           TEXT,
    keywords                 TEXT,
    prerequisites            TEXT,
    learning_objectives      TEXT,
    assessment_method        TEXT,
    difficulty_level         TEXT,
    enrollment_cap           INTEGER,
    estimated_completion_rate REAL,
    metadata_quality_score   REAL,
    review_status            TEXT,
    reviewer_id              TEXT,
    review_date              TEXT,
    notes                    TEXT,
    active_flag              TEXT,
    retention_policy         TEXT,
    usage_statistics_path    TEXT,
    related_content_ids      TEXT,
    tags                     TEXT,
    compliance_requirements TEXT
);

INSERT INTO digital_learning_content VALUES
('DL001','Intro to Data Science','Course','Video','1.0','English',120,'AUTH001','ComputerScience','DS101','2022-09-01','2023-08-20','Public','CC-BY','University','https://univ.edu/dl/dl001','/thumbs/dl001.png','data,science,python','None','Understand basic concepts of data science','Quiz','Beginner',200,0.85,0.92,'Approved','REV001','2023-08-21','Featured in catalog','Yes','3years','/stats/dl001_usage.csv','DL002,DL005','data,science','None');

INSERT INTO digital_learning_content VALUES
('DL002','Advanced Machine Learning','Course','Video','2.1','English',180,'AUTH002','ComputerScience','ML301','2021-01-15','2023-07-10','Restricted','AllRightsReserved','University','https://univ.edu/dl/dl002','/thumbs/dl002.png','machinelearning,ai','Intro to Data Science','Apply advanced ML algorithms','Project','Advanced',100,0.70,0.88,'Pending','REV002','2023-07-12','Awaiting final review','No','5years','/stats/dl002_usage.csv','DL001,DL006','ml,ai','FERPA');

INSERT INTO digital_learning_content VALUES
('DL003','Campus Sustainability Webinar','Webinar','LiveStream','1.0','English',60,'AUTH003','EnvironmentalScience','ENV200','2023-05-20','2023-05-20','Public','CC0','University','https://univ.edu/dl/dl003','/thumbs/dl003.png','sustainability,climate','None','Learn campus sustainability initiatives','Poll','Intermediate',500,0.95,0.95,'Approved','REV003','2023-05-21','High attendance','Yes','Indefinite','/stats/dl003_usage.csv','DL004','sustainability,webinar','None');