-- District infrastructure projects metadata
CREATE TABLE district_infrastructure_projects_meta
(
    project_id                INTEGER PRIMARY KEY,
    project_name_code         INTEGER,
    project_type_code         INTEGER,
    start_year                INTEGER,
    expected_completion_year  INTEGER,
    budget_total_millions     REAL,
    funding_source_code       INTEGER,
    contractor_id             INTEGER,
    region_code               INTEGER,
    priority_level            INTEGER,
    status_code               INTEGER,
    estimated_jobs_created    INTEGER,
    sqft_total                INTEGER,
    sustainability_score      REAL,
    risk_factor_score         REAL,
    civil_engineer_lead_id    INTEGER,
    architect_firm_id         INTEGER,
    land_acquisition_acres    REAL,
    permits_required          INTEGER,
    community_impact_score    REAL,
    created_timestamp         INTEGER,
    modified_timestamp        INTEGER,
    notes                     TEXT
);

INSERT INTO district_infrastructure_projects_meta VALUES (1,101,5,2022,2025,12.5,3,45,2,1,2,200,150000,85.6,12.3,12,7,15.2,5,78.9,20230101,20230115,NULL);
INSERT INTO district_infrastructure_projects_meta VALUES (2,102,3,2021,2024,9.3,2,46,1,2,1,120,90000,77.4,9.8,15,8,10.5,3,65.2,20221201,20221220,NULL);
INSERT INTO district_infrastructure_projects_meta VALUES (3,103,4,2023,2026,15.0,4,47,3,3,3,250,200000,92.1,14.7,20,9,20.0,6,82.3,20230210,20230212,NULL);

-- School arts funding grants
CREATE TABLE school_arts_funding_grants
(
    grant_id                 INTEGER PRIMARY KEY,
    school_cds_code          TEXT,
    fiscal_year              INTEGER,
    grant_amount_usd         REAL,
    grant_purpose_code       INTEGER,
    award_date_yyyymmdd      INTEGER,
    funding_agency_code      INTEGER,
    matching_funds_required  INTEGER,
    duration_months          INTEGER,
    reporting_frequency_code INTEGER,
    approved_by_admin_id     INTEGER,
    program_coordinator_id   INTEGER,
    allocated_budget_usd     REAL,
    projected_participants   INTEGER,
    performance_metric_code  INTEGER,
    evaluation_method_code   INTEGER,
    oversight_committee_id   INTEGER,
    compliance_status_code   INTEGER,
    notes                    TEXT,
    created_timestamp        INTEGER,
    modified_timestamp       INTEGER,
    is_active                INTEGER
);

INSERT INTO school_arts_funding_grants VALUES (1001,'CDS001',2022,25000.0,2,20220315,5,1,12,3,101,201,26000.0,150,4,2,301,1,NULL,20220320,20220325,1);
INSERT INTO school_arts_funding_grants VALUES (1002,'CDS002',2023,40000.0,3,20230601,6,0,24,2,102,202,42000.0,200,5,3,302,1,NULL,20230605,20230610,1);
INSERT INTO school_arts_funding_grants VALUES (1003,'CDS003',2021,18000.0,1,20211210,4,1,18,4,103,203,19000.0,100,2,1,303,2,NULL,20211215,20211220,0);

-- Community health clinic statistics
CREATE TABLE community_health_clinic_statistics
(
    clinic_id                     INTEGER PRIMARY KEY,
    county_code                   INTEGER,
    clinic_type_code              INTEGER,
    total_visits_year             INTEGER,
    avg_wait_time_minutes         REAL,
    percent_insured_patients      REAL,
    percent_uninsured_patients    REAL,
    total_staff_fulltime          INTEGER,
    total_staff_parttime          INTEGER,
    operating_budget_usd          REAL,
    funding_source_code           INTEGER,
    vaccinations_administered     INTEGER,
    chronic_cases_managed         INTEGER,
    emergency_visits_year         INTEGER,
    mental_health_visits_year     INTEGER,
    telehealth_sessions_year      INTEGER,
    average_patient_satisfaction  REAL,
    facility_sqft                 INTEGER,
    built_year                    INTEGER,
    last_renovation_yyyymmdd      INTEGER,
    created_timestamp             INTEGER,
    modified_timestamp            INTEGER,
    notes                         TEXT
);

