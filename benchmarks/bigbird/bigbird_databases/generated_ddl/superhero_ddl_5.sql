-- Studio facilities where production takes place
CREATE TABLE studio_facility
(
    id                     INTEGER PRIMARY KEY,
    facility_name          TEXT,
    location_city          TEXT,
    location_state         TEXT,
    country                TEXT,
    square_feet            INTEGER,
    num_sound_stages       INTEGER,
    num_editing_suites     INTEGER,
    established_year       INTEGER,
    contact_phone          TEXT,
    contact_email          TEXT,
    is_active              INTEGER,        -- 1 = active, 0 = inactive
    primary_use            TEXT,
    max_occupancy          INTEGER,
    parking_spaces         INTEGER,
    nearby_airport_code    TEXT,
    security_level         TEXT,
    maintenance_budget     INTEGER,
    sustainability_cert   TEXT,
    notes                  TEXT
);

INSERT INTO studio_facility VALUES (1, 'Sunset Studios', 'Los Angeles', 'CA', 'USA', 250000, 5, 12, 1998, '5551234567', 'info@sunsetstudios.com', 1, 'Film Production', 2000, 300, 'LAX', 'High', 500000, 'LEED Gold', 'Main west coast hub');
INSERT INTO studio_facility VALUES (2, 'Northern Lights', 'Vancouver', 'BC', 'Canada', 180000, 3, 8, 2005, '6045557890', 'contact@northernlights.ca', 1, 'TV Series', 1500, 250, 'YVR', 'Medium', 350000, 'LEED Silver', 'Focus on green productions');
INSERT INTO studio_facility VALUES (3, 'EuroFilm Park', 'Munich', 'BY', 'Germany', 300000, 6, 15, 1992, '+4989123456', 'admin@eurofilm.de', 1, 'Feature Films', 2500, 400, 'MUC', 'High', 750000, 'ISO 14001', 'Largest EU facility');

-- Media archives storing original assets
CREATE TABLE media_archive
(
    archive_id                 INTEGER PRIMARY KEY,
    archive_name               TEXT,
    physical_location          TEXT,
    climate_control_type       TEXT,
    max_storage_tb             INTEGER,
    num_tape_libraries          INTEGER,
    num_digital_servers        INTEGER,
    backup_frequency_days      INTEGER,
    last_audit_date            TEXT,
    responsible_manager        TEXT,
    contact_number             TEXT,
    security_clearance_level   TEXT,
    access_policy              TEXT,
    preservation_format        TEXT,
    digital_conversion_status  TEXT,
    funding_source              TEXT,
    annual_operating_cost      INTEGER,
    has_disaster_recovery_plan INTEGER,
    notes                      TEXT,
    created_year               INTEGER,
    regional_focus             TEXT
);

INSERT INTO media_archive VALUES (1, 'Heritage Vault', 'Los Angeles', 'HVAC', 1500, 12, 8, 30, '2024-03-15', 'Laura Chen', '5559876543', 'Top Secret', 'Restricted', 'Film Reel', 'In Progress', 'Studio Funding', 1200000, 1, 'Primary archive for classic titles', 1990, 'North America');
INSERT INTO media_archive VALUES (2, 'Nordic Media Bank', 'Stockholm', 'Passive', 800, 6, 5, 45, '2023-11-02', 'Erik Svensson', '0800123456', 'Confidential', 'Limited', 'Digital Master', 'Complete', 'Government Grant', 750000, 1, 'Focus on European productions', 2002, 'Europe');
INSERT INTO media_archive VALUES (3, 'Asia Pacific Repository', 'Singapore', 'Hybrid', 1200, 9, 7, 60, '2024-01-20', 'Ming Lee', '6512345678', 'Secret', 'Open', 'Mixed Media', 'Scheduled', 'Private Investment', 950000, 0, 'Supports regional co-productions', 2010, 'Asia Pacific');

-- Global licensing agreements for intellectual property
CREATE TABLE global_license
(
    license_id                INTEGER PRIMARY KEY,
    licensee_name             TEXT,
    licensor_name             TEXT,
    territory                 TEXT,
    start_date                TEXT,
    end_date                  TEXT,
    royalty_rate_percent      INTEGER,
    upfront_fee_usd           INTEGER,
    minimum_guarantee_usd     INTEGER,
    currency                  TEXT,
    payment_terms_days        INTEGER,
    audit_rights              TEXT,
    exclusivity_flag          INTEGER,
    media_type_allowed        TEXT,
    language_formats          TEXT,
    renewal_option_years      INTEGER,
    termination_clause        TEXT,
    compliance_requirements   TEXT,
    notes                     TEXT,
    created_by_user_id        INTEGER
);

