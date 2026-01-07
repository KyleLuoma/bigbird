-- Club health survey data collected annually
CREATE TABLE Club_Health_Surveys (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    organization_id INTEGER,
    survey_year INTEGER,
    avg_fan_heart_rate INTEGER,
    mental_wellbeing_score INTEGER,
    nutrition_score INTEGER,
    sleep_quality_score INTEGER,
    injury_prevention_awareness INTEGER,
    covid_compliance_rate INTEGER,
    vaccination_rate INTEGER,
    stress_level_index INTEGER,
    hydration_score INTEGER,
    ergonomics_rating INTEGER,
    health_program_participation INTEGER,
    health_budget_usd INTEGER,
    health_staff_count INTEGER,
    health_policy_version TEXT,
    feedback_comments TEXT,
    survey_version TEXT,
    created_timestamp TEXT
);
INSERT INTO Club_Health_Surveys (organization_id, survey_year, avg_fan_heart_rate, mental_wellbeing_score, nutrition_score, sleep_quality_score, injury_prevention_awareness, covid_compliance_rate, vaccination_rate, stress_level_index, hydration_score, ergonomics_rating, health_program_participation, health_budget_usd, health_staff_count, health_policy_version, feedback_comments, survey_version, created_timestamp) VALUES (101, 2023, 72, 85, 78, 80, 90, 95, 88, 70, 82, 77, 1, 250000, 12, v1, goodoverall, v1, 2023-01-15);
INSERT INTO Club_Health_Surveys (organization_id, survey_year, avg_fan_heart_rate, mental_wellbeing_score, nutrition_score, sleep_quality_score, injury_prevention_awareness, covid_compliance_rate, vaccination_rate, stress_level_index, hydration_score, ergonomics_rating, health_program_participation, health_budget_usd, health_staff_count, health_policy_version, feedback_comments, survey_version, created_timestamp) VALUES (102, 2023, 68, 80, 82, 76, 88, 93, 85, 68, 79, 80, 1, 180000, 9, v1, solidresponse, v1, 2023-02-10);
INSERT INTO Club_Health_Surveys (organization_id, survey_year, avg_fan_heart_rate, mental_wellbeing_score, nutrition_score, sleep_quality_score, injury_prevention_awareness, covid_compliance_rate, vaccination_rate, stress_level_index, hydration_score, ergonomics_rating, health_program_participation, health_budget_usd, health_staff_count, health_policy_version, feedback_comments, survey_version, created_timestamp) VALUES (103, 2023, 70, 82, 80, 78, 89, 94, 87, 69, 81, 78, 1, 210000, 10, v1, positivefeedback, v1, 2023-03-05);

-- League marketing contact information
CREATE TABLE League_Marketing_Contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    contact_name TEXT,
    role TEXT,
    email_address TEXT,
    phone_number TEXT,
    office_location TEXT,
    preferred_language TEXT,
    communication_channel TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    budget_responsibility_usd INTEGER,
    last_campaign_id INTEGER,
    social_media_handle TEXT,
    linkedin_profile TEXT,
    twitter_handle TEXT,
    instagram_handle TEXT,
    marketing_strategy_version TEXT,
    notes TEXT,
    active_flag INTEGER,
    last_updated TEXT
);
INSERT INTO League_Marketing_Contacts (league_id, contact_name, role, email_address, phone_number, office_location, preferred_language, communication_channel, contract_start_date, contract_end_date, budget_responsibility_usd, last_campaign_id, social_media_handle, linkedin_profile, twitter_handle, instagram_handle, marketing_strategy_version, notes, active_flag, last_updated) VALUES (1, AliceSmith, MarketingDirector, alice.smith@example.com, 5551234567, LondonOffice, English, Email, 2022-01-01, 2025-12-31, 500000, 3001, alicesmith, alice-smith, @alicesmith, alicesmithinsta, v2, initialsetup, 1, 2023-04-01);
INSERT INTO League_Marketing_Contacts (league_id, contact_name, role, email_address, phone_number, office_location, preferred_language, communication_channel, contract_start_date, contract_end_date, budget_responsibility_usd, last_campaign_id, social_media_handle, linkedin_profile, twitter_handle, instagram_handle, marketing_strategy_version, notes, active_flag, last_updated) VALUES (2, BobJones, BrandManager, bob.jones@example.com, 5559876543, MadridOffice, Spanish, Email, 2021-06-15, 2024-06-14, 350000, 3020, bobjones, bob-jones, @bobjones, bobjonesinsta, v3, renewed2023, 1, 2023-05-20);
INSERT INTO League_Marketing_Contacts (league_id, contact_name, role, email_address, phone_number, office_location, preferred_language, communication_channel, contract_start_date, contract_end_date, budget_responsibility_usd, last_campaign_id, social_media_handle, linkedin_profile, twitter_handle, instagram_handle, marketing_strategy_version, notes, active_flag, last_updated) VALUES (3, CarolLee, CommunicationsLead, carol.lee@example.com, 5555551212, BerlinOffice, German, Phone, 2020-09-01, 2023-08-31, 420000, 3055, carollee, carol-lee, @carollee, carolleeinsta, v1, contractending, 0, 2023-06-30);

