-- Hospital Shift Roster
CREATE TABLE HospitalShiftRoster (
    RosterID INTEGER PRIMARY KEY,
    StaffID INTEGER,
    Department TEXT,
    ShiftDate DATE,
    ShiftStartTime TEXT,
    ShiftEndTime TEXT,
    Role TEXT,
    AssignedUnit TEXT,
    SupervisorID INTEGER,
    ShiftType TEXT,
    BreakDuration INTEGER,
    OvertimeHours REAL,
    Comments TEXT,
    LocationCode TEXT,
    WeekNumber INTEGER,
    DayOfWeek TEXT,
    PayrollCode TEXT,
    OnCallFlag INTEGER,
    TrainingCompleted INTEGER,
    CertificationLevel TEXT,
    ShiftNotes TEXT,
    AttendanceStatus TEXT
);

INSERT INTO HospitalShiftRoster (RosterID, StaffID, Department, ShiftDate, ShiftStartTime, ShiftEndTime, Role, AssignedUnit, SupervisorID, ShiftType, BreakDuration, OvertimeHours, Comments, LocationCode, WeekNumber, DayOfWeek, PayrollCode, OnCallFlag, TrainingCompleted, CertificationLevel, ShiftNotes, AttendanceStatus) VALUES (1, 101, Cardiology, '2023-03-01', '07:00', '15:00', Nurse, ICU, 201, Day, 30, 0.5, None, L1, 9, Monday, PC01, 0, 1, Level2, None, Present);
INSERT INTO HospitalShiftRoster (RosterID, StaffID, Department, ShiftDate, ShiftStartTime, ShiftEndTime, Role, AssignedUnit, SupervisorID, ShiftType, BreakDuration, OvertimeHours, Comments, LocationCode, WeekNumber, DayOfWeek, PayrollCode, OnCallFlag, TrainingCompleted, CertificationLevel, ShiftNotes, AttendanceStatus) VALUES (2, 102, Radiology, '2023-03-01', '15:00', '23:00', Technologist, Imaging, 202, Evening, 45, 1.0, None, L2, 9, Wednesday, PC02, 1, 1, Level1, None, Present);
INSERT INTO HospitalShiftRoster (RosterID, StaffID, Department, ShiftDate, ShiftStartTime, ShiftEndTime, Role, AssignedUnit, SupervisorID, ShiftType, BreakDuration, OvertimeHours, Comments, LocationCode, WeekNumber, DayOfWeek, PayrollCode, OnCallFlag, TrainingCompleted, CertificationLevel, ShiftNotes, AttendanceStatus) VALUES (3, 103, Emergency, '2023-03-02', '23:00', '07:00', Physician, ER, 203, Night, 60, 2.0, None, L3, 9, Thursday, PC03, 0, 0, Level3, None, Present);

-- Medical Equipment Purchase
CREATE TABLE MedicalEquipmentPurchase (
    PurchaseID INTEGER PRIMARY KEY,
    EquipmentID INTEGER,
    VendorName TEXT,
    PurchaseDate DATE,
    PurchasePrice REAL,
    WarrantyYears INTEGER,
    SerialNumber TEXT,
    ModelNumber TEXT,
    Category TEXT,
    SubCategory TEXT,
    InstallationDate DATE,
    InstalledBy INTEGER,
    CalibrationDueDate DATE,
    MaintenanceContractFlag INTEGER,
    FundingSource TEXT,
    DepartmentResponsible TEXT,
    AssetTag TEXT,
    Quantity INTEGER,
    UnitCost REAL,
    TotalCost REAL,
    ApprovalStatus TEXT,
    Notes TEXT
);

