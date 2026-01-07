-- Municipal waste management facilities and operational data
CREATE TABLE municipal_waste_management
(
    FacilityID                TEXT PRIMARY KEY,
    FacilityName              TEXT,
    City                      TEXT,
    County                    TEXT,
    WasteType                 TEXT,
    Capacity_Tons             INTEGER,
    CurrentLoad_Tons          INTEGER,
    CollectionFrequency_Days  INTEGER,
    OperatorCompany           TEXT,
    PermitNumber              TEXT,
    PermitExpiration          DATE,
    RecyclingRate_Pct         REAL,
    HazardousWaste            INTEGER,
    GPS_Latitude              REAL,
    GPS_Longitude             REAL,
    LastInspectionDate        DATE,
    InspectionScore           INTEGER,
    ContactPhone              TEXT,
    ContactEmail              TEXT,
    Notes                     TEXT,
    CreatedDate               DATE,
    UpdatedDate               DATE
);

INSERT INTO municipal_waste_management (FacilityID, FacilityName, City, County, WasteType, Capacity_Tons, CurrentLoad_Tons, CollectionFrequency_Days, OperatorCompany, PermitNumber, PermitExpiration, RecyclingRate_Pct, HazardousWaste, GPS_Latitude, GPS_Longitude, LastInspectionDate, InspectionScore, ContactPhone, ContactEmail, Notes, CreatedDate, UpdatedDate) VALUES ('MW001','Northside Transfer Station','Springfield','Greene','Mixed',1200,850,7,'EcoWaste LLC','PN12345','2025-12-31',65.5,0,39.7817,-89.6501,'2023-06-15',88,'555-1234','info@ecowaste.com','Primary facility','2023-01-01','2023-07-01');
INSERT INTO municipal_waste_management (FacilityID, FacilityName, City, County, WasteType, Capacity_Tons, CurrentLoad_Tons, CollectionFrequency_Days, OperatorCompany, PermitNumber, PermitExpiration, RecyclingRate_Pct, HazardousWaste, GPS_Latitude, GPS_Longitude, LastInspectionDate, InspectionScore, ContactPhone, ContactEmail, Notes, CreatedDate, UpdatedDate) VALUES ('MW002','East River Recycling Plant','Riverton','Madison','Recyclables',800,500,5,'GreenCycle Inc','PN67890','2026-03-15',78.2,0,40.1123,-89.8542,'2023-05-20',92,'555-5678','contact@greencycle.com','Handles plastics and paper','2023-02-01','2023-07-10');
INSERT INTO municipal_waste_management (FacilityID, FacilityName, City, County, WasteType, Capacity_Tons, CurrentLoad_Tons, CollectionFrequency_Days, OperatorCompany, PermitNumber, PermitExpiration, RecyclingRate_Pct, HazardousWaste, GPS_Latitude, GPS_Longitude, LastInspectionDate, InspectionScore, ContactPhone, ContactEmail, Notes, CreatedDate, UpdatedDate) VALUES ('MW003','Southside Hazardous Waste Site','Laketown','Jefferson','Hazardous',300,210,14,'SafeDispose Ltd','PN54321','2024-11-30',12.0,1,38.9456,-88.9876,'2023-04-10',81,'555-9012','support@safedispose.com','Requires special handling','2023-03-15','2023-07-15');

-- Regional air quality forecast data
CREATE TABLE regional_air_quality_forecast
(
    ForecastID          TEXT PRIMARY KEY,
    RegionCode          TEXT,
    ForecastDate        DATE,
    PM25_UGM3           REAL,
    PM10_UGM3           REAL,
    Ozone_UGM3          REAL,
    NO2_UGM3            REAL,
    SO2_UGM3            REAL,
    CO_PPM              REAL,
    AQI                 INTEGER,
    WindSpeed_MPH       REAL,
    WindDirection       TEXT,
    Temperature_F       REAL,
    Humidity_Pct        REAL,
    SourceModel         TEXT,
    ConfidenceLevel     TEXT,
    CreatedTimestamp    DATE,
    UpdatedTimestamp    DATE,
    AnalystName         TEXT,
    Notes               TEXT,
    Latitude            REAL,
    Longitude           REAL
);

