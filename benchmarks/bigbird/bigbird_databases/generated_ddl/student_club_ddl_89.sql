-- Sustainability initiatives tracked by the university
CREATE TABLE sustainability_initiative (
    initiative_id TEXT PRIMARY KEY,
    name TEXT,
    start_date TEXT,
    end_date TEXT,
    description TEXT,
    goal_type TEXT,
    target_value REAL,
    current_value REAL,
    unit TEXT,
    status TEXT,
    responsible_dept TEXT,
    budget_allocated INTEGER,
    budget_spent INTEGER,
    metric_1 TEXT,
    metric_2 TEXT,
    metric_3 TEXT,
    metric_4 TEXT,
    metric_5 TEXT,
    last_updated TEXT,
    notes TEXT
);

INSERT INTO sustainability_initiative (initiative_id,name,start_date,end_date,description,goal_type,target_value,current_value,unit,status,responsible_dept,budget_allocated,budget_spent,metric_1,metric_2,metric_3,metric_4,metric_5,last_updated,notes) VALUES ('SI001','ZeroWasteCampus','2023-01-01','2025-12-31','Campus wide waste reduction program','percentage',85.0,30.5,'percent','active','Facilities',200000,75000,'recycling_rate','compost_rate','landfill_rate','hazardous_waste','e_waste','2024-06-01','Phase 1 completed');
INSERT INTO sustainability_initiative (initiative_id,name,start_date,end_date,description,goal_type,target_value,current_value,unit,status,responsible_dept,budget_allocated,budget_spent,metric_1,metric_2,metric_3,metric_4,metric_5,last_updated,notes) VALUES ('SI002','SolarPVExpansion','2022-07-15','2026-07-14','Installation of solar panels on rooftops','energy',50000,12000,'kWh','active','Energy',1500000,420000,'panel_count','capacity_utilization','grid_feed_in','maintenance_hours','downtime','2024-05-20','Second phase underway');
INSERT INTO sustainability_initiative (initiative_id,name,start_date,end_date,description,goal_type,target_value,current_value,unit,status,responsible_dept,budget_allocated,budget_spent,metric_1,metric_2,metric_3,metric_4,metric_5,last_updated,notes) VALUES ('SI003','GreenTransportation','2024-01-01','2027-12-31','Transition to electric campus shuttles','fleet',30,8,'vehicles','planned','Transportation',800000,0,'ev_count','charge_station_count','avg_range','fuel_savings','emission_reduction','2024-01-01','Funding approved');

-- Community outreach events organized by the university
CREATE TABLE community_outreach_event (
    outreach_id TEXT PRIMARY KEY,
    event_name TEXT,
    event_date TEXT,
    host_department TEXT,
    target_audience TEXT,
    expected_attendance INTEGER,
    actual_attendance INTEGER,
    location TEXT,
    registration_deadline TEXT,
    cost_per_person REAL,
    total_cost REAL,
    sponsor_name TEXT,
    volunteer_needed INTEGER,
    volunteers_assigned INTEGER,
    materials_provided TEXT,
    feedback_score REAL,
    media_coverage TEXT,
    follow_up_date TEXT,
    notes TEXT,
    status TEXT
);

