-- Club Investor Relations
CREATE TABLE Club_Investor_Relations (
    investor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    investor_name TEXT,
    investment_amount REAL,
    equity_percent REAL,
    investment_date TEXT,
    board_seat TEXT,
    contact_email TEXT,
    phone TEXT,
    preferred_communication_method TEXT,
    last_meeting_date TEXT,
    notes TEXT,
    investment_round TEXT,
    valuation_at_investment REAL,
    country_of_origin TEXT,
    industry TEXT,
    risk_profile TEXT,
    dividend_yield REAL,
    voting_rights TEXT,
    lockup_period_months INTEGER,
    exit_strategy TEXT,
    legal_representative TEXT,
    compliance_status TEXT
);
INSERT INTO Club_Investor_Relations (investor_name,investment_amount,equity_percent,investment_date,board_seat,contact_email,phone,preferred_communication_method,last_meeting_date,notes,investment_round,valuation_at_investment,country_of_origin,industry,risk_profile,dividend_yield,voting_rights,lockup_period_months,exit_strategy,legal_representative,compliance_status) VALUES ('Alpha Capital',5000000,12.5,'2022-05-15','Yes','contact@alphacap.com','1234567890','Email','2023-01-20','Strategic investor','Series B',40000000,'United States','Finance','Medium',3.2,'Yes',24,'IPO','John Doe','Compliant');
INSERT INTO Club_Investor_Relations (investor_name,investment_amount,equity_percent,investment_date,board_seat,contact_email,phone,preferred_communication_method,last_meeting_date,notes,investment_round,valuation_at_investment,country_of_origin,industry,risk_profile,dividend_yield,voting_rights,lockup_period_months,exit_strategy,legal_representative,compliance_status) VALUES ('Beta Ventures',2000000,5.0,'2023-02-10','No','info@betaventures.com','0987654321','Phone','2023-06-05','Minority stake','Series A',38000000,'Germany','Technology','Low',0.0,'No',12,'Secondary Sale','Anna Schmidt','Compliant');
INSERT INTO Club_Investor_Relations (investor_name,investment_amount,equity_percent,investment_date,board_seat,contact_email,phone,preferred_communication_method,last_meeting_date,notes,investment_round,valuation_at_investment,country_of_origin,industry,risk_profile,dividend_yield,voting_rights,lockup_period_months,exit_strategy,legal_representative,compliance_status) VALUES ('Gamma Holdings',7500000,15.0,'2021-11-30','Yes','relations@gammaholdings.com','5551234567','Email','2022-12-01','Lead investor','Series C',50000000,'United Kingdom','Sports','High',2.5,'Yes',36,'Buyout','Michael Lee','Compliant');

-- Arena Sustainability Measures
CREATE TABLE Arena_Sustainability_Measures (
    measure_id INTEGER PRIMARY KEY AUTOINCREMENT,
    arena_id INTEGER,
    measure_type TEXT,
    implementation_date TEXT,
    target_reduction_percent REAL,
    actual_reduction_percent REAL,
    energy_source TEXT,
    water_savings_liters REAL,
    waste_diverted_tons REAL,
    recycling_rate_percent REAL,
    carbon_offset_credits INTEGER,
    certification_status TEXT,
    responsible_department TEXT,
    budget_usd REAL,
    project_manager TEXT,
    status TEXT,
    next_review_date TEXT,
    notes TEXT,
    impact_score REAL,
    monitoring_frequency TEXT,
    verification_body TEXT
);
INSERT INTO Arena_Sustainability_Measures (arena_id,measure_type,implementation_date,target_reduction_percent,actual_reduction_percent,energy_source,water_savings_liters,waste_diverted_tons,recycling_rate_percent,carbon_offset_credits,certification_status,responsible_department,budget_usd,project_manager,status,next_review_date,notes,impact_score,monitoring_frequency,verification_body) VALUES (1,'LED Lighting','2022-03-01',30.0,28.5,'Solar',1200000,45.2,85.0,150,'Gold','Facilities',250000,'Laura Smith','Active','2023-12-01','Reduced energy consumption','9.2','Quarterly','EcoCert Ltd');
INSERT INTO Arena_Sustainability_Measures (arena_id,measure_type,implementation_date,target_reduction_percent,actual_reduction_percent,energy_source,water_savings_liters,waste_diverted_tons,recycling_rate_percent,carbon_offset_credits,certification_status,responsible_department,budget_usd,project_manager,status,next_review_date,notes,impact_score,monitoring_frequency,verification_body) VALUES (2,'Rainwater Harvesting','2021-07-15',40.0,42.1,'Rain',2500000,10.0,90.0,200,'Platinum','Operations',180000,'Carlos Mendes','Completed','2022-12-31','Exceeds target','9.7','Annual','GreenAudit Inc');
INSERT INTO Arena_Sustainability_Measures (arena_id,measure_type,implementation_date,target_reduction_percent,actual_reduction_percent,energy_source,water_savings_liters,waste_diverted_tons,recycling_rate_percent,carbon_offset_credits,certification_status,responsible_department,budget_usd,project_manager,status,next_review_date,notes,impact_score,monitoring_frequency,verification_body) VALUES (3,'Waste Composting','2023-01-20',25.0,22.0,'Grid',0,30.5,78.0,120,'Silver','Sustainability',95000,'Mina Patel','Active','2024-06-30','Ongoing monitoring','8.5','Monthly','SustainCheck');

