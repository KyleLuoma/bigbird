-- Film adaptation details
CREATE TABLE film_adaptation
(
    id INTEGER NOT NULL PRIMARY KEY,
    title TEXT DEFAULT NULL,
    release_year INTEGER DEFAULT NULL,
    director TEXT DEFAULT NULL,
    budget_million DECIMAL(10,2) DEFAULT NULL,
    box_office_million DECIMAL(10,2) DEFAULT NULL,
    rating TEXT DEFAULT NULL,
    runtime_min INTEGER DEFAULT NULL,
    language TEXT DEFAULT NULL,
    country TEXT DEFAULT NULL,
    source_comic_issue_id INTEGER DEFAULT NULL,
    mpaa_rating TEXT DEFAULT NULL,
    filming_location TEXT DEFAULT NULL,
    distributor_id INTEGER DEFAULT NULL,
    is_sequel BOOLEAN DEFAULT NULL,
    sequel_to_id INTEGER DEFAULT NULL,
    soundtrack_id INTEGER DEFAULT NULL,
    visual_effects_company TEXT DEFAULT NULL,
    production_company TEXT DEFAULT NULL,
    marketing_budget_million DECIMAL(10,2) DEFAULT NULL
);

INSERT INTO film_adaptation (id, title, release_year, director, budget_million, box_office_million, rating, runtime_min, language, country, source_comic_issue_id, mpaa_rating, filming_location, distributor_id, is_sequel, sequel_to_id, soundtrack_id, visual_effects_company, production_company, marketing_budget_million) VALUES
(1, 'The Dawn of Heroes', 2023, 'Alice Johnson', 120.00, 350.50, 'PG13', 130, 'English', 'USA', 101, 'PG13', 'Los Angeles', 5, FALSE, NULL, 12, 'VFX Studios Ltd', 'Epic Pictures', 45.00),
(2, 'Shadow Realm', 2024, 'Boris Lee', 95.00, 210.75, 'R', 115, 'English', 'Canada', 152, 'R', 'Vancouver', 7, TRUE, 1, 18, 'Digital Dreams', 'Shadow Works', 30.00),
(3, 'Chronicles of Light', 2025, 'Catherine Wu', 140.00, 480.20, 'PG', 142, 'English', 'UK', 210, 'PG', 'London', 9, FALSE, NULL, 22, 'Pixel Forge', 'Light Studios', 60.00);

-- Video game release information
CREATE TABLE video_game_release
(
    id INTEGER NOT NULL PRIMARY KEY,
    game_title TEXT DEFAULT NULL,
    platform TEXT DEFAULT NULL,
    release_date DATE DEFAULT NULL,
    developer TEXT DEFAULT NULL,
    publisher_id INTEGER DEFAULT NULL,
    genre TEXT DEFAULT NULL,
    rating_esrb TEXT DEFAULT NULL,
    sales_units_millions DECIMAL(10,2) DEFAULT NULL,
    budget_million DECIMAL(10,2) DEFAULT NULL,
    engine TEXT DEFAULT NULL,
    multiplayer_support BOOLEAN DEFAULT NULL,
    mode_singleplayer BOOLEAN DEFAULT NULL,
    mode_multiplayer BOOLEAN DEFAULT NULL,
    dlc_count INTEGER DEFAULT NULL,
    live_service BOOLEAN DEFAULT NULL,
    microtransactions BOOLEAN DEFAULT NULL,
    rating_user DECIMAL(3,1) DEFAULT NULL,
    review_score DECIMAL(3,1) DEFAULT NULL,
    online_rating DECIMAL(3,1) DEFAULT NULL,
    physical_copy_available BOOLEAN DEFAULT NULL
);

INSERT INTO video_game_release (id, game_title, platform, release_date, developer, publisher_id, genre, rating_esrb, sales_units_millions, budget_million, engine, multiplayer_support, mode_singleplayer, mode_multiplayer, dlc_count, live_service, microtransactions, rating_user, review_score, online_rating, physical_copy_available) VALUES
(1, 'Heroic Quest', 'PC', '2023-09-15', 'Arcade Studios', 3, 'RPG', 'M', 3.20, 25.00, 'Unreal Engine', TRUE, TRUE, TRUE, 5, TRUE, TRUE, 8.5, 9.0, 8.7, TRUE),
(2, 'Galaxy Racer', 'Xbox Series X', '2024-03-22', 'SpeedForge', 4, 'Racing', 'E', 2.10, 12.00, 'Custom Engine', FALSE, TRUE, FALSE, 2, FALSE, FALSE, 7.8, 8.2, 7.9, TRUE),
(3, 'Mystic Siege', 'PlayStation 5', '2025-11-05', 'Echo Labs', 5, 'Strategy', 'T', 1.80, 18.50, 'Unity', TRUE, TRUE, TRUE, 3, TRUE, TRUE, 9.1, 9.4, 9.0, FALSE);

