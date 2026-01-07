-- Customer support tickets table
CREATE TABLE customer_support_tickets (
    ticket_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    created_at DATE,
    updated_at DATE,
    status TEXT,
    priority TEXT,
    subject TEXT,
    description TEXT,
    category TEXT,
    subcategory TEXT,
    channel TEXT,
    assigned_to INTEGER,
    resolution_notes TEXT,
    satisfaction_score INTEGER,
    sla_deadline DATE,
    first_response_time INTEGER,
    last_response_time INTEGER,
    tags TEXT,
    escalation_level INTEGER,
    closed_at DATE
);

INSERT INTO customer_support_tickets (ticket_id,user_id,created_at,updated_at,status,priority,subject,description,category,subcategory,channel,assigned_to,resolution_notes,satisfaction_score,sla_deadline,first_response_time,last_response_time,tags,escalation_level,closed_at) VALUES (1,101,'2023-01-10','2023-01-12','Open','High','Login issue','User cannot login after password reset','Authentication','Password','Email',201,'',0,'2023-01-15',2,5,'login,reset',1,NULL);
INSERT INTO customer_support_tickets (ticket_id,user_id,created_at,updated_at,status,priority,subject,description,category,subcategory,channel,assigned_to,resolution_notes,satisfaction_score,sla_deadline,first_response_time,last_response_time,tags,escalation_level,closed_at) VALUES (2,102,'2023-02-05','2023-02-06','InProgress','Medium','Billing question','Incorrect charge on invoice','Billing','Invoice','Chat',202,'Investigating charge',0,'2023-02-10',1,3,'billing,invoice',0,NULL);
INSERT INTO customer_support_tickets (ticket_id,user_id,created_at,updated_at,status,priority,subject,description,category,subcategory,channel,assigned_to,resolution_notes,satisfaction_score,sla_deadline,first_response_time,last_response_time,tags,escalation_level,closed_at) VALUES (3,103,'2023-03-01','2023-03-02','Closed','Low','Feature request','Add dark mode option','Product','UI','Web',203,'Implemented in v2.1',5,'2023-03-05',0,0,'feature,darkmode',0,'2023-03-02');

-- Hardware inventory table
CREATE TABLE hardware_inventory (
    asset_id INTEGER PRIMARY KEY AUTOINCREMENT,
    hostname TEXT,
    ip_address TEXT,
    mac_address TEXT,
    serial_number TEXT,
    model TEXT,
    manufacturer TEXT,
    purchase_date DATE,
    warranty_end DATE,
    location TEXT,
    rack TEXT,
    unit_position INTEGER,
    asset_type TEXT,
    operating_system TEXT,
    os_version TEXT,
    cpu TEXT,
    ram_gb INTEGER,
    storage_gb INTEGER,
    status TEXT,
    last_audit DATE
);

INSERT INTO hardware_inventory (asset_id,hostname,ip_address,mac_address,serial_number,model,manufacturer,purchase_date,warranty_end,location,rack,unit_position,asset_type,operating_system,os_version,cpu,ram_gb,storage_gb,status,last_audit) VALUES (1,'srv01','10.0.0.5','AA:BB:CC:DD:EE:01','SN001','X123','AcmeCorp','2021-06-01','2024-06-01','DataCenterA','RackA',12,'Server','Linux','5.10','IntelXeon','64','2000','Active','2023-12-01');
INSERT INTO hardware_inventory (asset_id,hostname,ip_address,mac_address,serial_number,model,manufacturer,purchase_date,warranty_end,location,rack,unit_position,asset_type,operating_system,os_version,cpu,ram_gb,storage_gb,status,last_audit) VALUES (2,'ws01','10.0.1.10','AA:BB:CC:DD:EE:02','SN002','W456','BetaTech','2022-01-15','2025-01-15','OfficeB','RackB',5,'Workstation','Windows','10','Inteli7','16','512','InUse','2023-11-20');
INSERT INTO hardware_inventory (asset_id,hostname,ip_address,mac_address,serial_number,model,manufacturer,purchase_date,warranty_end,location,rack,unit_position,asset_type,operating_system,os_version,cpu,ram_gb,storage_gb,status,last_audit) VALUES (3,'router01','10.0.0.1','AA:BB:CC:DD:EE:03','SN003','R789','NetGear','2020-09-10','2023-09-10','DataCenterA','RackC',1,'NetworkDevice','IOS','15.2','ARM','4','256','Retired','2023-10-05');

