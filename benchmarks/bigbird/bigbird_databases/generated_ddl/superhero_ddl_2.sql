-- Media reviews for comic issues
CREATE TABLE media_review (
    review_id INTEGER PRIMARY KEY,
    issue_id INTEGER,
    reviewer_name TEXT,
    publication TEXT,
    review_date TEXT,
    rating_score INTEGER,
    review_headline TEXT,
    review_body TEXT,
    pros TEXT,
    cons TEXT,
    recommendation TEXT,
    reading_difficulty TEXT,
    art_quality TEXT,
    story_quality TEXT,
    character_development TEXT,
    plot_complexity TEXT,
    buzz_score INTEGER,
    social_shares INTEGER,
    view_count INTEGER,
    editor_notes TEXT
);

INSERT INTO media_review (review_id,issue_id,reviewer_name,publication,review_date,rating_score,review_headline,review_body,pros,cons,recommendation,reading_difficulty,art_quality,story_quality,character_development,plot_complexity,buzz_score,social_shares,view_count,editor_notes) VALUES
(1,101,John Doe,ComicTimes,2023-01-15,8,StrongStart,The issue sets a solid tone,DynamicArt,SlowPacing,HighlyRecommended,Moderate,Excellent,VeryGood,Good,Complex,85,1200,3400,CheckSpelling),
(2,102,Jane Smith,PanelWeekly,2023-02-10,7,GoodButFlawed,Story has some holes,ClearLines,WeakDialog,Recommended,Easy,VeryGood,Good,Average,Moderate,70,900,2800,VerifyDates),
(3,103,Alex Lee,GraphicPulse,2023-03-05,9,Masterpiece,An outstanding issue,StunningColors,NoCons,MustRead,Challenging,Exceptional,Outstanding,Excellent,Intricate,95,1500,4100,ProofRead);

-- International translation details for comic issues
CREATE TABLE international_translation (
    translation_id INTEGER PRIMARY KEY,
    issue_id INTEGER,
    language_code TEXT,
    translator_name TEXT,
    translation_start_date TEXT,
    translation_end_date TEXT,
    pages_translated INTEGER,
    word_count INTEGER,
    quality_score INTEGER,
    publishing_region TEXT,
    rights_holder TEXT,
    edition_number TEXT,
    format TEXT,
    isbn TEXT,
    price_local TEXT,
    distribution_channel TEXT,
    digital_available TEXT,
    notes TEXT,
    approval_status TEXT,
    revision_number INTEGER
);

INSERT INTO international_translation (translation_id,issue_id,language_code,translator_name,translation_start_date,translation_end_date,pages_translated,word_count,quality_score,publishing_region,rights_holder,edition_number,format,isbn,price_local,distribution_channel,digital_available,notes,approval_status,revision_number) VALUES
(1,101,FR,Marie Dupont,2023-04-01,2023-04-20,22,5600,88,Europe,GlobalPub,First,Print,9781234567890,6EUR,Retail,Yes,Checked,Approved,1),
(2,102,ES,Carlos Ruiz,2023-05-05,2023-05-25,22,5600,84,SouthAmerica,LatinPub,Second,Print,9780987654321,7USD,Retail,Yes,MinorEdits,Approved,2),
(3,103,DE,Thomas Keller,2023-06-10,2023-06-30,22,5600,90,Europe,EuroPub,First,Digital,9781122334455,5EUR,Online,Yes,FinalCheck,Pending,0);

-- Collector's edition specifications for comic issues
CREATE TABLE collectors_edition (
    edition_id INTEGER PRIMARY KEY,
    issue_id INTEGER,
    edition_name TEXT,
    release_date TEXT,
    print_run INTEGER,
    paper_type TEXT,
    binding_type TEXT,
    cover_art TEXT,
    ink_type TEXT,
    price_usd INTEGER,
    price_local TEXT,
    certificate_of_authenticity TEXT,
    numbered INTEGER,
    signed_by TEXT,
    special_features TEXT,
    shipping_weight_g INTEGER,
    dimensions_mm TEXT,
    promo_code TEXT,
    availability_status TEXT,
    notes TEXT
);

