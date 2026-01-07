-- Station Energy Metrics
CREATE TABLE station_energy_metrics
(
    MetricID               INTEGER PRIMARY KEY,
    StationID              INTEGER,
    ReportDate             DATE,
    TotalEnergy_kWh        REAL,
    PeakDemand_kW          REAL,
    AvgVoltage_V           REAL,
    AvgCurrent_A           REAL,
    PowerFactor            REAL,
    EnergyCost_USD         REAL,
    RenewableSharePct      REAL,
    CO2e_kg                REAL,
    Temperature_C          REAL,
    Humidity_pct           REAL,
    GridFrequency_Hz       REAL,
    VoltageUnbalance_pct   REAL,
    ReactivePower_kVAR     REAL,
    PowerQualityIncidents  INTEGER,
    MeterReadingStart      REAL,
    MeterReadingEnd        REAL,
    Comments               TEXT
);
INSERT INTO station_energy_metrics VALUES (1, 101, '2024-01-15', 12500.5, 850.3, 230.1, 55.2, 0.98, 3120.75, 35.0, 12450.0, 22.5, 55.0, 60.0, 1.2, 120.5, 2, 5000.0, 5250.0, 'Monthly report');
INSERT INTO station_energy_metrics VALUES (2, 102, '2024-01-15', 9800.0, 720.0, 231.0, 48.0, 0.97, 2450.10, 40.0, 9700.0, 21.0, 60.0, 60.0, 0.9, 105.0, 1, 4500.0, 4700.0, 'Quarterly audit');
INSERT INTO station_energy_metrics VALUES (3, 103, '2024-01-15', 14300.8, 910.5, 229.5, 62.3, 0.99, 3580.20, 30.0, 14200.0, 23.0, 50.0, 60.0, 1.0, 130.0, 3, 6000.0, 6200.0, 'Annual summary');

-- Driver Behavior Logs
CREATE TABLE driver_behavior_logs
(
    LogID                 INTEGER PRIMARY KEY,
    DriverID              INTEGER,
    VehicleID             INTEGER,
    LogDate               DATE,
    StartTime             TEXT,
    EndTime               TEXT,
    SpeedingIncidents     INTEGER,
    HarshBraking          INTEGER,
    RapidAccelerations    INTEGER,
    CorneringSeverity     REAL,
    PhoneUsage            INTEGER,
    FatigueScore          REAL,
    WeatherCondition      TEXT,
    RoadType              TEXT,
    TrafficLevel          TEXT,
    DistanceKm            REAL,
    FuelConsumptionL      REAL,
    EmissionsKgCO2        REAL,
    Comments              TEXT,
    RecordedBy            TEXT
);
INSERT INTO driver_behavior_logs VALUES (1, 201, 301, '2024-01-10', '08:00', '12:30', 2, 1, 0, 0.75, 0, 3.2, 'Clear', 'Highway', 'Moderate', 180.5, 15.6, 32.0, 'No issues', 'SupervisorA');
INSERT INTO driver_behavior_logs VALUES (2, 202, 302, '2024-01-11', '09:15', '13:45', 0, 0, 1, 0.60, 1, 2.8, 'Rain', 'City', 'Heavy', 120.0, 12.3, 24.5, 'Phone usage detected', 'SupervisorB');
INSERT INTO driver_behavior_logs VALUES (3, 203, 303, '2024-01-12', '07:30', '11:00', 1, 2, 0, 0.80, 0, 3.5, 'Snow', 'Rural', 'Light', 150.2, 13.8, 28.9, 'Harsh braking events', 'SupervisorC');

-- Supplier Invoice Summary
CREATE TABLE supplier_invoice_summary
(
    InvoiceID            INTEGER PRIMARY KEY,
    SupplierID           INTEGER,
    InvoiceDate          DATE,
    DueDate              DATE,
    Currency             TEXT,
    TotalAmount          REAL,
    TaxAmount            REAL,
    DiscountAmount       REAL,
    PaidAmount           REAL,
    PaymentStatus        TEXT,
    InvoiceNumber        TEXT,
    PurchaseOrderID      INTEGER,
    Category             TEXT,
    Department           TEXT,
    ApprovalUserID       INTEGER,
    ApprovalDate         DATE,
    Comments             TEXT,
    CreatedBy            TEXT,
    CreatedDate          DATE,
    ModifiedDate         DATE
);
INSERT INTO supplier_invoice_summary VALUES (1, 501, '2024-01-05', '2024-01-20', 'USD', 15000.00, 1500.00, 200.00, 15000.00, 'Paid', 'INV-1001', 9001, 'Fuel', 'Operations', 801, '2024-01-06', 'All good', 'AdminA', '2024-01-05', '2024-01-07');
INSERT INTO supplier_invoice_summary VALUES (2, 502, '2024-01-08', '2024-01-23', 'EUR', 22000.00, 2200.00, 300.00, 0.00, 'Pending', 'INV-1002', 9002, 'Equipment', 'Maintenance', 802, '2024-01-09', 'Awaiting approval', 'AdminB', '2024-01-08', '2024-01-10');
INSERT INTO supplier_invoice_summary VALUES (3, 503, '2024-01-12', '2024-01-27', 'USD', 8000.00, 800.00, 100.00, 8000.00, 'Paid', 'INV-1003', 9003, 'Services', 'HR', 803, '2024-01-13', 'Paid in full', 'AdminC', '2024-01-12', '2024-01-14');

