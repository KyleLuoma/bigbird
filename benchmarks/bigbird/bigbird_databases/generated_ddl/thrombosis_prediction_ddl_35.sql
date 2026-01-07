-- Patient Genetic Profile linked to Patient
CREATE TABLE PatientGeneticProfile
(
    ID                     INTEGER NOT NULL,
    SampleDate             DATE NULL,
    GeneA_variant          TEXT NULL,
    GeneA_zscore           REAL NULL,
    GeneB_variant          TEXT NULL,
    GeneB_zscore           REAL NULL,
    CNV_count              INTEGER NULL,
    Mitochondrial_copy_num REAL NULL,
    Sequencing_platform    TEXT NULL,
    Coverage_depth         INTEGER NULL,
    Bioinformatics_pipeline TEXT NULL,
    Interpretation_summary TEXT NULL,
    Reported_by            TEXT NULL,
    Review_date            DATE NULL,
    Clinical_significance  TEXT NULL,
    Inheritance_pattern    TEXT NULL,
    Phenotype_association  TEXT NULL,
    Lab_technician_id      INTEGER NULL,
    Report_version         INTEGER NULL,
    Notes                  TEXT NULL,
    PRIMARY KEY (ID, SampleDate),
    FOREIGN KEY (ID) REFERENCES Patient(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO PatientGeneticProfile VALUES (1,'2023-01-15','BRCA1_del','1.2','BRCA2_dup','-0.8',2,150.5,'Illumina','120','GATK_v4','Pathogenic variant detected','DrSmith','2023-01-20','High','AutosomalDominant','BreastCancer',101,1,'Initial report');
INSERT INTO PatientGeneticProfile VALUES (2,'2023-03-22','TP53_missense','2.5','KRAS_wt','0.0',0,200.0,'IonTorrent','95','FreeBayes','No actionable mutations','DrLee','2023-03-25','Low','Somatic','None',102,1,'Routine screening');
INSERT INTO PatientGeneticProfile VALUES (3,'2023-05-10','CFTR_del','-1.1','CFTR_ins','0.3',1,180.2,'PacBio','130','DeepVariant','Carrier status confirmed','DrPatel','2023-05-15','Medium','AutosomalRecessive','CysticFibrosis',103,1,'Carrier testing');

-- Examination Equipment Log linked to Examination
CREATE TABLE ExaminationEquipmentLog
(
    Examination_ID         INTEGER NOT NULL,
    LogDate                DATE NULL,
    DeviceSerialNumber     TEXT NULL,
    DeviceModel            TEXT NULL,
    Calibration_status     TEXT NULL,
    Firmware_version       TEXT NULL,
    Operator_id            INTEGER NULL,
    Usage_duration_minutes INTEGER NULL,
    Battery_level_percent  INTEGER NULL,
    Error_code             TEXT NULL,
    Maintenance_due_date   DATE NULL,
    Cleaning_status        TEXT NULL,
    Remark                 TEXT NULL,
    PRIMARY KEY (Examination_ID, LogDate),
    FOREIGN KEY (Examination_ID) REFERENCES Examination(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO ExaminationEquipmentLog VALUES (1,'2023-02-01','SN12345','ModelX','Calibrated','v1.2',201,30,95,'E00','2023-12-31','Clean','No issues');
INSERT INTO ExaminationEquipmentLog VALUES (2,'2023-04-12','SN67890','ModelY','Pending','v2.0',202,45,80,'E12','2024-06-30','NeedsCleaning','Battery low');
INSERT INTO ExaminationEquipmentLog VALUES (3,'2023-06-20','SN54321','ModelZ','Calibrated','v1.5',203,60,100,'E00','2025-01-15','Clean','All good');

-- Laboratory Instrument Maintenance linked to Laboratory
CREATE TABLE LaboratoryInstrumentMaintenance
(
    Lab_ID                INTEGER NOT NULL,
    Instrument_id        TEXT NOT NULL,
    Maintenance_date     DATE NULL,
    Technician_name      TEXT NULL,
    Service_type         TEXT NULL,
    Parts_replaced       TEXT NULL,
    Downtime_minutes     INTEGER NULL,
    Next_service_due     DATE NULL,
    Calibration_passed   TEXT NULL,
    Software_version     TEXT NULL,
    Safety_check_passed  TEXT NULL,
    Observation_notes    TEXT NULL,
    Cost_usd             REAL NULL,
    Warranty_valid_until DATE NULL,
    PRIMARY KEY (Lab_ID, Instrument_id, Maintenance_date),
    FOREIGN KEY (Lab_ID) REFERENCES Laboratory(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO LaboratoryInstrumentMaintenance VALUES (1,'INST001','2023-01-10','Alice','Preventive','None',15,'2023-07-10','Yes','v3.1','Yes','Routine check',150.00,'2024-12-31');
INSERT INTO LaboratoryInstrumentMaintenance VALUES (1,'INST002','2023-03-05','Bob','Corrective','Filter',30,'2023-09-05','No','v2.8','Yes','Replaced filter cartridge',200.00,'2025-03-31');
INSERT INTO LaboratoryInstrumentMaintenance VALUES (2,'INST003','2023-05-18','Charlie','Preventive','Seal',20,'2023-11-18','Yes','v4.0','Yes','Seal checked',120.00,'2024-08-15');

-- Patient Lifestyle Survey linked to Patient
CREATE TABLE PatientLifestyleSurvey
(
    Patient_ID            INTEGER NOT NULL,
    SurveyDate            DATE NULL,
    Smoking_status        TEXT NULL,
    Alcohol_consumption   TEXT NULL,
    Exercise_frequency    TEXT NULL,
    Diet_type             TEXT NULL,
    Sleep_hours_per_night INTEGER NULL,
    Stress_level          TEXT NULL,
    Occupation            TEXT NULL,
    Marital_status        TEXT NULL,
    Number_of_children    INTEGER NULL,
    Physical_activity_level TEXT NULL,
    Screen_time_hours     INTEGER NULL,
    Water_intake_liters   REAL NULL,
    Vitamin_supplement    TEXT NULL,
    Medication_adherence  TEXT NULL,
    Health_goal           TEXT NULL,
    Survey_conducted_by   TEXT NULL,
    Notes                 TEXT NULL,
    PRIMARY KEY (Patient_ID, SurveyDate),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO PatientLifestyleSurvey VALUES (1,'2023-02-20','Never','Occasional','3times/week','Mediterranean',7,'Low','Engineer','Married',2,'Moderate',2,2.5,'Multivitamin','Good','Weight loss','NurseKelly','Patient motivated');
INSERT INTO PatientLifestyleSurvey VALUES (2,'2023-04-11','Former','Social','1time/week','Standard',6,'Medium','Teacher','Single',0,'Low',4,1.8,'None','Fair','Maintain health','NurseLiu','Wants to quit smoking');
INSERT INTO PatientLifestyleSurvey VALUES (3,'2023-06-05','Current','None','0','Vegan',5,'High','Unemployed','Divorced',1,'Low',6,1.2,'VitaminD','Poor','Improve sleep','NursePatel','Stress management needed');

-- Examination Radiology Correlation linked to Examination
CREATE TABLE ExaminationRadiologyCorrelation
(
    Examination_ID        INTEGER NOT NULL,
    Radiology_Study_ID    INTEGER NOT NULL,
    Correlation_score     REAL NULL,
    Imaging_modality      TEXT NULL,
    Findings_summary      TEXT NULL,
    Radiologist_name      TEXT NULL,
    Report_date           DATE NULL,
    Image_quality_score   INTEGER NULL,
    Contrast_used         TEXT NULL,
    Radiation_dose_mgy    REAL NULL,
    Followup_recommended  TEXT NULL,
    Comment               TEXT NULL,
    PRIMARY KEY (Examination_ID, Radiology_Study_ID),
    FOREIGN KEY (Examination_ID) REFERENCES Examination(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO ExaminationRadiologyCorrelation VALUES (1,1001,0.85,'CT','Pulmonary embolism suspected','DrAdams','2023-02-02',9,'Yes',12.5,'Yes','High correlation');
INSERT INTO ExaminationRadiologyCorrelation VALUES (2,1002,0.40,'MRI','No acute findings','DrBaker','2023-04-15',7,'No',0.0,'No','Low correlation');
INSERT INTO ExaminationRadiologyCorrelation VALUES (3,1003,0.70,'Ultrasound','Abdominal mass noted','DrCheng','2023-06-21',8,'No',0.0,'Yes','Moderate correlation');

-- Patient Care Team linked to Patient
CREATE TABLE PatientCareTeam
(
    Patient_ID            INTEGER NOT NULL,
    TeamMember_ID        INTEGER NOT NULL,
    Role                 TEXT NULL,
    Start_date           DATE NULL,
    End_date             DATE NULL,
    Primary_contact      TEXT NULL,
    Contact_method       TEXT NULL,
    Shift               TEXT NULL,
    On_call              TEXT NULL,
    Specialty            TEXT NULL,
    Certification        TEXT NULL,
    License_number       TEXT NULL,
    Years_of_experience  INTEGER NULL,
    Email                TEXT NULL,
    Phone_number         TEXT NULL,
    Department           TEXT NULL,
    Location             TEXT NULL,
    Assigned_by          TEXT NULL,
    Notes                TEXT NULL,
    PRIMARY KEY (Patient_ID, TeamMember_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO PatientCareTeam VALUES (1,301,'Physician','2023-01-01',NULL,'Yes','Phone','Day','Yes','Cardiology','BoardCertified','MED12345',15,'dr.smith@hospital.org','5551234','Cardiology','BuildingA','DrSmith','Primary physician');
INSERT INTO PatientCareTeam VALUES (1,302,'Nurse','2023-01-01',NULL,'Yes','Pager','Night','No','General','RN','NUR67890',8,'nurse.jones@hospital.org','5555678','Nursing','BuildingB','DrSmith','Assigned nurse');
INSERT INTO PatientCareTeam VALUES (2,303,'Physiotherapist','2023-02-15','2023-08-15','No','Email','Day','No','Rehab','PTCert','PT34567',5,'physio.khan@hospital.org','5559012','PhysicalTherapy','BuildingC','DrLee','Rehab plan');

-- Laboratory Batch Processing linked to Laboratory
CREATE TABLE LaboratoryBatchProcessing
(
    Lab_ID                INTEGER NOT NULL,
    Batch_ID             TEXT NOT NULL,
    Process_start_date   DATE NULL,
    Process_end_date     DATE NULL,
    Sample_count         INTEGER NULL,
    Technician_lead      TEXT NULL,
    Equipment_used       TEXT NULL,
    Reagent_lot_number   TEXT NULL,
    QC_passed            TEXT NULL,
    Issues_found         TEXT NULL,
    Total_runtime_minutes INTEGER NULL,
    Temperature_celsius  REAL NULL,
    Humidity_percent     REAL NULL,
    Operator_notes       TEXT NULL,
    Cost_usd             REAL NULL,
    PRIMARY KEY (Lab_ID, Batch_ID),
    FOREIGN KEY (Lab_ID) REFERENCES Laboratory(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO LaboratoryBatchProcessing VALUES (1,'BATCH001','2023-01-05','2023-01-06',120,'Alice','AutoAnalyzer','RL123','Yes','None',480,22.5,45.0,'Smooth run',300.00);
INSERT INTO LaboratoryBatchProcessing VALUES (1,'BATCH002','2023-02-10','2023-02-10',85,'Bob','Centrifuge','RL124','No','Clotting observed',180,20.0,50.0,'Retest needed',200.00);
INSERT INTO LaboratoryBatchProcessing VALUES (2,'BATCH003','2023-03-15','2023-03-16',200,'Charlie','Spectrometer','RL125','Yes','Low signal',720,21.0,48.0,'All good',400.00);

-- Examination Follow Up linked to Examination
CREATE TABLE ExaminationFollowUp
(
    Examination_ID        INTEGER NOT NULL,
    FollowUp_ID           INTEGER NOT NULL,
    Scheduled_date        DATE NULL,
    FollowUp_type         TEXT NULL,
    Provider_name         TEXT NULL,
    Contact_method        TEXT NULL,
    Reason                TEXT NULL,
    Status                TEXT NULL,
    Completed_date        DATE NULL,
    Notes                 TEXT NULL,
    PRIMARY KEY (Examination_ID, FollowUp_ID),
    FOREIGN KEY (Examination_ID) REFERENCES Examination(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO ExaminationFollowUp VALUES (1,1,'2023-03-01','LabTest','DrSmith','Phone','Recheck antibodies','Scheduled',NULL,'Patient to fast');
INSERT INTO ExaminationFollowUp VALUES (2,1,'2023-04-20','Imaging','DrLee','Email','Assess thrombosis','Completed','2023-04-22','No changes observed');
INSERT INTO ExaminationFollowUp VALUES (3,1,'2023-06-30','Consultation','DrPatel','InPerson','Review diagnosis','Cancelled',NULL,'Patient unavailable');

-- Patient Insurance Benefit linked to Patient
CREATE TABLE PatientInsuranceBenefit
(
    Patient_ID            INTEGER NOT NULL,
    Policy_Number         TEXT NOT NULL,
    Provider_name         TEXT NULL,
    Coverage_type         TEXT NULL,
    Effective_date        DATE NULL,
    Expiration_date       DATE NULL,
    Copay_amount_usd      REAL NULL,
    Deductible_usd        REAL NULL,
    Out_of_pocket_max_usd REAL NULL,
    Preauthorization_required TEXT NULL,
    Network_status        TEXT NULL,
    Benefit_summary       TEXT NULL,
    Last_claim_date       DATE NULL,
    Claim_status          TEXT NULL,
    Remarks               TEXT NULL,
    PRIMARY KEY (Patient_ID, Policy_Number),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO PatientInsuranceBenefit VALUES (1,'POL12345','HealthPlus','Full','2023-01-01','2023-12-31',20.0,500.0,3000.0,'Yes','InNetwork','Covers all labs and imaging','2023-02-15','Approved','Verified');
INSERT INTO PatientInsuranceBenefit VALUES (2,'POL67890','MediCare','Partial','2023-02-01','2024-01-31',15.0,250.0,2000.0,'No','OutNetwork','Limited coverage for specialist visits','2023-03-10','Pending','Awaiting documents');
INSERT INTO PatientInsuranceBenefit VALUES (3,'POL54321','SecureHealth','Full','2023-03-15','2024-03-14',0.0,0.0,0.0,'No','InNetwork','Full coverage including prescriptions','2023-04-01','Approved','No restrictions');

-- Laboratory External Reference linked to Laboratory
CREATE TABLE LaboratoryExternalReference
(
    Lab_ID                INTEGER NOT NULL,
    Reference_ID          TEXT NOT NULL,
    Source_lab_name       TEXT NULL,
    Test_type             TEXT NULL,
    Reference_date        DATE NULL,
    Result_value          REAL NULL,
    Unit                  TEXT NULL,
    Methodology           TEXT NULL,
    Accreditation_body    TEXT NULL,
    Validity_period_days  INTEGER NULL,
    Comments              TEXT NULL,
    PRIMARY KEY (Lab_ID, Reference_ID),
    FOREIGN KEY (Lab_ID) REFERENCES Laboratory(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO LaboratoryExternalReference VALUES (1,'REF001','CentralLab','Glucose','2023-01-12',5.6,'mmol/L','Enzymatic','ISO15189',365,'Within normal range');
INSERT INTO LaboratoryExternalReference VALUES (1,'REF002','RegionalLab','CRP','2023-02-05',12.3,'mg/L','Immunoturbidimetric','CAP',180,'Slightly elevated');
INSERT INTO LaboratoryExternalReference VALUES (2,'REF003','NationalLab','LDH','2023-03-20',250,'U/L','Spectrophotometric','ISO15189',365,'Borderline high');

-- Examination Equipment Details (expanded view) linked to Examination
CREATE TABLE ExaminationEquipmentDetails
(
    Examination_ID        INTEGER NOT NULL,
    Device_ID            TEXT NOT NULL,
    Manufacturer         TEXT NULL,
    Model_number         TEXT NULL,
    Serial_number        TEXT NULL,
    Installation_date    DATE NULL,
    Warranty_expiration  DATE NULL,
    Last_calibration_date DATE NULL,
    Calibration_interval_days INTEGER NULL,
    Software_version     TEXT NULL,
    Power_source         TEXT NULL,
    Voltage_required     REAL NULL,
    Current_required     REAL NULL,
    Sensors_present      TEXT NULL,
    Connectivity_type    TEXT NULL,
    Network_address      TEXT NULL,
    Maintenance_contract TEXT NULL,
    Contract_expiry_date DATE NULL,
    Last_service_date    DATE NULL,
    Service_provider     TEXT NULL,
    PRIMARY KEY (Examination_ID, Device_ID),
    FOREIGN KEY (Examination_ID) REFERENCES Examination(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO ExaminationEquipmentDetails VALUES (1,'DEV001','MedTech','MX100','SN001','2022-05-01','2025-05-01','2023-01-01',180,'v3.2','AC','220','5','Temperature,Pressure','WiFi','192.168.1.10','Yes','2024-12-31','2023-02-01','TechServ');
INSERT INTO ExaminationEquipmentDetails VALUES (2,'DEV002','HealthEquip','HX200','SN002','2021-09-15','2024-09-15','2022-11-15',365,'v4.0','Battery','3.7','2','ECG,SpO2','Bluetooth','00:1A:7D:DA:71:13','No','NULL','2023-03-10','InHouse');
INSERT INTO ExaminationEquipmentDetails VALUES (3,'DEV003','BioMed','BX300','SN003','2023-01-20','2026-01-20','2023-01-20',90,'v1.8','AC','110','1','Pressure','Ethernet','10.0.0.5','Yes','2025-06-30','2023-04-05','BioSupport');

-- Patient Care Plan linked to Patient
CREATE TABLE PatientCarePlan
(
    Patient_ID            INTEGER NOT NULL,
    CarePlan_ID           INTEGER NOT NULL,
    Creation_date         DATE NULL,
    Review_date           DATE NULL,
    Primary_goal          TEXT NULL,
    Secondary_goal        TEXT NULL,
    Medication_plan       TEXT NULL,
    Exercise_plan         TEXT NULL,
    Nutrition_plan        TEXT NULL,
    Follow_up_interval_days INTEGER NULL,
    Assigned_by           TEXT NULL,
    Status                TEXT NULL,
    Notes                 TEXT NULL,
    Risk_level            TEXT NULL,
    Compliance_score      REAL NULL,
    Next_review_date      DATE NULL,
    PRIMARY KEY (Patient_ID, CarePlan_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO PatientCarePlan VALUES (1,1001,'2023-01-10','2023-04-10','Reduce thrombosis risk','Improve lipid profile','Aspirin 81mg daily','Walking 30min daily','Low-fat diet','90','DrSmith','Active','Patient adherent','Medium',0.85,'2023-07-10');
INSERT INTO PatientCarePlan VALUES (2,1002,'2023-02-15','2023-05-15','Control blood pressure','Weight loss','Lisinopril 10mg daily','Cycling 3 times/week','DASH diet','60','DrLee','Active','Needs motivation','High',0.60,'2023-08-15');
INSERT INTO PatientCarePlan VALUES (3,1003,'2023-03-20','2023-06-20','Manage diabetes','Increase activity','Metformin 500mg BID','Yoga 2x/week','Low-carb diet','30','DrPatel','Pending','Awaiting lab results','Low',0.70,'2023-09-20');