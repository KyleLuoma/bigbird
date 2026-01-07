-- Table storing details of staff members responsible for fuel station maintenance
CREATE TABLE fuel_station_maintenance_staff (
    StaffID INTEGER PRIMARY KEY,
    StationID INTEGER,
    FirstName TEXT,
    LastName TEXT,
    HireDate DATE,
    Role TEXT,
    CertificationLevel TEXT,
    ShiftPattern TEXT,
    PhoneNumber TEXT,
    Email TEXT,
    Salary REAL,
    EmploymentStatus TEXT,
    SupervisorID INTEGER,
    TrainingCompletedDate DATE,
    YearsOfExperience INTEGER,
    SafetyScore REAL,
    BadgeNumber TEXT,
    EmergencyContactName TEXT,
    EmergencyContactPhone TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);
INSERT INTO fuel_station_maintenance_staff (StaffID,StationID,FirstName,LastName,HireDate,Role,CertificationLevel,ShiftPattern,PhoneNumber,Email,Salary,EmploymentStatus,SupervisorID,TrainingCompletedDate,YearsOfExperience,SafetyScore,BadgeNumber,EmergencyContactName,EmergencyContactPhone,Notes,CreatedAt,UpdatedAt) VALUES (1,101,'Alice','Smith','2020-03-15','Technician','Level2','Day','5551234567','alice.smith@example.com',48000.00,'Active',10,'2021-04-01',5,96.5,'B001','Bob Smith','5559876543','N/A','2020-03-15','2023-01-10');
INSERT INTO fuel_station_maintenance_staff VALUES (2,102,'Carlos','Diaz','2019-07-22','Supervisor','Level3','Swing','5552345678','carlos.diaz@example.com',62000.00,'Active',NULL,'2020-01-15',8,98.2,'B002','Maria Diaz','5558765432','Promoted 2022','2019-07-22','2023-01-10');
INSERT INTO fuel_station_maintenance_staff VALUES (3,103,'Lina','Chen','2021-01-10','Apprentice','Level1','Night','5553456789','lina.chen@example.com',35000.00,'Probation',2,'2021-12-01',2,88.0,'B003','Jian Chen','5557654321','Training in progress','2021-01-10','2023-01-10');

-- Table capturing lease agreements for vehicles
CREATE TABLE vehicle_lease_agreements (
    LeaseID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    LesseeCustomerID INTEGER,
    LeaseStartDate DATE,
    LeaseEndDate DATE,
    MonthlyPayment REAL,
    MileageAllowance INTEGER,
    ExcessMileageRate REAL,
    PurchaseOptionPrice REAL,
    LeaseStatus TEXT,
    AuthorizedDriverID INTEGER,
    InsurancePolicyNumber TEXT,
    WarrantyExpiration DATE,
    LeaseAgreementFile TEXT,
    Currency TEXT,
    DownPayment REAL,
    SecurityDeposit REAL,
    EarlyTerminationFee REAL,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);
INSERT INTO vehicle_lease_agreements VALUES (201,301,1001,'2022-05-01','2025-04-30',399.99,12000,0.15,15000.00,'Active',5001,'INS123456','2024-12-31','lease_201.pdf','USD',1000.00,500.00,2000.00,'Standard lease','2022-04-20','2023-02-15');
INSERT INTO vehicle_lease_agreements VALUES (202,302,1002,'2021-01-15','2024-01-14',349.99,15000,0.12,13000.00,'Closed',5002,'INS234567','2023-12-31','lease_202.pdf','EUR',800.00,400.00,1500.00,'Early termination','2020-12-01','2023-02-15');
INSERT INTO vehicle_lease_agreements VALUES (203,303,1003,'2023-03-01','2026-02-28',429.99,10000,0.20,16000.00,'Pending',5003,'INS345678','2025-12-31','lease_203.pdf','GBP',1200.00,600.00,2500.00,'Pending approval','2023-02-10','2023-02-15');

