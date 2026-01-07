-- Costume design details for superheroes and related characters
CREATE TABLE costume_design
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    designer_name          TEXT,
    costume_name           TEXT,
    material               TEXT,
    primary_color          TEXT,
    secondary_color        TEXT,
    theme                  TEXT,
    season                 TEXT,
    creation_year          INTEGER,
    budget_usd             INTEGER,
    status                 TEXT,
    notes                  TEXT,
    approval_date          TEXT,
    revision_number        INTEGER,
    size_chart             TEXT,
    weight_kg              INTEGER,
    accessories_included   TEXT,
    fabric_supplier        TEXT,
    dry_cleaning_required  TEXT,
    digital_mockup_url     TEXT,
    legacy_costume_id      INTEGER
);

INSERT INTO costume_design (id,designer_name,costume_name,material,primary_color,secondary_color,theme,season,creation_year,budget_usd,status,notes,approval_date,revision_number,size_chart,weight_kg,accessories_included,fabric_supplier,dry_cleaning_required,digital_mockup_url,legacy_costume_id)
VALUES (1,'Alice Kent','Stealth Suit','Kevlar','Black','Gray','Night Ops','Winter',2022,150000,'Approved','First prototype','2022-03-15',1,'Standard','3','Grapple Hook, Night Vision Goggles','Titan Textiles','Yes','http://mockup.example.com/stealth','NULL');

INSERT INTO costume_design (id,designer_name,costume_name,material,primary_color,secondary_color,theme,season,creation_year,budget_usd,status,notes,approval_date,revision_number,size_chart,weight_kg,accessories_included,fabric_supplier,dry_cleaning_required,digital_mockup_url,legacy_costume_id)
VALUES (2,'Bruce Liao','Solar Armor','NanoFiber','Gold','White','Solar Power','Summer',2021,250000,'In Review','Needs additional cooling','2021-07-10',2,'Extended','5','Energy Cell, Light Panel','Solar Weave Inc','No','http://mockup.example.com/solar','1');

INSERT INTO costume_design (id,designer_name,costume_name,material,primary_color,secondary_color,theme,season,creation_year,budget_usd,status,notes,approval_date,revision_number,size_chart,weight_kg,accessories_included,fabric_supplier,dry_cleaning_required,digital_mockup_url,legacy_costume_id)
VALUES (3,'Clara Dune','Aqua Cloak','Reinforced Silk','Blue','Cyan','Water Domain','Spring',2023,120000,'Pending','Awaiting material samples','2023-01-20',0,'Slim','2','Breathing Apparatus','Oceanic Fabrics','Yes','http://mockup.example.com/aqua','NULL');

-- Stunt coordination assignments for live-action productions
CREATE TABLE stunt_coordinator
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    coordinator_name       TEXT,
    contact_number         TEXT,
    email_address          TEXT,
    affiliated_agency      TEXT,
    certification_level   TEXT,
    years_experience       INTEGER,
    specialty              TEXT,
    last_assignment_title  TEXT,
    last_assignment_year   INTEGER,
    safety_rating          INTEGER,
    insured                TEXT,
    insurance_provider     TEXT,
    insurance_policy_no    TEXT,
    preferred_location     TEXT,
    availability_start     TEXT,
    availability_end       TEXT,
    equipment_owned        TEXT,
    team_size              INTEGER,
    budget_cap_usd         INTEGER,
    notes                  TEXT
);

INSERT INTO stunt_coordinator (id,coordinator_name,contact_number,email_address,affiliated_agency,certification_level,years_experience,specialty,last_assignment_title,last_assignment_year,safety_rating,insured,insurance_provider,insurance_policy_no,preferred_location,availability_start,availability_end,equipment_owned,team_size,budget_cap_usd,notes)
VALUES (1,'Derek Miles','555-0101','dmiles@example.com','Action Elite','Level 5',12,'High Falls','Skyfall Sequence',2022,95,'Yes','StuntInsure','ST-987654','Los Angeles','2022-05-01','2022-12-31','Wire rigs, Crash mats',8,300000,'Available for blockbuster projects');

