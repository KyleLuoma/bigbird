-- Hero Merchandise Inventory
CREATE TABLE hero_merchandise_inventory
(
    id INTEGER NOT NULL PRIMARY KEY,
    hero_id INTEGER,
    merch_type TEXT,
    sku TEXT,
    color_variant TEXT,
    size TEXT,
    material TEXT,
    release_date DATE,
    stock_quantity INTEGER,
    units_sold INTEGER,
    warehouse_location TEXT,
    supplier_name TEXT,
    cost_price DECIMAL,
    retail_price DECIMAL,
    discount_rate DECIMAL,
    promotion_id INTEGER,
    digital_asset_flag INTEGER,
    limited_edition INTEGER,
    batch_number TEXT,
    manufacture_year INTEGER,
    weight_grams INTEGER,
    barcode TEXT,
    notes TEXT
);

INSERT INTO hero_merchandise_inventory (id, hero_id, merch_type, sku, color_variant, size, material, release_date, stock_quantity, units_sold, warehouse_location, supplier_name, cost_price, retail_price, discount_rate, promotion_id, digital_asset_flag, limited_edition, batch_number, manufacture_year, weight_grams, barcode, notes) VALUES (1, 101, TShirt, HERO001TS, Red, M, Cotton, 2022-03-15, 500, 200, WH1, SupplierA, 10.00, 25.00, 0.10, 5, 0, 1, BN001, 2022, 200, 1234567890123, First batch release);
INSERT INTO hero_merchandise_inventory (id, hero_id, merch_type, sku, color_variant, size, material, release_date, stock_quantity, units_sold, warehouse_location, supplier_name, cost_price, retail_price, discount_rate, promotion_id, digital_asset_flag, limited_edition, batch_number, manufacture_year, weight_grams, barcode, notes) VALUES (2, 102, ActionFigure, HERO002AF, Blue, N/A, Plastic, 2022-04-10, 300, 150, WH2, SupplierB, 15.00, 40.00, 0.15, 7, 0, 0, BN002, 2022, 350, 2345678901234, Limited run of 300 units);
INSERT INTO hero_merchandise_inventory (id, hero_id, merch_type, sku, color_variant, size, material, release_date, stock_quantity, units_sold, warehouse_location, supplier_name, cost_price, retail_price, discount_rate, promotion_id, digital_asset_flag, limited_edition, batch_number, manufacture_year, weight_grams, barcode, notes) VALUES (3, 103, Poster, HERO003PT, Green, N/A, Paper, 2022-05-05, 1000, 600, WH3, SupplierC, 2.00, 8.00, 0.05, 2, 0, 0, BN003, 2022, 150, 3456789012345, High demand poster);


-- Event Media Coverage
CREATE TABLE event_media_coverage
(
    id INTEGER NOT NULL PRIMARY KEY,
    event_id INTEGER,
    media_outlet TEXT,
    reporter_name TEXT,
    article_title TEXT,
    publish_date DATE,
    url TEXT,
    coverage_type TEXT,
    audience_reach INTEGER,
    sentiment_score DECIMAL,
    video_duration_seconds INTEGER,
    transcript_available INTEGER,
    language TEXT,
    region TEXT,
    social_shares INTEGER,
    likes INTEGER,
    comments INTEGER,
    rating DECIMAL,
    follow_up_required INTEGER,
    notes TEXT,
    archive_path TEXT
);

