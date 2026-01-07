-- Hero fitness center information
CREATE TABLE hero_fitness_center
(
    id                 INTEGER NOT NULL PRIMARY KEY,
    center_name        TEXT,
    address_line1      TEXT,
    address_line2      TEXT,
    city               TEXT,
    state_province     TEXT,
    postal_code        TEXT,
    country            TEXT,
    phone_number       TEXT,
    email_contact      TEXT,
    establishment_year INTEGER,
    total_area_sqft    INTEGER,
    max_capacity       INTEGER,
    membership_fee_usd INTEGER,
    opening_hours      TEXT,
    trainer_count      INTEGER,
    equipment_type     TEXT,
    certification_body TEXT,
    safety_rating      INTEGER,
    accessibility_score INTEGER,
    climate_control    TEXT,
    wifi_available     INTEGER,
    parking_spaces     INTEGER,
    nearby_public_transport TEXT,
    notes              TEXT
);

INSERT INTO hero_fitness_center VALUES (1,'Eagle Gym','123 Hero Way','Suite 5','Metropolis','NY','10001','USA','5551234567','contact@eaglegym.com',2005,15000,200,120,'06:00-22:00',12,'Cardio+Strength','NASM',5,9,'HVAC','1',150,'Metro Line 2','Open 24/7');
INSERT INTO hero_fitness_center VALUES (2,'Starlight Fitness','456 Nova Blvd','', 'Gotham','IL','60601','USA','5559876543','info@starlightfit.com',2010,20000,250,150,'05:30-23:00',15,'Mixed Martial Arts','ACE',4,8,'None','0',200,'Bus 42','Member lounge');
INSERT INTO hero_fitness_center VALUES (3,'Quantum Powerhouse','789 Quantum Rd','Floor 3','Central City','CA','90001','USA','5555555555','support@quantumph.com',2018,18000,220,130,'07:00-21:00',14,'Functional Training','ISSA',5,10,'Advanced','1',180,'Tram A','Eco-friendly');

-- Superhero film production details
CREATE TABLE superhero_film_production
(
    production_id            INTEGER NOT NULL PRIMARY KEY,
    film_title               TEXT,
    director_name            TEXT,
    production_company       TEXT,
    budget_usd               INTEGER,
    box_office_usd           INTEGER,
    release_year             INTEGER,
    filming_start_date       TEXT,
    filming_end_date         TEXT,
    primary_location         TEXT,
    secondary_location       TEXT,
    primary_language         TEXT,
    subtitles_available      INTEGER,
    rating_mpaa              TEXT,
    runtime_minutes          INTEGER,
    stunt_coordinator        TEXT,
    visual_effects_supervisor TEXT,
    sound_mix_engineer       TEXT,
    costume_designer         TEXT,
    makeup_head              TEXT,
    marketing_agency         TEXT,
    trailer_release_date     TEXT,
    imdb_score               REAL,
    rotten_tomatoes_percent  INTEGER,
    awards_won               INTEGER,
    notes                    TEXT
);

INSERT INTO superhero_film_production VALUES (1,'Sky Guardians','Jane Doe','Heroic Studios',150000000,480000000,2022,'2021-03-01','2021-09-15','Hollywood','Vancouver','English',1,'PG-13',135,'Mike Stunts','Laura VFX','Tom Sound','Anna Costumes','Sam Makeup','Bright Media','2022-01-10',7.8,92,5,'Hit sequel');
INSERT INTO superhero_film_production VALUES (2,'Nightfall', 'John Smith','Dark Knight Productions',90000000,250000000,2020,'2019-05-10','2019-11-20','London','Budapest','English',1,'R',120,'Rick Stunts','Emily VFX','Dave Audio','Nina Costumes','Liam Makeup','Creative Edge','2020-02-05',6.9,78,2,'Critically mixed');
INSERT INTO superhero_film_production VALUES (3,'The Eternal', 'Ava Lee','Infinity Pictures',200000000,620000000,2023,'2022-01-15','2022-08-30','New York','Toronto','English',1,'PG-13',150,'Sam Stunts','Olivia VFX','Chris Audio','Mia Costumes','Ethan Makeup','Visionary Corp','2023-03-01',8.2,95,8,'Award winning');