-- Digital Content Analytics
CREATE TABLE Digital_Content_Analytics (
    content_id INTEGER PRIMARY KEY AUTOINCREMENT,
    content_type TEXT,
    title TEXT,
    upload_date TEXT,
    duration_seconds INTEGER,
    view_count INTEGER,
    unique_viewers INTEGER,
    average_watch_time_seconds REAL,
    completion_rate_percent REAL,
    likes INTEGER,
    dislikes INTEGER,
    shares INTEGER,
    comments INTEGER,
    audience_country TEXT,
    audience_age_group TEXT,
    device_type TEXT,
    platform TEXT,
    ad_impressions INTEGER,
    ad_clicks INTEGER,
    revenue_usd REAL,
    content_category TEXT,
    tags TEXT,
    language TEXT,
    thumbnail_url TEXT,
    compliance_flag TEXT
);
INSERT INTO Digital_Content_Analytics (content_type,title,upload_date,duration_seconds,view_count,unique_viewers,average_watch_time_seconds,completion_rate_percent,likes,dislikes,shares,comments,audience_country,audience_age_group,device_type,platform,ad_impressions,ad_clicks,revenue_usd,content_category,tags,language,thumbnail_url,compliance_flag) VALUES ('Video','Match Highlights','2023-04-10',540,150000,120000,380.5,70.2,8500,120,300,210,'United States','18-24','Mobile','YouTube',50000,1200,3000.75,'Sports','highlights,match','English','http://example.com/thumb1.jpg','Clear');
INSERT INTO Digital_Content_Analytics (content_type,title,upload_date,duration_seconds,view_count,unique_viewers,average_watch_time_seconds,completion_rate_percent,likes,dislikes,shares,comments,audience_country,audience_age_group,device_type,platform,ad_impressions,ad_clicks,revenue_usd,content_category,tags,language,thumbnail_url,compliance_flag) VALUES ('Article','Season Preview','2023-05-01',0,80000,75000,0,0,4500,30,150,80,'United Kingdom','25-34','Desktop','Website',20000,300,1200.50,'Analysis','preview,season','English','http://example.com/thumb2.jpg','Clear');
INSERT INTO Digital_Content_Analytics (content_type,title,upload_date,duration_seconds,view_count,unique_viewers,average_watch_time_seconds,completion_rate_percent,likes,dislikes,shares,comments,audience_country,audience_age_group,device_type,platform,ad_impressions,ad_clicks,revenue_usd,content_category,tags,language,thumbnail_url,compliance_flag) VALUES ('Podcast','Player Interview','2023-06-12',1800,45000,40000,1500.2,85.0,3800,10,200,95,'Canada','35-44','Tablet','Spotify',15000,400,950.25,'Interview','player,interview','English','http://example.com/thumb3.jpg','Clear');