INSERT INTO collectors_edition (edition_id,issue_id,edition_name,release_date,print_run,paper_type,binding_type,cover_art,ink_type,price_usd,price_local,certificate_of_authenticity,numbered,signed_by,special_features,shipping_weight_g,dimensions_mm,promo_code,availability_status,notes) VALUES
(1,101,DeluxeEdition,2023-07-01,5000,Glossy,Hardcover,ArtistX,UV,150,130USD,Yes,1,CreatorY,Slipcase,200,210x300,CE2023,Available,LimitedRun),
(2,102,GoldEdition,2023-08-15,3000,Matte,SaddleStitch,ArtistZ,Metallic,200,180USD,Yes,0,CreatorW,FoilStamp,250,220x310,GOLD23,OutOfStock,SpecialPromo),
(3,103,PlatinumEdition,2023-09-20,1000,Premium,Hardcover,ArtistV,Embossed,300,250USD,Yes,1,CreatorU,SignedPoster,300,230x320,PLAT23,Preorder,UltraRare);

-- Cameo appearances of characters in other media
CREATE TABLE character_cameo_appearance (
    cameo_id INTEGER PRIMARY KEY,
    character_name TEXT,
    source_media TEXT,
    target_media TEXT,
    episode_number TEXT,
    season_number INTEGER,
    air_date TEXT,
    duration_seconds INTEGER,
    role_description TEXT,
    director_name TEXT,
    producer_name TEXT,
    budget_usd INTEGER,
    audience_rating INTEGER,
    notes TEXT,
    cameo_type TEXT,
    filming_location TEXT,
    special_effects TEXT,
    credit_given TEXT,
    release_year INTEGER,
    archive_link TEXT
);

INSERT INTO character_cameo_appearance (cameo_id,character_name,source_media,target_media,episode_number,season_number,air_date,duration_seconds,role_description,director_name,producer_name,budget_usd,audience_rating,notes,cameo_type,filming_location,special_effects,credit_given,release_year,archive_link) VALUES
(1,SpiderMan,ComicSeries,AnimatedSeries,5,2,2022-11-10,45,BriefAppearance,Anna Lee,Mark Kent,500000,85,NoDialogue,Animated,StudioA,CGI,Yes,2022,link1),
(2,WonderWoman,ComicSeries,LiveActionFilm,0,0,2021-06-15,120,HeroineSupport,John Smith,Laura Green,2000000,90,KeyScene,LiveAction,StudioB,Practical,Yes,2021,link2),
(3,Flash,ComicSeries,TVSeries,12,3,2023-03-20,30,QuickCameo,Tom Brown,Emily Davis,300000,78,EndingEasterEgg,LiveAction,StudioC,Stunt,Yes,2023,link3);

-- Spinoff series derived from original comic lines
CREATE TABLE spinoff_series (
    spinoff_id INTEGER PRIMARY KEY,
    parent_series TEXT,
    spinoff_title TEXT,
    start_year INTEGER,
    end_year INTEGER,
    total_issues INTEGER,
    publisher_id INTEGER,
    genre TEXT,
    target_audience TEXT,
    format TEXT,
    average_rating INTEGER,
    sales_usd INTEGER,
    editor_in_chief TEXT,
    artist_lead TEXT,
    writer_lead TEXT,
    award_nominations INTEGER,
    award_wins INTEGER,
    digital_release INTEGER,
    collectible_edition INTEGER,
    notes TEXT
);

INSERT INTO spinoff_series (spinoff_id,parent_series,spinoff_title,start_year,end_year,total_issues,publisher_id,genre,target_audience,format,average_rating,sales_usd,editor_in_chief,artist_lead,writer_lead,award_nominations,award_wins,digital_release,collectible_edition,notes) VALUES
(1,MainSaga,ShadowChronicles,2020,2022,12,3,Adventure,Teens,Print,8,1200000,Sara Knox,Leo Grant,Mia Patel,3,1,1,0,WellReceived),
(2,MainSaga,FutureEchoes,2023,0,6,4,SciFi,Adults,Digital,9,800000,Tom Reed,Anna Wu,Nick Hall,2,2,1,1,Upcoming),
(3,SideStory,MythicTales,2018,2019,8,5,Fantasy,AllAges,Print,7,500000,Laura Kim,Sam Lee,Rachel Fox,1,0,0,0,LimitedRun);

