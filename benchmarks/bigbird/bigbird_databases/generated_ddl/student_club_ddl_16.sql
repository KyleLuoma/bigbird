-- Maintenance records for research equipment
CREATE TABLE research_equipment_maintenance
(
    maintenance_id        TEXT PRIMARY KEY,
    equipment_id          TEXT,
    maintenance_date      TEXT,
    technician_id         TEXT,
    duration_hours        REAL,
    cost                  REAL,
    notes                 TEXT,
    status                TEXT,
    next_due_date         TEXT,
    warranty_expiration   TEXT,
    service_provider      TEXT,
    parts_replaced        TEXT,
    labor_rate            REAL,
    total_hours           REAL,
    approval_status       TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    location              TEXT,
    equipment_type        TEXT,
    serial_number         TEXT
);

INSERT INTO research_equipment_maintenance VALUES ('MNT001','EQP1001','2024-10-01','TECH01',2.5,150.00,'Replaced filter','Completed','2025-01-01','2026-12-31','VendorA','Filter','75.00',2.5,'Approved','2024-09-30','2024-10-01','LabA','Spectrometer','SN001');
INSERT INTO research_equipment_maintenance VALUES ('MNT002','EQP1002','2024-11-15','TECH02',4.0,300.00,'Calibrated optics','InProgress','2025-04-15','2027-03-31','VendorB','Lens,Mirror','80.00',4.0,'Pending','2024-11-10','2024-11-15','LabB','Microscope','SN002');
INSERT INTO research_equipment_maintenance VALUES ('MNT003','EQP1003','2024-12-20','TECH03',1.0,120.00,'Software update','Scheduled','2025-06-20','2028-01-15','VendorC','None','120.00',1.0,'Approved','2024-12-10','2024-12-20','LabC','Sequencer','SN003');

-- Faculty development program details
CREATE TABLE faculty_development_program
(
    program_id                TEXT PRIMARY KEY,
    program_name              TEXT,
    department                TEXT,
    start_date                TEXT,
    end_date                  TEXT,
    enrollment_cap            INTEGER,
    current_enrollment        INTEGER,
    facilitator_id            TEXT,
    credits_awarded           INTEGER,
    cost_per_participant      REAL,
    total_budget              REAL,
    syllabus_url              TEXT,
    evaluation_method         TEXT,
    delivery_mode             TEXT,
    prerequisite_course       TEXT,
    program_status            TEXT,
    created_by                TEXT,
    created_at                TEXT,
    updated_at                TEXT,
    accreditation_body        TEXT
);

INSERT INTO faculty_development_program VALUES ('FD001','Leadership in Teaching','Education','2025-01-15','2025-03-15',30,12,'FAC001',3,500.00,15000.00,'http://example.com/leadership','Survey','Online','EDU101','Open','AdminA','2024-12-01','2024-12-15','RegionalAccreditor');
INSERT INTO faculty_development_program VALUES ('FD002','Advanced Data Science','ComputerScience','2025-02-01','2025-04-30',25,20,'FAC002',4,750.00,18750.00,'http://example.com/datasci','Project','Hybrid','CS201','Open','AdminB','2024-12-05','2024-12-20','NationalAccreditor');
INSERT INTO faculty_development_program VALUES ('FD003','Grant Writing Workshop','Business','2025-03-10','2025-03-20',15,8,'FAC003',1,300.00',4500.00','http://example.com/grantwriting','Quiz','InPerson','BUS101','Open','AdminC','2024-12-10','2024-12-25','StateAccreditor');

-- Student exchange agreement data
CREATE TABLE student_exchange_agreement
(
    agreement_id          TEXT PRIMARY KEY,
    student_id            TEXT,
    partner_institution   TEXT,
    home_department       TEXT,
    exchange_program      TEXT,
    start_term            TEXT,
    end_term              TEXT,
    credit_transfer       TEXT,
    sponsor_funding       REAL,
    housing_provided      TEXT,
    insurance_required    TEXT,
    application_status    TEXT,
    approval_date         TEXT,
    departure_date        TEXT,
    return_date           TEXT,
    host_contact_name     TEXT,
    host_contact_email    TEXT,
    orientation_completed TEXT,
    final_report_submitted TEXT,
    notes                 TEXT
);

