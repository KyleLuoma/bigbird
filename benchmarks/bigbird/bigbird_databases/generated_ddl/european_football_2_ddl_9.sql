-- Scout Network Contacts
CREATE TABLE Scout_Network_Contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    scout_id INTEGER,
    scout_name TEXT,
    region TEXT,
    country TEXT,
    agency TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    years_experience INTEGER,
    sports_specialty TEXT,
    languages_spoken TEXT,
    last_assignment_date TEXT,
    active INTEGER,
    rating INTEGER,
    notes TEXT,
    linked_player_api_id INTEGER,
    linked_team_api_id INTEGER,
    scouting_budget INTEGER,
    travel_allowance INTEGER,
    insurance_coverage INTEGER,
    contract_start_date TEXT,
    contract_end_date TEXT,
    compliance_status TEXT
);
INSERT INTO Scout_Network_Contacts VALUES (1,101,'Alice Smith','Europe','Germany','GlobalScout','alice.smith@example.com','491511234567',12,'Football','English,German','2023-11-01',1,88,'Top tier scout',202345,301,50000,12000,100000,'2022-01-01','2025-12-31','Compliant');
INSERT INTO Scout_Network_Contacts VALUES (2,102,'Bob Lee','Asia','Japan','EastWing','bob.lee@example.com','81312345678',8,'Baseball','Japanese,English','2023-09-15',1,76,'Regional expert',202678,302,30000,8000,80000,'2021-06-01','2024-05-31','Compliant');
INSERT INTO Scout_Network_Contacts VALUES (3,103,'Carlos Ruiz','South America','Brazil','TalentHub','carlos.ruiz@example.com','5511998765432',15,'Basketball','Portuguese,Spanish','2023-07-20',0,65,'On sabbatical',NULL,NULL,0,0,0,'2020-03-01','2022-02-28','Inactive');

-- Fan Voice Analytics
CREATE TABLE Fan_Voice_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    fan_id INTEGER,
    sentiment_score REAL,
    engagement_level INTEGER,
    favorite_player TEXT,
    favorite_team TEXT,
    comment TEXT,
    rating INTEGER,
    feedback_type TEXT,
    platform TEXT,
    timestamp TEXT,
    geo_region TEXT,
    age_group TEXT,
    gender TEXT,
    purchase_intent INTEGER,
    loyalty_score REAL,
    net_promoter_score INTEGER,
    audio_capture_quality INTEGER,
    video_capture_quality INTEGER,
    sentiment_trend TEXT,
    context_tags TEXT,
    survey_completed INTEGER
);
INSERT INTO Fan_Voice_Analytics VALUES (1,2001,5001,0.85,4,'John Doe','Team A','Great performance!',9,'Positive','Twitter','2023-11-05T14:23:00','Europe','18-25','Male',1,0.92,78,8,7,'Upward','Excitement,TeamSpirit',1);
INSERT INTO Fan_Voice_Analytics VALUES (2,2002,5002,0.45,2,'Jane Roe','Team B','Too defensive',5,'Neutral','Facebook','2023-11-05T15:10:00','NorthAmerica','26-35','Female',0,0.60,45,5,4,'Stable','Critique,Defence',1);
INSERT INTO Fan_Voice_Analytics VALUES (3,2003,5003,0.10,1,'Mike Lee','Team C','Very disappointing',2,'Negative','Instagram','2023-11-05T16:05:00','Asia','36-45','Male',0,0.30,20,2,1,'Downward','Disappointment,Loss',0);

-- Club Electronic Contracts
CREATE TABLE Club_Electronic_Contracts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    contract_id TEXT,
    party_a_id INTEGER,
    party_b_id INTEGER,
    contract_type TEXT,
    start_date TEXT,
    end_date TEXT,
    renewal_option TEXT,
    termination_clause TEXT,
    governing_law TEXT,
    digital_signature_hash TEXT,
    document_version INTEGER,
    storage_location TEXT,
    encryption_method TEXT,
    access_permissions TEXT,
    audit_trail TEXT,
    notification_email TEXT,
    contract_status TEXT,
    total_value INTEGER,
    currency TEXT,
    payment_schedule TEXT,
    amendment_count INTEGER,
    last_amended_date TEXT,
    compliance_check INTEGER
);
INSERT INTO Club_Electronic_Contracts VALUES (1,'EC-2023-001',1001,2001,'Sponsorship','2023-01-01','2025-12-31','Optional','30 days notice','EU','a1b2c3d4e5',1,'/contracts/2023/','AES-256','ReadWrite','log1','legal@club.com','Active',1500000,'EUR','Quarterly',0,NULL,1);
INSERT INTO Club_Electronic_Contracts VALUES (2,'EC-2023-002',1002,2002,'PlayerTransfer','2023-06-15','2028-06-14','Automatic','6 months notice','UK','f6g7h8i9j0',1,'/contracts/2023/','RSA-2048','ReadOnly','log2','agent@agency.com','Pending',7500000,'GBP','Annual',1,'2023-07-01',1);
INSERT INTO Club_Electronic_Contracts VALUES (3,'EC-2023-003',1003,2003,'FacilityLease','2022-09-01','2027-08-31','Optional','90 days notice','US','k1l2m3n4o5',2,'/contracts/2022/','AES-128','ReadWrite','log3','facility@club.com','Expired',2000000,'USD','Monthly',2,'2025-01-15',0);

