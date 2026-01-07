-- Table storing minutes and actions from head coach meetings
CREATE TABLE Coach_Meeting_Minutes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    meeting_date TEXT,
    meeting_time TEXT,
    coach_id INTEGER,
    venue TEXT,
    agenda_topic_1 TEXT,
    agenda_topic_2 TEXT,
    agenda_topic_3 TEXT,
    discussion_points_1 TEXT,
    discussion_points_2 TEXT,
    discussion_points_3 TEXT,
    decision_made_1 TEXT,
    decision_made_2 TEXT,
    decision_made_3 TEXT,
    action_item_1 TEXT,
    action_item_2 TEXT,
    action_item_3 TEXT,
    responsible_staff_1 TEXT,
    responsible_staff_2 TEXT,
    responsible_staff_3 TEXT,
    follow_up_date TEXT,
    notes TEXT
);

INSERT INTO Coach_Meeting_Minutes (meeting_date,meeting_time,coach_id,venue,agenda_topic_1,agenda_topic_2,agenda_topic_3,discussion_points_1,discussion_points_2,discussion_points_3,decision_made_1,decision_made_2,decision_made_3,action_item_1,action_item_2,action_item_3,responsible_staff_1,responsible_staff_2,responsible_staff_3,follow_up_date,notes) VALUES ('2025-08-01','10:00',101,'Headquarters','Tactical Review','Fitness Updates','Transfer Targets','Review of last match','Injury report','Potential signings','Adjust pressing style','Increase conditioning sessions','Allocate scouting budget','Update playbook','Schedule physiotherapy','Contact agent','JohnDoe','JaneSmith','MikeLee','2025-08-15','All decisions approved');
INSERT INTO Coach_Meeting_Minutes (meeting_date,meeting_time,coach_id,venue,agenda_topic_1,agenda_topic_2,agenda_topic_3,discussion_points_1,discussion_points_2,discussion_points_3,decision_made_1,decision_made_2,decision_made_3,action_item_1,action_item_2,action_item_3,responsible_staff_1,responsible_staff_2,responsible_staff_3,follow_up_date,notes) VALUES ('2025-09-12','14:30',102,'TrainingGround','Set Piece Plans','Youth Integration','Contract Renewals','New set piece routines','Promote U21 players','Salary adjustments','Adopt new corner kick','Promote 2 U21 forwards','Extend contracts of 3 seniors','Create drill video','Prepare U21 roster','Negotiate contracts','AnnaK','LuisM','SaraP','2025-09-30','Reviewed by board');
INSERT INTO Coach_Meeting_Minutes (meeting_date,meeting_time,coach_id,venue,agenda_topic_1,agenda_topic_2,agenda_topic_3,discussion_points_1,discussion_points_2,discussion_points_3,decision_made_1,decision_made_2,decision_made_3,action_item_1,action_item_2,action_item_3,responsible_staff_1,responsible_staff_2,responsible_staff_3,follow_up_date,notes) VALUES ('2025-10-20','09:15',103,'ClubOffice','Season Goals','Staff Evaluations','Community Outreach','Target points tally','Performance reviews','Charity event planning','Set 85 points goal','Promote assistant coach','Partner with local NGO','Publish season plan','Finalize evaluations','Coordinate event','TomR','EmilyV','NinaC','2025-11-01','Minutes circulated');

-- Table defining schedules for medical staff members
CREATE TABLE Medical_Staff_Schedules (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    staff_id INTEGER,
    staff_name TEXT,
    role TEXT,
    shift_date TEXT,
    shift_start TEXT,
    shift_end TEXT,
    location TEXT,
    on_call INTEGER,
    notes TEXT,
    break_start TEXT,
    break_end TEXT,
    overtime_allowed INTEGER,
    max_consecutive_shifts INTEGER,
    training_required TEXT,
    certification_level TEXT,
    emergency_contact TEXT,
    contact_phone TEXT,
    allocated_patients INTEGER,
    equipment_assigned TEXT,
    shift_type TEXT,
    supervisor_id INTEGER
);

