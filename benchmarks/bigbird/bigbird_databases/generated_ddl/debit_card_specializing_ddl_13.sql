-- Advertising creative assets
CREATE TABLE advertising_creatives (
    CreativeID INTEGER PRIMARY KEY,
    CampaignID INTEGER,
    Type TEXT,
    Format TEXT,
    DurationSec INTEGER,
    WidthPx INTEGER,
    HeightPx INTEGER,
    FileSizeKB INTEGER,
    ColorProfile TEXT,
    Language TEXT,
    TargetAudience TEXT,
    ApprovalStatus TEXT,
    CreatedDate DATE,
    ModifiedDate DATE,
    DesignerID INTEGER,
    Version INTEGER,
    AssetURL TEXT,
    IsActive INTEGER,
    BudgetAllocated REAL,
    EstimatedReach INTEGER
);
INSERT INTO advertising_creatives (CreativeID,CampaignID,Type,Format,DurationSec,WidthPx,HeightPx,FileSizeKB,ColorProfile,Language,TargetAudience,ApprovalStatus,CreatedDate,ModifiedDate,DesignerID,Version,AssetURL,IsActive,BudgetAllocated,EstimatedReach) VALUES (1,101,'video','mp4',30,1920,1080,5000,'sRGB','en','adults','approved','2023-01-10','2023-01-12',7,1,'http://assets.example.com/creative1.mp4',1,20000.0,150000);
INSERT INTO advertising_creatives (CreativeID,CampaignID,Type,Format,DurationSec,WidthPx,HeightPx,FileSizeKB,ColorProfile,Language,TargetAudience,ApprovalStatus,CreatedDate,ModifiedDate,DesignerID,Version,AssetURL,IsActive,BudgetAllocated,EstimatedReach) VALUES (2,102,'banner','jpeg',0,728,90,250,'AdobeRGB','en','youth','pending','2023-02-05','2023-02-06',8,1,'http://assets.example.com/banner1.jpeg',1,12000.0,80000);
INSERT INTO advertising_creatives (CreativeID,CampaignID,Type,Format,DurationSec,WidthPx,HeightPx,FileSizeKB,ColorProfile,Language,TargetAudience,ApprovalStatus,CreatedDate,ModifiedDate,DesignerID,Version,AssetURL,IsActive,BudgetAllocated,EstimatedReach) VALUES (3,103,'audio','mp3',45,0,0,3200,'N/A','en','drivers','approved','2023-03-01','2023-03-02',9,1,'http://assets.example.com/audio1.mp3',1,15000.0,120000);

-- Community outreach events
CREATE TABLE community_outreach_events (
    EventID INTEGER PRIMARY KEY,
    EventName TEXT,
    EventDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    LocationID INTEGER,
    City TEXT,
    State TEXT,
    Country TEXT,
    EstimatedAttendance INTEGER,
    SponsorID INTEGER,
    PartnerOrg TEXT,
    EventType TEXT,
    Description TEXT,
    RegistrationURL TEXT,
    IsVirtual INTEGER,
    AgeRestriction INTEGER,
    Cost REAL,
    ContactPhone TEXT,
    ContactEmail TEXT
);
INSERT INTO community_outreach_events (EventID,EventName,EventDate,StartTime,EndTime,LocationID,City,State,Country,EstimatedAttendance,SponsorID,PartnerOrg,EventType,Description,RegistrationURL,IsVirtual,AgeRestriction,Cost,ContactPhone,ContactEmail) VALUES (1,'Eco_Fair','2023-04-15','10:00','16:00',501,'Springfield','IL','US',300,10,'GreenAlliance','exhibit','Sustainability_expo','http://events.example.com/ecofair',0,0,0.0,'5551234567','info@ecofair.org');
INSERT INTO community_outreach_events (EventID,EventName,EventDate,StartTime,EndTime,LocationID,City,State,Country,EstimatedAttendance,SponsorID,PartnerOrg,EventType,Description,RegistrationURL,IsVirtual,AgeRestriction,Cost,ContactPhone,ContactEmail) VALUES (2,'Tech_Talks','2023-05-20','18:00','20:00',502,'Rivertown','CA','US',150,11,'InnovateHub','seminar','AI_and_future','http://events.example.com/techtalks',1,18,10.0,'5559876543','contact@techtalks.org');
INSERT INTO community_outreach_events (EventID,EventName,EventDate,StartTime,EndTime,LocationID,City,State,Country,EstimatedAttendance,SponsorID,PartnerOrg,EventType,Description,RegistrationURL,IsVirtual,AgeRestriction,Cost,ContactPhone,ContactEmail) VALUES (3,'Health_Camp','2023-06-10','08:00','12:00',503,'Lakeview','TX','US',200,12,'HealthFirst','clinic','Free_health_screenings','http://events.example.com/healthcamp',0,0,0.0,'5552223344','support@healthcamp.org');