-- Villain incarceration record
CREATE TABLE villain_incarceration_record
(
    record_id               INTEGER NOT NULL PRIMARY KEY,
    villain_name            TEXT,
    alias                   TEXT,
    crime_description       TEXT,
    conviction_year         INTEGER,
    sentence_years          INTEGER,
    incarceration_facility  TEXT,
    cell_number             TEXT,
    security_level          TEXT,
    parole_eligibility      INTEGER,
    last_visited_date       TEXT,
    visiting_guardian_name  TEXT,
    therapist_assigned      TEXT,
    rehabilitation_program  TEXT,
    parole_board_decision   TEXT,
    notes                   TEXT,
    intake_officer          TEXT,
    release_date_estimated  TEXT,
    current_status          TEXT,
    infractions_count       INTEGER,
    special_measures        TEXT,
    financial_fine_usd      INTEGER,
    media_restriction_level TEXT,
    escape_attempts         INTEGER,
    classification_code     TEXT,
    health_status           TEXT
);

INSERT INTO villain_incarceration_record VALUES (1,'Dr Doom','Victor','World domination attempt',2015,30,'Arkham Penitentiary','A-12','Level 5',0,'2023-06-15','Officer Gray','Dr Blake','Cognitive Reformation','Denied','High threat', 'Officer Lane','2045-12-31','Incarcerated',2,'Isolation','500000','High','1','VD-01','Stable');
INSERT INTO villain_incarceration_record VALUES (2,'Shadow Siren','Lara','Massive data breach',2018,20,'Gotham Secure Facility','B-07','Level 4',1,'2023-01-10','Officer Green','Dr Patel','Digital Detox','Approved','Cooperative', 'Officer Brooks','2038-07-20','Incarcerated',0,'Standard','250000','Medium','0','SS-04','Good');
INSERT INTO villain_incarceration_record VALUES (3,'Blaze','Marcus','Arson of federal building',2020,15,'Metropolis Detention','C-22','Level 3',1,'2022-12-05','Officer Black','Dr Singh','Fire Safety Rehab','Pending','Under review', 'Officer Hayes','2035-05-15','Incarcerated',1,'Fireproof cell','300000','Low','0','BZ-07','Fair');

-- Multiverse event archive
CREATE TABLE multiverse_event_archive
(
    event_id                INTEGER NOT NULL PRIMARY KEY,
    event_name              TEXT,
    event_type              TEXT,
    start_date              TEXT,
    end_date                TEXT,
    primary_universe        TEXT,
    secondary_universe      TEXT,
    involved_heroes_count   INTEGER,
    involved_villains_count INTEGER,
    catalyzing_artifact     TEXT,
    outcome_summary         TEXT,
    timeline_branch         TEXT,
    paradox_level           INTEGER,
    cosmic_energy_spent_joules INTEGER,
    emergency_measures      TEXT,
    interdimensional_rift_stability INTEGER,
    temporal_shift_hours    INTEGER,
    official_report_link    TEXT,
    notes                   TEXT,
    recorded_by             TEXT,
    verification_status     TEXT,
    public_release_date     TEXT,
    classified_level        TEXT,
    impact_rating           INTEGER,
    coordinator_name        TEXT,
    contingency_plan        TEXT,
    post_event_analysis     TEXT
);

INSERT INTO multiverse_event_archive VALUES (1,'Convergence Crisis','Temporal','2022-04-01','2022-04-03','Earth-Prime','Earth-2',5,3,'Chrono Crystal','Universe merged temporarily and restored','Branch-A',4,2500000000,'Force field activation',9,2,'/reports/conv_crisis.pdf','Severe but contained','Archivist Z','Verified','2022-04-10','Top Secret',8,'Dr Nova','Seal rift','Recommendations for monitoring');
INSERT INTO multiverse_event_archive VALUES (2,'Solar Flare Cataclysm','Cosmic','2021-09-15','2021-09-16','Sol-1','Sol-Delta',2,1,'Solar Core Fragment','Solar energy overload across dimensions','Branch-B',2,1800000000,'Energy dampeners deployed',7,0,'/reports/solar_flare.pdf','Minimal casualties','Archivist Y','Verified','2021-09-20','Confidential',5,'Dr Helios','Deploy shields','Study long term effects');
INSERT INTO multiverse_event_archive VALUES (3,'Dimensional Rift Surge','Spatial','2023-01-10','2023-01-12','Nexus-7','Nexus-9',8,4,'Rift Core','Multiple rifts opened, closed after coordinated effort','Branch-C',5,3200000000,'Rift sealants used',8,5,'/reports/rift_surge.pdf','High disruption','Archivist X','Pending','2023-01-20','Restricted',9,'Dr Quark','Containment protocols','Improve rift detection');

