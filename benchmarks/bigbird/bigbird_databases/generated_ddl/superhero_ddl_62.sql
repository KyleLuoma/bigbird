-- Table storing details of interplanetary missions
CREATE TABLE interplanetary_mission (
    id INTEGER PRIMARY KEY,
    mission_name TEXT,
    launch_year INTEGER,
    launch_month INTEGER,
    launch_day INTEGER,
    arrival_year INTEGER,
    arrival_month INTEGER,
    arrival_day INTEGER,
    spacecraft_id INTEGER,
    commander_id INTEGER,
    crew_size INTEGER,
    destination_planet_id INTEGER,
    mission_duration_days INTEGER,
    budget_million_usd INTEGER,
    scientific_objective TEXT,
    propulsion_type TEXT,
    launch_site_id INTEGER,
    status TEXT,
    telemetry_packets_sent INTEGER,
    fuel_consumed_kg INTEGER
);

INSERT INTO interplanetary_mission VALUES (1, 'MarsVoyage', 2032, 5, 14, 2033, 2, 20, 101, 201, 5, 301, 402, 850, 'Geology', 'Ion', 11, 'Planned', 0, 120000);
INSERT INTO interplanetary_mission VALUES (2, 'TitanExcursion', 2035, 9, 3, 2036, 1, 15, 102, 202, 4, 302, 378, 920, 'Atmospheric', 'Nuclear', 12, 'Planned', 0, 135000);
INSERT INTO interplanetary_mission VALUES (3, 'EuropaSurvey', 2038, 3, 22, 2039, 4, 5, 103, 203, 6, 303, 500, 1100, 'IceCore', 'Fusion', 13, 'Planned', 0, 150000);

-- Table describing galactic trade agreements
CREATE TABLE galactic_trade_agreement (
    id INTEGER PRIMARY KEY,
    agreement_name TEXT,
    signing_year INTEGER,
    signing_month INTEGER,
    signing_day INTEGER,
    party_a_id INTEGER,
    party_b_id INTEGER,
    trade_goods_category TEXT,
    tariff_percent INTEGER,
    duration_years INTEGER,
    renewal_option BOOLEAN,
    dispute_resolution_mechanism TEXT,
    governing_law TEXT,
    confidentiality_clause BOOLEAN,
    signature_hash TEXT,
    authorized_rep_a_id INTEGER,
    authorized_rep_b_id INTEGER,
    amendment_count INTEGER,
    compliance_audit_frequency_months INTEGER,
    total_value_million_credits INTEGER
);

INSERT INTO galactic_trade_agreement VALUES (1, 'AlphaBetaTreaty', 2120, 7, 12, 1001, 2002, 'Minerals', 5, 20, 1, 'Mediation', 'GalacticCode', 1, 'hash001', 3001, 4002, 0, 12, 5000);
INSERT INTO galactic_trade_agreement VALUES (2, 'DeltaGammaAccord', 2125, 11, 3, 1003, 2004, 'Technology', 8, 15, 0, 'Arbitration', 'UniversalStatute', 0, 'hash002', 3003, 4004, 1, 6, 3200);
INSERT INTO galactic_trade_agreement VALUES (3, 'SigmaOmega pact', 2130, 2, 19, 1005, 2006, 'Foodstuffs', 3, 25, 1, 'Council', 'InterstellarLaw', 1, 'hash003', 3005, 4006, 2, 24, 7800);

-- Table tracking mythic artifact loans between museums
CREATE TABLE mythic_artifact_loan (
    id INTEGER PRIMARY KEY,
    artifact_name TEXT,
    loan_start_year INTEGER,
    loan_start_month INTEGER,
    loan_start_day INTEGER,
    loan_end_year INTEGER,
    loan_end_month INTEGER,
    loan_end_day INTEGER,
    lending_institution_id INTEGER,
    borrowing_institution_id INTEGER,
    insurance_value_credits INTEGER,
    security_level TEXT,
    transport_method TEXT,
    curator_in_charge_id INTEGER,
    condition_report TEXT,
    loan_status TEXT,
    renewal_requested BOOLEAN,
    renewal_approved BOOLEAN,
    notes TEXT,
    logistic_partner_id INTEGER,
    compliance_check_passed BOOLEAN
);

