-- Research infrastructure details
CREATE TABLE research_infrastructure
(
    infra_id               TEXT PRIMARY KEY,
    infra_name             TEXT,
    infra_type             TEXT,
    description            TEXT,
    acquisition_date       TEXT,
    vendor_name            TEXT,
    warranty_years         INTEGER,
    cost_amount            REAL,
    current_status         TEXT,
    building_code          TEXT,
    room_number            TEXT,
    lifecycle_stage        TEXT,
    maintenance_contact    TEXT,
    depreciation_rate      REAL,
    serial_number          TEXT,
    capacity_units         TEXT,
    power_requirements_kw  REAL,
    network_interface      TEXT,
    software_version       TEXT,
    last_inspection_date   TEXT
);

INSERT INTO research_infrastructure VALUES
('RI001','SuperMicroscope','Imaging','High resolution optical microscope','2021-03-15','OpticTech',5,250000,'Operational','BLDG01','R102','Active','John Doe',0.15,'SMX123456','500MP','2.5','Ethernet','v3.2','2023-11-20');

INSERT INTO research_infrastructure VALUES
('RI002','QuantumComputer','Computing','16-qubit quantum processor','2022-07-01','QuantumCorp',3,1200000,'Operational','BLDG03','R210','Active','Jane Smith',0.20,'QC987654','16Qubits','5.0','FiberOptic','v1.0','2024-02-10');

INSERT INTO research_infrastructure VALUES
('RI003','MassSpec','Spectrometry','Time-of-flight mass spectrometer','2020-01-20','SpecLab',4,800000,'UnderMaintenance','BLDG02','R305','MidLife','Mike Lee',0.18,'MS555888','10kDa','3.2','WiFi','v2.5','2023-09-05');

-- Faculty awards and recognitions
CREATE TABLE faculty_award
(
    award_id               TEXT PRIMARY KEY,
    faculty_id             TEXT,
    award_name             TEXT,
    award_category         TEXT,
    award_year             INTEGER,
    awarding_body          TEXT,
    award_level            TEXT,
    monetary_prize         REAL,
    citation               TEXT,
    award_date             TEXT,
    renewal_possible       TEXT,
    nomination_deadline    TEXT,
    award_status           TEXT,
    ceremony_location      TEXT,
    presenter_name         TEXT,
    award_description      TEXT,
    related_project_id     TEXT,
    verification_code      TEXT,
    notes                  TEXT,
    last_updated           TEXT
);

INSERT INTO faculty_award VALUES
('FA001','F001','Innovative Teaching Award','Teaching',2023,'National Educators Association','National',5000,'Excellence in classroom engagement','2023-05-12','Yes','2023-03-01','Granted','Main Auditorium','Dr Emily Clark','Awarded for integration of AR in labs','PRJ1001','VC12345','First year recipient','2023-06-01');

INSERT INTO faculty_award VALUES
('FA002','F017','Research Excellence Medal','Research',2022,'Global Science Forum','International',10000,'Outstanding contributions to nanotech','2022-11-20','No','2022-09-15','Granted','Conference Hall B','Prof Alan Brown','Recognized for 150 publications','PRJ2103','VC67890','Renewed grant support','2022-12-01');

INSERT INTO faculty_award VALUES
('FA003','F023','Community Service Honor','Service',2024,'Campus Outreach Committee','Institutional',0,'Volunteer mentorship program','2024-02-08','Yes','2023-12-01','Pending','Community Center','Ms Laura Green','Honors extensive volunteer hours','PRJ3305','VC54321','Awaiting approval','2024-02-15');

-- Academic calendar events
CREATE TABLE academic_calendar_event
(
    cal_event_id            TEXT PRIMARY KEY,
    event_title             TEXT,
    event_type              TEXT,
    start_date              TEXT,
    end_date                TEXT,
    location                TEXT,
    registration_required  TEXT,
    registration_deadline   TEXT,
    max_participants        INTEGER,
    organizer_department    TEXT,
    contact_email           TEXT,
    contact_phone           TEXT,
    description             TEXT,
    recurring_pattern       TEXT,
    is_mandatory            TEXT,
    notes                   TEXT,
    created_timestamp       TEXT,
    last_modified_timestamp TEXT,
    visibility_level        TEXT,
    external_link           TEXT
);

