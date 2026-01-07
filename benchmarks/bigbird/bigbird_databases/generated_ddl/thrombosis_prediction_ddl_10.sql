-- Audiology Test Records
CREATE TABLE AudiologyTest
(
    test_id                 INTEGER PRIMARY KEY,
    patient_id              INTEGER,
    test_date               DATE,
    ear_side                TEXT,
    pure_tone_average       REAL,
    speech_discrimination   REAL,
    tympanometry_type       TEXT,
    acoustic_reflex         TEXT,
    otoscopy_findings       TEXT,
    audiogram_image_path    TEXT,
    clinician_id            INTEGER,
    referral_source         TEXT,
    notes                   TEXT,
    hearing_aid_recommended TEXT,
    follow_up_date          DATE,
    equipment_id            INTEGER,
    calibration_date        DATE,
    ambient_noise_level     REAL,
    test_duration_minutes  INTEGER,
    result_status           TEXT
);

INSERT INTO AudiologyTest VALUES (1,101,'2024-05-10','Left',25.5,92.0,'TypeA','Present','Normal','/images/ath1.png',201,'ER','No issues','Yes','2024-06-01',301,'2024-01-15',30.2,45,'Completed');
INSERT INTO AudiologyTest VALUES (2,102,'2024-05-12','Right',30.0,88.5,'TypeB','Absent','Cerumen','/images/ath2.png',202,'OPD','Cerumen removed','No','2024-05-30',302,'2024-02-20',28.5,50,'Completed');
INSERT INTO AudiologyTest VALUES (3,103,'2024-05-15','Bilateral',22.0,95.0,'TypeA','Present','Normal','/images/ath3.png',203,'Referral','Follow up needed','Yes','2024-07-01',303,'2024-03-10',32.0,40,'Pending');

-- Occupational Therapy Session Records
CREATE TABLE OccupationalTherapySession
(
    session_id                INTEGER PRIMARY KEY,
    patient_id                INTEGER,
    therapist_id              INTEGER,
    session_date              DATE,
    activity_type             TEXT,
    duration_minutes          INTEGER,
    goal_achievement_score    INTEGER,
    equipment_used            TEXT,
    home_modifications_rec   TEXT,
    cognition_score           INTEGER,
    fine_motor_score          INTEGER,
    gross_motor_score         INTEGER,
    ADL_assistance_level      TEXT,
    caregiver_present         TEXT,
    session_notes             TEXT,
    next_session_date         DATE,
    insurance_coverage        TEXT,
    billing_code              TEXT,
    outcome_category          TEXT,
    session_status            TEXT
);

INSERT INTO OccupationalTherapySession VALUES (1001,101,501,'2024-05-11','Cooking',60,85,'AdaptiveUtensils','GrabBars','80','90','75','Low','Yes','Progressing well','2024-05-18','Full','OT001','Improved','Completed');
INSERT INTO OccupationalTherapySession VALUES (1002,102,502,'2024-05-13','Dressing',45,70,'ButtonHooks','Ramp','70','65','80','Medium','No','Need more practice','2024-05-20','Partial','OT002','Stable','Completed');
INSERT INTO OccupationalTherapySession VALUES (1003,103,503,'2024-05-16','Housekeeping',50,60,'LongHandleMop','NoMod','60','55','70','High','Yes','Difficulty with coordination','2024-05-23','Full','OT003','Decline','Pending');

-- Physical Fitness Assessment Records
CREATE TABLE PhysicalFitnessAssessment
(
    assessment_id            INTEGER PRIMARY KEY,
    patient_id               INTEGER,
    assessor_id              INTEGER,
    assessment_date          DATE,
    BMI                      REAL,
    body_fat_percentage      REAL,
    VO2_max                  REAL,
    resting_heart_rate       INTEGER,
    systolic_bp              INTEGER,
    diastolic_bp             INTEGER,
    grip_strength_kg         REAL,
    sit_and_reach_cm         REAL,
    push_up_count            INTEGER,
    squat_count              INTEGER,
    flexibility_grade        TEXT,
    endurance_grade          TEXT,
    risk_category            TEXT,
    recommendations          TEXT,
    follow_up_date           DATE,
    assessment_location      TEXT,
    notes                    TEXT
);

