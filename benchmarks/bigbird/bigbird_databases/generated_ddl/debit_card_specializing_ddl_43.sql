-- Aircraft maintenance records
CREATE TABLE aircraft_maintenance_records
(
    RecordID INTEGER PRIMARY KEY AUTOINCREMENT,
    AircraftTailNum TEXT,
    MaintenanceDate DATE,
    MaintenanceType TEXT,
    EngineerID INTEGER,
    HangarID INTEGER,
    FlightHours INTEGER,
    AirframeHours INTEGER,
    EngineHours INTEGER,
    PartsReplacedCount INTEGER,
    TotalCost REAL,
    DowntimeHours REAL,
    ComplianceFlag TEXT,
    NextDueDate DATE,
    Comments TEXT,
    VendorID INTEGER,
    CertificationStatus TEXT,
    InspectionScore REAL,
    SafetyRating TEXT,
    RecordSource TEXT
);

INSERT INTO aircraft_maintenance_records (AircraftTailNum, MaintenanceDate, MaintenanceType, EngineerID, HangarID, FlightHours, AirframeHours, EngineHours, PartsReplacedCount, TotalCost, DowntimeHours, ComplianceFlag, NextDueDate, Comments, VendorID, CertificationStatus, InspectionScore, SafetyRating, RecordSource)
VALUES ('N12345','2023-05-12','A-Check',101,12,1500,1500,1500,3,25000.50,4.2,'PASS','2023-11-12','Routine A check',501,'CERTIFIED',95.5,'A','SYSTEM');

INSERT INTO aircraft_maintenance_records (AircraftTailNum, MaintenanceDate, MaintenanceType, EngineerID, HangarID, FlightHours, AirframeHours, EngineHours, PartsReplacedCount, TotalCost, DowntimeHours, ComplianceFlag, NextDueDate, Comments, VendorID, CertificationStatus, InspectionScore, SafetyRating, RecordSource)
VALUES ('N67890','2023-08-03','C-Check',102,14,3000,3000,3000,12,120000.00,18.5,'PASS','2024-08-03','Major C check',502,'CERTIFIED',88.0,'B','SYSTEM');

INSERT INTO aircraft_maintenance_records (AircraftTailNum, MaintenanceDate, MaintenanceType, EngineerID, HangarID, FlightHours, AirframeHours, EngineHours, PartsReplacedCount, TotalCost, DowntimeHours, ComplianceFlag, NextDueDate, Comments, VendorID, CertificationStatus, InspectionScore, SafetyRating, RecordSource)
VALUES ('N54321','2024-02-20','Engine Overhaul',103,15,2500,2500,2500,5,80000.75,12.0,'PASS','2025-02-20','Engine refurbishment',503,'CERTIFIED',92.3,'A','SYSTEM');

-- Railway station facilities
CREATE TABLE railway_station_facilities
(
    FacilityID INTEGER PRIMARY KEY AUTOINCREMENT,
    StationCode TEXT,
    FacilityType TEXT,
    Capacity INTEGER,
    OpeningDate DATE,
    ClosingDate DATE,
    OperatorID INTEGER,
    AccessibleFlag TEXT,
    YearBuilt INTEGER,
    RenovationYear INTEGER,
    EnergySource TEXT,
    ParkingSpots INTEGER,
    RetailSpaces INTEGER,
    RestroomCount INTEGER,
    WaitingAreaSize REAL,
    SecurityLevel TEXT,
    MaintenanceContractID INTEGER,
    WiFiAvailable TEXT,
    SolarPanelArea REAL,
    Notes TEXT
);

INSERT INTO railway_station_facilities (StationCode, FacilityType, Capacity, OpeningDate, ClosingDate, OperatorID, AccessibleFlag, YearBuilt, RenovationYear, EnergySource, ParkingSpots, RetailSpaces, RestroomCount, WaitingAreaSize, SecurityLevel, MaintenanceContractID, WiFiAvailable, SolarPanelArea, Notes)
VALUES ('STN01','TicketHall',5000,'1995-06-15',NULL,201,'YES',1995,2015,'GRID',200,15,8,350.0,'HIGH',301,'YES',120.5,'Main hall renovated 2015');

