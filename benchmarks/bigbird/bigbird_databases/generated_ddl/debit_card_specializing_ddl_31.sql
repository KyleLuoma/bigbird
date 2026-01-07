-- Maintenance facilities details
CREATE TABLE maintenance_facilities (
    FacilityID INTEGER PRIMARY KEY,
    FacilityName TEXT,
    LocationCity TEXT,
    LocationState TEXT,
    Capacity INTEGER,
    OperationalSince DATE,
    ManagerID INTEGER,
    ContactNumber TEXT,
    Email TEXT,
    ShiftCount INTEGER,
    MaintenanceType TEXT,
    ServiceLevel TEXT,
    WarrantyExpiration DATE,
    LastInspectionDate DATE,
    IsActive INTEGER,
    Latitude REAL,
    Longitude REAL,
    RegionCode TEXT,
    CostCenter TEXT,
    Notes TEXT
);
INSERT INTO maintenance_facilities (FacilityID, FacilityName, LocationCity, LocationState, Capacity, OperationalSince, ManagerID, ContactNumber, Email, ShiftCount, MaintenanceType, ServiceLevel, WarrantyExpiration, LastInspectionDate, IsActive, Latitude, Longitude, RegionCode, CostCenter, Notes) VALUES (1, 'NorthHub', 'Springfield', 'IL', 250, '2010-05-12', 101, '5551234', 'northhub@example.com', 3, 'Mechanical', 'Gold', '2025-12-31', '2023-06-15', 1, 39.78, -89.64, 'NW', 'CC100', 'Primary hub');
INSERT INTO maintenance_facilities (FacilityID, FacilityName, LocationCity, LocationState, Capacity, OperationalSince, ManagerID, ContactNumber, Email, ShiftCount, MaintenanceType, ServiceLevel, WarrantyExpiration, LastInspectionDate, IsActive, Latitude, Longitude, RegionCode, CostCenter, Notes) VALUES (2, 'SouthDepot', 'Madison', 'WI', 180, '2012-09-01', 102, '5555678', 'southdepot@example.com', 2, 'Electrical', 'Silver', '2024-08-20', '2023-04-10', 1, 43.07, -89.40, 'SE', 'CC200', 'Secondary location');
INSERT INTO maintenance_facilities (FacilityID, FacilityName, LocationCity, LocationState, Capacity, OperationalSince, ManagerID, ContactNumber, Email, ShiftCount, MaintenanceType, ServiceLevel, WarrantyExpiration, LastInspectionDate, IsActive, Latitude, Longitude, RegionCode, CostCenter, Notes) VALUES (3, 'EastStation', 'Columbus', 'OH', 300, '2008-03-22', 103, '5559012', 'eaststation@example.com', 4, 'Hydraulic', 'Platinum', '2026-11-15', '2023-07-01', 1, 39.96, -82.99, 'NE', 'CC300', 'High volume');

