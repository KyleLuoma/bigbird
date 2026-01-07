-- Venue staff assignment details
CREATE TABLE venue_staff (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    staff_name TEXT,
    role TEXT,
    shift_start TIME,
    shift_end TIME,
    contact_number TEXT,
    email TEXT,
    hire_date DATE,
    contract_type TEXT,
    hourly_rate REAL,
    certification_level TEXT,
    language_spoken TEXT,
    emergency_contact_name TEXT,
    emergency_contact_phone TEXT,
    notes TEXT,
    is_active INTEGER DEFAULT 1,
    access_level INTEGER,
    badge_id TEXT,
    uniform_size TEXT,
    schedule_weekday TEXT,
    schedule_weekend TEXT
);

INSERT INTO venue_staff VALUES (1, 101, 'Alice Smith', 'Manager', '08:00', '16:00', '5551234567', 'alice@example.com', '2022-06-15', 'FullTime', 25.5, 'Level2', 'English', 'Bob Smith', '5559876543', 'Promoted last year', 1, 5, 'BADGE001', 'M', 'Mon-Fri', 'Sat');
INSERT INTO venue_staff VALUES (2, 102, 'Carlos Diaz', 'Security', '20:00', '04:00', '5552223333', 'carlos@example.com', '2021-03-01', 'PartTime', 18.0, 'Level1', 'Spanish', 'Maria Diaz', '5553334444', 'Night shift', 1, 2, 'BADGE002', 'L', 'Fri-Sun', 'Sat');
INSERT INTO venue_staff VALUES (3, 103, 'Li Wei', 'Technician', '09:00', '17:00', '5554445555', 'liwei@example.com', '2023-01-20', 'Contract', 22.0, 'Level3', 'Mandarin', 'Zhang Wei', '5555556666', 'Handles AV equipment', 1, 4, 'BADGE003', 'S', 'Mon-Thu', 'Fri');

-- Merchandise sales channel definitions
CREATE TABLE merchandise_sales_channels (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    channel_name TEXT,
    channel_type TEXT,
    commission_rate REAL,
    launch_date DATE,
    region TEXT,
    currency TEXT,
    is_active INTEGER DEFAULT 1,
    contact_person TEXT,
    contact_email TEXT,
    phone TEXT,
    website TEXT,
    integration_status TEXT,
    daily_sync_time TIME,
    monthly_fee REAL,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    priority_rank INTEGER,
    parent_channel_id INTEGER,
    description TEXT
);

INSERT INTO merchandise_sales_channels VALUES (1, 'Online Store', 'Ecommerce', 0.07, '2020-05-01', 'Global', 'USD', 1, 'Emma Brown', 'emma@store.com', '5551112222', 'https://store.example.com', 'Live', '02:00', 199.99, 'Primary online channel', '2020-05-01 09:00:00', '2023-08-10 12:00:00', 1, NULL, 'Main brand storefront');
INSERT INTO merchandise_sales_channels VALUES (2, 'Retail Partner A', 'Wholesale', 0.12, '2021-09-15', 'NA', 'USD', 1, 'John Lee', 'john@partnera.com', '5553334444', 'https://partnera.example.com', 'Pending', '03:30', 0, 'New partnership in NA', '2021-09-15 10:15:00', '2023-07-20 08:45:00', 2, NULL, 'Regional wholesale partner');
INSERT INTO merchandise_sales_channels VALUES (3, 'PopUp Event', 'Physical', 0.15, '2022-03-10', 'EU', 'EUR', 0, 'Sofia Rossi', 'sofia@popup.it', '5557778888', NULL, 'Inactive', '01:00', 0, 'Seasonal events', '2022-03-10 11:30:00', '2023-06-01 14:20:00', 3, NULL, 'Temporary event stalls');