-- Equipment Rental Transactions
CREATE TABLE Equipment_Rental_Transactions (
    rental_id INTEGER PRIMARY KEY AUTOINCREMENT,
    equipment_id INTEGER,
    equipment_type TEXT,
    rental_start_date TEXT,
    rental_end_date TEXT,
    renter_club_id INTEGER,
    renter_name TEXT,
    renter_contact TEXT,
    rental_rate_usd_per_day REAL,
    total_cost_usd REAL,
    insurance_covered TEXT,
    deposit_amount_usd REAL,
    condition_before TEXT,
    condition_after TEXT,
    maintenance_required TEXT,
    assigned_technician TEXT,
    pickup_location TEXT,
    dropoff_location TEXT,
    invoice_number TEXT,
    payment_status TEXT,
    notes TEXT,
    extended_rental_flag TEXT
);
INSERT INTO Equipment_Rental_Transactions (equipment_id,equipment_type,rental_start_date,rental_end_date,renter_club_id,renter_name,renter_contact,rental_rate_usd_per_day,total_cost_usd,insurance_covered,deposit_amount_usd,condition_before,condition_after,maintenance_required,assigned_technician,pickup_location,dropoff_location,invoice_number,payment_status,notes,extended_rental_flag) VALUES (101,'Goalpost','2023-07-01','2023-07-10',5,'North United','contact@northunited.com',150.0,1500.0,'Yes',300.0,'Good','Good','No','Mike Torres','Warehouse A','Stadium North','INV202307001','Paid','No issues','No');
INSERT INTO Equipment_Rental_Transactions (equipment_id,equipment_type,rental_start_date,rental_end_date,renter_club_id,renter_name,renter_contact,rental_rate_usd_per_day,total_cost_usd,insurance_covered,deposit_amount_usd,condition_before,condition_after,maintenance_required,assigned_technician,pickup_location,dropoff_location,invoice_number,payment_status,notes,extended_rental_flag) VALUES (202,'Training Cones','2023-08-15','2023-08-20',8,'East FC','admin@eastfc.com',20.0,120.0,'No',50.0,'Excellent','Slightly Worn','Yes','Sara Liu','Storage B','Training Ground East','INV202308015','Pending','Pending maintenance','Yes');
INSERT INTO Equipment_Rental_Transactions (equipment_id,equipment_type,rental_start_date,rental_end_date,renter_club_id,renter_name,renter_contact,rental_rate_usd_per_day,total_cost_usd,insurance_covered,deposit_amount_usd,condition_before,condition_after,maintenance_required,assigned_technician,pickup_location,dropoff_location,invoice_number,payment_status,notes,extended_rental_flag) VALUES (303,'Video Camera','2023-09-05','2023-09-12',12,'South Academy','media@southacademy.org',80.0,560.0,'Yes',200.0,'Good','Good','No','Liam O\'Connor','Media Room','Stadium South','INV202309005','Paid','Used for match recording','No');