-- Fan artwork gallery
CREATE TABLE fan_artwork_gallery
(
    artwork_id          INTEGER NOT NULL PRIMARY KEY,
    title               TEXT,
    creator_name        TEXT,
    medium              TEXT,
    dimensions_cm       TEXT,
    creation_date       TEXT,
    related_hero_id     INTEGER,
    related_villain_id  INTEGER,
    fan_convention_id  INTEGER,
    permission_granted  INTEGER,
    rating_score        INTEGER,
    download_count      INTEGER,
    display_location    TEXT,
    color_palette       TEXT,
    style_category      TEXT,
    tags                TEXT,
    description         TEXT,
    copyright_status    TEXT,
    version_number      INTEGER,
    last_modified_date  TEXT,
    featured            INTEGER,
    curator_notes       TEXT,
    exhibition_start    TEXT,
    exhibition_end      TEXT,
    url_high_res        TEXT,
    url_thumbnail       TEXT,
    notes               TEXT,
    internal_reference  TEXT,
    approval_status     TEXT
);

INSERT INTO fan_artwork_gallery VALUES (1,'Midnight Vigil','Alex Rivera','Digital Paint','50x70','2022-06-15',101,NULL,5,1,9,340,'Main Hall','Cool Blues','Realistic','hero,night,city','A dark night scene with the hero on a rooftop', 'Licensed','1','2023-01-01',1,'Excellent composition','2023-03-01','2023-06-01','/art/high/001.png','/art/thumb/001.png','No issues','REF-001','Approved');
INSERT INTO fan_artwork_gallery VALUES (2,'Chaos Unleashed','Mia Chen','Traditional Ink','60x80','2021-11-02',NULL,202,3,1,8,210,'Side Gallery','Red-Black','Expressionist','villain,explosion','Intense villain portrait in ink', 'Licensed','2','2022-09-10',0,'Strong contrast','2022-10-01','2022-12-31','/art/high/002.png','/art/thumb/002.png','Consider framing','REF-002','Approved');
INSERT INTO fan_artwork_gallery VALUES (3,'City Skyline','Liam O\'Connor','Watercolor','70x50','2023-02-20',103,NULL,2,0,7,120,'Online','Warm','Impressionist','hero,cityscape','Hero overlooking the city at sunrise', 'Pending','1','2023-04-05',1,'Vibrant colors','2023-04-15','2023-08-15','/art/high/003.png','/art/thumb/003.png','Awaiting permission','REF-003','Pending');

-- Hero legal case log
CREATE TABLE hero_legal_case_log
(
    case_id                INTEGER NOT NULL PRIMARY KEY,
    hero_id                INTEGER,
    case_number            TEXT,
    filing_date            TEXT,
    jurisdiction           TEXT,
    case_type              TEXT,
    plaintiff_name         TEXT,
    defendant_name         TEXT,
    allegations_summary    TEXT,
    attorney_hero          TEXT,
    attorney_opponent      TEXT,
    hearing_date           TEXT,
    verdict_date           TEXT,
    verdict                TEXT,
    damages_awarded_usd    INTEGER,
    settlement_amount_usd  INTEGER,
    appeal_filed           INTEGER,
    appeal_outcome         TEXT,
    public_statement       TEXT,
    media_coverage_level   INTEGER,
    confidentiality_flag   INTEGER,
    case_status            TEXT,
    notes                  TEXT,
    assigned_judge         TEXT,
    docket_link            TEXT,
    case_closure_date      TEXT,
    post_verdict_actions   TEXT,
    oversight_commission   TEXT,
    final_remarks          TEXT,
    archive_location       TEXT
);