INSERT INTO community_health_clinic_statistics VALUES (501,12,1,15230,22.5,68.4,31.6,45,12,750000.0,3,8500,1200,450,300,1800,4.5,18000,1998,20200115,20230101,20230110,NULL);
INSERT INTO community_health_clinic_statistics VALUES (502,34,2,21000,18.2,74.1,25.9,60,20,950000.0,2,11200,1500,600,400,2500,4.8,22000,2005,20210320,20230102,20230111,NULL);
INSERT INTO community_health_clinic_statistics VALUES (503,56,1,9800,30.1,60.0,40.0,30,8,500000.0,4,4300,700,250,150,900,4.2,15000,2012,20220705,20230103,20230112,NULL);

-- Technology vendor performance metrics
CREATE TABLE tech_vendor_perf_metrics
(
    vendor_id                     INTEGER PRIMARY KEY,
    vendor_name_code              INTEGER,
    contract_start_yyyymmdd       INTEGER,
    contract_end_yyyymmdd         INTEGER,
    total_contract_value_usd      REAL,
    on_time_delivery_percent      REAL,
    defect_rate_percent           REAL,
    support_response_time_hr      REAL,
    annual_renewal_likelihood     INTEGER,
    compliance_audit_score        REAL,
    data_security_incidents       INTEGER,
    software_update_frequency_mo  INTEGER,
    hardware_maintenance_freq_mo  INTEGER,
    satisfaction_rating           REAL,
    training_sessions_conducted   INTEGER,
    certifications_obtained       INTEGER,
    region_served_code            INTEGER,
    primary_contact_id            INTEGER,
    secondary_contact_id          INTEGER,
    created_timestamp             INTEGER,
    modified_timestamp            INTEGER,
    notes                         TEXT
);

INSERT INTO tech_vendor_perf_metrics VALUES (2001,55,20200101,20231231,1500000.0,96.5,1.2,2.5,85,92.3,0,6,12,4.7,30,5,1,301,302,20230104,20230114,NULL);
INSERT INTO tech_vendor_perf_metrics VALUES (2002,60,20210315,20240314,2000000.0,93.0,2.0,3.0,78,88.5,1,5,10,4.4,25,4,2,303,304,20230105,20230115,NULL);
INSERT INTO tech_vendor_perf_metrics VALUES (2003,58,20190520,20220519,1200000.0,98.2,0.8,1.8,90,95.0,0,7,8,4.9,35,6,3,305,306,20230106,20230116,NULL);

-- Environmental sensor deployments
CREATE TABLE environmental_sensor_deployments
(
    deployment_id                 INTEGER PRIMARY KEY,
    sensor_type_code              INTEGER,
    location_id                   INTEGER,
    installation_date_yyyymmdd    INTEGER,
    last_maintenance_date_yyyymmdd INTEGER,
    firmware_version_code         INTEGER,
    battery_life_months           INTEGER,
    signal_strength_dbm           REAL,
    data_transmission_interval_sec INTEGER,
    calibration_factor            REAL,
    operating_status_code         INTEGER,
    latitude_dd                   REAL,
    longitude_dd                  REAL,
    altitude_meters               REAL,
    maintenance_contract_id       INTEGER,
    responsible_tech_id           INTEGER,
    warranty_expiration_yyyymmdd   INTEGER,
    data_quality_score            REAL,
    alerts_triggered_year         INTEGER,
    total_data_points_collected   INTEGER,
    created_timestamp             INTEGER,
    modified_timestamp            INTEGER,
    notes                         TEXT
);

INSERT INTO environmental_sensor_deployments VALUES (8001,1,101,20210115,20230110,3,24,-70.5,300,1.02,1,40.7128,-74.0060,10.5,5001,401,20251231,88.4,12,87600,20230107,20230117,NULL);
INSERT INTO environmental_sensor_deployments VALUES (8002,2,102,20210220,20230205,4,30,-68.9,600,0.98,1,34.0522,-118.2437,15.2,5002,402,20260630,91.2,8,43200,20230108,20230118,NULL);
INSERT INTO environmental_sensor_deployments VALUES (8003,3,103,20210325,20230312,2,18,-72.1,900,1.00,2,41.8781,-87.6298,12.0,5003,403,20270930,85.7,15,129600,20230109,20230119,NULL);

