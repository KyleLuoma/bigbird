-- Broadcast audience insights per broadcast
CREATE TABLE Broadcast_Audience_Insights (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcast_id INTEGER,
    date TEXT,
    region TEXT,
    average_viewers INTEGER,
    peak_viewers INTEGER,
    duration_minutes INTEGER,
    demographic_male_pct INTEGER,
    demographic_female_pct INTEGER,
    age_18_24_pct INTEGER,
    age_25_34_pct INTEGER,
    age_35_44_pct INTEGER,
    age_45_54_pct INTEGER,
    age_55_plus_pct INTEGER,
    platform_tv TEXT,
    platform_online TEXT,
    platform_mobile TEXT,
    ad_revenue_usd INTEGER,
    subscription_revenue_usd INTEGER,
    total_revenue_usd INTEGER,
    comments TEXT
);
INSERT INTO Broadcast_Audience_Insights (broadcast_id, date, region, average_viewers, peak_viewers, duration_minutes, demographic_male_pct, demographic_female_pct, age_18_24_pct, age_25_34_pct, age_35_44_pct, age_45_54_pct, age_55_plus_pct, platform_tv, platform_online, platform_mobile, ad_revenue_usd, subscription_revenue_usd, total_revenue_usd, comments) VALUES (101, '2025-03-15', 'Europe', 1200000, 1500000, 95, 55, 45, 20, 30, 25, 15, 10, 'LiveTV', 'WebStream', 'App', 500000, 200000, 700000, 'HighEngagement');
INSERT INTO Broadcast_Audience_Insights (broadcast_id, date, region, average_viewers, peak_viewers, duration_minutes, demographic_male_pct, demographic_female_pct, age_18_24_pct, age_25_34_pct, age_35_44_pct, age_45_54_pct, age_55_plus_pct, platform_tv, platform_online, platform_mobile, ad_revenue_usd, subscription_revenue_usd, total_revenue_usd, comments) VALUES (102, '2025-04-10', 'Asia', 900000, 1100000, 90, 52, 48, 22, 28, 23, 14, 13, 'Cable', 'WebStream', 'App', 400000, 150000, 550000, 'SteadyGrowth');
INSERT INTO Broadcast_Audience_Insights (broadcast_id, date, region, average_viewers, peak_viewers, duration_minutes, demographic_male_pct, demographic_female_pct, age_18_24_pct, age_25_34_pct, age_35_44_pct, age_45_54_pct, age_55_plus_pct, platform_tv, platform_online, platform_mobile, ad_revenue_usd, subscription_revenue_usd, total_revenue_usd, comments) VALUES (103, '2025-05-05', 'NorthAmerica', 1300000, 1600000, 100, 58, 42, 18, 32, 27, 13, 10, 'Satellite', 'WebStream', 'App', 600000, 250000, 850000, 'PeakSeason');

