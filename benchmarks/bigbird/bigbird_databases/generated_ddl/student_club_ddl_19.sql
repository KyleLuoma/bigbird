-- Research ethics approval information
CREATE TABLE research_ethics_approval
(
    approval_id TEXT PRIMARY KEY,
    study_title TEXT,
    principal_investigator TEXT,
    department TEXT,
    submission_date TEXT,
    approval_date TEXT,
    status TEXT,
    protocol_number TEXT,
    review_board TEXT,
    board_chair TEXT,
    ethics_officer TEXT,
    funding_source TEXT,
    grant_id TEXT,
    data_sharing_plan TEXT,
    participant_count INTEGER,
    risk_level TEXT,
    confidentiality_level TEXT,
    amendment_number INTEGER,
    expiration_date TEXT,
    notes TEXT
);
INSERT INTO research_ethics_approval (approval_id,study_title,principal_investigator,department,submission_date,approval_date,status,protocol_number,review_board,board_chair,ethics_officer,funding_source,grant_id,data_sharing_plan,participant_count,risk_level,confidentiality_level,amendment_number,expiration_date,notes) VALUES ('APP001','Study on campus waste','DrSmith','EnvironmentalScience','2024-01-10','2024-02-05','Approved','PROT1001','IRBNorth','DrJones','MsLee','UniversityFund','GRNT001','Open','150','Low','High',0,'2025-02-05','Initial approval');
INSERT INTO research_ethics_approval (approval_id,study_title,principal_investigator,department,submission_date,approval_date,status,protocol_number,review_board,board_chair,ethics_officer,funding_source,grant_id,data_sharing_plan,participant_count,risk_level,confidentiality_level,amendment_number,expiration_date,notes) VALUES ('APP002','Student mental health survey','DrBrown','Psychology','2024-03-12','2024-04-01','Pending','PROT2002','IRBSouth','DrWhite','MrKim','HealthGrant','GRNT002','Restricted','300','Medium','Medium',1,'2025-04-01','Amendment submitted');
INSERT INTO research_ethics_approval (approval_id,study_title,principal_investigator,department,submission_date,approval_date,status,protocol_number,review_board,board_chair,ethics_officer,funding_source,grant_id,data_sharing_plan,participant_count,risk_level,confidentiality_level,amendment_number,expiration_date,notes) VALUES ('APP003','AI usage in classrooms','DrGreen','ComputerScience','2024-05-20','2024-06-15','Approved','PROT3003','IRBEast','DrBlack','MsPatel','TechFund','GRNT003','Open','80','Low','Low',0,'2025-06-15','Approved without changes');

-- Campus funding source details
CREATE TABLE campus_funding_source
(
    source_id TEXT PRIMARY KEY,
    source_name TEXT,
    source_type TEXT,
    established_year INTEGER,
    contact_person TEXT,
    contact_email TEXT,
    phone TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zip_code INTEGER,
    description TEXT,
    annual_budget REAL,
    restricted_funds REAL,
    unrestricted_funds REAL,
    matching_policy TEXT,
    eligibility_criteria TEXT,
    reporting_requirements TEXT,
    last_audit_date TEXT,
    notes TEXT
);
INSERT INTO campus_funding_source (source_id,source_name,source_type,established_year,contact_person,contact_email,phone,address,city,state,zip_code,description,annual_budget,restricted_funds,unrestricted_funds,matching_policy,eligibility_criteria,reporting_requirements,last_audit_date,notes) VALUES ('SRC001','Alumni Endowment','Endowment',1995,'JohnDoe','jdoe@example.com','5551234','123 Main St','Springfield','IL',62701,'Endowment for scholarships',5000000,2000000,3000000,'1:1 matching','Full time students','Quarterly report','2023-12-01','Active');
INSERT INTO campus_funding_source (source_id,source_name,source_type,established_year,contact_person,contact_email,phone,address,city,state,zip_code,description,annual_budget,restricted_funds,unrestricted_funds,matching_policy,eligibility_criteria,reporting_requirements,last_audit_date,notes) VALUES ('SRC002','State Research Grant','Grant',2010,'JaneSmith','jsmith@state.gov','5555678','456 Oak Ave','CapitalCity','TX',73301,'Grant for research projects',1200000,1200000,0,'No matching','Research faculty','Annual report','2024-03-15','Renewable');
INSERT INTO campus_funding_source (source_id,source_name,source_type,established_year,contact_person,contact_email,phone,address,city,state,zip_code,description,annual_budget,restricted_funds,unrestricted_funds,matching_policy,eligibility_criteria,reporting_requirements,last_audit_date,notes) VALUES ('SRC003','Corporate Sponsorship','Corporate',2022,'MikeLee','mlee@corp.com','5559876','789 Pine Rd','Metroville','CA',90210,'Sponsorship for events',750000,250000,500000,'50% matching','Event organizers','Biannual report','2024-06-20','New partnership');