-- Corporate training sessions
CREATE TABLE corporate_training_sessions (
    SessionID INTEGER PRIMARY KEY,
    SessionTitle TEXT,
    TrainerName TEXT,
    Department TEXT,
    LocationBuilding TEXT,
    LocationRoom TEXT,
    StartDate DATE,
    EndDate DATE,
    Capacity INTEGER,
    EnrolledCount INTEGER,
    SessionType TEXT,
    DeliveryMode TEXT,
    CertificationRequired INTEGER,
    CostPerAttendee REAL,
    TotalCost REAL,
    IsMandatory INTEGER,
    FeedbackScore REAL,
    MaterialsProvided INTEGER,
    FollowUpNeeded INTEGER,
    Notes TEXT
);
INSERT INTO corporate_training_sessions (SessionID, SessionTitle, TrainerName, Department, LocationBuilding, LocationRoom, StartDate, EndDate, Capacity, EnrolledCount, SessionType, DeliveryMode, CertificationRequired, CostPerAttendee, TotalCost, IsMandatory, FeedbackScore, MaterialsProvided, FollowUpNeeded, Notes) VALUES (1, 'Leadership Essentials', 'Alice Smith', 'HR', 'MainCampus', 'Room101', '2023-09-01', '2023-09-03', 30, 28, 'Workshop', 'InPerson', 1, 200.0, 5600.0, 1, 4.5, 1, 0, 'Core leadership track');
INSERT INTO corporate_training_sessions (SessionID, SessionTitle, TrainerName, Department, LocationBuilding, LocationRoom, StartDate, EndDate, Capacity, EnrolledCount, SessionType, DeliveryMode, CertificationRequired, CostPerAttendee, TotalCost, IsMandatory, FeedbackScore, MaterialsProvided, FollowUpNeeded, Notes) VALUES (2, 'Advanced SQL', 'Bob Jones', 'IT', 'TechCenter', 'Lab202', '2023-10-10', '2023-10-12', 20, 20, 'Course', 'Hybrid', 0, 150.0, 3000.0, 0, 4.8, 1, 1, 'Include hands‑on labs');
INSERT INTO corporate_training_sessions (SessionID, SessionTitle, TrainerName, Department, LocationBuilding, LocationRoom, StartDate, EndDate, Capacity, EnrolledCount, SessionType, DeliveryMode, CertificationRequired, CostPerAttendee, TotalCost, IsMandatory, FeedbackScore, MaterialsProvided, FollowUpNeeded, Notes) VALUES (3, 'Data Privacy', 'Carol Lee', 'Legal', 'Compliance', 'ConfRoom', '2023-11-05', '2023-11-05', 50, 45, 'Seminar', 'Virtual', 1, 100.0, 4500.0, 1, 4.2, 0, 0, 'Annual refresher');

-- Environmental inspection sites
CREATE TABLE environmental_inspection_sites (
    SiteID INTEGER PRIMARY KEY,
    SiteName TEXT,
    SiteType TEXT,
    County TEXT,
    State TEXT,
    Latitude REAL,
    Longitude REAL,
    DesignatedYear INTEGER,
    InspectorID INTEGER,
    LastInspectionDate DATE,
    InspectionScore INTEGER,
    ViolationCount INTEGER,
    RemediationRequired INTEGER,
    RemediationDeadline DATE,
    WaterQualityIndex REAL,
    AirQualityIndex REAL,
    SoilContaminationLevel REAL,
    ProtectedArea INTEGER,
    MonitoringEquipment TEXT,
    Notes TEXT
);
INSERT INTO environmental_inspection_sites (SiteID, SiteName, SiteType, County, State, Latitude, Longitude, DesignatedYear, InspectorID, LastInspectionDate, InspectionScore, ViolationCount, RemediationRequired, RemediationDeadline, WaterQualityIndex, AirQualityIndex, SoilContaminationLevel, ProtectedArea, MonitoringEquipment, Notes) VALUES (1, 'River Bend', 'Wetland', 'Harris', 'TX', 29.76, -95.37, 2005, 201, '2023-05-20', 85, 2, 1, '2024-05-20', 78.5, 65.2, 12.3, 1, 'SensorArrayA', 'Ongoing remediation');
INSERT INTO environmental_inspection_sites (SiteID, SiteName, SiteType, County, State, Latitude, Longitude, DesignatedYear, InspectorID, LastInspectionDate, InspectionScore, ViolationCount, RemediationRequired, RemediationDeadline, WaterQualityIndex, AirQualityIndex, SoilContaminationLevel, ProtectedArea, MonitoringEquipment, Notes) VALUES (2, 'Pine Ridge', 'Forest', 'Madison', 'WI', 43.07, -89.40, 1998, 202, '2023-08-12', 92, 0, 0, NULL, 88.0, 70.0, 5.1, 1, 'DroneSurveyB', 'No issues');
INSERT INTO environmental_inspection_sites (SiteID, SiteName, SiteType, County, State, Latitude, Longitude, DesignatedYear, InspectorID, LastInspectionDate, InspectionScore, ViolationCount, RemediationRequired, RemediationDeadline, WaterQualityIndex, AirQualityIndex, SoilContaminationLevel, ProtectedArea, MonitoringEquipment, Notes) VALUES (3, 'Coastal Dune', 'Coastal', 'Orange', 'CA', 33.71, -117.88, 2012, 203, '2023-03-05', 78, 3, 1, '2024-03-05', 65.3, 55.6, 18.7, 0, ' tideGaugeC', 'Erosion control needed');

