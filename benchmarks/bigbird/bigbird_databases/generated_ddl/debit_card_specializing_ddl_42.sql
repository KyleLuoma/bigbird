-- Fuel station maintenance staffing information
CREATE TABLE fuel_station_maintenance_staffing
(
    StaffingID INTEGER PRIMARY KEY AUTOINCREMENT,
    GasStationID INTEGER,
    StaffMemberID INTEGER,
    Role TEXT,
    ShiftStart TIME,
    ShiftEnd TIME,
    CertificationLevel TEXT,
    HourlyWage REAL,
    EmploymentType TEXT,
    SupervisorID INTEGER,
    ContactNumber TEXT,
    EmailAddress TEXT,
    HireDate DATE,
    TerminationDate DATE,
    YearsOfExperience INTEGER,
    SafetyTrainingCompleted INTEGER,
    BackgroundCheckStatus TEXT,
    unionMemberFlag INTEGER,
    shiftPatternCode TEXT,
    notes TEXT,
    recordCreated TIMESTAMP,
    recordUpdated TIMESTAMP
);

INSERT INTO fuel_station_maintenance_staffing (GasStationID,StaffMemberID,Role,ShiftStart,ShiftEnd,CertificationLevel,HourlyWage,EmploymentType,SupervisorID,ContactNumber,EmailAddress,HireDate,TerminationDate,YearsOfExperience,SafetyTrainingCompleted,BackgroundCheckStatus,unionMemberFlag,shiftPatternCode,notes,recordCreated,recordUpdated) VALUES (101,5001,'Technician','06:00','14:00','Level2',18.5,'FullTime',2001,'5551234567','tech5001@example.com','2020-03-15',NULL,5,1,'Clear',1,'A','Initial hire',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO fuel_station_maintenance_staffing (GasStationID,StaffMemberID,Role,ShiftStart,ShiftEnd,CertificationLevel,HourlyWage,EmploymentType,SupervisorID,ContactNumber,EmailAddress,HireDate,TerminationDate,YearsOfExperience,SafetyTrainingCompleted,BackgroundCheckStatus,unionMemberFlag,shiftPatternCode,notes,recordCreated,recordUpdated) VALUES (102,5002,'Supervisor','14:00','22:00','Level3',22.0,'FullTime',2002,'5559876543','sup5002@example.com','2018-07-01',NULL,8,1,'Clear',0,'B','Promoted 2021',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO fuel_station_maintenance_staffing (GasStationID,StaffMemberID,Role,ShiftStart,ShiftEnd,CertificationLevel,HourlyWage,EmploymentType,SupervisorID,ContactNumber,EmailAddress,HireDate,TerminationDate,YearsOfExperience,SafetyTrainingCompleted,BackgroundCheckStatus,unionMemberFlag,shiftPatternCode,notes,recordCreated,recordUpdated) VALUES (103,5003,'Janitor','22:00','06:00','Level1',15.0,'PartTime',2003,'5553217890','janitor5003@example.com','2022-01-10',NULL,2,1,'Clear',1,'C','Night shift',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

-- Vehicle fleet depreciation schedule
CREATE TABLE vehicle_fleet_depreciation_schedule
(
    DepreciationID INTEGER PRIMARY KEY AUTOINCREMENT,
    VehicleID INTEGER,
    FiscalYear INTEGER,
    OriginalCost REAL,
    AccumulatedDepreciation REAL,
    NetBookValue REAL,
    DepreciationMethod TEXT,
    RatePercent REAL,
    AssetCategory TEXT,
    DepartmentCode TEXT,
    LocationCode TEXT,
    LeaseFlag INTEGER,
    LeaseTermYears INTEGER,
    ResidualValue REAL,
    TaxDeductionEligible INTEGER,
    DepreciationStartDate DATE,
    DepreciationEndDate DATE,
    ApprovedBy INTEGER,
    ApprovalDate DATE,
    notes TEXT,
    recordCreated TIMESTAMP,
    recordUpdated TIMESTAMP
);

INSERT INTO vehicle_fleet_depreciation_schedule (VehicleID,FiscalYear,OriginalCost,AccumulatedDepreciation,NetBookValue,DepreciationMethod,RatePercent,AssetCategory,DepartmentCode,LocationCode,LeaseFlag,LeaseTermYears,ResidualValue,TaxDeductionEligible,DepreciationStartDate,DepreciationEndDate,ApprovedBy,ApprovalDate,notes,recordCreated,recordUpdated) VALUES (3001,2023,50000,15000,35000,'StraightLine',30,'Truck','LOG','NYC',0,NULL,5000,1,'2020-01-01','2025-12-31',101,'2023-02-15','Quarterly update',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO vehicle_fleet_depreciation_schedule (VehicleID,FiscalYear,OriginalCost,AccumulatedDepreciation,NetBookValue,DepreciationMethod,RatePercent,AssetCategory,DepartmentCode,LocationCode,LeaseFlag,LeaseTermYears,ResidualValue,TaxDeductionEligible,DepreciationStartDate,DepreciationEndDate,ApprovedBy,ApprovalDate,notes,recordCreated,recordUpdated) VALUES (3002,2023,75000,22500,52500,'DecliningBalance',30,'Van','OPS','LA',1,5,7500,1,'2021-06-01','2026-05-31',102,'2023-03-01','Lease asset',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO vehicle_fleet_depreciation_schedule (VehicleID,FiscalYear,OriginalCost,AccumulatedDepreciation,NetBookValue,DepreciationMethod,RatePercent,AssetCategory,DepartmentCode,LocationCode,LeaseFlag,LeaseTermYears,ResidualValue,TaxDeductionEligible,DepreciationStartDate,DepreciationEndDate,ApprovedBy,ApprovalDate,notes,recordCreated,recordUpdated) VALUES (3003,2023,120000,36000,84000,'StraightLine',30,'Sedan','SALES','CHI',0,NULL,12000,1,'2019-03-15','2024-03-14',103,'2023-01-20','Recent purchase',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

-- Regional fuel demand forecast detail
CREATE TABLE regional_fuel_demand_forecast_detail
(
    ForecastDetailID INTEGER PRIMARY KEY AUTOINCREMENT,
    RegionCode TEXT,
    ForecastMonth TEXT,
    FuelType TEXT,
    ProjectedVolumeLiters REAL,
    HistoricalAverageLiters REAL,
    YearOverYearChangePercent REAL,
    SeasonalAdjustmentFactor REAL,
    EconomicIndex REAL,
    PopulationGrowthPercent REAL,
    VehicleCount INTEGER,
    AvgVehicleFuelEfficiency REAL,
    PriceElasticity REAL,
    ConfidenceLevelPercent REAL,
    Scenario TEXT,
    ModelVersion TEXT,
    CreatedBy INTEGER,
    CreatedDate DATE,
    UpdatedBy INTEGER,
    UpdatedDate DATE,
    notes TEXT,
    recordCreated TIMESTAMP,
    recordUpdated TIMESTAMP
);

INSERT INTO regional_fuel_demand_forecast_detail (RegionCode,ForecastMonth,FuelType,ProjectedVolumeLiters,HistoricalAverageLiters,YearOverYearChangePercent,SeasonalAdjustmentFactor,EconomicIndex,PopulationGrowthPercent,VehicleCount,AvgVehicleFuelEfficiency,PriceElasticity,ConfidenceLevelPercent,Scenario,ModelVersion,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,notes,recordCreated,recordUpdated) VALUES ('NE','2024-06','Diesel',8500000,8000000,6.25,1.03,102.5,0.8,150000,8.5,-0.15,92,'Base','v1.2',201,'2023-12-01',202,'2023-12-10','Initial forecast',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO regional_fuel_demand_forecast_detail (RegionCode,ForecastMonth,FuelType,ProjectedVolumeLiters,HistoricalAverageLiters,YearOverYearChangePercent,SeasonalAdjustmentFactor,EconomicIndex,PopulationGrowthPercent,VehicleCount,AvgVehicleFuelEfficiency,PriceElasticity,ConfidenceLevelPercent,Scenario,ModelVersion,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,notes,recordCreated,recordUpdated) VALUES ('SW','2024-06','Petrol',9200000,8800000,4.55,0.97,99.8,1.0,170000,7.9,-0.12,88,'Optimistic','v1.2',202,'2023-12-01',203,'2023-12-11','Adjusted for supply increase',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO regional_fuel_demand_forecast_detail (RegionCode,ForecastMonth,FuelType,ProjectedVolumeLiters,HistoricalAverageLiters,YearOverYearChangePercent,SeasonalAdjustmentFactor,EconomicIndex,PopulationGrowthPercent,VehicleCount,AvgVehicleFuelEfficiency,PriceElasticity,ConfidenceLevelPercent,Scenario,ModelVersion,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,notes,recordCreated,recordUpdated) VALUES ('MW','2024-06','Electric',4300000,4000000,7.5,1.05,105.2,1.2,90000,3.2, -0.05,95,'Base','v1.2',204,'2023-12-01',205,'2023-12-12','Including new charging stations',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

-- Customer payment method links
CREATE TABLE customer_payment_method_links
(
    LinkID INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerID INTEGER,
    PaymentMethodID INTEGER,
    LinkDate DATE,
    IsPrimary INTEGER,
    VerificationStatus TEXT,
    VerificationDate DATE,
    CardNetwork TEXT,
    CardLastFour TEXT,
    ExpirationMonth INTEGER,
    ExpirationYear INTEGER,
    BillingAddressLine1 TEXT,
    BillingAddressLine2 TEXT,
    BillingCity TEXT,
    BillingState TEXT,
    BillingZip TEXT,
    CountryCode TEXT,
    MobileWalletProvider TEXT,
    MobileWalletToken TEXT,
    Note TEXT,
    CreatedBy INTEGER,
    CreatedAt TIMESTAMP,
    UpdatedAt TIMESTAMP
);

INSERT INTO customer_payment_method_links (CustomerID,PaymentMethodID,LinkDate,IsPrimary,VerificationStatus,VerificationDate,CardNetwork,CardLastFour,ExpirationMonth,ExpirationYear,BillingAddressLine1,BillingAddressLine2,BillingCity,BillingState,BillingZip,CountryCode,MobileWalletProvider,MobileWalletToken,Note,CreatedBy,CreatedAt,UpdatedAt) VALUES (1001,9001,'2022-05-10',1,'Verified','2022-05-11','Visa','1234',7,2025,'123 Main St','Apt 4','Springfield','IL','62704','US','ApplePay','token123','Primary card',301,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO customer_payment_method_links (CustomerID,PaymentMethodID,LinkDate,IsPrimary,VerificationStatus,VerificationDate,CardNetwork,CardLastFour,ExpirationMonth,ExpirationYear,BillingAddressLine1,BillingAddressLine2,BillingCity,BillingState,BillingZip,CountryCode,MobileWalletProvider,MobileWalletToken,Note,CreatedBy,CreatedAt,UpdatedAt) VALUES (1002,9002,'2023-01-20',0,'Pending',NULL,'MasterCard','5678',12,2026,'456 Oak Ave','', 'Rivertown','TX','75001','US','GooglePay','token456','Awaiting verification',302,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO customer_payment_method_links (CustomerID,PaymentMethodID,LinkDate,IsPrimary,VerificationStatus,VerificationDate,CardNetwork,CardLastFour,ExpirationMonth,ExpirationYear,BillingAddressLine1,BillingAddressLine2,BillingCity,BillingState,BillingZip,CountryCode,MobileWalletProvider,MobileWalletToken,Note,CreatedBy,CreatedAt,UpdatedAt) VALUES (1003,9003,'2023-07-15',0,'Verified','2023-07-16','Amex','9012',3,2024,'789 Pine Rd','Suite 2','Lakeview','CA','90012','US','SamsungPay','token789','Secondary card',303,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

-- Energy certificate issuance log
CREATE TABLE energy_certificate_issuance_log
(
    LogID INTEGER PRIMARY KEY AUTOINCREMENT,
    CertificateID INTEGER,
    AssetID INTEGER,
    CertificateType TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    IssuingAuthority TEXT,
    QuantityUnits REAL,
    UnitOfMeasure TEXT,
    Status TEXT,
    RenewableSource TEXT,
    GenerationLocation TEXT,
    RegistrationNumber TEXT,
    ValidatedBy INTEGER,
    ValidationDate DATE,
    Comments TEXT,
    CreatedBy INTEGER,
    CreatedAt TIMESTAMP,
    UpdatedAt TIMESTAMP,
    notes TEXT,
    recordCreated TIMESTAMP,
    recordUpdated TIMESTAMP
);

INSERT INTO energy_certificate_issuance_log (CertificateID,AssetID,CertificateType,IssueDate,ExpirationDate,IssuingAuthority,QuantityUnits,UnitOfMeasure,Status,RenewableSource,GenerationLocation,RegistrationNumber,ValidatedBy,ValidationDate,Comments,CreatedBy,CreatedAt,UpdatedAt,notes,recordCreated,recordUpdated) VALUES (4001,20001,'Solar','2023-04-01','2033-03-31','EnergyDept',5000,'MWh','Active','Solar','DesertSite','REG12345',501,'2023-04-01','Initial issuance',601,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO energy_certificate_issuance_log (CertificateID,AssetID,CertificateType,IssueDate,ExpirationDate,IssuingAuthority,QuantityUnits,UnitOfMeasure,Status,RenewableSource,GenerationLocation,RegistrationNumber,ValidatedBy,ValidationDate,Comments,CreatedBy,CreatedAt,UpdatedAt,notes,recordCreated,recordUpdated) VALUES (4002,20002,'Wind','2022-09-15','2032-09-14','EnergyDept',7500,'MWh','Active','Wind','CoastalSite','REG67890',502,'2022-09-15','Renewable verification',602,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO energy_certificate_issuance_log (CertificateID,AssetID,CertificateType,IssueDate,ExpirationDate,IssuingAuthority,QuantityUnits,UnitOfMeasure,Status,RenewableSource,GenerationLocation,RegistrationNumber,ValidatedBy,ValidationDate,Comments,CreatedBy,CreatedAt,UpdatedAt,notes,recordCreated,recordUpdated) VALUES (4003,20003,'Hydro','2021-01-20','2031-01-19','EnergyDept',12000,'MWh','Active','Hydro','RiverSite','REG54321',503,'2021-01-20','Hydro approved',603,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

-- Smart city noise monitoring
CREATE TABLE smart_city_noise_monitoring
(
    MonitoringID INTEGER PRIMARY KEY AUTOINCREMENT,
    SensorID INTEGER,
    CityZone TEXT,
    InstallationDate DATE,
    LastCalibrated DATE,
    NoiseLevelDbA REAL,
    PeakNoiseDbA REAL,
    AverageNoiseDbA REAL,
    NoiseThresholdDbA REAL,
    AlertTriggered INTEGER,
    MaintenanceNeeded INTEGER,
    FirmwareVersion TEXT,
    BatteryLevelPercent REAL,
    SignalStrengthDbm REAL,
    Latitude REAL,
    Longitude REAL,
    InstallationCompany TEXT,
    MaintenanceCompany TEXT,
    DataUploadFrequencyMinutes INTEGER,
    Notes TEXT,
    CreatedBy INTEGER,
    CreatedAt TIMESTAMP,
    UpdatedAt TIMESTAMP
);

INSERT INTO smart_city_noise_monitoring (SensorID,CityZone,InstallationDate,LastCalibrated,NoiseLevelDbA,PeakNoiseDbA,AverageNoiseDbA,NoiseThresholdDbA,AlertTriggered,MaintenanceNeeded,FirmwareVersion,BatteryLevelPercent,SignalStrengthDbm,Latitude,Longitude,InstallationCompany,MaintenanceCompany,DataUploadFrequencyMinutes,Notes,CreatedBy,CreatedAt,UpdatedAt) VALUES (8001,'Downtown','2022-02-15','2023-11-20',68.5,85.2,65.3,75.0,0,0,'v2.1',92.5,-67.8,40.7128,-74.0060,'AcmeSensors','CityMaintain','15','Running normally',701,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO smart_city_noise_monitoring (SensorID,CityZone,InstallationDate,LastCalibrated,NoiseLevelDbA,PeakNoiseDbA,AverageNoiseDbA,NoiseThresholdDbA,AlertTriggered,MaintenanceNeeded,FirmwareVersion,BatteryLevelPercent,SignalStrengthDbm,Latitude,Longitude,InstallationCompany,MaintenanceCompany,DataUploadFrequencyMinutes,Notes,CreatedBy,CreatedAt,UpdatedAt) VALUES (8002,'Industrial','2021-08-10','2023-10-05',73.2,92.0,70.1,80.0,1,1,'v2.1',78.0,-70.1,34.0522,-118.2437,'AcmeSensors','CityMaintain','10','Alert triggered, maintenance scheduled',702,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO smart_city_noise_monitoring (SensorID,CityZone,InstallationDate,LastCalibrated,NoiseLevelDbA,PeakNoiseDbA,AverageNoiseDbA,NoiseThresholdDbA,AlertTriggered,MaintenanceNeeded,FirmwareVersion,BatteryLevelPercent,SignalStrengthDbm,Latitude,Longitude,InstallationCompany,MaintenanceCompany,DataUploadFrequencyMinutes,Notes,CreatedBy,CreatedAt,UpdatedAt) VALUES (8003,'Residential','2023-03-22','2023-12-01',60.4,78.5,58.9,70.0,0,0,'v2.1',85.0,-65.3,41.8781,-87.6298,'AcmeSensors','CityMaintain','20','All clear',703,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

-- Public transport vehicle assignments history
CREATE TABLE public_transport_vehicle_assignments_history
(
    AssignmentHistoryID INTEGER PRIMARY KEY AUTOINCREMENT,
    VehicleID INTEGER,
    RouteID INTEGER,
    OperatorID INTEGER,
    AssignmentStart DATE,
    AssignmentEnd DATE,
    ServiceLevel TEXT,
    Capacity INTEGER,
    WheelchairAccessible INTEGER,
    ElectricVehicleFlag INTEGER,
    FuelType TEXT,
    MileageAtStart INTEGER,
    MileageAtEnd INTEGER,
    MaintenanceWindowStart DATE,
    MaintenanceWindowEnd DATE,
    AssignedBy INTEGER,
    AssignedDate DATE,
    DecommissionedFlag INTEGER,
    DecommissionDate DATE,
    Notes TEXT,
    CreatedAt TIMESTAMP,
    UpdatedAt TIMESTAMP
);

INSERT INTO public_transport_vehicle_assignments_history (VehicleID,RouteID,OperatorID,AssignmentStart,AssignmentEnd,ServiceLevel,Capacity,WheelchairAccessible,ElectricVehicleFlag,FuelType,MileageAtStart,MileageAtEnd,MaintenanceWindowStart,MaintenanceWindowEnd,AssignedBy,AssignedDate,DecommissionedFlag,DecommissionDate,Notes,CreatedAt,UpdatedAt) VALUES (50001,300,'OP001','2022-01-01','2022-12-31','Standard',80,1,0,'Diesel',12000,23000,'2022-12-20','2022-12-28',901,'2021-12-15',0,NULL,'Reassigned after year',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO public_transport_vehicle_assignments_history (VehicleID,RouteID,OperatorID,AssignmentStart,AssignmentEnd,ServiceLevel,Capacity,WheelchairAccessible,ElectricVehicleFlag,FuelType,MileageAtStart,MileageAtEnd,MaintenanceWindowStart,MaintenanceWindowEnd,AssignedBy,AssignedDate,DecommissionedFlag,DecommissionDate,Notes,CreatedAt,UpdatedAt) VALUES (50002,301,'OP002','2023-01-01','2023-12-31','Express',60,0,1,'Electric',5000,15000,'2023-12-10','2023-12-18',902,'2022-12-20',0,NULL,'First electric bus on route',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO public_transport_vehicle_assignments_history (VehicleID,RouteID,OperatorID,AssignmentStart,AssignmentEnd,ServiceLevel,Capacity,WheelchairAccessible,ElectricVehicleFlag,FuelType,MileageAtStart,MileageAtEnd,MaintenanceWindowStart,MaintenanceWindowEnd,AssignedBy,AssignedDate,DecommissionedFlag,DecommissionDate,Notes,CreatedAt,UpdatedAt) VALUES (50003,302,'OP003','2021-06-01','2022-05-31','Night',70,1,0,'Hybrid',20000,31000,'2022-05-20','2022-05-28',903,'2021-05-15',1,'2022-06-01','Retired after 2 years',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

-- Logistics warehouse utilization
CREATE TABLE logistics_warehouse_utilization
(
    UtilizationID INTEGER PRIMARY KEY AUTOINCREMENT,
    WarehouseID INTEGER,
    Date DATE,
    TotalSpaceSqFt REAL,
    OccupiedSpaceSqFt REAL,
    AvailableSpaceSqFt REAL,
    OccupancyRatePercent REAL,
    IncomingShipments INTEGER,
    OutgoingShipments INTEGER,
    AvgProcessingTimeHours REAL,
    WorkforceCount INTEGER,
    EquipmentCount INTEGER,
    ForkliftUtilizationPercent REAL,
    PalletTurnoverRate REAL,
    TemperatureControlFlag INTEGER,
    HumidityControlFlag INTEGER,
    HazardousMaterialFlag INTEGER,
    SafetyIncidents INTEGER,
    LastInspectionDate DATE,
    InspectorID INTEGER,
    Notes TEXT,
    CreatedAt TIMESTAMP,
    UpdatedAt TIMESTAMP
);

INSERT INTO logistics_warehouse_utilization (WarehouseID,Date,TotalSpaceSqFt,OccupiedSpaceSqFt,AvailableSpaceSqFt,OccupancyRatePercent,IncomingShipments,OutgoingShipments,AvgProcessingTimeHours,WorkforceCount,EquipmentCount,ForkliftUtilizationPercent,PalletTurnoverRate,TemperatureControlFlag,HumidityControlFlag,HazardousMaterialFlag,SafetyIncidents,LastInspectionDate,InspectorID,Notes,CreatedAt,UpdatedAt) VALUES (901,'2023-12-01',200000,150000,50000,75.0,120,115,1.8,45,30,68.5,2.3,1,0,0,2,'2023-11-20',1101,'Steady usage',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO logistics_warehouse_utilization (WarehouseID,Date,TotalSpaceSqFt,OccupiedSpaceSqFt,AvailableSpaceSqFt,OccupancyRatePercent,IncomingShipments,OutgoingShipments,AvgProcessingTimeHours,WorkforceCount,EquipmentCount,ForkliftUtilizationPercent,PalletTurnoverRate,TemperatureControlFlag,HumidityControlFlag,HazardousMaterialFlag,SafetyIncidents,LastInspectionDate,InspectorID,Notes,CreatedAt,UpdatedAt) VALUES (902,'2023-12-01',150000,130000,20000,86.7,80,85,1.5,38,25,72.0,3.1,1,1,1,1,'2023-11-18',1102,'High temperature loads',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO logistics_warehouse_utilization (WarehouseID,Date,TotalSpaceSqFt,OccupiedSpaceSqFt,AvailableSpaceSqFt,OccupancyRatePercent,IncomingShipments,OutgoingShipments,AvgProcessingTimeHours,WorkforceCount,EquipmentCount,ForkliftUtilizationPercent,PalletTurnoverRate,TemperatureControlFlag,HumidityControlFlag,HazardousMaterialFlag,SafetyIncidents,LastInspectionDate,InspectorID,Notes,CreatedAt,UpdatedAt) VALUES (903,'2023-12-01',250000,200000,50000,80.0,150,148,2.0,60,40,65.0,2.8,0,0,0,0,'2023-11-22',1103,'Ready for expansion',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

-- Supply chain risk assessment summary
CREATE TABLE supply_chain_risk_assessment_summary
(
    AssessmentID INTEGER PRIMARY KEY AUTOINCREMENT,
    AssessmentDate DATE,
    RegionCode TEXT,
    SupplierCount INTEGER,
    HighRiskSupplierCount INTEGER,
    MediumRiskSupplierCount INTEGER,
    LowRiskSupplierCount INTEGER,
    AvgDeliveryDelayDays REAL,
    OnTimeDeliveryRatePercent REAL,
    DisruptionEvents INTEGER,
    AvgDisruptionDurationDays REAL,
    FinancialExposureMillionUSD REAL,
    RegulatoryComplianceScore REAL,
    CyberSecurityScore REAL,
    EnvironmentalImpactScore REAL,
    GeopoliticalRiskScore REAL,
    ClimateRiskScore REAL,
    OverallRiskScore REAL,
    AssessedBy INTEGER,
    ReviewNotes TEXT,
    CreatedAt TIMESTAMP,
    UpdatedAt TIMESTAMP
);

INSERT INTO supply_chain_risk_assessment_summary (AssessmentDate,RegionCode,SupplierCount,HighRiskSupplierCount,MediumRiskSupplierCount,LowRiskSupplierCount,AvgDeliveryDelayDays,OnTimeDeliveryRatePercent,DisruptionEvents,AvgDisruptionDurationDays,FinancialExposureMillionUSD,RegulatoryComplianceScore,CyberSecurityScore,EnvironmentalImpactScore,GeopoliticalRiskScore,ClimateRiskScore,OverallRiskScore,AssessedBy,ReviewNotes,CreatedAt,UpdatedAt) VALUES ('2023-11-30','NA',250,30,80,140,2.5,92.0,5,3.2,45.0,88.5,81.0,70.0,60.0,55.0,73.5,501,'Quarterly review',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO supply_chain_risk_assessment_summary (AssessmentDate,RegionCode,SupplierCount,HighRiskSupplierCount,MediumRiskSupplierCount,LowRiskSupplierCount,AvgDeliveryDelayDays,OnTimeDeliveryRatePercent,DisruptionEvents,AvgDisruptionDurationDays,FinancialExposureMillionUSD,RegulatoryComplianceScore,CyberSecurityScore,EnvironmentalImpactScore,GeopoliticalRiskScore,ClimateRiskScore,OverallRiskScore,AssessedBy,ReviewNotes,CreatedAt,UpdatedAt) VALUES ('2023-11-30','EU',180,20,50,110,1.8,96.5,2,1.5,30.0,91.0,85.0,68.0,45.0,50.0,68.0,601,'EU risk assessment',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO supply_chain_risk_assessment_summary (AssessmentDate,RegionCode,SupplierCount,HighRiskSupplierCount,MediumRiskSupplierCount,LowRiskSupplierCount,AvgDeliveryDelayDays,OnTimeDeliveryRatePercent,DisruptionEvents,AvgDisruptionDurationDays,FinancialExposureMillionUSD,RegulatoryComplianceScore,CyberSecurityScore,EnvironmentalImpactScore,GeopoliticalRiskScore,ClimateRiskScore,OverallRiskScore,AssessedBy,ReviewNotes,CreatedAt,UpdatedAt) VALUES ('2023-11-30','APAC',300,45,100,155,3.0,88.0,8,4.0,60.0,84.0,78.0,72.0,70.0,65.0,73.0,701,'APAC assessment',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

-- Municipal permit application tracking
CREATE TABLE municipal_permit_application_tracking
(
    PermitAppID INTEGER PRIMARY KEY AUTOINCREMENT,
    PermitNumber TEXT,
    ApplicantName TEXT,
    ApplicantAddress TEXT,
    PermitType TEXT,
    ApplicationDate DATE,
    ReviewStartDate DATE,
    ReviewEndDate DATE,
    ApprovedDate DATE,
    Status TEXT,
    InspectorID INTEGER,
    InspectionDate DATE,
    RequiredFees REAL,
    PaidFees REAL,
    FeeWaiverFlag INTEGER,
    RequiredDocumentsCount INTEGER,
    SubmittedDocumentsCount INTEGER,
    ComplianceScore REAL,
    Conditions TEXT,
    RenewalRequiredFlag INTEGER,
    RenewalDueDate DATE,
    Notes TEXT,
    CreatedAt TIMESTAMP,
    UpdatedAt TIMESTAMP
);

INSERT INTO municipal_permit_application_tracking (PermitNumber,ApplicantName,ApplicantAddress,PermitType,ApplicationDate,ReviewStartDate,ReviewEndDate,ApprovedDate,Status,InspectorID,InspectionDate,RequiredFees,PaidFees,FeeWaiverFlag,RequiredDocumentsCount,SubmittedDocumentsCount,ComplianceScore,Conditions,RenewalRequiredFlag,RenewalDueDate,Notes,CreatedAt,UpdatedAt) VALUES ('MP-1001','John Doe','123 Main St Springfield','Construction','2023-09-10','2023-09-12','2023-09-20','2023-09-22','Approved',301,'2023-09-21',1500.00,1500.00,0,5,5,98.5,'Standard safety compliance',0,NULL,'All documents received',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO municipal_permit_application_tracking (PermitNumber,ApplicantName,ApplicantAddress,PermitType,ApplicationDate,ReviewStartDate,ReviewEndDate,ApprovedDate,Status,InspectorID,InspectionDate,RequiredFees,PaidFees,FeeWaiverFlag,RequiredDocumentsCount,SubmittedDocumentsCount,ComplianceScore,Conditions,RenewalRequiredFlag,RenewalDueDate,Notes,CreatedAt,UpdatedAt) VALUES ('MP-1002','Acme Corp','456 Industrial Rd Metrocity','Environmental','2023-08-01','2023-08-03','2023-08-15',NULL,'Pending',302,NULL,2500.00,0.00,0,7,3,85.0,'Emission controls required',1,'2025-08-01','Awaiting fee payment',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO municipal_permit_application_tracking (PermitNumber,ApplicantName,ApplicantAddress,PermitType,ApplicationDate,ReviewStartDate,ReviewEndDate,ApprovedDate,Status,InspectorID,InspectionDate,RequiredFees,PaidFees,FeeWaiverFlag,RequiredDocumentsCount,SubmittedDocumentsCount,ComplianceScore,Conditions,RenewalRequiredFlag,RenewalDueDate,Notes,CreatedAt,UpdatedAt) VALUES ('MP-1003','Green Gardens','789 Park Ave','Landscaping','2023-10-05','2023-10-07','2023-10-12','2023-10-13','Approved',303,'2023-10-12',800.00,800.00,1,4,4,92.0,'Native plant usage',0,NULL,'Fee waived for community project',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);