-- Student visa status tracking
CREATE TABLE student_visa_status
(
    visa_id TEXT PRIMARY KEY,
    student_id TEXT,
    visa_type TEXT,
    country_of_origin TEXT,
    issue_date TEXT,
    expiration_date TEXT,
    status TEXT,
    work_permission TEXT,
    dependents_allowed TEXT,
    sponsor_name TEXT,
    sponsor_contact TEXT,
    immigration_officer TEXT,
    notes TEXT,
    last_updated TEXT,
    renewal_notice_sent TEXT,
    tuition_payment_status TEXT,
    housing_provided TEXT,
    health_insurance TEXT,
    academic_program TEXT,
    advisor_id TEXT
);
INSERT INTO student_visa_status (visa_id,student_id,visa_type,country_of_origin,issue_date,expiration_date,status,work_permission,dependents_allowed,sponsor_name,sponsor_contact,immigration_officer,notes,last_updated,renewal_notice_sent,tuition_payment_status,housing_provided,health_insurance,academic_program,advisor_id) VALUES ('VISA001','STU1001','F1','India','2023-08-01','2025-07-31','Active','OnCampus','Yes','Dept of Education','edusponsor@example.com','OfficerA','N/A','2024-01-15','Yes','Paid','Yes','Full','CS101','ADV001');
INSERT INTO student_visa_status (visa_id,student_id,visa_type,country_of_origin,issue_date,expiration_date,status,work_permission,dependents_allowed,sponsor_name,sponsor_contact,immigration_officer,notes,last_updated,renewal_notice_sent,tuition_payment_status,housing_provided,health_insurance,academic_program,advisor_id) VALUES ('VISA002','STU1002','J1','Brazil','2022-09-10','2024-09-09','Expired','OffCampus','No','ExchangeOrg','exchange@example.com','OfficerB','Extended study','2024-02-20','No','Pending','No','Partial','MBA','ADV002');
INSERT INTO student_visa_status (visa_id,student_id,visa_type,country_of_origin,issue_date,expiration_date,status,work_permission,dependents_allowed,sponsor_name,sponsor_contact,immigration_officer,notes,last_updated,renewal_notice_sent,tuition_payment_status,housing_provided,health_insurance,academic_program,advisor_id) VALUES ('VISA003','STU1003','F1','China','2024-01-05','2026-01-04','Active','OnCampus','Yes','InternationalAffairs','iaffairs@example.com','OfficerC','N/A','2024-03-10','Yes','Paid','Yes','Full','Engineering','ADV003');