-- Newsletter subscriptions table
CREATE TABLE newsletter_subscriptions (
    subscription_id INTEGER PRIMARY KEY AUTOINCREMENT,
    email TEXT,
    first_name TEXT,
    last_name TEXT,
    signup_date DATE,
    confirmed INTEGER,
    source TEXT,
    frequency TEXT,
    language TEXT,
    preferred_topics TEXT,
    token TEXT,
    last_sent_date DATE,
    open_rate REAL,
    click_rate REAL,
    unsubscribed INTEGER,
    unsubscribe_date DATE,
    segmentation TEXT,
    notes TEXT,
    is_active INTEGER,
    version INTEGER
);

INSERT INTO newsletter_subscriptions (subscription_id,email,first_name,last_name,signup_date,confirmed,source,frequency,language,preferred_topics,token,last_sent_date,open_rate,click_rate,unsubscribed,unsubscribe_date,segmentation,notes,is_active,version) VALUES (1,'alice@example.com','Alice','Smith','2023-01-01',1,'Website','Weekly','en','gaming,art','tok123','2023-12-01',0.45,0.12,0,NULL,'new_players','',1,1);
INSERT INTO newsletter_subscriptions (subscription_id,email,first_name,last_name,signup_date,confirmed,source,frequency,language,preferred_topics,token,last_sent_date,open_rate,click_rate,unsubscribed,unsubscribe_date,segmentation,notes,is_active,version) VALUES (2,'bob@example.com','Bob','Jones','2023-02-15',1,'Social','Monthly','en','tournaments','tok456','2023-11-15',0.30,0.08,0,NULL,'tournament_fans','',1,1);
INSERT INTO newsletter_subscriptions (subscription_id,email,first_name,last_name,signup_date,confirmed,source,frequency,language,preferred_topics,token,last_sent_date,open_rate,click_rate,unsubscribed,unsubscribe_date,segmentation,notes,is_active,version) VALUES (3,'carol@example.com','Carol','Lee','2023-03-20',0,'Referral','Weekly','en','events','tok789',NULL,0.0,0.0,1,'2023-04-01','inactive','User requested unsubscribe',0,1);

-- Email campaigns table
CREATE TABLE email_campaigns (
    campaign_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    start_date DATE,
    end_date DATE,
    subject_line TEXT,
    sender_name TEXT,
    sender_email TEXT,
    audience_segment TEXT,
    status TEXT,
    total_sent INTEGER,
    total_opened INTEGER,
    total_clicked INTEGER,
    bounce_rate REAL,
    spam_report_rate REAL,
    content_type TEXT,
    template_id INTEGER,
    budget_usd REAL,
    actual_spend_usd REAL,
    created_by TEXT,
    notes TEXT
);

INSERT INTO email_campaigns (campaign_id,name,start_date,end_date,subject_line,sender_name,sender_email,audience_segment,status,total_sent,total_opened,total_clicked,bounce_rate,spam_report_rate,content_type,template_id,budget_usd,actual_spend_usd,created_by,notes) VALUES (1,'Winter Promo','2023-12-01','2023-12-15','Winter Sale! Up to 50% off','Marketing Team','promo@company.com','All Users','Completed',50000,25000,8000,0.02,0.001,'HTML',101,10000,9500,'jdoe','Successful winter promotion');
INSERT INTO email_campaigns (campaign_id,name,start_date,end_date,subject_line,sender_name,sender_email,audience_segment,status,total_sent,total_opened,total_clicked,bounce_rate,spam_report_rate,content_type,template_id,budget_usd,actual_spend_usd,created_by,notes) VALUES (2,'New Feature Launch','2024-01-10','2024-01-20','Introducing Dark Mode','Product Team','features@company.com','Beta Testers','Sent',12000,5000,1200,0.015,0.0005,'HTML',102,2000,1900,'asmith','Early access for beta users');
INSERT INTO email_campaigns (campaign_id,name,start_date,end_date,subject_line,sender_name,sender_email,audience_segment,status,total_sent,total_opened,total_clicked,bounce_rate,spam_report_rate,content_type,template_id,budget_usd,actual_spend_usd,created_by,notes) VALUES (3,'Survey Request','2024-02-01','2024-02-10','We value your feedback','Support Team','support@company.com','Recent Purchasers','Scheduled',8000,3000,500,0.01,0.0008,'PlainText',103,1500,1500,'mlee','Pending release');