-- Stadium security equipment inventory
CREATE TABLE Stadium_Security_Equipment (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    equipment_type TEXT,
    manufacturer TEXT,
    model_number TEXT,
    serial_number TEXT,
    purchase_date TEXT,
    warranty_expiration TEXT,
    installation_location TEXT,
    last_maintenance_date TEXT,
    maintenance_interval_days INTEGER,
    status TEXT,
    assigned_to_section TEXT,
    calibration_required INTEGER,
    calibration_date TEXT,
    depreciation_value_usd INTEGER,
    insurance_policy_number TEXT,
    compliance_certified INTEGER,
    notes TEXT,
    active_flag INTEGER,
    last_audit_timestamp TEXT
);
INSERT INTO Stadium_Security_Equipment (stadium_id, equipment_type, manufacturer, model_number, serial_number, purchase_date, warranty_expiration, installation_location, last_maintenance_date, maintenance_interval_days, status, assigned_to_section, calibration_required, calibration_date, depreciation_value_usd, insurance_policy_number, compliance_certified, notes, active_flag, last_audit_timestamp) VALUES (10, CCTV_Camera, SecureVision, SV1000, SN12345, 2021-04-10, 2024-04-09, EntranceA, 2023-03-01, 180, Operational, NorthGate, 1, 2023-02-28, 12000, POL001, 1, NoIssues, 1, 2023-04-15);
INSERT INTO Stadium_Security_Equipment (stadium_id, equipment_type, manufacturer, model_number, serial_number, purchase_date, warranty_expiration, installation_location, last_maintenance_date, maintenance_interval_days, status, assigned_to_section, calibration_required, calibration_date, depreciation_value_usd, insurance_policy_number, compliance_certified, notes, active_flag, last_audit_timestamp) VALUES (11, Metal_Detector, SafeCheck, MD200, SN67890, 2020-08-22, 2023-08-21, EntryHall, 2023-01-20, 365, Operational, MainEntrance, 0, NULL, 8000, POL002, 1, BatteryReplaced, 1, 2023-04-10);
INSERT INTO Stadium_Security_Equipment (stadium_id, equipment_type, manufacturer, model_number, serial_number, purchase_date, warranty_expiration, installation_location, last_maintenance_date, maintenance_interval_days, status, assigned_to_section, calibration_required, calibration_date, depreciation_value_usd, insurance_policy_number, compliance_certified, notes, active_flag, last_audit_timestamp) VALUES (12, Access_Control_Terminal, GateTech, ACT500, SN54321, 2019-11-05, 2022-11-04, SouthGate, 2022-12-01, 730, Decommissioned, SouthGate, 0, NULL, 5000, POL003, 0, Retired, 0, 2022-12-02);

