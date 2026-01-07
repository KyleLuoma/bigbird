-- Facility maintenance logs
CREATE TABLE facility_maintenance (
    maintenance_id TEXT PRIMARY KEY,
    facility_name TEXT,
    maintenance_date TEXT,
    contractor TEXT,
    cost REAL,
    description TEXT,
    scheduled_start TEXT,
    scheduled_end TEXT,
    actual_start TEXT,
    actual_end TEXT,
    status TEXT,
    priority TEXT,
    remarks TEXT,
    equipment_used TEXT,
    parts_replaced TEXT,
    hours_spent REAL,
    safety_checks_passed TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    approval_needed TEXT
);
INSERT INTO facility_maintenance (maintenance_id,facility_name,maintenance_date,contractor,cost,description,scheduled_start,scheduled_end,actual_start,actual_end,status,priority,remarks,equipment_used,parts_replaced,hours_spent,safety_checks_passed,contact_phone,contact_email,approval_needed) VALUES ('MNT001','Main Hall','2023-02-15','Alpha Builders',1200.50,'HVAC filter replacement','2023-02-20','2023-02-20','2023-02-20','2023-02-20','Completed','Low','N/A','Ladder','Filter',2.0,'Yes','5551234567','maint@university.edu','No');
INSERT INTO facility_maintenance (maintenance_id,facility_name,maintenance_date,contractor,cost,description,scheduled_start,scheduled_end,actual_start,actual_end,status,priority,remarks,equipment_used,parts_replaced,hours_spent,safety_checks_passed,contact_phone,contact_email,approval_needed) VALUES ('MNT002','Science Lab','2023-03-01','Beta Services',3500.00,'Fume hood calibration','2023-03-05','2023-03-06','2023-03-05','2023-03-06','Completed','Medium','Need follow up','Calibration Kit','Sensor',4.5,'Yes','5559876543','labmaint@university.edu','Yes');
INSERT INTO facility_maintenance (maintenance_id,facility_name,maintenance_date,contractor,cost,description,scheduled_start,scheduled_end,actual_start,actual_end,status,priority,remarks,equipment_used,parts_replaced,hours_spent,safety_checks_passed,contact_phone,contact_email,approval_needed) VALUES ('MNT003','Gymnasium','2023-04-10','Gamma Repairs',800.00,'Floor resurfacing','2023-04-12','2023-04-14','2023-04-12','2023-04-14','InProgress','High','Delay due to weather','Sander','Floor Coating',12.0,'No','5552223344','gymmaint@university.edu','Yes');

-- Grant funding records
CREATE TABLE grant_funding (
    grant_id TEXT PRIMARY KEY,
    grant_name TEXT,
    sponsor_org TEXT,
    amount_awarded INTEGER,
    award_date TEXT,
    start_date TEXT,
    end_date TEXT,
    purpose TEXT,
    reporting_frequency TEXT,
    reporting_contact TEXT,
    status TEXT,
    notes TEXT,
    fund_source TEXT,
    allocation_category TEXT,
    matching_funds INTEGER,
    overhead_rate REAL,
    compliance_deadline TEXT,
    approved_by TEXT,
    agreement_signed TEXT,
    renewal_possible TEXT
);
INSERT INTO grant_funding (grant_id,grant_name,sponsor_org,amount_awarded,award_date,start_date,end_date,purpose,reporting_frequency,reporting_contact,status,notes,fund_source,allocation_category,matching_funds,overhead_rate,compliance_deadline,approved_by,agreement_signed,renewal_possible) VALUES ('GR001','STEM Innovation','National Science Foundation',500000,'2023-01-15','2023-07-01','2026-06-30','Develop new lab equipment','Quarterly','drsmith@university.edu','Active','First disbursement done','Federal','Equipment',0,0.10,'2024-12-31','Dean of Research','Yes','Yes');
INSERT INTO grant_funding (grant_id,grant_name,sponsor_org,amount_awarded,award_date,start_date,end_date,purpose,reporting_frequency,reporting_contact,status,notes,fund_source,allocation_category,matching_funds,overhead_rate,compliance_deadline,approved_by,agreement_signed,renewal_possible) VALUES ('GR002','Community Health Initiative','Health Foundation',200000,'2022-09-30','2023-01-01','2025-12-31','Health outreach programs','SemiAnnual','jdoe@university.edu','Active','Second year funding','Private','Programs',50000,0.08,'2025-06-30','VP of Outreach','Yes','No');
INSERT INTO grant_funding (grant_id,grant_name,sponsor_org,amount_awarded,award_date,start_date,end_date,purpose,reporting_frequency,reporting_contact,status,notes,fund_source,allocation_category,matching_funds,overhead_rate,compliance_deadline,approved_by,agreement_signed,renewal_possible) VALUES ('GR003','Environmental Research','Green Earth Fund',350000,'2021-05-20','2021-09-01','2024-08-31','Climate impact studies','Annual','cgreen@university.edu','Completed','All reports submitted','Private','Research',25000,0.12,'2024-05-31','Director of Research','Yes','Yes');

