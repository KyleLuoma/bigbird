-- Hero fan club membership details
CREATE TABLE hero_fan_club_membership
(
    membership_id          INTEGER PRIMARY KEY,
    hero_id                INTEGER,
    fan_id                 INTEGER,
    club_name              TEXT,
    join_date              TEXT,
    membership_level       TEXT,
    annual_fee             INTEGER,
    renewal_date           TEXT,
    status                 TEXT,
    preferred_contact_method TEXT,
    contact_email          TEXT,
    contact_phone          TEXT,
    city                   TEXT,
    state                  TEXT,
    country                TEXT,
    favorite_story_arc     TEXT,
    favorite_costume       TEXT,
    loyalty_points         INTEGER,
    last_event_attended    TEXT,
    notes                  TEXT
);

INSERT INTO hero_fan_club_membership VALUES (1, 101, 10001, MightyFans, 2022-05-10, Gold, 120, 2023-05-10, Active, Email, fan1@example.com, 5551234, Metropolis, NY, USA, OriginStory, ClassicSuit, 1500, ComicCon2022, EnjoysMeetups);
INSERT INTO hero_fan_club_membership VALUES (2, 102, 10002, ShadowSupporters, 2021-11-20, Silver, 80, 2022-11-20, Lapsed, Phone, fan2@example.com, 5555678, Gotham, NJ, USA, DarkNight, StealthArmor, 900, FanFest2021, PrefersOnline);
INSERT INTO hero_fan_club_membership VALUES (3, 103, 10003, AstroAdmirers, 2023-01-15, Bronze, 50, 2024-01-15, Active, Email, fan3@example.com, 5559012, StarCity, CA, USA, CosmicVoyage, SpaceSuit, 300, GalaxyExpo2023, NewMember);

-- Villain operation log
CREATE TABLE villain_operation_log
(
    operation_id           INTEGER PRIMARY KEY,
    villain_id             INTEGER,
    operation_name         TEXT,
    start_date             TEXT,
    end_date               TEXT,
    location               TEXT,
    objective              TEXT,
    success_flag           TEXT,
    casualties             INTEGER,
    resources_used         TEXT,
    intel_source           TEXT,
    covert_level           TEXT,
    notes                  TEXT,
    budget_usd             INTEGER,
    weapons_deployed       TEXT,
    vehicles_used          TEXT,
    operatives_involved    INTEGER,
    code_name              TEXT,
    status                 TEXT,
    last_update            TEXT
);

INSERT INTO villain_operation_log VALUES (1, 201, BankHeistAlpha, 2022-06-01, 2022-06-01, CentralBank, Theft, Yes, 2, Explosives, SpyNetwork, High, None, 500000, Pistols, Van01, 5, BlackMamba, Completed, 2022-06-02);
INSERT INTO villain_operation_log VALUES (2, 202, DataLeakBeta, 2023-03-15, 2023-03-15, DataCenterX, InformationTheft, No, 0, Malware, Insider, Medium, DetectedEarly, 200000, None, Drone02, 3, RedHawk, Foiled, 2023-03-16);
INSERT INTO villain_operation_log VALUES (3, 203, PowerGridSabotage, 2024-01-10, 2024-01-11, MetroGrid, Disruption, Yes, 5, EMPDevice, HackerGroup, High, MinorDamages, 800000, EMP, Truck07, 8, DarkPulse, Ongoing, 2024-01-12);

-- Multiverse event schedule
CREATE TABLE multiverse_event_schedule
(
    event_id               INTEGER PRIMARY KEY,
    event_name             TEXT,
    universe_branch        TEXT,
    start_timestamp        TEXT,
    end_timestamp          TEXT,
    description            TEXT,
    main_hero_id           INTEGER,
    main_villain_id        INTEGER,
    location               TEXT,
    impact_level           TEXT,
    required_resources     TEXT,
    sponsor_id             INTEGER,
    broadcast_channel      TEXT,
    ticket_price           INTEGER,
    tickets_sold           INTEGER,
    status                 TEXT,
    organizer              TEXT,
    security_level         TEXT,
    waiver_required        TEXT,
    notes                  TEXT
);

