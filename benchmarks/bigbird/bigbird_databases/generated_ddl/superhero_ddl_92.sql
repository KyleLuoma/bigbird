-- Table: alien_observation_station
CREATE TABLE alien_observation_station (
    id INTEGER PRIMARY KEY,
    station_name TEXT,
    planet TEXT,
    galaxy TEXT,
    coordinates TEXT,
    launch_date DATE,
    status TEXT,
    observer_lead TEXT,
    instrument_count INTEGER,
    data_volume_tb DECIMAL(10,2),
    power_source TEXT,
    communication_band TEXT,
    atmospheric_composition TEXT,
    surface_temp_c DECIMAL(5,2),
    radiation_level_msv DECIMAL(5,2),
    maintenance_cycle_days INTEGER,
    staff_on_site INTEGER,
    funding_source TEXT,
    budget_million DECIMAL(12,2),
    operational_status TEXT,
    notes TEXT
);

INSERT INTO alien_observation_station VALUES (1,'DeepSpaceOne','Xenon','Andromeda','RA12Dec34','2030-05-12','Active','DrKhan',12,3.50,'Fusion','XBand','NitrogenOxygen',-120.50,0.85,180,25,'Government',150.00,'Online','Initial deployment');
INSERT INTO alien_observation_station VALUES (2,'NovaOutpost','Orion','MilkyWay','RA45Dec78','2025-11-03','Standby','DrLiu',8,1.20,'Solar','SBand','CarbonDioxide',15.30,0.40,365,10,'Private',45.75,'Offline','Awaiting crew');
INSERT INTO alien_observation_station VALUES (3,'GalaxyEdge','Vega','Triangulum','RA22Dec11','2040-02-20','Decommissioned','DrMorris',5,0.80,'Antimatter','KBand','Helium',-5.00,0.10,730,5,'Consortium',200.00,'Retired','Historical data archived');

-- Table: quantum_energy_trade_agreement
CREATE TABLE quantum_energy_trade_agreement (
    agreement_id INTEGER PRIMARY KEY,
    trader_entity TEXT,
    counterparty_entity TEXT,
    energy_type TEXT,
    trade_volume_pev DECIMAL(15,3),
    unit_price_credits DECIMAL(12,4),
    contract_start DATE,
    contract_end DATE,
    delivery_method TEXT,
    jurisdiction TEXT,
    compliance_status TEXT,
    escrow_account TEXT,
    arbitration_clause TEXT,
    renewal_option TEXT,
    confidentiality_level TEXT,
    signature_authority TEXT,
    amendment_count INTEGER,
    last_amended DATE,
    termination_notice_days INTEGER,
    dispute_resolution_mechanism TEXT,
    governing_law TEXT,
    notes TEXT
);

INSERT INTO quantum_energy_trade_agreement VALUES (101,'QuantumCorp','StarAlliance','QuarkFlux',125000.123,0.0456,'2035-01-01','2037-12-31','WarpTransfer','Interstellar','Compliant','QC-ESC-001','StandardArb','AutoRenew','High','CEO_QC',2,'2036-06-15',30,'Mediation','AndromedanCode','First contract');
INSERT INTO quantum_energy_trade_agreement VALUES (102,'NovaEnergy','GalacticUnion','PhotonPulse',50000.000,0.0875,'2032-04-10','2035-04-09','PhotonRelay','MilkyWay','Pending','NV-ESC-045','FastArb','NoRenew','Medium','COO_Nova',0,NULL,45,'Arbitration','TerranLaw','Pending approval');
INSERT INTO quantum_energy_trade_agreement VALUES (103,'HyperFlux','CosmicConsortium','ScalarWave',200000.500,0.0321,'2040-07-20','2045-07-19','ScalarGate','Triangulum','Compliant','HF-ESC-777','ExtendedArb','Renewable','Low','President_HF',1,'2042-01-01',60,'Negotiation','QuasarTreaty','Long term partnership');