-- Club sponsorship contact history
CREATE TABLE Club_Sponsorship_Contact_History (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    club_id INTEGER,
    contact_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    last_contact_date TEXT,
    contact_method TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    renewal_status TEXT,
    sponsor_tier TEXT,
    activation_budget_usd INTEGER,
    activation_status TEXT,
    notes TEXT,
    primary_contact_role TEXT,
    secondary_contact_name TEXT,
    secondary_contact_email TEXT,
    secondary_contact_phone TEXT,
    contract_value_usd INTEGER,
    payment_terms TEXT,
    compliance_status TEXT,
    last_meeting_agenda TEXT
);
INSERT INTO Club_Sponsorship_Contact_History (sponsor_id, club_id, contact_name, contact_email, contact_phone, last_contact_date, contact_method, contract_start_date, contract_end_date, renewal_status, sponsor_tier, activation_budget_usd, activation_status, notes, primary_contact_role, secondary_contact_name, secondary_contact_email, secondary_contact_phone, contract_value_usd, payment_terms, compliance_status, last_meeting_agenda) VALUES (201, 1, 'JohnDoe', 'john.doe@example.com', '1234567890', '2025-02-20', 'Email', '2023-01-01', '2026-12-31', 'Pending', 'Gold', 250000, 'Active', 'PositiveFeedback', 'Manager', 'JaneSmith', 'jane.smith@example.com', '0987654321', 1500000, 'Net30', 'Compliant', 'BrandIntegration');
INSERT INTO Club_Sponsorship_Contact_History (sponsor_id, club_id, contact_name, contact_email, contact_phone, last_contact_date, contact_method, contract_start_date, contract_end_date, renewal_status, sponsor_tier, activation_budget_usd, activation_status, notes, primary_contact_role, secondary_contact_name, secondary_contact_email, secondary_contact_phone, contract_value_usd, payment_terms, compliance_status, last_meeting_agenda) VALUES (202, 2, 'AliceBrown', 'alice.brown@example.com', '5551234567', '2025-03-05', 'Phone', '2024-04-15', '2027-04-14', 'Renewed', 'Platinum', 500000, 'Active', 'HighVisibility', 'Director', 'BobWhite', 'bob.white@example.com', '5557654321', 3000000, 'Net45', 'Compliant', 'SocialMediaCampaign');
INSERT INTO Club_Sponsorship_Contact_History (sponsor_id, club_id, contact_name, contact_email, contact_phone, last_contact_date, contact_method, contract_start_date, contract_end_date, renewal_status, sponsor_tier, activation_budget_usd, activation_status, notes, primary_contact_role, secondary_contact_name, secondary_contact_email, secondary_contact_phone, contract_value_usd, payment_terms, compliance_status, last_meeting_agenda) VALUES (203, 3, 'MarkGreen', 'mark.green@example.com', '4445556666', '2025-01-12', 'InPerson', '2022-07-01', '2025-06-30', 'Expired', 'Silver', 100000, 'Closed', 'LimitedReach', 'Coordinator', 'EmmaBlack', 'emma.black@example.com', '4445557777', 800000, 'Net60', 'NonCompliant', 'ContractCloseout');

-- Health and nutrition supplement orders
CREATE TABLE Health_Nutrition_Supplement_Orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    supplement_name TEXT,
    dosage_mg INTEGER,
    frequency_per_day INTEGER,
    start_date TEXT,
    end_date TEXT,
    prescribing_doctor TEXT,
    order_status TEXT,
    fulfillment_date TEXT,
    cost_usd INTEGER,
    supplier_name TEXT,
    batch_number TEXT,
    notes TEXT,
    delivery_method TEXT,
    shipping_cost_usd INTEGER,
    order_priority TEXT,
    compliance_check TEXT,
    adverse_event_reported TEXT,
    last_update TEXT,
    pharmacist_name TEXT,
    pharmacy_contact TEXT,
    insurance_covered TEXT,
    payment_status TEXT,
    prescription_id TEXT
);
INSERT INTO Health_Nutrition_Supplement_Orders (player_id, supplement_name, dosage_mg, frequency_per_day, start_date, end_date, prescribing_doctor, order_status, fulfillment_date, cost_usd, supplier_name, batch_number, notes, delivery_method, shipping_cost_usd, order_priority, compliance_check, adverse_event_reported, last_update, pharmacist_name, pharmacy_contact, insurance_covered, payment_status, prescription_id) VALUES (101, 'ProteinPowder', 25000, 2, '2025-01-01', '2025-06-30', 'DrSmith', 'Fulfilled', '2025-01-03', 120, 'NutriCo', 'B1234', 'NoIssues', 'Courier', 10, 'High', 'Passed', 'No', '2025-01-04', 'LauraPharm', '5551112222', 'Yes', 'Paid', 'RX1001');
INSERT INTO Health_Nutrition_Supplement_Orders (player_id, supplement_name, dosage_mg, frequency_per_day, start_date, end_date, prescribing_doctor, order_status, fulfillment_date, cost_usd, supplier_name, batch_number, notes, delivery_method, shipping_cost_usd, order_priority, compliance_check, adverse_event_reported, last_update, pharmacist_name, pharmacy_contact, insurance_covered, payment_status, prescription_id) VALUES (102, 'Omega3', 1000, 1, '2025-02-01', '2025-07-31', 'DrLee', 'Pending', NULL, 80, 'HealthSupp', 'O5678', 'AwaitingApproval', 'Postal', 5, 'Medium', 'Pending', 'No', '2025-02-02', 'MikePharm', '5553334444', 'No', 'Unpaid', 'RX1002');
INSERT INTO Health_Nutrition_Supplement_Orders (player_id, supplement_name, dosage_mg, frequency_per_day, start_date, end_date, prescribing_doctor, order_status, fulfillment_date, cost_usd, supplier_name, batch_number, notes, delivery_method, shipping_cost_usd, order_priority, compliance_check, adverse_event_reported, last_update, pharmacist_name, pharmacy_contact, insurance_covered, payment_status, prescription_id) VALUES (103, 'VitaminD', 2000, 1, '2025-03-15', '2025-09-15', 'DrPatel', 'Cancelled', NULL, 50, 'SunHealth', 'V9012', 'PatientRefused', 'InStore', 0, 'Low', 'N/A', 'Yes', '2025-03-16', 'SaraPharm', '5557778888', 'Yes', 'Refunded', 'RX1003');

