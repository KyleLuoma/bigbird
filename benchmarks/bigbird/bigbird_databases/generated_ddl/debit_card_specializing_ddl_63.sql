-- Employee shift logs table
CREATE TABLE employee_shift_logs (
    ShiftLogID INTEGER PRIMARY KEY,
    EmployeeID INTEGER,
    Department TEXT,
    ShiftDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    ClockInTime TEXT,
    ClockOutTime TEXT,
    ShiftType TEXT,
    Location TEXT,
    SupervisorID INTEGER,
    Notes TEXT,
    OvertimeHours REAL,
    BreakCount INTEGER,
    BreakDuration REAL,
    PayrollCode TEXT,
    AttendanceStatus TEXT,
    LunchProvided TEXT,
    ShiftLength REAL,
    ShiftVersion INTEGER
);

INSERT INTO employee_shift_logs VALUES (1, 101, 'Operations', '2024-01-05', '08:00', '16:00', '08:05', '16:02', 'Day', 'PlantA', 201, 'All good', 0.0, 2, 0.5, 'PC01', 'Present', 'Yes', 8.0, 1);
INSERT INTO employee_shift_logs VALUES (2, 102, 'Logistics', '2024-01-05', '20:00', '04:00', '20:10', '04:05', 'Night', 'PlantB', 202, 'Late start', 1.5, 1, 0.25, 'PC02', 'Present', 'No', 8.0, 1);
INSERT INTO employee_shift_logs VALUES (3, 103, 'Maintenance', '2024-01-06', '06:00', '14:00', '06:05', '14:03', 'Day', 'PlantC', 203, 'Equipment check', 0.2, 3, 0.75, 'PC03', 'Present', 'Yes', 8.0, 1);

-- Marketing event calendar table
CREATE TABLE marketing_event_calendar (
    EventID INTEGER PRIMARY KEY,
    EventName TEXT,
    EventType TEXT,
    StartDate DATE,
    EndDate DATE,
    Budget REAL,
    TargetAudience TEXT,
    Venue TEXT,
    City TEXT,
    Country TEXT,
    ExpectedAttendance INTEGER,
    SponsorName TEXT,
    CampaignCode TEXT,
    MarketingChannel TEXT,
    LeadGenTarget INTEGER,
    ActualAttendance INTEGER,
    ROI REAL,
    SocialMediaHashtag TEXT,
    CreativeAgency TEXT,
    Status TEXT,
    CreatedBy INTEGER,
    CreatedDate DATE
);

INSERT INTO marketing_event_calendar VALUES (1001, 'Winter Promo', 'Promotion', '2024-02-01', '2024-02-10', 50000.0, 'Retail', 'Grand Hall', 'Berlin', 'Germany', 2000, 'BrandCo', 'WP2024', 'Digital', 1500, 1800, 1.2, '#WinterDeal', 'CreativeX', 'Active', 301, '2023-12-15');
INSERT INTO marketing_event_calendar VALUES (1002, 'Tech Expo', 'Exhibition', '2024-03-15', '2024-03-20', 120000.0, 'Tech Enthusiasts', 'Expo Center', 'Tokyo', 'Japan', 5000, 'TechCorp', 'TE2024', 'Hybrid', 4000, 4700, 1.5, '#TechFuture', 'MediaWorks', 'Planned', 302, '2024-01-05');
INSERT INTO marketing_event_calendar VALUES (1003, 'Summer Festival', 'Festival', '2024-06-10', '2024-06-15', 80000.0, 'Families', 'City Park', 'Sydney', 'Australia', 3000, 'EventCo', 'SF2024', 'Outdoor', 2500, 0, 0.0, '#SummerFun', 'DesignHub', 'Draft', 303, '2024-02-20');