INSERT INTO MedicalEquipmentPurchase (PurchaseID, EquipmentID, VendorName, PurchaseDate, PurchasePrice, WarrantyYears, SerialNumber, ModelNumber, Category, SubCategory, InstallationDate, InstalledBy, CalibrationDueDate, MaintenanceContractFlag, FundingSource, DepartmentResponsible, AssetTag, Quantity, UnitCost, TotalCost, ApprovalStatus, Notes) VALUES (1, 5001, MedSupplyCo, '2023-01-15', 25000.00, 5, SN12345, MX200, Imaging, XRay, '2023-01-20', 301, '2024-01-20', 1, Grant, Radiology, AT5001, 1, 25000.00, 25000.00, Approved, Installation complete);
INSERT INTO MedicalEquipmentPurchase (PurchaseID, EquipmentID, VendorName, PurchaseDate, PurchasePrice, WarrantyYears, SerialNumber, ModelNumber, Category, SubCategory, InstallationDate, InstalledBy, CalibrationDueDate, MaintenanceContractFlag, FundingSource, DepartmentResponsible, AssetTag, Quantity, UnitCost, TotalCost, ApprovalStatus, Notes) VALUES (2, 5002, HealthTechInc, '2023-02-10', 15000.00, 3, SN54321, PT500, Therapy, Physiotherapy, '2023-02-15', 302, '2025-02-15', 0, Budget, PhysicalTherapy, AT5002, 2, 7500.00, 15000.00, Pending, Awaiting installation);
INSERT INTO MedicalEquipmentPurchase (PurchaseID, EquipmentID, VendorName, PurchaseDate, PurchasePrice, WarrantyYears, SerialNumber, ModelNumber, Category, SubCategory, InstallationDate, InstalledBy, CalibrationDueDate, MaintenanceContractFlag, FundingSource, DepartmentResponsible, AssetTag, Quantity, UnitCost, TotalCost, ApprovalStatus, Notes) VALUES (3, 5003, BioMedEquip, '2023-03-05', 5000.00, 2, SN98765, BG100, Lab, Biochemistry, '2023-03-07', 303, '2024-03-07', 1, Donation, Laboratory, AT5003, 5, 1000.00, 5000.00, Approved, Delivered to lab);

-- Facility Cleaning Log
CREATE TABLE FacilityCleaningLog (
    LogID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    CleaningDate DATE,
    Shift TEXT,
    CleanerID INTEGER,
    AreaCovered TEXT,
    SquareFeet INTEGER,
    CleaningMethod TEXT,
    DisinfectantUsed TEXT,
    DisinfectantConcentration REAL,
    DurationMinutes INTEGER,
    SupervisorID INTEGER,
    InspectionScore INTEGER,
    IssuesFound TEXT,
    FollowUpAction TEXT,
    EquipmentUsed TEXT,
    SuppliesConsumed INTEGER,
    TemperatureC REAL,
    HumidityPercent REAL,
    ChecklistCompleted INTEGER,
    Remarks TEXT,
    AuditTrailID INTEGER
);

INSERT INTO FacilityCleaningLog (LogID, FacilityID, CleaningDate, Shift, CleanerID, AreaCovered, SquareFeet, CleaningMethod, DisinfectantUsed, DisinfectantConcentration, DurationMinutes, SupervisorID, InspectionScore, IssuesFound, FollowUpAction, EquipmentUsed, SuppliesConsumed, TemperatureC, HumidityPercent, ChecklistCompleted, Remarks, AuditTrailID) VALUES (1, 10, '2023-03-01', Day, 401, Lobby, 2000, Mopping, Clorox, 0.1, 120, 501, 95, None, None, Mop, 10, 22.5, 45.0, 1, None, 9001);
INSERT INTO FacilityCleaningLog (LogID, FacilityID, CleaningDate, Shift, CleanerID, AreaCovered, SquareFeet, CleaningMethod, DisinfectantUsed, DisinfectantConcentration, DurationMinutes, SupervisorID, InspectionScore, IssuesFound, FollowUpAction, EquipmentUsed, SuppliesConsumed, TemperatureC, HumidityPercent, ChecklistCompleted, Remarks, AuditTrailID) VALUES (2, 11, '2023-03-01', Night, 402, ICU, 1500, Wiping, Betadine, 0.05, 90, 502, 88, Spill, Clean spill, Cloth, 8, 21.0, 50.0, 1, None, 9002);
INSERT INTO FacilityCleaningLog (LogID, FacilityID, CleaningDate, Shift, CleanerID, AreaCovered, SquareFeet, CleaningMethod, DisinfectantUsed, DisinfectantConcentration, DurationMinutes, SupervisorID, InspectionScore, IssuesFound, FollowUpAction, EquipmentUsed, SuppliesConsumed, TemperatureC, HumidityPercent, ChecklistCompleted, Remarks, AuditTrailID) VALUES (3, 12, '2023-03-02', Day, 403, OperatingRoom, 800, UV, None, 0.0, 60, 503, 99, None, None, UVLight, 5, 20.0, 40.0, 1, None, 9003);

