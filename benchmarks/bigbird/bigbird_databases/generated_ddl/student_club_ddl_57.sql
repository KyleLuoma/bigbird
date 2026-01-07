-- Research funding agencies
CREATE TABLE research_funding_agency
(
    agency_id              TEXT PRIMARY KEY,
    agency_name            TEXT,
    country                TEXT,
    established_year      INTEGER,
    focus_area             TEXT,
    contact_email          TEXT,
    phone_number           TEXT,
    website_url            TEXT,
    annual_budget          REAL,
    num_grants_awarded     INTEGER,
    accreditation_status  TEXT,
    governance_type       TEXT,
    address_line1          TEXT,
    address_line2          TEXT,
    city                   TEXT,
    state                  TEXT,
    zip_code               INTEGER,
    liaison_name           TEXT,
    liaison_email          TEXT,
    reporting_frequency   TEXT
);

INSERT INTO research_funding_agency VALUES ('AG001','National Science Council','USA',1995,'STEM','info@nsc.gov','5551234567','www.nsc.gov',15000000.00,320,'Accredited','Federal','123 Main St','Suite 100','Washington','DC',20001,'John Doe','jdoe@nsc.gov','Annual');
INSERT INTO research_funding_agency VALUES ('AG002','Global Health Fund','UK',2002,'Public Health','contact@ghf.org','442071234567','www.ghf.org',8000000.00,140,'Accredited','Nonprofit','45 King Rd','','London','London',SW1A1AA,'Emma Smith','esmith@ghf.org','Quarterly');
INSERT INTO research_funding_agency VALUES ('AG003','Eco Innovation Grants','Canada',2010,'Environmental','support@eig.ca','14165551234','www.eig.ca',2500000.00,60,'Pending','Provincial','78 Green Way','Floor 2','Toronto','ON',M5V2T6,'Carlos Ruiz','cruiz@eig.ca','Semiannual');

-- Campus green initiative projects
CREATE TABLE campus_green_initiative_project
(
    project_id                TEXT PRIMARY KEY,
    project_name              TEXT,
    campus_id                 TEXT,
    start_date                TEXT,
    end_date                  TEXT,
    status                    TEXT,
    total_cost                REAL,
    funding_source            TEXT,
    lead_coordinator          TEXT,
    coordinator_email         TEXT,
    carbon_reduction_tons     REAL,
    energy_savings_kwh        REAL,
    water_savings_gallons     REAL,
    trees_planted             INTEGER,
    renewable_energy_type     TEXT,
    installed_capacity_mw     REAL,
    certification_status      TEXT,
    stakeholder_group         TEXT,
    public_engagement_events  INTEGER,
    documentation_url         TEXT,
    notes                     TEXT
);

INSERT INTO campus_green_initiative_project VALUES ('PRJ001','Solar Rooftop Expansion','CAMP01','2022-01-15','2023-12-31','Completed',1200000.00,'University Fund','Alice Green','alice.green@uni.edu',2500.5,500000.0,300000.0,800,'Solar','2.5','LEED Gold','Students','12','www.uni.edu/solar','Successful project');
INSERT INTO campus_green_initiative_project VALUES ('PRJ002','Rainwater Harvesting','CAMP02','2023-03-01','2024-08-30','In Progress',750000.00,'Grant XYZ','Bob Waters','bob.waters@uni.edu',0.0,0.0,1500000.0,0,'None',0.0,'Pending','Faculty','5','www.uni.edu/rainwater','Phase 1 completed');
INSERT INTO campus_green_initiative_project VALUES ('PRJ003','Campus Tree Canopy','CAMP03','2021-05-10','2025-05-10','Active',300000.00,'Donor ABC','Carol Leaf','carol.leaf@uni.edu',0.0,0.0,0.0,1500,'None',0.0,'LEED Silver','Community','20','www.uni.edu/trees','Ongoing planting');

