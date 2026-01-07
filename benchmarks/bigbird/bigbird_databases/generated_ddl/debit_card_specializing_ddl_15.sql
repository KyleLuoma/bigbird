-- Fuel price indices per region and fuel type
CREATE TABLE fuel_price_indices
(
    IndexID INTEGER PRIMARY KEY,
    Region TEXT,
    FuelType TEXT,
    IndexDate DATE,
    AvgPrice REAL,
    MaxPrice REAL,
    MinPrice REAL,
    Volatility REAL,
    DataSource TEXT,
    Currency TEXT,
    Units TEXT,
    PriceChangePct REAL,
    PriceRank INTEGER,
    SeasonalFactor REAL,
    InflationAdjusted REAL,
    MedianPrice REAL,
    SampleSize INTEGER,
    ConfidenceIntervalLow REAL,
    ConfidenceIntervalHigh REAL,
    Remarks TEXT
);

INSERT INTO fuel_price_indices (IndexID, Region, FuelType, IndexDate, AvgPrice, MaxPrice, MinPrice, Volatility, DataSource, Currency, Units, PriceChangePct, PriceRank, SeasonalFactor, InflationAdjusted, MedianPrice, SampleSize, ConfidenceIntervalLow, ConfidenceIntervalHigh, Remarks) VALUES (1, 'NorthRegion', 'Diesel', '2023-01-01', 1.245, 1.300, 1.190, 0.05, 'GovStat', 'EUR', 'Liter', 2.1, 5, 1.02, 1.20, 1.240, 1500, 1.215, 1.275, 'Baseline');
INSERT INTO fuel_price_indices (IndexID, Region, FuelType, IndexDate, AvgPrice, MaxPrice, MinPrice, Volatility, DataSource, Currency, Units, PriceChangePct, PriceRank, SeasonalFactor, InflationAdjusted, MedianPrice, SampleSize, ConfidenceIntervalLow, ConfidenceIntervalHigh, Remarks) VALUES (2, 'SouthRegion', 'Petrol', '2023-01-01', 1.160, 1.210, 1.120, 0.04, 'IndustryReport', 'USD', 'Gallon', -1.3, 3, 0.98, 1.15, 1.155, 1800, 1.130, 1.180, 'Winter adjustment');
INSERT INTO fuel_price_indices (IndexID, Region, FuelType, IndexDate, AvgPrice, MaxPrice, MinPrice, Volatility, DataSource, Currency, Units, PriceChangePct, PriceRank, SeasonalFactor, InflationAdjusted, MedianPrice, SampleSize, ConfidenceIntervalLow, ConfidenceIntervalHigh, Remarks) VALUES (3, 'EastRegion', 'LPG', '2023-01-01', 0.845, 0.870, 0.820, 0.03, 'EnergyAgency', 'GBP', 'Kg', 0.5, 8, 1.00, 0.84, 0.842, 1200, 0.830, 0.860, 'Stable market');

-- Road network segment details
CREATE TABLE road_network_segments
(
    SegmentID INTEGER PRIMARY KEY,
    StartNodeID INTEGER,
    EndNodeID INTEGER,
    LengthKm REAL,
    RoadClass TEXT,
    SurfaceType TEXT,
    LaneCount INTEGER,
    SpeedLimitKph INTEGER,
    AvgDailyTraffic INTEGER,
    MaintenanceLevel TEXT,
    ConstructionYear INTEGER,
    LastInspectionDate DATE,
    PavementConditionScore INTEGER,
    IsTollRoad INTEGER,
    TollRate REAL,
    GradientPct REAL,
    CurvatureRadius REAL,
    AdjacentLandUse TEXT,
    Region TEXT,
    Notes TEXT
);

