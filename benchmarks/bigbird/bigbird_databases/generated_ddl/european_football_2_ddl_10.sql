-- Global_shop_analytics: web shop performance metrics
CREATE TABLE Global_Shop_Analytics (
    shop_id INTEGER,
    region TEXT,
    total_visits INTEGER,
    avg_time_spent REAL,
    conversion_rate REAL,
    mobile_visits INTEGER,
    desktop_visits INTEGER,
    referral_source TEXT,
    campaign_id INTEGER,
    items_viewed INTEGER,
    items_added_cart INTEGER,
    items_purchased INTEGER,
    revenue REAL,
    bounce_rate REAL,
    exit_rate REAL,
    page_load_time REAL,
    unique_visitors INTEGER,
    returning_visitors INTEGER,
    cart_abandon_rate REAL,
    avg_order_value REAL,
    max_order_value REAL
);
INSERT INTO Global_Shop_Analytics VALUES (1,'NorthAmerica',120000,3.5,0.045,80000,40000,'Organic',101,350000,15000,1200,84500.75,0.42,0.33,2.1,95000,25000,0.60,70.42,150.00);
INSERT INTO Global_Shop_Analytics VALUES (2,'Europe',95000,4.2,0.038,60000,35000,'PaidSearch',102,280000,13000,950,67200.30,0.38,0.29,2.3,80000,15000,0.55,71.00,165.50);
INSERT INTO Global_Shop_Analytics VALUES (3,'Asia',180000,2.9,0.052,130000,50000,'Referral',103,470000,21000,1800,124300.10,0.45,0.36,1.9,140000,46000,0.62,68.90,200.00);

-- Fan_seasonal_engagement: fan interaction metrics per season
CREATE TABLE Fan_Seasonal_Engagement (
    season_year INTEGER,
    fan_id INTEGER,
    region TEXT,
    social_posts INTEGER,
    likes INTEGER,
    shares INTEGER,
    comments INTEGER,
    watch_hours REAL,
    merchandise_spent REAL,
    tickets_purchased INTEGER,
    events_attended INTEGER,
    newsletter_subscriptions INTEGER,
    surveys_completed INTEGER,
    loyalty_points INTEGER,
    referrals INTEGER,
    mobile_app_sessions INTEGER,
    avg_session_duration REAL,
    churn_risk_score REAL,
    net_promoter_score INTEGER,
    favorite_team_id INTEGER
);
INSERT INTO Fan_Seasonal_Engagement VALUES (2023,1001,'SouthAmerica',340,7800,420,190,1250.5,560.75,12,3,1,5,3000,15,78,9.2,0.25,62,23);
INSERT INTO Fan_Seasonal_Engagement VALUES (2023,1002,'Europe',210,5400,310,150,980.3,430.20,8,1,2,3,2100,9,65,8.5,0.30,55,45);
INSERT INTO Fan_Seasonal_Engagement VALUES (2023,1003,'Asia',475,10200,610,275,1560.8,720.40,20,5,3,7,4200,22,90,10.1,0.20,70,11);

-- Environmental_sustainability_metrics: stadium environmental data
CREATE TABLE Environmental_Sustainability_Metrics (
    stadium_id INTEGER,
    record_date TEXT,
    carbon_emissions REAL,
    water_usage REAL,
    energy_consumption REAL,
    waste_generated REAL,
    recycling_rate REAL,
    renewable_energy_pct REAL,
    transport_mode_share REAL,
    avg_temperature REAL,
    humidity REAL,
    solar_panel_output REAL,
    wind_turbine_output REAL,
    heat_pump_usage REAL,
    green_certification_level TEXT,
    noise_level_db REAL,
    air_quality_index INTEGER,
    lighting_efficiency REAL,
    hvac_efficiency REAL,
    rainwater_harvested REAL,
    biodiversity_index REAL
);
INSERT INTO Environmental_Sustainability_Metrics VALUES (10,'2023-08-15',1250.5,8200.0,34000.2,1500.0,0.48,0.35,0.12,22.5,65,500.0,0.0,300.0,'Gold',68.2,42,0.85,0.78,1200.0,0.67);
INSERT INTO Environmental_Sustainability_Metrics VALUES (11,'2023-08-15',980.3,7500.5,29500.7,1300.5,0.52,0.40,0.15,24.1,60,480.0,150.0,250.0,'Silver',70.1,38,0.88,0.80,1100.0,0.72);
INSERT INTO Environmental_Sustainability_Metrics VALUES (12,'2023-08-15',1125.0,7900.2,31500.0,1400.8,0.46,0.32,0.10,23.0,63,490.0,0.0,280.0,'Platinum',66.5,40,0.90,0.82,1150.0,0.70);

