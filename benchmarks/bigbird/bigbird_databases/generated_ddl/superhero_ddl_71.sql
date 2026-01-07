-- Publishing schedule for comic issues
CREATE TABLE publishing_schedule
(
    id                     INTEGER PRIMARY KEY,
    publisher_id           INTEGER,
    series_name            TEXT,
    volume_number          INTEGER,
    issue_number           INTEGER,
    release_date           TEXT,
    print_run              INTEGER,
    format_type            TEXT,
    language               TEXT,
    region_code            TEXT,
    editor_id              INTEGER,
    art_director_id        INTEGER,
    marketing_budget       INTEGER,
    distribution_type      TEXT,
    isbn                   TEXT,
    barcode                TEXT,
    print_cost_per_copy    REAL,
    estimated_sales        INTEGER,
    actual_sales           INTEGER,
    status                 TEXT,
    notes                  TEXT,
    created_at             TEXT
);

INSERT INTO publishing_schedule VALUES (1, 1, AlphaSeries, 1, 1, 2023-01-15, 50000, Hardcover, English, NA, 101, 201, 20000, Retail, 9781234567890, 0123456789012, 2.5, 45000, 43000, Published, InitialRelease, 2022-12-01);
INSERT INTO publishing_schedule VALUES (2, 2, BetaChronicles, 2, 5, 2023-03-10, 30000, Paperback, Spanish, EU, 102, 202, 15000, Direct, 9780987654321, 0987654321098, 1.8, 28000, 26000, Published, SecondPrint, 2023-01-20);
INSERT INTO publishing_schedule VALUES (3, 3, GammaTales, 3, 12, 2023-06-20, 75000, Digital, French, AS, 103, 203, 25000, Online, 9785678901234, 0678901234567, 0.0, 70000, 69000, Scheduled, Upcoming, 2023-02-15);

-- Physical distribution nodes for comic logistics
CREATE TABLE distribution_node
(
    id                       INTEGER PRIMARY KEY,
    node_name                TEXT,
    address_line1            TEXT,
    address_line2            TEXT,
    city                     TEXT,
    state_province           TEXT,
    country                  TEXT,
    postal_code              TEXT,
    latitude                 REAL,
    longitude                REAL,
    capacity_units           INTEGER,
    operating_hours_start    TEXT,
    operating_hours_end      TEXT,
    manager_employee_id      INTEGER,
    contact_phone            TEXT,
    contact_email            TEXT,
    security_level           TEXT,
    temperature_control      TEXT,
    last_audit_date          TEXT,
    active_status            TEXT,
    notes                    TEXT,
    created_at               TEXT
);

INSERT INTO distribution_node VALUES (1, WestCoastHub, 123 Main St, Suite 100, LosAngeles, CA, USA, 90001, 34.05, -118.25, 20000, 06:00, 22:00, 1001, 5551234567, wc_hub@example.com, High, Yes, 2023-02-01, Active, PrimaryWestCoastNode, 2022-12-15);
INSERT INTO distribution_node VALUES (2, EastCoastDepot, 456 Elm Ave, , NewYork, NY, USA, 10001, 40.71, -74.00, 25000, 05:00, 23:00, 1002, 5559876543, ec_depot@example.com, Medium, No, 2023-01-20, Active, SecondaryEastCoastNode, 2023-01-05);
INSERT INTO distribution_node VALUES (3, CentralEuropeCenter, 78 River Rd, Building B, Berlin, , Germany, 10115, 52.52, 13.40, 18000, 07:00, 21:00, 1003, 5555551234, eu_center@example.com, High, Yes, 2023-02-10, Active, EUDistributionHub, 2023-01-30);

-- Summary of merchandise sales across channels
CREATE TABLE merchandise_sales_summary
(
    id                          INTEGER PRIMARY KEY,
    merchandise_item_id        INTEGER,
    sales_channel               TEXT,
    fiscal_year                 INTEGER,
    quarter                     INTEGER,
    units_sold                  INTEGER,
    gross_revenue               REAL,
    net_revenue                 REAL,
    average_selling_price       REAL,
    discount_percentage         REAL,
    return_rate_percentage      REAL,
    promotional_units_allocated INTEGER,
    inventory_beginning         INTEGER,
    inventory_ending            INTEGER,
    cost_of_goods_sold          REAL,
    gross_margin_percentage     REAL,
    marketing_spend             REAL,
    shipping_cost_total         REAL,
    tax_collected               REAL,
    notes                       TEXT,
    created_at                  TEXT,
    last_updated                TEXT
);