-- Fuel coupon codes
CREATE TABLE fuel_coupon_codes (
    CouponID INTEGER PRIMARY KEY,
    Code TEXT,
    IssueDate DATE,
    ExpiryDate DATE,
    DiscountType TEXT,
    DiscountValue REAL,
    ApplicableStationID INTEGER,
    MinPurchaseAmount REAL,
    MaxDiscountAmount REAL,
    UsageLimit INTEGER,
    TimesUsed INTEGER,
    IssuedBy TEXT,
    Description TEXT,
    IsActive INTEGER,
    CreatedBy TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    RedemptionChannel TEXT,
    EligibilityCriteria TEXT,
    Notes TEXT
);
INSERT INTO fuel_coupon_codes (CouponID,Code,IssueDate,ExpiryDate,DiscountType,DiscountValue,ApplicableStationID,MinPurchaseAmount,MaxDiscountAmount,UsageLimit,TimesUsed,IssuedBy,Description,IsActive,CreatedBy,CreatedAt,UpdatedAt,RedemptionChannel,EligibilityCriteria,Notes) VALUES (1,'SAVE5','2023-01-01','2023-12-31','percent',5.0,1001,20.0,15.0,1000,250,'MarketingDept','5_percent_off_on_fuel',1,'admin','2023-01-01','2023-04-01','mobile_app','all_customers','Seasonal_promo');
INSERT INTO fuel_coupon_codes (CouponID,Code,IssueDate,ExpiryDate,DiscountType,DiscountValue,ApplicableStationID,MinPurchaseAmount,MaxDiscountAmount,UsageLimit,TimesUsed,IssuedBy,Description,IsActive,CreatedBy,CreatedAt,UpdatedAt,RedemptionChannel,EligibilityCriteria,Notes) VALUES (2,'FLAT2','2023-02-15','2023-08-15','fixed',2.0,1002,10.0,2.0,500,120,'LoyaltyTeam','$2_off_per_gallon',1,'loyalty_manager','2023-02-15','2023-04-10','card_present','loyalty_members','Limited_time_offer');
INSERT INTO fuel_coupon_codes (CouponID,Code,IssueDate,ExpiryDate,DiscountType,DiscountValue,ApplicableStationID,MinPurchaseAmount,MaxDiscountAmount,UsageLimit,TimesUsed,IssuedBy,Description,IsActive,CreatedBy,CreatedAt,UpdatedAt,RedemptionChannel,EligibilityCriteria,Notes) VALUES (3,'FREEDRINK','2023-03-01','2023-09-30','fixed',0.0,1003,5.0,0.0,300,80,'Promotions','Free_soft_drink_with_fuel_purchase',1,'promo_lead','2023-03-01','2023-04-15','online','new_customers','Bundled_offer');