INSERT INTO community_outreach_event (outreach_id,event_name,event_date,host_department,target_audience,expected_attendance,actual_attendance,location,registration_deadline,cost_per_person,total_cost,sponsor_name,volunteer_needed,volunteers_assigned,materials_provided,feedback_score,media_coverage,follow_up_date,notes,status) VALUES ('COE001','STEM Kids Day','2024-03-15','Engineering','MiddleSchoolStudents',300,285,'MainQuad','2024-02-28',5.0,1500,'TechCorp',20,18','bookmarklets','4.6','local_tv','2024-04-01','Great engagement','completed');
INSERT INTO community_outreach_event (outreach_id,event_name,event_date,host_department,target_audience,expected_attendance,actual_attendance,location,registration_deadline,cost_per_person,total_cost,sponsor_name,volunteer_needed,volunteers_assigned,materials_provided,feedback_score,media_coverage,follow_up_date,notes,status) VALUES ('COE002','Health Fair','2024-05-10','PublicHealth','GeneralPublic',500,470,'StudentCenter','2024-04-30',0.0,0,'HealthPlus',30,27','brochures','4.2','newspaper','2024-05-20','Needed more signage','completed');
INSERT INTO community_outreach_event (outreach_id,event_name,event_date,host_department,target_audience,expected_attendance,actual_attendance,location,registration_deadline,cost_per_person,total_cost,sponsor_name,volunteer_needed,volunteers_assigned,materials_provided,feedback_score,media_coverage,follow_up_date,notes,status) VALUES ('COE003','Art in the Community','2024-09-22','Art','LocalArtists',150,132,'CampusPark','2024-09-01',2.0,300,'ArtSupplyCo',10,9','flyers','4.8','online_blog','2024-10-05','Positive response','scheduled');

-- Metadata for digital assets managed by the university
CREATE TABLE digital_asset_metadata (
    asset_id TEXT PRIMARY KEY,
    file_name TEXT,
    file_type TEXT,
    file_size INTEGER,
    created_date TEXT,
    modified_date TEXT,
    creator_id TEXT,
    description TEXT,
    usage_rights TEXT,
    license_type TEXT,
    expiration_date TEXT,
    tags TEXT,
    category TEXT,
    department TEXT,
    project_code TEXT,
    access_level TEXT,
    download_count INTEGER,
    view_count INTEGER,
    checksum TEXT,
    notes TEXT
);

INSERT INTO digital_asset_metadata (asset_id,file_name,file_type,file_size,created_date,modified_date,creator_id,description,usage_rights,license_type,expiration_date,tags,category,department,project_code,access_level,download_count,view_count,checksum,notes) VALUES ('DA001','campus_map.png','image/png',204800,'2022-08-10','2024-01-15','M001','High resolution campus map','internal','CC0','2099-12-31','map,campus,location','maps','Facilities','PRJ100','public',1200,3500,'abc123def','used in orientation');
INSERT INTO digital_asset_metadata (asset_id,file_name,file_type,file_size,created_date,modified_date,creator_id,description,usage_rights,license_type,expiration_date,tags,category,department,project_code,access_level,download_count,view_count,checksum,notes) VALUES ('DA002','lecture_series.mp4','video/mp4',52428800,'2023-01-05','2024-02-20','M045','Intro to Data Science series','public','CreativeCommons','2099-12-31','lecture,science,data','videos','ComputerScience','PRJ210','public',850,2100,'def456ghi','uploaded to LMS');
INSERT INTO digital_asset_metadata (asset_id,file_name,file_type,file_size,created_date,modified_date,creator_id,description,usage_rights,license_type,expiration_date,tags,category,department,project_code,access_level,download_count,view_count,checksum,notes) VALUES ('DA003','annual_report_2023.pdf','application/pdf',1048576,'2023-12-01','2024-01-10','M078','2023 financial and activity report','public','CC BY','2099-12-31','report,annual,2023','documents','Finance','PRJ310','public',300,750,'ghi789jkl','distributed to stakeholders');

-- Facility energy usage records
CREATE TABLE facility_energy_usage (
    usage_id TEXT PRIMARY KEY,
    building_code TEXT,
    fiscal_year TEXT,
    month INTEGER,
    electricity_kwh REAL,
    gas_therms REAL,
    water_gallons REAL,
    renewable_percent REAL,
    peak_demand_kw REAL,
    avg_daily_consumption_kwh REAL,
    carbon_emission_tons REAL,
    cost_usd REAL,
    meter_reading_start REAL,
    meter_reading_end REAL,
    hvac_runtime_hours REAL,
    lighting_runtime_hours REAL,
    equipment_runtime_hours REAL,
    verified_by TEXT,
    verification_date TEXT,
    notes TEXT
);

INSERT INTO facility_energy_usage (usage_id,building_code,fiscal_year,month,electricity_kwh,gas_therms,water_gallons,renewable_percent,peak_demand_kw,avg_daily_consumption_kwh,carbon_emission_tons,cost_usd,meter_reading_start,meter_reading_end,hvac_runtime_hours,lighting_runtime_hours,equipment_runtime_hours,verified_by,verification_date,notes) VALUES ('EU001','B001','2023','1',12500.5,340.2,12000.0,15.0,250.0,403.2,75.3,18000,1000.0,1125.5,720.0,480.0,360.0','E001','2024-01-15','Monthly report');
INSERT INTO facility_energy_usage (usage_id,building_code,fiscal_year,month,electricity_kwh,gas_therms,water_gallons,renewable_percent,peak_demand_kw,avg_daily_consumption_kwh,carbon_emission_tons,cost_usd,meter_reading_start,meter_reading_end,hvac_runtime_hours,lighting_runtime_hours,equipment_runtime_hours,verified_by,verification_date,notes) VALUES ('EU002','B002','2023','1',8450.0,210.0,8000.0,22.5,180.0,274.5,48.7,12000,500.0,845.0,540.0,360.0,240.0','E002','2024-01-16','Monthly report');
INSERT INTO facility_energy_usage (usage_id,building_code,fiscal_year,month,electricity_kwh,gas_therms,water_gallons,renewable_percent,peak_demand_kw,avg_daily_consumption_kwh,carbon_emission_tons,cost_usd,meter_reading_start,meter_reading_end,hvac_runtime_hours,lighting_runtime_hours,equipment_runtime_hours,verified_by,verification_date,notes) VALUES ('EU003','B003','2023','1',6720.2,180.5,9500.0,18.0,210.0,216.8,39.2,9500,200.0,872.2,480.0,300.0,200.0','E003','2024-01-17','Monthly report');

-- Research collaboration network information
CREATE TABLE research_collaboration_network (
    collab_id TEXT PRIMARY KEY,
    consortium_name TEXT,
    lead_institution TEXT,
    start_date TEXT,
    end_date TEXT,
    focus_area TEXT,
    funding_source TEXT,
    total_budget INTEGER,
    num_partners INTEGER,
    partner_institution_1 TEXT,
    partner_institution_2 TEXT,
    partner_institution_3 TEXT,
    partner_institution_4 TEXT,
    partner_institution_5 TEXT,
    status TEXT,
    data_sharing_policy TEXT,
    publications_expected INTEGER,
    milestones_completed INTEGER,
    last_report_date TEXT,
    notes TEXT
);

INSERT INTO research_collaboration_network (collab_id,consortium_name,lead_institution,start_date,end_date,focus_area,funding_source,total_budget,num_partners,partner_institution_1,partner_institution_2,partner_institution_3,partner_institution_4,partner_institution_5,status,data_sharing_policy,publications_expected,milestones_completed,last_report_date,notes) VALUES ('RC001','QuantumAI','UniversityA','2022-06-01','2026-05-31','Quantum Computing','NSF',2500000,4,'InstituteB','LabC','CenterD','CollegeE',NULL,'active','open','12','4','2024-04-01','Annual review completed');
INSERT INTO research_collaboration_network (collab_id,consortium_name,lead_institution,start_date,end_date,focus_area,funding_source,total_budget,num_partners,partner_institution_1,partner_institution_2,partner_institution_3,partner_institution_4,partner_institution_5,status,data_sharing_policy,publications_expected,milestones_completed,last_report_date,notes) VALUES ('RC002','SustainableMaterials','UniversityB','2023-01-15','2028-01-14','Materials Science','DOE',1800000,3,'UniversityC','TechF','InstituteG',NULL,NULL,'planned','restricted','8','0','2024-01-10','Proposal under review');
INSERT INTO research_collaboration_network (collab_id,consortium_name,lead_institution,start_date,end_date,focus_area,funding_source,total_budget,num_partners,partner_institution_1,partner_institution_2,partner_institution_3,partner_institution_4,partner_institution_5,status,data_sharing_policy,publications_expected,milestones_completed,last_report_date,notes) VALUES ('RC003','GlobalHealth','UniversityC','2021-09-01','2025-08-31','Epidemiology','WHO',3000000,5,'InstituteH','CenterI','UniversityJ','LabK','CollegeL','active','open','15','7','2024-03-20','Mid‑term assessment positive');

-- Vendor performance metrics
CREATE TABLE vendor_performance_metric (
    metric_id TEXT PRIMARY KEY,
    vendor_id TEXT,
    evaluation_period TEXT,
    on_time_delivery_percent REAL,
    quality_score REAL,
    compliance_score REAL,
    incident_count INTEGER,
    average_response_time_days REAL,
    contract_value INTEGER,
    renewal_likelihood_percent REAL,
    sustainability_score REAL,
    risk_rating TEXT,
    notes TEXT,
    evaluator_id TEXT,
    evaluation_date TEXT,
    corrective_action_required TEXT,
    corrective_action_deadline TEXT,
    follow_up_date TEXT,
    overall_rating TEXT,
    status TEXT
);

INSERT INTO vendor_performance_metric (metric_id,vendor_id,evaluation_period,on_time_delivery_percent,quality_score,compliance_score,incident_count,average_response_time_days,contract_value,renewal_likelihood_percent,sustainability_score,risk_rating,notes,evaluator_id,evaluation_date,corrective_action_required,corrective_action_deadline,follow_up_date,overall_rating,status) VALUES ('VM001','VEND001','2023-Q4',96.5,4.8,98.0,1,2.1,500000,85.0,88.5,'Low','Consistently meets expectations','E001','2024-02-10','Update safety documentation','2024-03-01','2024-04-01','A','active');
INSERT INTO vendor_performance_metric (metric_id,vendor_id,evaluation_period,on_time_delivery_percent,quality_score,compliance_score,incident_count,average_response_time_days,contract_value,renewal_likelihood_percent,sustainability_score,risk_rating,notes,evaluator_id,evaluation_date,corrective_action_required,corrective_action_deadline,follow_up_date,overall_rating,status) VALUES ('VM002','VEND002','2023-Q4',88.0,4.2,92.5,3,4.5,300000,70.0,75.0,'Medium','Late deliveries observed','E002','2024-02-12','Improve logistics tracking','2024-03-15','2024-04-10','B','active');
INSERT INTO vendor_performance_metric (metric_id,vendor_id,evaluation_period,on_time_delivery_percent,quality_score,compliance_score,incident_count,average_response_time_days,contract_value,renewal_likelihood_percent,sustainability_score,risk_rating,notes,evaluator_id,evaluation_date,corrective_action_required,corrective_action_deadline,follow_up_date,overall_rating,status) VALUES ('VM003','VEND003','2023-Q4',92.0,4.5,95.0,0,1.8,750000,90.0,80.0,'Low','Excellent overall performance','E003','2024-02-15','None','NULL','2024-04-15','A','active');

-- Alumni engagement activity logs
CREATE TABLE alumni_engagement_activity (
    activity_id TEXT PRIMARY KEY,
    alumni_id TEXT,
    activity_type TEXT,
    activity_date TEXT,
    location TEXT,
    organizer TEXT,
    participants INTEGER,
    duration_hours REAL,
    feedback_score REAL,
    follow_up_needed TEXT,
    follow_up_date TEXT,
    notes TEXT,
    engagement_category TEXT,
    sponsorship_amount INTEGER,
    media_coverage TEXT,
    registration_deadline TEXT,
    cost_per_participant REAL,
    total_cost INTEGER,
    status TEXT,
    verification_user TEXT
);

INSERT INTO alumni_engagement_activity (activity_id,alumni_id,activity_type,activity_date,location,organizer,participants,duration_hours,feedback_score,follow_up_needed,follow_up_date,notes,engagement_category,sponsorship_amount,media_coverage,registration_deadline,cost_per_participant,total_cost,status,verification_user) VALUES ('AE001','A001','MentorshipSession','2024-03-20','CampusHall','CareerCenter',1,1.5,4.9','no','NULL','One‑on‑one mentoring','career','500','local_news','2024-03-10',0,0,'completed','U001');
INSERT INTO alumni_engagement_activity (activity_id,alumni_id,activity_type,activity_date,location,organizer,participants,duration_hours,feedback_score,follow_up_needed,follow_up_date,notes,engagement_category,sponsorship_amount,media_coverage,registration_deadline,cost_per_participant,total_cost,status,verification_user) VALUES ('AE002','A015','PanelDiscussion','2024-04-05','Auditorium','AlumniRelations',30,2.0,4.3','yes','2024-04-20','Discussion on entrepreneurship','networking','2000','university_blog','2024-03-25',20,600,'completed','U002');
INSERT INTO alumni_engagement_activity (activity_id,alumni_id,activity_type,activity_date,location,organizer,participants,duration_hours,feedback_score,follow_up_needed,follow_up_date,notes,engagement_category,sponsorship_amount,media_coverage,registration_deadline,cost_per_participant,total_cost,status,verification_user) VALUES ('AE003','A032','VolunteerDay','2024-05-12','CommunityCenter','CommunityOutreach',50,4.0,4.7','no','NULL','Campus cleanup event','service','0','local_tv','2024-04-30',5,250,'completed','U003');

-- Campus Wi‑Fi access point inventory
CREATE TABLE campus_wifi_access_point (
    ap_id TEXT PRIMARY KEY,
    location TEXT,
    building_code TEXT,
    floor INTEGER,
    ssid TEXT,
    security_protocol TEXT,
    bandwidth_mbps REAL,
    channel INTEGER,
    power_dbm REAL,
    firmware_version TEXT,
    install_date TEXT,
    last_maintenance_date TEXT,
    status TEXT,
    admin_contact TEXT,
    poe_supported TEXT,
    max_clients INTEGER,
    avg_daily_clients INTEGER,
    uptime_hours REAL,
    notes TEXT,
    latitude REAL,
    longitude REAL
);

INSERT INTO campus_wifi_access_point (ap_id,location,building_code,floor,ssid,security_protocol,bandwidth_mbps,channel,power_dbm,firmware_version,install_date,last_maintenance_date,status,admin_contact,poe_supported,max_clients,avg_daily_clients,uptime_hours,notes,latitude,longitude) VALUES ('AP001','Library East','LIB','1','CampusWiFi','WPA2',300.0,36,-30,'v1.2','2022-09-15','2024-01-20','active','IT001','yes',200,180,8760,'No issues',40.7128,-74.0060);
INSERT INTO campus_wifi_access_point (ap_id,location,building_code,floor,ssid,security_protocol,bandwidth_mbps,channel,power_dbm,firmware_version,install_date,last_maintenance_date,status,admin_contact,poe_supported,max_clients,avg_daily_clients,uptime_hours,notes,latitude,longitude) VALUES ('AP002','Student Center','SC','2','CampusWiFi','WPA2',500.0,44,-28,'v1.3','2023-01-10','2024-02-05','active','IT002','yes',300,250,8400,'Stable performance',34.0522,-118.2437);
INSERT INTO campus_wifi_access_point (ap_id,location,building_code,floor,ssid,security_protocol,bandwidth_mbps,channel,power_dbm,firmware_version,install_date,last_maintenance_date,status,admin_contact,poe_supported,max_clients,avg_daily_clients,uptime_hours,notes,latitude,longitude) VALUES ('AP003','Engineering Lab','ENG','3','CampusWiFi','WPA3',450.0,149,-32,'v1.4','2023-07-22','2024-03-10','active','IT003','no',250,210,8200,'Upgraded firmware',42.3601,-71.0589);

-- Grant funding milestone tracking
CREATE TABLE grant_funding_milestone (
    milestone_id TEXT PRIMARY KEY,
    grant_id TEXT,
    milestone_name TEXT,
    planned_date TEXT,
    actual_date TEXT,
    amount_allocated INTEGER,
    amount_spent INTEGER,
    percentage_complete REAL,
    status TEXT,
    responsible_officer TEXT,
    approval_status TEXT,
    documentation_link TEXT,
    notes TEXT,
    reporting_due_date TEXT,
    audit_flag TEXT,
    risk_level TEXT,
    amendment_required TEXT,
    amendment_due_date TEXT,
    final_report_submitted TEXT,
    closure_date TEXT
);

INSERT INTO grant_funding_milestone (milestone_id,grant_id,milestone_name,planned_date,actual_date,amount_allocated,amount_spent,percentage_complete,status,responsible_officer,approval_status,documentation_link,notes,reporting_due_date,audit_flag,risk_level,amendment_required,amendment_due_date,final_report_submitted,closure_date) VALUES ('GM001','GR001','Phase1_Research','2023-01-01','2023-01-05',500000,120000,24.0,'in_progress','OfficerA','approved','link1','Initial research activities','2023-06-30','no','low','no','NULL','no','NULL');
INSERT INTO grant_funding_milestone (milestone_id,grant_id,milestone_name,planned_date,actual_date,amount_allocated,amount_spent,percentage_complete,status,responsible_officer,approval_status,documentation_link,notes,reporting_due_date,audit_flag,risk_level,amendment_required,amendment_due_date,final_report_submitted,closure_date) VALUES ('GM002','GR001','Phase2_Development','2023-07-01','2023-07-10',300000,80000,26.7,'in_progress','OfficerB','pending','link2','Development of prototypes','2024-01-31','no','medium','yes','2024-02-15','no','NULL');
INSERT INTO grant_funding_milestone (milestone_id,grant_id,milestone_name,planned_date,actual_date,amount_allocated,amount_spent,percentage_complete,status,responsible_officer,approval_status,documentation_link,notes,reporting_due_date,audit_flag,risk_level,amendment_required,amendment_due_date,final_report_submitted,closure_date) VALUES ('GM003','GR001','Phase3_FinalReport','2024-02-01','NULL',200000,0,0.0,'planned','OfficerC','pending','link3','Final analysis and reporting','2024-08-31','yes','high','no','NULL','no','NULL');

-- Event accessibility assessment details
CREATE TABLE event_accessibility_assessment (
    assessment_id TEXT PRIMARY KEY,
    event_id TEXT,
    assessor_id TEXT,
    assessment_date TEXT,
    wheelchair_access TEXT,
    braille_materials TEXT,
    sign_language_interpreter TEXT,
    audio_description TEXT,
    captioning TEXT,
    lighting_quality TEXT,
    acoustic_quality TEXT,
    tactile_pathways TEXT,
    accessible_toilets TEXT,
    staff_training_completed TEXT,
    compliance_score REAL,
    notes TEXT,
    follow_up_required TEXT,
    follow_up_date TEXT,
    final_report_link TEXT,
    overall_status TEXT
);

INSERT INTO event_accessibility_assessment (assessment_id,event_id,assessor_id,assessment_date,wheelchair_access,braille_materials,sign_language_interpreter,audio_description,captioning,lighting_quality,acoustic_quality,tactile_pathways,accessible_toilets,staff_training_completed,compliance_score,notes,follow_up_required,follow_up_date,final_report_link,overall_status) VALUES ('EA001','E001','A001','2024-03-01','yes','no','yes','no','yes','good','good','yes','yes','yes',92.5,'Minor improvements needed','yes','2024-04-01','linkEA001','passed');
INSERT INTO event_accessibility_assessment (assessment_id,event_id,assessor_id,assessment_date,wheelchair_access,braille_materials,sign_language_interpreter,audio_description,captioning,lighting_quality,acoustic_quality,tactile_pathways,accessible_toilets,staff_training_completed,compliance_score,notes,follow_up_required,follow_up_date,final_report_link,overall_status) VALUES ('EA002','E002','A002','2024-04-15','yes','yes','no','yes','no','excellent','excellent','yes','yes','yes',88.0,'Add more sign language interpreters','no','NULL','linkEA002','passed');
INSERT INTO event_accessibility_assessment (assessment_id,event_id,assessor_id,assessment_date,wheelchair_access,braille_materials,sign_language_interpreter,audio_description,captioning,lighting_quality,acoustic_quality,tactile_pathways,accessible_toilets,staff_training_completed,compliance_score,notes,follow_up_required,follow_up_date,final_report_link,overall_status) VALUES ('EA003','E003','A003','2024-05-20','no','no','no','no','no','poor','poor','no','no','no',45.0,'Significant accessibility gaps','yes','2024-06-15','linkEA003','failed');

-- Digital campaign performance metrics
CREATE TABLE digital_campaign_metric (
    metric_id TEXT PRIMARY KEY,
    campaign_id TEXT,
    platform TEXT,
    start_date TEXT,
    end_date TEXT,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    cpc REAL,
    spend_usd INTEGER,
    conversions INTEGER,
    conversion_rate REAL,
    cost_per_conversion REAL,
    bounce_rate REAL,
    avg_session_duration_seconds REAL,
    new_visitors_percent REAL,
    returning_visitors_percent REAL,
    device_type_distribution TEXT,
    geo_targeting TEXT,
    notes TEXT
);

INSERT INTO digital_campaign_metric (metric_id,campaign_id,platform,start_date,end_date,impressions,clicks,ctr,cpc,spend_usd,conversions,conversion_rate,cost_per_conversion,bounce_rate,avg_session_duration_seconds,new_visitors_percent,returning_visitors_percent,device_type_distribution,geo_targeting,notes) VALUES ('DCM001','CMP001','Facebook','2024-01-01','2024-01-31',150000,4500,3.0,0.5,2250,300,6.7,7.5,45.0,180,60.0,40.0','mobile:70%;desktop:30%','USA,Canada','Spring enrollment drive');
INSERT INTO digital_campaign_metric (metric_id,campaign_id,platform,start_date,end_date,impressions,clicks,ctr,cpc,spend_usd,conversions,conversion_rate,cost_per_conversion,bounce_rate,avg_session_duration_seconds,new_visitors_percent,returning_visitors_percent,device_type_distribution,geo_targeting,notes) VALUES ('DCM002','CMP002','GoogleAds','2024-02-01','2024-02-28',200000,8000,4.0,0.75,6000,500,6.25,12.0,38.0,210,55.0,45.0','mobile:65%;desktop:35%','USA','Recruitment campaign');
INSERT INTO digital_campaign_metric (metric_id,campaign_id,platform,start_date,end_date,impressions,clicks,ctr,cpc,spend_usd,conversions,conversion_rate,cost_per_conversion,bounce_rate,avg_session_duration_seconds,new_visitors_percent,returning_visitors_percent,device_type_distribution,geo_targeting,notes) VALUES ('DCM003','CMP003','Twitter','2024-03-01','2024-03-31',120000,3000,2.5,0.4,1200,150,5.0,8.0,50.0,150,70.0,30.0','mobile:80%;desktop:20%','Global','Event promotion');

-- Resource reservation requests for campus spaces
CREATE TABLE resource_reservation (
    reservation_id TEXT PRIMARY KEY,
    resource_type TEXT,
    resource_id TEXT,
    requestor_id TEXT,
    request_date TEXT,
    start_datetime TEXT,
    end_datetime TEXT,
    purpose TEXT,
    attendee_count INTEGER,
    equipment_needed TEXT,
    catering_required TEXT,
    special_accommodations TEXT,
    approval_status TEXT,
    approved_by TEXT,
    approval_date TEXT,
    cancellation_flag TEXT,
    cancellation_date TEXT,
    notes TEXT,
    priority_level TEXT,
    recurring_flag TEXT
);

INSERT INTO resource_reservation (reservation_id,resource_type,resource_id,requestor_id,request_date,start_datetime,end_datetime,purpose,attendee_count,equipment_needed,catering_required,special_accommodations,approval_status,approved_by,approval_date,cancellation_flag,cancellation_date,notes,priority_level,recurring_flag) VALUES ('RR001','ConferenceRoom','CR101','M001','2024-03-10','2024-04-01 09:00','2024-04-01 12:00','Project kickoff','25','projector,whiteboard','yes','none','pending','NULL','NULL','no','NULL','medium','no');
INSERT INTO resource_reservation (reservation_id,resource_type,resource_id,requestor_id,request_date,start_datetime,end_datetime,purpose,attendee_count,equipment_needed,catering_required,special_accommodations,approval_status,approved_by,approval_date,cancellation_flag,cancellation_date,notes,priority_level,recurring_flag) VALUES ('RR002','Auditorium','AUD01','M045','2024-04-05','2024-05-15 18:00','2024-05-15 20:00','Guest lecture','120','sound_system','no','wheelchair_access','approved','E012','2024-04-07','no','NULL','high','no');
INSERT INTO resource_reservation (reservation_id,resource_type,resource_id,requestor_id,request_date,start_datetime,end_datetime,purpose,attendee_count,equipment_needed,catering_required,special_accommodations,approval_status,approved_by,approval_date,cancellation_flag,cancellation_date,notes,priority_level,recurring_flag) VALUES ('RR003','StudyRoom','SR202','M078','2024-04-20','2024-05-01 14:00','2024-05-01 16:00','Group study','6','none','no','none','approved','E018','2024-04-22','no','NULL','low','yes');

-- Digital learning content tags for LMS assets
CREATE TABLE digital_content_tag (
    tag_id TEXT PRIMARY KEY,
    content_id TEXT,
    tag_name TEXT,
    tag_category TEXT,
    creator_id TEXT,
    created_date TEXT,
    last_modified_by TEXT,
    last_modified_date TEXT,
    usage_count INTEGER,
    relevance_score REAL,
    approved TEXT,
    approval_date TEXT,
    notes TEXT,
    language TEXT,
    audience_level TEXT,
    curriculum_alignment TEXT,
    learning_outcome TEXT,
    tag_source TEXT,
    deprecated_flag TEXT,
    deprecation_date TEXT
);

INSERT INTO digital_content_tag (tag_id,content_id,tag_name,tag_category,creator_id,created_date,last_modified_by,last_modified_date,usage_count,relevance_score,approved,approval_date,notes,language,audience_level,curriculum_alignment,learning_outcome,tag_source,deprecated_flag,deprecation_date) VALUES ('TAG001','LC001','DataScience','Subject','M010','2023-09-12','M011','2024-01-05',150,0.95,'yes','2023-09-20','Core topic','English','undergraduate','CS101','understand data analysis','manual','no','NULL');
INSERT INTO digital_content_tag (tag_id,content_id,tag_name,tag_category,creator_id,created_date,last_modified_by,last_modified_date,usage_count,relevance_score,approved,approval_date,notes,language,audience_level,curriculum_alignment,learning_outcome,tag_source,deprecated_flag,deprecation_date) VALUES ('TAG002','LC045','Sustainability','Theme','M025','2024-01-15','M030','2024-02-10',80,0.88,'yes','2024-01-20','Relevant to campus initiatives','English','postgraduate','ENV200','evaluate sustainability metrics','auto','no','NULL');
INSERT INTO digital_content_tag (tag_id,content_id,tag_name,tag_category,creator_id,created_date,last_modified_by,last_modified_date,usage_count,relevance_score,approved,approval_date,notes,language,audience_level,curriculum_alignment,learning_outcome,tag_source,deprecated_flag,deprecation_date) VALUES ('TAG003','LC078','Ethics','Topic','M040','2022-05-05','M042','2023-11-12',45,0.76,'yes','2022-05-10','Ethical considerations in AI','English','undergraduate','CS300','apply ethical frameworks','manual','no','NULL');

-- Facility asset depreciation schedule
CREATE TABLE facility_asset_depreciation (
    depreciation_id TEXT PRIMARY KEY,
    asset_id TEXT,
    asset_type TEXT,
    acquisition_date TEXT,
    acquisition_cost INTEGER,
    useful_life_years INTEGER,
    depreciation_method TEXT,
    annual_depreciation INTEGER,
    accumulated_depreciation INTEGER,
    book_value INTEGER,
    last_depreciation_date TEXT,
    next_depreciation_date TEXT,
    disposal_date TEXT,
    disposal_proceeds INTEGER,
    gain_loss INTEGER,
    responsible_department TEXT,
    notes TEXT,
    audit_status TEXT,
    auditor_id TEXT,
    audit_date TEXT
);

INSERT INTO facility_asset_depreciation (depreciation_id,asset_id,asset_type,acquisition_date,acquisition_cost,useful_life_years,depreciation_method,annual_depreciation,accumulated_depreciation,book_value,last_depreciation_date,next_depreciation_date,disposal_date,disposal_proceeds,gain_loss,responsible_department,notes,audit_status,auditor_id,audit_date) VALUES ('DEP001','FA001','HVAC','2020-03-01',250000,15,'straight_line',16666,50000,200000,'2024-01-01','2025-01-01',NULL,NULL,NULL,'Facilities','Regular maintenance','passed','AUD001','2024-02-15');
INSERT INTO facility_asset_depreciation (depreciation_id,asset_id,asset_type,acquisition_date,acquisition_cost,useful_life_years,depreciation_method,annual_depreciation,accumulated_depreciation,book_value,last_depreciation_date,next_depreciation_date,disposal_date,disposal_proceeds,gain_loss,responsible_department,notes,audit_status,auditor_id,audit_date) VALUES ('DEP002','FA045','SolarPanel','2021-06-15',500000,20,'straight_line',25000,125000,375000,'2024-01-15','2025-01-15',NULL,NULL,NULL,'Energy','Performance monitoring','passed','AUD002','2024-03-01');
INSERT INTO facility_asset_depreciation (depreciation_id,asset_id,asset_type,acquisition_date,acquisition_cost,useful_life_years,depreciation_method,annual_depreciation,accumulated_depreciation,book_value,last_depreciation_date,next_depreciation_date,disposal_date,disposal_proceeds,gain_loss,responsible_department,notes,audit_status,auditor_id,audit_date) VALUES ('DEP003','FA078','LaboratoryEquipment','2019-09-20',120000,10,'double_declining','24000',72000,48000,'2024-02-01','2025-02-01','NULL','NULL','NULL','Research','Calibration required','pending','AUD003','2024-04-10');

-- Campus incident reporting for safety and security
CREATE TABLE campus_incident_report (
    incident_id TEXT PRIMARY KEY,
    incident_type TEXT,
    incident_date TEXT,
    incident_time TEXT,
    location TEXT,
    reported_by TEXT,
    description TEXT,
    severity_level TEXT,
    immediate_action_taken TEXT,
    persons_involved INTEGER,
    witness_count INTEGER,
    law_enforcement_notified TEXT,
    police_report_number TEXT,
    follow_up_required TEXT,
    follow_up_date TEXT,
    resolution_status TEXT,
    resolved_by TEXT,
    resolution_date TEXT,
    notes TEXT,
    status TEXT
);

INSERT INTO campus_incident_report (incident_id,incident_type,incident_date,incident_time,location,reported_by,description,severity_level,immediate_action_taken,persons_involved,witness_count,law_enforcement_notified,police_report_number,follow_up_required,follow_up_date,resolution_status,resolved_by,resolution_date,notes,status) VALUES ('INC001','SlipFall','2024-02-18','14:30','Gymnasium','S001','Student slipped on wet floor','medium','Cleaned area, posted warning','1','2','no',NULL,'yes','2024-02-21','in_progress','S005','NULL','Reviewed by safety officer','open');
INSERT INTO campus_incident_report (incident_id,incident_type,incident_date,incident_time,location,reported_by,description,severity_level,immediate_action_taken,persons_involved,witness_count,law_enforcement_notified,police_report_number,follow_up_required,follow_up_date,resolution_status,resolved_by,resolution_date,notes,status) VALUES ('INC002','Theft','2024-03-05','09:15','Library','L012','Backpack stolen from study carrel','high','Secured area, alerted security','1','3','yes','PR12345','yes','2024-03-12','resolved','SEC001','2024-03-14','Recovered stolen items','closed');
INSERT INTO campus_incident_report (incident_id,incident_type,incident_date,incident_time,location,reported_by,description,severity_level,immediate_action_taken,persons_involved,witness_count,law_enforcement_notified,police_report_number,follow_up_required,follow_up_date,resolution_status,resolved_by,resolution_date,notes,status) VALUES ('INC003','FireAlarm','2024-04-01','22:45','Dormitory B','R023','False fire alarm triggered by maintenance work','low','Evacuated building, reset alarm','0','0','no',NULL,'no','NULL','resolved','MAINT01','2024-04-02','No injuries','closed');