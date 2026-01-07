-- Fleet inspections data
CREATE TABLE fleet_inspections
(
    InspectionID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    InspectorID INTEGER,
    InspectionDate INTEGER,          -- YYYYMMDD
    Mileage INTEGER,
    BrakeScore INTEGER,
    EmissionScore INTEGER,
    TireDepthMM INTEGER,
    LightFunctionality INTEGER,
    FluidLevelScore INTEGER,
    BatteryHealth INTEGER,
    HVACPerformance INTEGER,
    SafetyEquipmentScore INTEGER,
    DocumentationScore INTEGER,
    FollowUpRequired INTEGER,
    FollowUpDays INTEGER,
    InspectorRegionCode INTEGER,
    InspectionTypeCode INTEGER,
    WeatherConditionCode INTEGER,
    FuelSystemScore INTEGER,
    SuspensionScore INTEGER,
    OverallRating INTEGER
);
INSERT INTO fleet_inspections (InspectionID,VehicleID,InspectorID,InspectionDate,Mileage,BrakeScore,EmissionScore,TireDepthMM,LightFunctionality,FluidLevelScore,BatteryHealth,HVACPerformance,SafetyEquipmentScore,DocumentationScore,FollowUpRequired,FollowUpDays,InspectorRegionCode,InspectionTypeCode,WeatherConditionCode,FuelSystemScore,SuspensionScore,OverallRating) VALUES (1,101,501,20230115,152000,8,9,6,1,7,9,8,8,9,0,0,12,2,3,8,7,9);
INSERT INTO fleet_inspections (InspectionID,VehicleID,InspectorID,InspectionDate,Mileage,BrakeScore,EmissionScore,TireDepthMM,LightFunctionality,FluidLevelScore,BatteryHealth,HVACPerformance,SafetyEquipmentScore,DocumentationScore,FollowUpRequired,FollowUpDays,InspectorRegionCode,InspectionTypeCode,WeatherConditionCode,FuelSystemScore,SuspensionScore,OverallRating) VALUES (2,102,502,20230220,87400,9,8,7,1,8,8,9,9,8,1,30,7,1,2,9,8,8);
INSERT INTO fleet_inspections (InspectionID,VehicleID,InspectorID,InspectionDate,Mileage,BrakeScore,EmissionScore,TireDepthMM,LightFunctionality,FluidLevelScore,BatteryHealth,HVACPerformance,SafetyEquipmentScore,DocumentationScore,FollowUpRequired,FollowUpDays,InspectorRegionCode,InspectionTypeCode,WeatherConditionCode,FuelSystemScore,SuspensionScore,OverallRating) VALUES (3,103,503,20230305,230500,7,7,5,0,6,7,6,7,7,1,15,3,3,1,7,6,7);

-- Fuel distribution contracts
CREATE TABLE fuel_distribution_contracts
(
    ContractID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    DistributorID INTEGER,
    FuelTypeCode INTEGER,
    ContractStartDate INTEGER,
    ContractEndDate INTEGER,
    VolumeLimitLiters INTEGER,
    PricePerLiter REAL,
    DiscountRate REAL,
    MinimumPurchaseLiters INTEGER,
    PenaltyRate REAL,
    RenewalOptionFlag INTEGER,
    AutoRenewalDays INTEGER,
    CreditTermDays INTEGER,
    PaymentMethodCode INTEGER,
    DeliveryFrequencyCode INTEGER,
    PrimaryRegionCode INTEGER,
    SecondaryRegionCode INTEGER,
    ContractStatusCode INTEGER,
    ArbitrationClauseFlag INTEGER,
    ConfidentialityLevel INTEGER,
    BrokerID INTEGER
);
INSERT INTO fuel_distribution_contracts (ContractID,SupplierID,DistributorID,FuelTypeCode,ContractStartDate,ContractEndDate,VolumeLimitLiters,PricePerLiter,DiscountRate,MinimumPurchaseLiters,PenaltyRate,RenewalOptionFlag,AutoRenewalDays,CreditTermDays,PaymentMethodCode,DeliveryFrequencyCode,PrimaryRegionCode,SecondaryRegionCode,ContractStatusCode,ArbitrationClauseFlag,ConfidentialityLevel,BrokerID) VALUES (1001,2001,3001,1,20220101,20231231,500000,1.23,0.05,10000,0.02,1,60,30,2,4,10,20,1,0,3,4001);
INSERT INTO fuel_distribution_contracts (ContractID,SupplierID,DistributorID,FuelTypeCode,ContractStartDate,ContractEndDate,VolumeLimitLiters,PricePerLiter,DiscountRate,MinimumPurchaseLiters,PenaltyRate,RenewalOptionFlag,AutoRenewalDays,CreditTermDays,PaymentMethodCode,DeliveryFrequencyCode,PrimaryRegionCode,SecondaryRegionCode,ContractStatusCode,ArbitrationClauseFlag,ConfidentialityLevel,BrokerID) VALUES (1002,2002,3002,2,20220715,20250714,750000,1.15,0.07,15000,0.025,0,0,45,1,3,15,25,2,1,2,4002);
INSERT INTO fuel_distribution_contracts (ContractID,SupplierID,DistributorID,FuelTypeCode,ContractStartDate,ContractEndDate,VolumeLimitLiters,PricePerLiter,DiscountRate,MinimumPurchaseLiters,PenaltyRate,RenewalOptionFlag,AutoRenewalDays,CreditTermDays,PaymentMethodCode,DeliveryFrequencyCode,PrimaryRegionCode,SecondaryRegionCode,ContractStatusCode,ArbitrationClauseFlag,ConfidentialityLevel,BrokerID) VALUES (1003,2003,3003,3,20230101,20240101,250000,1.30,0.04,8000,0.015,1,30,20,3,2,5,12,3,0,4,4003);

