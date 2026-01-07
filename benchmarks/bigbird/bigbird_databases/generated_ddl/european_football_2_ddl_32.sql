-- Arena vendor contracts for stadium services
CREATE TABLE Arena_Vendor_Contracts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    arena_id INTEGER,
    vendor_name TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    total_value REAL,
    payment_terms TEXT,
    service_type TEXT,
    contact_person TEXT,
    contact_email TEXT,
    phone_number TEXT,
    renewal_option TEXT,
    termination_clause TEXT,
    insurance_requirement TEXT,
    compliance_cert TEXT,
    performance_metric TEXT,
    penalty_rate REAL,
    exclusive_rights TEXT,
    max_capacity INTEGER,
    notes TEXT
);
INSERT INTO Arena_Vendor_Contracts VALUES (1,101,'FoodCo','2023-01-01','2025-12-31',250000.00,'Net30','Catering','John_Doe','john@foodco.com','1234567890','Option1','ClauseA','Required','MetricX',5.0,'Yes',5000,'First contract');
INSERT INTO Arena_Vendor_Contracts VALUES (2,102,'CleanPro','2022-06-15','2024-06-14',150000.00,'Net45','Cleaning','Jane_Smith','jane@cleanpro.com','0987654321','Option2','ClauseB','Optional','MetricY',2.5,'No',3000,'Renewal pending');
INSERT INTO Arena_Vendor_Contracts VALUES (3,103,'SecurityPlus','2024-03-01','2026-02-28',300000.00,'Net60','Security','Mike_Brown','mike@securityplus.com','5551234567','Option1','ClauseC','Mandatory','MetricZ',3.0,'Yes',4000,'New agreement');

-- Economic transactions involving players
CREATE TABLE Player_Economic_Transactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    transaction_date TEXT,
    transaction_type TEXT,
    amount REAL,
    currency TEXT,
    contract_id INTEGER,
    source_club_id INTEGER,
    destination_club_id INTEGER,
    agent_id INTEGER,
    tax_withheld REAL,
    net_amount REAL,
    payment_method TEXT,
    transaction_status TEXT,
    notes TEXT,
    financial_officer TEXT,
    approved_by TEXT,
    exchange_rate REAL,
    bonus_included INTEGER,
    clause_reference TEXT,
    audit_flag TEXT
);
INSERT INTO Player_Economic_Transactions VALUES (1,201,'2023-07-15','Transfer',7500000.00,'EUR',301,11,22,401,1500000.00,6000000.00,'Bank','Completed','Summer transfer', 'Laura_K', 'Board',1.10,0,'Clause12','Yes');
INSERT INTO Player_Economic_Transactions VALUES (2,202,'2024-01-10','Salary',250000.00,'USD',302,15,NULL,401,50000.00,200000.00,'DirectDeposit','Pending','First half of year', 'Tom_M', 'Finance',1.00,1,'Clause7','No');
INSERT INTO Player_Economic_Transactions VALUES (3,203,'2022-12-05','Endorsement',500000.00,'GBP',303,0,NULL,402,0.00,500000.00,'Cheque','Completed','Brand deal', 'Sara_L', 'Legal',1.25,0,'Clause3','Yes');

-- Plans for league expansion and new teams
CREATE TABLE League_Expansion_Plans (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    proposal_year INTEGER,
    new_team_name TEXT,
    city TEXT,
    stadium_capacity INTEGER,
    projected_revenue REAL,
    marketing_budget REAL,
    stadium_construction_cost REAL,
    approval_status TEXT,
    vote_count_for INTEGER,
    vote_count_against INTEGER,
    expected_start_season TEXT,
    media_coverage_plan TEXT,
    sponsor_interest_level TEXT,
    community_impact_score REAL,
    environmental_assessment_passed TEXT,
    legal_review_status TEXT,
    deadline_date TEXT,
    notes TEXT
);
INSERT INTO League_Expansion_Plans VALUES (1,1,2023,'RiverCityFC','RiverCity',25000,12.5,2.0,45.0,'Pending',12,3,'2025-2026','FullMedia','High',85.5,'Yes','InProgress','2023-12-31','Initial proposal');
INSERT INTO League_Expansion_Plans VALUES (2,2,2024,'CoastalUnited','CoastTown',30000,15.0,3.0,55.0,'Approved',20,0,'2026-2027','Extensive','Medium',78.0,'Yes','Completed','2024-06-30','Finalized plan');
INSERT INTO League_Expansion_Plans VALUES (3,3,2025,'MountainRovers','HighPeak',20000,10.0,1.5,40.0,'Rejected',5,15,'2027-2028','Limited','Low',60.2,'No','Pending','2025-03-15','Rejected due to financials');