-- Stadium Lighting Logs
CREATE TABLE Stadium_Lighting_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    log_date TEXT,
    lighting_zone TEXT,
    intensity_lux INTEGER,
    power_consumption_kw REAL,
    maintenance_required INTEGER,
    last_maintenance_date TEXT,
    bulb_type TEXT,
    bulb_count INTEGER,
    avg_lifespan_hours INTEGER,
    vendor TEXT,
    warranty_expiry TEXT,
    control_system_version TEXT,
    emergency_backup_status INTEGER,
    temperature_celsius REAL,
    humidity_percent REAL,
    voltage VARCHAR(10),
    current_amp REAL,
    fault_codes TEXT,
    operator_name TEXT,
    shift TEXT,
    notes TEXT,
    compliance_status TEXT
);
INSERT INTO Stadium_Lighting_Logs VALUES (1,10,'2023-10-30','NorthStands',12000,35.5,0,'2023-06-01','LED','500',50000,'BrightLights','2021-05','v2.3',1,22.5,45.2,'230V',10.5,'','Emily Davis','Night','All systems nominal','Compliant');
INSERT INTO Stadium_Lighting_Logs VALUES (2,11,'2023-10-30','SouthStands',11000,33.2,1,'2023-04-15','Halogen','450',20000,'OldGlow','2019-03','v1.9',0,25.0,50.0,'230V',9.8,'F01','John Miller','Evening','Bulb replacement needed','Pending');
INSERT INTO Stadium_Lighting_Logs VALUES (3,12,'2023-10-30','Roof',13000,40.0,0,'2023-01-20','LED','600',60000,'SkyBright','2022-11','v2.5',1,21.0,40.0,'230V',11.2,'','Laura Chen','Day','Performance optimal','Compliant');

-- Athletic Performance Lab Results
CREATE TABLE Athletic_Performance_Lab_Results (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    athlete_id INTEGER,
    test_date TEXT,
    test_type TEXT,
    result_value REAL,
    unit TEXT,
    normal_range_low REAL,
    normal_range_high REAL,
    technician_name TEXT,
    equipment_id TEXT,
    calibration_date TEXT,
    notes TEXT,
    health_status TEXT,
    recommendation TEXT,
    follow_up_required INTEGER,
    follow_up_date TEXT,
    lab_location TEXT,
    sample_id TEXT,
    fasting_status INTEGER,
    temperature_celsius REAL,
    humidity_percent REAL,
    altitude_meters INTEGER,
    measurement_method TEXT,
    verification_code TEXT,
    compliance_flag INTEGER
);
INSERT INTO Athletic_Performance_Lab_Results VALUES (1,3001,'2023-10-20','VO2Max',58.2,'ml/kg/min',45.0,70.0,'Dr Smith','EQ-001','2023-10-01','Good endurance','Fit','Maintain training',0,NULL,'LabA','SMP-1001',1,22.0,40.0,200,'Treadmill','VC123',1);
INSERT INTO Athletic_Performance_Lab_Results VALUES (2,3002,'2023-10-21','LactateThreshold',4.5,'mmol/L',2.0,5.0,'Dr Lee','EQ-002','2023-10-02','Within limits','Average','Consider interval training',1,'2023-11-15','LabB','SMP-1002',0,21.5,45.0,250,'BloodSample','VC124',1);
INSERT INTO Athletic_Performance_Lab_Results VALUES (3,3003,'2023-10-22','BodyFat',12.8,'%',8.0,15.0,'Dr Patel','EQ-003','2023-10-03','Optimal','Fit','Maintain diet',0,NULL,'LabC','SMP-1003',1,23.0,42.0,180,'DEXA','VC125',1);

