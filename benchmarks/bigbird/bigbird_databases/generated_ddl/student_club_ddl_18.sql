-- faculty_research_group table
CREATE TABLE faculty_research_group
(
    group_id                TEXT PRIMARY KEY,
    group_name              TEXT,
    department              TEXT,
    focus_area              TEXT,
    lead_professor          TEXT,
    established_year        INTEGER,
    member_count            INTEGER,
    funding_source          TEXT,
    annual_budget           REAL,
    lab_location            TEXT,
    website                 TEXT,
    email_contact           TEXT,
    phone_extension         TEXT,
    research_theme_1        TEXT,
    research_theme_2        TEXT,
    research_theme_3        TEXT,
    recent_publications     TEXT,
    collaborations          TEXT,
    awards                  TEXT,
    status                  TEXT
);

INSERT INTO faculty_research_group VALUES
('GRP001','NeuroTech_Group','Neuroscience','Brain_Computer_Interface','Dr_Smith',2015,12,'National_Science_Foundation',250000.00,'Lab_A1','neurotech.univ.edu','neurotech@univ.edu','1234','Neuroprosthetics','Signal_Processing','Cognitive_Modeling','PaperA2020;PaperB2021','Institute_X;Company_Y','Best_Research_Team','Active');

INSERT INTO faculty_research_group VALUES
('GRP002','EcoSystems_Lab','Environmental_Science','Ecosystem_Restoration','Dr_Jones',2010,18,'EPA_Grants',180000.00,'Lab_B3','ecosystems.univ.edu','ecosystems@univ.edu','5678','Wetland_Recovery','Invasive_Species_Control','Carbon_Sequestration','PaperC2019;PaperD2020','NGO_Z','Outstanding_Contribution','Active');

INSERT INTO faculty_research_group VALUES
('GRP003','Quantum_Computing_Center','Physics','Quantum_Algorithms','Dr_Lee',2020,9,'Private_Foundation',300000.00,'Lab_C2','quantum.univ.edu','quantum@univ.edu','9012','Error_Correction','Quantum_Simulation','Quantum_Cryptography','PaperE2021','Tech_Corp;University_D','Emerging_Team','Active');

-- campus_sustainability_committee table
CREATE TABLE campus_sustainability_committee
(
    committee_id            TEXT PRIMARY KEY,
    committee_name          TEXT,
    chairperson             TEXT,
    formed_date             TEXT,
    campus_section          TEXT,
    meeting_frequency       TEXT,
    member_count            INTEGER,
    sustainability_focus   TEXT,
    goal_year               INTEGER,
    budget_allocated        REAL,
    report_due_month        TEXT,
    contact_email           TEXT,
    contact_phone           TEXT,
    last_meeting_minutes    TEXT,
    action_items_open       INTEGER,
    action_items_closed     INTEGER,
    partnership_orgs        TEXT,
    policy_documents        TEXT,
    progress_metric         TEXT,
    status                  TEXT
);

INSERT INTO campus_sustainability_committee VALUES
('COM001','Green_Campus_Committee','Prof_Green','2018-03-15','North_Campus','Monthly',15,'Carbon_Reduction',2025,120000.00,'June','green_committee@univ.edu','5551234','Minutes_Mar2023','5','12','Eco_Org_A;NGO_B','Policy_1;Policy_2','Emission_Reduction_15%','Active');

INSERT INTO campus_sustainability_committee VALUES
('COM002','Zero_Waste_Team','Dr_Waste','2019-09-01','East_Campus','Biweekly',10,'Waste_Management',2024,80000.00,'December','waste_team@univ.edu','5555678','Minutes_Dec2022','3','9','Recycling_Corp','Policy_3','Landfill_Reduction_20%','Active');

INSERT INTO campus_sustainability_committee VALUES
('COM003','Energy_Efficiency_Council','Ms_Energy','2020-01-20','South_Campus','Quarterly',8,'Energy_Savings',2026,95000.00,'March','energy_council@univ.edu','5559012','Minutes_Mar2023','2','7','Utility_Partner','Policy_4;Policy_5','Energy_Use_Down_10%','Active');

-- student_health_survey table
CREATE TABLE student_health_survey
(
    survey_id                     TEXT PRIMARY KEY,
    term                          TEXT,
    year                          INTEGER,
    total_respondents             INTEGER,
    average_sleep_hours           REAL,
    stress_level_avg              REAL,
    nutrition_score_avg           REAL,
    exercise_frequency_avg        REAL,
    mental_health_rating_avg      REAL,
    vaccination_rate_percent      REAL,
    campus_clinic_visits_avg      REAL,
    chronic_condition_percent    REAL,
    satisfaction_score            REAL,
    suggestions_note              TEXT,
    survey_conducted_by           TEXT,
    data_privacy_level            TEXT,
    release_date                  TEXT,
    status                        TEXT,
    drinking_habit_percent        REAL,
    smoking_habit_percent         REAL,
    screen_time_avg_hours         REAL,
    physical_activity_minutes_week INTEGER
);