INSERT INTO student_exchange_agreement VALUES ('EX001','STU1001','University of Tokyo','Engineering','Spring2025','2025S1','2025S2','Yes',2000.00,'Yes','Yes','Approved','2024-11-01','2024-12-15','2025-05-30','DrYamamoto','yamada@example.jp','Yes','Yes','N/A');
INSERT INTO student_exchange_agreement VALUES ('EX002','STU1002','University of Cambridge','History','Fall2025','2025F1','2025F2','No',1500.00,'No','Yes','Pending','2025-01-15','2025-08-01','2025-12-20','ProfSmith','smith@example.uk','No','No','Awaiting documents');
INSERT INTO student_exchange_agreement VALUES ('EX003','STU1003','McGill University','Biology','Summer2025','2025U1','2025U2','Yes',1800.00,'Yes','Yes','Approved','2025-02-10','2025-05-05','2025-08-15','DrLefevre','lefevre@example.ca','Yes','No','Report due after return');

-- Campus network device inventory
CREATE TABLE campus_network_device
(
    device_id               TEXT PRIMARY KEY,
    device_type             TEXT,
    manufacturer            TEXT,
    model_number            TEXT,
    serial_number           TEXT,
    mac_address             TEXT,
    ip_address              TEXT,
    firmware_version        TEXT,
    install_date            TEXT,
    warranty_expiration     TEXT,
    location_building       TEXT,
    location_floor          TEXT,
    rack_position           TEXT,
    status                  TEXT,
    last_maintenance_date   TEXT,
    next_maintenance_due    TEXT,
    admin_contact_id        TEXT,
    vlan_assigned           TEXT,
    power_source            TEXT,
    notes                   TEXT
);

INSERT INTO campus_network_device VALUES ('DEV001','Switch','Cisco','Catalyst9500','SN1001','AA:BB:CC:DD:EE:01','192.168.1.10','16.9.3','2022-09-01','2025-09-01','Engineering','2','Rack12U5','Active','2024-06-01','2025-06-01','ADM001','VLAN10','PoE','Core switch');
INSERT INTO campus_network_device VALUES ('DEV002','Router','Juniper','MX480','SN2001','AA:BB:CC:DD:EE:02','192.168.2.1','19.4R1','2021-03-15','2024-03-15','IT','1','Rack3U1','Active','2024-01-15','2024-12-15','ADM002','VLAN20','AC','Edge router');
INSERT INTO campus_network_device VALUES ('DEV003','Access Point','Aruba','AP-315','SN3001','AA:BB:CC:DD:EE:03','192.168.3.50','8.6.0','2023-01-20','2026-01-20','Library','3','Ceiling','Active','2024-05-10','2025-05-10','ADM003','VLAN30','PoE','Wireless AP');

-- Grant application review panel
CREATE TABLE grant_review_panel
(
    panel_id               TEXT PRIMARY KEY,
    grant_cycle            TEXT,
    panel_name             TEXT,
    chair_person_id        TEXT,
    member_count           INTEGER,
    meeting_date           TEXT,
    location               TEXT,
    minutes_url            TEXT,
    decision_deadline      TEXT,
    conflict_check_passed  TEXT,
    panel_status           TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    notes                  TEXT,
    external_observer_id   TEXT,
    evaluation_criteria    TEXT,
    total_budget_requested REAL,
    total_budget_awarded   REAL,
    average_score          REAL,
    funding_agency         TEXT
);

INSERT INTO grant_review_panel VALUES ('PANEL01','2025','Science Innovation Panel','FAC001',7,'2025-02-15','Main Hall','http://example.com/minutes1','2025-03-01','Yes','Scheduled','2025-01-10','2025-01-12','N/A','OBS001','Impact,Feasibility,Team','500000','350000','85.5','NationalScienceFund');
INSERT INTO grant_review_panel VALUES ('PANEL02','2025','Humanities Excellence Panel','FAC002',5,'2025-04-20','Conference Room B','http://example.com/minutes2','2025-05-05','Yes','Scheduled','2025-02-01','2025-02-03','N/A','OBS002','Relevance,Methodology,Outcome','300000','210000','78.2','CulturalArtsCouncil');
INSERT INTO grant_review_panel VALUES ('PANEL03','2025','Technology Advancement Panel','FAC003',8,'2025-06-10','Tech Center','http://example.com/minutes3','2025-07-01','Yes','Scheduled','2025-03-15','2025-03-18','N/A','OBS003','Innovation,Scalability,MarketFit','800000','600000','90.1','TechInnovationAgency');

-- Sustainability audit report
CREATE TABLE sustainability_audit
(
    audit_id                 TEXT PRIMARY KEY,
    audit_year               TEXT,
    auditor_id               TEXT,
    campus_area              TEXT,
    total_energy_consumption REAL,
    total_water_usage        REAL,
    waste_generated_tons     REAL,
    recycling_rate_percent   REAL,
    carbon_emission_tons     REAL,
    renewable_energy_percent REAL,
    audit_start_date         TEXT,
    audit_end_date           TEXT,
    findings_summary         TEXT,
    recommendations          TEXT,
    status                   TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    reviewer_id              TEXT,
    approval_date            TEXT,
    notes                    TEXT
);