-- Patient Transport Log
CREATE TABLE PatientTransportLog (
    TransportID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    RequestDate DATE,
    TransportDate DATE,
    OriginLocation TEXT,
    DestinationLocation TEXT,
    TransportMode TEXT,
    VehicleID INTEGER,
    DriverID INTEGER,
    EstimatedDurationMinutes INTEGER,
    ActualDurationMinutes INTEGER,
    DistanceKm REAL,
    ReasonForTransport TEXT,
    AccompaniedByStaff INTEGER,
    StaffID INTEGER,
    Status TEXT,
    CancellationReason TEXT,
    PriorityLevel INTEGER,
    Notes TEXT,
    FollowUpRequired INTEGER,
    CreatedBy INTEGER,
    UpdatedBy INTEGER
);

INSERT INTO PatientTransportLog (TransportID, PatientID, RequestDate, TransportDate, OriginLocation, DestinationLocation, TransportMode, VehicleID, DriverID, EstimatedDurationMinutes, ActualDurationMinutes, DistanceKm, ReasonForTransport, AccompaniedByStaff, StaffID, Status, CancellationReason, PriorityLevel, Notes, FollowUpRequired, CreatedBy, UpdatedBy) VALUES (1, 1001, '2023-03-01', '2023-03-01', WardA, Radiology, Stretcher, 1, 201, 15, 20, 2.5, Imaging, 1, 301, Completed, None, 2, None, 0, 401, 401);
INSERT INTO PatientTransportLog (TransportID, PatientID, RequestDate, TransportDate, OriginLocation, DestinationLocation, TransportMode, VehicleID, DriverID, EstimatedDurationMinutes, ActualDurationMinutes, DistanceKm, ReasonForTransport, AccompaniedByStaff, StaffID, Status, CancellationReason, PriorityLevel, Notes, FollowUpRequired, CreatedBy, UpdatedBy) VALUES (2, 1002, '2023-03-02', '2023-03-02', ICU, Surgery, Wheelchair, 2, 202, 10, 12, 1.0, PreOp, 0, None, Cancelled, PatientNoShow, 1, None, 0, 402, 402);
INSERT INTO PatientTransportLog (TransportID, PatientID, RequestDate, TransportDate, OriginLocation, DestinationLocation, TransportMode, VehicleID, DriverID, EstimatedDurationMinutes, ActualDurationMinutes, DistanceKm, ReasonForTransport, AccompaniedByStaff, StaffID, Status, CancellationReason, PriorityLevel, Notes, FollowUpRequired, CreatedBy, UpdatedBy) VALUES (3, 1003, '2023-03-03', '2023-03-03', WardB, Discharge, Stretcher, 3, 203, 25, 30, 5.0, Discharge, 1, 302, Completed, None, 3, None, 1, 403, 403);

-- Pharmacy Inventory Audit
CREATE TABLE PharmacyInventoryAudit (
    AuditID INTEGER PRIMARY KEY,
    PharmacyID INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    MedicationCategory TEXT,
    MedicationID INTEGER,
    BatchNumber TEXT,
    ExpiryDate DATE,
    QuantityOnHand INTEGER,
    PhysicalCount INTEGER,
    Discrepancy INTEGER,
    ReasonForDiscrepancy TEXT,
    AdjustedQuantity INTEGER,
    AdjustmentReason TEXT,
    ApprovalStatus TEXT,
    Comments TEXT,
    LocationShelf TEXT,
    TemperatureControlled INTEGER,
    AuditScore INTEGER,
    FollowUpAction TEXT,
    DocumentReference TEXT,
    CreatedTimestamp DATE
);

