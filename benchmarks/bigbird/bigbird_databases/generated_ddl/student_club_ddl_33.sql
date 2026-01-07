-- Table storing academic awards granted to individuals
CREATE TABLE academic_award
(
    award_id                TEXT PRIMARY KEY,
    award_name              TEXT,
    award_year              INTEGER,
    award_category          TEXT,
    recipient_name          TEXT,
    recipient_id            TEXT,
    department              TEXT,
    college                 TEXT,
    sponsor_name            TEXT,
    award_amount            REAL,
    award_type              TEXT,
    award_status            TEXT,
    nomination_date         TEXT,
    approval_date           TEXT,
    ceremony_date           TEXT,
    ceremony_location       TEXT,
    description             TEXT,
    criteria                TEXT,
    notes                   TEXT,
    external_reference      TEXT,
    created_at              TEXT
);

INSERT INTO academic_award (award_id,award_name,award_year,award_category,recipient_name,recipient_id,department,college,sponsor_name,award_amount,award_type,award_status,nomination_date,approval_date,ceremony_date,ceremony_location,description,criteria,notes,external_reference,created_at) VALUES
('AWRD001','Outstanding_Research','2022','Research','Alice_Johnson','M123','Physics','Science','National_Science_Foundation',50000,'Cash','Granted','2022-01-10','2022-02-05','2022-03-15','Main_Auditorium','Awarded_for_excellence_in_quantum_physics','Peer_review_published','First_time_award','NSF2022A','2022-01-01'),
('AWRD002','Teaching_Excellence','2021','Teaching','Bob_Smith','M456','Mathematics','Arts','University_Fund',20000,'Cash','Granted','2021-02-12','2021-03-01','2021-04-20','Education_Hall','Recognizes_innovative_teaching_methods','Student_evaluation_score>4.5','Renewed_award','UEDU2021B','2021-02-01'),
('AWRD003','Community_Service','2023','Service','Carol_Wilson','M789','Sociology','Humanities','City_Council',15000,'Cash','Pending','2023-03-15','2023-04-10','2023-05-25','Civic_Center','Honors_outreach_to_local_communities','Volunteer_hours>200','Awaiting_approval','CITY2023C','2023-03-01');

-- Table storing details of student exchange programs
CREATE TABLE student_exchange
(
    exchange_id           TEXT PRIMARY KEY,
    student_id            TEXT,
    home_university       TEXT,
    host_university       TEXT,
    program_name          TEXT,
    start_date            TEXT,
    end_date              TEXT,
    credits               INTEGER,
    major                 TEXT,
    department            TEXT,
    scholarship_amount    REAL,
    housing_provided      TEXT,
    insurance_covered     TEXT,
    status                TEXT,
    application_date      TEXT,
    approval_date         TEXT,
    coordinator_name      TEXT,
    coordinator_email     TEXT,
    notes                 TEXT,
    external_link         TEXT,
    created_at            TEXT
);

INSERT INTO student_exchange (exchange_id,student_id,home_university,host_university,program_name,start_date,end_date,credits,major,department,scholarship_amount,housing_provided,insurance_covered,status,application_date,approval_date,coordinator_name,coordinator_email,notes,external_link,created_at) VALUES
('EXCH001','S001','Uni_A','Uni_B','Spring_2022_Exchange','2022-01-15','2022-06-15',15,'Computer_Science','Engineering',12000,'Yes','Yes','Approved','2021-11-01','2021-12-05','Dana_Lee','dlee@unia.edu','N/A','http://exchange.unia.edu/EXCH001','2021-10-20'),
('EXCH002','S002','Uni_C','Uni_D','Summer_2023_Exchange','2023-06-01','2023-08-31',6,'Biology','Science',8000,'No','Yes','Pending','2023-02-20','2023-04-10','Mark_Turner','mt@unic.edu','Awaiting_housing','http://exchange.unic.edu/EXCH002','2023-02-01'),
('EXCH003','S003','Uni_E','Uni_F','Fall_2024_Exchange','2024-09-01','2025-01-15',12,'History','Arts',10000,'Yes','No','Approved','2024-03-15','2024-04-20','Laura_Kim','lkim@unie.edu','Includes_fieldwork','http://exchange.unie.edu/EXCH003','2024-03-01');