-- Digital artifact usage logs
CREATE TABLE digital_artifact_usage_logs (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    artifact_id TEXT,
    user_id INTEGER,
    session_id TEXT,
    usage_start DATETIME,
    usage_end DATETIME,
    action_type TEXT,
    device_type TEXT,
    os_version TEXT,
    app_version TEXT,
    ip_address TEXT,
    location_city TEXT,
    location_country TEXT,
    data_consumed_mb REAL,
    error_code INTEGER,
    error_message TEXT,
    is_successful INTEGER,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT,
    uuid TEXT
);

INSERT INTO digital_artifact_usage_logs VALUES (1, 'ARTF001', 1001, 'SID12345', '2023-11-01 14:00:00', '2023-11-01 14:30:00', 'View', 'Mobile', 'iOS14', '1.2.3', '192.168.1.10', 'NewYork', 'USA', 150.5, 0, NULL, 1, '2023-11-01 14:31:00', '2023-11-01 14:31:00', 'First view of artifact', 'UUID001');
INSERT INTO digital_artifact_usage_logs VALUES (2, 'ARTF002', 1002, 'SID12346', '2023-11-02 09:15:00', '2023-11-02 09:45:00', 'Interact', 'Desktop', 'Windows10', '2.0.0', '192.168.1.11', 'London', 'UK', 200.0, 101, 'TimeoutError', 0, '2023-11-02 09:46:00', '2023-11-02 09:46:00', 'Interaction failed', 'UUID002');
INSERT INTO digital_artifact_usage_logs VALUES (3, 'ARTF003', 1003, 'SID12347', '2023-11-03 20:05:00', '2023-11-03 20:25:00', 'Share', 'Tablet', 'Android11', '3.1.4', '192.168.1.12', 'Tokyo', 'JP', 120.75, 0, NULL, 1, '2023-11-03 20:26:00', '2023-11-03 20:26:00', 'Shared on social media', 'UUID003');

-- Marketing survey responses
CREATE TABLE marketing_survey_responses (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    survey_id TEXT,
    respondent_id INTEGER,
    response_date DATE,
    q1_rating INTEGER,
    q2_rating INTEGER,
    q3_rating INTEGER,
    q4_rating INTEGER,
    q5_rating INTEGER,
    q1_comment TEXT,
    q2_comment TEXT,
    q3_comment TEXT,
    q4_comment TEXT,
    q5_comment TEXT,
    overall_score REAL,
    device_used TEXT,
    browser TEXT,
    ip_address TEXT,
    consent_given INTEGER,
    source_campaign TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    uuid TEXT
);

INSERT INTO marketing_survey_responses VALUES (1, 'SURV001', 2001, '2023-10-20', 5, 4, 3, 5, 4, 'Great', 'Good', 'Average', 'Excellent', 'Very good', 4.2, 'Mobile', 'Chrome', '10.0.0.1', 1, 'EmailBlast', 'First response', '2023-10-20 08:00:00', '2023-10-20 08:01:00', 'RESPUUID001');
INSERT INTO marketing_survey_responses VALUES (2, 'SURV001', 2002, '2023-10-21', 3, 2, 4, 3, 2, 'Okay', 'Bad', 'Good', 'Neutral', 'Poor', 2.8, 'Desktop', 'Firefox', '10.0.0.2', 1, 'SocialMedia', 'Second response', '2023-10-21 09:15:00', '2023-10-21 09:16:00', 'RESPUUID002');
INSERT INTO marketing_survey_responses VALUES (3, 'SURV001', 2003, '2023-10-22', 4, 5, 5, 4, 5, 'Very good', 'Excellent', 'Excellent', 'Very good', 'Excellent', 4.8, 'Tablet', 'Safari', '10.0.0.3', 1, 'InApp', 'Third response', '2023-10-22 10:30:00', '2023-10-22 10:31:00', 'RESPUUID003');

