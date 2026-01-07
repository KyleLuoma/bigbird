-- Clinical audit log for procedures
CREATE TABLE ClinicalAuditLog
(
    AuditID               INTEGER PRIMARY KEY,
    ProcedureCode         TEXT,
    AuditDate             DATE,
    AuditorID             INTEGER,
    Findings              TEXT,
    Recommendation        TEXT,
    SeverityLevel         INTEGER,
    FollowUpDate          DATE,
    Department            TEXT,
    Shift                 TEXT,
    PatientImpactScore    REAL,
    ComplianceScore       REAL,
    Notes                 TEXT,
    CreatedAt             DATE,
    UpdatedAt             DATE,
    Status                TEXT,
    AuditType             TEXT,
    Location              TEXT,
    EquipmentID           TEXT,
    DocumentationLink     TEXT,
    RiskRating            INTEGER
);

INSERT INTO ClinicalAuditLog (AuditID, ProcedureCode, AuditDate, AuditorID, Findings, Recommendation, SeverityLevel, FollowUpDate, Department, Shift, PatientImpactScore, ComplianceScore, Notes, CreatedAt, UpdatedAt, Status, AuditType, Location, EquipmentID, DocumentationLink, RiskRating) VALUES (1, 'PROC001', '2023-01-15', 101, 'Finding A', 'Recommend X', 2, '2023-02-01', 'Cardiology', 'Night', 3.5, 92.0, 'Notes A', '2023-01-15', '2023-01-16', 'Open', 'Routine', 'WingA', 'EQ123', 'doc1.pdf', 4);
INSERT INTO ClinicalAuditLog (AuditID, ProcedureCode, AuditDate, AuditorID, Findings, Recommendation, SeverityLevel, FollowUpDate, Department, Shift, PatientImpactScore, ComplianceScore, Notes, CreatedAt, UpdatedAt, Status, AuditType, Location, EquipmentID, DocumentationLink, RiskRating) VALUES (2, 'PROC002', '2023-02-10', 102, 'Finding B', 'Recommend Y', 3, '2023-03-05', 'Neurology', 'Day', 4.2, 88.5, 'Notes B', '2023-02-10', '2023-02-11', 'Closed', 'Focused', 'WingB', 'EQ456', 'doc2.pdf', 5);
INSERT INTO ClinicalAuditLog (AuditID, ProcedureCode, AuditDate, AuditorID, Findings, Recommendation, SeverityLevel, FollowUpDate, Department, Shift, PatientImpactScore, ComplianceScore, Notes, CreatedAt, UpdatedAt, Status, AuditType, Location, EquipmentID, DocumentationLink, RiskRating) VALUES (3, 'PROC003', '2023-03-20', 103, 'Finding C', 'Recommend Z', 1, '2023-04-15', 'Oncology', 'Evening', 2.8, 95.0, 'Notes C', '2023-03-20', '2023-03-21', 'Pending', 'Adhoc', 'WingC', 'EQ789', 'doc3.pdf', 3);

-- Pharmacy compounding batch records
CREATE TABLE PharmacyCompoundingBatch
(
    BatchID               INTEGER PRIMARY KEY,
    CompoundName          TEXT,
    BatchDate             DATE,
    ExpirationDate        DATE,
    PharmacistID          INTEGER,
    QuantityPrepared      REAL,
    Unit                  TEXT,
    Concentration         REAL,
    Solvent               TEXT,
    pH                    REAL,
    SterilityTestResult   TEXT,
    PurityPercentage      REAL,
    StabilityDurationDays INTEGER,
    StorageLocation       TEXT,
    HazardLevel           TEXT,
    ApprovalStatus        TEXT,
    CreatedBy             TEXT,
    CreatedAt             DATE,
    UpdatedBy             TEXT,
    UpdatedAt             DATE
);

