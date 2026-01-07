-- Printing Presses
CREATE TABLE printing_press (
    press_id INTEGER NOT NULL PRIMARY KEY,
    press_name TEXT,
    location_city TEXT,
    location_state TEXT,
    location_country TEXT,
    founded_year INTEGER,
    num_printing_units INTEGER,
    max_pages_per_minute INTEGER,
    supports_color BOOLEAN,
    supports_3d BOOLEAN,
    annual_capacity_million_pages DECIMAL(10,2),
    workforce_size INTEGER,
    ceo_name TEXT,
    contact_email TEXT,
    phone_number TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    zip_code TEXT,
    equipment_vendor TEXT,
    maintenance_contract_id INTEGER,
    sustainability_certified BOOLEAN,
    last_audit_date DATE
);
INSERT INTO printing_press VALUES (1,'AlphaPress','NewYork','NY','USA',1995,12,8000,1,0,150.50,85,'JohnDoe','contact@alphapress.com','2125551234','123MainSt','', '10001','PrintTech',101,1,'2023-06-15');
INSERT INTO printing_press VALUES (2,'BetaPrints','Chicago','IL','USA',2002,8,6000,1,1,120.75,60,'JaneSmith','info@betaprints.com','3125555678','456LakeAve','Suite200','60601','EcoMachines',102,0,'2024-01-10');
INSERT INTO printing_press VALUES (3,'GammaPressCo','Toronto','ON','Canada',2010,5,4500,0,0,90.00,40,'MikeLee','support@gammapress.com','4165559012','789KingSt','', 'M5V2T6','PrintMasters',103,1,'2022-11-05');

-- Distribution Centers
CREATE TABLE distribution_center (
    center_id INTEGER NOT NULL PRIMARY KEY,
    center_name TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    country TEXT,
    zip_code TEXT,
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    opened_date DATE,
    operational_status TEXT,
    manager_name TEXT,
    phone_ext TEXT,
    capacity_units INTEGER,
    avg_daily_shipments INTEGER,
    primary_transport_mode TEXT,
    regional_zone TEXT,
    security_level TEXT,
    climate_control BOOLEAN,
    handling_special_items BOOLEAN,
    last_inspection_date DATE,
    notes TEXT
);
INSERT INTO distribution_center VALUES (1,'EastCoastHub','100PortRd','', 'Boston','MA','USA','02108',42.360082,-71.058880,'2015-04-20','Active','AliceBrown','101',500000,12000,'Truck','NE','High',1,0,'2023-12-01','Primary East Coast node');
INSERT INTO distribution_center VALUES (2,'MidwestNode','250RailWay','BuildingB','Columbus','OH','USA','43215',39.961176,-82.998795,'2018-09-15','Active','BobGreen','202',300000,8000,'Rail','MW','Medium',1,1,'2024-02-12','Handles temperature‑sensitive cargo');
INSERT INTO distribution_center VALUES (3,'WestCoastDepot','500HarborSt','Dock5','SanFrancisco','CA','USA','94107',37.774929,-122.419416,'2020-01-10','Active','CarolWhite','303',400000,10000,'Ship','W','High',0,0,'2023-07-22','Near major port facilities');

-- Retail Outlets
CREATE TABLE retail_outlet (
    outlet_id INTEGER NOT NULL PRIMARY KEY,
    outlet_name TEXT,
    chain_name TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    country TEXT,
    zip_code TEXT,
    opening_date DATE,
    store_type TEXT,
    square_footage INTEGER,
    daily_customers_avg INTEGER,
    sales_volume_monthly DECIMAL(12,2),
    manager_name TEXT,
    contact_number TEXT,
    email TEXT,
    loyalty_program BOOLEAN,
    has_cafe BOOLEAN,
    has_play_area BOOLEAN,
    parking_spots INTEGER,
    nearest_metro_station TEXT,
    franchisee_name TEXT
);
INSERT INTO retail_outlet VALUES (1,'ComicWorld Downtown','ComicWorld','200MarketSt','', 'Seattle','WA','USA','98101','2016-03-01','Flagship',3500,450,125000.00,'DavidKim','2065551122','info@comicworld.com',1,1,0,120,'PikePlace','NW Retail Group');
INSERT INTO retail_outlet VALUES (2,'Heroes Hub Mall','HeroesHub','150MallRd','Suite10','Dallas','TX','USA','75201','2018-07-15','Mall',2800,300,95000.50,'EmilyClark','2145553344','contact@heroeshub.com',1,0,1,80,'DallasStation','Southwest Franchisees');
INSERT INTO retail_outlet VALUES (3,'Legends Corner','LegendsCo','75MainSt','', 'Portland','OR','USA','97204','2020-11-20','Standalone',2100,220,68000.75,'FrankNelson','5035557788','sales@legendsco.com',0,0,0,60,'PortlandCenter','Northwest Partners');

