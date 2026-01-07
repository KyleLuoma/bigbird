-- Galactic Trade Agreement
CREATE TABLE galactic_trade_agreement
(
    id                         INTEGER PRIMARY KEY,
    agreement_name             TEXT,
    signing_date               TEXT,
    expiration_date            TEXT,
    governing_body             TEXT,
    trade_route_id             INTEGER,
    involved_faction_a         TEXT,
    involved_faction_b         TEXT,
    commodity                  TEXT,
    volume_mt                  INTEGER,
    tariff_percent             INTEGER,
    dispute_resolution_mechanism TEXT,
    confidentiality_clause     TEXT,
    amendment_count            INTEGER,
    status                     TEXT,
    created_by                 TEXT,
    created_at                 TEXT,
    updated_at                 TEXT,
    notes                      TEXT,
    legal_reference            TEXT
);

INSERT INTO galactic_trade_agreement (id,agreement_name,signing_date,expiration_date,governing_body,trade_route_id,involved_faction_a,involved_faction_b,commodity,volume_mt,tariff_percent,dispute_resolution_mechanism,confidentiality_clause,amendment_count,status,created_by,created_at,updated_at,notes,legal_reference)
VALUES (1,'TradeAlpha','2024-01-15','2030-01-15','InterstellarCouncil',101,'TerranAlliance','XenonCoalition','Dilithium',50000,5,'Arbitration','High','0','Active','AdminUser','2024-01-10','2024-01-12','First agreement','REF001');

INSERT INTO galactic_trade_agreement (id,agreement_name,signing_date,expiration_date,governing_body,trade_route_id,involved_faction_a,involved_faction_b,commodity,volume_mt,tariff_percent,dispute_resolution_mechanism,confidentiality_clause,amendment_count,status,created_by,created_at,updated_at,notes,legal_reference)
VALUES (2,'TradeBeta','2025-06-01','2035-06-01','GalacticFederation',202,'NovaEmpire','ZetaUnion','QuantumCore',75000,3,'Mediation','Medium','1','Pending','TradeOfficer','2025-05-20','2025-05-22','Awaiting ratification','REF002');

INSERT INTO galactic_trade_agreement (id,agreement_name,signing_date,expiration_date,governing_body,trade_route_id,involved_faction_a,involved_faction_b,commodity,volume_mt,tariff_percent,dispute_resolution_mechanism,confidentiality_clause,amendment_count,status,created_by,created_at,updated_at,notes,legal_reference)
VALUES (3,'TradeGamma','2023-09-10','2028-09-10','UniversalTradeOrg',303,'OrionSyndicate','HeliosConsortium','Starlight','25000',7,'Tribunal','Low','2','Expired','SystemBot','2023-08-30','2028-09-01','Terminated due to breach','REF003');

-- Metahuman Genealogy
CREATE TABLE metahuman_genealogy
(
    id                     INTEGER PRIMARY KEY,
    metahuman_id          INTEGER,
    lineage_name          TEXT,
    origin_world          TEXT,
    generation            INTEGER,
    ancestor_id           INTEGER,
    descendant_id         INTEGER,
    mutation_type         TEXT,
    power_inheritance     TEXT,
    bloodline_rank        INTEGER,
    clan_affiliation      TEXT,
    historical_period     TEXT,
    notable_ancestor      TEXT,
    related_lineage       TEXT,
    source_document       TEXT,
    verified              BOOLEAN,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    reference_url         TEXT
);

INSERT INTO metahuman_genealogy (id,metahuman_id,lineage_name,origin_world,generation,ancestor_id,descendant_id,mutation_type,power_inheritance,bloodline_rank,clan_affiliation,historical_period,notable_ancestor,related_lineage,source_document,verified,notes,created_at,updated_at,reference_url)
VALUES (1,1001,'AlphaLine','XenonPrime',3,900,1100,'Gamma','Direct',1,'StellarClan','EraOfFlux','ProtoAlpha','BetaLine','CodexA',1,'Verified lineage','2024-02-01','2024-02-10','http://example.com/alpha');

