-- Galactic expedition log tracking interstellar missions
CREATE TABLE galactic_expedition_log
(
    id                         INTEGER PRIMARY KEY,
    mission_name               TEXT,
    launch_date                DATE,
    return_date                DATE,
    commander_id               INTEGER,
    vessel_name                TEXT,
    destination_system         TEXT,
    distance_ly                DECIMAL,
    crew_size                  INTEGER,
    objectives                 TEXT,
    scientific_payload         TEXT,
    budget_million             DECIMAL,
    status                     TEXT,
    notes                      TEXT,
    fuel_type                  TEXT,
    propulsion_system          TEXT,
    gravity_assist             BOOLEAN,
    radiation_shielding_level  INTEGER,
    communication_band         TEXT,
    emergency_contact          TEXT,
    data_volume_tb             DECIMAL
);

INSERT INTO galactic_expedition_log VALUES (1, AlphaQuest, 2025-03-12, 2027-08-04, 101, StarRunner, ZetaReticuli, 42.5, 12, SurveyHabitablePlanets, SpectrometerArray, 150.0, Completed, SuccessfulMission, Antimatter, WarpDrive, true, 5, XBand, 5551234, 12.3);
INSERT INTO galactic_expedition_log VALUES (2, BetaVoyage, 2026-01-20, NULL, 102, NovaCruiser, ProximaCentauri, 4.2, 8, ProbeStarActivity, LightDetectArray, 85.0, Ongoing, EarlyStage, Fusion, IonDrive, false, 3, KaBand, 5555678, 8.7);
INSERT INTO galactic_expedition_log VALUES (3, GammaSurvey, 2024-11-05, 2025-12-15, 103, OrionSpeeder, Kepler452b, 1400.0, 20, GeologicalMapping, DrillModule, 200.0, Completed, HighYieldData, Helium3, Alcubierre, true, 7, SBand, 5559012, 25.1);


-- Mythic artifact custody records for interdimensional museum
CREATE TABLE mythic_artifact_custody
(
    artifact_id               INTEGER PRIMARY KEY,
    artifact_name             TEXT,
    origin_dimension          TEXT,
    discovery_date            DATE,
    current_location          TEXT,
    custodian_id              INTEGER,
    condition_status          TEXT,
    preservation_method       TEXT,
    last_restoration_date     DATE,
    value_estimate_million    DECIMAL,
    security_level            INTEGER,
    access_permission_code    TEXT,
    exhibit_start_date        DATE,
    exhibit_end_date          DATE,
    insurance_provider        TEXT,
    insurance_policy_number   TEXT,
    loan_status               TEXT,
    loan_start_date           DATE,
    loan_end_date             DATE,
    provenance_notes          TEXT,
    display_case_id           INTEGER,
    climate_control_setting   TEXT,
    handling_instructions     TEXT,
    audit_timestamp           TIMESTAMP
);

INSERT INTO mythic_artifact_custody VALUES (1001, OrbOfEons, AbyssalPlane, 2020-05-14, HallOfLegends, 201, Excellent, Cryogenic, 2021-06-01, 500.0, 5, CODEX, 2022-01-10, 2022-12-10, SecureInsure, POL12345, OnLoan, 2022-01-15, 2023-01-15, AncientRituals, 301, SubZero, GlovesRequired, CURRENT_TIMESTAMP);
INSERT INTO mythic_artifact_custody VALUES (1002, BladeOfNebula, StarRealm, 2019-11-22, TempVault, 202, Good, MagneticField, 2020-02-20, 320.5, 4, AXION, 2021-03-05, NULL, GlobalGuard, POL67890, InHouse, NULL, NULL, ForgedByStars, 302, LowTemp, NoTouch, CURRENT_TIMESTAMP);
INSERT INTO mythic_artifact_custody VALUES (1003, CrystalOfEchoes, EchoDimension, 2021-02-03, EchoGallery, 203, Fair, AcousticDamping, 2021-12-12, 210.0, 3, ECHOCODE, 2022-05-01, 2023-05-01, EchoSecure, POL11223, Returned, NULL, NULL, ResonanceCaptured, 303, Ambient, SilentMove, CURRENT_TIMESTAMP);