INSERT INTO academic_calendar_event VALUES
('AC001','Spring Semester Start','Academic','2024-01-15','2024-01-15','Main Quad','No','','5000','Registrar','registrar@univ.edu','5551234567','Opening ceremony for spring term','Annual','Yes','All students required','2023-11-01','2024-01-10','Public','');

INSERT INTO academic_calendar_event VALUES
('AC002','Data Science Workshop','Workshop','2024-03-05','2024-03-07','Tech Building Room 210','Yes','2024-02-28','150','Computer Science','datasci@univ.edu','5559876543','Hands‑on data analysis techniques','None','No','Limited seats','2023-12-15','2024-02-20','RegisteredUsers','http://univ.edu/events/dsworkshop');

INSERT INTO academic_calendar_event VALUES
('AC003','Alumni Reunion','Social','2024-08-20','2024-08-20','Campus Hotel Ballroom','Yes','2024-07-31','800','Alumni Relations','alumni@univ.edu','5552223344','Celebration of graduating classes','Annual','No','Dress code formal','2024-01-05','2024-07-15','Public','http://univ.edu/alumni/reunion');

-- Facility asset tracking
CREATE TABLE facility_asset
(
    asset_id               TEXT PRIMARY KEY,
    asset_name             TEXT,
    asset_category         TEXT,
    purchase_date          TEXT,
    purchase_price         REAL,
    current_value          REAL,
    depreciation_years     INTEGER,
    manufacturer           TEXT,
    model_number           TEXT,
    serial_number          TEXT,
    location_building      TEXT,
    location_room          TEXT,
    assigned_department    TEXT,
    custodian_name         TEXT,
    maintenance_schedule   TEXT,
    last_maintenance_date  TEXT,
    warranty_expiration    TEXT,
    asset_status           TEXT,
    disposal_date          TEXT,
    notes                  TEXT
);

INSERT INTO facility_asset VALUES
('FA001','HVAC Unit','Mechanical','2019-06-01',120000,85000,10,'CoolAir','CA-3000','HVAC12345','BLDG05','R12','Facilities','Tom Harris','Quarterly','2023-10-15','2024-06-01','Operational','','');

INSERT INTO facility_asset VALUES
('FA002','3D Printer','Manufacturing','2021-09-15',35000,30000,5,'PrintPro','PPX-200','3DP98765','BLDG02','R04','Engineering','Sara Kim','SemiAnnual','2023-05-20','2026-09-15','Operational','','');

INSERT INTO facility_asset VALUES
('FA003','Campus Bike','Transportation','2022-03-20',500,400,3,'CycleCo','CC-BIKE','BIKE54321','BLDG04','R08','Student Life','Mike Brown','Annual','2023-03-22','2025-03-20','InUse','','Repaired twice');

-- Grant milestone tracking
CREATE TABLE grant_milestone
(
    milestone_id            TEXT PRIMARY KEY,
    grant_id                TEXT,
    milestone_name          TEXT,
    target_date             TEXT,
    actual_date             TEXT,
    status                  TEXT,
    responsible_person      TEXT,
    budget_allocated        REAL,
    budget_spent            REAL,
    deliverable_description TEXT,
    progress_percent        REAL,
    risk_level              TEXT,
    notes                   TEXT,
    created_timestamp       TEXT,
    last_updated_timestamp  TEXT,
    approval_required       TEXT,
    approval_status         TEXT,
    compliance_check_date   TEXT,
    compliance_status       TEXT,
    attached_document_link  TEXT
);