INSERT INTO railway_station_facilities (StationCode, FacilityType, Capacity, OpeningDate, ClosingDate, OperatorID, AccessibleFlag, YearBuilt, RenovationYear, EnergySource, ParkingSpots, RetailSpaces, RestroomCount, WaitingAreaSize, SecurityLevel, MaintenanceContractID, WiFiAvailable, SolarPanelArea, Notes)
VALUES ('STN02','Platform',1200,'2000-09-01',NULL,202,'YES',2000,2020,'SOLAR',80,5,4,120.0,'MEDIUM',302,'YES',80.0,'Added new platform in 2020');

INSERT INTO railway_station_facilities (StationCode, FacilityType, Capacity, OpeningDate, ClosingDate, OperatorID, AccessibleFlag, YearBuilt, RenovationYear, EnergySource, ParkingSpots, RetailSpaces, RestroomCount, WaitingAreaSize, SecurityLevel, MaintenanceContractID, WiFiAvailable, SolarPanelArea, Notes)
VALUES ('STN03','RestArea',300,'2010-03-20',NULL,203,'NO',2010,2022,'GRID',50,2,3,80.0,'LOW',303,'NO',0.0,'Rest area upgraded 2022');

-- Smart grid device inventory
CREATE TABLE smart_grid_device_inventory
(
    DeviceID INTEGER PRIMARY KEY AUTOINCREMENT,
    DeviceType TEXT,
    ModelNumber TEXT,
    Manufacturer TEXT,
    InstallationDate DATE,
    LocationID INTEGER,
    VoltageLevel REAL,
    CurrentRating REAL,
    FirmwareVersion TEXT,
    SerialNumber TEXT,
    Status TEXT,
    LastMaintenanceDate DATE,
    PowerCapacity REAL,
    CommunicationProtocol TEXT,
    Latitude REAL,
    Longitude REAL,
    OwnerDepartment TEXT,
    WarrantyEndDate DATE,
    CalibrationDate DATE,
    Comments TEXT
);

INSERT INTO smart_grid_device_inventory (DeviceType, ModelNumber, Manufacturer, InstallationDate, LocationID, VoltageLevel, CurrentRating, FirmwareVersion, SerialNumber, Status, LastMaintenanceDate, PowerCapacity, CommunicationProtocol, Latitude, Longitude, OwnerDepartment, WarrantyEndDate, CalibrationDate, Comments)
VALUES ('Transformer','TX-200','GridTech','2021-04-10',1001,11000.0,1500.0,'v3.2','SN123456','ACTIVE','2023-03-15',5000.0,'Modbus',40.7128,-74.0060,'Engineering','2026-04-10','2023-03-15','Installed in downtown substation');

INSERT INTO smart_grid_device_inventory (DeviceType, ModelNumber, Manufacturer, InstallationDate, LocationID, VoltageLevel, CurrentRating, FirmwareVersion, SerialNumber, Status, LastMaintenanceDate, PowerCapacity, CommunicationProtocol, Latitude, Longitude, OwnerDepartment, WarrantyEndDate, CalibrationDate, Comments)
VALUES ('SmartMeter','SM-550','MeterCo','2022-07-22',1002,240.0,30.0,'v1.8','SN789012','ACTIVE','2023-07-01',5.0,'DLMS',34.0522,-118.2437,'Operations','2027-07-22','2023-07-01','Residential area deployment');

INSERT INTO smart_grid_device_inventory (DeviceType, ModelNumber, Manufacturer, InstallationDate, LocationID, VoltageLevel, CurrentRating, FirmwareVersion, SerialNumber, Status, LastMaintenanceDate, PowerCapacity, CommunicationProtocol, Latitude, Longitude, OwnerDepartment, WarrantyEndDate, CalibrationDate, Comments)
VALUES ('Relay','RL-80','SwitchMakers','2020-11-05',1003,6600.0,800.0,'v2.5','SN345678','MAINTENANCE','2023-01-20',2000.0,'IEC61850',51.5074,-0.1278,'Maintenance','2025-11-05','2023-01-20','Scheduled for replacement');