INSERT INTO PharmacyCompoundingBatch (BatchID, CompoundName, BatchDate, ExpirationDate, PharmacistID, QuantityPrepared, Unit, Concentration, Solvent, pH, SterilityTestResult, PurityPercentage, StabilityDurationDays, StorageLocation, HazardLevel, ApprovalStatus, CreatedBy, CreatedAt, UpdatedBy, UpdatedAt) VALUES (1001, 'CompoundA', '2023-04-01', '2024-04-01', 201, 250.0, 'ml', 5.0, 'Water', 7.2, 'Pass', 99.5, 365, 'Freezer1', 'Low', 'Approved', 'Alice', '2023-04-01', 'Bob', '2023-04-02');
INSERT INTO PharmacyCompoundingBatch (BatchID, CompoundName, BatchDate, ExpirationDate, PharmacistID, QuantityPrepared, Unit, Concentration, Solvent, pH, SterilityTestResult, PurityPercentage, StabilityDurationDays, StorageLocation, HazardLevel, ApprovalStatus, CreatedBy, CreatedAt, UpdatedBy, UpdatedAt) VALUES (1002, 'CompoundB', '2023-05-10', '2024-05-10', 202, 150.0, 'ml', 10.0, 'Ethanol', 6.8, 'Pass', 98.2, 180, 'Refrigerator2', 'Medium', 'Pending', 'Carol', '2023-05-10', 'Dave', '2023-05-11');
INSERT INTO PharmacyCompoundingBatch (BatchID, CompoundName, BatchDate, ExpirationDate, PharmacistID, QuantityPrepared, Unit, Concentration, Solvent, pH, SterilityTestResult, PurityPercentage, StabilityDurationDays, StorageLocation, HazardLevel, ApprovalStatus, CreatedBy, CreatedAt, UpdatedBy, UpdatedAt) VALUES (1003, 'CompoundC', '2023-06-15', '2024-06-15', 203, 300.0, 'ml', 2.5, 'Saline', 7.0, 'Fail', 95.0, 730, 'Freezer3', 'High', 'Rejected', 'Eve', '2023-06-15', 'Frank', '2023-06-16');

-- Radiology equipment maintenance log
CREATE TABLE RadiologyEquipmentMaintenance
(
    MaintenanceID         INTEGER PRIMARY KEY,
    EquipmentSerial       TEXT,
    EquipmentType         TEXT,
    MaintenanceDate       DATE,
    TechnicianID          INTEGER,
    ServiceProvider       TEXT,
    CheckListCompleted    TEXT,
    CalibrationStatus     TEXT,
    FirmwareVersion       TEXT,
    PartsReplaced         TEXT,
    DowntimeHours         REAL,
    NextDueDate           DATE,
    Cost                  REAL,
    MaintenanceNotes      TEXT,
    CreatedAt             DATE,
    UpdatedAt             DATE,
    Status                TEXT,
    FacilityID            INTEGER,
    WarrantyExpiry        DATE,
    InspectionScore       INTEGER
);

INSERT INTO RadiologyEquipmentMaintenance (MaintenanceID, EquipmentSerial, EquipmentType, MaintenanceDate, TechnicianID, ServiceProvider, CheckListCompleted, CalibrationStatus, FirmwareVersion, PartsReplaced, DowntimeHours, NextDueDate, Cost, MaintenanceNotes, CreatedAt, UpdatedAt, Status, FacilityID, WarrantyExpiry, InspectionScore) VALUES (5001, 'RX1001', 'XRay', '2023-02-20', 301, 'TechCo', 'Yes', 'Calibrated', 'v1.2', 'Tube', 2.5, '2023-08-20', 1200.0, 'Routine check', '2023-02-20', '2023-02-21', 'Completed', 1, '2025-02-20', 95);
INSERT INTO RadiologyEquipmentMaintenance (MaintenanceID, EquipmentSerial, EquipmentType, MaintenanceDate, TechnicianID, ServiceProvider, CheckListCompleted, CalibrationStatus, FirmwareVersion, PartsReplaced, DowntimeHours, NextDueDate, Cost, MaintenanceNotes, CreatedAt, UpdatedAt, Status, FacilityID, WarrantyExpiry, InspectionScore) VALUES (5002, 'CT2002', 'CT', '2023-03-15', 302, 'MedServ', 'Yes', 'Pending', 'v3.0', 'Detector', 4.0, '2023-09-15', 2500.0, 'Replaced detector', '2023-03-15', '2023-03-16', 'InProgress', 2, '2026-03-15', 88);
INSERT INTO RadiologyEquipmentMaintenance (MaintenanceID, EquipmentSerial, EquipmentType, MaintenanceDate, TechnicianID, ServiceProvider, CheckListCompleted, CalibrationStatus, FirmwareVersion, PartsReplaced, DowntimeHours, NextDueDate, Cost, MaintenanceNotes, CreatedAt, UpdatedAt, Status, FacilityID, WarrantyExpiry, InspectionScore) VALUES (5003, 'MR3003', 'MRI', '2023-04-10', 303, 'HealthTech', 'No', 'Failed', 'v2.5', 'Coil', 6.0, '2023-10-10', 4000.0, 'Calibration failed', '2023-04-10', '2023-04-11', 'Scheduled', 3, '2027-04-10', 72);