-- Fan Conventions
CREATE TABLE fan_convention (
    convention_id INTEGER NOT NULL PRIMARY KEY,
    convention_name TEXT,
    year INTEGER,
    start_date DATE,
    end_date DATE,
    host_city TEXT,
    host_state TEXT,
    host_country TEXT,
    venue_name TEXT,
    total_attendees INTEGER,
    ticket_price_standard DECIMAL(6,2),
    ticket_price_vip DECIMAL(6,2),
    number_of_panels INTEGER,
    number_of_exhibitors INTEGER,
    main_stage_name TEXT,
    mascot_name TEXT,
    official_hashtag TEXT,
    sponsor_main TEXT,
    sponsor_secondary TEXT,
    covid_policy TEXT,
    livestream_available BOOLEAN,
    merchandise_sales_total DECIMAL(12,2),
    charity_donation_amount DECIMAL(10,2)
);
INSERT INTO fan_convention VALUES (1,'SuperCon','2023','2023-08-10','2023-08-13','LosAngeles','CA','USA','LA Convention Center',25000,120.00,250.00,45,120,'MainStage','Turbo','#SuperCon2023','MegaCorp','TechGear','MaskRequired','1',480000.00,15000.00);
INSERT INTO fan_convention VALUES (2,'HeroFest','2024','2024-05-05','2024-05-08','Chicago','IL','USA','McCormick Place',18000,95.00,200.00,30,90,'Arena','Bolt','%HeroFest2024','StarMedia','GadgetPro','VaccinationProof','0',320000.00,8000.00);
INSERT INTO fan_convention VALUES (3,'ComicExpo','2025','2025-09-20','2025-09-23','Toronto','ON','Canada','Metro Toronto Convention Centre',22000,110.00,230.00,38,110,'ExpoHall','Pixel','%ComicExpo2025','NovaEnterprises','PrintWorks','MaskOptional','1',410000.00,12000.00);

-- Marketing Campaigns
CREATE TABLE marketing_campaign (
    campaign_id INTEGER NOT NULL PRIMARY KEY,
    campaign_name TEXT,
    start_date DATE,
    end_date DATE,
    budget_usd DECIMAL(12,2),
    target_audience_desc TEXT,
    primary_channel TEXT,
    secondary_channel TEXT,
    creative_agency TEXT,
    media_agency TEXT,
    impressions_goal INTEGER,
    clicks_goal INTEGER,
    conversions_goal INTEGER,
    cpc_target DECIMAL(5,2),
    cpm_target DECIMAL(5,2),
    roas_target DECIMAL(5,2),
    lead_quality_score INTEGER,
    a_b_test_variant TEXT,
    status TEXT,
    created_by TEXT,
    approved_by TEXT,
    notes TEXT
);
INSERT INTO marketing_campaign VALUES (1,'SummerSplash','2023-06-01','2023-08-31',750000.00,'YoungAdults18-34','SocialMedia','Influencer','BrightIdeas','MediaMax',5000000,250000,50000,1.50,10.00,4.00,85,'VariantA','Active','LauraM','TomS','Seasonal push for new titles');
INSERT INTO marketing_campaign VALUES (2,'FallFrenzy','2023-09-15','2023-11-30',620000.00,'Families','TV','Radio','CreativeWave','AdVentures',4000000,180000,40000,2.00,12.00,3.50,78,'VariantB','Paused','MarkJ','SaraL','Reduced spend due to market lag');
INSERT INTO marketing_campaign VALUES (3,'HolidayHeroes','2023-12-01','2024-01-15',900000.00,'AllAges','Email','DisplayAds','FestiveWorks','PromoEdge',6000000,300000,75000,1.20,9.00,5.00,92,'Control','Active','NinaK','EthanR','Focused on gift bundle sales');