INSERT INTO PharmacyInventoryAudit (AuditID, PharmacyID, AuditDate, AuditorName, MedicationCategory, MedicationID, BatchNumber, ExpiryDate, QuantityOnHand, PhysicalCount, Discrepancy, ReasonForDiscrepancy, AdjustedQuantity, AdjustmentReason, ApprovalStatus, Comments, LocationShelf, TemperatureControlled, AuditScore, FollowUpAction, DocumentReference, CreatedTimestamp) VALUES (1, 1, '2023-03-01', Alice, Analgesic, 2001, B123, '2024-12-31', 100, 98, -2, Damaged, 98, WriteOff, Approved, None, A1, 1, 92, Reorder, DOC001, '2023-03-01');
INSERT INTO PharmacyInventoryAudit (AuditID, PharmacyID, AuditDate, AuditorName, MedicationCategory, MedicationID, BatchNumber, ExpiryDate, QuantityOnHand, PhysicalCount, Discrepancy, ReasonForDiscrepancy, AdjustedQuantity, AdjustmentReason, ApprovalStatus, Comments, LocationShelf, TemperatureControlled, AuditScore, FollowUpAction, DocumentReference, CreatedTimestamp) VALUES (2, 1, '2023-03-02', Bob, Antibiotic, 2002, B124, '2023-09-30', 50, 55, 5, CountError, 50, Correction, Pending, None, B2, 1, 88, VerifyCounts, DOC002, '2023-03-02');
INSERT INTO PharmacyInventoryAudit (AuditID, PharmacyID, AuditDate, AuditorName, MedicationCategory, MedicationID, BatchNumber, ExpiryDate, QuantityOnHand, PhysicalCount, Discrepancy, ReasonForDiscrepancy, AdjustedQuantity, AdjustmentReason, ApprovalStatus, Comments, LocationShelf, TemperatureControlled, AuditScore, FollowUpAction, DocumentReference, CreatedTimestamp) VALUES (3, 2, '2023-03-03', Carol, Vaccine, 2003, B125, '2025-06-15', 200, 200, 0, None, 200, None, Approved, None, C3, 1, 95, None, DOC003, '2023-03-03');

-- Clinical Trial Site
CREATE TABLE ClinicalTrialSite (
    SiteID INTEGER PRIMARY KEY,
    SiteName TEXT,
    Institution TEXT,
    City TEXT,
    State TEXT,
    Country TEXT,
    IRBNumber TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    FacilityType TEXT,
    BedCount INTEGER,
    ResearchStaffCount INTEGER,
    EnrollmentCapacity INTEGER,
    StartDate DATE,
    EndDate DATE,
    ActiveFlag INTEGER,
    Accreditation TEXT,
    FundingSource TEXT,
    SiteRating INTEGER,
    LastInspectionDate DATE,
    Notes TEXT,
    SiteCode TEXT
);

INSERT INTO ClinicalTrialSite (SiteID, SiteName, Institution, City, State, Country, IRBNumber, ContactPerson, ContactPhone, ContactEmail, FacilityType, BedCount, ResearchStaffCount, EnrollmentCapacity, StartDate, EndDate, ActiveFlag, Accreditation, FundingSource, SiteRating, LastInspectionDate, Notes, SiteCode) VALUES (1, HeartStudyCenter, MedUniversity, Boston, MA, USA, IRB1001, JohnDoe, 6175551234, johndoe@meduni.edu, Hospital, 250, 20, 500, '2022-01-01', '2025-12-31', 1, CC1, Grant, 5, '2023-02-15', None, HS001);
INSERT INTO ClinicalTrialSite (SiteID, SiteName, Institution, City, State, Country, IRBNumber, ContactPerson, ContactPhone, ContactEmail, FacilityType, BedCount, ResearchStaffCount, EnrollmentCapacity, StartDate, EndDate, ActiveFlag, Accreditation, FundingSource, SiteRating, LastInspectionDate, Notes, SiteCode) VALUES (2, OncologyHub, CancerInstitute, Chicago, IL, USA, IRB2002, JaneSmith, 3125555678, janesmith@cancerinst.org, ResearchCenter, 100, 15, 300, '2021-06-01', '2024-05-31', 1, CC2, Industry, 4, '2023-01-20', None, ON002);
INSERT INTO ClinicalTrialSite (SiteID, SiteName, Institution, City, State, Country, IRBNumber, ContactPerson, ContactPhone, ContactEmail, FacilityType, BedCount, ResearchStaffCount, EnrollmentCapacity, StartDate, EndDate, ActiveFlag, Accreditation, FundingSource, SiteRating, LastInspectionDate, Notes, SiteCode) VALUES (3, PediatricNetwork, ChildrenHospital, Seattle, WA, USA, IRB3003, MikeLee, 2065557890, mlee@children.org, Hospital, 80, 10, 200, '2023-03-01', '2026-02-28', 1, CC3, Government, 5, '2023-03-05', None, PN003);