-- Table describing campus green buildings and their sustainability metrics
CREATE TABLE campus_green_building
(
    building_id                 TEXT PRIMARY KEY,
    building_name               TEXT,
    building_code               TEXT,
    construction_year           INTEGER,
    green_certification         TEXT,
    certification_level        TEXT,
    total_area                  REAL,
    floors                      INTEGER,
    energy_efficiency_rating    REAL,
    water_efficiency_rating     REAL,
    renewable_energy_source     TEXT,
    solar_capacity              REAL,
    wind_capacity               REAL,
    waste_reduction_percent     REAL,
    indoor_air_quality_rating   REAL,
    location                    TEXT,
    architect                   TEXT,
    contractor                  TEXT,
    maintenance_contact         TEXT,
    operating_hours             TEXT,
    notes                       TEXT,
    created_at                  TEXT
);

INSERT INTO campus_green_building (building_id,building_name,building_code,construction_year,green_certification,certification_level,total_area,floors,energy_efficiency_rating,water_efficiency_rating,renewable_energy_source,solar_capacity,wind_capacity,waste_reduction_percent,indoor_air_quality_rating,location,architect,contractor,maintenance_contact,operating_hours,notes,created_at) VALUES
('GB001','Eco_Hall','E001',2015,'LEED','Platinum',25000.5,4,95.2,88.1,'Solar','120.0','0.0',75.0,92.0,'North_Campus','Green_Design_Group','BuildCo','maint@uni.edu','08:00-18:00','First_green_building','2015-01-10'),
('GB002','Sustainability_Center','SC02',2018,'BREEAM','Excellent',18000.0,3,90.5,85.3,'Geothermal','0.0','50.0',68.5,89.4,'East_Wing','Eco_Architects','ConstructIt','facilities@uni.edu','07:30-19:00','Features_geothermal_heating','2018-05-20'),
('GB003','Renewable_Tower','RT03',2021,'LEED','Gold',32000.2,5,97.8,91.0,'Solar+Wind','200.0','30.0',80.0,95.5,'South_Park','Future_Designs','EcoBuild','operations@uni.edu','09:00-17:00','Integrated_solar_and_wind','2021-09-15');

-- Table tracking faculty research projects
CREATE TABLE faculty_research_project
(
    project_id                 TEXT PRIMARY KEY,
    project_title              TEXT,
    principal_investigator     TEXT,
    pi_id                      TEXT,
    department                 TEXT,
    start_date                 TEXT,
    end_date                   TEXT,
    total_budget               REAL,
    funding_source             TEXT,
    grant_id                   TEXT,
    status                     TEXT,
    num_students               INTEGER,
    num_postdocs               INTEGER,
    milestones                 TEXT,
    outcomes                   TEXT,
    publications               TEXT,
    patents                    TEXT,
    collaborators              TEXT,
    description                TEXT,
    notes                      TEXT,
    created_at                 TEXT
);

INSERT INTO faculty_research_project (project_id,project_title,principal_investigator,pi_id,department,start_date,end_date,total_budget,funding_source,grant_id,status,num_students,num_postdocs,milestones,outcomes,publications,patents,collaborators,description,notes,created_at) VALUES
('PRJ001','Advanced_Materials_Study','Dr_Eric_Chan','F001','Materials_Science','2022-01-01','2025-12-31',1500000,'National_Science_Foundation','NSF12345','Active',4,2,'Phase1_Completed;Phase2_InProgress','Prototype_developed','Journ_Adv_Mat_2023','US12345678','Univ_B;Univ_C','Investigating_nano_composite_materials','High_potential','2022-01-01'),
('PRJ002','AI_Education_Tools','Dr_Sara_Khan','F002','Computer_Science','2021-06-15','2024-06-14',800000,'Department_Grant','DG2021AI','Completed',3,1,'Tool_release_2022;Study_2023','Improved_student_outcomes','Journ_EduAI_2024','US87654321','Univ_D','Developing_AI_driven_learning_platforms','Successful_outcomes','2021-06-01'),
('PRJ003','Climate_Impact_Modeling','Dr_Leon_Morris','F003','Environmental_Sciences','2023-03-01','2027-02-28',1200000,'EPA_Grant','EPA2023CI','Active',5,0,'Model_v1_2024;Data_collection_2025','Policy_recommendations','Journ_Clim_Model_2025','US11223344','Univ_E;Gov_Agency','Modeling_regional_climate_effects','Ongoing','2023-03-01');

