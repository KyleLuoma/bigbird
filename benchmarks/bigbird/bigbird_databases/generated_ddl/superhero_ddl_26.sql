-- Publishing schedule for comic releases
CREATE TABLE publishing_schedule
(
    id INTEGER PRIMARY KEY,
    publisher_id INTEGER,
    series_name TEXT,
    volume_number INTEGER,
    issue_number INTEGER,
    release_date DATE,
    print_run INTEGER,
    digital_release_flag INTEGER,
    region_code TEXT,
    language TEXT,
    format_type TEXT,
    cover_artist TEXT,
    writer TEXT,
    penciler TEXT,
    inker TEXT,
    colorist TEXT,
    editor TEXT,
    price_usd REAL,
    isbn TEXT,
    barcode TEXT,
    notes TEXT,
    FOREIGN KEY (publisher_id) REFERENCES publisher(id)
);

INSERT INTO publishing_schedule VALUES (1, 1, AmazingHeroes, 2, 5, '2024-07-15', 120000, 1, NA, English, Hardcover, JaneDoe, JohnSmith, AlexRay, MayaLin, SamK, LisaRay, 4.99, 9781234567890, 0123456789012, First print run);
INSERT INTO publishing_schedule VALUES (2, 2, MysticChronicles, 1, 12, '2024-09-01', 80000, 0, EU, French, Paperback, PierreDupont, ClaireMartin, LucaBianchi, HanaS, OmarP, KevinL, 3.99, 9780987654321, 0987654321098, Limited digital release);
INSERT INTO publishing_schedule VALUES (3, 3, GalacticSaga, 3, 1, '2025-01-20', 150000, 1, AS, Japanese, Hardcover, KenYamamoto, HiroTanaka, SoraM, YuiK, MinJ, AkiraS, 5.99, 9781122334455, 1122334455667, Launch event planned);


-- Marketing campaign metrics
CREATE TABLE marketing_campaign_metrics
(
    id INTEGER PRIMARY KEY,
    campaign_name TEXT,
    start_date DATE,
    end_date DATE,
    budget_usd REAL,
    target_audience TEXT,
    channels_used TEXT,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    conversions INTEGER,
    conversion_rate REAL,
    cost_per_acquisition REAL,
    social_media_mentions INTEGER,
    press_release_count INTEGER,
    event_count INTEGER,
    lead_count INTEGER,
    roi_percent REAL,
    manager_id INTEGER,
    notes TEXT
);

INSERT INTO marketing_campaign_metrics VALUES (1, SummerLaunch2024, '2024-05-01', '2024-08-31', 250000, Teens, SocialMedia,TV,Online,5000000,250000,0.05,5000,0.02,25000,0.5,1200,100,50000, 15.2, 4, Initial rollout);
INSERT INTO marketing_campaign_metrics VALUES (2, HolidaySpecial2024, '2024-11-01', '2024-12-31', 300000, Families, TV,Online,Print,7000000,350000,0.05,6000,0.025,30000,0.6,1500,150,60000, 18.5, 5, Added influencer tier);
INSERT INTO marketing_campaign_metrics VALUES (3, NewSeriesTeaser, '2025-01-10', '2025-02-28', 120000, Adults, Online,SocialMedia,3000000,150000,0.05,2500,0.015,20000,0.4,800,80,20000, 12.0, 6, Focused on comic conventions);


-- Merchandise inventory
CREATE TABLE merchandise_inventory
(
    id INTEGER PRIMARY KEY,
    item_name TEXT,
    category TEXT,
    sku TEXT,
    supplier_id INTEGER,
    warehouse_location TEXT,
    quantity_on_hand INTEGER,
    reorder_level INTEGER,
    unit_cost_usd REAL,
    retail_price_usd REAL,
    weight_kg REAL,
    dimensions_cm TEXT,
    color_variant TEXT,
    size_variant TEXT,
    launch_date DATE,
    discontinued_flag INTEGER,
    last_stock_update DATE,
    barcode TEXT,
    description TEXT,
    photos_url TEXT
);