-- Environmental Sensor Calibrations
CREATE TABLE environmental_sensor_calibrations
(
    CalibrationID          INTEGER PRIMARY KEY,
    SensorID               INTEGER,
    SensorType             TEXT,
    CalibrationDate        DATE,
    TechnicianID           INTEGER,
    CalibrationFactor      REAL,
    Offset                 REAL,
    TemperatureCompensation REAL,
    HumidityCompensation  REAL,
    PressureCompensation   REAL,
    CalibrationMethod      TEXT,
    ResultStatus           TEXT,
    NextDueDate            DATE,
    Notes                  TEXT,
    LocationID             INTEGER,
    DeviceSerial           TEXT,
    FirmwareVersion        TEXT,
    CalibrationReportURL   TEXT,
    VerifiedBy             INTEGER,
    VerificationDate       DATE
);
INSERT INTO environmental_sensor_calibrations VALUES (1, 1001, 'AirQuality', '2024-01-03', 901, 1.02, 0.05, 0.01, 0.02, 0.00, 'Standard', 'Pass', '2025-01-03', 'Initial calibration', 301, 'SN-AQ-001', 'v1.3', 'http://example.com/report1', 701, '2024-01-04');
INSERT INTO environmental_sensor_calibrations VALUES (2, 1002, 'WaterTemp', '2024-01-07', 902, 0.98, -0.03, 0.00, 0.00, 0.00, 'Standard', 'Pass', '2025-01-07', 'Routine check', 302, 'SN-WT-015', 'v2.0', 'http://example.com/report2', 702, '2024-01-08');
INSERT INTO environmental_sensor_calibrations VALUES (3, 1003, 'SoilMoisture', '2024-01-11', 903, 1.00, 0.00, 0.02, 0.01, 0.00, 'Advanced', 'Pass', '2025-01-11', 'Calibration after sensor relocation', 303, 'SN-SM-078', 'v1.5', 'http://example.com/report3', 703, '2024-01-12');

-- Marketing Channel ROI
CREATE TABLE marketing_channel_roi
(
    RecordID               INTEGER PRIMARY KEY,
    CampaignID             INTEGER,
    ChannelName            TEXT,
    StartDate              DATE,
    EndDate                DATE,
    SpendUSD               REAL,
    Impressions            INTEGER,
    Clicks                 INTEGER,
    Conversions            INTEGER,
    RevenueUSD             REAL,
    ROI                    REAL,
    CostPerClick           REAL,
    CostPerConversion      REAL,
    CPM                    REAL,
    CPC                    REAL,
    AttributionModel       TEXT,
    TargetAudience         TEXT,
    GeoRegion              TEXT,
    DeviceType             TEXT,
    Comments               TEXT
);
INSERT INTO marketing_channel_roi VALUES (1, 2001, 'SocialMedia', '2024-01-01', '2024-01-31', 5000.00, 1200000, 8000, 350, 14000.00, 2.8, 0.625, 14.285, 4.166, 0.625, 'LastClick', 'Adults18-35', 'NorthAmerica', 'Mobile', 'Strong performance');
INSERT INTO marketing_channel_roi VALUES (2, 2002, 'Search', '2024-01-01', '2024-01-31', 7500.00, 900000, 9500, 500, 25000.00, 3.33, 0.789, 15.00, 8.333, 0.789, 'FirstClick', 'Professionals', 'Europe', 'Desktop', 'High conversion rate');
INSERT INTO marketing_channel_roi VALUES (3, 2003, 'Email', '2024-01-01', '2024-01-31', 2000.00, 300000, 1500, 200, 8000.00, 4.0, 1.333, 10.00, 6.666, 1.333, 'Linear', 'Subscribers', 'AsiaPacific', 'All', 'Cost effective');