-- Fan streaming analytics per match
CREATE TABLE Fan_Streaming_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    platform_name TEXT,
    concurrent_viewers INTEGER,
    peak_viewers INTEGER,
    average_watch_time_seconds INTEGER,
    total_stream_minutes INTEGER,
    unique_viewer_count INTEGER,
    geographic_region TEXT,
    device_type TEXT,
    playback_quality TEXT,
    buffering_events INTEGER,
    ad_impressions INTEGER,
    ad_clicks INTEGER,
    subscription_conversions INTEGER,
    chat_message_volume INTEGER,
    sentiment_score INTEGER,
    stream_start_timestamp TEXT,
    stream_end_timestamp TEXT,
    data_collection_version TEXT,
    last_updated TEXT
);
INSERT INTO Fan_Streaming_Analytics (match_id, platform_name, concurrent_viewers, peak_viewers, average_watch_time_seconds, total_stream_minutes, unique_viewer_count, geographic_region, device_type, playback_quality, buffering_events, ad_impressions, ad_clicks, subscription_conversions, chat_message_volume, sentiment_score, stream_start_timestamp, stream_end_timestamp, data_collection_version, last_updated) VALUES (5001, StreamX, 15000, 21000, 1800, 54000, 14000, Europe, Mobile, HD, 120, 25000, 340, 45, 8000, 78, 2023-04-01T18:00:00, 2023-04-01T20:00:00, v1, 2023-04-02);
INSERT INTO Fan_Streaming_Analytics (match_id, platform_name, concurrent_viewers, peak_viewers, average_watch_time_seconds, total_stream_minutes, unique_viewer_count, geographic_region, device_type, playback_quality, buffering_events, ad_impressions, ad_clicks, subscription_conversions, chat_message_volume, sentiment_score, stream_start_timestamp, stream_end_timestamp, data_collection_version, last_updated) VALUES (5002, LivePlay, 12000, 18000, 1650, 49500, 11500, Asia, Desktop, FullHD, 95, 22000, 310, 38, 7200, 82, 2023-04-02T15:00:00, 2023-04-02T17:00:00, v1, 2023-04-03);
INSERT INTO Fan_Streaming_Analytics (match_id, platform_name, concurrent_viewers, peak_viewers, average_watch_time_seconds, total_stream_minutes, unique_viewer_count, geographic_region, device_type, playback_quality, buffering_events, ad_impressions, ad_clicks, subscription_conversions, chat_message_volume, sentiment_score, stream_start_timestamp, stream_end_timestamp, data_collection_version, last_updated) VALUES (5003, GameStream, 9000, 15000, 1500, 45000, 8500, Americas, Tablet, HD, 80, 18000, 260, 30, 6500, 75, 2023-04-03T20:00:00, 2023-04-03T22:00:00, v1, 2023-04-04);

-- Team kit design catalog
CREATE TABLE Team_Kit_Designs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    season TEXT,
    kit_type TEXT,
    primary_color TEXT,
    secondary_color TEXT,
    third_color TEXT,
    manufacturer TEXT,
    design_code TEXT,
    pattern_description TEXT,
    sleeve_style TEXT,
    collar_style TEXT,
    fabric_type TEXT,
    sustainability_certified INTEGER,
    launch_date TEXT,
    retail_price_usd INTEGER,
    inventory_quantity INTEGER,
    online_availability_flag INTEGER,
    sample_image_path TEXT,
    design_approval_status TEXT,
    notes TEXT,
    last_updated TEXT
);
INSERT INTO Team_Kit_Designs (team_id, season, kit_type, primary_color, secondary_color, third_color, manufacturer, design_code, pattern_description, sleeve_style, collar_style, fabric_type, sustainability_certified, launch_date, retail_price_usd, inventory_quantity, online_availability_flag, sample_image_path, design_approval_status, notes, last_updated) VALUES (201, 2023-24, Home, Blue, White, Black, SportCo, DK001, StripedDiagonal, Long, VNeck, PolyBlend, 1, 2023-07-01, 120, 5000, 1, /images/kits/201_home.png, Approved, FirstRelease, 2023-06-15);
INSERT INTO Team_Kit_Designs (team_id, season, kit_type, primary_color, secondary_color, third_color, manufacturer, design_code, pattern_description, sleeve_style, collar_style, fabric_type, sustainability_certified, launch_date, retail_price_usd, inventory_quantity, online_availability_flag, sample_image_path, design_approval_status, notes, last_updated) VALUES (202, 2023-24, Away, Red, Black, Grey, GearMakers, DK002, Solid, Short, Round, RecycledPoly, 1, 2023-07-05, 115, 4500, 1, /images/kits/202_away.png, Approved, MinorUpdate, 2023-06-20);
INSERT INTO Team_Kit_Designs (team_id, season, kit_type, primary_color, secondary_color, third_color, manufacturer, design_code, pattern_description, sleeve_style, collar_style, fabric_type, sustainability_certified, launch_date, retail_price_usd, inventory_quantity, online_availability_flag, sample_image_path, design_approval_status, notes, last_updated) VALUES (203, 2023-24, Third, Green, Yellow, White, EliteWear, DK003, Gradient, Long, Polo, BioCotton, 0, 2023-08-01, 130, 3000, 0, /images/kits/203_third.png, Pending, AwaitingApproval, 2023-07-01);