-- Analytics events table
CREATE TABLE analytics_events (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_name TEXT,
    user_id INTEGER,
    session_id TEXT,
    timestamp DATETIME,
    device_type TEXT,
    os TEXT,
    browser TEXT,
    referrer TEXT,
    location_country TEXT,
    location_city TEXT,
    click_x INTEGER,
    click_y INTEGER,
    scroll_depth INTEGER,
    time_on_page INTEGER,
    conversion INTEGER,
    revenue_usd REAL,
    campaign_id INTEGER,
    experiment_id INTEGER,
    variant TEXT,
    metadata TEXT
);

INSERT INTO analytics_events (event_id,event_name,user_id,session_id,timestamp,device_type,os,browser,referrer,location_country,location_city,click_x,click_y,scroll_depth,time_on_page,conversion,revenue_usd,campaign_id,experiment_id,variant,metadata) VALUES (1,'PageView',101,'sess001','2024-01-15 08:30:00','Desktop','Windows','Chrome','google.com','US','NewYork',0,0,75,120,0,0.0,1,10,'A','');
INSERT INTO analytics_events (event_id,event_name,user_id,session_id,timestamp,device_type,os,browser,referrer,location_country,location_city,click_x,click_y,scroll_depth,time_on_page,conversion,revenue_usd,campaign_id,experiment_id,variant,metadata) VALUES (2,'AddToCart',102,'sess002','2024-01-15 08:45:10','Mobile','iOS','Safari','facebook.com','CA','Toronto',250,480,100,30,1,49.99,2,11,'B','');
INSERT INTO analytics_events (event_id,event_name,user_id,session_id,timestamp,device_type,os,browser,referrer,location_country,location_city,click_x,click_y,scroll_depth,time_on_page,conversion,revenue_usd,campaign_id,experiment_id,variant,metadata) VALUES (3,'Purchase',103,'sess003','2024-01-15 09:00:05','Desktop','macOS','Firefox','direct','GB','London',0,0,100,300,1,199.99,3,12,'A','');

-- Partner networks table
CREATE TABLE partner_networks (
    partner_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    type TEXT,
    start_date DATE,
    end_date DATE,
    contract_value_usd REAL,
    contact_name TEXT,
    contact_email TEXT,
    phone TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    tier TEXT,
    performance_score REAL,
    last_review_date DATE,
    notes TEXT,
    is_active INTEGER,
    website TEXT
);

INSERT INTO partner_networks (partner_id,name,type,start_date,end_date,contract_value_usd,contact_name,contact_email,phone,address_line1,address_line2,city,state,zip_code,country,tier,performance_score,last_review_date,notes,is_active,website) VALUES (1,'Alpha Media','Advertising','2022-01-01','2024-12-31',250000,'John Doe','john@alphamedia.com','5551234','123 Main St','Suite 100','LosAngeles','CA','90001','US','Gold',4.5,'2023-11-15','Long term partner',1,'http://alphamedia.com');
INSERT INTO partner_networks (partner_id,name,type,start_date,end_date,contract_value_usd,contact_name,contact_email,phone,address_line1,address_line2,city,state,zip_code,country,tier,performance_score,last_review_date,notes,is_active,website) VALUES (2,'Beta Logistics','Shipping','2021-06-15','2025-06-14',150000,'Jane Smith','jane@betalogs.com','5555678','456 Oak Ave','', 'Chicago','IL','60605','US','Silver',4.0,'2023-10-01','On-time delivery record',1,'http://betalogs.com');
INSERT INTO partner_networks (partner_id,name,type,start_date,end_date,contract_value_usd,contact_name,contact_email,phone,address_line1,address_line2,city,state,zip_code,country,tier,performance_score,last_review_date,notes,is_active,website) VALUES (3,'Gamma Studios','Content','2023-03-01',NULL,80000,'Mike Lee','mike@gammastudios.com','5558910','789 Pine Rd','Floor 2','Seattle','WA','98101','US','Bronze',3.8,'2023-12-01','New content creator',1,'http://gammastudios.com');