INSERT INTO sustainability_audit VALUES ('AUD001','2024','AUD001','North Campus',1250000.00,300000.00,500.00,45.0,250.00,20.0,'2024-01-10','2024-03-20','High energy use in labs','Upgrade HVAC, install LED','Completed','2024-03-25','2024-03-30','REV001','All good');
INSERT INTO sustainability_audit VALUES ('AUD002','2024','AUD002','South Campus',900000.00,250000.00,400.00,55.0,180.00,30.0,'2024-02-05','2024-04-15','Excess water consumption in dorms','Install low‑flow fixtures','Completed','2024-04-20','2024-04-25','REV002','Follow‑up needed');
INSERT INTO sustainability_audit VALUES ('AUD003','2024','AUD003','East Campus',750000.00,200000.00,350.00,60.0,150.00,35.0,'2024-03-01','2024-05-10','Good waste diversion','Maintain recycling program','Completed','2024-05-15','2024-05-20','REV003','No issues');

-- Community outreach event schedule
CREATE TABLE community_outreach_schedule
(
    outreach_id           TEXT PRIMARY KEY,
    event_name            TEXT,
    target_audience       TEXT,
    community_partner_id  TEXT,
    scheduled_date        TEXT,
    start_time            TEXT,
    end_time              TEXT,
    location              TEXT,
    registration_required TEXT,
    expected_attendance   INTEGER,
    budget_allocated      REAL,
    sponsor_id            TEXT,
    coordinator_id        TEXT,
    materials_needed      TEXT,
    volunteer_count       INTEGER,
    status                TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    notes                 TEXT,
    post_event_feedback   TEXT
);

INSERT INTO community_outreach_schedule VALUES ('CO001','STEM Fair','HighSchoolStudents','CP001','2025-04-12','09:00','15:00','Community Center','Yes',200,5000.00,'SP001','COORD001','Booths,DemoKits','15','Scheduled','2024-11-01','2024-11-10','N/A','Pending');
INSERT INTO community_outreach_schedule VALUES ('CO002','Health Screening','GeneralPublic','CP002','2025-05-20','08:00','12:00','Campus Clinic','No',150,3000.00,'SP002','COORD002','ScreeningKits','10','Scheduled','2024-12-01','2024-12-05','N/A','Pending');
INSERT INTO community_outreach_schedule VALUES ('CO003','Art Workshop','ElementaryStudents','CP003','2025-06-05','10:00','14:00','Art Studio','Yes',120,2500.00,'SP003','COORD003','Supplies,Canvas','12','Scheduled','2025-01-15','2025-01-20','N/A','Pending');

-- Digital asset licensing agreement
CREATE TABLE digital_asset_license
(
    license_id               TEXT PRIMARY KEY,
    asset_id                 TEXT,
    asset_type               TEXT,
    licensee_id              TEXT,
    licensor_id              TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    usage_scope              TEXT,
    geographic_restriction   TEXT,
    exclusivity_flag         TEXT,
    royalty_amount           REAL,
    payment_terms            TEXT,
    renewal_option           TEXT,
    termination_notice_days  INTEGER,
    approved_by              TEXT,
    approval_date            TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    notes                    TEXT,
    status                   TEXT
);

INSERT INTO digital_asset_license VALUES ('LIC001','ASSET100','Video','ORG001','MEDIACO','2024-01-01','2026-12-31','OnlineStreaming','Global','No',15000.00,'Quarterly','Yes',30,'ADMIN001','2023-12-15','2023-12-20','N/A','Active');
INSERT INTO digital_asset_license VALUES ('LIC002','ASSET200','Image','ORG002','PHOTOSTOCK','2025-03-01','2028-02-28','PrintOnly','USOnly','Yes',8000.00,'Annual','No',60,'ADMIN002','2025-02-15','2025-02-20','N/A','Active');
INSERT INTO digital_asset_license VALUES ('LIC003','ASSET300','Software','ORG003','SOFTVENDOR','2024-06-01','2025-05-31','InternalUse','CampusOnly','No',0.00,'N/A','No',15,'ADMIN003','2024-05-20','2024-05-25','Beta version','Active');

-- Facility lease agreement
CREATE TABLE facility_lease_agreement
(
    lease_id                  TEXT PRIMARY KEY,
    facility_id               TEXT,
    lessee_id                 TEXT,
    lessor_id                 TEXT,
    lease_start_date          TEXT,
    lease_end_date            TEXT,
    annual_rent               REAL,
    security_deposit          REAL,
    permitted_use             TEXT,
    square_feet               INTEGER,
    renewal_option            TEXT,
    termination_notice_days   INTEGER,
    maintenance_responsibility TEXT,
    insurance_requirements   TEXT,
    utilities_included        TEXT,
    escalation_clause_percent REAL,
    signed_by                 TEXT,
    signed_date               TEXT,
    created_at                TEXT,
    updated_at                TEXT
);