-- Retail store sales summary
CREATE TABLE retail_store_sales (
    StoreID INTEGER,
    StoreName TEXT,
    Region TEXT,
    City TEXT,
    State TEXT,
    FiscalYear INTEGER,
    TotalSales REAL,
    NetProfit REAL,
    TransactionCount INTEGER,
    AvgTicketSize REAL,
    FootTraffic INTEGER,
    OnlineSales REAL,
    LoyaltyMembers INTEGER,
    AvgVisitDuration REAL,
    PromoSpend REAL,
    StaffCount INTEGER,
    AvgStaffHours REAL,
    InventoryTurnover REAL,
    ShrinkagePercent REAL,
    OpeningDate DATE,
    PRIMARY KEY (StoreID, FiscalYear)
);
INSERT INTO retail_store_sales (StoreID, StoreName, Region, City, State, FiscalYear, TotalSales, NetProfit, TransactionCount, AvgTicketSize, FootTraffic, OnlineSales, LoyaltyMembers, AvgVisitDuration, PromoSpend, StaffCount, AvgStaffHours, InventoryTurnover, ShrinkagePercent, OpeningDate) VALUES (101, 'MetroMart Downtown', 'North', 'Chicago', 'IL', 2023, 1250000.0, 210000.0, 45000, 27.78, 80000, 150000.0, 12000, 45.2, 50000.0, 85, 38.5, 4.8, 1.2, '2015-04-01');
INSERT INTO retail_store_sales (StoreID, StoreName, Region, City, State, FiscalYear, TotalSales, NetProfit, TransactionCount, AvgTicketSize, FootTraffic, OnlineSales, LoyaltyMembers, AvgVisitDuration, PromoSpend, StaffCount, AvgStaffHours, InventoryTurnover, ShrinkagePercent, OpeningDate) VALUES (102, 'Lakeside Plaza', 'East', 'Cleveland', 'OH', 2023, 980000.0, 150000.0, 36000, 27.22, 60000, 120000.0, 9500, 42.7, 35000.0, 70, 36.0, 5.1, 0.9, '2017-09-15');
INSERT INTO retail_store_sales (StoreID, StoreName, Region, City, State, FiscalYear, TotalSales, NetProfit, TransactionCount, AvgTicketSize, FootTraffic, OnlineSales, LoyaltyMembers, AvgVisitDuration, PromoSpend, StaffCount, AvgStaffHours, InventoryTurnover, ShrinkagePercent, OpeningDate) VALUES (103, 'Sunnyvale Outlet', 'West', 'San Jose', 'CA', 2023, 1325000.0, 250000.0, 52000, 25.48, 95000, 200000.0, 18000, 48.1, 60000.0, 90, 40.2, 4.5, 1.0, '2012-06-20');