-- Research Biobank
CREATE TABLE ResearchBiobank (
    BiobankID INTEGER PRIMARY KEY,
    SampleType TEXT,
    CollectionDate DATE,
    DonorID INTEGER,
    VolumeML REAL,
    StorageTemperatureC REAL,
    ContainerID TEXT,
    RackPosition TEXT,
    ConsentGiven INTEGER,
    ProcessingLab TEXT,
    ProcessedBy INTEGER,
    QCStatus TEXT,
    FreezeThawCycles INTEGER,
    AliquotCount INTEGER,
    ExpirationDate DATE,
    BatchNumber TEXT,
    ProjectCode TEXT,
    AvailabilityFlag INTEGER,
    RetrievalCount INTEGER,
    LastAccessed DATE,
    Notes TEXT,
    DataAccessLevel TEXT
);

INSERT INTO ResearchBiobank (BiobankID, SampleType, CollectionDate, DonorID, VolumeML, StorageTemperatureC, ContainerID, RackPosition, ConsentGiven, ProcessingLab, ProcessedBy, QCStatus, FreezeThawCycles, AliquotCount, ExpirationDate, BatchNumber, ProjectCode, AvailabilityFlag, RetrievalCount, LastAccessed, Notes, DataAccessLevel) VALUES (1, Blood, '2023-02-15', 5001, 5.0, -80.0, C001, R01, 1, LabA, 601, Pass, 0, 10, '2025-02-15', BATCH01, PROJX, 1, 0, '2023-03-01', None, Restricted);
INSERT INTO ResearchBiobank (BiobankID, SampleType, CollectionDate, DonorID, VolumeML, StorageTemperatureC, ContainerID, RackPosition, ConsentGiven, ProcessingLab, ProcessedBy, QCStatus, FreezeThawCycles, AliquotCount, ExpirationDate, BatchNumber, ProjectCode, AvailabilityFlag, RetrievalCount, LastAccessed, Notes, DataAccessLevel) VALUES (2, Tissue, '2023-01-20', 5002, 2.5, -80.0, C002, R02, 1, LabB, 602, Pass, 1, 5, '2024-01-20', BATCH02, PROJY, 1, 1, '2023-03-02', None, Open);
INSERT INTO ResearchBiobank (BiobankID, SampleType, CollectionDate, DonorID, VolumeML, StorageTemperatureC, ContainerID, RackPosition, ConsentGiven, ProcessingLab, ProcessedBy, QCStatus, FreezeThawCycles, AliquotCount, ExpirationDate, BatchNumber, ProjectCode, AvailabilityFlag, RetrievalCount, LastAccessed, Notes, DataAccessLevel) VALUES (3, Saliva, '2023-03-01', 5003, 1.0, -20.0, C003, R03, 1, LabC, 603, Pass, 0, 2, '2025-03-01', BATCH03, PROJZ, 1, 0, '2023-03-03', None, Restricted);

-- Health Economics Metric
CREATE TABLE HealthEconomicsMetric (
    MetricID INTEGER PRIMARY KEY,
    MetricName TEXT,
    CalculationDate DATE,
    Value REAL,
    Unit TEXT,
    Department TEXT,
    CostCenter TEXT,
    FiscalYear INTEGER,
    Quarter INTEGER,
    SourceSystem TEXT,
    DataQualityScore INTEGER,
    AnalystID INTEGER,
    ReviewStatus TEXT,
    Comments TEXT,
    BenchmarkValue REAL,
    DeviationPercent REAL,
    ProjectionFlag INTEGER,
    Scenario TEXT,
    SensitivityScore INTEGER,
    RegulatoryImpact TEXT,
    UpdatedBy INTEGER,
    UpdateTimestamp DATE
);