INSERT INTO facility_lease_agreement VALUES ('LEASE001','FAC001','ORG005','UNIV001','2025-07-01','2030-06-30',120000.00,24000.00,'ConferenceCenter',5000,'Yes',90,'Lessee','LiabilityCoverage','Yes',3.0,'ADMIN004','2025-06-15','2025-06-20','2025-06-20');
INSERT INTO facility_lease_agreement VALUES ('LEASE002','FAC002','ORG006','UNIV001','2024-01-01','2029-12-31',80000.00,16000.00,'Laboratory',3000,'No',120,'Lessor','PropertyInsurance','No',2.5,'ADMIN005','2023-12-10','2023-12-15','2023-12-15');
INSERT INTO facility_lease_agreement VALUES ('LEASE003','FAC003','ORG007','UNIV001','2026-03-01','2031-02-28',95000.00,19000.00,'OfficeSpace',3500,'Yes',60,'Lessee','GeneralLiability','Yes',2.0,'ADMIN006','2026-02-20','2026-02-25','2026-02-25');

-- Student financial aid award
CREATE TABLE student_financial_aid
(
    award_id                TEXT PRIMARY KEY,
    student_id              TEXT,
    aid_type                TEXT,
    award_amount            REAL,
    award_year              TEXT,
    disbursement_date       TEXT,
    renewal_required        TEXT,
    renewal_deadline        TEXT,
    eligibility_criteria    TEXT,
    sponsor_organization    TEXT,
    status                  TEXT,
    application_date        TEXT,
    approval_date           TEXT,
    disbursement_method     TEXT,
    tax_implications        TEXT,
    notes                   TEXT,
    last_updated_by         TEXT,
    last_updated_at         TEXT,
    award_term              TEXT,
    repayment_plan          TEXT
);

INSERT INTO student_financial_aid VALUES ('AID001','STU2001','Scholarship',5000.00,'2025','2025-08-15','No','N/A','GPA>3.5','FoundationX','Approved','2025-04-01','2025-04-15','DirectDeposit','None','N/A','ADMIN007','2025-04-20','2025-2026','N/A');
INSERT INTO student_financial_aid VALUES ('AID002','STU2002','Grant',3000.00,'2025','2025-09-01','Yes','2025-12-01','FinancialNeed','GovAgency','Pending','2025-05-10','2025-05-25','Check','Taxable','N/A','ADMIN008','2025-05-30','2025-2026','N/A');
INSERT INTO student_financial_aid VALUES ('AID003','STU2003','Loan',8000.00,'2025','2025-07-20','Yes','2026-01-01','CitizenshipUS','BankY','Approved','2025-03-15','2025-03-30','DirectDeposit','RepaymentStartsAfterGrad','N/A','ADMIN009','2025-04-05','2025-2026','StandardRepayment');

-- Research project collaboration
CREATE TABLE research_project_collaboration
(
    collaboration_id        TEXT PRIMARY KEY,
    project_id              TEXT,
    partner_institution     TEXT,
    partner_contact_id      TEXT,
    start_date              TEXT,
    end_date                TEXT,
    funding_amount          REAL,
    role_in_project         TEXT,
    data_sharing_agreement  TEXT,
    intellectual_property   TEXT,
    reporting_frequency     TEXT,
    status                  TEXT,
    created_by              TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    notes                   TEXT,
    project_phase           TEXT,
    deliverable_due_date    TEXT,
    evaluation_method       TEXT,
    confidentiality_level   TEXT
);

INSERT INTO research_project_collaboration VALUES ('COLL001','PRJ1001','MIT','CONT001','2024-01-01','2026-12-31',2000000.00,'Co-PrincipalInvestigator','Yes','Joint','Quarterly','Active','ADMIN010','2023-12-01','2023-12-10','N/A','Implementation','2025-06-30','PeerReview','High');
INSERT INTO research_project_collaboration VALUES ('COLL002','PRJ1002','Oxford','CONT002','2025-03-15','2028-03-14',1500000.00,'DataProvider','Yes','UniversityOwned','Biannual','Planned','ADMIN011','2025-02-20','2025-02-25','N/A','Design','2026-09-30','TechnicalReview','Medium');
INSERT INTO research_project_collaboration VALUES ('COLL003','PRJ1003','University of Sydney','CONT003','2024-06-01','2027-05-31',1200000.00,'FieldPartner','No','UniversityOwned','Annual','Active','ADMIN012','2024-05-10','2024-05-15','N/A','Testing','2025-12-31','ProgressReport','Low');