-- Digital learning platforms
CREATE TABLE digital_learning_platform
(
    platform_id               TEXT PRIMARY KEY,
    platform_name             TEXT,
    vendor                    TEXT,
    launch_date               TEXT,
    subscription_type         TEXT,
    annual_fee                REAL,
    user_capacity             INTEGER,
    active_courses            INTEGER,
    total_enrollments         INTEGER,
    average_completion_rate  REAL,
    mobile_app_available      TEXT,
    supported_languages       TEXT,
    compliance_gdpr           TEXT,
    data_retention_policy     TEXT,
    integration_lms           TEXT,
    integration_video_conference TEXT,
    support_contact_email     TEXT,
    support_contact_phone     TEXT,
    uptime_percentage         REAL,
    security_certifications   TEXT,
    notes                     TEXT
);

INSERT INTO digital_learning_platform VALUES ('DP001','LearnHub','EduTech Inc','2019-09-01','Enterprise',50000.00,20000,350,120000,85.5,'Yes','English,Spanish','Yes','5 years','Canvas','Zoom','support@learnhub.com','8001234567',99.9,'ISO27001','Primary platform');
INSERT INTO digital_learning_platform VALUES ('DP002','SkillStream','SkillCo','2021-02-15','Subscription',12000.00,5000,80,25000,78.0,'Yes','English','No','3 years','Moodle','Microsoft Teams','help@skillstream.com','8009876543',98.5,'SOC2','Growing usage');
INSERT INTO digital_learning_platform VALUES ('DP003','CourseWave','WaveLabs','2020-06-20','Freemium',0.00,1000,20,5000,65.0,'No','English,French','Yes','2 years','Blackboard','Google Meet','contact@coursewave.com','8005551212',97.0,'ISO27001','Student project');

-- Faculty research collaboration networks
CREATE TABLE faculty_research_collab_network
(
    network_id                TEXT PRIMARY KEY,
    network_name              TEXT,
    primary_institution       TEXT,
    established_year          INTEGER,
    focus_domains             TEXT,
    member_faculty_count      INTEGER,
    external_partner_count   INTEGER,
    total_grants_awarded      INTEGER,
    total_funding_amount      REAL,
    governance_model          TEXT,
    coordinator_name          TEXT,
    coordinator_email         TEXT,
    meeting_frequency         TEXT,
    data_sharing_policy       TEXT,
    collaboration_tool        TEXT,
    website_url               TEXT,
    public_report_url         TEXT,
    status                    TEXT,
    notes                     TEXT,
    last_review_date          TEXT,
    next_review_due           TEXT,
    contact_phone             TEXT,
    address_line1             TEXT,
    city                      TEXT,
    state                     TEXT,
    zip_code                  INTEGER
);

INSERT INTO faculty_research_collab_network VALUES ('FN001','AI Research Consortium','University A',2015,'Artificial Intelligence,Machine Learning',45,12,30,4500000.00,'Consortium','Dr Laura Kim','lkim@univa.edu','Quarterly','Open','Slack','www.univa.edu/ai','www.univa.edu/ai/report','Active','Leading AI efforts','2023-06-01','2024-06-01','5551112222','500 Research Dr','Cityville','CA',90001);
INSERT INTO faculty_research_collab_network VALUES ('FN002','Environmental Science Network','University B',2010,'Climate Change,Conservation',30,8,20,2100000.00,'Board','Prof Mark Lee','mlee@univb.edu','Semiannual','Restricted','Microsoft Teams','www.univb.edu/env','www.univb.edu/env/report','Active','Focus on sustainability','2023-04-15','2024-04-15','5553334444','120 Green Way','Townsville','NY',10001);
INSERT INTO faculty_research_collab_network VALUES ('FN003','Quantum Computing Alliance','Institute C',2018,'Quantum Algorithms,Hardware',22,5,15,3500000.00,'Alliance','Dr Nina Patel','npatel@instc.org','Annual','Confidential','Zoom','www.instc.org/quantum','www.instc.org/quantum/report','Active','Rapid field growth','2023-09-30','2024-09-30','5557778888','77 Quantum Blvd','Metropolis','MA',02101);