INSERT INTO HealthEconomicsMetric (MetricID, MetricName, CalculationDate, Value, Unit, Department, CostCenter, FiscalYear, Quarter, SourceSystem, DataQualityScore, AnalystID, ReviewStatus, Comments, BenchmarkValue, DeviationPercent, ProjectionFlag, Scenario, SensitivityScore, RegulatoryImpact, UpdatedBy, UpdateTimestamp) VALUES (1, AvgLengthOfStay, '2023-03-01', 4.2, Days, Inpatient, CC01, 2023, 1, ERP, 95, 701, Approved, None, 4.0, 5.0, 0, Base, 80, Low, 801, '2023-03-01');
INSERT INTO HealthEconomicsMetric (MetricID, MetricName, CalculationDate, Value, Unit, Department, CostCenter, FiscalYear, Quarter, SourceSystem, DataQualityScore, AnalystID, ReviewStatus, Comments, BenchmarkValue, DeviationPercent, ProjectionFlag, Scenario, SensitivityScore, RegulatoryImpact, UpdatedBy, UpdateTimestamp) VALUES (2, ReadmissionRate, '2023-03-01', 12.5, Percent, Outpatient, CC02, 2023, 1, BI, 88, 702, Pending, None, 10.0, 25.0, 1, ScenarioA, 70, Medium, 802, '2023-03-01');
INSERT INTO HealthEconomicsMetric (MetricID, MetricName, CalculationDate, Value, Unit, Department, CostCenter, FiscalYear, Quarter, SourceSystem, DataQualityScore, AnalystID, ReviewStatus, Comments, BenchmarkValue, DeviationPercent, ProjectionFlag, Scenario, SensitivityScore, RegulatoryImpact, UpdatedBy, UpdateTimestamp) VALUES (3, CostPerCase, '2023-03-01', 3500.00, USD, Surgery, CC03, 2023, 1, Finance, 92, 703, Approved, None, 3000.00, 16.7, 0, Base, 85, Low, 803, '2023-03-01');

-- Supply Chain Shipment
CREATE TABLE SupplyChainShipment (
    ShipmentID INTEGER PRIMARY KEY,
    VendorID INTEGER,
    ShipmentDate DATE,
    ExpectedArrivalDate DATE,
    ActualArrivalDate DATE,
    CarrierName TEXT,
    TrackingNumber TEXT,
    ItemsShipped INTEGER,
    TotalWeightKG REAL,
    VolumeCubicM REAL,
    ShippingCost REAL,
    DestinationFacilityID INTEGER,
    ReceivedBy INTEGER,
    InspectionStatus TEXT,
    DiscrepancyFlag INTEGER,
    DamageNotes TEXT,
    TemperatureLogFlag INTEGER,
    SealIntact INTEGER,
    PaymentStatus TEXT,
    InvoiceNumber TEXT,
    Comments TEXT,
    CreatedTimestamp DATE
);

INSERT INTO SupplyChainShipment (ShipmentID, VendorID, ShipmentDate, ExpectedArrivalDate, ActualArrivalDate, CarrierName, TrackingNumber, ItemsShipped, TotalWeightKG, VolumeCubicM, ShippingCost, DestinationFacilityID, ReceivedBy, InspectionStatus, DiscrepancyFlag, DamageNotes, TemperatureLogFlag, SealIntact, PaymentStatus, InvoiceNumber, Comments, CreatedTimestamp) VALUES (1, 9001, '2023-02-20', '2023-02-25', '2023-02-24', FastShip, TRK12345, 100, 500.0, 2.5, 1500.00, 10, 301, Passed, 0, None, 1, 1, Paid, INV1001, None, '2023-02-20');
INSERT INTO SupplyChainShipment (ShipmentID, VendorID, ShipmentDate, ExpectedArrivalDate, ActualArrivalDate, CarrierName, TrackingNumber, ItemsShipped, TotalWeightKG, VolumeCubicM, ShippingCost, DestinationFacilityID, ReceivedBy, InspectionStatus, DiscrepancyFlag, DamageNotes, TemperatureLogFlag, SealIntact, PaymentStatus, InvoiceNumber, Comments, CreatedTimestamp) VALUES (2, 9002, '2023-02-22', '2023-02-27', '2023-02-28', QuickLogistics, TRK67890, 50, 200.0, 1.0, 800.00, 11, 302, Failed, 1, BrokenSeal, 0, 0, Pending, INV1002, Reorder, '2023-02-22');
INSERT INTO SupplyChainShipment (ShipmentID, VendorID, ShipmentDate, ExpectedArrivalDate, ActualArrivalDate, CarrierName, TrackingNumber, ItemsShipped, TotalWeightKG, VolumeCubicM, ShippingCost, DestinationFacilityID, ReceivedBy, InspectionStatus, DiscrepancyFlag, DamageNotes, TemperatureLogFlag, SealIntact, PaymentStatus, InvoiceNumber, Comments, CreatedTimestamp) VALUES (3, 9003, '2023-02-25', '2023-03-01', '2023-02-27', GlobalFreight, TRK54321, 200, 1200.0, 5.0, 2500.00, 12, 303, Passed, 0, None, 1, 1, Paid, INV1003, None, '2023-02-25');

