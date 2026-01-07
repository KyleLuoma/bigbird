-- Campus Infrastructure Project
CREATE TABLE campus_infrastructure_project
(
    project_id               TEXT PRIMARY KEY,
    project_name             TEXT,
    project_type             TEXT,
    lead_department          TEXT,
    project_manager          TEXT,
    start_date               TEXT,
    planned_end_date         TEXT,
    actual_end_date          TEXT,
    budget_allocated         REAL,
    budget_spent             REAL,
    status                   TEXT,
    funding_source           TEXT,
    contractor_name          TEXT,
    contractor_contact       TEXT,
    risk_level               TEXT,
    environmental_impact     TEXT,
    number_of_buildings      INTEGER,
    total_sqft               INTEGER,
    estimated_jobs_created   INTEGER,
    city                     TEXT,
    state                    TEXT,
    zip_code                 INTEGER
);

INSERT INTO campus_infrastructure_project (project_id, project_name, project_type, lead_department, project_manager, start_date, planned_end_date, actual_end_date, budget_allocated, budget_spent, status, funding_source, contractor_name, contractor_contact, risk_level, environmental_impact, number_of_buildings, total_sqft, estimated_jobs_created, city, state, zip_code) VALUES ('P001','ScienceCenterRenovation','Renovation','Facilities','AliceSmith','2023-01-15','2024-12-31','',5000000,2500000,'InProgress','UniversityFund','BuildCo','5551234567','Medium','Low',2,120000,150,'Springfield','IL',62704);
INSERT INTO campus_infrastructure_project (project_id, project_name, project_type, lead_department, project_manager, start_date, planned_end_date, actual_end_date, budget_allocated, budget_spent, status, funding_source, contractor_name, contractor_contact, risk_level, environmental_impact, number_of_buildings, total_sqft, estimated_jobs_created, city, state, zip_code) VALUES ('P002','EastCampusParkingDeck','Construction','Transportation','BobJones','2022-06-01','2025-05-30','',2000000,800000,'Planning','StateGrant','ConstructIt','5559876543','High','Medium',1,250000,80,'Riverdale','CA',90210);
INSERT INTO campus_infrastructure_project (project_id, project_name, project_type, lead_department, project_manager, start_date, planned_end_date, actual_end_date, budget_allocated, budget_spent, status, funding_source, contractor_name, contractor_contact, risk_level, environmental_impact, number_of_buildings, total_sqft, estimated_jobs_created, city, state, zip_code) VALUES ('P003','GreenhouseRenewal','Renovation','Sustainability','ClaraLee','2021-09-10','2023-03-15','2023-02-28',750000,750000,'Completed','AlumniDonations','EcoBuilders','5552223344','Low','Low',1,35000,30,'Laketown','NY',12345);

-- Renewable Energy Asset
CREATE TABLE renewable_energy_asset
(
    asset_id                 TEXT PRIMARY KEY,
    asset_type               TEXT,
    capacity_mw              REAL,
    installation_date        TEXT,
    location                 TEXT,
    status                   TEXT,
    provider                 TEXT,
    maintenance_cycle_days   INTEGER,
    operational_since        TEXT,
    last_maintenance_date    TEXT,
    expected_lifetime_years  INTEGER,
    current_output_mw        REAL,
    grid_connection_point    TEXT,
    owner_organization       TEXT,
    commissioning_cost_usd   REAL,
    decommissioning_plan     TEXT,
    energy_type              TEXT,
    latitude                 REAL,
    longitude                REAL,
    region                   TEXT,
    state                    TEXT,
    zip_code                 INTEGER
);