-- Vehicle telematics sessions
CREATE TABLE vehicle_telematics_sessions (
    SessionID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    StartTimestamp TEXT,
    EndTimestamp TEXT,
    DistanceMeters INTEGER,
    AvgSpeedKph REAL,
    MaxSpeedKph REAL,
    FuelConsumedLiters REAL,
    EngineTempC REAL,
    BatteryVoltageV REAL,
    GPSPointsCount INTEGER,
    DataQualityScore REAL,
    DriverID INTEGER,
    RouteID INTEGER,
    IsAnomalyDetected INTEGER,
    WeatherCondition TEXT,
    RoadType TEXT,
    TrafficLevel TEXT,
    EmissionCO2g REAL,
    EmissionNOxg REAL
);
INSERT INTO vehicle_telematics_sessions (SessionID,VehicleID,StartTimestamp,EndTimestamp,DistanceMeters,AvgSpeedKph,MaxSpeedKph,FuelConsumedLiters,EngineTempC,BatteryVoltageV,GPSPointsCount,DataQualityScore,DriverID,RouteID,IsAnomalyDetected,WeatherCondition,RoadType,TrafficLevel,EmissionCO2g,EmissionNOxg) VALUES (1,2001,'2023-04-01 08:00:00','2023-04-01 09:30:00',120000,80.5,120.0,15.2,92.0,13.8,350,0.98,301,4001,0,'clear','highway','moderate',25000.0,180.0);
INSERT INTO vehicle_telematics_sessions (SessionID,VehicleID,StartTimestamp,EndTimestamp,DistanceMeters,AvgSpeedKph,MaxSpeedKph,FuelConsumedLiters,EngineTempC,BatteryVoltageV,GPSPointsCount,DataQualityScore,DriverID,RouteID,IsAnomalyDetected,WeatherCondition,RoadType,TrafficLevel,EmissionCO2g,EmissionNOxg) VALUES (2,2002,'2023-04-02 10:15:00','2023-04-02 11:45:00',95000,65.0,95.0,12.5,88.0,13.5,300,0.95,302,4002,0,'rain','urban','heavy',21000.0,150.0);
INSERT INTO vehicle_telematics_sessions (SessionID,VehicleID,StartTimestamp,EndTimestamp,DistanceMeters,AvgSpeedKph,MaxSpeedKph,FuelConsumedLiters,EngineTempC,BatteryVoltageV,GPSPointsCount,DataQualityScore,DriverID,RouteID,IsAnomalyDetected,WeatherCondition,RoadType,TrafficLevel,EmissionCO2g,EmissionNOxg) VALUES (3,2003,'2023-04-03 14:00:00','2023-04-03 15:20:00',80000,70.0,110.0,10.8,90.5,13.6,280,0.97,303,4003,1,'fog','rural','light',19000.0,130.0);

-- Digital content tags
CREATE TABLE digital_content_tags (
    TagID INTEGER PRIMARY KEY,
    TagName TEXT,
    CreatedDate DATE,
    CreatedBy TEXT,
    IsPublic INTEGER,
    UsageCount INTEGER,
    LastUsedDate DATE,
    Description TEXT,
    Category TEXT,
    ColorCode TEXT,
    Synonyms TEXT,
    RelatedTagID INTEGER,
    Weight REAL,
    Scope TEXT,
    Language TEXT,
    Platform TEXT,
    OwnerTeam TEXT,
    ApprovalStatus TEXT,
    Version INTEGER,
    Notes TEXT
);
INSERT INTO digital_content_tags (TagID,TagName,CreatedDate,CreatedBy,IsPublic,UsageCount,LastUsedDate,Description,Category,ColorCode,Synonyms,RelatedTagID,Weight,Scope,Language,Platform,OwnerTeam,ApprovalStatus,Version,Notes) VALUES (1,'sustainability','2023-01-05','content_mgr',1,150,'2023-04-01','Content_related_to_environmental_practices','topic','#00FF00','eco_friendly',NULL,0.9,'global','en','web','marketing','approved',1,'core_topic');
INSERT INTO digital_content_tags (TagID,TagName,CreatedDate,CreatedBy,IsPublic,UsageCount,LastUsedDate,Description,Category,ColorCode,Synonyms,RelatedTagID,Weight,Scope,Language,Platform,OwnerTeam,ApprovalStatus,Version,Notes) VALUES (2,'innovation','2023-02-10','brand_lead',1,200,'2023-04-02','Showcasing_new_technologies','theme','#FF6600','tech_advancement',1,0.8,'regional','en','mobile','brand','pending',1,'new_tag');
INSERT INTO digital_content_tags (TagID,TagName,CreatedDate,CreatedBy,IsPublic,UsageCount,LastUsedDate,Description,Category,ColorCode,Synonyms,RelatedTagID,Weight,Scope,Language,Platform,OwnerTeam,ApprovalStatus,Version,Notes) VALUES (3,'community_engagement','2023-03-15','social_mgr',0,80,'2023-04-03','Interactions_with_local_communities','campaign','#3366FF','public_outreach',2,0.7,'local','en','social','social','approved',1,'private_tag');

