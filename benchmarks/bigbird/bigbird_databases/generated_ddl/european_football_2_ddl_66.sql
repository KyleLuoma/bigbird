-- Broadcast equipment log for stadium technology tracking
CREATE TABLE Broadcast_Equipment_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    equipment_id INTEGER,
    equipment_type TEXT,
    manufacturer TEXT,
    model_number TEXT,
    purchase_date TEXT,
    warranty_end_date TEXT,
    last_service_date TEXT,
    service_provider TEXT,
    status TEXT,
    location TEXT,
    firmware_version TEXT,
    serial_number TEXT,
    cost INTEGER,
    depreciation_rate INTEGER,
    notes TEXT,
    assigned_to_team_id INTEGER,
    assigned_to_match_id INTEGER,
    calibration_date TEXT,
    calibration_due_date TEXT
);

INSERT INTO Broadcast_Equipment_Log (id, equipment_id, equipment_type, manufacturer, model_number, purchase_date, warranty_end_date, last_service_date, service_provider, status, location, firmware_version, serial_number, cost, depreciation_rate, notes, assigned_to_team_id, assigned_to_match_id, calibration_date, calibration_due_date) VALUES
(1,101,'Camera','Sony','C500','2022-01-15','2025-01-15','2023-06-01','TechServ Ltd','Active','Stadium North','v1.2','SN101A',15000,10,'Initial deployment',5,12,'2023-06-01','2024-06-01'),
(2,102,'Microphone','Shure','SM58','2021-03-10','2024-03-10','2023-04-20','AudioPro','Active','Stadium South','v2.0','SN102B',500,5,'Replaced windscreen',6,13,'2023-04-20','2024-04-20'),
(3,103,'LightingRig','Philips','L300','2020-07-22','2023-07-22','2023-01-15','LightCorp','Maintenance','Stadium East','v3.5','SN103C',20000,15,'LED upgrade',7,14,'2023-01-15','2023-12-15');

-- Schedule of routine and ad‑hoc stadium maintenance
CREATE TABLE Stadium_Maintenance_Schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    maintenance_type TEXT,
    description TEXT,
    scheduled_start_date TEXT,
    scheduled_end_date TEXT,
    actual_start_date TEXT,
    actual_end_date TEXT,
    contractor TEXT,
    cost_estimate INTEGER,
    cost_actual INTEGER,
    priority_level TEXT,
    status TEXT,
    created_by TEXT,
    approved_by TEXT,
    notes TEXT,
    recurring_interval_days INTEGER,
    safety_inspection_required INTEGER,
    equipment_needed TEXT,
    downtime_hours INTEGER
);

INSERT INTO Stadium_Maintenance_Schedule (id, stadium_id, maintenance_type, description, scheduled_start_date, scheduled_end_date, actual_start_date, actual_end_date, contractor, cost_estimate, cost_actual, priority_level, status, created_by, approved_by, notes, recurring_interval_days, safety_inspection_required, equipment_needed, downtime_hours) VALUES
(1,1,'Pitch_Repair','Reseeding and aeration','2023-09-01','2023-09-07','2023-09-02','2023-09-06','GreenFields Co',10000,9500,'High','Completed','OpsManager','FacilitiesHead','All good',0,1,'SeedingMachine',48),
(2,2,'Electrical','Upgrade stadium lighting','2023-10-15','2023-10-20','2023-10-16','2023-10-19','PowerPlus Ltd',25000,26000,'Medium','Completed','OpsManager','FacilitiesHead','Minor delays',365,1,'LiftingCrane',24),
(3,3,'Seating','Replace damaged seats','2023-11-05','2023-11-12','2023-11-06','2023-11-11','SeatWorks Inc',8000,7500,'Low','Completed','OpsManager','FacilitiesHead','Reused some parts',0,0,'WrenchSet',72);

-- Details of fan‑club organised events
CREATE TABLE Fan_Club_Event_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_club_id INTEGER,
    event_name TEXT,
    event_type TEXT,
    event_date TEXT,
    start_time TEXT,
    end_time TEXT,
    venue TEXT,
    city TEXT,
    expected_attendance INTEGER,
    actual_attendance INTEGER,
    organizer_contact TEXT,
    sponsor TEXT,
    ticket_price INTEGER,
    revenue INTEGER,
    expenses INTEGER,
    net_profit INTEGER,
    marketing_channel TEXT,
    feedback_score INTEGER,
    special_guest TEXT,
    notes TEXT
);