INSERT INTO merchandise_sales_summary VALUES (1, 101, Online, 2022, 4, 15000, 450000.0, 400000.0, 30.0, 5.0, 2.0, 2000, 20000, 5000, 150000.0, 45.0, 50000.0, 20000.0, 40000.0, QuarterlyOnlineReport, 2023-01-01, 2023-01-31);
INSERT INTO merchandise_sales_summary VALUES (2, 102, Retail, 2022, 4, 12000, 360000.0, 320000.0, 30.0, 7.0, 3.5, 1500, 15000, 3000, 140000.0, 44.0, 40000.0, 18000.0, 35000.0, QuarterlyRetailReport, 2023-01-01, 2023-01-31);
INSERT INTO merchandise_sales_summary VALUES (3, 103, Licensing, 2022, 4, 8000, 240000.0, 210000.0, 30.0, 10.0, 1.5, 1000, 10000, 2000, 120000.0, 40.0, 30000.0, 15000.0, 25000.0, QuarterlyLicensingReport, 2023-01-01, 2023-01-31);

-- Statistics per licensing region
CREATE TABLE licensing_region_statistics
(
    id                            INTEGER PRIMARY KEY,
    region_name                   TEXT,
    total_licenses_granted        INTEGER,
    active_licenses               INTEGER,
    expired_licenses              INTEGER,
    revenue_generated             REAL,
    average_license_fee           REAL,
    royalty_percentage            REAL,
    compliance_issues_reported    INTEGER,
    audit_score                   REAL,
    last_audit_date               TEXT,
    primary_contact_name          TEXT,
    primary_contact_email         TEXT,
    primary_contact_phone         TEXT,
    legal_entity_id               INTEGER,
    tax_identification_number    TEXT,
    currency_code                 TEXT,
    exchange_rate_to_usd          REAL,
    notes                         TEXT,
    created_at                    TEXT,
    last_updated                  TEXT,
    active_status                 TEXT,
    region_manager_id             INTEGER
);

INSERT INTO licensing_region_statistics VALUES (1, NorthAmerica, 2500, 2300, 200, 1250000.0, 500.0, 7.0, 5, 92.5, 2023-01-15, JohnDoe, na_licensing@example.com, 5551112222, 3001, TX123456789, USD, 1.0, HighVolumeRegion, 2022-12-01, 2023-01-31, Active, 4001);
INSERT INTO licensing_region_statistics VALUES (2, Europe, 1800, 1650, 150, 950000.0, 530.0, 6.5, 8, 88.0, 2023-01-20, JaneSmith, eu_licensing@example.com, 5553334444, 3002, EU987654321, EUR, 1.1, GrowingRegion, 2022-12-15, 2023-02-01, Active, 4002);
INSERT INTO licensing_region_statistics VALUES (3, AsiaPacific, 1200, 1100, 100, 800000.0, 480.0, 8.0, 3, 94.0, 2023-01-10, LiWei, apac_licensing@example.com, 5555556666, 3003, AP123123123, JPY, 0.009, EmergingMarket, 2023-01-05, 2023-02-05, Active, 4003);

-- Analytics for digital platforms
CREATE TABLE digital_platform_analytics
(
    id                              INTEGER PRIMARY KEY,
    platform_name                   TEXT,
    metric_date                     TEXT,
    active_users                    INTEGER,
    new_sign_ups                    INTEGER,
    total_sessions                  INTEGER,
    average_session_duration_sec    INTEGER,
    page_views_per_session          REAL,
    bounce_rate_percentage          REAL,
    conversion_rate_percentage      REAL,
    revenue_per_user                REAL,
    ad_impressions                  INTEGER,
    ad_clicks                       INTEGER,
    churn_rate_percentage           REAL,
    lifetime_value                  REAL,
    retention_rate_30d_percentage   REAL,
    mobile_vs_desktop_ratio         REAL,
    top_country_code                TEXT,
    server_response_time_ms         INTEGER,
    error_rate_percentage           REAL,
    notes                           TEXT,
    created_at                      TEXT,
    last_updated                    TEXT,
    data_source                     TEXT,
    platform_version                TEXT
);