-- Team fan coaching programs
CREATE TABLE Team_Fan_Coaching_Program (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    program_name TEXT,
    start_date TEXT,
    end_date TEXT,
    coach_name TEXT,
    coach_certification TEXT,
    max_participants INTEGER,
    min_age INTEGER,
    max_age INTEGER,
    session_frequency_per_week INTEGER,
    average_attendance INTEGER,
    satisfaction_score REAL,
    cost_per_participant REAL,
    total_cost REAL,
    sponsor_name TEXT,
    venue_name TEXT,
    equipment_provided TEXT,
    health_safety_certified TEXT,
    feedback_summary TEXT,
    notes TEXT
);
INSERT INTO Team_Fan_Coaching_Program VALUES (1,10,'JuniorKick','2023-04-01','2023-09-30','Alex_Team','UEFA_A',120,6,14,2,55,4.2,30.00,3600.00,'SportGear','TrainingGroundA','Balls_Nets','Yes','Positive','First season');
INSERT INTO Team_Fan_Coaching_Program VALUES (2,11,'WomenPower','2024-01-15','2024-07-15','Maria_L','UEFA_B',80,12,20,3,70,4.6,45.00,3600.00,'FitLife','TrainingGroundB','Cones','Yes','Excellent','Second edition');
INSERT INTO Team_Fan_Coaching_Program VALUES (3,12,'SeniorFit','2022-09-01','2023-03-01','John_S','UEFA_C',50,30,55,1,40,3.8,25.00,1250.00,'HealthCo','TrainingGroundC','ResistanceBands','No','Good','Ongoing');

-- Environmental impact data for matches
CREATE TABLE Match_Environmental_Impact (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    carbon_emissions_kg REAL,
    water_usage_liters REAL,
    waste_generated_kg REAL,
    recycling_rate_percent REAL,
    energy_consumed_kwh REAL,
    renewable_energy_percent REAL,
    noise_level_db REAL,
    air_quality_index INTEGER,
    temperature_celsius REAL,
    humidity_percent REAL,
    transportation_mode_majority TEXT,
    fan_travel_distance_km REAL,
    local_community_impact_score REAL,
    green_certification_awarded TEXT,
    sustainability_initiatives TEXT,
    sponsor_green_label TEXT,
    post_match_report TEXT,
    notes TEXT,
    measurement_date TEXT
);
INSERT INTO Match_Environmental_Impact VALUES (1,5001,1200.5,35000,500,60.0,25000,30.0,95.0,45,55.0,15.0,'PublicTransit',120.5,78.0,'Yes','RecyclingPlants','EcoSponsor','ReportA','First match','2023-05-12');
INSERT INTO Match_Environmental_Impact VALUES (2,5002,900.0,28000,400,55.0,22000,35.0,88.0,22,50.0,12.0,'Carpool',95.0,82.5,'Yes','ZeroWaste','GreenBrand','ReportB','Second match','2023-06-20');
INSERT INTO Match_Environmental_Impact VALUES (3,5003,1500.0,40000,600,70.0,27000,28.0,102.0,18,60.0,18.0,'Bike',130.0,70.0,'No','TreePlanting','EcoPartner','ReportC','Third match','2023-07-15');

-- Broadcast signal logs for matches
CREATE TABLE Broadcast_Signal_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    broadcast_network TEXT,
    signal_type TEXT,
    frequency_mhz REAL,
    bitrate_kbps REAL,
    latency_ms REAL,
    signal_strength_dbm REAL,
    packet_loss_percent REAL,
    error_rate_percent REAL,
    transmission_start_time TEXT,
    transmission_end_time TEXT,
    encoding_format TEXT,
    resolution TEXT,
    frame_rate_fps REAL,
    audio_channels INTEGER,
    subtitle_language TEXT,
    backup_stream_used TEXT,
    outage_flag TEXT,
    outage_duration_seconds INTEGER,
    notes TEXT
);
INSERT INTO Broadcast_Signal_Logs VALUES (1,5001,'GlobalSports','Satellite',12.5,4500,30, -45.0,0.02,0.01,'2023-05-12 14:00:00','2023-05-12 16:00:00','H264','1080p',60,2,'English','No','No',0,'All clear');
INSERT INTO Broadcast_Signal_Logs VALUES (2,5002,'EuroVision','IP',240.0,3500,45, -50.0,0.05,0.03,'2023-06-20 18:00:00','2023-06-20 20:00:00','H265','720p',30,2,'German','Yes','Yes',120,'Brief interruption');
INSERT INTO Broadcast_Signal_Logs VALUES (3,5003,'SportsNet','Cable',55.0,5000,25, -40.0,0.01,0.00,'2023-07-15 20:00:00','2023-07-15 22:00:00','AV1','4K',120,6,'Spanish','No','No',0,'High quality stream');

-- Budgets for youth development programs
CREATE TABLE Youth_Development_Budgets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    fiscal_year INTEGER,
    total_budget REAL,
    scouting_budget REAL,
    coaching_budget REAL,
    facilities_budget REAL,
    equipment_budget REAL,
    scholarships_budget REAL,
    travel_budget REAL,
    health_nutrition_budget REAL,
    performance_analysis_budget REAL,
    marketing_budget REAL,
    administrative_budget REAL,
    reserve_fund REAL,
    audited TEXT,
    last_audit_date TEXT,
    budget_status TEXT,
    notes TEXT,
    currency TEXT,
    exchange_rate REAL
);
INSERT INTO Youth_Development_Budgets VALUES (1,10,2023,1500000.00,200000.00,250000.00,300000.00,150000.00,100000.00,80000.00,120000.00,50000.00,70000.00,100000.00,200000.00,'Yes','2023-12-31','Approved','First year','EUR',0.9);
INSERT INTO Youth_Development_Budgets VALUES (2,11,2023,1300000.00,180000.00,220000.00,280000.00,130000.00,90000.00,75000.00,110000.00,45000.00,65000.00,90000.00,190000.00,'Yes','2023-11-30','Approved','Second year','USD',1.0);
INSERT INTO Youth_Development_Budgets VALUES (3,12,2024,1600000.00,210000.00,260000.00,320000.00,160000.00,110000.00,85000.00,130000.00,55000.00,72000.00,110000.00,210000.00,'No','', 'Pending','Planned increase','GBP',0.78);