INSERT INTO renewable_energy_asset (asset_id, asset_type, capacity_mw, installation_date, location, status, provider, maintenance_cycle_days, operational_since, last_maintenance_date, expected_lifetime_years, current_output_mw, grid_connection_point, owner_organization, commissioning_cost_usd, decommissioning_plan, energy_type, latitude, longitude, region, state, zip_code) VALUES ('RA001','SolarPanel','5.2','2020-04-12','NorthField','Operational','SunPower','180','2020-04-12','2023-01-10',25,5.0,'SubstationA','UniversityEnergy','4500000','Plan2025','Solar',40.7128,-74.0060,'Northeast','NY',10001);
INSERT INTO renewable_energy_asset (asset_id, asset_type, capacity_mw, installation_date, location, status, provider, maintenance_cycle_days, operational_since, last_maintenance_date, expected_lifetime_years, current_output_mw, grid_connection_point, owner_organization, commissioning_cost_usd, decommissioning_plan, energy_type, latitude, longitude, region, state, zip_code) VALUES ('RA002','WindTurbine','2.5','2019-09-20','HillTop','Operational','WindCorp','365','2019-09-20','2022-12-05',20,2.3,'SubstationB','UniversityEnergy','3200000','Plan2024','Wind',34.0522,-118.2437,'West','CA',90001);
INSERT INTO renewable_energy_asset (asset_id, asset_type, capacity_mw, installation_date, location, status, provider, maintenance_cycle_days, operational_since, last_maintenance_date, expected_lifetime_years, current_output_mw, grid_connection_point, owner_organization, commissioning_cost_usd, decommissioning_plan, energy_type, latitude, longitude, region, state, zip_code) VALUES ('RA003','Geothermal','3.0','2021-02-15','EastCampus','Operational','GeoHeat','730','2021-02-15','2023-03-01',30,2.8,'SubstationC','UniversityEnergy','6000000','Plan2028','Geothermal',41.8781,-87.6298,'Midwest','IL',60601);

-- Water Quality Monitoring Station
CREATE TABLE water_quality_monitoring_station
(
    station_id               TEXT PRIMARY KEY,
    river_name               TEXT,
    lake_name                TEXT,
    location_description     TEXT,
    latitude                 REAL,
    longitude                REAL,
    installation_date        TEXT,
    last_calibration_date    TEXT,
    ph_level                 REAL,
    turbidity_ntu            REAL,
    temperature_c            REAL,
    dissolved_oxygen_mg_l    REAL,
    conductivity_us_cm       REAL,
    bacteria_count_cfu_100ml INTEGER,
    nitrate_mg_l             REAL,
    phosphate_mg_l           REAL,
    chloride_mg_l            REAL,
    site_manager             TEXT,
    contact_phone            TEXT,
    city                     TEXT,
    state                    TEXT
);

INSERT INTO water_quality_monitoring_station (station_id, river_name, lake_name, location_description, latitude, longitude, installation_date, last_calibration_date, ph_level, turbidity_ntu, temperature_c, dissolved_oxygen_mg_l, conductivity_us_cm, bacteria_count_cfu_100ml, nitrate_mg_l, phosphate_mg_l, chloride_mg_l, site_manager, contact_phone, city, state) VALUES ('WS001','RiverA','LakeAlpha','NorthBank','38.8977','-77.0365','2020-05-01','2023-02-15',7.2,3.5,15.0,8.1,150,10,0.5,0.03,20,'JohnDoe','5551112222','CapitalCity','VA');
INSERT INTO water_quality_monitoring_station (station_id, river_name, lake_name, location_description, latitude, longitude, installation_date, last_calibration_date, ph_level, turbidity_ntu, temperature_c, dissolved_oxygen_mg_l, conductivity_us_cm, bacteria_count_cfu_100ml, nitrate_mg_l, phosphate_mg_l, chloride_mg_l, site_manager, contact_phone, city, state) VALUES ('WS002','RiverB','LakeBeta','EastShore','36.1699','-115.1398','2021-08-10','2023-01-20',7.5,2.0,18.2,9.0,120,5,0.3,0.02,15,'EmilySmith','5553334444','DesertVille','NV');
INSERT INTO water_quality_monitoring_station (station_id, river_name, lake_name, location_description, latitude, longitude, installation_date, last_calibration_date, ph_level, turbidity_ntu, temperature_c, dissolved_oxygen_mg_l, conductivity_us_cm, bacteria_count_cfu_100ml, nitrate_mg_l, phosphate_mg_l, chloride_mg_l, site_manager, contact_phone, city, state) VALUES ('WS003','RiverC','LakeGamma','SouthRidge','34.0522','-118.2437','2019-03-22','2022-11-05',7.0,4.2,16.5,7.5,130,12,0.6,0.04,25,'MarkTaylor','5555556666','CoastTown','CA');