-- Green building certifications
CREATE TABLE green_building_certifications
(
    CertificationID INTEGER PRIMARY KEY AUTOINCREMENT,
    BuildingID INTEGER,
    CertificationBody TEXT,
    Level TEXT,
    CertificationDate DATE,
    ExpirationDate DATE,
    EnergyScore REAL,
    WaterScore REAL,
    MaterialsScore REAL,
    IndoorEnvScore REAL,
    RenewableEnergyPercent REAL,
    LEEDPoints INTEGER,
    BREEAMRating TEXT,
    WELLScore REAL,
    GHGEmissions REAL,
    CertificationStatus TEXT,
    AuditorID INTEGER,
    Remarks TEXT,
    DocumentLink TEXT,
    Version INTEGER
);

INSERT INTO green_building_certifications (BuildingID, CertificationBody, Level, CertificationDate, ExpirationDate, EnergyScore, WaterScore, MaterialsScore, IndoorEnvScore, RenewableEnergyPercent, LEEDPoints, BREEAMRating, WELLScore, GHGEmissions, CertificationStatus, AuditorID, Remarks, DocumentLink, Version)
VALUES (10001,'USGBC','Platinum','2022-08-01','2025-08-01',92.5,88.0,90.2,94.1,45.0,95,'Excellent',87.5,320.0,'ACTIVE',501,'High performance office building','http://docs.example.com/cert10001.pdf',1);

INSERT INTO green_building_certifications (BuildingID, CertificationBody, Level, CertificationDate, ExpirationDate, EnergyScore, WaterScore, MaterialsScore, IndoorEnvScore, RenewableEnergyPercent, LEEDPoints, BREEAMRating, WELLScore, GHGEmissions, CertificationStatus, AuditorID, Remarks, DocumentLink, Version)
VALUES (10002,'BREEAM','UK Cert','2021-05-15','2024-05-15',85.0,80.5,82.3,88.0,30.0,78,'Good',80.0,410.0,'ACTIVE',502,'Mixed‑use development','http://docs.example.com/cert10002.pdf',2);

INSERT INTO green_building_certifications (BuildingID, CertificationBody, Level, CertificationDate, ExpirationDate, EnergyScore, WaterScore, MaterialsScore, IndoorEnvScore, RenewableEnergyPercent, LEEDPoints, BREEAMRating, WELLScore, GHGEmissions, CertificationStatus, AuditorID, Remarks, DocumentLink, Version)
VALUES (10003,'WELL','Silver','2023-01-20','2026-01-20',78.0,75.0,77.0,80.0,20.0,60,'',82.0,530.0,'PENDING',503,'Healthcare facility','http://docs.example.com/cert10003.pdf',1);

-- Urban mobility survey responses
CREATE TABLE urban_mobility_survey_responses
(
    ResponseID INTEGER PRIMARY KEY AUTOINCREMENT,
    SurveyDate DATE,
    RespondentID INTEGER,
    Age INTEGER,
    Gender TEXT,
    ResidenceArea TEXT,
    PrimaryTransportMode TEXT,
    CommuteTimeMinutes INTEGER,
    SatisfactionScore INTEGER,
    WillingnessToSwitch INTEGER,
    PreferredTransport TEXT,
    Comments TEXT,
    IncomeBracket TEXT,
    EducationLevel TEXT,
    VehicleOwnership TEXT,
    BikeOwnership TEXT,
    PublicTransitUseFreq INTEGER,
    CarpoolFrequency INTEGER,
    WalkingFrequency INTEGER,
    SurveyVersion INTEGER
);