INSERT INTO PhysicalFitnessAssessment VALUES (2001,101,601,'2024-05-09',27.5,22.0,35.0,72,120,78,35.0,10.0,20,30,'Good','Good','Low','Continue current program','2024-11-09','FitnessCenter','No issues');
INSERT INTO PhysicalFitnessAssessment VALUES (2002,102,602,'2024-05-14',31.0,30.5,28.0,80,130,85,28.0,5.0,12,18,'Fair','Fair','Medium','Introduce low impact cardio','2025-02-14','Gym','Needs monitoring');
INSERT INTO PhysicalFitnessAssessment VALUES (2003,103,603,'2024-05-17',24.0,18.0,40.0,68,110,70,38.0,12.0,25,35,'Excellent','Excellent','Low','Maintain activity level','2024-12-17','WellnessClinic','Excellent condition');

-- Home Healthcare Visit Records
CREATE TABLE HomeHealthcareVisit
(
    visit_id               INTEGER PRIMARY KEY,
    patient_id             INTEGER,
    nurse_id               INTEGER,
    visit_date             DATE,
    visit_type             TEXT,
    vitals_temperature_c   REAL,
    vitals_pulse           INTEGER,
    vitals_respiration     INTEGER,
    vitals_spo2            INTEGER,
    medication_adherence   TEXT,
    wound_status           TEXT,
    pain_score             INTEGER,
    mobility_assessment    TEXT,
    caregiver_present      TEXT,
    equipment_checked      TEXT,
    education_topic        TEXT,
    next_visit_date        DATE,
    visit_outcome          TEXT,
    billing_status         TEXT,
    notes                  TEXT
);

INSERT INTO HomeHealthcareVisit VALUES (3001,101,701,'2024-05-10','Daily',36.7,78,16,98,'Yes','Healed','2','Independent','Yes','Oxygen','MedicationReview','2024-05-17','Stable','Billed','All good');
INSERT INTO HomeHealthcareVisit VALUES (3002,102,702,'2024-05-12','PostOp',37.1,85,18,95,'Partial','Redness','5','Assisted','No','Wheelchair','WoundCare','2024-05-19','Needs followup','Pending','Observe signs');
INSERT INTO HomeHealthcareVisit VALUES (3003,103,703,'2024-05-15','Weekly',36.5,72,14,99,'Yes','Closed','0','Independent','Yes','BloodPressureCuff','DietaryGuidelines','2024-05-22','Improved','Billed','Patient compliant');

-- Telemedicine Session Records
CREATE TABLE TelemedicineSession
(
    session_id                INTEGER PRIMARY KEY,
    patient_id                INTEGER,
    provider_id               INTEGER,
    session_datetime          DATETIME,
    platform                  TEXT,
    connection_quality        TEXT,
    audio_quality             TEXT,
    video_quality             TEXT,
    duration_minutes          INTEGER,
    chief_complaint           TEXT,
    diagnosis_code            TEXT,
    prescription_given        TEXT,
    follow_up_in_days         INTEGER,
    patient_satisfaction_score INTEGER,
    session_recorded          TEXT,
    record_path               TEXT,
    insurance_approved        TEXT,
    billing_code              TEXT,
    notes                     TEXT,
    session_status            TEXT
);

INSERT INTO TelemedicineSession VALUES (4001,101,801,'2024-05-11 09:30:00','Zoom','Good','Clear','HD',30,'Headache','R51','Acetaminophen','7',9,'Yes','/records/ts1.mp4','Yes','TM001','No complications','Completed');
INSERT INTO TelemedicineSession VALUES (4002,102,802,'2024-05-13 14:00:00','Teams','Fair','Clear','SD',25,'Cough','R05','Dextromethorphan','5',8,'Yes','/records/ts2.mp4','No','TM002','Discussed follow up','Completed');
INSERT INTO TelemedicineSession VALUES (4003,103,803,'2024-05-16 11:15:00','Webex','Good','Clear','HD',40,'Back Pain','M54.5','Ibuprofen','14',7,'No','', 'Yes','TM003','Patient reported relief','Completed');