-- Student wellness centers
CREATE TABLE student_wellness_center
(
    center_id                 TEXT PRIMARY KEY,
    center_name               TEXT,
    campus_id                 TEXT,
    opening_date              TEXT,
    operating_hours           TEXT,
    total_staff               INTEGER,
    licensed_counselors       INTEGER,
    fitness_trainers          INTEGER,
    nutritionists             INTEGER,
    total_beds                INTEGER,
    services_offered          TEXT,
    appointment_system        TEXT,
    website_url               TEXT,
    contact_email             TEXT,
    contact_phone             TEXT,
    annual_budget             REAL,
    health_programs_count    INTEGER,
    mental_health_sessions   INTEGER,
    fitness_class_sessions    INTEGER,
    outreach_events_per_year INTEGER,
    accreditation_status     TEXT,
    notes                     TEXT,
    last_inspection_date      TEXT,
    next_inspection_due       TEXT,
    address_line1             TEXT,
    city                      TEXT,
    state                     TEXT,
    zip_code                  INTEGER
);

INSERT INTO student_wellness_center VALUES ('WC001','Wellness Hub A','CAMP01','2015-08-01','08:00-20:00',25,5,8,3,12,'Counseling,Fitness,Nutrition','Online','www.univa.edu/wellness','wellness@univa.edu','5552223333',600000.00,12,4800,3500,20,'Accredited','State‑of‑the‑art facility','2023-02-10','2024-02-10','800 Health St','Cityville','CA',90001);
INSERT INTO student_wellness_center VALUES ('WC002','Health Center B','CAMP02','2018-01-15','07:00-22:00',18,3,5,2,8,'Counseling,Fitness','Phone','www.univb.edu/health','health@univb.edu','5554445555',420000.00,9,3100,2600,15,'Pending','Expanding services','2023-05-20','2024-05-20','123 Wellness Ave','Townsville','NY',10001);
INSERT INTO student_wellness_center VALUES ('WC003','Campus Care C','CAMP03','2020-09-01','09:00-18:00',12,2,4,1,5,'Counseling,Nutrition','Online','www.instc.edu/care','care@instc.org','5556667777',350000.00,7,2200,1500,10,'Accredited','Focus on mental health','2023-11-05','2024-11-05','45 Care Rd','Metropolis','MA',02101);

-- Environmental monitoring campaigns
CREATE TABLE environmental_monitoring_campaign
(
    campaign_id               TEXT PRIMARY KEY,
    campaign_name             TEXT,
    sponsor_organization      TEXT,
    start_date                TEXT,
    end_date                  TEXT,
    target_region             TEXT,
    monitoring_focus          TEXT,
    sensors_deployed          INTEGER,
    data_points_collected     INTEGER,
    average_air_quality_index REAL,
    average_water_quality_score REAL,
    biodiversity_index        REAL,
    report_publication_url    TEXT,
    data_sharing_platform     TEXT,
    funding_amount            REAL,
    status                    TEXT,
    lead_researcher_name      TEXT,
    lead_researcher_email     TEXT,
    notes                     TEXT,
    last_update_timestamp     TEXT,
    next_update_timestamp     TEXT,
    contact_phone             TEXT,
    email_contact             TEXT,
    website_url               TEXT,
    latitude_center           REAL,
    longitude_center          REAL
);