INSERT INTO stunt_coordinator (id,coordinator_name,contact_number,email_address,affiliated_agency,certification_level,years_experience,specialty,last_assignment_title,last_assignment_year,safety_rating,insured,insurance_provider,insurance_policy_no,preferred_location,availability_start,availability_end,equipment_owned,team_size,budget_cap_usd,notes)
VALUES (2,'Fiona Chen','555-0202','fchen@example.com','Precision Stunts','Level 4',8,'Motorbike Chases','Urban Rush',2021,88,'Yes','SafeRide','SR-123456','Vancouver','2021-03-15','2022-03-14','Motorbikes, Ramps',5,200000,'Focus on vehicular sequences');

INSERT INTO stunt_coordinator (id,coordinator_name,contact_number,email_address,affiliated_agency,certification_level,years_experience,specialty,last_assignment_title,last_assignment_year,safety_rating,insured,insurance_provider,insurance_policy_no,preferred_location,availability_start,availability_end,equipment_owned,team_size,budget_cap_usd,notes)
VALUES (3,'Gustav Novak','555-0303','gnovak@example.com','Extreme Works','Level 3',5,'Fire Stunts','Inferno Finale',2023,80,'No','None','None','Chicago','2023-01-01','2023-06-30','Fireproof suits, Flame projectors',4,150000,'Seeking insurance coverage');

-- Visual effects shot inventory for film and series production
CREATE TABLE visual_effects_shot
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    shot_name              TEXT,
    sequence_number        INTEGER,
    scene_description      TEXT,
    length_seconds         INTEGER,
    fps                     INTEGER,
    render_engine          TEXT,
    compositor_name        TEXT,
    assets_used            TEXT,
    layers_count           INTEGER,
    gpu_hours_used         INTEGER,
    storage_path           TEXT,
    approved_by            TEXT,
    approval_date          TEXT,
    version_number         INTEGER,
    notes                  TEXT,
    color_grade            TEXT,
    motion_blur_enabled    TEXT,
    depth_of_field         TEXT,
    exposure_adjustment    TEXT,
    final_output_format    TEXT,
    client_feedback_score  INTEGER
);

INSERT INTO visual_effects_shot (id,shot_name,sequence_number,scene_description,length_seconds,fps,render_engine,compositor_name,assets_used,layers_count,gpu_hours_used,storage_path,approved_by,approval_date,version_number,notes,color_grade,motion_blur_enabled,depth_of_field,exposure_adjustment,final_output_format,client_feedback_score)
VALUES (1,'Explosion_Montage',12,'City skyline detonates',8,24,'RenderMan','Lena Ortiz','ExplosionModel,FireVFX','5',320,'/vfx/exp_montage','Sam Lee','2022-11-03',3,'Adjusted sparks','Cool','Yes','Medium','+0.2','EXR',88);

INSERT INTO visual_effects_shot (id,shot_name,sequence_number,scene_description,length_seconds,fps,render_engine,compositor_name,assets_used,layers_count,gpu_hours_used,storage_path,approved_by,approval_date,version_number,notes,color_grade,motion_blur_enabled,depth_of_field,exposure_adjustment,final_output_format,client_feedback_score)
VALUES (2,'Underwater_Chase',45,'Hero swims through ruins',15,30,'Arnold','Mika Tan','WaterShader,DebrisSet','7',540,'/vfx/under_chase','Rita Gomez','2023-02-14',2,'Added caustics','Warm','No','Shallow','-0.1','MOV',92);

INSERT INTO visual_effects_shot (id,shot_name,sequence_number,scene_description,length_seconds,fps,render_engine,compositor_name,assets_used,layers_count,gpu_hours_used,storage_path,approved_by,approval_date,version_number,notes,color_grade,motion_blur_enabled,depth_of_field,exposure_adjustment,final_output_format,client_feedback_score)
VALUES (3,'Space_Battle',101,'Fleet engages near planet',20,60,'Octane','Javier Silva','ShipModels,ParticleFX','9',1020,'/vfx/space_battle','Ana Patel','2023-04-22',5,'Optimized particles','Neutral','Yes','Deep','+0.05','DPX',95);

