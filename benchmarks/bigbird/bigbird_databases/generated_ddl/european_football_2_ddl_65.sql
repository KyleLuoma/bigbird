-- Player_Media_Stats: aggregated media exposure metrics for each player
CREATE TABLE Player_Media_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    interview_count INTEGER,
    podcast_appearances INTEGER,
    tv_appearances INTEGER,
    social_media_mentions INTEGER,
    blog_features INTEGER,
    endorsement_mentions INTEGER,
    media_sentiment_score REAL,
    last_media_date TEXT,
    video_views INTEGER,
    article_reads INTEGER,
    press_release_count INTEGER,
    fan_interaction_score REAL,
    sponsor_spotlight INTEGER,
    media_campaigns_participated INTEGER,
    brand_mentions INTEGER,
    macro_sentiment REAL,
    regional_coverage INTEGER,
    media_award_nominations INTEGER
);
INSERT INTO Player_Media_Stats (player_api_id, interview_count, podcast_appearances, tv_appearances, social_media_mentions, blog_features, endorsement_mentions, media_sentiment_score, last_media_date, video_views, article_reads, press_release_count, fan_interaction_score, sponsor_spotlight, media_campaigns_participated, brand_mentions, macro_sentiment, regional_coverage, media_award_nominations) VALUES (101, 5, 2, 3, 120, 4, 1, 7.5, '2024-03-10', 250000, 8000, 12, 8.2, 1, 2, 45, 6.8, 3, 0);
INSERT INTO Player_Media_Stats (player_api_id, interview_count, podcast_appearances, tv_appearances, social_media_mentions, blog_features, endorsement_mentions, media_sentiment_score, last_media_date, video_views, article_reads, press_release_count, fan_interaction_score, sponsor_spotlight, media_campaigns_participated, brand_mentions, macro_sentiment, regional_coverage, media_award_nominations) VALUES (202, 8, 5, 7, 340, 10, 3, 8.1, '2024-04-22', 720000, 15000, 20, 9.5, 0, 4, 78, 7.2, 5, 1);
INSERT INTO Player_Media_Stats (player_api_id, interview_count, podcast_appearances, tv_appearances, social_media_mentions, blog_features, endorsement_mentions, media_sentiment_score, last_media_date, video_views, article_reads, press_release_count, fan_interaction_score, sponsor_spotlight, media_campaigns_participated, brand_mentions, macro_sentiment, regional_coverage, media_award_nominations) VALUES (303, 2, 1, 0, 45, 2, 0, 6.0, '2024-01-15', 95000, 3000, 5, 5.1, 1, 1, 22, 5.5, 1, 0);