-- Content_production_logs: media content creation records
CREATE TABLE Content_Production_Logs (
    content_id INTEGER,
    title TEXT,
    production_date TEXT,
    producer_id INTEGER,
    camera_count INTEGER,
    crew_size INTEGER,
    duration_minutes INTEGER,
    format TEXT,
    resolution TEXT,
    frame_rate REAL,
    language TEXT,
    subtitles_available TEXT,
    licensing_rights TEXT,
    platform_distribution TEXT,
    initial_view_count INTEGER,
    engagement_score REAL,
    edit_cycles INTEGER,
    budget_usd REAL,
    post_production_days INTEGER,
    rating REAL,
    content_type TEXT
);
INSERT INTO Content_Production_Logs VALUES (2001,'MatchHighlights','2023-07-20',501,3,15,12,'MP4','1080p',30.0,'English','Yes','Full','Web,Social',45000,78.5,2,12000.0,5,8.7,'Video');
INSERT INTO Content_Production_Logs VALUES (2002,'PlayerInterview','2023-07-22',502,2,10,25,'MOV','4K',24.0,'Spanish','Yes','Limited','TV',18000,65.3,1,8000.0,3,8.2,'Interview');
INSERT INTO Content_Production_Logs VALUES (2003,'StadiumTour','2023-07-25',503,4,20,8,'MP4','720p',60.0,'French','No','Full','Web',22000,70.1,3,9500.0,4,7.9,'VirtualTour');