-- Environmental sensor readings table
CREATE TABLE environmental_sensor_readings (
    ReadingID INTEGER PRIMARY KEY,
    SensorID INTEGER,
    SensorType TEXT,
    InstallationDate DATE,
    Latitude REAL,
    Longitude REAL,
    Elevation REAL,
    ReadingDate DATE,
    ReadingTime TEXT,
    TemperatureC REAL,
    HumidityPct REAL,
    CO2ppm REAL,
    PM25ugm3 REAL,
    NoiseDbA REAL,
    VoltageV REAL,
    BatteryLevelPct REAL,
    FirmwareVersion TEXT,
    CalibrationDate DATE,
    Status TEXT,
    DataQualityScore REAL,
    UploadedBy INTEGER
);

INSERT INTO environmental_sensor_readings VALUES (5001, 1, 'AirQuality', '2023-05-10', 48.8566, 2.3522, 35.0, '2024-01-05', '09:00', 22.5, 55.0, 420.0, 12.3, 45.0, 3.3, 95.0, 'v1.2', '2023-12-01', 'Active', 0.98, 401);
INSERT INTO environmental_sensor_readings VALUES (5002, 2, 'Weather', '2023-06-15', 34.0522, -118.2437, 89.0, '2024-01-05', '09:05', 18.2, 40.0, 380.0, 8.7, 42.0, 3.2, 90.0, 'v1.3', '2023-12-15', 'Active', 0.95, 402);
INSERT INTO environmental_sensor_readings VALUES (5003, 3, 'Noise', '2023-07-20', 51.5074, -0.1278, 15.0, '2024-01-05', '09:10', 16.0, 70.0, 410.0, 15.0, 58.0, 3.1, 88.0, 'v1.1', '2023-11-20', 'Inactive', 0.80, 403);

-- Logistics freight rate matrix table
CREATE TABLE logistics_freight_rate_matrix (
    RateID INTEGER PRIMARY KEY,
    OriginRegion TEXT,
    DestinationRegion TEXT,
    TransportMode TEXT,
    ContainerSize TEXT,
    BaseRate REAL,
    FuelSurchargePct REAL,
    SeasonalAdjustment REAL,
    Currency TEXT,
    EffectiveFrom DATE,
    EffectiveTo DATE,
    MinimumWeightKg REAL,
    MaximumWeightKg REAL,
    RateClass TEXT,
    CapacityUtilizationPct REAL,
    ContractID INTEGER,
    RateVersion INTEGER,
    CreatedBy INTEGER,
    CreatedDate DATE,
    ApprovedBy INTEGER,
    ApprovalDate DATE,
    Comments TEXT
);

INSERT INTO logistics_freight_rate_matrix VALUES (2001, 'EU', 'Asia', 'Sea', '40ft', 1500.0, 12.5, 0.0, 'EUR', '2024-01-01', '2024-12-31', 1000.0, 20000.0, 'Standard', 85.0, 301, 1, 501, '2023-12-01', 601, '2023-12-05', 'Initial rate');
INSERT INTO logistics_freight_rate_matrix VALUES (2002, 'NorthAmerica', 'SouthAmerica', 'Air', 'N/A', 3000.0, 15.0, -5.0, 'USD', '2024-03-01', '2024-09-30', 200.0, 5000.0, 'Express', 92.0, 302, 1, 502, '2024-02-15', 602, '2024-02-20', 'Seasonal discount applied');
INSERT INTO logistics_freight_rate_matrix VALUES (2003, 'MiddleEast', 'Europe', 'Land', '20ft', 800.0, 10.0, 3.0, 'AED', '2024-04-01', '2025-03-31', 500.0, 15000.0, 'Economy', 78.0, 303, 2, 503, '2024-03-10', 603, '2024-03-12', 'Revised after market analysis');