INSERT INTO student_health_survey VALUES
('SURV001','Fall',2023,1200,6.8,3.4,78.5,2.5,4.2,92.0,1.3,5.0,84.0,'More_mental_health_resources','Health_Center','High','2023-12-01','Published',12.5,8.0,4.2,150);

INSERT INTO student_health_survey VALUES
('SURV002','Spring',2023,1150,7.0,3.1,80.0,3.0,4.5,94.0,1.1,4.2,86.5,'Increase_nutrition_workshops','Health_Center','Medium','2023-06-01','Published',10.0,6.5,3.9,160);

INSERT INTO student_health_survey VALUES
('SURV003','Summer',2022,800,6.5,3.8,75.0,2.0,3.9,88.0,0.9,6.5,78.0,'Add_more_fitness_classes','Health_Center','Low','2022-09-01','Draft',14.0,9.5,5.1,140);

-- library_digitization_project table
CREATE TABLE library_digitization_project
(
    project_id                 TEXT PRIMARY KEY,
    project_name               TEXT,
    start_date                 TEXT,
    end_date                   TEXT,
    total_items_digitized     INTEGER,
    item_type                  TEXT,
    funding_source             TEXT,
    project_manager            TEXT,
    budget_total               REAL,
    budget_spent               REAL,
    vendor                     TEXT,
    scanning_equipment         TEXT,
    storage_location           TEXT,
    file_format                TEXT,
    metadata_standard          TEXT,
    quality_control_passed_percent REAL,
    project_status             TEXT,
    notes                      TEXT,
    url                        TEXT,
    created_by                 TEXT,
    updated_at                 TEXT
);

INSERT INTO library_digitization_project VALUES
('DP001','Historical_Manuscripts','2022-01-10','2023-12-31',12450,'Manuscript','National_Library_Grant','Dr_Archie',500000.00,420000.00,'ScanTech','CanoScan_9000','Digital_Archive_A','PDF/A','Dublin_Core',96.5,'Completed','Project_successful','http://library.univ.edu/dp001','Archivist_Anna','2024-01-10');

INSERT INTO library_digitization_project VALUES
('DP002','Local_Newspaper_Archive','2021-05-01','2024-04-30',8500,'Newspaper','State_History_Fund','Ms_Beth',350000.00,310000.00,'ImagePro','Epson_ReadyScan','Archive_B','TIFF','METS',94.2,'In_Progress','Phase_2_started','http://library.univ.edu/dp002','Archivist_Ben','2024-01-12');

INSERT INTO library_digitization_project VALUES
('DP003','Audio_Collection','2023-03-15','2025-03-14',3000,'Audio_Tape','Private_Donor','Mr_Carl',200000.00,50000.00,'AudioDigit','Tascam_8','Audio_Archive_C','WAV','MODS',88.0,'Planning','Awaiting equipment purchase','http://library.univ.edu/dp003','Archivist_Cara','2024-01-15');

-- equipment_acquisition_request table
CREATE TABLE equipment_acquisition_request
(
    request_id               TEXT PRIMARY KEY,
    request_date             TEXT,
    requested_by             TEXT,
    department               TEXT,
    equipment_type           TEXT,
    model                    TEXT,
    quantity                 INTEGER,
    justification            TEXT,
    budget_code              TEXT,
    estimated_cost           REAL,
    approval_status          TEXT,
    approved_by              TEXT,
    approval_date            TEXT,
    vendor_preference        TEXT,
    delivery_date_estimated  TEXT,
    warranty_period_months   INTEGER,
    maintenance_plan         TEXT,
    asset_tag_prefix         TEXT,
    priority_level           TEXT,
    comments                 TEXT,
    status                   TEXT
);

INSERT INTO equipment_acquisition_request VALUES
('REQ001','2024-01-05','Dr_Smith','Physics','Oscilloscope','TekScope_5000',3,'Advanced_measurements','PHY2024',15000.00,'Pending','','','Tektronix','2024-03-01',24,'Annual_service','PHYS_OSC','High','Urgent_for_research','Open');

INSERT INTO equipment_acquisition_request VALUES
('REQ002','2024-01-10','Ms_Jane','Biology','Centrifuge','Centrifuge_X','2','Sample_processing','BIO2024',8000.00,'Approved','Dr_Khan','2024-02-15','Eppendorf','2024-04-01',36,'Biannual_maintenance','BIO_CEN','Medium','Standard_purchase','Closed');

