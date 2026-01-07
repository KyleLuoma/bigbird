-- Stadium safety training session records
CREATE TABLE Stadium_Safety_Training_Records (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    training_date TEXT,
    trainer_name TEXT,
    training_type TEXT,
    duration_minutes INTEGER,
    participants_count INTEGER,
    certification_obtained TEXT,
    safety_topic_1 TEXT,
    safety_topic_2 TEXT,
    safety_topic_3 TEXT,
    equipment_used TEXT,
    assessment_score INTEGER,
    feedback_summary TEXT,
    training_location TEXT,
    attendance_rate REAL,
    emergency_procedure_reviewed INTEGER,
    fire_safety_briefed INTEGER,
    crowd_control_briefed INTEGER,
    first_aid_briefed INTEGER,
    evacuation_route_checked INTEGER,
    notes TEXT
);
INSERT INTO Stadium_Safety_Training_Records (stadium_id,training_date,trainer_name,training_type,duration_minutes,participants_count,certification_obtained,safety_topic_1,safety_topic_2,safety_topic_3,equipment_used,assessment_score,feedback_summary,training_location,attendance_rate,emergency_procedure_reviewed,fire_safety_briefed,crowd_control_briefed,first_aid_briefed,evacuation_route_checked,notes) VALUES (1,'2023-03-12','John Doe','Annual','180',25,'Certified','Fire Safety','Crowd Management','First Aid','Extinguishers',92,'Very positive','Main Stadium',0.96,1,1,1,1,1,'All topics covered');
INSERT INTO Stadium_Safety_Training_Records (stadium_id,training_date,trainer_name,training_type,duration_minutes,participants_count,certification_obtained,safety_topic_1,safety_topic_2,safety_topic_3,equipment_used,assessment_score,feedback_summary,training_location,attendance_rate,emergency_procedure_reviewed,fire_safety_briefed,crowd_control_briefed,first_aid_briefed,evacuation_route_checked,notes) VALUES (2,'2023-04-05','Emily Smith','Refresher','120',15,'Certified','Evacuation','Electrical Safety','Medical Response','FirstAidKits',88,'Good','Training Center',0.90,1,0,1,0,1,1,'Need more focus on electrical safety');
INSERT INTO Stadium_Safety_Training_Records (stadium_id,training_date,trainer_name,training_type,duration_minutes,participants_count,certification_obtained,safety_topic_1,safety_topic_2,safety_topic_3,equipment_used,assessment_score,feedback_summary,training_location,attendance_rate,emergency_procedure_reviewed,fire_safety_briefed,crowd_control_briefed,first_aid_briefed,evacuation_route_checked,notes) VALUES (3,'2023-05-20','Carlos Ruiz','Monthly','90',10,'Not Certified','Crowd Management','Incident Reporting','Communication','Radios',75,'Average','Stadium Annex',0.80,0,0,1,1,0,0,'Follow‑up required');