-- School parking permit fee structure
CREATE TABLE school_parking_permit_fee_structure
(
    fee_id                       INTEGER PRIMARY KEY,
    school_cds_code              TEXT,
    permit_type_code             INTEGER,
    fee_amount_usd               REAL,
    effective_start_yyyymmdd     INTEGER,
    effective_end_yyyymmdd       INTEGER,
    max_vehicles_allowed        INTEGER,
    surcharge_per_extra_vehicle  REAL,
    discount_student_percent     REAL,
    discount_staff_percent       REAL,
    renewal_required_flag        INTEGER,
    payment_method_code          INTEGER,
    late_fee_usd                 REAL,
    admin_fee_usd                REAL,
    created_timestamp            INTEGER,
    modified_timestamp           INTEGER,
    notes                        TEXT,
    fiscal_year                  INTEGER,
    applicable_semester_code     INTEGER,
    minimum_balance_usd          REAL,
    max_balance_usd              REAL,
    is_active                    INTEGER
);

INSERT INTO school_parking_permit_fee_structure VALUES (9001,'CDS001',1,150.0,20220101,20221231,2,25.0,10.0,5.0,1,2,15.0,5.0,20230110,20230120,NULL,2022,1,0.0,500.0,1);
INSERT INTO school_parking_permit_fee_structure VALUES (9002,'CDS002',2,200.0,20220101,20221231,3,30.0,12.0,6.0,1,1,20.0,7.0,20230111,20230121,NULL,2022,2,0.0,600.0,1);
INSERT INTO school_parking_permit_fee_structure VALUES (9003,'CDS003',3,120.0,20220101,20221231,1,20.0,8.0,4.0,0,3,10.0,3.0,20230112,20230122,NULL,2022,1,0.0,400.0,0);

-- Student exchange participant details
CREATE TABLE student_exchange_participant_details
(
    exchange_id                 INTEGER PRIMARY KEY,
    student_id                  TEXT,
    home_school_cds_code        TEXT,
    host_institution_code       TEXT,
    exchange_program_code       INTEGER,
    departure_date_yyyymmdd     INTEGER,
    return_date_yyyymmdd        INTEGER,
    stipend_amount_usd          REAL,
    accommodation_type_code     INTEGER,
    language_proficiency_level  INTEGER,
    credits_earned               INTEGER,
    grade_level_at_departure    INTEGER,
    host_country_code           TEXT,
    host_city_name_code         INTEGER,
    approved_by_admin_id        INTEGER,
    mentor_staff_id             INTEGER,
    insurance_policy_number     TEXT,
    health_clearance_flag       INTEGER,
    financial_aid_awarded_flag  INTEGER,
    created_timestamp           INTEGER,
    modified_timestamp          INTEGER,
    notes                       TEXT
);

INSERT INTO student_exchange_participant_details VALUES (11001,'STU001','CDS001','INST100',5,20230401,20240530,2000.0,2,4,12,11,'US',101,301,401,NULL,1,0,20230113,20230123,NULL);
INSERT INTO student_exchange_participant_details VALUES (11002,'STU002','CDS002','INST200',3,20230515,20240620,2500.0,1,5,14,12,'FR',102,302,402,NULL,1,1,20230114,20230124,NULL);
INSERT INTO student_exchange_participant_details VALUES (11003,'STU003','CDS003','INST300',2,20230610,20240715,1800.0,3,3,10,10,'JP',103,303,403,NULL,0,0,20230115,20230125,NULL);

-- Facility energy audit metrics
CREATE TABLE facility_energy_audit_metrics
(
    audit_id                     INTEGER PRIMARY KEY,
    facility_id                  INTEGER,
    audit_year                   INTEGER,
    total_energy_consumption_kwh REAL,
    peak_demand_kw               REAL,
    HVAC_efficiency_score        REAL,
    lighting_efficiency_score    REAL,
    building_envelope_score      REAL,
    renewable_energy_percent     REAL,
    carbon_emissions_tonnes      REAL,
    recommendation_count         INTEGER,
    cost_savings_estimated_usd   REAL,
    implementation_status_code   INTEGER,
    auditor_company_code         INTEGER,
    audit_start_date_yyyymmdd    INTEGER,
    audit_end_date_yyyymmdd      INTEGER,
    follow_up_required_flag      INTEGER,
    created_timestamp            INTEGER,
    modified_timestamp           INTEGER,
    notes                        TEXT,
    compliance_status_code       INTEGER,
    sector_code                  INTEGER,
    average_occupancy_percent    REAL,
    sensor_integration_flag      INTEGER,
    last_update_yyyymmdd         INTEGER
);

