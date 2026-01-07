-- Research projects metadata
CREATE TABLE research_projects
(
    ProjectId               INTEGER NOT NULL PRIMARY KEY,
    Title                   TEXT,
    LeadInvestigator       TEXT,
    StartDate               DATETIME,
    EndDate                 DATETIME,
    FundingAgency           TEXT,
    FundingAmount           REAL,
    Status                  TEXT,
    Description             TEXT,
    FieldOfStudy            TEXT,
    Institution             TEXT,
    Country                 TEXT,
    City                    TEXT,
    Department              TEXT,
    GrantNumber             TEXT,
    ProjectType             TEXT,
    CollaborationCount      INTEGER,
    DataRepositoryUrl       TEXT,
    EthicsApprovalDate      DATETIME,
    PublicationCount        INTEGER,
    AvgCitations            REAL,
    CreatedAt               DATETIME
);

INSERT INTO research_projects VALUES (1, 'Quantum Computing Sensors', 'Alice Smith', '2022-01-15', '2025-12-31', 'NationalScienceFund', 1250000.00, 'Active', 'Developing quantum sensors for gravitational wave detection', 'Physics', 'Tech University', 'USA', 'Boston', 'Physics Dept', 'NSF-2022-001', 'Basic', 5, 'http://repo.example.com/qcs', '2022-01-01', 12, 8.5, '2022-02-01');
INSERT INTO research_projects VALUES (2, 'AI Ethics Framework', 'Bob Lee', '2021-06-01', NULL, 'GlobalTechAlliance', 750000.00, 'Ongoing', 'Creating ethical guidelines for AI deployment', 'ComputerScience', 'Global Institute', 'Canada', 'Toronto', 'CS Dept', 'GTA-2021-07', 'Applied', 12, 'http://repo.example.com/aie', '2021-05-20', 4, 15.2, '2021-07-10');
INSERT INTO research_projects VALUES (3, 'Marine Biodiversity Survey', 'Clara Gomez', '2020-03-10', '2023-03-09', 'OceanicResearchCouncil', 500000.00, 'Completed', 'Survey of marine species in the Pacific', 'Biology', 'Coastal University', 'Australia', 'Sydney', 'Marine Dept', 'ORC-2020-03', 'Field', 8, 'http://repo.example.com/mbs', '2020-02-28', 9, 22.1, '2020-04-01');

-- Environmental incident reports
CREATE TABLE environmental_incident_reports
(
    IncidentId              INTEGER NOT NULL PRIMARY KEY,
    IncidentType            TEXT,
    ReportingAgency         TEXT,
    ReportDate              DATETIME,
    OccurrenceDate          DATETIME,
    LocationLatitude        REAL,
    LocationLongitude       REAL,
    Country                 TEXT,
    StateProvince           TEXT,
    City                    TEXT,
    Description             TEXT,
    SeverityLevel           TEXT,
    EstimatedDamageUSD      REAL,
    ContaminantType         TEXT,
    CleanupStatus           TEXT,
    ResponsibleParty       TEXT,
    LegalActionTaken        TEXT,
    FollowUpDate            DATETIME,
    InspectorName           TEXT,
    InspectionReportUrl     TEXT,
    CreatedAt               DATETIME,
    UpdatedAt               DATETIME,
    SourceSystem            TEXT
);

INSERT INTO environmental_incident_reports VALUES (101, 'Oil Spill', 'EPA', '2023-04-12', '2023-04-10', -33.865, 151.209, 'Australia', 'New South Wales', 'Sydney', 'Spill of 5000 liters of crude oil near harbor', 'High', 2500000.00, 'Petroleum', 'InProgress', 'SeaCorp Ltd', 'NoticeIssued', '2023-05-01', 'John Doe', 'http://reports.example.com/inc101', '2023-04-12', '2023-04-15', 'Internal');
INSERT INTO environmental_incident_reports VALUES (102, 'Chemical Leak', 'HealthDept', '2022-11-20', '2022-11-18', 40.7128, -74.0060, 'USA', 'New York', 'New York', 'Leak of chlorine gas from industrial plant', 'Medium', 750000.00, 'Chlorine', 'Resolved', 'ChemCo Inc', 'FineImposed', '2022-12-05', 'Jane Smith', 'http://reports.example.com/inc102', '2022-11-20', '2022-12-01', 'External');
INSERT INTO environmental_incident_reports VALUES (103, 'Forest Fire', 'FireAgency', '2021-07-05', '2021-07-04', 37.7749, -122.4194, 'USA', 'California', 'SanFrancisco', 'Wildfire affecting 1200 acres of forest', 'Critical', 12000000.00, 'N/A', 'UnderControl', 'State Forestry Dept', 'EvacuationOrdered', '2021-07-10', 'Mike Johnson', 'http://reports.example.com/inc103', '2021-07-05', '2021-07-12', 'Internal');