-- Ticketing platform integration details
CREATE TABLE Ticketing_Platform_Integrations (
    integration_id INTEGER PRIMARY KEY AUTOINCREMENT,
    platform_name TEXT,
    api_version TEXT,
    integration_date TEXT,
    contact_person TEXT,
    contact_email TEXT,
    authentication_method TEXT,
    data_sync_frequency_minutes INTEGER,
    tickets_supported INTEGER,
    seats_supported INTEGER,
    barcode_type TEXT,
    mobile_app_supported INTEGER,
    refund_processing_time_days INTEGER,
    support_tier TEXT,
    sla_response_hours INTEGER,
    last_test_date TEXT,
    status TEXT,
    notes TEXT,
    security_protocol TEXT,
    data_encryption TEXT,
    backup_retention_days INTEGER,
    error_rate_percent REAL
);
INSERT INTO Ticketing_Platform_Integrations (platform_name,api_version,integration_date,contact_person,contact_email,authentication_method,data_sync_frequency_minutes,tickets_supported,seats_supported,barcode_type,mobile_app_supported,refund_processing_time_days,support_tier,sla_response_hours,last_test_date,status,notes,security_protocol,data_encryption,backup_retention_days,error_rate_percent) VALUES ('TicketMaster','v2.3','2022-11-01','Alice Green','alice.green@example.com','OAuth','15',50000,50000,'QR','1',2,'Premium','2','2023-02-28','Active','Running smoothly','TLS1.2','AES256',30,0.2);
INSERT INTO Ticketing_Platform_Integrations (platform_name,api_version,integration_date,contact_person,contact_email,authentication_method,data_sync_frequency_minutes,tickets_supported,seats_supported,barcode_type,mobile_app_supported,refund_processing_time_days,support_tier,sla_response_hours,last_test_date,status,notes,security_protocol,data_encryption,backup_retention_days,error_rate_percent) VALUES ('SeatGeek','v1.8','2023-01-15','Bob Lee','bob.lee@example.com','APIKey','30',25000,25000,'Code128','0',3,'Standard','4','2023-03-10','Active','Minor latency observed','TLS1.2','AES128',45,0.5);
INSERT INTO Ticketing_Platform_Integrations (platform_name,api_version,integration_date,contact_person,contact_email,authentication_method,data_sync_frequency_minutes,tickets_supported,seats_supported,barcode_type,mobile_app_supported,refund_processing_time_days,support_tier,sla_response_hours,last_test_date,status,notes,security_protocol,data_encryption,backup_retention_days,error_rate_percent) VALUES ('EventBrite','v3.0','2023-04-20','Cara Patel','cara.patel@example.com','OAuth','10',100000,100000,'QR','1',1,'Enterprise','1','2023-05-01','Pending','Awaiting final compliance review','TLS1.3','AES256',60,0.1);

-- Food service provider contract information
CREATE TABLE Food_Service_Provider_Contracts (
    contract_id INTEGER PRIMARY KEY AUTOINCREMENT,
    provider_name TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    primary_contact TEXT,
    contact_phone TEXT,
    cuisine_type TEXT,
    average_daily_meals INTEGER,
    max_capacity_meals INTEGER,
    price_per_meal REAL,
    service_area TEXT,
    health_inspection_score INTEGER,
    insurance_provider TEXT,
    insurance_policy_number TEXT,
    liability_coverage_amount REAL,
    termination_notice_days INTEGER,
    renewal_option TEXT,
    performance_bonus_percent REAL,
    penalty_rate_per_violation REAL,
    notes TEXT,
    compliance_status TEXT,
    audit_frequency_months INTEGER
);
INSERT INTO Food_Service_Provider_Contracts (provider_name,contract_start_date,contract_end_date,primary_contact,contact_phone,cuisine_type,average_daily_meals,max_capacity_meals,price_per_meal,service_area,health_inspection_score,insurance_provider,insurance_policy_number,liability_coverage_amount,termination_notice_days,renewal_option,performance_bonus_percent,penalty_rate_per_violation,notes,compliance_status,audit_frequency_months) VALUES ('StadiumBites','2022-06-01','2025-05-31','Diana Ross','5551234567','International',3500,5000,9.99,'All Seats',95,'Acme Insurance','POL123456',500000,60,'Auto','5',100,'Excellent service','Compliant',12);
INSERT INTO Food_Service_Provider_Contracts (provider_name,contract_start_date,contract_end_date,primary_contact,contact_phone,cuisine_type,average_daily_meals,max_capacity_meals,price_per_meal,service_area,health_inspection_score,insurance_provider,insurance_policy_number,liability_coverage_amount,termination_notice_days,renewal_option,performance_bonus_percent,penalty_rate_per_violation,notes,compliance_status,audit_frequency_months) VALUES ('GoalGrill','2023-01-15','2026-01-14','Evan Hall','5559876543','Grill',2000,3000,12.5,'North Stand',88,'SecureCover','POL654321',300000,90,'Manual','3',150,'Occasional delays','Monitored',6);
INSERT INTO Food_Service_Provider_Contracts (provider_name,contract_start_date,contract_end_date,primary_contact,contact_phone,cuisine_type,average_daily_meals,max_capacity_meals,price_per_meal,service_area,health_inspection_score,insurance_provider,insurance_policy_number,liability_coverage_amount,termination_notice_days,renewal_option,performance_bonus_percent,penalty_rate_per_violation,notes,compliance_status,audit_frequency_months) VALUES ('VeggieCorner','2021-09-01','2024-08-31','Fiona Liu','5553210987','Vegetarian',1500,2500,11.0,'East Concourse',92,'SafeGuard','POL789012',400000,30,'Auto','4',120,'High customer rating','Compliant',9);