-- Registry of interdimensional trade agreements
CREATE TABLE interdimensional_trade_registry
(
    agreement_id              INTEGER PRIMARY KEY,
    trade_partner_a           TEXT,
    trade_partner_b           TEXT,
    dimension_a               TEXT,
    dimension_b               TEXT,
    agreement_date            DATE,
    expiration_date           DATE,
    goods_category            TEXT,
    tariff_rate_percent       DECIMAL,
    quota_limit_units         INTEGER,
    arbitration_body          TEXT,
    signatory_a_id            INTEGER,
    signatory_b_id            INTEGER,
    compliance_status         TEXT,
    monitoring_frequency_days INTEGER,
    renewal_option            TEXT,
    amendment_count           INTEGER,
    confidentiality_clause    TEXT,
    dispute_resolution_method TEXT,
    related_documentation_id   INTEGER,
    effective_status          TEXT,
    last_review_date          DATE,
    notes                     TEXT,
    created_timestamp         TIMESTAMP
);

INSERT INTO interdimensional_trade_registry VALUES (5001, ChronoCorp, VoidExports, TemporalPlane, VoidSpace, 2023-04-01, 2028-04-01, TimeArtifacts, 2.5, 1000, TemporalCourt, 301, 401, Active, 30, AutoRenew, 1, High, Mediation, 7001, Active, 2024-03-15, InitialAgreement, CURRENT_TIMESTAMP);
INSERT INTO interdimensional_trade_registry VALUES (5002, StarForge, NebulaSupply, StarCluster, NebulaSector, 2022-09-10, 2027-09-10, EnergyCrystals, 3.0, 500, GalacticCouncil, 302, 402, Pending, 60, ManualRenew, 0, Medium, Arbitration, 7002, Pending, 2023-08-20, AwaitingSignatures, CURRENT_TIMESTAMP);
INSERT INTO interdimensional_trade_registry VALUES (5003, QuantumLogistics, DimenTrade, QuantumRealm, DimensionalRift, 2021-01-15, 2026-01-15, QuantumFlux, 1.8, 2000, RiftChamber, 303, 403, Active, 45, AutoRenew, 2, Low, Negotiation, 7003, Active, 2025-12-01, UpdatedTerms, CURRENT_TIMESTAMP);


-- Cosmic energy market transactions
CREATE TABLE cosmic_energy_market
(
    transaction_id            INTEGER PRIMARY KEY,
    seller_id                 INTEGER,
    buyer_id                  INTEGER,
    energy_type               TEXT,
    quantity_gigajoules       DECIMAL,
    price_per_gigajoule       DECIMAL,
    total_price_million       DECIMAL,
    transaction_date          DATE,
    settlement_date           DATE,
    contract_id               INTEGER,
    delivery_method           TEXT,
    verification_code         TEXT,
    regulatory_body           TEXT,
    compliance_flag           BOOLEAN,
    escrow_account            TEXT,
    payment_status            TEXT,
    invoice_number            TEXT,
    notes                     TEXT,
    created_timestamp         TIMESTAMP,
    last_updated_timestamp    TIMESTAMP,
    jurisdiction              TEXT,
    tax_rate_percent          DECIMAL,
    carbon_offset_credits     INTEGER
);

INSERT INTO cosmic_energy_market VALUES (9001, 601, 702, DarkMatter, 1500.0, 0.75, 1.125, 2025-06-12, 2025-06-15, 8001, Teleport, VRC123, EnergyCommission, true, ESC001, Completed, INV9001, FirstDelivery, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, AlphaSector, 5.0, 300);
INSERT INTO cosmic_energy_market VALUES (9002, 603, 704, SolarFlare, 2500.5, 0.45, 1.125225, 2025-07-01, 2025-07-04, 8002, Beam, VRC124, SolarRegulator, true, ESC002, Pending, INV9002, AwaitingConfirmation, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, BetaSector, 4.5, 500);
INSERT INTO cosmic_energy_market VALUES (9003, 605, 706, Antimatter, 800.0, 1.20, 0.96, 2025-07-20, NULL, 8003, Containment, VRC125, AntimatterAuthority, false, ESC003, InProgress, INV9003, HighRisk, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, GammaSector, 6.0, 150);