INSERT INTO Medical_Staff_Schedules (staff_id,staff_name,role,shift_date,shift_start,shift_end,location,on_call,notes,break_start,break_end,overtime_allowed,max_consecutive_shifts,training_required,certification_level,emergency_contact,contact_phone,allocated_patients,equipment_assigned,shift_type,supervisor_id) VALUES (201,'DrAlice','TeamPhysio','2025-08-05','08:00','16:00','StadiumMed','0','Standard day shift','12:00','12:30','1','5','CPR','Level2','JohnDoe','5551234',12,'Treadmill,Defibrillator','Day',301);
INSERT INTO Medical_Staff_Schedules (staff_id,staff_name,role,shift_date,shift_start,shift_end,location,on_call,notes,break_start,break_end,overtime_allowed,max_consecutive_shifts,training_required,certification_level,emergency_contact,contact_phone,allocated_patients,equipment_assigned,shift_type,supervisor_id) VALUES (202,'NurseBob','HeadNurse','2025-08-05','14:00','22:00','TrainingCenter','1','Covering evening matches','18:00','18:30','1','4','FirstAid','Level3','MikeLee','5555678',8,'PortableUltrasound','Evening',302);
INSERT INTO Medical_Staff_Schedules (staff_id,staff_name,role,shift_date,shift_start,shift_end,location,on_call,notes,break_start,break_end,overtime_allowed,max_consecutive_shifts,training_required,certification_level,emergency_contact,contact_phone,allocated_patients,equipment_assigned,shift_type,supervisor_id) VALUES (203,'TherapistCara','RehabTherapist','2025-08-06','09:00','17:00','ClubGym','0','Rehab sessions','13:00','13:20','0','6','RehabTech','Level1','SarahK','5559012',5,'ExerciseBike','Day',303);

-- Table tracking insurance policies for stadium venues
CREATE TABLE Venue_Insurance_Policies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    policy_number TEXT,
    insurer_name TEXT,
    coverage_type TEXT,
    start_date TEXT,
    end_date TEXT,
    premium_amount REAL,
    deductible_amount REAL,
    liability_limit REAL,
    property_limit REAL,
    event_cancellation_cover INTEGER,
    terrorism_cover INTEGER,
    weather_related_cover INTEGER,
    additional_notes TEXT,
    claim_history TEXT,
    broker_contact TEXT,
    broker_phone TEXT,
    renewal_notice_date TEXT,
    policy_status TEXT,
    underwriting_agency TEXT,
    risk_assessment_score INTEGER
);

INSERT INTO Venue_Insurance_Policies (venue_id,policy_number,insurer_name,coverage_type,start_date,end_date,premium_amount,deductible_amount,liability_limit,property_limit,event_cancellation_cover,terrorism_cover,weather_related_cover,additional_notes,claim_history,broker_contact,broker_phone,renewal_notice_date,policy_status,underwriting_agency,risk_assessment_score) VALUES (1,'VINS001','GlobalInsure','Comprehensive','2025-01-01','2025-12-31',125000.00,5000.00,2000000.00,1500000.00,1,1,1,'Includes cyber risk','No claims filed','LauraB','5551111','2024-12-01','Active','RiskAnalyticsCo',85);
INSERT INTO Venue_Insurance_Policies (venue_id,policy_number,insurer_name,coverage_type,start_date,end_date,premium_amount,deductible_amount,liability_limit,property_limit,event_cancellation_cover,terrorism_cover,weather_related_cover,additional_notes,claim_history,broker_contact,broker_phone,renewal_notice_date,policy_status,underwriting_agency,risk_assessment_score) VALUES (2,'VINS002','SecureCover','Liability','2025-03-15','2026-03-14',80000.00,3000.00,1000000.00,0,1,0,0,'Limited to match days','One minor claim in 2024','MarkD','5552222','2025-02-15','Active','SureRisk',78);
INSERT INTO Venue_Insurance_Policies (venue_id,policy_number,insurer_name,coverage_type,start_date,end_date,premium_amount,deductible_amount,liability_limit,property_limit,event_cancellation_cover,terrorism_cover,weather_related_cover,additional_notes,claim_history,broker_contact,broker_phone,renewal_notice_date,policy_status,underwriting_agency,risk_assessment_score) VALUES (3,'VINS003','AlliedRisk','Property','2024-07-01','2025-06-30',60000.00,4000.00,0,1200000.00,0,0,1,'Covers flood damage','No claims','NinaS','5553333','2024-06-01','Pending Renewal','AlliedAnalytics',70);

-- Table recording official communications from the league office
CREATE TABLE League_Official_Communications (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    communication_id TEXT,
    league_id INTEGER,
    subject TEXT,
    sender TEXT,
    recipient_group TEXT,
    sent_date TEXT,
    read_by_count INTEGER,
    attachment_count INTEGER,
    priority_level TEXT,
    confidentiality TEXT,
    message_body TEXT,
    action_required INTEGER,
    deadline TEXT,
    follow_up_status TEXT,
    linked_document_id TEXT,
    distribution_method TEXT,
    language TEXT,
    version_number INTEGER,
    approval_status TEXT,
    notes TEXT
);