INSERT INTO hero_legal_case_log VALUES (1,101,'HC-2021-045','2021-03-12','Metropolis District Court','Negligence','City Council','Captain Valor','Alleged property damage during rescue','Laura Bright','Mark Sloan','2021-06-15','2021-08-01','In Favor of Hero',50000,0,0,'','Hero acted responsibly','3',0,'Closed','All parties satisfied','Judge Reed','/dockets/HC-2021-045.pdf','2021-08-05','Community service','Commission A','No further action','Archive/2021');
INSERT INTO hero_legal_case_log VALUES (2,102,'HC-2022-112','2022-01-20','Gotham Superior Court','Defamation','Daily Gazette','Shadow Siren','Published false claims about villain activities','Eve Stone','Tom Blake','2022-04-10','2022-06-30','Dismissed',0,0,0,'','Statement retracted','2',0,'Closed','Case dismissed','Judge Collins','/dockets/HC-2022-112.pdf','2022-07-05','Public apology','Commission B','No further action','Archive/2022');
INSERT INTO hero_legal_case_log VALUES (3,103,'HC-2023-078','2023-05-05','Central City Court','Trademark','Star Media','Lightning Flash','Unauthorized use of logo','Sam Patel','Nina Gomez','2023-08-01','2023-09-20','Settled',0,150000,1,'Approved','Settlement reached, royalties adjusted','4',1,'Open','Negotiations ongoing','Judge Patel','/dockets/HC-2023-078.pdf','', 'Royalties monitoring','Commission C','Pending finalization','Archive/2023');

-- Cosmic artifact research
CREATE TABLE cosmic_artifact_research
(
    artifact_id          INTEGER NOT NULL PRIMARY KEY,
    artifact_name        TEXT,
    discovery_date       TEXT,
    discovery_location   TEXT,
    origin_universe      TEXT,
    material_composition TEXT,
    estimated_age_years  INTEGER,
    energy_output_kw     INTEGER,
    containment_level    TEXT,
    researcher_lead      TEXT,
    funding_agency       TEXT,
    grant_amount_usd     INTEGER,
    experiment_phase     TEXT,
    safety_protocols     TEXT,
    observed_effects     TEXT,
    hazard_rating        INTEGER,
    decommission_status  TEXT,
    last_analysis_date   TEXT,
    analysis_report_link TEXT,
    notes                TEXT,
    storage_temperature_c INTEGER,
    storage_pressure_atm REAL,
    electromagnetic_shield TEXT,
    radiation_level_msv INTEGER,
    quantum_stability_index INTEGER,
    preservation_method  TEXT,
    public_accessibility TEXT,
    curator_contact      TEXT,
    archival_reference   TEXT,
    status_update        TEXT
);

INSERT INTO cosmic_artifact_research VALUES (1,'Celestial Core','2020-11-03','Alpine Observatory','Nebula-7','Exotic Plasma','5000',2000000,'Level 5','Dr Aurora','Space Science Fund',1200000,'Phase II','Cryogenic containment','Gravitational distortion','9','Active','2023-02-15','/reports/celestial_core.pdf','Requires constant monitoring',-150,0.98,'Superconducting','300','85','Vacuum sealed','Restricted','Dr Vega','AR-001','Stable');
INSERT INTO cosmic_artifact_research VALUES (2,'Chrono Shard','2021-06-21','Desert Ruins','Chronos-3','Temporal Crystal','2000',800000,'Level 4','Prof. Tempus','Chronology Institute',800000,'Phase I','Temporal field cage','Time dilation','7','Inactive','2022-12-01','/reports/chrono_shard.pdf','Potential for time experiments',-80,1.05,'Magnetic','150','45','Field dampeners','Limited','Dr Temporal','AR-002','Dormant');
INSERT INTO cosmic_artifact_research VALUES (3,'Void Stone','2022-03-14','Oceanic Trench','Void-9','Dark Matter','7500',1500000,'Level 5','Dr Noctis','Deep Space Exploration',1500000,'Phase III','Gravitational lock','Anomalous gravity','10','Active','2023-07-10','/reports/void_stone.pdf','High risk, study only', -200,0.85,'Quantum mesh','500','120','Multi-layered','Classified','Dr Umbra','AR-003','Under observation');