INSERT INTO merchandise_inventory VALUES (1, HeroTShirt, Apparel, HTS001, 10, WH_A1, 1500, 200, 5.0, 19.99, 0.2, 30x20x2, Red, L, '2024-06-01', 0, '2024-09-15', 1234567890123, Official hero t‑shirt, 'http://example.com/photos/hts001.jpg');
INSERT INTO merchandise_inventory VALUES (2, VillainFigurine, Collectibles, VF100, 12, WH_B3, 300, 50, 12.5, 49.99, 0.8, 10x10x30, Black, N/A, '2024-07-10', 0, '2024-09-10', 2345678901234, Premium villain figurine, 'http://example.com/photos/vf100.jpg');
INSERT INTO merchandise_inventory VALUES (3, SignaturePoster, Posters, SP500, 15, WH_C2, 800, 100, 2.0, 14.99, 0.1, 60x90x0.1, Multi, N/A, '2024-05-20', 0, '2024-09-12', 3456789012345, Limited edition poster, 'http://example.com/photos/sp500.jpg');


-- Fan engagement event
CREATE TABLE fan_engagement_event
(
    id INTEGER PRIMARY KEY,
    event_name TEXT,
    event_type TEXT,
    start_datetime DATETIME,
    end_datetime DATETIME,
    venue_id INTEGER,
    city TEXT,
    state TEXT,
    country TEXT,
    expected_attendance INTEGER,
    actual_attendance INTEGER,
    ticket_price_usd REAL,
    sponsorship_id INTEGER,
    marketing_campaign_id INTEGER,
    live_stream_flag INTEGER,
    merch_sales_usd REAL,
    feedback_score REAL,
    organizer_contact TEXT,
    social_media_hashtag TEXT,
    notes TEXT
);