INSERT INTO equipment_acquisition_request VALUES
('REQ003','2024-01-12','Mr_Tom','Computer_Science','GPU_Server','Nvidia_A100','1','AI_Research','CS2024',25000.00,'Pending','','','Nvidia_Official','2024-03-20',36,'Quarterly_check','CS_GPU','High','Critical_for_project','Open');

-- transportation_incident_report table
CREATE TABLE transportation_incident_report
(
    incident_id               TEXT PRIMARY KEY,
    incident_date             TEXT,
    vehicle_id                TEXT,
    driver_id                 TEXT,
    incident_type             TEXT,
    location                  TEXT,
    severity_level            TEXT,
    description               TEXT,
    reported_by               TEXT,
    report_date               TEXT,
    corrective_action         TEXT,
    status                    TEXT,
    estimated_damage_cost     REAL,
    injuries_reported         INTEGER,
    passengers_involved       INTEGER,
    weather_condition         TEXT,
    road_condition            TEXT,
    traffic_density           TEXT,
    authority_notified        TEXT,
    follow_up_date            TEXT
);

INSERT INTO transportation_incident_report VALUES
('INC001','2023-11-20','BUS123','DRV045','Collision','Main_St_and_1st_Ave','High','Rear_end_collision','Dispatcher_1','2023-11-20','Vehicle_repaired','Closed',12000.00,2,15,'Rainy','Wet','Heavy','Police_Department','2023-12-01');

INSERT INTO transportation_incident_report VALUES
('INC002','2023-12-05','VAN87','DRV007','Flat_Tire','Campus_Drive','Low','Rear_left_tire_flat','Dispatcher_2','2023-12-05','Tire_replaced','Closed',300.00,0,8,'Clear','Dry','Moderate','Campus_Security','2023-12-06');

INSERT INTO transportation_incident_report VALUES
('INC003','2024-01-03','TRUCK55','DRV019','Spill','Loading_Dock','Medium','Oil_spill_on_route','Dispatcher_3','2024-01-03','Cleanup_completed','Open',5000.00,0,2,'Snowy','Icy','Low','Environmental_Agency','2024-01-15');

-- venue_accessibility_feature table
CREATE TABLE venue_accessibility_feature
(
    feature_id                TEXT PRIMARY KEY,
    venue_id                  TEXT,
    feature_type              TEXT,
    description               TEXT,
    compliance_level          TEXT,
    installation_date         TEXT,
    last_inspection_date     TEXT,
    inspected_by              TEXT,
    maintenance_schedule      TEXT,
    status                    TEXT,
    responsible_department    TEXT,
    notes                     TEXT,
    accessibility_rating      INTEGER,
    wheelchair_accessible    TEXT,
    braille_signage          TEXT,
    hearing_loop              TEXT,
    ramp_grade                TEXT,
    elevator_present          TEXT,
    handrails_present         TEXT,
    lighting_quality          TEXT,
    emergency_exits           TEXT
);

INSERT INTO venue_accessibility_feature VALUES
('VF001','VEN001','Ramp','Portable_ramp_near_entrance','ADA_Compliant','2022-05-01','2023-12-01','Facilities_Team','Annual','Active','Facilities','No_issues','5','Yes','No','No','1:12','No','Yes','Bright','Yes');

INSERT INTO venue_accessibility_feature VALUES
('VF002','VEN002','Elevator','Elevator_to_second_floor','ADA_Compliant','2020-09-15','2023-11-20','Facilities_Team','Biannual','Active','Facilities','Routine_maintenance','5','Yes','Yes','Yes','N/A','Yes','Yes','Standard','Yes');

INSERT INTO venue_accessibility_feature VALUES
('VF003','VEN003','Braille_Signage','Braille_signs_at_main_hall','Partial_Compliance','2021-03-10','2023-10-05','Facilities_Team','Annual','Active','Facilities','Needs_update','3','Yes','Yes','No','N/A','No','Yes','Standard','Yes');

-- marketing_content_asset table
CREATE TABLE marketing_content_asset
(
    asset_id                 TEXT PRIMARY KEY,
    asset_name               TEXT,
    asset_type               TEXT,
    creation_date            TEXT,
    creator                  TEXT,
    campaign_id              TEXT,
    channel                  TEXT,
    target_audience          TEXT,
    format                   TEXT,
    resolution               TEXT,
    file_path                TEXT,
    size_mb                  REAL,
    usage_rights             TEXT,
    expiration_date          TEXT,
    status                   TEXT,
    views_count              INTEGER,
    clicks_count             INTEGER,
    conversion_rate          REAL,
    last_modified            TEXT,
    notes                    TEXT,
    tags                     TEXT
);

