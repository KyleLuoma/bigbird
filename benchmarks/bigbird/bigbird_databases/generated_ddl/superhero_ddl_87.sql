-- Hero fan event details
CREATE TABLE hero_fan_event
(
    event_id               INTEGER PRIMARY KEY,
    hero_id                INTEGER,
    event_name             TEXT,
    event_type             TEXT,
    start_date             TEXT,
    end_date               TEXT,
    location_id            INTEGER,
    venue_capacity         INTEGER,
    ticket_price           REAL,
    tickets_sold           INTEGER,
    sponsor_id             INTEGER,
    marketing_budget       REAL,
    attendance_estimate    INTEGER,
    live_stream            BOOLEAN,
    stream_platform        TEXT,
    stream_views           INTEGER,
    fan_engagement_score   REAL,
    merchandise_revenue    REAL,
    food_beverage_sales    REAL,
    security_incidents     INTEGER,
    covid_protocols        BOOLEAN,
    feedback_rating        REAL,
    notes                  TEXT
);

INSERT INTO hero_fan_event VALUES (1,1,'AnnualHeroCon','Convention','2024-06-10','2024-06-12',101,5000,75.0,4200,201,150000.0,4500,1,'StreamHub',120000,8.5,25000.0,5000.0,0,1,9.2,'First ever annual convention');
INSERT INTO hero_fan_event VALUES (2,3,'MidyearMeetup','Meetup','2024-09-15','2024-09-15',102,800,30.0,750,202,20000.0,700,0,'',0,7.2,5000.0,800.0,0,0,8.0,'Local fan meetup');
INSERT INTO hero_fan_event VALUES (3,5,'CharityBall','Fundraiser','2025-01-20','2025-01-20',103,1200,150.0,1100,203,500000.0,1100,0,'',0,9.0,100000.0,20000.0,1,1,9.8,'Annual charity ball');

-- Superhero cinematic universe statistics
CREATE TABLE superhero_cinematic_universe_stats
(
    film_id                 INTEGER PRIMARY KEY,
    title                   TEXT,
    release_date            TEXT,
    universe_phase          TEXT,
    budget_million          REAL,
    worldwide_gross_million REAL,
    domestic_gross_million  REAL,
    international_gross_million REAL,
    runtime_minutes         INTEGER,
    director_id             INTEGER,
    main_hero_id            INTEGER,
    villain_id              INTEGER,
    rating_imdb             REAL,
    rating_rotten           REAL,
    critic_score            REAL,
    audience_score          REAL,
    number_of_sequels       INTEGER,
    merchandise_sales_million REAL,
    streaming_rights_fee_million REAL,
    marketing_spend_million REAL,
    awards_won              INTEGER,
    notes                   TEXT
);

INSERT INTO superhero_cinematic_universe_stats VALUES (101,'HeroicRise','2023-05-04','Phase1',200.0,850.0,300.0,550.0,130,301,1,10,7.8,85.0,78.0,82.0,2,120.0,30.0,50.0,5,'Opening film of Phase 1');
INSERT INTO superhero_cinematic_universe_stats VALUES (102,'ShadowFall','2024-07-12','Phase1',180.0,720.0,260.0,460.0,125,302,2,11,7.5,80.0,72.0,79.0,1,100.0,25.0,45.0,3,'Second installment');
INSERT INTO superhero_cinematic_universe_stats VALUES (103,'LegacyWar','2025-11-20','Phase2',250.0,950.0,340.0,610.0,140,303,3,12,8.2,88.0,81.0,85.0,3,150.0,35.0,60.0,7,'Phase 2 debut');

-- Villain network analysis
CREATE TABLE villain_network_analysis
(
    analysis_id                 INTEGER PRIMARY KEY,
    network_name                TEXT,
    total_villains              INTEGER,
    average_power_level         REAL,
    strongest_villain_id        INTEGER,
    weakest_villain_id          INTEGER,
    centrality_score            REAL,
    clusters_detected           INTEGER,
    active_villains_count       INTEGER,
    inactive_villains_count     INTEGER,
    surveillance_hours          INTEGER,
    cyber_operations            BOOLEAN,
    espionage_score             REAL,
    infiltration_level          REAL,
    risk_rating                 REAL,
    response_team_id            INTEGER,
    last_updated                TEXT,
    data_source                 TEXT,
    confidence_percent          REAL,
    flagged_as_threat           BOOLEAN,
    mitigation_plan             TEXT,
    analyst_id                  INTEGER,
    region_focus                TEXT,
    time_to_resolve_days        INTEGER,
    budget_allocated            REAL,
    notes                       TEXT
);

