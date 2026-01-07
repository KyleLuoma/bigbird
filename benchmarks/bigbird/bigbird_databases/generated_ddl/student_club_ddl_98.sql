-- Faculty hiring process details
CREATE TABLE faculty_hiring_process
(
    process_id                TEXT    PRIMARY KEY,
    position_title            TEXT,
    department                TEXT,
    college                   TEXT,
    posting_date              TEXT,
    application_deadline      TEXT,
    recruiter_name            TEXT,
    recruiter_email           TEXT,
    interview_round_1_date    TEXT,
    interview_round_1_panel   TEXT,
    interview_round_2_date    TEXT,
    interview_round_2_panel   TEXT,
    final_decision_date       TEXT,
    selected_candidate_id     TEXT,
    salary_offer              REAL,
    salary_currency           TEXT,
    contract_type             TEXT,
    tenure_track_flag         TEXT,
    background_check_status   TEXT,
    onboarding_start_date     TEXT,
    office_location           TEXT,
    equipment_assigned        TEXT,
    notes                     TEXT
);

INSERT INTO faculty_hiring_process VALUES
('PH001','AssistantProfessor','ComputerScience','Engineering','2025-01-10','2025-02-15','JohnDoe','johndoe@university.edu','2025-03-01','PanelA','2025-03-15','PanelB','2025-04-01','CAND123',80000,'USD','FullTime','Y','Completed','2025-04-15','Room101','Laptop,Desk','Initial hiring');

INSERT INTO faculty_hiring_process VALUES
('PH002','AssociateProfessor','Mathematics','Science','2025-02-05','2025-03-01','JaneSmith','janesmith@university.edu','2025-03-20','PanelC','2025-04-05','PanelD','2025-04-20','CAND456',95000,'USD','FullTime','Y','Pending','2025-05-01','Room202','Laptop,Chair','Second round');

INSERT INTO faculty_hiring_process VALUES
('PH003','Lecturer','History','Arts','2025-03-12','2025-04-10','MikeBrown','mikebrown@university.edu','2025-04-25','PanelE','2025-05-10','PanelF','2025-05-25','CAND789',55000,'USD','PartTime','N','Completed','2025-06-01','Room303','None','Finalized');

-- Student scholarship application records
CREATE TABLE student_scholarship_application
(
    application_id            TEXT    PRIMARY KEY,
    student_id                TEXT,
    scholarship_name          TEXT,
    academic_year             TEXT,
    application_date          TEXT,
    gpa                       REAL,
    major_id                  TEXT,
    enrollment_status         TEXT,
    essay_submitted           TEXT,
    recommendation_count      INTEGER,
    financial_need_score      REAL,
    award_amount_requested    REAL,
    award_amount_granted      REAL,
    award_currency            TEXT,
    disbursement_date         TEXT,
    renewal_eligible          TEXT,
    renewal_deadline          TEXT,
    status                    TEXT,
    reviewer_id               TEXT,
    review_score              REAL,
    notes                     TEXT,
    contact_email             TEXT,
    contact_phone             TEXT
);

INSERT INTO student_scholarship_application VALUES
('APP001','STU001','ExcellenceScholarship','2025-2026','2025-01-20',3.9,'MAJ001','FullTime','Y',2,85.5,10000,8000,'USD','2025-09-01','Y','2026-01-15','Approved','REV001',92.0,'Pending documents','student1@university.edu','5551234567');