-- Corporate training modules table
CREATE TABLE corporate_training_modules (
    ModuleID INTEGER PRIMARY KEY,
    ModuleName TEXT,
    Category TEXT,
    DifficultyLevel TEXT,
    DurationHours REAL,
    Language TEXT,
    Provider TEXT,
    LaunchDate DATE,
    ExpirationDate DATE,
    MaxEnrollments INTEGER,
    CurrentEnrollments INTEGER,
    CertificationAvailable TEXT,
    PassingScore REAL,
    AssessmentType TEXT,
    VideoHours REAL,
    QuizCount INTEGER,
    LabCount INTEGER,
    CreditsEarned REAL,
    Status TEXT,
    CreatedBy INTEGER,
    CreatedDate DATE,
    UpdatedBy INTEGER,
    UpdatedDate DATE
);

INSERT INTO corporate_training_modules VALUES (3010, 'Data Privacy Basics', 'Compliance', 'Beginner', 4.0, 'English', 'LearnNow', '2023-09-01', '2025-09-01', 500, 120, 'Yes', 80.0, 'Quiz', 1.5, 10, 2, 1.0, 'Active', 701, '2023-08-15', 702, '2024-01-10');
INSERT INTO corporate_training_modules VALUES (3011, 'Advanced Project Management', 'Management', 'Advanced', 12.0, 'English', 'SkillUp', '2023-11-15', '2026-11-15', 200, 45, 'Yes', 85.0, 'Project', 6.0, 25, 5, 3.0, 'Planned', 703, '2023-10-20', 704, '2024-02-05');
INSERT INTO corporate_training_modules VALUES (3012, 'Cybersecurity Awareness', 'IT', 'Intermediate', 6.0, 'Spanish', 'SecureTech', '2024-01-10', '2026-01-10', 400, 80, 'No', 0.0, 'Simulation', 2.0, 15, 3, 2.0, 'Active', 705, '2023-12-01', 706, '2024-03-01');

-- Renewable energy project milestones table
CREATE TABLE renewable_energy_project_milestones (
    MilestoneID INTEGER PRIMARY KEY,
    ProjectID INTEGER,
    MilestoneName TEXT,
    Description TEXT,
    PlannedDate DATE,
    ActualDate DATE,
    Status TEXT,
    ResponsibleTeam TEXT,
    BudgetAllocated REAL,
    BudgetSpent REAL,
    RiskLevel TEXT,
    DependencyMilestoneID INTEGER,
    CompletionPercentage REAL,
    DocumentReference TEXT,
    UpdatedBy INTEGER,
    UpdatedDate DATE,
    CreatedBy INTEGER,
    CreatedDate DATE,
    Stakeholder TEXT,
    ImpactScore REAL,
    Comments TEXT
);

INSERT INTO renewable_energy_project_milestones VALUES (4001, 9001, 'Site Acquisition', 'Obtain land rights', '2024-02-01', '2024-02-10', 'Completed', 'Legal', 200000.0, 210000.0, 'Medium', NULL, 100.0, 'DOC001', 801, '2024-02-12', 701, '2024-01-20', 'Government', 85.0, 'Delayed due to paperwork');
INSERT INTO renewable_energy_project_milestones VALUES (4002, 9001, 'Permitting', 'Environmental permits', '2024-03-01', NULL, 'InProgress', 'Compliance', 150000.0, 90000.0, 'High', 4001, 60.0, 'DOC002', 802, '2024-03-15', 702, '2024-02-05', 'NGO', 70.0, '');
INSERT INTO renewable_energy_project_milestones VALUES (4003, 9002, 'Turbine Installation', 'Install wind turbines', '2024-05-01', NULL, 'Planned', 'Construction', 500000.0, 0.0, 'Low', NULL, 0.0, 'DOC010', 803, '2024-04-20', 703, '2024-04-01', 'Investors', 90.0, '');

-- Public art installation inventory table
CREATE TABLE public_art_installation_inventory (
    InstallationID INTEGER PRIMARY KEY,
    ArtworkTitle TEXT,
    ArtistName TEXT,
    Medium TEXT,
    HeightCm REAL,
    WidthCm REAL,
    DepthCm REAL,
    InstallationDate DATE,
    LocationDescription TEXT,
    City TEXT,
    Country TEXT,
    OwnerOrganization TEXT,
    MaintenanceContractID INTEGER,
    ConditionRating TEXT,
    EstimatedValue REAL,
    InsurancePolicyNumber TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL,
    LightingType TEXT,
    VisibilityScore REAL,
    PublicEngagementLevel TEXT,
    CreatedBy INTEGER,
    CreatedDate DATE
);

