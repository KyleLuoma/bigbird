-- Clinical Microbiology Laboratory Reports
CREATE TABLE ClinicalMicrobiologyReport
(
    report_id            INTEGER PRIMARY KEY,
    patient_id           INTEGER,
    specimen_type        TEXT,
    collection_date      DATE,
    organism             TEXT,
    gram_stain           TEXT,
    culture_result       TEXT,
    antibiotic_sensitivity TEXT,
    report_date          DATE,
    lab_technician       TEXT,
    notes                TEXT,
    source               TEXT,
    incubation_time      INTEGER,
    incubation_temp_c    REAL,
    ph_value             REAL,
    volume_ml            REAL,
    status               TEXT,
    revised_flag         INTEGER,
    revision_date        DATE,
    external_reference   TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patient(ID) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO ClinicalMicrobiologyReport VALUES (1, 101, Blood, '2025-12-01', Staphylococcus, Positive, Growth, PenicillinSensitive, '2025-12-03', Alice, None, HospitalLab, 48, 37.0, 7.4, 5.0, Completed, 0, NULL, Ref001);
INSERT INTO ClinicalMicrobiologyReport VALUES (2, 102, Urine, '2025-12-02', EscherichiaColi, Negative, NoGrowth, None, '2025-12-04', Bob, Contamination suspect, Outpatient, 24, 35.0, 6.8, 10.0, Completed, 0, NULL, Ref002);
INSERT INTO ClinicalMicrobiologyReport VALUES (3, 103, Sputum, '2025-12-03', Pneumococcus, Positive, Growth, MacrolideResistant, '2025-12-05', Carol, Followup needed, Emergency, 72, 36.5, 7.0, 2.0, Completed, 1, '2025-12-06', Ref003);

-- Pharmacy Cold Chain Temperature Log
CREATE TABLE PharmacyColdChainLog
(
    log_id               INTEGER PRIMARY KEY,
    medication_batch_id  TEXT,
    storage_location     TEXT,
    temperature_c        REAL,
    humidity_percent     REAL,
    record_timestamp     DATETIME,
    deviation_flag       INTEGER,
    corrective_action    TEXT,
    recorded_by          TEXT,
    device_id            TEXT,
    sensor_status        TEXT,
    alert_level          TEXT,
    maintenance_due_date DATE,
    calibration_date     DATE,
    cal_technician       TEXT,
    notes                TEXT,
    external_audit_ref   TEXT,
    batch_expiry_date    DATE,
    compliance_status    TEXT,
    audit_timestamp      DATETIME,
    audit_technician     TEXT
);
INSERT INTO PharmacyColdChainLog VALUES (1, BATCH001, FreezerA, -20.5, 30.0, '2025-12-01 08:00:00', 0, None, Dave, DEV01, OK, None, '2026-01-01', '2025-06-01', Emma, Routine check, AUD001, '2026-06-01', Compliant, '2025-12-01 09:00:00', Frank);
INSERT INTO PharmacyColdChainLog VALUES (2, BATCH002, RefrigeratorB, 4.2, 45.0, '2025-12-01 12:00:00', 1, AdjustedThermostat, Gina, DEV02, Warning, HighTemp, '2025-12-15', '2025-07-01', Henry, Temp spike observed, AUD002, '2026-07-01', NonCompliant, '2025-12-01 13:00:00', Irene);
INSERT INTO PharmacyColdChainLog VALUES (3, BATCH003, FreezerC, -18.0, 25.0, '2025-12-01 16:00:00', 0, None, Jack, DEV03, OK, None, '2026-02-01', '2025-08-01', Kate, All good, AUD003, '2026-08-01', Compliant, '2025-12-01 17:00:00', Liam);

-- Hospital Legislation Archive
CREATE TABLE HospitalLegislationArchive
(
    doc_id               INTEGER PRIMARY KEY,
    title                TEXT,
    enactment_date       DATE,
    amendment_date       DATE,
    jurisdiction         TEXT,
    document_type        TEXT,
    status               TEXT,
    effective_date       DATE,
    expiry_date          DATE,
    responsible_office   TEXT,
    revision_number      INTEGER,
    summary              TEXT,
    keywords             TEXT,
    language             TEXT,
    file_path            TEXT,
    version              TEXT,
    creator_name         TEXT,
    approver_name        TEXT,
    last_modified_by     TEXT,
    last_modified_date   DATE,
    publication_year     INTEGER,
    reference_code       TEXT
);
INSERT INTO HospitalLegislationArchive VALUES (1, PatientRightsAct, '2010-01-01', '2020-01-01', StateX, Statute, Active, '2010-01-01', NULL, LegalDept, 3, Protects patient autonomy, rights, autonomy, English, /docs/PatientRightsAct.pdf, v3, Susan, Michael, Laura, '2020-01-02', 2010, REF001);
INSERT INTO HospitalLegislationArchive VALUES (2, DataPrivacyRegulation, '2015-05-15', '2021-05-15', Federal, Regulation, Active, '2015-05-15', NULL, ITSecurity, 2, Governs patient data handling, privacy, security, English, /docs/DataPrivacyRegulation.pdf, v2, Alan, Denise, Brian, '2021-05-16', 2015, REF002);
INSERT INTO HospitalLegislationArchive VALUES (3, WasteManagementGuideline, '2012-09-30', '2018-09-30', StateY, Guideline, Retired, '2012-09-30', '2023-01-01', EnvironmentalDept, 1, Standards for medical waste, disposal, English, /docs/WasteManagementGuideline.pdf, v1, Clara, Edward, Fiona, '2018-10-01', 2012, REF003);

-- Patient Transportation Metrics
CREATE TABLE PatientTransportationMetrics
(
    trip_id               INTEGER PRIMARY KEY,
    patient_id            INTEGER,
    transport_mode        TEXT,
    request_timestamp     DATETIME,
    departure_timestamp   DATETIME,
    arrival_timestamp     DATETIME,
    distance_km           REAL,
    transport_cost_usd    REAL,
    driver_id             INTEGER,
    vehicle_id            TEXT,
    wheelchair_accessible INTEGER,
    escort_required       INTEGER,
    notes                 TEXT,
    emergency_flag        INTEGER,
    mileage_start_odometer REAL,
    mileage_end_odometer   REAL,
    fuel_consumed_liters   REAL,
    average_speed_kmph    REAL,
    compliance_status     TEXT,
    audit_id              TEXT,
    feedback_score        INTEGER,
    feedback_comment      TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patient(ID) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO PatientTransportationMetrics VALUES (1, 101, Ambulance, '2025-12-01 08:10:00', '2025-12-01 08:20:00', '2025-12-01 08:45:00', 12.5, 150.00, 201, VEH001, 1, 0, None, 0, 10500.0, 10512.5, 2.0, 45.0, Compliant, AUD100, 5, Excellent, );
INSERT INTO PatientTransportationMetrics VALUES (2, 102, WheelchairVan, '2025-12-01 09:00:00', '2025-12-01 09:10:00', '2025-12-01 09:30:00', 8.0, 80.00, 202, VEH002, 1, 1, Escort needed for patient, 0, 20000.0, 20008.0, 1.5, 30.0, Compliant, AUD101, 4, Good, );
INSERT INTO PatientTransportationMetrics VALUES (3, 103, Taxi, '2025-12-01 10:15:00', '2025-12-01 10:20:00', '2025-12-01 10:35:00', 5.5, 60.00, 203, VEH003, 0, 0, No special requirements, 0, 15000.0, 15005.5, 1.0, 20.0, Compliant, AUD102, 3, Satisfactory, );

-- Medical Procedure Costing
CREATE TABLE MedicalProcedureCosting
(
    costing_id            INTEGER PRIMARY KEY,
    procedure_code        TEXT,
    procedure_name        TEXT,
    department            TEXT,
    base_cost_usd         REAL,
    supply_cost_usd       REAL,
    labor_cost_usd        REAL,
    equipment_cost_usd    REAL,
    overhead_percent      REAL,
    total_cost_usd        REAL,
    insurance_coverage_percent INTEGER,
    patient_responsibility_usd REAL,
    fiscal_year           INTEGER,
    cost_center_code      TEXT,
    approved_by           TEXT,
    approval_date         DATE,
    last_updated_by       TEXT,
    last_update_date      DATE,
    notes                 TEXT,
    billing_code          TEXT,
    revenue_code          TEXT,
    compliance_status    TEXT
);
INSERT INTO MedicalProcedureCosting VALUES (1, PROC001, Appendectomy, Surgery, 3000.00, 250.00, 1200.00, 500.00, 15.0, 5292.50, 80, 1058.50, 2025, CC100, DrSmith, '2025-01-15', AdminA, '2025-06-01', Routine procedure, BIL001, REV001, Compliant);
INSERT INTO MedicalProcedureCosting VALUES (2, PROC002, MRI_Brain, Radiology, 1500.00, 300.00, 500.00, 200.00, 12.0, 2472.00, 70, 741.60, 2025, CC200, DrLee, '2025-02-20', AdminB, '2025-06-15', Includes contrast, BIL002, REV002, Compliant);
INSERT INTO MedicalProcedureCosting VALUES (3, PROC003, PhysicalTherapySession, Rehabilitation, 200.00, 20.00, 80.00, 0.00, 10.0, 330.00, 85, 49.50, 2025, CC300, DrKim, '2025-03-10', AdminC, '2025-07-01', Standard session, BIL003, REV003, Compliant);

-- Laboratory Quality Control Records
CREATE TABLE LaboratoryQualityControl
(
    qc_id                 INTEGER PRIMARY KEY,
    lab_id                INTEGER,
    test_type             TEXT,
    control_level         TEXT,
    run_date              DATE,
    operator_name         TEXT,
    result_value          REAL,
    target_range_low      REAL,
    target_range_high     REAL,
    deviation_flag        INTEGER,
    corrective_action     TEXT,
    equipment_id          TEXT,
    calibration_date      DATE,
    calibrator_name       TEXT,
    comment               TEXT,
    verification_status   TEXT,
    reviewed_by           TEXT,
    review_date           DATE,
    external_accreditor   TEXT,
    accreditation_date    DATE,
    expiry_date           DATE,
    notes                 TEXT,
    FOREIGN KEY (lab_id) REFERENCES Laboratory(ID) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO LaboratoryQualityControl VALUES (1, 1, Glucose, High, '2025-12-01', Anna, 105.0, 70.0, 110.0, 0, None, EQ001, '2025-06-01', CalTech, No issues, Passed, DrBrown, '2025-12-02', AccredOrg, '2026-12-01', NULL, );
INSERT INTO LaboratoryQualityControl VALUES (2, 1, Hemoglobin, Low, '2025-12-02', Ben, 11.5, 12.0, 16.0, 1, AdjustedReagent, EQ002, '2025-07-01', CalTech, Slight low, Failed, DrWhite, '2025-12-03', AccredOrg, '2026-12-01', NULL, );
INSERT INTO LaboratoryQualityControl VALUES (3, 2, Cholesterol, Normal, '2025-12-03', Carla, 190.0, 125.0, 200.0, 0, None, EQ003, '2025-08-01', CalTech, Within range, Passed, DrGreen, '2025-12-04', AccredOrg, '2026-12-01', NULL, );

-- Staff Residency Program
CREATE TABLE StaffResidencyProgram
(
    residency_id          INTEGER PRIMARY KEY,
    staff_id              INTEGER,
    specialty             TEXT,
    start_date            DATE,
    end_date              DATE,
    supervisor_id         INTEGER,
    rotation_number       INTEGER,
    evaluation_score      INTEGER,
    status                TEXT,
    program_type          TEXT,
    academic_year         TEXT,
    stipend_usd           REAL,
    housing_allowance_usd REAL,
    board_exam_passed     INTEGER,
    research_project      TEXT,
    publication_count     INTEGER,
    conference_attended   INTEGER,
    mentor_name           TEXT,
    last_evaluation_date  DATE,
    program_location      TEXT,
    accreditation_body    TEXT,
    notes                 TEXT,
    FOREIGN KEY (staff_id) REFERENCES Physician(ID) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO StaffResidencyProgram VALUES (1, 301, Cardiology, '2025-07-01', '2028-06-30', 401, 1, 88, Active, FullTime, 2025-2026, 3500.00, 1200.00, 0, ProjectA, 0, 1, DrHeart, '2025-12-01', MainCampus, BoardCommission, );
INSERT INTO StaffResidencyProgram VALUES (2, 302, Neurology, '2024-07-01', '2027-06-30', 402, 2, 92, Active, FullTime, 2024-2025, 3400.00, 1100.00, 1, ProjectB, 1, 2, DrBrain, '2025-12-02', EastWing, BoardCommission, );
INSERT INTO StaffResidencyProgram VALUES (3, 303, Oncology, '2023-07-01', '2026-06-30', 403, 3, 85, Completed, FullTime, 2023-2024, 3600.00, 1300.00, 1, ProjectC, 2, 3, DrCancer, '2025-12-03', WestWing, BoardCommission, );

-- Emergency Room Triage Logs
CREATE TABLE EmergencyRoomTriage
(
    triage_id             INTEGER PRIMARY KEY,
    patient_id            INTEGER,
    arrival_timestamp     DATETIME,
    triage_timestamp      DATETIME,
    acuity_level          INTEGER,
    presenting_complaint  TEXT,
    vital_signs_score     INTEGER,
    pain_score            INTEGER,
    triage_nurse_id       INTEGER,
    assigned_physician_id INTEGER,
    disposition           TEXT,
    discharge_timestamp   DATETIME,
    notes                 TEXT,
    follow_up_required    INTEGER,
    follow_up_date        DATE,
    insurance_verified    INTEGER,
    language_preference   TEXT,
    transport_mode        TEXT,
    isolation_required    INTEGER,
    isolation_type        TEXT,
    source_type           TEXT,
    reviewed_by           TEXT,
    review_timestamp      DATETIME,
    FOREIGN KEY (patient_id) REFERENCES Patient(ID) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO EmergencyRoomTriage VALUES (1, 101, '2025-12-01 08:05:00', '2025-12-01 08:10:00', 2, ChestPain, 85, 7, 1011, 2011, Admitted, '2025-12-01 12:30:00', None, 1, '2025-12-10', 1, English, Ambulance, 0, NULL, WalkIn, NurseA, '2025-12-01 08:15:00');
INSERT INTO EmergencyRoomTriage VALUES (2, 102, '2025-12-01 09:20:00', '2025-12-01 09:25:00', 3, HeadInjury, 78, 5, 1012, 2012, Discharged, '2025-12-01 10:00:00', ObservationNeeded, 0, NULL, 1, Spanish, PrivateCar, 0, NULL, Ambulance, NurseB, '2025-12-01 09:30:00');
INSERT INTO EmergencyRoomTriage VALUES (3, 103, '2025-12-01 10:45:00', '2025-12-01 10:50:00', 1, RespiratoryFailure, 92, 9, 1013, 2013, ICU, NULL, CriticalCondition, 1, '2025-12-15', 1, English, AirTransport, 1, NegativePressure, Transfer, NurseC, '2025-12-01 10:55:00');

-- Outpatient Visit Summary
CREATE TABLE OutpatientVisitSummary
(
    visit_id              INTEGER PRIMARY KEY,
    patient_id            INTEGER,
    visit_date            DATE,
    clinic_department     TEXT,
    provider_id           INTEGER,
    visit_type            TEXT,
    diagnosis_code        TEXT,
    procedure_code        TEXT,
    prescription_given    TEXT,
    labs_ordered          TEXT,
    imaging_ordered       TEXT,
    follow_up_required    INTEGER,
    follow_up_date        DATE,
    visit_duration_min    INTEGER,
    notes                 TEXT,
    billing_status        TEXT,
    amount_billed_usd     REAL,
    amount_paid_usd       REAL,
    insurance_covered_usd REAL,
    copay_usd             REAL,
    patient_satisfaction  INTEGER,
    feedback_comments     TEXT,
    reviewed_by           TEXT,
    review_date           DATE,
    FOREIGN KEY (patient_id) REFERENCES Patient(ID) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO OutpatientVisitSummary VALUES (1, 101, '2025-12-01', Cardiology, 3011, Routine, DX001, PR001, Atorvastatin, LabA, ImgA, 1, '2025-12-15', 30, None, Paid, 200.00, 180.00, 160.00, 20.00, 5, VerySatisfied, DrHeart, '2025-12-02');
INSERT INTO OutpatientVisitSummary VALUES (2, 102, '2025-12-02', Dermatology, 3022, FollowUp, DX002, PR002, Hydrocortisone, LabB, ImgB, 0, NULL, 20, None, Unpaid, 120.00, 0.00, 80.00, 40.00, 4, Satisfied, DrSkin, '2025-12-03');
INSERT INTO OutpatientVisitSummary VALUES (3, 103, '2025-12-03', Neurology, 3033, NewPatient, DX003, PR003, Gabapentin, LabC, ImgC, 1, '2025-12-20', 45, None, Pending, 250.00, 0.00, 200.00, 50.00, 3, Neutral, DrBrain, '2025-12-04');

-- Biomedical Research Material Inventory
CREATE TABLE BiomedicalResearchMaterial
(
    material_id           INTEGER PRIMARY KEY,
    material_name         TEXT,
    material_type         TEXT,
    source_vendor         TEXT,
    lot_number            TEXT,
    received_date         DATE,
    expiration_date       DATE,
    storage_location      TEXT,
    quantity_units        REAL,
    unit_of_measure       TEXT,
    hazard_classification TEXT,
    biosafety_level       INTEGER,
    aliquot_volume_ml     REAL,
    aliquot_count         INTEGER,
    quality_control_pass INTEGER,
    qc_date               DATE,
    qc_technician         TEXT,
    notes                 TEXT,
    status                TEXT,
    last_used_date        DATE,
    used_by_staff_id      INTEGER,
    disposal_method       TEXT,
    disposal_date         DATE,
    FOREIGN KEY (used_by_staff_id) REFERENCES StaffShift(staff_id) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO BiomedicalResearchMaterial VALUES (1, AntibodyX, Protein, VendorA, LOT123, '2025-01-10', '2027-01-10', Freezer1, 5.0, mg, Biological, 2, 0.5, 10, 1, '2025-02-01', TechA, None, Available, NULL, NULL, NULL, NULL);
INSERT INTO BiomedicalResearchMaterial VALUES (2, CellLineY, CellCulture, VendorB, LOT456, '2024-06-15', '2026-06-15', Incubator3, 2.0, million, Biological, 2, 1.0, 5, 1, '2024-07-01', TechB, Contaminated, Quarantined, NULL, NULL, NULL, NULL);
INSERT INTO BiomedicalResearchMaterial VALUES (3, ReagentZ, Chemical, VendorC, LOT789, '2025-03-20', '2028-03-20', Cabinet2, 100.0, ml, Hazardous, 3, 10.0, 10, 0, NULL, TechC, Expired, Disposed, '2025-12-01', 501, Incineration, '2025-12-02');