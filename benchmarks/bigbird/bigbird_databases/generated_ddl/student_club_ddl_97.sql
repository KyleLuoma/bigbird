-- Campus Policy Revision
CREATE TABLE campus_policy_revision
(
    revision_id            TEXT PRIMARY KEY,
    policy_id              TEXT,
    revision_number        INTEGER,
    revision_date          TEXT,
    effective_date         TEXT,
    title                  TEXT,
    summary                TEXT,
    created_by             TEXT,
    approved_by            TEXT,
    status                 TEXT,
    change_category        TEXT,
    impacted_department    TEXT,
    stakeholder_comments   TEXT,
    compliance_flag       TEXT,
    review_cycle           TEXT,
    attached_document      TEXT,
    change_type            TEXT,
    risk_level             TEXT,
    budget_impact          REAL,
    notes                  TEXT,
    source_system          TEXT,
    last_updated           TEXT
);

INSERT INTO campus_policy_revision VALUES
('rev001','pol100','1','2024-01-15','2024-02-01','Data Privacy Update','Update to student data handling','admin1','dean1','Approved','Privacy','IT','All good','Yes','Annual','doc1.pdf','Amendment','Medium',1500.00,'Initial rollout','HRIS','2024-01-15');

INSERT INTO campus_policy_revision VALUES
('rev002','pol101','2','2024-03-10','2024-04-01','Campus Safety Protocol','Revised evacuation procedures','safetylead','dean2','Pending','Safety','Facilities','Review needed','No','Biannual','doc2.pdf','Revision','High',2500.00,'Pending review','SafetySys','2024-03-10');

INSERT INTO campus_policy_revision VALUES
('rev003','pol102','1','2024-05-20','2024-06-01','Research Ethics','New animal research guidelines','ethicschair','dean3','Approved','Ethics','Research','All departments','Yes','Annual','doc3.pdf','Addition','Low',1000.00,'Compliance check','ResearchDB','2024-05-20');

-- Academic Department Budget
CREATE TABLE academic_department_budget
(
    budget_id                TEXT PRIMARY KEY,
    department_id            TEXT,
    fiscal_year              TEXT,
    total_budget             REAL,
    allocated_salary         REAL,
    allocated_operations     REAL,
    allocated_capital        REAL,
    allocated_research       REAL,
    allocated_scholarships   REAL,
    unspent_funds            REAL,
    revision_number          INTEGER,
    approved_by              TEXT,
    approved_date            TEXT,
    created_by               TEXT,
    created_date             TEXT,
    notes                    TEXT,
    last_modified_by         TEXT,
    last_modified_date       TEXT,
    budget_status            TEXT,
    source_system            TEXT,
    audit_flag               TEXT,
    compliance_score         REAL,
    external_funding          REAL,
    internal_funding          REAL,
    variance_percentage      REAL,
    contingency_reserve      REAL
);

INSERT INTO academic_department_budget VALUES
('bud001','dept01','2024',5000000,2500000,1500000,500000,300000,200000,0,1,'deanA','2024-02-01','financeA','2024-01-15','Initial allocation','financeA','2024-02-01','Active','FIN','No',85.5,500000,4500000,0,200000);

INSERT INTO academic_department_budget VALUES
('bud002','dept02','2024',3500000,1800000,1000000,200000,150000,100000,0,1,'deanB','2024-02-10','financeB','2024-01-20','Initial allocation','financeB','2024-02-10','Active','FIN','No',90.0,300000,3200000,0,150000);

INSERT INTO academic_department_budget VALUES
('bud003','dept03','2024',4200000,2100000,1200000,300000,250000,150000,0,1,'deanC','2024-03-01','financeC','2024-02-05','Initial allocation','financeC','2024-03-01','Active','FIN','No',88.2,400000,3800000,0,180000);