-- Prop maintenance log tracking condition and servicing
CREATE TABLE prop_maintenance_log
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    prop_id                INTEGER,
    prop_name              TEXT,
    last_inspection_date   TEXT,
    inspector_name         TEXT,
    condition_rating       INTEGER,
    notes                  TEXT,
    next_maintenance_due   TEXT,
    maintenance_type       TEXT,
    parts_replaced         TEXT,
    cost_usd               INTEGER,
    location_stored        TEXT,
    assigned_to_department TEXT,
    service_company        TEXT,
    warranty_expiration    TEXT,
    usage_counter          INTEGER,
    cleaning_method       TEXT,
    humidity_level_percent INTEGER,
    temperature_celsius    INTEGER,
    safety_compliance      TEXT,
    documentation_link    TEXT
);

INSERT INTO prop_maintenance_log (id,prop_id,prop_name,last_inspection_date,inspector_name,condition_rating,notes,next_maintenance_due,maintenance_type,parts_replaced,cost_usd,location_stored,assigned_to_department,service_company,warranty_expiration,usage_counter,cleaning_method,humidity_level_percent,temperature_celsius,safety_compliance,documentation_link)
VALUES (1,312,'Mjolnir Hammer','2023-01-10','Eve Ramos',92,'Minor scratches','2023-07-10','Routine','None',0,'Prop Vault A','Props','SecureFix','2025-12-31',45,'Dust wipe',40,22,'Compliant','http://docs.example.com/prop312');

INSERT INTO prop_maintenance_log (id,prop_id,prop_name,last_inspection_date,inspector_name,condition_rating,notes,next_maintenance_due,maintenance_type,parts_replaced,cost_usd,location_stored,assigned_to_department,service_company,warranty_expiration,usage_counter,cleaning_method,humidity_level_percent,temperature_celsius,safety_compliance,documentation_link)
VALUES (2,417,'Arc Reactor','2023-02-22','Luis Fernandez',85,'Battery wear','2023-08-22','Battery Replacement','Battery Pack',2500,'Prop Vault B','Tech Props','PowerTech','2024-05-15',30,'Electro clean',45,20,'Compliant','http://docs.example.com/prop417');

INSERT INTO prop_maintenance_log (id,prop_id,prop_name,last_inspection_date,inspector_name,condition_rating,notes,next_maintenance_due,maintenance_type,parts_replaced,cost_usd,location_stored,assigned_to_department,service_company,warranty_expiration,usage_counter,cleaning_method,humidity_level_percent,temperature_celsius,safety_compliance,documentation_link)
VALUES (3,529,'Batarang Set','2023-03-05','Nina Patel',78,'Edge dullness','2023-09-05','Sharpening','Blade Edge',150,'Prop Vault C','Combat Props','SharpEdge Ltd','2026-03-31',60,'Polish',38,21,'Compliant','http://docs.example.com/prop529');

-- Fan book club membership and reading activity
CREATE TABLE fan_book_club
(
    id                       INTEGER NOT NULL PRIMARY KEY,
    member_name              TEXT,
    email_address            TEXT,
    join_date                TEXT,
    favorite_superhero_id    INTEGER,
    preferred_genre          TEXT,
    books_read_current_month INTEGER,
    last_meeting_attended    TEXT,
    points_earned            INTEGER,
    membership_tier          TEXT,
    avatar_image_url         TEXT,
    favorite_quote           TEXT,
    reading_goal_annual      INTEGER,
    total_pages_read         INTEGER,
    preferred_meeting_day    TEXT,
    city_residence           TEXT,
    newsletter_opt_in        TEXT,
    beta_access_granted      TEXT,
    referral_code_used       TEXT,
    last_feedback_score      INTEGER,
    notes                    TEXT,
    social_handle            TEXT
);

INSERT INTO fan_book_club (id,member_name,email_address,join_date,favorite_superhero_id,preferred_genre,books_read_current_month,last_meeting_attended,points_earned,membership_tier,avatar_image_url,favorite_quote,reading_goal_annual,total_pages_read,preferred_meeting_day,city_residence,newsletter_opt_in,beta_access_granted,referral_code_used,last_feedback_score,notes,social_handle)
VALUES (1,'Tom Harper','tomh@example.com','2022-05-12',5,'SciFi',3,'2023-02-10',120,'Gold','http://avatars.example.com/tom.png','With great power comes great responsibility',24,5400,'Saturday','New York','Yes','Yes','REF123',9,'Active participant','@tomharper');