-- Nutrition program enrollment records
CREATE TABLE NutritionProgramEnrollment
(
    EnrollmentID          INTEGER PRIMARY KEY,
    ProgramName           TEXT,
    StartDate             DATE,
    EndDate               DATE,
    ParticipantID         INTEGER,
    DietaryRestrictionID  INTEGER,
    CalorieGoal           INTEGER,
    ProteinGoal           INTEGER,
    CarbohydrateGoal      INTEGER,
    FatGoal               INTEGER,
    MealPlanID            INTEGER,
    CounselorID           INTEGER,
    EnrollmentStatus      TEXT,
    ProgressScore         REAL,
    Notes                 TEXT,
    CreatedAt             DATE,
    UpdatedAt             DATE,
    EligibilityCriteria   TEXT,
    ReferralSource        TEXT,
    FollowUpDate          DATE,
    ContactPhone          TEXT
);

INSERT INTO NutritionProgramEnrollment (EnrollmentID, ProgramName, StartDate, EndDate, ParticipantID, DietaryRestrictionID, CalorieGoal, ProteinGoal, CarbohydrateGoal, FatGoal, MealPlanID, CounselorID, EnrollmentStatus, ProgressScore, Notes, CreatedAt, UpdatedAt, EligibilityCriteria, ReferralSource, FollowUpDate, ContactPhone) VALUES (8001, 'HeartHealth', '2023-01-01', '2023-12-31', 901, 10, 2000, 150, 250, 70, 301, 401, 'Active', 78.5, 'Good adherence', '2023-01-01', '2023-06-01', 'BMI>30', 'Physician', '2023-07-01', '5551234567');
INSERT INTO NutritionProgramEnrollment (EnrollmentID, ProgramName, StartDate, EndDate, ParticipantID, DietaryRestrictionID, CalorieGoal, ProteinGoal, CarbohydrateGoal, FatGoal, MealPlanID, CounselorID, EnrollmentStatus, ProgressScore, Notes, CreatedAt, UpdatedAt, EligibilityCriteria, ReferralSource, FollowUpDate, ContactPhone) VALUES (8002, 'DiabetesCare', '2023-02-15', '2024-02-14', 902, 12, 1800, 120, 200, 60, 302, 402, 'Pending', 0.0, 'Awaiting start', '2023-02-15', '2023-02-15', 'HbA1c>7', 'Endocrinology', '2023-03-15', '5559876543');
INSERT INTO NutritionProgramEnrollment (EnrollmentID, ProgramName, StartDate, EndDate, ParticipantID, DietaryRestrictionID, CalorieGoal, ProteinGoal, CarbohydrateGoal, FatGoal, MealPlanID, CounselorID, EnrollmentStatus, ProgressScore, Notes, CreatedAt, UpdatedAt, EligibilityCriteria, ReferralSource, FollowUpDate, ContactPhone) VALUES (8003, 'KidneySupport', '2023-03-20', '2023-09-20', 903, 15, 1500, 100, 150, 50, 303, 403, 'Active', 62.0, 'Needs adjustment', '2023-03-20', '2023-04-20', 'eGFR<60', 'Nephrology', '2023-05-20', '5555551212');

-- Shift swap request log
CREATE TABLE ShiftSwapRequest
(
    RequestID             INTEGER PRIMARY KEY,
    RequestDate           DATE,
    OriginalShiftID       INTEGER,
    DesiredShiftID        INTEGER,
    EmployeeID            INTEGER,
    SubstituteEmployeeID  INTEGER,
    Reason                TEXT,
    ApprovalStatus        TEXT,
    ApprovedBy            INTEGER,
    ApprovalDate          DATE,
    ShiftDate             DATE,
    Department            TEXT,
    ShiftType             TEXT,
    CreatedAt             DATE,
    UpdatedAt             DATE,
    Comments              TEXT,
    PriorityLevel         INTEGER,
    NotificationSent      TEXT,
    ExchangeCount         INTEGER,
    HRNote                TEXT
);