INSERT INTO public_art_installation_inventory VALUES (6001, 'River Flow', 'Anna Rivera', 'Bronze', 250.0, 80.0, 60.0, '2023-08-15', 'Central Plaza', 'Lisbon', 'Portugal', 'City Council', 901, 'Good', 120000.0, 'POL12345', 38.7223, -9.1393, 'LED', 9.5, 'High', 901, '2023-07-20');
INSERT INTO public_art_installation_inventory VALUES (6002, 'Sky Dreams', 'Liam Chen', 'Stainless Steel', 180.0, 180.0, 20.0, '2024-01-10', 'Riverside Walk', 'Melbourne', 'Australia', 'Arts Trust', 902, 'Excellent', 200000.0, 'POL67890', -37.8136, 144.9631, 'Solar', 8.8, 'Medium', 902, '2023-12-01');
INSERT INTO public_art_installation_inventory VALUES (6003, 'Harmony', 'Sofia Patel', 'Stone', 300.0, 150.0, 150.0, '2023-11-05', 'University Campus', 'Boston', 'USA', 'University Board', 903, 'Fair', 95000.0, 'POL54321', 42.3601, -71.0589, 'None', 7.2, 'Low', 903, '2023-10-15');

-- Water quality sampling sites table
CREATE TABLE water_quality_sampling_sites (
    SiteID INTEGER PRIMARY KEY,
    SiteName TEXT,
    RiverBasin TEXT,
    Latitude REAL,
    Longitude REAL,
    ElevationM REAL,
    SamplingFrequencyDays INTEGER,
    LastSampleDate DATE,
    SampleDepthM REAL,
    PH REAL,
    ConductivityUsCm REAL,
    TurbidityNtU REAL,
    NitrateMgL REAL,
    PhosphateMgL REAL,
    DissolvedOxygenMgL REAL,
    TemperatureC REAL,
    BiologicalOxygenDemandMgL REAL,
    ChemicalOxygenDemandMgL REAL,
    SamplingMethod TEXT,
    ResponsibleAgency TEXT,
    DataQualityFlag TEXT,
    CreatedBy INTEGER,
    CreatedDate DATE
);

INSERT INTO water_quality_sampling_sites VALUES (7001, 'North Creek', 'Upper Valley', 45.4215, -75.6972, 180.0, 30, '2024-01-02', 1.5, 7.2, 150.0, 5.0, 2.3, 0.4, 8.5, 10.0, 3.0, 12.0, 'Grab', 'EnviroDept', 'A', 801, '2023-12-01');
INSERT INTO water_quality_sampling_sites VALUES (7002, 'South River', 'Lower Basin', 34.0522, -118.2437, 30.0, 15, '2024-01-04', 2.0, 6.8, 200.0, 8.2, 1.9, 0.5, 9.1, 12.5, 4.2, 15.0, 'Composite', 'WaterAuthority', 'B', 802, '2023-11-20');
INSERT INTO water_quality_sampling_sites VALUES (7003, 'East Lake', 'Midland', 51.5074, -0.1278, 60.0, 7, '2024-01-06', 0.8, 7.5, 180.0, 6.0, 2.1, 0.3, 7.8, 11.0, 2.8, 10.5, 'Integrated', 'LakeManagement', 'A', 803, '2023-10-15');

