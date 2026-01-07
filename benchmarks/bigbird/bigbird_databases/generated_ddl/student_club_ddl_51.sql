-- Student research assistant assignment details
CREATE TABLE student_research_assistant (
    assignment_id TEXT PRIMARY KEY,
    student_id TEXT,
    professor_id TEXT,
    project_id TEXT,
    start_date TEXT,
    end_date TEXT,
    stipend_amount REAL,
    hours_per_week INTEGER,
    research_area TEXT,
    lab_location TEXT,
    supervisor_email TEXT,
    status TEXT,
    created_at TEXT,
    updated_at TEXT,
    eligibility_check TEXT,
    funding_source TEXT,
    work_description TEXT,
    equipment_assigned TEXT,
    safety_training_completed TEXT,
    publication_contrib TEXT
);
INSERT INTO student_research_assistant VALUES ('ASG001','STU1001','PROF200','PRJ300','2024-01-15','2024-12-15',15000.00,20,'AI Robotics','LabA','prof200@university.edu','Active','2024-01-01','2024-01-01','Passed','DeptGrant','Data preprocessing','GPUCluster','Yes','Coauthor');
INSERT INTO student_research_assistant VALUES ('ASG002','STU1002','PROF201','PRJ301','2024-02-01','2024-08-01',12000.00,15,'Bioinformatics','LabB','prof201@university.edu','Active','2024-02-01','2024-02-01','Passed','ExternalFund','Sequence analysis','Sequencer','Yes','Contributor');
INSERT INTO student_research_assistant VALUES ('ASG003','STU1003','PROF202','PRJ302','2024-03-01','2025-02-28',18000.00,25,'Quantum Computing','LabC','prof202@university.edu','Pending','2024-03-01','2024-03-01','Pending','DeptGrant','Algorithm development','QubitSimulator','No','Pending');

