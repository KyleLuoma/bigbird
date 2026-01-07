-- Hero Publication History
CREATE TABLE hero_publication_history
(
    id INTEGER NOT NULL PRIMARY KEY,
    superhero_id INTEGER,
    issue_number INTEGER,
    publication_date DATE,
    publisher_id INTEGER,
    storyline_id INTEGER,
    artist_name TEXT,
    writer_name TEXT,
    editor_name TEXT,
    page_count INTEGER,
    genre TEXT,
    price_usd INTEGER,
    isbn TEXT,
    edition TEXT,
    print_run INTEGER,
    cover_type TEXT,
    color_mode TEXT,
    digital_release_flag INTEGER,
    language TEXT,
    country_of_release TEXT
);

INSERT INTO hero_publication_history (id, superhero_id, issue_number, publication_date, publisher_id, storyline_id, artist_name, writer_name, editor_name, page_count, genre, price_usd, isbn, edition, print_run, cover_type, color_mode, digital_release_flag, language, country_of_release) VALUES
(1, 101, 12, '2022-03-15', 1, 2001, 'JohnDoe', 'JaneSmith', 'BobEditor', 32, 'Action', 3, '9781234567890', 'First', 50000, 'Hardcover', 'FullColor', 1, 'English', 'USA');

INSERT INTO hero_publication_history (id, superhero_id, issue_number, publication_date, publisher_id, storyline_id, artist_name, writer_name, editor_name, page_count, genre, price_usd, isbn, edition, print_run, cover_type, color_mode, digital_release_flag, language, country_of_release) VALUES
(2, 102, 5, '2021-11-07', 2, 2002, 'AliceArt', 'MarkWriter', 'SueEditor', 28, 'Adventure', 2, '9780987654321', 'Second', 30000, 'Paperback', 'BlackWhite', 0, 'English', 'UK');

INSERT INTO hero_publication_history (id, superhero_id, issue_number, publication_date, publisher_id, storyline_id, artist_name, writer_name, editor_name, page_count, genre, price_usd, isbn, edition, print_run, cover_type, color_mode, digital_release_flag, language, country_of_release) VALUES
(3, 103, 1, '2023-01-20', 3, 2003, 'MikeSketch', 'LauraPlot', 'TomEditor', 40, 'SciFi', 4, '9781122334455', 'First', 75000, 'Hardcover', 'FullColor', 1, 'Spanish', 'Spain');

-- Superhero Crossover Record
CREATE TABLE superhero_crossover_record
(
    id INTEGER NOT NULL PRIMARY KEY,
    primary_hero_id INTEGER,
    secondary_hero_id INTEGER,
    crossover_event_id INTEGER,
    crossover_title TEXT,
    release_year INTEGER,
    universe_id INTEGER,
    storyline_arc TEXT,
    writer TEXT,
    artist TEXT,
    editor TEXT,
    page_count INTEGER,
    special_edition_flag INTEGER,
    collector_rating INTEGER,
    sales_volume INTEGER,
    digital_sales INTEGER,
    merchandise_bundle TEXT,
    marketing_campaign_id INTEGER,
    fan_rating INTEGER,
    critical_score INTEGER
);

INSERT INTO superhero_crossover_record (id, primary_hero_id, secondary_hero_id, crossover_event_id, crossover_title, release_year, universe_id, storyline_arc, writer, artist, editor, page_count, special_edition_flag, collector_rating, sales_volume, digital_sales, merchandise_bundle, marketing_campaign_id, fan_rating, critical_score) VALUES
(1, 101, 201, 301, 'UnityStrike', 2022, 1, 'ArcA', 'SamWriter', 'JenArtist', 'MikeEditor', 48, 1, 9, 150000, 50000, 'BundleA', 401, 85, 92);

INSERT INTO superhero_crossover_record (id, primary_hero_id, secondary_hero_id, crossover_event_id, crossover_title, release_year, universe_id, storyline_arc, writer, artist, editor, page_count, special_edition_flag, collector_rating, sales_volume, digital_sales, merchandise_bundle, marketing_campaign_id, fan_rating, critical_score) VALUES
(2, 102, 202, 302, 'ShadowMerge', 2021, 2, 'ArcB', 'LaraWriter', 'PeteArtist', 'SueEditor', 52, 0, 8, 120000, 40000, 'BundleB', 402, 78, 88);