-- Supply chain transport modes
CREATE TABLE supply_chain_transport_modes (
    ModeID INTEGER PRIMARY KEY,
    ModeName TEXT,
    CapacityTons INTEGER,
    AvgSpeedKmh REAL,
    FuelType TEXT,
    EmissionFactor REAL,
    CostPerKm REAL,
    MaxDistanceKm INTEGER,
    AvailabilityHours INTEGER,
    OperatorCompany TEXT,
    LicenseRequired INTEGER,
    SafetyRating INTEGER,
    MaintenanceIntervalDays INTEGER,
    AvgLoadFactor REAL,
    RegulatoryCompliance TEXT,
    InsuranceCoverage REAL,
    TrackingSystem TEXT,
    AvgDelayMinutes INTEGER,
    EnvironmentalScore INTEGER,
    Notes TEXT
);
INSERT INTO supply_chain_transport_modes (ModeID, ModeName, CapacityTons, AvgSpeedKmh, FuelType, EmissionFactor, CostPerKm, MaxDistanceKm, AvailabilityHours, OperatorCompany, LicenseRequired, SafetyRating, MaintenanceIntervalDays, AvgLoadFactor, RegulatoryCompliance, InsuranceCoverage, TrackingSystem, AvgDelayMinutes, EnvironmentalScore, Notes) VALUES (1, 'HeavyTruck', 20, 80.0, 'Diesel', 0.3, 1.5, 1200, 24, 'TransLogistics', 1, 4, 180, 0.85, 'ISO9001', 500000.0, 'GPS', 15, 70, 'Standard long‑haul');
INSERT INTO supply_chain_transport_modes (ModeID, ModeName, CapacityTons, AvgSpeedKmh, FuelType, EmissionFactor, CostPerKm, MaxDistanceKm, AvailabilityHours, OperatorCompany, LicenseRequired, SafetyRating, MaintenanceIntervalDays, AvgLoadFactor, RegulatoryCompliance, InsuranceCoverage, TrackingSystem, AvgDelayMinutes, EnvironmentalScore, Notes) VALUES (2, 'RailFreight', 500, 70.0, 'Electric', 0.05, 0.8, 2000, 24, 'NationalRailCo', 0, 5, 365, 0.92, 'AAR', 2000000.0, 'RFID', 5, 90, 'High volume corridor');
INSERT INTO supply_chain_transport_modes (ModeID, ModeName, CapacityTons, AvgSpeedKmh, FuelType, EmissionFactor, CostPerKm, MaxDistanceKm, AvailabilityHours, OperatorCompany, LicenseRequired, SafetyRating, MaintenanceIntervalDays, AvgLoadFactor, RegulatoryCompliance, InsuranceCoverage, TrackingSystem, AvgDelayMinutes, EnvironmentalScore, Notes) VALUES (3, 'IntermodalShip', 8000, 30.0, 'Diesel', 0.4, 2.0, 5000, 24, 'OceanicLines', 1, 3, 730, 0.78, 'SOLAS', 5000000.0, 'AIS', 30, 60, 'Ocean carrier');

-- Digital marketing assets repository
CREATE TABLE digital_marketing_assets (
    AssetID INTEGER PRIMARY KEY,
    AssetName TEXT,
    AssetType TEXT,
    CampaignName TEXT,
    CreatedDate DATE,
    LastModified DATE,
    FileFormat TEXT,
    FileSizeKB INTEGER,
    WidthPx INTEGER,
    HeightPx INTEGER,
    DurationSec INTEGER,
    TargetPlatform TEXT,
    AudienceSegment TEXT,
    ClickThroughRate REAL,
    ConversionRate REAL,
    CostPerImpression REAL,
    Status TEXT,
    OwnerUserID INTEGER,
    ApprovalFlag INTEGER,
    Tags TEXT
);
INSERT INTO digital_marketing_assets (AssetID, AssetName, AssetType, CampaignName, CreatedDate, LastModified, FileFormat, FileSizeKB, WidthPx, HeightPx, DurationSec, TargetPlatform, AudienceSegment, ClickThroughRate, ConversionRate, CostPerImpression, Status, OwnerUserID, ApprovalFlag, Tags) VALUES (1001, 'SpringBanner', 'Image', 'SpringSale2023', '2023-02-10', '2023-02-12', 'PNG', 350, 1200, 400, 0, 'Web', 'Retail', 0.045, 0.012, 0.02, 'Active', 501, 1, 'sale,spring');
INSERT INTO digital_marketing_assets (AssetID, AssetName, AssetType, CampaignName, CreatedDate, LastModified, FileFormat, FileSizeKB, WidthPx, HeightPx, DurationSec, TargetPlatform, AudienceSegment, ClickThroughRate, ConversionRate, CostPerImpression, Status, OwnerUserID, ApprovalFlag, Tags) VALUES (1002, 'VideoSpot1', 'Video', 'HolidayPromo', '2023-11-01', '2023-11-03', 'MP4', 25000, 1920, 1080, 30, 'Social', 'Travel', 0.067, 0.018, 0.05, 'Pending', 502, 0, 'holiday,video');
INSERT INTO digital_marketing_assets (AssetID, AssetName, AssetType, CampaignName, CreatedDate, LastModified, FileFormat, FileSizeKB, WidthPx, HeightPx, DurationSec, TargetPlatform, AudienceSegment, ClickThroughRate, ConversionRate, CostPerImpression, Status, OwnerUserID, ApprovalFlag, Tags) VALUES (1003, 'AudioJingle', 'Audio', 'BrandRefresh', '2023-06-15', '2023-06-16', 'MP3', 1800, 0, 0, 15, 'Radio', 'General', 0.0, 0.0, 0.01, 'Active', 503, 1, 'brand,jingle');