INSERT INTO League_Official_Communications (communication_id,league_id,subject,sender,recipient_group,sent_date,read_by_count,attachment_count,priority_level,confidentiality,message_body,action_required,deadline,follow_up_status,linked_document_id,distribution_method,language,version_number,approval_status,notes) VALUES ('LCOM001',1,'Schedule Update','LeagueOffice','AllClubs','2025-07-20',12,2,'High','Public','New match dates for round 5','1','2025-08-01','Pending','DOC123','Email','EN',1,'Approved','Urgent distribution');
INSERT INTO League_Official_Communications (communication_id,league_id,subject,sender,recipient_group,sent_date,read_by_count,attachment_count,priority_level,confidentiality,message_body,action_required,deadline,follow_up_status,linked_document_id,distribution_method,language,version_number,approval_status,notes) VALUES ('LCOM002',2,'Regulation Amendment','ComplianceDept','LegalTeam','2025-06-15',5,1,'Medium','Confidential','Amendment to player eligibility rules','1','2025-07-01','In Review','DOC456','SecurePortal','EN',2,'Pending','Requires legal sign‑off');
INSERT INTO League_Official_Communications (communication_id,league_id,subject,sender,recipient_group,sent_date,read_by_count,attachment_count,priority_level,confidentiality,message_body,action_required,deadline,follow_up_status,linked_document_id,distribution_method,language,version_number,approval_status,notes) VALUES ('LCOM003',3,'Marketing Campaign Launch','PRDept','MediaPartners','2025-05-30',8,3,'Low','Public','Details of the upcoming fan engagement campaign','0','2025-06-15','Completed','DOC789','Newsletter','EN',1,'Approved','Metrics to be tracked');

-- Table describing a team's branding and marketing strategy
CREATE TABLE Team_Brand_Strategy (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    fiscal_year TEXT,
    brand_positioning TEXT,
    primary_color TEXT,
    secondary_color TEXT,
    mascot_name TEXT,
    tagline TEXT,
    target_audience TEXT,
    social_media_platforms TEXT,
    annual_budget REAL,
    sponsorship_focus TEXT,
    merchandise_theme TEXT,
    fan_engagement_initiative TEXT,
    digital_campaign_title TEXT,
    influencer_partners TEXT,
    community_program TEXT,
    logo_update_flag INTEGER,
    logo_version TEXT,
    market_share_goal REAL,
    revenue_target REAL,
    notes TEXT
);

INSERT INTO Team_Brand_Strategy (team_id,fiscal_year,brand_positioning,primary_color,secondary_color,mascot_name,tagline,target_audience,social_media_platforms,annual_budget,sponsorship_focus,merchandise_theme,fan_engagement_initiative,digital_campaign_title,influencer_partners,community_program,logo_update_flag,logo_version,market_share_goal,revenue_target,notes) VALUES (10,'2025','Dynamic and Youthful','Blue','White','Eagle','Fly Higher','YoungAdults','Instagram,Twitter',500000.00,'Tech','Streetwear','Fan of the Month','#RiseTogether','AlexStar,JamieLoop','LocalSchools',1,'v2.1',12.5,750000.00,'First year after rebrand');
INSERT INTO Team_Brand_Strategy (team_id,fiscal_year,brand_positioning,primary_color,secondary_color,mascot_name,tagline,target_audience,social_media_platforms,annual_budget,sponsorship_focus,merchandise_theme,fan_engagement_initiative,digital_campaign_title,influencer_partners,community_program,logo_update_flag,logo_version,market_share_goal,revenue_target,notes) VALUES (11,'2025','Heritage and Strength','Red','Gold','Lion','Heart of the City','AllFans','Facebook,YouTube',620000.00,'Automotive','Classic','Legends Night','#RoarAgain','MikeForce,LaraTune','YouthCoaches',0,'v1.0',10.0,820000.00,'Leveraging historical success');
INSERT INTO Team_Brand_Strategy (team_id,fiscal_year,brand_positioning,primary_color,secondary_color,mascot_name,tagline,target_audience,social_media_platforms,annual_budget,sponsorship_focus,merchandise_theme,fan_engagement_initiative,digital_campaign_title,influencer_partners,community_program,logo_update_flag,logo_version,market_share_goal,revenue_target,notes) VALUES (12,'2025','Innovative Edge','Green','Black','Falcon','Above All','TechSavvy','TikTok,Discord',450000.00,'Gaming','Futuristic','Virtual Meetups','#NextGenPlay','GamerX,PixelPro','STEMOutreach',1,'v3.0',8.0,600000.00,'Focus on e‑sports integration');