INSERT INTO ShiftSwapRequest (RequestID, RequestDate, OriginalShiftID, DesiredShiftID, EmployeeID, SubstituteEmployeeID, Reason, ApprovalStatus, ApprovedBy, ApprovalDate, ShiftDate, Department, ShiftType, CreatedAt, UpdatedAt, Comments, PriorityLevel, NotificationSent, ExchangeCount, HRNote) VALUES (9001, '2023-04-01', 100, 101, 501, 502, 'Family emergency', 'Approved', 801, '2023-04-02', '2023-04-05', 'ER', 'Night', '2023-04-01', '2023-04-02', 'Swap successful', 1, 'Yes', 1, 'None');
INSERT INTO ShiftSwapRequest (RequestID, RequestDate, OriginalShiftID, DesiredShiftID, EmployeeID, SubstituteEmployeeID, Reason, ApprovalStatus, ApprovedBy, ApprovalDate, ShiftDate, Department, ShiftType, CreatedAt, UpdatedAt, Comments, PriorityLevel, NotificationSent, ExchangeCount, HRNote) VALUES (9002, '2023-04-03', 102, 103, 503, 504, 'Education class', 'Pending', NULL, NULL, '2023-04-10', 'ICU', 'Day', '2023-04-03', '2023-04-03', 'Awaiting manager', 2, 'No', 0, 'Follow up needed');
INSERT INTO ShiftSwapRequest (RequestID, RequestDate, OriginalShiftID, DesiredShiftID, EmployeeID, SubstituteEmployeeID, Reason, ApprovalStatus, ApprovedBy, ApprovalDate, ShiftDate, Department, ShiftType, CreatedAt, UpdatedAt, Comments, PriorityLevel, NotificationSent, ExchangeCount, HRNote) VALUES (9003, '2023-04-05', 104, 105, 505, 506, 'Travel', 'Rejected', 802, '2023-04-06', '2023-04-12', 'Radiology', 'Evening', '2023-04-05', '2023-04-06', 'Insufficient coverage', 3, 'Yes', 0, 'Denied due to staffing');

-- Medical waste disposal records
CREATE TABLE MedicalWasteDisposal
(
    DisposalID            INTEGER PRIMARY KEY,
    WasteType             TEXT,
    DisposalDate          DATE,
    QuantityKg            REAL,
    ContainerID           TEXT,
    DisposalMethod        TEXT,
    TechnicianID          INTEGER,
    HazardLevel           TEXT,
    ComplianceStatus      TEXT,
    PermitNumber          TEXT,
    FacilityID            INTEGER,
    RecordedBy            TEXT,
    RecordedAt            DATE,
    Notes                 TEXT,
    Temperature           REAL,
    TransportVehicleID    TEXT,
    ArrivalTime           TIME,
    DepartureTime         TIME,
    FollowUpAction        TEXT,
    AuditReference        TEXT
);

INSERT INTO MedicalWasteDisposal (DisposalID, WasteType, DisposalDate, QuantityKg, ContainerID, DisposalMethod, TechnicianID, HazardLevel, ComplianceStatus, PermitNumber, FacilityID, RecordedBy, RecordedAt, Notes, Temperature, TransportVehicleID, ArrivalTime, DepartureTime, FollowUpAction, AuditReference) VALUES (7001, 'Sharps', '2023-05-01', 12.5, 'C001', 'Incineration', 601, 'High', 'Compliant', 'PN12345', 1, 'Laura', '2023-05-01', 'No issues', 22.5, 'V001', '08:00', '08:30', 'None', 'AR1001');
INSERT INTO MedicalWasteDisposal (DisposalID, WasteType, DisposalDate, QuantityKg, ContainerID, DisposalMethod, TechnicianID, HazardLevel, ComplianceStatus, PermitNumber, FacilityID, RecordedBy, RecordedAt, Notes, Temperature, TransportVehicleID, ArrivalTime, DepartureTime, FollowUpAction, AuditReference) VALUES (7002, 'Pharmaceutical', '2023-05-15', 8.0, 'C002', 'ChemicalNeutralization', 602, 'Medium', 'Compliant', 'PN12346', 2, 'Mike', '2023-05-15', 'Checked seals', 20.0, 'V002', '09:15', '09:45', 'Seal inspection', 'AR1002');
INSERT INTO MedicalWasteDisposal (DisposalID, WasteType, DisposalDate, QuantityKg, ContainerID, DisposalMethod, TechnicianID, HazardLevel, ComplianceStatus, PermitNumber, FacilityID, RecordedBy, RecordedAt, Notes, Temperature, TransportVehicleID, ArrivalTime, DepartureTime, FollowUpAction, AuditReference) VALUES (7003, 'Pathological', '2023-06-01', 5.2, 'C003', 'Autoclave', 603, 'Low', 'NonCompliant', 'PN12347', 3, 'Sara', '2023-06-01', 'Temperature low', 18.5, 'V003', '10:00', '10:20', 'Reprocess', 'AR1003');