-- Fleet vehicle service records
CREATE TABLE fleet_vehicle_service_records
(
    ServiceRecordId         INTEGER NOT NULL PRIMARY KEY,
    VehicleId               INTEGER,
    ServiceDate             DATETIME,
    OdometerReading         INTEGER,
    ServiceType             TEXT,
    ServiceCenterName       TEXT,
    ServiceCenterLocation   TEXT,
    TechnicianName          TEXT,
    PartsReplaced           TEXT,
    LaborHours              REAL,
    LaborCost               REAL,
    PartsCost               REAL,
    TotalCost               REAL,
    ServiceNotes            TEXT,
    WarrantyCovered         TEXT,
    NextServiceDueKm        INTEGER,
    NextServiceDueDate      DATETIME,
    FuelLevelAfterService   TEXT,
    TirePressureCheck       TEXT,
    EmissionTestResult      TEXT,
    CreatedAt               DATETIME,
    UpdatedAt               DATETIME,
    SourceSystem            TEXT,
    VehicleLicensePlate     TEXT,
    VehicleModel            TEXT
);

INSERT INTO fleet_vehicle_service_records VALUES (5001, 3001, '2023-03-15', 45200, 'OilChange', 'AutoCenter West', 'LosAngeles', 'Tom Allen', 'OilFilter', 1.5, 45.00, 15.00, 60.00, 'Replaced oil filter', 'Yes', 50000, '2023-09-15', 'Full', 'Checked', 'Pass', '2023-03-15', '2023-03-15', 'Internal', 'ABC123', 'ToyotaCamry');
INSERT INTO fleet_vehicle_service_records VALUES (5002, 3002, '2022-11-20', 102300, 'BrakeInspection', 'SpeedyService', 'Chicago', 'Linda Green', 'BrakePads,BrakeFluid', 2.0, 80.00, 120.00, 200.00, 'Brake pads worn, replaced', 'No', 105000, '2023-05-20', 'Half', 'Adjusted', 'Pass', '2022-11-20', '2022-11-20', 'External', 'XYZ789', 'FordF150');
INSERT INTO fleet_vehicle_service_records VALUES (5003, 3003, '2021-06-05', 78500, 'TireRotation', 'MetroAuto', 'NewYork', 'Sam Patel', 'N/A', 1.0, 30.00, 0.00, 30.00, 'Rotated all four tires', 'Yes', 85000, '2021-12-05', 'Full', 'Checked', 'Pass', '2021-06-05', '2021-06-05', 'Internal', 'LMN456', 'HondaCivic');

-- Museum exhibit items catalog
CREATE TABLE museum_exhibit_items
(
    ExhibitItemId           INTEGER NOT NULL PRIMARY KEY,
    Title                   TEXT,
    ArtistCreator           TEXT,
    CreationYear            INTEGER,
    AcquisitionDate         DATETIME,
    AcquisitionMethod       TEXT,
    Provenance              TEXT,
    CurrentLocation         TEXT,
    ExhibitHall             TEXT,
    Category                TEXT,
    Material                TEXT,
    Dimensions              TEXT,
    WeightKg                REAL,
    ConditionReport        TEXT,
    ConservationStatus      TEXT,
    DisplayStatus           TEXT,
    EstimatedValueUSD       REAL,
    InsurancePolicyNumber   TEXT,
    InsuranceProvider       TEXT,
    LastAppraisalDate       DATETIME,
    CuratorName             TEXT,
    Description             TEXT,
    Keywords                TEXT,
    CreatedAt               DATETIME,
    UpdatedAt               DATETIME,
    SourceSystem            TEXT,
    CatalogNumber           TEXT
);