INSERT INTO regional_air_quality_forecast (ForecastID, RegionCode, ForecastDate, PM25_UGM3, PM10_UGM3, Ozone_UGM3, NO2_UGM3, SO2_UGM3, CO_PPM, AQI, WindSpeed_MPH, WindDirection, Temperature_F, Humidity_Pct, SourceModel, ConfidenceLevel, CreatedTimestamp, UpdatedTimestamp, AnalystName, Notes, Latitude, Longitude) VALUES ('AF001','RC01','2023-08-01',12.3,45.6,0.035,0.018,0.005,0.7,42,5.2,'NW',78.2,55.0,'ModelX','High','2023-07-25','2023-07-26','Jane Doe','Clear skies','39.7817','-89.6501');
INSERT INTO regional_air_quality_forecast (ForecastID, RegionCode, ForecastDate, PM25_UGM3, PM10_UGM3, Ozone_UGM3, NO2_UGM3, SO2_UGM3, CO_PPM, AQI, WindSpeed_MPH, WindDirection, Temperature_F, Humidity_Pct, SourceModel, ConfidenceLevel, CreatedTimestamp, UpdatedTimestamp, AnalystName, Notes, Latitude, Longitude) VALUES ('AF002','RC02','2023-08-01',25.8,70.1,0.060,0.025,0.008,0.9,78,3.8','SE',82.5,48.0,'ModelY','Medium','2023-07-25','2023-07-27','John Smith','Slight haze','40.1123','-89.8542');
INSERT INTO regional_air_quality_forecast (ForecastID, RegionCode, ForecastDate, PM25_UGM3, PM10_UGM3, Ozone_UGM3, NO2_UGM3, SO2_UGM3, CO_PPM, AQI, WindSpeed_MPH, WindDirection, Temperature_F, Humidity_Pct, SourceModel, ConfidenceLevel, CreatedTimestamp, UpdatedTimestamp, AnalystName, Notes, Latitude, Longitude) VALUES ('AF003','RC03','2023-08-01',8.5,30.2,0.025,0.012,0.003,0.5,30,6.0,'NE',71.0,62.0,'ModelZ','High','2023-07-25','2023-07-28','Alice Lee','Very good conditions','38.9456','-88.9876');

-- School 3D printing project tracking
CREATE TABLE school_3d_printing_projects
(
    ProjectID           TEXT PRIMARY KEY,
    SchoolID            TEXT,
    ProjectName         TEXT,
    LeadTeacher         TEXT,
    StartDate           DATE,
    EndDate             DATE,
    PrinterModel        TEXT,
    FilamentType        TEXT,
    FilamentWeightKg    REAL,
    EstimatedCost_USD   REAL,
    ActualCost_USD      REAL,
    StudentCount        INTEGER,
    HoursUsed           INTEGER,
    ProjectGoal         TEXT,
    OutcomeSummary      TEXT,
    FundingSource       TEXT,
    GrantNumber         TEXT,
    IsOngoing           INTEGER,
    CreatedBy           TEXT,
    CreatedDate         DATE,
    LastModifiedBy      TEXT,
    LastModifiedDate    DATE,
    Comments            TEXT
);

INSERT INTO school_3d_printing_projects (ProjectID, SchoolID, ProjectName, LeadTeacher, StartDate, EndDate, PrinterModel, FilamentType, FilamentWeightKg, EstimatedCost_USD, ActualCost_USD, StudentCount, HoursUsed, ProjectGoal, OutcomeSummary, FundingSource, GrantNumber, IsOngoing, CreatedBy, CreatedDate, LastModifiedBy, LastModifiedDate, Comments) VALUES ('PJT001','SCH001','Historic Landmarks','Ms Carter','2023-01-15','2023-05-30','Prusa i3 MK3','PLA','5.2',1200.00,1150.00,28,120,'Create scale models of local landmarks','All models printed and displayed in lobby','District Grant','DG2022-09',0,'Admin A','2023-01-10','Admin B','2023-06-01','Students reported high engagement');
INSERT INTO school_3d_printing_projects (ProjectID, SchoolID, ProjectName, LeadTeacher, StartDate, EndDate, PrinterModel, FilamentType, FilamentWeightKg, EstimatedCost_USD, ActualCost_USD, StudentCount, HoursUsed, ProjectGoal, OutcomeSummary, FundingSource, GrantNumber, IsOngoing, CreatedBy, CreatedDate, LastModifiedBy, LastModifiedDate, Comments) VALUES ('PJT002','SCH002','Robotics Parts','Mr Allen','2023-02-01','2023-06-15','Ultimaker S5','ABS','8.0',2500.00,2600.00,35,200,'Print custom robot components','Components met specifications','Community Sponsor','CS-2023-01',0,'Admin C','2023-01-20','Admin D','2023-06-20','Some material waste observed');
INSERT INTO school_3d_printing_projects (ProjectID, SchoolID, ProjectName, LeadTeacher, StartDate, EndDate, PrinterModel, FilamentType, FilamentWeightKg, EstimatedCost_USD, ActualCost_USD, StudentCount, HoursUsed, ProjectGoal, OutcomeSummary, FundingSource, GrantNumber, IsOngoing, CreatedBy, CreatedDate, LastModifiedBy, LastModifiedDate, Comments) VALUES ('PJT003','SCH003','Medical Models','Dr Lee','2023-03-10','2023-09-30','Formlabs Form 3','Resin','3.5',3000.00,2950.00,22,150,'Create anatomical models for health class','Models used in anatomy labs','Health Dept Grant','HDG-2023-05',1,'Admin E','2023-03-01','Admin F','2023-07-01','Ongoing with quarterly reviews');

-- District public art commissions
CREATE TABLE district_public_art_commissions
(
    CommissionID            TEXT PRIMARY KEY,
    DistrictID              TEXT,
    ArtworkTitle            TEXT,
    ArtistName              TEXT,
    InstallationDate        DATE,
    LocationDescription     TEXT,
    Material                TEXT,
    DimensionsInches        TEXT,
    EstimatedValue_USD      REAL,
    FundingSource           TEXT,
    GrantNumber             TEXT,
    MaintenanceSchedule     TEXT,
    LastMaintenanceDate     DATE,
    ConditionRating         INTEGER,
    ContactPerson           TEXT,
    ContactPhone            TEXT,
    ContactEmail            TEXT,
    Latitude                REAL,
    Longitude               REAL,
    CreatedDate             DATE,
    UpdatedDate             DATE,
    Notes                   TEXT,
    Status                  TEXT
);

INSERT INTO district_public_art_commissions (CommissionID, DistrictID, ArtworkTitle, ArtistName, InstallationDate, LocationDescription, Material, DimensionsInches, EstimatedValue_USD, FundingSource, GrantNumber, MaintenanceSchedule, LastMaintenanceDate, ConditionRating, ContactPerson, ContactPhone, ContactEmail, Latitude, Longitude, CreatedDate, UpdatedDate, Notes, Status) VALUES ('ART001','DIST01','Beacon of Hope','Linda Gray','2022-04-10','Main Plaza','Bronze','48x24x12',45000.00,'Arts Council','AC-2021-07','Annual','2023-03-15',9,'Mark Rivera','555-1111','mark.rivera@district.org',39.7817,-89.6501,'2022-01-20','2023-04-01','Highly praised by community','Installed');
INSERT INTO district_public_art_commissions (CommissionID, DistrictID, ArtworkTitle, ArtistName, InstallationDate, LocationDescription, Material, DimensionsInches, EstimatedValue_USD, FundingSource, GrantNumber, MaintenanceSchedule, LastMaintenanceDate, ConditionRating, ContactPerson, ContactPhone, ContactEmail, Latitude, Longitude, CreatedDate, UpdatedDate, Notes, Status) VALUES ('ART002','DIST02','Waves of Learning','Carlos Mendoza','2021-09-05','Science Building Atrium','Stainless Steel','72x48x6',60000.00,'Corporate Sponsor','CS-2020-03','Semi-Annual','2022-12-10',8,'Susan Patel','555-2222','susan.patel@district.org',40.1123,-89.8542,'2021-06-15','2023-01-20','Requires occasional polishing','Installed');
INSERT INTO district_public_art_commissions (CommissionID, DistrictID, ArtworkTitle, ArtistName, InstallationDate, LocationDescription, Material, DimensionsInches, EstimatedValue_USD, FundingSource, GrantNumber, MaintenanceSchedule, LastMaintenanceDate, ConditionRating, ContactPerson, ContactPhone, ContactEmail, Latitude, Longitude, CreatedDate, UpdatedDate, Notes, Status) VALUES ('ART003','DIST03','Community Threads','Aisha Khan','2023-02-18','Library Entrance','Mixed Media','60x30x8',38000.00,'Grant Program','GP-2022-11','Quarterly','2023-06-05',7,'Tom Liu','555-3333','tom.liu@district.org',38.9456,-88.9876,'2022-12-01','2023-07-01','Planned for seasonal lighting','Planned');

-- Community senior center usage statistics
CREATE TABLE community_senior_center_usage
(
    CenterID                TEXT PRIMARY KEY,
    CenterName              TEXT,
    City                    TEXT,
    County                  TEXT,
    Capacity                INTEGER,
    DailyVisitorCount       INTEGER,
    WeeklyProgramCount      INTEGER,
    StaffCount              INTEGER,
    ManagerName             TEXT,
    ManagerPhone            TEXT,
    ManagerEmail            TEXT,
    OpeningHours            TEXT,
    AccessibilityFeatures   TEXT,
    LastRenovationDate      DATE,
    UpcomingEvents          TEXT,
    FundingSource           TEXT,
    AnnualBudget_USD        REAL,
    VolunteerHours          INTEGER,
    CommunityPartner        TEXT,
    GPS_Latitude            REAL,
    GPS_Longitude           REAL,
    CreatedDate             DATE,
    UpdatedDate             DATE,
    Notes                   TEXT
);

INSERT INTO community_senior_center_usage (CenterID, CenterName, City, County, Capacity, DailyVisitorCount, WeeklyProgramCount, StaffCount, ManagerName, ManagerPhone, ManagerEmail, OpeningHours, AccessibilityFeatures, LastRenovationDate, UpcomingEvents, FundingSource, AnnualBudget_USD, VolunteerHours, CommunityPartner, GPS_Latitude, GPS_Longitude, CreatedDate, UpdatedDate, Notes) VALUES ('SC001','Maple Grove Senior Center','Springfield','Greene',120,85,12,8,'Laura Miles','555-4444','laura.miles@city.gov','8am-6pm','Ramp,Elevator','2021-05-10','Health Fair July','City Grant',250000.00,300,'Local Hospital',39.7817,-89.6501,'2022-01-01','2023-06-01','High satisfaction scores');
INSERT INTO community_senior_center_usage (CenterID, CenterName, City, County, Capacity, DailyVisitorCount, WeeklyProgramCount, StaffCount, ManagerName, ManagerPhone, ManagerEmail, OpeningHours, AccessibilityFeatures, LastRenovationDate, UpcomingEvents, FundingSource, AnnualBudget_USD, VolunteerHours, CommunityPartner, GPS_Latitude, GPS_Longitude, CreatedDate, UpdatedDate, Notes) VALUES ('SC002','Riverbend Senior Hub','Riverton','Madison',150,100,15,10,'Steven Clark','555-5555','steven.clark@city.gov','9am-5pm','Ramp,AutomaticDoors','2020-09-22','Art Workshop Aug','County Fund',300000.00,420,'Senior Services Org',40.1123,-89.8542,'2022-02-15','2023-06-15','Recently added yoga classes');
INSERT INTO community_senior_center_usage (CenterID, CenterName, City, County, Capacity, DailyVisitorCount, WeeklyProgramCount, StaffCount, ManagerName, ManagerPhone, ManagerEmail, OpeningHours, AccessibilityFeatures, LastRenovationDate, UpcomingEvents, FundingSource, AnnualBudget_USD, VolunteerHours, CommunityPartner, GPS_Latitude, GPS_Longitude, CreatedDate, UpdatedDate, Notes) VALUES ('SC003','Pinecrest Senior Center','Laketown','Jefferson',200,130,18,12,'Emily Shaw','555-6666','emily.shaw@city.gov','7am-7pm','Ramp,Elevator,Handrails','2019-11-05','Technology Seminar Sep','State Grant',350000.00,500,'Tech Volunteers Inc',38.9456,-88.9876,'2022-03-10','2023-07-01','Planning expansion next year');

-- State education policy analysis records
CREATE TABLE state_education_policy_analysis
(
    AnalysisID            TEXT PRIMARY KEY,
    PolicyID              TEXT,
    PolicyName            TEXT,
    EffectiveDate         DATE,
    Agency                TEXT,
    Summary               TEXT,
    ImpactScore           INTEGER,
    FundingImpact_USD     REAL,
    ImplementationStatus  TEXT,
    EvaluationDate        DATE,
    EvaluatorName         TEXT,
    Recommendations       TEXT,
    DataSource            TEXT,
    DataYear              INTEGER,
    State                 TEXT,
    Region                TEXT,
    CreatedDate           DATE,
    UpdatedDate           DATE,
    Notes                 TEXT,
    IsActive              INTEGER,
    ReviewerComments      TEXT,
    ApprovalStatus        TEXT
);

INSERT INTO state_education_policy_analysis (AnalysisID, PolicyID, PolicyName, EffectiveDate, Agency, Summary, ImpactScore, FundingImpact_USD, ImplementationStatus, EvaluationDate, EvaluatorName, Recommendations, DataSource, DataYear, State, Region, CreatedDate, UpdatedDate, Notes, IsActive, ReviewerComments, ApprovalStatus) VALUES ('ANL001','POL100','Early Childhood Funding Expansion','2022-07-01','Dept of Education','Increases funding for pre-K programs','85',12000000.00,'Partial','2023-04-15','Dr Miller','Allocate additional resources to rural districts','State Data Warehouse',2022,'Illinois','Midwest','2023-01-10','2023-04-20','Positive early outcomes observed',1,'Supportive','Approved');
INSERT INTO state_education_policy_analysis (AnalysisID, PolicyID, PolicyName, EffectiveDate, Agency, Summary, ImpactScore, FundingImpact_USD, ImplementationStatus, EvaluationDate, EvaluatorName, Recommendations, DataSource, DataYear, State, Region, CreatedDate, UpdatedDate, Notes, IsActive, ReviewerComments, ApprovalStatus) VALUES ('ANL002','POL200','STEM Teacher Incentive Program','2021-01-15','Dept of Labor','Provides bonuses for STEM teachers','78',8000000.00,'Full','2023-03-10','Ms Patel','Consider extending to middle schools','Education Finance Report',2021,'Illinois','Midwest','2022-12-05','2023-03-15','Improved teacher retention',1,'Needs further budget review','Pending');
INSERT INTO state_education_policy_analysis (AnalysisID, PolicyID, PolicyName, EffectiveDate, Agency, Summary, ImpactScore, FundingImpact_USD, ImplementationStatus, EvaluationDate, EvaluatorName, Recommendations, DataSource, DataYear, State, Region, CreatedDate, UpdatedDate, Notes, IsActive, ReviewerComments, ApprovalStatus) VALUES ('ANL003','POL300','Digital Learning Accessibility','2023-03-01','Office of Technology','Mandates accessible digital resources','90',15000000.00','Implementation','2023-06-01','Mr Lee','Develop statewide compliance checklist','Tech Access Survey',2023,'Illinois','Midwest','2023-03-20','2023-06-05','Early compliance reports positive',1,'Strong recommendation','Approved');

-- National grant competition results tracking
CREATE TABLE national_grant_competition_results
(
    CompetitionID          TEXT PRIMARY KEY,
    Year                   INTEGER,
    GrantProgram           TEXT,
    ApplicantID            TEXT,
    ApplicantName          TEXT,
    Institution            TEXT,
    RequestedAmount_USD    REAL,
    AwardedAmount_USD     REAL,
    AwardStatus            TEXT,
    ReviewScore            INTEGER,
    ReviewPanel            TEXT,
    DecisionDate           DATE,
    FundingAgency          TEXT,
    ProjectTitle           TEXT,
    ProjectDurationMonths  INTEGER,
    AreaOfFocus            TEXT,
    IsMultiYear            INTEGER,
    ContactEmail           TEXT,
    ContactPhone           TEXT,
    CreatedDate            DATE,
    UpdatedDate            DATE,
    Notes                  TEXT,
    Category               TEXT
);

INSERT INTO national_grant_competition_results (CompetitionID, Year, GrantProgram, ApplicantID, ApplicantName, Institution, RequestedAmount_USD, AwardedAmount_USD, AwardStatus, ReviewScore, ReviewPanel, DecisionDate, FundingAgency, ProjectTitle, ProjectDurationMonths, AreaOfFocus, IsMultiYear, ContactEmail, ContactPhone, CreatedDate, UpdatedDate, Notes, Category) VALUES ('GC001',2023,'Innovate Education','APP001','Dr Anna Gomez','University of Springfield',500000.00,500000.00,'Awarded',95,'Panel A','2023-04-20','National Science Foundation','STEM Classroom Labs',24,'STEM Education',1,'anna.gomez@univ.edu','555-7777','2023-01-15','2023-04-25','Full funding granted', 'Research');
INSERT INTO national_grant_competition_results (CompetitionID, Year, GrantProgram, ApplicantID, ApplicantName, Institution, RequestedAmount_USD, AwardedAmount_USD, AwardStatus, ReviewScore, ReviewPanel, DecisionDate, FundingAgency, ProjectTitle, ProjectDurationMonths, AreaOfFocus, IsMultiYear, ContactEmail, ContactPhone, CreatedDate, UpdatedDate, Notes, Category) VALUES ('GC002',2023,'Community Impact Grant','APP002','Mr Brian Lee','Midtown Community College',200000.00,150000.00,'Partial',88,'Panel B','2023-05-10','Department of Education','After-school Tutoring Expansion',12,'Community Outreach',0,'brian.lee@midtown.edu','555-8888','2023-02-01','2023-05-15','Award reduced due to budget constraints','Community');
INSERT INTO national_grant_competition_results (CompetitionID, Year, GrantProgram, ApplicantID, ApplicantName, Institution, RequestedAmount_USD, AwardedAmount_USD, AwardStatus, ReviewScore, ReviewPanel, DecisionDate, FundingAgency, ProjectTitle, ProjectDurationMonths, AreaOfFocus, IsMultiYear, ContactEmail, ContactPhone, CreatedDate, UpdatedDate, Notes, Category) VALUES ('GC003',2024,'Tech Innovation Fund','APP003','Dr Maya Patel','Tech University','750000.00',750000.00,'Awarded',98,'Panel C','2024-01-15','Department of Energy','Renewable Energy Labs',36,'Energy Research',1,'maya.patel@techuni.edu','555-9999','2023-11-20','2024-01-20','Awarded in full for cutting-edge research','Research');

-- City traffic incident log
CREATE TABLE city_traffic_incident_log
(
    IncidentID             TEXT PRIMARY KEY,
    City                   TEXT,
    Date                   DATE,
    Time                   TEXT,
    LocationDescription    TEXT,
    Intersection           TEXT,
    Severity               INTEGER,
    VehiclesInvolved       INTEGER,
    Injuries               INTEGER,
    Fatalities             INTEGER,
    ReportingOfficer       TEXT,
    WeatherCondition       TEXT,
    RoadCondition          TEXT,
    TrafficControl         TEXT,
    Description            TEXT,
    DetourImplemented      INTEGER,
    DetourStartTime        TEXT,
    DetourEndTime          TEXT,
    EstimatedDelayMinutes  INTEGER,
    Latitude               REAL,
    Longitude              REAL,
    CreatedTimestamp       DATE,
    UpdatedTimestamp       DATE,
    Notes                  TEXT
);

INSERT INTO city_traffic_incident_log (IncidentID, City, Date, Time, LocationDescription, Intersection, Severity, VehiclesInvolved, Injuries, Fatalities, ReportingOfficer, WeatherCondition, RoadCondition, TrafficControl, Description, DetourImplemented, DetourStartTime, DetourEndTime, EstimatedDelayMinutes, Latitude, Longitude, CreatedTimestamp, UpdatedTimestamp, Notes) VALUES ('INC001','Springfield','2023-07-12','08:30','Main St near 5th Ave','Main & 5th',3,2,1,0,'Officer Dan','Clear','Dry','Traffic Light','Rear-end collision during rush hour',1,'08:45','09:15',20,39.7817,-89.6501,'2023-07-12','2023-07-13','No fatalities');
INSERT INTO city_traffic_incident_log (IncidentID, City, Date, Time, LocationDescription, Intersection, Severity, VehiclesInvolved, Injuries, Fatalities, ReportingOfficer, WeatherCondition, RoadCondition, TrafficControl, Description, DetourImplemented, DetourStartTime, DetourEndTime, EstimatedDelayMinutes, Latitude, Longitude, CreatedTimestamp, UpdatedTimestamp, Notes) VALUES ('INC002','Riverton','2023-08-05','14:20','Broadway near Oak St','Broadway & Oak',2,1,0,0,'Officer Lee','Rain','Wet','Stop Sign','Minor fender-bender, no injuries',0,NULL,NULL,5,40.1123,-89.8542,'2023-08-05','2023-08-05','Quick clearance');
INSERT INTO city_traffic_incident_log (IncidentID, City, Date, Time, LocationDescription, Intersection, Severity, VehiclesInvolved, Injuries, Fatalities, ReportingOfficer, WeatherCondition, RoadCondition, TrafficControl, Description, DetourImplemented, DetourStartTime, DetourEndTime, EstimatedDelayMinutes, Latitude, Longitude, CreatedTimestamp, UpdatedTimestamp, Notes) VALUES ('INC003','Laketown','2023-09-20','22:10','River Rd near County Line','River Rd & County',4,3,2,1,'Officer Patel','Fog','Slippery','No Signal','Pile-up involving three trucks, one fatality',1,'22:20','23:00',45,38.9456,-88.9876,'2023-09-20','2023-09-21','Investigation ongoing');

-- School laboratory safety inspection records
CREATE TABLE school_laboratory_safety_inspections
(
    InspectionID          TEXT PRIMARY KEY,
    SchoolID              TEXT,
    LabName               TEXT,
    InspectionDate        DATE,
    InspectorName         TEXT,
    InspectorLicense      TEXT,
    SafetyScore           INTEGER,
    FireExtinguishersPresent INTEGER,
    EyeWashStation        INTEGER,
    ChemicalStorageCompliance INTEGER,
    VentilationRating     INTEGER,
    ElectricalSafety      INTEGER,
    PPECompliance         INTEGER,
    TrainingCompleted     INTEGER,
    FindingsSummary       TEXT,
    CorrectiveActions     TEXT,
    FollowUpDate          DATE,
    Status                TEXT,
    CreatedBy             TEXT,
    CreatedDate           DATE,
    UpdatedBy             TEXT,
    UpdatedDate           DATE,
    Comments              TEXT,
    OverallCompliance     INTEGER
);

INSERT INTO school_laboratory_safety_inspections (InspectionID, SchoolID, LabName, InspectionDate, InspectorName, InspectorLicense, SafetyScore, FireExtinguishersPresent, EyeWashStation, ChemicalStorageCompliance, VentilationRating, ElectricalSafety, PPECompliance, TrainingCompleted, FindingsSummary, CorrectiveActions, FollowUpDate, Status, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, Comments, OverallCompliance) VALUES ('LSI001','SCH001','Chemistry Lab','2023-05-10','Laura Gomez','LIC12345',92,1,1,1,5,5,5,5,'All standards met','No action required','2023-05-10','Closed','Admin A','2023-05-01','Admin B','2023-05-11','Excellent','1');
INSERT INTO school_laboratory_safety_inspections (InspectionID, SchoolID, LabName, InspectionDate, InspectorName, InspectorLicense, SafetyScore, FireExtinguishersPresent, EyeWashStation, ChemicalStorageCompliance, VentilationRating, ElectricalSafety, PPECompliance, TrainingCompleted, FindingsSummary, CorrectiveActions, FollowUpDate, Status, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, Comments, OverallCompliance) VALUES ('LSI002','SCH002','Physics Lab','2023-06-15','Mark Patel','LIC67890',85,1,0,1,4,3,4,4,'Eye wash station missing','Install eye wash station','2023-07-15','Open','Admin C','2023-06-01','Admin D','2023-06-16','Pending compliance','0');
INSERT INTO school_laboratory_safety_inspections (InspectionID, SchoolID, LabName, InspectionDate, InspectorName, InspectorLicense, SafetyScore, FireExtinguishersPresent, EyeWashStation, ChemicalStorageCompliance, VentilationRating, ElectricalSafety, PPECompliance, TrainingCompleted, FindingsSummary, CorrectiveActions, FollowUpDate, Status, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, Comments, OverallCompliance) VALUES ('LSI003','SCH003','Biology Lab','2023-04-20','Susan Lee','LIC54321',78,0,1,0,3,4,3,3,'Missing fire extinguishers and chemical inventory issues','Procure extinguishers; update inventory','2023-05-20','Open','Admin E','2023-04-01','Admin F','2023-04-21','Requires follow‑up','0');

-- District solar farm operations data
CREATE TABLE district_solar_farm_operations
(
    FarmID                TEXT PRIMARY KEY,
    DistrictID            TEXT,
    FarmName              TEXT,
    LocationDescription   TEXT,
    Capacity_MW           REAL,
    OperationalSince      DATE,
    OwnerCompany          TEXT,
    MaintenanceContractor TEXT,
    AnnualProduction_MWh  REAL,
    GridConnectionPoint   TEXT,
    Latitude              REAL,
    Longitude             REAL,
    MonitoringSystem      TEXT,
    LastMaintenanceDate   DATE,
    PerformanceRatio      REAL,
    DegradationRate_Pct   REAL,
    SolarPanelType       TEXT,
    InverterCount         INTEGER,
    O_M_Cost_USD          REAL,
    FundingSource         TEXT,
    GrantNumber           TEXT,
    ContactPerson         TEXT,
    ContactPhone          TEXT,
    ContactEmail          TEXT,
    CreatedDate           DATE,
    UpdatedDate           DATE,
    Notes                 TEXT
);

INSERT INTO district_solar_farm_operations (FarmID, DistrictID, FarmName, LocationDescription, Capacity_MW, OperationalSince, OwnerCompany, MaintenanceContractor, AnnualProduction_MWh, GridConnectionPoint, Latitude, Longitude, MonitoringSystem, LastMaintenanceDate, PerformanceRatio, DegradationRate_Pct, SolarPanelType, InverterCount, O_M_Cost_USD, FundingSource, GrantNumber, ContactPerson, ContactPhone, ContactEmail, CreatedDate, UpdatedDate, Notes) VALUES ('SF001','DIST01','Sunrise Solar Farm','North Ridge','5.0','2020-03-01','SolarPower Inc','EcoMaintain LLC','6000','Substation A',39.7817,-89.6501,'SolarWatch','2023-02-15',0.78,0.45,'Monocrystalline',12,120000,'State Grant','SG-2020-11','Laura Green','555-1112','lgreen@solarpower.com','2020-01-10','2023-02-20','Operating above expected performance');
INSERT INTO district_solar_farm_operations (FarmID, DistrictID, FarmName, LocationDescription, Capacity_MW, OperationalSince, OwnerCompany, MaintenanceContractor, AnnualProduction_MWh, GridConnectionPoint, Latitude, Longitude, MonitoringSystem, LastMaintenanceDate, PerformanceRatio, DegradationRate_Pct, SolarPanelType, InverterCount, O_M_Cost_USD, FundingSource, GrantNumber, ContactPerson, ContactPhone, ContactEmail, CreatedDate, UpdatedDate, Notes) VALUES ('SF002','DIST02','Riverbank Solar','Riverbank Park','3.2','2021-07-15','Green Energy LLC','SunCare Services','3900','Substation B',40.1123,-89.8542,'SunTrack','2023-03-10',0.75,0.52,'Polycrystalline',8,95000,'Federal Grant','FG-2021-03','Mark Rivera','555-2223','mrivera@greenenergy.com','2021-05-20','2023-03-15','Slightly below target due to shading');
INSERT INTO district_solar_farm_operations (FarmID, DistrictID, FarmName, LocationDescription, Capacity_MW, OperationalSince, OwnerCompany, MaintenanceContractor, AnnualProduction_MWh, GridConnectionPoint, Latitude, Longitude, MonitoringSystem, LastMaintenanceDate, PerformanceRatio, DegradationRate_Pct, SolarPanelType, InverterCount, O_M_Cost_USD, FundingSource, GrantNumber, ContactPerson, ContactPhone, ContactEmail, CreatedDate, UpdatedDate, Notes) VALUES ('SF003','DIST03','Hillside Solar','Hillside Area','4.5','2019-11-20','BrightSun Corp','EcoMaintain LLC','5400','Substation C',38.9456,-88.9876,'SolarMonitor','2023-01-25',0.80,0.40,'Thin Film',10,110000,'State Grant','SG-2019-07','Emily Shaw','555-3334','eshaw@brightsun.com','2019-09-05','2023-01-30','Excellent performance last year');