-- Travel logistics contracts
CREATE TABLE Travel_Logistics_Contracts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    contract_id TEXT,
    supplier_name TEXT,
    service_type TEXT,
    start_date TEXT,
    end_date TEXT,
    cost_usd INTEGER,
    coverage_regions TEXT,
    contact_name TEXT,
    contact_phone TEXT,
    contract_status TEXT,
    renewal_date TEXT,
    notes TEXT,
    payment_terms TEXT,
    insurance_required TEXT,
    escalation_contact TEXT,
    escalation_phone TEXT,
    performance_metric TEXT,
    penalty_clause TEXT,
    last_review_date TEXT,
    approved_by TEXT
);
INSERT INTO Travel_Logistics_Contracts (contract_id, supplier_name, service_type, start_date, end_date, cost_usd, coverage_regions, contact_name, contact_phone, contract_status, renewal_date, notes, payment_terms, insurance_required, escalation_contact, escalation_phone, performance_metric, penalty_clause, last_review_date, approved_by) VALUES ('TC001', 'TravelCo', 'TeamTransport', '2024-01-01', '2026-12-31', 350000, 'Europe', 'MikeDriver', '5551112222', 'Active', '2026-11-30', 'OnTimeDelivery', 'Net30', 'Yes', 'LauraManager', '5553334444', 'OnTimePct', 'LateFee', '2025-01-10', 'DirectorOps');
INSERT INTO Travel_Logistics_Contracts (contract_id, supplier_name, service_type, start_date, end_date, cost_usd, coverage_regions, contact_name, contact_phone, contract_status, renewal_date, notes, payment_terms, insurance_required, escalation_contact, escalation_phone, performance_metric, penalty_clause, last_review_date, approved_by) VALUES ('TC002', 'AirFly', 'CharterFlights', '2025-03-01', '2028-02-28', 720000, 'Global', 'AnnaPilot', '5555556666', 'Pending', '2028-02-01', 'NegotiatingRates', 'Net45', 'Yes', 'TomSupervisor', '5557778888', 'FlightHours', 'CancellationFee', '2025-03-05', 'VPLogistics');
INSERT INTO Travel_Logistics_Contracts (contract_id, supplier_name, service_type, start_date, end_date, cost_usd, coverage_regions, contact_name, contact_phone, contract_status, renewal_date, notes, payment_terms, insurance_required, escalation_contact, escalation_phone, performance_metric, penalty_clause, last_review_date, approved_by) VALUES ('TC003', 'HotelStay', 'Accommodation', '2024-06-15', '2027-06-14', 480000, 'Europe,Asia', 'SaraHost', '5559990000', 'Active', '2027-05-31', 'PreferredRates', 'Net60', 'No', 'IanLead', '5552223333', 'RoomNights', 'OverstayFee', '2025-06-20', 'ChiefAdmin');