-- Metahuman education record database
CREATE TABLE metahuman_education_record
(
    record_id                 INTEGER PRIMARY KEY,
    metahuman_id              INTEGER,
    institution_name          TEXT,
    program_name              TEXT,
    enrollment_date           DATE,
    graduation_date           DATE,
    degree_awarded            TEXT,
    gpa                       DECIMAL,
    counselor_id              INTEGER,
    scholarship_amount        DECIMAL,
    internship_completed      BOOLEAN,
    thesis_title              TEXT,
    research_publications     INTEGER,
    extracurricular_activities TEXT,
    honors_and_awards         TEXT,
    advisor_notes             TEXT,
    status                    TEXT,
    last_contact_date         DATE,
    alumni_network_id         INTEGER,
    created_timestamp         TIMESTAMP,
    updated_timestamp         TIMESTAMP,
    funding_source            TEXT,
    credit_hours              INTEGER,
    field_of_study            TEXT,
    graduation_year           INTEGER
);

INSERT INTO metahuman_education_record VALUES (12001, 801, HeroAcademy, AdvancedCombat, 2022-09-01, 2024-06-15, DualDiploma, 3.9, 901, 50000.0, true, EnergeticFluxControl, 5, DebateClub, ValorAward, ExcellentProgress, Graduated, 2024-06-10, 3001, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, GovernmentGrant, 120, KineticArts, 2024);
INSERT INTO metahuman_education_record VALUES (12002, 802, MysticInstitute, ArcaneStudies, 2021-01-15, NULL, None, 0.0, 902, 0.0, false, N/A, 0, Meditation, None, PendingReview, Enrolled, 2023-11-20, 3002, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, PrivateFund, 60, MysticEnergy, NULL);
INSERT INTO metahuman_education_record VALUES (12003, 803, TechU, BioEngineering, 2020-08-20, 2023-05-30, BachelorScience, 3.5, 903, 20000.0, true, RegenerativeHealing, 2, RoboticsClub, DeanList, GoodStanding, Graduated, 2023-05-25, 3003, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, Scholarship, 180, BioMechanics, 2023);


-- Quantum research project tracking
CREATE TABLE quantum_research_project
(
    project_id                INTEGER PRIMARY KEY,
    project_title             TEXT,
    lead_scientist_id         INTEGER,
    start_date                DATE,
    end_date                  DATE,
    funding_agency            TEXT,
    budget_million            DECIMAL,
    quantum_system_focus      TEXT,
    experimental_phase        TEXT,
    primary_outcome           TEXT,
    publications_expected     INTEGER,
    patents_filed             INTEGER,
    lab_location              TEXT,
    equipment_list            TEXT,
    safety_clearance_level    INTEGER,
    data_storage_location     TEXT,
    collaboration_partners    TEXT,
    status                    TEXT,
    last_review_date          DATE,
    created_timestamp         TIMESTAMP,
    updated_timestamp         TIMESTAMP,
    risk_assessment_score     DECIMAL,
    ethical_review_completed BOOLEAN,
    regulatory_compliance     TEXT,
    notes                     TEXT
);

INSERT INTO quantum_research_project VALUES (2001, EntanglementNetwork, 1001, 2023-01-10, NULL, QuantumFund, 12.5, PhotonQubits, PhaseI, PreliminaryResults, 2, 0, LabA, Interferometer, 4, StorageNode1, PartnerX;PartnerY, Active, 2024-02-15, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 3.2, true, Compliant, OngoingStudy);
INSERT INTO quantum_research_project VALUES (2002, QuantumCryptography, 1002, 2022-06-01, 2025-12-31, SecureTech, 8.0, SuperconductingQubits, PhaseII, PrototypeDeveloped, 4, 1, LabB, Cryostat, 5, StorageNode2, PartnerZ, InProgress, 2024-03-10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 2.8, true, Compliant, ScalingUp);
INSERT INTO quantum_research_project VALUES (2003, DarkMatterSimulation, 1003, 2021-09-15, 2024-09-15, AstroScience, 15.0, TopologicalQubits, PhaseIII, SimulationComplete, 6, 2, LabC, QuantumProcessor, 6, StorageNode3, PartnerA;PartnerB, Completed, 2024-01-20, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 4.0, true, Compliant, PublishedResults);


