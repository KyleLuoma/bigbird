-- Radiology report details per examination
CREATE TABLE RadiologyReportDetails (
    ReportID INTEGER NOT NULL PRIMARY KEY,
    ExaminationID INTEGER NOT NULL,
    ReportDate DATE NOT NULL,
    Modality TEXT,
    BodyPart TEXT,
    Findings TEXT,
    Impression TEXT,
    RadiologistID INTEGER,
    RadiationDose REAL,
    ContrastUsed TEXT,
    ImageCount INTEGER,
    ReportVersion INTEGER,
    Comments TEXT,
    FollowUpNeeded INTEGER,
    FollowUpDate DATE,
    TechnicalQuality INTEGER,
    PatientPosition TEXT,
    ScanDuration REAL,
    Manufacturer TEXT,
    Model TEXT,
    SerialNumber TEXT,
    FOREIGN KEY (ExaminationID) REFERENCES Examination(ID)
);

INSERT INTO RadiologyReportDetails (ReportID, ExaminationID, ReportDate, Modality, BodyPart, Findings, Impression, RadiologistID, RadiationDose, ContrastUsed, ImageCount, ReportVersion, Comments, FollowUpNeeded, FollowUpDate, TechnicalQuality, PatientPosition, ScanDuration, Manufacturer, Model, SerialNumber)
VALUES (1, 101, '2023-01-15', 'CT', 'Chest', 'No acute findings', 'Normal', 12, 5.2, 'Iodine', 120, 1, 'Initial report', 0, NULL, 4, 'Supine', 15.3, 'GE', 'Revolution', 'SN12345');

INSERT INTO RadiologyReportDetails (ReportID, ExaminationID, ReportDate, Modality, BodyPart, Findings, Impression, RadiologistID, RadiationDose, ContrastUsed, ImageCount, ReportVersion, Comments, FollowUpNeeded, FollowUpDate, TechnicalQuality, PatientPosition, ScanDuration, Manufacturer, Model, SerialNumber)
VALUES (2, 102, '2023-02-20', 'MRI', 'Brain', 'Small lesion noted', 'Recommend further evaluation', 15, 0.0, 'Gadolinium', 200, 1, 'Reviewed by neuroradiology', 1, '2023-03-10', 5, 'Prone', 30.0, 'Siemens', 'Trio', 'SN54321');

INSERT INTO RadiologyReportDetails (ReportID, ExaminationID, ReportDate, Modality, BodyPart, Findings, Impression, RadiologistID, RadiationDose, ContrastUsed, ImageCount, ReportVersion, Comments, FollowUpNeeded, FollowUpDate, TechnicalQuality, PatientPosition, ScanDuration, Manufacturer, Model, SerialNumber)
VALUES (3, 103, '2023-03-05', 'XRay', 'Abdomen', 'Mild ileus', 'Possible obstruction', 9, 0.8, 'None', 30, 1, 'Urgent report', 1, '2023-03-12', 3, 'Standing', 0.5, 'Philips', 'Diagnost', 'SN67890');