INSERT INTO villain_network_analysis VALUES (1,'OmegaSyndicate',45,78.5,201,250,0.92,5,30,15,1200,1,85.0,70.0,92.0,401,'2024-08-01','IntelligenceAgency',96.5,1,'Deploy counter‑intelligence units',501,'NorthernTerritory',30,500000.0,'High priority network');
INSERT INTO villain_network_analysis VALUES (2,'CrimsonCabal',27,65.2,202,260,0.78,3,20,7,800,0,60.0,45.0,70.0,402,'2024-07-15','FieldOps',88.0,0,'Monitor activities',502,'SouthernRegion',45,300000.0,'Mid‑level threat');
INSERT INTO villain_network_analysis VALUES (3,'ObsidianRing',12,82.1,203,270,0.85,2,10,2,400,1,92.0,80.0,95.0,403,'2024-09-10','SpecialOps',98.0,1,'Immediate disruption',503,'EasternSector',10,750000.0,'Critical network');

-- Multiverse branch metadata
CREATE TABLE multiverse_branch_metadata
(
    branch_id                INTEGER PRIMARY KEY,
    branch_name              TEXT,
    creation_date            TEXT,
    creator_entity           TEXT,
    dimension_type           TEXT,
    stability_index          REAL,
    number_of_worlds        INTEGER,
    primary_universe_id     INTEGER,
    description              TEXT,
    active                   BOOLEAN,
    last_sync_date           TEXT,
    sync_status              TEXT,
    governance_body_id       INTEGER,
    funding_amount           REAL,
    research_focus           TEXT,
    tech_level               TEXT,
    population_estimate      REAL,
    interbranch_links        INTEGER,
    anomalies_detected       INTEGER,
    security_clearance_required BOOLEAN,
    notes                    TEXT
);

INSERT INTO multiverse_branch_metadata VALUES (1,'AlphaPrime','2020-01-15','QuantumCouncil','Parallel',0.97,12,1001,'Primary branch of the multiverse',1,'2024-07-20','Synchronized',1501,1200000.0,'EnergyManipulation','Advanced',5.6e9,4,2,1,'Core research branch');
INSERT INTO multiverse_branch_metadata VALUES (2,'BetaEcho','2021-06-30','ChronoCommittee','Temporal',0.88,8,1002,'Branch focused on time‑variant worlds',1,'2024-06-10','Pending',1502,850000.0,'ChronoEngineering','High',3.2e9,3,5,0,'Experimental time studies');
INSERT INTO multiverse_branch_metadata VALUES (3,'GammaVoid','2022-11-05','VoidConsortium','Singular',0.73,5,1003,'Isolated branch with limited interaction',0,'2024-05-01','OutOfSync',1503,400000.0,'VoidPhysics','Medium',1.1e9,1,8,1,'Restricted access due to instability');

-- Artifact loan history
CREATE TABLE artifact_loan_history
(
    loan_id                 INTEGER PRIMARY KEY,
    artifact_id             INTEGER,
    lender_institution      TEXT,
    borrower_institution    TEXT,
    loan_start_date         TEXT,
    loan_end_date           TEXT,
    insurance_value         REAL,
    transport_method        TEXT,
    condition_at_loan       TEXT,
    condition_at_return     TEXT,
    curator_id              INTEGER,
    loan_status             TEXT,
    renewal_allowed         BOOLEAN,
    renewal_count           INTEGER,
    storage_location_id     INTEGER,
    security_level          INTEGER,
    handling_instructions   TEXT,
    exhibition_name         TEXT,
    public_access           BOOLEAN,
    notes                   TEXT,
    audit_trail             TEXT
);

INSERT INTO artifact_loan_history VALUES (1001,501,'NationalMuseum','CityGallery','2023-03-01','2023-09-01',250000.0,'ClimateControlled','Excellent','Excellent',301,'Returned',1,1,401,5,'Handle with gloves','AncientArtifactsExpo',1,'No issues','LogEntry001');
INSERT INTO artifact_loan_history VALUES (1002,502,'HistoricalArchive','WorldExpo','2024-01-15','2024-07-15',500000.0,'AirFreight','Good','Good',302,'Extended',1,2,402,7,'Use vibration dampeners','WorldHeritageShowcase',0,'Minor scratches noted','LogEntry002');
INSERT INTO artifact_loan_history VALUES (1003,503,'GlobalInstitute','ScienceCenter','2022-05-10','2022-11-10',750000.0,'SecureContainer','Fair','Fair',303,'Lost',0,0,403,9,'Do not expose to UV','TechInnovationFair',0,'Lost during transport','LogEntry003');