-- Road maintenance projects
CREATE TABLE road_maintenance_projects
(
    ProjectID INTEGER PRIMARY KEY,
    AuthorityID INTEGER,
    ProjectName TEXT,
    StartDate INTEGER,
    EndDate INTEGER,
    BudgetUSD INTEGER,
    LengthKm REAL,
    LaneCount INTEGER,
    SurfaceTypeCode INTEGER,
    ContractorID INTEGER,
    InspectionFrequencyDays INTEGER,
    TrafficImpactLevel INTEGER,
    EnvironmentalMitigationFlag INTEGER,
    FundingSourceCode INTEGER,
    ProjectStatusCode INTEGER,
    RiskAssessmentScore INTEGER,
    SafetyPlanFlag INTEGER,
    PermitNumber INTEGER,
    CommunityEngagementScore INTEGER,
    UtilityCoordinationFlag INTEGER,
    WeatherDelayDays INTEGER,
    QualityAuditScore INTEGER,
    MaintenancePhaseCode INTEGER
);
INSERT INTO road_maintenance_projects (ProjectID,AuthorityID,ProjectName,StartDate,EndDate,BudgetUSD,LengthKm,LaneCount,SurfaceTypeCode,ContractorID,InspectionFrequencyDays,TrafficImpactLevel,EnvironmentalMitigationFlag,FundingSourceCode,ProjectStatusCode,RiskAssessmentScore,SafetyPlanFlag,PermitNumber,CommunityEngagementScore,UtilityCoordinationFlag,WeatherDelayDays,QualityAuditScore,MaintenancePhaseCode) VALUES (501,601,'NorthLoopExpansion',20230110,20231220,12000000,15.5,4,2,701,30,3,1,4,1,85,1,9001,7,1,5,92,2);
INSERT INTO road_maintenance_projects (ProjectID,AuthorityID,ProjectName,StartDate,EndDate,BudgetUSD,LengthKm,LaneCount,SurfaceTypeCode,ContractorID,InspectionFrequencyDays,TrafficImpactLevel,EnvironmentalMitigationFlag,FundingSourceCode,ProjectStatusCode,RiskAssessmentScore,SafetyPlanFlag,PermitNumber,CommunityEngagementScore,UtilityCoordinationFlag,WeatherDelayDays,QualityAuditScore,MaintenancePhaseCode) VALUES (502,602,'RiverBridgeRehab',20230601,20241015,8000000,2.8,2,3,702,45,4,1,2,2,78,1,9002,6,0,12,88,3);
INSERT INTO road_maintenance_projects (ProjectID,AuthorityID,ProjectName,StartDate,EndDate,BudgetUSD,LengthKm,LaneCount,SurfaceTypeCode,ContractorID,InspectionFrequencyDays,TrafficImpactLevel,EnvironmentalMitigationFlag,FundingSourceCode,ProjectStatusCode,RiskAssessmentScore,SafetyPlanFlag,PermitNumber,CommunityEngagementScore,UtilityCoordinationFlag,WeatherDelayDays,QualityAuditScore,MaintenancePhaseCode) VALUES (503,603,'EastSideResurfacing',20231201,20250228,4500000,8.2,3,1,703,20,2,0,1,3,70,0,9003,5,1,3,81,1);