INSERT INTO global_license VALUES (1, 'ToyCo International', 'Marvel Studios', 'Worldwide', '2023-01-01', '2028-12-31', 7, 500000, 2000000, 'USD', 30, 'Annual', 1, 'Merchandise', 'EN,ES,FR,DE', 2, '30_day_notice', 'BrandGuidelines', 'First global toy license', 101);
INSERT INTO global_license VALUES (2, 'GameWorks Studios', 'DC Entertainment', 'North America', '2022-06-15', '2025-06-14', 10, 300000, 1500000, 'USD', 45, 'Semiannual', 0, 'Video Game', 'EN', 1, '60_day_notice', 'RatingCompliance', 'Multi‑platform launch', 102);
INSERT INTO global_license VALUES (3, 'Animedia Ltd', 'Pixar Animation', 'Asia', '2024-03-01', '2030-02-28', 5, 250000, 1200000, 'USD', 60, 'Quarterly', 1, 'Streaming', 'EN,JA,KO', 3, '90_day_notice', 'LocalizationPolicy', 'Regional exclusivity granted', 103);

-- Merchandise items linked to characters (but not character details themselves)
CREATE TABLE character_merchandise
(
    merch_id                 INTEGER PRIMARY KEY,
    product_name             TEXT,
    product_category         TEXT,
    sku_code                 TEXT,
    release_date             TEXT,
    price_usd                INTEGER,
    stock_quantity           INTEGER,
    safety_certifications    TEXT,
    target_audience_age_min  INTEGER,
    target_audience_age_max  INTEGER,
    material_type            TEXT,
    packaging_type           TEXT,
    distributor_id           INTEGER,
    dimensions_cm_width      INTEGER,
    dimensions_cm_height     INTEGER,
    dimensions_cm_depth      INTEGER,
    weight_grams             INTEGER,
    promotional_tagline      TEXT,
    limited_edition_flag     INTEGER,
    edition_number           INTEGER,
    notes                    TEXT,
    created_timestamp        TEXT,
    last_updated_timestamp   TEXT
);

INSERT INTO character_merchandise VALUES (1, 'WebShooter Replica', 'Toy', 'WSR001', '2023-09-15', 49, 5000, 'CPSC', 8, 12, 'Plastic', 'Boxed', 201, 15, 5, 10, 250, 'Swing into Action', 0, NULL, 'Comes with extra web fluid', '2023-09-01 10:00:00', '2023-09-10 14:30:00');
INSERT INTO character_merchandise VALUES (2, 'Kryptonite Necklace', 'Accessory', 'KN002', '2024-02-01', 35, 2000, 'ISO9001', 15, 45, 'Alloy', 'Pouch', 202, 5, 3, 1, 80, 'Power of the Stone', 1, 23, 'Numbered serial inside', '2024-01-20 09:15:00', '2024-01-25 11:45:00');
INSERT INTO character_merchandise VALUES (3, 'Batmobile Model Kit', 'Model', 'BMK003', '2023-12-10', 79, 1200, 'CE', 12, 18, 'Metal', 'Blister', 203, 30, 15, 45, 1500, 'Assemble the Night Ride', 0, NULL, 'Requires screwdriver', '2023-11-30 08:00:00', '2023-12-05 16:20:00');

-- Ticket sales for themed events
CREATE TABLE event_ticket_sales
(
    sale_id                     INTEGER PRIMARY KEY,
    event_id                    INTEGER,
    ticket_type                 TEXT,
    ticket_price_usd            INTEGER,
    quantity_sold               INTEGER,
    purchase_date               TEXT,
    buyer_name                  TEXT,
    buyer_email                 TEXT,
    buyer_phone                 TEXT,
    venue_id                    INTEGER,
    seat_section                TEXT,
    seat_row                    TEXT,
    seat_number                 TEXT,
    discount_code               TEXT,
    is_vip_access               INTEGER,
    purchase_channel            TEXT,
    payment_method              TEXT,
    transaction_id              TEXT,
    refund_requested_flag       INTEGER,
    refund_processed_date       TEXT,
    notes                       TEXT,
    created_timestamp           TEXT,
    last_updated_timestamp      TEXT
);