-- Table storing customers' various payment methods
CREATE TABLE customer_payment_methods (
    PaymentMethodID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    CardNumber TEXT,
    CardType TEXT,
    ExpirationDate DATE,
    CardHolderName TEXT,
    BillingAddress TEXT,
    BillingCity TEXT,
    BillingState TEXT,
    BillingZip TEXT,
    Country TEXT,
    IsPrimary INTEGER,
    AddedDate DATE,
    Status TEXT,
    Provider TEXT,
    TokenizedReference TEXT,
    CVVHash TEXT,
    ContactPhone TEXT,
    Email TEXT,
    Notes TEXT
);
INSERT INTO customer_payment_methods VALUES (10001,1001,'4111111111111111','Visa','2025-09-30','John Doe','123 Main St','Metropolis','NY','10001','USA',1,'2021-06-01','Active','Stripe','tok_abc123','hash1','5551112222','john.doe@example.com','Primary card');
INSERT INTO customer_payment_methods VALUES (10002,1002,'5500000000000004','MasterCard','2024-12-31','Jane Smith','456 Oak Ave','Gotham','IL','60601','USA',0,'2022-01-15','Inactive','Braintree','tok_def456','hash2','5553334444','jane.smith@example.com','Expired');
INSERT INTO customer_payment_methods VALUES (10003,1003,'340000000000009','Amex','2026-03-31','Alice Johnson','789 Pine Rd','Star City','CA','90210','USA',1,'2023-03-20','Active','Adyen','tok_ghi789','hash3','5555556666','alice.johnson@example.com','Added for subscription');

-- Table for environmental audit records of gas stations
CREATE TABLE gas_station_environmental_audits (
    AuditID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    AuditScope TEXT,
    FindingsSummary TEXT,
    ComplianceScore REAL,
    CorrectiveActionDue DATE,
    Status TEXT,
    FollowUpDate DATE,
    WaterUsageLiters REAL,
    EmissionCO2Kg REAL,
    SoilContaminationLevel REAL,
    WasteDisposalMethod TEXT,
    PermitNumber TEXT,
    RegulatoryAgency TEXT,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    AuditType TEXT
);
INSERT INTO gas_station_environmental_audits VALUES (301,101,'2023-02-10','Emily Clark','Full','No major issues',92.5,'2023-03-15','Closed','2023-03-20',1200.5,5.2,0.02,'Recycling','P-789','EPA','All compliant','EnvTeam','2023-02-10','2023-03-21','Annual');
INSERT INTO gas_station_environmental_audits VALUES (302,102,'2023-01-18','Michael Lee','Partial','Minor leak detected',85.0,'2023-02-10','Open','2023-02-15',1100.0,6.0,0.05,'Incineration','P-790','StateDept','Follow-up required','EnvTeam','2023-01-18','2023-02-12','Quarterly');
INSERT INTO gas_station_environmental_audits VALUES (303,103,'2022-12-05','Sofia Patel','Full','Excellent performance',98.0,'2022-12-20','Closed','2022-12-25',1300.2,4.8,0.01,'Composting','P-791','EPA','No action needed','EnvTeam','2022-12-05','2022-12-26','Annual');

-- Table describing regional fuel distribution hubs
CREATE TABLE regional_fuel_distribution_hubs (
    HubID INTEGER PRIMARY KEY,
    RegionCode TEXT,
    HubName TEXT,
    Address TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    Country TEXT,
    CapacityLiters REAL,
    CurrentInventoryLiters REAL,
    ManagerName TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    OperationalSince DATE,
    Status TEXT,
    Latitude REAL,
    Longitude REAL,
    NumberOfDocks INTEGER,
    LoadingRateLitersPerHour REAL,
    SafetyRating REAL,
    LastInspectionDate DATE,
    Notes TEXT,
    CreatedAt DATE
);
INSERT INTO regional_fuel_distribution_hubs VALUES (401,'NE','NorthEast Hub','100 Harbor Way','Boston','MA','02108','USA',500000.0,350000.0,'Karen Wu','5557778888','karen.wu@example.com','2015-06-01','Active',42.3601,-71.0589,12,2500.0,9.5,'2023-01-20','Primary hub for NE region','2023-02-01');
INSERT INTO regional_fuel_distribution_hubs VALUES (402,'SW','SouthWest Hub','200 Desert Rd','Phoenix','AZ','85001','USA',600000.0,420000.0,'Luis Gomez','5558889999','luis.gomez@example.com','2017-09-15','Active',33.4484,-112.0740,15,3000.0,9.2,'2023-02-05','Supports southwestern distribution','2023-02-10');
INSERT INTO regional_fuel_distribution_hubs VALUES (403,'MW','MidWest Hub','300 River St','Chicago','IL','60602','USA',550000.0,290000.0,'Angela Reed','5559990000','angela.reed@example.com','2016-03-20','Maintenance','41.8781,-87.6298',10,2200.0,8.8,'2022-12-12','Undergoing renovations','2023-02-15');