-- Energy consumption meters
CREATE TABLE energy_consumption_meters
(
    MeterID INTEGER PRIMARY KEY,
    StationID INTEGER,
    MeterTypeCode INTEGER,
    InstallationDate INTEGER,
    LastReadDate INTEGER,
    CurrentReading REAL,
    Multiplier REAL,
    FirmwareVersion TEXT,
    CommunicationProtocolCode INTEGER,
    StatusFlag INTEGER,
    VoltageV REAL,
    CurrentA REAL,
    PowerFactor REAL,
    TemperatureC REAL,
    BatteryHealthPercent INTEGER,
    AlertThresholdHigh REAL,
    AlertThresholdLow REAL,
    MaintenanceDueDate INTEGER,
    CalibrationDate INTEGER,
    OwnerDepartmentCode INTEGER,
    Latitude REAL,
    Longitude REAL,
    DataLogIntervalMinutes INTEGER,
    MeterModelCode INTEGER
);
INSERT INTO energy_consumption_meters (MeterID,StationID,MeterTypeCode,InstallationDate,LastReadDate,CurrentReading,Multiplier,FirmwareVersion,CommunicationProtocolCode,StatusFlag,VoltageV,CurrentA,PowerFactor,TemperatureC,BatteryHealthPercent,AlertThresholdHigh,AlertThresholdLow,MaintenanceDueDate,CalibrationDate,OwnerDepartmentCode,Latitude,Longitude,DataLogIntervalMinutes,MeterModelCode) VALUES (20001,4001,1,20210115,20231231,12534.6,1.0,'v1.2',3,0,230.0,12.5,0.98,45.0,95,15000.0,5000.0,20240601,20230101,10,40.7128,-74.0060,15,501);
INSERT INTO energy_consumption_meters (MeterID,StationID,MeterTypeCode,InstallationDate,LastReadDate,CurrentReading,Multiplier,FirmwareVersion,CommunicationProtocolCode,StatusFlag,VoltageV,CurrentA,PowerFactor,TemperatureC,BatteryHealthPercent,AlertThresholdHigh,AlertThresholdLow,MaintenanceDueDate,CalibrationDate,OwnerDepartmentCode,Latitude,Longitude,DataLogIntervalMinutes,MeterModelCode) VALUES (20002,4002,2,20210320,20231230,8732.1,0.5,'v1.3',2,0,240.0,10.2,0.95,42.0,90,13000.0,4000.0,20240715,20230301,12,34.0522,-118.2437,10,502);
INSERT INTO energy_consumption_meters (MeterID,StationID,MeterTypeCode,InstallationDate,LastReadDate,CurrentReading,Multiplier,FirmwareVersion,CommunicationProtocolCode,StatusFlag,VoltageV,CurrentA,PowerFactor,TemperatureC,BatteryHealthPercent,AlertThresholdHigh,AlertThresholdLow,MaintenanceDueDate,CalibrationDate,OwnerDepartmentCode,Latitude,Longitude,DataLogIntervalMinutes,MeterModelCode) VALUES (20003,4003,1,20211005,20231229,10245.8,1.0,'v1.2',3,1,235.0,11.0,0.97,44.0,80,14000.0,4500.0,20240901,20230515,11,51.5074,-0.1278,15,501);