-- Fleet Acquisition Budget
CREATE TABLE fleet_acquisition_budget
(
    BudgetID               INTEGER PRIMARY KEY,
    FiscalYear             INTEGER,
    Department             TEXT,
    VehicleCategory        TEXT,
    PlannedUnits           INTEGER,
    EstimatedCostPerUnit   REAL,
    TotalEstimatedCost     REAL,
    ApprovedBy             INTEGER,
    ApprovalDate           DATE,
    FundingSource          TEXT,
    CapitalExpenditure     REAL,
    OperatingExpenditure   REAL,
    LeaseOption            TEXT,
    LeaseTermMonths        INTEGER,
    InterestRate           REAL,
    DepreciationPeriodYears INTEGER,
    ResidualValue          REAL,
    Remarks                TEXT,
    CreatedBy              TEXT,
    CreatedDate            DATE
);
INSERT INTO fleet_acquisition_budget VALUES (1, 2024, 'Logistics', 'Truck', 15, 75000.00, 1125000.00, 901, '2024-01-10', 'CorporateBond', 1125000.00, 0.00, 'Purchase', 0, 0.00, 5, 15000.00, 'Urgent replacement', 'PlannerA', '2024-01-05');
INSERT INTO fleet_acquisition_budget VALUES (2, 2024, 'Maintenance', 'Van', 8, 45000.00, 360000.00, 902, '2024-01-12', 'OperatingCash', 360000.00, 0.00, 'Lease', 48, 3.5, 4, 5000.00, 'Leased for flexibility', 'PlannerB', '2024-01-06');
INSERT INTO fleet_acquisition_budget VALUES (3, 2025, 'Sales', 'Car', 10, 30000.00, 300000.00, 903, '2024-01-15', 'EquityFunding', 300000.00, 0.00, 'Purchase', 0, 0.00, 3, 8000.00, 'Expansion plan', 'PlannerC', '2024-01-07');

-- Waste Collection Schedule
CREATE TABLE waste_collection_schedule
(
    ScheduleID            INTEGER PRIMARY KEY,
    ZoneID                INTEGER,
    CollectionDay         TEXT,
    StartTime             TEXT,
    EndTime               TEXT,
    TruckID               INTEGER,
    DriverID              INTEGER,
    WasteType             TEXT,
    CapacityTons          REAL,
    ExpectedLoadTons      REAL,
    Completed             INTEGER,
    DelayReason           TEXT,
    WeatherImpact         TEXT,
    Exceptions            TEXT,
    RouteDistanceKm       REAL,
    FuelUsedLiters        REAL,
    EmissionCO2Kg         REAL,
    SupervisorID          INTEGER,
    Notes                 TEXT,
    LastUpdated           DATE
);
INSERT INTO waste_collection_schedule VALUES (1, 401, 'Monday', '06:00', '09:00', 501, 601, 'Recyclable', 12.0, 10.5, 1, '', 'None', '', 45.2, 120.5, 300.0, 701, 'On schedule', '2024-01-08');
INSERT INTO waste_collection_schedule VALUES (2, 402, 'Wednesday', '07:00', '10:30', 502, 602, 'Organic', 15.0, 14.0, 0, 'Traffic', 'HeavyRain', 'RoadClosure', 52.7, 140.0, 350.0, 702, 'Delayed due to traffic', '2024-01-09');
INSERT INTO waste_collection_schedule VALUES (3, 403, 'Friday', '05:30', '08:45', 503, 603, 'General', 10.0, 9.2, 1, '', 'None', '', 38.0, 95.0, 240.0, 703, 'Completed early', '2024-01-10');

-- Public Transport Vehicle Assignments Detail
CREATE TABLE public_transport_vehicle_assignments_detail
(
    AssignmentID          INTEGER PRIMARY KEY,
    VehicleID             INTEGER,
    RouteID               INTEGER,
    DriverID              INTEGER,
    EffectiveFrom         DATE,
    EffectiveTo           DATE,
    Shift                 TEXT,
    CapacitySeats         INTEGER,
    AccessibilityFeatures TEXT,
    FuelType              TEXT,
    MaintenanceStatus     TEXT,
    AssignedBy            INTEGER,
    AssignmentStatus      TEXT,
    Remarks               TEXT,
    LastInspectionDate    DATE,
    NextInspectionDue     DATE,
    MileageAtAssignment   REAL,
    EmissionStandard      TEXT,
    OperatorCompany       TEXT,
    ContactNumber         TEXT
);
INSERT INTO public_transport_vehicle_assignments_detail VALUES (1, 801, 901, 1001, '2024-01-01', '2024-06-30', 'Day', 60, 'WheelchairRamp', 'Diesel', 'Good', 1101, 'Active', 'No issues', '2023-12-15', '2024-12-15', 45200.5, 'Euro6', 'CityTransitCo', '5551234');
INSERT INTO public_transport_vehicle_assignments_detail VALUES (2, 802, 902, 1002, '2024-02-01', '2024-07-31', 'Night', 45, 'LowFloor', 'Electric', 'Pending', 1102, 'Active', 'Battery check pending', '2023-11-20', '2024-11-20', 21000.0, 'ZeroEmission', 'MetroLineLtd', '5555678');
INSERT INTO public_transport_vehicle_assignments_detail VALUES (3, 803, 903, 1003, '2024-03-01', '2024-08-31', 'Day', 55, 'Ramp', 'Hybrid', 'Good', 1103, 'Active', 'Routine service scheduled', '2023-10-05', '2024-10-05', 33333.3, 'Euro5', 'UrbanBusCorp', '5559012');