INSERT INTO road_network_segments (SegmentID, StartNodeID, EndNodeID, LengthKm, RoadClass, SurfaceType, LaneCount, SpeedLimitKph, AvgDailyTraffic, MaintenanceLevel, ConstructionYear, LastInspectionDate, PavementConditionScore, IsTollRoad, TollRate, GradientPct, CurvatureRadius, AdjacentLandUse, Region, Notes) VALUES (1001, 10, 20, 12.5, 'A', 'Asphalt', 4, 100, 45000, 'High', 1998, '2022-11-15', 85, 0, 0.0, 1.2, 300, 'Urban', 'NorthRegion', 'Recently resurfaced');
INSERT INTO road_network_segments (SegmentID, StartNodeID, EndNodeID, LengthKm, RoadClass, SurfaceType, LaneCount, SpeedLimitKph, AvgDailyTraffic, MaintenanceLevel, ConstructionYear, LastInspectionDate, PavementConditionScore, IsTollRoad, TollRate, GradientPct, CurvatureRadius, AdjacentLandUse, Region, Notes) VALUES (1002, 21, 30, 8.3, 'B', 'Concrete', 2, 80, 21000, 'Medium', 2005, '2023-02-10', 70, 1, 2.5, 0.8, 500, 'Rural', 'SouthRegion', 'Toll booth installed 2021');
INSERT INTO road_network_segments (SegmentID, StartNodeID, EndNodeID, LengthKm, RoadClass, SurfaceType, LaneCount, SpeedLimitKph, AvgDailyTraffic, MaintenanceLevel, ConstructionYear, LastInspectionDate, PavementConditionScore, IsTollRoad, TollRate, GradientPct, CurvatureRadius, AdjacentLandUse, Region, Notes) VALUES (1003, 31, 40, 15.0, 'C', 'Gravel', 2, 60, 12000, 'Low', 2015, '2022-08-05', 60, 0, 0.0, 2.5, 200, 'Forest', 'EastRegion', 'Planned upgrade next year');

-- Environmental sensor calibration records
CREATE TABLE environmental_sensor_calibrations
(
    CalibrationID INTEGER PRIMARY KEY,
    SensorID INTEGER,
    SensorType TEXT,
    CalibrationDate DATE,
    TechnicianName TEXT,
    CalibrationMethod TEXT,
    Offset REAL,
    ScaleFactor REAL,
    TemperatureCompensation REAL,
    HumidityCompensation REAL,
    LastVerifiedDate DATE,
    ValidityPeriodDays INTEGER,
    CalibrationStatus TEXT,
    NextDueDate DATE,
    CalibrationLab TEXT,
    EquipmentUsed TEXT,
    ReferenceStandard TEXT,
    MeasurementUnit TEXT,
    CalibrationComments TEXT,
    LocationCode TEXT
);

INSERT INTO environmental_sensor_calibrations (CalibrationID, SensorID, SensorType, CalibrationDate, TechnicianName, CalibrationMethod, Offset, ScaleFactor, TemperatureCompensation, HumidityCompensation, LastVerifiedDate, ValidityPeriodDays, CalibrationStatus, NextDueDate, CalibrationLab, EquipmentUsed, ReferenceStandard, MeasurementUnit, CalibrationComments, LocationCode) VALUES (5001, 101, 'CO2', '2023-03-01', 'AliceSmith', 'Manual', 0.02, 1.001, 0.0, 0.0, '2023-03-01', 365, 'Verified', '2024-03-01', 'LabA', 'CalibratorX', 'StdCO2', 'ppm', 'No issues', 'LOC01');
INSERT INTO environmental_sensor_calibrations (CalibrationID, SensorID, SensorType, CalibrationDate, TechnicianName, CalibrationMethod, Offset, ScaleFactor, TemperatureCompensation, HumidityCompensation, LastVerifiedDate, ValidityPeriodDays, CalibrationStatus, NextDueDate, CalibrationLab, EquipmentUsed, ReferenceStandard, MeasurementUnit, CalibrationComments, LocationCode) VALUES (5002, 102, 'NOx', '2023-01-15', 'BobJones', 'Automated', -0.01, 0.998, 0.1, 0.05, '2023-01-15', 180, 'Pending', '2023-07-15', 'LabB', 'CalibratorY', 'StdNOx', 'ppb', 'Minor drift observed', 'LOC02');
INSERT INTO environmental_sensor_calibrations (CalibrationID, SensorID, SensorType, CalibrationDate, TechnicianName, CalibrationMethod, Offset, ScaleFactor, TemperatureCompensation, HumidityCompensation, LastVerifiedDate, ValidityPeriodDays, CalibrationStatus, NextDueDate, CalibrationLab, EquipmentUsed, ReferenceStandard, MeasurementUnit, CalibrationComments, LocationCode) VALUES (5003, 103, 'PM2_5', '2022-12-20', 'CarolLee', 'Manual', 0.00, 1.000, 0.0, 0.0, '2022-12-20', 365, 'Verified', '2023-12-20', 'LabC', 'CalibratorZ', 'StdPM25', 'µg/m3', 'Clean calibration', 'LOC03');