INSERT INTO superhero_crossover_record (id, primary_hero_id, secondary_hero_id, crossover_event_id, crossover_title, release_year, universe_id, storyline_arc, writer, artist, editor, page_count, special_edition_flag, collector_rating, sales_volume, digital_sales, merchandise_bundle, marketing_campaign_id, fan_rating, critical_score) VALUES
(3, 103, 203, 303, 'GalaxyRift', 2023, 3, 'ArcC', 'NinaWriter', 'OscarArtist', 'TomEditor', 60, 1, 10, 200000, 80000, 'BundleC', 403, 90, 95);

-- Comic Artifact Archive
CREATE TABLE comic_artifact_archive
(
    artifact_id INTEGER NOT NULL PRIMARY KEY,
    artifact_name TEXT,
    origin_story_id INTEGER,
    discovered_date DATE,
    location TEXT,
    condition_status TEXT,
    material TEXT,
    dimensions_cm TEXT,
    weight_grams INTEGER,
    owner_entity TEXT,
    acquisition_method TEXT,
    appraisal_value_usd INTEGER,
    insurance_policy_number TEXT,
    display_status TEXT,
    exhibition_id INTEGER,
    curator_name TEXT,
    restoration_needed_flag INTEGER,
    restoration_date DATE,
    notes TEXT,
    catalog_reference TEXT
);

INSERT INTO comic_artifact_archive (artifact_id, artifact_name, origin_story_id, discovered_date, location, condition_status, material, dimensions_cm, weight_grams, owner_entity, acquisition_method, appraisal_value_usd, insurance_policy_number, display_status, exhibition_id, curator_name, restoration_needed_flag, restoration_date, notes, catalog_reference) VALUES
(1, 'GoldenGauntlet', 5001, '2020-06-01', 'HallOfHeroes', 'Excellent', 'Gold', '15x10x5', 1200, 'MuseumX', 'Donation', 250000, 'INS12345', 'OnDisplay', 601, 'EmmaCurator', 0, NULL, 'Rare gauntlet from origin arc', 'CAT001');

INSERT INTO comic_artifact_archive (artifact_id, artifact_name, origin_story_id, discovered_date, location, condition_status, material, dimensions_cm, weight_grams, owner_entity, acquisition_method, appraisal_value_usd, insurance_policy_number, display_status, exhibition_id, curator_name, restoration_needed_flag, restoration_date, notes, catalog_reference) VALUES
(2, 'AncientShield', 5002, '2019-09-15', 'VaultB', 'Good', 'Silver', '20x15x3', 1800, 'CollectorY', 'Purchase', 180000, 'INS67890', 'InStorage', 602, 'LiamCurator', 1, '2022-01-10', 'Requires polishing', 'CAT002');

INSERT INTO comic_artifact_archive (artifact_id, artifact_name, origin_story_id, discovered_date, location, condition_status, material, dimensions_cm, weight_grams, owner_entity, acquisition_method, appraisal_value_usd, insurance_policy_number, display_status, exhibition_id, curator_name, restoration_needed_flag, restoration_date, notes, catalog_reference) VALUES
(3, 'MysticAmulet', 5003, '2021-03-22', 'ArchiveRoom', 'Fair', 'Obsidian', '8x8x2', 500, 'ArchiveZ', 'Gift', 95000, 'INS54321', 'OnLoan', 603, 'OliviaCurator', 0, NULL, 'Legendary amulet', 'CAT003');

-- Media Broadcast Schedule
CREATE TABLE media_broadcast_schedule
(
    schedule_id INTEGER NOT NULL PRIMARY KEY,
    platform_name TEXT,
    program_name TEXT,
    episode_number INTEGER,
    air_date DATE,
    start_time_utc TIME,
    end_time_utc TIME,
    channel_number INTEGER,
    rating_pg TEXT,
    target_audience TEXT,
    runtime_minutes INTEGER,
    language TEXT,
    subtitles_available_flag INTEGER,
    region_code TEXT,
    broadcast_type TEXT,
    sponsor_name TEXT,
    ad_break_count INTEGER,
    ad_slot_duration_seconds INTEGER,
    viewership_estimate INTEGER,
    streaming_url TEXT
);