INSERT INTO event_ticket_sales VALUES (1, 301, 'General Admission', 20, 1500, '2024-01-05', 'John Doe', 'johndoe@example.com', '5551112222', 401, NULL, NULL, NULL, NULL, 0, 'Online', 'CreditCard', 'TXN1001', 0, NULL, 'Early bird pricing', '2024-01-05 07:30:00', '2024-01-07 12:00:00');
INSERT INTO event_ticket_sales VALUES (2, 301, 'VIP Pass', 80, 300, '2024-01-06', 'Jane Smith', 'janesmith@example.com', '5553334444', 401, 'A', '5', '12', 'VIP2024', 1, 'BoxOffice', 'Cash', 'TXN1002', 0, NULL, 'Includes backstage access', '2024-01-06 09:15:00', '2024-01-08 14:20:00');
INSERT INTO event_ticket_sales VALUES (3, 302, 'Standard', 15, 800, '2024-01-10', 'Mike Brown', 'mikeb@example.com', '5557778888', 402, NULL, NULL, NULL, NULL, 0, 'MobileApp', 'DebitCard', 'TXN1003', 1, '2024-01-20', 'Requested refund due to illness', '2024-01-10 11:45:00', '2024-01-15 10:05:00');

-- Digital streaming rights details
CREATE TABLE digital_streaming_rights
(
    rights_id               INTEGER PRIMARY KEY,
    title_id                INTEGER,
    platform_name           TEXT,
    territory               TEXT,
    start_date              TEXT,
    end_date                TEXT,
    exclusivity_flag        INTEGER,
    revenue_share_percent   INTEGER,
    flat_fee_usd            INTEGER,
    view_cap_limit          INTEGER,
    ad_supported_flag       INTEGER,
    subtitle_languages      TEXT,
    audio_languages         TEXT,
    drm_scheme              TEXT,
    quality_resolution      TEXT,
    reporting_frequency     TEXT,
    compliance_audit_date   TEXT,
    notes                   TEXT,
    created_by_user_id      INTEGER,
    created_timestamp       TEXT,
    last_updated_timestamp  TEXT
);

INSERT INTO digital_streaming_rights VALUES (1, 501, 'StreamNow', 'Global', '2023-07-01', '2026-06-30', 0, 15, 200000, NULL, 1, 'EN,ES,FR', 'EN', 'Widevine', '4K', 'Monthly', '2024-02-15', 'Includes promotional banners', 110, '2023-06-20 09:00:00', '2024-01-01 12:00:00');
INSERT INTO digital_streaming_rights VALUES (2, 502, 'PlayMax', 'Europe', '2024-01-01', '2025-12-31', 1, 12, 150000, 1000000, 0, 'EN,DE,IT', 'EN,DE', 'FairPlay', 'HD', 'Quarterly', '2024-03-01', 'No ads, premium tier', 111, '2023-12-10 08:30:00', '2024-01-05 14:45:00');
INSERT INTO digital_streaming_rights VALUES (3, 503, 'CinemaHub', 'Asia', '2024-04-15', '2027-04-14', 0, 18, 250000, NULL, 1, 'EN,JA,KO', 'EN,JA', 'PlayReady', 'FullHD', 'Monthly', '2024-05-20', 'Supports localized ad inserts', 112, '2024-04-01 10:10:00', '2024-04-20 16:30:00');

-- Publicity release statements for announcements
CREATE TABLE publicity_release
(
    release_id                INTEGER PRIMARY KEY,
    title                     TEXT,
    release_date              TEXT,
    issuing_department        TEXT,
    target_audience           TEXT,
    summary                   TEXT,
    full_text                 TEXT,
    media_contact_name        TEXT,
    media_contact_email       TEXT,
    media_contact_phone       TEXT,
    distribution_channel      TEXT,
    language                  TEXT,
    region                    TEXT,
    approval_status           TEXT,
    approved_by_user_id       INTEGER,
    embargo_until             TEXT,
    related_event_id          INTEGER,
    attachment_url            TEXT,
    notes                     TEXT,
    created_timestamp         TEXT,
    last_updated_timestamp    TEXT,
    version_number            INTEGER
);