-- Event Sponsorship Benefits
CREATE TABLE Event_Sponsorship_Benefits (
    sponsorship_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    sponsor_id INTEGER,
    benefit_type TEXT,
    description TEXT,
    activation_date TEXT,
    expiration_date TEXT,
    deliverable_status TEXT,
    measured_impression_count INTEGER,
    social_media_mentions INTEGER,
    onsite_branding_spots INTEGER,
    broadcast_mention_slots INTEGER,
    hospitality_vip_passes INTEGER,
    product_sampling_units INTEGER,
    exclusive_rights_flag TEXT,
    agreed_fee_usd REAL,
    payment_schedule TEXT,
    compliance_audit_date TEXT,
    notes TEXT,
    contact_person TEXT,
    contact_email TEXT
);
INSERT INTO Event_Sponsorship_Benefits (event_id,sponsor_id,benefit_type,description,activation_date,expiration_date,deliverable_status,measured_impression_count,social_media_mentions,onsite_branding_spots,broadcast_mention_slots,hospitality_vip_passes,product_sampling_units,exclusive_rights_flag,agreed_fee_usd,payment_schedule,compliance_audit_date,notes,contact_person,contact_email) VALUES (301,41,'Title Sponsor','Brand appears in event title','2023-07-01','2023-07-31','Delivered',500000,1200,10,5,20,0,'Yes',250000,'50% upfront, 50% post','2023-07-15','All assets approved','Emily Carter','emily.carter@brandco.com');
INSERT INTO Event_Sponsorship_Benefits (event_id,sponsor_id,benefit_type,description,activation_date,expiration_date,deliverable_status,measured_impression_count,social_media_mentions,onsite_branding_spots,broadcast_mention_slots,hospitality_vip_passes,product_sampling_units,exclusive_rights_flag,agreed_fee_usd,payment_schedule,compliance_audit_date,notes,contact_person,contact_email) VALUES (302,58,'Product Placement','Logo on team kits','2023-08-01','2023-08-31','Pending',300000,800,5,2,10,2000,'No',150000,'Full payment after event','2023-08-20','Waiting for kit approval','James Lee','james.lee@productinc.com');
INSERT INTO Event_Sponsorship_Benefits (event_id,sponsor_id,benefit_type,description,activation_date,expiration_date,deliverable_status,measured_impression_count,social_media_mentions,onsite_branding_spots,broadcast_mention_slots,hospitality_vip_passes,product_sampling_units,exclusive_rights_flag,agreed_fee_usd,payment_schedule,compliance_audit_date,notes,contact_person,contact_email) VALUES (303,62,'Digital Banner','Ads on live stream','2023-09-10','2023-09-20','Delivered',400000,950,0,8,5,0,'No',75000,'30% upfront, 70% after','2023-09-12','Banner performance met KPIs','Olivia Ng','olivia.ng@digitalsolutions.com');

-- Fan Merchandise Design Requests
CREATE TABLE Fan_Merchandise_Design_Requests (
    request_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    merchandise_type TEXT,
    design_concept TEXT,
    color_scheme TEXT,
    size_range TEXT,
    material TEXT,
    print_method TEXT,
    requested_quantity INTEGER,
    estimated_cost_usd REAL,
    approval_status TEXT,
    designer_assigned TEXT,
    design_deadline TEXT,
    production_start_date TEXT,
    production_end_date TEXT,
    shipping_method TEXT,
    shipping_estimated_days INTEGER,
    tracking_number TEXT,
    feedback_rating REAL,
    comments TEXT,
    submitted_date TEXT,
    last_updated TEXT
);
INSERT INTO Fan_Merchandise_Design_Requests (fan_id,merchandise_type,design_concept,color_scheme,size_range,material,print_method,requested_quantity,estimated_cost_usd,approval_status,designer_assigned,design_deadline,production_start_date,production_end_date,shipping_method,shipping_estimated_days,tracking_number,feedback_rating,comments,submitted_date,last_updated) VALUES (1001,'Scarf','Vintage Crest','Red/White','S,M,L,XL','Wool','Screen Print',500,2500.00,'Approved','Mia Chen','2023-07-15','2023-07-20','2023-08-05','Standard',7,'TRK123456','4.5','Loved the design','2023-07-01','2023-07-18');
INSERT INTO Fan_Merchandise_Design_Requests (fan_id,merchandise_type,design_concept,color_scheme,size_range,material,print_method,requested_quantity,estimated_cost_usd,approval_status,designer_assigned,design_deadline,production_start_date,production_end_date,shipping_method,shipping_estimated_days,tracking_number,feedback_rating,comments,submitted_date,last_updated) VALUES (1002,'T-Shirt','Modern Skyline','Blue/Black','S,M,L,XL,XXL','Cotton','DTG',1200,7200.00,'Pending','Liam Patel','2023-08-01',NULL,NULL,'Express',3,NULL,NULL,'','2023-07-20','2023-07-20');
INSERT INTO Fan_Merchandise_Design_Requests (fan_id,merchandise_type,design_concept,color_scheme,size_range,material,print_method,requested_quantity,estimated_cost_usd,approval_status,designer_assigned,design_deadline,production_start_date,production_end_date,shipping_method,shipping_estimated_days,tracking_number,feedback_rating,comments,submitted_date,last_updated) VALUES (1003,'Cap','Retro Logo','Green/Yellow','One Size','Polyester','Embroidery',800,3200.00,'Approved','Sofia Rossi','2023-07-25','2023-07-28','2023-08-10','Standard',5,'TRK789012','5.0','Perfect fit','2023-07-05','2023-07-26');

