-- Table storing information about campus research centers and their attributes
CREATE TABLE campus_research_center
(
    center_id               TEXT PRIMARY KEY,
    center_name             TEXT,
    building                TEXT,
    floor                   INTEGER,
    established_date        TEXT,
    director_id             TEXT,
    num_researchers         INTEGER,
    primary_focus           TEXT,
    secondary_focus         TEXT,
    budget_year             INTEGER,
    annual_budget           REAL,
    lab_space_sqft          INTEGER,
    collaborative_partners  TEXT,
    grant_count             INTEGER,
    patent_count            INTEGER,
    website_url             TEXT,
    contact_email           TEXT,
    phone_extension         TEXT,
    status                  TEXT,
    accreditation           TEXT,
    strategic_plan_version  TEXT,
    last_audit_date         TEXT
);

INSERT INTO campus_research_center VALUES
('CR001','AdvancedMaterialsCenter','ScienceHall','2','2010-05-12','M001',45,'MaterialsScience','Nanotechnology',2023,1200000,25000,'PartnerA;PartnerB',12,5,'http://amc.university.edu','amc@university.edu','1234','Active','ISO9001','v3','2023-11-01');

INSERT INTO campus_research_center VALUES
('CR002','BioInnovationLab','HealthBuilding','1','2015-09-30','M045',30,'Biotech','Genomics',2023,800000,18000,'PartnerC;PartnerD',8,3,'http://bioil.university.edu','bioil@university.edu','5678','Active','ISO27001','v2','2023-10-15');

INSERT INTO campus_research_center VALUES
('CR003','AIAnalyticsHub','TechCenter','3','2020-01-20','M078',60,'ArtificialIntelligence','DataScience',2023,1500000,30000,'PartnerE;PartnerF',15,7,'http://aihub.university.edu','aihub@university.edu','9101','Planned','ISO14001','v1','2023-12-01');

-- Table defining alumni gift programs and their characteristics
CREATE TABLE alumni_gift_program
(
    program_id            TEXT PRIMARY KEY,
    program_name          TEXT,
    start_year            INTEGER,
    end_year              INTEGER,
    target_group          TEXT,
    minimum_donation      REAL,
    maximum_donation      REAL,
    matching_fund         INTEGER,
    recognition_level    TEXT,
    gift_type             TEXT,
    campaign_slogan       TEXT,
    marketing_channel     TEXT,
    budget_allocated      REAL,
    total_received        REAL,
    num_donors            INTEGER,
    admin_contact         TEXT,
    admin_email           TEXT,
    status                TEXT,
    created_date          TEXT,
    last_update           TEXT,
    notes                 TEXT
);

INSERT INTO alumni_gift_program VALUES
('GP001','LegacyBuilders','2018','2025','ClassOf1990s',1000,50000,1,'Platinum','Cash','BuildTheFuture','Email',200000,750000,120,'JohnDoe','jdoe@university.edu','Active','2018-06-01','2023-09-10','Annual matching in FY2024');

INSERT INTO alumni_gift_program VALUES
('GP002','FutureLeaders','2020','2030','RecentGraduates',250,10000,0,'Gold','Endowment','InvestInTomorrow','SocialMedia',150000,300000,85,'JaneSmith','jsmith@university.edu','Active','2020-01-15','2023-08-20','Focus on STEM scholarships');

INSERT INTO alumni_gift_program VALUES
('GP003','CommunityPatrons','2015','2023','LocalSupporters',50,5000,0,'Silver','InKind','GiveBack','Print',100000,250000,200,'MarkLee','mlee@university.edu','Closing','2015-03-10','2023-07-05','Closing after successful campaign');

-- Table describing energy sources used by campus facilities
CREATE TABLE facility_energy_source
(
    source_id               TEXT PRIMARY KEY,
    facility_id            TEXT,
    source_type            TEXT,
    capacity_mw            REAL,
    current_output_mw      REAL,
    installation_date      TEXT,
    last_maintenance_date  TEXT,
    efficiency_percent     REAL,
    fuel_type              TEXT,
    renewable              INTEGER,
    contract_id            TEXT,
    provider_name          TEXT,
    cost_per_mwh           REAL,
    status                 TEXT,
    operational_hours_per_day INTEGER,
    emission_factor        REAL,
    grid_connection_id     TEXT,
    notes                  TEXT,
    latitude               REAL,
    longitude              REAL
);

INSERT INTO facility_energy_source VALUES
('ES001','F001','Solar','5.0','4.5','2018-04-12','2023-06-01','22.5','Solar','1','C001','SunPower','50','Active','10','0','GC001','Roof panels','35.1234','-80.5678');