-- Facility access log records
CREATE TABLE facility_access_log
(
    log_id TEXT PRIMARY KEY,
    facility_id TEXT,
    member_id TEXT,
    access_time TEXT,
    access_type TEXT,
    purpose TEXT,
    gate_id TEXT,
    badge_id TEXT,
    authorized_by TEXT,
    security_officer TEXT,
    entry_method TEXT,
    exit_time TEXT,
    duration_minutes INTEGER,
    violation_flag TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    ip_address TEXT,
    device_id TEXT,
    location_coords TEXT
);
INSERT INTO facility_access_log (log_id,facility_id,member_id,access_time,access_type,purpose,gate_id,badge_id,authorized_by,security_officer,entry_method,exit_time,duration_minutes,violation_flag,notes,created_at,updated_at,ip_address,device_id,location_coords) VALUES ('LOG001','FAC001','MEM100','2024-07-01 08:15:00','Entry','Morning shift','G01','B123','SUP001','SEC01','Badge','2024-07-01 17:00:00',525,'No','All good','2024-07-01 08:15:05','2024-07-01 17:00:01','192.168.1.10','DEV001','40.7128N-74.0060W');
INSERT INTO facility_access_log (log_id,facility_id,member_id,access_time,access_type,purpose,gate_id,badge_id,authorized_by,security_officer,entry_method,exit_time,duration_minutes,violation_flag,notes,created_at,updated_at,ip_address,device_id,location_coords) VALUES ('LOG002','FAC002','MEM101','2024-07-01 09:30:00','Exit','End of shift','G02','B124','SUP002','SEC02','Keycard','2024-07-01 09:31:00',1,'No','Quick exit','2024-07-01 09:30:02','2024-07-01 09:31:02','192.168.1.11','DEV002','34.0522N-118.2437W');
INSERT INTO facility_access_log (log_id,facility_id,member_id,access_time,access_type,purpose,gate_id,badge_id,authorized_by,security_officer,entry_method,exit_time,duration_minutes,violation_flag,notes,created_at,updated_at,ip_address,device_id,location_coords) VALUES ('LOG003','FAC003','MEM102','2024-07-01 10:00:00','Entry','Maintenance','G03','B125','SUP003','SEC03','PIN','2024-07-01 12:00:00',120,'Yes','Tailgate detected','2024-07-01 10:00:05','2024-07-01 12:00:01','192.168.1.12','DEV003','41.8781N-87.6298W');

-- Event sustainability metrics
CREATE TABLE event_sustainability_metric
(
    metric_id TEXT PRIMARY KEY,
    event_id TEXT,
    carbon_footprint_kg REAL,
    waste_generated_kg REAL,
    recycling_rate_percent REAL,
    water_usage_liters REAL,
    energy_consumed_kwh REAL,
    sustainable_vendor_used TEXT,
    compost_used TEXT,
    paper_reduced_pages INTEGER,
    renewable_energy_percent REAL,
    transportation_mode_percent TEXT,
    attendee_travel_km REAL,
    green_certification TEXT,
    metric_date TEXT,
    notes TEXT,
    auditor_name TEXT,
    audit_report_id TEXT,
    carbon_offset_purchased REAL,
    waste_diversion_rate REAL
);
INSERT INTO event_sustainability_metric (metric_id,event_id,carbon_footprint_kg,waste_generated_kg,recycling_rate_percent,water_usage_liters,energy_consumed_kwh,sustainable_vendor_used,compost_used,paper_reduced_pages,renewable_energy_percent,transportation_mode_percent,attendee_travel_km,green_certification,metric_date,notes,auditor_name,audit_report_id,carbon_offset_purchased,waste_diversion_rate) VALUES ('MET001','EVT001',1200.5,350.0,78.5,50000.0,2000.0,'VendorA','Yes',2000,45.0,'PublicTransit:60;Car:30;Bike:10',15000.0,'LEEDGold','2024-07-02','All targets met','AliceBrown','AR001',300.0,85.0);
INSERT INTO event_sustainability_metric (metric_id,event_id,carbon_footprint_kg,waste_generated_kg,recycling_rate_percent,water_usage_liters,energy_consumed_kwh,sustainable_vendor_used,compost_used,paper_reduced_pages,renewable_energy_percent,transportation_mode_percent,attendee_travel_km,green_certification,metric_date,notes,auditor_name,audit_report_id,carbon_offset_purchased,waste_diversion_rate) VALUES ('MET002','EVT002',800.0,200.0,82.0,30000.0,1500.0,'VendorB','No',1500,60.0,'Car:70;PublicTransit:20;Walk:10',9000.0,'LEEDSilver','2024-07-03','Improvement needed in composting','BobClark','AR002',200.0,78.0);
INSERT INTO event_sustainability_metric (metric_id,event_id,carbon_footprint_kg,waste_generated_kg,recycling_rate_percent,water_usage_liters,energy_consumed_kwh,sustainable_vendor_used,compost_used,paper_reduced_pages,renewable_energy_percent,transportation_mode_percent,attendee_travel_km,green_certification,metric_date,notes,auditor_name,audit_report_id,carbon_offset_purchased,waste_diversion_rate) VALUES ('MET003','EVT003',950.0,280.0,80.0,40000.0,1800.0,'VendorC','Yes',1800,55.0,'Bike:40;PublicTransit:40;Car:20',12000.0,'LEEDPlatinum','2024-07-04','Excellent performance','CaraDavis','AR003',250.0,90.0);

