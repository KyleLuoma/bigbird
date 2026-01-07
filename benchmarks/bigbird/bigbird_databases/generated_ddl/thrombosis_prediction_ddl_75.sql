-- Clinical Metrics Summary
CREATE TABLE ClinicalMetricsSummary (
    MetricID INTEGER PRIMARY KEY,
    MetricName TEXT,
    ReportingPeriod DATE,
    AvgValue REAL,
    StdDev REAL,
    MinValue REAL,
    MaxValue REAL,
    Unit TEXT,
    Department TEXT,
    RecordedAt TEXT,
    DataSource TEXT,
    ObservationCount INTEGER,
    TrendDirection TEXT,
    TargetValue REAL,
    Status TEXT,
    Notes TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    IsActive INTEGER,
    Category TEXT
);

INSERT INTO ClinicalMetricsSummary (MetricID,MetricName,ReportingPeriod,AvgValue,StdDev,MinValue,MaxValue,Unit,Department,RecordedAt,DataSource,ObservationCount,TrendDirection,TargetValue,Status,Notes,CreatedDate,UpdatedDate,IsActive,Category) VALUES
(1,'Average Length of Stay','2023-01-01',5.2,1.1,2,9,'days','Inpatient','2023-01-31 08:00:00','EHR',120,'Improving',4.5,'OnTarget','Monthly review','2023-01-01','2023-02-01',1,'Operational');
INSERT INTO ClinicalMetricsSummary (MetricID,MetricName,ReportingPeriod,AvgValue,StdDev,MinValue,MaxValue,Unit,Department,RecordedAt,DataSource,ObservationCount,TrendDirection,TargetValue,Status,Notes,CreatedDate,UpdatedDate,IsActive,Category) VALUES
(2,'Readmission Rate','2023-01-01',0.08,0.02,0.04,0.12,'ratio','Cardiology','2023-01-31 08:00:00','EHR',300,'Stable',0.07,'SlightlyHigh','Quarterly audit','2023-01-01','2023-02-01',1,'Quality');
INSERT INTO ClinicalMetricsSummary (MetricID,MetricName,ReportingPeriod,AvgValue,StdDev,MinValue,MaxValue,Unit,Department,RecordedAt,DataSource,ObservationCount,TrendDirection,TargetValue,Status,Notes,CreatedDate,UpdatedDate,IsActive,Category) VALUES
(3,'Lab Turnaround Time','2023-01-01',2.3,0.5,1.0,4.0,'hours','Laboratory','2023-01-31 08:00:00','LIS',500,'Improving',2.0,'OnTarget','Weekly check','2023-01-01','2023-02-01',1,'Process');

-- Medical Equipment Lifecycle
CREATE TABLE MedicalEquipmentLifecycle (
    EquipmentID INTEGER PRIMARY KEY,
    SerialNumber TEXT,
    Model TEXT,
    Manufacturer TEXT,
    PurchaseDate DATE,
    WarrantyEnd DATE,
    InstallationDate DATE,
    Location TEXT,
    Department TEXT,
    Status TEXT,
    LastMaintenanceDate DATE,
    NextMaintenanceDate DATE,
    MaintenanceIntervalDays INTEGER,
    CalibrationDate DATE,
    CalibrationDueDate DATE,
    DecommissionDate DATE,
    AssetValue REAL,
    DepreciationRate REAL,
    CurrentValue REAL,
    Owner TEXT
);

