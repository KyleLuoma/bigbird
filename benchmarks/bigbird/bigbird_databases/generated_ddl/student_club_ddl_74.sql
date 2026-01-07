-- Research institution information
CREATE TABLE research_institution
(
    institution_id            TEXT PRIMARY KEY,
    institution_name          TEXT,
    country                   TEXT,
    city                      TEXT,
    founded_year              INTEGER,
    type                      TEXT,
    accreditation             TEXT,
    num_faculties            INTEGER,
    num_students             INTEGER,
    annual_budget            REAL,
    website                   TEXT,
    contact_email             TEXT,
    phone                     TEXT,
    address_line1             TEXT,
    address_line2             TEXT,
    zip_code                  INTEGER,
    latitude                  REAL,
    longitude                 REAL,
    ranking_world             INTEGER,
    ranking_national          INTEGER
);

INSERT INTO research_institution VALUES
('RI001','GlobalTech University','USA','Metropolis',1890,'Public','Regional','12','25000',50000000,'www.globaltech.edu','info@globaltech.edu','5551234567','123 Main St','Suite 100',12345,40.7128,-74.0060,45,3);
INSERT INTO research_institution VALUES
('RI002','Northern Institute of Science','Canada','Maple City',1955,'Private','National','8','15000',30000000,'www.northerninst.ca','contact@northerninst.ca','5559876543','45 North Rd','',67890,45.4215,-75.6972,88,12);
INSERT INTO research_institution VALUES
('RI003','Eastern Arts College','UK','Londontown',1920,'Public','International','5','8000',12000000,'www.easternarts.ac.uk','admin@easternarts.ac.uk','5555551212','78 East St','Building B',11223,51.5074,-0.1278,120,42);

-- Laboratory equipment inventory
CREATE TABLE lab_equipment
(
    equipment_id                TEXT PRIMARY KEY,
    equipment_name              TEXT,
    model_number                TEXT,
    manufacturer                TEXT,
    purchase_date               TEXT,
    warranty_years              INTEGER,
    calibration_interval_months INTEGER,
    current_status              TEXT,
    location_room               TEXT,
    serial_number               TEXT,
    power_requirements          TEXT,
    maintenance_schedule        TEXT,
    last_maintenance_date       TEXT,
    next_maintenance_date       TEXT,
    assigned_technician         TEXT,
    usage_hours_total           INTEGER,
    usage_hours_month           INTEGER,
    safety_certified            TEXT,
    decommission_date           TEXT,
    notes                       TEXT
);

INSERT INTO lab_equipment VALUES
('EQ001','Spectrometer','SP-200','OptiTech','2020-03-15',5,12,'Operational','LabA-101','SN12345','220V','Quarterly','2023-06-01','2023-12-01','TechJohn',3400,120,'Yes','', 'Calibrated annually');
INSERT INTO lab_equipment VALUES
('EQ002','Centrifuge','CF-5000','SpinCo','2018-07-22',3,6,'Under Maintenance','LabB-202','SN67890','110V','Biannual','2023-04-10','2023-10-10','TechAnna',5600,200,'Yes','2025-07-22','Requires part replacement');
INSERT INTO lab_equipment VALUES
('EQ003','Microscope','MX-120','ViewInc','2021-11-05',4,12,'Operational','LabC-303','SN54321','220V','Quarterly','2023-05-20','2023-11-20','TechMike',2200,80,'Yes','', 'High resolution model');

-- Campus green spaces
CREATE TABLE campus_green_space
(
    space_id                     TEXT PRIMARY KEY,
    space_name                   TEXT,
    area_sq_meters               INTEGER,
    tree_count                  INTEGER,
    garden_type                 TEXT,
    irrigation_system           TEXT,
    maintenance_vendor          TEXT,
    opening_hours               TEXT,
    closing_hours               TEXT,
    accessibility_features      TEXT,
    lighting_type               TEXT,
    water_source                TEXT,
    soil_type                   TEXT,
    planted_year                INTEGER,
    last_renovation             TEXT,
    carbon_sequestration_estimate REAL,
    biodiversity_index          REAL,
    public_usage_rating         INTEGER,
    nearby_building             TEXT,
    comments                    TEXT
);