-- Carbon Emission Record
CREATE TABLE carbon_emission_record
(
    record_id               TEXT PRIMARY KEY,
    source_type             TEXT,
    emission_tons           REAL,
    measurement_date        TEXT,
    reporting_entity        TEXT,
    verification_status     TEXT,
    scope                   INTEGER,
    category                TEXT,
    region                  TEXT,
    city                    TEXT,
    state                   TEXT,
    facility_name           TEXT,
    operating_hours         INTEGER,
    energy_consumed_mwh     REAL,
    fuel_type               TEXT,
    co2e_intensity          REAL,
    notes                   TEXT,
    reported_by             TEXT,
    approval_date           TEXT,
    audit_reference         TEXT,
    greenhouse_gas          TEXT,
    methodology             TEXT
);

INSERT INTO carbon_emission_record (record_id, source_type, emission_tons, measurement_date, reporting_entity, verification_status, scope, category, region, city, state, facility_name, operating_hours, energy_consumed_mwh, fuel_type, co2e_intensity, notes, reported_by, approval_date, audit_reference, greenhouse_gas, methodology) VALUES ('CE001','Electricity','1200.5','2022-12-31','UniversityFacilities','Verified',2,'Scope2','Midwest','Springfield','IL','MainCampus',8760,50000,'NaturalGas',0.024,'Annual report','JaneDoe','2023-01-15','AU123','CO2','GHGProtocol');
INSERT INTO carbon_emission_record (record_id, source_type, emission_tons, measurement_date, reporting_entity, verification_status, scope, category, region, city, state, facility_name, operating_hours, energy_consumed_mwh, fuel_type, co2e_intensity, notes, reported_by, approval_date, audit_reference, greenhouse_gas, methodology) VALUES ('CE002','Heating','450.0','2022-12-31','FacilitiesDept','Pending',1,'Scope1','West','Riverdale','CA','DormitoryA',4380,20000,'Electric',0.022,'Quarterly update','BobSmith','2023-02-01','AU124','CO2','EPA');
INSERT INTO carbon_emission_record (record_id, source_type, emission_tons, measurement_date, reporting_entity, verification_status, scope, category, region, city, state, facility_name, operating_hours, energy_consumed_mwh, fuel_type, co2e_intensity, notes, reported_by, approval_date, audit_reference, greenhouse_gas, methodology) VALUES ('CE003','Transportation','300.75','2022-12-31','CampusTransit','Verified',3,'Scope3','South','Laketown','NY','ShuttleFleet',3000,15000,'Diesel',0.036,'Yearly summary','AliceBrown','2023-01-20','AU125','CO2','ISO14064');

-- Digital Content License Agreement
CREATE TABLE digital_content_license_agreement
(
    license_id               TEXT PRIMARY KEY,
    content_title            TEXT,
    content_type             TEXT,
    license_type             TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    cost_usd                 REAL,
    holder_organization      TEXT,
    contact_email            TEXT,
    website                  TEXT,
    restrictions             TEXT,
    distribution_rights      TEXT,
    modification_allowed     TEXT,
    exclusivity              TEXT,
    territory                TEXT,
    renewal_option           TEXT,
    payment_schedule         TEXT,
    approval_status          TEXT,
    created_by               TEXT,
    creation_date            TEXT,
    last_updated_by          TEXT,
    last_update_date         TEXT
);