-- Energy storage units inventory
CREATE TABLE energy_storage_units (
    UnitID INTEGER PRIMARY KEY,
    UnitName TEXT,
    LocationFacilityID INTEGER,
    StorageTechnology TEXT,
    CapacityMWh REAL,
    UsableCapacityMWh REAL,
    RoundTripEfficiency REAL,
    InstallationDate DATE,
    Manufacturer TEXT,
    WarrantyYears INTEGER,
    CurrentStatus TEXT,
    LastMaintenanceDate DATE,
    TemperatureCelsius REAL,
    StateOfChargePercent REAL,
    PowerRatingMW REAL,
    GridConnectionPoint TEXT,
    SafetyCertification TEXT,
    OwnershipType TEXT,
    DecommissionDate DATE,
    Notes TEXT
);
INSERT INTO energy_storage_units (UnitID, UnitName, LocationFacilityID, StorageTechnology, CapacityMWh, UsableCapacityMWh, RoundTripEfficiency, InstallationDate, Manufacturer, WarrantyYears, CurrentStatus, LastMaintenanceDate, TemperatureCelsius, StateOfChargePercent, PowerRatingMW, GridConnectionPoint, SafetyCertification, OwnershipType, DecommissionDate, Notes) VALUES (2001, 'BatteryArrayA', 1, 'LithiumIon', 50.0, 45.0, 0.92, '2021-03-15', 'VoltEnergy', 10, 'Operational', '2023-04-01', 25.0, 80.0, 15.0, 'Node12', 'UL9540A', 'Owned', NULL, 'Primary grid support');
INSERT INTO energy_storage_units (UnitID, UnitName, LocationFacilityID, StorageTechnology, CapacityMWh, UsableCapacityMWh, RoundTripEfficiency, InstallationDate, Manufacturer, WarrantyYears, CurrentStatus, LastMaintenanceDate, TemperatureCelsius, StateOfChargePercent, PowerRatingMW, GridConnectionPoint, SafetyCertification, OwnershipType, DecommissionDate, Notes) VALUES (2002, 'PumpedHydroB', 2, 'PumpedHydro', 200.0, 180.0, 0.85, '2018-07-20', 'HydroWorks', 20, 'Operational', '2023-01-20', 15.0, 65.0, 50.0, 'Node34', 'ISO45001', 'Leased', NULL, 'Mountain side plant');
INSERT INTO energy_storage_units (UnitID, UnitName, LocationFacilityID, StorageTechnology, CapacityMWh, UsableCapacityMWh, RoundTripEfficiency, InstallationDate, Manufacturer, WarrantyYears, CurrentStatus, LastMaintenanceDate, TemperatureCelsius, StateOfChargePercent, PowerRatingMW, GridConnectionPoint, SafetyCertification, OwnershipType, DecommissionDate, Notes) VALUES (2003, 'CompressedAirC', 3, 'CompressedAir', 120.0, 110.0, 0.78, '2020-11-05', 'AirStoreInc', 15, 'Maintenance', '2023-06-10', 12.0, 40.0, 30.0, 'Node56', 'CSA', 'JointVentures', NULL, 'Undergoing upgrades');