-- Training Scientist Projects
CREATE TABLE Training_Scientist_Projects (
    project_id INTEGER PRIMARY KEY AUTOINCREMENT,
    scientist_id INTEGER,
    project_name TEXT,
    start_date TEXT,
    end_date TEXT,
    objective TEXT,
    methodology TEXT,
    sample_size INTEGER,
    data_collection_tool TEXT,
    analysis_software TEXT,
    preliminary_results_summary TEXT,
    final_report_path TEXT,
    funding_source TEXT,
    budget_usd REAL,
    milestones_completed INTEGER,
    next_milestone_due TEXT,
    collaboration_partners TEXT,
    ethical_approval_status TEXT,
    data_privacy_level TEXT,
    publication_status TEXT,
    notes TEXT
);
INSERT INTO Training_Scientist_Projects (scientist_id,project_name,start_date,end_date,objective,methodology,sample_size,data_collection_tool,analysis_software,preliminary_results_summary,final_report_path,funding_source,budget_usd,milestones_completed,next_milestone_due,collaboration_partners,ethical_approval_status,data_privacy_level,publication_status,notes) VALUES (201,'High-Intensity Interval Protocol','2023-01-10','2023-06-30','Improve VO2 max','RCT',45,'Wearable HR Monitor','SPSS','Positive trend in VO2','/reports/hiit_protocol.pdf','Sports Science Grant',120000,3,'2023-07-15','University Lab A','Approved','High','Submitted','Data collection complete');
INSERT INTO Training_Scientist_Projects (scientist_id,project_name,start_date,end_date,objective,methodology,sample_size,data_collection_tool,analysis_software,preliminary_results_summary,final_report_path,funding_source,budget_usd,milestones_completed,next_milestone_due,collaboration_partners,ethical_approval_status,data_privacy_level,publication_status,notes) VALUES (202,'Neuromuscular Fatigue Study','2022-09-01','2023-12-31','Assess fatigue markers','Longitudinal','60','EMG Sensors','MATLAB','Early indicators identified','/reports/fatigue_study.pdf','Club Research Fund',95000,5,'2024-01-20','Institute B','Approved','Medium','In Review','Running final analysis');
INSERT INTO Training_Scientist_Projects (scientist_id,project_name,start_date,end_date,objective,methodology,sample_size,data_collection_tool,analysis_software,preliminary_results_summary,final_report_path,funding_source,budget_usd,milestones_completed,next_milestone_due,collaboration_partners,ethical_approval_status,data_privacy_level,publication_status,notes) VALUES (203,'Recovery Nutrition Trial','2023-03-15','2023-11-30','Evaluate supplement efficacy','Cross-over','30','Blood Analyzer','R','No significant difference yet','/reports/recovery_nutrition.pdf','Health Sponsor',80000,2,'2023-12-10','Nutrition Dept','Pending','High','Not Submitted','Awaiting ethics clearance');