INSERT INTO multiverse_event_schedule VALUES (1, NexusConvergence, Prime, 2023-09-01T10:00, 2023-09-01T18:00, CrossDimensionalGathering, 101, 201, HallOfRealms, Extreme, EnergyCore, 301, ChannelOne, 150, 2000, Scheduled, CouncilOfGuardians, High, Yes, OpeningCeremony);
INSERT INTO multiverse_event_schedule VALUES (2, ShadowRiftSummit, Dark, 2024-02-15T09:00, 2024-02-15T17:00, VillainAllianceMeeting, 102, 202, AbyssArena, High, DarkMatter, 302, ChannelTwo, 100, 1500, Planned, DarkCouncil, Medium, No, Confidential);
INSERT INTO multiverse_event_schedule VALUES (3, CosmicFestival, Light, 2025-07-20T12:00, 2025-07-20T22:00, CelebrationOfHeroes, 103, 203, SkyDome, Medium, LightOrbs, 303, ChannelThree, 80, 3000, Confirmed, LightCommittee, Low, Yes, FamilyFriendly);

-- Artifact loan agreement detail
CREATE TABLE artifact_loan_agreement_detail
(
    loan_id                INTEGER PRIMARY KEY,
    artifact_id            INTEGER,
    lender_org             TEXT,
    borrower_org           TEXT,
    loan_start_date        TEXT,
    loan_end_date          TEXT,
    condition_on_loan      TEXT,
    insurance_value_usd    INTEGER,
    transport_method       TEXT,
    customs_clearance_number TEXT,
    authorized_by          TEXT,
    security_level         TEXT,
    loan_purpose           TEXT,
    display_location       TEXT,
    return_inspection_status TEXT,
    notes                  TEXT,
    renewal_possible_flag  TEXT,
    renewal_deadline       TEXT,
    loan_fee_usd           INTEGER,
    contact_person         TEXT
);

INSERT INTO artifact_loan_agreement_detail VALUES (1, 401, MuseumOfAncients, GalacticExpo, 2022-01-01, 2022-06-30, Excellent, 250000, CryogenicShip, CCN12345, CuratorA, High, Exhibition, HallA, Pending, None, Yes, 2022-05-15, 5000, OfficerX);
INSERT INTO artifact_loan_agreement_detail VALUES (2, 402, SpaceArchive, InterstellarUniversity, 2023-03-15, 2023-09-15, Good, 180000, HoverPod, CCN67890, AdminB, Medium, Research, Lab3, Completed, None, No, 2023-08-01, 3000, OfficerY);
INSERT INTO artifact_loan_agreement_detail VALUES (3, 403, HeroicLegends, MuseumOfHeroes, 2024-07-01, 2025-01-01, Fair, 220000, Teleporter, CCN54321, DirectorC, High, PublicDisplay, Gallery5, Pending, None, Yes, 2024-12-15, 4000, OfficerZ);

-- Corporate sponsorship contract
CREATE TABLE corporate_sponsorship_contract
(
    contract_id            INTEGER PRIMARY KEY,
    sponsor_id             INTEGER,
    hero_id                INTEGER,
    start_date             TEXT,
    end_date               TEXT,
    amount_usd             INTEGER,
    deliverables           TEXT,
    exclusivity_flag      TEXT,
    branding_requirements TEXT,
    social_media_mentions TEXT,
    event_appearances      TEXT,
    product_placement_details TEXT,
    approval_status        TEXT,
    renewal_option         TEXT,
    renewal_fee_usd        INTEGER,
    contract_manager       TEXT,
    legal_review_date      TEXT,
    payment_schedule       TEXT,
    termination_clause     TEXT,
    notes                  TEXT
);

INSERT INTO corporate_sponsorship_contract VALUES (1, 501, 101, 2022-01-01, 2022-12-31, 1000000, TVAds;Billboards, Yes, LogoOnCostume, WeeklyPosts, 5Events, EndCredits, Approved, Yes, 200000, ManagerA, 2021-12-15, Quarterly, MutualAgreement, FirstYearDeal);
INSERT INTO corporate_sponsorship_contract VALUES (2, 502, 102, 2023-03-01, 2024-02-28, 750000, OnlineCampaign;Merch, No, SmallBadge, BiWeeklyPosts, 3Events, SleevePrint, Pending, No, 0, ManagerB, 2023-02-20, BiMonthly, TerminationWith30Days, PilotProgram);
INSERT INTO corporate_sponsorship_contract VALUES (3, 503, 103, 2024-06-15, 2025-06-14, 1200000, GlobalTour;Ads, Yes, FullSuitBranding, DailyPosts, 10Events, VehicleWraps, Approved, Yes, 250000, ManagerC, 2024-05-30, Monthly, AutomaticRenewal, ExpandedScope);