-- Team_Social_Engagement: social media metrics per team
CREATE TABLE Team_Social_Engagement (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    twitter_followers INTEGER,
    instagram_followers INTEGER,
    facebook_likes INTEGER,
    youtube_subscribers INTEGER,
    tiktok_followers INTEGER,
    average_post_engagement REAL,
    monthly_content_posts INTEGER,
    fan_interaction_rate REAL,
    brand_mentions_social INTEGER,
    hashtag_usage_count INTEGER,
    viral_post_count INTEGER,
    influencer_collabs INTEGER,
    social_sentiment_score REAL,
    peak_engagement_hour INTEGER,
    regional_fan_growth INTEGER,
    campaign_reach INTEGER,
    story_views_average INTEGER,
    live_stream_viewers INTEGER
);
INSERT INTO Team_Social_Engagement (team_api_id, twitter_followers, instagram_followers, facebook_likes, youtube_subscribers, tiktok_followers, average_post_engagement, monthly_content_posts, fan_interaction_rate, brand_mentions_social, hashtag_usage_count, viral_post_count, influencer_collabs, social_sentiment_score, peak_engagement_hour, regional_fan_growth, campaign_reach, story_views_average, live_stream_viewers) VALUES (1001, 452000, 780000, 310000, 120000, 640000, 4.3, 28, 2.1, 1500, 320, 7, 3, 6.9, 19, 5, 850000, 12000, 45000);
INSERT INTO Team_Social_Engagement (team_api_id, twitter_followers, instagram_followers, facebook_likes, youtube_subscribers, tiktok_followers, average_post_engagement, monthly_content_posts, fan_interaction_rate, brand_mentions_social, hashtag_usage_count, viral_post_count, influencer_collabs, social_sentiment_score, peak_engagement_hour, regional_fan_growth, campaign_reach, story_views_average, live_stream_viewers) VALUES (1002, 120000, 340000, 90000, 45000, 210000, 3.8, 22, 1.7, 720, 140, 4, 2, 5.4, 21, 3, 430000, 8500, 26000);
INSERT INTO Team_Social_Engagement (team_api_id, twitter_followers, instagram_followers, facebook_likes, youtube_subscribers, tiktok_followers, average_post_engagement, monthly_content_posts, fan_interaction_rate, brand_mentions_social, hashtag_usage_count, viral_post_count, influencer_collabs, social_sentiment_score, peak_engagement_hour, regional_fan_growth, campaign_reach, story_views_average, live_stream_viewers) VALUES (1003, 78500, 150000, 56000, 30000, 98000, 4.1, 25, 1.9, 980, 210, 5, 1, 6.2, 20, 4, 620000, 10200, 34000);

-- Match_Operational_Log: logistical and safety data for each match
CREATE TABLE Match_Operational_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    security_staff_on_duty INTEGER,
    medical_team_on_site INTEGER,
    stadium_entry_time TEXT,
    stadium_exit_time TEXT,
    crowd_control_incidents INTEGER,
    weather_reading TEXT,
    power_outage_minutes INTEGER,
    wifi_downtime_minutes INTEGER,
    emergency_drill_conducted INTEGER,
    cleaning_staff_count INTEGER,
    catering_staff_on_site INTEGER,
    lost_and_found_items INTEGER,
    stadium_noise_level_db INTEGER,
    lighting_issues_reported INTEGER,
    gate_closure_time TEXT,
    ticket_scanner_failures INTEGER,
    backup_generator_used INTEGER,
    post_match_cleanup_duration INTEGER
);
INSERT INTO Match_Operational_Log (match_id, security_staff_on_duty, medical_team_on_site, stadium_entry_time, stadium_exit_time, crowd_control_incidents, weather_reading, power_outage_minutes, wifi_downtime_minutes, emergency_drill_conducted, cleaning_staff_count, catering_staff_on_site, lost_and_found_items, stadium_noise_level_db, lighting_issues_reported, gate_closure_time, ticket_scanner_failures, backup_generator_used, post_match_cleanup_duration) VALUES (50001, 85, 12, '15:30', '18:45', 2, 'Clear', 0, 5, 1, 30, 22, 8, 92, 0, '18:10', 1, 0, 45);
INSERT INTO Match_Operational_Log (match_id, security_staff_on_duty, medical_team_on_site, stadium_entry_time, stadium_exit_time, crowd_control_incidents, weather_reading, power_outage_minutes, wifi_downtime_minutes, emergency_drill_conducted, cleaning_staff_count, catering_staff_on_site, lost_and_found_items, stadium_noise_level_db, lighting_issues_reported, gate_closure_time, ticket_scanner_failures, backup_generator_used, post_match_cleanup_duration) VALUES (50002, 70, 9, '13:00', '15:50', 0, 'Rain', 12, 0, 0, 28, 18, 3, 88, 1, '15:20', 0, 1, 38);
INSERT INTO Match_Operational_Log (match_id, security_staff_on_duty, medical_team_on_site, stadium_entry_time, stadium_exit_time, crowd_control_incidents, weather_reading, power_outage_minutes, wifi_downtime_minutes, emergency_drill_conducted, cleaning_staff_count, catering_staff_on_site, lost_and_found_items, stadium_noise_level_db, lighting_issues_reported, gate_closure_time, ticket_scanner_failures, backup_generator_used, post_match_cleanup_duration) VALUES (50003, 95, 15, '19:00', '22:15', 4, 'Cloudy', 0, 2, 1, 34, 25, 12, 100, 2, '22:00', 2, 0, 52);