-- Pharmacy dispensation log
CREATE TABLE PharmacyDispensationLog (
    DispenseID INTEGER NOT NULL PRIMARY KEY,
    PatientID INTEGER NOT NULL,
    MedicationID INTEGER NOT NULL,
    DispenseDate DATE NOT NULL,
    Quantity INTEGER,
    Unit TEXT,
    DailyDose TEXT,
    PrescribingPhysicianID INTEGER,
    PharmacyLocation TEXT,
    BatchNumber TEXT,
    ExpirationDate DATE,
    Route TEXT,
    Form TEXT,
    Notes TEXT,
    RefillsRemaining INTEGER,
    DaysSupply INTEGER,
    InsuranceCovered INTEGER,
    CopayAmount REAL,
    DispensedByStaffID INTEGER,
    VerificationStatus TEXT,
    DispenseMethod TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO PharmacyDispensationLog (DispenseID, PatientID, MedicationID, DispenseDate, Quantity, Unit, DailyDose, PrescribingPhysicianID, PharmacyLocation, BatchNumber, ExpirationDate, Route, Form, Notes, RefillsRemaining, DaysSupply, InsuranceCovered, CopayAmount, DispensedByStaffID, VerificationStatus, DispenseMethod)
VALUES (1, 101, 2001, '2023-01-20', 30, 'tablet', '1 tablet daily', 12, 'Main Pharmacy', 'BN123', '2024-01-01', 'Oral', 'Tablet', 'Take with food', 2, 30, 1, 5.00, 45, 'Verified', 'InPerson');

INSERT INTO PharmacyDispensationLog (DispenseID, PatientID, MedicationID, DispenseDate, Quantity, Unit, DailyDose, PrescribingPhysicianID, PharmacyLocation, BatchNumber, ExpirationDate, Route, Form, Notes, RefillsRemaining, DaysSupply, InsuranceCovered, CopayAmount, DispensedByStaffID, VerificationStatus, DispenseMethod)
VALUES (2, 102, 2002, '2023-02-10', 60, 'ml', '2 ml twice daily', 15, 'East Wing Pharmacy', 'BN124', '2025-06-15', 'IV', 'Solution', 'Administer slowly', 1, 30, 0, 0.00, 46, 'Pending', 'Automated');

INSERT INTO PharmacyDispensationLog (DispenseID, PatientID, MedicationID, DispenseDate, Quantity, Unit, DailyDose, PrescribingPhysicianID, PharmacyLocation, BatchNumber, ExpirationDate, Route, Form, Notes, RefillsRemaining, DaysSupply, InsuranceCovered, CopayAmount, DispensedByStaffID, VerificationStatus, DispenseMethod)
VALUES (3, 103, 2003, '2023-03-01', 90, 'capsule', '1 capsule daily', 9, 'West Pharmacy', 'BN125', '2023-12-31', 'Oral', 'Capsule', 'Store at room temperature', 0, 90, 1, 10.00, 47, 'Verified', 'InPerson');

-- Genomic variant annotation
CREATE TABLE GenomicVariantAnnotation (
    AnnotationID INTEGER NOT NULL PRIMARY KEY,
    PatientID INTEGER NOT NULL,
    VariantID TEXT NOT NULL,
    Gene TEXT,
    Transcript TEXT,
    DNAChange TEXT,
    ProteinChange TEXT,
    VariantType TEXT,
    ClinicalSignificance TEXT,
    ReviewStatus TEXT,
    ACMGClassification TEXT,
    FrequencyPopulation REAL,
    InheritanceMode TEXT,
    DiseaseAssociation TEXT,
    SourceDatabase TEXT,
    LastUpdated DATE,
    EvidenceLevel TEXT,
    InterpretationNotes TEXT,
    AlleleFrequency REAL,
    Zygosity TEXT,
    InterpretationDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO GenomicVariantAnnotation (AnnotationID, PatientID, VariantID, Gene, Transcript, DNAChange, ProteinChange, VariantType, ClinicalSignificance, ReviewStatus, ACMGClassification, FrequencyPopulation, InheritanceMode, DiseaseAssociation, SourceDatabase, LastUpdated, EvidenceLevel, InterpretationNotes, AlleleFrequency, Zygosity, InterpretationDate)
VALUES (1, 101, 'rs123456', 'BRCA1', 'NM_007294.3', 'c.5266dupC', 'p.Gln1756Profs', 'Insertion', 'Pathogenic', 'Reviewed', 'PVS1', 0.0001, 'AutosomalDominant', 'BreastCancer', 'ClinVar', '2023-01-25', 'Strong', 'Confirmed by Sanger', 0.0001, 'Heterozygous', '2023-01-26');

INSERT INTO GenomicVariantAnnotation (AnnotationID, PatientID, VariantID, Gene, Transcript, DNAChange, ProteinChange, VariantType, ClinicalSignificance, ReviewStatus, ACMGClassification, FrequencyPopulation, InheritanceMode, DiseaseAssociation, SourceDatabase, LastUpdated, EvidenceLevel, InterpretationNotes, AlleleFrequency, Zygosity, InterpretationDate)
VALUES (2, 102, 'rs7891011', 'CFTR', 'NM_000492.3', 'c.1521_1523delCTT', 'p.Phe508del', 'Deletion', 'LikelyPathogenic', 'Pending', 'LP', 0.005, 'AutosomalRecessive', 'CysticFibrosis', 'dbSNP', '2023-02-15', 'Moderate', 'Needs further clinical correlation', 0.005, 'Homozygous', '2023-02-16');

INSERT INTO GenomicVariantAnnotation (AnnotationID, PatientID, VariantID, Gene, Transcript, DNAChange, ProteinChange, VariantType, ClinicalSignificance, ReviewStatus, ACMGClassification, FrequencyPopulation, InheritanceMode, DiseaseAssociation, SourceDatabase, LastUpdated, EvidenceLevel, InterpretationNotes, AlleleFrequency, Zygosity, InterpretationDate)
VALUES (3, 103, 'rs11223344', 'APOE', 'NM_000041.3', 'c.388T>C', 'p.Cys130Arg', 'SNV', 'Benign', 'Reviewed', 'B', 0.15, 'None', 'None', 'Ensembl', '2023-03-05', 'Low', 'Common variant', 0.15, 'Heterozygous', '2023-03-06');

-- Environmental exposure log
CREATE TABLE EnvironmentalExposureLog (
    ExposureLogID INTEGER NOT NULL PRIMARY KEY,
    PatientID INTEGER NOT NULL,
    ExposureDate DATE NOT NULL,
    Location TEXT,
    Substance TEXT,
    Concentration REAL,
    Unit TEXT,
    ExposureDuration REAL,
    RouteOfExposure TEXT,
    SymptomsReported TEXT,
    SeverityScore INTEGER,
    MitigationTaken TEXT,
    FollowUpDate DATE,
    RiskCategory TEXT,
    MonitoringDeviceID INTEGER,
    AmbientTemperature REAL,
    AmbientHumidity REAL,
    WindSpeed REAL,
    AirQualityIndex INTEGER,
    Notes TEXT,
    RecordedByStaffID INTEGER,
    ExposureType TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO EnvironmentalExposureLog (ExposureLogID, PatientID, ExposureDate, Location, Substance, Concentration, Unit, ExposureDuration, RouteOfExposure, SymptomsReported, SeverityScore, MitigationTaken, FollowUpDate, RiskCategory, MonitoringDeviceID, AmbientTemperature, AmbientHumidity, WindSpeed, AirQualityIndex, Notes, RecordedByStaffID, ExposureType)
VALUES (1, 101, '2023-01-10', 'Home', 'DustMite', 200.0, 'particles/m3', 4.0, 'Inhalation', 'Sneezing', 2, 'Closed windows', '2023-01-20', 'Low', 301, 22.5, 45.0, 5.0, 55, 'Seasonal allergic', 50, 'Allergen');

INSERT INTO EnvironmentalExposureLog (ExposureLogID, PatientID, ExposureDate, Location, Substance, Concentration, Unit, ExposureDuration, RouteOfExposure, SymptomsReported, SeverityScore, MitigationTaken, FollowUpDate, RiskCategory, MonitoringDeviceID, AmbientTemperature, AmbientHumidity, WindSpeed, AirQualityIndex, Notes, RecordedByStaffID, ExposureType)
VALUES (2, 102, '2023-02-05', 'Workplace', 'Formaldehyde', 0.8, 'ppm', 2.5, 'Inhalation', 'Headache', 3, 'Ventilation increased', '2023-02-15', 'Medium', 302, 20.0, 40.0, 3.2, 75, 'Industrial exposure', 51, 'Chemical');

INSERT INTO EnvironmentalExposureLog (ExposureLogID, PatientID, ExposureDate, Location, Substance, Concentration, Unit, ExposureDuration, RouteOfExposure, SymptomsReported, SeverityScore, MitigationTaken, FollowUpDate, RiskCategory, MonitoringDeviceID, AmbientTemperature, AmbientHumidity, WindSpeed, AirQualityIndex, Notes, RecordedByStaffID, ExposureType)
VALUES (3, 103, '2023-03-12', 'Park', ' pollen', 150.0, 'grains/m3', 1.0, 'Inhalation', 'Itchy eyes', 1, 'Antihistamine taken', '2023-03-20', 'Low', 303, 18.0, 60.0, 2.5, 30, 'Spring season', 52, 'Allergen');

-- Patient wearable metrics
CREATE TABLE PatientWearableMetrics (
    MetricID INTEGER NOT NULL PRIMARY KEY,
    PatientID INTEGER NOT NULL,
    DeviceID TEXT NOT NULL,
    RecordTimestamp DATETIME NOT NULL,
    HeartRate INTEGER,
    Steps INTEGER,
    CaloriesBurned REAL,
    SleepDuration REAL,
    SleepQuality TEXT,
    BloodOxygen REAL,
    SkinTemp REAL,
    ActivityLevel TEXT,
    StressScore INTEGER,
    RespiratoryRate INTEGER,
    ECGLead1 REAL,
    ECGLead2 REAL,
    GPSLatitude REAL,
    GPSLongitude REAL,
    Altitude REAL,
    BatteryLevel INTEGER,
    FirmwareVersion TEXT,
    DataQualityFlag TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO PatientWearableMetrics (MetricID, PatientID, DeviceID, RecordTimestamp, HeartRate, Steps, CaloriesBurned, SleepDuration, SleepQuality, BloodOxygen, SkinTemp, ActivityLevel, StressScore, RespiratoryRate, ECGLead1, ECGLead2, GPSLatitude, GPSLongitude, Altitude, BatteryLevel, FirmwareVersion, DataQualityFlag)
VALUES (1, 101, 'W001', '2023-01-15 08:00:00', 72, 3500, 220.5, 7.2, 'Good', 98.5, 33.2, 'Moderate', 20, 16, 0.12, 0.15, 40.7128, -74.0060, 10.0, 85, 'v1.2', 'OK');

INSERT INTO PatientWearableMetrics (MetricID, PatientID, DeviceID, RecordTimestamp, HeartRate, Steps, CaloriesBurned, SleepDuration, SleepQuality, BloodOxygen, SkinTemp, ActivityLevel, StressScore, RespiratoryRate, ECGLead1, ECGLead2, GPSLatitude, GPSLongitude, Altitude, BatteryLevel, FirmwareVersion, DataQualityFlag)
VALUES (2, 102, 'W002', '2023-02-20 09:30:00', 80, 4200, 250.0, 6.5, 'Fair', 97.0, 34.0, 'Active', 30, 18, 0.10, 0.14, 34.0522, -118.2437, 15.0, 78, 'v1.3', 'OK');

INSERT INTO PatientWearableMetrics (MetricID, PatientID, DeviceID, RecordTimestamp, HeartRate, Steps, CaloriesBurned, SleepDuration, SleepQuality, BloodOxygen, SkinTemp, ActivityLevel, StressScore, RespiratoryRate, ECGLead1, ECGLead2, GPSLatitude, GPSLongitude, Altitude, BatteryLevel, FirmwareVersion, DataQualityFlag)
VALUES (3, 103, 'W003', '2023-03-05 07:45:00', 68, 3000, 190.2, 8.0, 'Excellent', 99.0, 32.5, 'Low', 10, 14, 0.13, 0.16, 51.5074, -0.1278, 12.0, 90, 'v1.1', 'OK');

-- Clinical guideline version history
CREATE TABLE ClinicalGuidelineVersionHistory (
    GuidelineID INTEGER NOT NULL,
    VersionNumber INTEGER NOT NULL,
    EffectiveDate DATE NOT NULL,
    DeprecatedDate DATE,
    Title TEXT,
    Category TEXT,
    Author TEXT,
    Organization TEXT,
    Summary TEXT,
    FullTextURL TEXT,
    ReviewFrequencyMonths INTEGER,
    LastReviewedDate DATE,
    Status TEXT,
    ChangeLog TEXT,
    Comment TEXT,
    ApprovalAuthority TEXT,
    ImplementationStatus TEXT,
    TargetPopulation TEXT,
    Keywords TEXT,
    RelatedGuidelineID INTEGER,
    RevisionNotes TEXT,
    PRIMARY KEY (GuidelineID, VersionNumber)
);

INSERT INTO ClinicalGuidelineVersionHistory (GuidelineID, VersionNumber, EffectiveDate, DeprecatedDate, Title, Category, Author, Organization, Summary, FullTextURL, ReviewFrequencyMonths, LastReviewedDate, Status, ChangeLog, Comment, ApprovalAuthority, ImplementationStatus, TargetPopulation, Keywords, RelatedGuidelineID, RevisionNotes)
VALUES (100, 1, '2020-01-01', NULL, 'Hypertension Management', 'Cardiology', 'DrSmith', 'HeartInstitute', 'Guideline for managing hypertension', 'http://example.com/hypertension_v1', 24, '2021-12-15', 'Active', 'Initial release', 'N/A', 'MedicalBoard', 'Implemented', 'Adults', 'hypertension,blood pressure', NULL, 'First version');

INSERT INTO ClinicalGuidelineVersionHistory (GuidelineID, VersionNumber, EffectiveDate, DeprecatedDate, Title, Category, Author, Organization, Summary, FullTextURL, ReviewFrequencyMonths, LastReviewedDate, Status, ChangeLog, Comment, ApprovalAuthority, ImplementationStatus, TargetPopulation, Keywords, RelatedGuidelineID, RevisionNotes)
VALUES (100, 2, '2022-01-01', NULL, 'Hypertension Management', 'Cardiology', 'DrJones', 'HeartInstitute', 'Updated recommendations', 'http://example.com/hypertension_v2', 24, '2023-01-10', 'Active', 'Added new drug classes', 'Reviewed by panel', 'MedicalBoard', 'Implemented', 'Adults', 'hypertension,medication', 100, 'Second version with new meds');

INSERT INTO ClinicalGuidelineVersionHistory (GuidelineID, VersionNumber, EffectiveDate, DeprecatedDate, Title, Category, Author, Organization, Summary, FullTextURL, ReviewFrequencyMonths, LastReviewedDate, Status, ChangeLog, Comment, ApprovalAuthority, ImplementationStatus, TargetPopulation, Keywords, RelatedGuidelineID, RevisionNotes)
VALUES (200, 1, '2021-06-01', NULL, 'Diabetes Screening', 'Endocrinology', 'DrLee', 'EndocrineCenter', 'Guideline for diabetes screening', 'http://example.com/diabetes_v1', 12, '2022-05-20', 'Active', 'Initial release', 'N/A', 'HealthDept', 'Implemented', 'Adults', 'diabetes,screening', NULL, 'First version');

-- Hospital asset tracking extended
CREATE TABLE HospitalAssetTrackingExtended (
    AssetTagID TEXT NOT NULL PRIMARY KEY,
    AssetName TEXT,
    AssetType TEXT,
    Manufacturer TEXT,
    Model TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyExpiration DATE,
    Location TEXT,
    Department TEXT,
    CustodianStaffID INTEGER,
    AssetValue REAL,
    DepreciationStartDate DATE,
    CurrentDepreciation REAL,
    MaintenanceScheduleID INTEGER,
    LastMaintenanceDate DATE,
    NextMaintenanceDue DATE,
    AssetStatus TEXT,
    DisposalDate DATE,
    DisposalMethod TEXT,
    RetentionPolicy TEXT,
    Notes TEXT
);

INSERT INTO HospitalAssetTrackingExtended (AssetTagID, AssetName, AssetType, Manufacturer, Model, SerialNumber, PurchaseDate, WarrantyExpiration, Location, Department, CustodianStaffID, AssetValue, DepreciationStartDate, CurrentDepreciation, MaintenanceScheduleID, LastMaintenanceDate, NextMaintenanceDue, AssetStatus, DisposalDate, DisposalMethod, RetentionPolicy, Notes)
VALUES ('AT-0001', 'X-Ray Machine', 'Imaging', 'GE', 'MX20', 'SNX12345', '2018-03-01', '2023-03-01', 'Radiology', 'Radiology', 23, 250000.00, '2018-03-01', 0.4, 101, '2023-01-15', '2023-07-15', 'Operational', NULL, NULL, '7Year', 'Routine maintenance');

INSERT INTO HospitalAssetTrackingExtended (AssetTagID, AssetName, AssetType, Manufacturer, Model, SerialNumber, PurchaseDate, WarrantyExpiration, Location, Department, CustodianStaffID, AssetValue, DepreciationStartDate, CurrentDepreciation, MaintenanceScheduleID, LastMaintenanceDate, NextMaintenanceDue, AssetStatus, DisposalDate, DisposalMethod, RetentionPolicy, Notes)
VALUES ('AT-0002', 'Ventilator', 'Respiratory', 'Philips', 'V300', 'SNV67890', '2019-11-15', '2024-11-15', 'ICU', 'CriticalCare', 31, 85000.00, '2019-11-15', 0.3, 102, '2023-02-20', '2023-08-20', 'Operational', NULL, NULL, '7Year', 'Checked quarterly');

INSERT INTO HospitalAssetTrackingExtended (AssetTagID, AssetName, AssetType, Manufacturer, Model, SerialNumber, PurchaseDate, WarrantyExpiration, Location, Department, CustodianStaffID, AssetValue, DepreciationStartDate, CurrentDepreciation, MaintenanceScheduleID, LastMaintenanceDate, NextMaintenanceDue, AssetStatus, DisposalDate, DisposalMethod, RetentionPolicy, Notes)
VALUES ('AT-0003', 'Defibrillator', 'Emergency', 'ZOLL', 'AED Pro', 'SND34567', '2020-07-10', '2025-07-10', 'EmergencyDept', 'Emergency', 42, 5000.00, '2020-07-10', 0.2, 103, '2023-03-05', '2023-09-05', 'Operational', NULL, NULL, '7Year', 'Battery replaced 2022');

-- Supply chain vendor performance detail
CREATE TABLE SupplyChainVendorPerformanceDetail (
    PerformanceID INTEGER NOT NULL PRIMARY KEY,
    VendorID INTEGER NOT NULL,
    EvaluationDate DATE NOT NULL,
    OnTimeDeliveryRate REAL,
    DefectRate REAL,
    CostVariance REAL,
    LeadTimeAverage REAL,
    CommunicationScore INTEGER,
    ComplianceScore INTEGER,
    SustainabilityScore INTEGER,
    ContractRenewalFlag INTEGER,
    Notes TEXT,
    EvaluatorID INTEGER,
    ScoreOverall REAL,
    ServiceLevelAgreementID INTEGER,
    PenaltyIncidents INTEGER,
    CreditTermDays INTEGER,
    DiscountOffered REAL,
    RiskLevel TEXT,
    AuditFindings TEXT,
    ImprovementPlan TEXT,
    FollowUpDate DATE
);

INSERT INTO SupplyChainVendorPerformanceDetail (PerformanceID, VendorID, EvaluationDate, OnTimeDeliveryRate, DefectRate, CostVariance, LeadTimeAverage, CommunicationScore, ComplianceScore, SustainabilityScore, ContractRenewalFlag, Notes, EvaluatorID, ScoreOverall, ServiceLevelAgreementID, PenaltyIncidents, CreditTermDays, DiscountOffered, RiskLevel, AuditFindings, ImprovementPlan, FollowUpDate)
VALUES (1, 5001, '2023-01-31', 0.96, 0.02, 0.03, 5.2, 9, 8, 7, 1, 'Strong performance', 12, 88.5, 3001, 0, 30, 5.0, 'Low', 'None', 'Maintain current processes', '2023-04-30');

INSERT INTO SupplyChainVendorPerformanceDetail (PerformanceID, VendorID, EvaluationDate, OnTimeDeliveryRate, DefectRate, CostVariance, LeadTimeAverage, CommunicationScore, ComplianceScore, SustainabilityScore, ContractRenewalFlag, Notes, EvaluatorID, ScoreOverall, ServiceLevelAgreementID, PenaltyIncidents, CreditTermDays, DiscountOffered, RiskLevel, AuditFindings, ImprovementPlan, FollowUpDate)
VALUES (2, 5002, '2023-02-28', 0.89, 0.05, -0.02, 7.0, 7, 6, 5, 0, 'Needs improvement', 13, 74.0, 3002, 2, 45, 3.0, 'Medium', 'Late deliveries', 'Improve logistics', '2023-05-31');

INSERT INTO SupplyChainVendorPerformanceDetail (PerformanceID, VendorID, EvaluationDate, OnTimeDeliveryRate, DefectRate, CostVariance, LeadTimeAverage, CommunicationScore, ComplianceScore, SustainabilityScore, ContractRenewalFlag, Notes, EvaluatorID, ScoreOverall, ServiceLevelAgreementID, PenaltyIncidents, CreditTermDays, DiscountOffered, RiskLevel, AuditFindings, ImprovementPlan, FollowUpDate)
VALUES (3, 5003, '2023-03-31', 0.92, 0.03, 0.01, 6.5, 8, 7, 6, 1, 'Stable performance', 14, 81.0, 3003, 1, 40, 4.0, 'Low', 'Minor issues', 'Continue monitoring', '2023-06-30');

-- Medical device warranty information
CREATE TABLE MedicalDeviceWarrantyInfo (
    WarrantyID INTEGER NOT NULL PRIMARY KEY,
    DeviceID TEXT NOT NULL,
    Manufacturer TEXT,
    Model TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyStartDate DATE,
    WarrantyEndDate DATE,
    CoverageDetails TEXT,
    ServiceProvider TEXT,
    ContactPhone TEXT,
    ServiceLevel TEXT,
    ClaimNumber TEXT,
    ClaimStatus TEXT,
    LastServiceDate DATE,
    NextServiceDue DATE,
    ReplacementPolicy TEXT,
    ExtendedWarrantyFlag INTEGER,
    ExtendedWarrantyEndDate DATE,
    WarrantyCost REAL,
    Notes TEXT,
    RegisteredByStaffID INTEGER
);

INSERT INTO MedicalDeviceWarrantyInfo (WarrantyID, DeviceID, Manufacturer, Model, SerialNumber, PurchaseDate, WarrantyStartDate, WarrantyEndDate, CoverageDetails, ServiceProvider, ContactPhone, ServiceLevel, ClaimNumber, ClaimStatus, LastServiceDate, NextServiceDue, ReplacementPolicy, ExtendedWarrantyFlag, ExtendedWarrantyEndDate, WarrantyCost, Notes, RegisteredByStaffID)
VALUES (1, 'DV-1001', 'GE', 'VentPro', 'SNV001', '2019-05-20', '2019-05-20', '2022-05-20', 'Full coverage', 'MediTech Services', '5551234', 'Premium', 'CLM001', 'Closed', '2022-01-15', '2022-07-15', 'Replace after 3 years', 1, '2025-05-20', 1500.00, 'Extended warranty purchased', 23);

INSERT INTO MedicalDeviceWarrantyInfo (WarrantyID, DeviceID, Manufacturer, Model, SerialNumber, PurchaseDate, WarrantyStartDate, WarrantyEndDate, CoverageDetails, ServiceProvider, ContactPhone, ServiceLevel, ClaimNumber, ClaimStatus, LastServiceDate, NextServiceDue, ReplacementPolicy, ExtendedWarrantyFlag, ExtendedWarrantyEndDate, WarrantyCost, Notes, RegisteredByStaffID)
VALUES (2, 'DV-1002', 'Philips', 'MonitorX', 'SNM002', '2020-08-10', '2020-08-10', '2023-08-10', 'Limited coverage', 'HealthEquip Ltd', '5555678', 'Standard', 'CLM002', 'Open', '2022-11-20', '2023-05-20', 'Repair only', 0, NULL, 800.00, 'No extension', 31);

INSERT INTO MedicalDeviceWarrantyInfo (WarrantyID, DeviceID, Manufacturer, Model, SerialNumber, PurchaseDate, WarrantyStartDate, WarrantyEndDate, CoverageDetails, ServiceProvider, ContactPhone, ServiceLevel, ClaimNumber, ClaimStatus, LastServiceDate, NextServiceDue, ReplacementPolicy, ExtendedWarrantyFlag, ExtendedWarrantyEndDate, WarrantyCost, Notes, RegisteredByStaffID)
VALUES (3, 'DV-1003', 'Siemens', 'InfusionPump', 'SNIP003', '2021-01-05', '2021-01-05', '2024-01-05', 'Full coverage', 'MediTech Services', '5559012', 'Premium', 'CLM003', 'Closed', '2022-12-01', '2023-06-01', 'Replace after 5 years', 1, '2026-01-05', 1200.00, 'Extended warranty active', 42);

-- Community health screening events
CREATE TABLE CommunityHealthScreening (
    ScreeningID INTEGER NOT NULL PRIMARY KEY,
    EventDate DATE NOT NULL,
    Location TEXT,
    CommunityName TEXT,
    ScreeningType TEXT,
    ParticipantsCount INTEGER,
    PositiveCases INTEGER,
    FollowUpReferrals INTEGER,
    ScreeningTeamLead TEXT,
    SponsorOrganization TEXT,
    FundingAmount REAL,
    ContactPhone TEXT,
    Address TEXT,
    Latitude REAL,
    Longitude REAL,
    ScreeningProtocol TEXT,
    DataCollected TEXT,
    ConsentObtained INTEGER,
    ReportURL TEXT,
    EvaluationScore REAL,
    Notes TEXT,
    CoordinatorStaffID INTEGER
);

INSERT INTO CommunityHealthScreening (ScreeningID, EventDate, Location, CommunityName, ScreeningType, ParticipantsCount, PositiveCases, FollowUpReferrals, ScreeningTeamLead, SponsorOrganization, FundingAmount, ContactPhone, Address, Latitude, Longitude, ScreeningProtocol, DataCollected, ConsentObtained, ReportURL, EvaluationScore, Notes, CoordinatorStaffID)
VALUES (1, '2023-01-12', 'Community Center A', 'Northside', 'Blood Pressure', 150, 20, 15, 'DrSmith', 'HealthDept', 5000.00, '5551111', '123 Main St', 40.7128, -74.0060, 'StandardBP', 'BP,Age,Sex', 1, 'http://example.com/report1', 4.5, 'Well attended', 55);

INSERT INTO CommunityHealthScreening (ScreeningID, EventDate, Location, CommunityName, ScreeningType, ParticipantsCount, PositiveCases, FollowUpReferrals, ScreeningTeamLead, SponsorOrganization, FundingAmount, ContactPhone, Address, Latitude, Longitude, ScreeningProtocol, DataCollected, ConsentObtained, ReportURL, EvaluationScore, Notes, CoordinatorStaffID)
VALUES (2, '2023-03-05', 'Park B', 'Eastside', 'Diabetes', 200, 30, 25, 'DrLee', 'WellnessOrg', 8000.00, '5552222', '456 Oak Ave', 34.0522, -118.2437, 'StandardGlucose', 'Glucose,Weight,Height', 1, 'http://example.com/report2', 4.8, 'High participation', 61);

INSERT INTO CommunityHealthScreening (ScreeningID, EventDate, Location, CommunityName, ScreeningType, ParticipantsCount, PositiveCases, FollowUpReferrals, ScreeningTeamLead, SponsorOrganization, FundingAmount, ContactPhone, Address, Latitude, Longitude, ScreeningProtocol, DataCollected, ConsentObtained, ReportURL, EvaluationScore, Notes, CoordinatorStaffID)
VALUES (3, '2023-05-20', 'School Gym', 'Westside', 'Cholesterol', 120, 15, 12, 'DrKim', 'CityCouncil', 3000.00, '5553333', '789 Pine Rd', 51.5074, -0.1278, 'StandardLipid', 'LDL,HDL,Total', 1, 'http://example.com/report3', 4.2, 'Good turnout', 68);