-- Digital content rights
CREATE TABLE digital_content_rights
(
    right_id               INTEGER PRIMARY KEY,
    content_id             INTEGER,
    platform_id            INTEGER,
    rights_type            TEXT,
    start_date             TEXT,
    end_date               TEXT,
    exclusive_flag         TEXT,
    revenue_share_percent  INTEGER,
    territory              TEXT,
    language               TEXT,
    age_rating             TEXT,
    upload_date            TEXT,
    last_update            TEXT,
    status                 TEXT,
    audit_trail            TEXT,
    compliance_notes       TEXT,
    contract_id            INTEGER,
    licensing_fee_usd      INTEGER,
    royalty_rate_percent   INTEGER,
    digital_id             TEXT,
    metadata_json          TEXT
);

INSERT INTO digital_content_rights VALUES (1, 601, 701, Streaming, 2022-02-01, 2023-02-01, Yes, 30, Global, English, PG13, 2022-02-05, 2022-12-01, Active, Audit001, None, 801, 5000, 15, DC001, '{"genre":"action"}');
INSERT INTO digital_content_rights VALUES (2, 602, 702, Download, 2023-05-01, 2024-05-01, No, 25, Europe, French, R, 2023-05-03, 2023-11-20, Pending, Audit002, ReviewPending, 802, 3000, 12, DC002, '{"genre":"drama"}');
INSERT INTO digital_content_rights VALUES (3, 603, 703, Broadcast, 2024-09-01, 2025-09-01, Yes, 35, Asia, Japanese, G, 2024-09-05, 2024-10-10, Approved, Audit003, Compliant, 803, 7000, 18, DC003, '{"genre":"sci-fi"}');

-- Hero medical history detail
CREATE TABLE hero_medical_history_detail
(
    record_id               INTEGER PRIMARY KEY,
    hero_id                 INTEGER,
    visit_date              TEXT,
    facility_id             INTEGER,
    diagnosis               TEXT,
    treatment_given         TEXT,
    medication_prescribed   TEXT,
    followup_date           TEXT,
    physician_id            INTEGER,
    notes                   TEXT,
    vitals_height_cm        INTEGER,
    vitals_weight_kg        INTEGER,
    blood_type              TEXT,
    allergies               TEXT,
    immunizations           TEXT,
    injury_severity         TEXT,
    recovery_time_days      INTEGER,
    discharge_status        TEXT,
    next_appointment        TEXT,
    medical_cost_usd        INTEGER
);

INSERT INTO hero_medical_history_detail VALUES (1, 101, 2022-04-10, 901, SprainAnkle, RestAndIce, Ibuprofen, 2022-04-20, 1101, MinorInjury, 180, 80, O+, None, Tetanus, Moderate, 14, Discharged, 2022-05-01, 200);
INSERT INTO hero_medical_history_detail VALUES (2, 102, 2023-01-15, 902, Concussion, Observation, Acetaminophen, 2023-01-22, 1102, HeadInjury, 175, 75, A-, Penicillin, FluVaccine, Severe, 30, Hospitalized, 2023-02-10, 1500);
INSERT INTO hero_medical_history_detail VALUES (3, 103, 2024-07-05, 903, RadiationExposure, AntidoteTherapy, None, 2024-07-20, 1103, HighEnergy, 185, 85, B+, None, None, Critical, 60, UnderObservation, 2024-08-15, 5000);

-- Training facility resource
CREATE TABLE training_facility_resource
(
    resource_id                INTEGER PRIMARY KEY,
    facility_id                INTEGER,
    resource_type              TEXT,
    quantity_available         INTEGER,
    maintenance_date           TEXT,
    next_inspection_date       TEXT,
    supplier_id                INTEGER,
    cost_per_unit_usd          INTEGER,
    location_within_facility   TEXT,
    status                     TEXT,
    usage_rate_per_month       INTEGER,
    last_used_date             TEXT,
    assigned_to_program        TEXT,
    warranty_expiration        TEXT,
    calibration_needed_flag    TEXT,
    serial_number              TEXT,
    model_number               TEXT,
    manufacturer               TEXT,
    notes                      TEXT,
    depreciation_years         INTEGER
);

