-- Campus event review data
CREATE TABLE campus_event_review
(
    review_id               TEXT PRIMARY KEY,
    event_id                TEXT,
    reviewer_id             TEXT,
    review_date             TEXT,
    overall_score           REAL,
    organization_score      REAL,
    content_score           REAL,
    logistics_score         REAL,
    attendance_estimate     INTEGER,
    actual_attendance       INTEGER,
    budget_utilization_pct  REAL,
    sponsor_engagement_lvl  TEXT,
    feedback_summary        TEXT,
    recommendations         TEXT,
    follow_up_required      TEXT,
    follow_up_due_date      TEXT,
    reviewer_comments       TEXT,
    rating_category         TEXT,
    is_public               TEXT,
    created_timestamp       TEXT,
    last_modified_timestamp TEXT
);

INSERT INTO campus_event_review VALUES
('rev001','ev001','mem001','2025-03-10',4.5,4.0,5.0,4.2,150,140,85.0,'High','Great overall','Increase marketing','Yes','2025-04-01','Positive','Excellent','Yes','2025-01-01','2025-03-10');

INSERT INTO campus_event_review VALUES
('rev002','ev002','mem002','2025-04-12',3.8,3.5,4.0,3.9,200,180,78.5,'Medium','Good but room for improvement','Improve signage','No','','Neutral','Good','No','2025-02-15','2025-04-12');

INSERT INTO campus_event_review VALUES
('rev003','ev003','mem003','2025-05-05',4.2,4.1,4.3,4.0,120,115,90.0,'High','Well executed','Maintain current plan','Yes','2025-06-01','Very Positive','Excellent','Yes','2025-03-01','2025-05-05');

-- Student loan application records
CREATE TABLE student_loan_application
(
    application_id          TEXT PRIMARY KEY,
    student_id              TEXT,
    loan_type               TEXT,
    application_date        TEXT,
    amount_requested        INTEGER,
    interest_rate           REAL,
    repayment_term_months   INTEGER,
    collateral_type         TEXT,
    collateral_value        INTEGER,
    approval_status         TEXT,
    approved_amount         INTEGER,
    approved_date           TEXT,
    disbursement_date       TEXT,
    lender_id               TEXT,
    guarantor_id            TEXT,
    income_verification_doc TEXT,
    credit_score            INTEGER,
    debt_to_income_ratio    REAL,
    notes                   TEXT,
    created_timestamp       TEXT,
    last_modified_timestamp TEXT
);

INSERT INTO student_loan_application VALUES
('app001','mem004','Undergraduate','2025-01-15',5000,3.5,24,'None',0,'Approved',5000,'2025-01-20','2025-01-25','lend001','guar001','doc001',720,0.15,'First loan','2025-01-10','2025-01-15');

INSERT INTO student_loan_application VALUES
('app002','mem005','Graduate','2025-02-10',15000,4.2,36,'Car',8000,'Pending',0,'','2025-02-20','lend002','guar002','doc002',680,0.25,'Awaiting collateral verification','2025-02-05','2025-02-10');

INSERT INTO student_loan_application VALUES
('app003','mem006','Research','2025-03-01',25000,5.0,48,'Equipment',12000,'Rejected',0,'','2025-03-05','lend003','guar003','doc003',650,0.30,'Insufficient credit score','2025-02-25','2025-03-01');

-- Faculty research output tracking
CREATE TABLE faculty_research_output
(
    output_id               TEXT PRIMARY KEY,
    faculty_id              TEXT,
    title                   TEXT,
    publication_type        TEXT,
    journal_name            TEXT,
    conference_name         TEXT,
    publication_date        TEXT,
    doi                     TEXT,
    impact_factor           REAL,
    citation_count          INTEGER,
    funding_source_id       TEXT,
    grant_amount            INTEGER,
    co_author_count         INTEGER,
    pages_start             INTEGER,
    pages_end               INTEGER,
    abstract_summary        TEXT,
    keywords                TEXT,
    peer_review_status      TEXT,
    open_access_flag        TEXT,
    download_count          INTEGER,
    created_timestamp       TEXT,
    last_modified_timestamp TEXT
);