-- Agent Representation Details
CREATE TABLE Agent_Representation_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    agent_id INTEGER,
    agent_name TEXT,
    agency TEXT,
    licensed_country TEXT,
    license_number TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    years_active INTEGER,
    client_count INTEGER,
    total_contract_value INTEGER,
    commission_rate_percent REAL,
    specialty TEXT,
    languages_spoken TEXT,
    office_address TEXT,
    tax_id TEXT,
    preferred_payment_method TEXT,
    bank_account TEXT,
    compliance_certified INTEGER,
    last_audit_date TEXT,
    rating INTEGER,
    notes TEXT,
    active INTEGER,
    last_contract_id TEXT
);
INSERT INTO Agent_Representation_Details VALUES (1,4001,'Samantha Green','PrimeAgents','UK','LIC-UK-001','s.green@primeagents.com','447700900123',10,25,20000000,5.5,'Football','English,French','10 Downing St London','UK123456','BankTransfer','GB29NWBK60161331926819',1,'2023-08-15',90,'Top performer',1,'EC-2023-001');
INSERT INTO Agent_Representation_Details VALUES (2,4002,'Liam Wong','AsiaSports','HK','LIC-HK-007','l.wong@asiasports.com','85291234567',7,15,12000000,4.0,'Basketball','Cantonese,English','85 Queen''s Road HK','HK987654','Cheque','HK1234578',1,'2023-07-10',78,'Experienced',1,'EC-2023-010');
INSERT INTO Agent_Representation_Details VALUES (3,4003,'Olga Petrova','EuroTalent','RU','LIC-RU-023','o.petrova@eurotalent.ru','74951234567',12,30,25000000,6.0,'IceHockey','Russian,English','Nevsky Prospect St Petersburg','RU112233','WireTransfer','RU1234567890',0,NULL,65,'Needs compliance update',0,'EC-2022-099');

-- Transfer Rumor Tracker
CREATE TABLE Transfer_Rumor_Tracker (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    rumor_id TEXT,
    source TEXT,
    player_id INTEGER,
    from_club_id INTEGER,
    to_club_id INTEGER,
    rumor_date TEXT,
    credibility_score REAL,
    estimated_fee INTEGER,
    currency TEXT,
    contract_length_years INTEGER,
    agent_id INTEGER,
    status TEXT,
    confirmed INTEGER,
    confirmation_date TEXT,
    notes TEXT,
    media_outlet TEXT,
    social_impact_score REAL,
    fan_reaction TEXT,
    betting_odds REAL,
    last_update TEXT,
    verification_level TEXT,
    archive_flag INTEGER
);
INSERT INTO Transfer_Rumor_Tracker VALUES (1,'RR-2023-001','SportNews','3001',101,202,'2023-10-15',0.78,7500000,'EUR',4,4001,'Open',0,NULL,'Potential summer move','SportNews','0.85','Positive',1.75,'2023-10-20','Medium',0);
INSERT INTO Transfer_Rumor_Tracker VALUES (2,'RR-2023-002','Twitter','3002',102,203,'2023-10-16',0.45,12000000,'GBP',5,4002,'Open',0,NULL,'Linked to agent rumors','Twitter','0.60','Neutral',2.10,'2023-10-21','Low',0);
INSERT INTO Transfer_Rumor_Tracker VALUES (3,'RR-2023-003','InsiderBlog','3003',103,204,'2023-10-17',0.92,5000000,'USD',3,4003,'Confirmed',1,'2023-10-18','Deal signed officially','InsiderBlog','0.95','VeryPositive',1.20,'2023-10-18','High',0);

