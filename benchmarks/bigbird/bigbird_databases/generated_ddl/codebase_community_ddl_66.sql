-- Table for climate observations
CREATE TABLE climate_observations
(
    Id                     INTEGER PRIMARY KEY,
    StationCode            TEXT,
    ObservationDate        DATETIME,
    TemperatureC           REAL,
    HumidityPct            REAL,
    WindSpeedKph           REAL,
    WindDirectionDeg       INTEGER,
    PrecipitationMm        REAL,
    SolarRadiationWm2      REAL,
    PressurehPa            REAL,
    VisibilityKm           REAL,
    DewPointC              REAL,
    SnowDepthCm            REAL,
    CloudCoverPct          INTEGER,
    WeatherCondition       TEXT,
    Latitude               REAL,
    Longitude              REAL,
    ElevationM             INTEGER,
    ObserverId             INTEGER,
    DataQualityFlag        TEXT,
    InsertedAt             DATETIME,
    Notes                  TEXT
);

INSERT INTO climate_observations VALUES (1, 'STN001', '2025-01-01 06:00:00', 12.5, 78.0, 15.2, 180, 0.0, 210.5, 1013.2, 12.0, 5.3, 0.0, 45, 'Clear', 52.5200, 13.4050, 34, 101, 'Good', '2025-01-01 07:00:00', 'First observation of the day');
INSERT INTO climate_observations VALUES (2, 'STN002', '2025-01-01 06:30:00', 9.8, 85.0, 10.5, 200, 0.2, 180.0, 1015.0, 10.5, 4.1, 0.0, 60, 'Cloudy', 48.8566, 2.3522, 45, 102, 'Good', '2025-01-01 07:30:00', 'Light drizzle observed');
INSERT INTO climate_observations VALUES (3, 'STN003', '2025-01-01 07:00:00', 15.0, 70.0, 5.0, 90, 0.0, 250.0, 1010.5, 15.0, 6.0, 0.0, 20, 'Sunny', 40.7128, -74.0060, 10, 103, 'Good', '2025-01-01 08:00:00', 'Clear morning');

-- Table for public transport routes
CREATE TABLE public_transport_routes
(
    RouteId                INTEGER PRIMARY KEY,
    AgencyName             TEXT,
    RouteNumber            TEXT,
    RouteName              TEXT,
    StartStopId            INTEGER,
    EndStopId              INTEGER,
    TotalStops             INTEGER,
    DistanceKm             REAL,
    AvgTravelTimeMin       INTEGER,
    ServiceStartDate       DATE,
    ServiceEndDate         DATE,
    WeekdayServiceStart    TIME,
    WeekdayServiceEnd      TIME,
    WeekendServiceStart    TIME,
    WeekendServiceEnd      TIME,
    VehicleType            TEXT,
    AccessibilityLevel     TEXT,
    FareZone               INTEGER,
    PeakCapacity           INTEGER,
    OffPeakCapacity        INTEGER,
    FrequencyMiddayMin     INTEGER,
    FrequencyEveningMin   INTEGER,
    DataLastUpdated        DATETIME
);

INSERT INTO public_transport_routes VALUES (101, 'MetroCity', 'M12', 'Central Loop', 1001, 1050, 25, 15.2, 45, '2020-01-01', '2099-12-31', '06:00', '22:00', '08:00', '23:00', 'Metro', 'Full', 2, 800, 500, 5, 10, '2025-01-01 00:00:00');
INSERT INTO public_transport_routes VALUES (102, 'TransitCo', 'B45', 'Riverbank Express', 2001, 2100, 30, 22.8, 60, '2018-05-15', '2099-12-31', '05:30', '01:00', '07:00', '01:30', 'Bus', 'Partial', 3, 60, 30, 8, 12, '2025-01-02 00:00:00');
INSERT INTO public_transport_routes VALUES (103, 'CityRail', 'R7', 'Northern Line', 3001, 3200, 18, 10.5, 35, '2015-09-01', '2099-12-31', '05:00', '23:30', '06:00', '00:00', 'Rail', 'Full', 1, 500, 300, 4, 9, '2025-01-03 00:00:00');

