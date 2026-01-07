-- Table storing detailed inventory of equipment assigned to superheroes
CREATE TABLE hero_equipment_inventory
(
    inventory_id          INTEGER NOT NULL PRIMARY KEY,
    hero_id               INTEGER,
    equipment_name        TEXT,
    equipment_type        TEXT,
    acquisition_date      TEXT,
    condition_status      TEXT,
    manufacturer          TEXT,
    serial_number         TEXT,
    warranty_expiration   TEXT,
    storage_location      TEXT,
    assigned_by_staff_id  INTEGER,
    assigned_date         TEXT,
    usage_hours           INTEGER,
    maintenance_schedule  TEXT,
    last_maintenance_date TEXT,
    durability_rating     INTEGER,
    weight_kg             INTEGER,
    power_source          TEXT,
    notes                 TEXT,
    is_active             INTEGER,
    FOREIGN KEY (hero_id) REFERENCES superhero(id)
);

INSERT INTO hero_equipment_inventory VALUES (1, 101, UtilityBelt, Utility, 2022-01-15, New, StarkIndustries, UB12345, 2025-01-15, VaultA1, 5001, 2022-01-20, 100, Monthly, 2023-06-01, 9, 2, Battery, None, 1);
INSERT INTO hero_equipment_inventory VALUES (2, 102, GrapplingHook, Weapon, 2021-07-10, Good, WayneTech, GH9876, 2024-07-10, VaultB3, 5002, 2021-07-12, 250, Quarterly, 2023-03-15, 8, 5, Mechanical, Checked, 1);
INSERT INTO hero_equipment_inventory VALUES (3, 103, NanoSuit, Armor, 2020-11-05, Fair, LexCorp, NS2020, 2023-11-05, VaultC2, 5003, 2020-11-07, 500, Yearly, 2022-12-20, 7, 10, Energy, MinorTear, 0);

-- Table tracking vehicles owned or used by superheroes
CREATE TABLE hero_vehicle_fleet
(
    fleet_id               INTEGER NOT NULL PRIMARY KEY,
    hero_id                INTEGER,
    vehicle_name           TEXT,
    vehicle_type           TEXT,
    manufacturer           TEXT,
    model_number           TEXT,
    acquisition_year       INTEGER,
    license_plate          TEXT,
    max_speed_kmh          INTEGER,
    fuel_type              TEXT,
    seating_capacity       INTEGER,
    armor_rating           INTEGER,
    weaponized             INTEGER,
    current_location       TEXT,
    maintenance_status     TEXT,
    last_service_date      TEXT,
    next_service_due_km    INTEGER,
    total_mileage_km       INTEGER,
    assigned_by_staff_id   INTEGER,
    is_active              INTEGER,
    notes                  TEXT,
    FOREIGN KEY (hero_id) REFERENCES superhero(id)
);

INSERT INTO hero_vehicle_fleet VALUES (1, 101, ThunderBike, Motorcycle, MotorWorks, TB-9000, 2022, TX1234, 350, Gasoline, 1, 5, 1, GothamCity, Serviced, 2023-05-01, 5000, 15000, 5001, 1, None);
INSERT INTO hero_vehicle_fleet VALUES (2, 104, SkySpear, Jet, AeroDynamics, SS-Alpha, 2020, FL9876, 2200, JetFuel, 4, 9, 1, MetropolisAirPort, NeedsRepair, 2023-02-20, 2000, 8000, 5004, 1, CorrosionObserved);
INSERT INTO hero_vehicle_fleet VALUES (3, 105, TerraTread, Tank, GroundForce, TT-77, 2019, TX5566, 80, Diesel, 3, 10, 0, CentralBase, Serviced, 2023-01-15, 1000, 12000, 5005, 0, Decommissioned);

-- Table defining training modules available to superheroes
CREATE TABLE hero_training_module
(
    module_id               INTEGER NOT NULL PRIMARY KEY,
    hero_id                 INTEGER,
    module_name             TEXT,
    difficulty_level        TEXT,
    duration_hours          INTEGER,
    instructor_name         TEXT,
    certification_required INTEGER,
    location                TEXT,
    schedule_start_date     TEXT,
    schedule_end_date       TEXT,
    max_participants        INTEGER,
    current_enrollment      INTEGER,
    assessment_method       TEXT,
    passing_score           INTEGER,
    equipment_needed        TEXT,
    safety_briefing_given   INTEGER,
    approved_by_staff_id    INTEGER,
    is_mandatory            INTEGER,
    notes                   TEXT,
    last_updated            TEXT,
    FOREIGN KEY (hero_id) REFERENCES superhero(id)
);