-- Referee assignment log per season
CREATE TABLE Referee_Assignment_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    referee_id INTEGER,
    season TEXT,
    match_id INTEGER,
    assignment_role TEXT,
    home_team_api_id INTEGER,
    away_team_api_id INTEGER,
    assignment_date TEXT,
    days_before_match INTEGER,
    travel_distance_km INTEGER,
    accommodation_type TEXT,
    lodging_hotel_name TEXT,
    lodging_nights INTEGER,
    stipend_usd INTEGER,
    performance_rating INTEGER,
    notes TEXT,
    approved_by TEXT,
    approval_timestamp TEXT,
    data_version TEXT,
    last_updated TEXT
);
INSERT INTO Referee_Assignment_Log (referee_id, season, match_id, assignment_role, home_team_api_id, away_team_api_id, assignment_date, days_before_match, travel_distance_km, accommodation_type, lodging_hotel_name, lodging_nights, stipend_usd, performance_rating, notes, approved_by, approval_timestamp, data_version, last_updated) VALUES (301, 2023-24, 6001, Main, 8001, 8002, 2023-09-15, 3, 250, Hotel, GrandHotel, 2, 350, 9, NoIssues, ChiefReferee, 2023-09-10T10:00:00, v1, 2023-09-12);
INSERT INTO Referee_Assignment_Log (referee_id, season, match_id, assignment_role, home_team_api_id, away_team_api_id, assignment_date, days_before_match, travel_distance_km, accommodation_type, lodging_hotel_name, lodging_nights, stipend_usd, performance_rating, notes, approved_by, approval_timestamp, data_version, last_updated) VALUES (302, 2023-24, 6002, Assistant, 8003, 8004, 2023-09-16, 2, 180, Apartment, CityApartments, 1, 120, 8, MinorDelay, ChiefReferee, 2023-09-11T09:30:00, v1, 2023-09-13);
INSERT INTO Referee_Assignment_Log (referee_id, season, match_id, assignment_role, home_team_api_id, away_team_api_id, assignment_date, days_before_match, travel_distance_km, accommodation_type, lodging_hotel_name, lodging_nights, stipend_usd, performance_rating, notes, approved_by, approval_timestamp, data_version, last_updated) VALUES (303, 2023-24, 6003, FourthOfficial, 8005, 8006, 2023-09-17, 1, 90, None, NULL, 0, 80, 7, LateArrival, ChiefReferee, 2023-09-12T08:45:00, v1, 2023-09-14);