INSERT INTO metahuman_genealogy (id,metahuman_id,lineage_name,origin_world,generation,ancestor_id,descendant_id,mutation_type,power_inheritance,bloodline_rank,clan_affiliation,historical_period,notable_ancestor,related_lineage,source_document,verified,notes,created_at,updated_at,reference_url)
VALUES (2,1002,'BetaLine','OmegaV','2',800,1200,'Delta','Mosaic',2,'LunarClan','AgeOfShadows','ElderBeta','GammaLine','CodexB',0,'Pending verification','2024-03-05','2024-03-07','http://example.com/beta');

INSERT INTO metahuman_genealogy (id,metahuman_id,lineage_name,origin_world,generation,ancestor_id,descendant_id,mutation_type,power_inheritance,bloodline_rank,clan_affiliation,historical_period,notable_ancestor,related_lineage,source_document,verified,notes,created_at,updated_at,reference_url)
VALUES (3,1003,'GammaLine','NovaTerra','4',1100,1300,'Epsilon','Hybrid',3,'SolarClan','EraOfRenewal','AncestorGamma','AlphaLine','CodexC',1,'Confirmed by council','2024-04-15','2024-04-18','http://example.com/gamma');

-- Cosmic Event Observation
CREATE TABLE cosmic_event_observation
(
    id                      INTEGER PRIMARY KEY,
    event_name              TEXT,
    observation_date        TEXT,
    observatory_id          INTEGER,
    instrument_name         TEXT,
    wavelength_nm           INTEGER,
    signal_strength         FLOAT,
    duration_seconds        INTEGER,
    coordinates_ra          TEXT,
    coordinates_dec         TEXT,
    event_type              TEXT,
    classification          TEXT,
    notes                   TEXT,
    data_file_path          TEXT,
    analyst_name            TEXT,
    verification_status    TEXT,
    published               BOOLEAN,
    publication_id          INTEGER,
    related_event_id        INTEGER,
    archival_location       TEXT
);

INSERT INTO cosmic_event_observation (id,event_name,observation_date,observatory_id,instrument_name,wavelength_nm,signal_strength,duration_seconds,coordinates_ra,coordinates_dec,event_type,classification,notes,data_file_path,analyst_name,verification_status,published,publication_id,related_event_id,archival_location)
VALUES (1,'SupernovaX','2024-01-20',10,'SpectroMax',550,0.87,3600,'12h34m56s','-45d23m10s','StellarExplosion','TypeIa','Bright and fast','/data/supernovaX.fits','DrNova','Validated',1,5001,NULL,'ArchiveA');

INSERT INTO cosmic_event_observation (id,event_name,observation_date,observatory_id,instrument_name,wavelength_nm,signal_strength,duration_seconds,coordinates_ra,coordinates_dec,event_type,classification,notes,data_file_path,analyst_name,verification_status,published,publication_id,related_event_id,archival_location)
VALUES (2,'FastRadioBurst7','2024-02-11',12,'RadioArray',1400,1.32,0.8,'03h21m09s','+22d11m45s','RadioBurst','Repeater','Repeated twice','/data/frb7.dat','DrPulse','Pending',0,NULL,1,'ArchiveB');

INSERT INTO cosmic_event_observation (id,event_name,observation_date,observatory_id,instrument_name,wavelength_nm,signal_strength,duration_seconds,coordinates_ra,coordinates_dec,event_type,classification,notes,data_file_path,analyst_name,verification_status,published,publication_id,related_event_id,archival_location)
VALUES (3,'GammaRayBurstZ','2024-03-05',15,'GammaScope',2000,2.05,45,'18h45m33s','-12d33m22s','GammaBurst','Long','High energy','/data/grbZ.fits','DrGamma','Validated',1,5003,2,'ArchiveC');

-- Alien Language Dictionary
CREATE TABLE alien_language_dictionary
(
    id                  INTEGER PRIMARY KEY,
    language_name       TEXT,
    term                TEXT,
    translation         TEXT,
    part_of_speech     TEXT,
    usage_example       TEXT,
    semantic_category   TEXT,
    phonetic_spelling   TEXT,
    alphabetic_order   INTEGER,
    frequency_rank      INTEGER,
    source_document     TEXT,
    added_by            TEXT,
    added_date          TEXT,
    reviewed            BOOLEAN,
    review_notes        TEXT,
    related_term_id     INTEGER,
    dialect_variant     TEXT,
    cultural_context    TEXT,
    confidence_score    FLOAT,
    status              TEXT
);