-- Cosmic event financials
CREATE TABLE cosmic_event_financials
(
    event_id               INTEGER PRIMARY KEY,
    event_name             TEXT,
    observation_date       TEXT,
    observing_agency       TEXT,
    budget_allocated       REAL,
    actual_spent           REAL,
    funding_source         TEXT,
    grant_number           TEXT,
    roi_percent            REAL,
    economic_impact_estimate REAL,
    media_coverage_score   REAL,
    public_interest_score  REAL,
    ticket_sales           REAL,
    merchandise_sales      REAL,
    sponsorship_amount     REAL,
    tax_credit             REAL,
    carbon_offset_cost     REAL,
    scientific_publications INTEGER,
    patents_filed          INTEGER,
    followup_projects      INTEGER,
    notes                  TEXT
);

INSERT INTO cosmic_event_financials VALUES (2001,'SolarFlareWatch','2024-04-18','SpaceObservatory',1200000.0,1150000.0,'FederalGrant','GF-2023-07',5.3,850000.0,92.0,88.0,0.0,0.0,150000.0,30000.0,20000.0,12,4,2,'Successful observation of solar flare');
INSERT INTO cosmic_event_financials VALUES (2002,'LunarEclipseStudy','2023-11-05','LunarInstitute',800000.0,780000.0,'PrivateSponsor','PS-2022-11',4.1,620000.0,85.0,80.0,0.0,0.0,90000.0,25000.0,15000.0,8,2,1,'Data used for educational outreach');
INSERT INTO cosmic_event_financials VALUES (2003,'GammaRayBurstAlert','2025-02-22','AstroLab',2000000.0,1950000.0,'InternationalGrant','IG-2024-02',6.7,1300000.0,96.0,94.0,0.0,0.0,250000.0,50000.0,30000.0,20,7,3,'Triggered rapid response protocol');

-- Galactic trade route performance
CREATE TABLE galactic_trade_route_performance
(
    route_id               INTEGER PRIMARY KEY,
    route_name             TEXT,
    origin_star_system     TEXT,
    destination_star_system TEXT,
    distance_lightyears    REAL,
    average_travel_time_days INTEGER,
    cargo_volume_m3        REAL,
    cargo_value_million    REAL,
    safety_incidents       INTEGER,
    piracy_incidents       INTEGER,
    maintenance_cost       REAL,
    fuel_consumption_per_ly REAL,
    average_speed_ly_per_day REAL,
    yearly_revenue         REAL,
    yearly_operational_cost REAL,
    profit_margin_percent  REAL,
    trade_goods_primary    TEXT,
    trade_goods_secondary  TEXT,
    regulatory_compliance  BOOLEAN,
    last_audit_date        TEXT,
    notes                  TEXT
);

INSERT INTO galactic_trade_route_performance VALUES (301,'Sol-Alpha','Sol','AlphaCentauri',4.37,7,15000.0,45.0,0,0,120000.0,5.0,0.62,780000.0,340000.0,55.0,'Metals','Electronics',1,'2024-06-30','High traffic route');
INSERT INTO galactic_trade_route_performance VALUES (302,'Beta-Delta','BetaPrime','DeltaVega',12.5,15,8000.0,22.0,1,2,200000.0,7.5,0.83,420000.0,250000.0,47.6,'Foodstuffs','Pharmaceuticals',1,'2024-05-20','Occasional piracy');
INSERT INTO galactic_trade_route_performance VALUES (303,'Gamma-Zeta','GammaOrb','ZetaLumen',30.0,35,12000.0,38.0,0,1,350000.0,9.0,0.86,610000.0,400000.0,32.8,'RareGems','LuxuryGoods',0,'2024-04-10','Security upgrade needed');

-- Metahuman genome repository
CREATE TABLE metahuman_genome_repository
(
    genome_id               INTEGER PRIMARY KEY,
    metahuman_id           INTEGER,
    species_classification  TEXT,
    genome_sequence_hash    TEXT,
    sequencing_date         TEXT,
    lab_id                  INTEGER,
    sequencing_method       TEXT,
    coverage_depth          INTEGER,
    variants_count          INTEGER,
    pathogenic_variants     INTEGER,
    benign_variants         INTEGER,
    unknown_variants        INTEGER,
    data_access_level       INTEGER,
    embargo_until           TEXT,
    public_release          BOOLEAN,
    associated_power        TEXT,
    consent_obtained        BOOLEAN,
    researcher_id           INTEGER,
    notes                   TEXT,
    audit_timestamp         TEXT
);