-- Parking lot utilization statistics
CREATE TABLE Parking_Lot_Utilization_Stats (
    stat_id INTEGER PRIMARY KEY AUTOINCREMENT,
    lot_name TEXT,
    date_recorded TEXT,
    total_spaces INTEGER,
    occupied_spaces INTEGER,
    reserved_spaces INTEGER,
    handicapped_spaces INTEGER,
    electric_vehicle_spaces INTEGER,
    average_occupancy_percent REAL,
    peak_occupancy_percent REAL,
    peak_time TEXT,
    revenue_collected REAL,
    average_parking_duration_minutes INTEGER,
    turnover_rate_per_hour REAL,
    entry_gate_count INTEGER,
    exit_gate_count INTEGER,
    security_patrols_per_shift INTEGER,
    lighting_level_lux INTEGER,
    CCTV_cameras INTEGER,
    maintenance_issues_reported INTEGER,
    notes TEXT,
    weather_condition TEXT,
    special_event_flag INTEGER
);
INSERT INTO Parking_Lot_Utilization_Stats (lot_name,date_recorded,total_spaces,occupied_spaces,reserved_spaces,handicapped_spaces,electric_vehicle_spaces,average_occupancy_percent,peak_occupancy_percent,peak_time,revenue_collected,average_parking_duration_minutes,turnover_rate_per_hour,entry_gate_count,exit_gate_count,security_patrols_per_shift,lighting_level_lux,CCTV_cameras,maintenance_issues_reported,notes,weather_condition,special_event_flag) VALUES ('North Garage','2023-05-01',1200,950,50,30,20,79.2,95.0,'18:00',14500.75,120,2.5,4,4,3,800,120,2,'All systems functional','Clear',0);
INSERT INTO Parking_Lot_Utilization_Stats (lot_name,date_recorded,total_spaces,occupied_spaces,reserved_spaces,handicapped_spaces,electric_vehicle_spaces,average_occupancy_percent,peak_occupancy_percent,peak_time,revenue_collected,average_parking_duration_minutes,turnover_rate_per_hour,entry_gate_count,exit_gate_count,security_patrols_per_shift,lighting_level_lux,CCTV_cameras,maintenance_issues_reported,notes,weather_condition,special_event_flag) VALUES ('South Lot','2023-05-01',800,600,40,20,10,75.0,88.0,'19:30',8200.40,110,2.0,2,2,2,600,100,1,'Minor lighting issue','Rain',1);
INSERT INTO Parking_Lot_Utilization_Stats (lot_name,date_recorded,total_spaces,occupied_spaces,reserved_spaces,handicapped_spaces,electric_vehicle_spaces,average_occupancy_percent,peak_occupancy_percent,peak_time,revenue_collected,average_parking_duration_minutes,turnover_rate_per_hour,entry_gate_count,exit_gate_count,security_patrols_per_shift,lighting_level_lux,CCTV_cameras,maintenance_issues_reported,notes,weather_condition,special_event_flag) VALUES ('East Pavilion Parking','2023-05-01',500,400,20,10,5,80.0,90.0,'17:45',5300.25,95,3.0,1,1,1,700,700,0,'No issues','Cloudy',0);