INSERT INTO fan_engagement_event VALUES (1, HeroCon2024, Convention, '2024-10-05 09:00:00', '2024-10-07 18:00:00', 101, NewYork, NY, USA, 12000, 11500, 99.99, 201, 1, 1, 250000, 4.6, 'alice@example.com', #HeroCon2024, First major con after pandemic);
INSERT INTO fan_engagement_event VALUES (2, VillainFest, Festival, '2024-11-12 10:00:00', '2024-11-14 20:00:00', 102, London, , UK, 8000, 8200, 79.99, 202, 2, 0, 150000, 4.3, 'bob@example.co.uk', #VillainFest, Added VR experience);
INSERT INTO fan_engagement_event VALUES (3, CosmicExpo, Expo, '2025-02-20 08:00:00', '2025-02-22 22:00:00', 103, Tokyo, , Japan, 15000, 14800, 89.99, 203, 3, 1, 300000, 4.8, 'carlos@example.jp', #CosmicExpo, Partnered with local studios);


-- Licensing region agreement
CREATE TABLE licensing_region_agreement
(
    id INTEGER PRIMARY KEY,
    licensee_name TEXT,
    region_code TEXT,
    start_date DATE,
    end_date DATE,
    royalty_rate_percent REAL,
    minimum_guarantee_usd REAL,
    product_category TEXT,
    exclusive_flag INTEGER,
    audit_required_flag INTEGER,
    compliance_contact TEXT,
    agreement_document_path TEXT,
    renewal_option_flag INTEGER,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    currency TEXT,
    exchange_rate_to_usd REAL,
    termination_clause_summary TEXT,
    governing_law TEXT
);

INSERT INTO licensing_region_agreement VALUES (1, GlobalToysInc, NA, '2024-01-01', '2027-12-31', 8.5, 500000, Toys, 1, 1, 'diana@globaltoys.com', '/docs/agree_na.pdf', 1, Initial NA deal, '2024-01-01 09:00:00', '2024-09-15 12:30:00', USD, 1.0, Ten day notice, California);
INSERT INTO licensing_region_agreement VALUES (2, EuroMerchLtd, EU, '2023-06-15', '2026-06-14', 7.0, 300000, Apparel, 0, 1, 'erik@euromerch.eu', '/docs/agree_eu.pdf', 1, Expanded EU market, '2023-06-15 10:00:00', '2024-09-10 11:20:00', EUR, 1.1, Six month notice, Germany);
INSERT INTO licensing_region_agreement VALUES (3, AsiaGadgetsCo, AP, '2025-03-01', '2028-02-28', 9.0, 400000, Electronics, 1, 0, 'li@asiagadgets.cn', '/docs/agree_ap.pdf', 0, Pending AP approval, '2025-03-01 08:30:00', '2025-03-01 08:30:00', CNY, 0.15, Twelve month notice, Singapore);


-- Digital platform analytics
CREATE TABLE digital_platform_analytics
(
    id INTEGER PRIMARY KEY,
    platform_name TEXT,
    date DATE,
    active_users INTEGER,
    new_signups INTEGER,
    sessions INTEGER,
    avg_session_duration_seconds REAL,
    churn_rate_percent REAL,
    revenue_usd REAL,
    ad_impressions INTEGER,
    ad_clicks INTEGER,
    subscription_conversions INTEGER,
    avg_revenue_per_user REAL,
    geographic_region TEXT,
    device_type_distribution TEXT,
    os_version_distribution TEXT,
    api_error_rate_percent REAL,
    release_version TEXT,
    notes TEXT,
    created_at DATETIME
);

INSERT INTO digital_platform_analytics VALUES (1, HeroHub, '2024-09-01', 85000, 1500, 120000, 540, 2.5, 75000, 2000000, 40000, 800, 0.88, NorthAmerica, Mobile/Desktop, iOS14/Android11, 0.2, v2.3, Stable release, '2024-09-01 00:00:00');
INSERT INTO digital_platform_analytics VALUES (2, VillainVault, '2024-09-01', 42000, 800, 65000, 480, 3.0, 42000, 1200000, 25000, 400, 1.00, Europe, Desktop, Windows10/macOS11, 0.3, v1.9, Minor bug fixes, '2024-09-01 00:00:00');
INSERT INTO digital_platform_analytics VALUES (3, CosmicStream, '2024-09-01', 65000, 1300, 95000, 510, 2.8, 63000, 1800000, 35000, 600, 0.97, Asia, Mobile, Android12/iOS15, 0.25, v3.0, New UI rollout, '2024-09-01 00:00:00');


-- Storyline development log
CREATE TABLE storyline_development_log
(
    id INTEGER PRIMARY KEY,
    story_arc_id INTEGER,
    title TEXT,
    draft_version INTEGER,
    author_id INTEGER,
    writer TEXT,
    penciler TEXT,
    inker TEXT,
    colorist TEXT,
    editor TEXT,
    status TEXT,
    revision_date DATE,
    estimated_release_date DATE,
    page_count_estimate INTEGER,
    genre TEXT,
    target_audience TEXT,
    synopsis TEXT,
    keywords TEXT,
    notes TEXT,
    approval_flag INTEGER,
    approved_by_id INTEGER
);

INSERT INTO storyline_development_log VALUES (1, 1001, OriginOfTheStorm, 3, 201, JaneDoe, AlexRay, SamK, MayaLin, LisaRay, InProgress, '2024-08-10', '2024-12-01', 32, Action, Teens, 'Hero discovers new power.', 'storm;origin;hero', Initial drafts completed, 0, NULL);
INSERT INTO storyline_development_log VALUES (2, 1002, ShadowConspiracy, 2, 202, JohnSmith, LucaBianchi, HanaS, OmarP, KevinL, Review, '2024-07-20', '2024-11-15', 28, Thriller, Adults, 'Secret organization threatens city.', 'shadow;conspiracy;villain', Awaiting editor feedback, 0, NULL);
INSERT INTO storyline_development_log VALUES (3, 1003, GalacticAlliance, 1, 203, HiroTanaka, SoraM, YuiK, MinJ, AkiraS, Draft, '2024-09-01', '2025-02-20', 40, SciFi, AllAges, 'Allies unite against alien invasion.', 'galaxy;alliance;alien', First outline, 0, NULL);


-- Corporate partnership agreement
CREATE TABLE corporate_partnership_agreement
(
    id INTEGER PRIMARY KEY,
    partner_company_name TEXT,
    partnership_type TEXT,
    start_date DATE,
    end_date DATE,
    annual_fee_usd REAL,
    revenue_share_percent REAL,
    dedicated_manager_id INTEGER,
    primary_contact_name TEXT,
    primary_contact_email TEXT,
    contract_document_path TEXT,
    renewal_option_flag INTEGER,
    exclusivity_flag INTEGER,
    services_included TEXT,
    branding_guidelines_url TEXT,
    performance_metrics TEXT,
    termination_notice_days INTEGER,
    dispute_resolution_method TEXT,
    governing_law TEXT,
    notes TEXT,
    created_at DATETIME
);

INSERT INTO corporate_partnership_agreement VALUES (1, MegaMediaCorp, Advertising, '2024-01-01', '2026-12-31', 200000, 12.5, 301, SarahLee, sarah.lee@megamedia.com, '/contracts/mega_media.pdf', 1, 0, AdPlacement;CoBranding, 'http://brandguidelines.com/megamedia', KPI1;KPI2, 60, Arbitration, NewYork, Strategic ad partnership, '2024-01-01 09:00:00');
INSERT INTO corporate_partnership_agreement VALUES (2, TechGadgetLtd, Technology, '2023-05-15', '2025-05-14', 150000, 10.0, 302, MichaelChen, michael.chen@techgadget.com, '/contracts/tech_gadget.pdf', 1, 1, SDKIntegration;CoMarketing, 'http://brandguidelines.com/techgadget', KPI3;KPI4, 90, Mediation, California, Exclusive tech integration, '2023-05-15 10:30:00');
INSERT INTO corporate_partnership_agreement VALUES (3, FashionForward, Merchandise, '2024-09-01', '2027-08-31', 120000, 8.0, 303, EmilyPark, emily.park@fashionforward.com, '/contracts/fashion_forward.pdf', 0, 0, apparelLicensing;CoBranding, 'http://brandguidelines.com/fashionforward', KPI5;KPI6, 45, Litigation, Texas, Seasonal merchandise line, '2024-09-01 08:45:00');


-- Archival preservation record
CREATE TABLE archival_preservation_record
(
    id INTEGER PRIMARY KEY,
    item_type TEXT,
    item_identifier TEXT,
    storage_location TEXT,
    temperature_celsius REAL,
    humidity_percent REAL,
    preservation_status TEXT,
    last_inspection_date DATE,
    next_inspection_due DATE,
    conservator_id INTEGER,
    notes TEXT,
    accession_number TEXT,
    catalog_reference TEXT,
    condition_rating INTEGER,
    handling_instructions TEXT,
    digitization_status TEXT,
    digitization_date DATE,
    digital_file_path TEXT,
    insurance_value_usd REAL,
    insurance_policy_number TEXT
);

INSERT INTO archival_preservation_record VALUES (1, OriginalArtwork, OA-001, VaultA, 18.5, 45.0, Stable, '2024-06-15', '2025-06-15', 401, Stored in climate‑controlled vault., ACC1001, CAT-ART-001, 9, GlovesRequired;HandleWithCare, Completed, '2024-04-20', '/digital/oa_001.tif', 250000, POL12345);
INSERT INTO archival_preservation_record VALUES (2, OriginalScript, OS-042, ShelfB, 20.0, 40.0, MinorWear, '2024-07-01', '2025-07-01', 402, Minor edge fraying., ACC2002, CAT-SCR-042, 7, NoDirectLight;UseAcidFreePaper, InProgress, NULL, NULL, 120000, POL67890);
INSERT INTO archival_preservation_record VALUES (3, PrototypeToy, PT-007, SafeC, 19.0, 42.0, Excellent, '2024-05-20', '2025-05-20', 403, First edition prototype., ACC3003, CAT-TOY-007, 10, HandleWithGloves, NotStarted, NULL, NULL, 50000, POL24680);


-- Universe expansion plan
CREATE TABLE universe_expansion_plan
(
    id INTEGER PRIMARY KEY,
    plan_name TEXT,
    announcement_date DATE,
    expected_release_year INTEGER,
    involved_publishers TEXT,
    number_of_new_series INTEGER,
    estimated_budget_usd REAL,
    creative_director_id INTEGER,
    lead_writer_id INTEGER,
    target_audience TEXT,
    core_themes TEXT,
    marketing_strategy_summary TEXT,
    risk_assessment_summary TEXT,
    approval_status TEXT,
    approved_by_id INTEGER,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    stakeholder_list TEXT,
    external_consultant_id INTEGER
);

INSERT INTO universe_expansion_plan VALUES (1, MultiverseRising, '2024-03-01', 2025, PublisherA;PublisherB, 8, 8500000, 501, 601, TeensAndAdults, Heroism;Redemption;Diversity, AggressiveDigitalCampaign;CrossPromotions, HighCostRisk;SchedulingConflicts, Pending, NULL, Initial concept stage, '2024-03-01 09:15:00', '2024-09-15 14:20:00', TeamLeadA;TeamLeadB, 701);
INSERT INTO universe_expansion_plan VALUES (2, CosmicOdyssey, '2023-11-15', 2024, PublisherC, 5, 6200000, 502, 602, AllAges, Exploration;Unity;ScienceFiction, GlobalTour;MerchLaunch, MarketSaturationRisk, Approved, 801, Final approved plan, '2023-11-15 10:00:00', '2024-08-30 16:45:00', ExecutiveTeam, 702);
INSERT INTO universe_expansion_plan VALUES (3, ShadowLegends, '2024-07-20', 2026, PublisherD;PublisherE, 6, 7400000, 503, 603, Adults, Mystery;PowerStruggles;MoralAmbiguity, TargetedSocialAds;InfluencerPartnerships, CreativeDirectionRisk, Draft, NULL, Draft under review, '2024-07-20 08:30:00', '2024-09-20 11:00:00', CreativeCommittee, 703);