-- Collectible fair details
CREATE TABLE collectible_fair
(
    id INTEGER NOT NULL PRIMARY KEY,
    fair_name TEXT DEFAULT NULL,
    city TEXT DEFAULT NULL,
    venue TEXT DEFAULT NULL,
    start_date DATE DEFAULT NULL,
    end_date DATE DEFAULT NULL,
    organizer_company TEXT DEFAULT NULL,
    expected_attendees INTEGER DEFAULT NULL,
    exhibitors_count INTEGER DEFAULT NULL,
    ticket_price_general DECIMAL(6,2) DEFAULT NULL,
    ticket_price_vip DECIMAL(6,2) DEFAULT NULL,
    sponsorship_level TEXT DEFAULT NULL,
    media_partner TEXT DEFAULT NULL,
    theme TEXT DEFAULT NULL,
    featured_series TEXT DEFAULT NULL,
    charity_partner TEXT DEFAULT NULL,
    carbon_offset BOOLEAN DEFAULT NULL,
    security_provider TEXT DEFAULT NULL,
    wifi_provider TEXT DEFAULT NULL,
    parking_capacity INTEGER DEFAULT NULL,
    afterparty_location TEXT DEFAULT NULL
);

INSERT INTO collectible_fair (id, fair_name, city, venue, start_date, end_date, organizer_company, expected_attendees, exhibitors_count, ticket_price_general, ticket_price_vip, sponsorship_level, media_partner, theme, featured_series, charity_partner, carbon_offset, security_provider, wifi_provider, parking_capacity, afterparty_location) VALUES
(1, 'Global Comic Expo', 'New York', 'Javits Center', '2023-07-10', '2023-07-13', 'Expo Ventures', 50000, 200, 45.00, 150.00, 'Platinum', 'Comic News', 'Heroes Unite', 'Super Saga', 'Heroes Foundation', TRUE, 'SecureGuard', 'NetConnect', 8000, 'Rooftop Lounge'),
(2, 'Vintage Toys Fair', 'Los Angeles', 'LA Convention Center', '2024-04-20', '2024-04-22', 'Toy Masters Inc', 30000, 120, 30.00, 120.00, 'Gold', 'Toy Times', 'Retro Revival', 'Action Figures', 'Kids Charity', FALSE, 'Shield Security', 'FastWiFi', 5000, 'Night Club X'),
(3, 'Anime Collectors Con', 'San Francisco', 'Moscone Center', '2025-09-15', '2025-09-18', 'Anime Events LLC', 40000, 150, 40.00, 130.00, 'Silver', 'Anime Daily', 'Manga Mania', 'Epic Chronicles', 'Art Aid', TRUE, 'GuardPro', 'WiFiPlus', 6000, 'Skydeck Bar');

-- Museum exhibit information
CREATE TABLE museum_exhibit
(
    id INTEGER NOT NULL PRIMARY KEY,
    exhibit_name TEXT DEFAULT NULL,
    museum_name TEXT DEFAULT NULL,
    city TEXT DEFAULT NULL,
    opening_date DATE DEFAULT NULL,
    closing_date DATE DEFAULT NULL,
    curator_name TEXT DEFAULT NULL,
    number_of_items INTEGER DEFAULT NULL,
    main_theme TEXT DEFAULT NULL,
    ticket_price_adult DECIMAL(6,2) DEFAULT NULL,
    ticket_price_child DECIMAL(6,2) DEFAULT NULL,
    sponsorship_fund DECIMAL(10,2) DEFAULT NULL,
    loaned_items_from TEXT DEFAULT NULL,
    insurance_company TEXT DEFAULT NULL,
    climate_control_type TEXT DEFAULT NULL,
    lighting_design TEXT DEFAULT NULL,
    interactive_elements BOOLEAN DEFAULT NULL,
    audio_guide_available BOOLEAN DEFAULT NULL,
    gift_shop_revenue DECIMAL(10,2) DEFAULT NULL,
    educational_programs TEXT DEFAULT NULL,
    press_release_date DATE DEFAULT NULL
);