INSERT INTO alien_language_dictionary (id,language_name,term,translation,part_of_speech,usage_example,semantic_category,phonetic_spelling,alphabetic_order,frequency_rank,source_document,added_by,added_date,reviewed,review_notes,related_term_id,dialect_variant,cultural_context,confidence_score,status)
VALUES (1,'Zorgon','blax','peace','noun','blax veka','Concept','bla:k','5','12','Glyphs1','Lexicographer','2024-01-05',1,'Reviewed','2','Northern','Ceremonial',0.95,'Approved');

INSERT INTO alien_language_dictionary (id,language_name,term,translation,part_of_speech,usage_example,semantic_category,phonetic_spelling,alphabetic_order,frequency_rank,source_document,added_by,added_date,reviewed,review_notes,related_term_id,dialect_variant,cultural_context,confidence_score,status)
VALUES (2,'Zorgon','krun','war','noun','krun tal','Concept','kru:n','8','30','Glyphs2','Lexicographer','2024-01-12',0,'Pending review',NULL,'Southern','Martial',0.60,'Draft');

INSERT INTO alien_language_dictionary (id,language_name,term,translation,part_of_speech,usage_example,semantic_category,phonetic_spelling,alphabetic_order,frequency_rank,source_document,added_by,added_date,reviewed,review_notes,related_term_id,dialect_variant,cultural_context,confidence_score,status)
VALUES (3,'Zorgon','selt','star','noun','selt glark','Astronomy','selt','2','3','Glyphs3','Lexicographer','2024-02-01',1,'Reviewed','1','Central','Mythic',0.98,'Approved');

-- Renewable Energy Project
CREATE TABLE renewable_energy_project
(
    id                     INTEGER PRIMARY KEY,
    project_name           TEXT,
    start_date             TEXT,
    end_date               TEXT,
    energy_type            TEXT,
    capacity_mw            INTEGER,
    location_city          TEXT,
    location_country       TEXT,
    developer_company      TEXT,
    financing_amount_usd   INTEGER,
    expected_output_gwh    INTEGER,
    environmental_impact   TEXT,
    permits_obtained       BOOLEAN,
    status                 TEXT,
    project_manager        TEXT,
    contact_email          TEXT,
    latitude               FLOAT,
    longitude              FLOAT,
    grid_connection_point  TEXT,
    maintenance_contract_id INTEGER
);

INSERT INTO renewable_energy_project (id,project_name,start_date,end_date,energy_type,capacity_mw,location_city,location_country,developer_company,financing_amount_usd,expected_output_gwh,environmental_impact,permits_obtained,status,project_manager,contact_email,latitude,longitude,grid_connection_point,maintenance_contract_id)
VALUES (1,'SolarisPrime','2023-05-01','2028-05-01','Solar',250,'Solaris','Xenon','SolarisCorp',50000000,1200,'Low','1','Operational','AliceM','alice@solariscorp.com',34.05,-118.25,'NodeA',301);

INSERT INTO renewable_energy_project (id,project_name,start_date,end_date,energy_type,capacity_mw,location_city,location_country,developer_company,financing_amount_usd,expected_output_gwh,environmental_impact,permits_obtained,status,project_manager,contact_email,latitude,longitude,grid_connection_point,maintenance_contract_id)
VALUES (2,'WindHarbor','2024-01-15','2029-01-15','Wind',180,'Harbor','Orion','WindTech',35000000,800,'Moderate','0','Planning','BobK','bob@windtech.io',45.76,4.84,'NodeB',302);

INSERT INTO renewable_energy_project (id,project_name,start_date,end_date,energy_type,capacity_mw,location_city,location_country,developer_company,financing_amount_usd,expected_output_gwh,environmental_impact,permits_obtained,status,project_manager,contact_email,latitude,longitude,grid_connection_point,maintenance_contract_id)
VALUES (3,'TidalWave','2025-03-10','2030-03-10','Tidal',90,'WaveCity','Nebula','AquaPower',25000000,450,'Low','1','Construction','CatherineL','catherine@aquapower.net',60.12,-150.34,'NodeC',303);