-- Event vendor contracts
CREATE TABLE event_vendor_contracts (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    vendor_id INTEGER,
    contract_start_date DATE,
    contract_end_date DATE,
    service_type TEXT,
    total_amount REAL,
    currency TEXT,
    payment_terms TEXT,
    contact_name TEXT,
    contact_email TEXT,
    phone TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    status TEXT,
    renewal_option TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    uuid TEXT
);

INSERT INTO event_vendor_contracts VALUES (1, 301, 401, '2023-01-01', '2023-12-31', 'Catering', 50000.00, 'USD', 'Net30', 'Laura Cook', 'laura@cateringco.com', '5551112222', '123 Food St', NULL, 'Chicago', 'IL', '60601', 'USA', 'Active', 'AutoRenew', 'Primary food vendor', '2023-01-01 09:00:00', '2023-06-01 10:00:00', 'VCONUUID001');
INSERT INTO event_vendor_contracts VALUES (2, 302, 402, '2023-03-15', '2024-03-14', 'Security', 30000.00, 'USD', 'Advance50', 'Mike Guard', 'mike@securityinc.com', '5553334444', '456 Secure Ave', 'Suite 200', 'Los Angeles', 'CA', '90001', 'USA', 'Pending', 'ManualRenew', 'Background check required', '2023-03-15 11:30:00', '2023-07-15 12:00:00', 'VCONUUID002');
INSERT INTO event_vendor_contracts VALUES (3, 303, 403, '2022-09-01', '2023-08-31', 'AudioVisual', 75000.00, 'USD', 'Net45', 'Sara Tech', 'sara@avservices.com', '5555556666', '789 Tech Blvd', NULL, 'New York', 'NY', '10001', 'USA', 'Completed', 'NoRenew', 'Handled all stage equipment', '2022-09-01 08:45:00', '2023-08-31 17:00:00', 'VCONUUID003');

-- Streaming ad creatives
CREATE TABLE streaming_ad_creatives (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    creative_name TEXT,
    format TEXT,
    duration_seconds INTEGER,
    file_path TEXT,
    thumbnail_path TEXT,
    campaign_id INTEGER,
    target_audience TEXT,
    language TEXT,
    is_active INTEGER DEFAULT 1,
    start_date DATE,
    end_date DATE,
    budget_usd REAL,
    impressions_goal INTEGER,
    clicks_goal INTEGER,
    cpm REAL,
    cpc REAL,
    created_by TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT,
    approval_status TEXT,
    version INTEGER
);

INSERT INTO streaming_ad_creatives VALUES (1, 'SpringSale2024', 'Video', 30, '/ads/spring2024.mp4', '/ads/thumbs/spring2024.jpg', 101, 'Adults', 'English', 1, '2024-03-01', '2024-05-31', 15000.00, 2000000, 50000, 7.5, 0.3, 'Anna Marketing', '2024-02-15 10:00:00', '2024-02-20 12:00:00', 'High priority', 'Approved', 1);
INSERT INTO streaming_ad_creatives VALUES (2, 'GameLaunchTeaser', 'GIF', 15, '/ads/launch.gif', '/ads/thumbs/launch.jpg', 102, 'Gamers', 'Spanish', 1, '2024-04-10', '2024-06-10', 8000.00, 1200000, 30000, 6.7, 0.25, 'Luis Creative', '2024-03-20 09:30:00', '2024-04-01 11:45:00', 'Seasonal teaser', 'Pending', 2);
INSERT INTO streaming_ad_creatives VALUES (3, 'SponsorSpotlight', 'Image', 10, '/ads/sponsor.png', '/ads/thumbs/sponsor.jpg', 103, 'All', 'English', 0, '2024-01-01', '2024-12-31', 5000.00, 800000, 20000, 5.0, 0.2, 'Karen Ops', '2023-12-01 08:00:00', '2023-12-15 10:15:00', 'Static sponsor banner', 'Rejected', 1);