-- Community Outreach Event
CREATE TABLE CommunityOutreachEvent (
    EventID INTEGER PRIMARY KEY,
    EventName TEXT,
    EventDate DATE,
    Location TEXT,
    Organizer TEXT,
    TargetPopulation TEXT,
    ExpectedAttendance INTEGER,
    ActualAttendance INTEGER,
    ActivitiesConducted TEXT,
    MaterialsDistributed INTEGER,
    BudgetAllocated REAL,
    BudgetSpent REAL,
    FundingSource TEXT,
    PartnerOrganizations TEXT,
    MediaCoverageFlag INTEGER,
    FeedbackScore INTEGER,
    FollowUpActions TEXT,
    RegistrationRequired INTEGER,
    RegistrationDeadline DATE,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Notes TEXT
);

INSERT INTO CommunityOutreachEvent (EventID, EventName, EventDate, Location, Organizer, TargetPopulation, ExpectedAttendance, ActualAttendance, ActivitiesConducted, MaterialsDistributed, BudgetAllocated, BudgetSpent, FundingSource, PartnerOrganizations, MediaCoverageFlag, FeedbackScore, FollowUpActions, RegistrationRequired, RegistrationDeadline, ContactPhone, ContactEmail, Notes) VALUES (1, HealthFair2023, '2023-04-10', CommunityCenter, CityHealthDept, GeneralPublic, 500, 470, Screenings, 300, 20000.00, 18500.00, CityGrant, LocalNGO, 1, 85, SendSurveys, 0, None, 5551234567, info@cityhealth.org, None);
INSERT INTO CommunityOutreachEvent (EventID, EventName, EventDate, Location, Organizer, TargetPopulation, ExpectedAttendance, ActualAttendance, ActivitiesConducted, MaterialsDistributed, BudgetAllocated, BudgetSpent, FundingSource, PartnerOrganizations, MediaCoverageFlag, FeedbackScore, FollowUpActions, RegistrationRequired, RegistrationDeadline, ContactPhone, ContactEmail, Notes) VALUES (2, DiabetesWorkshop, '2023-05-15', LibraryHall, DiabetesAssoc, Adults, 200, 190, Lectures, 150, 10000.00, 9500.00, PrivateDonor, HospitalPartners, 0, 78, ProvideHandouts, 1, '2023-05-01', 5559876543, contact@diabetes.org, None);
INSERT INTO CommunityOutreachEvent (EventID, EventName, EventDate, Location, Organizer, TargetPopulation, ExpectedAttendance, ActualAttendance, ActivitiesConducted, MaterialsDistributed, BudgetAllocated, BudgetSpent, FundingSource, PartnerOrganizations, MediaCoverageFlag, FeedbackScore, FollowUpActions, RegistrationRequired, RegistrationDeadline, ContactPhone, ContactEmail, Notes) VALUES (3, SeniorFitnessDay, '2023-06-20', SeniorCenter, WellnessGroup, Seniors, 150, 140, Exercises, 100, 8000.00, 7500.00, Grant, CommunityClub, 1, 90, ScheduleClasses, 0, None, 5552223333, senior@wellness.org, None);