-- Quantum Computing Task
CREATE TABLE quantum_computing_task
(
    id                     INTEGER PRIMARY KEY,
    task_name              TEXT,
    qubit_count            INTEGER,
    algorithm_name         TEXT,
    input_dataset_id       INTEGER,
    output_dataset_id      INTEGER,
    submission_date        TEXT,
    start_time             TEXT,
    end_time               TEXT,
    runtime_seconds        INTEGER,
    error_rate             FLOAT,
    hardware_node          TEXT,
    priority_level         INTEGER,
    status                 TEXT,
    assigned_researcher    TEXT,
    compute_cost_usd       INTEGER,
    notes                  TEXT,
    result_checksum        TEXT,
    verification_status    TEXT,
    related_publication_id INTEGER
);

INSERT INTO quantum_computing_task (id,task_name,qubit_count,algorithm_name,input_dataset_id,output_dataset_id,submission_date,start_time,end_time,runtime_seconds,error_rate,hardware_node,priority_level,status,assigned_researcher,compute_cost_usd,notes,result_checksum,verification_status,related_publication_id)
VALUES (1,'FactorLargeNumber','128','Shor','2001','3001','2024-02-20','08:00','12:30',16200,0.001,'QCNodeA',1,'Completed','DrQuantum','15000','Successful factorization','abc123def','Verified',4001);

INSERT INTO quantum_computing_task (id,task_name,qubit_count,algorithm_name,input_dataset_id,output_dataset_id,submission_date,start_time,end_time,runtime_seconds,error_rate,hardware_node,priority_level,status,assigned_researcher,compute_cost_usd,notes,result_checksum,verification_status,related_publication_id)
VALUES (2,'SimulateMolecule','64','VQE','2002','3002','2024-03-05','14:15','15:45',5400,0.005,'QCNodeB',2,'Running','DrChem','8000','Simulation ongoing','def456ghi','Pending',4002);

INSERT INTO quantum_computing_task (id,task_name,qubit_count,algorithm_name,input_dataset_id,output_dataset_id,submission_date,start_time,end_time,runtime_seconds,error_rate,hardware_node,priority_level,status,assigned_researcher,compute_cost_usd,notes,result_checksum,verification_status,related_publication_id)
VALUES (3,'OptimizeLogistics','32','QAOA','2003','3003','2024-04-01','09:00','11:20',8400,0.002,'QCNodeC',3,'Queued','DrOps','5000','Waiting for resources','ghi789jkl','Pending',NULL);

-- Hero Training Evaluation
CREATE TABLE hero_training_evaluation
(
    id                     INTEGER PRIMARY KEY,
    hero_id                INTEGER,
    training_program_id    INTEGER,
    evaluator_id           INTEGER,
    evaluation_date        TEXT,
    physical_score         INTEGER,
    mental_score           INTEGER,
    tactical_score         INTEGER,
    teamwork_score         INTEGER,
    overall_rating         FLOAT,
    strengths              TEXT,
    weaknesses             TEXT,
    recommended_next_steps TEXT,
    certification_awarded  TEXT,
    certification_level    INTEGER,
    training_location      TEXT,
    hours_spent            INTEGER,
    notes                  TEXT,
    follow_up_date         TEXT,
    approved_by            TEXT,
    final_status           TEXT
);

INSERT INTO hero_training_evaluation (id,hero_id,training_program_id,evaluator_id,evaluation_date,physical_score,mental_score,tactical_score,teamwork_score,overall_rating,strengths,weaknesses,recommended_next_steps,certification_awarded,certification_level,training_location,hours_spent,notes,follow_up_date,approved_by,final_status)
VALUES (1,101,501,301,'2024-01-10',85,90,88,92,0.89,'StrengthInFlight','Impatience','FocusOnTeamwork','HeroicPilot','2','SkyBase',40,'Excellent progress','2024-02-01','ChiefTrainer','Approved');

INSERT INTO hero_training_evaluation (id,hero_id,training_program_id,evaluator_id,evaluation_date,physical_score,mental_score,tactical_score,teamwork_score,overall_rating,strengths,weaknesses,recommended_next_steps,certification_awarded,certification_level,training_location,hours_spent,notes,follow_up_date,approved_by,final_status)
VALUES (2,102,502,302,'2024-01-15',78,82,80,85,0.81,'StrategicThinking','Low stamina','EnduranceTraining','Strategist','1','GroundFacility',35,'Needs more cardio','2024-02-10','SeniorMentor','Pending');