INSERT INTO museum_exhibit_items VALUES (20001, 'Starry Night', 'Vincent van Gogh', 1889, '1922-05-10', 'Purchase', 'Collected from private collector', 'Gallery 1', 'Impressionist Hall', 'Painting', 'Oil on canvas', '73.7cm x 92.1cm', 15.5, 'Good', 'Stable', 'OnDisplay', 100000000.00, 'INS-001', 'GlobalInsuranceCo', '2022-01-15', 'Emily Clark', 'A famous post-impressionist masterpiece', 'Night,Stars,Landscape', '2022-02-01', '2022-02-01', 'Internal', 'VG-1889-001');
INSERT INTO museum_exhibit_items VALUES (20002, 'Terracotta Warrior', 'Unknown', -210, '1975-09-22', 'ArchaeologicalGift', 'Donated by Chinese embassy', 'Exhibit Room B', 'Ancient China Hall', 'Sculpture', 'Terracotta', '197cm tall', 150.0, 'Fair', 'UnderRestoration', 'InStorage', 2000000.00, 'INS-075', 'HeritageInsure', '2020-06-30', 'Mark Liu', 'One of the famous Qin dynasty terracotta warriors', 'Warrior,Ancient,China', '2021-03-15', '2021-03-15', 'External', 'TCW-210BC-01');
INSERT INTO museum_exhibit_items VALUES (20003, 'Moon Rock Sample', 'NASA', 1970, '1971-03-15', 'Donation', 'Lunar sample returned by Apollo 11', 'Science Wing', 'Space Exploration Hall', 'Geological Sample', 'Rock', '2.5cm diameter', 0.02, 'Excellent', 'Stable', 'OnDisplay', 5000000.00, 'INS-200', 'SpaceInsure', '2021-12-01', 'Laura Reyes', 'Sample collected from the Sea of Tranquility', 'Moon,Rock,Apollo', '2022-01-10', '2022-01-10', 'Internal', 'MR-1970-01');

-- Space mission telemetry data
CREATE TABLE space_mission_telemetry
(
    TelemetryId            INTEGER NOT NULL PRIMARY KEY,
    MissionName            TEXT,
    TimestampUtc           DATETIME,
    Subsystem              TEXT,
    ParameterName          TEXT,
    ParameterValue         REAL,
    Unit                   TEXT,
    StatusFlag             TEXT,
    Latitude               REAL,
    Longitude              REAL,
    AltitudeKm             REAL,
    VelocityKms            REAL,
    TemperatureC           REAL,
    PressurePa             REAL,
    PowerVoltage           REAL,
    PowerCurrent           REAL,
    DataQualityIndicator  TEXT,
    AnomalyDetected        TEXT,
    OperatorNotes          TEXT,
    GroundStationId        INTEGER,
    ReceivedAt             DATETIME,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME,
    SourceSystem           TEXT,
    DataPacketId           TEXT,
    Version                TEXT
);

INSERT INTO space_mission_telemetry VALUES (90001, 'LunarOrbiter', '2023-07-01 12:00:00', 'Propulsion', 'Thrust', 4500.5, 'Newton', 'Nominal', 0.0, 0.0, 180.0, 7.8, -20.0, 0.0, 28.5, 5.2, 'Good', 'No', 'All systems nominal', 12, '2023-07-01 12:00:05', '2023-07-01 12:00:05', '2023-07-01 12:00:05', 'Internal', 'PKT-001', 'v1.0');
INSERT INTO space_mission_telemetry VALUES (90002, 'MarsRover', '2023-07-02 08:15:30', 'Power', 'BatteryLevel', 85.0, 'Percent', 'Nominal', -4.5, 137.4, 0.0, 0.0, -55.0, 0.0, 24.0, 0.0, 'Good', 'No', 'Battery within expected range', 8, '2023-07-02 08:15:35', '2023-07-02 08:15:35', '2023-07-02 08:15:35', 'External', 'PKT-045', 'v2.1');
INSERT INTO space_mission_telemetry VALUES (90003, 'ISS', '2023-07-03 22:45:10', 'Environmental', 'CO2Level', 0.04, 'Percent', 'Nominal', 51.6, -0.1, 400.0, 7.66, 22.0, 101325.0, 120.0, 10.0, 'Good', 'No', 'CO2 within safe limits', 3, '2023-07-03 22:45:15', '2023-07-03 22:45:15', '2023-07-03 22:45:15', 'Internal', 'PKT-078', 'v3.2');

