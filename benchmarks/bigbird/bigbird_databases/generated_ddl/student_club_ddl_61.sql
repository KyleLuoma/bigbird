-- Research funding agencies providing external grants
CREATE TABLE research_funding_agency
(
    agency_id               TEXT PRIMARY KEY,
    name                    TEXT,
    abbreviation            TEXT,
    address                 TEXT,
    city                    TEXT,
    state                   TEXT,
    zip_code                INTEGER,
    phone                   TEXT,
    email                   TEXT,
    website                 TEXT,
    contact_person          TEXT,
    contact_title           TEXT,
    funding_type            TEXT,
    established_year        INTEGER,
    total_budget            REAL,
    active_status           TEXT,
    description             TEXT,
    compliance_rating       REAL,
    reporting_frequency     TEXT,
    last_audit_date         TEXT
);

INSERT INTO research_funding_agency (agency_id,name,abbreviation,address,city,state,zip_code,phone,email,website,contact_person,contact_title,funding_type,established_year,total_budget,active_status,description,compliance_rating,reporting_frequency,last_audit_date) VALUES
('AG001','National Science Foundation','NSF','4201 Wilson Blvd','Arlington','VA',22201,'703-292-5111','info@nsf.gov','https://www.nsf.gov','Lynda Fuller','Director','Federal',1950,1500000000,'Active','Supports fundamental research',9.5,'Annual','2023-06-15'),
('AG002','Health Research Council','HRC','123 Wellness Ave','Seattle','WA',98109,'206-555-0198','contact@hrc.org','https://www.hrc.org','Graham Lee','Executive Officer','Public',1985,750000000,'Active','Funds medical studies',8.7,'SemiAnnual','2023-04-20'),
('AG003','Tech Innovation Fund','TIF','77 Silicon Way','San Jose','CA',95110,'408-555-0123','admin@tif.com','https://www.tif.com','Aria Chen','Program Manager','Private',2002,300000000,'Active','Promotes tech startups',9.1,'Quarterly','2023-08-01');

-- Inventory of campus artifacts and cultural items
CREATE TABLE campus_artifact_inventory
(
    artifact_id            TEXT PRIMARY KEY,
    title                  TEXT,
    description            TEXT,
    origin_date            TEXT,
    acquisition_date       TEXT,
    condition              TEXT,
    location_building      TEXT,
    location_room          TEXT,
    curator_id             TEXT,
    estimated_value        REAL,
    insurance_policy       TEXT,
    barcode                TEXT,
    accession_number       TEXT,
    material               TEXT,
    dimensions             TEXT,
    weight_kg              REAL,
    preservation_notes     TEXT,
    display_status         TEXT,
    loan_status            TEXT,
    last_restoration_date TEXT
);

INSERT INTO campus_artifact_inventory (artifact_id,title,description,origin_date,acquisition_date,condition,location_building,location_room,curator_id,estimated_value,insurance_policy,barcode,accession_number,material,dimensions,weight_kg,preservation_notes,display_status,loan_status,last_restoration_date) VALUES
('AR0001','Bronze Bell','19th century campus bell','1885-00-00','2005-03-12','Good','Old Hall','Room 101','CU100','12000','POL12345','BRC001','ACC987','Bronze','30x15x15','25','Stored in climate controlled case','In Storage','Available','2022-11-05'),
('AR0002','Portrait of Founder','Oil painting of campus founder','1910-00-00','1998-07-23','Fair','Art Center','Gallery 2','CU101','25000','POL54321','BRC002','ACC988','Canvas','120x90','8','Requires gentle lighting','On Display','On Loan','2021-09-14'),
('AR0003','Historic Flag','Original university flag','1950-00-00','2010-05-01','Excellent','Museum','Exhibit A','CU102','8000','POL67890','BRC003','ACC989','Fabric','180x90','1.2','Handled with gloves','On Display','Available','2023-02-20');