-- Metahuman training facility
CREATE TABLE metahuman_training_facility
(
    facility_id                INTEGER NOT NULL PRIMARY KEY,
    facility_name              TEXT,
    location_city              TEXT,
    location_state             TEXT,
    total_capacity             INTEGER,
    operational_since_year     INTEGER,
    director_name              TEXT,
    accredited_by              TEXT,
    training_programs_offered  TEXT,
    specialty_focus            TEXT,
    average_success_rate       INTEGER,
    safety_incident_count     INTEGER,
    advanced_equipment_list    TEXT,
    simulation_center_count    INTEGER,
    biometric_monitoring       TEXT,
    emergency_response_plan   TEXT,
    partnership_organizations  TEXT,
    funding_source             TEXT,
    annual_budget_usd          INTEGER,
    staff_count                INTEGER,
    psychologist_on_site       INTEGER,
    nutritionist_on_site       INTEGER,
    physical_therapist_on_site INTEGER,
    security_clearance_level   TEXT,
    renewable_energy_used_pct  INTEGER,
    certification_status       TEXT,
    last_audit_date            TEXT,
    audit_report_link          TEXT,
    notes                      TEXT,
    contact_email              TEXT,
    phone_number               TEXT,
    website_url                TEXT
);

INSERT INTO metahuman_training_facility VALUES (1,'Arcane Academy','Gotham','NY',250,2010,'Dr Selene Moon','Global Metahuman Council','Combat, Telekinesis, Energy Control','Psychic','92',2,'Psi Amplifiers, Energy Field Generators',3,'Real-time vitals','Standardized protocol','Hero Alliance, University of Metahumans','Government Grant',8000000,45,1,1,1,'Top Secret',75,'Certified','2023-03-20','/audits/arcane_academy_2023.pdf','State-of-the-art facility','info@arcaneacademy.org','5557778888','http://arcaneacademy.org');
INSERT INTO metahuman_training_facility VALUES (2,'Velocity Institute','Central City','CA',180,2015,'Prof. Swift','National Fitness Board','Speed, Agility, Reflex Enhancement','Physical','88',1,'Hypertrack lanes, Reaction Pods',2,'Motion capture','Rapid response', 'Sports Federation, Tech Labs','Private Investment',5000000,30,1,0,1,'Confidential',60,'Certified','2022-11-10','/audits/velocity_institute_2022.pdf','Focus on speed training','contact@velocityinst.com','5553334444','http://velocityinst.com');
INSERT INTO metahuman_training_facility VALUES (3,'Elemental Forge','Star City','TX',300,2008,'Master Ember','Elemental Guild','Fire Manipulation, Earth Shaping, Water Control','Elemental','90',3,'Elemental Chambers, Climate Control',4,'Elemental signatures','Specialized response','Environmental Agency, Magic Council','Mixed Funding',9500000,55,1,1,1,'Top Secret',80,'Certified','2023-06-05','/audits/elemental_forge_2023.pdf','Integrates magical and scientific methods','admin@elementalforge.net','5551112222','http://elementalforge.net');

-- Superhero merchandise line
CREATE TABLE superhero_merchandise_line
(
    merch_id                INTEGER NOT NULL PRIMARY KEY,
    product_name            TEXT,
    product_category        TEXT,
    hero_id                 INTEGER,
    launch_date             TEXT,
    discontinuation_date    TEXT,
    unit_price_usd          INTEGER,
    wholesale_price_usd     INTEGER,
    inventory_quantity      INTEGER,
    supplier_name           TEXT,
    supplier_country        TEXT,
    material_composition    TEXT,
    safety_certifications   TEXT,
    target_age_group        TEXT,
    color_options           TEXT,
    size_chart              TEXT,
    packaging_type          TEXT,
    barcode                 TEXT,
    sku                     TEXT,
    marketing_campaign_id   INTEGER,
    sales_region            TEXT,
    online_sales_channel    TEXT,
    brick_and_mortar_presence INTEGER,
    average_rating          REAL,
    total_units_sold        INTEGER,
    revenue_usd             INTEGER,
    return_rate_percent     INTEGER,
    warranty_years          INTEGER,
    eco_friendly           INTEGER,
    limited_edition         INTEGER,
    notes                   TEXT,
    created_by              TEXT,
    last_updated            TEXT
);