INSERT INTO digital_platform_analytics VALUES (1, ComicStream, 2023-02-01, 85000, 1200, 300000, 420, 4.5, 38.0, 5.2, 2.5, 1500000, 75000, 4.0, 45.0, 70.0, 0.6, US, 180, 0.5, DailySnapshot, 2023-02-01, 2023-02-02, Internal, 2.3);
INSERT INTO digital_platform_analytics VALUES (2, HeroHub, 2023-02-01, 62000, 950, 210000, 380, 4.2, 42.0, 4.8, 2.1, 1150000, 58000, 3.8, 38.0, 68.0, 0.55, UK, 200, 0.6, DailySnapshot, 2023-02-01, 2023-02-02, Internal, 1.9);
INSERT INTO digital_platform_analytics VALUES (3, VillainVault, 2023-02-01, 47000, 800, 150000, 350, 3.9, 45.0, 4.5, 1.9, 900000, 46000, 3.5, 33.0, 65.0, 0.5, JP, 210, 0.7, DailySnapshot, 2023-02-01, 2023-02-02, Internal, 2.0);

-- Fan engagement events such as meet‑ups and panels
CREATE TABLE fan_engagement_event
(
    id                       INTEGER PRIMARY KEY,
    event_name               TEXT,
    event_type               TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    venue_id                 INTEGER,
    city                     TEXT,
    state_province           TEXT,
    country                  TEXT,
    expected_attendance      INTEGER,
    actual_attendance        INTEGER,
    ticket_price_usd         REAL,
    sponsor_id               INTEGER,
    marketing_budget_usd     INTEGER,
    featured_hero_id         INTEGER,
    featured_villain_id      INTEGER,
    live_stream_available    TEXT,
    livestream_platform      TEXT,
    livestream_viewers       INTEGER,
    social_media_hashtag     TEXT,
    press_release_link       TEXT,
    notes                    TEXT,
    created_at               TEXT,
    last_updated             TEXT,
    status                   TEXT
);

