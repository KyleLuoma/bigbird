-- HospitalDepartment table description
CREATE TABLE HospitalDepartment
(
    dept_id                     INTEGER PRIMARY KEY,
    name                        TEXT,
    floor                       INTEGER,
    wing                        TEXT,
    head_id                     INTEGER,
    phone                       TEXT,
    email                       TEXT,
    established_date            DATE,
    budget                      REAL,
    staff_count                 INTEGER,
    bed_capacity                INTEGER,
    icu_beds                    INTEGER,
    operation_theaters          INTEGER,
    research_units              INTEGER,
    accreditation_status        TEXT,
    opening_hours               TEXT,
    closing_hours               TEXT,
    emergency_available         INTEGER,
    parking_spaces              INTEGER,
    janitorial_staff            INTEGER,
    security_staff              INTEGER,
    waste_management_contract   TEXT
);

INSERT INTO HospitalDepartment VALUES (1, 'Cardiology', 3, 'East', 101, '5551234001', 'cardio@example.com', '2005-06-01', 1250000.00, 85, 120, 12, 4, 2, 'JointCommission', '07:00', '19:00', 1, 20, 5, 8, 'WMCO123');
INSERT INTO HospitalDepartment VALUES (2, 'Neurology', 4, 'West', 102, '5551234002', 'neuro@example.com', '2008-09-15', 950000.00, 70, 90, 8, 3, 1, 'JointCommission', '07:00', '18:00', 1, 15, 4, 6, 'WMCO124');
INSERT INTO HospitalDepartment VALUES (3, 'Oncology', 5, 'North', 103, '5551234003', 'onco@example.com', '2010-01-20', 2000000.00, 110, 150, 20, 6, 3, 'JointCommission', '06:30', '20:00', 1, 25, 7, 9, 'WMCO125');

-- EquipmentCalibrationLog table description
CREATE TABLE EquipmentCalibrationLog
(
    log_id                INTEGER PRIMARY KEY,
    equipment_id          INTEGER,
    calibration_date      DATE,
    technician_id         INTEGER,
    method                TEXT,
    standard_reference    TEXT,
    result_pass           INTEGER,
    next_due_date         DATE,
    notes                 TEXT,
    temperature_c         REAL,
    humidity_percent      REAL,
    voltage_v             REAL,
    current_a             REAL,
    pressure_kpa          REAL,
    duration_minutes     INTEGER,
    location              TEXT,
    department            TEXT,
    calibration_type      TEXT,
    calibration_cert_number TEXT,
    calibration_agency    TEXT,
    calibration_cost      REAL
);

INSERT INTO EquipmentCalibrationLog VALUES (1001, 5001, '2023-02-10', 201, 'Electrical', 'ISO17025', 1, '2024-02-10', 'All good', 22.5, 45.0, 5.0, 0.2, 101.3, 30, 'LabA', 'Radiology', 'Annual', 'CERT12345', 'AgencyX', 150.00);
INSERT INTO EquipmentCalibrationLog VALUES (1002, 5002, '2023-03-15', 202, 'Mechanical', 'ISO9001', 1, '2024-03-15', 'Minor wear', 23.0, 48.5, 12.0, 0.5, 98.7, 45, 'LabB', 'Cardiology', 'Quarterly', 'CERT54321', 'AgencyY', 200.00);
INSERT INTO EquipmentCalibrationLog VALUES (1003, 5003, '2023-04-20', 203, 'Optical', 'ISO17025', 0, '2024-04-20', 'Alignment issue', 21.8, 42.0, 3.3, 0.1, 102.5, 60, 'LabC', 'Neurology', 'Annual', 'CERT98765', 'AgencyZ', 180.00);

-- SupplyChainVendor table description
CREATE TABLE SupplyChainVendor
(
    vendor_id               INTEGER PRIMARY KEY,
    company_name            TEXT,
    contact_name            TEXT,
    contact_phone           TEXT,
    contact_email           TEXT,
    address_line1           TEXT,
    address_line2           TEXT,
    city                    TEXT,
    state                   TEXT,
    zip_code                TEXT,
    country                 TEXT,
    vendor_type             TEXT,
    contract_start_date     DATE,
    contract_end_date       DATE,
    credit_limit            REAL,
    payment_terms           TEXT,
    insurance_policy_number TEXT,
    tax_id                  TEXT,
    preferred               INTEGER,
    rating                  INTEGER,
    last_audit_date         DATE,
    notes                   TEXT
);