-- Security staff scheduling information
CREATE TABLE Security_Staff_Scheduling (
    schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    staff_id INTEGER,
    staff_name TEXT,
    shift_date TEXT,
    shift_start_time TEXT,
    shift_end_time TEXT,
    role TEXT,
    zone_assigned TEXT,
    seniority_level INTEGER,
    certification_level TEXT,
    hourly_wage REAL,
    overtime_allowed INTEGER,
    max_consecutive_days INTEGER,
    days_off_remaining INTEGER,
    assigned_equipment TEXT,
    notes TEXT,
    supervisor_id INTEGER,
    uniform_size TEXT,
    language_proficiency TEXT,
    incident_response_training INTEGER,
    physical_fitness_score INTEGER
);
INSERT INTO Security_Staff_Scheduling (staff_id,staff_name,shift_date,shift_start_time,shift_end_time,role,zone_assigned,seniority_level,certification_level,hourly_wage,overtime_allowed,max_consecutive_days,days_off_remaining,assigned_equipment,notes,supervisor_id,uniform_size,language_proficiency,incident_response_training,physical_fitness_score) VALUES (101,'Mark Taylor','2023-06-01','18:00','02:00','Gate Guard','Main Entrance',5,'Level3',15.5,1,5,10,'Radio,Flashlight','Experienced','201','L','English,Spanish',1,88);
INSERT INTO Security_Staff_Scheduling (staff_id,staff_name,shift_date,shift_start_time,shift_end_time,role,zone_assigned,seniority_level,certification_level,hourly_wage,overtime_allowed,max_consecutive_days,days_off_remaining,assigned_equipment,notes,supervisor_id,uniform_size,language_proficiency,incident_response_training,physical_fitness_score) VALUES (102,'Laura Chen','2023-06-01','16:00','00:00','Patrol','North Wing',3,'Level2',14.0,1,4,12,'Radio','Pending certification renewal','202','M','English',1,81);
INSERT INTO Security_Staff_Scheduling (staff_id,staff_name,shift_date,shift_start_time,shift_end_time,role,zone_assigned,seniority_level,certification_level,hourly_wage,overtime_allowed,max_consecutive_days,days_off_remaining,assigned_equipment,notes,supervisor_id,uniform_size,language_proficiency,incident_response_training,physical_fitness_score) VALUES (103,'Samir Patel','2023-06-01','20:00','04:00','Surveillance','East Control Room',2,'Level1',13.5,0,3,15,'Monitor','New hire','203','S','English,French',0,73);

-- Water conservation initiative tracking
CREATE TABLE Water_Conservation_Initiatives (
    initiative_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    start_date TEXT,
    end_date TEXT,
    target_reduction_percent REAL,
    actual_reduction_percent REAL,
    water_savings_cubic_meters INTEGER,
    responsible_department TEXT,
    budget_allocated REAL,
    budget_used REAL,
    primary_method TEXT,
    secondary_method TEXT,
    sensors_installed INTEGER,
    avg_daily_consumption_before REAL,
    avg_daily_consumption_after REAL,
    stakeholder_engagement_score INTEGER,
    compliance_audit_date TEXT,
    audit_result TEXT,
    notes TEXT,
    status TEXT,
    reported_by TEXT,
    verification_date TEXT
);
INSERT INTO Water_Conservation_Initiatives (name,start_date,end_date,target_reduction_percent,actual_reduction_percent,water_savings_cubic_meters,responsible_department,budget_allocated,budget_used,primary_method,secondary_method,sensors_installed,avg_daily_consumption_before,avg_daily_consumption_after,stakeholder_engagement_score,compliance_audit_date,audit_result,notes,status,reported_by,verification_date) VALUES ('Stadium Leak Detection','2022-01-01','2022-12-31',15.0,13.5,25000,'Facilities',50000,48000,'Sensor Network','Low‑flow Fixtures',200,1200.0,1040.0,85,'2023-01-15','Pass','Minor sensor recalibration needed','Completed','Facilities Manager','2023-02-01');
INSERT INTO Water_Conservation_Initiatives (name,start_date,end_date,target_reduction_percent,actual_reduction_percent,water_savings_cubic_meters,responsible_department,budget_allocated,budget_used,primary_method,secondary_method,sensors_installed,avg_daily_consumption_before,avg_daily_consumption_after,stakeholder_engagement_score,compliance_audit_date,audit_result,notes,status,reported_by,verification_date) VALUES ('Eco‑Toilet Retrofit','2023-03-01','2024-02-28',10.0,0.0,0,'Operations',30000,0,'Toilet Upgrade','User Education',0,800.0,800.0,70,NULL,NULL,'Project delayed due to supply chain','Pending','Operations Lead',NULL);
INSERT INTO Water_Conservation_Initiatives (name,start_date,end_date,target_reduction_percent,actual_reduction_percent,water_savings_cubic_meters,responsible_department,budget_allocated,budget_used,primary_method,secondary_method,sensors_installed,avg_daily_consumption_before,avg_daily_consumption_after,stakeholder_engagement_score,compliance_audit_date,audit_result,notes,status,reported_by,verification_date) VALUES ('Rainwater Harvesting','2021-05-01','2023-04-30',20.0,22.0,45000,'Sustainability',75000,73000,'Harvesting System','Greywater Reuse',150,900.0,702.0,92,'2023-05-10','Pass','Exceeds target','Completed','Sustainability Officer','2023-05-15');