-- Legal_compliance_events: regulatory compliance tracking
CREATE TABLE Legal_Compliance_Events (
    event_id INTEGER,
    event_date TEXT,
    jurisdiction TEXT,
    regulation TEXT,
    description TEXT,
    risk_level TEXT,
    compliance_status TEXT,
    audit_score REAL,
    corrective_action_due TEXT,
    responsible_party TEXT,
    penalty_amount REAL,
    notice_sent TEXT,
    resolution_date TEXT,
    follow_up_required TEXT,
    documentation_link TEXT,
    investigator_id INTEGER,
    case_number TEXT,
    legal_firm TEXT,
    settlement_amount REAL,
    law_firm_notes TEXT
);
INSERT INTO Legal_Compliance_Events VALUES (3001,'2023-06-10','EU','GDPR','DataRetentionPolicy','High','NonCompliant',45.2,'2023-07-01','ComplianceTeam',25000.0,'2023-06-12','2023-07-15','Yes','http://docs.example.com/3001',701,'EU-2023-045','LegalPartners',24000.0,'FollowupPending');
INSERT INTO Legal_Compliance_Events VALUES (3002,'2023-05-18','US','FAIR','EqualOpportunityAudit','Medium','Compliant',88.5,'2023-06-01','HRDept',0.0,'2023-05-20','2023-05-30','No','http://docs.example.com/3002',702,'US-2023-021','LawGroup',0.0,'AllClear');
INSERT INTO Legal_Compliance_Events VALUES (3003,'2023-04-22','UK','UKBR','BettingLicenseRenewal','Low','Pending',70.0,'2023-05-15','LegalDept',5000.0,'2023-04-25','2023-06-01','Yes','http://docs.example.com/3003',703,'UK-2023-012','RegLaw',4800.0','AwaitingApproval');

-- Fan_ticket_transfer_market: secondary ticket sales data
CREATE TABLE Fan_Ticket_Transfer_Market (
    ticket_id INTEGER,
    original_owner_id INTEGER,
    new_owner_id INTEGER,
    transfer_date TEXT,
    match_id INTEGER,
    seat_section TEXT,
    seat_row TEXT,
    seat_number INTEGER,
    price_usd REAL,
    transfer_fee_usd REAL,
    platform TEXT,
    transfer_status TEXT,
    verification_code TEXT,
    transfer_reason TEXT,
    seller_rating REAL,
    buyer_rating REAL,
    transfer_time_minutes INTEGER,
    resale_limit_days INTEGER,
    guarantee_status TEXT,
    transaction_id TEXT
);
INSERT INTO Fan_Ticket_Transfer_Market VALUES (4001,1200,1300,'2023-08-01',5501,'A','12',45,150.0,5.0,'TicketSwap','Completed','VC123','ChangeOfPlans',4.5,4.8,30,14,'Guaranteed','TXN001');
INSERT INTO Fan_Ticket_Transfer_Market VALUES (4002,1210,1310,'2023-08-03',5502,'B','8',22,120.0,4.0,'FanSwap','Pending','VC124','TravelConflict',4.2,4.6,45,10,'NotGuaranteed','TXN002');
INSERT INTO Fan_Ticket_Transfer_Market VALUES (4003,1220,1320,'2023-08-05',5503,'C','15',7,200.0,7.5,'TicketHub','Completed','VC125','Upgrade',4.9,5.0,20,7,'Guaranteed','TXN003');

-- Digital_advertising_impressions: ad performance metrics
CREATE TABLE Digital_Advertising_Impressions (
    campaign_id INTEGER,
    ad_id INTEGER,
    record_date TEXT,
    platform TEXT,
    ad_format TEXT,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    cpc_usd REAL,
    cpm_usd REAL,
    spend_usd REAL,
    revenue_usd REAL,
    conversion_rate REAL,
    view_through_conversions INTEGER,
    ad_position TEXT,
    device_type TEXT,
    geographic_target TEXT,
    audience_segment TEXT,
    frequency_cap INTEGER,
    ad_quality_score REAL
);
INSERT INTO Digital_Advertising_Impressions VALUES (5010,9001,'2023-08-10','Google','Display',200000,4200,0.021,0.45,5.00,900.0,1200.0,0.025,350,'Top','Desktop','NorthAmerica','SportsFans',3,7.8);
INSERT INTO Digital_Advertising_Impressions VALUES (5011,9002,'2023-08-10','Facebook','Video',150000,3700,0.0247,0.55,6.20,1025.0,1400.0,0.030,290,'Mid','Mobile','Europe','ClubSupporters',2,8.1);
INSERT INTO Digital_Advertising_Impressions VALUES (5012,9003,'2023-08-10','Twitter','PromotedTweet',120000,2500,0.0208,0.60,5.80,720.0,950.0,0.022,210,'Bottom','Tablet','Asia','YouthFans',4,7.4);

-- Volunteer_shift_schedules: volunteer staffing details
CREATE TABLE Volunteer_Shift_Schedules (
    volunteer_id INTEGER,
    shift_id INTEGER,
    shift_date TEXT,
    start_time TEXT,
    end_time TEXT,
    location TEXT,
    role TEXT,
    supervisor_id INTEGER,
    hours_assigned REAL,
    hours_completed REAL,
    shift_status TEXT,
    training_completed TEXT,
    background_check_date TEXT,
    equipment_assigned TEXT,
    notes TEXT,
    shift_rating REAL,
    feedback_submitted TEXT,
    replacement_needed TEXT,
    shift_type TEXT,
    shift_category TEXT
);
INSERT INTO Volunteer_Shift_Schedules VALUES (8001,3001,'2023-08-12','08:00','12:00','StadiumGate','GateAgent',9001,4.0,4.0,'Completed','Yes','2022-05-10','Radio','All good',4.7,'Yes','No','Morning','Operational');
INSERT INTO Volunteer_Shift_Schedules VALUES (8002,3002,'2023-08-13','14:00','18:00','ConcessionStand','VendorSupport',9002,4.0,3.5,'Partial','Yes','2022-06-15','POS','Need more training',4.2,'Yes','Yes','Afternoon','Service');
INSERT INTO Volunteer_Shift_Schedules VALUES (8003,3003,'2023-08-14','18:00','22:00','StadiumParking','ParkingAttendant',9003,4.0,0.0,'Cancelled','No','2023-01-20','None','Volunteer unavailable',0.0,'No','No','Evening','Logistics');

-- Sponsorship_activation_events: sponsor on‑site activation records
CREATE TABLE Sponsorship_Activation_Events (
    sponsor_id INTEGER,
    activation_id INTEGER,
    event_date TEXT,
    venue_id INTEGER,
    activation_type TEXT,
    target_audience TEXT,
    impressions_estimated INTEGER,
    engagements_estimated INTEGER,
    cost_usd REAL,
    activation_status TEXT,
    brand_exposure_score REAL,
    activation_description TEXT,
    leads_generated INTEGER,
    sales_impact_usd REAL,
    media_coverage_flag TEXT,
    social_mentions INTEGER,
    onsite_staff_count INTEGER,
    collateral_items INTEGER,
    post_event_report_id INTEGER,
    activation_feedback_score REAL
);
INSERT INTO Sponsorship_Activation_Events VALUES (6001,7001,'2023-07-30',101,'StadiumBanner','Fans',50000,12000,30000.0,'Completed',85.5,'Banner placed on north stand',200,15000.0,'Yes',85,12,300,4001,8.3);
INSERT INTO Sponsorship_Activation_Events VALUES (6002,7002,'2023-08-02',102,'FanZone','Families',75000,18000,45000.0,'Ongoing',90.2,'Interactive game zone with giveaways',350,26000.0,'No',120,20,500,4002,9.1);
INSERT INTO Sponsorship_Activation_Events VALUES (6003,7003,'2023-08-05',103,'DigitalWrap','TechFans',60000,15000,38000.0,'Completed',88.0,'LED screen wrap around pitch',250,21000.0,'Yes',95,15,400,4003,8.7);

-- Equipment_maintenance_logs: asset maintenance tracking
CREATE TABLE Equipment_Maintenance_Logs (
    equipment_id INTEGER,
    asset_tag TEXT,
    maintenance_date TEXT,
    maintenance_type TEXT,
    technician_id INTEGER,
    downtime_minutes INTEGER,
    parts_replaced TEXT,
    cost_usd REAL,
    next_due_date TEXT,
    mileage INTEGER,
    operating_hours INTEGER,
    warranty_status TEXT,
    maintenance_notes TEXT,
    safety_check_passed TEXT,
    calibration_needed TEXT,
    calibration_date TEXT,
    vendor_name TEXT,
    service_contract_id INTEGER,
    priority_level TEXT,
    status TEXT
);
INSERT INTO Equipment_Maintenance_Logs VALUES (9001,'EQ-001','2023-07-15','Routine','1010',30,'Filter',150.0,'2023-12-15',12000,500,'Valid','Replaced air filter','Yes','No','', 'TechSupply','2001','Medium','Completed');
INSERT INTO Equipment_Maintenance_Logs VALUES (9002,'EQ-002','2023-07-20','Repair','1011',120,'HydraulicSeal',850.0,'2024-01-10',25000,1200,'Expired','Fixed hydraulic leak','No','Yes','2023-07-20','HydroEquip','2002','High','InProgress');
INSERT INTO Equipment_Maintenance_Logs VALUES (9003,'EQ-003','2023-07-25','Calibration','1012',15,'Sensor',300.0,'2024-03-01',5000,300,'Valid','Calibrated pressure sensor','Yes','Yes','2023-07-25','PrecisionParts','2003','Low','Completed');