INSERT INTO mythic_artifact_loan VALUES (1, 'SpearOfAres', 2122, 4, 15, 2123, 4, 15, 5001, 6001, 2000000, 'High', 'SecureContainer', 7001, 'Excellent', 'Active', 0, 0, 'First loan', 8001, 1);
INSERT INTO mythic_artifact_loan VALUES (2, 'CrownOfLuna', 2125, 9, 1, 2126, 9, 1, 5002, 6002, 3500000, 'Medium', 'ArmoredVan', 7002, 'Good', 'Active', 1, 1, 'Renewal approved', 8002, 1);
INSERT INTO mythic_artifact_loan VALUES (3, 'OrbOfChronos', 2130, 1, 20, 2131, 1, 20, 5003, 6003, 5000000, 'VeryHigh', 'QuantumPod', 7003, 'Pristine', 'Completed', 0, 0, 'Returned undamaged', 8003, 1);

-- Table recording quantum energy transactions
CREATE TABLE quantum_energy_transaction (
    id INTEGER PRIMARY KEY,
    transaction_timestamp TEXT,
    sender_entity_id INTEGER,
    receiver_entity_id INTEGER,
    energy_amount_megaqj INTEGER,
    transaction_fee_percent INTEGER,
    contract_id INTEGER,
    verification_hash TEXT,
    settlement_status TEXT,
    blockchain_layer INTEGER,
    consensus_mechanism TEXT,
    regulator_approval BOOLEAN,
    audit_trail_id INTEGER,
    related_event_id INTEGER,
    priority_level INTEGER,
    risk_assessment_score INTEGER,
    notes TEXT,
    exchange_rate_to_credits REAL,
    initiated_by_user_id INTEGER,
    compliance_flag BOOLEAN
);

INSERT INTO quantum_energy_transaction VALUES (1, '2132-05-12 08:30:00', 9001, 9101, 1500, 2, 10001, 'qhash001', 'Settled', 2, 'ProofOfStake', 1, 11001, 12001, 5, 12, 'Standard', 1.05, 13001, 0);
INSERT INTO quantum_energy_transaction VALUES (2, '2132-06-18 14:45:00', 9002, 9102, 3000, 1, 10002, 'qhash002', 'Pending', 3, 'ProofOfWork', 0, 11002, 12002, 8, 20, 'High value', 0.98, 13002, 1);
INSERT INTO quantum_energy_transaction VALUES (3, '2132-07-01 22:10:00', 9003, 9103, 750, 3, 10003, 'qhash003', 'Failed', 1, 'Hybrid', 1, 11003, 12003, 3, 5, 'Retry later', 1.12, 13003, 0);

-- Table cataloguing alien species
CREATE TABLE alien_species_registry (
    id INTEGER PRIMARY KEY,
    species_name TEXT,
    classification TEXT,
    home_planet_id INTEGER,
    average_lifespan_years INTEGER,
    typical_height_cm INTEGER,
    typical_weight_kg INTEGER,
    dominant_biochemistry TEXT,
    language_name TEXT,
    communication_method TEXT,
    first_contact_year INTEGER,
    discovery_location TEXT,
    conservation_status TEXT,
    population_estimate INTEGER,
    notable_traits TEXT,
    diet_type TEXT,
    reproductive_mode TEXT,
    sensory_capabilities TEXT,
    tech_level TEXT,
    cultural_complexity INTEGER,
    curator_id INTEGER
);

INSERT INTO alien_species_registry VALUES (1, 'Zyglon', 'Molluscoid', 401, 120, 180, 80, 'SiliconBased', 'Zyglish', 'Telepathy', 2110, 'NebulaSector7', 'Endangered', 5000, 'RegenerativeLimbs', 'Omnivore', 'Asexual', 'InfraredVision', 'Industrial', 7, 601);
INSERT INTO alien_species_registry VALUES (2, 'Quarn', 'Arachnid', 402, 60, 150, 60, 'CarbonBased', 'Quarnic', 'Vibrational', 2122, 'AsteroidBelt3', 'Stable', 200000, 'PoisonousSting', 'Carnivore', 'EggLaying', 'Echolocation', 'PostIndustrial', 8, 602);
INSERT INTO alien_species_registry VALUES (3, 'Luminara', 'Avian', 403, 30, 90, 15, 'NitrogenBased', 'Luminese', 'LightPatterns', 2135, 'CrystalCavern9', 'Critical', 2500, 'Bioluminescence', 'Herbivore', 'LiveBirth', 'UltravioletVision', 'Advanced', 9, 603);