-- Clinical trial participant records
CREATE TABLE clinical_trial_participants
(
    ParticipantId          INTEGER NOT NULL PRIMARY KEY,
    TrialId                INTEGER,
    EnrollmentDate         DATETIME,
    SiteLocation           TEXT,
    AgeYears               INTEGER,
    Sex                    TEXT,
    RaceEthnicity          TEXT,
    InformedConsentSigned TEXT,
    BaselineWeightKg       REAL,
    BaselineHeightCm       REAL,
    BaselineBP_Systolic    INTEGER,
    BaselineBP_Diastolic   INTEGER,
    BaselineHeartRate      INTEGER,
    BaselineLabResult1     REAL,
    BaselineLabResult2     REAL,
    MedicationStatus       TEXT,
    AdverseEventFlag       TEXT,
    FollowUpVisitDate1     DATETIME,
    FollowUpVisitDate2     DATETIME,
    FollowUpVisitDate3     DATETIME,
    FinalOutcome           TEXT,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME,
    SourceSystem           TEXT,
    InvestigatorName       TEXT,
    DataLockFlag           TEXT
);

INSERT INTO clinical_trial_participants VALUES (10001, 501, '2022-01-10', 'NY Hospital', 45, 'Female', 'Caucasian', 'Yes', 68.5, 165.0, 120, 80, 72, 4.2, 1.1, 'OnPlacebo', 'No', '2022-04-10', '2022-07-10', '2022-10-10', 'Completed', '2022-01-10', '2022-10-10', 'Internal', 'DrSmith', 'Locked');
INSERT INTO clinical_trial_participants VALUES (10002, 502, '2021-06-15', 'LA Clinic', 59, 'Male', 'Hispanic', 'Yes', 85.0, 178.0, 130, 85, 78, 5.0, 0.9, 'OnDrugA', 'Yes', '2021-09-15', '2021-12-15', '2022-03-15', 'Withdrawn', '2021-06-15', '2022-03-15', 'External', 'DrLee', 'Locked');
INSERT INTO clinical_trial_participants VALUES (10003, 503, '2023-03-01', 'Chicago Research Center', 32, 'Female', 'Asian', 'Yes', 55.0, 160.0, 110, 70, 68, 3.8, 1.2, 'OnDrugB', 'No', '2023-06-01', '2023-09-01', '2023-12-01', 'Ongoing', '2023-03-01', '2023-09-01', 'Internal', 'DrPatel', 'Unlocked');

-- Renewable energy asset status
CREATE TABLE renewable_energy_asset_status
(
    AssetId                INTEGER NOT NULL PRIMARY KEY,
    AssetName              TEXT,
    AssetType              TEXT,
    LocationLatitude       REAL,
    LocationLongitude      REAL,
    InstallationDate       DATETIME,
    CapacityMW             REAL,
    CurrentOutputMW        REAL,
    OperationalStatus      TEXT,
    LastMaintenanceDate    DATETIME,
    NextMaintenanceDue    DATETIME,
    OwnerOrganization      TEXT,
    GridConnectionPoint    TEXT,
    WeatherStationId       INTEGER,
    AvgWindSpeedMs         REAL,
    SolarIrradianceWm2     REAL,
    TemperatureC           REAL,
    FaultCode              TEXT,
    FaultDescription       TEXT,
    EnergyGeneratedMWh     REAL,
    CO2OffsetTons          REAL,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME,
    SourceSystem           TEXT,
    AssetIdentifier        TEXT,
    CommissioningEngineer  TEXT
);

INSERT INTO renewable_energy_asset_status VALUES (301, 'WindFarm Alpha', 'Wind', 35.6895, -120.4567, '2018-05-20', 150.0, 120.5, 'Online', '2023-01-15', '2023-07-15', 'GreenPower Inc', 'NodeA', 12, 7.8, 0.0, 22.0, 'None', '', 850000.0, 620000.0, '2023-01-01', '2023-07-01', 'Internal', 'WF-ALPHA-001', 'EngJohn');
INSERT INTO renewable_energy_asset_status VALUES (302, 'SolarPark Beta', 'Solar', 34.0522, -118.2437, '2020-09-10', 80.0, 65.3, 'Online', '2023-02-20', '2023-08-20', 'SunEnergy Corp', 'NodeB', 8, 0.0, 550.0, 25.0, 'None', '', 400000.0, 300000.0, '2023-02-01', '2023-08-01', 'External', 'SP-BETA-002', 'EngMaria');
INSERT INTO renewable_energy_asset_status VALUES (303, 'HydroPlant Gamma', 'Hydro', 47.6062, -122.3321, '2015-03-05', 200.0, 180.0, 'Maintenance', '2023-04-10', '2023-10-10', 'AquaPower Ltd', 'NodeC', 15, 0.0, 0.0, 15.0, 'H01', 'Turbine bearing wear', 1500000.0, 1300000.0, '2023-03-01', '2023-09-01', 'Internal', 'HP-GAMMA-003', 'EngLee');