INSERT INTO grant_milestone VALUES
('GM001','GR001','Phase 1 Data Collection','2024-02-28','2024-02-20','Completed','Dr Alice Green',50000,48000,'Collect baseline measurements','96','Low','All data verified','2023-10-01','2024-02-21','Yes','Approved','2024-02-25','Passed','http://univ.edu/grants/GR001/phase1');

INSERT INTO grant_milestone VALUES
('GM002','GR001','Phase 2 Prototype Development','2024-06-30','','InProgress','Dr Bob White',75000,20000,'Build functional prototype','27','Medium','Component shortage noted','2023-11-15','2024-03-10','Yes','Pending','2024-04-01','Pending','');

INSERT INTO grant_milestone VALUES
('GM003','GR002','Final Report Submission','2024-12-15','','Planned','Dr Carol Black',30000,0,'Submit comprehensive final report','0','Low','Report outline approved','2024-01-05','2024-01-05','Yes','Pending','2024-12-01','Pending','');

-- Community volunteer hour logging
CREATE TABLE volunteer_hour_log
(
    log_id               TEXT PRIMARY KEY,
    volunteer_id         TEXT,
    event_id             TEXT,
    service_date         TEXT,
    hours_contributed    REAL,
    activity_type        TEXT,
    supervisor_name      TEXT,
    location_description TEXT,
    notes                TEXT,
    verification_code    TEXT,
    approved             TEXT,
    approval_date        TEXT,
    created_timestamp    TEXT,
    last_modified_timestamp TEXT,
    department_assigned  TEXT,
    project_code         TEXT,
    mileage_travelled_km REAL,
    equipment_used       TEXT,
    feedback_summary     TEXT,
    reward_points        INTEGER
);

INSERT INTO volunteer_hour_log VALUES
('VH001','VOL100','EVT200','2024-03-12',5.0,'FoodBankPacking','Laura King','Community Center','Packaged meals for families','VC001','Yes','2024-03-13','2024-03-12','2024-03-14','Community Service','PRJ500','15.2','Boxes','Positive','50');

INSERT INTO volunteer_hour_log VALUES
('VH002','VOL101','EVT201','2024-04-05',3.5,'ParkCleanup','Mike Jordan','River Park','Collected litter along riverbank','VC002','Yes','2024-04-06','2024-04-05','2024-04-07','Environmental','PRJ501','8.0','Gloves, TrashBags','Appreciated','35');

INSERT INTO volunteer_hour_log VALUES
('VH003','VOL102','EVT202','2024-05-20',2.0,'SeniorVisit','Anna Lee','Nursing Home','Assisted with activities','VC003','Pending','','2024-05-20','2024-05-21','Social Services','PRJ502','0.0','None','Pending review','20');

-- Sustainability project records
CREATE TABLE sustainability_project
(
    project_id               TEXT PRIMARY KEY,
    project_name             TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    project_lead             TEXT,
    department               TEXT,
    budget_total             REAL,
    budget_used              REAL,
    carbon_reduction_tons    REAL,
    water_savings_gallons    REAL,
    waste_diverted_percent   REAL,
    status                   TEXT,
    description              TEXT,
    key_milestones           TEXT,
    stakeholder_partners     TEXT,
    reporting_frequency      TEXT,
    last_report_date         TEXT,
    next_report_due          TEXT,
    documentation_link       TEXT,
    notes                    TEXT
);

INSERT INTO sustainability_project VALUES
('SP001','Campus Solar Expansion','2023-01-10','2025-06-30','Dr Ethan Watts','Facilities',2000000,750000,15.2,1200000,45,'InProgress','Install additional solar panels on roof structures','Phase1Complete;Phase2InProgress','GreenEnergyCo;LocalUtility','Quarterly','2024-09-30','2024-12-31','http://univ.edu/sustainability/SP001','Funding approved');

INSERT INTO sustainability_project VALUES
('SP002','Rainwater Harvesting','2022-05-01','2024-12-15','Ms Nina Patel','Environmental Services',500000,420000,0,350000,30,'Completed','Collect and reuse rainwater for irrigation','Design;Construction;Testing','AquaSystems','BiAnnual','2024-07-20','2024-12-20','http://univ.edu/sustainability/SP002','Exceeded water savings target');