-- Environmental sensor network
CREATE TABLE environmental_sensor_network
(
    SensorID INTEGER PRIMARY KEY,
    NodeID INTEGER,
    SensorTypeCode INTEGER,
    DeploymentDate INTEGER,
    LastCalibrationDate INTEGER,
    FirmwareVersion TEXT,
    BatteryLevelPercent INTEGER,
    SignalStrengthdBm INTEGER,
    MeasurementIntervalSec INTEGER,
    StatusFlag INTEGER,
    Latitude REAL,
    Longitude REAL,
    AltitudeM REAL,
    CO2ppm REAL,
    NO2ppb REAL,
    PM25ugm3 REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    PressurehPa REAL,
    UVIndex REAL,
    LightLux REAL,
    NoiseDBA REAL,
    MaintenanceDueDate INTEGER,
    DataRetentionDays INTEGER,
    OwnerTeamCode INTEGER
);
INSERT INTO environmental_sensor_network (SensorID,NodeID,SensorTypeCode,DeploymentDate,LastCalibrationDate,FirmwareVersion,BatteryLevelPercent,SignalStrengthdBm,MeasurementIntervalSec,StatusFlag,Latitude,Longitude,AltitudeM,CO2ppm,NO2ppb,PM25ugm3,TemperatureC,HumidityPercent,PressurehPa,UVIndex,LightLux,NoiseDBA,MaintenanceDueDate,DataRetentionDays,OwnerTeamCode) VALUES (30001,6001,1,20200110,20231201,'v2.0',85,-70,300,0,40.7128,-74.0060,10,415.2,20.5,12.3,22.5,55,1013.2,3.2,15000,45,20240615,365,21);
INSERT INTO environmental_sensor_network (SensorID,NodeID,SensorTypeCode,DeploymentDate,LastCalibrationDate,FirmwareVersion,BatteryLevelPercent,SignalStrengthdBm,MeasurementIntervalSec,StatusFlag,Latitude,Longitude,AltitudeM,CO2ppm,NO2ppb,PM25ugm3,TemperatureC,HumidityPercent,PressurehPa,UVIndex,LightLux,NoiseDBA,MaintenanceDueDate,DataRetentionDays,OwnerTeamCode) VALUES (30002,6002,2,20200315,20231120,'v2.1',78,-68,600,0,34.0522,-118.2437,30,398.7,15.3,10.8,24.1,48,1012.8,4.0,18000,50,20240701,365,22);
INSERT INTO environmental_sensor_network (SensorID,NodeID,SensorTypeCode,DeploymentDate,LastCalibrationDate,FirmwareVersion,BatteryLevelPercent,SignalStrengthdBm,MeasurementIntervalSec,StatusFlag,Latitude,Longitude,AltitudeM,CO2ppm,NO2ppb,PM25ugm3,TemperatureC,HumidityPercent,PressurehPa,UVIndex,LightLux,NoiseDBA,MaintenanceDueDate,DataRetentionDays,OwnerTeamCode) VALUES (30003,6003,1,20200620,20231210,'v2.0',92,-72,300,1,51.5074,-0.1278,15,422.5,22.0,14.5,21.9,60,1013.5,2.5,13000,40,20240810,365,21);

-- Marketing affiliate partners
CREATE TABLE marketing_affiliate_partners
(
    AffiliateID INTEGER PRIMARY KEY,
    PartnerName TEXT,
    ContractStartDate INTEGER,
    ContractEndDate INTEGER,
    CommissionRate REAL,
    MinimumSpendUSD INTEGER,
    RevenueSharePercent REAL,
    PaymentMethodCode INTEGER,
    ContactPersonID INTEGER,
    StatusFlag INTEGER,
    RegionCode INTEGER,
    TierLevel INTEGER,
    LeadGenerationFlag INTEGER,
    BrandingGuidelineFlag INTEGER,
    DataSharingAgreementFlag INTEGER,
    PerformanceScore INTEGER,
    AverageMonthlyClicks INTEGER,
    AverageMonthlyConversions INTEGER,
    AvgRevenuePerConversion REAL,
    FraudDetectionScore INTEGER,
    PromotionQuota INTEGER,
    SupportContactHours INTEGER,
    SLAResponseHours INTEGER,
    TerminationNoticeDays INTEGER,
    RenewalOptionFlag INTEGER,
    PrimaryVerticalCode INTEGER
);
INSERT INTO marketing_affiliate_partners (AffiliateID,PartnerName,ContractStartDate,ContractEndDate,CommissionRate,MinimumSpendUSD,RevenueSharePercent,PaymentMethodCode,ContactPersonID,StatusFlag,RegionCode,TierLevel,LeadGenerationFlag,BrandingGuidelineFlag,DataSharingAgreementFlag,PerformanceScore,AverageMonthlyClicks,AverageMonthlyConversions,AvgRevenuePerConversion,FraudDetectionScore,PromotionQuota,SupportContactHours,SLAResponseHours,TerminationNoticeDays,RenewalOptionFlag,PrimaryVerticalCode) VALUES (801,'AutoFuelConnect',20220101,20231231,0.07,5000,0.12,2,901,1,10,3,1,1,1,85,25000,500,45.0,90,200,24,4,30,1,4);
INSERT INTO marketing_affiliate_partners (AffiliateID,PartnerName,ContractStartDate,ContractEndDate,CommissionRate,MinimumSpendUSD,RevenueSharePercent,PaymentMethodCode,ContactPersonID,StatusFlag,RegionCode,TierLevel,LeadGenerationFlag,BrandingGuidelineFlag,DataSharingAgreementFlag,PerformanceScore,AverageMonthlyClicks,AverageMonthlyConversions,AvgRevenuePerConversion,FraudDetectionScore,PromotionQuota,SupportContactHours,SLAResponseHours,TerminationNoticeDays,RenewalOptionFlag,PrimaryVerticalCode) VALUES (802,'EcoDriveAds',20220315,20240314,0.09,8000,0.15,1,902,1,12,2,1,0,1,78,18000,400,38.5,85,150,20,6,45,0,5);
INSERT INTO marketing_affiliate_partners (AffiliateID,PartnerName,ContractStartDate,ContractEndDate,CommissionRate,MinimumSpendUSD,RevenueSharePercent,PaymentMethodCode,ContactPersonID,StatusFlag,RegionCode,TierLevel,LeadGenerationFlag,BrandingGuidelineFlag,DataSharingAgreementFlag,PerformanceScore,AverageMonthlyClicks,AverageMonthlyConversions,AvgRevenuePerConversion,FraudDetectionScore,PromotionQuota,SupportContactHours,SLAResponseHours,TerminationNoticeDays,RenewalOptionFlag,PrimaryVerticalCode) VALUES (803,'FuelSaverNetwork',20220501,20250501,0.06,3000,0.10,3,903,0,9,1,0,1,0,70,12000,300,30.0,80,100,18,8,60,1,3);