INSERT INTO media_broadcast_schedule (schedule_id, platform_name, program_name, episode_number, air_date, start_time_utc, end_time_utc, channel_number, rating_pg, target_audience, runtime_minutes, language, subtitles_available_flag, region_code, broadcast_type, sponsor_name, ad_break_count, ad_slot_duration_seconds, viewership_estimate, streaming_url) VALUES
(1, 'StreamX', 'HeroChronicles', 1, '2023-04-01', '18:00:00', '18:45:00', 101, 'PG-13', 'Teens', 45, 'English', 1, 'US', 'Live', 'BrandA', 4, 30, 2000000, 'http://streamx.com/hero1');

INSERT INTO media_broadcast_schedule (schedule_id, platform_name, program_name, episode_number, air_date, start_time_utc, end_time_utc, channel_number, rating_pg, target_audience, runtime_minutes, language, subtitles_available_flag, region_code, broadcast_type, sponsor_name, ad_break_count, ad_slot_duration_seconds, viewership_estimate, streaming_url) VALUES
(2, 'ChannelZ', 'VillainVault', 3, '2023-04-05', '20:00:00', '20:55:00', 202, 'R', 'Adults', 55, 'English', 1, 'EU', 'Premiere', 'BrandB', 5, 25, 1500000, 'http://channelz.com/villain3');

INSERT INTO media_broadcast_schedule (schedule_id, platform_name, program_name, episode_number, air_date, start_time_utc, end_time_utc, channel_number, rating_pg, target_audience, runtime_minutes, language, subtitles_available_flag, region_code, broadcast_type, sponsor_name, ad_break_count, ad_slot_duration_seconds, viewership_estimate, streaming_url) VALUES
(3, 'NetStream', 'UniverseLore', 7, '2023-04-10', '22:00:00', '22:42:00', 303, 'PG', 'Family', 42, 'Spanish', 1, 'LA', 'Replay', 'BrandC', 3, 20, 800000, 'http://netstream.com/universe7');

-- Fan Loyalty Program
CREATE TABLE fan_loyalty_program
(
    program_id INTEGER NOT NULL PRIMARY KEY,
    fan_id INTEGER,
    tier_name TEXT,
    enrollment_date DATE,
    points_balance INTEGER,
    tier_multiplier INTEGER,
    expiration_date DATE,
    reward_points_redeemed INTEGER,
    last_activity_date DATE,
    preferred_communication_channel TEXT,
    email_opt_in_flag INTEGER,
    sms_opt_in_flag INTEGER,
    postal_opt_in_flag INTEGER,
    primary_genre_interest TEXT,
    favorite_hero_id INTEGER,
    anniversary_bonus_flag INTEGER,
    referral_code TEXT,
    total_spent_usd INTEGER,
    status TEXT,
    notes TEXT
);

INSERT INTO fan_loyalty_program (program_id, fan_id, tier_name, enrollment_date, points_balance, tier_multiplier, expiration_date, reward_points_redeemed, last_activity_date, preferred_communication_channel, email_opt_in_flag, sms_opt_in_flag, postal_opt_in_flag, primary_genre_interest, favorite_hero_id, anniversary_bonus_flag, referral_code, total_spent_usd, status, notes) VALUES
(1, 1001, 'Gold', '2021-05-20', 3500, 2, '2024-05-20', 1200, '2023-12-01', 'Email', 1, 0, 0, 'Action', 101, 1, 'REF123', 500, 'Active', 'Top tier fan');