-- Sustainability project milestones
CREATE TABLE sustainability_project_milestones (
    MilestoneID INTEGER PRIMARY KEY,
    ProjectID INTEGER,
    MilestoneName TEXT,
    PlannedDate DATE,
    ActualDate DATE,
    Status TEXT,
    OwnerID INTEGER,
    BudgetAllocated REAL,
    BudgetSpent REAL,
    PercentComplete REAL,
    RiskLevel TEXT,
    Dependencies TEXT,
    Deliverable TEXT,
    DocumentationURL TEXT,
    IsCritical INTEGER,
    UpdatedBy TEXT,
    UpdatedAt DATE,
    Comments TEXT,
    EnvironmentalImpactScore REAL,
    SocialImpactScore REAL
);
INSERT INTO sustainability_project_milestones (MilestoneID,ProjectID,MilestoneName,PlannedDate,ActualDate,Status,OwnerID,BudgetAllocated,BudgetSpent,PercentComplete,RiskLevel,Dependencies,Deliverable,DocumentationURL,IsCritical,UpdatedBy,UpdatedAt,Comments,EnvironmentalImpactScore,SocialImpactScore) VALUES (1,501,'site_assessment','2023-02-01','2023-02-03','completed',401,50000.0,50000.0,100.0,'low','none','assessment_report','http://docs.example.com/assessment1.pdf',1,'project_mgr','2023-02-04','All good',85.0,70.0);
INSERT INTO sustainability_project_milestones (MilestoneID,ProjectID,MilestoneName,PlannedDate,ActualDate,Status,OwnerID,BudgetAllocated,BudgetSpent,PercentComplete,RiskLevel,Dependencies,Deliverable,DocumentationURL,IsCritical,UpdatedBy,UpdatedAt,Comments,EnvironmentalImpactScore,SocialImpactScore) VALUES (2,501,'permit_acquisition','2023-03-01','2023-03-10','delayed',402,30000.0,15000.0,50.0,'medium','site_assessment','permit_documents','http://docs.example.com/permit1.pdf',1,'legal_team','2023-03-11','Awaiting authority response',60.0,55.0);
INSERT INTO sustainability_project_milestones (MilestoneID,ProjectID,MilestoneName,PlannedDate,ActualDate,Status,OwnerID,BudgetAllocated,BudgetSpent,PercentComplete,RiskLevel,Dependencies,Deliverable,DocumentationURL,IsCritical,UpdatedBy,UpdatedAt,Comments,EnvironmentalImpactScore,SocialImpactScore) VALUES (3,501,'construction_start','2023-05-01',NULL,'planned',403,200000.0,0.0,0.0,'high','permit_acquisition','construction_plan','http://docs.example.com/construction1.pdf',1,'construction_lead','2023-04-20','Pending permits',0.0,0.0);

-- Airport parking rate schedule
CREATE TABLE airport_parking_rate_schedule (
    RateID INTEGER PRIMARY KEY,
    AirportCode TEXT,
    ParkingLotID INTEGER,
    VehicleType TEXT,
    DayOfWeek TEXT,
    StartTime TEXT,
    EndTime TEXT,
    RatePerHour REAL,
    MaxDailyRate REAL,
    GracePeriodMinutes INTEGER,
    Currency TEXT,
    EffectiveFrom DATE,
    EffectiveTo DATE,
    IsHolidayRate INTEGER,
    HolidayRateMultiplier REAL,
    CreatedBy TEXT,
    CreatedAt DATE,
    UpdatedBy TEXT,
    UpdatedAt DATE,
    Notes TEXT
);
INSERT INTO airport_parking_rate_schedule (RateID,AirportCode,ParkingLotID,VehicleType,DayOfWeek,StartTime,EndTime,RatePerHour,MaxDailyRate,GracePeriodMinutes,Currency,EffectiveFrom,EffectiveTo,IsHolidayRate,HolidayRateMultiplier,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,Notes) VALUES (1,'JFK',101,'car','Monday','08:00','20:00',5.0,30.0,15,'USD','2023-01-01','2023-12-31',0,1.0,'ops_manager','2023-01-01','ops_manager','2023-04-01','Standard_weekday_rate');
INSERT INTO airport_parking_rate_schedule (RateID,AirportCode,ParkingLotID,VehicleType,DayOfWeek,StartTime,EndTime,RatePerHour,MaxDailyRate,GracePeriodMinutes,Currency,EffectiveFrom,EffectiveTo,IsHolidayRate,HolidayRateMultiplier,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,Notes) VALUES (2,'JFK',101,'car','Saturday','08:00','20:00',6.0,35.0,15,'USD','2023-01-01','2023-12-31',0,1.0,'ops_manager','2023-01-01','ops_manager','2023-04-01','Weekend_rate');
INSERT INTO airport_parking_rate_schedule (RateID,AirportCode,ParkingLotID,VehicleType,DayOfWeek,StartTime,EndTime,RatePerHour,MaxDailyRate,GracePeriodMinutes,Currency,EffectiveFrom,EffectiveTo,IsHolidayRate,HolidayRateMultiplier,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,Notes) VALUES (3,'JFK',101,'car','Holiday','00:00','23:59',8.0,40.0,0,'USD','2023-01-01','2023-12-31',1,1.5,'ops_manager','2023-01-01','ops_manager','2023-04-01','Holiday_premium_rate');