-- Table for energy consumption records
CREATE TABLE energy_consumption_records
(
    RecordId               INTEGER PRIMARY KEY,
    FacilityId             INTEGER,
    FacilityName           TEXT,
    RecordDate             DATE,
    ElectricityKWh         REAL,
    GasTherms              REAL,
    WaterLiters            REAL,
    RenewablePct           REAL,
    PeakDemandKw           REAL,
    AvgDemandKw            REAL,
    CO2EmissionsKg         REAL,
    CostUSD                REAL,
    MeterReadTime          DATETIME,
    BillingPeriodStart     DATE,
    BillingPeriodEnd       DATE,
    EnergyTariffCode       TEXT,
    Status                 TEXT,
    SubmittedBy            TEXT,
    ApprovalStatus         TEXT,
    ApprovalDate           DATE,
    Notes                  TEXT,
    DataImportedAt         DATETIME,
    SourceSystem           TEXT,
    ValidationFlag         TEXT
);

INSERT INTO energy_consumption_records VALUES (5001, 10, 'Headquarters', '2024-12-31', 12450.5, 3450.0, 250000.0, 35.2, 850.0, 450.5, 42000.0, 115000.0, '2025-01-01 08:00:00', '2024-12-01', '2024-12-31', 'TAR01', 'Processed', 'system_import', 'Approved', '2025-01-02', 'Year end summary', '2025-01-02 09:00:00', 'SCADA', 'Pass');
INSERT INTO energy_consumption_records VALUES (5002, 12, 'Manufacturing Plant A', '2024-12-31', 45230.0, 11200.0, 800000.0, 28.5, 2150.0, 1200.0, 158000.0, 380000.0, '2025-01-01 08:15:00', '2024-12-01', '2024-12-31', 'TAR02', 'Processed', 'system_import', 'Approved', '2025-01-02', 'Monthly report', '2025-01-02 09:15:00', 'SCADA', 'Pass');
INSERT INTO energy_consumption_records VALUES (5003, 15, 'Data Center', '2024-12-31', 29870.2, 0.0, 0.0, 100.0, 1250.0, 800.0, 21000.0, 250000.0, '2025-01-01 08:30:00', '2024-12-01', '2024-12-31', 'TAR03', 'Processed', 'system_import', 'Approved', '2025-01-02', 'DC energy usage', '2025-01-02 09:30:00', 'SCADA', 'Pass');

-- Table for city parking spots
CREATE TABLE city_parking_spots
(
    SpotId                 INTEGER PRIMARY KEY,
    ZoneCode               TEXT,
    StreetAddress          TEXT,
    Latitude               REAL,
    Longitude              REAL,
    SpotNumber             TEXT,
    SpotType               TEXT,
    CapacityCars           INTEGER,
    CapacityMotorcycles    INTEGER,
    CapacityBicycles       INTEGER,
    IsHandicapAccessible   TEXT,
    PricingCategory        TEXT,
    HourlyRateUSD          REAL,
    DailyMaxUSD            REAL,
    NightRateUSD           REAL,
    PaymentMethod          TEXT,
    SurveillancePresent    TEXT,
    LightingLevel          TEXT,
    InstallationDate       DATE,
    LastMaintenanceDate    DATE,
    OperatorCompany        TEXT,
    ContactPhone           TEXT,
    Status                 TEXT,
    DataLastUpdated        DATETIME,
    Notes                  TEXT
);

INSERT INTO city_parking_spots VALUES (9001, 'Z01', 'Main St 100', 40.7128, -74.0060, 'A01', 'Surface', 50, 10, 5, 'Yes', 'Standard', 2.5, 20.0, 1.0, 'Card', 'Yes', 'High', '2018-05-20', '2024-10-15', 'CityParkingCo', '5551234567', 'Active', '2025-01-01 12:00:00', 'Near downtown');
INSERT INTO city_parking_spots VALUES (9002, 'Z02', 'Broadway 250', 40.7306, -73.9866, 'B12', 'Underground', 80, 0, 0, 'No', 'Premium', 4.0, 30.0, 2.0, 'Card,Mobile', 'Yes', 'Medium', '2019-03-10', '2024-11-01', 'MetroParking', '5559876543', 'Active', '2025-01-02 12:00:00', 'Level B1');
INSERT INTO city_parking_spots VALUES (9003, 'Z03', 'Elm St 45', 40.7484, -73.9857, 'C07', 'Street', 20, 5, 2, 'Yes', 'Discount', 1.5, 12.0, 0.5, 'Cash', 'No', 'Low', '2020-07-01', '2024-09-20', 'LocalGov', '5552223333', 'Inactive', '2025-01-03 12:00:00', 'Closed for renovation');