-- Affiliate program table
CREATE TABLE affiliate_program (
    affiliate_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    join_date DATE,
    status TEXT,
    payout_method TEXT,
    payout_currency TEXT,
    monthly_target_usd REAL,
    total_earned_usd REAL,
    last_payout_date DATE,
    email TEXT,
    phone TEXT,
    website TEXT,
    promo_code TEXT,
    conversion_rate REAL,
    avg_order_value_usd REAL,
    traffic_volume INTEGER,
    region TEXT,
    manager_id INTEGER,
    notes TEXT,
    is_verified INTEGER
);

INSERT INTO affiliate_program (affiliate_id,name,join_date,status,payout_method,payout_currency,monthly_target_usd,total_earned_usd,last_payout_date,email,phone,website,promo_code,conversion_rate,avg_order_value_usd,traffic_volume,region,manager_id,notes,is_verified) VALUES (1,'TechBlog','2022-05-10','Active','BankTransfer','USD',5000,24000,'2023-12-20','contact@techblog.com','5551111','http://techblog.com','TECH10',0.04,120.5,15000,'NorthAmerica',101,'Top tech affiliate',1);
INSERT INTO affiliate_program (affiliate_id,name,join_date,status,payout_method,payout_currency,monthly_target_usd,total_earned_usd,last_payout_date,email,phone,website,promo_code,conversion_rate,avg_order_value_usd,traffic_volume,region,manager_id,notes,is_verified) VALUES (2,'GamerZone','2023-01-15','Active','PayPal','USD',3000,12000,'2023-11-30','admin@gamerzone.com','5552222','http://gamerzone.com','GAME5',0.03,85.0,20000,'Europe',102,'Gaming niche',1);
INSERT INTO affiliate_program (affiliate_id,name,join_date,status,payout_method,payout_currency,monthly_target_usd,total_earned_usd,last_payout_date,email,phone,website,promo_code,conversion_rate,avg_order_value_usd,traffic_volume,region,manager_id,notes,is_verified) VALUES (3,'TravelStories','2021-09-20','Inactive','BankTransfer','USD',2000,8000,'2022-12-15','info@travelstories.com','5553333','http://travelstories.com','TRAVEL15',0.02,150.0,8000,'Asia',103,'Paused pending reactivation',0);

-- Training courses table
CREATE TABLE training_courses (
    course_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    description TEXT,
    category TEXT,
    level TEXT,
    language TEXT,
    duration_minutes INTEGER,
    start_date DATE,
    end_date DATE,
    instructor_id INTEGER,
    max_participants INTEGER,
    enrollment_count INTEGER,
    prerequisite_course_ids TEXT,
    certification_available INTEGER,
    price_usd REAL,
    syllabus_url TEXT,
    video_url TEXT,
    created_at DATE,
    updated_at DATE,
    status TEXT
);

INSERT INTO training_courses (course_id,title,description,category,level,language,duration_minutes,start_date,end_date,instructor_id,max_participants,enrollment_count,prerequisite_course_ids,certification_available,price_usd,syllabus_url,video_url,created_at,updated_at,status) VALUES (1,'Intro to Game Design','Basics of designing tabletop games','Game Development','Beginner','en',180,'2024-03-01','2024-03-15',201,30,12,'',1,199.99,'http://example.com/syllabus1.pdf','http://example.com/video1.mp4','2023-12-01','2023-12-15','Open');
INSERT INTO training_courses (course_id,title,description,category,level,language,duration_minutes,start_date,end_date,instructor_id,max_participants,enrollment_count,prerequisite_course_ids,certification_available,price_usd,syllabus_url,video_url,created_at,updated_at,status) VALUES (2,'Advanced Deck Building','Strategic deck construction techniques','Strategy','Advanced','en',240,'2024-04-10','2024-04-20',202,20,5,'1',1,299.99,'http://example.com/syllabus2.pdf','http://example.com/video2.mp4','2024-01-05','2024-01-10','Open');
INSERT INTO training_courses (course_id,title,description,category,level,language,duration_minutes,start_date,end_date,instructor_id,max_participants,enrollment_count,prerequisite_course_ids,certification_available,price_usd,syllabus_url,video_url,created_at,updated_at,status) VALUES (3,'Marketing for Tournaments','Promoting and monetizing esports events','Business','Intermediate','en',150,'2024-05-05','2024-05-12',203,25,8,'',0,149.99,'http://example.com/syllabus3.pdf','http://example.com/video3.mp4','2024-02-01','2024-02-03','Planned');