INSERT INTO hero_training_module VALUES (1, 101, FlightControl, Advanced, 40, AngelicaWings, 1, SkyDome, 2023-07-01, 2023-08-15, 10, 8, Simulator, 85, FlightSuit, 1, 6001, 1, None, 2023-06-20);
INSERT INTO hero_training_module VALUES (2, 102, HandToHandCombat, Intermediate, 30, BruceFist, 0, DojoEast, 2023-05-10, 2023-06-20, 15, 12, LiveDemo, 80, CombatGloves, 1, 6002, 0, FocusOnStamina, 2023-04-30);
INSERT INTO hero_training_module VALUES (3, 103, EnergyManipulation, Expert, 60, DrQuantum, 1, LabCentral, 2023-09-01, 2023-11-30, 8, 5, Practical, 90, EnergyCore, 1, 6003, 1, RequiresClearance, 2023-08-15);

-- Table logging interactions between fans and superheroes
CREATE TABLE fan_interaction_log
(
    interaction_id          INTEGER NOT NULL PRIMARY KEY,
    fan_id                  INTEGER,
    hero_id                 INTEGER,
    interaction_type        TEXT,
    interaction_date        TEXT,
    location                TEXT,
    platform                TEXT,
    duration_minutes        INTEGER,
    outcome                 TEXT,
    feedback_score          INTEGER,
    comments                TEXT,
    staff_observer_id       INTEGER,
    follow_up_required      INTEGER,
    follow_up_deadline      TEXT,
    recorded_by_staff_id    INTEGER,
    is_public               INTEGER,
    media_coverage          TEXT,
    hashtags_used           TEXT,
    sentiment_analysis     TEXT,
    created_at              TEXT,
    updated_at              TEXT
);