-- Medical Research Data Log Records
CREATE TABLE MedicalResearchDataLog
(
    log_id                 INTEGER PRIMARY KEY,
    study_id               INTEGER,
    participant_id         INTEGER,
    collection_date        DATE,
    data_type              TEXT,
    data_value_text        TEXT,
    data_value_numeric     REAL,
    unit                   TEXT,
    collection_method      TEXT,
    device_id              INTEGER,
    operator_id            INTEGER,
    quality_flag           TEXT,
    compliance_status      TEXT,
    notes                  TEXT,
    audit_timestamp        DATETIME,
    archived_flag          TEXT,
    archive_location       TEXT,
    consent_version        TEXT,
    protocol_version       TEXT,
    data_status            TEXT,
    revision_number        INTEGER
);

INSERT INTO MedicalResearchDataLog VALUES (5001,10001,901,'2024-04-20','BloodPressure','120/80',0.0,'mmHg','Manual',0,1001,'Pass','Compliant','Initial reading','2024-04-20 08:00:00','No','', 'v1','p1','Active',1);
INSERT INTO MedicalResearchDataLog VALUES (5002,10002,902,'2024-04-22','SurveyResponse','Yes',1.0,'','Online',0,1002,'Pass','Compliant','Consent given','2024-04-22 10:15:00','No','', 'v1','p1','Active',1);
INSERT INTO MedicalResearchDataLog VALUES (5003,10003,903,'2024-04-25','GeneticMarker','APOE4',2.0,'Allele','PCR',301,1003,'Fail','NonCompliant','Retest scheduled','2024-04-25 14:30:00','No','', 'v2','p2','Pending',2);

-- Pharmacy Dispensation Log Records
CREATE TABLE PharmacyDispensationLog
(
    dispensation_id        INTEGER PRIMARY KEY,
    prescription_id        INTEGER,
    patient_id             INTEGER,
    pharmacist_id          INTEGER,
    dispensation_date      DATE,
    drug_name              TEXT,
    dosage_form            TEXT,
    strength_mg            REAL,
    quantity_dispensed     INTEGER,
    refills_remaining      INTEGER,
    direction_text         TEXT,
    substitution_allowed   TEXT,
    insurance_claim_id     INTEGER,
    copay_amount           REAL,
    total_cost             REAL,
    dispensing_location    TEXT,
    verification_timestamp DATETIME,
    pharmacy_batch_number  TEXT,
    lot_number             TEXT,
    expiry_date            DATE,
    notes                  TEXT
);

INSERT INTO PharmacyDispensationLog VALUES (6001,20001,101,901,'2024-05-08','Atorvastatin','Tablet',20.0,30,2,'Take one daily','Yes',3001,5.0,30.0,'MainPharmacy','2024-05-08 09:15:00','B001','L12345','2025-12-31','');
INSERT INTO PharmacyDispensationLog VALUES (6002,20002,102,902,'2024-05-10','Lisinopril','Tablet',10.0,60,1,'Take one daily','No',3002,3.0,60.0,'SatellitePharmacy','2024-05-10 10:45:00','B002','L67890','2026-06-30','Substitution not allowed');
INSERT INTO PharmacyDispensationLog VALUES (6003,20003,103,903,'2024-05-12','Metformin','Tablet',500.0,90,0,'Take one twice daily','Yes',3003,0.0,90.0,'MainPharmacy','2024-05-12 14:20:00','B003','L54321','2025-09-15','');

-- Radiology Image Metadata Records
CREATE TABLE RadiologyImageMetadata
(
    image_id                INTEGER PRIMARY KEY,
    study_id                INTEGER,
    patient_id              INTEGER,
    modality                TEXT,
    body_part               TEXT,
    acquisition_date        DATE,
    acquisition_time        TIME,
    hospital_site           TEXT,
    technologist_id         INTEGER,
    slice_thickness_mm      REAL,
    pixel_spacing_mm        REAL,
    image_dimensions        TEXT,
    radiation_dose_mgy      REAL,
    contrast_used           TEXT,
    contrast_type           TEXT,
    protocol_name           TEXT,
    image_format            TEXT,
    file_path               TEXT,
    radiologist_id          INTEGER,
    report_status           TEXT,
    notes                   TEXT
);