INSERT INTO hero_training_evaluation (id,hero_id,training_program_id,evaluator_id,evaluation_date,physical_score,mental_score,tactical_score,teamwork_score,overall_rating,strengths,weaknesses,recommended_next_steps,certification_awarded,certification_level,training_location,hours_spent,notes,follow_up_date,approved_by,final_status)
VALUES (3,103,503,303,'2024-01-20',92,95,94,90,0.93,'PeakPhysical','Overconfidence','RiskManagement','EliteGuard','3','MountainRange',45,'Outstanding performance','2024-02-15','Director','Approved');

-- Fan Community Poll
CREATE TABLE fan_community_poll
(
    id                     INTEGER PRIMARY KEY,
    poll_title             TEXT,
    launch_date            TEXT,
    close_date             TEXT,
    target_audience        TEXT,
    total_responses        INTEGER,
    question_1             TEXT,
    option1_q1             TEXT,
    option2_q1             TEXT,
    option3_q1             TEXT,
    question_2             TEXT,
    option1_q2             TEXT,
    option2_q2             TEXT,
    option3_q2             TEXT,
    result_summary         TEXT,
    conducted_by           TEXT,
    methodology            TEXT,
    notes                  TEXT,
    data_file_path         TEXT,
    status                 TEXT,
    archive_location       TEXT
);

INSERT INTO fan_community_poll (id,poll_title,launch_date,close_date,target_audience,total_responses,question_1,option1_q1,option2_q1,option3_q1,question_2,option1_q2,option2_q2,option3_q2,result_summary,conducted_by,methodology,notes,data_file_path,status,archive_location)
VALUES (1,'PreferredHeroPower','2024-01-01','2024-01-14','GlobalFans',1250,'Which power do you like most?','Flight','Invisibility','Telekinesis','Which villain is most compelling?','DrChaos','LordShade','MistressVeil','Flight leads','CommunityTeam','OnlineSurvey','No anomalies','/polls/power_results.csv','Closed','Archive1');

INSERT INTO fan_community_poll (id,poll_title,launch_date,close_date,target_audience,total_responses,question_1,option1_q1,option2_q1,option3_q1,question_2,option1_q2,option2_q2,option3_q2,result_summary,conducted_by,methodology,notes,data_file_path,status,archive_location)
VALUES (2,'StoryArcSatisfaction','2024-02-01','2024-02-15','ComicReaders',980,'Rate the latest arc.','Excellent','Good','Average','Preferred medium?','Comic','Digital','Audiobook','Good overall','SurveyTeam','MixedMethods','High engagement','/polls/arc_satisfaction.csv','Closed','Archive2');

INSERT INTO fan_community_poll (id,poll_title,launch_date,close_date,target_audience,total_responses,question_1,option1_q1,option2_q1,option3_q1,question_2,option1_q2,option2_q2,option3_q2,result_summary,conducted_by,methodology,notes,data_file_path,status,archive_location)
VALUES (3,'MerchandisePreferences','2024-03-01','2024-03-10','Collectors',750,'Favorite merchandise type?','Figurine','Apparel','Poster','Preferred price range?','Low','Mid','High','Apparel most popular','MarketingDept','OnlineForm','Positive feedback','/polls/merch_pref.csv','Closed','Archive3');

-- Artifact Exhibition Schedule
CREATE TABLE artifact_exhibition_schedule
(
    id                      INTEGER PRIMARY KEY,
    exhibition_name         TEXT,
    venue_id                INTEGER,
    start_date              TEXT,
    end_date                TEXT,
    artifact_id             INTEGER,
    curator_name            TEXT,
    display_room            TEXT,
    security_level          INTEGER,
    insurance_value_usd     INTEGER,
    lighting_scheme         TEXT,
    climate_control         TEXT,
    visitor_capacity        INTEGER,
    ticket_price_usd        INTEGER,
    sponsor_name            TEXT,
    promotional_materials   TEXT,
    opening_ceremony_date   TEXT,
    closing_ceremony_date   TEXT,
    post_exhibit_storage    TEXT,
    remarks                 TEXT
);