-- Venue acoustic analysis
CREATE TABLE Venue_Acoustic_Analysis (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    analysis_id TEXT,
    venue_id INTEGER,
    date TEXT,
    decibel_level_avg INTEGER,
    decibel_peak INTEGER,
    frequency_low_hz INTEGER,
    frequency_high_hz INTEGER,
    reverberation_time_sec REAL,
    sound_pressure_level INTEGER,
    microphone_model TEXT,
    analyst_name TEXT,
    notes TEXT,
    measurement_method TEXT,
    background_noise_level INTEGER,
    audience_occupancy_pct INTEGER,
    acoustic_treatment_type TEXT,
    calibration_date TEXT,
    equipment_serial TEXT,
    compliance_standard TEXT,
    next_review_date TEXT
);
INSERT INTO Venue_Acoustic_Analysis (analysis_id, venue_id, date, decibel_level_avg, decibel_peak, frequency_low_hz, frequency_high_hz, reverberation_time_sec, sound_pressure_level, microphone_model, analyst_name, notes, measurement_method, background_noise_level, audience_occupancy_pct, acoustic_treatment_type, calibration_date, equipment_serial, compliance_standard, next_review_date) VALUES ('VA1001', 1, '2025-02-10', 85, 110, 20, 20000, 1.8, 90, 'MicProX', 'LauraAcoustics', 'GoodClarity', 'InSitu', 45, 80, 'Absorptive', '2025-01-15', 'SN12345', 'ISO10140', '2025-08-10');
INSERT INTO Venue_Acoustic_Analysis (analysis_id, venue_id, date, decibel_level_avg, decibel_peak, frequency_low_hz, frequency_high_hz, reverberation_time_sec, sound_pressure_level, microphone_model, analyst_name, notes, measurement_method, background_noise_level, audience_occupancy_pct, acoustic_treatment_type, calibration_date, equipment_serial, compliance_standard, next_review_date) VALUES ('VA1002', 2, '2025-03-12', 78, 105, 30, 18000, 1.6, 85, 'SoundMaster', 'JohnAudio', 'MinorEcho', 'LapSim', 40, 70, 'Diffusive', '2025-02-20', 'SN67890', 'ISO10141', '2025-09-15');
INSERT INTO Venue_Acoustic_Analysis (analysis_id, venue_id, date, decibel_level_avg, decibel_peak, frequency_low_hz, frequency_high_hz, reverberation_time_sec, sound_pressure_level, microphone_model, analyst_name, notes, measurement_method, background_noise_level, audience_occupancy_pct, acoustic_treatment_type, calibration_date, equipment_serial, compliance_standard, next_review_date) VALUES ('VA1003', 3, '2025-04-08', 82, 108, 25, 19000, 1.7, 88, 'EchoOne', 'MiaAcoustic', 'Balanced', 'Field', 42, 75, 'Hybrid', '2025-03-05', 'SN24680', 'ISO10142', '2025-10-20');

-- Digital merch token transfers
CREATE TABLE Digital_Merch_Token_Transfers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    transfer_id TEXT,
    token_id TEXT,
    from_user_id INTEGER,
    to_user_id INTEGER,
    transfer_date TEXT,
    transfer_type TEXT,
    transaction_value_usd INTEGER,
    blockchain TEXT,
    transaction_hash TEXT,
    status TEXT,
    notes TEXT,
    verification_method TEXT,
    gas_fee_usd INTEGER,
    exchange_rate REAL,
    platform TEXT,
    compliance_check TEXT,
    audit_timestamp TEXT,
    source_wallet TEXT,
    destination_wallet TEXT,
    fee_recipient TEXT
);
INSERT INTO Digital_Merch_Token_Transfers (transfer_id, token_id, from_user_id, to_user_id, transfer_date, transfer_type, transaction_value_usd, blockchain, transaction_hash, status, notes, verification_method, gas_fee_usd, exchange_rate, platform, compliance_check, audit_timestamp, source_wallet, destination_wallet, fee_recipient) VALUES ('DTX001', 'MTK1001', 101, 202, '2025-02-20', 'Sale', 150, 'Ethereum', '0xabc123', 'Confirmed', 'FirstPurchase', 'Signature', 2, 0.85, 'MarketplaceA', 'Passed', '2025-02-20T10:15:00', '0xwalletA', '0xwalletB', 'PlatformFee');
INSERT INTO Digital_Merch_Token_Transfers (transfer_id, token_id, from_user_id, to_user_id, transfer_date, transfer_type, transaction_value_usd, blockchain, transaction_hash, status, notes, verification_method, gas_fee_usd, exchange_rate, platform, compliance_check, audit_timestamp, source_wallet, destination_wallet, fee_recipient) VALUES ('DTX002', 'MTK1002', 203, 104, '2025-03-05', 'Gift', 0, 'Polygon', '0xdef456', 'Confirmed', 'FanGift', 'OTP', 1, 1.00, 'AppB', 'Passed', '2025-03-05T14:30:00', '0xwalletC', '0xwalletD', 'None');
INSERT INTO Digital_Merch_Token_Transfers (transfer_id, token_id, from_user_id, to_user_id, transfer_date, transfer_type, transaction_value_usd, blockchain, transaction_hash, status, notes, verification_method, gas_fee_usd, exchange_rate, platform, compliance_check, audit_timestamp, source_wallet, destination_wallet, fee_recipient) VALUES ('DTX003', 'MTK1003', 105, 106, '2025-04-01', 'Trade', 75, 'Solana', '0xghi789', 'Pending', 'AwaitingConfirmation', 'Email', 0, 0.92, 'ExchangeC', 'Pending', '2025-04-01T09:00:00', '0xwalletE', '0xwalletF', 'PlatformFee');