INSERT INTO urban_mobility_survey_responses (SurveyDate, RespondentID, Age, Gender, ResidenceArea, PrimaryTransportMode, CommuteTimeMinutes, SatisfactionScore, WillingnessToSwitch, PreferredTransport, Comments, IncomeBracket, EducationLevel, VehicleOwnership, BikeOwnership, PublicTransitUseFreq, CarpoolFrequency, WalkingFrequency, SurveyVersion)
VALUES ('2023-06-15',2001,34,'Female','Downtown','Bike',22,8,9,'E‑Bike','Very satisfied with bike lanes','30K-50K','Bachelor','No','Yes',5,1,3,1);

INSERT INTO urban_mobility_survey_responses (SurveyDate, RespondentID, Age, Gender, ResidenceArea, PrimaryTransportMode, CommuteTimeMinutes, SatisfactionScore, WillingnessToSwitch, PreferredTransport, Comments, IncomeBracket, EducationLevel, VehicleOwnership, BikeOwnership, PublicTransitUseFreq, CarpoolFrequency, WalkingFrequency, SurveyVersion)
VALUES ('2023-06-16',2002,45,'Male','Suburb','Car',35,6,4,'Hybrid','Would consider public transit if cheaper','50K-70K','Master','Yes','No',2,2,1,1);

INSERT INTO urban_mobility_survey_responses (SurveyDate, RespondentID, Age, Gender, ResidenceArea, PrimaryTransportMode, CommuteTimeMinutes, SatisfactionScore, WillingnessToSwitch, PreferredTransport, Comments, IncomeBracket, EducationLevel, VehicleOwnership, BikeOwnership, PublicTransitUseFreq, CarpoolFrequency, WalkingFrequency, SurveyVersion)
VALUES ('2023-06-17',2003,29,'Nonbinary','Midtown','PublicTransit',18,9,10,'Metro','Excellent service','20K-30K','Associate','No','No',7,0,2,1);

-- Water purification batch log
CREATE TABLE water_purification_batch_log
(
    BatchID INTEGER PRIMARY KEY AUTOINCREMENT,
    PlantID INTEGER,
    BatchDate DATE,
    InputVolumeLiters REAL,
    OutputVolumeLiters REAL,
    ContaminantLevelPPM REAL,
    pH REAL,
    TemperatureC REAL,
    ChemicalAdditive TEXT,
    OperatorID INTEGER,
    QualityStatus TEXT,
    InspectionScore REAL,
    MaintenanceFlag TEXT,
    EnergyConsumptionKWh REAL,
    RuntimeHours REAL,
    BatchNotes TEXT,
    RegulationCompliance TEXT,
    BatchDurationMinutes INTEGER,
    CertifiedBy INTEGER,
    ReportLink TEXT
);

INSERT INTO water_purification_batch_log (PlantID, BatchDate, InputVolumeLiters, OutputVolumeLiters, ContaminantLevelPPM, pH, TemperatureC, ChemicalAdditive, OperatorID, QualityStatus, InspectionScore, MaintenanceFlag, EnergyConsumptionKWh, RuntimeHours, BatchNotes, RegulationCompliance, BatchDurationMinutes, CertifiedBy, ReportLink)
VALUES (301,'2023-04-10',50000.0,49500.0,0.02,7.4,22.0,'Chlorine',401,'PASS',98.5,'NO',1500.0,8.0,'Standard batch processing','COMPLIANT',480,501,'http://reports.example.com/batch301_20230410.pdf');

INSERT INTO water_purification_batch_log (PlantID, BatchDate, InputVolumeLiters, OutputVolumeLiters, ContaminantLevelPPM, pH, TemperatureC, ChemicalAdditive, OperatorID, QualityStatus, InspectionScore, MaintenanceFlag, EnergyConsumptionKWh, RuntimeHours, BatchNotes, RegulationCompliance, BatchDurationMinutes, CertifiedBy, ReportLink)
VALUES (302,'2023-04-11',60000.0,59400.0,0.03,7.2,21.5,'Ozone',402,'PASS',96.0,'NO',1700.0,9.0,'Ozone treatment batch','COMPLIANT',540,502,'http://reports.example.com/batch302_20230411.pdf');