-- Bug reports table
CREATE TABLE bug_reports (
    bug_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    description TEXT,
    severity TEXT,
    priority TEXT,
    reporter_user_id INTEGER,
    assigned_dev_id INTEGER,
    status TEXT,
    created_at DATE,
    updated_at DATE,
    resolved_at DATE,
    steps_to_reproduce TEXT,
    environment TEXT,
    version TEXT,
    attachment_url TEXT,
    reproducible INTEGER,
    regression INTEGER,
    target_fix_version TEXT,
    comments TEXT,
    tags TEXT
);

INSERT INTO bug_reports (bug_id,title,description,severity,priority,reporter_user_id,assigned_dev_id,status,created_at,updated_at,resolved_at,steps_to_reproduce,environment,version,attachment_url,reproducible,regression,target_fix_version,comments,tags) VALUES (1,'Login timeout','Session expires prematurely','High','P1',101,201,'Open','2024-01-10','2024-01-11',NULL,'Login, wait 5 minutes, try to navigate','Chrome Windows 10','v2.3','http://example.com/bug1.png',1,0,'v2.4','', 'login,timeout');
INSERT INTO bug_reports (bug_id,title,description,severity,priority,reporter_user_id,assigned_dev_id,status,created_at,updated_at,resolved_at,steps_to_reproduce,environment,version,attachment_url,reproducible,regression,target_fix_version,comments,tags) VALUES (2,'Incorrect card price display','Price shows $0 for some cards','Medium','P2',102,202,'InProgress','2024-01-12','2024-01-14',NULL,'Search card, view price','Firefox macOS','v2.3','http://example.com/bug2.png',1,0,'v2.5','Investigating API issue','price,display');
INSERT INTO bug_reports (bug_id,title,description,severity,priority,reporter_user_id,assigned_dev_id,status,created_at,updated_at,resolved_at,steps_to_reproduce,environment,version,attachment_url,reproducible,regression,target_fix_version,comments,tags) VALUES (3,'Crash on deck export','App crashes when exporting large decks','Critical','P0',103,203,'Closed','2024-01-08','2024-01-09','2024-01-10','Create deck with >500 cards, export as PDF','Edge Windows 11','v2.2','http://example.com/bug3.png',1,1,'v2.3','Fixed in patch','crash,export');

-- Feature requests table
CREATE TABLE feature_requests (
    request_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    description TEXT,
    requester_user_id INTEGER,
    priority TEXT,
    status TEXT,
    created_at DATE,
    updated_at DATE,
    target_release TEXT,
    votes INTEGER,
    comments_count INTEGER,
    related_bug_id INTEGER,
    effort_estimate_hours INTEGER,
    component TEXT,
    stakeholder TEXT,
    approved_by TEXT,
    approval_date DATE,
    implementation_status TEXT,
    release_notes TEXT,
    tags TEXT
);

INSERT INTO feature_requests (request_id,title,description,requester_user_id,priority,status,created_at,updated_at,target_release,votes,comments_count,related_bug_id,effort_estimate_hours,component,stakeholder,approved_by,approval_date,implementation_status,release_notes,tags) VALUES (1,'Add dark mode','Provide a dark theme for the UI','101','High','Approved','2023-12-01','2023-12-10','v2.4',120,15,NULL,80,'UI','ProductTeam','jdoe','2023-12-15','InProgress','','darkmode,ui');
INSERT INTO feature_requests (request_id,title,description,requester_user_id,priority,status,created_at,updated_at,target_release,votes,comments_count,related_bug_id,effort_estimate_hours,component,stakeholder,approved_by,approval_date,implementation_status,release_notes,tags) VALUES (2,'Integrate payment gateway','Support Stripe and PayPal for purchases','102','Medium','Pending','2024-01-05','2024-01-07','v2.5',85,8,2,200,'Payments','Finance','asmith','2024-01-20','Planned','','payment,gateway');
INSERT INTO feature_requests (request_id,title,description,requester_user_id,priority,status,created_at,updated_at,target_release,votes,comments_count,related_bug_id,effort_estimate_hours,component,stakeholder,approved_by,approval_date,implementation_status,release_notes,tags) VALUES (3,'Leaderboard rankings by region','Show top players per geographic region','103','Low','Rejected','2024-01-15','2024-01-16','v2.6',30,5,NULL,40,'Analytics','Community','mlee','2024-01-25','Cancelled','','leaderboard,region');