-- Energy grid partnership details
CREATE TABLE Energy_Grid_Partners (
    partner_id INTEGER PRIMARY KEY AUTOINCREMENT,
    partner_name TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    energy_type TEXT,
    capacity_mw REAL,
    price_per_mwh REAL,
    renewable_percentage INTEGER,
    contact_person TEXT,
    contact_email TEXT,
    service_region TEXT,
    reliability_score INTEGER,
    outage_history_count INTEGER,
    maintenance_window_days INTEGER,
    carbon_offset_agreement INTEGER,
    contract_type TEXT,
    termination_notice_days INTEGER,
    penalty_clause TEXT,
    notes TEXT,
    status TEXT,
    last_review_date TEXT,
    compliance_certification TEXT
);
INSERT INTO Energy_Grid_Partners (partner_name,contract_start_date,contract_end_date,energy_type,capacity_mw,price_per_mwh,renewable_percentage,contact_person,contact_email,service_region,reliability_score,outage_history_count,maintenance_window_days,carbon_offset_agreement,contract_type,termination_notice_days,penalty_clause,notes,status,last_review_date,compliance_certification) VALUES ('GreenPower Ltd','2022-01-01','2027-12-31','Electric','150.0','45.5',85,'Laura Green','laura.green@greenpower.com','North Region',96,2,5,1,'Fixed','180','Late termination fee','Long‑term partnership','Active','2023-06-01','ISO14001');
INSERT INTO Energy_Grid_Partners (partner_name,contract_start_date,contract_end_date,energy_type,capacity_mw,price_per_mwh,renewable_percentage,contact_person,contact_email,service_region,reliability_score,outage_history_count,maintenance_window_days,carbon_offset_agreement,contract_type,termination_notice_days,penalty_clause,notes,status,last_review_date,compliance_certification) VALUES ('SolarFlux Corp','2023-04-01','2028-03-31','Solar','80.0','38.0',100,'Michael Sun','michael.sun@solarfux.com','East Region',98,0,3,1,'Variable','90','Penalty for under‑delivery','Recent solar installation','Active','2023-07-15','LEED Platinum');
INSERT INTO Energy_Grid_Partners (partner_name,contract_start_date,contract_end_date,energy_type,capacity_mw,price_per_mwh,renewable_percentage,contact_person,contact_email,service_region,reliability_score,outage_history_count,maintenance_window_days,carbon_offset_agreement,contract_type,termination_notice_days,penalty_clause,notes,status,last_review_date,compliance_certification) VALUES ('National Grid Co','2021-06-01','2026-05-31','Mixed','200.0','55.0',60,'Emily Stone','emily.stone@ngco.com','National',92,5,7,0,'Fixed','120','Escalating fee after 3% deviation','Backup power provision','Active','2023-05-20','ISO9001');