-- Municipal road projects catalog
CREATE TABLE municipal_road_projects (
    ProjectID INTEGER PRIMARY KEY,
    ProjectName TEXT,
    Municipality TEXT,
    County TEXT,
    State TEXT,
    StartDate DATE,
    EstimatedCompletion DATE,
    BudgetMillions REAL,
    ContractorCompany TEXT,
    ProjectManagerID INTEGER,
    RoadLengthKm REAL,
    LaneCount INTEGER,
    SurfaceType TEXT,
    TrafficImpactScore INTEGER,
    EnvironmentalReviewStatus TEXT,
    FundingSource TEXT,
    PermitNumber TEXT,
    PublicCommentsCount INTEGER,
    Status TEXT,
    Notes TEXT
);
INSERT INTO municipal_road_projects (ProjectID, ProjectName, Municipality, County, State, StartDate, EstimatedCompletion, BudgetMillions, ContractorCompany, ProjectManagerID, RoadLengthKm, LaneCount, SurfaceType, TrafficImpactScore, EnvironmentalReviewStatus, FundingSource, PermitNumber, PublicCommentsCount, Status, Notes) VALUES (301, 'I‑95 Expansion', 'Boston', 'Suffolk', 'MA', '2023-01-15', '2025-12-31', 250.0, 'BuildCorp', 601, 12.5, 4, 'Asphalt', 85, 'Approved', 'FederalGrant', 'PERM1023', 120, 'InProgress', 'Phase 1 underway');
INSERT INTO municipal_road_projects (ProjectID, ProjectName, Municipality, County, State, StartDate, EstimatedCompletion, BudgetMillions, ContractorCompany, ProjectManagerID, RoadLengthKm, LaneCount, SurfaceType, TrafficImpactScore, EnvironmentalReviewStatus, FundingSource, PermitNumber, PublicCommentsCount, Status, Notes) VALUES (302, 'Riverfront Blvd Revitalization', 'Portland', 'Multnomah', 'OR', '2022-06-01', '2024-09-30', 80.0, 'UrbanBuild', 602, 5.2, 2, 'Concrete', 70, 'Pending', 'StateFunds', 'PERM2045', 85, 'Planning', 'Community outreach ongoing');
INSERT INTO municipal_road_projects (ProjectID, ProjectName, Municipality, County, State, StartDate, EstimatedCompletion, BudgetMillions, ContractorCompany, ProjectManagerID, RoadLengthKm, LaneCount, SurfaceType, TrafficImpactScore, EnvironmentalReviewStatus, FundingSource, PermitNumber, PublicCommentsCount, Status, Notes) VALUES (303, 'Downtown Pedestrian Zone', 'Seattle', 'King', 'WA', '2023-09-10', '2025-03-15', 45.0, 'CityConstruct', 603, 2.0, 0, 'Cobblestone', 60, 'Approved', 'CityBond', 'PERM3089', 200, 'Design', 'Focus on accessibility');

-- Vehicle registration documents
CREATE TABLE vehicle_registration_documents (
    DocumentID INTEGER PRIMARY KEY,
    VehicleVIN TEXT,
    OwnerID INTEGER,
    RegistrationState TEXT,
    PlateNumber TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    DocumentType TEXT,
    EmissionClass TEXT,
    InspectionStatus TEXT,
    TaxAmount REAL,
    FeeAmount REAL,
    IssuingAgency TEXT,
    SecurityCode TEXT,
    QRCodeData TEXT,
    IsSuspended INTEGER,
    SuspensionReason TEXT,
    RenewalNoticeSent INTEGER,
    LastUpdated DATE,
    Notes TEXT
);
INSERT INTO vehicle_registration_documents (DocumentID, VehicleVIN, OwnerID, RegistrationState, PlateNumber, IssueDate, ExpirationDate, DocumentType, EmissionClass, InspectionStatus, TaxAmount, FeeAmount, IssuingAgency, SecurityCode, QRCodeData, IsSuspended, SuspensionReason, RenewalNoticeSent, LastUpdated, Notes) VALUES (4001, '1HGCM82633A004352', 801, 'TX', 'ABC1234', '2022-05-01', '2023-05-01', 'Standard', 'Euro5', 'Passed', 150.0, 20.0, 'DMV_Texas', 'SEC987', 'QR001', 0, NULL, 1, '2023-04-20', 'First registration');
INSERT INTO vehicle_registration_documents (DocumentID, VehicleVIN, OwnerID, RegistrationState, PlateNumber, IssueDate, ExpirationDate, DocumentType, EmissionClass, InspectionStatus, TaxAmount, FeeAmount, IssuingAgency, SecurityCode, QRCodeData, IsSuspended, SuspensionReason, RenewalNoticeSent, LastUpdated, Notes) VALUES (4002, 'JH4KA9650MC012345', 802, 'CA', 'XYZ5678', '2021-08-15', '2022-08-15', 'Commercial', 'Euro6', 'Failed', 200.0, 30.0, 'DMV_California', 'SEC123', 'QR002', 1, 'Unpaid Fees', 1, '2022-07-30', 'Suspended due to fees');
INSERT INTO vehicle_registration_documents (DocumentID, VehicleVIN, OwnerID, RegistrationState, PlateNumber, IssueDate, ExpirationDate, DocumentType, EmissionClass, InspectionStatus, TaxAmount, FeeAmount, IssuingAgency, SecurityCode, QRCodeData, IsSuspended, SuspensionReason, RenewalNoticeSent, LastUpdated, Notes) VALUES (4003, '5YJ3E1EA7KF123456', 803, 'NY', 'LMN9012', '2023-01-10', '2024-01-10', 'Electric', 'Zero', 'Passed', 100.0, 15.0, 'DMV_NewYork', 'SEC456', 'QR003', 0, NULL, 0, '2023-12-20', 'EV registration');