INSERT INTO publicity_release VALUES (1, 'New Hero Launch', '2024-02-01', 'Marketing', 'Fans', 'Announcing the debut of a new hero', 'The studio is proud to introduce ...', 'Amy Lee', 'amy.lee@studio.com', '5554445555', 'PressRelease', 'EN', 'Global', 'Approved', 120, NULL, 301, 'http://media.studio.com/releases/hero_launch.pdf', 'First wave of teasers released', '2024-01-20 09:00:00', '2024-01-28 15:30:00', 1);
INSERT INTO publicity_release VALUES (2, 'Quarterly Earnings Call', '2024-03-15', 'InvestorRelations', 'Investors', 'Financial results for Q1 2024', 'We are pleased to report ...', 'Brian K', 'brian.k@studio.com', '5556667777', 'Webcast', 'EN', 'North America', 'Pending', NULL, '2024-03-20 10:00:00', NULL, 'http://media.studio.com/earnings/q1_2024.pdf', 'Awaiting CFO sign‑off', '2024-02-28 11:45:00', '2024-03-10 14:20:00', 2);
INSERT INTO publicity_release VALUES (3, 'International Festival Participation', '2024-04-05', 'PublicRelations', 'Media', 'Studio will attend Cannes Film Festival', 'The upcoming lineup includes ...', 'Sofia G', 'sofia.g@studio.com', '5558889999', 'EmailBlast', 'EN', 'Europe', 'Approved', 121, '2024-04-04 00:00:00', 401, 'http://media.studio.com/festivals/cannes2024.pdf', 'Coordination with local partners', '2024-03-20 13:10:00', '2024-03-30 09:55:00', 1);

-- Audiobook production details for character stories
CREATE TABLE audiobook_production
(
    audiobook_id               INTEGER PRIMARY KEY,
    title                      TEXT,
    narrator_name              TEXT,
    language                   TEXT,
    total_runtime_minutes      INTEGER,
    production_start_date      TEXT,
    production_end_date        TEXT,
    studio_name                TEXT,
    audio_format               TEXT,
    sample_rate_hz             INTEGER,
    bit_depth                  INTEGER,
    royalty_rate_percent       INTEGER,
    distribution_platforms      TEXT,
    isbn13                     TEXT,
    cover_art_url              TEXT,
    editorial_editor           TEXT,
    script_writer              TEXT,
    quality_assurance_passed   INTEGER,
    notes                      TEXT,
    created_by_user_id         INTEGER,
    created_timestamp          TEXT,
    last_updated_timestamp     TEXT
);

INSERT INTO audiobook_production VALUES (1, 'Origins of the Dark Knight', 'James Nolan', 'EN', 420, '2023-05-01', '2023-08-15', 'AudioWorks', 'MP3', 44100, 16, 8, 'Audible,GooglePlay', '9781234567890', 'http://assets.studio.com/covers/dark_knight.jpg', 'Karen M', 'Tom S', 1, 'Includes bonus commentary track', 130, '2023-04-20 10:00:00', '2023-08-20 16:45:00');
INSERT INTO audiobook_production VALUES (2, 'Chronicles of the Cosmic Sailor', 'Lena Patel', 'EN', 360, '2023-09-10', '2023-12-01', 'NarrateNow', 'AAC', 48000, 24, 10, 'AppleBooks,Spotify', '9780987654321', 'http://assets.studio.com/covers/cosmic_sailor.jpg', 'Mark T', 'Sara L', 1, 'Narrated in dual voices', 131, '2023-09-01 09:30:00', '2023-12-05 11:20:00');
INSERT INTO audiobook_production VALUES (3, 'Legends of the Ancient Realm', 'Carlos Ruiz', 'ES', 300, '2024-01-05', '2024-03-20', 'VozPro', 'WAV', 96000, 24, 12, 'Storytel,Audible', '9781122334455', 'http://assets.studio.com/covers/ancient_realm.jpg', 'Isabel G', 'Miguel H', 0, 'Pending final mix', 132, '2023-12-15 14:00:00', '2024-03-25 10:10:00');

-- Inventory tracking for comic book stores
CREATE TABLE comic_bookstore_inventory
(
    store_id                     INTEGER,
    inventory_id                 INTEGER PRIMARY KEY,
    item_sku                     TEXT,
    title                        TEXT,
    issue_number                 INTEGER,
    publication_date             TEXT,
    condition_rating             TEXT,
    quantity_on_hand             INTEGER,
    wholesale_price_usd          INTEGER,
    retail_price_usd             INTEGER,
    supplier_id                  INTEGER,
    reorder_point                INTEGER,
    lead_time_days               INTEGER,
    aisle_location               TEXT,
    shelf_number                 TEXT,
    bin_number                   TEXT,
    is_featured                  INTEGER,
    promotion_start_date         TEXT,
    promotion_end_date           TEXT,
    notes                        TEXT,
    last_stocked_timestamp       TEXT,
    last_sold_timestamp          TEXT,
    created_timestamp            TEXT,
    last_updated_timestamp       TEXT
);

