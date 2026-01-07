-- Log of observations made of nebulae across the galaxy
CREATE TABLE nebula_observation_log
(
    id                     INTEGER PRIMARY KEY,
    nebula_name            TEXT,
    sector_code            TEXT,
    observation_timestamp  TEXT,          -- ISO 8601 datetime string
    telescope_id           INTEGER,
    wavelength_nm          INTEGER,
    flux_value             NUMERIC,
    image_file             TEXT,
    observer_name          TEXT,
    weather_conditions     TEXT,
    seeing_arcseconds      NUMERIC,
    exposure_seconds       INTEGER,
    instrument_mode        TEXT,
    data_quality           TEXT,
    processing_software    TEXT,
    calibration_status     TEXT,
    notes                  TEXT,
    latitude_deg           NUMERIC,
    longitude_deg          NUMERIC,
    altitude_m             INTEGER,
    signal_to_noise        NUMERIC,
    observation_status     TEXT
);

INSERT INTO nebula_observation_log VALUES (1,'Orion Nebula','A12','2025-03-14T22:15:00',101,550,1.23,'orion_001.fits','DrSmith','Clear','0.8',3600,'Imaging','High','AstroReduce','Calibrated','First detection of filament','-5.5','151.2',2500,45.6,'Completed');
INSERT INTO nebula_observation_log VALUES (2,'Crab Nebula','B07','2025-04-02T03:40:00',102,800,0.87,'crab_007.fits','DrLee','Partly Cloudy','1.2',1800,'Spectroscopy','Medium','SpecFit','Pending','Spectral lines noted','22.0','-73.5',1200,30.1,'Pending');
INSERT INTO nebula_observation_log VALUES (3,'Eagle Nebula','C03','2025-05-19T19:05:00',103,650,2.05,'eagle_023.fits','DrPatel','Clear','0.6',5400,'Imaging','Very High','NebulaProc','Calibrated','Pillars morphology confirmed','34.1','-118.4',3200,78.3','Completed');

-- Periodic stability reports for known wormholes
CREATE TABLE wormhole_stability_report
(
    id                     INTEGER PRIMARY KEY,
    wormhole_id            TEXT,
    location_sector        TEXT,
    report_date            TEXT,
    stability_index        NUMERIC,
    tidal_force_g          NUMERIC,
    radiation_level_sv     NUMERIC,
    mass_flow_rate_kg_s    NUMERIC,
    entropy_measure        NUMERIC,
    quantum_fluctuation    NUMERIC,
    observed_by            TEXT,
    instrument_suite       TEXT,
    calibration_status     TEXT,
    notes                  TEXT,
    temperature_k          NUMERIC,
    pressure_pascal        NUMERIC,
    magnetic_field_tesla   NUMERIC,
    gravitational_wave_amp NUMERIC,
    data_quality           TEXT,
    verified               BOOLEAN,
    follow_up_required     BOOLEAN,
    next_review_date       TEXT,
    anomaly_detected      BOOLEAN,
    report_status          TEXT
);

INSERT INTO wormhole_stability_report VALUES (1,'WH-Alpha','Sector-9','2025-01-10',0.92,3.1,0.45,1250,0.07,0.002,'DrKhan','WH-Scanner','Calibrated','Stable within limits',2100,101325,0.003,0.0005,'Good',TRUE,FALSE,'2025-07-10',FALSE,'Closed');
INSERT INTO wormhole_stability_report VALUES (2,'WH-Beta','Sector-12','2025-02-15',0.68,5.6,1.2,980,0.12,0.008,'DrMiller','WH-Advanced','Pending','Fluctuations observed',2150,102500,0.005,0.0011,'Moderate',FALSE,TRUE,'2025-08-20',TRUE,'Open');
INSERT INTO wormhole_stability_report VALUES (3,'WH-Gamma','Sector-4','2025-03-22',0.81,4.0,0.78,1100,0.09,0.005,'DrNguyen','WH-Standard','Calibrated','No anomalies',2120,101800,0.004,0.0008,'Good',TRUE,FALSE,'2025-09-05',FALSE,'Closed');

-- Records of galactic taxation events for interstellar corporations
CREATE TABLE galactic_taxation_record
(
    id                     INTEGER PRIMARY KEY,
    corporation_name       TEXT,
    tax_period_start       TEXT,
    tax_period_end         TEXT,
    tax_assessment_id      TEXT,
    assessed_amount_credits NUMERIC,
    paid_amount_credits    NUMERIC,
    payment_due_date       TEXT,
    payment_status         TEXT,
    audit_flag             BOOLEAN,
    audit_start_date       TEXT,
    audit_end_date         TEXT,
    auditor_name           TEXT,
    jurisdiction_zone      TEXT,
    tax_code               TEXT,
    remarks                TEXT,
    filing_date            TEXT,
    late_fee_applied       BOOLEAN,
    interest_rate_percent  NUMERIC,
    currency               TEXT,
    exchange_rate_to_credits NUMERIC,
    notification_sent      BOOLEAN,
    compliance_score       NUMERIC,
    record_status          TEXT
);

INSERT INTO galactic_taxation_record VALUES (1,'StarShip Corp','2024-01-01','2024-12-31','TX-001',1500000,1500000,'2025-03-01','Paid',FALSE,NULL,NULL,NULL,'Sector-Alpha','GTR-01','On time','2025-01-15',FALSE,0,'Credits',1,'TRUE',95,'Archived');
INSERT INTO galactic_taxation_record VALUES (2,'Nebula Mining Ltd','2024-01-01','2024-12-31','TX-002',2300000,2100000,'2025-04-15','Partial',TRUE,'2025-02-10','2025-03-05','AuditorZ','Sector-Beta','GTR-02','Late payment',NULL,TRUE,3.5,'Credits',1,'TRUE',78,'Open');
INSERT INTO galactic_taxation_record VALUES (3,'Quantum Labs','2024-01-01','2024-12-31','TX-003',500000,500000,'2025-02-28','Paid',FALSE,NULL,NULL,NULL,'Sector-Gamma','GTR-03','No issues','2025-02-01',FALSE,0,'Credits',1,'TRUE',88,'Closed');

-- Results from quantum particle experiments conducted at research labs
CREATE TABLE quantum_particle_experiment
(
    id                     INTEGER PRIMARY KEY,
    experiment_name        TEXT,
    lab_identifier         TEXT,
    start_date             TEXT,
    end_date               TEXT,
    particle_type          TEXT,
    energy_gev              NUMERIC,
    beam_intensity_ma      NUMERIC,
    detector_model         TEXT,
    data_volume_gb         NUMERIC,
    cooling_temperature_k  NUMERIC,
    magnetic_field_tesla   NUMERIC,
    vacuum_pressure_pa     NUMERIC,
    result_status          TEXT,
    primary_observation    TEXT,
    secondary_observation  TEXT,
    analysis_software      TEXT,
    lead_scientist         TEXT,
    funding_source         TEXT,
    grant_number           TEXT,
    publication_doi        TEXT,
    peer_reviewed          BOOLEAN,
    notes                  TEXT,
    data_access_url        TEXT,
    experiment_version     TEXT,
    safety_incident_reported BOOLEAN
);

INSERT INTO quantum_particle_experiment VALUES (1,'HiggsSearch','LAB-001','2025-01-05','2025-01-20','Boson',13.6,0.5,'CMS','1500','1.9','3.2','5e-9','Completed','Signal observed','Background low','Root','DrKovacs','NationalScience','NS-2024-01','10.1234/abcde','TRUE','No issues','http://data.lab001/higgs','v1.0',FALSE);
INSERT INTO quantum_particle_experiment VALUES (2,'NeutrinoOscillation','LAB-005','2025-02-10','2025-03-01','Neutrino',0.002,0.1,'IceCube','800','0.0','0','Operational','Oscillation pattern','Noise high','Python','DrSanchez','GlobalFund','GF-2023-07','10.5678/fghij','FALSE','Further analysis required','http://data.lab005/neutrino','v2.1',FALSE);
INSERT INTO quantum_particle_experiment VALUES (3,'DarkMatterSearch','LAB-009','2025-03-15','2025-04-05','WIMP',45.0,0.8,'LUX','2000','0.02','2e-10','In Progress','No candidate events','Calibration ongoing','Matlab','DrLee','SpaceAgency','SA-2025-03','10.9012/klmno','FALSE','Awaiting final run','http://data.lab009/darkmatter','v0.9',TRUE);

-- Registry of stellar heritage sites recognized across the galaxy
CREATE TABLE stellar_heritage_site
(
    id                     INTEGER PRIMARY KEY,
    site_name              TEXT,
    coordinates_ra         NUMERIC,
    coordinates_dec        NUMERIC,
    discovery_date         TEXT,
    discovered_by          TEXT,
    heritage_category      TEXT,
    protection_status      TEXT,
    managing_authority     TEXT,
    designation_year       INTEGER,
    significance_level    TEXT,
    physical_description   TEXT,
    estimated_age_myr      NUMERIC,
    notable_features       TEXT,
    visitor_access_allowed BOOLEAN,
    access_restriction     TEXT,
    annual_visitors_count  INTEGER,
    research_projects      TEXT,
    funding_amount_credits NUMERIC,
    last_inspection_date   TEXT,
    next_review_date       TEXT,
    preservation_plan      TEXT,
    public_outreach_program TEXT,
    site_coordinates_galactic TEXT,
    notes                  TEXT,
    record_status          TEXT
);

INSERT INTO stellar_heritage_site VALUES (1,'Alpha Cluster','15.3','-25.6','2023-07-12','DrYates','Archaeological','Protected','GalacticCouncil','2024','High','Dense star cluster with ancient remnants','5000','Pulsar array','TRUE','None',12000,'ClusterSurvey','500000','2025-01-10','2026-01-10','Stabilization','OpenDays','G-12-34','Well preserved','Active');
INSERT INTO stellar_heritage_site VALUES (2,'Beta Nebula','210.5','12.3','2022-11-03','DrKhan','Scientific','Monitored','StellarHeritageOrg','2023','Medium','Nebula with rare gas composition','300','Ionized filaments','FALSE','Research only',0,'GasCompositionStudy','250000','2024-12-20','2025-12-20','Non-intervention','VirtualTour','G-45-67','Access restricted','Active');
INSERT INTO stellar_heritage_site VALUES (3,'Gamma Ruins','85.0','-45.9','2021-03-22','DrLee','Cultural','Protected','AncientCivilizationsDept','2022','High','Ruins of extinct civilization','2000','Obsidian monoliths','TRUE','Guided tours',3500,'RuinsExcavation','750000','2025-05-05','2026-05-05','Conservation','MuseumExhibit','G-89-01','Ongoing study','Active');

-- Details of hyperdimensional transport hubs facilitating interdimensional travel
CREATE TABLE hyperdimensional_transport_hub
(
    id                     INTEGER PRIMARY KEY,
    hub_name               TEXT,
    hub_code               TEXT,
    location_sector        TEXT,
    activation_date        TEXT,
    operating_status       TEXT,
    capacity_per_hour      INTEGER,
    dimensional_range_start INTEGER,
    dimensional_range_end   INTEGER,
    energy_consumption_mw  NUMERIC,
    coolant_type           TEXT,
    safety_protocol_version TEXT,
    controller_ai_version  TEXT,
    maintenance_cycle_days INTEGER,
    last_maintenance_date  TEXT,
    next_maintenance_date  TEXT,
    incident_count         INTEGER,
    max_allowed_flux       NUMERIC,
    authorized_operator    TEXT,
    regulatory_body        TEXT,
    compliance_certificate TEXT,
    contact_email          TEXT,
    support_hotline        TEXT,
    documentation_url      TEXT,
    notes                  TEXT,
    record_status          TEXT
);

INSERT INTO hyperdimensional_transport_hub VALUES (1,'Omega Gate','HG-001','Sector-Alpha','2024-06-01','Operational',5000,2,10,1200,'Helium','v3.2','AI-7.1',180,'2025-01-15','2025-07-15',0,0.85,'DrKhan','DimensionalAuthority','CERT-2024-01','omega@gate.net','+123456789','http://docs.omegagate/hub','No incidents yet','Active');
INSERT INTO hyperdimensional_transport_hub VALUES (2,'Sigma Portal','HG-002','Sector-Beta','2023-09-15','Maintenance',3000,5,15,950,'Nitrogen','v3.0','AI-6.4',210,'2025-02-10','2025-08-10',2,0.70,'DrLee','DimensionalAuthority','CERT-2023-07','sigma@portal.org','+987654321','http://docs.sigmaportal/hub','Scheduled upgrades pending','Active');
INSERT INTO hyperdimensional_transport_hub VALUES (3,'Delta Nexus','HG-003','Sector-Gamma','2025-01-20','Testing',2000,1,8,800,'Hydrogen','v2.8','AI-5.9',150,'2025-03-05','2025-09-05',0,0.65,'DrPatel','DimensionalAuthority','CERT-2025-03','delta@nexus.io','+1122334455','http://docs.deltanexus/hub','Initial testing phase','Active');

-- Information about AI governance committees overseeing galactic AI initiatives
CREATE TABLE ai_governance_committee
(
    id                     INTEGER PRIMARY KEY,
    committee_name         TEXT,
    establishment_date     TEXT,
    jurisdiction           TEXT,
    chairperson_name       TEXT,
    vice_chair_name        TEXT,
    total_members          INTEGER,
    member_1_name          TEXT,
    member_2_name          TEXT,
    member_3_name          TEXT,
    member_4_name          TEXT,
    member_5_name          TEXT,
    meeting_frequency      TEXT,
    last_meeting_date      TEXT,
    next_meeting_date      TEXT,
    policy_document_url    TEXT,
    oversight_area         TEXT,
    budget_credits         NUMERIC,
    reporting_requirements TEXT,
    compliance_status      TEXT,
    external_audit_cycle_years INTEGER,
    contact_phone          TEXT,
    contact_email           TEXT,
    notes                  TEXT,
    active                 BOOLEAN,
    record_status          TEXT
);

INSERT INTO ai_governance_committee VALUES (1,'Galactic AI Ethics Board','2022-04-01','Sector-Alpha','DrKhan','DrLee',7,'DrPatel','DrYates','DrMiller','DrNguyen','DrSanchez','Quarterly','2025-02-20','2025-05-20','http://aiethics.board/policy','AI Safety','2000000','Annual report','Compliant',2,'+1010101010','ethics@galacticai.org','Focus on autonomous weaponry','TRUE','Active');
INSERT INTO ai_governance_committee VALUES (2,'Interstellar Machine Learning Council','2023-07-15','Sector-Beta','DrYates','DrPatel',5,'DrKhan','DrLee','DrNguyen','DrSanchez','DrMiller','Biannual','2025-01-10','2025-07-10','http://mlcouncil.org/policy','Data Privacy','1500000','Semi-annual briefing','Pending Review',3,'+2020202020','mlcouncil@interstellar.org','Addressing data bias','TRUE','Active');
INSERT INTO ai_governance_committee VALUES (3,'Quantum AI Oversight Committee','2024-01-20','Sector-Gamma','DrSanchez','DrMiller',6,'DrPatel','DrYates','DrKhan','DrLee','DrNguyen','Monthly','2025-03-05','2025-04-05','http://quantumai.ov/guide','Quantum Computing Ethics','2500000','Quarterly audit','Compliant',1,'+3030303030','quantum@oversight.io','Monitoring quantum supremacy risks','TRUE','Active');

-- Inventory of exotic matter types maintained for research and production
CREATE TABLE exotic_matter_inventory
(
    id                     INTEGER PRIMARY KEY,
    matter_name            TEXT,
    matter_code            TEXT,
    classification         TEXT,
    stability_rating       TEXT,
    containment_temperature_k NUMERIC,
    containment_pressure_pa NUMERIC,
    quantity_units         NUMERIC,
    last_audit_date        TEXT,
    next_audit_due         TEXT,
    storage_location       TEXT,
    hazard_level           TEXT,
    handling_procedure     TEXT,
    supplier_name          TEXT,
    acquisition_date       TEXT,
    expiration_date        TEXT,
    current_status         TEXT,
    safety_officer         TEXT,
    audit_report_url       TEXT,
    disposal_method        TEXT,
    notes                  TEXT,
    regulatory_compliance  BOOLEAN,
    last_transfer_date     TEXT,
    transferred_to         TEXT,
    record_status          TEXT
);

INSERT INTO exotic_matter_inventory VALUES (1,'Darkium','EX-001','Fermionic','Unstable','2','5e-6',1200,'2025-01-01','2025-07-01','Vault-7','High','Cryogenic containment','DarkMatterCo','2024-12-15','2030-12-15','Available','DrKhan','http://reports/darkium_audit','Neutralization','Handled under strict protocols',TRUE,'2025-02-20','ResearchLab-Alpha','Active');
INSERT INTO exotic_matter_inventory VALUES (2,'Quantonium','EX-002','Bosonic','Stable','0.5','1e-9',800,'2025-02-10','2025-08-10','Vault-3','Medium','Magnetic field containment','QuantCorp','2025-01-05','2040-01-05','Quarantined','DrLee','http://reports/quantonium_audit','Recycling','Requires magnetic shielding',TRUE,'2025-03-15','Manufacturing-Unit-5','Active');
INSERT INTO exotic_matter_inventory VALUES (3,'Plasmarite','EX-003','Plasma','Highly Reactive','15000','2e5',500,'2025-03-20','2025-09-20','Vault-9','Critical','Vacuum chamber','PlasmaWorks','2025-02-28','2028-02-28','In Use','DrPatel','http://reports/plasmarite_audit','Controlled burn','Extreme caution needed',TRUE,'2025-04-01','EnergyPlant-Z','Active');

-- Details of planetary terraforming projects across colonies
CREATE TABLE planetary_terraforming_project
(
    id                     INTEGER PRIMARY KEY,
    project_name           TEXT,
    planet_name            TEXT,
    star_system            TEXT,
    start_date             TEXT,
    projected_completion_date TEXT,
    current_phase          TEXT,
    budget_credits         NUMERIC,
    lead_scientist         TEXT,
    engineering_firm       TEXT,
    primary_atmosphere_gas TEXT,
    target_atmosphere_composition TEXT,
    water_source_type      TEXT,
    habitability_index     NUMERIC,
    colony_established     BOOLEAN,
    population_estimate    INTEGER,
    oxygen_level_percent   NUMERIC,
    temperature_celsius    NUMERIC,
    radiation_level_sv     NUMERIC,
    soil_composition       TEXT,
    flora_introduced       TEXT,
    fauna_introduced       TEXT,
    status_report_url      TEXT,
    notes                  TEXT,
    regulatory_approval    BOOLEAN,
    last_review_date       TEXT,
    next_review_date       TEXT,
    record_status          TEXT
);

INSERT INTO planetary_terraforming_project VALUES (1,'AquaGenesis','Aqua-III','Alpha Centauri','2024-05-01','2035-12-31','Atmospheric Seeding',3000000,'DrKhan','TerraWorks Ltd','CO2','78% N2,21% O2,1% Ar','Ice Comet','0.85',FALSE,NULL,21.0,22.0,0.05,'Silicate rich','Algae','None','http://reports/aquagenesis','Phase 1 complete','TRUE','2025-01-10','2025-07-10','Active');
INSERT INTO planetary_terraforming_project VALUES (2,'VerdantRise','Verdant-9','Beta Quadrant','2023-03-15','2030-06-30','Soil Enrichment',1500000,'DrLee','EcoTerra','CH4','70% N2,28% O2,2% Ar','Subsurface Ice','0.70',TRUE,5000,20.5,18.0,0.12,'Regolith','Moss, lichens','Insects','http://reports/verdantrise','Ongoing vegetation','TRUE','2025-02-01','2025-08-01','Active');
INSERT INTO planetary_terraforming_project VALUES (3,'DesertBloom','Aridus-2','Gamma Sector','2025-01-20','2040-11-15','Hydroponics Installation',2500000,'DrPatel','HydroTech','N2','75% N2,24% O2,1% Ar','Atmospheric Extraction','0.60',FALSE,NULL,19.0,30.0,0.20,'Sandy','Cactus','Desert Rodents','http://reports/desertbloom','Planning stage','FALSE','2025-03-05','2025-09-05','Active');

-- Records of intergalactic cultural exchange programs between civilizations
CREATE TABLE intergalactic_cultural_exchange
(
    id                     INTEGER PRIMARY KEY,
    program_name           TEXT,
    originating_civilization TEXT,
    host_civilization      TEXT,
    start_date             TEXT,
    end_date               TEXT,
    exchange_type          TEXT,
    participants_count     INTEGER,
    flagship_artifact_name TEXT,
    artifact_origin        TEXT,
    cultural_focus         TEXT,
    funding_source         TEXT,
    budget_credits         NUMERIC,
    liaison_officer        TEXT,
    status                 TEXT,
    final_report_url       TEXT,
    media_coverage_links   TEXT,
    public_engagement_level TEXT,
    education_materials_url TEXT,
    legacy_projects        TEXT,
    notes                  TEXT,
    compliance_review_date TEXT,
    compliance_status      TEXT,
    archival_location      TEXT,
    record_status          TEXT
);

INSERT INTO intergalactic_cultural_exchange VALUES (1,'Starlight Symposium','Terran Union','Vulcan Confederation','2025-04-01','2025-06-30','Scientific','250','Photon Crystal','Terran','Physics and Philosophy','GalacticCouncil','500000','DrKhan','Completed','http://reports/starlight_final','http://media.starlight','High','http://edu.starlight','Joint Research Initiative','Successful exchange','2025-07-15','Compliant','Vault-12','Closed');
INSERT INTO intergalactic_cultural_exchange VALUES (2,'Harmony Festival','Andromedan Tribe','Terran Union','2025-07-10','2025-09-20','Artistic','180','Melodic Spheres','Andromedan','Music and Dance','CulturalFund','300000','DrLee','Ongoing','http://reports/harmony_progress','http://media.harmony','Medium','http://edu.harmony','Community Workshops','Positive feedback','2025-10-01','Pending','Vault-8','Active');
INSERT INTO intergalactic_cultural_exchange VALUES (3,'Tech Transfer Initiative','Xenon Collective','Beta Federation','2025-10-05','2026-01-15','Technological','320','Quantum Relay','Xenon','Quantum Computing','TechGrant','750000','DrPatel','Planned','http://reports/techtransfer_plan','http://media.techtransfer','Low','http://edu.techtransfer','Future Collaboration','Planning stage','2025-12-01','Pending','Vault-5','Planned');

-- Logs of incidents reported at hyperdimensional transport hubs
CREATE TABLE hub_incident_log
(
    id                     INTEGER PRIMARY KEY,
    hub_id                 TEXT,
    incident_timestamp     TEXT,
    incident_type          TEXT,
    severity_level         TEXT,
    description            TEXT,
    reported_by            TEXT,
    corrective_action_taken TEXT,
    downtime_minutes       INTEGER,
    affected_passengers    INTEGER,
    root_cause_analysis   TEXT,
    escalation_required    BOOLEAN,
    escalation_contact     TEXT,
    incident_status        TEXT,
    closure_date           TEXT,
    follow_up_required     BOOLEAN,
    follow_up_due_date     TEXT,
    monitoring_metrics     TEXT,
    investigation_report_url TEXT,
    notes                  TEXT,
    regulatory_fine_credits NUMERIC,
    compliance_flag        BOOLEAN,
    record_status          TEXT
);

INSERT INTO hub_incident_log VALUES (1,'HG-001','2025-02-14T08:45:00','Flux Anomaly','High','Unexpected surge in dimensional flux','DrKhan','Recalibrated stabilizers',120,0,'Flux sensor misalignment','TRUE','DrLee','Resolved','2025-02-14',FALSE,NULL,'Flux level normalized','http://reports/incident_hg001_20250214','No further issues',0,TRUE,'Closed');
INSERT INTO hub_incident_log VALUES (2,'HG-002','2025-03-22T14:20:00','Power Failure','Medium','Loss of primary power to hub','DrPatel','Switched to backup generators',45,12,'Backup not engaged timely','FALSE','DrKhan','Resolved','2025-03-22',TRUE,'2025-04-05','Power stability monitored','http://reports/incident_hg002_20250322','Review of emergency procedures',5000,FALSE,'Open');
INSERT INTO hub_incident_log VALUES (3,'HG-003','2025-04-10T22:05:00','Containment Breach','Critical','Leak of hyperdimensional containment field','DrLee','Emergency shutdown','30,','5','Seal failure in chamber','TRUE','DrPatel','In Progress','2025-04-11',TRUE,'2025-04-20','Containment integrity checks','http://reports/incident_hg003_20250410','Awaiting full investigation',20000,TRUE,'Open');

-- Registry of quantum energy transaction records across the galaxy
CREATE TABLE quantum_energy_transaction_record
(
    id                     INTEGER PRIMARY KEY,
    transaction_id         TEXT,
    source_entity          TEXT,
    destination_entity     TEXT,
    transaction_date       TEXT,
    energy_amount_qe       NUMERIC,
    transaction_type       TEXT,
    blockchain_hash        TEXT,
    verification_status    TEXT,
    regulator_approval_id  TEXT,
    settlement_date        TEXT,
    settlement_status      TEXT,
    fee_credits            NUMERIC,
    exchange_rate_to_credits NUMERIC,
    notes                  TEXT,
    audit_timestamp        TEXT,
    auditor_name           TEXT,
    compliance_flag        BOOLEAN,
    dispute_raised         BOOLEAN,
    dispute_resolution_date TEXT,
    final_status           TEXT,
    record_status          TEXT
);

INSERT INTO quantum_energy_transaction_record VALUES (1,'QT-0001','Omega Gate','Sigma Portal','2025-01-15',1500,'Transfer','hash123abc','Verified','RA-001','2025-01-16','Settled',15,1,'Routine transfer','2025-01-16T10:00:00','DrKhan',TRUE,FALSE,NULL,'Completed','Active');
INSERT INTO quantum_energy_transaction_record VALUES (2,'QT-0002','Delta Nexus','Omega Gate','2025-02-05',2500,'Purchase','hash456def','Pending','RA-002',NULL,'Pending',25,1.02,'High volume purchase','2025-02-05T12:30:00','DrLee',FALSE,TRUE,'2025-03-01','Resolved','Active');
INSERT INTO quantum_energy_transaction_record VALUES (3,'QT-0003','Sigma Portal','Delta Nexus','2025-03-20',800,'Refund','hash789ghi','Verified','RA-003','2025-03-21','Settled',8,0.98,'Customer refund','2025-03-21T09:15:00','DrPatel',TRUE,FALSE,NULL,'Completed','Active');