INSERT INTO metahuman_genome_repository VALUES (4001,1,'HomoSapiens','HASHA1B2C3',2023-02-15,501,'NGS',30,1200,45,1100,55,3,'2024-12-31',0,'SuperStrength',1,701,'Genome stored securely','2024-07-01');
INSERT INTO metahuman_genome_repository VALUES (4002,2,'HomoSapiens','HASHD4E5F6',2023-08-22,502,'PacBio',45,980,30,920,30,2,'2025-06-30',0,'Flight',1,702,'Sequencing complete','2024-07-02');
INSERT INTO metahuman_genome_repository VALUES (4003,3,'HomoSapiens','HASHG7H8I9',2024-01-10,503,'Illumina',60,1500,60,1400,40,4,'2025-12-31',0,'Telepathy',1,703,'High coverage data','2024-07-03');

-- AI assistant interaction log
CREATE TABLE ai_assistant_interaction_log
(
    log_id                 INTEGER PRIMARY KEY,
    assistant_id           INTEGER,
    user_id                INTEGER,
    interaction_timestamp  TEXT,
    channel                TEXT,
    request_type           TEXT,
    request_content        TEXT,
    response_type          TEXT,
    response_content       TEXT,
    duration_seconds       INTEGER,
    confidence_score       REAL,
    escalation_flag        BOOLEAN,
    satisfaction_rating    INTEGER,
    followup_action        TEXT,
    related_hero_id        INTEGER,
    related_power_id       INTEGER,
    language_used          TEXT,
    sentiment_score        REAL,
    error_code             INTEGER,
    notes                  TEXT,
    version                TEXT
);

INSERT INTO ai_assistant_interaction_log VALUES (5001,1,1001,'2024-07-21 14:32:10','Web','InfoRequest','What is the height of HeroX?','Text','HeroX is 185 cm tall.',2,0.97,0,5,'No further action',1,10,'EN',0.85,0,'Handled correctly','v1.2');
INSERT INTO ai_assistant_interaction_log VALUES (5002,1,1002,'2024-07-22 09:15:45','Mobile','Action','Create a fan meetup schedule','Action','Meetup scheduled for 2024-09-15.',5,0.93,0,4,'Send reminder',3,0,'EN',0.78,0,'Scheduled via system','v1.2');
INSERT INTO ai_assistant_interaction_log VALUES (5003,2,1003,'2024-07-23 20:05:30','Chat','ErrorReport','Why did the last query fail?','Error','Timeout occurred.',3,0.0,1,2,'Investigate system logs',0,0,'EN',0.20,504,'Escalated to support','v2.0');

-- Fan community content
CREATE TABLE fan_community_content
(
    content_id           INTEGER PRIMARY KEY,
    community_id         INTEGER,
    creator_user_id      INTEGER,
    content_type         TEXT,
    title                TEXT,
    body_text            TEXT,
    creation_date        TEXT,
    likes                INTEGER,
    shares               INTEGER,
    comments_count       INTEGER,
    flagged              BOOLEAN,
    moderation_status    TEXT,
    tags                 TEXT,
    related_hero_id      INTEGER,
    related_event_id     INTEGER,
    visibility           TEXT,
    language             TEXT,
    rating               REAL,
    view_count           INTEGER,
    sponsor_id           INTEGER,
    notes                TEXT
);

INSERT INTO fan_community_content VALUES (6001,101,2001,'Article','Top 10 Hero Moments','An overview of the most iconic moments...',2024-07-01,150,30,12,0,'Approved','heroic,top10',1,0,'Public','EN',4.5,2000,0,'Featured on homepage');
INSERT INTO fan_community_content VALUES (6002,102,2002,'Video','Fan Art Speedpaint','Time‑lapse video of fan art creation.',2024-07-10,250,80,45,0,'Approved','art,fan',2,0,'Public','EN',4.8,3500,0,'Promoted in newsletter');
INSERT INTO fan_community_content VALUES (6003,103,2003,'Poll','Which Villain Is Most Dangerous?','Vote for your choice.',2024-07-15,300,150,60,0,'Pending','poll,villain',3,0,'MembersOnly','EN',0.0,4000,0,'Open until 2024-08-01');