INSERT INTO environmental_monitoring_campaign VALUES ('EC001','Urban Air Quality 2023','EPA',2023-01-01,2023-12-31,'Metro Region','Air Pollution',150,1200000,42.5,0.0,0.0,'www.epa.gov/air2023','OpenDataPortal',500000.00,'Completed','Dr Anne Wright','awright@epa.gov','Yearly assessment','2023-12-31','2024-01-01','5551110000','air2023@epa.gov','www.epa.gov','40.7128','-74.0060');
INSERT INTO environmental_monitoring_campaign VALUES ('EC002','River Health Survey','Water Trust',2022-04-15,2023-04-14,'River Basin','Water Quality',80,850000,0.0,78.2,65.3,'www.watertrust.org/river2022','RiverDataHub',300000.00,'Active','Mr Ben Silva','bsilva@watertrust.org','Monthly sampling','2023-03-30','2023-04-30','5552220000','river2022@watertrust.org','www.watertrust.org','34.0522','-118.2437');
INSERT INTO environmental_monitoring_campaign VALUES ('EC003','Forest Biodiversity Mapping','Conservation NGO',2021-06-01,2024-06-01,'Northern Forest','Biodiversity',200,2500000,0.0,0.0,88.7,'www.conserve.org/forest2022','EcoMap',750000.00,'Ongoing','Dr Maya Patel','mpatel@conserve.org','GIS based study','2023-11-15','2023-12-15','5553330000','forest2022@conserve.org','www.conserve.org','47.6062','-122.3321');

-- Health service equipment maintenance
CREATE TABLE health_service_equipment_maintenance
(
    maintenance_id            TEXT PRIMARY KEY,
    equipment_id              TEXT,
    equipment_name            TEXT,
    location                  TEXT,
    maintenance_date          TEXT,
    technician_name           TEXT,
    technician_id             TEXT,
    maintenance_type          TEXT,
    parts_replaced            TEXT,
    cost                      REAL,
    next_scheduled_maintenance TEXT,
    warranty_status           TEXT,
    calibration_required      TEXT,
    notes                     TEXT,
    logged_by_user            TEXT,
    log_timestamp             TEXT,
    service_vendor            TEXT,
    service_contract_number   TEXT,
    downtime_hours            REAL,
    compliance_checked        TEXT,
    compliance_status         TEXT,
    regulatory_body           TEXT,
    inspections_performed     INTEGER,
    last_inspection_date      TEXT,
    next_inspection_due       TEXT,
    equipment_serial_number   TEXT,
    manufacturer              TEXT,
    model_number              TEXT
);

INSERT INTO health_service_equipment_maintenance VALUES ('HM001','EQ1001','MRI Scanner','Radiology','2023-03-10','John Technician','TECH001','Preventive','Coil,Software Update',25000.00,'2024-03-10','Valid','Yes','All systems nominal','admin','2023-03-10 09:00','MedEquip Services','VC12345',2.5,'Yes','Compliant','FDA','2','2023-01-15','2024-01-15','SNMRI2023','Siemens','MAGNETOM');
INSERT INTO health_service_equipment_maintenance VALUES ('HM002','EQ2002','Ventilator','ICU','2023-05-22','Emily Repair','TECH002','Corrective','Filter,Battery',5000.00,'2023-11-22','Valid','No','Replaced faulty battery','admin','2023-05-22 14:30','HealthTech Co','VC67890',1.0,'Yes','Compliant','EMA','1','2023-04-10','2024-04-10','SNVENT2023','Philips','V200');
INSERT INTO health_service_equipment_maintenance VALUES ('HM003','EQ3003','Ultrasound Machine','Maternity','2023-02-18','Carlos Service','TECH003','Preventive','Transducer','1200.00','2023-08-18','Expired','Yes','Scheduled recalibration','admin','2023-02-18 11:15','Medical Instruments Ltd','VC24680',0.5,'Yes','Non‑Compliant','Health Canada','0','2022-12-01','2023-12-01','SNUltra2023','GE','LOGIQ');