INSERT INTO sustainability_project VALUES
('SP003','Zero Waste Initiative','2024-02-01','2026-11-30','Mr Omar Reed','Student Life',300000,50000,0,0,5,'Planned','Reduce campus waste to zero landfill','Planning;PilotPhase','WasteZeroOrg','Annual','2024-12-01','2025-12-01','http://univ.edu/sustainability/SP003','Awaiting pilot approval');

-- Technology asset inventory
CREATE TABLE technology_asset
(
    asset_tag                TEXT PRIMARY KEY,
    asset_type               TEXT,
    manufacturer             TEXT,
    model_number             TEXT,
    serial_number            TEXT,
    purchase_date            TEXT,
    purchase_price           REAL,
    assigned_user_id         TEXT,
    department               TEXT,
    location_building        TEXT,
    location_room            TEXT,
    warranty_expiration      TEXT,
    software_license_key     TEXT,
    mac_address              TEXT,
    ip_address               TEXT,
    asset_status             TEXT,
    last_audit_date          TEXT,
    next_audit_due           TEXT,
    depreciation_rate        REAL,
    notes                    TEXT
);

INSERT INTO technology_asset VALUES
('TA1001','Laptop','TechMakers','TM-2020','LM123456','2021-09-15',1500,'U001','Computer Science','Bldg02','R210','2024-09-15','LIC-ABC-123','00-14-22-01-23-45','192.168.10.45','InUse','2023-11-01','2024-11-01',0.20,'Battery replaced 2023');

INSERT INTO technology_asset VALUES
('TA1002','Projector','VisualPro','VP-300','PJ987654','2022-02-10',800,'U045','Marketing','Bldg01','R105','2025-02-10','LIC-DEF-456','00-16-17-22-33-44','192.168.10.78','InUse','2023-12-15','2024-12-15',0.15,'Calibration due 2024');

INSERT INTO technology_asset VALUES
('TA1003','Server','DataCore','DC-XL','SV555777','2020-06-20',5000,'IT001','IT Services','DataCenter','Rack12','2026-06-20','LIC-GHI-789','00-18-19-20-21-22','192.168.0.10','Operational','2023-10-10','2024-10-10',0.10,'Upgraded RAM 2023');

-- External audit records
CREATE TABLE external_audit
(
    audit_id                 TEXT PRIMARY KEY,
    audit_name               TEXT,
    audit_type               TEXT,
    audit_date               TEXT,
    auditor_firm             TEXT,
    lead_auditor             TEXT,
    scope_description        TEXT,
    findings_summary         TEXT,
    recommendations          TEXT,
    compliance_status        TEXT,
    corrective_actions_needed TEXT,
    deadline_for_actions     TEXT,
    follow_up_date           TEXT,
    audit_report_link        TEXT,
    notes                    TEXT,
    created_timestamp        TEXT,
    last_modified_timestamp  TEXT,
    audit_status             TEXT,
    risk_rating              TEXT,
    attachment_document      TEXT
);

INSERT INTO external_audit VALUES
('EA001','Financial Year 2023 Audit','Financial','2024-02-28','AuditPro LLC','Laura Finch','Review of all financial transactions for FY2023','Minor discrepancies in travel reimbursements','Implement stricter receipt policy','Compliant','Yes','2024-05-31','2024-06-15','http://univ.edu/audits/EA001','All issues resolved','2024-01-15','2024-02-20','Completed','Low','');

INSERT INTO external_audit VALUES
('EA002','IT Security Assessment','Security','2024-03-15','SecureCheck Inc','Mark Daniels','Evaluation of network security controls','Detected outdated firewall firmware','Upgrade firmware and perform penetration testing','Partial','Yes','2024-07-01','2024-07-20','http://univ.edu/audits/EA002','Action plan in progress','2024-02-01','2024-03-01','InProgress','Medium','');