-- Licensing Agreements
CREATE TABLE licensing_agreement (
    agreement_id INTEGER NOT NULL PRIMARY KEY,
    licensor_name TEXT,
    licensee_name TEXT,
    product_category TEXT,
    territory TEXT,
    start_date DATE,
    end_date DATE,
    royalty_rate_percent DECIMAL(5,2),
    advance_payment_usd DECIMAL(12,2),
    minimum_guarantee_usd DECIMAL(12,2),
    exclusive BOOLEAN,
    sublicensing_allowed BOOLEAN,
    audit_rights BOOLEAN,
    termination_clause TEXT,
    renewal_option_years INTEGER,
    governing_law TEXT,
    dispute_resolution TEXT,
    contact_licensor TEXT,
    contact_licensee TEXT,
    status TEXT,
    last_amended_date DATE,
    notes TEXT
);
INSERT INTO licensing_agreement VALUES (1,'Marvel Studios','ToyCo','ActionFigures','NorthAmerica','2022-01-01','2027-12-31',7.50,500000.00,250000.00,1,0,1,'30DaysNotice','2','USA','Arbitration','john.doe@marvel.com','jane.smith@toyco.com','Active','2023-05-20','Initial five‑year term');
INSERT INTO licensing_agreement VALUES (2,'DC Entertainment','AppDev','MobileGames','Europe','2021-06-15','2026-06-14',5.00,300000.00,150000.00,0,1,1,'60DaysNotice','1','UK','Mediation','alice.white@dcent.com','bob.black@appdev.com','Active','2023-11-02','Includes exclusive rights in EU');
INSERT INTO licensing_agreement VALUES (3,'Image Comics','ApparelLtd','Apparel','Asia','2023-03-01','2028-02-28',6.25,400000.00,200000.00,1,1,0,'90DaysNotice','3','Japan','Arbitration','charlie.green@image.com','diana.blue@apparel.com','Pending','2023-08-15','Negotiations on exclusivity');

-- Merchandise Items
CREATE TABLE merchandise_item (
    item_id INTEGER NOT NULL PRIMARY KEY,
    item_name TEXT,
    sku TEXT,
    category TEXT,
    subcategory TEXT,
    material TEXT,
    colour TEXT,
    size TEXT,
    weight_grams INTEGER,
    manufacturer TEXT,
    wholesale_price_usd DECIMAL(8,2),
    retail_price_usd DECIMAL(8,2),
    inventory_quantity INTEGER,
    reorder_point INTEGER,
    supplier_name TEXT,
    release_date DATE,
    discontinued BOOLEAN,
    rating_average DECIMAL(3,2),
    review_count INTEGER,
    barcode TEXT,
    upc TEXT,
    ean TEXT,
    packaging_type TEXT,
    shipping_weight_grams INTEGER
);
INSERT INTO merchandise_item VALUES (1,'HeroActionFigure','HF001','Figure','ActionFigure','Plastic','Red','Medium',350,'FunMakers',12.50,24.99,1500,200,'SupplyCo','2023-02-10',0,4.5,320,'123456789012','0123456789012','4001234567890','Box',400);
INSERT INTO merchandise_item VALUES (2,'VillainPoster','VP077','Poster','WallArt','Paper','Black','Large',200,'PrintHouse',3.00,9.99,5000,500,'PrintSupply','2022-10-05',0,4.2,210,'234567890123','1234567890123','5002345678901','Tube',250);
INSERT INTO merchandise_item VALUES (3,'MysteryTShirt','TS345','Apparel','TShirt','Cotton','Blue','L',180,'WearWorks',8.00,19.99,800,100,'TextileInc','2023-05-20',0,4.8,145,'345678901234','2345678901234','6003456789012','PolyBag',210);

-- Digital Platforms
CREATE TABLE digital_platform (
    platform_id INTEGER NOT NULL PRIMARY KEY,
    platform_name TEXT,
    url TEXT,
    launch_date DATE,
    owned_by TEXT,
    service_type TEXT,
    subscription_price_usd DECIMAL(5,2),
    ad_supported BOOLEAN,
    max_concurrent_streams INTEGER,
    content_rating TEXT,
    supported_devices TEXT,
    api_version TEXT,
    data_center_location TEXT,
    compliance_gdpr BOOLEAN,
    compliance_ccpa BOOLEAN,
    uptime_percentage DECIMAL(5,2),
    support_contact_email TEXT,
    support_contact_phone TEXT,
    terms_of_service_version TEXT,
    privacy_policy_version TEXT,
    last_update_timestamp DATE,
    notes TEXT
);
INSERT INTO digital_platform VALUES (1,'ComicStream','https://comicstream.com','2018-09-15','MediaGroup','Streaming',9.99,0,5,'PG-13','Web,Mobile,TV','v2.3','US-East',1,0,99.85,'support@comicstream.com','8005551212','v5.4','v3.2','2024-01-05','Latest UI overhaul');
INSERT INTO digital_platform VALUES (2,'HeroHub','https://herohub.net','2020-01-20','EntertainmentCo','Subscription',7.50,1,3,'PG','Web,Mobile','v1.9','EU-West',1,1,99.70,'help@herohub.net','8005553434','v2.1','v1.5','2023-12-18','Added live chat support');
INSERT INTO digital_platform VALUES (3,'ArcadeVault','https://arcadevault.io','2021-06-10','GameStudio','FreeWithAds',0.00,1,2,'E','Mobile','v3.0','Asia-Pacific',0,0,98.90,'contact@arcadevault.io','8005555656','v1.0','v0.8','2023-11-30','Beta testing new recommendation engine');