-- League_Financial_Summary: high‑level financial figures for each league season
CREATE TABLE League_Financial_Summary (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    total_revenue_usd INTEGER,
    broadcasting_rights_usd INTEGER,
    sponsorship_usd INTEGER,
    ticket_sales_usd INTEGER,
    merchandise_sales_usd INTEGER,
    digital_media_revenue_usd INTEGER,
    operational_costs_usd INTEGER,
    profit_before_tax_usd INTEGER,
    net_profit_usd INTEGER,
    average_club_revenue_usd INTEGER,
    average_player_salary_usd INTEGER,
    salary_cap_usd INTEGER,
    financial_fair_play_points INTEGER,
    revenue_growth_percent REAL,
    expense_growth_percent REAL,
    audit_status TEXT,
    fiscal_year TEXT,
    currency_code TEXT
);
INSERT INTO League_Financial_Summary (league_id, total_revenue_usd, broadcasting_rights_usd, sponsorship_usd, ticket_sales_usd, merchandise_sales_usd, digital_media_revenue_usd, operational_costs_usd, profit_before_tax_usd, net_profit_usd, average_club_revenue_usd, average_player_salary_usd, salary_cap_usd, financial_fair_play_points, revenue_growth_percent, expense_growth_percent, audit_status, fiscal_year, currency_code) VALUES (10, 820000000, 300000000, 150000000, 200000000, 120000000, 50000000, 400000000, 420000000, 380000000, 82000000, 2500000, 50000000, 85, 4.5, 2.3, 'Completed', '2023', 'USD');
INSERT INTO League_Financial_Summary (league_id, total_revenue_usd, broadcasting_rights_usd, sponsorship_usd, ticket_sales_usd, merchandise_sales_usd, digital_media_revenue_usd, operational_costs_usd, profit_before_tax_usd, net_profit_usd, average_club_revenue_usd, average_player_salary_usd, salary_cap_usd, financial_fair_play_points, revenue_growth_percent, expense_growth_percent, audit_status, fiscal_year, currency_code) VALUES (11, 540000000, 180000000, 90000000, 140000000, 80000000, 30000000, 260000000, 280000000, 250000000, 54000000, 1800000, 35000000, 78, 3.8, 1.9, 'Pending', '2023', 'USD');
INSERT INTO League_Financial_Summary (league_id, total_revenue_usd, broadcasting_rights_usd, sponsorship_usd, ticket_sales_usd, merchandise_sales_usd, digital_media_revenue_usd, operational_costs_usd, profit_before_tax_usd, net_profit_usd, average_club_revenue_usd, average_player_salary_usd, salary_cap_usd, financial_fair_play_points, revenue_growth_percent, expense_growth_percent, audit_status, fiscal_year, currency_code) VALUES (12, 410000000, 130000000, 70000000, 110000000, 60000000, 25000000, 210000000, 210000000, 190000000, 41000000, 1500000, 25000000, 82, 2.1, 2.5, 'Completed', '2023', 'USD');