INSERT INTO RadiologyImageMetadata VALUES (7001,30001,101,'CT','Head','2024-05-05','09:30:00','CampusA',1101,1.0,0.5,'512x512',5.0,'Yes','Iodine','HeadCT_Standard','DICOM','/images/ct_head_101.dcm',2101,'Preliminary','');
INSERT INTO RadiologyImageMetadata VALUES (7002,30002,102,'MRI','Knee','2024-05-07','11:15:00','CampusB',1102,3.0,0.8,'256x256',0.0,'No','None','KneeMRI_Protocol','DICOM','/images/mri_knee_102.dcm',2102,'Final','');
INSERT INTO RadiologyImageMetadata VALUES (7003,30003,103,'XRay','Chest','2024-05-09','14:45:00','CampusA',1103,0.0,0.2,'1024x1024',0.1,'No','None','ChestXRay_Standard','JPEG','/images/xray_chest_103.jpg',2103,'Final','');

-- Clinical Decision Support Rule Records
CREATE TABLE ClinicalDecisionSupportRule
(
    rule_id                  INTEGER PRIMARY KEY,
    rule_name                TEXT,
    applicable_diagnosis_code TEXT,
    triggering_lab_test      TEXT,
    trigger_value_numeric    REAL,
    trigger_operator         TEXT,
    action_type              TEXT,
    action_message           TEXT,
    severity_level           TEXT,
    recommendation_code      TEXT,
    version                  TEXT,
    effective_start_date     DATE,
    effective_end_date       DATE,
    author_id                INTEGER,
    review_date              DATE,
    status                   TEXT,
    audit_user               TEXT,
    audit_timestamp          DATETIME,
    notes                    TEXT,
    clinical_area            TEXT,
    target_population        TEXT
);

INSERT INTO ClinicalDecisionSupportRule VALUES (8001,'HyperkalemiaAlert','E87.5','SerumPotassium',6.0,'>','Alert','Check medication','High','REC001','1.0','2024-01-01','2025-12-31',4001,'2024-01-15','Active','system','2024-01-15 08:00:00','','Electrolyte','Adults');
INSERT INTO ClinicalDecisionSupportRule VALUES (8002,'LowHemoglobinWarning','D50','Hemoglobin',10.0,'<','Reminder','Consider iron therapy','Medium','REC002','1.1','2024-02-01','2026-01-31',4002,'2024-02-10','Active','system','2024-02-10 09:30:00','','Hematology','PregnantWomen');
INSERT INTO ClinicalDecisionSupportRule VALUES (8003,'StatinTherapyCheck','I10','LDLCholesterol',130.0,'>','Prompt','Initiate statin','Low','REC003','2.0','2024-03-01','2027-12-31',4003,'2024-03-05','Active','system','2024-03-05 11:45:00','','Cardiology','Adults');

-- Hospital Safety Inspection Records
CREATE TABLE HospitalSafetyInspection
(
    inspection_id               INTEGER PRIMARY KEY,
    facility_id                 INTEGER,
    inspection_date             DATE,
    inspector_id                INTEGER,
    area_inspected              TEXT,
    fire_safety_score           INTEGER,
    electrical_safety_score     INTEGER,
    infection_control_score     INTEGER,
    equipment_maintenance_score INTEGER,
    emergency_exit_status       TEXT,
    signage_compliance          TEXT,
    ventilation_status          TEXT,
    water_quality_status        TEXT,
    waste_management_score      INTEGER,
    training_compliance         TEXT,
    corrective_actions_required TEXT,
    follow_up_date              DATE,
    overall_status              TEXT,
    notes                       TEXT,
    report_path                 TEXT,
    audit_user                  TEXT,
    audit_timestamp             DATETIME
);

INSERT INTO HospitalSafetyInspection VALUES (9001,1,'2024-04-15',501,'ICU',95,90,88,92,'Clear','Complete','Good','Excellent',85,'Complete','FireExtinguisherCheck','2024-05-01','Pass','All good','/reports/ins_9001.pdf','system','2024-04-15 08:30:00');
INSERT INTO HospitalSafetyInspection VALUES (9002,2,'2024-04-20',502,'SurgeryWard',88,85,80,78,'Obstructed','Partial','Adequate','Good',70,'Partial','ReplaceExitLights','2024-05-10','Fail','Needs attention','/reports/ins_9002.pdf','system','2024-04-20 09:45:00');
INSERT INTO HospitalSafetyInspection VALUES (9003,3,'2024-04-25',503,'Pharmacy',92,94,90,95,'Clear','Complete','Excellent','Excellent',90,'Complete','No actions','2024-05-15','Pass','No issues','/reports/ins_9003.pdf','system','2024-04-25 10:15:00');