-- Contracts between publishers and creators
CREATE TABLE publisher_contract (
    contract_id INTEGER PRIMARY KEY,
    publisher_id INTEGER,
    creator_id INTEGER,
    contract_start_date TEXT,
    contract_end_date TEXT,
    royalty_percent INTEGER,
    advance_payment_usd INTEGER,
    territory TEXT,
    media_rights TEXT,
    language_rights TEXT,
    digital_rights TEXT,
    print_rights TEXT,
    reversion_clause TEXT,
    audit_rights TEXT,
    termination_notice_days INTEGER,
    confidentiality_clause TEXT,
    exclusivity INTEGER,
    payment_schedule TEXT,
    governing_law TEXT,
    remarks TEXT
);

INSERT INTO publisher_contract (contract_id,publisher_id,creator_id,contract_start_date,contract_end_date,royalty_percent,advance_payment_usd,territory,media_rights,language_rights,digital_rights,print_rights,reversion_clause,audit_rights,termination_notice_days,confidentiality_clause,exclusivity,payment_schedule,governing_law,remarks) VALUES
(1,3,101,2022-01-01,2025-12-31,12,50000,Worldwide,All,All,Yes,Yes,After5Years,Annual,60,Standard,1,Quarterly,US,FirstDeal),
(2,4,102,2021-06-15,2024-06-14,10,30000,NorthAmerica,PrintOnly,English,No,Yes,After3Years,Quarterly,30,Strict,0,Monthly,CA,RenewalPending),
(3,5,103,2023-03-01,2026-02-28,15,75000,Europe,All,Multiple,Yes,Yes,After4Years,SemiAnnual,45,Limited,1,Annual,EU,SpecialEditionClause);

-- Digital sales channels for comic content
CREATE TABLE digital_sales_channel (
    channel_id INTEGER PRIMARY KEY,
    platform_name TEXT,
    region TEXT,
    launch_date TEXT,
    currency TEXT,
    average_price_usd INTEGER,
    transaction_fee_percent INTEGER,
    daily_active_users INTEGER,
    monthly_revenue_usd INTEGER,
    peak_concurrent_streams INTEGER,
    content_type TEXT,
    support_contact TEXT,
    api_version TEXT,
    security_certified INTEGER,
    refund_policy TEXT,
    promo_codes_supported INTEGER,
    ads_supported INTEGER,
    data_retention_days INTEGER,
    service_level_agreement TEXT,
    notes TEXT
);

INSERT INTO digital_sales_channel (channel_id,platform_name,region,launch_date,currency,average_price_usd,transaction_fee_percent,daily_active_users,monthly_revenue_usd,peak_concurrent_streams,content_type,support_contact,api_version,security_certified,refund_policy,promo_codes_supported,ads_supported,data_retention_days,service_level_agreement,notes) VALUES
(1,ComicStream,Global,2020-05-01,USD,5,15,200000,1200000,5000,Digital,help@comicstream.com,v1,1,30Days,1,1,365,99.9%,BetaVersion),
(2,ReadNow,Europe,2021-09-15,EUR,4,12,150000,900000,4000,Digital,support@readnow.eu,v2,1,14Days,1,0,180,99.5%,SeasonalPromo),
(3,FastComic,Asia,2022-03-20,JPY,600,10,250000,1500000,6000,Digital,contact@fastcomic.jp,v3,1,30Days,0,1,730,99.8%,NewUI);

-- Themed events and conventions related to comics
CREATE TABLE themed_event (
    event_id INTEGER PRIMARY KEY,
    event_name TEXT,
    theme TEXT,
    start_date TEXT,
    end_date TEXT,
    location TEXT,
    city TEXT,
    country TEXT,
    expected_attendance INTEGER,
    sponsor_main TEXT,
    sponsor_secondary TEXT,
    ticket_price_usd INTEGER,
    vip_package INTEGER,
    guest_list TEXT,
    schedule_url TEXT,
    media_partner TEXT,
    live_stream INTEGER,
    merchandise_offered INTEGER,
    charity_partner TEXT,
    post_event_report TEXT
);