-- Alien diplomacy agreement archive
CREATE TABLE alien_diplomacy_agreement
(
    agreement_id              INTEGER PRIMARY KEY,
    alien_faction_name        TEXT,
    home_planet               TEXT,
    representative_name       TEXT,
    representative_title      TEXT,
    agreement_type            TEXT,
    signing_date              DATE,
    effective_date            DATE,
    termination_clause        TEXT,
    trade_terms                TEXT,
    technology_exchange       TEXT,
    cultural_exchange_program TEXT,
    security_assurances       TEXT,
    arbitration_mechanism     TEXT,
    compliance_officer_id     INTEGER,
    status                    TEXT,
    review_cycle_months       INTEGER,
    next_review_date          DATE,
    archived_location         TEXT,
    confidentiality_level     INTEGER,
    created_timestamp         TIMESTAMP,
    updated_timestamp         TIMESTAMP,
    notes                     TEXT,
    governing_body            TEXT,
    amendment_count           INTEGER,
    expiration_date           DATE
);

INSERT INTO alien_diplomacy_agreement VALUES (3001, Zorblaxians, Zorblax, Krrt Zaal, HighAmbassador, TradeTreaty, 2022-05-12, 2022-06-01, MutualTermination, OpenTrade, TechSharing, ArtExhibit, DefensePact, MediationCouncil, 401, Active, 12, 2025-05-12, VaultA, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, PositiveRelations, IntergalacticCouncil, 1, 2032-06-01);
INSERT INTO alien_diplomacy_agreement VALUES (3002, Vexori, VexorPrime, Luu Qen, Envoy, PeaceAccord, 2021-03-20, 2021-04-01, ClauseNone, Ceasefire, KnowledgeExchange, CulturalMission, MutualDefense, ArbitrationPanel, 402, Suspended, 24, 2023-03-20, VaultB, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, StalledNegotiations, GalacticPeaceCommission, 0, 2025-04-01);
INSERT INTO alien_diplomacy_agreement VALUES (3003, Arcturians, Arcturus, Mela Sari, Diplomat, ResearchCollab, 2023-11-05, 2023-11-15, ReviewEvery5Years, JointResearch, TechJointVentures, SharedFestivals, SecurityProtocol, JointArbitration, 403, Active, 6, 2024-05-05, VaultC, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, OngoingCollaboration, ScienceConsortium, 2, 2028-11-15);


-- Nanotech manufacturing batch records
CREATE TABLE nanotech_manufacturing_batch
(
    batch_id                  INTEGER PRIMARY KEY,
    product_name              TEXT,
    production_line_id        INTEGER,
    start_timestamp           TIMESTAMP,
    end_timestamp             TIMESTAMP,
    operator_id               INTEGER,
    raw_material_qty_grams    DECIMAL,
    nanomaterial_type          TEXT,
    target_particle_size_nm   DECIMAL,
    actual_particle_size_nm   DECIMAL,
    yield_percentage          DECIMAL,
    quality_grade             TEXT,
    inspection_passed         BOOLEAN,
    defect_count              INTEGER,
    temperature_celsius       DECIMAL,
    pressure_pascal           DECIMAL,
    humidity_percent          DECIMAL,
    safety_incident_report_id INTEGER,
    batch_cost_million        DECIMAL,
    shipping_status           TEXT,
    destination_warehouse_id  INTEGER,
    regulatory_approval_code  TEXT,
    notes                     TEXT,
    created_timestamp         TIMESTAMP,
    updated_timestamp         TIMESTAMP
);