-- Player training modules
CREATE TABLE player_training_modules (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    module_code TEXT,
    title TEXT,
    description TEXT,
    category TEXT,
    difficulty_level TEXT,
    duration_minutes INTEGER,
    video_url TEXT,
    material_url TEXT,
    quiz_questions INTEGER,
    passing_score INTEGER,
    language TEXT,
    is_mandatory INTEGER DEFAULT 0,
    release_date DATE,
    expiration_date DATE,
    created_by TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    status TEXT,
    notes TEXT,
    version INTEGER
);

INSERT INTO player_training_modules VALUES (1, 'TM001', 'Deck Building Basics', 'Introduction to building effective decks', 'Strategy', 'Beginner', 45, 'https://videos.example.com/tm001.mp4', 'https://materials.example.com/tm001.pdf', 10, 70, 'English', 1, '2023-01-10', '2025-01-10', 'Emily Trainer', '2023-01-01 09:00:00', '2023-06-01 10:00:00', 'Active', 'Core curriculum', 1);
INSERT INTO player_training_modules VALUES (2, 'TM002', 'Advanced Mana Curves', 'Deep dive into mana curve optimization', 'Strategy', 'Advanced', 60, 'https://videos.example.com/tm002.mp4', 'https://materials.example.com/tm002.pdf', 12, 80, 'English', 0, '2023-03-15', '2025-03-15', 'Mark Coach', '2023-03-01 11:30:00', '2023-07-15 12:45:00', 'Active', 'Optional for pros', 1);
INSERT INTO player_training_modules VALUES (3, 'TM003', 'Tournament Etiquette', 'Guidelines for professional conduct', 'General', 'Intermediate', 30, 'https://videos.example.com/tm003.mp4', 'https://materials.example.com/tm003.pdf', 8, 75, 'Spanish', 1, '2023-05-01', '2025-05-01', 'Laura Guide', '2023-04-20 08:15:00', '2023-08-10 09:20:00', 'Active', 'Mandatory for all participants', 1);

-- Game rule updates log
CREATE TABLE game_rule_updates (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    rule_id TEXT,
    update_version TEXT,
    description TEXT,
    effective_date DATE,
    change_type TEXT,
    affected_set_code TEXT,
    prior_text TEXT,
    new_text TEXT,
    submitted_by TEXT,
    reviewed_by TEXT,
    review_date DATE,
    status TEXT,
    comments TEXT,
    is_critical INTEGER,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT,
    source_document TEXT,
    link TEXT
);

INSERT INTO game_rule_updates VALUES (1, 'RULE001', 'v2.0', 'Clarified wording on counter interactions', '2024-01-01', 'Clarification', 'M21', 'A counter may be placed on any object.', 'A counter may be placed on any permanent or player.', 'Alice Writer', 'Bob Editor', '2023-12-15', 'Approved', 'No objections', 1, '2023-12-01 10:00:00', '2023-12-20 14:30:00', 'Important for gameplay', 'CompRules.pdf', 'https://rules.example.com/rule001');
INSERT INTO game_rule_updates VALUES (2, 'RULE045', 'v1.1', 'Added new restriction for planar cards', '2024-06-01', 'Addition', 'KHM', 'Planar cards may be played at any time.', 'Planar cards may be played only during the main phase.', 'Carlos Author', 'Dana Reviewer', '2024-05-20', 'Pending', 'Awaiting legal review', 0, '2024-05-01 09:30:00', '2024-05-21 11:45:00', 'Pending impact assessment', 'PlanarRules.docx', 'https://rules.example.com/rule045');
INSERT INTO game_rule_updates VALUES (3, 'RULE078', 'v3.2', 'Removed outdated legend about mana costs', '2023-09-15', 'Removal', 'THB', 'All spells cost at least one mana.', 'Spells may have zero mana cost.', 'Eve Maintainer', 'Frank Approver', '2023-09-01', 'Approved', 'Clean-up of legacy text', 0, '2023-08-20 08:00:00', '2023-09-05 10:15:00', 'Legacy removal', 'LegacyRules2022.pdf', 'https://rules.example.com/rule078');