-- Table: mythic_artifact_loan_record
CREATE TABLE mythic_artifact_loan_record (
    loan_id INTEGER PRIMARY KEY,
    artifact_name TEXT,
    origin_culture TEXT,
    loaning_institution TEXT,
    borrowing_institution TEXT,
    loan_start DATE,
    loan_end DATE,
    transport_method TEXT,
    insurance_value_credits DECIMAL(12,2),
    condition_at_loan TEXT,
    condition_at_return TEXT,
    restoration_required BOOLEAN,
    curator_in_charge TEXT,
    security_level TEXT,
    climate_control TEXT,
    display_location TEXT,
    loan_purpose TEXT,
    documentation_status TEXT,
    customs_clearance BOOLEAN,
    handling_instructions TEXT,
    notes TEXT
);

INSERT INTO mythic_artifact_loan_record VALUES (5001,'EternalScepter','Atlantean','AtlantisMuseum','GlobalHeritage','2031-09-15','2032-09-14','CryogenicContainer',2500000.00,'Excellent','Excellent',FALSE,'DrMira','High','Controlled','MainHall','Exhibition','Complete',TRUE,'HandleWithGloves','First loan');
INSERT INTO mythic_artifact_loan_record VALUES (5002,'ChronoOrb','ChronoDynasty','ChronoArchive','TimeInstitute','2028-03-01','2029-02-28','TemporalSphere',1800000.00,'Good','Good',TRUE,'DrZen','Medium','Stabilized','ResearchLab','Study','Pending',TRUE,'LimitExposure','Requires periodic check');
INSERT INTO mythic_artifact_loan_record VALUES (5003,'CelestialBlade','Luminara','LuminaraTemple','StarMuseum','2035-05-20','2036-05-19','LightVault',3200000.00,'Fair','Good',FALSE,'DrLara','VeryHigh','Vacuum','SpecialExhibit','CulturalExchange','Complete',TRUE,'NoMetalContact','Awaiting next exhibition');

-- Table: interdimensional_gate_log
CREATE TABLE interdimensional_gate_log (
    log_id INTEGER PRIMARY KEY,
    gate_identifier TEXT,
    activation_timestamp TIMESTAMP,
    deactivation_timestamp TIMESTAMP,
    source_dimension TEXT,
    target_dimension TEXT,
    energy_consumption_megajoules DECIMAL(10,2),
    stability_rating INTEGER,
    anomalies_detected BOOLEAN,
    operator_name TEXT,
    safety_protocol_version TEXT,
    maintenance_cycle_days INTEGER,
    last_maintenance DATE,
    error_code TEXT,
    resolution_notes TEXT,
    status TEXT,
    notes TEXT
);

INSERT INTO interdimensional_gate_log VALUES (9001,'GateA-Alpha','2033-06-01 08:00:00','2033-06-01 10:30:00','DimensionX','DimensionY',1500.75,92,FALSE,'OpsJenna','v2.3',30,'2033-05-20','None','Successful transit','Active','Routine activation');
INSERT INTO interdimensional_gate_log VALUES (9002,'GateB-Beta','2034-11-12 14:15:00','2034-11-12 14:45:00','DimensionY','DimensionZ',2000.00,78,TRUE,'OpsRavi','v2.5',45,'2034-10-30','E101','Stabilized after flux','Active','Minor anomaly corrected');
INSERT INTO interdimensional_gate_log VALUES (9003,'GateC-Gamma','2035-02-20 22:00:00','2035-02-21 01:00:00','DimensionZ','DimensionX',2500.25,65,TRUE,'OpsLiu','v3.0',60,'2035-02-10','E202','Recalibrated core','Active','Significant fluctuation noted');

-- Table: hero_fitness_assessment
CREATE TABLE hero_fitness_assessment (
    assessment_id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    assessment_date DATE,
    height_cm INTEGER,
    weight_kg INTEGER,
    bmi DECIMAL(4,1),
    max_pushups INTEGER,
    max_pullups INTEGER,
    sprint_100m_seconds DECIMAL(4,2),
    endurance_minutes INTEGER,
    flexibility_score INTEGER,
    vision_acuity TEXT,
    hearing_acuity TEXT,
    reaction_time_ms INTEGER,
    strength_score INTEGER,
    agility_score INTEGER,
    stamina_score INTEGER,
    injury_history TEXT,
    nutrition_plan TEXT,
    trainer_name TEXT,
    notes TEXT,
    FOREIGN KEY (hero_id) REFERENCES superhero(id)
);