-- Wildlife observation log
CREATE TABLE wildlife_observation_log
(
    ObservationId          INTEGER NOT NULL PRIMARY KEY,
    SpeciesCommonName      TEXT,
    SpeciesScientificName TEXT,
    ObservationDate        DATETIME,
    ObserverName           TEXT,
    Latitude               REAL,
    Longitude              REAL,
    HabitatType            TEXT,
    CountObserved          INTEGER,
    BehaviorObserved       TEXT,
    WeatherCondition       TEXT,
    TemperatureC           REAL,
    WindSpeedMs            REAL,
    PhotoUrl               TEXT,
    AudioRecordingUrl      TEXT,
    EquipmentUsed          TEXT,
    VerificationStatus     TEXT,
    VerificationDate       DATETIME,
    Notes                  TEXT,
    ProjectId              INTEGER,
    DataQualityScore       REAL,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME,
    SourceSystem           TEXT,
    ObservationMethod      TEXT,
    Region                 TEXT
);

INSERT INTO wildlife_observation_log VALUES (4001, 'Bald Eagle', 'Haliaeetus leucocephalus', '2023-05-12', 'Alice Green', 45.1234, -122.5678, 'Wetland', 2, 'Soaring', 'Clear', 18.0, 3.5, 'http://photos.example.com/eagle1.jpg', '', '4K Camera', 'Verified', '2023-05-13', 'Young pair observed near lake', 101, 0.95, '2023-05-12', '2023-05-13', 'Internal', 'Visual', 'Northwest');
INSERT INTO wildlife_observation_log VALUES (4002, 'Gray Wolf', 'Canis lupus', '2023-04-20', 'Bob Harris', 44.9876, -123.4567, 'Forest', 5, 'Pack hunting', 'Cloudy', 12.0, 5.0, 'http://photos.example.com/wolf1.jpg', 'http://audio.example.com/wolf1.wav', 'Trail Camera', 'Pending', NULL, 'Potential pack moving eastward', 102, 0.80, '2023-04-20', '2023-04-20', 'External', 'Audio', 'Northwest');
INSERT INTO wildlife_observation_log VALUES (4003, 'Monarch Butterfly', 'Danaus plexippus', '2023-06-01', 'Carol Lee', 36.7783, -119.4179, 'Meadow', 30, 'Feeding on milkweed', 'Sunny', 25.0, 2.0, '', '', 'Macro Lens', 'Verified', '2023-06-02', 'Large aggregation during migration', 103, 0.98, '2023-06-01', '2023-06-02', 'Internal', 'Visual', 'California');

-- Urban planning project details
CREATE TABLE urban_planning_projects
(
    ProjectId              INTEGER NOT NULL PRIMARY KEY,
    ProjectName            TEXT,
    PlanningAgency         TEXT,
    StartDate              DATETIME,
    EndDate                DATETIME,
    Status                 TEXT,
    BudgetUSD              REAL,
    LocationLatitude       REAL,
    LocationLongitude      REAL,
    City                   TEXT,
    StateProvince          TEXT,
    Country                TEXT,
    ProjectType            TEXT,
    ZoningClassification   TEXT,
    LandAreaSqM            REAL,
    EstimatedPopulation    INTEGER,
    HousingUnitsPlanned    INTEGER,
    CommercialSpaceSqM     REAL,
    TransportationMode      TEXT,
    EnvironmentalImpact    TEXT,
    CommunityEngagementScore REAL,
    LeadPlanner            TEXT,
    Description            TEXT,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME,
    SourceSystem           TEXT,
    ProjectCode            TEXT,
    FundingSource          TEXT
);