-- Staff credentialing records
CREATE TABLE StaffCredentialing
(
    CredentialID          INTEGER PRIMARY KEY,
    StaffID               INTEGER,
    CredentialType        TEXT,
    IssuingAuthority      TEXT,
    IssueDate             DATE,
    ExpirationDate        DATE,
    CredentialNumber      TEXT,
    Status                TEXT,
    VerificationDate      DATE,
    VerifiedBy            TEXT,
    RenewalNoticeDate     DATE,
    Notes                 TEXT,
    CreatedAt             DATE,
    UpdatedAt             DATE,
    CredentialFilePath    TEXT,
    Category              TEXT,
    Level                 TEXT,
    Specialty             TEXT,
    LicenseState          TEXT,
    LicenseRegion         TEXT
);

INSERT INTO StaffCredentialing (CredentialID, StaffID, CredentialType, IssuingAuthority, IssueDate, ExpirationDate, CredentialNumber, Status, VerificationDate, VerifiedBy, RenewalNoticeDate, Notes, CreatedAt, UpdatedAt, CredentialFilePath, Category, Level, Specialty, LicenseState, LicenseRegion) VALUES (4001, 701, 'NursingLicense', 'StateBoard', '2020-01-15', '2025-01-14', 'NL123456', 'Active', '2024-12-01', 'HR', '2024-12-01', 'All good', '2020-01-15', '2024-01-10', '/files/nl4001.pdf', 'Professional', 'Level2', 'CriticalCare', 'CA', 'West');
INSERT INTO StaffCredentialing (CredentialID, StaffID, CredentialType, IssuingAuthority, IssueDate, ExpirationDate, CredentialNumber, Status, VerificationDate, VerifiedBy, RenewalNoticeDate, Notes, CreatedAt, UpdatedAt, CredentialFilePath, Category, Level, Specialty, LicenseState, LicenseRegion) VALUES (4002, 702, 'MedicalLicense', 'MedicalBoard', '2018-06-20', '2023-06-19', 'ML654321', 'Expired', '2023-05-30', 'ComplianceTeam', '2023-05-30', 'Pending renewal', '2018-06-20', '2023-05-31', '/files/ml4002.pdf', 'Professional', 'Level1', 'Pediatrics', 'NY', 'East');
INSERT INTO StaffCredentialing (CredentialID, StaffID, CredentialType, IssuingAuthority, IssueDate, ExpirationDate, CredentialNumber, Status, VerificationDate, VerifiedBy, RenewalNoticeDate, Notes, CreatedAt, UpdatedAt, CredentialFilePath, Category, Level, Specialty, LicenseState, LicenseRegion) VALUES (4003, 703, 'RadiologyCertification', 'BoardOfRadiology', '2019-09-10', '2024-09-09', 'RC789012', 'Active', '2023-08-15', 'HR', '2023-08-15', 'Renewal pending', '2019-09-10', '2023-08-20', '/files/rc4003.pdf', 'Certification', 'Level3', 'MRI', 'TX', 'South');