INSERT INTO external_audit VALUES
('EA003','Environmental Compliance Review','Environmental','2024-04-10','EcoAudit Group','Sofia Patel','Assessment of waste management and energy usage','Exceeds waste diversion targets','Maintain current practices','Compliant','No','','2024-10-01','http://univ.edu/audits/EA003','No corrective actions required','2024-03-05','2024-04-01','Completed','Low','');

-- Campus energy consumption logs
CREATE TABLE energy_consumption_log
(
    log_id                 TEXT PRIMARY KEY,
    building_code          TEXT,
    meter_id               TEXT,
    reading_date           TEXT,
    consumption_kwh        REAL,
    peak_demand_kw         REAL,
    cost_usd               REAL,
    renewable_percentage   REAL,
    carbon_emission_tons   REAL,
    notes                  TEXT,
    created_timestamp      TEXT,
    last_updated_timestamp TEXT,
    verification_status    TEXT,
    auditor_name           TEXT,
    reading_method         TEXT,
    billing_cycle          TEXT,
    contract_type          TEXT,
    energy_provider        TEXT,
    tariff_rate            REAL,
    adjustment_factor      REAL
);

INSERT INTO energy_consumption_log VALUES
('EC001','B001','MTR1001','2024-01-31',24500.5,210.3,3200.75,45.0,12.5,'January consumption','2024-02-01','2024-02-02','Verified','John Miller','Automated','Monthly','Utility','EnergyCo','0.13',1.00);

INSERT INTO energy_consumption_log VALUES
('EC002','B002','MTR1002','2024-01-31',18075.2,165.0,2400.10,55.0,9.8,'January consumption','2024-02-01','2024-02-02','Verified','Emily Stone','Manual','Monthly','Utility','PowerPlus','0.12',1.00);

INSERT INTO energy_consumption_log VALUES
('EC003','B003','MTR1003','2024-01-31',31200.0,280.5,4100.20,30.0,15.3,'January consumption','2024-02-01','2024-02-02','Pending','Michael Chen','Automated','Monthly','Utility','GreenEnergy','0.15',0.98);

-- Digital media archive entries
CREATE TABLE digital_media_archive
(
    media_id                TEXT PRIMARY KEY,
    title                   TEXT,
    media_type              TEXT,
    format                  TEXT,
    duration_seconds        INTEGER,
    file_size_mb            REAL,
    creator_name            TEXT,
    creation_date           TEXT,
    description             TEXT,
    tags                    TEXT,
    access_level            TEXT,
    usage_rights            TEXT,
    storage_location        TEXT,
    checksum_md5            TEXT,
    preservation_status    TEXT,
    last_accessed           TEXT,
    related_event_id        TEXT,
    license_expiration_date TEXT,
    notes                   TEXT,
    uploaded_timestamp      TEXT
);

INSERT INTO digital_media_archive VALUES
('DM001','Opening Ceremony 2023','Video','MP4',5400,1500.75,'University Media','2023-09-01','Full video of opening ceremony','ceremony,opening,2023','Public','CC-BY','ArchiveServer01','a1b2c3d4e5f6g7h8i9j0','Preserved','2024-01-10','EVT100','2025-09-01','No issues','2023-09-02');

INSERT INTO digital_media_archive VALUES
('DM002','President Interview','Audio','MP3',1800,45.20,'Campus Radio','2024-02-15','Interview with university president','interview,president,2024','Restricted','AllRightsReserved','ArchiveServer02','b1c2d3e4f5g6h7i8j9k0','Preserved','2024-03-01','EVT200','2026-02-15','Approved for internal use','2024-02-16');

INSERT INTO digital_media_archive VALUES
('DM003','Campus Drone Footage','Video','MOV',7200,2500.00,'Aerial Media Team','2023-11-20','Aerial footage of campus grounds','drone,airview,2023','Public','CC0','ArchiveServer03','c1d2e3f4g5h6i7j8k9l0','Preserved','2024-02-05','EVT300','2024-11-20','All clear','2023-11-21');