-- Public event venues directory
CREATE TABLE public_event_venues (
    VenueID INTEGER PRIMARY KEY,
    VenueName TEXT,
    City TEXT,
    State TEXT,
    Capacity INTEGER,
    IndoorOutdoor TEXT,
    PrimaryUse TEXT,
    AddressLine1 TEXT,
    AddressLine2 TEXT,
    ZipCode TEXT,
    ParkingSpaces INTEGER,
    AccessibilityRating INTEGER,
    AcousticRating INTEGER,
    BuiltYear INTEGER,
    OwnerOrganization TEXT,
    RentalCostPerDay REAL,
    ContactPerson TEXT,
    ContactPhone TEXT,
    WiFiAvailable INTEGER,
    Notes TEXT
);
INSERT INTO public_event_venues (VenueID, VenueName, City, State, Capacity, IndoorOutdoor, PrimaryUse, AddressLine1, AddressLine2, ZipCode, ParkingSpaces, AccessibilityRating, AcousticRating, BuiltYear, OwnerOrganization, RentalCostPerDay, ContactPerson, ContactPhone, WiFiAvailable, Notes) VALUES (501, 'Grand Convention Center', 'Atlanta', 'GA', 12000, 'Indoor', 'Conference', '1234 Peachtree St', '', '30303', 800, 9, 8, 1995, 'CityOfAtlanta', 25000.0, 'John Doe', '5551112', 1, 'Main downtown venue');
INSERT INTO public_event_venues (VenueID, VenueName, City, State, Capacity, IndoorOutdoor, PrimaryUse, AddressLine1, AddressLine2, ZipCode, ParkingSpaces, AccessibilityRating, AcousticRating, BuiltYear, OwnerOrganization, RentalCostPerDay, ContactPerson, ContactPhone, WiFiAvailable, Notes) VALUES (502, 'Riverfront Amphitheatre', 'Nashville', 'TN', 8000, 'Outdoor', 'Concert', '5678 River Rd', 'Suite 200', '37203', 1200, 8, 9, 2005, 'MusicFest LLC', 18000.0, 'Emily Smith', '5553344', 1, 'Scenic river view');
INSERT INTO public_event_venues (VenueID, VenueName, City, State, Capacity, IndoorOutdoor, PrimaryUse, AddressLine1, AddressLine2, ZipCode, ParkingSpaces, AccessibilityRating, AcousticRating, BuiltYear, OwnerOrganization, RentalCostPerDay, ContactPerson, ContactPhone, WiFiAvailable, Notes) VALUES (503, 'Tech Expo Hall', 'San Diego', 'CA', 5000, 'Indoor', 'Exhibition', '9012 Innovation Dr', '', '92101', 600, 7, 7, 2010, 'SanDiegoConvention', 22000.0, 'Michael Lee', '5557789', 0, 'High ceiling for booths');