INSERT INTO fan_engagement_event VALUES (1, HeroCon2023, Convention, 2023-07-10, 2023-07-13, 501, SanDiego, CA, USA, 25000, 24000, 75.0, 2001, 50000, 1, 5, Yes, StreamHub, 120000, #HeroCon2023, http://example.com/press/hero2023, AnnualSuperheroConvention, 2023-04-01, 2023-06-20, Scheduled);
INSERT INTO fan_engagement_event VALUES (2, VillainVaultExpo, Expo, 2023-09-05, 2023-09-07, 502, London, , UK, 18000, 17500, 60.0, 2002, 40000, 3, 9, No, , 0, #VillainExpo, http://example.com/press/villain2023, FirstVillainFocusedExpo, 2023-05-15, 2023-07-30, Planned);
INSERT INTO fan_engagement_event VALUES (3, DigitalHeroesSummit, Summit, 2023-11-20, 2023-11-20, 503, Tokyo, , JP, 8000, 8000, 30.0, 2003, 25000, 7, , Yes, DigiStream, 50000, #DigitalHeroes, http://example.com/press/digital2023, VirtualSummitForFans, 2023-06-10, 2023-09-01, Confirmed);

-- Advertising campaign performance metrics
CREATE TABLE advertising_campaign_metrics
(
    id                              INTEGER PRIMARY KEY,
    campaign_name                   TEXT,
    start_date                      TEXT,
    end_date                        TEXT,
    total_spend_usd                 REAL,
    impressions                     INTEGER,
    clicks                          INTEGER,
    click_through_rate_percentage   REAL,
    cost_per_click_usd              REAL,
    conversions                     INTEGER,
    conversion_rate_percentage      REAL,
    cost_per_acquisition_usd        REAL,
    target_audience                 TEXT,
    platforms_used                  TEXT,
    creative_version                TEXT,
    geographic_target               TEXT,
    device_targeting                TEXT,
    frequency_cap                   INTEGER,
    ad_position                     TEXT,
    viewability_rate_percentage     REAL,
    brand_lift_score                REAL,
    notes                           TEXT,
    created_at                      TEXT,
    last_updated                    TEXT,
    status                          TEXT
);

INSERT INTO advertising_campaign_metrics VALUES (1, SuperheroLaunchQ1, 2023-01-01, 2023-03-31, 250000.0, 50000000, 750000, 1.5, 0.33, 6000, 0.8, 41.67, GeneralFans, SocialMedia, V1, NorthAmerica, Mobile, 3, Top, 85.0, 7.5, Q1LaunchCampaign, 2023-01-01, 2023-04-01, Completed);
INSERT INTO advertising_campaign_metrics VALUES (2, VillainArcMidYear, 2023-05-01, 2023-07-31, 180000.0, 40000000, 560000, 1.4, 0.32, 4200, 0.75, 42.86, VillainFans, TV, V2, Europe, Desktop, 2, Side, 80.0, 6.8, MidYearVillainPush, 2023-05-01, 2023-08-01, Completed);
INSERT INTO advertising_campaign_metrics VALUES (3, DigitalSeriesFall, 2023-09-01, 2023-11-30, 210000.0, 45000000, 620000, 1.38, 0.34, 5000, 0.81, 42.00, DigitalSubscribers, Online, V3, AsiaPacific, Mobile, 4, Bottom, 82.0, 7.2, FallDigitalSeries, 2023-09-01, 2023-12-01, Ongoing);

-- Corporate venture capital fund investments
CREATE TABLE corporate_venture_capital_fund
(
    id                                 INTEGER PRIMARY KEY,
    fund_name                          TEXT,
    parent_corporation_id              INTEGER,
    establishment_date                 TEXT,
    total_commitment_usd               REAL,
    invested_amount_usd                REAL,
    number_of_portfolios               INTEGER,
    focus_industry                     TEXT,
    geographic_focus                   TEXT,
    average_check_size_usd             REAL,
    lead_investor                      TEXT,
    co_investors                       TEXT,
    fund_status                        TEXT,
    last_investment_date               TEXT,
    next_fundraising_target_usd        REAL,
    management_fee_percentage          REAL,
    carried_interest_percentage        REAL,
    limited_partners_count             INTEGER,
    GP_commitment_percentage           REAL,
    reporting_frequency                TEXT,
    notes                              TEXT,
    created_at                         TEXT,
    last_updated                       TEXT,
    internal_contact_email             TEXT
);

INSERT INTO corporate_venture_capital_fund VALUES (1, HeroVentures, 4001, 2020-06-01, 50000000.0, 12000000.0, 15, EntertainmentTech, Global, 800000.0, JohnDoe, , Active, 2023-02-15, 30000000.0, 2.0, 20.0, 12, 5.0, Quarterly, StrategicInvestmentFund, 2020-06-01, 2023-01-20, venture@example.com);
INSERT INTO corporate_venture_capital_fund VALUES (2, VillainCapital, 4002, 2018-03-15, 40000000.0, 25000000.0, 22, Gaming, NorthAmerica, 900000.0, JaneSmith, , Active, 2023-01-10, 20000000.0, 2.5, 18.0, 10, 6.0, SemiAnnual, FocusedOnInteractiveMedia, 2018-03-15, 2022-12-01, capital@example.com);
INSERT INTO corporate_venture_capital_fund VALUES (3, MetaUniverseFund, 4003, 2021-11-20, 60000000.0, 15000000.0, 10, Metaverse, Europe, 1200000.0, LiWei, , Active, 2023-03-05, 25000000.0, 1.8, 22.0, 8, 4.5, Annual, EmergingMetaverseTechnologies, 2021-11-20, 2023-02-28, meta@example.com);

-- Environmental monitoring station readings
CREATE TABLE environmental_monitoring_station_reading
(
    id                              INTEGER PRIMARY KEY,
    station_id                      INTEGER,
    reading_timestamp               TEXT,
    temperature_celsius             REAL,
    humidity_percent                REAL,
    air_quality_index               INTEGER,
    pm2_5_concentration_ug_m3      REAL,
    pm10_concentration_ug_m3       REAL,
    co_ppm                          REAL,
    no2_ppb                         INTEGER,
    so2_ppb                         INTEGER,
    o3_ppb                          INTEGER,
    wind_speed_mps                  REAL,
    wind_direction_degrees          INTEGER,
    precipitation_mm                REAL,
    solar_irradiance_w_m2           REAL,
    noise_level_db                  REAL,
    soil_moisture_percent           REAL,
    water_ph_level                  REAL,
    battery_status_percent          INTEGER,
    maintenance_required            TEXT,
    notes                           TEXT,
    created_at                      TEXT,
    last_updated                    TEXT
);

INSERT INTO environmental_monitoring_station_reading VALUES (1, 901, 2023-02-01T08:00:00Z, 22.5, 55.0, 42, 12.5, 20.0, 0.4, 15, 5, 30, 3.2, 180, 0.0, 500.0, 45.0, 30.0, 7.2, 95, No, RoutineCheck, 2023-02-01, 2023-02-01);
INSERT INTO environmental_monitoring_station_reading VALUES (2, 902, 2023-02-01T08:15:00Z, 19.8, 60.0, 38, 10.0, 18.0, 0.3, 12, 4, 28, 2.8, 190, 0.1, 480.0, 42.0, 28.0, 6.9, 92, No, RoutineCheck, 2023-02-01, 2023-02-01);
INSERT INTO environmental_monitoring_station_reading VALUES (3, 903, 2023-02-01T08:30:00Z, 21.0, 58.0, 40, 11.2, 19.5, 0.35, 14, 5, 29, 3.0, 185, 0.0, 490.0, 44.0, 29.0, 7.0, 94, No, RoutineCheck, 2023-02-01, 2023-02-01);

-- Media appearances of superheroes across formats
CREATE TABLE superhero_media_appearance
(
    id                          INTEGER PRIMARY KEY,
    superhero_id                INTEGER,
    media_type                  TEXT,
    title                       TEXT,
    release_date                TEXT,
    production_company_id       INTEGER,
    director                    TEXT,
    lead_actor                  TEXT,
    rating_score                REAL,
    box_office_gross_usd        REAL,
    streaming_views             INTEGER,
    awards_won                  INTEGER,
    critical_acclaim_score      REAL,
    audience_score              REAL,
    runtime_minutes             INTEGER,
    language                    TEXT,
    subtitle_available          TEXT,
    platform_id                 INTEGER,
    marketing_spend_usd         REAL,
    viewership_demographic      TEXT,
    notes                       TEXT,
    created_at                  TEXT,
    last_updated                TEXT,
    status                      TEXT
);

INSERT INTO superhero_media_appearance VALUES (1, 1, Film, AlphaMovie, 2023-05-12, 6001, JaneDoe, JohnHero, 8.2, 350000000.0, 0, 5, 88.0, 85.0, 130, English, Yes, 8001, 25000000.0, GeneralAudience, BlockbusterRelease, 2023-04-01, 2023-05-20, Released);
INSERT INTO superhero_media_appearance VALUES (2, 2, Television, BetaSeriesS01E01, 2023-03-01, 6002, MarkSmith, AliceSidekick, 7.5, 0.0, 1200000, 2, 76.0, 79.0, 45, English, Yes, 8002, 8000000.0, Teens, SeasonPremiere, 2023-02-15, 2023-03-02, Aired);
INSERT INTO superhero_media_appearance VALUES (3, 3, AnimatedFilm, GammaAnimated, 2023-08-20, 6003, LindaLee, VoiceActorX, 8.7, 200000000.0, 5000000, 7, 91.0, 90.0, 100, English, Yes, 8003, 15000000.0, Families, SummerHit, 2023-07-01, 2023-08-25, Scheduled);

-- Licensing agreement details for product lines
CREATE TABLE licensing_agreement_detail
(
    id                              INTEGER PRIMARY KEY,
    agreement_id                    INTEGER,
    product_line                    TEXT,
    start_date                      TEXT,
    end_date                        TEXT,
    territory                       TEXT,
    royalty_percent                 REAL,
    minimum_guarantee_usd           REAL,
    advance_payment_usd             REAL,
    reporting_frequency             TEXT,
    audit_rights                    TEXT,
    exclusivity                     TEXT,
    sublicensing_allowed            TEXT,
    product_category                TEXT,
    max_units_per_year              INTEGER,
    price_cap_usd                   REAL,
    renewal_option_years            INTEGER,
    termination_notice_days         INTEGER,
    governing_law                   TEXT,
    dispute_resolution              TEXT,
    notes                           TEXT,
    created_at                      TEXT,
    last_updated                    TEXT,
    status                          TEXT,
    responsible_manager_id          INTEGER
);

INSERT INTO licensing_agreement_detail VALUES (1, 1001, ActionFigures, 2022-01-01, 2025-12-31, NorthAmerica, 7.5, 500000.0, 200000.0, Quarterly, Yes, Exclusive, No, Toys, 200000, 30.0, 2, 90, USA, Arbitration, InitialAgreement, 2022-01-01, 2022-06-01, Active, 9001);
INSERT INTO licensing_agreement_detail VALUES (2, 1002, Apparel, 2021-06-15, 2024-06-14, Europe, 6.0, 300000.0, 150000.0, SemiAnnual, Yes, NonExclusive, Yes, Clothing, 150000, 25.0, 1, 60, UK, Mediation, FollowupAgreement, 2021-06-15, 2021-12-01, Active, 9002);
INSERT INTO licensing_agreement_detail VALUES (3, 1003, VideoGames, 2023-03-01, 2028-02-28, AsiaPacific, 8.0, 800000.0, 300000.0, Annual, Yes, Exclusive, No, Digital, 500000, 60.0, 3, 120, JP, Arbitration, NewDeal, 2023-03-01, 2023-07-01, Pending, 9003);

-- Corporate sponsorship contracts for events
CREATE TABLE corporate_sponsorship_contract
(
    id                              INTEGER PRIMARY KEY,
    sponsor_id                      INTEGER,
    event_id                        INTEGER,
    contract_date                   TEXT,
    sponsorship_level               TEXT,
    contribution_amount_usd         REAL,
    branding_rights                 TEXT,
    product_placement_allowed       TEXT,
    exclusive_category              TEXT,
    duration_months                 INTEGER,
    renewal_option                  TEXT,
    termination_clause              TEXT,
    insurance_required              TEXT,
    compliance_requirements         TEXT,
    marketing_assets_provided       TEXT,
    activation_plan                 TEXT,
    audit_rights                    TEXT,
    reporting_frequency             TEXT,
    notes                           TEXT,
    created_at                      TEXT,
    last_updated                    TEXT,
    status                          TEXT,
    contract_manager_id             INTEGER,
    legal_review_completed          TEXT
);

INSERT INTO corporate_sponsorship_contract VALUES (1, 2001, 1, 2023-01-10, Platinum, 150000.0, FullBranding, Yes, EnergyDrinks, 12, AutoRenew, 90DaysNotice, Yes, Standard, LogosAndBanners, InteractiveBooth, Yes, Quarterly, HighVisibilityDeal, 2023-01-10, 2023-02-01, Active, 11001, Yes);
INSERT INTO corporate_sponsorship_contract VALUES (2, 2002, 2, 2023-02-05, Gold, 90000.0, PartialBranding, No, ComicBooks, 6, NoRenew, 60DaysNotice, Yes, Standard, SocialMediaMentions, PhotoOp, No, SemiAnnual, ModerateExposure, 2023-02-05, 2023-02-20, Active, 11002, Yes);
INSERT INTO corporate_sponsorship_contract VALUES (3, 2003, 3, 2023-03-12, Silver, 50000.0, LogoOnly, No, Merchandise, 3, NoRenew, 30DaysNotice, No, Minimal, LogoPlacement, BoothFlyers, No, Annual, LowKeySupport, 2023-03-12, 2023-03-25, Pending, 11003, No);