-- Club Community Investments
CREATE TABLE Club_Community_Investments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    investment_id TEXT,
    club_id INTEGER,
    project_name TEXT,
    project_type TEXT,
    start_date TEXT,
    end_date TEXT,
    budget INTEGER,
    currency TEXT,
    partner_organization TEXT,
    target_audience TEXT,
    expected_benefit TEXT,
    status TEXT,
    progress_percent INTEGER,
    responsible_manager TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    location TEXT,
    sustainability_score REAL,
    community_feedback TEXT,
    impact_metric TEXT,
    reporting_frequency TEXT,
    last_report_date TEXT,
    notes TEXT,
    compliance_flag INTEGER
);
INSERT INTO Club_Community_Investments VALUES (1,'CI-2023-001',101,'Youth Football Academy','Education','2023-01-01','2026-12-31',2000000,'EUR','LocalSchoolBoard','Children 6-16','Active',45,'Maria Lopez','m.lopez@club.com','34912345678','City A',0.88,'Positive','NumberOfGraduates','Quarterly','2023-09-30','Phase 1 completed',1);
INSERT INTO Club_Community_Investments VALUES (2,'CI-2023-002',102,'Green Stadium Initiative','Environmental','2023-03-15','2025-03-14',1500000,'GBP','EcoPartners','Fans and local residents','Reduced carbon footprint','Planning',10,'David Clark','d.clark@club.co.uk','445123456','City B',0.75,'Neutral','CO2ReductionTonnes','SemiAnnual','2023-08-15','Awaiting permits',0);
INSERT INTO Club_Community_Investments VALUES (3,'CI-2023-003',103,'Health & Wellness Center','Health','2022-07-01','2028-06-30',3000000,'USD','HealthNGO','General public','Improved community health','Active',70,'Susan Patel','s.patel@club.com','2125550123','City C',0.92,'Positive','PatientsServed','Annual','2023-06-01','Center opened 2023',1);

-- Player Mental Health Logs
CREATE TABLE Player_Mental_Health_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    log_date TEXT,
    assessment_tool TEXT,
    score REAL,
    interpretation TEXT,
    counselor_id INTEGER,
    session_type TEXT,
    duration_minutes INTEGER,
    follow_up_required INTEGER,
    follow_up_date TEXT,
    medication_prescribed TEXT,
    dosage TEXT,
    notes TEXT,
    confidentiality_level TEXT,
    risk_level TEXT,
    coping_strategies TEXT,
    stressors_identified TEXT,
    sleep_quality INTEGER,
    nutrition_quality INTEGER,
    physical_activity_level INTEGER,
    mood_rating INTEGER,
    support_network TEXT,
    compliance_flag INTEGER
);
INSERT INTO Player_Mental_Health_Logs VALUES (1,3001,'2023-10-10','PHQ-9',5.0,'Mild','101','Individual',60,0,NULL,NULL,NULL,'Discussed coping strategies','High','Low','Breathing exercises','Match pressure','7','8','6','7','Family','1');
INSERT INTO Player_Mental_Health_Logs VALUES (2,3002,'2023-10-12','GAD-7',10.0,'Moderate','102','Group',90,1,'2023-11-01','Sertraline','50mg','Recommended therapy','Medium','Medium','Mindfulness','Injury recovery','5','6','5','5','Teammates','1');
INSERT INTO Player_Mental_Health_Logs VALUES (3,3003,'2023-10-15','PHQ-9',14.0,'Moderately severe','103','Individual',75,1,'2023-10-30','Fluoxetine','20mg','Referred to psychiatrist','Low','High','CBT','Personal issues','4','5','4','3','Partner','1');

-- Sponsor Visibility Reports
CREATE TABLE Sponsor_Visibility_Reports (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    event_id INTEGER,
    report_date TEXT,
    visibility_type TEXT,
    impressions INTEGER,
    reach INTEGER,
    engagement INTEGER,
    cost_per_impression REAL,
    cost_per_engagement REAL,
    duration_seconds INTEGER,
    placement_location TEXT,
    media_channel TEXT,
    audience_demographics TEXT,
    brand_sentiment_score REAL,
    activation_details TEXT,
    compliance_status TEXT,
    approval_status TEXT,
    notes TEXT,
    auditor_name TEXT,
    audit_date TEXT,
    verification_code TEXT,
    archived INTEGER
);
INSERT INTO Sponsor_Visibility_Reports VALUES (1,2001,5001,'2023-10-20','Banner','150000','120000','3000',0.02,0.10,30,'StadiumSide','TV','Male18-35',0.85,'Logo on jersey','Compliant','Approved','Good exposure','Jane Doe','2023-10-21','VRF123',0);
INSERT INTO Sponsor_Visibility_Reports VALUES (2,2002,5002,'2023-10-21','Digital','200000','180000','5000',0.015,0.08,45,'LEDPanel','Online','Female25-45',0.78,'Social media campaign','Compliant','Pending','Pending metrics','John Smith','2023-10-22','VRF124',0);
INSERT INTO Sponsor_Visibility_Reports VALUES (3,2003,5003,'2023-10-22','Print','80000','75000','1200',0.025,0.12,0,'ProgramBook','Print','Mixed',0.70,'Ad page 12','NonCompliant','Rejected','Issues with placement','Emily Clark','2023-10-23','VRF125',1);