-- Fan club communication log entries
CREATE TABLE Fan_Club_Communication_Logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_club_id INTEGER,
    communication_date TEXT,
    channel TEXT,
    subject TEXT,
    message_body TEXT,
    sent_by TEXT,
    response_required INTEGER,
    response_deadline TEXT,
    opened_timestamp TEXT,
    clicked_links INTEGER,
    attachments_count INTEGER,
    sentiment_score REAL,
    follow_up_action TEXT,
    notes TEXT,
    priority_level INTEGER,
    campaign_id INTEGER,
    segment_targeted TEXT,
    opt_out_flag INTEGER,
    delivery_status TEXT,
    bounce_reason TEXT,
    unsubscribe_reason TEXT
);
INSERT INTO Fan_Club_Communication_Logs (fan_club_id,communication_date,channel,subject,message_body,sent_by,response_required,response_deadline,opened_timestamp,clicked_links,attachments_count,sentiment_score,follow_up_action,notes,priority_level,campaign_id,segment_targeted,opt_out_flag,delivery_status,bounce_reason,unsubscribe_reason) VALUES (1,'2023-05-20','Email','Season Ticket Renewal','Dear member your season ticket renewal is due...','Club Admin',1,'2023-06-01','2023-05-20 09:15',3,1,0.78,'Call if no response','High engagement','1',101,'All','0','Delivered','','');
INSERT INTO Fan_Club_Communication_Logs (fan_club_id,communication_date,channel,subject,message_body,sent_by,response_required,response_deadline,opened_timestamp,clicked_links,attachments_count,sentiment_score,follow_up_action,notes,priority_level,campaign_id,segment_targeted,opt_out_flag,delivery_status,bounce_reason,unsubscribe_reason) VALUES (2,'2023-04-15','SMS','Match Reminder','Your team plays tomorrow at 19:45...','Club Admin',0,NULL,'2023-04-15 08:00',1,0,0.85,'None','Sent to mobile list','2',102,'Season Ticket Holders','0','Delivered','','');
INSERT INTO Fan_Club_Communication_Logs (fan_club_id,communication_date,channel,subject,message_body,sent_by,response_required,response_deadline,opened_timestamp,clicked_links,attachments_count,sentiment_score,follow_up_action,notes,priority_level,campaign_id,segment_targeted,opt_out_flag,delivery_status,bounce_reason,unsubscribe_reason) VALUES (3,'2023-03-10','Push Notification','Merch Sale','Limited time merch discount...','Marketing',1,'2023-03-15','2023-03-10 10:30',0,0,0.65,'Offer reminder','Low click rate','3',103,'Young Fans','0','Delivered','','');

-- Corporate sponsor investment profile
CREATE TABLE Corporate_Sponsor_Investment_Profiles (
    sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_name TEXT,
    industry TEXT,
    investment_start_date TEXT,
    investment_end_date TEXT,
    annual_commitment_usd REAL,
    total_committed_usd REAL,
    branding_exposure_score INTEGER,
    activation_events INTEGER,
    exclusive_rights TEXT,
    contract_type TEXT,
    contact_person TEXT,
    contact_email TEXT,
    renewal_option TEXT,
    termination_notice_days INTEGER,
    performance_bonus_usd REAL,
    penalty_clause_usd REAL,
    sustainability_focus INTEGER,
    community_engagement_score INTEGER,
    notes TEXT,
    status TEXT,
    last_review_date TEXT,
    compliance_audit_date TEXT
);
INSERT INTO Corporate_Sponsor_Investment_Profiles (sponsor_name,industry,investment_start_date,investment_end_date,annual_commitment_usd,total_committed_usd,branding_exposure_score,activation_events,exclusive_rights,contract_type,contact_person,contact_email,renewal_option,termination_notice_days,performance_bonus_usd,penalty_clause_usd,sustainability_focus,community_engagement_score,notes,status,last_review_date,compliance_audit_date) VALUES ('TechNova','Technology','2022-01-01','2025-12-31',2000000,6000000,85,12,'Stadium Naming','Fixed','Anna Liu','anna.liu@technova.com','Auto','180',150000,50000,1,78,'Strategic tech partner','Active','2023-06-01','2023-05-15');
INSERT INTO Corporate_Sponsor_Investment_Profiles (sponsor_name,industry,investment_start_date,investment_end_date,annual_commitment_usd,total_committed_usd,branding_exposure_score,activation_events,exclusive_rights,contract_type,contact_person,contact_email,renewal_option,termination_notice_days,performance_bonus_usd,penalty_clause_usd,sustainability_focus,community_engagement_score,notes,status,last_review_date,compliance_audit_date) VALUES ('HealthPlus','Healthcare','2023-04-01','2028-03-31',1200000,3600000,70,8,'Official Health Partner','Variable','Brian Kaur','brian.kaur@healthplus.com','Manual','90',80000,30000,0,65,'Health awareness campaigns','Active','2023-07-01','2023-06-20');
INSERT INTO Corporate_Sponsor_Investment_Profiles (sponsor_name,industry,investment_start_date,investment_end_date,annual_commitment_usd,total_committed_usd,branding_exposure_score,activation_events,exclusive_rights,contract_type,contact_person,contact_email,renewal_option,termination_notice_days,performance_bonus_usd,penalty_clause_usd,sustainability_focus,community_engagement_score,notes,status,last_review_date,compliance_audit_date) VALUES ('EcoDrive','Automotive','2021-09-15','2024-09-14',900000,2700000,78,10,'Electric Vehicle Partner','Fixed','Sofia Ramos','sofia.ramos@ecodrive.com','Auto','120',100000,25000,1,82,'Joint sustainability projects','Active','2023-05-10','2023-04-30');