INSERT INTO themed_event (event_id,event_name,theme,start_date,end_date,location,city,country,expected_attendance,sponsor_main,sponsor_secondary,ticket_price_usd,vip_package,guest_list,schedule_url,media_partner,live_stream,merchandise_offered,charity_partner,post_event_report) VALUES
(1,HeroFest,SuperHeroes,2023-10-05,2023-10-07,ConventionCenter,Metropolis,USA,15000,BigPublisher,ToyCo,75,1,HeroTeamA,http://hero.fest/schedule,MediaNet,1,1,CharityAid,Report2023),
(2,MetaCon,Multiverse,2024-04-12,2024-04-14,ExhibitHall,Gotham,USA,20000,ComicGroup,GameStudio,60,0,GuestB,https://metacon.org/sched,NewsWire,0,1,HelpHands,Report2024),
(3,InkExpo,ArtAndStory,2025-07-20,2025-07-22,ArtHall,StarCity,Canada,12000,ArtSupply,PublishHouse,50,0,ArtistX,https://inkexpo.ca/schedule,CreativeTV,1,0,ArtistsAid,Report2025);

-- Archival preservation records for comic-related items
CREATE TABLE archival_preservation (
    archive_id INTEGER PRIMARY KEY,
    item_type TEXT,
    item_id INTEGER,
    storage_location TEXT,
    temperature_celsius INTEGER,
    humidity_percent INTEGER,
    light_exposure_lux INTEGER,
    pest_control INTEGER,
    catalog_number TEXT,
    accessibility_level TEXT,
    last_inspection_date TEXT,
    condition_notes TEXT,
    preservation_method TEXT,
    digital_backup INTEGER,
    backup_location TEXT,
    insurance_value_usd INTEGER,
    responsible_curator TEXT,
    handling_instructions TEXT,
    restoration_status TEXT,
    deaccession_date TEXT
);

INSERT INTO archival_preservation (archive_id,item_type,item_id,storage_location,temperature_celsius,humidity_percent,light_exposure_lux,pest_control,catalog_number,accessibility_level,last_inspection_date,condition_notes,preservation_method,digital_backup,backup_location,insurance_value_usd,responsible_curator,handling_instructions,restoration_status,deaccession_date) VALUES
(1,OriginalArtwork,2001,VaultA,18,45,10,1,ARC001,Restricted,2023-01-10,Excellent,ColdStorage,1,Server01,250000,CuratorA,GlovesOnly,Completed,NULL),
(2,PrintedIssue,3005,ArchiveRoomB,20,50,20,0,ARC102,Public,2022-11-22,Good,StandardShelving,0,NULL,75000,CuratorB,HandleGently,InProgress,NULL),
(3,DigitalFile,4003,DatacenterC,22,40,0,0,ARC210,Restricted,2023-06-05,Pristine,CloudBackup,1,CloudZone1,120000,CuratorC,NoPhysicalHandling,Completed,NULL);

-- Merchandise distribution logs for shipped items
CREATE TABLE merchandise_distribution_log (
    log_id INTEGER PRIMARY KEY,
    merch_item_id INTEGER,
    shipment_date TEXT,
    origin_warehouse TEXT,
    destination_store TEXT,
    carrier_name TEXT,
    tracking_number TEXT,
    quantity_shipped INTEGER,
    quantity_received INTEGER,
    damage_report TEXT,
    shipping_cost_usd INTEGER,
    delivery_time_days INTEGER,
    receiver_signature TEXT,
    inspection_passed INTEGER,
    reorder_trigger INTEGER,
    batch_number TEXT,
    region TEXT,
    temperature_control INTEGER,
    customs_clearance TEXT,
    notes TEXT
);

INSERT INTO merchandise_distribution_log (log_id,merch_item_id,shipment_date,origin_warehouse,destination_store,carrier_name,tracking_number,quantity_shipped,quantity_received,damage_report,shipping_cost_usd,delivery_time_days,receiver_signature,inspection_passed,reorder_trigger,batch_number,region,temperature_control,customs_clearance,notes) VALUES
(1,501,2023-08-01,WHNorth,StoreA,FastShip,TRK123456,100,98,MinorScratches,250,3,JohnDoe,1,0,BATCH01,NorthAmerica,0,Cleared,OnTime),
(2,502,2023-09-15,WHSouth,StoreB,QuickLogistics,TRK654321,200,200,None,400,2,JaneSmith,1,0,BATCH02,SouthAmerica,1,Pending,DelayedCustoms),
(3,503,2023-10-20,WHEast,StoreC,GlobalFreight,TRK987654,150,150,None,350,4,AlexBrown,1,1,BATCH03,Europe,0,Cleared,ReorderPlanned);