INSERT INTO superhero_merchandise_line VALUES (1,'Valor Action Figure','Collectible',101,'2021-05-01','',35,20,5000,'Toy Makers Inc','USA','Plastic','ASTM F963','All Ages','Red/Blue','M/L/XL','Box','0123456789012','VAL-001',12,'North America','Eshop','1',4.6,25000,875000,2,2,1,0,'Limited release Q2 2021','Alice','2023-01-15');
INSERT INTO superhero_merchandise_line VALUES (2,'Shadow Cape','Apparel',102,'2020-09-15','2023-12-31',25,15,3000,'Fashion Fabrics Ltd','China','Polyester','OEKO-TEX','Teens+','Black','S/M/L','Polybag','0987654321098','SHD-005',8,'Europe','OnlineStore','1',4.2,18000,450000,3,1,0,0,'Seasonal edition','Bob','2022-11-20');
INSERT INTO superhero_merchandise_line VALUES (3,'Lightning Flash LED Helmet','Gadget',103,'2022-03-10','',80,50,1200,'GadgetWorks','Germany','Aluminum/Plastic','CE','Adults','Yellow/White','One Size','Hardcase','1234567890123','LGT-020',15,'Asia-Pacific','RegionalRetail','1',4.8,9000,720000,1,3,0,1,'Glow-in-the-dark feature','Clara','2023-06-01');

-- Interstellar alliance
CREATE TABLE interstellar_alliance
(
    alliance_id               INTEGER NOT NULL PRIMARY KEY,
    alliance_name             TEXT,
    founding_date             TEXT,
    member_planetary_system   TEXT,
    total_members             INTEGER,
    governing_body            TEXT,
    council_chairperson       TEXT,
    treaty_version            TEXT,
    defense_budget_usd        INTEGER,
    scientific_collab_budget_usd INTEGER,
    trade_agreement_status   TEXT,
    common_language           TEXT,
    shared_technology_standards TEXT,
    diplomatic_incident_count INTEGER,
    peacekeeping_force_size   INTEGER,
    flagship_station_name     TEXT,
    interstellar_communication_network TEXT,
    resource_sharing_policy   TEXT,
    environmental_stewardship_program TEXT,
    cultural_exchange_program TEXT,
    joint_research_facilities INTEGER,
    astromech_support_units   INTEGER,
    intergalactic_legal_framework TEXT,
    emergency_response_protocol TEXT,
    annual_congress_meeting_date TEXT,
    headquarters_location    TEXT,
    primary_contact_email    TEXT,
    primary_contact_phone    TEXT,
    public_relations_office  TEXT,
    secretariat_head         TEXT,
    notes                    TEXT,
    last_amended_date        TEXT,
    amendment_document_link  TEXT
);

INSERT INTO interstellar_alliance VALUES (1,'Galactic Unity Front','2120-07-12','Solar, Alpha Centauri, Proxima',27,'Grand Council','High Chancellor Zor','v3.2',5000000000,2000000000,'Active','Galactic Standard','Hyperdrive Protocol X','0','15000','Nova Prime','HyperNet','Equitable Allocation','Stellar Conservation Initiative','Cosmic Arts Exchange',5,12,'Treaty of Cohesion','Universal Alert System','2130-05-01','Orion Prime','contact@galacticunity.org','+1234567890','Interstellar PR Division','Lady Lyra','Alliance shaping interstellar diplomacy','2135-01-10','/docs/guf_amendment_v3.pdf');
INSERT INTO interstellar_alliance VALUES (2,'Stellar Trade Confederation','2150-03-18','Vega, Sirius, Betelgeuse',15,'Trade Council','Lord Mercator','v1.0',3000000000,1500000000,'Negotiating','Trade Tongue','Quantum Commerce Standard','2','8000','Trade Hub Omega','QuantumComm','Resource Pooling','Planetary Repair Program','Cultural Fusion Festivals',3,8,'Treaty of Free Trade','Rapid Trade Disruption Response','2155-09-15','Vega Station','trade@stc.org','+1987654321','STC Public Affairs','Sir Tradewell','Focused on interstellar commerce','2156-04-20','/docs/stc_v1_amend.pdf');
INSERT INTO interstellar_alliance VALUES (3,'Alliance of Peaceful Worlds','2180-11-05','Andromeda, Magellanic, Triangulum',22,'Peace Council','Ambassador Serene','v2.5',4000000000,2500000000,'Active','Universal Peace Language','Harmony Tech Stack','0','12000','Peace Beacon','HarmonyNet','Shared Defense','Galactic Habitat Restoration','Universal Music Exchange',4,10,'Peace Pact','Universal Peacekeeping Protocol','2190-02-20','Andromeda Core','peace@apw.org','+1122334455','APW Outreach','Madam Harmony','Promotes peaceful coexistence','2191-07-30','/docs/apw_v2_amend.pdf');