-- Club community donor list
CREATE TABLE Club_Community_Donor_List (
    donor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    donor_name TEXT,
    donor_type TEXT,
    contribution_amount_usd REAL,
    contribution_date TEXT,
    campaign_name TEXT,
    acknowledgement_sent INTEGER,
    acknowledgment_date TEXT,
    tax_receipt_number TEXT,
    recurring_donation INTEGER,
    contact_phone TEXT,
    contact_email TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    country TEXT,
    notes TEXT,
    donation_status TEXT,
    matched_amount_usd REAL,
    matching_program TEXT,
    last_contact_date TEXT,
    preferred_contact_method TEXT
);
INSERT INTO Club_Community_Donor_List (donor_name,donor_type,contribution_amount_usd,contribution_date,campaign_name,acknowledgement_sent,acknowledgment_date,tax_receipt_number,recurring_donation,contact_phone,contact_email,address_line1,address_line2,city,state,postal_code,country,notes,donation_status,matched_amount_usd,matching_program,last_contact_date,preferred_contact_method) VALUES ('John Miller','Individual',5000,'2023-02-10','Stadium Renovation',1,'2023-02-12','REC20230210',0,'5551112222','john.miller@example.com','123 Oak Street','','Springfield','IL','62704','USA','Preferred donor','Completed',0,'','2023-05-01','Email');
INSERT INTO Club_Community_Donor_List (donor_name,donor_type,contribution_amount_usd,contribution_date,campaign_name,acknowledgement_sent,acknowledgment_date,tax_receipt_number,recurring_donation,contact_phone,contact_email,address_line1,address_line2,city,state,postal_code,country,notes,donation_status,matched_amount_usd,matching_program,last_contact_date,preferred_contact_method) VALUES ('Global Foundations','Corporate',25000,'2022-11-20','Youth Academy',1,'2022-11-22','REC20221120',1,'5553334444','contact@globalfoundations.org','500 Corporate Plaza','Suite 400','Metropolis','NY','10001','USA','Matched by partner','Completed',5000,'Partner Match','2023-04-15','Phone');
INSERT INTO Club_Community_Donor_List (donor_name,donor_type,contribution_amount_usd,contribution_date,campaign_name,acknowledgement_sent,acknowledgment_date,tax_receipt_number,recurring_donation,contact_phone,contact_email,address_line1,address_line2,city,state,postal_code,country,notes,donation_status,matched_amount_usd,matching_program,last_contact_date,preferred_contact_method) VALUES ('Anna & Luis Garcia','Family',1200,'2023-06-05','Community Outreach',0,NULL,'',0,'5557778888','anna.garcia@example.com','78 Pine Lane','','River Town','TX','75001','USA','First-time donor','Pending',0,'','2023-06-07','Email');

-- Club community donor list continued (additional fields are already covered) 

-- Club community donor list finished.

-- Club community donor list has been added. 

-- (No further tables)