-- Table for electric vehicle incentive programs
CREATE TABLE electric_vehicle_incentive_programs (
    ProgramID INTEGER PRIMARY KEY,
    ProgramName TEXT,
    StartDate DATE,
    EndDate DATE,
    EligibleRegion TEXT,
    IncentiveAmount REAL,
    IncentiveType TEXT,
    FundingSource TEXT,
    MaxParticipants INTEGER,
    CurrentEnrollments INTEGER,
    ApplicationDeadline DATE,
    EligibilityCriteria TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Status TEXT,
    Description TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    Currency TEXT
);
INSERT INTO electric_vehicle_incentive_programs VALUES (501,'GreenDrive Grant','2023-01-01','2024-12-31','NE','5000.00','Rebate','StateBudget',200,57,'2023-03-31','Own or lease EV','Megan Hall','5551112222','megan.hall@example.com','Open','Provides cash rebate for new EV purchases','2023-01-01','2023-02-20','First wave of grants','USD');
INSERT INTO electric_vehicle_incentive_programs VALUES (502,'SolarCharge Bonus','2022-06-01','2025-05-31','SW','200.00','Credit','UtilityCompany',500,312,'2023-04-30','Home solar + EV','Ravi Patel','5553334444','ravi.patel@example.com','Active','Credit added to utility bill for EV charging via solar','2022-06-01','2023-02-18','Renewable integration','USD');
INSERT INTO electric_vehicle_incentive_programs VALUES (503,'EcoFleet Support','2023-03-15','2026-03-14','MW','10000.00','Grant','FederalGrant',50,12,'2023-06-30','Fleet of at least 10 EVs','Laura Kim','5555556666','laura.kim@example.com','Pending','Grants for commercial fleets transitioning to EVs','2023-03-15','2023-02-25','Awaiting approvals','USD');

-- Table defining logistics freight rates between regions
CREATE TABLE logistics_freight_rates (
    RateID INTEGER PRIMARY KEY,
    OriginRegion TEXT,
    DestinationRegion TEXT,
    ModeOfTransport TEXT,
    BaseRate REAL,
    FuelSurcharge REAL,
    SeasonalAdjustment REAL,
    MinimumCharge REAL,
    MaximumWeightKg INTEGER,
    MinimumWeightKg INTEGER,
    RateEffectiveDate DATE,
    RateExpirationDate DATE,
    Currency TEXT,
    CarrierID INTEGER,
    ServiceLevel TEXT,
    LeadTimeDays INTEGER,
    AdditionalFees TEXT,
    DiscountPercentage REAL,
    CreatedBy TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT
);
INSERT INTO logistics_freight_rates VALUES (601,'NE','SW','Truck',1200.00,150.00,0.10,500.00,20000,500,'2023-01-01','2023-12-31','USD',301,'Standard',5,'Liftgate,Insurance',5.0,'LogisticsTeam','2023-01-01','2023-02-01','Annual rate');
INSERT INTO logistics_freight_rates VALUES (602,'MW','NE','Rail',800.00,100.00,0.05,300.00,15000,300,'2023-03-01','2024-02-28','USD',302,'Express',3,'ContainerFee',7.5,'LogisticsTeam','2023-03-01','2023-03-10','Seasonal promotion');
INSERT INTO logistics_freight_rates VALUES (603,'SW','MW','Air',2500.00,200.00,0.15,1000.00,5000,200,'2023-02-15','2024-02-14','USD',303,'Premium',2,'Handling,Security',10.0,'LogisticsTeam','2023-02-15','2023-03-05','High priority lanes');

-- Table recording certifications of suppliers
CREATE TABLE supplier_certification_records (
    CertRecordID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    CertificationName TEXT,
    CertificationNumber TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    CertifyingAuthority TEXT,
    ScopeOfCertification TEXT,
    Status TEXT,
    AuditorName TEXT,
    AuditDate DATE,
    Findings TEXT,
    RenewalRequired INTEGER,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    DocumentReference TEXT
);
INSERT INTO supplier_certification_records VALUES (701,401,'ISO 9001','ISO9001-001','2021-05-01','2024-04-30','ISO','Quality Management','Valid','Helen Wu','2021-04-20','Compliant',0,'Mark Lee','5557778888','mark.lee@supplier.com','Annual certification','2021-05-01','2023-02-01','doc_iso9001_001');
INSERT INTO supplier_certification_records VALUES (702,402,'ISO 14001','ISO1401-002','2020-08-15','2023-08-14','ISO','Environmental Management','Expired','John Kim','2020-08-01','Minor non‑conformities',1,'Sara Patel','5558889999','sara.patel@supplier.com','Needs renewal','2020-08-15','2023-02-02','doc_iso1401_002');
INSERT INTO supplier_certification_records VALUES (703,403,'OHSAS 18001','OHS1801-003','2022-01-10','2025-01-09','OHSAS','Occupational Health','Valid','Laura Chen','2021-12-20','All standards met',0,'Tom Wright','5559990000','tom.wright@supplier.com','No issues','2022-01-10','2023-02-03','doc_ohsas_1801_003');