-- Corporate policy documents metadata
CREATE TABLE corporate_policy_documents
(
    PolicyID INTEGER PRIMARY KEY,
    Title TEXT,
    Category TEXT,
    EffectiveDate DATE,
    RevisionNumber INTEGER,
    Author TEXT,
    OwnerDepartment TEXT,
    ApprovalStatus TEXT,
    ReviewFrequencyDays INTEGER,
    LastReviewedDate DATE,
    NextReviewDate DATE,
    ConfidentialityLevel TEXT,
    DocumentURL TEXT,
    VersionTag TEXT,
    Summary TEXT,
    ChangeLog TEXT,
    DistributionList TEXT,
    DocumentFormat TEXT,
    RetentionPeriodYears INTEGER,
    Archived INTEGER
);

INSERT INTO corporate_policy_documents (PolicyID, Title, Category, EffectiveDate, RevisionNumber, Author, OwnerDepartment, ApprovalStatus, ReviewFrequencyDays, LastReviewedDate, NextReviewDate, ConfidentialityLevel, DocumentURL, VersionTag, Summary, ChangeLog, DistributionList, DocumentFormat, RetentionPeriodYears, Archived) VALUES (2001, 'Data Privacy Policy', 'Compliance', '2022-06-01', 3, 'DianaKing', 'Legal', 'Approved', 365, '2023-05-20', '2024-05-20', 'Confidential', 'http://intranet/policies/dataprivacy.pdf', 'v3', 'Guidelines for handling personal data', 'Added GDPR references', 'AllEmployees', 'PDF', 7, 0);
INSERT INTO corporate_policy_documents (PolicyID, Title, Category, EffectiveDate, RevisionNumber, Author, OwnerDepartment, ApprovalStatus, ReviewFrequencyDays, LastReviewedDate, NextReviewDate, ConfidentialityLevel, DocumentURL, VersionTag, Summary, ChangeLog, DistributionList, DocumentFormat, RetentionPeriodYears, Archived) VALUES (2002, 'Remote Work Guidelines', 'HR', '2021-01-15', 2, 'EvanMiller', 'HR', 'Approved', 180, '2023-02-10', '2023-08-10', 'Internal', 'http://intranet/policies/remotework.docx', 'v2', 'Procedures for remote employees', 'Updated VPN requirements', 'AllStaff', 'DOCX', 5, 0);
INSERT INTO corporate_policy_documents (PolicyID, Title, Category, EffectiveDate, RevisionNumber, Author, OwnerDepartment, ApprovalStatus, ReviewFrequencyDays, LastReviewedDate, NextReviewDate, ConfidentialityLevel, DocumentURL, VersionTag, Summary, ChangeLog, DistributionList, DocumentFormat, RetentionPeriodYears, Archived) VALUES (2003, 'Supply Chain Ethics', 'Compliance', '2020-09-30', 1, 'FionaChan', 'Procurement', 'Pending', 730, '2022-10-05', '2024-10-05', 'Restricted', 'http://intranet/policies/supplychain.pdf', 'v1', 'Ethical standards for suppliers', 'Initial release', 'ProcurementTeam', 'PDF', 10, 0);

-- Supply chain shipment logs
CREATE TABLE supply_chain_shipment_logs
(
    ShipmentID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    DestinationWarehouseID INTEGER,
    ProductCategory TEXT,
    ShipmentDate DATE,
    ArrivalDate DATE,
    CarrierName TEXT,
    ContainerNumber TEXT,
    PalletCount INTEGER,
    GrossWeightKg REAL,
    NetWeightKg REAL,
    VolumeCubicM REAL,
    ShipmentStatus TEXT,
    DelayReason TEXT,
    TemperatureControlled INTEGER,
    HazardousMaterial INTEGER,
    SealNumber TEXT,
    FreightCost REAL,
    InsuranceCost REAL,
    Remarks TEXT
);