-- Travel housing records for clubs
CREATE TABLE Travel_Housing_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    season TEXT,
    destination_city TEXT,
    hotel_name TEXT,
    check_in_date TEXT,
    check_out_date TEXT,
    room_type TEXT,
    number_of_rooms INTEGER,
    total_cost_usd INTEGER,
    booking_reference TEXT,
    travel_agency TEXT,
    special_requests TEXT,
    breakfast_included_flag INTEGER,
    wifi_included_flag INTEGER,
    cancellation_policy TEXT,
    payment_status TEXT,
    notes TEXT,
    last_modified_by TEXT,
    last_modified_timestamp TEXT,
    data_version TEXT
);
INSERT INTO Travel_Housing_Records (club_id, season, destination_city, hotel_name, check_in_date, check_out_date, room_type, number_of_rooms, total_cost_usd, booking_reference, travel_agency, special_requests, breakfast_included_flag, wifi_included_flag, cancellation_policy, payment_status, notes, last_modified_by, last_modified_timestamp, data_version) VALUES (401, 2023-24, Madrid, HotelRoyal, 2023-10-01, 2023-10-07, Double, 6, 7200, REF12345, TravelPro, LateCheckIn, 1, 1, Flexible, Paid, GoodStay, AdminUser, 2023-09-20T14:00:00, v1);
INSERT INTO Travel_Housing_Records (club_id, season, destination_city, hotel_name, check_in_date, check_out_date, room_type, number_of_rooms, total_cost_usd, booking_reference, travel_agency, special_requests, breakfast_included_flag, wifi_included_flag, cancellation_policy, payment_status, notes, last_modified_by, last_modified_timestamp, data_version) VALUES (402, 2023-24, Berlin, CityInn, 2023-11-05, 2023-11-10, Suite, 4, 5600, REF67890, GlobeTravel, EarlyCheckIn, 1, 1, Strict, Pending, AwaitingInvoice, FinanceTeam, 2023-10-01T09:30:00, v1);
INSERT INTO Travel_Housing_Records (club_id, season, destination_city, hotel_name, check_in_date, check_out_date, room_type, number_of_rooms, total_cost_usd, booking_reference, travel_agency, special_requests, breakfast_included_flag, wifi_included_flag, cancellation_policy, payment_status, notes, last_modified_by, last_modified_timestamp, data_version) VALUES (403, 2023-24, Paris, EleganceHotel, 2023-12-15, 2023-12-20, Single, 8, 6400, REF24680, EliteTravel, NearStadium, 1, 1, Moderate, Paid, ExcellentService, AdminUser, 2023-11-20T11:15:00, v1);

-- Broadcast language options per match
CREATE TABLE Broadcast_Language_Options (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    language_code TEXT,
    audio_available_flag INTEGER,
    subtitle_available_flag INTEGER,
    broadcast_network TEXT,
    commentary_team TEXT,
    transmission_type TEXT,
    start_timestamp TEXT,
    end_timestamp TEXT,
    viewership_estimate INTEGER,
    market_share_percent REAL,
    notes TEXT,
    data_collection_version TEXT,
    last_updated TEXT
);
INSERT INTO Broadcast_Language_Options (match_id, language_code, audio_available_flag, subtitle_available_flag, broadcast_network, commentary_team, transmission_type, start_timestamp, end_timestamp, viewership_estimate, market_share_percent, notes, data_collection_version, last_updated) VALUES (7001, EN, 1, 1, GlobalSports, JohnDoeTeam, Live, 2023-04-01T18:00:00, 2023-04-01T20:00:00, 2500000, 32.5, PrimaryEnglishFeed, v1, 2023-04-02);
INSERT INTO Broadcast_Language_Options (match_id, language_code, audio_available_flag, subtitle_available_flag, broadcast_network, commentary_team, transmission_type, start_timestamp, end_timestamp, viewership_estimate, market_share_percent, notes, data_collection_version, last_updated) VALUES (7001, ES, 1, 1, MundoDeporte, MariaLopezTeam, Live, 2023-04-01T18:00:00, 2023-04-01T20:00:00, 1800000, 24.1, SpanishFeed, v1, 2023-04-02);
INSERT INTO Broadcast_Language_Options (match_id, language_code, audio_available_flag, subtitle_available_flag, broadcast_network, commentary_team, transmission_type, start_timestamp, end_timestamp, viewership_estimate, market_share_percent, notes, data_collection_version, last_updated) VALUES (7001, FR, 0, 1, EuroSport, PierreDuboisTeam, Live, 2023-04-01T18:00:00, 2023-04-01T20:00:00, 900000, 12.0, FrenchSubtitleOnly, v1, 2023-04-02);