INSERT INTO student_scholarship_application VALUES
('APP002','STU002','NeedBasedGrant','2025-2026','2025-02-10',3.2,'MAJ005','FullTime','Y',1,78.0,5000,5000,'USD','2025-10-01','N',NULL,'Rejected','REV002',68.0','Missing essay','student2@university.edu','5559876543');

INSERT INTO student_scholarship_application VALUES
('APP003','STU003','ResearchFellowship','2025-2026','2025-03-05',4.0,'MAJ010','FullTime','Y',3,92.0,12000,12000,'USD','2025-11-15','Y','2027-01-20','Approved','REV003',95.0','All good','student3@university.edu','5551122334');

-- Campus renewable energy project details
CREATE TABLE campus_renewable_energy_project
(
    project_id                TEXT    PRIMARY KEY,
    project_name              TEXT,
    start_date                TEXT,
    end_date                  TEXT,
    energy_type               TEXT,
    capacity_mw               REAL,
    location_description      TEXT,
    contractor_name           TEXT,
    contractor_contact        TEXT,
    financing_source          TEXT,
    total_budget_usd          REAL,
    amount_spent_usd          REAL,
    regulatory_approval_date  TEXT,
    operational_status        TEXT,
    expected_annual_savings_usd REAL,
    carbon_reduction_tons     REAL,
    maintenance_contact       TEXT,
    warranty_expiration_date  TEXT,
    notes                     TEXT,
    reporting_frequency       TEXT,
    last_report_date          TEXT,
    project_manager_id        TEXT,
    stakeholder_group         TEXT,
    risk_assessment_level     TEXT
);

INSERT INTO campus_renewable_energy_project VALUES
('RE001','SolarArrayNorth','2024-06-01','2027-12-31','Solar',5.2,'NorthCampusField','SunPowerInc','contact@sunpower.com','GreenBond','2000000','750000','2024-08-15','Construction','150000','300','OpsTeam','2030-06-01','Initial phase','Quarterly','2025-03-15','PM001','Facilities','Medium');

INSERT INTO campus_renewable_energy_project VALUES
('RE002','WindTurbineEast','2025-01-15','2028-05-20','Wind',2.8,'EastHill','WindWorks','info@windworks.com','UtilityGrant','3500000','1200000','2025-03-10','Planning','200000','500','MaintenanceCo','2032-01-15','Pending permits','Annual','2025-06-30','PM002','Sustainability','High');

INSERT INTO campus_renewable_energy_project VALUES
('RE003','GeothermalLoop','2023-09-01','2026-12-01','Geothermal',1.5,'CentralCampus','GeoTherm','support@geothermal.com','CampusFund','1500000','900000','2023-11-20','Operating','100000','150','FacilitiesTeam','2029-09-01','Full operation','SemiAnnual','2025-01-10','PM003','Energy','Low');

-- Library digital preservation job tracking
CREATE TABLE library_digital_preservation_job
(
    job_id                    TEXT    PRIMARY KEY,
    item_id                   TEXT,
    item_type                 TEXT,
    preservation_action       TEXT,
    source_format             TEXT,
    target_format             TEXT,
    start_timestamp           TEXT,
    end_timestamp             TEXT,
    status                    TEXT,
    processor_node            TEXT,
    checksum_before           TEXT,
    checksum_after            TEXT,
    filesize_before_bytes     INTEGER,
    filesize_after_bytes      INTEGER,
    error_code                TEXT,
    error_message             TEXT,
    operator_id               TEXT,
    priority_level            TEXT,
    notes                     TEXT,
    retry_count               INTEGER,
    max_retries               INTEGER,
    scheduled_time            TEXT,
    completion_time           TEXT,
    audit_log_id              TEXT,
    preservation_policy_id   TEXT,
    metadata_update_flag      TEXT
);

INSERT INTO library_digital_preservation_job VALUES
('DPJ001','ITEM1001','Manuscript','FormatConversion','TIFF','JPEG2000','2025-02-01T08:00:00','2025-02-01T08:15:00','Success','NodeA','ABC123','DEF456',2048000,1995000,NULL,NULL,'OP001','High','Converted to archival format',0,3,'2025-02-01T07:55:00','2025-02-01T08:20:00','AL001','POL001','Y');

INSERT INTO library_digital_preservation_job VALUES
('DPJ002','ITEM2002','Photograph','ChecksumVerification','JPEG','JPEG','2025-03-05T10:30:00','2025-03-05T10:31:00','Success','NodeB','AAA111','AAA111',512000,512000,NULL,NULL,'OP002','Medium','Checksum matches',0,3,'2025-03-05T10:25:00','2025-03-05T10:35:00','AL002','POL002','N');

INSERT INTO library_digital_preservation_job VALUES
('DPJ003','ITEM3003','Audio','FormatConversion','WAV','FLAC','2025-04-10T14:00:00','2025-04-10T14:45:00','Failed','NodeC','XYZ789','XYZ789',10485760,0,'E001','Encoding error','OP003','Low','Conversion failed due to codec issue',1,3,'2025-04-10T13:55:00','2025-04-10T14:50:00','AL003','POL003','N');

-- Research data access audit records
CREATE TABLE research_data_access_audit
(
    audit_id                  TEXT    PRIMARY KEY,
    dataset_id                TEXT,
    user_id                   TEXT,
    access_timestamp          TEXT,
    access_type               TEXT,
    purpose_description       TEXT,
    data_volume_bytes         INTEGER,
    ip_address                TEXT,
    device_type               TEXT,
    authentication_method     TEXT,
    authorization_level       TEXT,
    compliance_flag           TEXT,
    risk_score                REAL,
    reviewer_id               TEXT,
    review_timestamp          TEXT,
    approval_status           TEXT,
    notes                     TEXT,
    retention_period_days     INTEGER,
    expiry_date               TEXT,
    data_classification       TEXT,
    encryption_used           TEXT,
    location_accessed         TEXT,
    audit_log_file            TEXT,
    incident_report_id        TEXT,
    policy_version            TEXT,
    mitigation_action         TEXT
);

INSERT INTO research_data_access_audit VALUES
('RAA001','DS100','USR001','2025-01-15T09:30:00','Read','Statistical analysis',1048576,'192.168.1.10','Laptop','Password','Level2','Y',12.5,'REV001','2025-01-16T10:00:00','Approved','No issues',365,'2026-01-15','Confidential','AES256','DataCenterA','log001.txt','INC001','v2.1','None');

INSERT INTO research_data_access_audit VALUES
('RAA002','DS200','USR002','2025-02-20T14:45:00','Export','Machine learning model training',52428800,'10.0.0.5','Desktop','MultiFactor','Level3','Y',18.0,'REV002','2025-02-21T09:15:00','Approved','Export logged',730,'2027-02-20','HighlySensitive','AES256','DataCenterB','log002.txt','INC002','v2.1','Review encryption settings');

INSERT INTO research_data_access_audit VALUES
('RAA003','DS300','USR003','2025-03-05T11:20:00','Delete','Data cleanup','0','172.16.0.2','Server','Password','Level4','N',25.0,'REV003','2025-03-06T08:40:00','Denied','Attempt blocked',180,'2025-09-02','Restricted','None','DataCenterC','log003.txt','INC003','v2.1','User training required');

-- Technology patent filing detail
CREATE TABLE technology_patent_filing_detail
(
    filing_id                 TEXT    PRIMARY KEY,
    invention_title           TEXT,
    inventor_id               TEXT,
    filing_date               TEXT,
    patent_office             TEXT,
    application_number        TEXT,
    technology_field          TEXT,
    abstract_text             TEXT,
    priority_date             TEXT,
    status                    TEXT,
    examiner_id               TEXT,
    response_deadline         TEXT,
    fee_paid                  REAL,
    fee_currency              TEXT,
    claims_count              INTEGER,
    prior_art_references      TEXT,
    international_filing      TEXT,
    family_id                 TEXT,
    publication_date          TEXT,
    grant_date                TEXT,
    legal_representative_id   TEXT,
    international_app_number  TEXT,
    status_history            TEXT,
    notes                     TEXT,
    disclosure_level          TEXT,
    funding_source            TEXT,
    project_code              TEXT,
    related_product_id        TEXT,
    confidentiality_flag      TEXT
);

INSERT INTO technology_patent_filing_detail VALUES
('PF001','AdaptiveSignalProcessor','INV001','2025-01-10','USPTO','US20250012345','SignalProcessing','Optimizes signal flow in real time','2024-12-01','Pending','EX001','2025-04-10',1500,'USD',12,'REF001,REF002','Y','FAM001','2025-09-15',NULL,'LP001','INT001','Filed','Initial filing','Public','UniversityGrant','PRJ001','PROD001','N');

INSERT INTO technology_patent_filing_detail VALUES
('PF002','QuantumEncryptionModule','INV002','2025-02-05','EPO','EP20250067890','QuantumComputing','Provides quantum-resistant encryption','2025-01-20','Pending','EX002','2025-05-05',2000,'EUR',18,'REF010,REF011','N','FAM002','2025-11-20',NULL,'LP002','INT002','Reviewed','Second review','Restricted','IndustryPartner','PRJ002','PROD002','Y');

INSERT INTO technology_patent_filing_detail VALUES
('PF003','BioSyntheticVaccine','INV003','2025-03-12','JPO','JP20250034567','Biotechnology','Synthetic platform for rapid vaccine development','2025-02-28','Granted','EX003','2025-06-12',2500,'JPY',20,'REF020,REF021','Y','FAM003','2025-12-30','2026-04-01','LP003','INT003','Granted','Final grant','Public','GovernmentGrant','PRJ003','PROD003','N');

-- Environmental compliance certificate records
CREATE TABLE environmental_compliance_certificate
(
    certificate_id            TEXT    PRIMARY KEY,
    facility_id               TEXT,
    certification_type        TEXT,
    issue_date                TEXT,
    expiry_date               TEXT,
    issuing_authority         TEXT,
    compliance_status         TEXT,
    inspection_date           TEXT,
    inspector_name            TEXT,
    findings_summary          TEXT,
    corrective_action_required TEXT,
    corrective_action_deadline TEXT,
    renewal_required          TEXT,
    renewal_notice_sent_date  TEXT,
    fee_amount                REAL,
    fee_currency              TEXT,
    emissions_limit_tons      REAL,
    water_usage_limit_m3      REAL,
    waste_disposal_method     TEXT,
    energy_efficiency_rating  TEXT,
    notes                     TEXT,
    auditor_id                TEXT,
    audit_report_id           TEXT,
    compliance_score          REAL,
    regulatory_reference      TEXT,
    monitoring_device_id      TEXT,
    last_reported_emissions   REAL,
    last_reported_water_use   REAL,
    verification_status       TEXT
);

INSERT INTO environmental_compliance_certificate VALUES
('EC001','FAC001','AirQuality','2024-06-01','2027-06-01','EPA','Compliant','2024-05-20','AliceGreen','No major issues','N','', 'Y','2027-05-15',5000,'USD',5.0,20000,'Recycling','A+','All good','AUD001','AR001',95.0,'40CFR','DEV001',4.8,19500,'Verified');

INSERT INTO environmental_compliance_certificate VALUES
('EC002','FAC002','WaterDischarge','2025-01-15','2028-01-15','StateDept','Conditional','2025-01-10','BobBlue','Minor exceedance','Y','2025-04-10','Y','2027-12-20',3000,'USD',0,15000,'TreatmentPlant','B','Corrected in Q2','AUD002','AR002',78.5','30CFR','DEV002',0.2,14800,'Pending');

INSERT INTO environmental_compliance_certificate VALUES
('EC003','FAC003','WasteManagement','2023-09-20','2026-09-20','LocalGov','Compliant','2023-09-15','CarolRed','All standards met','N','', 'Y','2026-09-05',2500,'USD',0,0,'Landfill','C','No issues','AUD003','AR003',88.0','45CFR','DEV003',0,0,'Verified');

-- Community outreach event budget tracking
CREATE TABLE community_outreach_event_budget
(
    budget_id                 TEXT    PRIMARY KEY,
    event_id                  TEXT,
    allocated_amount_usd       REAL,
    spent_amount_usd           REAL,
    remaining_amount_usd       REAL,
    currency                  TEXT,
    approval_date             TEXT,
    approved_by               TEXT,
    funding_source            TEXT,
    cost_center_code          TEXT,
    expense_category          TEXT,
    vendor_id                 TEXT,
    payment_status            TEXT,
    invoice_received_date     TEXT,
    payment_due_date          TEXT,
    fiscal_year               TEXT,
    notes                     TEXT,
    revision_number           INTEGER,
    last_revision_date        TEXT,
    audit_trail_id            TEXT,
    compliance_check_passed   TEXT,
    external_audit_required   TEXT,
    external_audit_status    TEXT,
    external_audit_date       TEXT,
    created_timestamp         TEXT,
    updated_timestamp         TEXT,
    budget_owner_id           TEXT,
    stakeholder_group         TEXT,
    risk_level                TEXT,
    contingency_percentage    REAL
);

INSERT INTO community_outreach_event_budget VALUES
('COB001','EVT001',20000,7500,12500,'USD','2025-01-05','JDoe','AlumniFunds','CC101','Supplies','VEND01','Paid','2025-01-10','2025-01-30','2025','Initial allocation',1,'2025-01-05','AUD001','Y','N','',NULL,'2025-01-05 08:00:00','2025-03-01 12:00:00','BM001','CommunityPartners','Low',10.0);

INSERT INTO community_outreach_event_budget VALUES
('COB002','EVT002',50000,30000,20000,'USD','2025-02-12','ASmith','CorporateSponsor','CC202','Marketing','VEND02','Pending','2025-02-20','2025-03-15','2025','Mid-year review',2,'2025-03-10','AUD002','Y','Y','InProgress','2025-04-01','2025-02-12 09:30:00','2025-04-20 14:45:00','BM002','LocalBusinesses','Medium',15.0);

INSERT INTO community_outreach_event_budget VALUES
('COB003','EVT003',12000,12000,0,'USD','2025-03-01','LWhite','Grant','CC303','Logistics','VEND03','Paid','2025-03-05','2025-03-25','2025','Final settlement',1,'2025-03-01','AUD003','Y','N','',NULL,'2025-03-01 10:00:00','2025-04-01 11:15:00','BM003','NGOs','Low',5.0);

-- Technology patent filing detail (extended with licensing info)
CREATE TABLE technology_patent_licensing
(
    license_id                TEXT    PRIMARY KEY,
    patent_filing_id          TEXT,
    licensee_id               TEXT,
    license_type              TEXT,
    grant_date                TEXT,
    expiry_date               TEXT,
    royalty_rate_percent      REAL,
    upfront_fee_usd           REAL,
    currency                  TEXT,
    exclusive_flag            TEXT,
    territory                 TEXT,
    sublicensing_allowed      TEXT,
    reporting_frequency       TEXT,
    last_report_date          TEXT,
    compliance_audit_required TEXT,
    audit_status              TEXT,
    audit_date                TEXT,
    notes                     TEXT,
    created_timestamp         TEXT,
    updated_timestamp         TEXT,
    license_status            TEXT,
    termination_clause        TEXT,
    dispute_resolution_mechanism TEXT,
    governing_law             TEXT,
    jurisdiction              TEXT,
    amendment_count           INTEGER,
    last_amendment_date       TEXT,
    renewal_option_available  TEXT,
    renewal_notice_sent_date  TEXT,
    renewal_fee_usd           REAL
);

INSERT INTO technology_patent_licensing VALUES
('LIC001','PF001','LIC001','Exclusive','2025-06-01','2030-06-01',5.0,10000,'USD','Y','World','N','Annual','2025-12-01','Y','Passed','2025-12-15','Initial exclusive license','2025-06-01 08:00:00','2025-12-01 10:00:00','Active','30 days notice','Arbitration','California','USA',0,NULL,'Y','2025-11-15',5000);

INSERT INTO technology_patent_licensing VALUES
('LIC002','PF002','LIC002','NonExclusive','2025-07-15','2028-07-15',2.5,5000,'EUR','N','Europe','Y','Quarterly','2025-10-15','N','',NULL,'Regional non‑exclusive license','2025-07-15 09:30:00','2025-10-15 11:45:00','Active','60 days notice','Mediation','Germany','EU',1,'2026-01-10','N',NULL);

INSERT INTO technology_patent_licensing VALUES
('LIC003','PF003','LIC003','Exclusive','2025-08-20','2035-08-20',7.0,20000,'JPY','Y','Asia','N','BiAnnual','2026-02-20','Y','Passed','2026-02-25','Long‑term exclusive license','2025-08-20 14:00:00','2026-02-20 15:30:00','Active','90 days notice','Arbitration','Japan','Japan',0,NULL,'Y','2026-02-10',10000);

-- Research data processing job logs
CREATE TABLE research_data_processing_job_log
(
    job_log_id                TEXT    PRIMARY KEY,
    dataset_id                TEXT,
    processing_step           TEXT,
    start_time                TEXT,
    end_time                  TEXT,
    status                    TEXT,
    compute_node_id           TEXT,
    cpu_cores_used            INTEGER,
    memory_gb_used            REAL,
    storage_gb_used           REAL,
    input_records             INTEGER,
    output_records            INTEGER,
    error_code                TEXT,
    error_message             TEXT,
    initiated_by_user_id      TEXT,
    priority_level            TEXT,
    retry_attempts            INTEGER,
    max_retries               INTEGER,
    notification_email        TEXT,
    log_file_path             TEXT,
    checksum_before           TEXT,
    checksum_after            TEXT,
    data_volume_bytes         INTEGER,
    additional_parameters     TEXT,
    notes                     TEXT,
    audit_trail_id            TEXT,
    compliance_check_passed   TEXT,
    reviewer_id               TEXT,
    review_timestamp          TEXT,
    approval_status           TEXT
);

INSERT INTO research_data_processing_job_log VALUES
('DPJLOG001','DS100','Normalization','2025-01-10T08:00:00','2025-01-10T08:20:00','Success','Node01',8,16.0,50.0,1000000,1000000,NULL,NULL,'USR001','High',0,3,'dataops@university.edu','/logs/dpjlog001.txt','AAA111','BBB222',8000000,'method=standard;threshold=0.05','Processed successfully','AL001','Y','REV001','2025-01-10T09:00:00','Approved');

INSERT INTO research_data_processing_job_log VALUES
('DPJLOG002','DS200','Aggregation','2025-02-15T10:30:00','2025-02-15T11:00:00','Failed','Node02',16,32.0,120.0,2000000,1800000,'E101','Memory overflow','USR002','Medium',1,3,'dataops@university.edu','/logs/dpjlog002.txt','CCC333','DDD444',15000000,'method=custom;group_by=region','Failed due to memory limit','AL002','N','REV002','2025-02-15T12:00:00','Pending');

INSERT INTO research_data_processing_job_log VALUES
('DPJLOG003','DS300','Anonymization','2025-03-20T14:00:00','2025-03-20T14:45:00','Success','Node03',4,8.0,30.0,500000,500000,NULL,NULL,'USR003','Low',0,3,'dataops@university.edu','/logs/dpjlog003.txt','EEE555','FFF666',2500000,'method=hash;salt=abc123','Anonymization completed','AL003','Y','REV003','2025-03-20T15:30:00','Approved');

-- Facility energy audit record
CREATE TABLE facility_energy_audit_record
(
    audit_id                  TEXT    PRIMARY KEY,
    facility_id               TEXT,
    audit_date                TEXT,
    auditor_name              TEXT,
    auditor_contact           TEXT,
    total_energy_consumption_kwh REAL,
    peak_demand_kw            REAL,
    baseline_year             INTEGER,
    energy_savings_target_percent REAL,
    actual_savings_percent    REAL,
    cost_savings_usd          REAL,
    currency                  TEXT,
    recommendation_summary    TEXT,
    implementation_status     TEXT,
    follow_up_date            TEXT,
    certification_obtained    TEXT,
    certification_body        TEXT,
    certification_date        TEXT,
    notes                     TEXT,
    data_source_system        TEXT,
    verification_method       TEXT,
    compliance_status         TEXT,
    risk_assessment_level     TEXT,
    carbon_emission_reduction_tons REAL,
    renewable_energy_percentage REAL,
    lighting_upgrade_done     TEXT,
    hvac_upgrade_done         TEXT,
    building_age_years        INTEGER,
    floor_area_sqft           INTEGER,
    occupancy_rate_percent    REAL,
    maintenance_schedule_id   TEXT,
    last_maintenance_date     TEXT,
    future_improvement_plan   TEXT,
    budget_allocation_usd     REAL,
    actual_expenditure_usd    REAL,
    variance_usd              REAL
);

INSERT INTO facility_energy_audit_record VALUES
('FAAR001','FAC001','2025-01-20','EmilyGreen','emily.green@university.edu',1200000,350,2018,10.0,8.5,75000,'USD','Upgrade lighting and HVAC','InProgress','2025-09-01','LEED','USGBC','2025-06-15','On track','EnergyManagementSystem','Automated','Compliant','Medium',180,'25.0','Y','Y',15,50000,85.0,'MAINT001','2025-03-15','Phase2 HVAC','200000','150000','50000');

INSERT INTO facility_energy_audit_record VALUES
('FAAR002','FAC002','2025-02-10','MichaelBrown','michael.brown@university.edu',800000,200,2015,12.0,11.0,60000,'USD','Install solar panels','Completed','2025-08-01','BREEAM','BRE','2025-07-10','Completed','SolarMonitoring','Manual','Compliant','Low',120,'30.0','Y','N',10,30000,70.0,'MAINT002','2025-01-20','Add battery storage','150000','120000','30000');

INSERT INTO facility_energy_audit_record VALUES
('FAAR003','FAC003','2025-03-05','SarahLee','sarah.lee@university.edu',950000,280,2020,9.0,7.0,50000,'USD','Retrofit windows','Pending','2025-12-15','None','',NULL,'Awaiting funding','EnergyAuditTool','Automated','Pending','High',95,'20.0','N','N',12,40000,65.0,'MAINT003','2025-02-28','Window upgrading schedule','180000','130000','50000');

-- Research collaboration network
CREATE TABLE research_collaboration_network
(
    network_id                TEXT    PRIMARY KEY,
    collaboration_name        TEXT,
    lead_institution_id       TEXT,
    partner_institution_ids   TEXT,
    start_date                TEXT,
    end_date                  TEXT,
    research_area             TEXT,
    total_funding_usd         REAL,
    currency                  TEXT,
    number_of_projects        INTEGER,
    total_publications        INTEGER,
    average_impact_factor     REAL,
    data_sharing_policy       TEXT,
    intellectual_property_policy TEXT,
    governance_structure      TEXT,
    meeting_frequency         TEXT,
    last_meeting_date         TEXT,
    next_meeting_date         TEXT,
    contact_person_id         TEXT,
    contact_email             TEXT,
    status                    TEXT,
    notes                     TEXT,
    created_timestamp         TEXT,
    updated_timestamp         TEXT,
    primary_contact_phone     TEXT,
    website_url               TEXT,
    reporting_requirements   TEXT,
    audit_compliance_flag     TEXT,
    audit_report_id           TEXT,
    risk_assessment_level     TEXT,
    sustainability_goal       TEXT,
    diversity_inclusion_plan TEXT,
    outreach_activity_count   INTEGER,
    training_sessions_conducted INTEGER,
    external_review_required  TEXT,
    external_review_status    TEXT,
    external_review_date      TEXT
);

INSERT INTO research_collaboration_network VALUES
('RCN001','QuantumComputingConsortium','INST001','INST002,INST003','2024-09-01','2029-08-31','Quantum Computing',25000000,'USD',12,45,5.2,'Open','JointOwnership','SteeringCommittee','Quarterly','2025-06-15','2025-09-15','USR010','lead@consortium.edu','Active','Focused on quantum algorithms','2024-09-10 08:00:00','2025-03-01 09:30:00','5551112222','http://qcc.university.edu','AnnualReport','Y','AR001','Medium','Reduce carbon footprint by 10%','Include at least 30% underrepresented researchers','8','5','N','',NULL);

INSERT INTO research_collaboration_network VALUES
('RCN002','SustainableAgricultureNetwork','INST010','INST011,INST012,INST013','2023-01-15','2028-12-31','Sustainable Agriculture',18000000,'USD',9,30,4.8','Restricted','Shared','AdvisoryBoard','Biannual','2025-04-20','2025-10-20','USR020','contact@sustainag.org','Active','Pilot projects on precision farming','2023-01-20 10:00:00','2025-02-10 11:15:00','5553334444','http://sustainag.university.edu','QuarterlyReport','N','',NULL,'Low','Increase yield by 15%','Gender parity target 40%','12','7','Y','Pending','2025-07-01');

INSERT INTO research_collaboration_network VALUES
('RCN003','AIHealthcareAlliance','INST020','INST021,INST022','2025-03-01','2030-02-28','AI in Healthcare',30000000,'USD',15,60,6.1','Open','JointIP','ExecutiveCommittee','Monthly','2025-05-10','2025-08-10','USR030','info@aihealth.org','Planning','Drafting proposals for AI diagnostics','2025-03-05 09:45:00','2025-04-15 10:30:00','5555556666','http://aihealth.university.edu','SemiAnnualReport','Y','AR005','High','Achieve 20% reduction in diagnostic time','Inclusive training for clinicians','4','3','N','',NULL);