INSERT INTO fan_interaction_log VALUES (1, 9001, 101, MeetAndGreet, 2023-06-20, ConventionHallA, InPerson, 30, Positive, 9, GreatAutograph, 7001, 0, NULL, 7002, 1, LocalNews, #HeroMeet, Positive, 2023-06-20, 2023-06-20);
INSERT INTO fan_interaction_log VALUES (2, 9002, 102, QandA, 2023-07-05, OnlineWebinar, Virtual, 45, Informative, 8, HelpfulAnswers, 7003, 0, NULL, 7004, 1, StreamingSite, #AskHero, Positive, 2023-07-05, 2023-07-05);
INSERT INTO fan_interaction_log VALUES (3, 9003, 103, PhotoOp, 2023-08-12, CitySquare, InPerson, 15, Mixed, 6, ShortLine, 7005, 1, 2023-09-01, 7006, 0, SocialMedia, #HeroSnap, Neutral, 2023-08-12, 2023-08-12);

-- Table recording media appearances of superheroes
CREATE TABLE media_appearance_record
(
    appearance_id           INTEGER NOT NULL PRIMARY KEY,
    hero_id                 INTEGER,
    media_type              TEXT,
    title                   TEXT,
    release_date            TEXT,
    network                 TEXT,
    duration_minutes        INTEGER,
    audience_rating         INTEGER,
    viewership_millions     INTEGER,
    director_name           TEXT,
    producer_name           TEXT,
    screenplay_writer       TEXT,
    segment_description     TEXT,
    aired_time              TEXT,
    is_featured             INTEGER,
    awards_nominated        TEXT,
    awards_won              TEXT,
    language                TEXT,
    subtitles_available     INTEGER,
    created_at              TEXT,
    updated_at              TEXT,
    FOREIGN KEY (hero_id) REFERENCES superhero(id)
);

INSERT INTO media_appearance_record VALUES (1, 101, TVShow, HeroicHour, 2023-04-01, ChannelOne, 60, 85, 3, JaneDoe, JohnSmith, AlexTurner, IntroSegment, 20:00, 1, Emmy2023, EmmyWinner, English, 1, 2023-03-25, 2023-03-25);
INSERT INTO media_appearance_record VALUES (2, 102, Movie, NightOfShadows, 2022-11-15, GlobalCinema, 120, 92, 12, MariaLee, CarlosRio, NinaPatel, MainFeature, 19:30, 1, Oscar2023, None, English, 1, 2022-10-01, 2022-10-01);
INSERT INTO media_appearance_record VALUES (3, 103, Podcast, PowerTalks, 2023-06-10, StreamCast, 45, 78, 0, None, None, SamKline, Episode42, 10:00, 0, None, None, English, 0, 2023-05-30, 2023-05-30);

-- Table scheduling cosmic events that affect the superhero universe
CREATE TABLE cosmic_event_schedule
(
    event_id                INTEGER NOT NULL PRIMARY KEY,
    event_name              TEXT,
    event_type              TEXT,
    start_datetime          TEXT,
    end_datetime            TEXT,
    affected_universe       TEXT,
    severity_level          TEXT,
    predicted_impact        TEXT,
    mitigation_plan         TEXT,
    responsible_agency_id   INTEGER,
    status                  TEXT,
    last_updated_by_staff   INTEGER,
    created_at              TEXT,
    updated_at              TEXT,
    notes                   TEXT,
    observation_station_id  INTEGER,
    public_alert_issued     INTEGER,
    alert_level             TEXT,
    coordinating_team       TEXT,
    budget_million_usd      INTEGER
);

INSERT INTO cosmic_event_schedule VALUES (1, SolarFlareX, Solar, 2023-09-01T00:00, 2023-09-02T00:00, PrimeVerse, High, PowerSurge, ShieldDeployment, 8001, Ongoing, 8002, 2023-08-25, 2023-08-25, Monitoring, 9001, 1, Red, AstroTeam, 50);
INSERT INTO cosmic_event_schedule VALUES (2, RiftOpening, Dimensional, 2023-12-15T12:00, 2023-12-20T12:00, Multiverse, Critical, RealityShift, ContainmentField, 8003, Planned, 8004, 2023-11-30, 2023-11-30, RequiresCoordination, 9002, 0, None, RiftTeam, 120);
INSERT INTO cosmic_event_schedule VALUES (3, MeteorShowerZ, Meteoritic, 2024-03-05T18:00, 2024-03-07T18:00, EarthSector, Medium, AtmosphericDisturbance, EarlyWarning, 8005, Scheduled, 8006, 2024-02-20, 2024-02-20, ClearSkies, 9003, 1, Yellow, SkyWatch, 30);

-- Table indexing cross‑universe crossover events
CREATE TABLE multiverse_crossover_index
(
    crossover_id            INTEGER NOT NULL PRIMARY KEY,
    primary_universe        TEXT,
    secondary_universe      TEXT,
    crossover_title         TEXT,
    start_date              TEXT,
    end_date                TEXT,
    main_heroes_involved    TEXT,
    main_villains_involved  TEXT,
    narrative_arc           TEXT,
    continuity_impact       TEXT,
    official_status         TEXT,
    coordinator_staff_id    INTEGER,
    created_at              TEXT,
    updated_at              TEXT,
    fan_rating              INTEGER,
    critical_reviews        TEXT,
    merchandise_release_id  INTEGER,
    streaming_platform_id   INTEGER,
    viewership_estimate     INTEGER,
    budget_million_usd      INTEGER,
    notes                   TEXT
);

INSERT INTO multiverse_crossover_index VALUES (1, PrimeVerse, DarkRealm, ClashOfShadows, 2023-10-01, 2023-10-15, HeroA|HeroB, VillainX|VillainY, ShadowWar, CanonAlteration, Official, 7101, 2023-09-20, 2023-09-20, 9, Positive, 4201, 6101, 8, 100, None);
INSERT INTO multiverse_crossover_index VALUES (2, PrimeVerse, NeonCity, NeonNight, 2024-02-05, 2024-02-20, HeroC, VillainZ, TechInvasion, TimelineBranch, Unofficial, 7102, 2024-01-10, 2024-01-10, 7, Mixed, 4202, 6102, 5, 60, LimitedRelease);
INSERT INTO multiverse_crossover_index VALUES (3, DarkRealm, CosmicVoid, VoidEchoes, 2024-06-12, 2024-06-25, HeroD|HeroE, VillainW, VoidResonance, MultiverseStability, Planned, 7103, 2024-05-01, 2024-05-01, 8, Positive, 4203, 6103, 6, 80, HighRisk);

-- Table tracking villain schemes and their status
CREATE TABLE villain_scheme_tracker
(
    scheme_id               INTEGER NOT NULL PRIMARY KEY,
    villain_id              INTEGER,
    scheme_name             TEXT,
    description             TEXT,
    start_date              TEXT,
    expected_end_date       TEXT,
    current_status          TEXT,
    threat_level            TEXT,
    resources_committed     TEXT,
    target_hero_id          INTEGER,
    target_location         TEXT,
    detection_method        TEXT,
    countermeasure_plan_id  INTEGER,
    last_update_staff_id    INTEGER,
    created_at              TEXT,
    updated_at              TEXT,
    success_probability     INTEGER,
    collateral_damage_est   TEXT,
    media_coverage_level    TEXT,
    budget_million_usd      INTEGER,
    notes                   TEXT,
    FOREIGN KEY (villain_id) REFERENCES hero_id(id)
);

INSERT INTO villain_scheme_tracker VALUES (1, 3001, DarkPulse, DisruptPowerGrid, 2023-07-01, 2023-08-15, Active, High, 500MW, 101, MetroCity, Surveillance, 9001, 7101, 2023-07-10, 2023-07-10, 70, Medium, High, 20, None);
INSERT INTO villain_scheme_tracker VALUES (2, 3002, MindFog, MentalControl, 2023-09-20, 2023-10-30, Planning, Medium, PsychicDevices, 102, CapitalTown, PsychicProbe, 9002, 7102, 2023-09-25, 2023-09-25, 50, Low, Medium, 15, RequiresApproval);
INSERT INTO villain_scheme_tracker VALUES (3, 3003, CosmicRift, OpenPortal, 2024-01-05, 2024-03-01, Infiltrating, Critical, DimensionalEngine, 103, SpaceDock, AnomalySensor, 9003, 7103, 2024-01-10, 2024-01-10, 30, High, Critical, 40, EmergencyProtocol);

-- Table logging secret identity access attempts
CREATE TABLE secret_identity_access_log
(
    log_id                  INTEGER NOT NULL PRIMARY KEY,
    hero_id                 INTEGER,
    accessor_staff_id       INTEGER,
    access_timestamp        TEXT,
    access_point            TEXT,
    purpose                 TEXT,
    approval_status         TEXT,
    notes                   TEXT,
    ip_address              TEXT,
    device_id               TEXT,
    location_city           TEXT,
    location_country        TEXT,
    risk_level              TEXT,
    action_taken            TEXT,
    reviewed_by_staff_id    INTEGER,
    review_timestamp        TEXT,
    escalation_required     INTEGER,
    escalation_staff_id     INTEGER,
    resolution_status       TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    FOREIGN KEY (hero_id) REFERENCES superhero(id)
);

INSERT INTO secret_identity_access_log VALUES (1, 101, 8001, 2023-06-01T09:15, ServerRoomA, VerifyEligibility, Approved, None, 192.168.1.10, DEV12345, Gotham, USA, Low, Logged, 8101, 2023-06-01T10:00, 0, NULL, Resolved, 2023-06-01, 2023-06-01);
INSERT INTO secret_identity_access_log VALUES (2, 102, 8002, 2023-07-12T14:30, RemoteVPN, BackgroundCheck, Pending, AwaitingDocs, 203.0.113.5, DEV67890, Metropolis, USA, Medium, None, 8102, 2023-07-13T09:00, 1, 8201, InProgress, 2023-07-12, 2023-07-13);
INSERT INTO secret_identity_access_log VALUES (3, 103, 8003, 2023-08-20T22:45, MobileDevice, EmergencyAccess, Approved, CriticalSituation, 198.51.100.22, DEV54321, StarCity, USA, High, Alerted, 8103, 2023-08-21T08:00, 0, NULL, Resolved, 2023-08-20, 2023-08-21);

-- Table awarding heroic deeds to superheroes
CREATE TABLE heroic_deed_award
(
    award_id                INTEGER NOT NULL PRIMARY KEY,
    hero_id                 INTEGER,
    award_name              TEXT,
    award_category          TEXT,
    award_date              TEXT,
    awarding_body           TEXT,
    citation_text           TEXT,
    ceremony_location       TEXT,
    media_coverage          TEXT,
    public_vote_count       INTEGER,
    prestige_level          TEXT,
    monetary_prize_usd      INTEGER,
    trophy_serial_number    TEXT,
    is_posthumous           INTEGER,
    related_event_id        INTEGER,
    created_at              TEXT,
    updated_at              TEXT,
    notes                   TEXT,
    recipient_contact_email TEXT,
    recipient_phone_number  TEXT,
    FOREIGN KEY (hero_id) REFERENCES superhero(id)
);

INSERT INTO heroic_deed_award VALUES (1, 101, ValorShield, Bravery, 2023-05-20, HeroicCouncil, SavedMillions, GrandHall, TVNews, 15000, High, 50000, VS-0001, 0, 4201, 2023-05-10, 2023-05-20, None, hero101@example.com, 5551234567);
INSERT INTO heroic_deed_award VALUES (2, 102, PeacekeeperMedal, Diplomacy, 2023-09-15, UnitedNations, MediatedTreaty, EmbassyRoom, PressRelease, 8000, Medium, 20000, PM-0102, 0, 4202, 2023-09-01, 2023-09-15, RequiresFollowUp, hero102@example.com, 5559876543);
INSERT INTO heroic_deed_award VALUES (3, 103, LifetimeHonor, Service, 2024-01-10, GlobalAlliance, DecadesOfService, CentralPlaza, LiveStream, 25000, Highest, 100000, LH-9999, 0, 4203, 2023-12-20, 2024-01-10, Celebrated, hero103@example.com, 5555551212);