INSERT INTO campus_green_space VALUES
('GS001','Central Quad','15000',120,'Lawns','Drip','GreenCare','07:00','21:00','Wheelchair Ramp','LED','Well','Loam',1990,'2022-09-15',2500.5,8.2,9,'Administration Building','Popular study area');
INSERT INTO campus_green_space VALUES
('GS002','Botanical Garden','8000',200,'Flower Beds','Sprinkler','FloraServ','06:00','20:00','Braille Signs','Solar','Rainwater','Sandy Loam',2005,'2023-03-10',1800.0,9.5,8,'Science Hall','Hosts seasonal exhibitions');
INSERT INTO campus_green_space VALUES
('GS003','East Arbor','5000',75,'Tree Grove','Manual','TreeKeep','08:00','22:00','Pathway Lights','Solar','Well','Clay',2010,'2021-11-05',900.3,7.4,7,'Arts Center','Quiet meditation spot');

-- Student exchange programs
CREATE TABLE student_exchange_program
(
    program_id                TEXT PRIMARY KEY,
    partner_university        TEXT,
    partner_country           TEXT,
    program_duration_months  INTEGER,
    language_requirement      TEXT,
    scholarship_available     TEXT,
    application_deadline      TEXT,
    intake_month              TEXT,
    program_type              TEXT,
    credits_transferable      TEXT,
    housing_provided          TEXT,
    orientation_date          TEXT,
    program_coordinator       TEXT,
    contact_email             TEXT,
    contact_phone             TEXT,
    max_students              INTEGER,
    min_gpa                   REAL,
    required_documents        TEXT,
    program_cost              REAL,
    notes                     TEXT
);

INSERT INTO student_exchange_program VALUES
('EX001','University of Barcelona','Spain','6','Spanish','Yes','2023-10-01','January','Semester','Yes','On Campus','2024-01-10','DrLee','lee@globaltech.edu','5551112222',30,3.0,'Transcript,Passport,Letter of Recommendation',12000,'Includes tuition waiver');
INSERT INTO student_exchange_program VALUES
('EX002','Tokyo Tech','Japan','12','Japanese','No','2023-08-15','July','Year-long','Yes','Off Campus','2024-07-05','ProfSato','sato@globaltech.edu','5553334444',15,3.5,'Transcript,Passport,Language Proficiency Proof',18000,'Cultural immersion focus');
INSERT INTO student_exchange_program VALUES
('EX003','University of Sydney','Australia','4','English','Partial','2023-12-01','February','Quarter','Yes','On Campus','2024-02-20','MsKim','kim@globaltech.edu','5555556666',20,2.8,'Transcript,Passport,Statement of Purpose',8000,'Offers partial scholarship for accommodation');

-- Alumni network groups
CREATE TABLE alumni_network_group
(
    group_id                TEXT PRIMARY KEY,
    group_name              TEXT,
    focus_area              TEXT,
    creation_date           TEXT,
    leader_name             TEXT,
    leader_email            TEXT,
    member_count            INTEGER,
    meeting_frequency       TEXT,
    last_meeting_date       TEXT,
    next_meeting_date       TEXT,
    venue                   TEXT,
    virtual_platform        TEXT,
    agenda_template         TEXT,
    communication_channel   TEXT,
    social_media_tag        TEXT,
    budget_allocated        REAL,
    sponsor_name            TEXT,
    sponsor_contact         TEXT,
    achievements_summary    TEXT,
    notes                   TEXT
);

INSERT INTO alumni_network_group VALUES
('AG001','Tech Innovators','Technology','2015-06-01','Alice Johnson','alice.johnson@alumni.edu',120,'Quarterly','2023-09-15','2023-12-15','Alumni Center','Zoom','Standard','Email','#TechInnovators',15000,'TechCorp','contact@techcorp.com','Hosted 5 hackathons', 'Active online community');
INSERT INTO alumni_network_group VALUES
('AG002','Global Business Leaders','Business','2012-04-20','Bob Martinez','bob.martinez@alumni.edu',85,'Biannual','2023-05-10','2023-11-10','Town Hall','Microsoft Teams','Standard','Newsletter','#BizLeaders',25000,'FinanceInc','info@financeinc.com','Published 3 research papers','Strong mentorship program');
INSERT INTO alumni_network_group VALUES
('AG003','Arts & Culture Circle','Arts','2018-09-15','Catherine Lee','catherine.lee@alumni.edu',60,'Monthly','2023-10-01','2023-11-01','Art Gallery','Google Meet','Standard','WhatsApp','#ArtsCulture',8000,'CultureFund','support@culturefund.org','Organized 12 gallery tours','Focus on local artists');