-- Stadium_Environmental_Sensors: readings from various IoT sensors installed in stadiums
CREATE TABLE Stadium_Environmental_Sensors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    sensor_type TEXT,
    sensor_location TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    noise_db INTEGER,
    air_quality_index INTEGER,
    solar_power_output_kw REAL,
    wind_speed_mps REAL,
    rain_mm REAL,
    power_consumption_kw REAL,
    water_usage_liters INTEGER,
    waste_generated_kg REAL,
    maintenance_status TEXT,
    last_calibration_date TEXT,
    battery_level_percent REAL,
    data_transmission_status TEXT,
    alert_flag INTEGER
);
INSERT INTO Stadium_Environmental_Sensors (stadium_id, sensor_type, sensor_location, temperature_c, humidity_percent, co2_ppm, noise_db, air_quality_index, solar_power_output_kw, wind_speed_mps, rain_mm, power_consumption_kw, water_usage_liters, waste_generated_kg, maintenance_status, last_calibration_date, battery_level_percent, data_transmission_status, alert_flag) VALUES (2001, 'Temperature', 'NorthRoof', 22.5, 45.2, 420, 78, 42, 5.6, 3.2, 0.0, 120.5, 85000, 12.3, 'OK', '2024-01-15', 94.5, 'Online', 0);
INSERT INTO Stadium_Environmental_Sensors (stadium_id, sensor_type, sensor_location, temperature_c, humidity_percent, co2_ppm, noise_db, air_quality_index, solar_power_output_kw, wind_speed_mps, rain_mm, power_consumption_kw, water_usage_liters, waste_generated_kg, maintenance_status, last_calibration_date, battery_level_percent, data_transmission_status, alert_flag) VALUES (2002, 'AirQuality', 'EastGate', 24.0, 50.1, 560, 85, 65, 0.0, 0.0, 0.0, 142.3, 97000, 15.7, 'MaintenanceDue', '2023-12-01', 78.2, 'Offline', 1);
INSERT INTO Stadium_Environmental_Sensors (stadium_id, sensor_type, sensor_location, temperature_c, humidity_percent, co2_ppm, noise_db, air_quality_index, solar_power_output_kw, wind_speed_mps, rain_mm, power_consumption_kw, water_usage_liters, waste_generated_kg, maintenance_status, last_calibration_date, battery_level_percent, data_transmission_status, alert_flag) VALUES (2003, 'Noise', 'SouthStands', 21.8, 48.5, 390, 92, 38, 3.1, 2.5, 0.0, 110.0, 80000, 10.4, 'OK', '2024-02-20', 88.9, 'Online', 0);

-- Fan_Digital_Reward_Inventory: catalog of digital rewards redeemable by fans
CREATE TABLE Fan_Digital_Reward_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    reward_code TEXT,
    reward_name TEXT,
    reward_category TEXT,
    points_required INTEGER,
    stock_quantity INTEGER,
    redemption_limit_per_fan INTEGER,
    start_date TEXT,
    end_date TEXT,
    description TEXT,
    image_url TEXT,
    tier_level INTEGER,
    exclusive_flag INTEGER,
    region_available TEXT,
    created_by TEXT,
    created_date TEXT,
    last_modified_by TEXT,
    last_modified_date TEXT,
    active_flag INTEGER,
    promotional_campaign TEXT
);
INSERT INTO Fan_Digital_Reward_Inventory (reward_code, reward_name, reward_category, points_required, stock_quantity, redemption_limit_per_fan, start_date, end_date, description, image_url, tier_level, exclusive_flag, region_available, created_by, created_date, last_modified_by, last_modified_date, active_flag, promotional_campaign) VALUES ('DR001', 'Golden Ticket', 'Access', 1500, 500, 1, '2024-03-01', '2024-06-30', 'VIP match day entry', 'http://example.com/img1.png', 5, 1, 'Global', 'admin', '2024-02-20', 'admin', '2024-02-20', 1, 'SpringLaunch');
INSERT INTO Fan_Digital_Reward_Inventory (reward_code, reward_name, reward_category, points_required, stock_quantity, redemption_limit_per_fan, start_date, end_date, description, image_url, tier_level, exclusive_flag, region_available, created_by, created_date, last_modified_by, last_modified_date, active_flag, promotional_campaign) VALUES ('DR002', 'Team Scarf', 'Merchandise', 300, 2000, 2, '2024-04-01', '2024-12-31', 'Official club scarf', 'http://example.com/img2.png', 2, 0, 'EU', 'marketing', '2024-03-15', 'marketing', '2024-03-15', 1, 'SummerPromo');
INSERT INTO Fan_Digital_Reward_Inventory (reward_code, reward_name, reward_category, points_required, stock_quantity, redemption_limit_per_fan, start_date, end_date, description, image_url, tier_level, exclusive_flag, region_available, created_by, created_date, last_modified_by, last_modified_date, active_flag, promotional_campaign) VALUES ('DR003', 'Digital Badge', 'Badge', 100, 10000, 5, '2024-01-01', '2025-01-01', 'Earn a special fan badge', 'http://example.com/img3.png', 1, 0, 'Global', 'system', '2024-01-01', 'system', '2024-01-01', 1, 'YearRound');

