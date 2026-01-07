-- ClinicalResearchFundingSource
CREATE TABLE ClinicalResearchFundingSource (
    FundingID INTEGER,
    SourceName TEXT,
    GrantNumber TEXT,
    FundingAgency TEXT,
    StartDate DATE,
    EndDate DATE,
    TotalAmount REAL,
    Currency TEXT,
    AwardStatus TEXT,
    ProgramArea TEXT,
    EligibleCategories TEXT,
    MatchingRequirement REAL,
    ContactPerson TEXT,
    ContactEmail TEXT,
    ContactPhone TEXT,
    FundingType TEXT,
    ReviewScore INTEGER,
    AllocationMethod TEXT,
    ReportingFrequency TEXT,
    Notes TEXT
);
INSERT INTO ClinicalResearchFundingSource VALUES (1,'NationalHealthInstitute','NIH2023-001','NIH','2023-01-01','2026-12-31',2500000.00,'USD','Awarded','Oncology','Universities',50000.00,'Dr Smith','smith@example.com','5551234567','Federal',95,'Competitive','Annual','Initial award');
INSERT INTO ClinicalResearchFundingSource VALUES (2,'GlobalMedicalFoundation','GMF-2022-12','GMF','2022-06-15','2025-06-14',1500000.00,'USD','Pending','Cardiology','Hospitals',25000.00,'Dr Lee','lee@example.com','5552345678','Private',88,'PeerReview','SemiAnnual','Awaiting final approval');
INSERT INTO ClinicalResearchFundingSource VALUES (3,'StateHealthDept','SHD-2021-09','StateHealthDept','2021-09-01','2024-08-31',800000.00,'USD','Awarded','Neurology','ResearchInstitutes',10000.00,'Dr Patel','patel@example.com','5553456789','Government',90,'Direct','Quarterly','Renewal in 2024');

-- BiomedicalEquipmentMaintenanceSchedule
CREATE TABLE BiomedicalEquipmentMaintenanceSchedule (
    ScheduleID INTEGER,
    EquipmentID INTEGER,
    EquipmentName TEXT,
    MaintenanceType TEXT,
    FrequencyDays INTEGER,
    LastMaintenanceDate DATE,
    NextDueDate DATE,
    ServiceProvider TEXT,
    ServiceContractNumber TEXT,
    EstimatedCost REAL,
    PriorityLevel TEXT,
    RequiredSpareParts TEXT,
    TechnicianAssigned TEXT,
    TechnicianContact TEXT,
    MaintenanceStatus TEXT,
    DocumentationURL TEXT,
    SafetyCheck INTEGER,
    CalibrationRequired INTEGER,
    WarrantyExpiration DATE,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);
INSERT INTO BiomedicalEquipmentMaintenanceSchedule VALUES (101,2001,'MRI Scanner','Preventive',180,'2023-03-01','2023-08-28','MediTech Services','MT-3421',12000.00,'High','CoolingUnit,MagnetCoil','John Doe','5559876543','Completed','http://docs.example.com/mri101','1','1','2025-12-31','Routine check','2023-03-01','2023-03-01');
INSERT INTO BiomedicalEquipmentMaintenanceSchedule VALUES (102,2002,'CT Scanner','Calibration',90,'2023-04-15','2023-07-14','HealthEquip Co','HE-5510',5000.00,'Medium','XRayTube','Jane Smith','5558765432','Scheduled','http://docs.example.com/ct102','1','1','2024-06-30','Quarterly calibration','2023-04-15','2023-04-15');
INSERT INTO BiomedicalEquipmentMaintenanceSchedule VALUES (103,2003,'Ventilator','Repair',365,'2022-12-20','2024-12-20','LifeSupport Ltd','LS-7788',3000.00,'Critical','AirFilter','Mike Brown','5557654321','InProgress','http://docs.example.com/vent103','1','0','2023-12-31','Emergency repair due to alarm','2022-12-20','2023-01-10');