-- Smart city traffic signal configurations table
CREATE TABLE smart_city_traffic_signal_configurations (
    ConfigID INTEGER PRIMARY KEY,
    IntersectionID INTEGER,
    SignalControllerModel TEXT,
    FirmwareVersion TEXT,
    CycleTimeSec REAL,
    GreenTimeSec REAL,
    YellowTimeSec REAL,
    RedTimeSec REAL,
    PedestrianPhaseEnabled TEXT,
    AdaptiveControlEnabled TEXT,
    SensorType TEXT,
    SensorCount INTEGER,
    DataCollectionIntervalSec INTEGER,
    OptimizationAlgorithm TEXT,
    LastCalibrationDate DATE,
    Status TEXT,
    InstalledBy INTEGER,
    InstallationDate DATE,
    MaintenanceDueDate DATE,
    UpdatedBy INTEGER,
    UpdatedDate DATE,
    Notes TEXT
);

INSERT INTO smart_city_traffic_signal_configurations VALUES (8001, 1201, 'CtrlX100', 'v3.4', 120.0, 45.0, 5.0, 70.0, 'Yes', 'Yes', 'InductiveLoop', 4, 30, 'Genetic', '2023-12-01', 'Active', 901, '2022-06-15', '2024-06-15', 902, '2023-11-20', 'Routine update completed');
INSERT INTO smart_city_traffic_signal_configurations VALUES (8002, 1202, 'CtrlY200', 'v2.9', 110.0, 40.0, 4.0, 66.0, 'No', 'Yes', 'Video', 2, 20, 'Reinforcement', '2023-11-10', 'Active', 903, '2021-09-10', '2024-09-10', 904, '2023-10-05', 'Added pedestrian detection');
INSERT INTO smart_city_traffic_signal_configurations VALUES (8003, 1203, 'CtrlZ300', 'v1.8', 130.0, 50.0, 6.0, 74.0, 'Yes', 'No', 'Radar', 3, 25, 'Heuristic', '2023-10-20', 'Maintenance', 905, '2020-03-22', '2023-12-22', 906, '2023-09-30', 'Needs firmware upgrade');

-- Fleet driver performance metrics table
CREATE TABLE fleet_driver_performance_metrics (
    MetricID INTEGER PRIMARY KEY,
    DriverID INTEGER,
    EvaluationPeriodStart DATE,
    EvaluationPeriodEnd DATE,
    TotalMiles REAL,
    AvgSpeedMph REAL,
    SafetyScore REAL,
    OnTimeDeliveryPct REAL,
    FuelEfficiencyMpg REAL,
    HarshBrakingCount INTEGER,
    HarshAccelerationCount INTEGER,
    IdlingHours REAL,
    ComplianceViolations INTEGER,
    TrainingCompleted TEXT,
    CustomerFeedbackScore REAL,
    RouteDeviationPct REAL,
    AvgLoadWeightLbs REAL,
    HoursOfService REAL,
    AccidentCount INTEGER,
    IncidentSeverity TEXT,
    UpdatedBy INTEGER,
    UpdatedDate DATE,
    Comments TEXT
);

INSERT INTO fleet_driver_performance_metrics VALUES (9001, 2101, '2023-12-01', '2023-12-31', 1520.5, 58.2, 92.0, 98.5, 7.8, 4, 3, 12.5, 0, 'Yes', 4.7, 1.2, 1500.0, 180.0, 0, 'None', 1001, '2024-01-02', 'Met all targets');
INSERT INTO fleet_driver_performance_metrics VALUES (9002, 2102, '2023-12-01', '2023-12-31', 1400.0, 55.0, 85.0, 95.0, 6.5, 7, 5, 15.0, 1, 'No', 3.9, 3.5, 1400.0, 175.0, 1, 'Minor', 1002, '2024-01-03', 'One compliance issue');
INSERT INTO fleet_driver_performance_metrics VALUES (9003, 2103, '2023-12-01', '2023-12-31', 1600.8, 60.5, 88.0, 97.0, 8.0, 2, 1, 10.0, 0, 'Yes', 4.5, 0.8, 1600.0, 190.0, 0, 'None', 1003, '2024-01-04', 'Excellent fuel efficiency');