INSERT INTO MedicalEquipmentLifecycle (EquipmentID,SerialNumber,Model,Manufacturer,PurchaseDate,WarrantyEnd,InstallationDate,Location,Department,Status,LastMaintenanceDate,NextMaintenanceDate,MaintenanceIntervalDays,CalibrationDate,CalibrationDueDate,DecommissionDate,AssetValue,DepreciationRate,CurrentValue,Owner) VALUES
(101,'SN12345','MRI-X200','Siemens','2018-06-15','2023-06-15','2018-07-01','RadiologySuiteA','Radiology','Active','2022-12-01','2023-12-01',365,'2022-12-01','2023-12-01',NULL,1500000,0.1,1350000,'HospitalAssets');
INSERT INTO MedicalEquipmentLifecycle (EquipmentID,SerialNumber,Model,Manufacturer,PurchaseDate,WarrantyEnd,InstallationDate,Location,Department,Status,LastMaintenanceDate,NextMaintenanceDate,MaintenanceIntervalDays,CalibrationDate,CalibrationDueDate,DecommissionDate,AssetValue,DepreciationRate,CurrentValue,Owner) VALUES
(102,'SN67890','Vent-X500','Philips','2020-01-20','2025-01-20','2020-02-05','ICU-3','IntensiveCare','Active','2023-01-15','2023-07-15',180,'2023-01-15','2023-07-15',NULL,85000,0.15,72425,'HospitalAssets');
INSERT INTO MedicalEquipmentLifecycle (EquipmentID,SerialNumber,Model,Manufacturer,PurchaseDate,WarrantyEnd,InstallationDate,Location,Department,Status,LastMaintenanceDate,NextMaintenanceDate,MaintenanceIntervalDays,CalibrationDate,CalibrationDueDate,DecommissionDate,AssetValue,DepreciationRate,CurrentValue,Owner) VALUES
(103,'SN54321','CT-3000','GEHealthcare','2016-09-10','2021-09-10','2016-09-25','RadiologySuiteB','Radiology','Decommissioned','2020-09-10',NULL,365,'2020-09-10',NULL,'2022-03-01',650000,0.12,455000,'HospitalAssets');

-- Facility Energy Profile
CREATE TABLE FacilityEnergyProfile (
    ProfileID INTEGER PRIMARY KEY,
    Year INTEGER,
    Month INTEGER,
    TotalKWh REAL,
    PeakDemandKW REAL,
    AvgDemandKW REAL,
    ElectricityCost REAL,
    GasTherms REAL,
    GasCost REAL,
    WaterGallons REAL,
    WaterCost REAL,
    RenewablePercentage REAL,
    CO2EmissionsKg REAL,
    FacilityAreaSqM REAL,
    EnergyScore INTEGER,
    CreatedOn DATE,
    UpdatedOn DATE,
    Auditor TEXT,
    Remarks TEXT,
    IsVerified INTEGER
);

INSERT INTO FacilityEnergyProfile (ProfileID,Year,Month,TotalKWh,PeakDemandKW,AvgDemandKW,ElectricityCost,GasTherms,GasCost,WaterGallons,WaterCost,RenewablePercentage,CO2EmissionsKg,FacilityAreaSqM,EnergyScore,CreatedOn,UpdatedOn,Auditor,Remarks,IsVerified) VALUES
(1,2023,1,1250000,4800,2100,150000,45000,3000,200000,25000,22.5,900000,85000,85,'2023-02-01','2023-02-15','EnergyTeam','Monthly report',1);
INSERT INTO FacilityEnergyProfile (ProfileID,Year,Month,TotalKWh,PeakDemandKW,AvgDemandKW,ElectricityCost,GasTherms,GasCost,WaterGallons,WaterCost,RenewablePercentage,CO2EmissionsKg,FacilityAreaSqM,EnergyScore,CreatedOn,UpdatedOn,Auditor,Remarks,IsVerified) VALUES
(2,2023,2,1180000,4600,2000,142000,43000,2850,195000,24200,23.0,860000,85000,88,'2023-03-01','2023-03-15','EnergyTeam','Monthly report',1);
INSERT INTO FacilityEnergyProfile (ProfileID,Year,Month,TotalKWh,PeakDemandKW,AvgDemandKW,ElectricityCost,GasTherms,GasCost,WaterGallons,WaterCost,RenewablePercentage,CO2EmissionsKg,FacilityAreaSqM,EnergyScore,CreatedOn,UpdatedOn,Auditor,Remarks,IsVerified) VALUES
(3,2023,3,1225000,4700,2050,147000,44000,2950,198000,24500,22.8,880000,85000,86,'2023-04-01','2023-04-15','EnergyTeam','Monthly report',1);