INSERT INTO digital_content_license_agreement (license_id, content_title, content_type, license_type, start_date, end_date, cost_usd, holder_organization, contact_email, website, restrictions, distribution_rights, modification_allowed, exclusivity, territory, renewal_option, payment_schedule, approval_status, created_by, creation_date, last_updated_by, last_update_date) VALUES ('DL001','CampusTourVideo','Video','Exclusive','2022-01-01','2025-12-31',15000,'MediaDept','mediadept@university.edu','www.university.edu/media','NoResale','OnlineStreaming','Yes','Exclusive','Global','AutoRenew','Annual','Approved','JohnAdmin','2022-01-01','JaneAdmin','2022-06-01');
INSERT INTO digital_content_license_agreement (license_id, content_title, content_type, license_type, start_date, end_date, cost_usd, holder_organization, contact_email, website, restrictions, distribution_rights, modification_allowed, exclusivity, territory, renewal_option, payment_schedule, approval_status, created_by, creation_date, last_updated_by, last_update_date) VALUES ('DL002','ResearchPaperDataset','Dataset','NonExclusive','2021-07-15','2024-07-14',5000,'ResearchOffice','research@university.edu','www.university.edu/research','NoCommercialUse','RestrictedDownload','No','NonExclusive','USOnly','ManualRenew','Quarterly','Pending','MikeTech','2021-07-15','MikeTech','2022-03-01');
INSERT INTO digital_content_license_agreement (license_id, content_title, content_type, license_type, start_date, end_date, cost_usd, holder_organization, contact_email, website, restrictions, distribution_rights, modification_allowed, exclusivity, territory, renewal_option, payment_schedule, approval_status, created_by, creation_date, last_updated_by, last_update_date) VALUES ('DL003','AlumniNewsletter','PDF','NonExclusive','2020-09-01','2023-08-31',2000,'AlumniRelations','alumni@university.edu','www.university.edu/alumni','NoDistribution','EmailOnly','Yes','NonExclusive','National','AutoRenew','Monthly','Approved','SaraComm','2020-09-01','SaraComm','2022-01-15');

-- Campus Security Incident
CREATE TABLE campus_security_incident
(
    incident_id               TEXT PRIMARY KEY,
    incident_type             TEXT,
    date_reported             TEXT,
    time_reported             TEXT,
    location                  TEXT,
    building                  TEXT,
    floor                     INTEGER,
    room_number               TEXT,
    description               TEXT,
    severity_level            TEXT,
    reported_by               TEXT,
    department                TEXT,
    status                    TEXT,
    resolution_date           TEXT,
    action_taken              TEXT,
    investigating_officer     TEXT,
    witnesses                 TEXT,
    evidence_collected        TEXT,
    notification_sent         TEXT,
    follow_up_required        TEXT,
    closed_flag               TEXT,
    closure_reason            TEXT
);

INSERT INTO campus_security_incident (incident_id, incident_type, date_reported, time_reported, location, building, floor, room_number, description, severity_level, reported_by, department, status, resolution_date, action_taken, investigating_officer, witnesses, evidence_collected, notification_sent, follow_up_required, closed_flag, closure_reason) VALUES ('SI001','Theft','2023-03-12','14:30','NorthParkingLot','N/A','0','N/A','Bicycle stolen from rack','Medium','JohnDoe','PublicSafety','Closed','2023-03-14','RecoveredBike','OfficerSmith','None','CCTVFootage','Yes','No','Y','Recovered');
INSERT INTO campus_security_incident (incident_id, incident_type, date_reported, time_reported, location, building, floor, room_number, description, severity_level, reported_by, department, status, resolution_date, action_taken, investigating_officer, witnesses, evidence_collected, notification_sent, follow_up_required, closed_flag, closure_reason) VALUES ('SI002','Vandalism','2023-04-05','22:10','EastQuad','ScienceHall','2','210','Graffiti on walls','Low','EmilyClark','Facilities','Open','N/A','PendingInvestigation','OfficerLee','StudentA,StudentB','Photos','No','Yes','N','Pending');
INSERT INTO campus_security_incident (incident_id, incident_type, date_reported, time_reported, location, building, floor, room_number, description, severity_level, reported_by, department, status, resolution_date, action_taken, investigating_officer, witnesses, evidence_collected, notification_sent, follow_up_required, closed_flag, closure_reason) VALUES ('SI003','MedicalEmergency','2023-05-20','09:45','StudentCenter','HealthClinic','1','101','Student fainted, required CPR','High','MikeBrown','HealthServices','Closed','2023-05-20','ProvidedFirstAid','OfficerGarcia','None','MedicalReport','Yes','No','Y','Resolved');