INSERT INTO hero_fitness_assessment VALUES (301,1,'2032-07-15',185,90,26.3,150,80,10.45,45,85,'20/20','Normal',180,88,92,90,'None','HighProtein','CoachKane','Peak condition');
INSERT INTO hero_fitness_assessment VALUES (302,2,'2033-04-20',170,68,23.5,100,60,11.20,38,78,'20/15','Normal',200,80,85,80,'SprainedAnkle','BalancedDiet','CoachMia','Recovering well');
INSERT INTO hero_fitness_assessment VALUES (303,3,'2034-01-05',190,95,26.3,130,70,10.80,50,90,'20/20','Enhanced','170',90,95,95,'None','Keto','CoachLee','Exceptional stamina');

-- Table: villain_network_activity
CREATE TABLE villain_network_activity (
    activity_id INTEGER PRIMARY KEY,
    villain_id INTEGER,
    network_name TEXT,
    activity_type TEXT,
    location TEXT,
    start_timestamp TIMESTAMP,
    end_timestamp TIMESTAMP,
    resources_allocated_credits DECIMAL(12,2),
    operatives_involved INTEGER,
    success_probability_percent INTEGER,
    security_risk_level TEXT,
    detection_status TEXT,
    countermeasures_deployed TEXT,
    notes TEXT,
    FOREIGN KEY (villain_id) REFERENCES villain(id)
);

INSERT INTO villain_network_activity VALUES (8001,10,'ShadowCircle','Sabotage','MetroCity','2035-03-10 22:00:00','2035-03-10 23:15:00',500000.00,12,85,'High','Undetected','EMPShield','Power grid disruption');
INSERT INTO villain_network_activity VALUES (8002,11,'CrimsonSyndicate','Extortion','HarborPort','2034-11-05 09:30:00','2034-11-05 10:00:00',250000.00,5,70,'Medium','PartiallyDetected','DronePatrol','Cargo seizure');
INSERT INTO villain_network_activity VALUES (8003,12,'ObsidianCouncil','DataHeist','QuantumVault','2036-06-22 02:45:00','2036-06-22 04:00:00',750000.00,8,90,'Critical','Undetected','QuantumFirewall','Sensitive data exfiltrated');

-- Table: cosmic_event_schedule
CREATE TABLE cosmic_event_schedule (
    event_id INTEGER PRIMARY KEY,
    event_name TEXT,
    event_type TEXT,
    start_date DATE,
    end_date DATE,
    peak_observation_date DATE,
    observable_region TEXT,
    magnitude DECIMAL(4,2),
    anticipated_radiation_msv DECIMAL(5,2),
    required_equipment TEXT,
    lead_scientist TEXT,
    funding_source TEXT,
    budget_million DECIMAL(10,2),
    coordination_agency TEXT,
    data_release_date DATE,
    notes TEXT
);

INSERT INTO cosmic_event_schedule VALUES (4001,'SupernovaX','Supernova','2037-09-01','2037-09-10','2037-09-05','SectorA','9.5',1.20,'SpaceTelescope','DrKwan','NASA','120.00','SpaceAgency','2038-01-15','High priority observation');
INSERT INTO cosmic_event_schedule VALUES (4002,'GammaBurstY','GammaRayBurst','2035-04-12','2035-04-14','2035-04-13','SectorB','7.8',2.50,'GammaArray','DrLiao','ESA','80.00','AstroConsortium','2035-10-01','Rapid response needed');
INSERT INTO cosmic_event_schedule VALUES (4003,'NebulaExpansionZ','Nebula','2039-02-20','2039-03-01','2039-02-25','SectorC','5.2',0.30,'InfraredArray','DrMendez','JAXA','60.00','IntergalacticObservatory','2040-06-30','Long term monitoring');

-- Table: renewable_energy_project_funding
CREATE TABLE renewable_energy_project_funding (
    funding_id INTEGER PRIMARY KEY,
    project_name TEXT,
    energy_type TEXT,
    capacity_mw INTEGER,
    location TEXT,
    start_year INTEGER,
    expected_completion_year INTEGER,
    total_budget_million DECIMAL(12,2),
    government_funding_percent INTEGER,
    private_investment_percent INTEGER,
    lead_contractor TEXT,
    environmental_impact_score INTEGER,
    carbon_reduction_tonnes INTEGER,
    financing_institution TEXT,
    loan_term_years INTEGER,
    interest_rate_percent DECIMAL(4,2),
    status TEXT,
    approval_date DATE,
    notes TEXT
);