-- Environmental sensor stations deployed on campus
CREATE TABLE environmental_sensor_station
(
    station_id               TEXT PRIMARY KEY,
    name                     TEXT,
    latitude                 REAL,
    longitude                REAL,
    elevation_m              REAL,
    installation_date        TEXT,
    sensor_type              TEXT,
    manufacturer             TEXT,
    model_number             TEXT,
    firmware_version         TEXT,
    battery_level_percent    INTEGER,
    power_source             TEXT,
    data_frequency_minutes   INTEGER,
    last_maintenance_date    TEXT,
    status                   TEXT,
    region                   TEXT,
    owner_department         TEXT,
    contact_email            TEXT,
    contact_phone            TEXT,
    calibration_due_date     TEXT
);

INSERT INTO environmental_sensor_station (station_id,name,latitude,longitude,elevation_m,installation_date,sensor_type,manufacturer,model_number,firmware_version,battery_level_percent,power_source,data_frequency_minutes,last_maintenance_date,status,region,owner_department,contact_email,contact_phone,calibration_due_date) VALUES
('ST1001','North Quad Air','38.8975','-77.0365','15','2022-01-10','Air Quality','EcoSense','AQ-200','v1.4',85,'Solar',15,'2023-05-12','Active','North Campus','Facilities','env.north@univ.edu','202-555-0101','2024-01-10'),
('ST1002','South Pond Water','38.8890','-77.0090','5','2021-06-22','Water Quality','AquaTech','WT-500','v2.1',70,'Mains',30,'2023-04-08','Active','South Campus','Environmental Sciences','env.south@univ.edu','202-555-0102','2023-12-22'),
('ST1003','East Ridge Soil','38.9020','-77.0125','30','2023-03-15','Soil Moisture','TerraSense','SM-320','v3.0',95,'Battery',10,'2023-08-01','Active','East Campus','Agriculture','env.east@univ.edu','202-555-0103','2024-03-15');

-- Student health records for campus medical services
CREATE TABLE student_health_record
(
    record_id            TEXT PRIMARY KEY,
    student_id           TEXT,
    visit_date           TEXT,
    visit_type           TEXT,
    provider_name        TEXT,
    department           TEXT,
    diagnosis_code       TEXT,
    diagnosis_desc       TEXT,
    prescription         TEXT,
    dosage               TEXT,
    follow_up_date       TEXT,
    notes                TEXT,
    insurance_provider   TEXT,
    policy_number        TEXT,
    copay_amount         REAL,
    height_cm            INTEGER,
    weight_kg            REAL,
    blood_pressure       TEXT,
    heart_rate_bpm       INTEGER,
    temperature_c        REAL
);