INSERT INTO fan_loyalty_program (program_id, fan_id, tier_name, enrollment_date, points_balance, tier_multiplier, expiration_date, reward_points_redeemed, last_activity_date, preferred_communication_channel, email_opt_in_flag, sms_opt_in_flag, postal_opt_in_flag, primary_genre_interest, favorite_hero_id, anniversary_bonus_flag, referral_code, total_spent_usd, status, notes) VALUES
(2, 1002, 'Silver', '2022-01-15', 1800, 1, '2025-01-15', 600, '2023-11-20', 'SMS', 1, 1, 0, 'Adventure', 102, 0, 'REF456', 250, 'Active', 'Regular participant');

INSERT INTO fan_loyalty_program (program_id, fan_id, tier_name, enrollment_date, points_balance, tier_multiplier, expiration_date, reward_points_redeemed, last_activity_date, preferred_communication_channel, email_opt_in_flag, sms_opt_in_flag, postal_opt_in_flag, primary_genre_interest, favorite_hero_id, anniversary_bonus_flag, referral_code, total_spent_usd, status, notes) VALUES
(3, 1003, 'Bronze', '2020-09-10', 900, 0, '2023-09-10', 300, '2023-10-05', 'Postal', 0, 0, 1, 'SciFi', 103, 0, 'REF789', 120, 'Expired', 'Needs renewal');

-- Universe Expansion Plan Detail
CREATE TABLE universe_expansion_plan_detail
(
    plan_id INTEGER NOT NULL PRIMARY KEY,
    universe_id INTEGER,
    phase_name TEXT,
    start_year INTEGER,
    end_year INTEGER,
    target_storyline TEXT,
    new_character_introductions INTEGER,
    new_location_introductions INTEGER,
    estimated_budget_usd INTEGER,
    funding_source TEXT,
    lead_writer TEXT,
    lead_artist TEXT,
    marketing_budget_usd INTEGER,
    expected_sales_usd INTEGER,
    risk_assessment_score INTEGER,
    approval_status TEXT,
    approval_date DATE,
    revision_number INTEGER,
    notes TEXT,
    compliance_flag INTEGER
);

INSERT INTO universe_expansion_plan_detail (plan_id, universe_id, phase_name, start_year, end_year, target_storyline, new_character_introductions, new_location_introductions, estimated_budget_usd, funding_source, lead_writer, lead_artist, marketing_budget_usd, expected_sales_usd, risk_assessment_score, approval_status, approval_date, revision_number, notes, compliance_flag) VALUES
(1, 1, 'PhaseAlpha', 2022, 2024, 'ArcAlpha', 5, 3, 2000000, 'VentureCapital', 'AliceWriter', 'BobArtist', 500000, 8000000, 7, 'Approved', '2022-02-10', 1, 'Initial rollout', 1);

INSERT INTO universe_expansion_plan_detail (plan_id, universe_id, phase_name, start_year, end_year, target_storyline, new_character_introductions, new_location_introductions, estimated_budget_usd, funding_source, lead_writer, lead_artist, marketing_budget_usd, expected_sales_usd, risk_assessment_score, approval_status, approval_date, revision_number, notes, compliance_flag) VALUES
(2, 2, 'PhaseBeta', 2023, 2025, 'ArcBeta', 8, 4, 3500000, 'StudioFunds', 'CarolWriter', 'DaveArtist', 800000, 12000000, 5, 'Pending', '2023-03-15', 0, 'Awaiting board review', 0);

INSERT INTO universe_expansion_plan_detail (plan_id, universe_id, phase_name, start_year, end_year, target_storyline, new_character_introductions, new_location_introductions, estimated_budget_usd, funding_source, lead_writer, lead_artist, marketing_budget_usd, expected_sales_usd, risk_assessment_score, approval_status, approval_date, revision_number, notes, compliance_flag) VALUES
(3, 3, 'PhaseGamma', 2024, 2026, 'ArcGamma', 3, 2, 1500000, 'Crowdfund', 'EveWriter', 'FrankArtist', 300000, 5000000, 8, 'Approved', '2024-01-20', 2, 'Secondary phase', 1);