-- Research Ethics Form
CREATE TABLE research_ethics_form
(
    form_id                 TEXT PRIMARY KEY,
    project_id              TEXT,
    principal_investigator  TEXT,
    submission_date         TEXT,
    review_deadline         TEXT,
    ethics_category         TEXT,
    human_subjects_flag    TEXT,
    animal_subjects_flag    TEXT,
    data_security_level     TEXT,
    confidentiality_agreement TEXT,
    risk_assessment_score   REAL,
    funding_source          TEXT,
    estimated_budget        REAL,
    status                  TEXT,
    reviewer_assigned       TEXT,
    review_start_date       TEXT,
    review_end_date         TEXT,
    comments                TEXT,
    approval_date           TEXT,
    approved_by             TEXT,
    amendment_number        INTEGER,
    last_updated            TEXT,
    attached_protocol       TEXT,
    compliance_requirements TEXT,
    ethical_guidelines_version TEXT,
    external_review_needed TEXT,
    internal_review_needed TEXT,
    overall_score           REAL,
    documentation_link      TEXT,
    notes                   TEXT,
    source_system           TEXT
);

INSERT INTO research_ethics_form VALUES
('form001','projA','DrSmith','2024-01-10','2024-02-10','Medical','Yes','No','High','Signed','85.0','GrantX',200000,'Pending','revA','2024-01-15','2024-02-05','None','2024-02-08','CommitteeChair',0,'2024-01-12','protocolA.pdf','HIPAA','v3','No','Yes',88.5,'doclink1','Initial submission','ESIS');

INSERT INTO research_ethics_form VALUES
('form002','projB','DrJones','2024-03-05','2024-04-05','Social','No','No','Medium','Signed','70.0','FundY',120000,'Approved','revB','2024-03-10','2024-04-02','All good','2024-04-04','CommitteeVice','0','2024-03-06','protocolB.pdf','FERPA','v2','No','No',75.0,'doclink2','Approved without changes','ESIS');

INSERT INTO research_ethics_form VALUES
('form003','projC','DrLee','2024-05-12','2024-06-12','Biological','No','Yes','High','Signed','92.0','GrantZ',300000,'Pending','revC','2024-05-20','2024-06-10','Requires amendment','2024-06-15','CommitteeChair','1','2024-05-14','protocolC.pdf','Animal Welfare','v4','Yes','Yes',90.0,'doclink3','Amendment in progress','ESIS');

-- Library Staff Training
CREATE TABLE library_staff_training
(
    training_id               TEXT PRIMARY KEY,
    staff_id                  TEXT,
    staff_name                TEXT,
    department                TEXT,
    training_topic            TEXT,
    training_type             TEXT,
    trainer_name              TEXT,
    scheduled_date            TEXT,
    completion_date           TEXT,
    duration_minutes          INTEGER,
    certification_obtained    TEXT,
    mandatory_flag            TEXT,
    status                    TEXT,
    feedback_score            REAL,
    feedback_comments         TEXT,
    location                  TEXT,
    materials_provided        TEXT,
    equipment_used            TEXT,
    learning_objectives       TEXT,
    assessment_method         TEXT,
    pass_fail_indicator       TEXT,
    compliance_deadline       TEXT,
    follow_up_required        TEXT,
    follow_up_date            TEXT,
    notes                     TEXT,
    last_updated_by           TEXT,
    last_updated_date         TEXT,
    created_by                TEXT,
    created_date              TEXT,
    source_system             TEXT,
    audit_flag                TEXT,
    compliance_score          REAL,
    accreditation_body        TEXT,
    training_version          TEXT,
    budget_allocation         REAL,
    external_provider         TEXT,
    internal_coordinator      TEXT,
    evaluation_methodology    TEXT,
    post_training_support     TEXT
);