-- Digital platform usage logs
CREATE TABLE digital_platform_usage
(
    usage_id TEXT PRIMARY KEY,
    platform_name TEXT,
    user_id TEXT,
    session_start TEXT,
    session_end TEXT,
    duration_minutes INTEGER,
    pages_viewed INTEGER,
    actions_performed INTEGER,
    device_type TEXT,
    os TEXT,
    browser TEXT,
    ip_address TEXT,
    location_city TEXT,
    location_state TEXT,
    data_consumed_mb REAL,
    login_method TEXT,
    subscription_level TEXT,
    campaign_source TEXT,
    referral_code TEXT,
    notes TEXT
);
INSERT INTO digital_platform_usage (usage_id,platform_name,user_id,session_start,session_end,duration_minutes,pages_viewed,actions_performed,device_type,os,browser,ip_address,location_city,location_state,data_consumed_mb,login_method,subscription_level,campaign_source,referral_code,notes) VALUES ('USE001','CampusPortal','USR1001','2024-07-01 08:00:00','2024-07-01 08:45:00',45,12,30,'Desktop','Windows10','Chrome','203.0.113.5','Springfield','IL',120.5,'Password','Premium','Email','REF123','First login of day');
INSERT INTO digital_platform_usage (usage_id,platform_name,user_id,session_start,session_end,duration_minutes,pages_viewed,actions_performed,device_type,os,browser,ip_address,location_city,location_state,data_consumed_mb,login_method,subscription_level,campaign_source,referral_code,notes) VALUES ('USE002','LearningManagement','USR1002','2024-07-01 09:15:00','2024-07-01 10:00:00',45,8,20,'Tablet','iOS','Safari','198.51.100.22','Metroville','CA',85.3,'SSO','Standard','Social','REF456','Accessed quiz module');
INSERT INTO digital_platform_usage (usage_id,platform_name,user_id,session_start,session_end,duration_minutes,pages_viewed,actions_performed,device_type,os,browser,ip_address,location_city,location_state,data_consumed_mb,login_method,subscription_level,campaign_source,referral_code,notes) VALUES ('USE003','EventApp','USR1003','2024-07-01 11:00:00','2024-07-01 11:20:00',20,5,10,'Mobile','Android','Firefox','192.0.2.33','CapitalCity','TX',45.0,'Token','Free','Ad','REF789','Checked-in for event');

-- Alumni career progress records
CREATE TABLE alumni_career_progress
(
    record_id TEXT PRIMARY KEY,
    alumni_id TEXT,
    graduation_year INTEGER,
    degree TEXT,
    current_employer TEXT,
    job_title TEXT,
    industry TEXT,
    salary_bracket TEXT,
    location_city TEXT,
    location_state TEXT,
    years_experience INTEGER,
    promotion_count INTEGER,
    certifications TEXT,
    professional_memberships TEXT,
    start_date TEXT,
    end_date TEXT,
    mentor_flag TEXT,
    volunteer_status TEXT,
    linkedin_url TEXT,
    notes TEXT
);
INSERT INTO alumni_career_progress (record_id,alumni_id,graduation_year,degree,current_employer,job_title,industry,salary_bracket,location_city,location_state,years_experience,promotion_count,certifications,professional_memberships,start_date,end_date,mentor_flag,volunteer_status,linkedin_url,notes) VALUES ('ALM001','ALU1001',2018,'BScComputerScience','TechCorp','Software Engineer','Technology','70k-90k','Springfield','IL',5,2,'AWS Certified','IEEE','2020-06-01','2024-06-30','Yes','Active','linkedin.com/in/alumni1','Promoted twice');
INSERT INTO alumni_career_progress (record_id,alumni_id,graduation_year,degree,current_employer,job_title,industry,salary_bracket,location_city,location_state,years_experience,promotion_count,certifications,professional_memberships,start_date,end_date,mentor_flag,volunteer_status,linkedin_url,notes) VALUES ('ALM002','ALU1002',2015,'MBA','FinanceInc','Senior Analyst','Finance','90k-110k','Metroville','CA',9,3,'CFA','CFA Institute','2017-03-15','2024-03-14','No','Inactive','linkedin.com/in/alumni2','Led major project');
INSERT INTO alumni_career_progress (record_id,alumni_id,graduation_year,degree,current_employer,job_title,industry,salary_bracket,location_city,location_state,years_experience,promotion_count,certifications,professional_memberships,start_date,end_date,mentor_flag,volunteer_status,linkedin_url,notes) VALUES ('ALM003','ALU1003',2020,'MEngElectrical','EnergySolutions','Project Manager','Energy','110k-130k','CapitalCity','TX',3,0,'PMP','PMI','2021-01-10','2024-01-09','Yes','Active','linkedin.com/in/alumni3','Managing renewable projects');