INSERT INTO fan_book_club (id,member_name,email_address,join_date,favorite_superhero_id,preferred_genre,books_read_current_month,last_meeting_attended,points_earned,membership_tier,avatar_image_url,favorite_quote,reading_goal_annual,total_pages_read,preferred_meeting_day,city_residence,newsletter_opt_in,beta_access_granted,referral_code_used,last_feedback_score,notes,social_handle)
VALUES (2,'Lila Gomez','lila.g@example.com','2021-11-03',12,'Fantasy',5,'2023-01-22',200,'Platinum','http://avatars.example.com/lila.png','Hope is a good thing',30,7200,'Wednesday','Los Angeles','Yes','No','REF456',10,'Organizes events','@lilagomez');

INSERT INTO fan_book_club (id,member_name,email_address,join_date,favorite_superhero_id,preferred_genre,books_read_current_month,last_meeting_attended,points_earned,membership_tier,avatar_image_url,favorite_quote,reading_goal_annual,total_pages_read,preferred_meeting_day,city_residence,newsletter_opt_in,beta_access_granted,referral_code_used,last_feedback_score,notes,social_handle)
VALUES (3,'Raj Patel','raj.p@example.com','2023-02-28',8,'Mystery',1,'2023-03-15',45,'Silver','http://avatars.example.com/raj.png','The night is darkest before the dawn',12,1500,'Friday','Chicago','No','Yes','REF789',7,'New member','@rajpatel');

-- Licensing fee schedule per region and term
CREATE TABLE licensing_fee_schedule
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    region_code           TEXT,
    license_type          TEXT,
    term_years            INTEGER,
    fee_usd               INTEGER,
    royalty_percent       INTEGER,
    currency              TEXT,
    start_date            TEXT,
    end_date              TEXT,
    renewal_option        TEXT,
    discount_percent      INTEGER,
    early_payment_bonus   INTEGER,
    late_fee_per_day_usd  INTEGER,
    notes                 TEXT,
    contact_person        TEXT,
    contact_email         TEXT,
    legal_representative  TEXT,
    audit_required        TEXT,
    compliance_level      TEXT,
    payment_method        TEXT,
    invoice_frequency     TEXT,
    contract_version      TEXT
);

INSERT INTO licensing_fee_schedule (id,region_code,license_type,term_years,fee_usd,royalty_percent,currency,start_date,end_date,renewal_option,discount_percent,early_payment_bonus,late_fee_per_day_usd,notes,contact_person,contact_email,legal_representative,audit_required,compliance_level,payment_method,invoice_frequency,contract_version)
VALUES (1,'NA','Print','5',50000,8,'USD','2022-01-01','2026-12-31','Automatic',5,2000,150,'Standard North America print license','Emma Stone','emma.stone@example.com','LawCo LLC','Yes','High','Wire Transfer','Quarterly','v1.0');

INSERT INTO licensing_fee_schedule (id,region_code,license_type,term_years,fee_usd,royalty_percent,currency,start_date,end_date,renewal_option,discount_percent,early_payment_bonus,late_fee_per_day_usd,notes,contact_person,contact_email,legal_representative,audit_required,compliance_level,payment_method,invoice_frequency,contract_version)
VALUES (2,'EU','Digital','3',30000,10,'EUR','2023-04-01','2025-03-31','Manual',10,1500,120,'European digital distribution','Lars Mueller','lars.mueller@example.eu','EuroLegal','No','Medium','Credit Card','Monthly','v2.1');