-- Vehicle recall notices
CREATE TABLE vehicle_recall_notices
(
    RecallID INTEGER PRIMARY KEY,
    VehicleModel TEXT,
    ModelYear INTEGER,
    RecallDate INTEGER,
    IssueDescription TEXT,
    SeverityLevel INTEGER,
    RepairProcedureCode INTEGER,
    EstimatedRepairHours REAL,
    ServiceCenterCount INTEGER,
    WarrantyCoverageFlag INTEGER,
    CompensationAmountUSD INTEGER,
    RegulatoryAgencyCode INTEGER,
    NotificationMethodCode INTEGER,
    FollowUpRequiredFlag INTEGER,
    FollowUpDays INTEGER,
    PartsAffectedCount INTEGER,
    PartsCostEstimateUSD INTEGER,
    CustomerImpactScore INTEGER,
    PublicAnnouncementFlag INTEGER,
    PressReleaseID INTEGER,
    LegalLiabilityFlag INTEGER,
    RecallStatusCode INTEGER,
    LastUpdatedDate INTEGER,
    CreatedByUserID INTEGER,
    RegionCode INTEGER,
    DistributionChannelCode INTEGER
);
INSERT INTO vehicle_recall_notices (RecallID,VehicleModel,ModelYear,RecallDate,IssueDescription,SeverityLevel,RepairProcedureCode,EstimatedRepairHours,ServiceCenterCount,WarrantyCoverageFlag,CompensationAmountUSD,RegulatoryAgencyCode,NotificationMethodCode,FollowUpRequiredFlag,FollowUpDays,PartsAffectedCount,PartsCostEstimateUSD,CustomerImpactScore,PublicAnnouncementFlag,PressReleaseID,LegalLiabilityFlag,RecallStatusCode,LastUpdatedDate,CreatedByUserID,RegionCode,DistributionChannelCode) VALUES (9001,'TurboX200',2020,20230815,'Fuel injector leak',2,4,3.5,12,1,2000,5,1,1,30,3,1500,85,1,7001,0,2,20230820,1101,10,2);
INSERT INTO vehicle_recall_notices (RecallID,VehicleModel,ModelYear,RecallDate,IssueDescription,SeverityLevel,RepairProcedureCode,EstimatedRepairHours,ServiceCenterCount,WarrantyCoverageFlag,CompensationAmountUSD,RegulatoryAgencyCode,NotificationMethodCode,FollowUpRequiredFlag,FollowUpDays,PartsAffectedCount,PartsCostEstimateUSD,CustomerImpactScore,PublicAnnouncementFlag,PressReleaseID,LegalLiabilityFlag,RecallStatusCode,LastUpdatedDate,CreatedByUserID,RegionCode,DistributionChannelCode) VALUES (9002,'EcoDriveX',2021,20231201,'Battery overheating',3,5,4.0,18,0,0,5,2,0,0,0,0,90,0,0,0,1,20231205,1102,12,3);
INSERT INTO vehicle_recall_notices (RecallID,VehicleModel,ModelYear,RecallDate,IssueDescription,SeverityLevel,RepairProcedureCode,EstimatedRepairHours,ServiceCenterCount,WarrantyCoverageFlag,CompensationAmountUSD,RegulatoryAgencyCode,NotificationMethodCode,FollowUpRequiredFlag,FollowUpDays,PartsAffectedCount,PartsCostEstimateUSD,CustomerImpactScore,PublicAnnouncementFlag,PressReleaseID,LegalLiabilityFlag,RecallStatusCode,LastUpdatedDate,CreatedByUserID,RegionCode,DistributionChannelCode) VALUES (9003,'FuelMasterPro',2019,20230720,'Brake fluid seal failure',2,3,2.8,10,1,1500,4,1,1,45,2,800,78,1,7002,0,1,20230725,1103,9,1);