-- Table for library item preservation tasks
CREATE TABLE library_preservation_task
(
    task_id                TEXT PRIMARY KEY,
    item_id                TEXT,
    item_type              TEXT,
    preservation_method   TEXT,
    scheduled_date         TEXT,
    completed_date         TEXT,
    staff_responsible      TEXT,
    staff_id               TEXT,
    priority_level         TEXT,
    estimated_hours        REAL,
    actual_hours           REAL,
    cost                   REAL,
    vendor                 TEXT,
    notes                  TEXT,
    status                 TEXT,
    location               TEXT,
    condition_before       TEXT,
    condition_after        TEXT,
    documentation_link     TEXT,
    created_at             TEXT,
    updated_at             TEXT
);

INSERT INTO library_preservation_task (task_id,item_id,item_type,preservation_method,scheduled_date,completed_date,staff_responsible,staff_id,priority_level,estimated_hours,actual_hours,cost,vendor,notes,status,location,condition_before,condition_after,documentation_link,created_at,updated_at) VALUES
('PT001','B123','Book','Deacidification','2023-04-10','2023-04-12','Helen_Wright','L001','High',5.0,5.5,250.0','PreserveCo','No_issues','Completed','Special_Collections','Fair','Good','http://library.edu/docs/PT001','2023-04-01','2023-04-12'),
('PT002','M456','Manuscript','Encapsulation','2023-05-01','2023-05-03','James_Lee','L002','Medium',8.0,7.5,500.0','ArchiveTech','Fragile_pages','Completed','Rare_Books_Room','Poor','Fair','http://library.edu/docs/PT002','2023-04-20','2023-05-03'),
('PT003','D789','Digital_Item','Format_Migration','2023-06-15','2023-06-15','Sofia_Garcia','L003','Low',3.0,2.5,0.0','In_House','Automated_process','Completed','Digital_Repository','N/A','N/A','http://library.edu/docs/PT003','2023-06-01','2023-06-15');

-- Table recording health service staff shifts
CREATE TABLE health_service_shift
(
    shift_id            TEXT PRIMARY KEY,
    staff_id            TEXT,
    staff_name          TEXT,
    role                TEXT,
    shift_date          TEXT,
    start_time          TEXT,
    end_time            TEXT,
    location            TEXT,
    department          TEXT,
    supervisor_id       TEXT,
    supervisor_name     TEXT,
    notes               TEXT,
    patient_capacity    INTEGER,
    patients_seen       INTEGER,
    incidents_reported INTEGER,
    shift_status        TEXT,
    break_duration_minutes INTEGER,
    overtime_hours      REAL,
    created_at          TEXT,
    updated_at          TEXT,
    shift_type          TEXT
);

INSERT INTO health_service_shift (shift_id,staff_id,staff_name,role,shift_date,start_time,end_time,location,department,supervisor_id,supervisor_name,notes,patient_capacity,patients_seen,incidents_reported,shift_status,break_duration_minutes,overtime_hours,created_at,updated_at,shift_type) VALUES
('HS001','HS1001','Emily_Clark','Nurse','2023-07-01','07:00','15:00','Clinic_A','Primary_Care','SUP200','Dr_Miller','All_good',20,18,0,'Completed',30,0.0,'2023-06-25','2023-07-01','Day'),
('HS002','HS1002','Robert_Brown','Physician','2023-07-01','15:00','23:00','Clinic_B','Emergency','SUP201','Dr_Sanchez','Handled_emergency_cases',15,14,1,'Completed',45,2.5,'2023-06-26','2023-07-01','Evening'),
('HS003','HS1003','Linda_Wang','Technician','2023-07-02','23:00','07:00','Lab_C','Diagnostics','SUP202','Dr_Lee','Night_shift_maintenance',10,9,0,'Completed',60,1.0,'2023-06-27','2023-07-02','Night');

-- Table logging environmental action initiatives
CREATE TABLE environmental_action_log
(
    log_id                 TEXT PRIMARY KEY,
    action_type            TEXT,
    description            TEXT,
    initiated_by           TEXT,
    initiated_by_id        TEXT,
    start_date             TEXT,
    end_date               TEXT,
    status                 TEXT,
    budget_allocated       REAL,
    budget_used            REAL,
    impact_score           REAL,
    region                 TEXT,
    priority               TEXT,
    notes                  TEXT,
    follow_up_date         TEXT,
    responsible_department TEXT,
    external_agency        TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    verification_status    TEXT
);

INSERT INTO environmental_action_log (log_id,action_type,description,initiated_by,initiated_by_id,start_date,end_date,status,budget_allocated,budget_used,impact_score,region,priority,notes,follow_up_date,responsible_department,external_agency,created_at,updated_at,verification_status) VALUES
('EA001','Tree_Planting','Plant_200_oak_trees_in_campus_park','Sarah_Kim','EMP001','2023-03-01','2023-04-15','Completed',20000,19500,85.5,'North_Campus','High','Community_volunteers_involved','2023-05-01','Facilities','City_Tree_Department','2023-02-20','2023-04-16','Verified'),
('EA002','Energy_Audit','Conduct_energy_audit_for_all_buildings','Mark_Taylor','EMP002','2023-05-10','2023-06-30','In_Progress',50000,25000,70.0','Campus_Wide','Medium','Preliminary_findings_reported','2023-07-15','Sustainability','State_Energy_Agency','2023-05-01','2023-06-01','Pending'),
('EA003','Waste_Reduction','Implement_composting_program_in_dining_halls','Anna_Lopez','EMP003','2023-01-15','2023-12-31','Planned',30000,0,0,'All_Dining','Low','Proposal_under_review','2023-02-01','Operations','Environmental_NGO','2023-01-10','2023-01-10','Not_Start');

-- Table for technology patent filing records
CREATE TABLE technology_patent_filing
(
    patent_id            TEXT PRIMARY KEY,
    title                TEXT,
    inventor_name        TEXT,
    inventor_id          TEXT,
    filing_date          TEXT,
    grant_date           TEXT,
    patent_number        TEXT,
    status               TEXT,
    technology_area      TEXT,
    abstract             TEXT,
    claims               TEXT,
    prior_art            TEXT,
    assignee             TEXT,
    licensing_status     TEXT,
    royalty_amount       REAL,
    expiration_date      TEXT,
    related_project_id   TEXT,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    jurisdiction         TEXT
);

INSERT INTO technology_patent_filing (patent_id,title,inventor_name,inventor_id,filing_date,grant_date,patent_number,status,technology_area,abstract,claims,prior_art,assignee,licensing_status,royalty_amount,expiration_date,related_project_id,notes,created_at,updated_at,jurisdiction) VALUES
('PTF001','Adaptive_Routing_Algorithm','Dr_James_Olson','F100','2022-08-15','2024-02-20','US9876543','Granted','Networking','Improves_data_packet_routing_efficiency','15_claims','Existing_dynamic_routing_methods','TechCorp','Licensed',15000.00,'2034-02-20','PRJ010','Commercialized_in_router_products','2022-08-01','2024-02-21','US'),
('PTF002','Biodegradable_Polymer','Dr_Mia_Chen','F101','2023-01-10','2025-07-30','US1234590','Pending','Materials_Science','New_polymer_breaks_down_in_30_days','10_claims','Traditional_plastics','EcoMaterials_Inc','Pending',0.00,'2045-07-30','PRJ011','Pending_field_trials','2023-01-01','2023-01-10','US'),
('PTF003','AI_Diagnosis_Assistant','Dr_Liam_Nguyen','F102','2021-05-05','2023-11-12','US5553210','Granted','Healthcare_AI','AI assists physicians in preliminary diagnosis','12_claims','Earlier_AI_diagnostic_tools','HealthTech_LLC','Exclusive','25000.00','2041-11-12','PRJ012','Integrated_into_hospital_systems','2021-04-20','2023-11-13','US');

-- Table for alumni network events
CREATE TABLE alumni_network_event
(
    event_id               TEXT PRIMARY KEY,
    event_name             TEXT,
    event_date             TEXT,
    location               TEXT,
    organizer              TEXT,
    target_audience        TEXT,
    expected_attendees     INTEGER,
    actual_attendees       INTEGER,
    sponsorship_level      TEXT,
    sponsor_name           TEXT,
    agenda                 TEXT,
    keynote_speaker        TEXT,
    notes                  TEXT,
    registration_link      TEXT,
    feedback_score         REAL,
    follow_up_actions      TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    event_type             TEXT,
    budget                 INTEGER
);

INSERT INTO alumni_network_event (event_id,event_name,event_date,location,organizer,target_audience,expected_attendees,actual_attendees,sponsorship_level,sponsor_name,agenda,keynote_speaker,notes,registration_link,feedback_score,follow_up_actions,created_at,updated_at,event_type,budget) VALUES
('ANE001','Alumni_Leadership_Summit','2023-09-15','Conference_Hall_A','Alumni_Affairs','Alumni_Leaders',200,185,'Gold','Grand_Corp','Leadership_Workshops;Networking','Dr_Eva_Stone','Successful_event','http://alumni.university.edu/ANE001','4.7','Send_thank_you_letters','2023-07-01','2023-09-16','Summit',50000),
('ANE002','Class_of_2020_Reunion','2024-04-20','Campus_Gardens','Class_Rep_2020','Class_2020_Alumni',150,148,'Silver','Local_Bank','Campus_Tours;Dinner','Prof_Mark_Lee','Warm_reunion','http://alumni.university.edu/ANE002','4.9','Publish_photos_on_website','2024-01-10','2024-04-21','Reunion',20000),
('ANE003','Entrepreneurship_Forum','2023-11-05','Innovation_Lab','Entrepreneurship_Center','Alumni_Entrepreneurs',120,110,'Bronze','Startup_Inc','Panel_Discussions;Pitch_Competition','Ms_Jenna_Kim','High_engagement','http://alumni.university.edu/ANE003','4.5','Offer_mentorship_program','2023-09-01','2023-11-06','Forum',30000);

-- Table for campus art exhibit details
CREATE TABLE campus_art_exhibit
(
    exhibit_id           TEXT PRIMARY KEY,
    exhibit_name         TEXT,
    start_date           TEXT,
    end_date             TEXT,
    venue                TEXT,
    curator              TEXT,
    number_of_artworks  INTEGER,
    total_visitors       INTEGER,
    theme                TEXT,
    sponsor              TEXT,
    funding_amount       REAL,
    description          TEXT,
    security_level       TEXT,
    insurance_coverage   REAL,
    lighting_design      TEXT,
    audio_setup          TEXT,
    installation_company TEXT,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    exhibit_status       TEXT
);

INSERT INTO campus_art_exhibit (exhibit_id,exhibit_name,start_date,end_date,venue,curator,number_of_artworks,total_visitors,theme,sponsor,funding_amount,description,security_level,insurance_coverage,lighting_design,audio_setup,installation_company,notes,created_at,updated_at,exhibit_status) VALUES
('EXH001','Visions_of_Nature','2023-05-01','2023-07-31','Art_Gallery_One','Dr_Susan_Miller',45,12000,'Nature','Eco_Arts_Foundation',15000.00,'Showcasing_natural_inspired_artworks','High',20000.00,'Soft_spotlights','Ambient_soundscape','ArtInstallCo','Positive_feedback','2023-04-10','2023-08-01','Closed'),
('EXH002','Digital_Futures','2023-09-15','2023-12-15','Tech_Hall','Alex_Rodriguez',30,8000,'Digital_Art','Tech_Innovators','12000.00','Exploring_digital_media_and_interactive_installations','Medium',15000.00','LED_panels','Surround_sound','DigitalSetupLtd','Installed_without_incidents','2023-08-20','2023-12-20','Open'),
('EXH003','Cultural_Reflections','2024-02-10','2024-04-30','Cultural_Center','Dr_Anita_Singh',60,15000,'Global_Cultures','World_Culture_Org','20000.00','Artists_from_20_countries_expressing_heritage','High',25000.00','Spotlights_with_color_gels','Traditional_music','GlobalArtInstalls','Very_well_received','2024-01-15','2024-05-05','Upcoming');