INSERT INTO faculty_research_output VALUES
('out001','mem007','Deep Learning for Campus Energy','Journal','Energy Journal','','2025-01-20','10.1234/ej.2025.001',5.2,12,'grant001',20000,3,1,12,'Study on AI models','AI;Energy;Optimization','Accepted','Yes',150,'2025-01-01','2025-01-20');

INSERT INTO faculty_research_output VALUES
('out002','mem008','Sustainable Transport Symposium','Conference','','TranspoConf 2025','2025-02-15','',0,0,'grant002',15000,2,0,0,'Proceedings paper','Sustainability;Transport','Accepted','No',80,'2025-01-30','2025-02-15');

INSERT INTO faculty_research_output VALUES
('out003','mem009','Campus Water Quality Assessment','Journal','Water Science','',2025-03-10','10.5678/ws.2025.045',3.8,5,'grant003',12000,1,45,60,'Assessment of water sources','Water;Quality;Public Health','Pending','Yes',30,'2025-02-20','2025-03-10');

-- Library digitization task metadata
CREATE TABLE library_digitization_task
(
    task_id                 TEXT PRIMARY KEY,
    collection_name         TEXT,
    item_type               TEXT,
    total_items             INTEGER,
    items_completed         INTEGER,
    start_date              TEXT,
    end_date                TEXT,
    assigned_staff_id       TEXT,
    scanner_model           TEXT,
    resolution_dpi          INTEGER,
    file_format             TEXT,
    storage_location        TEXT,
    metadata_schema_version TEXT,
    quality_check_passed    TEXT,
    notes                   TEXT,
    created_timestamp       TEXT,
    last_modified_timestamp TEXT,
    project_lead_id         TEXT,
    budget_allocated        INTEGER,
    actual_spend            INTEGER,
    vendor_id               TEXT,
    contract_number         TEXT,
    expected_completion_pct REAL
);

INSERT INTO library_digitization_task VALUES
('task001','Historical Newspapers','PDF','5000','1200','2025-01-01','2025-06-30','mem010','ScanPro X200','300','PDF','/archive/digitized','v2','Yes','Phase 1','2025-01-01','2025-03-01','mem011',25000,8000,'vend001','CN-1001',24.0);

INSERT INTO library_digitization_task VALUES
('task002','Rare Manuscripts','TIFF','200','50','2025-02-15','2025-12-31','mem012','CaptureMax 5000','600','TIFF','/archive/rare','v3','No','Needs quality review','2025-02-15','2025-04-01','mem013',40000,15000,'vend002','CN-2002',12.5);

INSERT INTO library_digitization_task VALUES
('task003','Audio Recordings','WAV','1000','400','2025-03-10','2025-09-30','mem014','AudioDigit 300','0','WAV','/archive/audio','v1','Yes','Batch 2 completed','2025-03-10','2025-05-01','mem015',30000,12000,'vend003','CN-3003',40.0);

-- Health service inventory tracking
CREATE TABLE health_service_inventory
(
    inventory_id            TEXT PRIMARY KEY,
    item_name               TEXT,
    item_category           TEXT,
    sku_number              TEXT,
    quantity_on_hand        INTEGER,
    reorder_point           INTEGER,
    unit_cost               REAL,
    supplier_id             TEXT,
    last_order_date         TEXT,
    next_expected_arrival   TEXT,
    storage_location        TEXT,
    expiration_date         TEXT,
    lot_number              TEXT,
    is_perishable           TEXT,
    bin_number              TEXT,
    created_timestamp       TEXT,
    last_modified_timestamp TEXT,
    approved_by_staff_id    TEXT,
    audit_status            TEXT,
    notes                   TEXT,
    discrepancy_count       INTEGER,
    last_audit_date         TEXT,
    disposal_method         TEXT
);

INSERT INTO health_service_inventory VALUES
('inv001','Surgical Mask','Protective Equipment','SKU001',2000,500,0.25,'supp001','2025-02-01','2025-02-10','Warehouse A','2026-02-01','LOT123','Yes','BIN01','2025-01-15','2025-02-01','mem016','Passed','Routine stock','0','2025-01-30','Incineration');

INSERT INTO health_service_inventory VALUES
('inv002','Stethoscope','Diagnostic Tools','SKU002',150,30,15.00,'supp002','2025-01-20','2025-01-28','Warehouse B','2028-01-01','LOT456','No','BIN02','2025-01-10','2025-01-20','mem017','Passed','Checked during quarterly audit','2','2025-01-19','Recycle');

INSERT INTO health_service_inventory VALUES
('inv003','Vaccination Syringe','Medical Supplies','SKU003',5000,1000,0.10,'supp003','2025-03-05','2025-03-12','Warehouse C','2025-12-31','LOT789','Yes','BIN03','2025-02-25','2025-03-05','mem018','Pending','Awaiting inspection','5','2025-02-28','Sharps Disposal');

-- Sustainability initiative tracker
CREATE TABLE sustainability_initiative_tracker
(
    initiative_id           TEXT PRIMARY KEY,
    name                    TEXT,
    description             TEXT,
    start_date              TEXT,
    end_date                TEXT,
    lead_department         TEXT,
    budget_allocated        INTEGER,
    actual_spend            INTEGER,
    carbon_reduction_tons   REAL,
    water_savings_gallons   INTEGER,
    energy_savings_kwh      INTEGER,
    goals_met               TEXT,
    status                  TEXT,
    stakeholder_group       TEXT,
    risk_level              TEXT,
    monitoring_frequency    TEXT,
    last_review_date        TEXT,
    created_timestamp       TEXT,
    last_modified_timestamp TEXT,
    reporting_template_id   TEXT,
    external_partner_id     TEXT,
    metric_reporting_tool   TEXT,
    notes                   TEXT,
    is_active               TEXT,
    compliance_certified    TEXT
);

INSERT INTO sustainability_initiative_tracker VALUES
('sit001','Campus Solar Expansion','Install additional solar panels','2025-01-01','2026-12-31','Facilities',500000,150000,1200.5,0,35000,'Partial','In Progress','Administration','Medium','Quarterly','2025-04-01','2025-01-01','2025-04-01','tmpl001','partner001','EcoTrack','Phase 1 completed','Yes','Yes');

INSERT INTO sustainability_initiative_tracker VALUES
('sit002','Zero Waste Program','Reduce waste to landfill','2025-03-15','2027-03-14','Environmental Services',300000,90000,0,2500000,0,'No','Planning','Low','Monthly','2025-06-01','2025-03-15','2025-06-01','tmpl002','partner002','WasteMetrics','Stakeholder meetings scheduled','Yes','No');

INSERT INTO sustainability_initiative_tracker VALUES
('sit003','Water Conservation Retrofit','Upgrade fixtures campuswide','2025-05-01','2025-11-30','Facilities',150000,75000,0,500000,0,'Yes','Completed','High','Biweekly','2025-12-01','2025-05-01','2025-12-01','tmpl003','partner003','WaterTrack','All buildings updated','Yes','Yes');

-- Technology incubator application records
CREATE TABLE technology_incubator_application
(
    application_id          TEXT PRIMARY KEY,
    startup_name            TEXT,
    founder_name            TEXT,
    contact_email           TEXT,
    contact_phone           TEXT,
    industry_sector         TEXT,
    description_summary     TEXT,
    prototype_status        TEXT,
    funding_needed_usd      INTEGER,
    equity_offered_percent  REAL,
    incubator_stage         TEXT,
    application_date        TEXT,
    decision_date           TEXT,
    decision_status         TEXT,
    mentor_assigned_id      TEXT,
    office_space_assigned   TEXT,
    legal_entity_type       TEXT,
    incorporation_date      TEXT,
    number_of_employees     INTEGER,
    patents_filed           INTEGER,
    revenue_ytd_usd         INTEGER,
    created_timestamp       TEXT,
    last_modified_timestamp TEXT,
    notes                   TEXT,
    is_active               TEXT,
    previous_incubator      TEXT
);

INSERT INTO technology_incubator_application VALUES
('inc001','EcoTech Solutions','Alice Green','alice@ecotech.com','5551234567','CleanTech','IoT platform for energy monitoring','Prototype','250000',10.0,'Stage 1','2025-02-10','2025-03-01','Accepted','mem019','Room 101','LLC','2024-06-15',5,2,50000,'2025-02-01','2025-03-01','High potential','Yes','No');

INSERT INTO technology_incubator_application VALUES
('inc002','HealthAI Labs','Bob Smith','bob@healthai.com','5559876543','HealthTech','AI diagnostics assistance tool','MVP','500000',15.0,'Stage 2','2025-04-05','2025-04-20','Pending','mem020','Room 202','Corporation','2023-09-01',8,1,200000,'2025-04-01','2025-04-20','Under review','Yes','Yes');

INSERT INTO technology_incubator_application VALUES
('inc003','EduVR Studios','Carol Lee','carol@eduvr.com','5555551212','EdTech','VR immersive learning environments','Concept','150000',5.0,'Stage 0','2025-06-12','','Submitted','mem021','Pending','Partnership','2025-01-01',2,0,0,'2025-06-01','2025-06-12','Awaiting evaluation','No','No');

-- Community partner project records
CREATE TABLE community_partner_project
(
    project_id              TEXT PRIMARY KEY,
    partner_name            TEXT,
    project_title           TEXT,
    start_date              TEXT,
    end_date                TEXT,
    lead_contact_id         TEXT,
    budget_total_usd        INTEGER,
    funds_received_usd      INTEGER,
    milestones_completed    INTEGER,
    total_milestones        INTEGER,
    impact_metric           TEXT,
    beneficiaries_count    INTEGER,
    location_description    TEXT,
    status                  TEXT,
    risk_assessment_level   TEXT,
    reporting_frequency     TEXT,
    last_report_date        TEXT,
    created_timestamp       TEXT,
    last_modified_timestamp TEXT,
    community_outreach_type TEXT,
    sustainability_plan    TEXT,
    notes                   TEXT,
    is_active               TEXT,
    compliance_requirements TEXT
);

INSERT INTO community_partner_project VALUES
('cp001','Local Food Bank','Winter Food Drive','2025-01-01','2025-03-31','mem022',30000,25000,3,5','Food Distribution','1200','Downtown Center','Completed','Low','Monthly','2025-03-15','2025-01-01','2025-03-31','Food Assistance','Plan includes year‑round pantry','Successful','Yes','None');

INSERT INTO community_partner_project VALUES
('cp002','Youth Sports League','Summer Sports Camp','2025-05-01','2025-08-15','mem023',50000,30000,2,4','Participant Hours','800','Community Park','In Progress','Medium','Biweekly','2025-07-01','2025-05-01','2025-08-15','Physical Activity','Equipment recycling plan','Ongoing','Yes','Safety Certification');

INSERT INTO community_partner_project VALUES
('cp003','Green Earth NGO','Urban Tree Planting','2025-04-10','2025-10-20','mem024',40000,15000,1,3','Trees Planted','350','City Neighborhoods','Planning','High','Quarterly','2025-06-01','2025-04-10','2025-10-20','Environmental','Maintenance schedule attached','Pending funding','No','Environmental Impact Review');

-- Alumni giving pledge records
CREATE TABLE alumni_giving_pledge
(
    pledge_id               TEXT PRIMARY KEY,
    alumni_id               TEXT,
    pledge_amount_usd       INTEGER,
    pledge_date             TEXT,
    payment_frequency       TEXT,
    start_year              INTEGER,
    end_year                INTEGER,
    designated_fund_id      TEXT,
    acknowledgment_sent     TEXT,
    acknowledgment_date     TEXT,
    payment_method          TEXT,
    tax_receipt_number      TEXT,
    tax_receipt_date        TEXT,
    remarks                 TEXT,
    created_timestamp       TEXT,
    last_modified_timestamp TEXT,
    pledge_status           TEXT,
    total_paid_to_date_usd  INTEGER,
    last_payment_date       TEXT,
    consent_for_contact     TEXT,
    preferred_contact_method TEXT,
    address_line1           TEXT,
    city                    TEXT,
    state                   TEXT,
    zip_code                TEXT,
    country                 TEXT,
    phone_number            TEXT,
    email_address           TEXT
);

INSERT INTO alumni_giving_pledge VALUES
('plg001','mem025',5000,'2025-01-15','Annual',2025,2030,'fund001','Yes','2025-01-20','Credit Card','TR001','2025-01-21','Long‑term supporter','2025-01-01','2025-01-15','Active',1500,'2025-04-01','Yes','Email','123 Alumni Rd','Springfield','IL','62704','USA','5551112222','alice.alumni@example.com');

INSERT INTO alumni_giving_pledge VALUES
('plg002','mem026',2000,'2025-02-01','Semi‑Annual',2025,2028,'fund002','Yes','2025-02-05','Bank Transfer','TR002','2025-02-06','Mid‑term donor','2025-02-01','2025-02-01','Active',800,'2025-05-01','Yes','Phone','456 Graduate Ln','Madison','WI','53703','USA','5553334444','bob.alumni@example.com');

INSERT INTO alumni_giving_pledge VALUES
('plg003','mem027',1000,'2025-03-10','One‑Time',2025,2025,'fund003','Yes','2025-03-12','Check','TR003','2025-03-13','One‑time contributor','2025-03-10','2025-03-10','Completed',1000,'2025-03-10','No','Mail','789 College Ave','Ann Arbor','MI','48104','USA','5555556666','carol.alumni@example.com');

-- Campus security audit log
CREATE TABLE campus_security_audit
(
    audit_id                TEXT PRIMARY KEY,
    audit_date              TEXT,
    auditor_id              TEXT,
    area_covered            TEXT,
    findings_summary        TEXT,
    critical_issues_count   INTEGER,
    medium_issues_count     INTEGER,
    low_issues_count        INTEGER,
    recommendations         TEXT,
    compliance_status       TEXT,
    follow_up_required      TEXT,
    follow_up_due_date      TEXT,
    report_document_path    TEXT,
    created_timestamp       TEXT,
    last_modified_timestamp TEXT,
    audit_type              TEXT,
    risk_level_overall      TEXT,
    number_of_cameras_inspected INTEGER,
    number_of_access_points_inspected INTEGER,
    emergency_procedure_reviewed TEXT,
    training_status         TEXT,
    notes                   TEXT,
    is_finalized            TEXT,
    next_audit_scheduled   TEXT
);

INSERT INTO campus_security_audit VALUES
('audit001','2025-01-20','mem028','Main Campus','Locked doors missing','2','5','10','Install deadbolts, update signage','Partial','Yes','2025-02-15','/audit/reports/audit001.pdf','2025-01-20','2025-01-22','Physical Security','Medium',15,8,'Yes','Completed','All issues noted','No','2025-07-01');

INSERT INTO campus_security_audit VALUES
('audit002','2025-04-05','mem029','Research Buildings','Access control outdated','0','3','7','Upgrade badge readers','Compliant','No','','/audit/reports/audit002.pdf','2025-04-05','2025-04-07','Access Control','Low',12,5,'Yes','Ongoing','No critical issues','Yes','2025-10-01');

INSERT INTO campus_security_audit VALUES
('audit003','2025-06-10','mem030','Student Housing','Fire alarm malfunction','1','2','4','Replace faulty panels','Non‑Compliant','Yes','2025-07-01','/audit/reports/audit003.pdf','2025-06-10','2025-06-12','Safety','High',8,4,'No','Pending','Immediate action required','No','2025-12-01');