-- Research Data Catalog
CREATE TABLE ResearchDataCatalog (
    DataSetID INTEGER PRIMARY KEY,
    Title TEXT,
    Description TEXT,
    PrincipalInvestigator TEXT,
    FundingSource TEXT,
    StartDate DATE,
    EndDate DATE,
    DataFormat TEXT,
    SizeGB REAL,
    AccessLevel TEXT,
    DOI TEXT,
    Version INTEGER,
    CreatedOn DATE,
    UpdatedOn DATE,
    IsPublic INTEGER,
    Tags TEXT,
    SampleCount INTEGER,
    VariableCount INTEGER,
    StorageLocation TEXT,
    RetentionPolicy TEXT
);

INSERT INTO ResearchDataCatalog (DataSetID,Title,Description,PrincipalInvestigator,FundingSource,StartDate,EndDate,DataFormat,SizeGB,AccessLevel,DOI,Version,CreatedOn,UpdatedOn,IsPublic,Tags,SampleCount,VariableCount,StorageLocation,RetentionPolicy) VALUES
(1001,'Autoimmune Cohort','Longitudinal data of autoimmune patients','DrSmith','NIH','2019-01-15','2024-12-31','CSV',12.5,'Restricted','10.1000/autoimmune1',2,'2019-01-20','2023-11-01',0,'autoimmune,cohort',3500,45,'/data/autoimmune','5 years');
INSERT INTO ResearchDataCatalog (DataSetID,Title,Description,PrincipalInvestigator,FundingSource,StartDate,EndDate,DataFormat,SizeGB,AccessLevel,DOI,Version,CreatedOn,UpdatedOn,IsPublic,Tags,SampleCount,VariableCount,StorageLocation,RetentionPolicy) VALUES
(1002,'Genomics Sequencing','Whole genome sequencing data','DrLee','GenomeCanada','2020-06-01','2023-06-01','FASTQ',250.0,'Public','10.1000/genomics1',1,'2020-06-15','2023-06-10',1,'genomics,sequencing',120,20000,'/data/genomics','10 years');
INSERT INTO ResearchDataCatalog (DataSetID,Title,Description,PrincipalInvestigator,FundingSource,StartDate,EndDate,DataFormat,SizeGB,AccessLevel,DOI,Version,CreatedOn,UpdatedOn,IsPublic,Tags,SampleCount,VariableCount,StorageLocation,RetentionPolicy) VALUES
(1003,'Clinical Trial Outcomes','Outcome measures from phase III trial','DrPatel','PharmaInc','2021-03-01','2022-12-31','JSON',5.8,'Restricted','10.1000/trial1',3,'2021-03-10','2023-01-05',0,'clinical,trial',800,30,'/data/trials','7 years');

-- Supply Chain Logistics
CREATE TABLE SupplyChainLogistics (
    ShipmentID INTEGER PRIMARY KEY,
    VendorName TEXT,
    OriginFacility TEXT,
    DestinationFacility TEXT,
    DepartureDate DATE,
    ArrivalDate DATE,
    TransportMode TEXT,
    ContainerID TEXT,
    PalletCount INTEGER,
    TotalWeightKG REAL,
    VolumeCBM REAL,
    Carrier TEXT,
    TrackingNumber TEXT,
    Status TEXT,
    EstimatedDelivery DATE,
    ActualDelivery DATE,
    DelayReason TEXT,
    CostUSD REAL,
    TemperatureControlled INTEGER,
    HazardousMaterial INTEGER
);