INSERT INTO SupplyChainVendor VALUES (3001, 'MediSupplyCo', 'Alice Green', '5552001001', 'alice.green@medisupply.com', '123 Health St', '', 'Metrocity', 'NY', '10001', 'USA', 'Medical', '2022-01-01', '2025-12-31', 500000.00, 'Net30', 'INS123456', 'TX987654', 1, 5, '2023-06-15', 'Reliable deliveries');
INSERT INTO SupplyChainVendor VALUES (3002, 'PharmaGear Ltd', 'Bob White', '5552001002', 'bob.white@pharmagear.com', '456 Pharma Rd', 'Suite 200', 'MedicTown', 'CA', '90002', 'USA', 'Pharmaceutical', '2021-05-15', '2024-05-14', 300000.00, 'Net45', 'INS654321', 'TX123456', 0, 4, '2023-05-20', 'Occasional delays');
INSERT INTO SupplyChainVendor VALUES (3003, 'LabEquip Inc', 'Carol Black', '5552001003', 'carol.black@labequip.com', '789 Lab Ave', '', 'Science City', 'TX', '73301', 'USA', 'Equipment', '2023-03-01', '2026-02-28', 400000.00, 'Net60', 'INS789012', 'TX345678', 1, 5, '2023-07-01', 'High quality products');

-- PatientFeedback table description
CREATE TABLE PatientFeedback
(
    feedback_id            INTEGER PRIMARY KEY,
    patient_id             INTEGER,
    visit_date             DATE,
    department_id          INTEGER,
    staff_id               INTEGER,
    rating_overall         INTEGER,
    rating_cleanliness     INTEGER,
    rating_wait_time       INTEGER,
    rating_communication   INTEGER,
    comments               TEXT,
    follow_up_required     INTEGER,
    follow_up_date         DATE,
    survey_mode            TEXT,
    survey_version         TEXT,
    anonymous_flag         INTEGER,
    language_preference    TEXT,
    device_used            TEXT,
    response_time_seconds  INTEGER,
    net_promoter_score     INTEGER,
    suggestions            TEXT,
    escalation_flag        INTEGER
);

INSERT INTO PatientFeedback VALUES (9001, 10001, '2023-08-01', 1, 501, 9, 8, 7, 9, 'Very good service', 0, NULL, 'Online', 'v2', 0, 'English', 'Mobile', 45, 8, 'Add more parking', 0);
INSERT INTO PatientFeedback VALUES (9002, 10002, '2023-08-03', 2, 502, 6, 5, 4, 6, 'Long wait times', 1, '2023-08-10', 'Phone', 'v1', 1, 'Spanish', 'Tablet', 60, 4, 'Improve scheduling', 1);
INSERT INTO PatientFeedback VALUES (9003, 10003, '2023-08-05', 3, 503, 8, 9, 8, 8, 'Friendly staff', 0, NULL, 'Kiosk', 'v2', 0, 'English', 'Kiosk', 30, 7, 'More reading material', 0);

-- ClinicalTrialEnrollment table description
CREATE TABLE ClinicalTrialEnrollment
(
    enrollment_id          INTEGER PRIMARY KEY,
    trial_id               INTEGER,
    patient_id             INTEGER,
    enrollment_date        DATE,
    consent_date           DATE,
    randomization_group    TEXT,
    dosage_mg              REAL,
    administration_route   TEXT,
    visit_schedule         TEXT,
    investigator_id        INTEGER,
    site_id                INTEGER,
    status                 TEXT,
    withdrawal_date        DATE,
    adverse_event_flag     INTEGER,
    notes                  TEXT,
    monitoring_frequency_days INTEGER,
    compliance_score       REAL,
    protocol_version       TEXT,
    ethics_approval_date   DATE,
    sponsor_id             INTEGER,
    funding_amount         REAL
);

INSERT INTO ClinicalTrialEnrollment VALUES (7001, 4001, 20001, '2023-01-15', '2023-01-10', 'Placebo', 0.0, 'Oral', 'Monthly', 601, 801, 'Active', NULL, 0, 'No issues', 30, 98.5, 'v1.0', '2022-12-01', 901, 250000.00);
INSERT INTO ClinicalTrialEnrollment VALUES (7002, 4002, 20002, '2023-02-20', '2023-02-18', 'DrugA', 50.0, 'IV', 'Biweekly', 602, 802, 'Active', NULL, 1, 'Mild nausea', 14, 92.0, 'v1.1', '2023-01-15', 902, 300000.00);
INSERT INTO ClinicalTrialEnrollment VALUES (7003, 4003, 20003, '2023-03-05', '2023-03-01', 'DrugB', 75.0, 'Subcutaneous', 'Weekly', 603, 803, 'Withdrawn', '2023-04-10', 0, 'Patient requested withdrawal', 7, 85.0, 'v2.0', '2023-02-20', 903, 350000.00);