INSERT INTO supply_chain_shipment_logs (ShipmentID, SupplierID, DestinationWarehouseID, ProductCategory, ShipmentDate, ArrivalDate, CarrierName, ContainerNumber, PalletCount, GrossWeightKg, NetWeightKg, VolumeCubicM, ShipmentStatus, DelayReason, TemperatureControlled, HazardousMaterial, SealNumber, FreightCost, InsuranceCost, Remarks) VALUES (30001, 501, 1001, 'Lubricants', '2023-04-01', '2023-04-05', 'TransLogix', 'CONT12345', 20, 15000.5, 14800.0, 45.2, 'Delivered', '', 0, 0, 'SEAL987', 2500.00, 150.00, 'On time');
INSERT INTO supply_chain_shipment_logs (ShipmentID, SupplierID, DestinationWarehouseID, ProductCategory, ShipmentDate, ArrivalDate, CarrierName, ContainerNumber, PalletCount, GrossWeightKg, NetWeightKg, VolumeCubicM, ShipmentStatus, DelayReason, TemperatureControlled, HazardousMaterial, SealNumber, FreightCost, InsuranceCost, Remarks) VALUES (30002, 502, 1002, 'Chemicals', '2023-04-03', '2023-04-10', 'FastFreight', 'CONT67890', 15, 12000.0, 11850.0, 38.0, 'Delayed', 'CustomsHold', 1, 1, 'SEAL654', 3200.00, 200.00, 'Customs clearance delayed');
INSERT INTO supply_chain_shipment_logs (ShipmentID, SupplierID, DestinationWarehouseID, ProductCategory, ShipmentDate, ArrivalDate, CarrierName, ContainerNumber, PalletCount, GrossWeightKg, NetWeightKg, VolumeCubicM, ShipmentStatus, DelayReason, TemperatureControlled, HazardousMaterial, SealNumber, FreightCost, InsuranceCost, Remarks) VALUES (30003, 503, 1003, 'SpareParts', '2023-04-07', '2023-04-09', 'LogiShip', 'CONT11223', 30, 8000.0, 7950.0, 25.5, 'Delivered', '', 0, 0, 'SEAL321', 1800.00, 120.00, 'Express delivery');

-- Station energy efficiency metrics per month
CREATE TABLE station_energy_efficiency_metrics
(
    MetricID INTEGER PRIMARY KEY,
    StationID INTEGER,
    ReportingMonth TEXT,
    TotalEnergyKwh REAL,
    RenewableEnergyKwh REAL,
    EnergyCostUSD REAL,
    CO2eEmissionsKg REAL,
    EnergyIntensityPerSale REAL,
    PeakDemandKw REAL,
    DemandResponseParticipated INTEGER,
    EquipmentEfficiencyScore INTEGER,
    LightingEfficiencyScore INTEGER,
    HVACEfficiencyScore INTEGER,
    SolarPanelGenerationKwh REAL,
    BatteryStorageUtilizationPct REAL,
    CoolingLoadKw REAL,
    HeatingLoadKw REAL,
    WasteHeatRecoveryPct REAL,
    GreenRatingLevel TEXT,
    AuditDate DATE,
    Comments TEXT
);

INSERT INTO station_energy_efficiency_metrics (MetricID, StationID, ReportingMonth, TotalEnergyKwh, RenewableEnergyKwh, EnergyCostUSD, CO2eEmissionsKg, EnergyIntensityPerSale, PeakDemandKw, DemandResponseParticipated, EquipmentEfficiencyScore, LightingEfficiencyScore, HVACEfficiencyScore, SolarPanelGenerationKwh, BatteryStorageUtilizationPct, CoolingLoadKw, HeatingLoadKw, WasteHeatRecoveryPct, GreenRatingLevel, AuditDate, Comments) VALUES (4001, 2001, '202303', 45000.0, 12000.0, 5600.00, 8500.0, 0.15, 350.0, 1, 90, 85, 80, 5000.0, 45.0, 120.0, 30.0, 10.0, 'Gold', '2023-04-01', 'Improved solar output');
INSERT INTO station_energy_efficiency_metrics (MetricID, StationID, ReportingMonth, TotalEnergyKwh, RenewableEnergyKwh, EnergyCostUSD, CO2eEmissionsKg, EnergyIntensityPerSale, PeakDemandKw, DemandResponseParticipated, EquipmentEfficiencyScore, LightingEfficiencyScore, HVACEfficiencyScore, SolarPanelGenerationKwh, BatteryStorageUtilizationPct, CoolingLoadKw, HeatingLoadKw, WasteHeatRecoveryPct, GreenRatingLevel, AuditDate, Comments) VALUES (4002, 2002, '202303', 38000.0, 8000.0, 4700.00, 7200.0, 0.13, 300.0, 0, 88, 80, 78, 3500.0, 30.0, 100.0, 25.0, 8.0, 'Silver', '2023-04-02', 'No demand response participation');
INSERT INTO station_energy_efficiency_metrics (MetricID, StationID, ReportingMonth, TotalEnergyKwh, RenewableEnergyKwh, EnergyCostUSD, CO2eEmissionsKg, EnergyIntensityPerSale, PeakDemandKw, DemandResponseParticipated, EquipmentEfficiencyScore, LightingEfficiencyScore, HVACEfficiencyScore, SolarPanelGenerationKwh, BatteryStorageUtilizationPct, CoolingLoadKw, HeatingLoadKw, WasteHeatRecoveryPct, GreenRatingLevel, AuditDate, Comments) VALUES (4003, 2003, '202303', 52000.0, 15000.0, 6400.00, 9800.0, 0.17, 380.0, 1, 92, 88, 85, 6000.0, 50.0, 130.0, 35.0, 12.0, 'Platinum', '2023-04-03', 'Highest rating this quarter');