-- Table cataloguing digital collectible items owned by fans
CREATE TABLE Fan_Digital_Collectible_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    collectible_id TEXT,
    collectible_name TEXT,
    series_name TEXT,
    edition_number INTEGER,
    rarity_level TEXT,
    acquisition_date TEXT,
    acquisition_method TEXT,
    blockchain_platform TEXT,
    token_id TEXT,
    current_market_value REAL,
    last_trade_date TEXT,
    trade_volume INTEGER,
    metadata_uri TEXT,
    is_active INTEGER,
    display_order INTEGER,
    special_attributes TEXT,
    creator_name TEXT,
    creator_profile_url TEXT,
    notes TEXT
);

INSERT INTO Fan_Digital_Collectible_Inventory (fan_id,collectible_id,collectible_name,series_name,edition_number,rarity_level,acquisition_date,acquisition_method,blockchain_platform,token_id,current_market_value,last_trade_date,trade_volume,metadata_uri,is_active,display_order,special_attributes,creator_name,creator_profile_url,notes) VALUES (501,'DC001','GoldenBoot','Season2025','1','Legendary','2025-07-10','Purchase','Ethereum','0xABC123',2500.00,'2025-07-15',3,'ipfs://QmGoldBoot','1',1,'Glowing','ArtistOne','http://artistone.com','First mint');
INSERT INTO Fan_Digital_Collectible_Inventory (fan_id,collectible_id,collectible_name,series_name,edition_number,rarity_level,acquisition_date,acquisition_method,blockchain_platform,token_id,current_market_value,last_trade_date,trade_volume,metadata_uri,is_active,display_order,special_attributes,creator_name,creator_profile_url,notes) VALUES (502,'DC002','StadiumSeat','VenueSeries','45','Rare','2025-08-01','Airdrop','Polygon','0xDEF456',150.00,'2025-08-05',1,'ipfs://QmSeat','1',5,'SeatView','DesignerA','http://designera.com','Limited to 1000');
INSERT INTO Fan_Digital_Collectible_Inventory (fan_id,collectible_id,collectible_name,series_name,edition_number,rarity_level,acquisition_date,acquisition_method,blockchain_platform,token_id,current_market_value,last_trade_date,trade_volume,metadata_uri,is_active,display_order,special_attributes,creator_name,creator_profile_url,notes) VALUES (503,'DC003','VictoryBadge','ChampionshipPack','12','Common','2025-07-20','Reward','Solana','0xGHI789',25.00,NULL,0,'ipfs://QmBadge','1',10,'Animated','TeamStudio','http://teamstudio.com','Earned after win');

-- Table tracking emergency drills conducted at stadiums
CREATE TABLE Stadium_Emergency_Drills (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    drill_date TEXT,
    drill_type TEXT,
    lead_coordinator TEXT,
    participants_count INTEGER,
    scenario_description TEXT,
    duration_minutes INTEGER,
    evacuation_time_seconds INTEGER,
    communication_method TEXT,
    equipment_used TEXT,
    drill_success_flag INTEGER,
    issues_identified TEXT,
    corrective_actions TEXT,
    next_drill_date TEXT,
    external_agency_involved TEXT,
    weather_conditions TEXT,
    drill_notes TEXT,
    audit_status TEXT,
    auditor_name TEXT,
    audit_date TEXT
);