-- Donor information
CREATE TABLE donor (
    donor_id TEXT PRIMARY KEY,
    donor_name TEXT,
    donor_type TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code INTEGER,
    preferred_communication TEXT,
    donation_category TEXT,
    total_donated INTEGER,
    last_donation_date TEXT,
    pledge_amount INTEGER,
    pledge_due_date TEXT,
    tax_receipt_sent TEXT,
    notes TEXT,
    recognition_level TEXT,
    opt_out_marketing TEXT
);
INSERT INTO donor (donor_id,donor_name,donor_type,contact_phone,contact_email,address_line1,address_line2,city,state,zip_code,preferred_communication,donation_category,total_donated,last_donation_date,pledge_amount,pledge_due_date,tax_receipt_sent,notes,recognition_level,opt_out_marketing) VALUES ('D001','Emily Clarke','Individual','5551112222','eclarke@example.com','123 Maple St','','Springfield','IL',62704,'Email','Scholarship',15000,'2023-11-20',0,0,'Yes','Attends alumni events','Gold','No');
INSERT INTO donor (donor_id,donor_name,donor_type,contact_phone,contact_email,address_line1,address_line2,city,state,zip_code,preferred_communication,donation_category,total_donated,last_donation_date,pledge_amount,pledge_due_date,tax_receipt_sent,notes,recognition_level,opt_out_marketing) VALUES ('D002','TechCorp Ltd','Corporate','5553334444','contact@techcorp.com','500 Innovation Way','Suite 200','Chicago','IL',60607,'Mail','Research',75000,'2023-09-15',100000,'2024-12-31','Yes','Partnered on tech labs','Platinum','No');
INSERT INTO donor (donor_id,donor_name,donor_type,contact_phone,contact_email,address_line1,address_line2,city,state,zip_code,preferred_communication,donation_category,total_donated,last_donation_date,pledge_amount,pledge_due_date,tax_receipt_sent,notes,recognition_level,opt_out_marketing) VALUES ('D003','Global Foundations','Foundation','5557778888','info@globalfund.org','900 Charity Blvd','Floor 3','New York','NY',10001,'Email','Endowment',250000,'2023-08-01',500000,'2025-01-01','Yes','Long term partnership','Diamond','Yes');