-- Driver compliance checklist records
CREATE TABLE driver_compliance_checklist
(
    ChecklistID INTEGER PRIMARY KEY,
    DriverID INTEGER,
    Date DATE,
    LicenseValid INTEGER,
    MedicalExamValid INTEGER,
    BackgroundCheckComplete INTEGER,
    DrugTestResult TEXT,
    HoursOfServiceCompliance INTEGER,
    VehicleInspectionScore INTEGER,
    SeatbeltUsageScore INTEGER,
    MobilePhoneUsePolicy INTEGER,
    TrainingCompleted TEXT,
    SafetyBriefingAttended INTEGER,
    IncidentHistoryScore INTEGER,
    FatigueRiskScore INTEGER,
    WeatherReadinessScore INTEGER,
    EmergencyKitPresent INTEGER,
    ComplianceOverallScore INTEGER,
    ReviewerName TEXT,
    Comments TEXT
);

INSERT INTO driver_compliance_checklist (ChecklistID, DriverID, Date, LicenseValid, MedicalExamValid, BackgroundCheckComplete, DrugTestResult, HoursOfServiceCompliance, VehicleInspectionScore, SeatbeltUsageScore, MobilePhoneUsePolicy, TrainingCompleted, SafetyBriefingAttended, IncidentHistoryScore, FatigueRiskScore, WeatherReadinessScore, EmergencyKitPresent, ComplianceOverallScore, ReviewerName, Comments) VALUES (6001, 801, '2023-03-28', 1, 1, 1, 'Negative', 1, 92, 98, 1, 'DefensiveDriving', 1, 85, 70, 80, 1, 90, 'JohnDoe', 'All good');
INSERT INTO driver_compliance_checklist (ChecklistID, DriverID, Date, LicenseValid, MedicalExamValid, BackgroundCheckComplete, DrugTestResult, HoursOfServiceCompliance, VehicleInspectionScore, SeatbeltUsageScore, MobilePhoneUsePolicy, TrainingCompleted, SafetyBriefingAttended, IncidentHistoryScore, FatigueRiskScore, WeatherReadinessScore, EmergencyKitPresent, ComplianceOverallScore, ReviewerName, Comments) VALUES (6002, 802, '2023-03-28', 1, 0, 1, 'Negative', 0, 78, 85, 0, 'AdvancedSafety', 1, 70, 60, 65, 1, 68, 'JaneSmith', 'Medical exam overdue');
INSERT INTO driver_compliance_checklist (ChecklistID, DriverID, Date, LicenseValid, MedicalExamValid, BackgroundCheckComplete, DrugTestResult, HoursOfServiceCompliance, VehicleInspectionScore, SeatbeltUsageScore, MobilePhoneUsePolicy, TrainingCompleted, SafetyBriefingAttended, IncidentHistoryScore, FatigueRiskScore, WeatherReadinessScore, EmergencyKitPresent, ComplianceOverallScore, ReviewerName, Comments) VALUES (6003, 803, '2023-03-28', 1, 1, 1, 'Positive', 1, 88, 90, 1, 'BasicSafety', 0, 80, 75, 78, 1, 80, 'MikeBrown', 'Positive drug test – pending action');