-- Stadium Utility Billing Details
CREATE TABLE Stadium_Utility_Billing_Details (
    billing_id INTEGER PRIMARY KEY AUTOINCREMENT,
    arena_id INTEGER,
    utility_type TEXT,
    billing_period_start TEXT,
    billing_period_end TEXT,
    provider_name TEXT,
    account_number TEXT,
    consumption_units REAL,
    unit_cost_usd REAL,
    total_amount_usd REAL,
    payment_due_date TEXT,
    payment_status TEXT,
    invoice_number TEXT,
    meter_reading_start REAL,
    meter_reading_end REAL,
    peak_demand_kw REAL,
    offpeak_consumption_units REAL,
    renewable_energy_percent REAL,
    carbon_emissions_kg REAL,
    notes TEXT,
    auditor_name TEXT
);
INSERT INTO Stadium_Utility_Billing_Details (arena_id,utility_type,billing_period_start,billing_period_end,provider_name,account_number,consumption_units,unit_cost_usd,total_amount_usd,payment_due_date,payment_status,invoice_number,meter_reading_start,meter_reading_end,peak_demand_kw,offpeak_consumption_units,renewable_energy_percent,carbon_emissions_kg,notes,auditor_name) VALUES (1,'Electricity','2023-06-01','2023-06-30','PowerCo','EL12345',85000,0.12,10200,'2023-07-15','Paid','INV202306001',3500,3520,450,20000,25.0,12000,'All meters calibrated','Laura Smith');
INSERT INTO Stadium_Utility_Billing_Details (arena_id,utility_type,billing_period_start,billing_period_end,provider_name,account_number,consumption_units,unit_cost_usd,total_amount_usd,payment_due_date,payment_status,invoice_number,meter_reading_start,meter_reading_end,peak_demand_kw,offpeak_consumption_units,renewable_energy_percent,carbon_emissions_kg,notes,auditor_name) VALUES (2,'Water','2023-06-01','2023-06-30','AquaSupply','WT98765',12000,0.008,96,'2023-07-20','Pending','INV202306002',56000,56200,0,8000,40.0,500,'Leak detection performed','Carlos Mendes');
INSERT INTO Stadium_Utility_Billing_Details (arena_id,utility_type,billing_period_start,billing_period_end,provider_name,account_number,consumption_units,unit_cost_usd,total_amount_usd,payment_due_date,payment_status,invoice_number,meter_reading_start,meter_reading_end,peak_demand_kw,offpeak_consumption_units,renewable_energy_percent,carbon_emissions_kg,notes,auditor_name) VALUES (3,'Gas','2023-06-01','2023-06-30','GasCo','GS54321',7500,0.05,375,'2023-07-10','Paid','INV202306003',2100,2150,300,4000,15.0,2500,'No anomalies detected','Mina Patel');

-- Media Streaming Analytics
CREATE TABLE Media_Streaming_Analytics (
    stream_id INTEGER PRIMARY KEY AUTOINCREMENT,
    media_id INTEGER,
    platform TEXT,
    stream_start_time TEXT,
    stream_end_time TEXT,
    concurrent_viewers INTEGER,
    average_bitrate_kbps INTEGER,
    buffering_events INTEGER,
    avg_buffer_duration_seconds REAL,
    geo_distribution TEXT,
    device_distribution TEXT,
    subscription_type TEXT,
    ad_impressions INTEGER,
    ad_clicks INTEGER,
    revenue_usd REAL,
    content_genre TEXT,
    content_rating TEXT,
    subtitle_languages TEXT,
    audio_languages TEXT,
    stream_quality_rating REAL,
    dropout_rate_percent REAL,
    comments_count INTEGER
);
INSERT INTO Media_Streaming_Analytics (media_id,platform,stream_start_time,stream_end_time,concurrent_viewers,average_bitrate_kbps,buffering_events,avg_buffer_duration_seconds,geo_distribution,device_distribution,subscription_type,ad_impressions,ad_clicks,revenue_usd,content_genre,content_rating,subtitle_languages,audio_languages,stream_quality_rating,dropout_rate_percent,comments_count) VALUES (501,'YouTube','2023-07-01 20:00:00','2023-07-01 22:15:00',35000,4500,120,2.5,'US,UK,DE','Mobile,Desktop','Free',80000,1500,4200.75,'Sports','PG-13','en,es','en','4.8',5.2,340);
INSERT INTO Media_Streaming_Analytics (media_id,platform,stream_start_time,stream_end_time,concurrent_viewers,average_bitrate_kbps,buffering_events,avg_buffer_duration_seconds,geo_distribution,device_distribution,subscription_type,ad_impressions,ad_clicks,revenue_usd,content_genre,content_rating,subtitle_languages,audio_languages,stream_quality_rating,dropout_rate_percent,comments_count) VALUES (502,'Twitch','2023-08-05 18:30:00','2023-08-05 20:45:00',22000,3500,90,1.8,'CA,AU,FR','Desktop','Paid',45000,800,3100.00,'Gaming','M','en','en','4.5',3.8,210);
INSERT INTO Media_Streaming_Analytics (media_id,platform,stream_start_time,stream_end_time,concurrent_viewers,average_bitrate_kbps,buffering_events,avg_buffer_duration_seconds,geo_distribution,device_distribution,subscription_type,ad_impressions,ad_clicks,revenue_usd,content_genre,content_rating,subtitle_languages,audio_languages,stream_quality_rating,dropout_rate_percent,comments_count) VALUES (503,'Spotify','2023-09-10 12:00:00','2023-09-10 13:30:00',15000,256,30,0.9,'NL,SE,NO','Mobile','Premium',0,0,0,'Podcast','G','en','en','5.0',1.2,85);