INSERT INTO facility_energy_audit_metrics VALUES (21001,1001,2022,3500000.0,450.0,88.5,92.3,85.0,15.2,250.0,12,120000.0,2,10,20220301,20220315,1,20230116,20230126,NULL,1,3,78.0,1,20230130);
INSERT INTO facility_energy_audit_metrics VALUES (21002,1002,2021,2800000.0,380.0,90.1,94.0,88.5,12.0,200.0,10,95000.0,3,12,20210410,20210425,0,20230117,20230127,NULL,2,2,82.5,1,20230131);
INSERT INTO facility_energy_audit_metrics VALUES (21003,1003,2023,4100000.0,500.0,85.0,89.5,80.0,18.5,300.0,15,140000.0,1,11,20230505,20230520,1,20230118,20230128,NULL,1,4,75.0,0,20230201);

-- District equity initiative fund allocation
CREATE TABLE district_equity_initiative_fund_allocation
(
    allocation_id                INTEGER PRIMARY KEY,
    fiscal_year                  INTEGER,
    fund_category_code           INTEGER,
    total_amount_usd             REAL,
    allocated_to_district_code   INTEGER,
    allocated_to_school_code     TEXT,
    purpose_code                 INTEGER,
    priority_rank                INTEGER,
    approval_date_yyyymmdd       INTEGER,
    approved_by_admin_id         INTEGER,
    reporting_deadline_yyyymmdd   INTEGER,
    disbursement_status_code     INTEGER,
    last_disbursement_date_yyyymmdd INTEGER,
    verification_status_code     INTEGER,
    audit_complete_flag          INTEGER,
    created_timestamp            INTEGER,
    modified_timestamp           INTEGER,
    notes                        TEXT,
    equity_index_score           REAL,
    demographic_target_code      INTEGER,
    compliance_checklist_code    INTEGER,
    monitoring_frequency_code    INTEGER,
    fund_utilization_percent     REAL,
    projected_impact_score       REAL,
    last_review_yyyymmdd         INTEGER
);

INSERT INTO district_equity_initiative_fund_allocation VALUES (31001,2022,1,500000.0,12,'CDS001',3,1,20220315,401,20231231,2,20230501,1,1,20230119,20230129,NULL,85.5,4,7,3,78.0,90.0,20231201);
INSERT INTO district_equity_initiative_fund_allocation VALUES (31002,2023,2,750000.0,14,'CDS002',5,2,20230420,402,20240515,1,20240610,2,0,20230120,20230130,NULL,88.2,5,8,2,82.5,92.5,20240510);
INSERT INTO district_equity_initiative_fund_allocation VALUES (31003,2021,3,300000.0,10,'CDS003',2,3,20210210,403,20221231,3,20221220,3,1,20230121,20230131,NULL,80.0,3,6,4,70.0,85.0,20221215);

-- School virtual reality lab usage
CREATE TABLE school_virtual_reality_lab_usage
(
    session_id                  INTEGER PRIMARY KEY,
    school_cds_code             TEXT,
    lab_id                      INTEGER,
    usage_date_yyyymmdd         INTEGER,
    start_time_hhmm             INTEGER,
    end_time_hhmm               INTEGER,
    number_of_students          INTEGER,
    curriculum_module_code      INTEGER,
    instructor_id               INTEGER,
    equipment_type_code         INTEGER,
    headset_model_code          INTEGER,
    average_session_rating      REAL,
    technical_issues_flag       INTEGER,
    issues_description          TEXT,
    feedback_survey_completed   INTEGER,
    created_timestamp           INTEGER,
    modified_timestamp          INTEGER,
    notes                       TEXT,
    total_session_minutes       INTEGER,
    repeat_user_flag            INTEGER,
    software_version_code      INTEGER,
    safety_briefing_completed   INTEGER,
    maintenance_required_flag   INTEGER,
    last_maintenance_date_yyyymmdd INTEGER,
    compliance_certified_flag   INTEGER
);

INSERT INTO school_virtual_reality_lab_usage VALUES (41001,'CDS001',1,20230112,900,1030,25,4,301,2,7,4.5,0,NULL,1,20230113,20230114,NULL,90,0,3,1,0,20221201,1);
INSERT INTO school_virtual_reality_lab_usage VALUES (41002,'CDS002',2,20230215,1100,1230,18,5,302,3,8,4.2,1,'headset_disconnect',1,20230216,20230217,NULL,80,1,4,1,1,20230105,1);
INSERT INTO school_virtual_reality_lab_usage VALUES (41003,'CDS003',3,20230320,1300,1430,30,6,303,2,9,4.8,0,NULL,1,20230321,20230322,NULL,100,0,5,1,0,20230210,1);