-- Table for wildlife sightings
CREATE TABLE wildlife_sightings
(
    SightingId             INTEGER PRIMARY KEY,
    SpeciesCommonName      TEXT,
    SpeciesScientificName  TEXT,
    SightingDateTime       DATETIME,
    Latitude               REAL,
    Longitude              REAL,
    ObserverId             INTEGER,
    ObserverName           TEXT,
    CountObserved          INTEGER,
    AgeClass               TEXT,
    SexObserved            TEXT,
    BehaviorObserved       TEXT,
    HabitatType            TEXT,
    WeatherCondition       TEXT,
    TemperatureC           REAL,
    WindSpeedKph           REAL,
    DistanceFromObserverM  REAL,
    PhotoReferenceId       INTEGER,
    VideoReferenceId       INTEGER,
    VerificationStatus     TEXT,
    VerifiedBy             TEXT,
    VerificationDate       DATE,
    Notes                  TEXT,
    DataEnteredAt          DATETIME,
    SourceSystem           TEXT
);

INSERT INTO wildlife_sightings VALUES (20001, 'Red Fox', 'Vulpes vulpes', '2025-01-01 07:15:00', 52.5163, 13.3777, 501, 'Alice', 1, 'Adult', 'Female', 'Foraging', 'Urban Park', 'Clear', 3.2, 5.0, 30.0, 3001, NULL, 'Pending', NULL, NULL, 'First sighting of season', '2025-01-01 08:00:00', 'CitizenScienceApp');
INSERT INTO wildlife_sightings VALUES (20002, 'Eurasian Badger', 'Meles meles', '2025-01-01 19:45:00', 51.5074, -0.1278, 502, 'Bob', 2, 'Juvenile', 'Male', 'Playing', 'Woodland', 'Cloudy', 7.8, 12.0, 15.0, 3002, 4001, 'Confirmed', 'DrSmith', '2025-01-02', 'Observed near den', '2025-01-01 20:30:00', 'ResearchProjectX');
INSERT INTO wildlife_sightings VALUES (20003, 'Common Starling', 'Sturnus vulgaris', '2025-01-02 06:00:00', 48.8566, 2.3522, 503, 'Carol', 25, 'Adult', 'Mixed', 'Flocking', 'Urban Square', 'Rain', 5.0, 8.0, 5.0, NULL, NULL, 'Confirmed', 'DrJones', '2025-01-02', 'Large morning flock', '2025-01-02 06:30:00', 'BirdSurvey2025');

-- Table for art exhibition catalog
CREATE TABLE art_exhibition_catalog
(
    ExhibitionId           INTEGER PRIMARY KEY,
    ExhibitionTitle        TEXT,
    GalleryName            TEXT,
    StartDate              DATE,
    EndDate                DATE,
    CuratorName            TEXT,
    ThemeDescription       TEXT,
    NumberOfWorks          INTEGER,
    TotalArtists           INTEGER,
    PrimaryMedium          TEXT,
    LocationCity           TEXT,
    LocationCountry        TEXT,
    OpeningHours           TEXT,
    TicketPriceUSD         REAL,
    SponsorName            TEXT,
    AccessibilityInfo      TEXT,
    AudienceTarget         TEXT,
    PressReleaseLink       TEXT,
    CatalogPdfLink         TEXT,
    VideoTourLink          TEXT,
    InstallationStatus     TEXT,
    InstallationStartDate  DATE,
    InstallationEndDate    DATE,
    Notes                  TEXT,
    DataEnteredAt          DATETIME,
    SourceSystem           TEXT
);