INSERT INTO facility_energy_source VALUES
('ES002','F002','NaturalGas','10.0','8.2','2015-09-20','2023-05-15','35.0','NaturalGas','0','C002','EnergyCo','70','Active','24','0.45','GC002','Combined cycle','35.2234','-80.6678');

INSERT INTO facility_energy_source VALUES
('ES003','F003','Geothermal','3.0','2.8','2020-01-05','2023-04-20','30.0','Geothermal','1','C003','GeoHeat','60','Planned','12','0.1','GC003','Ground source heat pumps','35.3234','-80.7678');

-- Table capturing global partnership agreements with external institutions
CREATE TABLE global_partnership_agreement
(
    agreement_id            TEXT PRIMARY KEY,
    partner_institution     TEXT,
    country                 TEXT,
    scope                   TEXT,
    start_date              TEXT,
    end_date                TEXT,
    agreement_type          TEXT,
    lead_contact            TEXT,
    lead_email              TEXT,
    coordinator             TEXT,
    coordinator_email       TEXT,
    funding_amount          REAL,
    resource_share          TEXT,
    intellectual_property   TEXT,
    governance_model        TEXT,
    review_cycle_months    INTEGER,
    status                  TEXT,
    created_by              TEXT,
    created_date            TEXT,
    last_modified_by        TEXT,
    last_modified_date      TEXT,
    notes                   TEXT
);

INSERT INTO global_partnership_agreement VALUES
('GA001','TechGlobal University','Germany','JointResearch','2021-03-01','2026-03-01','ResearchCollaboration','AliceK','alicek@techglobal.edu','BobM','bobm@university.edu',2000000,'LabEquipment;Data','Shared','SteeringCommittee',12,'Active','AdminA','2021-02-15','AdminB','2023-09-01','Focus on AI ethics');

INSERT INTO global_partnership_agreement VALUES
('GA002','Health Innovations Institute','Canada','StudentExchange','2020-09-15','2025-09-15','ExchangeProgram','CarolL','caroll@healthinst.ca','DavidN','davidn@university.edu',500000,'InternshipSlots','Joint','ExchangeBoard',6,'Active','AdminC','2020-08-01','AdminD','2023-08-20','Includes summer internships');

INSERT INTO global_partnership_agreement VALUES
('GA003','Sustainability Alliance','Sweden','SustainabilityProjects','2019-01-10','2024-01-10','ProjectCollaboration','EveS','eves@greenalliance.se','FrankT','frankt@university.edu',750000,'ResearchFacilities','CoOwned','JointSteering',12,'Terminated','AdminE','2018-12-01','AdminF','2023-07-15','Project concluded early');

-- Table linking faculty research groups to their members and roles
CREATE TABLE faculty_research_group_member
(
    group_id                TEXT,
    member_id               TEXT,
    role                    TEXT,
    join_date               TEXT,
    end_date                TEXT,
    primary_affiliation     TEXT,
    secondary_affiliation   TEXT,
    research_focus          TEXT,
    project_count           INTEGER,
    grant_total             REAL,
    publication_count       INTEGER,
    h_index                 INTEGER,
    orcid_id                TEXT,
    email                   TEXT,
    phone                   TEXT,
    status                  TEXT,
    seniority_level         TEXT,
    allocation_percent      REAL,
    funding_source          TEXT,
    notes                   TEXT,
    PRIMARY KEY (group_id, member_id)
);

INSERT INTO faculty_research_group_member VALUES
('GRP001','M010','PrincipalInvestigator','2015-07-01','','Engineering','MaterialsScience','Nanocomposites',8,1200000,25,22,'0000-0001-2345-6789','prof.smith@university.edu','555-1234','Active','Senior',40,'UniversityFund','Lead PI for nanotech project');

INSERT INTO faculty_research_group_member VALUES
('GRP001','M011','PostdoctoralResearcher','2018-09-15','','Engineering','Nanotech','Nanocomposites',5,300000,10,12,'0000-0002-3456-7890','postdoc.jones@university.edu','555-2345','Active','Mid',30,'GrantABC','Focused on graphene synthesis');

INSERT INTO faculty_research_group_member VALUES
('GRP002','M020','ResearchAssistant','2020-01-10','','Biology','Genomics','CRISPR',3,150000,5,8,'0000-0003-4567-8901','ra.lee@university.edu','555-3456','Active','Junior',20,'GrantXYZ','Supporting CRISPR screening');