INSERT INTO urban_planning_projects VALUES (8001, 'Riverfront Revitalization', 'City Development Dept', '2022-01-15', '2025-12-31', 'InProgress', 25000000.00, 40.7128, -74.0060, 'New York', 'NY', 'USA', 'MixedUse', 'R-2', 150000.0, 50000, 12000, 30000.0, 'PublicTransit', 'Medium', 85.0, 'John Doe', 'Transforming riverfront into public park and residential area', '2022-01-15', '2023-08-01', 'Internal', 'RVR-2022', 'MunicipalBond');
INSERT INTO urban_planning_projects VALUES (8002, 'Eastside Affordable Housing', 'Housing Authority', '2021-06-01', '2024-05-30', 'Approved', 18000000.00, 34.0522, -118.2437, 'Los Angeles', 'CA', 'USA', 'Residential', 'R-1', 80000.0, 20000, 15000, 0.0, 'Bus', 'Low', 78.5, 'Maria Garcia', 'Construction of 1500 affordable housing units', '2021-06-01', '2023-07-15', 'External', 'EAH-2021', 'FederalGrant');
INSERT INTO urban_planning_projects VALUES (8003, 'Green Belt Expansion', 'State Parks Service', '2023-03-10', NULL, 'Planning', 35000000.00, 41.8781, -87.6298, 'Chicago', 'IL', 'USA', 'Conservation', 'C-3', 500000.0, 0, 0, 0.0, 'Bike', 'High', 92.0, 'Liu Chen', 'Adding 200 km of bike trails and preserving wetlands', '2023-03-10', '2023-09-20', 'Internal', 'GBE-2023', 'StateFunds');

-- Food supply chain transaction records
CREATE TABLE food_supply_chain_transactions
(
    TransactionId          INTEGER NOT NULL PRIMARY KEY,
    BatchNumber            TEXT,
    ProductName            TEXT,
    QuantityUnits          INTEGER,
    UnitOfMeasure          TEXT,
    SourceFacilityId       INTEGER,
    DestinationFacilityId  INTEGER,
    ShipDate               DATETIME,
    ArrivalDate            DATETIME,
    TransportMode          TEXT,
    CarrierName            TEXT,
    TemperatureRequirementC REAL,
    ActualAvgTempC         REAL,
    HumidityRequirementPct REAL,
    ActualAvgHumidityPct   REAL,
    InspectionStatus       TEXT,
    InspectorName          TEXT,
    QualityScore           REAL,
    LotStatus              TEXT,
    RecallFlag             TEXT,
    ReasonForRecall        TEXT,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME,
    SourceSystem           TEXT,
    TransactionType        TEXT,
    ComplianceDocumentUrl  TEXT,
    ShippingCostUSD        REAL,
    CustomsDutyUSD         REAL
);

INSERT INTO food_supply_chain_transactions VALUES (60001, 'BN-20230701-001', 'Organic Apples', 5000, 'Kg', 101, 202, '2023-07-01', '2023-07-03', 'RefrigeratedTruck', 'FreshLogistics', 4.0, 4.2, 85.0, 84.5, 'Passed', 'Emily Turner', 0.96, 'Delivered', 'No', '', '2023-07-01', '2023-07-04', 'Internal', 'Outbound', 'http://docs.example.com/rec-60001.pdf', 1200.00, 150.00);
INSERT INTO food_supply_chain_transactions VALUES (60002, 'BN-20230615-045', 'FreeRange Eggs', 20000, 'Units', 103, 205, '2023-06-15', '2023-06-16', 'AirFreight', 'SkyCargo', 2.0, 2.1, 70.0, 71.2, 'Passed', 'David Kim', 0.98, 'Delivered', 'No', '', '2023-06-15', '2023-06-18', 'External', 'Inbound', 'http://docs.example.com/rec-60002.pdf', 800.00, 100.00);
INSERT INTO food_supply_chain_transactions VALUES (60003, 'BN-20230520-078', 'Almond Butter', 1500, 'Litre', 110, 210, '2023-05-20', '2023-05-22', 'Truck', 'NutriTrans', 20.0, 19.8, 60.0, 59.5, 'Failed', 'Sofia Martinez', 0.45, 'Quarantine', 'Yes', 'Microbial contamination detected', '2023-05-20', '2023-05-25', 'Internal', 'Outbound', 'http://docs.example.com/rec-60003.pdf', 500.00, 75.00);