-- Station staff shifts
CREATE TABLE station_staff_shifts
(
    ShiftID INTEGER PRIMARY KEY,
    StaffID INTEGER,
    GasStationID INTEGER,
    ShiftDate INTEGER,
    ShiftStartTime INTEGER,   -- HHMM
    ShiftEndTime INTEGER,     -- HHMM
    PositionCode INTEGER,
    HoursWorked REAL,
    OvertimeHours REAL,
    BreakMinutes INTEGER,
    SalesTargetUSD INTEGER,
    SalesAchievedUSD INTEGER,
    CashHandlingFlag INTEGER,
    SafetyBriefingFlag INTEGER,
    UniformComplianceFlag INTEGER,
    ShiftStatusCode INTEGER,
    SupervisorID INTEGER,
    ClockInDeviceID INTEGER,
    AttendanceCode INTEGER,
    LateArrivalFlag INTEGER,
    EarlyDepartureFlag INTEGER,
    IncidentReportCount INTEGER,
    TrainingCompletedFlag INTEGER,
    ShiftNotes TEXT,
    PayrollBatchID INTEGER,
    RegionCode INTEGER,
    DepartmentCode INTEGER
);
INSERT INTO station_staff_shifts (ShiftID,StaffID,GasStationID,ShiftDate,ShiftStartTime,ShiftEndTime,PositionCode,HoursWorked,OvertimeHours,BreakMinutes,SalesTargetUSD,SalesAchievedUSD,CashHandlingFlag,SafetyBriefingFlag,UniformComplianceFlag,ShiftStatusCode,SupervisorID,ClockInDeviceID,AttendanceCode,LateArrivalFlag,EarlyDepartureFlag,IncidentReportCount,TrainingCompletedFlag,ShiftNotes,PayrollBatchID,RegionCode,DepartmentCode) VALUES (11001,2001,4001,20231201,800,1600,3,8.0,0.5,30,5000,5200,1,1,1,1,3001,5001,0,0,0,0,1,'',6001,10,5);
INSERT INTO station_staff_shifts (ShiftID,StaffID,GasStationID,ShiftDate,ShiftStartTime,ShiftEndTime,PositionCode,HoursWorked,OvertimeHours,BreakMinutes,SalesTargetUSD,SalesAchievedUSD,CashHandlingFlag,SafetyBriefingFlag,UniformComplianceFlag,ShiftStatusCode,SupervisorID,ClockInDeviceID,AttendanceCode,LateArrivalFlag,EarlyDepartureFlag,IncidentReportCount,TrainingCompletedFlag,ShiftNotes,PayrollBatchID,RegionCode,DepartmentCode) VALUES (11002,2002,4002,20231201,1600,2400,4,8.0,1.0,45,4500,4300,1,1,0,2,3002,5002,1,1,0,1,0,'Late clock‑in',6002,12,5);
INSERT INTO station_staff_shifts (ShiftID,StaffID,GasStationID,ShiftDate,ShiftStartTime,ShiftEndTime,PositionCode,HoursWorked,OvertimeHours,BreakMinutes,SalesTargetUSD,SalesAchievedUSD,CashHandlingFlag,SafetyBriefingFlag,UniformComplianceFlag,ShiftStatusCode,SupervisorID,ClockInDeviceID,AttendanceCode,LateArrivalFlag,EarlyDepartureFlag,IncidentReportCount,TrainingCompletedFlag,ShiftNotes,PayrollBatchID,RegionCode,DepartmentCode) VALUES (11003,2003,4003,20231201,0,800,2,8.0,0.0,30,4800,5000,0,1,1,1,3003,5003,0,0,0,0,1,'',6003,9,5);