-- Regulatory Filing Tracker
CREATE TABLE regulatory_filing_tracker
(
    FilingID              INTEGER PRIMARY KEY,
    AgencyName            TEXT,
    FilingType            TEXT,
    FilingDate            DATE,
    DueDate               DATE,
    Status                TEXT,
    SubmittedBy           INTEGER,
    SubmissionMethod      TEXT,
    DocumentReference     TEXT,
    FeeAmount             REAL,
    Currency              TEXT,
    ReviewComments        TEXT,
    ApprovedBy            INTEGER,
    ApprovalDate          DATE,
    RejectionReason       TEXT,
    ConfidentialityLevel  TEXT,
    RelatedProjectID      INTEGER,
    Notes                 TEXT,
    CreatedBy              TEXT,
    CreatedDate           DATE
);
INSERT INTO regulatory_filing_tracker VALUES (1, 'EPA', 'EmissionReport', '2024-01-15', '2024-02-15', 'Submitted', 1201, 'OnlinePortal', 'DOC-EMP-001', 2500.00, 'USD', 'Pending review', 1301, '2024-01-16', '', 'Public', 2101, 'First filing of year', 'OfficerA', '2024-01-14');
INSERT INTO regulatory_filing_tracker VALUES (2, 'FAA', 'SafetyAudit', '2024-01-20', '2024-03-01', 'InReview', 1202, 'Email', 'DOC-SAF-045', 4000.00, 'USD', 'Requires additional data', 1302, '2024-01-22', '', 'Confidential', 2102, 'Quarterly safety audit', 'OfficerB', '2024-01-19');
INSERT INTO regulatory_filing_tracker VALUES (3, 'FDA', 'ProductApproval', '2024-01-25', '2024-04-30', 'Rejected', 1203, 'OnlinePortal', 'DOC-PRO-078', 6000.00, 'USD', 'Insufficient clinical data', 1303, '2024-01-27', 'Lack of trial results', 'Restricted', 2103, 'New supplement filing', 'OfficerC', '2024-01-24');

-- Water Treatment Chemical Inventory
CREATE TABLE water_treatment_chemical_inventory
(
    InventoryID           INTEGER PRIMARY KEY,
    PlantID               INTEGER,
    ChemicalName          TEXT,
    CASNumber             TEXT,
    QuantityKg            REAL,
    UnitCostUSD           REAL,
    SupplierID            INTEGER,
    ReceivedDate          DATE,
    ExpirationDate        DATE,
    StorageLocation       TEXT,
    SafetyDataSheetURL    TEXT,
    BatchNumber           TEXT,
    TestedBy              INTEGER,
    TestDate              DATE,
    PurityPct             REAL,
    HazardClass           TEXT,
    ReorderLevelKg        REAL,
    LastUsedDate          DATE,
    Comments              TEXT,
    UpdatedBy             TEXT
);
INSERT INTO water_treatment_chemical_inventory VALUES (1, 901, 'SodiumHypochlorite', '7681-52-9', 2000.0, 1.25, 1401, '2024-01-02', '2025-01-02', 'WarehouseA', 'http://example.com/sds1', 'BCH-001', 1501, '2024-01-03', 99.5, 'Corrosive', 500.0, '2024-01-10', 'First batch', 'SupervisorA');
INSERT INTO water_treatment_chemical_inventory VALUES (2, 902, 'CalciumHydroxide', '1305-62-0', 1500.0, 0.80, 1402, '2024-01-05', '2026-01-05', 'WarehouseB', 'http://example.com/sds2', 'BCH-002', 1502, '2024-01-06', 98.0, 'Irritant', 400.0, '2024-01-12', 'Stored in cool area', 'SupervisorB');
INSERT INTO water_treatment_chemical_inventory VALUES (3, 903, 'PolymerFlocculant', '9005-48-5', 800.0, 2.10, 1403, '2024-01-08', '2025-07-08', 'WarehouseC', 'http://example.com/sds3', 'BCH-003', 1503, '2024-01-09', 97.2, 'HealthHazard', 300.0, '2024-01-15', 'Check dosage levels', 'SupervisorC');