-- Table logging observations of cosmic events
CREATE TABLE cosmic_event_observation (
    id INTEGER PRIMARY KEY,
    event_name TEXT,
    event_type TEXT,
    observation_date DATE,
    observation_time TIME,
    detector_id INTEGER,
    wavelength_nm INTEGER,
    peak_intensity_jy INTEGER,
    duration_seconds INTEGER,
    sky_location_ra DECIMAL,
    sky_location_dec DECIMAL,
    associated_gravitational_wave BOOLEAN,
    data_product_id INTEGER,
    processing_status TEXT,
    analyst_id INTEGER,
    confidence_score INTEGER,
    notes TEXT,
    followup_required BOOLEAN,
    followup_observation_id INTEGER,
    public_release_status TEXT
);

INSERT INTO cosmic_event_observation VALUES (1, 'GammaBurstX1', 'GammaRayBurst', '2140-03-12', '22:15:00', 701, 500, 3200, 45, 12.34, -45.67, 1, 801, 'Processed', 901, 95, 'Clear signal', 0, NULL, 'Public');
INSERT INTO cosmic_event_observation VALUES (2, 'SupernovaS2', 'Supernova', '2141-07-08', '05:30:00', 702, 650, 2100, 3600, 150.22, 22.98, 0, 802, 'Pending', 902, 80, 'Needs verification', 1, 1201, 'Restricted');
INSERT INTO cosmic_event_observation VALUES (3, 'FastRadioFRB7', 'FastRadioBurst', '2142-11-19', '13:45:00', 703, 1400, 500, 0.005, 230.55, -12.34, 1, 803, 'Processed', 903, 99, 'Excellent candidate', 0, NULL, 'Public');

-- Table tracking nanotech manufacturing batches
CREATE TABLE nanotech_manufacturing_batch (
    id INTEGER PRIMARY KEY,
    batch_code TEXT,
    product_name TEXT,
    manufacture_date DATE,
    factory_id INTEGER,
    operator_id INTEGER,
    material_type TEXT,
    target_particle_size_nm INTEGER,
    yield_percentage REAL,
    defect_rate_ppm INTEGER,
    quality_certified BOOLEAN,
    testing_protocol_version TEXT,
    batch_status TEXT,
    total_units_produced INTEGER,
    units_shipped INTEGER,
    storage_location_id INTEGER,
    hazard_classification TEXT,
    temperature_control_celsius REAL,
    humidity_control_percent REAL,
    notes TEXT,
    compliance_audit_id INTEGER
);

INSERT INTO nanotech_manufacturing_batch VALUES (1, 'NB-001', 'NanoFiber', '2150-01-15', 1101, 1201, 'Carbon', 50, 96.5, 200, 1, 'V2', 'Completed', 100000, 80000, 1301, 'Low', 22.5, 45.0, 'No issues', 1401);
INSERT INTO nanotech_manufacturing_batch VALUES (2, 'NB-002', 'QuantumDot', '2150-03-20', 1102, 1202, 'Silicon', 10, 92.1, 350, 1, 'V2', 'Completed', 50000, 45000, 1302, 'Medium', 20.0, 50.0, 'Minor variance', 1402);
INSERT INTO nanotech_manufacturing_batch VALUES (3, 'NB-003', 'NanoCeramic', '2150-06-05', 1103, 1203, 'Titanium', 5, 98.3, 120, 1, 'V3', 'InProgress', 20000, 0, 1303, 'High', 18.0, 55.0, 'Awaiting final QA', 1403);

-- Table containing records of metahuman clinic visits
CREATE TABLE metahuman_clinic_record (
    id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    visit_date DATE,
    attending_physician_id INTEGER,
    clinic_location_id INTEGER,
    presenting_issue TEXT,
    diagnosis_code TEXT,
    treatment_plan TEXT,
    medication_prescribed TEXT,
    dosage_mg INTEGER,
    followup_required BOOLEAN,
    followup_date DATE,
    notes TEXT,
    vital_signs_score INTEGER,
    genetic_marker_id INTEGER,
    ability_stability_score INTEGER,
    emergency_flag BOOLEAN,
    insurance_claim_number TEXT,
    billing_amount_usd INTEGER,
    discharge_status TEXT,
    case_manager_id INTEGER
);