-- Facility cleaning schedule
CREATE TABLE FacilityCleaningSchedule
(
    ScheduleID            INTEGER PRIMARY KEY,
    FacilityArea          TEXT,
    CleaningFrequency     TEXT,
    AssignedTeamID        INTEGER,
    StartDate             DATE,
    EndDate               DATE,
    LastCleanedDate       DATE,
    NextScheduledDate     DATE,
    CleaningMethod        TEXT,
    SupervisorID          INTEGER,
    Notes                 TEXT,
    CreatedAt             DATE,
    UpdatedAt             DATE,
    Status                TEXT,
    ChecklistVersion      TEXT,
    EquipmentUsed         TEXT,
    ChemicalUsed          TEXT,
    DurationMinutes       INTEGER,
    Shift                 TEXT,
    AuditScore            INTEGER
);

INSERT INTO FacilityCleaningSchedule (ScheduleID, FacilityArea, CleaningFrequency, AssignedTeamID, StartDate, EndDate, LastCleanedDate, NextScheduledDate, CleaningMethod, SupervisorID, Notes, CreatedAt, UpdatedAt, Status, ChecklistVersion, EquipmentUsed, ChemicalUsed, DurationMinutes, Shift, AuditScore) VALUES (2001, 'ER', 'Daily', 801, '2023-01-01', '2023-12-31', '2023-06-01', '2023-06-02', 'Mopping', 901, 'High traffic', '2023-01-01', '2023-06-01', 'Active', 'v1.0', 'Vacuum', 'Bleach', 45, 'Night', 92);
INSERT INTO FacilityCleaningSchedule (ScheduleID, FacilityArea, CleaningFrequency, AssignedTeamID, StartDate, EndDate, LastCleanedDate, NextScheduledDate, CleaningMethod, SupervisorID, Notes, CreatedAt, UpdatedAt, Status, ChecklistVersion, EquipmentUsed, ChemicalUsed, DurationMinutes, Shift, AuditScore) VALUES (2002, 'ICU', 'TwiceDaily', 802, '2023-01-01', '2023-12-31', '2023-06-01', '2023-06-01', 'Disinfection', 902, 'Sterile area', '2023-01-01', '2023-06-01', 'Active', 'v1.2', 'Sprayer', 'Alcohol', 30, 'Day', 97);
INSERT INTO FacilityCleaningSchedule (ScheduleID, FacilityArea, CleaningFrequency, AssignedTeamID, StartDate, EndDate, LastCleanedDate, NextScheduledDate, CleaningMethod, SupervisorID, Notes, CreatedAt, UpdatedAt, Status, ChecklistVersion, EquipmentUsed, ChemicalUsed, DurationMinutes, Shift, AuditScore) VALUES (2003, 'Radiology', 'Weekly', 803, '2023-01-01', '2023-12-31', '2023-05-25', '2023-06-01', 'Dusting', 903, 'Sensitive equipment', '2023-01-01', '2023-05-25', 'Active', 'v2.0', 'Microfiber', 'None', 60, 'Evening', 88);

-- Research participant survey responses
CREATE TABLE ResearchParticipantSurvey
(
    SurveyID              INTEGER PRIMARY KEY,
    StudyID               INTEGER,
    ParticipantID         INTEGER,
    SurveyDate            DATE,
    SurveyVersion         TEXT,
    Question1             TEXT,
    Question2             TEXT,
    Question3             TEXT,
    Question4             TEXT,
    Question5             TEXT,
    OverallSatisfaction   INTEGER,
    Comments              TEXT,
    CompletedBy           TEXT,
    CompletionTimeMinutes INTEGER,
    CreatedAt             DATE,
    UpdatedAt             DATE,
    Language              TEXT,
    Mode                  TEXT,
    ConsentVerified       TEXT,
    FollowUpNeeded        TEXT
);