-- Customer loyalty rewards
CREATE TABLE customer_loyalty_rewards
(
    RewardID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    RewardProgramCode INTEGER,
    EarnedDate INTEGER,
    ExpirationDate INTEGER,
    RewardTypeCode INTEGER,
    PointsEarned INTEGER,
    PointsRedeemed INTEGER,
    MonetaryValueUSD REAL,
    TierLevel INTEGER,
    StatusFlag INTEGER,
    RedemptionChannelCode INTEGER,
    PromotionCode TEXT,
    EligibilityCriteriaCode INTEGER,
    BonusMultiplier REAL,
    FreezeFlag INTEGER,
    TransferableFlag INTEGER,
    MaxRedemptionsPerYear INTEGER,
    LastRedemptionDate INTEGER,
    RewardDescription TEXT,
    IssuerEmployeeID INTEGER,
    ValidationChecksum INTEGER,
    NotificationSentFlag INTEGER,
    CreatedTimestamp INTEGER,
    UpdatedTimestamp INTEGER,
    RegionCode INTEGER,
    MarketingCampaignID INTEGER
);
INSERT INTO customer_loyalty_rewards (RewardID,CustomerID,RewardProgramCode,EarnedDate,ExpirationDate,RewardTypeCode,PointsEarned,PointsRedeemed,MonetaryValueUSD,TierLevel,StatusFlag,RedemptionChannelCode,PromotionCode,EligibilityCriteriaCode,BonusMultiplier,FreezeFlag,TransferableFlag,MaxRedemptionsPerYear,LastRedemptionDate,RewardDescription,IssuerEmployeeID,ValidationChecksum,NotificationSentFlag,CreatedTimestamp,UpdatedTimestamp,RegionCode,MarketingCampaignID) VALUES (21001,1001,1,20231101,20241101,2,1500,0,15.0,3,1,4,'SPRING23',5,1.0,0,1,5,0,'Fuel discount',4001,987654,0,20231101,20231101,10,801);
INSERT INTO customer_loyalty_rewards (RewardID,CustomerID,RewardProgramCode,EarnedDate,ExpirationDate,RewardTypeCode,PointsEarned,PointsRedeemed,MonetaryValueUSD,TierLevel,StatusFlag,RedemptionChannelCode,PromotionCode,EligibilityCriteriaCode,BonusMultiplier,FreezeFlag,TransferableFlag,MaxRedemptionsPerYear,LastRedemptionDate,RewardDescription,IssuerEmployeeID,ValidationChecksum,NotificationSentFlag,CreatedTimestamp,UpdatedTimestamp,RegionCode,MarketingCampaignID) VALUES (21002,1002,2,20231205,20241205,1,2000,500,20.0,2,1,3,'WINTER24',6,1.2,0,0,3,20231215,'Cashback',4002,123456,1,20231205,20231215,12,802);
INSERT INTO customer_loyalty_rewards (RewardID,CustomerID,RewardProgramCode,EarnedDate,ExpirationDate,RewardTypeCode,PointsEarned,PointsRedeemed,MonetaryValueUSD,TierLevel,StatusFlag,RedemptionChannelCode,PromotionCode,EligibilityCriteriaCode,BonusMultiplier,FreezeFlag,TransferableFlag,MaxRedemptionsPerYear,LastRedemptionDate,RewardDescription,IssuerEmployeeID,ValidationChecksum,NotificationSentFlag,CreatedTimestamp,UpdatedTimestamp,RegionCode,MarketingCampaignID) VALUES (21003,1003,1,20231120,20241120,3,500,0,5.0,1,0,2,'SUMMER23',4,0.8,1,0,2,0,'Free car wash',4003,555555,0,20231120,20231120,9,801);