-- Player skill assessment tests
CREATE TABLE Player_Skill_Assessment_Tests (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    test_id TEXT,
    player_id INTEGER,
    test_date TEXT,
    test_type TEXT,
    score_overall INTEGER,
    speed_ms REAL,
    agility_score INTEGER,
    stamina_score INTEGER,
    reaction_time_ms REAL,
    vision_score INTEGER,
    passing_score INTEGER,
    shooting_score INTEGER,
    dribbling_score INTEGER,
    defensive_score INTEGER,
    aerial_score INTEGER,
    technical_score INTEGER,
    mental_score INTEGER,
    notes TEXT,
    assessor_name TEXT,
    assessment_location TEXT,
    follow_up_required TEXT,
    next_assessment_date TEXT,
    equipment_used TEXT
);
INSERT INTO Player_Skill_Assessment_Tests (test_id, player_id, test_date, test_type, score_overall, speed_ms, agility_score, stamina_score, reaction_time_ms, vision_score, passing_score, shooting_score, dribbling_score, defensive_score, aerial_score, technical_score, mental_score, notes, assessor_name, assessment_location, follow_up_required, next_assessment_date, equipment_used) VALUES ('PST001', 101, '2025-01-15', 'Physical', 88, 7.2, 85, 90, 250, 80, 87, 84, 86, 88, 70, 89, 82, 'GoodOverall', 'CoachMike', 'TrainingCenterA', 'No', '2025-07-15', 'RadarGun');
INSERT INTO Player_Skill_Assessment_Tests (test_id, player_id, test_date, test_type, score_overall, speed_ms, agility_score, stamina_score, reaction_time_ms, vision_score, passing_score, shooting_score, dribbling_score, defensive_score, aerial_score, technical_score, mental_score, notes, assessor_name, assessment_location, follow_up_required, next_assessment_date, equipment_used) VALUES ('PST002', 102, '2025-02-20', 'Technical', 91, 6.9, 88, 92, 240, 85, 90, 89, 92, 84, 72, 94, 86, 'ExcellentTech', 'CoachAnna', 'TrainingCenterB', 'Yes', '2025-08-20', 'VideoAnalysis');
INSERT INTO Player_Skill_Assessment_Tests (test_id, player_id, test_date, test_type, score_overall, speed_ms, agility_score, stamina_score, reaction_time_ms, vision_score, passing_score, shooting_score, dribbling_score, defensive_score, aerial_score, technical_score, mental_score, notes, assessor_name, assessment_location, follow_up_required, next_assessment_date, equipment_used) VALUES ('PST003', 103, '2025-03-10', 'Mental', 84, 7.0, 80, 85, 260, 78, 82, 80, 81, 86, 68, 83, 90, 'NeedsFocus', 'CoachLee', 'TrainingCenterC', 'Yes', '2025-09-10', 'PsychTestSuite');