INSERT INTO art_exhibition_catalog VALUES (301, 'Visions of Tomorrow', 'Modern Art Museum', '2025-03-01', '2025-06-30', 'Laura Smith', 'Exploring futuristic concepts', 120, 45, 'Mixed Media', 'Berlin', 'Germany', '10:00-18:00', 15.0, 'TechCorp', 'Wheelchair accessible', 'Adults, Students', 'http://example.com/press1', 'http://example.com/catalog1.pdf', 'http://example.com/video1', 'Completed', '2025-02-10', '2025-02-20', 'Opening night featured live performance', '2025-01-15 09:00:00', 'InternalCMS');
INSERT INTO art_exhibition_catalog VALUES (302, 'Nature Reimagined', 'City Gallery', '2025-04-15', '2025-08-15', 'Michael Lee', 'Contemporary interpretations of natural landscapes', 85, 30, 'Oil on Canvas', 'Tokyo', 'Japan', '09:00-17:00', 10.0, 'EcoFund', 'Audio guides available', 'Families, Tourists', 'http://example.com/press2', 'http://example.com/catalog2.pdf', 'http://example.com/video2', 'InProgress', '2025-04-01', NULL, 'Installation delayed due to shipping', '2025-01-20 10:30:00', 'InternalCMS');
INSERT INTO art_exhibition_catalog VALUES (303, 'Digital Dreams', 'Virtual Arts Center', '2025-05-01', '2025-09-30', 'Sara Patel', 'Showcasing VR and AR artworks', 60, 25, 'Digital', 'San Francisco', 'USA', 'Online', 0.0, 'VRTech', 'Fully accessible', 'Tech Enthusiasts', 'http://example.com/press3', 'http://example.com/catalog3.pdf', 'http://example.com/video3', 'Planned', NULL, NULL, 'Platform testing ongoing', '2025-01-25 14:45:00', 'InternalCMS');

-- Table for water quality measurements
CREATE TABLE water_quality_measurements
(
    MeasurementId          INTEGER PRIMARY KEY,
    SiteId                 INTEGER,
    SiteName               TEXT,
    MeasurementDateTime    DATETIME,
    TemperatureC           REAL,
    pH                     REAL,
    DissolvedOxygenMgL     REAL,
    ConductivityUsCm       REAL,
    TurbidityNTU           REAL,
    NitrateMgL             REAL,
    PhosphateMgL           REAL,
    LeadUgL                REAL,
    MercuryUgL             REAL,
    BacteriaCFUper100ml    INTEGER,
    SampleDepthM           REAL,
    CollectorName          TEXT,
    CollectionMethod       TEXT,
    WeatherCondition       TEXT,
    AnalystName            TEXT,
    ApprovalStatus         TEXT,
    ApprovedBy             TEXT,
    ApprovalDate           DATE,
    Remarks                TEXT,
    DataEnteredAt          DATETIME,
    SourceSystem           TEXT,
    ValidationFlag         TEXT
);

INSERT INTO water_quality_measurements VALUES (4001, 101, 'River Alpha', '2025-01-01 08:00:00', 14.2, 7.5, 8.1, 120.0, 3.5, 0.2, 0.05, 3, 0.5, 150, 1.5, 'John Doe', 'Grab Sample', 'Sunny', 'DrGreen', 'Pending', NULL, NULL, 'First spring sampling', '2025-01-01 09:30:00', 'FieldSensors', 'Pass');
INSERT INTO water_quality_measurements VALUES (4002, 102, 'Lake Beta', '2025-01-02 09:15:00', 10.8, 8.1, 6.5, 80.0, 2.0, 0.1, 0.03, 1, 0.2, 75, 3.0, 'Emma White', 'Automatic Sampler', 'Overcast', 'DrBlue', 'Approved', 'DrBlue', '2025-01-03', 'All parameters within limits', '2025-01-02 10:00:00', 'LabSystem', 'Pass');
INSERT INTO water_quality_measurements VALUES (4003, 103, 'Coastal Bay', '2025-01-03 07:45:00', 18.0, 7.9, 5.8, 150.0, 5.0, 0.4, 0.1, 5, 1.0, 300, 0.8, 'Liam Chen', 'Dive Collection', 'Windy', 'DrRed', 'Pending', NULL, NULL, 'High bacteria count, further analysis needed', '2025-01-03 08:30:00', 'FieldSensors', 'Fail');

