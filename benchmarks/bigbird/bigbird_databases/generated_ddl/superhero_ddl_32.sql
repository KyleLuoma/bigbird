-- Table: hero_fitness_assessment
CREATE TABLE hero_fitness_assessment (
    id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    assessment_date TEXT,
    height_cm INTEGER,
    weight_kg INTEGER,
    bmi REAL,
    stamina_score INTEGER,
    strength_score INTEGER,
    agility_score INTEGER,
    flexibility_score INTEGER,
    cardio_endurance INTEGER,
    muscle_mass_percent REAL,
    body_fat_percent REAL,
    injury_status TEXT,
    recovery_days_estimate INTEGER,
    trainer_id INTEGER,
    notes TEXT,
    assessment_location TEXT,
    heart_rate_rest INTEGER,
    vo2_max REAL
);
INSERT INTO hero_fitness_assessment VALUES (1,101,'2023-01-15',180,80,24.7,85,90,78,88,95,45.5,12.3,'None',0,201,'GoodProgress','GymA',60,48.5);
INSERT INTO hero_fitness_assessment VALUES (2,102,'2023-02-10',175,78,25.5,80,88,80,85,92,44.0,13.0,'KneeSprain',14,202,'RecoveryPhase','GymB',62,47.0);
INSERT INTO hero_fitness_assessment VALUES (3,103,'2023-03-05',185,85,24.8,88,92,82,90,98,46.2,11.8,'None',0,203,'PeakForm','GymC',58,49.2);

-- Table: multiverse_stability_report
CREATE TABLE multiverse_stability_report (
    id INTEGER PRIMARY KEY,
    branch_name TEXT,
    report_date TEXT,
    stability_index REAL,
    quantum_fluctuation_level REAL,
    dark_energy_variation REAL,
    temporal_anomaly_count INTEGER,
    spatial_anomaly_count INTEGER,
    cosmic_ray_intensity REAL,
    entanglement_density REAL,
    observer_count INTEGER,
    regulator_id INTEGER,
    summary_text TEXT,
    confidence_score REAL,
    revision_number INTEGER,
    approved_by TEXT,
    checksum TEXT,
    data_source TEXT,
    version TEXT,
    notes TEXT
);
INSERT INTO multiverse_stability_report VALUES (1,'PrimeBranch','2023-04-01',0.97,0.12,0.05,2,3,0.8,1.2,1500,301,'StableWithMinorFluctuations',0.95,1,'ChiefRegulator','AB12CD34','SensorArray','v1.0','NoIssues');
INSERT INTO multiverse_stability_report VALUES (2,'EchoBranch','2023-04-15',0.85,0.20,0.10,5,7,1.5,1.8,2300,302,'InstabilityDetected',0.78,2,'SeniorAnalyst','EF56GH78','QuantumLab','v1.1','FurtherMonitoring');
INSERT INTO multiverse_stability_report VALUES (3,'OmegaBranch','2023-05-01',0.99,0.08,0.03,1,1,0.6,0.9,1200,303,'HighlyStable',0.98,1,'LeadScientist','IJ90KL12','DeepSpaceProbe','v1.0','AllClear');

-- Table: cosmic_artifact_acquisition
CREATE TABLE cosmic_artifact_acquisition (
    id INTEGER PRIMARY KEY,
    artifact_name TEXT,
    acquisition_date TEXT,
    origin_universe TEXT,
    discovered_by TEXT,
    acquisition_method TEXT,
    valuation_usd REAL,
    preservation_status TEXT,
    current_location TEXT,
    custodian_id INTEGER,
    dimensions_cm TEXT,
    weight_kg REAL,
    material_composition TEXT,
    energy_signature_level REAL,
    authentication_status TEXT,
    legal_status TEXT,
    insurance_policy_number TEXT,
    transport_method TEXT,
    storage_temperature_c REAL,
    notes TEXT
);
INSERT INTO cosmic_artifact_acquisition VALUES (1,'StarlightScepter','2022-11-20','AlphaVerse','DrNova','DiplomaticTransfer',2500000.00,'Excellent','HallOfOrigins',401,'30x15x5','12.5','UnknownAlloy',4.7,'Verified','Owned','POL12345','ShieldedCrate',-20,'HandledWithCare');
INSERT INTO cosmic_artifact_acquisition VALUES (2,'VoidShard','2023-01-05','BetaRealm','Artemis','ArchaeologicalExcavation',1800000.00,'Good','VaultB',402,'10x10x2','5.0','DarkMatterCore',5.2,'Pending','OnLoan','POL67890','CryogenicPod',-80,'RequiresAnalysis');
INSERT INTO cosmic_artifact_acquisition VALUES (3,'ChronoGlyph','2023-02-18','GammaSector','ProfessorX','TradeAgreement',3200000.00,'Excellent','ChronoWing',403,'25x25x1','8.8','TemporalAlloy',6.1,'Verified','Owned','POL54321','MagneticTransport',5,'DisplayScheduled');