-- Table storing metrics for community health initiatives
CREATE TABLE community_health_initiative_metric
(
    initiative_id           TEXT PRIMARY KEY,
    metric_name             TEXT,
    measurement_unit        TEXT,
    baseline_value          REAL,
    target_value            REAL,
    current_value           REAL,
    measurement_date        TEXT,
    data_source             TEXT,
    responsible_team        TEXT,
    status                  TEXT,
    notes                   TEXT,
    frequency               TEXT,
    trend                   TEXT,
    confidence_interval     REAL,
    methodology             TEXT,
    review_date             TEXT,
    created_by              TEXT,
    created_date            TEXT,
    last_updated_by         TEXT,
    last_updated_date       TEXT,
    additional_notes        TEXT
);

INSERT INTO community_health_initiative_metric VALUES
('CH001','VaccinationRate','Percent',65.0,85.0,78.5,'2023-09-01','HealthDept','OutreachTeam','OnTrack','Improving among seniors','Monthly','Upward',2.5,'SurveyAndRegistry','2023-10-15','AnalystA','2023-09-05','SupervisorB','2023-09-20','Focus on rural areas');

INSERT INTO community_health_initiative_metric VALUES
('CH002','PhysicalActivityHours','HoursPerWeek',2.5,5.0,3.8,'2023-09-01','WellnessSurvey','FitnessTeam','Behind','COVID impact noted','Monthly','Stable',0.3,'SelfReport','2023-10-10','AnalystC','2023-09-07','SupervisorD','2023-09-22','Consider gym reopening');

INSERT INTO community_health_initiative_metric VALUES
('CH003','SmokingPrevalence','Percent',15.0,10.0,12.3,'2023-09-01','HealthSurvey','PreventionTeam','OnTrack','Steady decline','Quarterly','Downward',1.0,'AnonymousSurvey','2023-10-01','AnalystE','2023-09-03','SupervisorF','2023-09-18','Target colleges');

-- Log of campus Wi‑Fi access points and their operational details
CREATE TABLE campus_wifi_access_point_log
(
    ap_id                   TEXT PRIMARY KEY,
    building                TEXT,
    floor                   INTEGER,
    ap_model                TEXT,
    mac_address             TEXT,
    install_date            TEXT,
    last_firmware_update    TEXT,
    ssid                    TEXT,
    channel                 INTEGER,
    power_dbm               REAL,
    status                  TEXT,
    uptime_hours            INTEGER,
    client_count            INTEGER,
    average_load_percent    REAL,
    error_rate_percent      REAL,
    maintenance_window      TEXT,
    admin_contact           TEXT,
    admin_email             TEXT,
    notes                   TEXT,
    latitude                REAL,
    longitude               REAL,
    last_inspection_date    TEXT
);

INSERT INTO campus_wifi_access_point_log VALUES
('AP001','ScienceHall','1','CiscoAir','AA:BB:CC:DD:EE:01','2019-02-15','2023-06-01','UUniWiFi','36','-30','Active','15000','120','45.2','0.5','Sundays02-04','MikeR','mike.r@university.edu','Main lobby AP','35.1240','-80.5650','2023-09-10');

INSERT INTO campus_wifi_access_point_log VALUES
('AP002','Library','2','ArubaInstant','AA:BB:CC:DD:EE:02','2020-08-20','2023-05-20','UUniWiFi','40','-28','Active','12000','80','38.7','0.3','Saturdays01-03','SaraK','sara.k@university.edu','Reading area','35.1250','-80.5660','2023-08-15');

INSERT INTO campus_wifi_access_point_log VALUES
('AP003','StudentCenter','3','UbiquitiUAP','AA:BB:CC:DD:EE:03','2021-11-10','2023-07-15','UUniWiFi','44','-25','Active','8000','150','52.1','0.7','Fridays22-23','TomL','tom.l@university.edu','Cafe zone','35.1260','-80.5670','2023-09-05');

-- Schedule for deployment of environmental sensors across campus
CREATE TABLE environmental_sensor_deployment_schedule
(
    deployment_id           TEXT PRIMARY KEY,
    sensor_type             TEXT,
    location_description    TEXT,
    building                TEXT,
    floor                   INTEGER,
    scheduled_date          TEXT,
    expected_duration_days  INTEGER,
    install_team            TEXT,
    lead_technician         TEXT,
    sensor_id               TEXT,
    calibration_needed      INTEGER,
    calibration_date        TEXT,
    data_endpoint_url       TEXT,
    status                  TEXT,
    priority_level          TEXT,
    budget_allocated        REAL,
    vendor_name             TEXT,
    vendor_contact          TEXT,
    notes                   TEXT,
    created_by              TEXT,
    created_date            TEXT
);