-- Technology incubator fund cycles
CREATE TABLE technology_incubator_fund_cycle
(
    cycle_id                 TEXT PRIMARY KEY,
    incubator_name           TEXT,
    startup_sector           TEXT,
    fund_amount              REAL,
    application_start_date   TEXT,
    application_end_date     TEXT,
    selection_date           TEXT,
    number_of_startups       INTEGER,
    average_funding_per_startup REAL,
    lead_investor_name       TEXT,
    lead_investor_contact    TEXT,
    mentor_pool_size         INTEGER,
    demo_day_date            TEXT,
    post_program_success_rate REAL,
    follow_on_investment_total REAL,
    status                   TEXT,
    notes                    TEXT,
    created_by_user          TEXT,
    created_timestamp        TEXT,
    last_updated_user        TEXT,
    last_updated_timestamp   TEXT,
    website_url              TEXT,
    public_report_url        TEXT,
    eligibility_criteria    TEXT,
    application_form_url     TEXT,
    fund_source              TEXT,
    fund_manager_contact     TEXT,
    fund_manager_phone       TEXT
);

INSERT INTO technology_incubator_fund_cycle VALUES ('FC001','InnovateX','AI','2000000.00','2023-01-01','2023-03-31','2023-04-15',12,166666.67','Venture Capital Co','vc@innovatex.com',15,'2023-09-01',78.0,500000.00,'Closed','First cohort','admin','2023-01-01 08:00','admin','2023-09-02 10:00','www.innovatex.org','www.innovatex.org/report','Seed stage','www.innovatex.org/apply','Corporate Fund','fundmanager@innovatex.com','5559991111');
INSERT INTO technology_incubator_fund_cycle VALUES ('FC002','HealthTech Hub','BioTech','1500000.00','2023-04-01','2023-06-30','2023-07-20',8,187500.00','Health Angels','contact@healthhub.com',10,'2023-12-15',85.0,300000.00,'Open','Second round','admin','2023-04-01 09:30','admin','2023-07-21 11:00','www.healthtechhub.org','www.healthtechhub.org/report','Pre‑clinical','www.healthtechhub.org/apply','Pharma Partner','pm@healthtechhub.org','5558882222');
INSERT INTO technology_incubator_fund_cycle VALUES ('FC003','GreenStart','Clean Energy','2500000.00','2023-07-01','2023-09-30','2023-10-15',10,250000.00','Eco Ventures','eco@greenstart.com',12,'2024-04-10',80.0,600000.00,'Planned','Upcoming cohort','admin','2023-07-01 07:45','admin','2023-10-16 09:15','www.greenstart.org','www.greenstart.org/report','Prototype','www.greenstart.org/apply','Renewable Energy Fund','fm@greenstart.org','5557773333');

-- Library preservation initiatives
CREATE TABLE library_preservation_initiative
(
    initiative_id            TEXT PRIMARY KEY,
    initiative_name          TEXT,
    library_branch           TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    target_collection        TEXT,
    items_preserved          INTEGER,
    preservation_method      TEXT,
    budget_allocated         REAL,
    funding_source           TEXT,
    project_manager_name     TEXT,
    project_manager_email    TEXT,
    external_contractor      TEXT,
    contractor_contact       TEXT,
    status                   TEXT,
    progress_percent         REAL,
    next_milestone_date      TEXT,
    notes                    TEXT,
    created_by               TEXT,
    created_timestamp        TEXT,
    last_updated_by          TEXT,
    last_updated_timestamp   TEXT,
    documentation_url        TEXT,
    reporting_url            TEXT,
    compliance_standard     TEXT,
    storage_location         TEXT,
    climate_control_needed  TEXT,
    digital_access_provided  TEXT
);

INSERT INTO library_preservation_initiative VALUES ('LP001','Rare Book Stabilization','Main Library','2022-05-01','2023-11-30','Rare Books',250,'Deacidification',120000.00,'University Grant','Sarah Lee','slee@uni.edu','PreserveCo','5551239876','Completed',100.0,'2023-11-30','Project finished successfully','admin','2022-05-01 10:00','admin','2023-11-30 16:00','www.uni.edu/preserve/rarebooks','www.uni.edu/report/rarebooks','ISO 19245','Special Collections Room','Yes','Yes');
INSERT INTO library_preservation_initiative VALUES ('LP002','Photograph Digitization','Science Library','2023-01-15','2024-06-15','Historical Photographs',1800,'High‑Resolution Scanning',80000.00,'Fund XYZ','Mark Patel','mpatel@uni.edu','DigitizePro','5552345678','In Progress',45.0,'2023-12-01','Phase 1 of scanning underway','admin','2023-01-15 09:30','admin','2023-07-01 14:20','www.uni.edu/preserve/photos','www.uni.edu/report/photos','NARA Guidelines','Digital Archive','No','Yes');
INSERT INTO library_preservation_initiative VALUES ('LP003','Manuscript Conservation','Arts Library','2023-08-01','2025-02-28','Medieval Manuscripts',95,'Environmental Control',200000.00,'Cultural Fund','Anna Gomez','agomez@uni.edu','ConserveArt','5553456789','Planned',0.0,'2023-09-15','Planning stage','admin','2023-08-01 11:45','admin','2023-09-01 10:10','www.uni.edu/preserve/manuscripts','www.uni.edu/report/manuscripts','ISO 18911','Climate‑Controlled Vault','Yes','No');

-- Community impact assessments
CREATE TABLE community_impact_assessment
(
    assessment_id            TEXT PRIMARY KEY,
    project_name             TEXT,
    community_name           TEXT,
    assessment_date          TEXT,
    assessor_name            TEXT,
    assessor_contact         TEXT,
    impact_category          TEXT,
    methodology              TEXT,
    sample_size              INTEGER,
    positive_impact_score    REAL,
    negative_impact_score    REAL,
    overall_rating           TEXT,
    recommendations          TEXT,
    follow_up_actions        TEXT,
    status                   TEXT,
    notes                    TEXT,
    created_by_user          TEXT,
    created_timestamp        TEXT,
    last_modified_user       TEXT,
    last_modified_timestamp  TEXT,
    report_url               TEXT,
    data_file_path           TEXT,
    funding_source           TEXT,
    budget_used              REAL,
    stakeholder_engagement_level TEXT,
    key_findings_summary     TEXT,
    next_assessment_due      TEXT,
    contact_phone            TEXT,
    contact_email            TEXT
);

INSERT INTO community_impact_assessment VALUES ('CI001','Campus Clean‑Up','River Town','2023-04-20','Lisa Harper','lharper@uni.edu','Environmental','Survey & Observation',150,88.5,12.3,'High','Increase recycling bins','Monthly litter checks','Completed','Successful community involvement','admin','2023-04-20 08:00','admin','2023-05-01 09:30','www.uni.edu/assessment/cleanup','/data/cleanup2023.csv','University Fund',15000.00,'High','Reduced litter by 30%','2024-04-20','5551112222','lharper@uni.edu');
INSERT INTO community_impact_assessment VALUES ('CI002','STEM Outreach','Eastside','2023-09-10','Tom Nguyen','tnguyen@uni.edu','Educational','Focus Groups',80,75.0,20.0,'Medium','Add more hands‑on labs','Quarterly STEM fairs','In Progress','Positive feedback from parents','admin','2023-09-10 10:15','admin','2023-10-05 11:45','www.uni.edu/assessment/stem','/data/stem2023.xlsx','Grant ABC',25000.00,'Medium','Improved math scores by 10%','2024-09-10','5552223333','tnguyen@uni.edu');
INSERT INTO community_impact_assessment VALUES ('CI003','Local Business Support','Downtown','2022-12-05','Maria Lopez','mlopez@uni.edu','Economic','Economic Impact Model',200,65.0,35.0,'Low','Create mentorship program','Monthly business workshops','Completed','Modest increase in sales','admin','2022-12-05 09:00','admin','2023-01-02 14:20','www.uni.edu/assessment/business','/data/business2022.db','City Grant',30000.00,'Low','Sales up 5%','2023-12-05','5553334444','mlopez@uni.edu');