-- Smart city sensor calibrations
CREATE TABLE smart_city_sensor_calibrations (
    CalibrationID INTEGER PRIMARY KEY,
    SensorID INTEGER,
    SensorType TEXT,
    InstallationSite TEXT,
    CalibrationDate DATE,
    TechnicianID INTEGER,
    CalibrationFactor REAL,
    OffsetValue REAL,
    Unit TEXT,
    TemperatureC REAL,
    HumidityPercent REAL,
    PressurePa REAL,
    CalibrationMethod TEXT,
    IsVerified INTEGER,
    VerificationDate DATE,
    Remarks TEXT,
    NextDueDate DATE,
    FirmwareVersion TEXT,
    CalibrationStatus TEXT,
    Notes TEXT
);
INSERT INTO smart_city_sensor_calibrations (CalibrationID,SensorID,SensorType,InstallationSite,CalibrationDate,TechnicianID,CalibrationFactor,OffsetValue,Unit,TemperatureC,HumidityPercent,PressurePa,CalibrationMethod,IsVerified,VerificationDate,Remarks,NextDueDate,FirmwareVersion,CalibrationStatus,Notes) VALUES (1,3001,'air_quality','Central_Park','2023-03-01',501,1.02,0.05,'µg/m3',22.5,55.0,101325,'field','1','2023-03-02','All_good','2024-03-01','v1.3','passed','Routine_check');
INSERT INTO smart_city_sensor_calibrations (CalibrationID,SensorID,SensorType,InstallationSite,CalibrationDate,TechnicianID,CalibrationFactor,OffsetValue,Unit,TemperatureC,HumidityPercent,PressurePa,CalibrationMethod,IsVerified,VerificationDate,Remarks,NextDueDate,FirmwareVersion,CalibrationStatus,Notes) VALUES (2,3002,'noise','Main_St','2023-04-10',502,0.98,0.02,'dB',21.0,60.0,101300,'lab','1','2023-04-11','Minor_adjustment','2025-04-10','v2.0','passed','Calibration_after_maintenance');
INSERT INTO smart_city_sensor_calibrations (CalibrationID,SensorID,SensorType,InstallationSite,CalibrationDate,TechnicianID,CalibrationFactor,OffsetValue,Unit,TemperatureC,HumidityPercent,PressurePa,CalibrationMethod,IsVerified,VerificationDate,Remarks,NextDueDate,FirmwareVersion,CalibrationStatus,Notes) VALUES (3,3003,'traffic_flow','5th_Avenue','2023-05-20',503,1.00,0.00,'vehicles/hour',23.0,50.0,101400,'automatic','1','2023-05-21','No_issues','2024-05-20','v1.1','passed','Standard_calibration');