-- Marketing campaign data
CREATE TABLE marketing_campaign (
    campaign_id TEXT PRIMARY KEY,
    campaign_name TEXT,
    start_date TEXT,
    end_date TEXT,
    budget INTEGER,
    channel TEXT,
    target_audience TEXT,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    cost_per_click REAL,
    cost_per_acquisition REAL,
    creative_type TEXT,
    landing_page TEXT,
    geo_targeting TEXT,
    device_targeting TEXT,
    ad_schedule TEXT,
    status TEXT,
    notes TEXT,
    responsible_owner TEXT
);
INSERT INTO marketing_campaign (campaign_id,campaign_name,start_date,end_date,budget,channel,target_audience,impressions,clicks,conversions,cost_per_click,cost_per_acquisition,creative_type,landing_page,geo_targeting,device_targeting,ad_schedule,status,notes,responsible_owner) VALUES ('MC001','OpenHouse Spring','2023-03-01','2023-03-31',20000,'Social Media','Prospective Students',500000,12000,800,1.67,25.00,'Video','/openhouse','National','Mobile','9am-9pm','Completed','High engagement','MarketingLead');
INSERT INTO marketing_campaign (campaign_id,campaign_name,start_date,end_date,budget,channel,target_audience,impressions,clicks,conversions,cost_per_click,cost_per_acquisition,creative_type,landing_page,geo_targeting,device_targeting,ad_schedule,status,notes,responsible_owner) VALUES ('MC002','Alumni Giving Fall','2023-10-01','2023-10-31',15000,'Email','Alumni',300000,2500,350,6.00,42.86,'HTML','/donate','Regional','Desktop','All day','Active','Series B','AlumniRelations');
INSERT INTO marketing_campaign (campaign_id,campaign_name,start_date,end_date,budget,channel,target_audience,impressions,clicks,conversions,cost_per_click,cost_per_acquisition,creative_type,landing_page,geo_targeting,device_targeting,ad_schedule,status,notes,responsible_owner) VALUES ('MC003','Research Grant Promo','2023-05-15','2023-06-15',10000,'Search','Researchers',200000,8000,150,1.25,66.67,'Text','/grantinfo','International','All','8am-6pm','Paused','Need updated copy','ResearchOffice');