INSERT INTO SupplyChainLogistics (ShipmentID,VendorName,OriginFacility,DestinationFacility,DepartureDate,ArrivalDate,TransportMode,ContainerID,PalletCount,TotalWeightKG,VolumeCBM,Carrier,TrackingNumber,Status,EstimatedDelivery,ActualDelivery,DelayReason,CostUSD,TemperatureControlled,HazardousMaterial) VALUES
(5001,'MedSuppliesCo','WarehouseA','HospitalMain','2023-01-10','2023-01-12','Truck','CONT12345',30,4500.0,12.5,'FastLogistics','TRK78901','Delivered','2023-01-12','2023-01-12','',12000.0,0,0);
INSERT INTO SupplyChainLogistics (ShipmentID,VendorName,OriginFacility,DestinationFacility,DepartureDate,ArrivalDate,TransportMode,ContainerID,PalletCount,TotalWeightKG,VolumeCBM,Carrier,TrackingNumber,Status,EstimatedDelivery,ActualDelivery,DelayReason,CostUSD,TemperatureControlled,HazardousMaterial) VALUES
(5002,'LabGearInc','WarehouseB','ResearchLab','2023-02-05','2023-02-07','Air','CONT67890',10,1800.0,4.2,'AirCargo','TRK78902','Delivered','2023-02-07','2023-02-07','',8500.0,1,0);
INSERT INTO SupplyChainLogistics (ShipmentID,VendorName,OriginFacility,DestinationFacility,DepartureDate,ArrivalDate,TransportMode,ContainerID,PalletCount,TotalWeightKG,VolumeCBM,Carrier,TrackingNumber,Status,EstimatedDelivery,ActualDelivery,DelayReason,CostUSD,TemperatureControlled,HazardousMaterial) VALUES
(5003,'ChemSafe','WarehouseC','PharmacyDepot','2023-03-01','2023-03-04','Truck','CONT24680',5,1200.0,2.0,'SafeTrans','TRK78903','Delayed','2023-03-04','2023-03-06','Customs hold',5400.0,0,1);

-- Staff Continuing Education Record
CREATE TABLE StaffContinuingEducationRecord (
    RecordID INTEGER PRIMARY KEY,
    StaffID INTEGER,
    StaffName TEXT,
    Department TEXT,
    CourseCode TEXT,
    CourseTitle TEXT,
    Provider TEXT,
    StartDate DATE,
    EndDate DATE,
    Hours INTEGER,
    Credits REAL,
    CompletionStatus TEXT,
    Grade TEXT,
    CertificateNumber TEXT,
    RenewalNeeded INTEGER,
    NextDueDate DATE,
    Supervisor TEXT,
    Comments TEXT,
    CreatedOn DATE,
    UpdatedOn DATE
);

INSERT INTO StaffContinuingEducationRecord (RecordID,StaffID,StaffName,Department,CourseCode,CourseTitle,Provider,StartDate,EndDate,Hours,Credits,CompletionStatus,Grade,CertificateNumber,RenewalNeeded,NextDueDate,Supervisor,Comments,CreatedOn,UpdatedOn) VALUES
(2001,301,'AliceBrown','Radiology','RAD101','Advanced Imaging','MedUOnline','2022-09-01','2022-09-15',15,1.5,'Completed','A','CERT001',0,'', 'DrJones','Excellent performance','2022-09-20','2022-09-20');
INSERT INTO StaffContinuingEducationRecord (RecordID,StaffID,StaffName,Department,CourseCode,CourseTitle,Provider,StartDate,EndDate,Hours,Credits,CompletionStatus,Grade,CertificateNumber,RenewalNeeded,NextDueDate,Supervisor,Comments,CreatedOn,UpdatedOn) VALUES
(2002,302,'BobSmith','Pharmacy','PHAR202','Pharmacy Law Update','StatePharmacyBoard','2023-01-10','2023-01-12',8,0.8,'Completed','B','CERT002',1,'2025-01-12','DrLee','Needs renewal in 2 years','2023-01-15','2023-01-15');
INSERT INTO StaffContinuingEducationRecord (RecordID,StaffID,StaffName,Department,CourseCode,CourseTitle,Provider,StartDate,EndDate,Hours,Credits,CompletionStatus,Grade,CertificateNumber,RenewalNeeded,NextDueDate,Supervisor,Comments,CreatedOn,UpdatedOn) VALUES
(2003,303,'CarolWhite','Laboratory','LAB303','Quality Control in Clinical Lab','LabAcademy','2023-03-05','2023-03-10',20,2.0,'Completed','A','CERT003',0,'','DrKim','Applied new QC procedures','2023-03-12','2023-03-12');