-- Table for corporate social responsibility projects
CREATE TABLE corporate_social_responsibility_projects (
    ProjectID INTEGER PRIMARY KEY,
    ProjectName TEXT,
    StartDate DATE,
    EndDate DATE,
    LeadDepartment TEXT,
    Budget REAL,
    Currency TEXT,
    ProjectManager TEXT,
    Status TEXT,
    Objectives TEXT,
    TargetCommunity TEXT,
    ImpactMetric TEXT,
    EstimatedBeneficiaries INTEGER,
    PartnerOrganizations TEXT,
    FundingSource TEXT,
    ReportingFrequency TEXT,
    LastReportDate DATE,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    KPI TEXT,
    Region TEXT
);
INSERT INTO corporate_social_responsibility_projects VALUES (801,'Community Tree Planting','2023-03-01','2023-09-30','Sustainability','25000.00','USD','Nina Green','Active','Plant 5k trees','Urban neighborhoods','Trees Planted','5000','GreenEarth NGO','Company Funds','Quarterly','2023-06-15','Seasonal planting events','2023-03-01','2023-07-01','TreeGrowthRate','NE');
INSERT INTO corporate_social_responsibility_projects VALUES (802,'STEM Education Initiative','2022-01-15','2024-12-31','HR','150000.00','USD','David Lee','Ongoing','Provide STEM kits to schools','Rural schools','Students Served','12000','TechForAll','Corporate Grant','Semi‑Annual','2023-05-20','Curriculum development','2022-01-15','2023-07-15','StudentEngagementScore','SW');
INSERT INTO corporate_social_responsibility_projects VALUES (803,'Clean Water Access','2021-06-01','2025-05-31','Operations','300000.00','USD','Olivia Brown','Planning','Install water purification units','Remote villages','Liters of Clean Water','80000','WaterAid','Philanthropy Fund','Annual','2023-04-10','Feasibility studies','2021-06-01','2023-07-20','WaterQualityIndex','MW');

-- Table logging traffic signal control events
CREATE TABLE traffic_signal_control_logs (
    LogID INTEGER PRIMARY KEY,
    IntersectionID INTEGER,
    SignalControllerID INTEGER,
    LogTimestamp DATE,
    EventType TEXT,
    Description TEXT,
    DurationSeconds INTEGER,
    OldTimingPlan TEXT,
    NewTimingPlan TEXT,
    OperatorName TEXT,
    FaultCode TEXT,
    Resolved INTEGER,
    ResolutionTimestamp DATE,
    MaintenanceCrewID INTEGER,
    WeatherCondition TEXT,
    TrafficVolume INTEGER,
    IncidentID INTEGER,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Latitude REAL,
    Longitude REAL,
    FirmwareVersion TEXT
);
INSERT INTO traffic_signal_control_logs VALUES (901,1001,5001,'2023-02-12','TimingChange','Adjusted green time for northbound','120','PlanA','PlanB','Mike Turner','FC01',1,'2023-02-12',300,'Clear',1500,0,'Successful update','2023-02-12','2023-02-12',40.7128,-74.0060,'v2.3');
INSERT INTO traffic_signal_control_logs VALUES (902,1002,5002,'2023-03-05','Fault','Signal stuck on red','300','PlanC','PlanC','Sara Lopez','FC09',0,NULL,301,'Rain',1800,12,'Escalated to field team','2023-03-05','2023-03-06',34.0522,-118.2437,'v2.3');
INSERT INTO traffic_signal_control_logs VALUES (903,1003,5003,'2023-01-20','Maintenance','Routine firmware update','60','PlanD','PlanD','James Patel','FC00',1,'2023-01-20',302,'Snow',1300,0,'No issues detected','2023-01-20','2023-01-20',41.8781,-87.6298,'v2.4');