-- Library staff directory
CREATE TABLE library_staff
(
    staff_id TEXT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    position TEXT,
    department TEXT,
    email TEXT,
    phone TEXT,
    hire_date TEXT,
    termination_date TEXT,
    employment_status TEXT,
    shift_pattern TEXT,
    supervisor_id TEXT,
    badge_number TEXT,
    office_location TEXT,
    responsibilities TEXT,
    max_books_handled INTEGER,
    training_completed TEXT,
    certifications TEXT,
    notes TEXT,
    created_at TEXT
);
INSERT INTO library_staff (staff_id,first_name,last_name,position,department,email,phone,hire_date,termination_date,employment_status,shift_pattern,supervisor_id,badge_number,office_location,responsibilities,max_books_handled,training_completed,certifications,notes,created_at) VALUES ('LST001','Anna','Kim','Librarian','Reference','akim@library.edu','5551111','2019-02-15',NULL,'Active','Day','LST010','B123','Room101','Reference services',500,'Yes','ALA Certified','N/A','2024-07-01');
INSERT INTO library_staff (staff_id,first_name,last_name,position,department,email,phone,hire_date,termination_date,employment_status,shift_pattern,supervisor_id,badge_number,office_location,responsibilities,max_books_handled,training_completed,certifications,notes,created_at) VALUES ('LST002','Brian','Lopez','Assistant','Circulation','blopez@library.edu','5552222','2020-08-01',NULL,'Active','Evening','LST011','B124','Room102','Check-out desk',300,'Yes','None','Part-time', '2024-07-02');
INSERT INTO library_staff (staff_id,first_name,last_name,position,department,email,phone,hire_date,termination_date,employment_status,shift_pattern,supervisor_id,badge_number,office_location,responsibilities,max_books_handled,training_completed,certifications,notes,created_at) VALUES ('LST003','Carla','Nguyen','Archivist','SpecialCollections','cnguyen@library.edu','5553333','2018-05-20',NULL,'Active','Day','LST010','B125','Room201','Archive management',200,'Yes','Archival Certification','Speaks three languages','2024-07-03');