-- Environmental Monitoring Station
CREATE TABLE EnvironmentalMonitoringStation (
    StationID INTEGER PRIMARY KEY,
    StationName TEXT,
    Latitude REAL,
    Longitude REAL,
    ElevationM REAL,
    InstallationDate DATE,
    SensorType TEXT,
    MeasurementUnit TEXT,
    SamplingFrequencyMinutes INTEGER,
    LastCalibration DATE,
    Status TEXT,
    DataPortalURL TEXT,
    ManagedBy TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    IsActive INTEGER,
    Region TEXT,
    Owner TEXT,
    MaintenanceContact TEXT,
    Notes TEXT
);

INSERT INTO EnvironmentalMonitoringStation (StationID,StationName,Latitude,Longitude,ElevationM,InstallationDate,SensorType,MeasurementUnit,SamplingFrequencyMinutes,LastCalibration,Status,DataPortalURL,ManagedBy,CreatedOn,UpdatedOn,IsActive,Region,Owner,MaintenanceContact,Notes) VALUES
(301,'NorthWingPM25',40.7128,-74.0060,15,'2022-05-01','PM2.5 Sensor','µg/m3',15,'2023-01-20','Active','http://envdata.hospital.org/north','FacilitiesDept','2022-05-05','2023-02-01',1,'North Wing','Hospital Facilities','JohnDoe','No issues');
INSERT INTO EnvironmentalMonitoringStation (StationID,StationName,Latitude,Longitude,ElevationM,InstallationDate,SensorType,MeasurementUnit,SamplingFrequencyMinutes,LastCalibration,Status,DataPortalURL,ManagedBy,CreatedOn,UpdatedOn,IsActive,Region,Owner,MaintenanceContact,Notes) VALUES
(302,'EastWingTemp','40.7130','-74.0055','20','2022-06-10','Temperature Sensor','Celsius',10,'2023-02-15','Active','http://envdata.hospital.org/east','FacilitiesDept','2022-06-12','2023-02-20',1,'East Wing','Hospital Facilities','JaneSmith','Calibrated quarterly');
INSERT INTO EnvironmentalMonitoringStation (StationID,StationName,Latitude,Longitude,ElevationM,InstallationDate,SensorType,MeasurementUnit,SamplingFrequencyMinutes,LastCalibration,Status,DataPortalURL,ManagedBy,CreatedOn,UpdatedOn,IsActive,Region,Owner,MaintenanceContact,Notes) VALUES
(303,'SouthWingCO2','40.7125','-74.0065','12','2022-07-15','CO2 Sensor','ppm',30,'2023-03-01','Active','http://envdata.hospital.org/south','FacilitiesDept','2022-07-16','2023-03-10',1,'South Wing','Hospital Facilities','MikeLee','Stable readings');

-- Biomedical Waste Management
CREATE TABLE BiomedicalWasteManagement (
    WasteID INTEGER PRIMARY KEY,
    WasteType TEXT,
    GenerationDate DATE,
    OriginDepartment TEXT,
    QuantityKg REAL,
    ContainerID TEXT,
    SegregationMethod TEXT,
    TreatmentMethod TEXT,
    DisposalDate DATE,
    DisposalFacility TEXT,
    PermitNumber TEXT,
    ComplianceStatus TEXT,
    Inspector TEXT,
    InspectionDate DATE,
    Remarks TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    IsHazardous INTEGER,
    TrackingCode TEXT,
    CostUSD REAL
);