INSERT INTO Fan_Club_Event_Details (id, fan_club_id, event_name, event_type, event_date, start_time, end_time, venue, city, expected_attendance, actual_attendance, organizer_contact, sponsor, ticket_price, revenue, expenses, net_profit, marketing_channel, feedback_score, special_guest, notes) VALUES
(1,101,'Season Kickoff','Meetup','2023-08-01','18:00','20:00','Clubhouse','London',200,190,'John Doe','BrandX',20,3800,1200,2600,'Email',8,'Former Player','Successful launch'),
(2,102,'Charity Match','Match','2023-09-10','15:00','18:00','City Stadium','Manchester',500,480,'Jane Smith','CharityOrg',30,14400,5000,9400,'SocialMedia',9,'Local Celebrity','Full houses'),
(3,103,'Fan Workshop','Workshop','2023-10-20','10:00','13:00','Training Center','Birmingham',150,140,'Mike Lee','GearCo',15,2100,800,1300,'Flyers',7,'Coach Alex','Good engagement');

-- Channels through which teams sell merchandise
CREATE TABLE Team_Merchandise_Sales_Channel (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    channel_name TEXT,
    channel_type TEXT,
    launch_date TEXT,
    active_status TEXT,
    monthly_sales_volume INTEGER,
    monthly_revenue INTEGER,
    average_order_value INTEGER,
    return_rate_percent INTEGER,
    marketing_budget INTEGER,
    regions_covered TEXT,
    contact_person TEXT,
    contact_email TEXT,
    notes TEXT,
    last_updated TEXT,
    inventory_sync_status TEXT,
    promotional_campaign TEXT,
    commission_rate_percent INTEGER,
    shipping_provider TEXT,
    average_delivery_days INTEGER
);

INSERT INTO Team_Merchandise_Sales_Channel (id, team_id, channel_name, channel_type, launch_date, active_status, monthly_sales_volume, monthly_revenue, average_order_value, return_rate_percent, marketing_budget, regions_covered, contact_person, contact_email, notes, last_updated, inventory_sync_status, promotional_campaign, commission_rate_percent, shipping_provider, average_delivery_days) VALUES
(1,1,'OfficialOnlineStore','ECommerce','2020-01-01','Active',1200,36000,30,2,5000,'Europe','Alice Brown','alice@teamstore.com','Top seller','2023-07-01','Synced','Summer2023',5,'DHL',3),
(2,2,'PartnerRetail','Physical','2019-05-15','Active',800,24000,30,3,3000,'NorthAmerica','Bob Green','bob@partner.com','Seasonal items','2023-07-01','Synced','Winter2023',6,'UPS',5),
(3,3,'MobileApp','App','2021-03-20','Active',500,15000,30,1,2000,'Asia','Carol White','carol@appstore.com','New launch','2023-07-01','Synced','Launch2023',4,'FedEx',2);

-- Summary of league financial audits
CREATE TABLE League_Financial_Audit_Summary (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    audit_year INTEGER,
    total_revenue INTEGER,
    total_expenses INTEGER,
    net_income INTEGER,
    sponsorship_income INTEGER,
    broadcasting_income INTEGER,
    ticket_sales_income INTEGER,
    merchandise_income INTEGER,
    player_transfer_income INTEGER,
    player_transfer_expenses INTEGER,
    operational_costs INTEGER,
    audit_firm TEXT,
    audit_start_date TEXT,
    audit_end_date TEXT,
    audit_status TEXT,
    auditor_name TEXT,
    notes TEXT,
    compliance_score INTEGER,
    risk_rating TEXT
);

INSERT INTO League_Financial_Audit_Summary (id, league_id, audit_year, total_revenue, total_expenses, net_income, sponsorship_income, broadcasting_income, ticket_sales_income, merchandise_income, player_transfer_income, player_transfer_expenses, operational_costs, audit_firm, audit_start_date, audit_end_date, audit_status, auditor_name, notes, compliance_score, risk_rating) VALUES
(1,1,2022,5000000,4200000,800000,1200000,800000,1000000,300000,200000,200000,800000,'AuditCo','2023-01-10','2023-02-15','Completed','Emily Clark','All standards met',95,'Low'),
(2,2,2022,4000000,3500000,500000,900000,600000,800000,200000,150000,150000,600000,'FinanceAudit','2023-01-12','2023-02-20','Completed','Michael Brown','Minor adjustments',90,'Medium'),
(3,3,2022,3000000,2700000,300000,700000,500000,600000,100000,100000,100000,500000,'ClearAudit','2023-01-15','2023-02-25','Completed','Sarah Lee','No issues',92,'Low');