-- Table: fan_subscription_plan
CREATE TABLE fan_subscription_plan (
    id INTEGER PRIMARY KEY,
    fan_id INTEGER,
    plan_name TEXT,
    start_date TEXT,
    end_date TEXT,
    monthly_fee_usd REAL,
    max_downloads_per_month INTEGER,
    exclusive_content_access TEXT,
    loyalty_points INTEGER,
    auto_renew TEXT,
    payment_method TEXT,
    billing_cycle TEXT,
    discount_rate_percent REAL,
    referral_code TEXT,
    status TEXT,
    last_payment_date TEXT,
    next_billing_date TEXT,
    notes TEXT,
    preferred_language TEXT,
    communication_opt_in TEXT
);
INSERT INTO fan_subscription_plan VALUES (1,1001,'Gold','2023-01-01','2023-12-31',9.99,100,'Yes',1500,'Yes','CreditCard','Monthly',10.0,'REF001','Active','2023-03-01','2023-04-01','NoIssues','English','Yes');
INSERT INTO fan_subscription_plan VALUES (2,1002,'Silver','2023-02-15','2023-08-14',5.99,50,'No',800,'Yes','PayPal','Monthly',5.0,'REF002','Active','2023-03-15','2023-04-15','PendingUpgrade','Spanish','Yes');
INSERT INTO fan_subscription_plan VALUES (3,1003,'Bronze','2023-03-10','2023-09-09',3.99,20,'No',300,'No','DebitCard','Quarterly',0.0,'REF003','Inactive','2023-02-10','2023-05-10','Cancelled','French','No');

-- Table: interstellar_trade_log
CREATE TABLE interstellar_trade_log (
    id INTEGER PRIMARY KEY,
    trade_route_id INTEGER,
    departure_date TEXT,
    arrival_date TEXT,
    cargo_type TEXT,
    cargo_quantity INTEGER,
    origin_planet TEXT,
    destination_planet TEXT,
    carrier_ship_id INTEGER,
    captain_name TEXT,
    freight_cost_usd REAL,
    customs_fee_usd REAL,
    insurance_cost_usd REAL,
    total_cost_usd REAL,
    trade_status TEXT,
    compliance_flag TEXT,
    regulator_id INTEGER,
    notes TEXT,
    route_efficiency_score REAL,
    fuel_consumed_tons REAL
);
INSERT INTO interstellar_trade_log VALUES (1,501,'2023-01-05','2023-01-20','Minerals',200,'Terra','Zyra',701,'CaptainRex',50000.00,1500.00,2000.00,53500.00,'Completed','Pass',801,'SmoothVoyage',0.92,120.5);
INSERT INTO interstellar_trade_log VALUES (2,502,'2023-02-10','2023-02-25','Technology',50,'NovaPrime','Lumen',702,'CaptainAra',75000.00,2500.00,3000.00,80500.00,'Delayed','Flagged',802,'MinorIssues',0.78,150.2);
INSERT INTO interstellar_trade_log VALUES (3,503,'2023-03-15','2023-04-01','Pharmaceuticals',100,'Eden','Orion',703,'CaptainZen',60000.00,1800.00,2500.00,64300.00,'Completed','Pass',803,'NoIncidents',0.88,130.0);