-- Player_Biometric_Tracking: per‑match biometric data captured from players
CREATE TABLE Player_Biometric_Tracking (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    match_id INTEGER,
    gps_latitude REAL,
    gps_longitude REAL,
    heart_rate_bpm INTEGER,
    speed_kmh REAL,
    acceleration_mps2 REAL,
    distance_covered_km REAL,
    fatigue_score REAL,
    recovery_time_minutes INTEGER,
    injury_risk_score REAL,
    temperature_c REAL,
    humidity_percent REAL,
    sweat_loss_ml INTEGER,
    hydration_level_percent REAL,
    muscle_activation_score REAL,
    sync_timestamp TEXT,
    data_quality_flag TEXT,
    device_id TEXT
);
INSERT INTO Player_Biometric_Tracking (player_api_id, match_id, gps_latitude, gps_longitude, heart_rate_bpm, speed_kmh, acceleration_mps2, distance_covered_km, fatigue_score, recovery_time_minutes, injury_risk_score, temperature_c, humidity_percent, sweat_loss_ml, hydration_level_percent, muscle_activation_score, sync_timestamp, data_quality_flag, device_id) VALUES (101, 50001, 48.8566, 2.3522, 145, 22.5, 3.2, 10.4, 7.8, 30, 2.1, 21.0, 55.0, 800, 78.5, 0.92, '2024-03-10T18:45:00', 'Good', 'DEV123');
INSERT INTO Player_Biometric_Tracking (player_api_id, match_id, gps_latitude, gps_longitude, heart_rate_bpm, speed_kmh, acceleration_mps2, distance_covered_km, fatigue_score, recovery_time_minutes, injury_risk_score, temperature_c, humidity_percent, sweat_loss_ml, hydration_level_percent, muscle_activation_score, sync_timestamp, data_quality_flag, device_id) VALUES (202, 50002, 51.5074, -0.1278, 138, 20.1, 2.9, 9.8, 6.5, 28, 1.9, 19.5, 60.0, 650, 80.2, 0.88, '2024-04-22T15:50:00', 'Good', 'DEV124');
INSERT INTO Player_Biometric_Tracking (player_api_id, match_id, gps_latitude, gps_longitude, heart_rate_bpm, speed_kmh, acceleration_mps2, distance_covered_km, fatigue_score, recovery_time_minutes, injury_risk_score, temperature_c, humidity_percent, sweat_loss_ml, hydration_level_percent, muscle_activation_score, sync_timestamp, data_quality_flag, device_id) VALUES (303, 50003, 40.7128, -74.0060, 152, 23.0, 3.5, 11.2, 8.2, 35, 2.5, 22.0, 58.0, 900, 75.0, 0.95, '2024-01-15T22:15:00', 'Excellent', 'DEV125');