-- Faculty development course participation
CREATE TABLE faculty_development_course (
    course_id TEXT PRIMARY KEY,
    faculty_id TEXT,
    course_name TEXT,
    provider TEXT,
    start_date TEXT,
    end_date TEXT,
    credit_hours INTEGER,
    modality TEXT,
    cost REAL,
    enrollment_status TEXT,
    completion_date TEXT,
    certificate_issued TEXT,
    feedback_score REAL,
    eval_comments TEXT,
    created_at TEXT,
    updated_at TEXT,
    prerequisite_course TEXT,
    seat_limit INTEGER,
    waitlist_count INTEGER,
    learning_outcome TEXT
);
INSERT INTO faculty_development_course VALUES ('CRS001','FAC300','Advanced Pedagogy','EduCenter','2024-04-01','2024-04-15',3,'Online',500.00','Enrolled','2024-04-15','Yes',4.5','Very useful','2024-03-20','2024-03-20','CRS000','30','0','Improved teaching methods');
INSERT INTO faculty_development_course VALUES ('CRS002','FAC301','Data Science for Educators','DataHub','2024-05-10','2024-05-20',2,'Hybrid',750.00','Enrolled','2024-05-20','Yes',4.8','Excellent content','2024-04-25','2024-04-25','CRS001','25','2','Integrate data analytics in curriculum');
INSERT INTO faculty_development_course VALUES ('CRS003','FAC302','Leadership in Research','LeaderInc','2024-06-05','2024-06-12',1,'InPerson',400.00','Waitlist','', 'No',0,'', '2024-05-30','2024-05-30','', '20','5','Develop research team leadership');

-- Campus transport ticket issuance
CREATE TABLE campus_transport_ticket (
    ticket_id TEXT PRIMARY KEY,
    member_id TEXT,
    ticket_type TEXT,
    issue_date TEXT,
    expiration_date TEXT,
    zones_allowed TEXT,
    price REAL,
    purchase_method TEXT,
    validation_status TEXT,
    balance REAL,
    created_at TEXT,
    updated_at TEXT,
    discount_applied TEXT,
    promotion_code TEXT,
    issuer_staff_id TEXT,
    notes TEXT,
    travel_history_id TEXT,
    last_used_date TEXT,
    ride_count INTEGER,
    status TEXT
);
INSERT INTO campus_transport_ticket VALUES ('TKT001','MEM400','Monthly','2024-01-01','2024-01-31','Zone1-3',120.00,'Online','Validated',0.00,'2024-01-01','2024-01-01','None','', 'STF001','First month ticket','HIST001','2024-01-30',25,'Active');
INSERT INTO campus_transport_ticket VALUES ('TKT002','MEM401','SingleRide','2024-02-10','2024-02-10','Zone2',2.50,'Cash','Validated',0.00,'2024-02-10','2024-02-10','Student','SPRING2024','STF002','Used for conference','HIST002','2024-02-10',1,'Used');
INSERT INTO campus_transport_ticket VALUES ('TKT003','MEM402','Annual','2024-01-01','2024-12-31','AllZones',900.00,'Card','Validated',0.00,'2024-01-01','2024-01-01','Staff','', 'STF003','Annual pass','HIST003','2024-11-15',120,'Active');

-- Event hospitality service contracts
CREATE TABLE event_hospitality_service (
    service_id TEXT PRIMARY KEY,
    event_id TEXT,
    provider_name TEXT,
    service_type TEXT,
    contract_value REAL,
    start_time TEXT,
    end_time TEXT,
    menu_description TEXT,
    staff_count INTEGER,
    equipment_needed TEXT,
    setup_complete TEXT,
    teardown_complete TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    compliance_status TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    rating REAL,
    feedback_id TEXT,
    invoice_number TEXT
);
INSERT INTO event_hospitality_service VALUES ('HS001','EVT500','CateringCo','Buffet',2500.00,'2024-09-01 09:00','2024-09-01 12:00','Continental Breakfast',5,'Tables,Chairs','Yes','Yes','5551234567','cateringco@service.com','Compliant','2024-08-15','2024-08-20','No allergens','4.7','FDBK001','INV1001');
INSERT INTO event_hospitality_service VALUES ('HS002','EVT501','GourmetDelights','PlatedDinner',5000.00,'2024-10-15 18:00','2024-10-15 22:00','Three course dinner',8,'FineDiningSet','No','No','5559876543','gourmet@delights.com','Pending','2024-09-30','2024-09-30','Awaiting menu approval','0','', '');
INSERT INTO event_hospitality_service VALUES ('HS003','EVT502','SnackStation','Snacks',800.00,'2024-11-05 10:00','2024-11-05 14:00','Assorted snacks and drinks',3,'PortableTables','Yes','Yes','5552223333','snack@station.com','Compliant','2024-10-20','2024-10-20','Include vegan options','4.2','FDBK003','INV1003');

-- Membership privacy setting change log
CREATE TABLE membership_privacy_log (
    log_id TEXT PRIMARY KEY,
    member_id TEXT,
    privacy_setting TEXT,
    changed_by TEXT,
    change_timestamp TEXT,
    old_value TEXT,
    new_value TEXT,
    reason TEXT,
    approval_status TEXT,
    reviewer_id TEXT,
    notes TEXT,
    ip_address TEXT,
    device_type TEXT,
    location TEXT,
    created_at TEXT,
    updated_at TEXT,
    audit_tag TEXT,
    compliance_flag TEXT,
    notification_sent TEXT,
    policy_version TEXT
);
INSERT INTO membership_privacy_log VALUES ('LOG001','MEM400','EmailVisibility','ADMIN001','2024-02-01 10:00','Public','Private','User request','Approved','REV001','Changed per request','192.168.1.10','Desktop','MainCampus','2024-02-01','2024-02-01','AUD001','Yes','Yes','v2');
INSERT INTO membership_privacy_log VALUES ('LOG002','MEM401','ProfileSearch','ADMIN002','2024-03-15 14:30','Enabled','Disabled','Policy update','Approved','REV002','Automatic change','192.168.1.20','Mobile','EastCampus','2024-03-15','2024-03-15','AUD002','Yes','Yes','v3');
INSERT INTO membership_privacy_log VALUES ('LOG003','MEM402','DataSharing','ADMIN003','2024-04-10 09:45','Allowed','Restricted','Compliance audit','Pending','REV003','Awaiting manager signoff','192.168.1.30','Tablet','WestCampus','2024-04-10','2024-04-10','AUD003','No','No','v3');

-- Environmental policy document registry
CREATE TABLE environmental_policy_document (
    policy_id TEXT PRIMARY KEY,
    title TEXT,
    effective_date TEXT,
    review_date TEXT,
    version_number TEXT,
    department_responsible TEXT,
    summary TEXT,
    full_text_url TEXT,
    status TEXT,
    created_by TEXT,
    approved_by TEXT,
    approval_date TEXT,
    amendment_number INTEGER,
    related_regulation TEXT,
    compliance_deadline TEXT,
    risk_category TEXT,
    stakeholder_group TEXT,
    audit_status TEXT,
    last_modified TEXT,
    notes TEXT
);
INSERT INTO environmental_policy_document VALUES ('POL001','Campus Waste Reduction','2023-01-01','2024-01-01','1.0','Facilities','Guidelines to reduce waste on campus','http://university.edu/policies/waste.pdf','Active','ADMIN001','DIR001','2022-12-15',0,'Reg123','2024-12-31','Low','AllStudents','Compliant','2024-06-01','');
INSERT INTO environmental_policy_document VALUES ('POL002','Energy Conservation Plan','2022-06-01','2023-06-01','2.1','Energy Services','Plan to lower energy consumption','http://university.edu/policies/energy.pdf','Review','ADMIN002','DIR002','2022-05-20',2,'Reg456','2023-12-31','Medium','FacultyStaff','UnderReview','2023-11-15','Pending amendment');
INSERT INTO environmental_policy_document VALUES ('POL003','Water Usage Policy','2024-03-01','2025-03-01','1.0','Facilities','Regulates water use across campus','http://university.edu/policies/water.pdf','Draft','ADMIN003','DIR003','2024-02-20',0,'Reg789','2025-12-31','High','FacilitiesTeam','Draft','2024-04-10','Awaiting approval');

-- Digital asset tagging metadata
CREATE TABLE digital_asset_tagging (
    tag_id TEXT PRIMARY KEY,
    asset_id TEXT,
    tag_key TEXT,
    tag_value TEXT,
    tagged_by TEXT,
    tag_timestamp TEXT,
    confidence_score REAL,
    source_system TEXT,
    verification_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    expiry_date TEXT,
    tag_type TEXT,
    relevance_score REAL,
    related_asset_id TEXT,
    tag_category TEXT,
    priority INTEGER,
    last_reviewed TEXT,
    status TEXT
);
INSERT INTO digital_asset_tagging VALUES ('TAG001','ASSET100','Topic','MachineLearning','USR001','2024-05-01 08:00',0.95,'CMS','Verified','Initial tagging','2024-05-01','2024-05-01','2025-05-01','Automatic',0.9,'ASSET101','Education',1,'2024-05-15','Active');
INSERT INTO digital_asset_tagging VALUES ('TAG002','ASSET101','Audience','Undergraduate','USR002','2024-05-02 09:30',0.88,'CMS','Pending','Needs review','2024-05-02','2024-05-02','2025-05-02','Manual',0.7,'ASSET102','Demographic',2,'2024-05-20','Pending');
INSERT INTO digital_asset_tagging VALUES ('TAG003','ASSET102','License','CreativeCommons','USR003','2024-05-03 10:15',0.99,'CMS','Verified','License confirmed','2024-05-03','2024-05-03','2025-05-03','Automatic',1.0,'ASSET103','Legal',1,'2024-05-18','Active');

-- Vendor payment schedule tracking
CREATE TABLE vendor_payment_schedule (
    schedule_id TEXT PRIMARY KEY,
    vendor_id TEXT,
    contract_id TEXT,
    payment_due_date TEXT,
    amount_due REAL,
    currency TEXT,
    payment_method TEXT,
    status TEXT,
    created_at TEXT,
    updated_at TEXT,
    approved_by TEXT,
    approval_date TEXT,
    invoice_number TEXT,
    vat_amount REAL,
    net_amount REAL,
    payment_reference TEXT,
    notes TEXT,
    late_fee_applied TEXT,
    late_fee_amount REAL,
    payment_completed_date TEXT
);
INSERT INTO vendor_payment_schedule VALUES ('SCH001','VEND500','CON300','2024-07-15',5000.00,'USD','BankTransfer','Pending','2024-06-01','2024-06-01','FIN001','2024-06-05','INV5001',500.00,4500.00,'PAYREF001','First installment','No',0.00,'');
INSERT INTO vendor_payment_schedule VALUES ('SCH002','VEND501','CON301','2024-08-01',7500.00,'USD','Check','Pending','2024-06-15','2024-06-15','FIN002','2024-06-20','INV5002',750.00,6750.00,'PAYREF002','Second installment','No',0.00,'');
INSERT INTO vendor_payment_schedule VALUES ('SCH003','VEND502','CON302','2024-07-30',3000.00,'USD','CreditCard','Paid','2024-07-01','2024-07-01','FIN003','2024-07-02','INV5003',300.00,2700.00,'PAYREF003','Final payment','Yes',30.00,'2024-07-28');

-- Grant review scoring records
CREATE TABLE grant_review_score (
    review_id TEXT PRIMARY KEY,
    grant_id TEXT,
    reviewer_id TEXT,
    score_numeric REAL,
    score_letter TEXT,
    review_date TEXT,
    comments TEXT,
    conflict_of_interest TEXT,
    recommendation TEXT,
    funding_amount_suggested REAL,
    revised_budget REAL,
    eligibility_flag TEXT,
    confidentiality_level TEXT,
    created_at TEXT,
    updated_at TEXT,
    review_version INTEGER,
    override_flag TEXT,
    overridden_by TEXT,
    override_reason TEXT,
    final_decision TEXT
);
INSERT INTO grant_review_score VALUES ('RVW001','GRNT100','REV200',85.0,'B','2024-04-10','Strong methodology','No','Fund','50000',55000,'Yes','High','2024-04-11','2024-04-11',1,'No','','','Approved');
INSERT INTO grant_review_score VALUES ('RVW002','GRNT101','REV201',92.5,'A','2024-04-12','Excellent impact','No','Fund','75000',80000,'Yes','High','2024-04-13','2024-04-13',1,'No','','','Approved');
INSERT INTO grant_review_score VALUES ('RVW003','GRNT102','REV202',68.0,'C','2024-04-15','Needs clarification','Yes','Reject','30000',35000,'No','Medium','2024-04-16','2024-04-16',1,'Yes','ADMIN005','Conflict not resolved','Rejected');

-- Community outreach event feedback
CREATE TABLE community_outreach_feedback (
    feedback_id TEXT PRIMARY KEY,
    event_id TEXT,
    participant_id TEXT,
    feedback_date TEXT,
    rating_overall REAL,
    rating_content REAL,
    rating_organization REAL,
    comments TEXT,
    follow_up_needed TEXT,
    follow_up_date TEXT,
    contact_method TEXT,
    contact_info TEXT,
    survey_version TEXT,
    created_at TEXT,
    updated_at TEXT,
    demographic_group TEXT,
    satisfaction_score REAL,
    net_promoter_score INTEGER,
    action_items TEXT,
    resolved_flag TEXT
);
INSERT INTO community_outreach_feedback VALUES ('FBK001','EVT600','PAR001','2024-05-20',4.5,4.7,4.2','Great event, very informative','No','','Email','par001@example.com','V1','2024-05-20','2024-05-20','Adult',4.5,78,'Send thank you note','Yes');
INSERT INTO community_outreach_feedback VALUES ('FBK002','EVT601','PAR002','2024-05-22',3.8,4.0,3.5','Good, but could improve logistics','Yes','2024-06-01','Phone','5554447777','V1','2024-05-22','2024-05-22','Senior',3.8,62,'Provide transportation details','No');
INSERT INTO community_outreach_feedback VALUES ('FBK003','EVT602','PAR003','2024-05-25',4.9,5.0,4.8','Excellent, highly engaging','No','','Email','par003@example.com','V1','2024-05-25','2024-05-25','Student',4.9,90,'Offer additional sessions','Yes');