-- Campus energy sources
CREATE TABLE campus_energy_source
(
    source_id                TEXT PRIMARY KEY,
    source_type              TEXT,
    installed_capacity_mw    REAL,
    commissioning_date       TEXT,
    provider_company         TEXT,
    operational_status       TEXT,
    average_annual_output_mwh REAL,
    location_coordinates     TEXT,
    maintenance_contract     TEXT,
    last_inspection_date    TEXT,
    next_inspection_due     TEXT,
    emissions_factor         REAL,
    subsidy_amount           REAL,
    cost_per_mwh             REAL,
    lifespan_years           INTEGER,
    decommission_plan       TEXT,
    renewable_certification TEXT,
    notes                    TEXT,
    grid_connection_point   TEXT,
    voltage_level            TEXT
);

INSERT INTO campus_energy_source VALUES
('ES001','Solar','5.0','2020-05-01','SunPower Inc','Active','4500','40.7128,-74.0060','SunnyMaintenance','2023-04-20','2024-04-20','0.0','200000','0.05','25','Plan Phase Out 2050','LEED','Midwest rooftop array','Substation A','13kV');
INSERT INTO campus_energy_source VALUES
('ES002','Wind','12.5','2018-09-15','WindWorks','Active','110000','45.4215,-75.6972','WindCare','2023-03-10','2024-03-10','0.0','500000','0.04','30','Recycle Turbines','ISO 50001','Northern plains wind farm','Substation B','33kV');
INSERT INTO campus_energy_source VALUES
('ES003','Geothermal','3.2','2021-01-10','GeoHeat LLC','Active','28000','51.5074,-0.1278','GeoMaint','2023-06-05','2025-06-05','0.0','150000','0.06','40','Upgrade Heat Exchangers','GreenPower','London campus underground system','Substation C','13kV');

-- Research publications
CREATE TABLE research_publication
(
    pub_id                 TEXT PRIMARY KEY,
    title                  TEXT,
    journal_name           TEXT,
    publication_year       INTEGER,
    volume                 TEXT,
    issue                  TEXT,
    pages                  TEXT,
    doi                    TEXT,
    authors                TEXT,
    corresponding_author_email TEXT,
    abstract               TEXT,
    keywords               TEXT,
    citation_count         INTEGER,
    impact_factor          REAL,
    open_access            TEXT,
    funding_source         TEXT,
    grant_id               TEXT,
    research_area          TEXT,
    methodology            TEXT,
    conclusions            TEXT,
    notes                  TEXT
);

INSERT INTO research_publication VALUES
('RP001','Adaptive Neural Networks for Climate Modeling','Journal of AI Research',2022,'12','3','101-115','10.1000/jair.2022.001','DrJohn Smith;DrJane Doe','john.smith@globaltech.edu','Study explores using deep learning to improve climate predictions.','AI,Climate,Neural Networks',45,4.2,'Yes','National Science Foundation','NSF-2021-CLIM','Computer Science','Deep Learning','Improved model accuracy by 15%','Cited in 3 policy papers');
INSERT INTO research_publication VALUES
('RP002','Quantum Entanglement in Photonic Systems','Physics Letters A',2021,'58','7','200-210','10.1016/pla.2021.07.005','ProfAlan Turing','alan.turing@globaltech.edu','Experimental verification of entanglement over 100 km fiber.','Quantum,Entanglement,Photonics',30,5.0,'No','Department of Energy','DOE-2020-QE','Physics','Photon Interferometry','Demonstrated stable entanglement for quantum communications','Featured in Science News');
INSERT INTO research_publication VALUES
('RP003','Sustainable Urban Planning with GIS','Urban Studies Review',2023,'45','2','55-70','10.1080/urban.2023.045','DrEmily Green','emily.green@globaltech.edu','GIS-based analysis for reducing urban heat islands.','GIS,Urban Planning,Sustainability',20,3.8,'Yes','Environmental Protection Agency','EPA-2022-URB','Environmental Science','Spatial Analysis','Identified 12 hotspots for mitigation','Used by city council');

-- Facility lease agreements
CREATE TABLE facility_lease_agreement
(
    lease_id               TEXT PRIMARY KEY,
    facility_name          TEXT,
    lease_start_date       TEXT,
    lease_end_date         TEXT,
    lessee_organization    TEXT,
    rent_amount            REAL,
    payment_frequency      TEXT,
    security_deposit       REAL,
    maintenance_responsibility TEXT,
    insurance_provider     TEXT,
    insurance_policy_number TEXT,
    allowed_uses           TEXT,
    max_occupancy          INTEGER,
    access_hours           TEXT,
    renewal_option         TEXT,
    termination_clause     TEXT,
    contact_person         TEXT,
    contact_phone          TEXT,
    contact_email          TEXT,
    notes                  TEXT
);