INSERT INTO comic_bookstore_inventory VALUES (1, 1001, 'CB001', 'Star Guardians', 12, '2023-06-01', 'Mint', 30, 3, 5, 301, 5, 7, 'A', '3', 'B12', 1, '2023-12-01', '2023-12-31', 'Holiday display', '2023-11-20 09:00:00', '2023-12-15 14:30:00', '2023-11-01 08:00:00', '2023-12-20 12:45:00');
INSERT INTO comic_bookstore_inventory VALUES (2, 1002, 'CB045', 'Mystic Realms', 5, '2022-11-15', 'Near Mint', 12, 2, 4, 302, 3, 5, 'B', '7', 'C34', 0, NULL, NULL, 'Back‑order expected', '2023-10-10 10:20:00', '2023-11-30 16:00:00', '2022-11-01 09:15:00', '2023-11-20 11:55:00');
INSERT INTO comic_bookstore_inventory VALUES (3, 1003, 'CB078', 'Future Tech', 20, '2024-01-20', 'Very Good', 5, 4, 7, 303, 2, 10, 'C', '2', 'D56', 0, '2024-02-01', '2024-02-28', 'Limited edition', '2024-01-25 13:40:00', '2024-02-15 15:25:00', '2024-01-10 07:45:00', '2024-02-20 09:10:00');

-- Virtual reality experience configurations
CREATE TABLE virtual_reality_experience
(
    vr_id                       INTEGER PRIMARY KEY,
    experience_name             TEXT,
    developer_studio            TEXT,
    platform_supported          TEXT,
    release_date                TEXT,
    max_players                 INTEGER,
    duration_minutes            INTEGER,
    required_hardware           TEXT,
    motion_controller_support  INTEGER,
    haptic_feedback_level       TEXT,
    average_fps                 INTEGER,
    file_size_gb                INTEGER,
    language_localizations      TEXT,
    age_rating                  TEXT,
    vr_rating_system            TEXT,
    distribution_channel        TEXT,
    price_usd                   INTEGER,
    bundle_includes             TEXT,
    promotional_video_url       TEXT,
    support_contact_email       TEXT,
    notes                       TEXT,
    created_timestamp           TEXT,
    last_updated_timestamp      TEXT
);

INSERT INTO virtual_reality_experience VALUES (1, 'Sky Fortress Assault', 'EpicVR Studios', 'OculusQuest,SteamVR', '2023-09-10', 4, 45, 'Oculus Quest 2', 1, 'Medium', 72, 12, 'EN,FR,DE', '12+', 'ESRB', 'OnlineStore', 30, 'StarterPack', 'http://media.studio.com/vr/sky_fortress_trailer.mp4', 'support@epicvr.com', 'Seasonal event planned', '2023-08-01 08:00:00', '2023-09-05 16:20:00');
INSERT INTO virtual_reality_experience VALUES (2, 'Oceanic Depths', 'DeepDive Labs', 'HTCVive,PlayStationVR', '2024-02-20', 2, 60, 'HTC Vive Pro', 1, 'High', 90, 20, 'EN,JA,KO', '10+', 'PEGI', 'PhysicalRetail', 40, 'CollectorEdition', 'http://media.studio.com/vr/oceanic_depths_trailer.mp4', 'info@deepdivelabs.com', 'Includes optional controller skins', '2024-01-15 09:30:00', '2024-02-15 14:45:00');
INSERT INTO virtual_reality_experience VALUES (3, 'Neon City Chase', 'PixelPulse', 'MetaQuest,SteamVR', '2024-05-05', 6, 30, 'Meta Quest 3', 1, 'Low', 80, 8, 'EN,ES', '13+', 'ESRB', 'OnlineStore', 25, 'SeasonPass', 'http://media.studio.com/vr/neon_city_trailer.mp4', 'contact@pixelpulse.com', 'Fast‑paced multiplayer mode', '2024-04-01 07:45:00', '2024-04-20 12:10:00');