INSERT INTO marketing_content_asset VALUES
('MA001','Campus_Tour_Video','Video','2023-08-01','Media_Team','CMP001','Website','Prospective_Students','MP4','1080p','/assets/video1.mp4',250.5,'University_License','2025-12-31','Active',15000,1200,0.08,'2023-12-01','Featured_on_homepage','campus;tour;video');

INSERT INTO marketing_content_asset VALUES
('MA002','Fall_Festival_Brochure','PDF','2023-09-15','Design_Dept','CMP002','Print','Local_Community','PDF','A4','/assets/brochure_fall.pdf',2.3,'Open_Access','2024-11-30','Active',0,0,0.0,'2023-09-20','Distributed_at_events','festival;brochure;fall');

INSERT INTO marketing_content_asset VALUES
('MA003','Alumni_Success_Story','Article','2023-10-10','Communications','CMP003','Email','Alumni','HTML','N/A','/assets/alumni_story.html',0.5,'University_License','2024-12-31','Active',5000,300,0.06,'2023-11-01','Featured_in_monthly_newsletter','alumni;success;story');

-- grant_funding_milestone table
CREATE TABLE grant_funding_milestone
(
    milestone_id            TEXT PRIMARY KEY,
    grant_id                TEXT,
    milestone_name          TEXT,
    due_date                TEXT,
    completion_date         TEXT,
    amount_requested        REAL,
    amount_approved         REAL,
    amount_spent            REAL,
    status                  TEXT,
    reporting_required      TEXT,
    report_submission_date  TEXT,
    associated_project      TEXT,
    lead_investigator       TEXT,
    review_board            TEXT,
    notes                   TEXT,
    risk_level              TEXT,
    priority                TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    compliance_status       TEXT
);

INSERT INTO grant_funding_milestone VALUES
('MS001','GRNT001','Phase_I','2024-03-31','2024-03-20',100000.00,95000.00,80000.00,'Completed','Yes','2024-04-15','Project_A','Dr_Smith','Board_X','Initial_phase_successful','Low','High','2024-01-01','2024-04-01','Compliant');

INSERT INTO grant_funding_milestone VALUES
('MS002','GRNT002','Midterm_Review','2024-09-30','2024-09-25',50000.00,50000.00,30000.00,'Completed','Yes','2024-10-10','Project_B','Dr_Jones','Board_Y','Midterm_reports_submitted','Medium','Medium','2024-02-01','2024-10-01','Compliant');

INSERT INTO grant_funding_milestone VALUES
('MS003','GRNT003','Final_Delivery','2025-06-30','','75000.00',75000.00,0.00,'Pending','Yes','','Project_C','Dr_Lee','Board_Z','Awaiting_final_results','High','High','2024-03-01','2024-11-01','Pending');

-- community_event_partnership table
CREATE TABLE community_event_partnership
(
    partnership_id          TEXT PRIMARY KEY,
    event_id                TEXT,
    community_org_id        TEXT,
    partnership_role       TEXT,
    agreement_date          TEXT,
    contact_person          TEXT,
    contact_email           TEXT,
    contact_phone           TEXT,
    resources_provided      TEXT,
    financial_contribution  REAL,
    promotion_channels      TEXT,
    expected_outcome        TEXT,
    actual_outcome          TEXT,
    evaluation_score        REAL,
    follow_up_actions       TEXT,
    status                  TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    contract_file_path      TEXT
);

INSERT INTO community_event_partnership VALUES
('CP001','EVT001','ORG001','Co_Sponsor','2023-05-10','John_Doe','jdoe@community.org','5551111','Booth_space;Volunteer_staff','15000.00','Social_Media;Flyers','Increased_attendance','Attendance_up_20%','4.5','Plan_next_years_event','Active','Positive_feedback','2023-05-15','2023-12-01','/contracts/cp001.pdf');

INSERT INTO community_event_partnership VALUES
('CP002','EVT002','ORG002','Service_Partner','2023-08-20','Jane_Smith','jsmith@ngo.org','5552222','Free_health_checkup;Educational_materials','8000.00','Local_newspaper;Community_radio','Health_awareness','Reached_500_residents','4.2','Schedule_followup_workshop','Active','Good_collaboration','2023-08-25','2024-01-10','/contracts/cp002.pdf');

INSERT INTO community_event_partnership VALUES
('CP003','EVT003','ORG003','Logistics_Support','2024-01-05','Mike_Brown','mbrown@city.gov','5553333','Transportation;Security','0.00','City_website;Posters','Smooth_event_flow','No_incidents_reported','4.8','Discuss_future_partnership','Pending','Awaiting_final_report','2024-01-10','2024-06-01','/contracts/cp003.pdf');