INSERT INTO library_staff_training VALUES
('train001','staff01','Alice Smith','Circulation','Digital Cataloging','Online','John Doe','2024-02-10','2024-02-12',180,'Yes','Yes','Completed',4.5,'Very helpful','Room101','Manuals','Computers','Catalog workflow','Quiz','Pass','2024-06-01','No','','','updatedBy1','2024-02-13','hr1','2024-01-20','LIB','No',95.0','ALA','v1',500,'VendorX','LibMgr','Standard','EmailSupport');

INSERT INTO library_staff_training VALUES
('train002','staff02','Bob Johnson','Reference','Customer Service','InPerson','Jane Roe','2024-03-05','2024-03-05',120,'Yes','Yes','Completed',4.2,'Good session','Room202','Handouts','Projector','Client interaction','RolePlay','Pass','2024-07-01','Yes','2024-08-01','Follow-up workshop','hr2','2024-03-06','hr2','2024-02-28','LIB','No',92.0,'ALA','v1',400,'VendorY','LibMgr','Standard','PhoneSupport');

INSERT INTO library_staff_training VALUES
('train003','staff03','Carol Lee','Acquisitions','Budget Management','Online','Mike Tan','2024-04-15','','90','No','Yes','Scheduled',0.0,'','Room303','','','Budget allocation','Assignment','Pending','2024-09-01','Yes','2024-10-01','Awaiting completion','hr3','2024-04-16','hr3','2024-04-01','LIB','No',0.0,'ALA','v1',300,'VendorZ','LibMgr','Standard','None');

-- Energy Utility Contract
CREATE TABLE energy_utility_contract
(
    contract_id               TEXT PRIMARY KEY,
    utility_name              TEXT,
    contract_number           TEXT,
    start_date                TEXT,
    end_date                  TEXT,
    contract_type             TEXT,
    service_area              TEXT,
    annual_capacity_mwh       REAL,
    fixed_rate_per_mwh        REAL,
    variable_rate_per_mwh     REAL,
    peak_demand_charge        REAL,
    minimum_purchase_mwh      REAL,
    renewable_energy_pct      REAL,
    carbon_offset_included    TEXT,
    payment_terms_days        INTEGER,
    billing_cycle             TEXT,
    early_termination_fee     REAL,
    escalation_clause         TEXT,
    renewal_option            TEXT,
    notice_period_days        INTEGER,
    authorized_signatory      TEXT,
    contract_status           TEXT,
    last_amended_date         TEXT,
    amendment_number          INTEGER,
    notes                     TEXT,
    compliance_requirements  TEXT,
    regulatory_approval       TEXT,
    insurance_required        TEXT,
    guarantor_name            TEXT,
    guarantor_contact         TEXT,
    parent_company            TEXT,
    subsidiary_company        TEXT,
    contract_value_usd        REAL,
    discount_rate_percent     REAL,
    renewable_certificate_number TEXT,
    created_by                TEXT,
    created_date              TEXT,
    source_system             TEXT,
    audit_flag                TEXT,
    last_verified_date        TEXT
);

INSERT INTO energy_utility_contract VALUES
('cnt001','PowerCo','C-001','2024-01-01','2028-12-31','Supply','Campus','50000',95.5,0.0,1200,2000,30.0,'Yes','30','Monthly',50000,'Annual escalation','Option to renew','180','Jane Director','Active','2024-01-01',0,'Standard contract','Yes','Approved','Yes','GuarantorA','555-1234','ParentEnergy','CampusSubsidiary',20000000,5.0,'RC-12345','admin','2024-01-01','ERP','No','2024-01-01');

INSERT INTO energy_utility_contract VALUES
('cnt002','EcoGrid','C-002','2024-06-01','2029-05-31','Supply','Campus East','30000',88.0,0.0,1000,1500,40.0,'Yes','45','Quarterly',40000,'Annual escalation','Option to renew','180','John Manager','Active','2024-06-01',0,'East campus specific','Yes','Approved','Yes','GuarantorB','555-5678','EcoParent','EastSubsidiary',15000000,4.0,'RC-67890','admin','2024-06-01','ERP','No','2024-06-01');

INSERT INTO energy_utility_contract VALUES
('cnt003','SolarCo','C-003','2025-01-01','2030-12-31','Supply','Campus Solar','20000',0.0,0.0,0,0,100.0,'Yes','60','Annual',0,'No escalation','Option to renew','180','Emily Lead','Pending','2024-12-01',0,'Solar power agreement','Yes','Approved','Yes','GuarantorC','555-9012','SolarParent','SolarSubsidiary',12000000,0.0,'RC-11223','admin','2024-12-01','ERP','No','2024-12-01');

-- Parking Permit Application
CREATE TABLE parking_permit_application
(
    application_id           TEXT PRIMARY KEY,
    applicant_id             TEXT,
    applicant_name           TEXT,
    vehicle_make             TEXT,
    vehicle_model            TEXT,
    vehicle_year             INTEGER,
    license_plate            TEXT,
    permit_type              TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    status                   TEXT,
    submitted_date           TEXT,
    reviewed_date            TEXT,
    reviewer_id              TEXT,
    approval_date            TEXT,
    expiration_date          TEXT,
    payment_status           TEXT,
    payment_amount           REAL,
    payment_method           TEXT,
    receipt_number           TEXT,
    special_conditions      TEXT,
    vehicle_color            TEXT,
    parking_zone_assigned    TEXT,
    resident_status          TEXT,
    university_affiliation   TEXT,
    notes                    TEXT,
    last_updated_by          TEXT,
    last_updated_date        TEXT,
    created_by               TEXT,
    created_date             TEXT,
    source_system            TEXT,
    audit_flag               TEXT,
    compliance_check         TEXT,
    insurance_provided       TEXT,
    insurance_provider       TEXT,
    insurance_policy_number  TEXT,
    vehicle_vin              TEXT,
    emission_sticker_number  TEXT,
    electric_vehicle_flag    TEXT,
    charger_location         TEXT,
    public_transport_subsidy TEXT,
    sustainability_score     REAL,
    permit_version           TEXT,
    renewal_required         TEXT,
    renewal_deadline         TEXT
);

INSERT INTO parking_permit_application VALUES
('app001','mem001','Alice Smith','Toyota','Camry',2018,'ABC123','Resident','2024-08-01','2025-07-31','Pending','2024-07-20','2024-07-25','rev001','','2025-07-31','Unpaid',150.00,'CreditCard','RCPT001','None','Blue','ZoneA','Resident','Student','N/A','admin','2024-07-20','admin','2024-07-15','PARK','No','Yes','Yes','InsureCo','POL12345','1HGCM82633A004352','STK001','No','N/A','No','0.6','v1','Yes','2025-06-30');

INSERT INTO parking_permit_application VALUES
('app002','mem002','Bob Johnson','Honda','Civic',2020,'XYZ789','Visitor','2024-09-01','2024-09-30','Approved','2024-08-15','2024-08-20','rev002','2024-08-21','2024-09-30','Paid',50.00,'Cash','RCPT002','Metered','Red','ZoneB','Visitor','Faculty','N/A','admin','2024-08-15','admin','2024-08-10','PARK','No','Yes','No','','','', '2HGES16555H123456','STK002','No','N/A','No','0.8','v1','No','');

INSERT INTO parking_permit_application VALUES
('app003','mem003','Carol Lee','Tesla','Model 3',2022,'ELEC123','Resident','2024-07-01','2025-06-30','Approved','2024-06-10','2024-06-12','rev003','2024-06-13','2025-06-30','Paid',200.00,'Online','RCPT003','Reserved EV spot','White','ZoneC','Resident','Student','EV charger requested','admin','2024-06-10','admin','2024-06-05','PARK','No','Yes','Yes','EcoInsure','POL67890','5YJ3E1EA7KF123456','STK003','Yes','EVStation1','Yes','0.95','v2','Yes','2025-05-31');

-- Student Exchange Program Feedback
CREATE TABLE student_exchange_feedback
(
    feedback_id                TEXT PRIMARY KEY,
    student_id                 TEXT,
    exchange_program_id        TEXT,
    host_university            TEXT,
    start_date                 TEXT,
    end_date                   TEXT,
    overall_satisfaction       REAL,
    academic_experience_rating REAL,
    cultural_experience_rating REAL,
    housing_quality_rating     REAL,
    language_support_rating    REAL,
    safety_concern_rating      REAL,
    recommendation_likelihood  REAL,
    comments                   TEXT,
    future_participation_intent TEXT,
    extracurricular_participation TEXT,
    credit_transfer_success    TEXT,
    advisor_contacted          TEXT,
    advisor_feedback           TEXT,
    financial_aid_received     TEXT,
    scholarship_awarded        TEXT,
    visa_process_efficiency    TEXT,
    post_exchange_employment   TEXT,
    networking_opportunities   TEXT,
    language_improvement       TEXT,
    personal_growth            TEXT,
    cultural_awareness         TEXT,
    challenges_faced           TEXT,
    support_services_used      TEXT,
    improvement_suggestions    TEXT,
    created_by                 TEXT,
    created_date               TEXT,
    last_updated_by            TEXT,
    last_updated_date          TEXT,
    source_system              TEXT,
    audit_flag                 TEXT,
    compliance_check           TEXT,
    program_coordinator        TEXT,
    feedback_version           TEXT,
    anonymity_preference       TEXT,
    additional_resources_requested TEXT,
    overall_rating_comment     TEXT,
    survey_completion_status   TEXT,
    response_time_minutes      INTEGER,
    follow_up_required         TEXT,
    follow_up_date             TEXT,
    notes                      TEXT,
    verified_by                TEXT,
    verification_date          TEXT,
    external_review_status     TEXT
);

INSERT INTO student_exchange_feedback VALUES
('fb001','stu001','exch001','University Berlin','2023-09-01','2024-01-31',4.5,4.0,4.8,4.2,4.6,4.0,5.0,'Great experience','Yes','Yes','Yes','Yes','Positive','Yes','No','Smooth','Yes','High','Improved German','Significant','High','Housing issues','Student Services','More language workshops','admin','2024-02-10','admin','2024-02-15','ERAS','No','Yes','v1','No','None','Excellent','Completed',30,'No','','','verifier1','2024-02-20','Approved');

INSERT INTO student_exchange_feedback VALUES
('fb002','stu002','exch002','University Tokyo','2022-08-15','2022-12-15',3.8,3.5,4.0,3.0,3.8,3.2,4.5,'Good but housing was small','Maybe','Yes','Yes','No','Some concerns','Mixed','Yes','Partial','Complex','No','Medium','Improved Japanese','Moderate','Medium','Cultural adjustment','International Office','Better pre-departure info','admin','2023-01-20','admin','2023-01-25','ERAS','Yes','Yes','v2','Yes','More funding info','Good','Completed',45,'Yes','2023-02-05','Follow-up scheduled','verifier2','2023-01-30','Pending');

INSERT INTO student_exchange_feedback VALUES
('fb003','stu003','exch003','University Sydney','2021-01-10','2021-06-10',4.2,4.3,4.5,4.4,4.5,4.1,4.8','Excellent program','Yes','Yes','Yes','Yes','Very positive','Yes','Yes','Smooth','Yes','High','Improved English','Significant','High','Few administrative delays','Student Services','More networking events','admin','2021-07-01','admin','2021-07-05','ERAS','No','Yes','v1','No','None','Outstanding','Completed',20,'No','','','verifier3','2021-07-10','Approved');

-- Faculty Research Collaboration Agreement
CREATE TABLE faculty_collab_agreement
(
    agreement_id               TEXT PRIMARY KEY,
    lead_faculty_id            TEXT,
    lead_faculty_name          TEXT,
    partner_institution        TEXT,
    partner_faculty_id         TEXT,
    partner_faculty_name       TEXT,
    collaboration_title        TEXT,
    start_date                 TEXT,
    end_date                   TEXT,
    status                     TEXT,
    funding_amount_usd          REAL,
    funding_source             TEXT,
    intellectual_property_rights TEXT,
    data_sharing_policy        TEXT,
    publication_commitment     TEXT,
    confidentiality_clause     TEXT,
    termination_clause         TEXT,
    renewal_option             TEXT,
    amendment_number           INTEGER,
    last_amended_date          TEXT,
    created_by                 TEXT,
    created_date               TEXT,
    last_updated_by            TEXT,
    last_updated_date          TEXT,
    notes                      TEXT,
    compliance_requirements   TEXT,
    regulatory_approval_needed TEXT,
    ethics_review_required    TEXT,
    project_manager           TEXT,
    project_manager_email     TEXT,
    budget_breakdown_equipment REAL,
    budget_breakdown_personnel REAL,
    budget_breakdown_travel    REAL,
    budget_breakdown_misc      REAL,
    reporting_frequency       TEXT,
    reporting_format          TEXT,
    audit_flag                TEXT,
    source_system             TEXT,
    external_agreement_number TEXT,
    internal_reference_code   TEXT,
    risk_assessment_score     REAL,
    risk_mitigation_plan      TEXT,
    conflict_of_interest_flag TEXT,
    conflict_of_interest_details TEXT,
    stakeholder_engagement_plan TEXT,
    sustainability_commitment TEXT,
    open_access_requirement   TEXT,
    data_retention_period_years INTEGER,
    post_project_disposition   TEXT,
    verification_status       TEXT,
    verified_by               TEXT,
    verification_date         TEXT
);

INSERT INTO faculty_collab_agreement VALUES
('agr001','fac001','Dr Alice','University London','facL001','Prof Brown','AI for Healthcare','2024-01-01','2026-12-31','Active',1200000,'GrantX','Joint','Open','Yes','Standard','Standard','Renewable','0','2024-01-01','admin','2024-01-01','admin','2024-01-01','N/A','Yes','No','Yes','John Manager','john@uni.edu',300000,500000,200000,200000,'Quarterly','PDF','No','ERAS','EXT001','INT001',85.0,'Risk plan A','No','','','Yes','Yes','Yes',5,'Archive','Verified','verifier1','2024-01-15');

INSERT INTO faculty_collab_agreement VALUES
('agr002','fac002','Dr Bob','Institute Tech','facT002','Dr Green','Quantum Computing','2023-06-01','2025-05-31','Completed',800000,'Industry','University','Restricted','No','Standard','Standard','One-time','Renewable','1','2024-06-15','admin','2023-06-01','admin','2024-06-20','Successful','Yes','Yes','No','Emily Lead','emily@tech.org',200000,400000,100000,100000,'Annual','Excel','Yes','ERAS','EXT002','INT002',78.0,'Risk plan B','Yes','Conflict A','Plan B','No','No','No',3,'Delete','Closed','verifier2','2025-06-01');

INSERT INTO faculty_collab_agreement VALUES
('agr003','fac003','Dr Carol','University Tokyo','facJ003','Prof Sato','Renewable Energy Storage','2025-03-01','2028-02-28','Pending',1500000,'GovGrant','Joint','Open','Yes','Standard','Standard','Renewable','0','2025-03-01','admin','2025-03-01','admin','2025-03-01','N/A','Yes','No','Yes','Michael Director','michael@uni.jp',400000,600000,300000,200000,'Semiannual','CSV','No','ERAS','EXT003','INT003',92.0,'Risk plan C','No','','','Yes','Yes','Yes',7,'Archive','Pending','verifier3','2025-03-10');

-- Community Outreach Fund
CREATE TABLE community_outreach_fund
(
    fund_id                TEXT PRIMARY KEY,
    fund_name              TEXT,
    fiscal_year            TEXT,
    total_amount_usd       REAL,
    allocated_amount_usd   REAL,
    remaining_balance_usd  REAL,
    source_type            TEXT,
    source_details         TEXT,
    approval_date          TEXT,
    approved_by            TEXT,
    fund_manager_id        TEXT,
    fund_manager_name      TEXT,
    allocation_strategy    TEXT,
    priority_level         TEXT,
    eligibility_criteria  TEXT,
    application_deadline   TEXT,
    disbursement_schedule  TEXT,
    reporting_requirements TEXT,
    audit_required         TEXT,
    audit_frequency        TEXT,
    audit_body             TEXT,
    compliance_status      TEXT,
    notes                  TEXT,
    created_by             TEXT,
    created_date           TEXT,
    last_updated_by        TEXT,
    last_updated_date      TEXT,
    source_system          TEXT,
    audit_flag             TEXT,
    renewal_option         TEXT,
    renewal_deadline       TEXT,
    matching_funds_allowed TEXT,
    matching_fund_source   TEXT,
    impact_metric          TEXT,
    impact_target          REAL,
    impact_achieved        REAL,
    community_partner_id   TEXT,
    community_partner_name TEXT,
    program_id             TEXT,
    program_name           TEXT,
    fund_status            TEXT,
    expense_category       TEXT,
    expense_subcategory    TEXT,
    expense_amount_usd     REAL,
    expense_date           TEXT,
    expense_description    TEXT,
    verification_status    TEXT,
    verified_by            TEXT,
    verification_date      TEXT
);

INSERT INTO community_outreach_fund VALUES
('fund001','Local Education Support','2024',500000,200000,300000,'Donations','Alumni donors','2024-02-01','Dean A','mgr001','Laura Smith','Equity','High','Nonprofit orgs','2024-03-15','Quarterly','Annual report','Yes','Annual','Internal Audit','Compliant','Initial setup','admin','2024-01-20','admin','2024-02-05','FIN','No','2025-02-01','Yes','Corporate Sponsors','Number of students reached',1000,850,'partner001','Community Center','prog001','After School Program','Active','Program Supplies','Supplies',15000,'2024-04-10','Books and materials','Verified','verifier1','2024-04-15');

INSERT INTO community_outreach_fund VALUES
('fund002','Health Outreach Initiative','2024',300000,120000,180000,'Grants','State Health Dept','2024-01-15','Dean B','mgr002','Mike Lee','Needs-based','Medium','Health NGOs','2024-02-28','Monthly','Quarterly report','Yes','Quarterly','External Audit','Compliant','Mid-year review','admin','2023-12-01','admin','2024-01-10','FIN','No','2025-01-15','Yes','Federal Grants','Number of clinics established',5,4,'partner002','Health Clinic','prog002','Mobile Health Clinic','Active','Medical Supplies','Supplies',20000,'2024-05-05','Vaccines and PPE','Verified','verifier2','2024-05-10');

INSERT INTO community_outreach_fund VALUES
('fund003','Environmental Conservation Fund','2024',400000,250000,150000,'Corporate','EcoCorp','2024-03-01','Dean C','mgr003','Sara Patel','Sustainability','High','Local NGOs','2024-04-15','Biannual','Sustainability report','Yes','Biannual','Third Party Audit','Compliant','Planning phase','admin','2024-02-20','admin','2024-03-05','FIN','Yes','2025-03-01','Yes','Community Matching','Number of trees planted',2000,1800,'partner003','Green Initiative','prog003','Tree Planting Campaign','Active','Equipment Rental','Rental',12000,'2024-06-01','Saplings and tools','Verified','verifier3','2024-06-05');

-- Event Technology Inventory
CREATE TABLE event_technology_inventory
(
    inventory_id           TEXT PRIMARY KEY,
    event_id               TEXT,
    technology_type        TEXT,
    brand                  TEXT,
    model                  TEXT,
    serial_number          TEXT,
    purchase_date          TEXT,
    warranty_expiration    TEXT,
    status                 TEXT,
    location               TEXT,
    allocated_to           TEXT,
    allocation_date        TEXT,
    return_date            TEXT,
    maintenance_schedule   TEXT,
    last_maintenance_date  TEXT,
    next_maintenance_date  TEXT,
    maintenance_provider   TEXT,
    maintenance_cost        REAL,
    calibration_required   TEXT,
    calibration_date       TEXT,
    firmware_version       TEXT,
    software_version       TEXT,
    accessories_included   TEXT,
    power_requirements     TEXT,
    connectivity_type      TEXT,
    network_address        TEXT,
    ip_configuration       TEXT,
    assigned_operator      TEXT,
    operator_contact       TEXT,
    usage_log              TEXT,
    usage_hours_total      REAL,
    last_used_date         TEXT,
    condition_rating       REAL,
    depreciation_value     REAL,
    resale_value           REAL,
    disposal_plan          TEXT,
    disposal_date          TEXT,
    disposal_method        TEXT,
    notes                  TEXT,
    created_by             TEXT,
    created_date           TEXT,
    last_updated_by        TEXT,
    last_updated_date      TEXT,
    source_system          TEXT,
    audit_flag             TEXT,
    compliance_status      TEXT,
    insurance_coverage     TEXT,
    insurance_provider     TEXT,
    insurance_policy_number TEXT,
    risk_assessment_score  REAL,
    risk_mitigation_plan   TEXT,
    security_access_level  TEXT
);

INSERT INTO event_technology_inventory VALUES
('tech001','event001','Audio Mixer','Yamaha','MG10XU','SN12345','2022-01-15','2025-01-15','In Use','Venue A','Team A','2022-01-20','2024-12-31','Annual','2023-12-01','2024-12-01','TechServCo',200.00,'Yes','2023-12-01','v1.2','v3.5','Cables, Stands','120V','Wired','00:1A:2B:3C:4D:5E','Static','john.doe','555-1234','log1.txt',150.0,'2024-06-01',4.5,500.00,300.00,'Recycle','2025-01-20','Recycling','Good condition','admin','2024-01-10','admin','2024-01-12','ERAS','No','Compliant','Full','InsureCo','POL001',85.0,'Standard','Level2');

INSERT INTO event_technology_inventory VALUES
('tech002','event002','Projector','Epson','EB-U42','SN67890','2021-05-10','2024-05-10','Maintenance','Venue B','Team B','2021-05-15','2024-04-30','Biannual','2023-05-01','2023-11-01','ProjServCo',150.00,'No','','v2.0','v5.0','Remote, Lens','110V','Wireless','192.168.1.50','DHCP','jane.smith','555-5678','log2.txt',250.0,'2024-05-20',4.2,400.00,250.00,'Donate','2024-06-01','Donation','Requires lamp replacement','admin','2024-02-05','admin','2024-02-07','ERAS','Yes','Compliant','Partial','InsureCo','POL002',78.0,'Standard','Level1');

INSERT INTO event_technology_inventory VALUES
('tech003','event003','Live Stream Encoder','Blackmagic','Web Presenter','SN11223','2023-03-01','2026-03-01','Available','Venue C','Team C','2023-03-05','','Monthly','2023-12-01','2024-01-01','StreamServCo',100.00,'Yes','2023-12-01','v3.1','v2.9','HDMI Cable','5V USB','Ethernet','10.0.0.15','Static','alice.wang','555-9012','log3.txt',50.0,'2024-07-15',4.8,300.00,200.00,'Retain','NULL','NULL','Ready for next event','admin','2024-03-01','admin','2024-03-02','ERAS','No','Compliant','Full','InsureCo','POL003',90.0,'Standard','Level3');