INSERT INTO museum_exhibit (id, exhibit_name, museum_name, city, opening_date, closing_date, curator_name, number_of_items, main_theme, ticket_price_adult, ticket_price_child, sponsorship_fund, loaned_items_from, insurance_company, climate_control_type, lighting_design, interactive_elements, audio_guide_available, gift_shop_revenue, educational_programs, press_release_date) VALUES
(1, 'Origins of Legends', 'National Comic Museum', 'Chicago', '2023-05-01', '2023-10-31', 'Laura Smith', 250, 'Mythic Beginnings', 20.00, 10.00, 150000.00, 'Heroic Archives', 'Secure Insure', 'HVAC', 'Spotlight', TRUE, TRUE, 80000.00, 'Workshops and Lectures', '2023-04-15'),
(2, 'Villains Unveiled', 'City Art Gallery', 'Boston', '2024-03-15', '2024-08-15', 'Mark Johnson', 180, 'Dark Narratives', 18.00, 9.00, 120000.00, 'Shadow Vault', 'ProtectPlus', 'Humidity Control', 'Ambient', FALSE, TRUE, 60000.00, 'Panel Discussions', '2024-02-28'),
(3, 'Cosmic Dimensions', 'Science and Culture Center', 'Seattle', '2025-09-01', '2026-02-28', 'Nina Patel', 300, 'Interstellar Tales', 22.00, 11.00, 200000.00, 'Galaxy Archive', 'SafeGuard', 'Temperature Regulated', 'LED', TRUE, FALSE, 95000.00, 'STEM Activities', '2025-08-10');

-- Licensing region data
CREATE TABLE licensing_region
(
    id INTEGER NOT NULL PRIMARY KEY,
    region_name TEXT DEFAULT NULL,
    country_codes TEXT DEFAULT NULL,
    primary_currency TEXT DEFAULT NULL,
    tax_rate_percent DECIMAL(5,2) DEFAULT NULL,
    royalty_percentage DECIMAL(5,2) DEFAULT NULL,
    exclusive BOOLEAN DEFAULT NULL,
    start_date DATE DEFAULT NULL,
    end_date DATE DEFAULT NULL,
    contract_id INTEGER DEFAULT NULL,
    local_partner_id INTEGER DEFAULT NULL,
    language TEXT DEFAULT NULL,
    legal_framework TEXT DEFAULT NULL,
    compliance_audit_date DATE DEFAULT NULL,
    audit_result TEXT DEFAULT NULL,
    dispute_resolution_clause TEXT DEFAULT NULL,
    minimum_guarantee DECIMAL(10,2) DEFAULT NULL,
    max_royalty_cap DECIMAL(10,2) DEFAULT NULL,
    distribution_channels TEXT DEFAULT NULL,
    marketing_requirements TEXT DEFAULT NULL,
    reporting_frequency TEXT DEFAULT NULL
);

INSERT INTO licensing_region (id, region_name, country_codes, primary_currency, tax_rate_percent, royalty_percentage, exclusive, start_date, end_date, contract_id, local_partner_id, language, legal_framework, compliance_audit_date, audit_result, dispute_resolution_clause, minimum_guarantee, max_royalty_cap, distribution_channels, marketing_requirements, reporting_frequency) VALUES
(1, 'North America', 'US,CA,MX', 'USD', 7.50, 12.00, TRUE, '2023-01-01', '2028-12-31', 301, 45, 'English', 'Common Law', '2024-06-15', 'Pass', 'Arbitration', 500000.00, 2000000.00, 'Retail,Digital', 'Quarterly Reports', 'Quarterly'),
(2, 'Western Europe', 'FR,DE,NL,BE', 'EUR', 20.00, 10.00, FALSE, '2022-04-01', '2027-03-31', 302, 46, 'Multiple', 'Civil Law', '2025-03-20', 'Pass', 'Mediation', 400000.00, 1500000.00, 'Retail,TV', 'Biannual Summary', 'Biannual'),
(3, 'Asia Pacific', 'JP,KR,AU,NZ', 'JPY', 10.00, 8.00, TRUE, '2024-07-01', '2029-06-30', 303, 47, 'Japanese', 'Mixed', '2026-11-05', 'Pending', 'International Arbitration', 300000.00, 1200000.00, 'Online,Merchandise', 'Annual Review', 'Annual');