INSERT INTO water_purification_batch_log (PlantID, BatchDate, InputVolumeLiters, OutputVolumeLiters, ContaminantLevelPPM, pH, TemperatureC, ChemicalAdditive, OperatorID, QualityStatus, InspectionScore, MaintenanceFlag, EnergyConsumptionKWh, RuntimeHours, BatchNotes, RegulationCompliance, BatchDurationMinutes, CertifiedBy, ReportLink)
VALUES (303,'2023-04-12',55000.0,54550.0,0.025,7.3,22.5,'UV',403,'PASS',97.2,'NO',1600.0,8.5,'UV disinfection batch','COMPLIANT',510,503,'http://reports.example.com/batch303_20230412.pdf');

-- Digital signage placements
CREATE TABLE digital_signage_placements
(
    PlacementID INTEGER PRIMARY KEY AUTOINCREMENT,
    LocationID INTEGER,
    SignageType TEXT,
    Manufacturer TEXT,
    Model TEXT,
    InstallationDate DATE,
    Resolution TEXT,
    Brightness INTEGER,
    PowerSource TEXT,
    NetworkIP TEXT,
    ContentScheduleID INTEGER,
    ActiveFlag TEXT,
    LastContentUpdate DATE,
    MaintenanceContractID INTEGER,
    ViewingAngleDegrees REAL,
    DimensionsCM TEXT,
    AudienceCountEst INTEGER,
    OwnerDepartment TEXT,
    LicenseExpiry DATE,
    Notes TEXT
);

INSERT INTO digital_signage_placements (LocationID, SignageType, Manufacturer, Model, InstallationDate, Resolution, Brightness, PowerSource, NetworkIP, ContentScheduleID, ActiveFlag, LastContentUpdate, MaintenanceContractID, ViewingAngleDegrees, DimensionsCM, AudienceCountEst, OwnerDepartment, LicenseExpiry, Notes)
VALUES (401,'LED','SignCo','X200','2022-01-15','1920x1080',8000,'AC','192.168.1.10',501,'YES','2023-10-01',601,120.0,'200x150',5000,'Marketing','2025-01-15','Main lobby display');

INSERT INTO digital_signage_placements (LocationID, SignageType, Manufacturer, Model, InstallationDate, Resolution, Brightness, PowerSource, NetworkIP, ContentScheduleID, ActiveFlag, LastContentUpdate, MaintenanceContractID, ViewingAngleDegrees, DimensionsCM, AudienceCountEst, OwnerDepartment, LicenseExpiry, Notes)
VALUES (402,'LCD','DisplayMakers','L300','2021-07-20','1280x720',6000,'DC','192.168.1.11',502,'YES','2023-09-20',602,90.0,'150x100',3000,'Sales','2024-07-20','Conference room screen');

INSERT INTO digital_signage_placements (LocationID, SignageType, Manufacturer, Model, InstallationDate, Resolution, Brightness, PowerSource, NetworkIP, ContentScheduleID, ActiveFlag, LastContentUpdate, MaintenanceContractID, ViewingAngleDegrees, DimensionsCM, AudienceCountEst, OwnerDepartment, LicenseExpiry, Notes)
VALUES (403,'Projection','ProjTech','P1500','2023-03-05','1920x1080',5000,'AC','192.168.1.12',503,'YES','2023-11-10',603,180.0,'250x180',2000,'Events','2026-03-05','Outdoor event projection');

-- Bike share user profiles
CREATE TABLE bike_share_user_profiles
(
    UserID INTEGER PRIMARY KEY AUTOINCREMENT,
    SignupDate DATE,
    LastActiveDate DATE,
    MembershipTier TEXT,
    CreditBalance REAL,
    TotalRides INTEGER,
    AvgRideDurationMinutes REAL,
    AvgDistanceKM REAL,
    PreferredBikeType TEXT,
    HomeZone TEXT,
    WorkZone TEXT,
    PaymentMethod TEXT,
    ReferralCode TEXT,
    PromoUsageCount INTEGER,
    PenaltyCount INTEGER,
    VerificationStatus TEXT,
    FeedbackScore INTEGER,
    EmailVerified TEXT,
    PhoneVerified TEXT,
    Notes TEXT
);