-- Table: metahuman_genetic_study
CREATE TABLE metahuman_genetic_study (
    id INTEGER PRIMARY KEY,
    subject_hero_id INTEGER,
    study_start_date TEXT,
    study_end_date TEXT,
    genome_sequence_id TEXT,
    mutation_type TEXT,
    power_expression_level REAL,
    sample_source TEXT,
    lab_technician_id INTEGER,
    analysis_method TEXT,
    result_summary TEXT,
    publication_id INTEGER,
    ethical_approval_status TEXT,
    funding_source TEXT,
    cost_usd REAL,
    data_repository_link TEXT,
    confidentiality_level TEXT,
    notes TEXT,
    review_status TEXT,
    revision_number INTEGER
);
INSERT INTO metahuman_genetic_study VALUES (1,101,'2022-06-01','2022-12-01','SEQ001','X-Flux',8.5,'Blood',901,'NGS','PositiveCorrelation',1001,'Approved','GovGrant',250000.00,'http://repo.org/seq001','High','NoIssues','PeerReviewed',1);
INSERT INTO metahuman_genetic_study VALUES (2,102,'2022-07-15','2023-01-15','SEQ002','Y-Shift',6.2,'Skin',902,'Microarray','Inconclusive',1002,'Approved','Corporate',180000.00,'http://repo.org/seq002','Medium','FurtherTesting','UnderReview',2);
INSERT INTO metahuman_genetic_study VALUES (3,103,'2022-08-20','2023-02-20','SEQ003','Z-Vector',9.1,'Hair',903,'CRISPR','StrongExpression',1003,'Approved','Philanthropy',300000.00,'http://repo.org/seq003','High','Confirmed','Published',1);

-- Table: universe_worldbuilding_concept
CREATE TABLE universe_worldbuilding_concept (
    id INTEGER PRIMARY KEY,
    concept_name TEXT,
    description_text TEXT,
    creation_date TEXT,
    creator_staff_id INTEGER,
    related_universe_id INTEGER,
    category TEXT,
    complexity_score REAL,
    draft_version TEXT,
    final_version TEXT,
    approval_status TEXT,
    revision_number INTEGER,
    tags TEXT,
    reference_document_id INTEGER,
    priority_level INTEGER,
    estimated_implementation_year INTEGER,
    associated_story_arc_id INTEGER,
    notes TEXT,
    status TEXT,
    last_modified_date TEXT
);
INSERT INTO universe_worldbuilding_concept VALUES (1,'QuantumRealm','A pocket dimension governed by quantum rules','2023-01-10',1101,1,'Dimension',9.2,'v0.9','v1.0','Pending',0,'Quantum,Realm','DOC100','High',2025,201,'NeedsReview','Draft','2023-02-01');
INSERT INTO universe_worldbuilding_concept VALUES (2,'SolarFlareEvent','A periodic solar flare affecting powers','2023-02-12',1102,1,'Event',7.5,'v1.0','v1.1','Approved',1,'Solar,Flare','DOC101','Medium',2024,202,'Reviewed','Final','2023-03-05');
INSERT INTO universe_worldbuilding_concept VALUES (3,'ArcaneTech','Technology powered by mystic energies','2023-03-08',1103,2,'Technology',8.3,'v0.8','v0.9','Rejected',0,'Arcane,Tech','DOC102','Low',2026,203,'RevisionNeeded','Rejected','2023-04-10');