-- Advertising campaign details
CREATE TABLE advertising_campaign
(
    id INTEGER NOT NULL PRIMARY KEY,
    campaign_name TEXT DEFAULT NULL,
    product_line TEXT DEFAULT NULL,
    start_date DATE DEFAULT NULL,
    end_date DATE DEFAULT NULL,
    budget_million DECIMAL(10,2) DEFAULT NULL,
    media_mix TEXT DEFAULT NULL,
    primary_channel TEXT DEFAULT NULL,
    secondary_channel TEXT DEFAULT NULL,
    creative_agency TEXT DEFAULT NULL,
    tagline TEXT DEFAULT NULL,
    target_audience TEXT DEFAULT NULL,
    impressions_millions DECIMAL(10,2) DEFAULT NULL,
    clicks_millions DECIMAL(10,2) DEFAULT NULL,
    conversion_rate_percent DECIMAL(5,2) DEFAULT NULL,
    cpm DECIMAL(6,2) DEFAULT NULL,
    cpc DECIMAL(6,2) DEFAULT NULL,
    cpa DECIMAL(8,2) DEFAULT NULL,
    roi_percent DECIMAL(6,2) DEFAULT NULL,
    regional_focus TEXT DEFAULT NULL,
    compliance_notes TEXT DEFAULT NULL
);

INSERT INTO advertising_campaign (id, campaign_name, product_line, start_date, end_date, budget_million, media_mix, primary_channel, secondary_channel, creative_agency, tagline, target_audience, impressions_millions, clicks_millions, conversion_rate_percent, cpm, cpc, cpa, roi_percent, regional_focus, compliance_notes) VALUES
(1, 'Heroic Rise', 'Action Figures', '2023-02-01', '2023-05-31', 8.50, 'TV,Online,Print', 'Television', 'Social Media', 'BrightIdeas', 'Unleash Your Power', 'Kids 6-12', 150.00, 3.20, 2.13, 56.70, 1.20, 12.50, 210.00, 'North America', 'FTC Guidelines Followed'),
(2, 'Villain Vibes', 'Apparel', '2024-06-15', '2024-09-15', 5.75, 'Social Media,Influencer', 'Instagram', 'TikTok', 'CreativeEdge', 'Wear the Darkness', 'Teens 13-18', 200.00, 4.50, 2.25, 48.30, 0.95, 9.80, 185.00, 'Europe', 'GDPR Compliant'),
(3, 'Cosmic Quest', 'Video Game', '2025-11-01', '2026-02-28', 12.00, 'Online,Streaming', 'YouTube', 'Twitch', 'PixelPush', 'Embark on the Journey', 'Adults 18-35', 250.00, 5.80, 2.32, 52.00, 1.10, 11.30, 240.00, 'Asia Pacific', 'Local Advertising Standards Met');

-- Fan art gallery information
CREATE TABLE fan_art_gallery
(
    id INTEGER NOT NULL PRIMARY KEY,
    gallery_name TEXT DEFAULT NULL,
    city TEXT DEFAULT NULL,
    venue TEXT DEFAULT NULL,
    opening_date DATE DEFAULT NULL,
    closing_date DATE DEFAULT NULL,
    curator TEXT DEFAULT NULL,
    artist_count INTEGER DEFAULT NULL,
    total_artworks INTEGER DEFAULT NULL,
    medium_types TEXT DEFAULT NULL,
    average_price DECIMAL(10,2) DEFAULT NULL,
    ticket_price DECIMAL(6,2) DEFAULT NULL,
    sponsor_name TEXT DEFAULT NULL,
    social_media_handle TEXT DEFAULT NULL,
    website_url TEXT DEFAULT NULL,
    opening_hours TEXT DEFAULT NULL,
    covid_protocols TEXT DEFAULT NULL,
    security_level TEXT DEFAULT NULL,
    insurance_policy TEXT DEFAULT NULL,
    donation_percentage DECIMAL(5,2) DEFAULT NULL,
    featured_artist TEXT DEFAULT NULL
);