INSERT INTO licensing_fee_schedule (id,region_code,license_type,term_years,fee_usd,royalty_percent,currency,start_date,end_date,renewal_option,discount_percent,early_payment_bonus,late_fee_per_day_usd,notes,contact_person,contact_email,legal_representative,audit_required,compliance_level,payment_method,invoice_frequency,contract_version)
VALUES (3,'APAC','Merchandise','2',20000,7,'USD','2024-01-15','2025-12-31','Automatic',3,1000,100,'APAC merchandise rights','Yuki Tanaka','yuki.t@example.jp','AsiaLaw','Yes','Low','PayPal','Biannual','v1.3');

-- Narrative arc summary for long-running comic series
CREATE TABLE narrative_arc_summary
(
    id                       INTEGER NOT NULL PRIMARY KEY,
    arc_name                 TEXT,
    start_issue_number       INTEGER,
    end_issue_number         INTEGER,
    premiere_year            INTEGER,
    final_year               INTEGER,
    central_conflict         TEXT,
    primary_antagonist_id    INTEGER,
    protagonist_focus_id     INTEGER,
    total_pages              INTEGER,
    average_rating           INTEGER,
    key_events               TEXT,
    cliffhanger_description  TEXT,
    resolved                 TEXT,
    spin_offs_created        INTEGER,
    collected_editions       INTEGER,
    fan_reception_score      INTEGER,
    editorial_notes          TEXT,
    storyline_complexity     TEXT,
    continuity_status       TEXT,
    publishing_imprint       TEXT,
    marketing_tagline        TEXT
);

INSERT INTO narrative_arc_summary (id,arc_name,start_issue_number,end_issue_number,premiere_year,final_year,central_conflict,primary_antagonist_id,protagonist_focus_id,total_pages,average_rating,key_events,cliffhanger_description,resolved,spin_offs_created,collected_editions,fan_reception_score,editorial_notes,storyline_complexity,continuity_status,publishing_imprint,marketing_tagline)
VALUES (1,'Shadow of Eternity',101,150,2015,2017,'Time manipulation threatens reality',23,5,2500,8,'Time fracture, Parallel worlds','Hero trapped in looping timeline','Yes',2,3,92,'Highly praised for depth','High','Canonical','Main Imprint','Beyond time we stand');

INSERT INTO narrative_arc_summary (id,arc_name,start_issue_number,end_issue_number,premiere_year,final_year,central_conflict,primary_antagonist_id,protagonist_focus_id,total_pages,average_rating,key_events,cliffhanger_description,resolved,spin_offs_created,collected_editions,fan_reception_score,editorial_notes,storyline_complexity,continuity_status,publishing_imprint,marketing_tagline)
VALUES (2,'Rise of the Machines',201,250,2018,2020,'Artificial intelligence uprising',34,7,3200,7,'AI revolt, City siege','AI gains sentience','Partial',1,2,85,'Mixed reactions on pacing','Medium','Alternate','Tech Line','When code becomes conscience');

INSERT INTO narrative_arc_summary (id,arc_name,start_issue_number,end_issue_number,premiere_year,final_year,central_conflict,primary_antagonist_id,protagonist_focus_id,total_pages,average_rating,key_events,cliffhanger_description,resolved,spin_offs_created,collected_editions,fan_reception_score,editorial_notes,storyline_complexity,continuity_status,publishing_imprint,marketing_tagline)
VALUES (3,'Celestial War',301,360,2021,2023,'Gods battle for mortal realm',45,9,2800,9,'Divine war, Mortal alliance','Gods vanish from sky','No',0,1,78,'Critics note uneven art','Low','Canonical','Mythic Series','Echoes of eternity');

-- Training program for staff and talent development
CREATE TABLE training_program
(
    id                       INTEGER NOT NULL PRIMARY KEY,
    program_name            TEXT,
    department              TEXT,
    start_date              TEXT,
    end_date                TEXT,
    duration_hours          INTEGER,
    instructor_name         TEXT,
    certification_granted   TEXT,
    seats_available         INTEGER,
    enrollment_count        INTEGER,
    prerequisite_course_id  INTEGER,
    delivery_method         TEXT,
    material_url            TEXT,
    assessment_type         TEXT,
    pass_score_percent      INTEGER,
    feedback_average        INTEGER,
    cost_usd                INTEGER,
    sponsor_company         TEXT,
    virtual_access_link     TEXT,
    max_attempts_allowed    INTEGER,
    notes                   TEXT,
    compliance_required    TEXT
);