-- HospitalEnergyConsumptionLog
CREATE TABLE HospitalEnergyConsumptionLog (
    LogID INTEGER,
    FacilityID INTEGER,
    Date DATE,
    EnergySource TEXT,
    ConsumptionKWh REAL,
    CostUSD REAL,
    PeakDemandKW REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    CO2EmissionsKg REAL,
    RenewablePercentage REAL,
    GridStatus TEXT,
    MeterReadingStart REAL,
    MeterReadingEnd REAL,
    OperatorName TEXT,
    Shift TEXT,
    MaintenanceFlag INTEGER,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    RecordVersion INTEGER
);
INSERT INTO HospitalEnergyConsumptionLog VALUES (1001,10,'2023-07-01','Electric','15000.5',1800.75,350.2,22.5,45.0,12000.0,20.5,'Normal',50000.0,65000.5,'Alice Green','Day','0','No incidents','2023-07-01','2023-07-01',1);
INSERT INTO HospitalEnergyConsumptionLog VALUES (1002,10,'2023-07-02','Electric','15520.3',1862.10,360.0,23.0,44.0,12400.5,21.0,'Normal',65000.5,80520.8,'Bob White','Night','0','Slight increase due to HVAC','2023-07-02','2023-07-02',1);
INSERT INTO HospitalEnergyConsumptionLog VALUES (1003,10,'2023-07-03','Solar','14000.0',1680.00,340.5,21.8,46.2,11200.0,22.0','Normal',80520.8,94520.8,'Carol Black','Day','0','Solar contribution higher today','2023-07-03','2023-07-03',1);

-- PatientTransportationMode
CREATE TABLE PatientTransportationMode (
    TransportID INTEGER,
    PatientID INTEGER,
    TransportDate DATE,
    Mode TEXT,
    Provider TEXT,
    DistanceKm REAL,
    DurationMinutes INTEGER,
    CostUSD REAL,
    VehicleID TEXT,
    DriverName TEXT,
    DriverContact TEXT,
    InsuranceCovered INTEGER,
    Reason TEXT,
    DepartureLocation TEXT,
    ArrivalLocation TEXT,
    AccessibilityNeeds TEXT,
    Scheduled INTEGER,
    ActualDepartureTime TEXT,
    ActualArrivalTime TEXT,
    Notes TEXT
);
INSERT INTO PatientTransportationMode VALUES (5001,301,'2023-06-20','Ambulance','City Ambulance','12.5',30,250.00,'AMB-01','Tom Reed','5551122334','1','Routine check','Main Entrance','Imaging Dept','Wheelchair','1','08:00','08:30','Transport for MRI');
INSERT INTO PatientTransportationMode VALUES (5002,302,'2023-06-22','Wheelchair Van','Health Transport','5.0',15,100.00,'WV-07','Linda Gray','5552233445','1','Follow-up visit','Ward 3','Physical Therapy','None','1','09:15','09:30','Transport for PT session');
INSERT INTO PatientTransportationMode VALUES (5003,303,'2023-06-25','Taxi','RideShareX','18.2',25,75.00,'TX-22','Sam Lee','5553344556','0','Discharge','Room 210','Main Lobby','Stretcher','0','14:00','14:25','Patient discharged with family');

-- MedicalSupplyExpirationSchedule
CREATE TABLE MedicalSupplyExpirationSchedule (
    SupplyID INTEGER,
    ItemName TEXT,
    BatchNumber TEXT,
    ExpirationDate DATE,
    ReceivedDate DATE,
    Quantity INTEGER,
    Unit TEXT,
    StorageLocation TEXT,
    TemperatureRequirement TEXT,
    SupplierName TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ShelfLifeDays INTEGER,
    DaysToExpire INTEGER,
    Status TEXT,
    LastInspectionDate DATE,
    InspectorName TEXT,
    DisposalMethod TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    RecordVersion INTEGER
);
INSERT INTO MedicalSupplyExpirationSchedule VALUES (20001,'Heparin','HEP-2023-001','2024-12-31','2023-01-15',500,'vials','Pharmacy ColdRoom','2-8C','PharmaCorp','Emily Stone','5554433221',730,487,'Active','2023-06-01','Mark Davis','Return to Supplier','Batch in good condition','2023-01-15','2023-06-01',1);
INSERT INTO MedicalSupplyExpirationSchedule VALUES (20002,'Insulin','INS-2023-045','2024-03-15','2023-02-20',200,'vials','Pharmacy ColdRoom','2-8C','HealthMeds','David Clark','5555544332',450,254,'Active','2023-06-10','Anna Lee','Dispose as Hazardous','Checked temperature logs','2023-02-20','2023-06-10',1);
INSERT INTO MedicalSupplyExpirationSchedule VALUES (20003,'Surgical Gloves','GLV-2023-A12','2025-07-01','2023-03-05',1500,'pairs','Supply Closet','RoomTemp','MedSupplies Inc','Rachel Green','5556655443',730,976,'Active','2023-05-20','Laura Kim','Recycle','Packaging intact','2023-03-05','2023-05-20',1);

-- StaffCompetencyAssessmentRecord
CREATE TABLE StaffCompetencyAssessmentRecord (
    AssessmentID INTEGER,
    StaffID INTEGER,
    StaffName TEXT,
    Department TEXT,
    AssessmentDate DATE,
    CompetencyArea TEXT,
    Level INTEGER,
    Score REAL,
    Pass INTEGER,
    AssessorName TEXT,
    AssessorRole TEXT,
    Comments TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    TrainingRecommended TEXT,
    CertificationNumber TEXT,
    ValidUntil DATE,
    CreatedAt DATE,
    UpdatedAt DATE,
    RecordStatus TEXT
);
INSERT INTO StaffCompetencyAssessmentRecord VALUES (3001,401,'Nurse Amy','Emergency','2023-04-15','IV Therapy',3,88.5,1,'Dr Wilson','Chief Nurse','Good technique','0',NULL,'Advanced IV Course','CERT-IV-2023','2025-04-15','2023-04-15','2023-04-15','Active');
INSERT INTO StaffCompetencyAssessmentRecord VALUES (3002,402,'Tech Brian','Radiology','2023-05-10','MRI Operation',2,72.0,0,'Dr Patel','Radiology Manager','Needs improvement in safety protocols','1','2023-06-01','MRI Safety Workshop','CERT-MRI-2022','2024-05-10','2023-05-10','2023-05-10','Pending Follow-up');
INSERT INTO StaffCompetencyAssessmentRecord VALUES (3003,403,'Physician Carol','Cardiology','2023-03-20','Echocardiography',4,95.0,1,'Dr Lee','Head of Cardiology','Excellent performance','0',NULL,'N/A','CERT-ECHO-2021','2026-03-20','2023-03-20','2023-03-20','Active');

-- FacilityEnvironmentalAudit
CREATE TABLE FacilityEnvironmentalAudit (
    AuditID INTEGER,
    FacilityID INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    AuditorContact TEXT,
    AreaInspected TEXT,
    Findings TEXT,
    SeverityLevel TEXT,
    Recommendations TEXT,
    ComplianceScore INTEGER,
    FollowUpDate DATE,
    FollowUpStatus TEXT,
    CorrectiveActionTaken TEXT,
    DocumentationLink TEXT,
    EnergyUsageKWh REAL,
    WaterUsageLiters REAL,
    WasteGeneratedKg REAL,
    AirQualityIndex INTEGER,
    NoiseLevelDb REAL,
    Notes TEXT,
    CreatedAt DATE
);
INSERT INTO FacilityEnvironmentalAudit VALUES (4001,10,'2023-02-12','Laura Miller','5557788990','HVAC System','Filters overdue','High','Replace filters within 2 weeks',70,'2023-02-26','In Progress','Filters ordered','http://audit.example.com/4001','12000.5','350000','450','42','55.0','Urgent due to air quality concerns','2023-02-12');
INSERT INTO FacilityEnvironmentalAudit VALUES (4002,11,'2023-03-05','Mark Spencer','5558899001','Laboratory','Improper chemical storage','Medium','Reorganize shelves and label containers',85,'2023-03-20','Planned','Safety signage installed','http://audit.example.com/4002','8000.0','210000','300','38','48.0','Follow-up scheduled','2023-03-05');
INSERT INTO FacilityEnvironmentalAudit VALUES (4003,12,'2023-04-18','Emily Davis','5559900112','Waste Management','Recycling bins missing','Low','Add recycling bins to each wing',92,'2023-05-02','Completed','Bins placed, staff notified','http://audit.example.com/4003','9500.3','275000','380','40','50.0','No further action needed','2023-04-18');

-- PharmacyColdChainTemperatureLog
CREATE TABLE PharmacyColdChainTemperatureLog (
    LogID INTEGER,
    ProductID INTEGER,
    BatchNumber TEXT,
    StorageUnitID TEXT,
    TemperatureC REAL,
    RecordedAt TEXT,
    RecordedBy TEXT,
    DeviationFlag INTEGER,
    DeviationDetails TEXT,
    ActionTaken TEXT,
    SupervisorApproval INTEGER,
    Comments TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    SensorID TEXT,
    CalibrationDate DATE,
    AlertThresholdLow REAL,
    AlertThresholdHigh REAL,
    Location TEXT,
    Status TEXT,
    RecordVersion INTEGER,
    NextScheduledCheck DATE
);
INSERT INTO PharmacyColdChainTemperatureLog VALUES (6001,7001,'BCH-2023-09','SU-01',4.2,'2023-06-20 08:00','Alice Green',0,'','Logged as normal',1,'All good','2023-06-20','2023-06-20','SEN-01','2023-01-15',2.0,8.0,'Main Pharmacy','Active',1,'2023-06-21');
INSERT INTO PharmacyColdChainTemperatureLog VALUES (6002,7002,'BCH-2023-10','SU-02',9.5,'2023-06-20 09:15','Bob White',1,'Temp exceeded high threshold','Moved to backup unit',1,'Temp normalized after relocation','2023-06-20','2023-06-20','SEN-02','2023-02-20',2.0,8.0,'Cold Storage B','Alert',2,'2023-06-21');
INSERT INTO PharmacyColdChainTemperatureLog VALUES (6003,7003,'BCH-2023-11','SU-03',1.8,'2023-06-20 10:30','Carol Black',0,'','',1,'','2023-06-20','2023-06-20','SEN-03','2023-03-10',2.0,8.0,'Vaccines Area','Active',1,'2023-06-21');

-- ImagingDeviceCalibrationRecord
CREATE TABLE ImagingDeviceCalibrationRecord (
    CalibrationID INTEGER,
    DeviceID INTEGER,
    DeviceName TEXT,
    CalibrationDate DATE,
    TechnicianName TEXT,
    TechnicianContact TEXT,
    CalibrationType TEXT,
    StandardUsed TEXT,
    ResultStatus TEXT,
    FrequencyDays INTEGER,
    NextDueDate DATE,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    CalibrationCertificateURL TEXT,
    IsApproved INTEGER,
    DeviationObserved INTEGER,
    DeviationDetails TEXT,
    Department TEXT,
    RecordVersion INTEGER
);
INSERT INTO ImagingDeviceCalibrationRecord VALUES (8001,9001,'XRay Machine','2023-05-10','David Kim','5556677889','Full','ISO 4037','Pass',365,'2024-05-10','Routine full calibration','2023-05-10','2023-05-10','http://calib.example.com/8001',1,0,'','Radiology',1);
INSERT INTO ImagingDeviceCalibrationRecord VALUES (8002,9002,'CT Scanner','2023-04-22','Emily Chen','5557788991','Partial','AAPM 302','Pass',180,'2023-10-19','Partial calibration of detector','2023-04-22','2023-04-22','http://calib.example.com/8002',1,0,'','Radiology',1);
INSERT INTO ImagingDeviceCalibrationRecord VALUES (8003,9003,'Ultrasound Probe','2023-06-01','Frank Liu','5558899002','Full','IEC 60601','Fail',365,'2024-06-01','Failed due to gain mismatch','2023-06-01','2023-06-01','http://calib.example.com/8003',0,1,'Gain outside acceptable range','Cardiology',1);

-- PublicHealthOutreachMetric
CREATE TABLE PublicHealthOutreachMetric (
    MetricID INTEGER,
    CampaignName TEXT,
    StartDate DATE,
    EndDate DATE,
    TargetPopulation TEXT,
    ReachCount INTEGER,
    EngagementCount INTEGER,
    MaterialsDistributed INTEGER,
    EventsHeld INTEGER,
    VolunteersInvolved INTEGER,
    CostUSD REAL,
    OutcomeSummary TEXT,
    FeedbackScore REAL,
    MediaImpressions INTEGER,
    SocialMediaShares INTEGER,
    PartnerOrganizations TEXT,
    Region TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    RecordStatus TEXT
);
INSERT INTO PublicHealthOutreachMetric VALUES (9001,'FluVaccination2023','2023-09-01','2023-12-31','Adults 65+','15000','12000','20000','45','300','75000.00','Increased vaccination rates by 12%','4.5','500000','12000','LocalHospitals;CommunityCenters','Midwest','Campaign executed successfully','2023-09-01','2023-12-31','Completed');
INSERT INTO PublicHealthOutreachMetric VALUES (9002,'HeartHealthAwareness','2023-03-01','2023-05-31','Adults 40-60','8000','6000','15000','20','150','42000.00','Improved awareness measured by survey','4.2','250000','6000','CardiologySociety;EmployersAssoc','Northeast','Moderate media coverage','2023-03-01','2023-05-31','Completed');
INSERT INTO PublicHealthOutreachMetric VALUES (9003,'DiabetesScreeningDrive','2023-07-15','2023-08-31','Adults 30-70','5000','4000','8000','10','80','31000.00','Identified 350 new pre-diabetes cases','4.7','180000','3000','HealthDept;LocalClinics','Southwest','High community engagement','2023-07-15','2023-08-31','Ongoing');