-- Story Arcs
CREATE TABLE story_arc (
    arc_id INTEGER NOT NULL PRIMARY KEY,
    arc_title TEXT,
    universe_name TEXT,
    start_issue_number INTEGER,
    end_issue_number INTEGER,
    start_pub_date DATE,
    end_pub_date DATE,
    writer_name TEXT,
    penciler_name TEXT,
    inker_name TEXT,
    colorist_name TEXT,
    editor_name TEXT,
    number_of_issues INTEGER,
    total_pages INTEGER,
    average_rating DECIMAL(3,2),
    bestseller_rank INTEGER,
    related_events TEXT,
    tie_in_series TEXT,
    collected_edition_isbn TEXT,
    collected_edition_price_usd DECIMAL(6,2),
    digital_release_date DATE,
    comments TEXT
);
INSERT INTO story_arc VALUES (1,'Origins of Legend','PrimeUniverse',1,6,'2019-03-01','2019-08-01','SamAuthor','LeeArtist','KimInker','PatColorist','DanaEditor',6,120,4.6,12,'EventOmega','SeriesBeta','9781234567897',29.99,'2019-09-15','Well‑received debut arc');
INSERT INTO story_arc VALUES (2,'Shadows Ascend','DarkRealm',7,12,'2020-01-15','2020-06-15','RitaWriter','LeoPencil','MiaInker','SamColor','AlexEditor',6,130,4.3,30,'EventSigma','SeriesGamma','9782345678901',34.99,'2020-07-20','Introduced new villain');
INSERT INTO story_arc VALUES (3,'Future Unbound','FutureVerse',13,18,'2021-04-10','2021-09-10','TomScribe','NinaPencil','EliInker','RosaColor','MiaEditor',6,125,4.8,5,'EventBeta','SeriesDelta','9783456789012',39.99,'2021-10-05','Critical acclaim, award nominated');

-- Comic Issues
CREATE TABLE comic_issue (
    issue_id INTEGER NOT NULL PRIMARY KEY,
    series_name TEXT,
    issue_number INTEGER,
    volume_number INTEGER,
    publication_date DATE,
    cover_artist TEXT,
    writer TEXT,
    penciler TEXT,
    inker TEXT,
    colorist TEXT,
    letterer TEXT,
    editor TEXT,
    page_count INTEGER,
    price_usd DECIMAL(5,2),
    sku TEXT,
    barcode TEXT,
    is_variant BOOLEAN,
    variant_description TEXT,
    print_run INTEGER,
    digital_available BOOLEAN,
    digital_release_date DATE,
    retail_store_count INTEGER,
    notes TEXT
);
INSERT INTO comic_issue VALUES (1,'Guardians of Light','1',1,'2019-03-01','EveArt','SamAuthor','LeeDraw','KimInk','PatColor','JoeLetter','DanaEdit',32,3.99,'GL001','123456789012',0,'','500000',1,'2019-03-15',850,'First issue debut');
INSERT INTO comic_issue VALUES (2,'Guardians of Light','2',1,'2019-04-05','EveArt','SamAuthor','LeeDraw','KimInk','PatColor','JoeLetter','DanaEdit',30,3.99,'GL002','234567890123',1,'VariantCoverA','300000',1,'2019-04-20',820,'Variant with alternate artwork');
INSERT INTO comic_issue VALUES (3,'Guardians of Light','3',1,'2019-05-03','EveArt','SamAuthor','LeeDraw','KimInk','PatColor','JoeLetter','DanaEdit',34,3.99,'GL003','345678901234',0,'','400000',1,'2019-05-18',800,'Mid‑arc climax');