INSERT INTO event_media_coverage (id, event_id, media_outlet, reporter_name, article_title, publish_date, url, coverage_type, audience_reach, sentiment_score, video_duration_seconds, transcript_available, language, region, social_shares, likes, comments, rating, follow_up_required, notes, archive_path) VALUES (1, 201, DailyNews, JaneDoe, HeroCon2022 Highlights, 2022-07-15, http://news.example.com/hero2022, Article, 250000, 0.85, 0, 1, English, NorthAmerica, 1200, 800, 300, 4.5, 0, Positive overall coverage, /archive/hero2022/article);
INSERT INTO event_media_coverage (id, event_id, media_outlet, reporter_name, article_title, publish_date, url, coverage_type, audience_reach, sentiment_score, video_duration_seconds, transcript_available, language, region, social_shares, likes, comments, rating, follow_up_required, notes, archive_path) VALUES (2, 202, GlobalTV, JohnSmith, Live Stream Review, 2022-08-01, http://tv.example.com/streamreview, Video, 500000, 0.78, 3600, 1, English, Europe, 2500, 1800, 450, 4.2, 1, Needs follow‑up interview, /archive/stream2022/video);
INSERT INTO event_media_coverage (id, event_id, media_outlet, reporter_name, article_title, publish_date, url, coverage_type, audience_reach, sentiment_score, video_duration_seconds, transcript_available, language, region, social_shares, likes, comments, rating, follow_up_required, notes, archive_path) VALUES (3, 203, ComicChronicle, AliceLee, Panel Discussion Summary, 2022-09-10, http://comic.example.com/panel2022, Article, 150000, 0.90, 0, 1, English, Asia, 800, 600, 200, 4.8, 0, Excellent moderator, /archive/panel2022/article);


-- International Fan Demographics
CREATE TABLE international_fan_demographics
(
    id INTEGER NOT NULL PRIMARY KEY,
    country TEXT,
    city TEXT,
    age_group TEXT,
    gender_id INTEGER,
    fandom_level INTEGER,
    average_spend DECIMAL,
    preferred_platform TEXT,
    favorite_hero_id INTEGER,
    subscription_status TEXT,
    language TEXT,
    time_zone TEXT,
    device_type TEXT,
    internet_speed_mbps INTEGER,
    social_media_platform TEXT,
    engagement_score DECIMAL,
    last_event_attended DATE,
    registration_date DATE,
    loyalty_tier TEXT,
    notes TEXT
);

INSERT INTO international_fan_demographics (id, country, city, age_group, gender_id, fandom_level, average_spend, preferred_platform, favorite_hero_id, subscription_status, language, time_zone, device_type, internet_speed_mbps, social_media_platform, engagement_score, last_event_attended, registration_date, loyalty_tier, notes) VALUES (1, USA, NewYork, 18-24, 1, 9, 120.50, MobileApp, 101, Active, English, EST, Smartphone, 100, Instagram, 87.5, 2022-07-12, 2020-03-01, Gold, High engagement in urban areas);
INSERT INTO international_fan_demographics (id, country, city, age_group, gender_id, fandom_level, average_spend, preferred_platform, favorite_hero_id, subscription_status, language, time_zone, device_type, internet_speed_mbps, social_media_platform, engagement_score, last_event_attended, registration_date, loyalty_tier, notes) VALUES (2, Japan, Tokyo, 25-34, 2, 7, 95.00, WebPortal, 102, Active, Japanese, JST, Tablet, 150, Twitter, 78.2, 2022-08-05, 2019-11-15, Silver, Strong interest in collectibles);
INSERT INTO international_fan_demographics (id, country, city, age_group, gender_id, fandom_level, average_spend, preferred_platform, favorite_hero_id, subscription_status, language, time_zone, device_type, internet_speed_mbps, social_media_platform, engagement_score, last_event_attended, registration_date, loyalty_tier, notes) VALUES (3, Brazil, SaoPaulo, 35-44, 1, 5, 60.75, MobileApp, 103, Inactive, Portuguese, BRT, Smartphone, 80, Facebook, 65.0, 2021-12-20, 2018-07-22, Bronze, Growing community in South America);


-- Superhero Cinematic Universe
CREATE TABLE superhero_cinematic_universe
(
    id INTEGER NOT NULL PRIMARY KEY,
    film_title TEXT,
    release_year INTEGER,
    director TEXT,
    budget_million DECIMAL,
    box_office_million DECIMAL,
    rating DECIMAL,
    franchise_phase TEXT,
    primary_hero_id INTEGER,
    antagonist_id INTEGER,
    runtime_minutes INTEGER,
    filming_location TEXT,
    production_company TEXT,
    distribution_company TEXT,
    visual_effects_studio TEXT,
    music_composer TEXT,
    original_score_flag INTEGER,
    rating_certification TEXT,
    sequel_planned INTEGER,
    streaming_rights TEXT,
    merchandise_line_flag INTEGER,
    critical_acclaim_score DECIMAL,
    notes TEXT
);

INSERT INTO superhero_cinematic_universe (id, film_title, release_year, director, budget_million, box_office_million, rating, franchise_phase, primary_hero_id, antagonist_id, runtime_minutes, filming_location, production_company, distribution_company, visual_effects_studio, music_composer, original_score_flag, rating_certification, sequel_planned, streaming_rights, merchandise_line_flag, critical_acclaim_score, notes) VALUES (1, VelocityRise, 2022, MariaKhan, 150.00, 560.00, 8.1, Phase1, 101, 201, 130, Vancouver, StellarStudios, GlobalDistrib, VFXWorks, LiamNguyen, 1, PG13, 1, StreamPlus, 1, 92.5, First film in the Velocity arc);
INSERT INTO superhero_cinematic_universe (id, film_title, release_year, director, budget_million, box_office_million, rating, franchise_phase, primary_hero_id, antagonist_id, runtime_minutes, filming_location, production_company, distribution_company, visual_effects_studio, music_composer, original_score_flag, rating_certification, sequel_planned, streaming_rights, merchandise_line_flag, critical_acclaim_score, notes) VALUES (2, ShadowForce, 2023, DanielLee, 200.00, 820.00, 8.7, Phase1, 102, 202, 145, NewZealand, ApexPictures, WorldWide, PixelMagic, HanaSato, 1, PG13, 1, StreamNow, 1, 95.0, Record‑breaking opening weekend);
INSERT INTO superhero_cinematic_universe (id, film_title, release_year, director, budget_million, box_office_million, rating, franchise_phase, primary_hero_id, antagonist_id, runtime_minutes, filming_location, production_company, distribution_company, visual_effects_studio, music_composer, original_score_flag, rating_certification, sequel_planned, streaming_rights, merchandise_line_flag, critical_acclaim_score, notes) VALUES (3, NovaLegacy, 2024, SofiaPatel, 180.00, 750.00, 8.3, Phase2, 103, 203, 138, London, StarlineFilms, ContinentalDist, DreamFX, CarlosMendez, 1, PG13, 0, StreamPrime, 1, 90.2, Sets up Phase2 storyline);


-- Publisher Financials
CREATE TABLE publisher_financials
(
    id INTEGER NOT NULL PRIMARY KEY,
    publisher_id INTEGER,
    fiscal_year INTEGER,
    revenue_million DECIMAL,
    profit_million DECIMAL,
    operating_expense_million DECIMAL,
    marketing_expense_million DECIMAL,
    r_and_d_expense_million DECIMAL,
    net_income_million DECIMAL,
    earnings_per_share DECIMAL,
    dividend_per_share DECIMAL,
    stock_price DECIMAL,
    shares_outstanding INTEGER,
    debt_million DECIMAL,
    cash_reserves_million DECIMAL,
    assets_million DECIMAL,
    liabilities_million DECIMAL,
    equity_million DECIMAL,
    credit_rating TEXT,
    auditor_name TEXT,
    notes TEXT
);

INSERT INTO publisher_financials (id, publisher_id, fiscal_year, revenue_million, profit_million, operating_expense_million, marketing_expense_million, r_and_d_expense_million, net_income_million, earnings_per_share, dividend_per_share, stock_price, shares_outstanding, debt_million, cash_reserves_million, assets_million, liabilities_million, equity_million, credit_rating, auditor_name, notes) VALUES (1, 1, 2022, 1250.00, 210.00, 500.00, 150.00, 80.00, 200.00, 2.50, 0.30, 45.75, 20000000, 300.00, 250.00, 1500.00, 400.00, 1100.00, AA, AuditFirmA, Strong growth in digital sales);
INSERT INTO publisher_financials (id, publisher_id, fiscal_year, revenue_million, profit_million, operating_expense_million, marketing_expense_million, r_and_d_expense_million, net_income_million, earnings_per_share, dividend_per_share, stock_price, shares_outstanding, debt_million, cash_reserves_million, assets_million, liabilities_million, equity_million, credit_rating, auditor_name, notes) VALUES (2, 2, 2022, 980.00, 150.00, 420.00, 130.00, 70.00, 140.00, 1.80, 0.20, 38.20, 18000000, 250.00, 220.00, 1300.00, 350.00, 950.00, A, AuditFirmB, Expansion into Asian markets);
INSERT INTO publisher_financials (id, publisher_id, fiscal_year, revenue_million, profit_million, operating_expense_million, marketing_expense_million, r_and_d_expense_million, net_income_million, earnings_per_share, dividend_per_share, stock_price, shares_outstanding, debt_million, cash_reserves_million, assets_million, liabilities_million, equity_million, credit_rating, auditor_name, notes) VALUES (3, 3, 2022, 1120.00, 190.00, 460.00, 140.00, 75.00, 180.00, 2.20, 0.25, 42.10, 19000000, 280.00, 240.00, 1400.00, 380.00, 1020.00, AA-, AuditFirmC, Successful licensing agreements);


-- Digital Content Engagement
CREATE TABLE digital_content_engagement
(
    id INTEGER NOT NULL PRIMARY KEY,
    content_id INTEGER,
    platform TEXT,
    publish_date DATE,
    view_count INTEGER,
    unique_viewers INTEGER,
    average_watch_time_seconds INTEGER,
    completion_rate DECIMAL,
    likes INTEGER,
    dislikes INTEGER,
    comments INTEGER,
    shares INTEGER,
    click_through_rate DECIMAL,
    conversion_rate DECIMAL,
    revenue_usd DECIMAL,
    ad_impressions INTEGER,
    ad_clicks INTEGER,
    audience_retention_score DECIMAL,
    demographic_segment TEXT,
    device_category TEXT,
    geographic_region TEXT,
    notes TEXT
);

INSERT INTO digital_content_engagement (id, content_id, platform, publish_date, view_count, unique_viewers, average_watch_time_seconds, completion_rate, likes, dislikes, comments, shares, click_through_rate, conversion_rate, revenue_usd, ad_impressions, ad_clicks, audience_retention_score, demographic_segment, device_category, geographic_region, notes) VALUES (1, 301, Web, 2022-06-01, 850000, 600000, 180, 0.72, 25000, 1200, 3400, 5000, 0.05, 0.02, 45000.00, 2000000, 50000, 78.5, Adults18-34, Desktop, NorthAmerica, High engagement for trailer);
INSERT INTO digital_content_engagement (id, content_id, platform, publish_date, view_count, unique_viewers, average_watch_time_seconds, completion_rate, likes, dislikes, comments, shares, click_through_rate, conversion_rate, revenue_usd, ad_impressions, ad_clicks, audience_retention_score, demographic_segment, device_category, geographic_region, notes) VALUES (2, 302, MobileApp, 2022-07-15, 430000, 320000, 120, 0.65, 15000, 800, 2000, 3000, 0.04, 0.015, 26000.00, 1200000, 30000, 71.2, Teens13-17, Smartphone, Europe, Promo video for comic series);
INSERT INTO digital_content_engagement (id, content_id, platform, publish_date, view_count, unique_viewers, average_watch_time_seconds, completion_rate, likes, dislikes, comments, shares, click_through_rate, conversion_rate, revenue_usd, ad_impressions, ad_clicks, audience_retention_score, demographic_segment, device_category, geographic_region, notes) VALUES (3, 303, Streaming, 2022-08-20, 720000, 500000, 210, 0.78, 22000, 900, 3100, 4200, 0.06, 0.025, 39000.00, 1800000, 45000, 82.0, Adults35-44, SmartTV, AsiaPacific, Exclusive interview release);


-- Cosplay Competition
CREATE TABLE cosplay_competition
(
    id INTEGER NOT NULL PRIMARY KEY,
    competition_name TEXT,
    year INTEGER,
    location TEXT,
    organizer TEXT,
    contestant_count INTEGER,
    prize_pool_usd DECIMAL,
    main_category TEXT,
    judging_criteria TEXT,
    winner_hero_id INTEGER,
    runner_up_hero_id INTEGER,
    best_costume_score DECIMAL,
    audience_favorite_score DECIMAL,
    sponsor_name TEXT,
    broadcast_channel TEXT,
    live_stream_url TEXT,
    start_date DATE,
    end_date DATE,
    registration_deadline DATE,
    notes TEXT
);

INSERT INTO cosplay_competition (id, competition_name, year, location, organizer, contestant_count, prize_pool_usd, main_category, judging_criteria, winner_hero_id, runner_up_hero_id, best_costume_score, audience_favorite_score, sponsor_name, broadcast_channel, live_stream_url, start_date, end_date, registration_deadline, notes) VALUES (1, GlobalCosplayFest, 2022, Tokyo, CosplayLeague, 500, 150000.00, CostumeDesign, Accuracy,Creativity,Expression,101,102,98.5,92.3,TechCorp, ChannelOne, http://stream.example.com/fest2022, 2022-09-10, 2022-09-12, 2022-08-15, Record participation from 30 countries);
INSERT INTO cosplay_competition (id, competition_name, year, location, organizer, contestant_count, prize_pool_usd, main_category, judging_criteria, winner_hero_id, runner_up_hero_id, best_costume_score, audience_favorite_score, sponsor_name, broadcast_channel, live_stream_url, start_date, end_date, registration_deadline, notes) VALUES (2, HeroConCosplay, 2023, NewYork, HeroConvention, 350, 90000.00, PropMaking, Craftsmanship,Originality,Storytelling,103,101,95.0,88.5,StyleInc, ChannelTwo, http://stream.example.com/herocon2023, 2023-06-05, 2023-06-07, 2023-05-20, Introduced new award for emerging creators);
INSERT INTO cosplay_competition (id, competition_name, year, location, organizer, contestant_count, prize_pool_usd, main_category, judging_criteria, winner_hero_id, runner_up_hero_id, best_costume_score, audience_favorite_score, sponsor_name, broadcast_channel, live_stream_url, start_date, end_date, registration_deadline, notes) VALUES (3, IndieCosplaySummit, 2024, Berlin, IndieOrg, 200, 50000.00, GroupPerformance, Synchronization,TeamSpirit,Innovation,102,103,93.2,90.0,CreativeLabs, ChannelThree, http://stream.example.com/indie2024, 2024-03-15, 2024-03-17, 2024-02-28, First virtual‑reality segment incorporated);


-- Archival Story Repository
CREATE TABLE archival_story_repository
(
    id INTEGER NOT NULL PRIMARY KEY,
    story_arc_id INTEGER,
    title TEXT,
    synopsis TEXT,
    start_issue INTEGER,
    end_issue INTEGER,
    publication_year INTEGER,
    writer TEXT,
    artist TEXT,
    editor TEXT,
    imprint TEXT,
    genre TEXT,
    page_count INTEGER,
    digital_available INTEGER,
    physical_archive_location TEXT,
    digital_archive_url TEXT,
    access_restriction_level TEXT,
    preservation_status TEXT,
    last_restored_date DATE,
    notes TEXT,
    keywords TEXT
);

INSERT INTO archival_story_repository (id, story_arc_id, title, synopsis, start_issue, end_issue, publication_year, writer, artist, editor, imprint, genre, page_count, digital_available, physical_archive_location, digital_archive_url, access_restriction_level, preservation_status, last_restored_date, notes, keywords) VALUES (1, 401, RiseOfTheGuardians, A tale of emerging heroes forming a secret league, 1, 12, 1998, JohnDoe, JaneSmith, MarkLee, MainSeries, Adventure, 240, 1, ArchiveRoomA, http://archive.example.com/arc401, Public, Stable, 2022-01-10, Original run highly acclaimed, Heroes,Teamwork);
INSERT INTO archival_story_repository (id, story_arc_id, title, synopsis, start_issue, end_issue, publication_year, writer, artist, editor, imprint, genre, page_count, digital_available, physical_archive_location, digital_archive_url, access_restriction_level, preservation_status, last_restored_date, notes, keywords) VALUES (2, 402, ShadowChronicles, Dark investigations into the underworld of the multiverse, 13, 24, 2002, AliceLee, BobKim, SusanPark, SpinOff, Thriller, 260, 1, ArchiveRoomB, http://archive.example.com/arc402, Restricted, Stable, 2021-11-05, Includes early concept art, Mystery,Detective);
INSERT INTO archival_story_repository (id, story_arc_id, title, synopsis, start_issue, end_issue, publication_year, writer, artist, editor, imprint, genre, page_count, digital_available, physical_archive_location, digital_archive_url, access_restriction_level, preservation_status, last_restored_date, notes, keywords) VALUES (3, 403, NovaLegacyReboot, Reimagining of classic saga with modern twists, 25, 36, 2010, CarlosMendez, DianaRoss, HenryWang, Revamp, SciFi, 300, 1, ArchiveRoomC, http://archive.example.com/arc403, Public, Restored, 2023-03-18, Updated for new continuity, Space,Future);


-- Multiverse Stability Index
CREATE TABLE multiverse_stability_index
(
    id INTEGER NOT NULL PRIMARY KEY,
    universe_branch TEXT,
    stability_score DECIMAL,
    last_anomaly_date DATE,
    active_hero_count INTEGER,
    active_villain_count INTEGER,
    major_event_count INTEGER,
    temporal_distortion_level DECIMAL,
    energy_flux_level DECIMAL,
    crossover_frequency INTEGER,
    governance_body TEXT,
    sanction_status TEXT,
    risk_assessment TEXT,
    mitigation_plan TEXT,
    monitoring_frequency TEXT,
    last_review_date DATE,
    notes TEXT,
    forecasted_stability_next_year DECIMAL,
    budget_allocation_million DECIMAL,
    responsible_department TEXT
);

INSERT INTO multiverse_stability_index (id, universe_branch, stability_score, last_anomaly_date, active_hero_count, active_villain_count, major_event_count, temporal_distortion_level, energy_flux_level, crossover_frequency, governance_body, sanction_status, risk_assessment, mitigation_plan, monitoring_frequency, last_review_date, notes, forecasted_stability_next_year, budget_allocation_million, responsible_department) VALUES (1, PrimeEarth, 92.5, 2022-06-15, 45, 12, 8, 0.15, 0.25, 3, CouncilOfGuardians, Approved, Low, StandardContainment, Quarterly, 2022-12-01, Stable after recent crisis, 94.0, 15.00, MultiverseOps);
INSERT INTO multiverse_stability_index (id, universe_branch, stability_score, last_anomaly_date, active_hero_count, active_villain_count, major_event_count, temporal_distortion_level, energy_flux_level, crossover_frequency, governance_body, sanction_status, risk_assessment, mitigation_plan, monitoring_frequency, last_review_date, notes, forecasted_stability_next_year, budget_allocation_million, responsible_department) VALUES (2, DarkRealm, 68.3, 2022-09-30, 30, 20, 15, 0.45, 0.60, 7, ShadowCouncil, Pending, High, EmergencyProtocol, Monthly, 2022-11-20, Recent incursions destabilizing, 70.0, 22.50, CrisisManagement);
INSERT INTO multiverse_stability_index (id, universe_branch, stability_score, last_anomaly_date, active_hero_count, active_villain_count, major_event_count, temporal_distortion_level, energy_flux_level, crossover_frequency, governance_body, sanction_status, risk_assessment, mitigation_plan, monitoring_frequency, last_review_date, notes, forecasted_stability_next_year, budget_allocation_million, responsible_department) VALUES (3, NexusPlane, 80.0, 2022-08-05, 38, 15, 10, 0.30, 0.40, 5, NexusCommittee, Approved, Medium, AdaptiveResponse, Biannual, 2022-10-15, Stable but watchful, 81.5, 18.75, NexusOps);


-- Hero Training Schedule
CREATE TABLE hero_training_schedule
(
    id INTEGER NOT NULL PRIMARY KEY,
    hero_id INTEGER,
    training_program TEXT,
    start_date DATE,
    end_date DATE,
    instructor_name TEXT,
    location TEXT,
    duration_hours INTEGER,
    focus_area TEXT,
    intensity_level TEXT,
    certification_earned INTEGER,
    certification_name TEXT,
    performance_score DECIMAL,
    attendance_rate DECIMAL,
    equipment_used TEXT,
    safety_incident_flag INTEGER,
    incident_description TEXT,
    next_evaluation_date DATE,
    notes TEXT,
    budget_allocated_usd DECIMAL,
    sponsor_name TEXT,
    outcome TEXT
);

INSERT INTO hero_training_schedule (id, hero_id, training_program, start_date, end_date, instructor_name, location, duration_hours, focus_area, intensity_level, certification_earned, certification_name, performance_score, attendance_rate, equipment_used, safety_incident_flag, incident_description, next_evaluation_date, notes, budget_allocated_usd, sponsor_name, outcome) VALUES (1, 101, CombatMastery, 2022-02-01, 2022-04-30, MasterLee, TrainingFacilityA, 200, HandtoHand, High, 1, CombatExpert, 95.0, 98.5, SimulatedArena, 0, None, 2022-10-01, Improved reflexes, 50000.00, DefenseCorp, Passed);
INSERT INTO hero_training_schedule (id, hero_id, training_program, start_date, end_date, instructor_name, location, duration_hours, focus_area, intensity_level, certification_earned, certification_name, performance_score, attendance_rate, equipment_used, safety_incident_flag, incident_description, next_evaluation_date, notes, budget_allocated_usd, sponsor_name, outcome) VALUES (2, 102, Aeronautics, 2022-05-15, 2022-08-15, DrMiller, SkyCenter, 180, FlightControl, Medium, 1, PilotLicense, 88.5, 95.0, FlightSim, 0, None, 2022-12-01, Gained aerial proficiency, 40000.00, SkyTech, Completed);
INSERT INTO hero_training_schedule (id, hero_id, training_program, start_date, end_date, instructor_name, location, duration_hours, focus_area, intensity_level, certification_earned, certification_name, performance_score, attendance_rate, equipment_used, safety_incident_flag, incident_description, next_evaluation_date, notes, budget_allocated_usd, sponsor_name, outcome) VALUES (3, 103, StrategicPlanning, 2022-09-01, 2022-11-30, AnalystRao, StrategyHub, 150, Leadership, Low, 1, StrategyCert, 92.0, 99.0, Whiteboard, 0, None, 2023-03-01, Enhanced decision making, 30000.00, InsightGroup, Certified);