-- Research Funding Agency
CREATE TABLE research_funding_agency
(
    agency_id                TEXT PRIMARY KEY,
    agency_name              TEXT,
    country                  TEXT,
    focus_area               TEXT,
    contact_name             TEXT,
    contact_email            TEXT,
    website                  TEXT,
    phone_number             TEXT,
    grant_cycle_months       INTEGER,
    average_grant_amount_usd REAL,
    total_funding_usd        REAL,
    established_year         INTEGER,
    public_private           TEXT,
    approval_process         TEXT,
    reporting_requirements   TEXT,
    evaluation_criteria      TEXT,
    funding_mechanism        TEXT,
    eligible_institutions    TEXT,
    programs_offered         TEXT,
    application_deadline_day INTEGER,
    application_deadline_month INTEGER,
    notes                    TEXT
);

INSERT INTO research_funding_agency (agency_id, agency_name, country, focus_area, contact_name, contact_email, website, phone_number, grant_cycle_months, average_grant_amount_usd, total_funding_usd, established_year, public_private, approval_process, reporting_requirements, evaluation_criteria, funding_mechanism, eligible_institutions, programs_offered, application_deadline_day, application_deadline_month, notes) VALUES ('FA001','NationalScienceFoundation','USA','STEM','KarenLee','klee@nsf.gov','www.nsf.gov','5557778888',12,1200000,50000000,1950,'Public','PeerReview','AnnualReport','ImpactScore','Grant','Universities','Research grants',15,9,'Primary US research funding agency');
INSERT INTO research_funding_agency (agency_id, agency_name, country, focus_area, contact_name, contact_email, website, phone_number, grant_cycle_months, average_grant_amount_usd, total_funding_usd, established_year, public_private, approval_process, reporting_requirements, evaluation_criteria, funding_mechanism, eligible_institutions, programs_offered, application_deadline_day, application_deadline_month, notes) VALUES ('FA002','GlobalHealthInitiative','UK','PublicHealth','SamirPatel','spatel@ghi.org','www.ghi.org','5559990000',6,800000,20000000,1995,'Private','PanelReview','BiannualReport','HealthImpact','Award','ResearchInstitutes','Health research grants',30,11,'Focus on global disease prevention');
INSERT INTO research_funding_agency (agency_id, agency_name, country, focus_area, contact_name, contact_email, website, phone_number, grant_cycle_months, average_grant_amount_usd, total_funding_usd, established_year, public_private, approval_process, reporting_requirements, evaluation_criteria, funding_mechanism, eligible_institutions, programs_offered, application_deadline_day, application_deadline_month, notes) VALUES ('FA003','EcoFutureFund','Canada','EnvironmentalScience','LindaChong','lchong@ecofuture.ca','www.ecofuture.ca','5552221111',12,500000,15000000,2002,'Public','ExternalReview','QuarterlyReport','SustainabilityScore','Grant','Universities, NGOs','Environmental projects',10,4,'Supports climate resilience research');