-- Table for sports event schedule
CREATE TABLE sports_event_schedule
(
    EventId                INTEGER PRIMARY KEY,
    SportType              TEXT,
    EventName              TEXT,
    VenueName              TEXT,
    City                   TEXT,
    Country                TEXT,
    StartDateTime          DATETIME,
    EndDateTime            DATETIME,
    TicketPriceUSD         REAL,
    SeatsAvailable         INTEGER,
    SeatsTotal             INTEGER,
    OrganizerName          TEXT,
    BroadcastPartner       TEXT,
    SponsorName            TEXT,
    AgeRestriction         TEXT,
    GenderCategory         TEXT,
    CompetitionLevel       TEXT,
    SurfaceType            TEXT,
    WeatherForecast        TEXT,
    TicketSalesStartDate   DATE,
    TicketSalesEndDate     DATE,
    Status                 TEXT,
    LastUpdatedAt          DATETIME,
    OfficialWebsite        TEXT,
    SocialMediaHashtag     TEXT,
    Notes                  TEXT,
    DataSource             TEXT
);

INSERT INTO sports_event_schedule VALUES (6001, 'Football', 'Champions Cup Final', 'Grand Stadium', 'Madrid', 'Spain', '2025-06-15 20:00:00', '2025-06-15 22:30:00', 120.0, 50000, 80000, 'Global Sports Org', 'SportTV', 'MegaBank', 'All', 'Mixed', 'Professional', 'Grass', 'Clear', '2025-01-01', '2025-06-10', 'Scheduled', '2025-01-05 12:00:00', 'http://championscup.com', '#Champions2025', 'Opening ceremony includes fireworks', 'InternalScheduler');
INSERT INTO sports_event_schedule VALUES (6002, 'Tennis', 'Open Championship Quarterfinals', 'City Courts', 'London', 'UK', '2025-07-10 14:00:00', '2025-07-10 18:00:00', 85.0, 12000, 15000, 'Tennis Association', 'LiveStreamNet', 'SportGear', '18+', 'Mixed', 'Professional', 'Hard', 'Partly Cloudy', '2025-02-15', '2025-07-05', 'Scheduled', '2025-02-20 09:30:00', 'http://openchampionship.co.uk', '#OpenQF2025', 'Match featuring top seed', 'InternalScheduler');
INSERT INTO sports_event_schedule VALUES (6003, 'Basketball', 'City League Finals', 'Downtown Arena', 'Chicago', 'USA', '2025-05-05 19:00:00', '2025-05-05 21:30:00', 45.0, 15000, 20000, 'Local Sports Council', 'BasketTV', 'HealthPlus', 'All', 'Mixed', 'Amateur', 'Wood', 'Rain', '2025-01-10', '2025-04-30', 'Scheduled', '2025-01-15 11:00:00', 'http://cityleague.org', '#CityFinals2025', 'Family friendly event', 'InternalScheduler');

-- Table for astronomical events
CREATE TABLE astronomical_events
(
    EventId                INTEGER PRIMARY KEY,
    EventName              TEXT,
    EventType              TEXT,
    StartDateTimeUTC       DATETIME,
    EndDateTimeUTC         DATETIME,
    VisibilityRegion       TEXT,
    PeakMagnitude          REAL,
    DistanceLightYears     REAL,
    RightAscension         TEXT,
    Declination            TEXT,
    Constellation          TEXT,
    Description            TEXT,
    ObservationGuidelines   TEXT,
    TelescopeRequirement   TEXT,
    WeatherIdeal           TEXT,
    LightPollutionLevel    TEXT,
    DataProvider           TEXT,
    DataLastUpdated        DATETIME,
    SourceUrl              TEXT,
    Notes                  TEXT,
    ArchiveId              INTEGER,
    ArchiveLocation        TEXT,
    PermissionLevel        TEXT,
    PublicReleaseDate      DATE,
    ContactPerson          TEXT,
    ContactEmail           TEXT
);