INSERT INTO Stadium_Emergency_Drills (venue_id,drill_date,drill_type,lead_coordinator,participants_count,scenario_description,duration_minutes,evacuation_time_seconds,communication_method,equipment_used,drill_success_flag,issues_identified,corrective_actions,next_drill_date,external_agency_involved,weather_conditions,drill_notes,audit_status,auditor_name,audit_date) VALUES (1,'2025-06-15','Fire Evacuation','JohnDoe',150,'Simulated fire in main concourse',45,320,'PA System','FireAlarms,Extinguishers',1,'None','N/A','2025-12-15','FireDept','Clear','All exits functional', 'Passed','EmilyK','2025-06-20');
INSERT INTO Stadium_Emergency_Drills (venue_id,drill_date,drill_type,lead_coordinator,participants_count,scenario_description,duration_minutes,evacuation_time_seconds,communication_method,equipment_used,drill_success_flag,issues_identified,corrective_actions,next_drill_date,external_agency_involved,weather_conditions,drill_notes,audit_status,auditor_name,audit_date) VALUES (2,'2025-08-03','Active Shooter','MikeLee',200,'Mock active shooter scenario',60,480,'Mobile Alerts','PA System, WalkieTalkies',0,'Delayed response at Gate 4','Retrain security staff', '2026-02-03','PoliceDept','Rain','Need faster lockdown', 'Failed','CarlosR','2025-08-10');
INSERT INTO Stadium_Emergency_Drills (venue_id,drill_date,drill_type,lead_coordinator,participants_count,scenario_description,duration_minutes,evacuation_time_seconds,communication_method,equipment_used,drill_success_flag,issues_identified,corrective_actions,next_drill_date,external_agency_involved,weather_conditions,drill_notes,audit_status,auditor_name,audit_date) VALUES (3,'2025-09-20','Medical Emergency','SaraP',120,'Simulated mass casualty',50,350,'Radio','AEDs, FirstAidKits',1,'Minor supply shortage','Update inventory list','2026-03-20','EMS','Clear','Efficient triage', 'Passed','LiamT','2025-09-25');

-- Table logging GPS tracks of player training sessions
CREATE TABLE Player_Training_GPS_Tracks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    session_date TEXT,
    start_time TEXT,
    end_time TEXT,
    total_distance_m REAL,
    avg_speed_kmh REAL,
    max_speed_kmh REAL,
    sprint_count INTEGER,
    acceleration_events INTEGER,
    deceleration_events INTEGER,
    heart_rate_avg INTEGER,
    heart_rate_max INTEGER,
    recovery_time_min REAL,
    terrain_type TEXT,
    gps_device_id TEXT,
    firmware_version TEXT,
    latitude_start REAL,
    longitude_start REAL,
    latitude_end REAL,
    longitude_end REAL,
    notes TEXT
);

INSERT INTO Player_Training_GPS_Tracks (player_api_id,session_date,start_time,end_time,total_distance_m,avg_speed_kmh,max_speed_kmh,sprint_count,acceleration_events,deceleration_events,heart_rate_avg,heart_rate_max,recovery_time_min,terrain_type,gps_device_id,firmware_version,latitude_start,longitude_start,latitude_end,longitude_end,notes) VALUES (1001,'2025-07-12','08:00','09:30',10350.5,12.5,28.4,15,30,28,140,185,8.0,'Synthetic','GPS001','v2.3',41.40338,2.17403,41.40400,2.17500,'Good weather');
INSERT INTO Player_Training_GPS_Tracks (player_api_id,session_date,start_time,end_time,total_distance_m,avg_speed_kmh,max_speed_kmh,sprint_count,acceleration_events,deceleration_events,heart_rate_avg,heart_rate_max,recovery_time_min,terrain_type,gps_device_id,firmware_version,latitude_start,longitude_start,latitude_end,longitude_end,notes) VALUES (1002,'2025-07-13','10:00','11:15',8750.2,10.2,24.1,10,22,20,135,178,7.5,'Grass','GPS002','v2.5',41.40200,2.17200,41.40300,2.17350,'Light drizzle');
INSERT INTO Player_Training_GPS_Tracks (player_api_id,session_date,start_time,end_time,total_distance_m,avg_speed_kmh,max_speed_kmh,sprint_count,acceleration_events,deceleration_events,heart_rate_avg,heart_rate_max,recovery_time_min,terrain_type,gps_device_id,firmware_version,latitude_start,longitude_start,latitude_end,longitude_end,notes) VALUES (1003,'2025-07-14','15:00','16:30',11200.0,13.0,30.0,18,35,32,145,190,9.0,'Hybrid','GPS003','v2.4',41.40150,2.17150,41.40280,2.17280,'Sunny, high humidity');

-- Table storing metadata for archived match video files
CREATE TABLE Match_Video_Archive_Metadata (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    archive_date TEXT,
    video_format TEXT,
    resolution TEXT,
    frame_rate REAL,
    file_size_mb REAL,
    storage_location TEXT,
    checksum_md5 TEXT,
    duration_seconds INTEGER,
    commentary_language TEXT,
    broadcast_network TEXT,
    quality_rating INTEGER,
    access_restriction TEXT,
    tags TEXT,
    edited_by TEXT,
    edit_version INTEGER,
    preservation_status TEXT,
    notes TEXT,
    last_accessed TEXT,
    retention_policy_years INTEGER
);