-- FacilityMaintenanceSchedule table description
CREATE TABLE FacilityMaintenanceSchedule
(
    schedule_id            INTEGER PRIMARY KEY,
    facility_id            INTEGER,
    maintenance_type       TEXT,
    start_date             DATE,
    end_date               DATE,
    contractor_id          INTEGER,
    cost_estimate          REAL,
    priority_level         TEXT,
    downtime_hours         REAL,
    safety_measures        TEXT,
    required_permits       TEXT,
    equipment_involved     TEXT,
    responsible_manager    TEXT,
    notes                  TEXT,
    created_by             TEXT,
    created_at             DATE,
    updated_by             TEXT,
    updated_at             DATE,
    status                 TEXT,
    last_inspection_date   DATE
);

INSERT INTO FacilityMaintenanceSchedule VALUES (6001, 101, 'HVAC', '2023-09-01', '2023-09-05', 701, 12000.00, 'High', 8.0, 'LockoutTagout', 'PermitA', 'VentUnits', 'Miller', 'Seasonal filter change', 'admin', '2023-07-15', 'tech1', '2023-07-20', 'Planned', '2023-06-30');
INSERT INTO FacilityMaintenanceSchedule VALUES (6002, 102, 'Plumbing', '2023-10-10', '2023-10-12', 702, 8000.00, 'Medium', 4.0, ' PPE', 'PermitB', 'Pipes', 'Johnson', 'Leak repair in wing B', 'admin', '2023-08-01', 'tech2', '2023-08-05', 'Planned', '2023-07-28');
INSERT INTO FacilityMaintenanceSchedule VALUES (6003, 103, 'Electrical', '2023-11-15', '2023-11-16', 703, 15000.00, 'Critical', 12.0, 'Grounding', 'PermitC', 'Transformers', 'Lee', 'Upgrade backup generators', 'admin', '2023-09-10', 'tech3', '2023-09-15', 'Planned', '2023-09-01');

-- DietaryRestriction table description
CREATE TABLE DietaryRestriction
(
    restriction_id         INTEGER PRIMARY KEY,
    patient_id             INTEGER,
    restriction_type       TEXT,
    description            TEXT,
    start_date             DATE,
    end_date               DATE,
    severity_level         TEXT,
    dietician_id           INTEGER,
    approved_by            TEXT,
    notes                  TEXT,
    is_active              INTEGER,
    review_date            DATE,
    compliance_rate        REAL,
    allergy_flag           INTEGER,
    lactose_intolerant_flag INTEGER,
    gluten_free_flag       INTEGER,
    vegetarian_flag        INTEGER,
    vegan_flag             INTEGER,
    low_sodium_flag        INTEGER,
    low_fat_flag           INTEGER,
    low_sugar_flag         INTEGER
);