INSERT INTO astronomical_events VALUES (8001, 'Perseid Meteor Shower', 'Meteor Shower', '2025-08-12 02:00:00', '2025-08-13 06:00:00', 'Northern Hemisphere', 2.5, NULL, NULL, NULL, 'Perseus', 'Annual meteor shower peaks mid-August', 'Observe after midnight away from city lights', 'Naked eye or wide-field camera', 'Clear dark sky', 'Low', 'SpaceDataOrg', '2025-01-01 00:00:00', 'http://spacedata.org/perseid2025', 'Peak expected around 04:30 UTC', 5001, '/archives/perseid2025.fits', 'Public', '2025-01-02', 'Dr Luna', 'luna@spacedata.org');
INSERT INTO astronomical_events VALUES (8002, 'Total Solar Eclipse', 'Eclipse', '2025-04-08 09:30:00', '2025-04-08 12:45:00', 'South America', -26.7, NULL, '12h34m', '-45d12m', 'Sagittarius', 'Total solar eclipse visible across parts of Chile and Argentina', 'Use solar filters, do not look directly at Sun', 'Solar telescope with filter', 'Clear', 'Very Low', 'EclipseWatch', '2025-02-15 08:00:00', 'http://eclipsewatch.org/2025solar', 'Path width approx 200 km', 6002, '/archives/solar2025.jpg', 'Restricted', '2025-02-16', 'Prof Sun', 'sun@eclipsewatch.org');
INSERT INTO astronomical_events VALUES (8003, 'Lunar Eclipse', 'Eclipse', '2025-10-28 02:15:00', '2025-10-28 04:40:00', 'Global', -12.3, NULL, NULL, NULL, 'Virgo', 'Partial lunar eclipse visible in Asia and Europe', 'Naked eye observation possible', 'Naked eye', 'Partly Cloudy acceptable', 'Medium', 'LunarObservatory', '2025-03-10 14:20:00', 'http://lunarobs.org/oct2025', 'Maximum magnitude -0.2', 7003, '/archives/lunar2025.png', 'Public', '2025-03-11', 'Dr Moon', 'moon@lunarobs.org');

-- Table for manufacturing shift logs
CREATE TABLE manufacturing_shift_logs
(
    ShiftLogId             INTEGER PRIMARY KEY,
    FacilityId             INTEGER,
    FacilityName           TEXT,
    ShiftDate              DATE,
    ShiftNumber            INTEGER,
    SupervisorId           INTEGER,
    SupervisorName         TEXT,
    LineId                 INTEGER,
    LineName               TEXT,
    ProductCode            TEXT,
    UnitsProduced          INTEGER,
    UnitsDefective         INTEGER,
    DowntimeMinutes        INTEGER,
    DowntimeReasonCode     TEXT,
    MaintenancePerformed   TEXT,
    SafetyIncidents        INTEGER,
    SafetyIncidentDetails  TEXT,
    EnergyConsumedKWh      REAL,
    WaterUsedLiters        REAL,
    EmissionsCO2Kg         REAL,
    ShiftStartTime         TIME,
    ShiftEndTime           TIME,
    ShiftStatus            TEXT,
    Comments               TEXT,
    DataEnteredAt          DATETIME,
    SourceSystem           TEXT,
    ValidationFlag         TEXT,
    ApprovedBy             TEXT,
    ApprovalDate           DATE
);

INSERT INTO manufacturing_shift_logs VALUES (10001, 12, 'Plant Alpha', '2025-01-01', 1, 301, 'John Manager', 5, 'Assembly Line 5', 'PRD001', 5000, 12, 30, 'MECH', 'Lubricated gears', 0, NULL, 4500.5, 1200.0, 1500.0, '06:00', '14:00', 'Completed', 'All targets met', '2025-01-01 14:30:00', 'MES', 'Pass', 'Anna QA', '2025-01-02');
INSERT INTO manufacturing_shift_logs VALUES (10002, 12, 'Plant Alpha', '2025-01-01', 2, 302, 'Emily Supervisor', 5, 'Assembly Line 5', 'PRD001', 4800, 20, 45, 'ELECT', 'Replaced sensor', 1, 'Minor electrical spark, no injury', 4600.0, 1150.0, 1480.0, '14:00', '22:00', 'Completed', 'Increased defects due to sensor issue', '2025-01-02 22:15:00', 'MES', 'Pass', 'Anna QA', '2025-01-03');
INSERT INTO manufacturing_shift_logs VALUES (10003, 13, 'Plant Beta', '2025-01-01', 1, 401, 'Michael Lead', 3, 'Packaging Line 3', 'PKG099', 3000, 5, 20, 'MECH', 'Calibrated packaging arm', 0, NULL, 3000.0, 800.0, 900.0, '07:00', '15:00', 'Completed', 'Smooth operation', '2025-01-01 15:20:00', 'MES', 'Pass', 'Rachel QA', '2025-01-02');