INSERT INTO bike_share_user_profiles (SignupDate, LastActiveDate, MembershipTier, CreditBalance, TotalRides, AvgRideDurationMinutes, AvgDistanceKM, PreferredBikeType, HomeZone, WorkZone, PaymentMethod, ReferralCode, PromoUsageCount, PenaltyCount, VerificationStatus, FeedbackScore, EmailVerified, PhoneVerified, Notes)
VALUES ('2022-05-10','2023-12-01','Gold',12.50,150,18.5,5.2,'Electric','ZoneA','ZoneB','CreditCard','REF123',3,0,'VERIFIED',9,'YES','YES','Frequent commuter');

INSERT INTO bike_share_user_profiles (SignupDate, LastActiveDate, MembershipTier, CreditBalance, TotalRides, AvgRideDurationMinutes, AvgDistanceKM, PreferredBikeType, HomeZone, WorkZone, PaymentMethod, ReferralCode, PromoUsageCount, PenaltyCount, VerificationStatus, FeedbackScore, EmailVerified, PhoneVerified, Notes)
VALUES ('2023-01-20','2023-12-15','Silver',5.00,45,12.0,3.8,'Standard','ZoneC','ZoneD','PayPal','REF456',1,1,'PENDING',7,'YES','NO','Occasional rider');

INSERT INTO bike_share_user_profiles (SignupDate, LastActiveDate, MembershipTier, CreditBalance, TotalRides, AvgRideDurationMinutes, AvgDistanceKM, PreferredBikeType, HomeZone, WorkZone, PaymentMethod, ReferralCode, PromoUsageCount, PenaltyCount, VerificationStatus, FeedbackScore, EmailVerified, PhoneVerified, Notes)
VALUES ('2021-11-05','2023-11-30','Platinum',25.00,300,22.0,7.5,'Electric','ZoneE','ZoneF','BankTransfer','REF789',5,0,'VERIFIED',10,'YES','YES','Power user');

-- Renewable energy deployment phases
CREATE TABLE renewable_energy_deployment_phases
(
    PhaseID INTEGER PRIMARY KEY AUTOINCREMENT,
    ProjectID INTEGER,
    PhaseName TEXT,
    StartDate DATE,
    EndDate DATE,
    CapacityMW REAL,
    CapitalCostMillions REAL,
    ContractorID INTEGER,
    RegulatoryApprovalStatus TEXT,
    InfrastructureReadyFlag TEXT,
    GridConnectionDate DATE,
    EnvironmentalImpactScore REAL,
    StakeholderEngagementLevel TEXT,
    RiskRating TEXT,
    Status TEXT,
    LeadEngineerID INTEGER,
    Comments TEXT,
    FundingSource TEXT,
    MilestoneAchievedCount INTEGER,
    Version INTEGER
);

INSERT INTO renewable_energy_deployment_phases (ProjectID, PhaseName, StartDate, EndDate, CapacityMW, CapitalCostMillions, ContractorID, RegulatoryApprovalStatus, InfrastructureReadyFlag, GridConnectionDate, EnvironmentalImpactScore, StakeholderEngagementLevel, RiskRating, Status, LeadEngineerID, Comments, FundingSource, MilestoneAchievedCount, Version)
VALUES (801,'Planning','2022-01-01','2022-06-30',0.0,0.0,901,'APPROVED','YES','2022-06-30',85.0,'HIGH','MEDIUM','COMPLETED',1001,'Initial feasibility and permits','Equity',5,1);