-- Team strategic plan calendar
CREATE TABLE Team_Strategic_Plan_Calendar (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    plan_id TEXT,
    team_id INTEGER,
    fiscal_year TEXT,
    quarter TEXT,
    objective TEXT,
    key_result TEXT,
    owner TEXT,
    start_date TEXT,
    end_date TEXT,
    status TEXT,
    budget_usd INTEGER,
    risk_level TEXT,
    dependencies TEXT,
    notes TEXT,
    review_frequency TEXT,
    last_review_date TEXT,
    next_review_date TEXT,
    alignment_score INTEGER,
    stakeholder_feedback TEXT,
    approval_date TEXT
);
INSERT INTO Team_Strategic_Plan_Calendar (plan_id, team_id, fiscal_year, quarter, objective, key_result, owner, start_date, end_date, status, budget_usd, risk_level, dependencies, notes, review_frequency, last_review_date, next_review_date, alignment_score, stakeholder_feedback, approval_date) VALUES ('SPC001', 1, '2025', 'Q1', 'IncreaseWinRate', 'Win15Pct', 'CoachMike', '2025-01-01', '2025-03-31', 'OnTrack', 200000, 'Medium', 'PlayerRecruitment', 'FocusOnDefense', 'Monthly', '2025-02-15', '2025-04-01', 85, 'Positive', '2025-01-05');
INSERT INTO Team_Strategic_Plan_Calendar (plan_id, team_id, fiscal_year, quarter, objective, key_result, owner, start_date, end_date, status, budget_usd, risk_level, dependencies, notes, review_frequency, last_review_date, next_review_date, alignment_score, stakeholder_feedback, approval_date) VALUES ('SPC002', 2, '2025', 'Q2', 'ExpandBrandReach', 'SocialMediaGrowth', 'MarketingLead', '2025-04-01', '2025-06-30', 'Planned', 150000, 'Low', 'SponsorDeals', 'LaunchNewKits', 'Quarterly', '2025-04-10', '2025-07-01', 78, 'Neutral', '2025-03-28');
INSERT INTO Team_Strategic_Plan_Calendar (plan_id, team_id, fiscal_year, quarter, objective, key_result, owner, start_date, end_date, status, budget_usd, risk_level, dependencies, notes, review_frequency, last_review_date, next_review_date, alignment_score, stakeholder_feedback, approval_date) VALUES ('SPC003', 3, '2025', 'Q3', 'DevelopYouthTalent', 'AcademyGraduates', 'AcademyDirector', '2025-07-01', '2025-09-30', 'Planned', 120000, 'High', 'FacilitiesUpgrade', 'HireNewCoaches', 'BiMonthly', '2025-07-05', '2025-10-01', 72, 'NeedsImprovement', '2025-06-20');

-- League fan engagement surveys
CREATE TABLE League_Fan_Engagement_Surveys (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    survey_id TEXT,
    league_id INTEGER,
    season TEXT,
    survey_date TEXT,
    respondent_count INTEGER,
    satisfaction_score INTEGER,
    net_promoter_score INTEGER,
    favorite_team TEXT,
    favorite_player TEXT,
    preferred_platform TEXT,
    avg_watch_time_min INTEGER,
    merch_spending_usd INTEGER,
    travel_frequency_per_year INTEGER,
    engagement_level TEXT,
    comments TEXT,
    demographic_age_group TEXT,
    demographic_gender TEXT,
    geographic_region TEXT,
    loyalty_program_member TEXT,
    survey_method TEXT,
    completion_rate_pct INTEGER
);
INSERT INTO League_Fan_Engagement_Surveys (survey_id, league_id, season, survey_date, respondent_count, satisfaction_score, net_promoter_score, favorite_team, favorite_player, preferred_platform, avg_watch_time_min, merch_spending_usd, travel_frequency_per_year, engagement_level, comments, demographic_age_group, demographic_gender, geographic_region, loyalty_program_member, survey_method, completion_rate_pct) VALUES ('LES001', 1, '2024-2025', '2025-03-01', 12000, 78, 30, 'TeamA', 'PlayerX', 'MobileApp', 45, 250, 3, 'High', 'GreatSeason', '25-34', 'Male', 'Europe', 'Yes', 'Online', 85);
INSERT INTO League_Fan_Engagement_Surveys (survey_id, league_id, season, survey_date, respondent_count, satisfaction_score, net_promoter_score, favorite_team, favorite_player, preferred_platform, avg_watch_time_min, merch_spending_usd, travel_frequency_per_year, engagement_level, comments, demographic_age_group, demographic_gender, geographic_region, loyalty_program_member, survey_method, completion_rate_pct) VALUES ('LES002', 2, '2024-2025', '2025-04-15', 9500, 71, 22, 'TeamB', 'PlayerY', 'WebPortal', 38, 180, 2, 'Medium', 'NeedMoreContent', '35-44', 'Female', 'Asia', 'No', 'Phone', 78);
INSERT INTO League_Fan_Engagement_Surveys (survey_id, league_id, season, survey_date, respondent_count, satisfaction_score, net_promoter_score, favorite_team, favorite_player, preferred_platform, avg_watch_time_min, merch_spending_usd, travel_frequency_per_year, engagement_level, comments, demographic_age_group, demographic_gender, geographic_region, loyalty_program_member, survey_method, completion_rate_pct) VALUES ('LES003', 3, '2024-2025', '2025-05-20', 14000, 82, 35, 'TeamC', 'PlayerZ', 'StreamingService', 52, 320, 4, 'VeryHigh', 'ExcellentEngagement', '18-24', 'Male', 'SouthAmerica', 'Yes', 'InApp', 90);