INSERT INTO training_facility_resource VALUES (1, 1001, VRSimulator, 10, 2022-12-01, 2023-12-01, 2001, 15000, ZoneA, Operational, 2, 2023-01-15, FlightTraining, 2025-12-31, No, SNVR001, MODVRX, TechCorp, None, 5);
INSERT INTO training_facility_resource VALUES (2, 1002, WeightSet, 20, 2023-03-10, 2024-03-10, 2002, 2000, ZoneB, Operational, 5, 2023-04-01, StrengthProgram, 2026-03-10, Yes, SNWT002, MODWTY, FitGear, RequiresCalibration, 7);
INSERT INTO training_facility_resource VALUES (3, 1003, CombatDummy, 15, 2023-06-20, 2024-06-20, 2003, 500, ZoneC, Operational, 3, 2023-07-05, HandToHand, 2027-06-20, No, SNDM003, MODDUM, FightSupply, None, 4);

-- Publishing contract milestone
CREATE TABLE publishing_contract_milestone
(
    milestone_id               INTEGER PRIMARY KEY,
    contract_id                INTEGER,
    milestone_name             TEXT,
    due_date                   TEXT,
    completion_date            TEXT,
    responsible_party          TEXT,
    status                     TEXT,
    budget_usd                 INTEGER,
    actual_spend_usd           INTEGER,
    deliverable_description    TEXT,
    approval_date              TEXT,
    notes                      TEXT,
    amendment_flag             TEXT,
    amendment_date             TEXT,
    risk_level                 TEXT,
    priority                   TEXT,
    linked_issue_id            INTEGER,
    stakeholder_contact        TEXT,
    legal_review_status        TEXT,
    payment_release_date       TEXT
);

INSERT INTO publishing_contract_milestone VALUES (1, 901, DraftScript, 2022-03-01, 2022-02-25, WriterTeam, Completed, 50000, 48000, ScriptDraftV1, 2022-02-28, OnTime, No, NULL, Low, High, 301, EditorA, Approved, 2022-03-05);
INSERT INTO publishing_contract_milestone VALUES (2, 902, ArtProofs, 2023-05-15, 2023-05-20, ArtDept, Delayed, 30000, 35000, CoverArtSet, 2023-05-22, Revised, Yes, 2023-05-25, Medium, Medium, 302, EditorB, Pending, 2023-06-01);
INSERT INTO publishing_contract_milestone VALUES (3, 903, FinalPrint, 2024-09-30, 2024-09-28, PrintShop, Completed, 80000, 79500, HardcoverRun, 2024-09-29, OnBudget, No, NULL, Low, High, 303, EditorC, Approved, 2024-10-05);

-- Cosmic anomaly observation
CREATE TABLE cosmic_anomaly_observation
(
    observation_id            INTEGER PRIMARY KEY,
    anomaly_name              TEXT,
    detected_date             TEXT,
    coordinates               TEXT,
    magnitude                 INTEGER,
    duration_seconds          INTEGER,
    observed_by               TEXT,
    instrument_id             INTEGER,
    wavelength_range          TEXT,
    data_file_path            TEXT,
    analysis_status           TEXT,
    hypothesis                TEXT,
    confidence_score          INTEGER,
    followup_required_flag    TEXT,
    followup_date             TEXT,
    reporting_scientist       TEXT,
    notes                     TEXT,
    publication_ref           TEXT,
    funding_source            TEXT,
    grant_number              TEXT,
    embargo_until_date        TEXT
);

INSERT INTO cosmic_anomaly_observation VALUES (1, DarkPulse, 2022-08-12, RA12Dec34, 9, 3600, ObservatoryX, 401, Infrared, /data/obs1.fits, Completed, BlackHoleInteraction, 85, No, NULL, DrSmith, None, JournalA, NSF, NSF12345, 2023-01-01);
INSERT INTO cosmic_anomaly_observation VALUES (2, GammaBurst, 2023-11-05, RA23Dec45, 12, 180, SpaceProbeY, 402, Gamma, /data/obs2.fits, InProgress, MagnetarFlare, 70, Yes, 2024-02-01, DrLee, HighEnergy, JournalB, NASA, NASA67890, 2024-06-01);
INSERT INTO cosmic_anomaly_observation VALUES (3, NebulaShift, 2024-03-22, RA34Dec56, 7, 7200, TelescopeZ, 403, Visible, /data/obs3.fits, Pending, DarkMatterAccretion, 60, Yes, 2024-09-15, DrKim, TBD, JournalC, ESA, ESA54321, 2025-01-15);