-- Records of player nutrition supplements
CREATE TABLE Player_Nutrition_Supply (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    supplement_name TEXT,
    supplier TEXT,
    dosage_mg INTEGER,
    frequency_per_day INTEGER,
    start_date TEXT,
    end_date TEXT,
    compliance_rate_percent INTEGER,
    side_effects TEXT,
    notes TEXT,
    verified_by TEXT,
    verification_date TEXT,
    cost_per_month INTEGER,
    total_cost INTEGER,
    batch_number TEXT,
    expiry_date TEXT,
    storage_location TEXT,
    admin_method TEXT,
    athlete_feedback_score INTEGER,
    medical_approval TEXT
);

INSERT INTO Player_Nutrition_Supply (id, player_id, supplement_name, supplier, dosage_mg, frequency_per_day, start_date, end_date, compliance_rate_percent, side_effects, notes, verified_by, verification_date, cost_per_month, total_cost, batch_number, expiry_date, storage_location, admin_method, athlete_feedback_score, medical_approval) VALUES
(1,1001,'Protein Powder','NutriFit','30000','2','2023-01-01','2023-12-31','95','None','No issues','Dr. Allen','2023-01-02','50','600','B123','2024-06-01','LockerRoom','Oral','9','Approved'),
(2,1002,'Vitamin D','HealthPlus','2000','1','2023-03-15','2023-09-15','90','Mild stomach','Monitor intake','Dr. Baker','2023-03-16','20','120','V456','2024-01-01','Gym','Oral','8','Approved'),
(3,1003,'Omega 3','OmegaLife','1000','1','2023-05-01','2023-11-30','85','None','Increase in recovery','Dr. Clark','2023-05-02','30','180','O789','2024-02-15','StorageRoom','Oral','7','Approved');

-- Resources allocated for sponsor activations
CREATE TABLE Sponsor_Activation_Resources (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    activation_id INTEGER,
    resource_type TEXT,
    description TEXT,
    allocated_budget INTEGER,
    spent_budget INTEGER,
    start_date TEXT,
    end_date TEXT,
    responsible_person TEXT,
    status TEXT,
    deliverable_due_date TEXT,
    actual_deliverable_date TEXT,
    creative_asset_id TEXT,
    media_channel TEXT,
    impressions_target INTEGER,
    impressions_actual INTEGER,
    click_through_rate REAL,
    conversion_rate REAL,
    notes TEXT,
    last_updated TEXT
);

INSERT INTO Sponsor_Activation_Resources (id, sponsor_id, activation_id, resource_type, description, allocated_budget, spent_budget, start_date, end_date, responsible_person, status, deliverable_due_date, actual_deliverable_date, creative_asset_id, media_channel, impressions_target, impressions_actual, click_through_rate, conversion_rate, notes, last_updated) VALUES
(1,201,301,'Banner','Stadium side banners','50000','35000','2023-04-01','2023-06-30','Laura Kim','InProgress','2023-05-15','2023-05-20','A100','Outdoor','1000000','800000',0.05,0.02,'On schedule','2023-07-01'),
(2,202,302,'SocialMedia','Instagram campaign','30000','30000','2023-05-01','2023-07-31','Mark Lee','Completed','2023-06-01','2023-05-30','A200','Instagram','500000','600000',0.07,0.03,'Exceeded metrics','2023-08-01'),
(3,203,303,'TVSpot','30 sec TV spot','80000','75000','2023-06-01','2023-09-30','Nina Patel','InProgress','2023-08-15','2023-08-20','A300','Television','2000000','1800000',0.04,0.015,'Awaiting final edit','2023-09-01');

-- Security staff shift assignments for stadium events
CREATE TABLE Stadium_Security_Staff_Shifts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    staff_id INTEGER,
    shift_date TEXT,
    shift_start_time TEXT,
    shift_end_time TEXT,
    role TEXT,
    supervisor_id INTEGER,
    area_assigned TEXT,
    equipment_issued TEXT,
    shift_status TEXT,
    incident_reported INTEGER,
    overtime_hours INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    shift_type TEXT,
    certification_level TEXT,
    language_spoken TEXT,
    shift_id_code TEXT
);