INSERT INTO environmental_sensor_deployment_schedule VALUES
('DS001','AirQuality','North courtyard','Outdoor','NULL','2023-11-01',3,'TeamAlpha','JohnD','SN001',1,'2023-11-04','http://data.university.edu/air','Planned','High',1500,'EnviroTech','contact@envirotech.com','Include temperature sensor','PlannerX','2023-09-20');

INSERT INTO environmental_sensor_deployment_schedule VALUES
('DS002','SoilMoisture','Green roof garden','ScienceHall','5','2023-12-05',2,'TeamBeta','AnnaS','SN002',0,'NULL','http://data.university.edu/soil','Planned','Medium',800,'SoilSense','info@soilsense.com','Check drainage','PlannerY','2023-09-22');

INSERT INTO environmental_sensor_deployment_schedule VALUES
('DS003','NoiseLevel','Student plaza','StudentCenter','Ground','2024-01-10',4,'TeamGamma','MikeB','SN003',1,'2024-01-14','http://data.university.edu/noise','Planned','Low',600,'AcoustiCo','support@acoustic.co','Calibration after installation','PlannerZ','2023-09-25');

-- Detailed allocation records for grant funding
CREATE TABLE grant_funding_allocation_detail
(
    allocation_id           TEXT PRIMARY KEY,
    grant_id                TEXT,
    fiscal_year             INTEGER,
    allocated_amount        REAL,
    spent_amount            REAL,
    remaining_amount        REAL,
    allocation_category     TEXT,
    project_code            TEXT,
    department              TEXT,
    principal_investigator  TEXT,
    co_pi                   TEXT,
    approval_date           TEXT,
    disbursement_date       TEXT,
    funding_source          TEXT,
    status                  TEXT,
    notes                   TEXT,
    created_by              TEXT,
    created_date            TEXT,
    last_modified_by        TEXT,
    last_modified_date      TEXT,
    audit_trail_id          TEXT
);

INSERT INTO grant_funding_allocation_detail VALUES
('AF001','GNT001',2023,500000,320000,180000,'Equipment','PRJ101','Engineering','DrAlice','DrBob','2023-02-15','2023-03-01','Federal','Active','Phase1 equipment purchase','AdminG','2023-02-20','AdminH','2023-09-01','AT001');

INSERT INTO grant_funding_allocation_detail VALUES
('AF002','GNT002',2023,300000,150000,150000,'Personnel','PRJ202','Biology','DrCarol','DrDave','2023-04-10','2023-04-25','State','Active','Salaries for postdocs','AdminI','2023-04-12','AdminJ','2023-09-02','AT002');

INSERT INTO grant_funding_allocation_detail VALUES
('AF003','GNT003',2022,200000,200000,0,'Travel','PRJ303','Chemistry','DrEve','DrFrank','2022-01-05','2022-01-20','Private','Closed','Conference travel expenses','AdminK','2022-01-10','AdminL','2022-12-15','AT003');

-- Requirements for technology support for events
CREATE TABLE event_technology_requirements
(
    event_id                TEXT PRIMARY KEY,
    audio_system_required   INTEGER,
    visual_system_required  INTEGER,
    lighting_design         TEXT,
    stage_dimensions        TEXT,
    wifi_bandwidth_gbps     REAL,
    streaming_platform      TEXT,
    recording_needed        INTEGER,
    live_translation        INTEGER,
    vr_support              INTEGER,
    equipment_rental_budget REAL,
    technical_staff_needed INTEGER,
    setup_time_hours        INTEGER,
    tear_down_time_hours    INTEGER,
    power_requirements_kw   REAL,
    network_security_level  TEXT,
    access_control          TEXT,
    notes                   TEXT,
    created_by              TEXT,
    created_date            TEXT
);

INSERT INTO event_technology_requirements VALUES
('EV001',1,1,'DynamicSpotlight','30x20',2.5,'Zoom',1,1,0,12000,5,8,4,15,'High','BadgeAccess','Keynote with live translation','PlannerM','2023-09-01');

INSERT INTO event_technology_requirements VALUES
('EV002',1,0,'AmbientLED','15x10',1.0,'MicrosoftTeams',0,0,0,5000,2,4,2,8,'Medium','TicketScan','Workshop focused on hands‑on demos','PlannerN','2023-09-05');

INSERT INTO event_technology_requirements VALUES
('EV003',0,1,'StageWash','20x15',3.0,'YouTubeLive',1,0,1,20000,7,10,6,20,'VeryHigh','RFIDBadge','VR exhibit opening ceremony','PlannerO','2023-09-10');