INSERT INTO Match_Video_Archive_Metadata (match_id,archive_date,video_format,resolution,frame_rate,file_size_mb,storage_location,checksum_md5,duration_seconds,commentary_language,broadcast_network,quality_rating,access_restriction,tags,edited_by,edit_version,preservation_status,notes,last_accessed,retention_policy_years) VALUES (2001,'2025-05-01','MP4','1920x1080',59.94,2500.0,'/archive/2025/05','d41d8cd98f00b204e9800998ecf8427e',5400,'EN','B365','9','Public','Final,Highlights','JohnDoe',1,'Preserved','Standard match recording','2025-09-10',10);
INSERT INTO Match_Video_Archive_Metadata (match_id,archive_date,video_format,resolution,frame_rate,file_size_mb,storage_location,checksum_md5,duration_seconds,commentary_language,broadcast_network,quality_rating,access_restriction,tags,edited_by,edit_version,preservation_status,notes,last_accessed,retention_policy_years) VALUES (2002,'2025-06-15','MKV','3840x2160',60.00,7200.0,'/archive/2025/06','aab2c3d4e5f6071829aabbccddeeff00',7200,'EN','BWH','10','Restricted','SemiFinal,Full','EmilyK',2,'Preserved','4K Ultra HD','2025-10-01',15);
INSERT INTO Match_Video_Archive_Metadata (match_id,archive_date,video_format,resolution,frame_rate,file_size_mb,storage_location,checksum_md5,duration_seconds,commentary_language,broadcast_network,quality_rating,access_restriction,tags,edited_by,edit_version,preservation_status,notes,last_accessed,retention_policy_years) VALUES (2003,'2025-07-20','AVI','1280x720',30.00,1500.0,'/archive/2025/07','ff00ff11aa22bb33cc44dd55ee66ff77',3600,'FR','BWA','7','Public','GroupStage,Highlights','CarlosR',1,'Preserved','Compressed for web','2025-11-05',5);

-- Table documenting legal documents related to sponsorship agreements
CREATE TABLE Sponsor_Legal_Documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    document_id TEXT,
    document_type TEXT,
    signing_date TEXT,
    effective_date TEXT,
    expiration_date TEXT,
    jurisdiction TEXT,
    contract_value REAL,
    currency TEXT,
    amendment_flag INTEGER,
    renewal_option TEXT,
    termination_clause TEXT,
    confidentiality_level TEXT,
    governing_law TEXT,
    attached_file_path TEXT,
    signed_by TEXT,
    witnessed_by TEXT,
    legal_review_status TEXT,
    notes TEXT,
    archive_status TEXT
);

INSERT INTO Sponsor_Legal_Documents (sponsor_id,document_id,document_type,signing_date,effective_date,expiration_date,jurisdiction,contract_value,currency,amendment_flag,renewal_option,termination_clause,confidentiality_level,governing_law,attached_file_path,signed_by,witnessed_by,legal_review_status,notes,archive_status) VALUES (301,'DOC001','MasterAgreement','2025-01-10','2025-02-01','2028-01-31','UK',1200000.00,'GBP',0,'Option2Years','30DaysNotice','High','UKLaw','/legal/docs/DOC001.pdf','AliceM','BobT','Approved','Standard sponsorship','Active');
INSERT INTO Sponsor_Legal_Documents (sponsor_id,document_id,document_type,signing_date,effective_date,expiration_date,jurisdiction,contract_value,currency,amendment_flag,renewal_option,termination_clause,confidentiality_level,governing_law,attached_file_path,signed_by,witnessed_by,legal_review_status,notes,archive_status) VALUES (302,'DOC002','Addendum','2025-06-15','2025-07-01','2026-06-30','DE',300000.00,'EUR',1,'Option1Year','60DaysNotice','Medium','GermanLaw','/legal/docs/DOC002.pdf','KarlS','LenaV','Pending','Increase media rights','Pending');
INSERT INTO Sponsor_Legal_Documents (sponsor_id,document_id,document_type,signing_date,effective_date,expiration_date,jurisdiction,contract_value,currency,amendment_flag,renewal_option,termination_clause,confidentiality_level,governing_law,attached_file_path,signed_by,witnessed_by,legal_review_status,notes,archive_status) VALUES (303,'DOC003','TerminationNotice','2025-09-01','2025-09-05','2025-09-05','FR',0.00,'EUR',0,'None','Immediate','Low','FrenchLaw','/legal/docs/DOC003.pdf','MarieL','JeanP','Approved','Early termination due to breach','Closed');