-- Feedback collection
CREATE TABLE feedback (
    feedback_id TEXT PRIMARY KEY,
    respondent_id TEXT,
    event_id TEXT,
    feedback_date TEXT,
    overall_rating INTEGER,
    speaker_rating INTEGER,
    venue_rating INTEGER,
    organization_rating INTEGER,
    comments TEXT,
    suggestions TEXT,
    time_spent_minutes INTEGER,
    submitted_via TEXT,
    follow_up_requested TEXT,
    follow_up_method TEXT,
    anonymity_preference TEXT,
    demographic_age_group TEXT,
    demographic_gender TEXT,
    demographic_status TEXT,
    survey_version TEXT,
    processed_by TEXT
);
INSERT INTO feedback (feedback_id,respondent_id,event_id,feedback_date,overall_rating,speaker_rating,venue_rating,organization_rating,comments,suggestions,time_spent_minutes,submitted_via,follow_up_requested,follow_up_method,anonymity_preference,demographic_age_group,demographic_gender,demographic_status,survey_version,processed_by) VALUES ('F001','M001','E001','2023-04-02',5,5,4,5','Great event','More networking time',12,'Web','No','','Yes','26-35','Female','Student','v1','AnalystA');
INSERT INTO feedback (feedback_id,respondent_id,event_id,feedback_date,overall_rating,speaker_rating,venue_rating,organization_rating,comments,suggestions,time_spent_minutes,submitted_via,follow_up_requested,follow_up_method,anonymity_preference,demographic_age_group,demographic_gender,demographic_status,survey_version,processed_by) VALUES ('F002','M005','E003','2023-05-10',3,2,3,3','Average','Improve audio quality',8,'Mobile','Yes','Email','No','36-45','Male','Alumni','v1','AnalystB');
INSERT INTO feedback (feedback_id,respondent_id,event_id,feedback_date,overall_rating,speaker_rating,venue_rating,organization_rating,comments,suggestions,time_spent_minutes,submitted_via,follow_up_requested,follow_up_method,anonymity_preference,demographic_age_group,demographic_gender,demographic_status,survey_version,processed_by) VALUES ('F003','M010','E005','2023-06-15',4,4,5,4','Very good','Add more workshops',10,'Web','No','','Yes','18-25','Nonbinary','Student','v2','AnalystC');

-- Risk assessment records
CREATE TABLE risk_assessment (
    assessment_id TEXT PRIMARY KEY,
    event_id TEXT,
    assessment_date TEXT,
    assessor_name TEXT,
    risk_type TEXT,
    likelihood INTEGER,
    impact INTEGER,
    risk_score INTEGER,
    mitigation_plan TEXT,
    mitigation_status TEXT,
    residual_risk INTEGER,
    contingency_plan TEXT,
    approval_status TEXT,
    notes TEXT,
    reviewed_by TEXT,
    review_date TEXT,
    severity_category TEXT,
    probability_category TEXT,
    backup_resources TEXT,
    escalation_path TEXT
);
INSERT INTO risk_assessment (assessment_id,event_id,assessment_date,assessor_name,risk_type,likelihood,impact,risk_score,mitigation_plan,mitigation_status,residual_risk,contingency_plan,approval_status,notes,reviewed_by,review_date,severity_category,probability_category,backup_resources,escalation_path) VALUES ('RA001','E001','2023-03-20','John Doe','Weather',3,4,12,'Use indoor venue','Planned',2,'Arrange tents','Pending','Check forecast daily','Jane Smith','2023-03-21','Medium','Medium','Indoor Hall','SafetyOfficer');
INSERT INTO risk_assessment (assessment_id,event_id,assessment_date,assessor_name,risk_type,likelihood,impact,risk_score,mitigation_plan,mitigation_status,residual_risk,contingency_plan,approval_status,notes,reviewed_by,review_date,severity_category,probability_category,backup_resources,escalation_path) VALUES ('RA002','E004','2023-04-10','Alice Brown','Technical Failure',2,5,10,'Backup servers','Implemented',1,'Onsite tech support','Approved','Tested on 2023-04-09','Bob Lee','2023-04-11','High','Low','Secondary Network','ITManager');
INSERT INTO risk_assessment (assessment_id,event_id,assessment_date,assessor_name,risk_type,likelihood,impact,risk_score,mitigation_plan,mitigation_status,residual_risk,contingency_plan,approval_status,notes,reviewed_by,review_date,severity_category,probability_category,backup_resources,escalation_path) VALUES ('RA003','E007','2023-05-05','Mike Green','Security Breach',1,5,5,'Access control','Completed',0,'None','Approved','All badges checked','Sara White','2023-05-06','High','Low','Security Team','ChiefSecurity');

-- Logistics route planning
CREATE TABLE logistics_route (
    route_id TEXT PRIMARY KEY,
    event_id TEXT,
    departure_location TEXT,
    arrival_location TEXT,
    departure_time TEXT,
    arrival_time TEXT,
    transport_mode TEXT,
    carrier_name TEXT,
    vehicle_id TEXT,
    driver_name TEXT,
    cargo_description TEXT,
    cargo_weight INTEGER,
    temperature_control TEXT,
    insurance_provider TEXT,
    insurance_policy TEXT,
    cost_estimate INTEGER,
    actual_cost INTEGER,
    status TEXT,
    notes TEXT,
    last_updated TEXT
);
INSERT INTO logistics_route (route_id,event_id,departure_location,arrival_location,departure_time,arrival_time,transport_mode,carrier_name,vehicle_id,driver_name,cargo_description,cargo_weight,temperature_control,insurance_provider,insurance_policy,cost_estimate,actual_cost,status,notes,last_updated) VALUES ('LR001','E002','Warehouse A','Conference Center','2023-07-01 08:00','2023-07-01 10:30','Truck','FastTrans','TRK123','Tom Miller','Audio Equipment',1200,'No','SafeShip','POL12345',1500,1600,'Completed','All items arrived','2023-07-01');
INSERT INTO logistics_route (route_id,event_id,departure_location,arrival_location,departure_time,arrival_time,transport_mode,carrier_name,vehicle_id,driver_name,cargo_description,cargo_weight,temperature_control,insurance_provider,insurance_policy,cost_estimate,actual_cost,status,notes,last_updated) VALUES ('LR002','E005','Supplier B','Exhibit Hall','2023-08-15 14:00','2023-08-15 15:15','Van','QuickMove','VAN987','Lisa Wong','Promotional Materials',800,'No','CoverGuard','POL67890',800,850,'InTransit','Expected arrival tomorrow','2023-08-15');
INSERT INTO logistics_route (route_id,event_id,departure_location,arrival_location,departure_time,arrival_time,transport_mode,carrier_name,vehicle_id,driver_name,cargo_description,cargo_weight,temperature_control,insurance_provider,insurance_policy,cost_estimate,actual_cost,status,notes,last_updated) VALUES ('LR003','E009','Dock C','Outdoor Stage','2023-09-20 06:00','2023-09-20 07:30','Truck','HeavyHaul','TRK555','Raj Patel','Stage Lights',2500,'Yes','SecureInsure','POL11223',2500,2600,'Planned','Need temperature checks','2023-09-18');

-- Security incident log
CREATE TABLE security_incident (
    incident_id TEXT PRIMARY KEY,
    event_id TEXT,
    incident_date TEXT,
    reported_by TEXT,
    incident_type TEXT,
    severity INTEGER,
    description TEXT,
    actions_taken TEXT,
    resolved TEXT,
    resolution_date TEXT,
    assigned_officer TEXT,
    evidence_path TEXT,
    notification_sent TEXT,
    follow_up_required TEXT,
    follow_up_date TEXT,
    status TEXT,
    notes TEXT,
    affected_area TEXT,
    number_affected INTEGER,
    escalation_level TEXT
);
INSERT INTO security_incident (incident_id,event_id,incident_date,reported_by,incident_type,severity,description,actions_taken,resolved,resolution_date,assigned_officer,evidence_path,notification_sent,follow_up_required,follow_up_date,status,notes,affected_area,number_affected,escalation_level) VALUES ('SI001','E003','2023-04-12','Security Guard','Unauthorized Entry',3,'Person entered restricted zone','Detained and escorted out','Yes','2023-04-12','Officer Kelly','/evidence/si001.jpg','Yes','No','','Closed','No further action','Restricted Lab',0,'Low');
INSERT INTO security_incident (incident_id,event_id,incident_date,reported_by,incident_type,severity,description,actions_taken,resolved,resolution_date,assigned_officer,evidence_path,notification_sent,follow_up_required,follow_up_date,status,notes,affected_area,number_affected,escalation_level) VALUES ('SI002','E006','2023-05-20','Camera System','Theft',4,'Equipment bag reported missing','Investigation initiated','No','','Officer Gomez','/evidence/si002.jpg','Yes','Yes','2023-06-01','Open','Police report filed','Storage Room',1,'Medium');
INSERT INTO security_incident (incident_id,event_id,incident_date,reported_by,incident_type,severity,description,actions_taken,resolved,resolution_date,assigned_officer,evidence_path,notification_sent,follow_up_required,follow_up_date,status,notes,affected_area,number_affected,escalation_level) VALUES ('SI003','E010','2023-07-08','Attendee','Fire Alarm',5,'Alarm triggered during keynote','Evacuation performed','Yes','2023-07-08','Officer Patel','/evidence/si003.jpg','Yes','No','','Closed','False alarm, system reset','Auditorium',200,'High');

-- Sustainability metric tracking
CREATE TABLE sustainability_metric (
    metric_id TEXT PRIMARY KEY,
    event_id TEXT,
    metric_date TEXT,
    waste_generated_kg INTEGER,
    recycling_rate_percent REAL,
    energy_consumed_kwh INTEGER,
    water_used_liters INTEGER,
    carbon_emissions_kg REAL,
    sustainable_supplier_used TEXT,
    transportation_mode TEXT,
    attendee_travel_distance_km INTEGER,
    renewable_energy_percent REAL,
    green_certification TEXT,
    notes TEXT,
    reported_by TEXT,
    verification_status TEXT,
    verification_date TEXT,
    improvement_plan TEXT,
    target_year INTEGER,
    current_status TEXT
);
INSERT INTO sustainability_metric (metric_id,event_id,metric_date,waste_generated_kg,recycling_rate_percent,energy_consumed_kwh,water_used_liters,carbon_emissions_kg,sustainable_supplier_used,transportation_mode,attendee_travel_distance_km,renewable_energy_percent,green_certification,notes,reported_by,verification_status,verification_date,improvement_plan,target_year,current_status) VALUES ('SM001','E001','2023-03-15',500,78.5,12000,8000,1500.0,'Yes','Public Transit',25000,45.0,'LEED Silver','Good performance','Sustainability Office','Verified','2023-03-20','Reduce waste by 10%','2025','OnTrack');
INSERT INTO sustainability_metric (metric_id,event_id,metric_date,waste_generated_kg,recycling_rate_percent,energy_consumed_kwh,water_used_liters,carbon_emissions_kg,sustainable_supplier_used,transportation_mode,attendee_travel_distance_km,renewable_energy_percent,green_certification,notes,reported_by,verification_status,verification_date,improvement_plan,target_year,current_status) VALUES ('SM002','E004','2023-06-10',800,65.0,18000,12000,2100.0,'No','Carpool',40000,30.0,'LEED Gold','Need better suppliers','Facilities Manager','Pending','', 'Switch to eco-friendly vendors','2026','NeedsImprovement');
INSERT INTO sustainability_metric (metric_id,event_id,metric_date,waste_generated_kg,recycling_rate_percent,energy_consumed_kwh,water_used_liters,carbon_emissions_kg,sustainable_supplier_used,transportation_mode,attendee_travel_distance_km,renewable_energy_percent,green_certification,notes,reported_by,verification_status,verification_date,improvement_plan,target_year,current_status) VALUES ('SM003','E007','2023-09-05',300,85.0,9500,6000,900.0,'Yes','Bicycle',15000,60.0,'LEED Platinum','Excellent results','Event Coordinator','Verified','2023-09-10','Maintain current practices','2024','Excellent');

-- Community outreach activities
CREATE TABLE community_outreach (
    outreach_id TEXT PRIMARY KEY,
    program_name TEXT,
    start_date TEXT,
    end_date TEXT,
    target_community TEXT,
    location TEXT,
    number_of_sessions INTEGER,
    participants_total INTEGER,
    volunteers_involved INTEGER,
    budget_allocated INTEGER,
    funds_used INTEGER,
    partner_organizations TEXT,
    objectives TEXT,
    outcomes TEXT,
    feedback_summary TEXT,
    challenges TEXT,
    lessons_learned TEXT,
    future_plans TEXT,
    status TEXT,
    coordinator_name TEXT
);
INSERT INTO community_outreach (outreach_id,program_name,start_date,end_date,target_community,location,number_of_sessions,participants_total,volunteers_involved,budget_allocated,funds_used,partner_organizations,objectives,outcomes,feedback_summary,challenges,lessons_learned,future_plans,status,coordinator_name) VALUES ('CO001','STEM Kids Workshop','2023-04-01','2023-04-15','Local Elementary','Community Center',5,120,8,5000,4800,'Science Club;Local Library','Introduce basics of robotics','All kids built a robot','Positive, high engagement','Limited materials','Plan larger inventory','Repeat annually','Completed','Karen Olson');
INSERT INTO community_outreach (outreach_id,program_name,start_date,end_date,target_community,location,number_of_sessions,participants_total,volunteers_involved,budget_allocated,funds_used,partner_organizations,objectives,outcomes,feedback_summary,challenges,lessons_learned,future_plans,status,coordinator_name) VALUES ('CO002','Health Fair','2023-07-20','2023-07-20','Seniors','Town Hall',1,300,15,8000,8000,'Local Hospital;Red Cross','Provide health screenings','200 screenings completed','Appreciated by attendees','Weather delays','Have indoor backup','Add more specialties next year','Completed','Michael Torres');
INSERT INTO community_outreach (outreach_id,program_name,start_date,end_date,target_community,location,number_of_sessions,participants_total,volunteers_involved,budget_allocated,funds_used,partner_organizations,objectives,outcomes,feedback_summary,challenges,lessons_learned,future_plans,status,coordinator_name) VALUES ('CO003','Career Day','2023-10-05','2023-10-07','High School Students','University Campus',3,250,12,6000,5900,'Career Services;Industry Partners','Expose students to career paths','80% expressed increased interest','Scheduling conflicts','Coordinate earlier with schools','Start earlier in the year','Expand to more schools','Ongoing','Sofia Patel');