INSERT INTO BiomedicalWasteManagement (WasteID,WasteType,GenerationDate,OriginDepartment,QuantityKg,ContainerID,SegregationMethod,TreatmentMethod,DisposalDate,DisposalFacility,PermitNumber,ComplianceStatus,Inspector,InspectionDate,Remarks,CreatedOn,UpdatedOn,IsHazardous,TrackingCode,CostUSD) VALUES
(4001,'Sharps','2023-01-20','Emergency','12.5','CNT001','Containerized','Incineration','2023-01-22','CityIncinerator','PERM123','Compliant','AliceGreen','2023-01-23','No issues','2023-01-20','2023-01-23',1,'TRK4001',150.0);
INSERT INTO BiomedicalWasteManagement (WasteID,WasteType,GenerationDate,OriginDepartment,QuantityKg,ContainerID,SegregationMethod,TreatmentMethod,DisposalDate,DisposalFacility,PermitNumber,ComplianceStatus,Inspector,InspectionDate,Remarks,CreatedOn,UpdatedOn,IsHazardous,TrackingCode,CostUSD) VALUES
(4002,'Pathology','2023-02-10','PathologyLab','8.0','CNT002','Bagged','Autoclave','2023-02-12','HospitalAutoclave','PERM124','Compliant','BobWhite','2023-02-13','Sterilized','2023-02-10','2023-02-13',1,'TRK4002',80.0);
INSERT INTO BiomedicalWasteManagement (WasteID,WasteType,GenerationDate,OriginDepartment,QuantityKg,ContainerID,SegregationMethod,TreatmentMethod,DisposalDate,DisposalFacility,PermitNumber,ComplianceStatus,Inspector,InspectionDate,Remarks,CreatedOn,UpdatedOn,IsHazardous,TrackingCode,CostUSD) VALUES
(4003,'Pharmaceutical','2023-03-05','Pharmacy','5.2','CNT003','Sealed','ChemicalNeutralization','2023-03-07','ChemTreatCo','PERM125','Compliant','CarolBrown','2023-03-08','Neutralized','2023-03-05','2023-03-08',1,'TRK4003',200.0);

-- Telehealth Infrastructure
CREATE TABLE TelehealthInfrastructure (
    NodeID INTEGER PRIMARY KEY,
    NodeName TEXT,
    IPAddress TEXT,
    MACAddress TEXT,
    InstallationDate DATE,
    FirmwareVersion TEXT,
    ConnectivityType TEXT,
    BandwidthMbps REAL,
    LatencyMs REAL,
    UptimeHours REAL,
    MaintenanceSchedule TEXT,
    OwnerDepartment TEXT,
    Status TEXT,
    LastUpdate DATE,
    SerialNumber TEXT,
    Location TEXT,
    ContractEnd DATE,
    ServiceProvider TEXT,
    SupportContact TEXT,
    IsCritical INTEGER
);

INSERT INTO TelehealthInfrastructure (NodeID,NodeName,IPAddress,MACAddress,InstallationDate,FirmwareVersion,ConnectivityType,BandwidthMbps,LatencyMs,UptimeHours,MaintenanceSchedule,OwnerDepartment,Status,LastUpdate,SerialNumber,Location,ContractEnd,ServiceProvider,SupportContact,IsCritical) VALUES
(8001,'VideoServerA','192.168.10.10','AA:BB:CC:DD:EE:01','2021-04-15','v1.4.2','Ethernet',1000.0,5.2,8760.0,'Quarterly','IT','Active','2023-01-10','SNV8001','DataCenter1','2025-04-15','NetTech','it_support@hospital.org',1);
INSERT INTO TelehealthInfrastructure (NodeID,NodeName,IPAddress,MACAddress,InstallationDate,FirmwareVersion,ConnectivityType,BandwidthMbps,LatencyMs,UptimeHours,MaintenanceSchedule,OwnerDepartment,Status,LastUpdate,SerialNumber,Location,ContractEnd,ServiceProvider,SupportContact,IsCritical) VALUES
(8002,'CameraRoom101','192.168.10.20','AA:BB:CC:DD:EE:02','2022-01-20','v2.0.0','WiFi',300.0,12.5,4320.0,'Monthly','Clinical','Active','2023-02-05','SNC8002','Room101','2024-01-20','CamSupply','clinical_support@hospital.org',0);
INSERT INTO TelehealthInfrastructure (NodeID,NodeName,IPAddress,MACAddress,InstallationDate,FirmwareVersion,ConnectivityType,BandwidthMbps,LatencyMs,UptimeHours,MaintenanceSchedule,OwnerDepartment,Status,LastUpdate,SerialNumber,Location,ContractEnd,ServiceProvider,SupportContact,IsCritical) VALUES
(8003,'AudioGateway','192.168.10.30','AA:BB:CC:DD:EE:03','2020-09-01','v1.9.5','Ethernet',500.0,8.0,10512.0,'Semi-Annual','IT','Active','2023-03-12','SNA8003','DataCenter2','2023-09-01','AudioTech','audio_support@hospital.org',1);