INSERT INTO renewable_energy_deployment_phases (ProjectID, PhaseName, StartDate, EndDate, CapacityMW, CapitalCostMillions, ContractorID, RegulatoryApprovalStatus, InfrastructureReadyFlag, GridConnectionDate, EnvironmentalImpactScore, StakeholderEngagementLevel, RiskRating, Status, LeadEngineerID, Comments, FundingSource, MilestoneAchievedCount, Version)
VALUES (801,'Construction','2022-07-01','2023-12-31',150.0,200.0,902,'PENDING','NO',NULL,78.0,'MEDIUM','HIGH','IN_PROGRESS',1002,'Turbine installation underway','Debt',8,1);

INSERT INTO renewable_energy_deployment_phases (ProjectID, PhaseName, StartDate, EndDate, CapacityMW, CapitalCostMillions, ContractorID, RegulatoryApprovalStatus, InfrastructureReadyFlag, GridConnectionDate, EnvironmentalImpactScore, StakeholderEngagementLevel, RiskRating, Status, LeadEngineerID, Comments, FundingSource, MilestoneAchievedCount, Version)
VALUES (801,'Commissioning','2024-01-01','2024-03-31',150.0,30.0,903,'APPROVED','YES','2024-04-01',92.0,'HIGH','LOW','PLANNED',1003,'Testing and final approvals','Equity',10,1);

-- City mural registry
CREATE TABLE city_mural_registry
(
    MuralID INTEGER PRIMARY KEY AUTOINCREMENT,
    ArtistName TEXT,
    InstallationDate DATE,
    LocationID INTEGER,
    WallSurfaceAreaSqM REAL,
    Theme TEXT,
    FundingSource TEXT,
    PublicApprovalRating INTEGER,
    MaintenanceContractID INTEGER,
    LastRestorationDate DATE,
    ColorPalette TEXT,
    DimensionsHeightCM INTEGER,
    DimensionsWidthCM INTEGER,
    AccessibilityFlag TEXT,
    StreetAddress TEXT,
    Neighborhood TEXT,
    CoordinatesLat REAL,
    CoordinatesLong REAL,
    Description TEXT,
    Status TEXT
);

INSERT INTO city_mural_registry (ArtistName, InstallationDate, LocationID, WallSurfaceAreaSqM, Theme, FundingSource, PublicApprovalRating, MaintenanceContractID, LastRestorationDate, ColorPalette, DimensionsHeightCM, DimensionsWidthCM, AccessibilityFlag, StreetAddress, Neighborhood, CoordinatesLat, CoordinatesLong, Description, Status)
VALUES ('Jane Doe','2021-09-10',601,45.0,'Community','CityGrant',85,701,'2023-05-20','BlueRedYellow',250,400,'YES','123 Main St','Midtown',40.7128,-74.0060,'Large abstract mural celebrating local culture','ACTIVE');

INSERT INTO city_mural_registry (ArtistName, InstallationDate, LocationID, WallSurfaceAreaSqM, Theme, FundingSource, PublicApprovalRating, MaintenanceContractID, LastRestorationDate, ColorPalette, DimensionsHeightCM, DimensionsWidthCM, AccessibilityFlag, StreetAddress, Neighborhood, CoordinatesLat, CoordinatesLong, Description, Status)
VALUES ('Carlos Ruiz','2020-06-15',602,30.0,'Historical','PrivateDonor',78,702,'2022-11-12','EarthTones',180,300,'NO','456 Oak Ave','OldTown',34.0522,-118.2437','Historical scene depicting city founding','ACTIVE');

INSERT INTO city_mural_registry (ArtistName, InstallationDate, LocationID, WallSurfaceAreaSqM, Theme, FundingSource, PublicApprovalRating, MaintenanceContractID, LastRestorationDate, ColorPalette, DimensionsHeightCM, DimensionsWidthCM, AccessibilityFlag, StreetAddress, Neighborhood, CoordinatesLat, CoordinatesLong, Description, Status)
VALUES ('Liu Wang','2022-03-05',603,60.0,'Nature','CorporateSponsorship',92,703,'2023-08-01','GreenBlue',300,500,'YES','789 Pine Rd','RiverSide',51.5074,-0.1278','Nature-inspired mural featuring local flora','ACTIVE');