INSERT INTO training_program (id,program_name,department,start_date,end_date,duration_hours,instructor_name,certification_granted,seats_available,enrollment_count,prerequisite_course_id,delivery_method,material_url,assessment_type,pass_score_percent,feedback_average,cost_usd,sponsor_company,virtual_access_link,max_attempts_allowed,notes,compliance_required)
VALUES (1,'Advanced Stunt Safety','Stunts','2023-06-01','2023-06-05',40,'Derek Miles','Stunt Safety Cert',20,12,NULL,'In-Person','http://train.example.com/safety','Practical',85,9,5000,'ActionSafe','http://virtual.example.com/safety',2,'Focus on high-risk sequences','Yes');

INSERT INTO training_program (id,program_name,department,start_date,end_date,duration_hours,instructor_name,certification_granted,seats_available,enrollment_count,prerequisite_course_id,delivery_method,material_url,assessment_type,pass_score_percent,feedback_average,cost_usd,sponsor_company,virtual_access_link,max_attempts_allowed,notes,compliance_required)
VALUES (2,'VFX Fundamentals','Visual Effects','2023-07-10','2023-07-12',24,'Lena Ortiz','VFX Basics Cert',25,18,5,'Online','http://train.example.com/vfx','Quiz',80,8,3000,'RenderTech','http://virtual.example.com/vfx',3,'Entry level for artists','No');

INSERT INTO training_program (id,program_name,department,start_date,end_date,duration_hours,instructor_name,certification_granted,seats_available,enrollment_count,prerequisite_course_id,delivery_method,material_url,assessment_type,pass_score_percent,feedback_average,cost_usd,sponsor_company,virtual_access_link,max_attempts_allowed,notes,compliance_required)
VALUES (3,'Leadership for Creatives','Management','2023-08-15','2023-08-18',30,'Rita Gomez','Creative Lead Cert',15,10,2,'Hybrid','http://train.example.com/leadership','Project',90,10,4000,'CreativeCo','http://virtual.example.com/leadership',1,'Mid‑level managers only','Yes');

-- Sustainability report for production activities
CREATE TABLE sustainability_report
(
    id                       INTEGER NOT NULL PRIMARY KEY,
    report_year             INTEGER,
    total_co2_tons           INTEGER,
    renewable_energy_percent INTEGER,
    water_usage_liters       INTEGER,
    waste_diverted_percent  INTEGER,
    paper_used_kg           INTEGER,
    carbon_offset_credits    INTEGER,
    green_certification_level TEXT,
    initiatives_summary      TEXT,
    notable_accomplishments TEXT,
    challenges_faced         TEXT,
    future_goals_2025        TEXT,
    audit_firm_name          TEXT,
    audit_date               TEXT,
    compliance_status        TEXT,
    report_link              TEXT,
    reviewer_name            TEXT,
    reviewer_email           TEXT,
    internal_notes           TEXT,
    published                TEXT
);

INSERT INTO sustainability_report (id,report_year,total_co2_tons,renewable_energy_percent,water_usage_liters,waste_diverted_percent,paper_used_kg,carbon_offset_credits,green_certification_level,initiatives_summary,notable_accomplishments,challenges_faced,future_goals_2025,audit_firm_name,audit_date,compliance_status,report_link,reviewer_name,reviewer_email,internal_notes,published)
VALUES (1,2022,450,68,1200000,75,3000,150,'Platinum','Solar panels on studios, Recycling program','Zero waste day achieved','Supply chain emissions','Reduce CO2 by 20%','EcoAudit Inc','2023-01-20','Compliant','http://sustain.example.com/2022','Mia Lee','mia.lee@example.com','Prepared for board review','Yes');