-- Publisher Market Share
CREATE TABLE publisher_market_share
(
    record_id INTEGER NOT NULL PRIMARY KEY,
    publisher_id INTEGER,
    fiscal_year INTEGER,
    total_revenue_usd INTEGER,
    market_share_percent REAL,
    comic_sales_usd INTEGER,
    graphic_novel_sales_usd INTEGER,
    digital_sales_usd INTEGER,
    merchandise_sales_usd INTEGER,
    licensing_revenue_usd INTEGER,
    advertising_revenue_usd INTEGER,
    international_sales_usd INTEGER,
    domestic_sales_usd INTEGER,
    growth_rate_percent REAL,
    profit_margin_percent REAL,
    employee_count INTEGER,
    headquarters_location TEXT,
    ceo_name TEXT,
    stock_price_usd REAL,
    notes TEXT
);

INSERT INTO publisher_market_share (record_id, publisher_id, fiscal_year, total_revenue_usd, market_share_percent, comic_sales_usd, graphic_novel_sales_usd, digital_sales_usd, merchandise_sales_usd, licensing_revenue_usd, advertising_revenue_usd, international_sales_usd, domestic_sales_usd, growth_rate_percent, profit_margin_percent, employee_count, headquarters_location, ceo_name, stock_price_usd, notes) VALUES
(1, 1, 2022, 75000000, 12.5, 25000000, 15000000, 10000000, 8000000, 5000000, 2000000, 12000000, 21000000, 5.2, 18.3, 350, 'NewYork', 'JohnDoe', 45.6, 'Stable growth');

INSERT INTO publisher_market_share (record_id, publisher_id, fiscal_year, total_revenue_usd, market_share_percent, comic_sales_usd, graphic_novel_sales_usd, digital_sales_usd, merchandise_sales_usd, licensing_revenue_usd, advertising_revenue_usd, international_sales_usd, domestic_sales_usd, growth_rate_percent, profit_margin_percent, employee_count, headquarters_location, ceo_name, stock_price_usd, notes) VALUES
(2, 2, 2022, 62000000, 10.3, 20000000, 12000000, 8000000, 6000000, 4000000, 1500000, 10000000, 15000000, 3.8, 15.0, 280, 'London', 'JaneSmith', 38.2, 'Slightly lower margin');

INSERT INTO publisher_market_share (record_id, publisher_id, fiscal_year, total_revenue_usd, market_share_percent, comic_sales_usd, graphic_novel_sales_usd, digital_sales_usd, merchandise_sales_usd, licensing_revenue_usd, advertising_revenue_usd, international_sales_usd, domestic_sales_usd, growth_rate_percent, profit_margin_percent, employee_count, headquarters_location, ceo_name, stock_price_usd, notes) VALUES
(3, 3, 2022, 48000000, 8.1, 15000000, 9000000, 6000000, 4000000, 3000000, 1000000, 8000000, 12000000, 2.5, 12.7, 210, 'Tokyo', 'KenTanaka', 27.9, 'Emerging market');

-- Digital IP Licensing
CREATE TABLE digital_ip_licensing
(
    license_id INTEGER NOT NULL PRIMARY KEY,
    ip_id INTEGER,
    licensee_company TEXT,
    territory TEXT,
    start_date DATE,
    end_date DATE,
    license_type TEXT,
    royalty_rate_percent REAL,
    upfront_fee_usd INTEGER,
    minimum_guarantee_usd INTEGER,
    platform TEXT,
    format TEXT,
    exclusivity_flag INTEGER,
    renewal_option_flag INTEGER,
    compliance_audit_date DATE,
    ip_owner_contact TEXT,
    usage_limits TEXT,
    revenue_share_percent REAL,
    termination_clause TEXT,
    notes TEXT
);

INSERT INTO digital_ip_licensing (license_id, ip_id, licensee_company, territory, start_date, end_date, license_type, royalty_rate_percent, upfront_fee_usd, minimum_guarantee_usd, platform, format, exclusivity_flag, renewal_option_flag, compliance_audit_date, ip_owner_contact, usage_limits, revenue_share_percent, termination_clause, notes) VALUES
(1, 5001, 'GameStudioX', 'Global', '2022-01-01', '2025-12-31', 'Exclusive', 12.5, 500000, 200000, 'Console', 'Digital', 1, 1, '2023-06-15', 'contact@publisher.com', 'Unlimited', 15.0, '30DayNotice', 'Flagship title');