-- Marketing channel performance metrics
CREATE TABLE marketing_channel_performance
(
    RecordID INTEGER PRIMARY KEY,
    ChannelName TEXT,
    CampaignID INTEGER,
    StartDate DATE,
    EndDate DATE,
    Impressions INTEGER,
    Clicks INTEGER,
    Conversions INTEGER,
    SpendUSD REAL,
    RevenueUSD REAL,
    CPA REAL,
    CPC REAL,
    CPM REAL,
    CTR REAL,
    ConversionRate REAL,
    ROI REAL,
    AudienceReach INTEGER,
    Frequency INTEGER,
    AttributionModel TEXT,
    Notes TEXT
);

INSERT INTO marketing_channel_performance (RecordID, ChannelName, CampaignID, StartDate, EndDate, Impressions, Clicks, Conversions, SpendUSD, RevenueUSD, CPA, CPC, CPM, CTR, ConversionRate, ROI, AudienceReach, Frequency, AttributionModel, Notes) VALUES (7001, 'SocialMedia', 9001, '2023-02-01', '2023-02-28', 1500000, 25000, 3200, 12000.00, 27000.00, 3.75, 0.48, 8.00, 1.67, 12.80, 1.25, 800000, 3, 'LastClick', 'Positive trend');
INSERT INTO marketing_channel_performance (RecordID, ChannelName, CampaignID, StartDate, EndDate, Impressions, Clicks, Conversions, SpendUSD, RevenueUSD, CPA, CPC, CPM, CTR, ConversionRate, ROI, AudienceReach, Frequency, AttributionModel, Notes) VALUES (7002, 'SearchAds', 9002, '2023-03-01', '2023-03-31', 2000000, 40000, 5600, 18000.00, 35000.00, 3.21, 0.45, 9.00, 2.00, 14.00, 1.44, 950000, 4, 'Linear', 'Steady performance');
INSERT INTO marketing_channel_performance (RecordID, ChannelName, CampaignID, StartDate, EndDate, Impressions, Clicks, Conversions, SpendUSD, RevenueUSD, CPA, CPC, CPM, CTR, ConversionRate, ROI, AudienceReach, Frequency, AttributionModel, Notes) VALUES (7003, 'Email', 9003, '2023-01-15', '2023-01-31', 500000, 15000, 2100, 6000.00, 13000.00, 2.86, 0.40, 12.00, 3.00, 14.00, 2.17, 300000, 5, 'FirstTouch', 'High ROI');

-- Vehicle component inventory catalog
CREATE TABLE vehicle_component_inventory
(
    ComponentID INTEGER PRIMARY KEY,
    ComponentName TEXT,
    PartNumber TEXT,
    Category TEXT,
    SupplierID INTEGER,
    UnitCostUSD REAL,
    StockOnHand INTEGER,
    ReorderLevel INTEGER,
    LeadTimeDays INTEGER,
    LastOrderDate DATE,
    NextExpectedDelivery DATE,
    WarrantyMonths INTEGER,
    CompatibilityVehicleModel TEXT,
    WeightKg REAL,
    DimensionsCm TEXT,
    StorageLocation TEXT,
    CriticalityScore INTEGER,
    ObsolescenceStatus TEXT,
    LastUsedDate DATE,
    Comments TEXT
);