-- Fantasy world lore entries
CREATE TABLE fantasy_world_lore (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    entity_name TEXT,
    entity_type TEXT,
    description TEXT,
    first_appearance_set TEXT,
    related_entities TEXT,
    alignment TEXT,
    power_level INTEGER,
    origin_story TEXT,
    image_url TEXT,
    created_by TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    is_canonical INTEGER,
    lore_category TEXT,
    source_book TEXT,
    page_number INTEGER,
    notes TEXT,
    version INTEGER,
    status TEXT
);

INSERT INTO fantasy_world_lore VALUES (1, 'Eldara', 'Plane', 'A serene world of floating islands.', 'USG', 'Aether, Mirrodin', 'Neutral', 85, 'Created by the ancient titans.', 'https://lore.example.com/eldara.jpg', 'Gareth Historian', '2022-04-01 12:00:00', '2023-03-10 15:30:00', 1, 'Geography', 'The Multiverse Atlas', 42, 'Key location for planar travel.', 1, 'Approved');
INSERT INTO fantasy_world_lore VALUES (2, 'Zarok', 'Creature', 'A towering dragon with ice breath.', 'M20', 'Eldara, Iroas', 'Chaotic Evil', 96, 'Born in the frozen north.', 'https://lore.example.com/zarok.png', 'Lena Scribe', '2022-07-15 09:45:00', '2023-01-22 11:20:00', 0, 'Creatures', 'Monsters of the Realms', 107, 'Still under review.', 2, 'Draft');
INSERT INTO fantasy_world_lore VALUES (3, 'Arcane Conflux', 'Event', 'A rare convergence of ley lines.', 'KLD', 'All Planes', 'None', 0, 'Occurs once every millennium.', 'https://lore.example.com/conflux.jpg', 'Milo Chronicler', '2023-02-10 14:30:00', '2023-06-05 16:00:00', 1, 'Events', 'Chronicles of Power', 210, 'Featured in recent set lore.', 1, 'Published');

-- Player wallet transaction history
CREATE TABLE player_wallet_transactions (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    wallet_id INTEGER,
    transaction_type TEXT,
    amount REAL,
    currency TEXT,
    transaction_date DATETIME,
    status TEXT,
    reference_id TEXT,
    description TEXT,
    fee REAL,
    net_amount REAL,
    exchange_rate REAL,
    processed_by TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT,
    is_refund INTEGER,
    category TEXT,
    channel TEXT,
    device_id TEXT,
    ip_address TEXT,
    uuid TEXT
);

INSERT INTO player_wallet_transactions VALUES (1, 501, 'Deposit', 100.00, 'USD', '2023-11-01 10:00:00', 'Completed', 'REF001', 'Purchase of tokens', 0.00, 100.00, 1.0, 'System', '2023-11-01 10:01:00', '2023-11-01 10:01:00', 'First deposit', 0, 'TopUp', 'Web', 'DEV001', '192.168.2.10', 'TXUUID001');
INSERT INTO player_wallet_transactions VALUES (2, 501, 'Purchase', 25.50, 'USD', '2023-11-05 14:30:00', 'Completed', 'REF002', 'Bought premium skin', 0.50, 25.00, 1.0, 'System', '2023-11-05 14:31:00', '2023-11-05 14:31:00', 'Skin purchase', 0, 'Item', 'Mobile', 'DEV002', '192.168.2.11', 'TXUUID002');
INSERT INTO player_wallet_transactions VALUES (3, 502, 'Refund', -10.00, 'USD', '2023-11-10 09:15:00', 'Completed', 'REF003', 'Refund for cancelled tournament entry', 0.00, -10.00, 1.0, 'Support', '2023-11-10 09:16:00', '2023-11-10 09:16:00', 'Tournament refund', 1, 'Refund', 'Web', 'DEV003', '192.168.2.12', 'TXUUID003');