-- National team player selection records
CREATE TABLE National_Team_Selection (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    national_team_id INTEGER,
    selection_date TEXT,
    player_api_id INTEGER,
    position TEXT,
    club_id INTEGER,
    caps INTEGER,
    goals INTEGER,
    minutes_played INTEGER,
    fitness_score REAL,
    tactical_fit_score REAL,
    coach_comments TEXT,
    selection_status TEXT,
    injury_flag TEXT,
    age INTEGER,
    height_cm INTEGER,
    weight_kg INTEGER,
    contract_clause TEXT,
    transfer_release_clause REAL,
    notes TEXT
);
INSERT INTO National_Team_Selection VALUES (1,1,'2023-09-01',201,'Forward',11,45,18,3600,8.5,7.9,'Excellent form','Selected','No',27,180,75,'Clause5',500000.00,'First call-up');
INSERT INTO National_Team_Selection VALUES (2,2,'2024-03-15',202,'Midfielder',22,30,5,2700,7.2,8.1,'Versatile player','Selected','No',24,175,70,'Clause3',300000.00,'Regular starter');
INSERT INTO National_Team_Selection VALUES (3,1,'2023-10-10',203,'Goalkeeper',33,55,0,4950,9.0,9.5,'Reliable','Selected','No',29,190,85,'Clause7',600000.00,'Veteran keeper');

-- Club social responsibility assessment scores
CREATE TABLE Club_Social_Responsibility_Scores (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    assessment_year INTEGER,
    community_engagement_score REAL,
    environmental_score REAL,
    governance_score REAL,
    diversity_inclusion_score REAL,
    education_programs_score REAL,
    health_initiatives_score REAL,
    transparency_score REAL,
    total_score REAL,
    rank_in_league INTEGER,
    audit_firm TEXT,
    audit_date TEXT,
    notes TEXT,
    improvement_plan TEXT,
    stakeholder_feedback TEXT,
    certification_awarded TEXT,
    public_relations_score REAL,
    fan_satisfaction_score REAL,
    media_mention_count INTEGER
);
INSERT INTO Club_Social_Responsibility_Scores VALUES (1,10,2023,85.0,78.5,90.0,82.0,88.5,80.0,84.0,3,'AuditCo','2023-12-01','Positive trend','Expand youth outreach','High','Yes',88.0,92.0,150);
INSERT INTO Club_Social_Responsibility_Scores VALUES (2,11,2023,70.0,65.0,75.0,68.0,72.5,66.0,69.5,7,'VerifyLtd','2023-11-15','Needs improvement','Increase green initiatives','Medium','No',72.0,78.0,120);
INSERT INTO Club_Social_Responsibility_Scores VALUES (3,12,2023,92.0,88.0,95.0,90.0,94.5,91.0,92.5,1,'QualityAudit','2023-10-20','Excellent performance','Maintain standards','Gold','Yes',94.0,96.0,200);

-- Stadium seating configuration details
CREATE TABLE Stadium_Seating_Configurations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    configuration_name TEXT,
    total_seats INTEGER,
    vip_seats INTEGER,
    box_seats INTEGER,
    general_seats INTEGER,
    standing_seats INTEGER,
    disabled_access_seats INTEGER,
    section_count INTEGER,
    avg_row_width_cm REAL,
    avg_seat_width_cm REAL,
    avg_aisle_width_cm REAL,
    roof_type TEXT,
    acoustic_rating REAL,
    safety_rating REAL,
    renovation_year INTEGER,
    capacity_change_percent REAL,
    notes TEXT,
    last_updated TEXT,
    approved_by TEXT
);
INSERT INTO Stadium_Seating_Configurations VALUES (1,1001,'Default',50000,2000,1500,45000,0,500,80.0,50.0,120.0,'Retractable',9.5,9.8,2018,0.0,'Standard layout','2023-01-01','DirectorA');
INSERT INTO Stadium_Seating_Configurations VALUES (2,1002,'Concert',52000,2500,1800,46000,500,520,82.0,51.0,118.0,'Fixed',9.2,9.7,2020,4.0,'Added standing area for concerts','2023-02-15','DirectorB');
INSERT INTO Stadium_Seating_Configurations VALUES (3,1003,'Expanded',60000,3000,2000,54000,500,600,85.0,53.0,115.0,'Hybrid',9.8,9.9,2022,20.0,'New lower tier added','2023-03-10','DirectorC');