-- Stadium energy efficiency logs
CREATE TABLE Stadium_Energy_Efficiency_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    log_id TEXT,
    stadium_id INTEGER,
    date TEXT,
    energy_consumed_kwh INTEGER,
    renewable_percentage INTEGER,
    peak_demand_kw INTEGER,
    avg_power_factor REAL,
    gas_consumed_m3 INTEGER,
    water_consumed_liters INTEGER,
    waste_generated_kg INTEGER,
    co2_emissions_tonnes REAL,
    hvac_efficiency_pct INTEGER,
    lighting_efficiency_pct INTEGER,
    notes TEXT,
    monitoring_system TEXT,
    maintenance_action TEXT,
    next_maintenance_date TEXT,
    energy_cost_usd INTEGER,
    carbon_offset_purchased_usd INTEGER,
    sustainability_score INTEGER
);
INSERT INTO Stadium_Energy_Efficiency_Logs (log_id, stadium_id, date, energy_consumed_kwh, renewable_percentage, peak_demand_kw, avg_power_factor, gas_consumed_m3, water_consumed_liters, waste_generated_kg, co2_emissions_tonnes, hvac_efficiency_pct, lighting_efficiency_pct, notes, monitoring_system, maintenance_action, next_maintenance_date, energy_cost_usd, carbon_offset_purchased_usd, sustainability_score) VALUES ('SEF001', 1, '2025-02-01', 450000, 40, 1200, 0.96, 8000, 1200000, 2500, 180.5, 85, 90, 'StableUsage', 'EcoSense', 'FilterChange', '2025-08-01', 75000, 5000, 88);
INSERT INTO Stadium_Energy_Efficiency_Logs (log_id, stadium_id, date, energy_consumed_kwh, renewable_percentage, peak_demand_kw, avg_power_factor, gas_consumed_m3, water_consumed_liters, waste_generated_kg, co2_emissions_tonnes, hvac_efficiency_pct, lighting_efficiency_pct, notes, monitoring_system, maintenance_action, next_maintenance_date, energy_cost_usd, carbon_offset_purchased_usd, sustainability_score) VALUES ('SEF002', 2, '2025-03-01', 380000, 55, 1100, 0.97, 7500, 1100000, 2200, 150.2, 88, 92, 'ImprovedRenewables', 'EnergyWatch', 'LEDUpgrade', '2025-09-01', 64000, 6000, 91);
INSERT INTO Stadium_Energy_Efficiency_Logs (log_id, stadium_id, date, energy_consumed_kwh, renewable_percentage, peak_demand_kw, avg_power_factor, gas_consumed_m3, water_consumed_liters, waste_generated_kg, co2_emissions_tonnes, hvac_efficiency_pct, lighting_efficiency_pct, notes, monitoring_system, maintenance_action, next_maintenance_date, energy_cost_usd, carbon_offset_purchased_usd, sustainability_score) VALUES ('SEF003', 3, '2025-04-01', 500000, 30, 1300, 0.95, 9000, 1300000, 2700, 200.8, 82, 85, 'HighDemandEvent', 'SmartGrid', 'BoilerTune', '2025-10-01', 82000, 4000, 84);