INSERT INTO facility_lease_agreement VALUES
('LA001','Conference Hall A','2022-01-01','2027-12-31','Tech Innovators Association',75000,'Quarterly',150000,'Lessee','AllRisk Ins Co','AR123456','Conferences, Workshops',500,'08:00-22:00','Two-year extension','30 days notice','MrTom Reed','5557778888','tom.reed@techinnovators.org','Includes catering services');
INSERT INTO facility_lease_agreement VALUES
('LA002','Student Recreation Center','2020-06-15','2030-06-14','University Student Union',120000,'Annual',240000,'Lessor','Campus Assurance','CA987654','Sports, Events',800,'06:00-23:00','Five-year renewal','Early termination fee 10%','MsLaura Kim','5559990000','laura.kim@university.edu','Renovations scheduled 2025');
INSERT INTO facility_lease_agreement VALUES
('LA003','Research Lab B','2021-09-01','2026-08-31','Biotech Startups Inc',50000,'Monthly',100000,'Joint','LabShield Insurance','LS555321','Research, Development',30,'09:00-19:00','Option to extend 2 years','Termination for breach','DrMike Alvarez','5552223333','mike.alvarez@biotechstartups.com','Includes shared equipment');

-- Transportation fleet vehicles
CREATE TABLE transportation_fleet_vehicle
(
    vehicle_id                TEXT PRIMARY KEY,
    vehicle_type              TEXT,
    make                      TEXT,
    model                     TEXT,
    year_of_manufacture       INTEGER,
    vin                       TEXT,
    license_plate             TEXT,
    capacity_seats            INTEGER,
    fuel_type                 TEXT,
    fuel_efficiency_l_per_100km REAL,
    odometer_km               INTEGER,
    last_service_date         TEXT,
    next_service_due          TEXT,
    assigned_route            TEXT,
    driver_assigned           TEXT,
    insurance_company         TEXT,
    policy_number             TEXT,
    registration_state        TEXT,
    emissions_standard        TEXT,
    status                    TEXT
);

INSERT INTO transportation_fleet_vehicle VALUES
('VF001','Shuttle','Ford','Transit','2019','1FTSW21R08E123456','ABC1234',20,'Diesel',8.5,85000,'2023-04-01','2023-10-01','Campus Loop','John Doe','SafeDrive','SD123456','TX','EPA Tier 2','Active');
INSERT INTO transportation_fleet_vehicle VALUES
('VF002','Van','Mercedes','Sprinter','2021','WBAVB33548EV78901','XYZ5678',15,'Electric',0.0,30000,'2023-05-15','2023-11-15','Medical Transport','Jane Smith','EcoInsure','EI987654','CA','Zero Emission','Active');
INSERT INTO transportation_fleet_vehicle VALUES
('VF003','Bus','Gillig','Low Floor','2018','1G4KU5E17JF456789','LMN2468',40,'Hybrid',5.2,120000,'2023-03-20','2023-09-20','North Campus Route','Mike Brown','TransitSecure','TS345678','FL','EPA Tier 3','Under Maintenance');

-- Sustainability metrics
CREATE TABLE sustainability_metric
(
    metric_id                TEXT PRIMARY KEY,
    metric_name              TEXT,
    measurement_unit         TEXT,
    baseline_value           REAL,
    target_value             REAL,
    current_value            REAL,
    measurement_frequency    TEXT,
    data_source              TEXT,
    responsible_department   TEXT,
    last_updated             TEXT,
    trend_indicator          TEXT,
    notes                    TEXT,
    related_project_id       TEXT,
    reporting_period         TEXT,
    calculation_method       TEXT,
    confidence_interval      TEXT,
    benchmark_value          REAL,
    variance                 REAL,
    corrective_action_required TEXT,
    status                   TEXT
);

INSERT INTO sustainability_metric VALUES
('SM001','Total Energy Consumption','MWh','50000','45000','46200','Annual','Energy Management System','Facilities','2023-09-30','Downward','Reduced by 8% from previous year','PRJ001','FY2023','Sum of monthly readings','±2%','48000','-1800','Implement additional LED retrofits','On Track');
INSERT INTO sustainability_metric VALUES
('SM002','Water Usage Efficiency','Liters per Student','150','130','138','Quarterly','Utility Bills','Facilities','2023-10-15','Downward','Consistent improvement','PRJ005','Q4 2023','Total water divided by student count','±1%','140','-2','Upgrade low-flow fixtures','On Track');
INSERT INTO sustainability_metric VALUES
('SM003','Waste Diversion Rate','Percentage','45','60','55','Monthly','Waste Management Reports','Sustainability','2023-09-20','Upward','Goal approaching','PRJ010','Sep 2023','Recyclables + compost / total waste','±3%','50','5','Increase compost collection points','At Risk');