-- Digital payment gateways
CREATE TABLE digital_payment_gateways
(
    GatewayID INTEGER PRIMARY KEY,
    GatewayName TEXT,
    IntegrationDate INTEGER,
    SupportedCurrencies TEXT,
    TransactionFeePercent REAL,
    FixedFeePerTransaction REAL,
    MaxTransactionAmountUSD REAL,
    MinTransactionAmountUSD REAL,
    SettlementPeriodDays INTEGER,
    AntiFraudScore INTEGER,
    PCIComplianceFlag INTEGER,
    APIReleaseVersion TEXT,
    SDKVersion TEXT,
    OAuthSupportedFlag INTEGER,
    WebhookEnabledFlag INTEGER,
    MaxConcurrentSessions INTEGER,
    AvgResponseTimeMs REAL,
    DowntimeMinutesLastMonth INTEGER,
    SupportContactID INTEGER,
    SLAResponseHours INTEGER,
    RegionSupportedCode INTEGER,
    CurrencyConversionRate REAL,
    ChargebackRatePercent REAL,
    TransactionVolumeMonthly INTEGER,
    DailyLimitPerCardUSD REAL,
    MonthlyLimitPerMerchantUSD REAL,
    EnabledFlag INTEGER,
    LastAuditDate INTEGER,
    ComplianceOfficerID INTEGER
);
INSERT INTO digital_payment_gateways (GatewayID,GatewayName,IntegrationDate,SupportedCurrencies,TransactionFeePercent,FixedFeePerTransaction,MaxTransactionAmountUSD,MinTransactionAmountUSD,SettlementPeriodDays,AntiFraudScore,PCIComplianceFlag,APIReleaseVersion,SDKVersion,OAuthSupportedFlag,WebhookEnabledFlag,MaxConcurrentSessions,AvgResponseTimeMs,DowntimeMinutesLastMonth,SupportContactID,SLAResponseHours,RegionSupportedCode,CurrencyConversionRate,ChargebackRatePercent,TransactionVolumeMonthly,DailyLimitPerCardUSD,MonthlyLimitPerMerchantUSD,EnabledFlag,LastAuditDate,ComplianceOfficerID) VALUES (901,'FastPay',20220115,'USD,EUR,GBP',2.5,0.30,10000,1,2,95,1,'v3.4','sdk2.1',1,1,5000,120.5,30,7001,4,10,1.0,0.8,250000,5000,200000,1,20231220,8001);
INSERT INTO digital_payment_gateways (GatewayID,GatewayName,IntegrationDate,SupportedCurrencies,TransactionFeePercent,FixedFeePerTransaction,MaxTransactionAmountUSD,MinTransactionAmountUSD,SettlementPeriodDays,AntiFraudScore,PCIComplianceFlag,APIReleaseVersion,SDKVersion,OAuthSupportedFlag,WebhookEnabledFlag,MaxConcurrentSessions,AvgResponseTimeMs,DowntimeMinutesLastMonth,SupportContactID,SLAResponseHours,RegionSupportedCode,CurrencyConversionRate,ChargebackRatePercent,TransactionVolumeMonthly,DailyLimitPerCardUSD,MonthlyLimitPerMerchantUSD,EnabledFlag,LastAuditDate,ComplianceOfficerID) VALUES (902,'SecureTrans',20220301,'USD,JPY,CAD',2.9,0.25,15000,5,1,92,1,'v3.5','sdk2.2',1,0,6000,110.0,45,7002,6,12,1.0,0.6,300000,7000,250000,1,20231222,8002);
INSERT INTO digital_payment_gateways (GatewayID,GatewayName,IntegrationDate,SupportedCurrencies,TransactionFeePercent,FixedFeePerTransaction,MaxTransactionAmountUSD,MinTransactionAmountUSD,SettlementPeriodDays,AntiFraudScore,PCIComplianceFlag,APIReleaseVersion,SDKVersion,OAuthSupportedFlag,WebhookEnabledFlag,MaxConcurrentSessions,AvgResponseTimeMs,DowntimeMinutesLastMonth,SupportContactID,SLAResponseHours,RegionSupportedCode,CurrencyConversionRate,ChargebackRatePercent,TransactionVolumeMonthly,DailyLimitPerCardUSD,MonthlyLimitPerMerchantUSD,EnabledFlag,LastAuditDate,ComplianceOfficerID) VALUES (903,'PayLink',20220510,'USD,AUD,NZD',2.2,0.20,8000,2,3,97,1,'v3.6','sdk2.3',0,1,4500,115.3,20,7003,3,8,1.0,0.5,200000,4000,150000,1,20231225,8003);