-- Table: corporate_sponsorship_agreement_detail
CREATE TABLE corporate_sponsorship_agreement_detail (
    id INTEGER PRIMARY KEY,
    corporation_name TEXT,
    agreement_start_date TEXT,
    agreement_end_date TEXT,
    sponsorship_level TEXT,
    monetary_amount_usd REAL,
    media_exposure_hours INTEGER,
    event_access_rights TEXT,
    branding_guidelines TEXT,
    compliance_audit_flag TEXT,
    legal_contact_id INTEGER,
    payment_schedule TEXT,
    renewal_option TEXT,
    termination_clause TEXT,
    notes TEXT,
    approved_by TEXT,
    agreement_status TEXT,
    audit_date TEXT,
    contract_document_id TEXT,
    responsible_manager_id INTEGER
);
INSERT INTO corporate_sponsorship_agreement_detail VALUES (1,'TechNova','2023-01-01','2025-12-31','Platinum',2000000.00,500,'Full','StandardBrand','Pass',901,'Quarterly','Yes','30DaysNotice','NoIssues','ChiefLegal','Active','2023-01-15','DOC200','1101');
INSERT INTO corporate_sponsorship_agreement_detail VALUES (2,'EcoGoods','2023-03-01','2024-02-28','Gold',750000.00,200,'Limited','EcoBrand','Pass',902,'Monthly','No','60DaysNotice','PendingRenewal','SeniorLegal','Active','2023-03-05','DOC201','1102');
INSERT INTO corporate_sponsorship_agreement_detail VALUES (3,'StarMedia','2022-06-15','2023-06-14','Silver',300000.00,120,'Partial','MediaBrand','Flagged',903,'Annually','Yes','90DaysNotice','ComplianceReview','LegalTeam','Expired','2023-06-01','DOC202','1103');

-- Table: digital_content_rights_management
CREATE TABLE digital_content_rights_management (
    id INTEGER PRIMARY KEY,
    content_title TEXT,
    content_type TEXT,
    registration_date TEXT,
    rights_holder_id INTEGER,
    exclusive_region TEXT,
    license_start_date TEXT,
    license_end_date TEXT,
    royalty_rate_percent REAL,
    revenue_share_percent REAL,
    distribution_platform TEXT,
    drm_enabled_flag TEXT,
    encryption_key_id TEXT,
    usage_limit INTEGER,
    access_credentials TEXT,
    audit_trail_id INTEGER,
    compliance_status TEXT,
    notes TEXT,
    last_audit_date TEXT,
    version_number TEXT
);
INSERT INTO digital_content_rights_management VALUES (1,'InfinitySaga','Video','2023-01-20',1201,'Global','2023-02-01','2025-01-31',12.5,7.5,'StreamX','Yes','KEY001',1000,'CredA','5001','Compliant','NoIssues','2023-03-01','v1.0');
INSERT INTO digital_content_rights_management VALUES (2,'HeroicChronicles','Audio','2023-02-10',1202,'NA','2023-03-01','2024-02-28',10.0,5.0,'PodCastY','No','KEY002',500,'CredB','5002','Pending','AwaitingApproval','2023-04-01','v0.9');
INSERT INTO digital_content_rights_management VALUES (3,'VillainVault','eBook','2023-03-05',1203,'EU','2023-04-01','2026-03-31',8.0,6.0','ReadNow','Yes','KEY003',2000,'CredC','5003','Compliant','Verified','2023-05-01','v1.1');

-- Table: event_venue_operations
CREATE TABLE event_venue_operations (
    id INTEGER PRIMARY KEY,
    venue_id INTEGER,
    event_id INTEGER,
    operation_date TEXT,
    staff_on_duty INTEGER,
    security_level TEXT,
    cleaning_status TEXT,
    lighting_setup TEXT,
    sound_setup TEXT,
    capacity_used INTEGER,
    ticket_scanned_count INTEGER,
    incident_reported_flag TEXT,
    medical_staff_present TEXT,
    catering_status TEXT,
    parking_utilization_percent REAL,
    waste_management_status TEXT,
    energy_consumption_kwh REAL,
    notes TEXT,
    compliance_check_passed TEXT,
    supervisor_id INTEGER
);
INSERT INTO event_venue_operations VALUES (1,301,401,'2023-04-10',25,'High','Complete','LED','Surround','1500','1490','No','Yes','Full',85.0,'Recycled',12000.5,'AllGood','Yes',601);
INSERT INTO event_venue_operations VALUES (2,302,402,'2023-05-12',30,'Medium','Partial','Spotlight','Stereo','2000','1985','Yes','No','Limited',70.0,'Mixed',15000.0,'MinorIncidents','No',602);
INSERT INTO event_venue_operations VALUES (3,303,403,'2023-06-15',20,'Low','Complete','Ambient','Mono','800','800','No','Yes','Full',95.0,'Compost',8000.75,'SmoothRun','Yes',603);