INSERT INTO digital_ip_licensing (license_id, ip_id, licensee_company, territory, start_date, end_date, license_type, royalty_rate_percent, upfront_fee_usd, minimum_guarantee_usd, platform, format, exclusivity_flag, renewal_option_flag, compliance_audit_date, ip_owner_contact, usage_limits, revenue_share_percent, termination_clause, notes) VALUES
(2, 5002, 'MobileAppsY', 'NorthAmerica', '2023-03-01', '2026-02-28', 'NonExclusive', 8.0, 150000, 50000, 'Mobile', 'App', 0, 1, '2024-01-20', 'licensing@publisher.com', '500kDownloads', 10.0, 'BreachClause', 'Secondary title');

INSERT INTO digital_ip_licensing (license_id, ip_id, licensee_company, territory, start_date, end_date, license_type, royalty_rate_percent, upfront_fee_usd, minimum_guarantee_usd, platform, format, exclusivity_flag, renewal_option_flag, compliance_audit_date, ip_owner_contact, usage_limits, revenue_share_percent, termination_clause, notes) VALUES
(3, 5003, 'StreamingServiceZ', 'Europe', '2021-07-15', '2024-07-14', 'Exclusive', 15.0, 800000, 300000, 'Streaming', 'Video', 1, 0, '2022-12-01', 'media@publisher.com', 'UnlimitedViews', 20.0, 'ForceMajeure', 'Premium series');

-- Animation Episode Metadata
CREATE TABLE animation_episode_metadata
(
    episode_id INTEGER NOT NULL PRIMARY KEY,
    series_name TEXT,
    season_number INTEGER,
    episode_number INTEGER,
    title TEXT,
    air_date DATE,
    director_name TEXT,
    writer_name TEXT,
    storyboard_artist TEXT,
    animation_studio_id INTEGER,
    runtime_minutes INTEGER,
    rating TEXT,
    language TEXT,
    subtitles_available_flag INTEGER,
    sound_mix TEXT,
    aspect_ratio TEXT,
    budget_usd INTEGER,
    viewership_millions REAL,
    streaming_platform TEXT,
    awards_won INTEGER
);

INSERT INTO animation_episode_metadata (episode_id, series_name, season_number, episode_number, title, air_date, director_name, writer_name, storyboard_artist, animation_studio_id, runtime_minutes, rating, language, subtitles_available_flag, sound_mix, aspect_ratio, budget_usd, viewership_millions, streaming_platform, awards_won) VALUES
(1, 'HeroicLegends', 1, 1, 'Origins', '2022-09-10', 'AnnaDirector', 'MarkWriter', 'LiaStoryboard', 1001, 45, 'PG', 'English', 1, 'Dolby5.1', '16:9', 2000000, 3.5, 'StreamX', 2);

INSERT INTO animation_episode_metadata (episode_id, series_name, season_number, episode_number, title, air_date, director_name, writer_name, storyboard_artist, animation_studio_id, runtime_minutes, rating, language, subtitles_available_flag, sound_mix, aspect_ratio, budget_usd, viewership_millions, streaming_platform, awards_won) VALUES
(2, 'HeroicLegends', 1, 2, 'Alliances', '2022-09-17', 'BrianDirector', 'SaraWriter', 'MiaStoryboard', 1001, 48, 'PG', 'English', 1, 'DolbyAtmos', '16:9', 2200000, 4.0, 'StreamX', 1);

INSERT INTO animation_episode_metadata (episode_id, series_name, season_number, episode_number, title, air_date, director_name, writer_name, storyboard_artist, animation_studio_id, runtime_minutes, rating, language, subtitles_available_flag, sound_mix, aspect_ratio, budget_usd, viewership_millions, streaming_platform, awards_won) VALUES
(3, 'HeroicLegends', 1, 3, 'Betrayal', '2022-09-24', 'ClaraDirector', 'EthanWriter', 'NoraStoryboard', 1001, 46, 'PG', 'English', 1, 'Dolby5.1', '16:9', 2100000, 3.8, 'StreamX', 0);