INSERT INTO artifact_exhibition_schedule (id,exhibition_name,venue_id,start_date,end_date,artifact_id,curator_name,display_room,security_level,insurance_value_usd,lighting_scheme,climate_control,visitor_capacity,ticket_price_usd,sponsor_name,promotional_materials,opening_ceremony_date,closing_ceremony_date,post_exhibit_storage,remarks)
VALUES (1,'Ancient Relics','101','2024-04-01','2024-06-30','5001','DrCuratorA','HallA',5,2000000,'Spotlight','Controlled','5000','25','GalaxyBank','PosterBrochure','2024-04-01','2024-06-30','VaultX','Highly acclaimed');

INSERT INTO artifact_exhibition_schedule (id,exhibition_name,venue_id,start_date,end_date,artifact_id,curator_name,display_room,security_level,insurance_value_usd,lighting_scheme,climate_control,visitor_capacity,ticket_price_usd,sponsor_name,promotional_materials,opening_ceremony_date,closing_ceremony_date,post_exhibit_storage,remarks)
VALUES (2,'Cosmic Artifacts','102','2024-07-15','2024-09-15','5002','DrCuratorB','HallB',4,3500000,'Ambient','Controlled','3000','30','StarTech','DigitalScreen','2024-07-15','2024-09-15','VaultY','Record attendance');

INSERT INTO artifact_exhibition_schedule (id,exhibition_name,venue_id,start_date,end_date,artifact_id,curator_name,display_room,security_level,insurance_value_usd,lighting_scheme,climate_control,visitor_capacity,ticket_price_usd,sponsor_name,promotional_materials,opening_ceremony_date,closing_ceremony_date,post_exhibit_storage,remarks)
VALUES (3,'Mythic Beasts','103','2024-10-05','2024-12-20','5003','DrCuratorC','HallC',5,5000000,'Dynamic','Controlled','4000','35','MythicCorp','Flyer','2024-10-05','2024-12-20','VaultZ','Special guest appearances');

-- Hero Legacy Rights
CREATE TABLE hero_legacy_rights
(
    id                     INTEGER PRIMARY KEY,
    hero_id                INTEGER,
    estate_name            TEXT,
    legal_guardian_id      INTEGER,
    rights_type            TEXT,
    commencement_date      TEXT,
    expiration_date        TEXT,
    royalty_percentage     INTEGER,
    licensing_agreement_id INTEGER,
    exclusive              BOOLEAN,
    territories_covered    TEXT,
    amendment_count        INTEGER,
    last_review_date       TEXT,
    notes                  TEXT,
    created_by             TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    status                 TEXT,
    contact_email          TEXT,
    external_reference     TEXT
);

INSERT INTO hero_legacy_rights (id,hero_id,estate_name,legal_guardian_id,rights_type,commencement_date,expiration_date,royalty_percentage,licensing_agreement_id,exclusive,territories_covered,amendment_count,last_review_date,notes,created_by,created_at,updated_at,status,contact_email,external_reference)
VALUES (1,101,'AlphaEstate',201,'Media','2024-01-01','2044-01-01',12,401,1,'Global',0,'2024-02-01','Initial setup','AdminUser','2024-01-05','2024-01-10','Active','admin@alphaestate.com','REF_LEG001');

INSERT INTO hero_legacy_rights (id,hero_id,estate_name,legal_guardian_id,rights_type,commencement_date,expiration_date,royalty_percentage,licensing_agreement_id,exclusive,territories_covered,amendment_count,last_review_date,notes,created_by,created_at,updated_at,status,contact_email,external_reference)
VALUES (2,102,'BetaHoldings',202,'Merchandise','2024-03-15','2034-03-15',8,402,0,'NorthAmerica,Europe',1,'2024-04-01','Amended for new product line','LegalTeam','2024-03-20','2024-03-25','Pending','legal@betaholdings.com','REF_LEG002');

INSERT INTO hero_legacy_rights (id,hero_id,estate_name,legal_guardian_id,rights_type,commencement_date,expiration_date,royalty_percentage,licensing_agreement_id,exclusive,territories_covered,amendment_count,last_review_date,notes,created_by,created_at,updated_at,status,contact_email,external_reference)
VALUES (3,103,'GammaTrust',203,'Publishing','2024-05-01','2035-05-01',10,403,1,'Asia,Australia',2,'2024-06-10','Reviewed for digital rights','ComplianceDept','2024-05-05','2024-05-07','Active','compliance@gammatrust.com','REF_LEG003');