INSERT INTO student_health_record (record_id,student_id,visit_date,visit_type,provider_name,department,diagnosis_code,diagnosis_desc,prescription,dosage,follow_up_date,notes,insurance_provider,policy_number,copay_amount,height_cm,weight_kg,blood_pressure,heart_rate_bpm,temperature_c) VALUES
('HR001','STU12345','2023-09-10','Routine Check','Dr Lee','General Medicine','Z00.0','General health exam','None','', '2024-09-10','All vitals normal','HealthPlus','HP789456',10,175,68,'120/80',72,36.6),
('HR002','STU54321','2023-08-22','Flu Visit','Dr Patel','General Medicine','J10.1','Influenza with other respiratory manifestations','Oseltamivir','75mg BID','2023-09-05','Patient reports mild fever','MediCare','MC123987',15,168,72,'118/78',78,38.2),
('HR003','STU67890','2023-07-15','Allergy Consultation','Dr Gomez','Allergy','J30.1','Allergic rhinitis','Loratadine','10mg QD','2023-10-15','Seasonal symptoms','HealthPlus','HP654321',12,182,80,'115/75',70,36.9');

-- Faculty publications and research outputs
CREATE TABLE faculty_publication
(
    pub_id               TEXT PRIMARY KEY,
    faculty_id           TEXT,
    title                TEXT,
    journal              TEXT,
    publication_date     TEXT,
    doi                  TEXT,
    volume               TEXT,
    issue                TEXT,
    pages                TEXT,
    impact_factor        REAL,
    citations            INTEGER,
    abstract             TEXT,
    keywords             TEXT,
    co_authors           TEXT,
    funding_source       TEXT,
    grant_id             TEXT,
    peer_reviewed        TEXT,
    open_access          TEXT,
    url                  TEXT,
    status               TEXT,
    notes                TEXT
);

INSERT INTO faculty_publication (pub_id,faculty_id,title,journal,publication_date,doi,volume,issue,pages,impact_factor,citations,abstract,keywords,co_authors,funding_source,grant_id,peer_reviewed,open_access,url,status,notes) VALUES
('PUB001','FAC1001','Quantum Entanglement in Photonic Systems','Phys Rev Letters','2022-05-20','10.1103/PRL.123456','78','4','101-108',9.2,45,'Study of entanglement...','quantum,photonic,entanglement','Dr Kim; Dr Zhao','NSF','GR2022001','Yes','No','https://doi.org/10.1103/PRL.123456','Published','Featured in campus news'),
('PUB002','FAC1002','Machine Learning for Climate Modeling','J Climate','2021-11-10','10.1000/JClim.2021.98765','45','2','250-265',7.5,30,'Applying ML techniques...','machine learning,climate,modeling','Dr Nguyen; Dr Patel','DOE','GR2021005','Yes','Yes','https://doi.org/10.1000/JClim.2021.98765','Published','Cited in policy brief'),
('PUB003','FAC1003','Sustainable Urban Architecture','Arch Sci Review','2023-02-15','10.2000/ASR.2023.11223','12','1','55-70',6.1,12,'Exploration of green building...','sustainability,urban,architecture','Dr Lee; Dr Silva','EPA','GR2023003','Yes','Yes','https://doi.org/10.2000/ASR.2023.11223','In Press','Under review for award');

-- Community partnership agreements with external organizations
CREATE TABLE community_partnership_agreement
(
    agreement_id             TEXT PRIMARY KEY,
    partner_name             TEXT,
    partner_type             TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    contact_person           TEXT,
    contact_email            TEXT,
    contact_phone            TEXT,
    agreement_scope          TEXT,
    benefits                 TEXT,
    obligations              TEXT,
    renewal_terms            TEXT,
    status                   TEXT,
    signed_by                TEXT,
    signed_date              TEXT,
    document_path            TEXT,
    annual_budget            REAL,
    reporting_requirements   TEXT,
    evaluation_metric        TEXT,
    last_review_date         TEXT,
    notes                    TEXT
);

INSERT INTO community_partnership_agreement (agreement_id,partner_name,partner_type,start_date,end_date,contact_person,contact_email,contact_phone,agreement_scope,benefits,obligations,renewal_terms,status,signed_by,signed_date,document_path,annual_budget,reporting_requirements,evaluation_metric,last_review_date,notes) VALUES
('CPA001','City Health Department','Government','2022-01-01','2025-12-31','Maria Torres','maria.t@cityhealth.gov','555-123-4567','Joint health outreach','Access to clinics','Provide staff volunteers','Automatic renewal unless notice', 'Active','Dr Allen','2022-01-15','/docs/cpa_cityhealth_2022.pdf',150000,'Quarterly reports','Participant satisfaction','2023-11-20','Collaboration on flu shot clinic'),
('CPA002','GreenTech Solutions','Private','2021-06-01','2024-05-31','Liam Chen','liam.c@greentech.com','555-987-6543','Sustainable campus initiatives','Equipment donations','Maintain equipment','Review past end date','Active','Dr Baker','2021-05-20','/docs/cpa_greentech_2021.pdf',200000,'Biannual sustainability report','Energy reduction %','2023-09-10','Solar panel installation joint project'),
('CPA003','Local Arts Council','Nonprofit','2023-03-15','2026-03-14','Nina Patel','nina.p@arts.org','555-321-0987','Campus arts programming','Funding for events','Provide venue space','Renewal with 30‑day notice','Pending','Dr Carter','2023-03-01','/docs/cpa_arts_2023.pdf',80000,'Annual financial statements','Attendance growth','2023-12-05','Planned summer art festival');

-- Facility energy usage statistics per building
CREATE TABLE facility_energy_usage
(
    usage_id                TEXT PRIMARY KEY,
    building_id             TEXT,
    year                    INTEGER,
    month                   INTEGER,
    electricity_kwh         REAL,
    gas_therms              REAL,
    water_gallons           REAL,
    renewable_percent       REAL,
    peak_demand_kw          REAL,
    avg_daily_consumption_kwh REAL,
    carbon_emission_kg      REAL,
    cost_usd                REAL,
    meter_number            TEXT,
    utility_provider        TEXT,
    last_read_date          TEXT,
    notes                   TEXT,
    energy_star_rating      INTEGER,
    hvac_efficiency_percent INTEGER,
    lighting_efficiency_percent INTEGER,
    occupancy_rate_percent INTEGER
);

INSERT INTO facility_energy_usage (usage_id,building_id,year,month,electricity_kwh,gas_therms,water_gallons,renewable_percent,peak_demand_kw,avg_daily_consumption_kwh,carbon_emission_kg,cost_usd,meter_number,utility_provider,last_read_date,notes,energy_star_rating,hvac_efficiency_percent,lighting_efficiency_percent,occupancy_rate_percent) VALUES
('EU001','BLDG01',2023,8,85000,1200,250000,12.5,450,2800,48000,11500,'MTR1001','PowerCo','2023-08-31','Peak due to event','5',85,90,78),
('EU002','BLDG02',2023,8,62000,900,190000,15.0,380,2100,35000,8900,'MTR1002','EnergyCo','2023-08-31','Renovated lighting','4',80,92,85),
('EU003','BLDG03',2023,8,47000,600,150000,20.0,300,1500,26000,6700,'MTR1003','GreenPower','2023-08-31','Solar panels active','5',88,95,92);

-- Digital asset licenses for multimedia content
CREATE TABLE digital_asset_license
(
    license_id              TEXT PRIMARY KEY,
    asset_id                TEXT,
    license_type            TEXT,
    provider                TEXT,
    start_date              TEXT,
    end_date                TEXT,
    usage_limit             TEXT,
    geographic_scope        TEXT,
    exclusive_flag          TEXT,
    cost                    REAL,
    renewal_required        TEXT,
    renewal_date            TEXT,
    terms_summary           TEXT,
    attached_document       TEXT,
    status                  TEXT,
    created_by              TEXT,
    created_date            TEXT,
    modified_by             TEXT,
    modified_date           TEXT,
    notes                   TEXT
);

INSERT INTO digital_asset_license (license_id,asset_id,license_type,provider,start_date,end_date,usage_limit,geographic_scope,exclusive_flag,cost,renewal_required,renewal_date,terms_summary,attached_document,status,created_by,created_date,modified_by,modified_date,notes) VALUES
('DL001','ASSET1001','Royalty Free','Shutterstock','2022-01-01','2024-12-31','Unlimited','Global','No','1500','Yes','2024-12-01','Standard royalty free terms','/licenses/dl001.pdf','Active','admin','2022-01-01','admin','2023-06-01','Used in marketing videos'),
('DL002','ASSET1002','Editorial Use','Getty Images','2021-06-15','2023-06-14','500 uses','North America','Yes','2000','No','', 'Limited editorial use only','/licenses/dl002.pdf','Expired','editor','2021-06-15','editor','2023-06-14','Used for campus newspaper'),
('DL003','ASSET1003','Creative Commons','Flickr','2020-03-01','2030-02-28','Unlimited','Global','No','0','No','', 'CC BY‑SA 4.0','/licenses/dl003.pdf','Active','content_mgr','2020-03-01','content_mgr','2022-12-15','Student project assets');

-- Grant review panels evaluating proposals
CREATE TABLE grant_review_panel
(
    panel_id                TEXT PRIMARY KEY,
    grant_cycle             TEXT,
    panel_name              TEXT,
    meeting_date            TEXT,
    location                TEXT,
    chairperson             TEXT,
    member_count            INTEGER,
    quorum_met              TEXT,
    recommendation_summary  TEXT,
    decision_deadline       TEXT,
    approved_funds_total    REAL,
    rejected_funds_total    REAL,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    contact_email           TEXT,
    contact_phone           TEXT,
    panel_type              TEXT,
    conflict_of_interest_statement TEXT,
    external_observers_count INTEGER
);

INSERT INTO grant_review_panel (panel_id,grant_cycle,panel_name,meeting_date,location,chairperson,member_count,quorum_met,recommendation_summary,decision_deadline,approved_funds_total,rejected_funds_total,notes,created_at,updated_at,contact_email,contact_phone,panel_type,conflict_of_interest_statement,external_observers_count) VALUES
('GP001','2023','STEM Innovation Panel','2023-07-20','Conference Room A','Dr Maya Patel',12,'Yes','Recommend 15 proposals for funding','2023-08-15',7500000,1200000,'Focus on interdisciplinary projects','2023-06-01','2023-07-21','grantpanel@univ.edu','555-111-2222','Internal','All members disclosed conflicts','2'),
('GP002','2023','Humanities Arts Panel','2023-08-05','Conference Room B','Prof Alan Reed',8,'Yes','Approve 9 proposals, reject 4','2023-08-30',2100000,500000,'Emphasis on community outreach','2023-06-15','2023-08-06','humanities@univ.edu','555-333-4444','Internal','No conflicts reported','1'),
('GP003','2023','Environmental Research Panel','2023-09-10','Main Auditorium','Dr Elena Gomez',10,'Yes','Select 12 high impact studies','2023-09-25',4500000,800000,'Prioritize climate mitigation','2023-07-01','2023-09-11','envresearch@univ.edu','555-555-6666','External','One member recused due to affiliation','3');

-- Event sustainability metrics captured post‑event
CREATE TABLE event_sustainability_metric
(
    metric_id                TEXT PRIMARY KEY,
    event_id                 TEXT,
    carbon_offset_tons       REAL,
    waste_recycled_kg        REAL,
    waste_landfilled_kg      REAL,
    water_saved_liters       REAL,
    renewable_energy_used_kwh REAL,
    sustainable_vendor_count INTEGER,
    sustainability_score     INTEGER,
    report_date              TEXT,
    auditor_name             TEXT,
    notes                    TEXT,
    green_certification_level TEXT,
    compost_used_kg          REAL,
    paper_savings_pages      INTEGER,
    attendee_transport_mode_breakdown TEXT,
    carbon_intensity_per_attendee REAL,
    eco_friendly_gifts_count INTEGER,
    carbon_neutral_flag     TEXT,
    verification_date        TEXT
);

INSERT INTO event_sustainability_metric (metric_id,event_id,carbon_offset_tons,waste_recycled_kg,waste_landfilled_kg,water_saved_liters,renewable_energy_used_kwh,sustainable_vendor_count,sustainability_score,report_date,auditor_name,notes,green_certification_level,compost_used_kg,paper_savings_pages,attendee_transport_mode_breakdown,carbon_intensity_per_attendee,eco_friendly_gifts_count,carbon_neutral_flag,verification_date) VALUES
('SM001','EVT1001',12.5,3500,500,20000,4800,4,88,'2023-10-01','Laura Kim','Excellent waste diversion','Gold',250,15000,'Car:45%;Transit:30%;Bike:15%;Walk:10%',0.08,120,'Yes','2023-10-15'),
('SM002','EVT1002',8.2,2100,300,15000,3200,2,75,'2023-11-12','Mark Liu','Met targets for water use','Silver',180,9000,'Car:60%;Transit:25%;Bike:10%;Walk:5%',0.06,80,'No','2023-11-20'),
('SM003','EVT1003',5.0,1200,200,8000,2100,1,65,'2023-12-05','Sofia Rivera','Room for improvement in recycling','Bronze',100,4500,'Car:70%;Transit:20%;Bike:5%;Walk:5%',0.05,45,'No','2023-12-12');