INSERT INTO renewable_energy_project_funding VALUES (6001,'SolarHorizon','Solar',500,'DesertPlateau',2024,2028,350.00,40,60,'SolarBuildCo',85,120000,'GreenBank',10,3.75,'UnderConstruction','2023-11-10','Phase 1 completed');
INSERT INTO renewable_energy_project_funding VALUES (6002,'WindCrest','Wind',800,'CoastalCliffs',2025,2030,620.00,30,70,'WindDynamics',78,200000,'EcoFund',12,4.10,'Planned','2024-02-15','Environmental review pending');
INSERT INTO renewable_energy_project_funding VALUES (6003,'HydroPulse','Hydro',450,'RiverValley',2023,2027,480.00,50,50,'AquaEngineers',90,150000,'WaterFinance',15,3.50,'Active','2022-08-01','Dam reinforcement scheduled');

-- Table: metahuman_genetic_profile
CREATE TABLE metahuman_genetic_profile (
    profile_id INTEGER PRIMARY KEY,
    metahuman_id INTEGER,
    genome_sequence TEXT,
    mutation_type TEXT,
    power_affinity TEXT,
    expression_level_percent INTEGER,
    epigenetic_marker TEXT,
    carrier_status BOOLEAN,
    sample_collection_date DATE,
    lab_technician TEXT,
    analysis_method TEXT,
    confidence_score INTEGER,
    notes TEXT,
    FOREIGN KEY (metahuman_id) REFERENCES superhero(id)
);

INSERT INTO metahuman_genetic_profile VALUES (701,1,'ATGCGTACGTAGCTAG','GeneDuplication','Telekinesis',85,'MethylationX',FALSE,'2030-05-20','TechRosa','NGS','92','Stable expression');
INSERT INTO metahuman_genetic_profile VALUES (702,2,'CGTATGACCTGAACTG','PointMutation','Invisibility',70,'AcetylationY',TRUE,'2031-09-12','TechMing','PCR','88','Carrier of recessive trait');
INSERT INTO metahuman_genetic_profile VALUES (703,3,'GGCATAGCTTGGACAA','ChromosomalTranslocation','Regeneration',95,'PhosphorylationZ',FALSE,'2029-12-01','TechAlia','Microarray','97','High regenerative capacity');

-- Table: galaxy_diplomacy_council_meeting
CREATE TABLE galaxy_diplomacy_council_meeting (
    meeting_id INTEGER PRIMARY KEY,
    council_name TEXT,
    session_date DATE,
    host_planet TEXT,
    participating_factions TEXT,
    agenda_summary TEXT,
    resolution_outcome TEXT,
    minutes_recorded_by TEXT,
    duration_minutes INTEGER,
    security_level TEXT,
    broadcast_status TEXT,
    diplomatic_notes TEXT,
    follow_up_actions TEXT,
    budget_allocation_credits DECIMAL(12,2),
    external_observers TEXT,
    confidentiality_level TEXT,
    meeting_location TEXT,
    notes TEXT
);

INSERT INTO galaxy_diplomacy_council_meeting VALUES (2001,'IntergalacticCouncil','2035-07-14','ZetaPrime','Federation|Alliance|Consortium','TradeRoutes,SecurityPacts','AgreementsSigned','SecAvery',180,'High','Closed','Positive cooperation','ImplementNewTreaties',5000000.00,'ObserverA|ObserverB','Restricted','GrandHall','Successful session');
INSERT INTO galaxy_diplomacy_council_meeting VALUES (2002,'CelestialSummit','2036-03-22','OmegaStation','Empire|RebelCoalition','TerritorialDispute','MediationFailed','SecTomas',240,'Medium','LiveStream','Tensions high','ScheduleMediation',3000000.00,'ObserverC','Confidential','ConferenceRoom','Negotiations stalled');
INSERT INTO galaxy_diplomacy_council_meeting VALUES (2003,'UniversalAlliance','2037-11-05','NovaTerra','Alliance|NeutralStates','ResourceSharing','ConsensusReached','SecLina',150,'Low','Public','Broad agreement','AllocateResources',4000000.00,'ObserverD|ObserverE','Public','CouncilChamber','Positive outlook');