-- Fleet driver performance metrics
CREATE TABLE fleet_driver_performance_metrics (
    MetricID INTEGER PRIMARY KEY,
    DriverID INTEGER,
    PeriodStart DATE,
    PeriodEnd DATE,
    TripsCompleted INTEGER,
    OnTimeDeliveryPct REAL,
    AvgFuelEfficiencyKmL REAL,
    SafetyScore REAL,
    ViolationsCount INTEGER,
    CustomerRatingAvg REAL,
    HoursLogged REAL,
    IdleTimeMinutes INTEGER,
    OvertimeHours REAL,
    TrainingCompleted INTEGER,
    FeedbackCount INTEGER,
    IncentiveEarned REAL,
    PenaltyIncurred REAL,
    NetScore REAL,
    RankWithinFleet INTEGER,
    Comments TEXT
);
INSERT INTO fleet_driver_performance_metrics (MetricID,DriverID,PeriodStart,PeriodEnd,TripsCompleted,OnTimeDeliveryPct,AvgFuelEfficiencyKmL,SafetyScore,ViolationsCount,CustomerRatingAvg,HoursLogged,IdleTimeMinutes,OvertimeHours,TrainingCompleted,FeedbackCount,IncentiveEarned,PenaltyIncurred,NetScore,RankWithinFleet,Comments) VALUES (1,801,'2023-01-01','2023-01-31',120,96.5,12.3,88.0,2,4.7,160.0,45,5.0,1,30,1500.0,200.0,1300.0,5,'Consistently_on_time');
INSERT INTO fleet_driver_performance_metrics (MetricID,DriverID,PeriodStart,PeriodEnd,TripsCompleted,OnTimeDeliveryPct,AvgFuelEfficiencyKmL,SafetyScore,ViolationsCount,CustomerRatingAvg,HoursLogged,IdleTimeMinutes,OvertimeHours,TrainingCompleted,FeedbackCount,IncentiveEarned,PenaltyIncurred,NetScore,RankWithinFleet,Comments) VALUES (2,802,'2023-01-01','2023-01-31',98,89.0,10.8,75.0,5,4.2,150.0,60,8.0,0,20,800.0,500.0,300.0,12,'Needs_improvement_in_safety');
INSERT INTO fleet_driver_performance_metrics (MetricID,DriverID,PeriodStart,PeriodEnd,TripsCompleted,OnTimeDeliveryPct,AvgFuelEfficiencyKmL,SafetyScore,ViolationsCount,CustomerRatingAvg,HoursLogged,IdleTimeMinutes,OvertimeHours,TrainingCompleted,FeedbackCount,IncentiveEarned,PenaltyIncurred,NetScore,RankWithinFleet,Comments) VALUES (3,803,'2023-01-01','2023-01-31',140,98.0,13.0,92.0,1,4.9,170.0,30,3.0,1,35,2000.0,100.0,1900.0,2,'Top_performer');

-- Energy certificate issuance
CREATE TABLE energy_certificate_issuance (
    CertificateID INTEGER PRIMARY KEY,
    IssuerID INTEGER,
    OwnerID INTEGER,
    CertificateType TEXT,
    VolumeMWh REAL,
    IssueDate DATE,
    ExpiryDate DATE,
    Status TEXT,
    RegistryNumber TEXT,
    VerificationCode TEXT,
    CreatedAt DATE,
    CreatedBy TEXT,
    UpdatedAt DATE,
    UpdatedBy TEXT,
    TransferAllowed INTEGER,
    TransferHistoryURL TEXT,
    RenewableSource TEXT,
    CO2eReductionTon REAL,
    ValidationAgency TEXT,
    Notes TEXT,
    IsActive INTEGER
);
INSERT INTO energy_certificate_issuance (CertificateID,IssuerID,OwnerID,CertificateType,VolumeMWh,IssueDate,ExpiryDate,Status,RegistryNumber,VerificationCode,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy,TransferAllowed,TransferHistoryURL,RenewableSource,CO2eReductionTon,ValidationAgency,Notes,IsActive) VALUES (1,9001,8001,'REC','5000.0','2023-02-01','2033-02-01','active','REG123456','VCODE123','2023-02-01','admin','2023-04-01','admin',1,'http://registry.example.com/history/1','solar','3500.0','EPA','Initial_issue',1);
INSERT INTO energy_certificate_issuance (CertificateID,IssuerID,OwnerID,CertificateType,VolumeMWh,IssueDate,ExpiryDate,Status,RegistryNumber,VerificationCode,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy,TransferAllowed,TransferHistoryURL,RenewableSource,CO2eReductionTon,ValidationAgency,Notes,IsActive) VALUES (2,9002,8002,'REC','3000.0','2023-03-15','2033-03-15','active','REG654321','VCODE456','2023-03-15','admin','2023-04-10','admin',1,'http://registry.example.com/history/2','wind','2100.0','DOE','Second_issue',1);
INSERT INTO energy_certificate_issuance (CertificateID,IssuerID,OwnerID,CertificateType,VolumeMWh,IssueDate,ExpiryDate,Status,RegistryNumber,VerificationCode,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy,TransferAllowed,TransferHistoryURL,RenewableSource,CO2eReductionTon,ValidationAgency,Notes,IsActive) VALUES (3,9003,8003,'REC','1500.0','2023-04-20','2033-04-20','pending','REG789012','VCODE789','2023-04-20','admin','2023-04-20','admin',0,'http://registry.example.com/history/3','hydro','1050.0','StateEnergyDept','Awaiting_approval',0);