-- Transportation incident analysis details
CREATE TABLE transportation_incident_analysis
(
    analysis_id TEXT PRIMARY KEY,
    incident_id TEXT,
    severity_level TEXT,
    root_cause TEXT,
    corrective_action TEXT,
    responsible_party TEXT,
    due_date TEXT,
    status TEXT,
    investigation_start TEXT,
    investigation_end TEXT,
    findings_summary TEXT,
    recommendations TEXT,
    cost_estimate REAL,
    downtime_hours INTEGER,
    insurance_claim_number TEXT,
    claim_status TEXT,
    notes TEXT,
    analyst_name TEXT,
    review_date TEXT,
    approved_by TEXT
);
INSERT INTO transportation_incident_analysis (analysis_id,incident_id,severity_level,root_cause,corrective_action,responsible_party,due_date,status,investigation_start,investigation_end,findings_summary,recommendations,cost_estimate,downtime_hours,insurance_claim_number,claim_status,notes,analyst_name,review_date,approved_by) VALUES ('ANA001','INC1001','High','Brake failure','Replace brake system','VendorX','2024-08-01','Open','2024-07-05','2024-07-12','Brake pads worn beyond limits','Implement regular inspections','15000.0',48,'CLM1001','Pending','Urgent repair needed','DanaWhite','2024-07-13','MgrA');
INSERT INTO transportation_incident_analysis (analysis_id,incident_id,severity_level,root_cause,corrective_action,responsible_party,due_date,status,investigation_start,investigation_end,findings_summary,recommendations,cost_estimate,downtime_hours,insurance_claim_number,claim_status,notes,analyst_name,review_date,approved_by) VALUES ('ANA002','INC1002','Medium','Tire puncture','Provide spare tire kits','DriverY','2024-07-30','Closed','2024-07-10','2024-07-11','Puncture due to debris','Add road hazard monitoring','2000.0',6,'CLM1002','Approved','Minor incident','EvanGrey','2024-07-12','MgrB');
INSERT INTO transportation_incident_analysis (analysis_id,incident_id,severity_level,root_cause,corrective_action,responsible_party,due_date,status,investigation_start,investigation_end,findings_summary,recommendations,cost_estimate,downtime_hours,insurance_claim_number,claim_status,notes,analyst_name,review_date,approved_by) VALUES ('ANA003','INC1003','Low','Driver distraction','Conduct safety training','DriverZ','2024-09-15','Open','2024-07-20','2024-07-21','No injury, minor fender-bender','Enforce mobile phone policy','5000.0',12,'CLM1003','Pending','Follow-up needed','FionaBlue','2024-07-22','MgrC');

-- Grant review decision records
CREATE TABLE grant_review_decision
(
    decision_id TEXT PRIMARY KEY,
    grant_application_id TEXT,
    reviewer_id TEXT,
    review_date TEXT,
    score REAL,
    recommendation TEXT,
    decision TEXT,
    comments TEXT,
    funding_amount INTEGER,
    start_date TEXT,
    end_date TEXT,
    budget_breakdown TEXT,
    compliance_notes TEXT,
    conflict_of_interest_flag TEXT,
    revised_score REAL,
    final_decision_date TEXT,
    approved_by TEXT,
    status TEXT,
    notes TEXT,
    created_at TEXT
);
INSERT INTO grant_review_decision (decision_id,grant_application_id,reviewer_id,review_date,score,recommendation,decision,comments,funding_amount,start_date,end_date,budget_breakdown,compliance_notes,conflict_of_interest_flag,revised_score,final_decision_date,approved_by,status,notes,created_at) VALUES ('DEC001','GRNT001','REV001','2024-06-15',4.5,'Fund','Approved','Strong proposal',250000,'2024-09-01','2025-08-31','Equipment:100000;Personnel:150000','All compliant','No',4.7,'2024-07-01','DeanSmith','Approved','First round','2024-07-01');
INSERT INTO grant_review_decision (decision_id,grant_application_id,reviewer_id,review_date,score,recommendation,decision,comments,funding_amount,start_date,end_date,budget_breakdown,compliance_notes,conflict_of_interest_flag,revised_score,final_decision_date,approved_by,status,notes,created_at) VALUES ('DEC002','GRNT002','REV002','2024-06-20',3.2,'Conditional','Pending','Needs more detail on methodology',150000,'2024-10-01','2025-09-30','Supplies:50000;Travel:100000','Minor issues','No',3.5,'2024-07-10','DeanJones','Pending','Awaiting revised proposal','2024-07-10');
INSERT INTO grant_review_decision (decision_id,grant_application_id,reviewer_id,review_date,score,recommendation,decision,comments,funding_amount,start_date,end_date,budget_breakdown,compliance_notes,conflict_of_interest_flag,revised_score,final_decision_date,approved_by,status,notes,created_at) VALUES ('DEC003','GRNT003','REV003','2024-06-25',2.8,'Reject','Rejected','Insufficient preliminary data',0,NULL,NULL,NULL,'Non‑compliant','Yes',NULL,NULL,NULL,'Rejected','Did not meet criteria','2024-07-15');