INSERT INTO Stadium_Security_Staff_Shifts (id, stadium_id, staff_id, shift_date, shift_start_time, shift_end_time, role, supervisor_id, area_assigned, equipment_issued, shift_status, incident_reported, overtime_hours, notes, created_at, updated_at, shift_type, certification_level, language_spoken, shift_id_code) VALUES
(1,1,501,'2023-08-15','18:00','02:00','SecurityOfficer',401,'North Gate','Radio,Flashlight','Completed',0,0,'All clear','2023-08-01','2023-08-15','Evening','Level2','English','S001'),
(2,2,502,'2023-08-15','09:00','17:00','SecurityOfficer',402,'South Gate','Radio','Completed',1,2,'Handled disturbance','2023-08-01','2023-08-15','Day','Level3','Spanish','S002'),
(3,3,503,'2023-08-15','22:00','06:00','SecuritySupervisor',403,'All Areas','Radio,BodyCam','Completed',0,1,'Patrol completed','2023-08-01','2023-08-15','Night','Level4','French','S003');

-- Digital content pieces published across platforms
CREATE TABLE Digital_Content_Publication (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    content_id INTEGER,
    title TEXT,
    content_type TEXT,
    author TEXT,
    creation_date TEXT,
    publication_date TEXT,
    platform TEXT,
    url TEXT,
    view_count INTEGER,
    like_count INTEGER,
    share_count INTEGER,
    comment_count INTEGER,
    duration_seconds INTEGER,
    language TEXT,
    tags TEXT,
    category TEXT,
    rating REAL,
    is_featured INTEGER,
    moderation_status TEXT,
    notes TEXT
);

INSERT INTO Digital_Content_Publication (id, content_id, title, content_type, author, creation_date, publication_date, platform, url, view_count, like_count, share_count, comment_count, duration_seconds, language, tags, category, rating, is_featured, moderation_status, notes) VALUES
(1,10001,'Match Highlights','Video','John Reporter','2023-07-20','2023-07-21','YouTube','http://youtube.com/vid1',50000,4000,2000,500,300,'English','highlights,match','Sports',4.5,1,'Approved','High engagement'),
(2,10002,'Player Interview','Article','Emma Writer','2023-07-22','2023-07-22','Website','http://site.com/article1',15000,800,300,120,0,'English','interview,player','News',4.2,0,'Approved','Positive feedback'),
(3,10003,'Season Preview','Podcast','Mike Host','2023-07-25','2023-07-25','Spotify','http://spotify.com/episode1',8000,600,250,80,1800,'English','preview,season','Analysis',4.0,0,'Pending','Awaiting final edit');

-- Tracking travel‑related CO2 emissions
CREATE TABLE Travel_Emission_Tracking (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    travel_id INTEGER,
    employee_id INTEGER,
    travel_type TEXT,
    origin TEXT,
    destination TEXT,
    departure_date TEXT,
    return_date TEXT,
    distance_km INTEGER,
    transport_mode TEXT,
    fuel_type TEXT,
    emission_factor REAL,
    estimated_co2_kg REAL,
    actual_co2_kg REAL,
    carbon_offset_used INTEGER,
    offset_amount_kg REAL,
    travel_purpose TEXT,
    cost_usd INTEGER,
    notes TEXT,
    recorded_by TEXT,
    record_date TEXT
);

INSERT INTO Travel_Emission_Tracking (id, travel_id, employee_id, travel_type, origin, destination, departure_date, return_date, distance_km, transport_mode, fuel_type, emission_factor, estimated_co2_kg, actual_co2_kg, carbon_offset_used, offset_amount_kg, travel_purpose, cost_usd, notes, recorded_by, record_date) VALUES
(1,3001,601,'Business','London','Manchester','2023-08-01','2023-08-02',300,'Train','Electric',0.04,12,11,1,5,'Scout match','200','No issues','Anna','2023-08-03'),
(2,3002,602,'Conference','Paris','Berlin','2023-09-10','2023-09-12',1050,'Plane','JetA',0.25,262.5,260,1,10,'Attend conference','1200','Carbon offset purchased','Ben','2023-09-13'),
(3,3003,603,'Training','Madrid','Valencia','2023-10-05','2023-10-05',350,'Bus','Diesel',0.15,52.5,50,0,0,'Team training','100','Efficient route','Clara','2023-10-06');