INSERT INTO vehicle_component_inventory (ComponentID, ComponentName, PartNumber, Category, SupplierID, UnitCostUSD, StockOnHand, ReorderLevel, LeadTimeDays, LastOrderDate, NextExpectedDelivery, WarrantyMonths, CompatibilityVehicleModel, WeightKg, DimensionsCm, StorageLocation, CriticalityScore, ObsolescenceStatus, LastUsedDate, Comments) VALUES (8001, 'FuelPump', 'FP-1234', 'Engine', 601, 250.00, 45, 10, 14, '2023-02-20', '2023-03-10', 24, 'ModelX', 12.5, '15x10x8', 'WH-A1', 9, 'Active', '2023-03-01', 'Standard part');
INSERT INTO vehicle_component_inventory (ComponentID, ComponentName, PartNumber, Category, SupplierID, UnitCostUSD, StockOnHand, ReorderLevel, LeadTimeDays, LastOrderDate, NextExpectedDelivery, WarrantyMonths, CompatibilityVehicleModel, WeightKg, DimensionsCm, StorageLocation, CriticalityScore, ObsolescenceStatus, LastUsedDate, Comments) VALUES (8002, 'BatteryPack', 'BP-5678', 'Electrical', 602, 1200.00, 20, 5, 21, '2023-01-15', '2023-02-07', 36, 'ModelY', 45.0, '30x20x15', 'WH-B2', 10, 'Active', '2023-02-28', 'High value');
INSERT INTO vehicle_component_inventory (ComponentID, ComponentName, PartNumber, Category, SupplierID, UnitCostUSD, StockOnHand, ReorderLevel, LeadTimeDays, LastOrderDate, NextExpectedDelivery, WarrantyMonths, CompatibilityVehicleModel, WeightKg, DimensionsCm, StorageLocation, CriticalityScore, ObsolescenceStatus, LastUsedDate, Comments) VALUES (8003, 'Turbocharger', 'TC-9012', 'Engine', 603, 850.00, 12, 3, 30, '2022-12-10', '2023-01-09', 12, 'ModelZ', 22.0, '25x18x12', 'WH-C3', 8, 'Obsolete', '2022-12-31', 'Phase out pending');

-- Public transport route timing schedule
CREATE TABLE public_transport_route_timings
(
    TimingID INTEGER PRIMARY KEY,
    RouteID INTEGER,
    Direction TEXT,
    StopSequence INTEGER,
    StopID INTEGER,
    ScheduledArrival TIME,
    ScheduledDeparture TIME,
    AvgDelayMinutes REAL,
    PeakHourIndicator INTEGER,
    ServiceDayType TEXT,
    OperatorName TEXT,
    VehicleType TEXT,
    FrequencyMinutes INTEGER,
    CapacitySeats INTEGER,
    AccessibilityFeatures TEXT,
    FareZone TEXT,
    EstimatedTravelTimeMinutes REAL,
    OnTimePerformancePct REAL,
    LastUpdated DATE,
    Remarks TEXT
);

INSERT INTO public_transport_route_timings (TimingID, RouteID, Direction, StopSequence, StopID, ScheduledArrival, ScheduledDeparture, AvgDelayMinutes, PeakHourIndicator, ServiceDayType, OperatorName, VehicleType, FrequencyMinutes, CapacitySeats, AccessibilityFeatures, FareZone, EstimatedTravelTimeMinutes, OnTimePerformancePct, LastUpdated, Remarks) VALUES (9001, 101, 'Northbound', 1, 501, '07:00:00', '07:01:00', 0.5, 1, 'Weekday', 'CityTransit', 'Bus', 10, 50, 'WheelchairRamp', 'A', 30.0, 96.0, '2023-03-20', '');
INSERT INTO public_transport_route_timings (TimingID, RouteID, Direction, StopSequence, StopID, ScheduledArrival, ScheduledDeparture, AvgDelayMinutes, PeakHourIndicator, ServiceDayType, OperatorName, VehicleType, FrequencyMinutes, CapacitySeats, AccessibilityFeatures, FareZone, EstimatedTravelTimeMinutes, OnTimePerformancePct, LastUpdated, Remarks) VALUES (9002, 101, 'Northbound', 2, 502, '07:10:00', '07:11:00', 1.2, 1, 'Weekday', 'CityTransit', 'Bus', 10, 50, 'WheelchairRamp', 'A', 30.0, 92.5, '2023-03-20', '');
INSERT INTO public_transport_route_timings (TimingID, RouteID, Direction, StopSequence, StopID, ScheduledArrival, ScheduledDeparture, AvgDelayMinutes, PeakHourIndicator, ServiceDayType, OperatorName, VehicleType, FrequencyMinutes, CapacitySeats, AccessibilityFeatures, FareZone, EstimatedTravelTimeMinutes, OnTimePerformancePct, LastUpdated, Remarks) VALUES (9003, 101, 'Northbound', 3, 503, '07:20:00', '07:21:00', 0.8, 1, 'Weekday', 'CityTransit', 'Bus', 10, 50, 'WheelchairRamp', 'A', 30.0, 94.3, '2023-03-20', '');