-- Sponsor_Engagement_Analytics: performance data for sponsor activations
CREATE TABLE Sponsor_Engagement_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    league_id INTEGER,
    activation_type TEXT,
    impressions_count INTEGER,
    click_through_rate REAL,
    conversion_rate REAL,
    spend_usd INTEGER,
    roi_percent REAL,
    audience_reach INTEGER,
    engagement_score REAL,
    campaign_start_date TEXT,
    campaign_end_date TEXT,
    brand_alignment_score REAL,
    activation_location TEXT,
    exclusive_rights_flag INTEGER,
    renewal_probability_percent REAL,
    contract_status TEXT,
    created_by TEXT,
    created_date TEXT
);
INSERT INTO Sponsor_Engagement_Analytics (sponsor_id, league_id, activation_type, impressions_count, click_through_rate, conversion_rate, spend_usd, roi_percent, audience_reach, engagement_score, campaign_start_date, campaign_end_date, brand_alignment_score, activation_location, exclusive_rights_flag, renewal_probability_percent, contract_status, created_by, created_date) VALUES (500, 10, 'StadiumBanner', 2500000, 0.015, 0.004, 2000000, 120.5, 1800000, 78.2, '2024-02-01', '2024-05-31', 85.0, 'MainStadium', 1, 92.0, 'Active', 'marketing', '2024-01-20');
INSERT INTO Sponsor_Engagement_Analytics (sponsor_id, league_id, activation_type, impressions_count, click_through_rate, conversion_rate, spend_usd, roi_percent, audience_reach, engagement_score, campaign_start_date, campaign_end_date, brand_alignment_score, activation_location, exclusive_rights_flag, renewal_probability_percent, contract_status, created_by, created_date) VALUES (501, 11, 'DigitalOverlay', 1800000, 0.022, 0.006, 1500000, 135.0, 1400000, 81.5, '2024-03-15', '2024-09-15', 88.5, 'Online', 0, 85.0, 'Active', 'digital', '2024-03-01');
INSERT INTO Sponsor_Engagement_Analytics (sponsor_id, league_id, activation_type, impressions_count, click_through_rate, conversion_rate, spend_usd, roi_percent, audience_reach, engagement_score, campaign_start_date, campaign_end_date, brand_alignment_score, activation_location, exclusive_rights_flag, renewal_probability_percent, contract_status, created_by, created_date) VALUES (502, 12, 'FanGiveaway', 950000, 0.018, 0.005, 900000, 110.0, 850000, 74.3, '2024-04-01', '2024-07-31', 80.0, 'StadiumGate', 0, 78.0, 'Pending', 'events', '2024-03-20');

-- Training_Camp_Schedule: details of pre‑season training camps
CREATE TABLE Training_Camp_Schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    camp_id INTEGER,
    team_api_id INTEGER,
    camp_start_date TEXT,
    camp_end_date TEXT,
    location_city TEXT,
    location_country TEXT,
    daily_sessions_count INTEGER,
    focus_area TEXT,
    coaching_staff_present INTEGER,
    medical_staff_present INTEGER,
    nutritionist_present INTEGER,
    equipment_used TEXT,
    transportation_mode TEXT,
    accommodation_type TEXT,
    average_daily_hours REAL,
    weather_forecast TEXT,
    injury_incidents INTEGER,
    performance_metrics_summary TEXT,
    notes TEXT
);
INSERT INTO Training_Camp_Schedule (camp_id, team_api_id, camp_start_date, camp_end_date, location_city, location_country, daily_sessions_count, focus_area, coaching_staff_present, medical_staff_present, nutritionist_present, equipment_used, transportation_mode, accommodation_type, average_daily_hours, weather_forecast, injury_incidents, performance_metrics_summary, notes) VALUES (9001, 1001, '2024-07-01', '2024-07-15', 'Barcelona', 'Spain', 3, 'Tactical', 5, 3, 2, 'GPS,HeartRateMonitors', 'Bus', 'Hotel', 6.5, 'Sunny', 0, 'Improved pressing efficiency', 'First camp of the season');
INSERT INTO Training_Camp_Schedule (camp_id, team_api_id, camp_start_date, camp_end_date, location_city, location_country, daily_sessions_count, focus_area, coaching_staff_present, medical_staff_present, nutritionist_present, equipment_used, transportation_mode, accommodation_type, average_daily_hours, weather_forecast, injury_incidents, performance_metrics_summary, notes) VALUES (9002, 1002, '2024-08-10', '2024-08-24', 'Munich', 'Germany', 2, 'Physical', 4, 4, 1, 'ResistanceBands,Cones', 'Airplane', 'TrainingCenter', 5.0, 'Rainy', 1, 'Increased stamina scores', 'Added extra recovery sessions');
INSERT INTO Training_Camp_Schedule (camp_id, team_api_id, camp_start_date, camp_end_date, location_city, location_country, daily_sessions_count, focus_area, coaching_staff_present, medical_staff_present, nutritionist_present, equipment_used, transportation_mode, accommodation_type, average_daily_hours, weather_forecast, injury_incidents, performance_metrics_summary, notes) VALUES (9003, 1003, '2024-09-05', '2024-09-20', 'Lisbon', 'Portugal', 4, 'BallControl', 6, 2, 2, 'SmallGoals,AgilityLadders', 'Train', 'Hostel', 7.0, 'Mild', 0, 'Higher pass accuracy', 'Team-building activities included');