INSERT INTO nanotech_manufacturing_batch VALUES (4001, NanoShield, 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 501, 25000.0, CarbonNanotube, 5.0, 4.8, 96.5, A, true, 2, 22.5, 101325.0, 45.0, NULL, 0.8, Dispatched, 9001, REG2025A, NoIssues, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO nanotech_manufacturing_batch VALUES (4002, NanoCircuit, 12, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 502, 18000.0, SilverNanowire, 2.0, 2.1, 92.0, B, true, 5, 21.0, 101500.0, 40.0, 3005, 0.6, InTransit, 9002, REG2025B, MinorVariations, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO nanotech_manufacturing_batch VALUES (4003, NanoAdhesive, 11, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 503, 30000.0, SilicaNanoparticle, 10.0, 9.9, 98.2, A, true, 1, 23.0, 101200.0, 42.0, NULL, 1.0, Stored, 9003, REG2025C, StableBatch, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


-- Virtual reality event schedule
CREATE TABLE virtual_reality_event_schedule
(
    event_id                  INTEGER PRIMARY KEY,
    event_name                TEXT,
    host_organization         TEXT,
    vr_platform               TEXT,
    start_datetime            TIMESTAMP,
    end_datetime              TIMESTAMP,
    max_participants          INTEGER,
    ticket_price_usd          DECIMAL,
    access_code               TEXT,
    featured_speaker          TEXT,
    topic                     TEXT,
    interactive_level         TEXT,
    required_hardware         TEXT,
    language_support          TEXT,
    sponsor_name              TEXT,
    sponsor_tier              TEXT,
    registration_deadline     DATE,
    status                    TEXT,
    notes                     TEXT,
    created_timestamp         TIMESTAMP,
    updated_timestamp         TIMESTAMP,
    analytics_id              INTEGER,
    feedback_form_id          INTEGER,
    live_stream_url           TEXT,
    recording_available       BOOLEAN
);

INSERT INTO virtual_reality_event_schedule VALUES (6001, HeroSummit2025, HeroAlliance, MetaVerseX, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 5000, 29.99, ACCESS123, Dr Gamma, FutureOfHeroes, High, OculusQuest, English;Spanish, MegaCorp, Platinum, 2025-04-01, Scheduled, LaunchEvent, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 8001, 9001, https://stream.example.com/hero2025, true);
INSERT INTO virtual_reality_event_schedule VALUES (6002, CosmicArtExpo, StarCollective, Immersio, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 3000, 19.99, ACCESS456, Ms Luna, InterstellarArt, Medium, HTC Vive, English, NovaTech, Gold, 2025-05-15, Open, ArtExhibit, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 8002, 9002, https://stream.example.com/artexpo, false);
INSERT INTO virtual_reality_event_schedule VALUES (6003, QuantumWorkshop, QuantumInstitute, VRLab, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 2000, 49.99, ACCESS789, Prof Q, QuantumComputing, High, Valve Index, English;German, QuarkSystems, Silver, 2025-06-20, Full, HandsOnLab, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 8003, 9003, https://stream.example.com/quantum, true);


-- Hero legacy rights management
CREATE TABLE hero_legacy_rights
(
    rights_id                 INTEGER PRIMARY KEY,
    hero_id                   INTEGER,
    rights_type               TEXT,
    territory                 TEXT,
    effective_start_date      DATE,
    effective_end_date        DATE,
    royalty_percentage        DECIMAL,
    licensing_agreement_id    INTEGER,
    exclusive_flag            BOOLEAN,
    managed_by_agency_id      INTEGER,
    status                    TEXT,
    renewal_notice_sent_date  DATE,
    last_audit_timestamp      TIMESTAMP,
    notes                     TEXT,
    created_timestamp         TIMESTAMP,
    updated_timestamp         TIMESTAMP,
    audit_contact_name        TEXT,
    audit_contact_email       TEXT,
    dispute_resolution_clause TEXT,
    contract_document_path    TEXT,
    hierarchical_level        INTEGER,
    revenue_share_percentage  DECIMAL,
    compliance_requirements  TEXT,
    authorized_use_cases      TEXT,
    termination_clause        TEXT
);

INSERT INTO hero_legacy_rights VALUES (7001, 801, ImageRights, Global, 2025-01-01, 2035-01-01, 5.0, 8501, true, 901, Active, 2024-12-01, CURRENT_TIMESTAMP, InitialContract, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, Jane Doe, jane@example.com, Mediation, /contracts/hero801_image.pdf, 1, 2.0, Standard, Advertising;Merchandise, MutualTermination);
INSERT INTO hero_legacy_rights VALUES (7002, 802, StoryRights, NorthAmerica, 2023-05-15, 2028-05-15, 4.5, 8502, false, 902, Expired, 2028-04-01, CURRENT_TIMESTAMP, ContractExpired, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, John Smith, john@example.com, Arbitration, /contracts/hero802_story.pdf, 2, 1.5, Limited, Comics;Games, EarlyTermination);
INSERT INTO hero_legacy_rights VALUES (7003, 803, MerchandiseRights, Europe, 2024-09-01, 2034-09-01, 6.0, 8503, true, 903, Active, 2025-08-01, CURRENT_TIMESTAMP, Ongoing, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, Alice Lee, alice@example.com, Mediation, /contracts/hero803_merch.pdf, 1, 3.0, Comprehensive, Toys;Apparel, ReviewRequired);