INSERT INTO fan_art_gallery (id, gallery_name, city, venue, opening_date, closing_date, curator, artist_count, total_artworks, medium_types, average_price, ticket_price, sponsor_name, social_media_handle, website_url, opening_hours, covid_protocols, security_level, insurance_policy, donation_percentage, featured_artist) VALUES
(1, 'Heroic Horizons Gallery', 'Los Angeles', 'Downtown Art Loft', '2023-08-01', '2023-12-31', 'Mia Torres', 45, 120, 'Digital,Print,Paint', 350.00, 15.00, 'ArtCo', '@heroicgallery', 'www.heroicgallery.com', '10am-6pm', 'Mask Required', 'High', 'Policy12345', 5.00, 'Liam Reed'),
(2, 'Villain Visions', 'New York', 'Riverfront Hall', '2024-04-10', '2024-09-30', 'Ethan Wright', 30, 80, 'Sculpture,Ink', 420.00, 18.00, 'ShadowCorp', '@villainvisions', 'www.villainvisions.com', '11am-7pm', 'Vaccination Proof', 'Medium', 'Policy67890', 7.50, 'Sofia Patel'),
(3, 'Cosmic Canvas', 'Seattle', 'Skyline Gallery', '2025-01-15', '2025-06-15', 'Olivia Chen', 60, 200, 'Mixed Media,3D', 280.00, 12.00, 'Galactic Studios', '@cosmiccanvas', 'www.cosmiccanvas.com', '9am-5pm', 'Social Distancing', 'Standard', 'Policy24680', 4.00, 'Noah Kim');

-- Universe narrative overview
CREATE TABLE universe_narrative
(
    id INTEGER NOT NULL PRIMARY KEY,
    universe_name TEXT DEFAULT NULL,
    primary_story_arc_id INTEGER DEFAULT NULL,
    total_issues INTEGER DEFAULT NULL,
    timeline_start_year INTEGER DEFAULT NULL,
    timeline_end_year INTEGER DEFAULT NULL,
    continuity_status TEXT DEFAULT NULL,
    major_events_count INTEGER DEFAULT NULL,
    crossover_count INTEGER DEFAULT NULL,
    editorial_lead TEXT DEFAULT NULL,
    publisher_id INTEGER DEFAULT NULL,
    canonical BOOLEAN DEFAULT NULL,
    fan_favorite_rating DECIMAL(3,1) DEFAULT NULL,
    average_issue_rating DECIMAL(3,1) DEFAULT NULL,
    reprint_rate_percent DECIMAL(5,2) DEFAULT NULL,
    digital_release_available BOOLEAN DEFAULT NULL,
    streaming_adaptations INTEGER DEFAULT NULL,
    merchandising_line TEXT DEFAULT NULL,
    anniversary_year INTEGER DEFAULT NULL,
    anniversary_edition TEXT DEFAULT NULL,
    public_domain_status TEXT DEFAULT NULL
);

INSERT INTO universe_narrative (id, universe_name, primary_story_arc_id, total_issues, timeline_start_year, timeline_end_year, continuity_status, major_events_count, crossover_count, editorial_lead, publisher_id, canonical, fan_favorite_rating, average_issue_rating, reprint_rate_percent, digital_release_available, streaming_adaptations, merchandising_line, anniversary_year, anniversary_edition, public_domain_status) VALUES
(1, 'Prime Hero Universe', 401, 1250, 1960, 2025, 'Ongoing', 85, 22, 'Laura Smith', 2, TRUE, 9.2, 8.8, 35.00, TRUE, 5, 'Action Figures, Apparel', 2020, 'Golden Edition', 'Restricted'),
(2, 'Shadow Realm Continuum', 402, 800, 1975, 2024, 'Limited', 60, 15, 'Mark Johnson', 3, FALSE, 8.5, 8.1, 28.00, TRUE, 3, 'Collectibles, Posters', 2025, 'Silver Edition', 'Public Domain Pending'),
(3, 'Cosmic Saga', 403, 1500, 1985, 2026, 'Reboot', 100, 30, 'Nina Patel', 4, TRUE, 9.5, 9.0, 42.00, TRUE, 7, 'Statues, Board Games', 2030, 'Platinum Edition', 'Restricted');

-- Timeline event records
CREATE TABLE timeline_event
(
    id INTEGER NOT NULL PRIMARY KEY,
    event_name TEXT DEFAULT NULL,
    universe_id INTEGER DEFAULT NULL,
    event_date DATE DEFAULT NULL,
    event_type TEXT DEFAULT NULL,
    affected_characters TEXT DEFAULT NULL,
    description TEXT DEFAULT NULL,
    impact_score INTEGER DEFAULT NULL,
    sequel_event_id INTEGER DEFAULT NULL,
    prequel_event_id INTEGER DEFAULT NULL,
    source_material_id INTEGER DEFAULT NULL,
    official_canon BOOLEAN DEFAULT NULL,
    fan_vote_percentage DECIMAL(5,2) DEFAULT NULL,
    media_coverage_score INTEGER DEFAULT NULL,
    merchandise_launched TEXT DEFAULT NULL,
    tv_adapted BOOLEAN DEFAULT NULL,
    movie_adapted BOOLEAN DEFAULT NULL,
    video_game_adapted BOOLEAN DEFAULT NULL,
    comic_book_reissue BOOLEAN DEFAULT NULL,
    archival_status TEXT DEFAULT NULL
);