-- Volunteer Impact Surveys
CREATE TABLE Volunteer_Impact_Surveys (
    survey_id INTEGER PRIMARY KEY AUTOINCREMENT,
    volunteer_id INTEGER,
    event_id INTEGER,
    survey_date TEXT,
    overall_satisfaction_score REAL,
    role_satisfaction_score REAL,
    logistics_rating REAL,
    communication_rating REAL,
    training_effectiveness_score REAL,
    perceived_impact_score REAL,
    likelihood_to_volunteer_again REAL,
    open_feedback TEXT,
    hours_contributed INTEGER,
    tasks_completed INTEGER,
    team_cohesion_score REAL,
    safety_rating REAL,
    resource_availability_score REAL,
    supervisor_feedback TEXT,
    recognition_received TEXT,
    suggestions_for_improvement TEXT,
    demographic_age_group TEXT,
    demographic_gender TEXT
);
INSERT INTO Volunteer_Impact_Surveys (volunteer_id,event_id,survey_date,overall_satisfaction_score,role_satisfaction_score,logistics_rating,communication_rating,training_effectiveness_score,perceived_impact_score,likelihood_to_volunteer_again,open_feedback,hours_contributed,tasks_completed,team_cohesion_score,safety_rating,resource_availability_score,supervisor_feedback,recognition_received,suggestions_for_improvement,demographic_age_group,demographic_gender) VALUES (301,401,'2023-07-12',4.6,4.8,4.5,4.7,4.9,4.5,4.9,'Great experience, well organized',12,8,4.8,5.0,4.6,'Supervisor was supportive','Certificate of appreciation','Add more signage for wayfinding','25-34','Female');
INSERT INTO Volunteer_Impact_Surveys (volunteer_id,event_id,survey_date,overall_satisfaction_score,role_satisfaction_score,logistics_rating,communication_rating,training_effectiveness_score,perceived_impact_score,likelihood_to_volunteer_again,open_feedback,hours_contributed,tasks_completed,team_cohesion_score,safety_rating,resource_availability_score,supervisor_feedback,recognition_received,suggestions_for_improvement,demographic_age_group,demographic_gender) VALUES (302,402,'2023-08-05',4.2,4.0,3.8,4.1,4.2,4.0,4.3,'Helpful team, could improve food options',8,5,4.3,4.5,4.0,'Supervisor was friendly','Thank you email','Provide more break areas','35-44','Male');
INSERT INTO Volunteer_Impact_Surveys (volunteer_id,event_id,survey_date,overall_satisfaction_score,role_satisfaction_score,logistics_rating,communication_rating,training_effectiveness_score,perceived_impact_score,likelihood_to_volunteer_again,open_feedback,hours_contributed,tasks_completed,team_cohesion_score,safety_rating,resource_availability_score,supervisor_feedback,recognition_received,suggestions_for_improvement,demographic_age_group,demographic_gender) VALUES (303,403,'2023-09-20',4.8,5.0,4.9,4.8,5.0,4.9,5.0,'Excellent coordination and support',15,12,4.9,5.0,4.8,'Supervisor was excellent','Medal of honor','None needed','45-54','Non-Binary');

-- Club Investor Relations (Additional Table example already created)
-- No further tables are needed.