INSERT INTO DietaryRestriction VALUES (4001, 30001, 'Allergy', 'Peanut allergy', '2022-01-01', NULL, 'High', 801, 'DrSmith', 'Avoid all nut products', 1, '2023-06-01', 100.0, 1, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO DietaryRestriction VALUES (4002, 30002, 'Medical', 'Renal diet low potassium', '2023-03-15', NULL, 'Medium', 802, 'DrJones', 'Monitor potassium intake', 1, '2023-09-01', 95.0, 0, 0, 0, 0, 0, 1, 1, 0);
INSERT INTO DietaryRestriction VALUES (4003, 30003, 'Preference', ' Vegetarian diet ', '2021-07-01', NULL, 'Low', 803, 'DrLee', 'No meat products', 1, '2023-01-15', 90.0, 0, 0, 0, 1, 0, 0, 0, 0);

-- EmergencyDrillRecord table description
CREATE TABLE EmergencyDrillRecord
(
    drill_id               INTEGER PRIMARY KEY,
    drill_date             DATE,
    department_id          INTEGER,
    scenario_type          TEXT,
    participants_count     INTEGER,
    duration_minutes       INTEGER,
    objectives_met         INTEGER,
    issues_reported        TEXT,
    corrective_actions     TEXT,
    lead_coordinator       TEXT,
    evaluation_score       REAL,
    external_observer      TEXT,
    drill_type             TEXT,
    location               TEXT,
    equipment_used         TEXT,
    communication_method   TEXT,
    safety_incidents       INTEGER,
    post_drill_debrief     TEXT,
    next_drill_date        DATE,
    resources_used         TEXT
);

INSERT INTO EmergencyDrillRecord VALUES (8001, '2023-04-10', 1, 'Fire', 45, 60, 1, 'None', 'N/A', 'CaptainA', 95.0, 'ObserverX', 'Full', 'West Wing', 'Extinguishers', 'PA System', 0, 'All good', '2023-10-10', 'Extinguishers, PA');
INSERT INTO EmergencyDrillRecord VALUES (8002, '2023-05-20', 2, 'CodeBlue', 30, 45, 1, 'Delay in response', 'Revise protocol', 'CaptainB', 88.5, 'ObserverY', 'Partial', 'ICU', 'Defibrillator', 'Radio', 1, 'Discussed delay', '2023-11-20', 'Defibrillator, Radios');
INSERT INTO EmergencyDrillRecord VALUES (8003, '2023-06-15', 3, 'Evacuation', 60, 90, 0, 'Confusion on exits', 'Update signage', 'CaptainC', 70.0, 'ObserverZ', 'Full', 'East Wing', 'Exit Signs', 'Public Address', 2, 'Need better training', '2024-01-15', 'Signs, PA');

-- InventoryAuditTrail table description
CREATE TABLE InventoryAuditTrail
(
    audit_id                INTEGER PRIMARY KEY,
    item_id                 INTEGER,
    item_category           TEXT,
    audit_date              DATE,
    auditor_id              INTEGER,
    location                TEXT,
    quantity_before         INTEGER,
    quantity_after          INTEGER,
    variance                INTEGER,
    reason_code             TEXT,
    notes                   TEXT,
    signed_off_by           TEXT,
    sign_off_date           DATE,
    audit_type              TEXT,
    method                  TEXT,
    equipment_used          TEXT,
    temperature_control     INTEGER,
    humidity_control        INTEGER,
    discrepancy_resolved_flag INTEGER,
    resolution_date         DATE,
    corrective_action       TEXT
);

INSERT INTO InventoryAuditTrail VALUES (5001, 90001, 'Medicine', '2023-07-01', 901, 'Pharmacy', 150, 148, -2, 'Shrinkage', 'Two vials missing', 'SupervisorA', '2023-07-02', 'Physical', 'BarcodeScanner', 'Scanner1', 1, 0, 1, '2023-07-03', 'Investigated and logged');
INSERT INTO InventoryAuditTrail VALUES (5002, 90002, 'Supply', '2023-07-15', 902, 'SupplyRoom', 200, 205, 5, 'Overstock', 'Received extra units', 'SupervisorB', '2023-07-16', 'Physical', 'ManualCount', 'None', 0, 0, 1, '2023-07-16', 'Adjusted inventory system');
INSERT INTO InventoryAuditTrail VALUES (5003, 90003, 'Equipment', '2023-08-05', 903, 'OR', 10, 9, -1, 'Damage', 'One monitor damaged', 'SupervisorC', '2023-08-06', 'Physical', 'RFIDReader', 'Reader2', 0, 0, 1, '2023-08-08', 'Replaced damaged unit');

-- StaffCertificationRecord table description
CREATE TABLE StaffCertificationRecord
(
    record_id               INTEGER PRIMARY KEY,
    staff_id                INTEGER,
    certification_name      TEXT,
    certification_body      TEXT,
    certification_number    TEXT,
    issue_date              DATE,
    expiry_date             DATE,
    renewal_date            DATE,
    status                  TEXT,
    notes                   TEXT,
    verified_by             TEXT,
    verification_date       DATE,
    training_hours          INTEGER,
    continuing_education_credits INTEGER,
    last_exam_score         REAL,
    exam_date               DATE,
    competency_level        TEXT,
    renewal_required_flag   INTEGER,
    suspension_flag         INTEGER,
    reactivation_date       DATE
);

INSERT INTO StaffCertificationRecord VALUES (9001, 1001, 'Advanced Cardiac Life Support', 'AHA', 'ACLS12345', '2021-03-01', '2024-03-01', '2023-12-01', 'Active', 'Completed with high marks', 'DeptHead', '2021-03-05', 40, 12, 95.0, '2021-02-20', 'Expert', 0, 0, NULL);
INSERT INTO StaffCertificationRecord VALUES (9002, 1002, 'Basic Life Support', 'AHA', 'BLS54321', '2020-07-15', '2023-07-15', '2023-05-15', 'Expired', 'Renewal pending', 'DeptHead', '2020-07-20', 20, 6, 88.0, '2020-07-01', 'Competent', 1, 0, NULL);
INSERT INTO StaffCertificationRecord VALUES (9003, 1003, 'Pediatric Advanced Life Support', 'AHA', 'PALS67890', '2022-01-10', '2025-01-10', '2024-12-01', 'Active', 'No issues', 'DeptHead', '2022-01-12', 35, 10, 92.5, '2022-01-05', 'Advanced', 0, 0, NULL);