-- Media_Broadcast_Technology: technical specifications of broadcast setups
CREATE TABLE Media_Broadcast_Technology (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcast_id INTEGER,
    network_name TEXT,
    transmission_format TEXT,
    resolution TEXT,
    bitrate_kbps INTEGER,
    audio_channels INTEGER,
    captioning_available INTEGER,
    streaming_platform TEXT,
    latency_ms INTEGER,
    fallback_mechanism TEXT,
    encryption_type TEXT,
    drm_used INTEGER,
    bandwidth_usage_mbps REAL,
    viewer_peak_concurrent INTEGER,
    geographic_coverage TEXT,
    technical_issues_reported INTEGER,
    maintenance_window TEXT,
    update_version TEXT,
    support_contact TEXT
);
INSERT INTO Media_Broadcast_Technology (broadcast_id, network_name, transmission_format, resolution, bitrate_kbps, audio_channels, captioning_available, streaming_platform, latency_ms, fallback_mechanism, encryption_type, drm_used, bandwidth_usage_mbps, viewer_peak_concurrent, geographic_coverage, technical_issues_reported, maintenance_window, update_version, support_contact) VALUES (3001, 'GlobalSportsNet', 'IP', '1080p', 4500, 2, 1, 'StreamHub', 120, 'SatelliteBackup', 'AES256', 1, 12.5, 850000, 'Worldwide', 0, '02:00-03:00', 'v2.3.1', 'techsupport@gsn.com');
INSERT INTO Media_Broadcast_Technology (broadcast_id, network_name, transmission_format, resolution, bitrate_kbps, audio_channels, captioning_available, streaming_platform, latency_ms, fallback_mechanism, encryption_type, drm_used, bandwidth_usage_mbps, viewer_peak_concurrent, geographic_coverage, technical_issues_reported, maintenance_window, update_version, support_contact) VALUES (3002, 'EuroVisionTV', 'HDMI', '4K', 12000, 6, 1, 'EuroStream', 80, 'FiberBackup', 'TLS1.3', 1, 25.0, 1200000, 'Europe', 2, '03:30-04:30', 'v4.0.0', 'support@eurovision.tv');
INSERT INTO Media_Broadcast_Technology (broadcast_id, network_name, transmission_format, resolution, bitrate_kbps, audio_channels, captioning_available, streaming_platform, latency_ms, fallback_mechanism, encryption_type, drm_used, bandwidth_usage_mbps, viewer_peak_concurrent, geographic_coverage, technical_issues_reported, maintenance_window, update_version, support_contact) VALUES (3003, 'AsiaLiveSports', 'SRT', '720p', 3000, 2, 0, 'AsiaStream', 150, 'MobileBackup', 'AES128', 0, 8.0, 600000, 'Asia', 1, '01:00-02:00', 'v1.7.4', 'help@asialive.com');