-- Faculty Development Course
CREATE TABLE faculty_development_course
(
    course_id                TEXT PRIMARY KEY,
    course_name              TEXT,
    provider                 TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    credit_hours             REAL,
    target_audience          TEXT,
    delivery_mode            TEXT,
    instructor_name          TEXT,
    instructor_email         TEXT,
    max_participants         INTEGER,
    registration_fee_usd     REAL,
    syllabus_url             TEXT,
    prerequisites            TEXT,
    assessment_method        TEXT,
    certificate_awarded      TEXT,
    status                   TEXT,
    location                 TEXT,
    city                     TEXT,
    state                    TEXT,
    zip_code                 INTEGER,
    notes                    TEXT
);

INSERT INTO faculty_development_course (course_id, course_name, provider, start_date, end_date, credit_hours, target_audience, delivery_mode, instructor_name, instructor_email, max_participants, registration_fee_usd, syllabus_url, prerequisites, assessment_method, certificate_awarded, status, location, city, state, zip_code, notes) VALUES ('FD001','DataScienceForEducators','OnlineInstitute','2023-09-01','2023-12-15',3.0,'Faculty','Online','DrAliceWang','alice.wang@onlineinst.edu',30,0,'www.onlineinst.edu/ds_course','None','Project','Yes','Open','Virtual','Online','N/A','00000','Introductory data science concepts');
INSERT INTO faculty_development_course (course_id, course_name, provider, start_date, end_date, credit_hours, target_audience, delivery_mode, instructor_name, instructor_email, max_participants, registration_fee_usd, syllabus_url, prerequisites, assessment_method, certificate_awarded, status, location, city, state, zip_code, notes) VALUES ('FD002','AdvancedGrantWriting','UniversityCenter','2023-10-10','2024-01-20',2.5,'Faculty','InPerson','ProfBobMiller','bob.miller@university.edu',20,150,'www.university.edu/grantwriting','BasicWriting','Essay','Yes','Scheduled','RoomB12','MainCampus','Springfield','IL',62704','Focus on federal grant proposals');
INSERT INTO faculty_development_course (course_id, course_name, provider, start_date, end_date, credit_hours, target_audience, delivery_mode, instructor_name, instructor_email, max_participants, registration_fee_usd, syllabus_url, prerequisites, assessment_method, certificate_awarded, status, location, city, state, zip_code, notes) VALUES ('FD003','PedagogicalDesignWorkshop','TeachingInstitute','2024-02-05','2024-03-05',1.5,'Faculty','Hybrid','DrClaireLee','claire.lee@teachinginst.org',25,75,'www.teachinginst.org/pedagogy','TeachingExperience','Presentation','Yes','Open','RoomC03','EastCampus','Riverdale','CA',90210','Designing active learning environments');

-- Sustainability Metric Log
CREATE TABLE sustainability_metric_log
(
    log_id                  TEXT PRIMARY KEY,
    metric_name             TEXT,
    metric_value            REAL,
    measurement_date        TEXT,
    unit                    TEXT,
    source_system           TEXT,
    description             TEXT,
    target_value            REAL,
    variance                REAL,
    status                  TEXT,
    responsible_party       TEXT,
    department              TEXT,
    city                    TEXT,
    state                   TEXT,
    region                  TEXT,
    notes                   TEXT,
    updated_by              TEXT,
    update_timestamp        TEXT,
    approval_status         TEXT,
    review_date            TEXT,
    next_review_date       TEXT,
    data_quality           TEXT
);

INSERT INTO sustainability_metric_log (log_id, metric_name, metric_value, measurement_date, unit, source_system, description, target_value, variance, status, responsible_party, department, city, state, region, notes, updated_by, update_timestamp, approval_status, review_date, next_review_date, data_quality) VALUES ('SM001','EnergyUse','145000','2023-12-31','kWh','EnergyMonitor','Total campus electricity consumption',150000,-5000,'OnTrack','MikeEnergy','Facilities','Springfield','IL','Midwest','', 'AnnaOps','2024-01-10','Approved','2024-01-01','2025-01-01','High');
INSERT INTO sustainability_metric_log (log_id, metric_name, metric_value, measurement_date, unit, source_system, description, target_value, variance, status, responsible_party, department, city, state, region, notes, updated_by, update_timestamp, approval_status, review_date, next_review_date, data_quality) VALUES ('SM002','WaterConsumption','32000','2023-12-31','Gallons','WaterMeter','Total campus water usage',30000,2000,'AboveTarget','LauraWater','Facilities','Springfield','IL','Midwest','', 'JohnOps','2024-01-11','Pending','2024-01-02','2025-01-02','Medium');
INSERT INTO sustainability_metric_log (log_id, metric_name, metric_value, measurement_date, unit, source_system, description, target_value, variance, status, responsible_party, department, city, state, region, notes, updated_by, update_timestamp, approval_status, review_date, next_review_date, data_quality) VALUES ('SM003','WasteDiversionRate','85','2023-12-31','Percent','WasteAudit','Percentage of waste diverted from landfill',90,-5,'SlightlyLow','SamWaste','Facilities','Springfield','IL','Midwest','', 'EmilyOps','2024-01-12','Approved','2024-01-03','2025-01-03','High');

-- Campus Artifact Catalog
CREATE TABLE campus_artifact_catalog
(
    artifact_id               TEXT PRIMARY KEY,
    artifact_name             TEXT,
    origin_culture            TEXT,
    period                    TEXT,
    material                  TEXT,
    location_room             TEXT,
    building                  TEXT,
    city                      TEXT,
    state                     TEXT,
    acquisition_date          TEXT,
    acquisition_method        TEXT,
    acquisition_cost_usd      REAL,
    condition_score           INTEGER,
    conservation_status       TEXT,
    display_status            TEXT,
    curator_name              TEXT,
    curator_contact           TEXT,
    insurance_value_usd       REAL,
    donor_name                TEXT,
    donor_contact             TEXT,
    exhibition_history        TEXT,
    notes                     TEXT
);

INSERT INTO campus_artifact_catalog (artifact_id, artifact_name, origin_culture, period, material, location_room, building, city, state, acquisition_date, acquisition_method, acquisition_cost_usd, condition_score, conservation_status, display_status, curator_name, curator_contact, insurance_value_usd, donor_name, donor_contact, exhibition_history, notes) VALUES ('AR001','BronzeStatue','Greek','Classical','Bronze','Room101','ArtMuseum','Springfield','IL','2015-03-20','Donation',25000,85,'Stable','OnDisplay','DrHelenKim','5554445555',50000,'JohnDoeFamily','5557778888','ExhibitA2020;ExhibitB2022','Main attraction in lobby');
INSERT INTO campus_artifact_catalog (artifact_id, artifact_name, origin_culture, period, material, location_room, building, city, state, acquisition_date, acquisition_method, acquisition_cost_usd, condition_score, conservation_status, display_status, curator_name, curator_contact, insurance_value_usd, donor_name, donor_contact, exhibition_history, notes) VALUES ('AR002','SilkTapestry','Chinese','Ming','Silk','Room202','HistoryHall','Springfield','IL','2018-07-11','Purchase',12000,78,'RequiresRestoration','InStorage','MsLauraChen','5556667777',25000,'AsianArtFund','5559990000','ExhibitC2021','Needs climate-controlled storage');
INSERT INTO campus_artifact_catalog (artifact_id, artifact_name, origin_culture, period, material, location_room, building, city, state, acquisition_date, acquisition_method, acquisition_cost_usd, condition_score, conservation_status, display_status, curator_name, curator_contact, insurance_value_usd, donor_name, donor_contact, exhibition_history, notes) VALUES ('AR003','StoneMosaic','Roman','Imperial','Stone','Room303','ArchaeologyCenter','Springfield','IL','2020-11-05','Excavation',0,92,'Excellent','OnDisplay','ProfMarkRiley','5551112222',40000,'UniversityGrant','5553334444','ExhibitD2022','Featured in guided tours');