INSERT INTO sustainability_report (id,report_year,total_co2_tons,renewable_energy_percent,water_usage_liters,waste_diverted_percent,paper_used_kg,carbon_offset_credits,green_certification_level,initiatives_summary,notable_accomplishments,challenges_faced,future_goals_2025,audit_firm_name,audit_date,compliance_status,report_link,reviewer_name,reviewer_email,internal_notes,published)
VALUES (2,2023,380,72,1150000,78,2800,180,'Gold','LED lighting retrofit, Composting','Carbon neutral for Q3','Higher transportation emissions','Achieve net zero','GreenCheck LLC','2024-02-15','Compliant','http://sustain.example.com/2023','Sam Patel','sam.patel@example.com','Include next year forecast','Yes');

INSERT INTO sustainability_report (id,report_year,total_co2_tons,renewable_energy_percent,water_usage_liters,waste_diverted_percent,paper_used_kg,carbon_offset_credits,green_certification_level,initiatives_summary,notable_accomplishments,challenges_faced,future_goals_2025,audit_firm_name,audit_date,compliance_status,report_link,reviewer_name,reviewer_email,internal_notes,published)
VALUES (3,2024,340,75,1100000,80,2600,200,'Silver','Hybrid work model, Digital archiving','Reduced paper by 15%','Maintaining staff engagement remotely','Zero landfill waste','Sustainability Auditors','2025-03-10','Pending','http://sustain.example.com/2024','Lee Chen','lee.chen@example.com','Awaiting final audit','No');

-- AI assistant usage statistics for creative pipeline
CREATE TABLE ai_assistant_usage
(
    id                         INTEGER NOT NULL PRIMARY KEY,
    assistant_name            TEXT,
    department                 TEXT,
    month_year                 TEXT,
    queries_submitted         INTEGER,
    average_response_time_sec INTEGER,
    successful_resolutions     INTEGER,
    escalation_rate_percent   INTEGER,
    average_user_rating       INTEGER,
    top_use_case              TEXT,
    integration_points        TEXT,
    cost_usd_per_month        INTEGER,
    training_data_version     TEXT,
    feedback_comments         TEXT,
    compliance_flagged        TEXT,
    maintenance_window_scheduled TEXT,
    downtime_minutes          INTEGER,
    version_deployed          TEXT,
    api_calls_made            INTEGER,
    unique_users              INTEGER,
    notes                     TEXT,
    last_updated              TEXT
);

INSERT INTO ai_assistant_usage (id,assistant_name,department,month_year,queries_submitted,average_response_time_sec,successful_resolutions,escalation_rate_percent,average_user_rating,top_use_case,integration_points,cost_usd_per_month,training_data_version,feedback_comments,compliance_flagged,maintenance_window_scheduled,downtime_minutes,version_deployed,api_calls_made,unique_users,notes,last_updated)
VALUES (1,'ScriptGen','Writing','2023-06',420,2,390,5,8,'Dialogue drafting','Story editor UI',1200,'v2.4','Positive overall','No','2023-07-01 02:00','15','2.5','5600',38,'Smooth rollout','2023-07-02');

INSERT INTO ai_assistant_usage (id,assistant_name,department,month_year,queries_submitted,average_response_time_sec,successful_resolutions,escalation_rate_percent,average_user_rating,top_use_case,integration_points,cost_usd_per_month,training_data_version,feedback_comments,compliance_flagged,maintenance_window_scheduled,downtime_minutes,version_deployed,api_calls_made,unique_users,notes,last_updated)
VALUES (2,'VFXHelper','Visual Effects','2023-07',310,3,275,7,7,'Shader suggestions','Render farm API',950,'v3.1','Mixed feedback','Yes','2023-08-15 01:00','30','3.2','4100',22,'Improved shader library','2023-08-16');

INSERT INTO ai_assistant_usage (id,assistant_name,department,month_year,queries_submitted,average_response_time_sec,successful_resolutions,escalation_rate_percent,average_user_rating,top_use_case,integration_points,cost_usd_per_month,training_data_version,feedback_comments,compliance_flagged,maintenance_window_scheduled,downtime_minutes,version_deployed,api_calls_made,unique_users,notes,last_updated)
VALUES (3,'StoryArcAI','Editorial','2023-08',525,2,500,4,9,'Plot outline generation','Editorial dashboard',1300,'v1.9','Very positive','No','2023-09-10 03:00','10','2.0','6200',48,'High adoption rate','2023-09-11');