-- Sponsor social media campaign details
CREATE TABLE Sponsor_Social_Media_Campaigns (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    campaign_name TEXT,
    start_date TEXT,
    end_date TEXT,
    platform TEXT,
    target_audience TEXT,
    budget_usd INTEGER,
    impressions INTEGER,
    clicks INTEGER,
    engagements INTEGER,
    video_views INTEGER,
    click_through_rate REAL,
    cost_per_click_usd REAL,
    cost_per_engagement_usd REAL,
    influencer_used_flag INTEGER,
    influencer_handle TEXT,
    hashtags_used TEXT,
    creative_asset_path TEXT,
    performance_rating INTEGER,
    notes TEXT,
    last_review_timestamp TEXT
);
INSERT INTO Sponsor_Social_Media_Campaigns (sponsor_id, campaign_name, start_date, end_date, platform, target_audience, budget_usd, impressions, clicks, engagements, video_views, click_through_rate, cost_per_click_usd, cost_per_engagement_usd, influencer_used_flag, influencer_handle, hashtags_used, creative_asset_path, performance_rating, notes, last_review_timestamp) VALUES (501, SpringLaunch2023, 2023-03-01, 2023-04-30, Instagram, Millennials, 150000, 5000000, 25000, 80000, 120000, 0.5, 6.0, 1.875, 1, @fashionstar, #spring2023#newlook, /assets/campaigns/spring2023.png, 8, StrongEngagement, 2023-05-01T12:00:00);
INSERT INTO Sponsor_Social_Media_Campaigns (sponsor_id, campaign_name, start_date, end_date, platform, target_audience, budget_usd, impressions, clicks, engagements, video_views, click_through_rate, cost_per_click_usd, cost_per_engagement_usd, influencer_used_flag, influencer_handle, hashtags_used, creative_asset_path, performance_rating, notes, last_review_timestamp) VALUES (502, SummerFit2023, 2023-06-01, 2023-07-31, TikTok, GenZ, 200000, 8000000, 40000, 120000, 250000, 0.5, 5.0, 1.666, 1, @fitguru, #summerfit#active, /assets/campaigns/summerfit2023.mp4, 9, ExcellentReach, 2023-08-01T15:30:00);
INSERT INTO Sponsor_Social_Media_Campaigns (sponsor_id, campaign_name, start_date, end_date, platform, target_audience, budget_usd, impressions, clicks, engagements, video_views, click_through_rate, cost_per_click_usd, cost_per_engagement_usd, influencer_used_flag, influencer_handle, hashtags_used, creative_asset_path, performance_rating, notes, last_review_timestamp) VALUES (503, AutumnGear2023, 2023-09-01, 2023-10-31, Twitter, Adults, 120000, 4000000, 18000, 60000, 90000, 0.45, 6.666, 2.0, 0, NULL, #autumngear#style, /assets/campaigns/autumngear2023.png, 7, ModerateResults, 2023-11-01T10:20:00);

-- Club community outreach programs
CREATE TABLE Club_Community_Outreach_Programs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    program_name TEXT,
    start_date TEXT,
    end_date TEXT,
    target_group TEXT,
    activity_type TEXT,
    location TEXT,
    number_of_participants INTEGER,
    volunteer_count INTEGER,
    budget_usd INTEGER,
    sponsor_name TEXT,
    coordinator_name TEXT,
    contact_email TEXT,
    outcome_summary TEXT,
    media_coverage_flag INTEGER,
    press_release_path TEXT,
    feedback_score INTEGER,
    notes TEXT,
    data_version TEXT,
    last_updated TEXT
);
INSERT INTO Club_Community_Outreach_Programs (club_id, program_name, start_date, end_date, target_group, activity_type, location, number_of_participants, volunteer_count, budget_usd, sponsor_name, coordinator_name, contact_email, outcome_summary, media_coverage_flag, press_release_path, feedback_score, notes, data_version, last_updated) VALUES (601, KidsFootballCamp, 2023-07-01, 2023-07-14, Children, Training, CommunityPark, 150, 20, 30000, LocalBiz, EmmaClark, emma.clark@example.com, HighEngagement, 1, /press/kidscamp2023.pdf, 9, PositiveImpact, v1, 2023-07-20);
INSERT INTO Club_Community_Outreach_Programs (club_id, program_name, start_date, end_date, target_group, activity_type, location, number_of_participants, volunteer_count, budget_usd, sponsor_name, coordinator_name, contact_email, outcome_summary, media_coverage_flag, press_release_path, feedback_score, notes, data_version, last_updated) VALUES (602, SeniorHealthWalk, 2023-09-10, 2023-09-10, Seniors, Walkathon, CityCenter, 80, 10, 15000, HealthOrg, LuisMartinez, luis.martinez@example.com, GoodParticipation, 1, /press/seniorwalk2023.pdf, 8, WellReceived, v1, 2023-09-15);
INSERT INTO Club_Community_Outreach_Programs (club_id, program_name, start_date, end_date, target_group, activity_type, location, number_of_participants, volunteer_count, budget_usd, sponsor_name, coordinator_name, contact_email, outcome_summary, media_coverage_flag, press_release_path, feedback_score, notes, data_version, last_updated) VALUES (603, EcoStadiumInitiative, 2023-11-01, 2023-11-30, Community, Recycling, StadiumGrounds, 200, 25, 50000, GreenEnergy, SaraNguyen, sara.nguyen@example.com, ImprovedRecyclingRates, 1, /press/ecoinitiative2023.pdf, 9, SustainableSuccess, v1, 2023-12-05);

-- Training facility utilization metrics
CREATE TABLE Training_Facility_Utilization (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    facility_id INTEGER,
    date TEXT,
    sport_type TEXT,
    hour_slot TEXT,
    booked_by_team_id INTEGER,
    usage_type TEXT,
    attendance_count INTEGER,
    equipment_used TEXT,
    average_intensity_level INTEGER,
    coach_present_flag INTEGER,
    weather_condition TEXT,
    notes TEXT,
    maintenance_issue_flag INTEGER,
    maintenance_action TEXT,
    data_version TEXT,
    last_updated TEXT,
    auditor_name TEXT,
    audit_timestamp TEXT
);
INSERT INTO Training_Facility_Utilization (facility_id, date, sport_type, hour_slot, booked_by_team_id, usage_type, attendance_count, equipment_used, average_intensity_level, coach_present_flag, weather_condition, notes, maintenance_issue_flag, maintenance_action, data_version, last_updated, auditor_name, audit_timestamp) VALUES (801, 2023-04-05, Football, 09:00-11:00, 201, Practice, 22, Balls, 7, 1, Clear, WarmUpSession, 0, NULL, v1, 2023-04-06, JohnDoe, 2023-04-06T08:00:00);
INSERT INTO Training_Facility_Utilization (facility_id, date, sport_type, hour_slot, booked_by_team_id, usage_type, attendance_count, equipment_used, average_intensity_level, coach_present_flag, weather_condition, notes, maintenance_issue_flag, maintenance_action, data_version, last_updated, auditor_name, audit_timestamp) VALUES (802, 2023-04-06, Basketball, 14:00-16:00, 202, Drills, 15, Cones, 6, 1, Cloudy, SkillDrills, 1, RepairedNet, v1, 2023-04-07, JaneSmith, 2023-04-07T13:30:00);
INSERT INTO Training_Facility_Utilization (facility_id, date, sport_type, hour_slot, booked_by_team_id, usage_type, attendance_count, equipment_used, average_intensity_level, coach_present_flag, weather_condition, notes, maintenance_issue_flag, maintenance_action, data_version, last_updated, auditor_name, audit_timestamp) VALUES (803, 2023-04-07, Volleyball, 17:00-19:00, 203, MatchPrep, 12, Nets, 8, 0, Rain, IndoorPractice, 0, NULL, v1, 2023-04-08, MarkLee, 2023-04-08T16:45:00);

-- Fan purchase history across merchandising channels
CREATE TABLE Fan_Purchase_History (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    purchase_timestamp TEXT,
    channel TEXT,
    product_category TEXT,
    product_sku TEXT,
    quantity INTEGER,
    unit_price_usd INTEGER,
    total_price_usd INTEGER,
    discount_percent REAL,
    payment_method TEXT,
    shipping_country TEXT,
    delivery_status TEXT,
    return_flag INTEGER,
    return_reason TEXT,
    loyalty_points_earned INTEGER,
    campaign_code TEXT,
    promo_applied_flag INTEGER,
    notes TEXT,
    data_version TEXT,
    last_updated TEXT
);
INSERT INTO Fan_Purchase_History (fan_id, purchase_timestamp, channel, product_category, product_sku, quantity, unit_price_usd, total_price_usd, discount_percent, payment_method, shipping_country, delivery_status, return_flag, return_reason, loyalty_points_earned, campaign_code, promo_applied_flag, notes, data_version, last_updated) VALUES (1001, 2023-05-01T10:15:00, OnlineStore, Apparel, APP001, 2, 40, 80, 5.0, CreditCard, USA, Delivered, 0, NULL, 20, SPRING2023, 1, SatisfiedCustomer, v1, 2023-05-02);
INSERT INTO Fan_Purchase_History (fan_id, purchase_timestamp, channel, product_category, product_sku, quantity, unit_price_usd, total_price_usd, discount_percent, payment_method, shipping_country, delivery_status, return_flag, return_reason, loyalty_points_earned, campaign_code, promo_applied_flag, notes, data_version, last_updated) VALUES (1002, 2023-05-03T14:30:00, MobileApp, Accessories, ACC005, 1, 15, 15, 0.0, PayPal, Canada, Delivered, 0, NULL, 5, SUMMER2023, 0, QuickPurchase, v1, 2023-05-04);
INSERT INTO Fan_Purchase_History (fan_id, purchase_timestamp, channel, product_category, product_sku, quantity, unit_price_usd, total_price_usd, discount_percent, payment_method, shipping_country, delivery_status, return_flag, return_reason, loyalty_points_earned, campaign_code, promo_applied_flag, notes, data_version, last_updated) VALUES (1003, 2023-05-05T09:45:00, PhysicalStore, Tickets, TKT123, 4, 30, 120, 10.0, DebitCard, UK, Delivered, 1, SizeIssue, 12, FALL2023, 1, ReturnedItem, v1, 2023-05-06);

-- Stadium lighting logs for maintenance
CREATE TABLE Stadium_Lighting_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    log_date TEXT,
    lighting_zone TEXT,
    fixture_type TEXT,
    manufacturer TEXT,
    model_number TEXT,
    lumens_output INTEGER,
    power_consumption_watts INTEGER,
    operational_status TEXT,
    fault_code TEXT,
    maintenance_action TEXT,
    technician_name TEXT,
    maintenance_duration_minutes INTEGER,
    next_inspection_due TEXT,
    energy_efficiency_rating TEXT,
    notes TEXT,
    data_version TEXT,
    last_updated TEXT,
    auditor TEXT,
    audit_timestamp TEXT
);
INSERT INTO Stadium_Lighting_Logs (stadium_id, log_date, lighting_zone, fixture_type, manufacturer, model_number, lumens_output, power_consumption_watts, operational_status, fault_code, maintenance_action, technician_name, maintenance_duration_minutes, next_inspection_due, energy_efficiency_rating, notes, data_version, last_updated, auditor, audit_timestamp) VALUES (10, 2023-04-10, NorthStands, LED, BrightLights, BL1000, 50000, 1200, Operational, NULL, Cleaned, MikeTaylor, 45, 2024-04-10, A++, RoutineCheck, v1, 2023-04-11, JaneSmith, 2023-04-11T09:00:00);
INSERT INTO Stadium_Lighting_Logs (stadium_id, log_date, lighting_zone, fixture_type, manufacturer, model_number, lumens_output, power_consumption_watts, operational_status, fault_code, maintenance_action, technician_name, maintenance_duration_minutes, next_inspection_due, energy_efficiency_rating, notes, data_version, last_updated, auditor, audit_timestamp) VALUES (11, 2023-04-12, SouthStands, HID, LightTech, LT200, 75000, 1800, Fault, FT01, ReplacedLamp, SarahBrown, 60, 2024-04-12, A+, LampFailure, v1, 2023-04-13, JohnDoe, 2023-04-13T10:30:00);
INSERT INTO Stadium_Lighting_Logs (stadium_id, log_date, lighting_zone, fixture_type, manufacturer, model_number, lumens_output, power_consumption_watts, operational_status, fault_code, maintenance_action, technician_name, maintenance_duration_minutes, next_inspection_due, energy_efficiency_rating, notes, data_version, last_updated, auditor, audit_timestamp) VALUES (12, 2023-04-15, Roof, LED, SunBright, SB3000, 60000, 1300, Operational, NULL, FirmwareUpdate, AlexKing, 30, 2025-04-15, A++, SoftwareUpgrade, v1, 2023-04-16, EmilyWhite, 2023-04-16T11:45:00);