INSERT INTO timeline_event (id, event_name, universe_id, event_date, event_type, affected_characters, description, impact_score, sequel_event_id, prequel_event_id, source_material_id, official_canon, fan_vote_percentage, media_coverage_score, merchandise_launched, tv_adapted, movie_adapted, video_game_adapted, comic_book_reissue, archival_status) VALUES
(1, 'Origins of Light', 1, '1965-03-15', 'Origin', 'Luminary', 'First appearance of the main hero', 95, 2, NULL, 501, TRUE, 92.50, 85, 'Action Figure Series', TRUE, FALSE, TRUE, FALSE, 'Preserved'),
(2, 'Shadow War', 2, '1978-09-20', 'War', 'Dark Legion', 'Epic conflict reshaping the realm', 88, NULL, 1, 502, TRUE, 84.30, 78, 'Limited Edition Prints', FALSE, TRUE, FALSE, TRUE, 'Digitized'),
(3, 'Cosmic Convergence', 3, '1992-12-05', 'Crossover', 'All Heroes', 'Multiple universes intersect', 99, NULL, NULL, 503, TRUE, 97.10, 90, 'Collector Boxes', TRUE, TRUE, TRUE, TRUE, 'Archived');

-- Brand collaboration agreements
CREATE TABLE brand_collaboration
(
    id INTEGER NOT NULL PRIMARY KEY,
    collaboration_name TEXT DEFAULT NULL,
    primary_brand TEXT DEFAULT NULL,
    secondary_brand TEXT DEFAULT NULL,
    start_date DATE DEFAULT NULL,
    end_date DATE DEFAULT NULL,
    objective TEXT DEFAULT NULL,
    budget_million DECIMAL(10,2) DEFAULT NULL,
    joint_products TEXT DEFAULT NULL,
    marketing_channels TEXT DEFAULT NULL,
    exclusive_rights BOOLEAN DEFAULT NULL,
    distribution_regions TEXT DEFAULT NULL,
    legal_agreement_id INTEGER DEFAULT NULL,
    performance_metric TEXT DEFAULT NULL,
    success_rating DECIMAL(3,1) DEFAULT NULL,
    renewal_option BOOLEAN DEFAULT NULL,
    termination_clause TEXT DEFAULT NULL,
    public_announcement_date DATE DEFAULT NULL,
    press_kit_url TEXT DEFAULT NULL,
    social_media_campaign TEXT DEFAULT NULL,
    sustainability_commitment TEXT DEFAULT NULL
);

INSERT INTO brand_collaboration (id, collaboration_name, primary_brand, secondary_brand, start_date, end_date, objective, budget_million, joint_products, marketing_channels, exclusive_rights, distribution_regions, legal_agreement_id, performance_metric, success_rating, renewal_option, termination_clause, public_announcement_date, press_kit_url, social_media_campaign, sustainability_commitment) VALUES
(1, 'Heroes x Sportswear', 'Prime Hero', 'Athlete Corp', '2023-01-01', '2025-12-31', 'Expand market reach', 15.00, 'Limited Edition Jerseys', 'Online,InStore', TRUE, 'North America,Europe', 701, 'Sales Volume', 8.7, TRUE, '30 Day Notice', '2022-11-20', 'www.primeheroathlete.com/presskit', '#HeroesRun', 'Recycled Materials'),
(2, 'Shadow Tech Fusion', 'Shadow Realm', 'Techno Labs', '2024-03-15', '2027-03-14', 'Innovate product line', 22.50, 'Smart Gadgets', 'Digital,Events', FALSE, 'Asia Pacific', 702, 'User Engagement', 9.2, FALSE, 'Force Majeure', '2024-02-28', 'www.shadowtechfusion.com/press', '#ShadowTech', 'Carbon Neutral Goal'),
(3, 'Cosmic Culinary', 'Cosmic Saga', 'Gourmet Foods', '2025-06-01', '2028-05-31', 'Create themed food items', 10.75, 'Snack Packs', 'Retail,Online', TRUE, 'Global', 703, 'Market Penetration', 7.9, TRUE, 'Early Termination Fee', '2025-05-10', 'www.cosmicculinary.com/presskit', '#TasteTheCosmos', 'Zero Waste Packaging');