INSERT INTO metahuman_clinic_record VALUES (1, 21001, '2155-02-10', 3101, 4101, 'EnergyFlux', 'DX001', 'StabilizationTherapy', 'FluxInhibitor', 250, 1, '2155-03-10', 'Patient responded well', 85, 5101, 92, 0, 'CLM1001', 1500, 'Discharged', 6101);
INSERT INTO metahuman_clinic_record VALUES (2, 21002, '2155-04-22', 3102, 4102, 'TelepathicOverload', 'DX002', 'NeuralCalming', 'Calmant', 100, 0, NULL, 'Observation only', 78, 5102, 88, 0, 'CLM1002', 1200, 'Observation', 6102);
INSERT INTO metahuman_clinic_record VALUES (3, 21003, '2155-06-15', 3103, 4103, 'RegenerationComplication', 'DX003', 'SurgicalIntervention', 'RegeneFix', 500, 1, '2155-07-01', 'Surgery successful', 92, 5103, 95, 0, 'CLM1003', 3000, 'Recovered', 6103);

-- Table logging archival preservation activities
CREATE TABLE archival_preservation_log (
    id INTEGER PRIMARY KEY,
    artifact_id INTEGER,
    preservation_method TEXT,
    start_date DATE,
    end_date DATE,
    responsible_conservator_id INTEGER,
    humidity_percent REAL,
    temperature_celsius REAL,
    light_exposure_lux INTEGER,
    chemical_treatment_used TEXT,
    notes TEXT,
    preservation_status TEXT,
    budget_allocated_usd INTEGER,
    funding_source TEXT,
    audit_trail_id INTEGER,
    equipment_used TEXT,
    location_id INTEGER,
    restoration_needed BOOLEAN,
    restoration_plan TEXT,
    compliance_check_passed BOOLEAN,
    final_report_id INTEGER
);

INSERT INTO archival_preservation_log VALUES (1, 70101, 'ControlledAtmosphere', '2158-01-05', '2158-03-10', 80101, 45.0, 22.0, 100, 'None', 'Stable environment maintained', 'Completed', 20000, 'FoundationGrant', 90101, 'HVACSystemA', 1001, 0, NULL, 1, 1101);
INSERT INTO archival_preservation_log VALUES (2, 70102, 'ChemicalStabilization', '2159-05-12', '2159-08-20', 80102, 50.0, 20.0, 150, 'AntiOxidantSolution', 'Minor discoloration addressed', 'Completed', 25000, 'CorporateSponsor', 90102, 'SprayerUnitB', 1002, 1, 'Recoat surface', 1, 1102);
INSERT INTO archival_preservation_log VALUES (3, 70103, 'DigitalScanning', '2160-09-01', '2160-09-15', 80103, 0.0, 0.0, 0, 'None', 'High resolution 3D scan', 'Completed', 15000, 'InternalBudget', 90103, 'ScannerX', 1003, 0, NULL, 1, 1103);

-- Table storing fan engagement survey results
CREATE TABLE fan_engagement_survey (
    id INTEGER PRIMARY KEY,
    survey_date DATE,
    fan_id INTEGER,
    platform TEXT,
    age_group TEXT,
    region TEXT,
    satisfaction_score INTEGER,
    favorite_character_id INTEGER,
    purchase_intent BOOLEAN,
    average_spend_monthly_usd INTEGER,
    content_preference TEXT,
    event_participation_last_year BOOLEAN,
    newsletter_subscription BOOLEAN,
    feedback_text TEXT,
    net_promoter_score INTEGER,
    device_used TEXT,
    time_spent_minutes INTEGER,
    social_sharing_frequency INTEGER,
    loyalty_program_member BOOLEAN,
    referral_code_used TEXT,
    demographic_cluster TEXT
);

INSERT INTO fan_engagement_survey VALUES (1, '2165-02-14', 90101, 'Web', '18-24', 'NorthAmerica', 9, 101, 1, 45, 'Comics', 1, 1, 'Great storyline', 8, 'Desktop', 120, 4, 1, 'REF001', 'ClusterA');
INSERT INTO fan_engagement_survey VALUES (2, '2165-03-20', 90102, 'Mobile', '25-34', 'Europe', 7, 202, 0, 30, 'AnimatedSeries', 0, 0, 'More merch please', 5, 'Smartphone', 80, 2, 0, 'REF002', 'ClusterB');
INSERT INTO fan_engagement_survey VALUES (3, '2165-04-05', 90103, 'App', '35-44', 'Asia', 8, 303, 1, 60, 'VideoGames', 1, 1, 'Love the games', 9, 'Tablet', 150, 6, 1, 'REF003', 'ClusterC');