INSERT INTO ResearchParticipantSurvey (SurveyID, StudyID, ParticipantID, SurveyDate, SurveyVersion, Question1, Question2, Question3, Question4, Question5, OverallSatisfaction, Comments, CompletedBy, CompletionTimeMinutes, CreatedAt, UpdatedAt, Language, Mode, ConsentVerified, FollowUpNeeded) VALUES (6001, 901, 1001, '2023-04-10', 'v1', 'Yes', 'No', 'Sometimes', 'Often', 'Never', 4, 'Good study', 'ResearcherA', 15, '2023-04-10', '2023-04-10', 'English', 'Online', 'Yes', 'No');
INSERT INTO ResearchParticipantSurvey (SurveyID, StudyID, ParticipantID, SurveyDate, SurveyVersion, Question1, Question2, Question3, Question4, Question5, OverallSatisfaction, Comments, CompletedBy, CompletionTimeMinutes, CreatedAt, UpdatedAt, Language, Mode, ConsentVerified, FollowUpNeeded) VALUES (6002, 902, 1002, '2023-05-12', 'v2', 'No', 'Yes', 'Rarely', 'Sometimes', 'Often', 3, 'Needs clarification', 'ResearcherB', 20, '2023-05-12', '2023-05-12', 'Spanish', 'Phone', 'Yes', 'Yes');
INSERT INTO ResearchParticipantSurvey (SurveyID, StudyID, ParticipantID, SurveyDate, SurveyVersion, Question1, Question2, Question3, Question4, Question5, OverallSatisfaction, Comments, CompletedBy, CompletionTimeMinutes, CreatedAt, UpdatedAt, Language, Mode, ConsentVerified, FollowUpNeeded) VALUES (6003, 903, 1003, '2023-06-15', 'v1', 'Sometimes', 'Sometimes', 'Yes', 'No', 'Sometimes', 5, 'Excellent', 'ResearcherC', 12, '2023-06-15', '2023-06-15', 'French', 'InPerson', 'Yes', 'No');

-- Hospital volunteer hour log
CREATE TABLE HospitalVolunteerHourLog
(
    LogID                 INTEGER PRIMARY KEY,
    VolunteerID           INTEGER,
    EventID               INTEGER,
    ServiceDate           DATE,
    HoursLogged           REAL,
    ActivityType          TEXT,
    SupervisorID          INTEGER,
    Location              TEXT,
    Notes                 TEXT,
    CreatedAt             DATE,
    UpdatedAt             DATE,
    ApprovalStatus        TEXT,
    ApprovedBy            INTEGER,
    ApprovalDate          DATE,
    ShiftType             TEXT,
    Department            TEXT,
    Mileage               REAL,
    ReimbursementAmount   REAL,
    FeedbackScore         INTEGER,
    TrainingCompleted     TEXT,
    ContactEmail          TEXT
);

INSERT INTO HospitalVolunteerHourLog (LogID, VolunteerID, EventID, ServiceDate, HoursLogged, ActivityType, SupervisorID, Location, Notes, CreatedAt, UpdatedAt, ApprovalStatus, ApprovedBy, ApprovalDate, ShiftType, Department, Mileage, ReimbursementAmount, FeedbackScore, TrainingCompleted, ContactEmail) VALUES (3001, 1101, 2101, '2023-03-05', 4.0, 'PatientCompanion', 801, 'WardA', 'Assisted patients', '2023-03-05', '2023-03-06', 'Approved', 901, '2023-03-06', 'Day', 'PatientSupport', 12.5, 0.0, 9, 'Yes', 'vol1@example.com');
INSERT INTO HospitalVolunteerHourLog (LogID, VolunteerID, EventID, ServiceDate, HoursLogged, ActivityType, SupervisorID, Location, Notes, CreatedAt, UpdatedAt, ApprovalStatus, ApprovedBy, ApprovalDate, ShiftType, Department, Mileage, ReimbursementAmount, FeedbackScore, TrainingCompleted, ContactEmail) VALUES (3002, 1102, 2102, '2023-04-12', 3.5, 'Fundraising', 802, 'Lobby', 'Organized donation drive', '2023-04-12', '2023-04-13', 'Pending', NULL, NULL, 'Evening', 'CommunityOutreach', 8.0, 0.0, 8, 'No', 'vol2@example.com');
INSERT INTO HospitalVolunteerHourLog (LogID, VolunteerID, EventID, ServiceDate, HoursLogged, ActivityType, SupervisorID, Location, Notes, CreatedAt, UpdatedAt, ApprovalStatus, ApprovedBy, ApprovalDate, ShiftType, Department, Mileage, ReimbursementAmount, FeedbackScore, TrainingCompleted, ContactEmail) VALUES (3003, 1103, 2103, '2023-05-20', 5.0, 'HealthEducation', 803, 'ConferenceRoom', 'Provided health talks', '2023-05-20', '2023-05-21', 'Approved', 902, '2023-05-21', 'Day', 'Education', 15.0, 20.0, 10, 'Yes', 'vol3@example.com');