-- Safety Incident Metrics
CREATE TABLE SafetyIncidentMetrics (
    IncidentID INTEGER PRIMARY KEY,
    IncidentDate DATE,
    IncidentType TEXT,
    Department TEXT,
    SeverityLevel INTEGER,
    AffectedArea TEXT,
    RootCause TEXT,
    CorrectiveAction TEXT,
    PreventiveAction TEXT,
    ReportedBy TEXT,
    InvestigationStatus TEXT,
    ClosureDate DATE,
    DowntimeHours REAL,
    CostImpactUSD REAL,
    LessonsLearned TEXT,
    FollowUpDate DATE,
    IsRecurring INTEGER,
    RiskRating REAL,
    Auditor TEXT,
    Comments TEXT
);

INSERT INTO SafetyIncidentMetrics (IncidentID,IncidentDate,IncidentType,Department,SeverityLevel,AffectedArea,RootCause,CorrectiveAction,PreventiveAction,ReportedBy,InvestigationStatus,ClosureDate,DowntimeHours,CostImpactUSD,LessonsLearned,FollowUpDate,IsRecurring,RiskRating,Auditor,Comments) VALUES
(9001,'2023-01-15','Slip','EastWing',2,'Hallway','Wet floor','Dry area','Install anti‑slip mats','JanetDoe','Closed','2023-01-20',2.5,1500.0,'Regular cleaning schedule','2023-02-15',0,3.2,'SafetyTeam','No injuries');
INSERT INTO SafetyIncidentMetrics (IncidentID,IncidentDate,IncidentType,Department,SeverityLevel,AffectedArea,RootCause,CorrectiveAction,PreventiveAction,ReportedBy,InvestigationStatus,ClosureDate,DowntimeHours,CostImpactUSD,LessonsLearned,FollowUpDate,IsRecurring,RiskRating,Auditor,Comments) VALUES
(9002,'2023-02-08','ElectricalFailure','Radiology',4,'ImagingRoom','Faulty wiring','Replace panel','Annual electrical inspection','MikeLee','Closed','2023-02-12',4.0,8000.0,'Implement preventive maintenance','2023-03-01',1,4.5,'EngineeringLead','Affected MRI scanner');
INSERT INTO SafetyIncidentMetrics (IncidentID,IncidentDate,IncidentType,Department,SeverityLevel,AffectedArea,RootCause,CorrectiveAction,PreventiveAction,ReportedBy,InvestigationStatus,ClosureDate,DowntimeHours,CostImpactUSD,LessonsLearned,FollowUpDate,IsRecurring,RiskRating,Auditor,Comments) VALUES
(9003,'2023-03-22','MedicationError','Pharmacy',3,'Dispensing','Incorrect dosage entry','Retrain staff','Update software validation','LauraSmith','Closed','2023-03-25',1.0,2500.0','Double‑check system','2023-04-10',0,3.8,'PharmacyChief','No patient harm');