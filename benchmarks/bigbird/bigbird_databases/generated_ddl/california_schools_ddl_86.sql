-- District housing market statistics
CREATE TABLE district_housing_market (
    MarketID TEXT PRIMARY KEY,
    DistrictCode TEXT,
    Year INTEGER,
    MedianHomePrice REAL,
    AvgRent REAL,
    NewConstructionUnits INTEGER,
    VacancyRate REAL,
    HomeOwnershipRate REAL,
    Population INTEGER,
    MedianHouseholdIncome REAL,
    UnemploymentRate REAL,
    ForeclosureRate REAL,
    HousingSupplyIndex REAL,
    MortgageRate REAL,
    AvgPropertyTaxRate REAL,
    AvgInsurancePremium REAL,
    AvgCommuteTime REAL,
    WalkScore INTEGER,
    TransitScore INTEGER,
    BikeScore INTEGER,
    HousingAffordabilityIndex REAL,
    DevelopmentProjectsCount INTEGER,
    AffordableUnitsAdded INTEGER
);
INSERT INTO district_housing_market VALUES ('MH001','DC001',2022,350000,1250,120,5.2,68.5,150000,72000,4.1,0.6,78.3,3.75,1.21,850,22.5,78,65,55,0.92,15,30);
INSERT INTO district_housing_market VALUES ('MH002','DC002',2022,420000,1400,80,4.8,71.2,200000,82000,3.8,0.4,81.5,3.65,1.18,900,20.3,82,70,60,0.88,12,25);
INSERT INTO district_housing_market VALUES ('MH003','DC003',2022,275000,950,150,6.0,62.0,95000,58000,5.2,1.0,73.4,4.00,1.25,780,24.1,70,60,50,0.95,20,40);

-- State teacher workforce statistics
CREATE TABLE state_teacher_workforce_stats (
    RecordID TEXT PRIMARY KEY,
    StateCode TEXT,
    Year INTEGER,
    TotalTeachers INTEGER,
    AverageSalary REAL,
    PercentCertified REAL,
    PercentWithAdvancedDegree REAL,
    AverageYearsExperience REAL,
    TeacherTurnoverRate REAL,
    PercentFemale REAL,
    PercentMale REAL,
    AverageClassSize INTEGER,
    PercentInSTEM REAL,
    PercentInSpecialEd REAL,
    PercentInEarlyChildhood REAL,
    PercentInRuralSchools REAL,
    PercentInUrbanSchools REAL,
    PercentInSuburbanSchools REAL,
    AverageStudentTeacherRatio REAL,
    PercentTeachingOutOfField REAL,
    PercentFullTime REAL,
    PercentPartTime REAL,
    PercentOnLeave REAL
);
INSERT INTO state_teacher_workforce_stats VALUES ('TW001','CA',2022,600000,72000,91.3,34.5,12.2,5.6,63.4,36.6,24,22.1,12.5,8.3,15.2,48.7,35.8,15.3,9.4,78.5,21.5,5.2);
INSERT INTO state_teacher_workforce_stats VALUES ('TW002','TX',2022,420000,65000,88.7,28.1,10.9,6.2,58.9,41.1,23,19.5,10.2,9.7,18.4,45.3,36.3,16.0,11.0,81.0,19.0,5.0);
INSERT INTO state_teacher_workforce_stats VALUES ('TW003','NY',2022,350000,75000,93.0,36.8,13.0,4.9,66.2,33.8,22,24.3,13.0,7.5,12.9,50.5,34.6,14.8,10.2,80.2,19.8,5.0);

-- National education research projects
CREATE TABLE national_education_research_projects (
    ProjectID TEXT PRIMARY KEY,
    Agency TEXT,
    FiscalYear INTEGER,
    Title TEXT,
    PrincipalInvestigator TEXT,
    Institution TEXT,
    AwardAmount REAL,
    StartDate DATE,
    EndDate DATE,
    ProjectStatus TEXT,
    ResearchArea TEXT,
    Methodology TEXT,
    TargetPopulation TEXT,
    SampleSize INTEGER,
    DataCollectionMode TEXT,
    PublicationsCount INTEGER,
    PatentsFiled INTEGER,
    CollaborationCount INTEGER,
    DataSharingLevel TEXT,
    OpenAccessFlag INTEGER,
    EthicalApprovalFlag INTEGER,
    FundingSource TEXT,
    ProgramOfficer TEXT,
    ReviewScore REAL,
    Keywords TEXT
);
INSERT INTO national_education_research_projects VALUES ('RP001','EDU','2021','Impact of Technology on Literacy','DrSmith','UniversityA',1200000,'2021-07-01','2024-06-30','Active','Digital Literacy','Mixed Methods','K-12 Students',2000,'Surveys',12,2,5,'Public','1','1','Federal','OfficerA',85.5,'technology, literacy, student outcomes');
INSERT INTO national_education_research_projects VALUES ('RP002','NSF','2020','STEM Engagement in Rural Schools','DrLee','InstituteB',950000,'2020-01-15','2023-12-31','Completed','STEM Education','Experimental','Rural Middle Schools',1500,'Observations',9,1,4,'Restricted','0','1','Grant','OfficerB',78.2,'STEM, rural, student engagement');
INSERT INTO national_education_research_projects VALUES ('RP003','DOE','2022','Energy Education Curriculum Development','DrPatel','CollegeC',800000,'2022-09-01','2025-08-31','Active','Energy Education','Qualitative','High School Teachers',500,'Interviews',5,0,3,'Public','1','1','State','OfficerC',82.0,'energy, curriculum, sustainability');

-- Public transport infrastructure inventory
CREATE TABLE public_transport_infrastructure (
    AssetID TEXT PRIMARY KEY,
    AssetType TEXT,
    City TEXT,
    County TEXT,
    State TEXT,
    InstallationYear INTEGER,
    Capacity INTEGER,
    DailyRidership REAL,
    MaintenanceCycleMonths INTEGER,
    LastInspectionDate DATE,
    ConditionRating REAL,
    OwnerAgency TEXT,
    FundingSource TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL,
    AccessibilityFlag INTEGER,
    ElectrifiedFlag INTEGER,
    SmartTicketingFlag INTEGER,
    EnergyConsumptionKWh REAL,
    EmissionsTonCO2 REAL,
    ServiceHoursPerDay REAL,
    AvgWaitTimeMinutes REAL,
    OperationalStatus TEXT,
    ReplacementPlanYear INTEGER,
    Comments TEXT
);
INSERT INTO public_transport_infrastructure VALUES ('PT001','BusStop','Springfield','Greene','MO',2015,40,1200,12,'2023-06-15',8.5,'TransitDept','Federal',37.2153,-93.2982,1,0,1,150,0.02,18,5,'Active',2028,'Located near school');
INSERT INTO public_transport_infrastructure VALUES ('PT002','LightRailStation','Austin','Travis','TX',2018,2000,35000,24,'2023-04-20',9.2,'MetroRail','State',30.2672,-97.7431,1,1,1,8500,0.15,20,3,'Active',2030,'Underground platform');
INSERT INTO public_transport_infrastructure VALUES ('PT003','BikeShareDock','Portland','Multnomah','OR',2020,15,300,6,'2023-08-01',7.9,'BikeShareCo','City',45.5231,-122.6765,1,0,0,25,0.005,24,2,'Active',2025,'Near downtown park');

-- Community health center resources
CREATE TABLE community_health_center_resources (
    CenterID TEXT PRIMARY KEY,
    CenterName TEXT,
    Address TEXT,
    City TEXT,
    County TEXT,
    State TEXT,
    ZipCode TEXT,
    OpeningDate DATE,
    TotalStaff INTEGER,
    Physicians INTEGER,
    Nurses INTEGER,
    MentalHealthCounselors INTEGER,
    Dentists INTEGER,
    Pharmacists INTEGER,
    Beds INTEGER,
    AvgDailyPatients INTEGER,
    OperatingHoursPerWeek REAL,
    TelehealthCapabilityFlag INTEGER,
    LanguageServicesFlag INTEGER,
    FreeClinicHoursPerMonth INTEGER,
    AnnualBudget REAL,
    FundingAgency TEXT,
    AccreditationStatus TEXT,
    EmergencyServicesFlag INTEGER,
    CommunityOutreachPrograms INTEGER,
    ParkingSpaces INTEGER,
    WheelchairAccessibleFlag INTEGER,
    Notes TEXT
);
INSERT INTO community_health_center_resources VALUES ('HC001','River Valley Health','123 Main St','Madison','Dane','WI','53703','2010-05-12',45,8,12,5,2,1,30,120,56,1,1,8,750000,'StateHealthDept','Accredited',1,4,10,1,'Serves low-income families');
INSERT INTO community_health_center_resources VALUES ('HC002','Sunrise Community Clinic','456 Oak Ave','Phoenix','Maricopa','AZ','85004','2015-09-01',60,10,15,7,3,2,40,200,60,1,1,12,950000,'FederalHealthAgency','Accredited',1,6,12,1,'Provides mobile health units');
INSERT INTO community_health_center_resources VALUES ('HC003','Coastal Wellness Center','789 Beach Rd','Santa Cruz','Santa Cruz','CA','95060','2018-03-20',30,5,8,4,1,1,20,80,48,0,0,5,500000,'CountyHealthOffice','Provisional',0,2,8,1,'Focus on preventive care');

-- Environmental air quality monitoring stations
CREATE TABLE environmental_air_quality_stations (
    StationID TEXT PRIMARY KEY,
    StationName TEXT,
    Latitude REAL,
    Longitude REAL,
    ElevationMeters REAL,
    InstallationDate DATE,
    OwnerAgency TEXT,
    FundingSource TEXT,
    PM25SensorFlag INTEGER,
    OzoneSensorFlag INTEGER,
    NO2SensorFlag INTEGER,
    SO2SensorFlag INTEGER,
    CO2SensorFlag INTEGER,
    TemperatureSensorFlag INTEGER,
    HumiditySensorFlag INTEGER,
    DataTransmissionMethod TEXT,
    DataRetentionMonths INTEGER,
    CalibrationFrequencyDays INTEGER,
    AvgPM25 REAL,
    AvgOzone REAL,
    AvgNO2 REAL,
    AvgSO2 REAL,
    AvgCO2 REAL,
    OperationalStatus TEXT,
    MaintenanceContact TEXT,
    Remarks TEXT
);
INSERT INTO environmental_air_quality_stations VALUES ('AQ001','Downtown Station',40.7128,-74.0060,10,'2012-04-15','EPA','Federal',1,1,1,1,1,1,1,'Cellular',24,180,12.5,0.030,0.025,0.015,410,'Active','JohnDoe','Urban core monitoring');
INSERT INTO environmental_air_quality_stations VALUES ('AQ002','Mountain Ridge',39.7392,-104.9903,1600,'2015-09-30','StateEnv','State',1,0,1,0,1,1,1,'Satellite',36,365,8.2,0.015,0.010,0.008,400,'Active','JaneSmith','High altitude site');
INSERT INTO environmental_air_quality_stations VALUES ('AQ003','Coastal Breeze',34.0195,-118.4912,5,'2018-06-20','CountyEnv','County',1,1,0,0,1,1,1,'WiFi',12,90,14.0,0.040,0.018,0.012,420,'Active','MikeLee','Near oceanfront');

-- District financial indicators
CREATE TABLE district_financial_indicators (
    IndicatorID TEXT PRIMARY KEY,
    DistrictCode TEXT,
    FiscalYear INTEGER,
    TotalRevenue REAL,
    TotalExpenditures REAL,
    NetBalance REAL,
    RevenuePerStudent REAL,
    ExpenditurePerStudent REAL,
    PercentageFundedByState REAL,
    PercentageFundedByFederal REAL,
    PercentageFundedByLocal REAL,
    CapitalOutlay REAL,
    MaintenanceOutlay REAL,
    DebtService REAL,
    OutstandingDebt REAL,
    PupilTeacherRatio REAL,
    AverageTeacherSalary REAL,
    PercentageSpendingOnInstruction REAL,
    PercentageSpendingOnSupportServices REAL,
    PercentageSpendingOnFacilities REAL,
    AuditFindingFlag INTEGER,
    FiscalStabilityScore REAL,
    BondRating TEXT,
    LastAuditDate DATE,
    FinancialOfficerName TEXT,
    Comments TEXT
);
INSERT INTO district_financial_indicators VALUES ('FI001','DC001',2022,85000000,82000000,3000000,5600,5400,55.0,12.0,33.0,5000000,2000000,800000,15000000,16.2,68000,62.5,15.0,22.5,0,88.5,'AA','2023-02-15','LauraKhan','Stable financial position');
INSERT INTO district_financial_indicators VALUES ('FI002','DC002',2022,72000000,71000000,1000000,4800,4700,50.0,10.0,40.0,4000000,2500000,700000,12000000,15.8,64000,60.0,13.0,27.0,0,85.2,'A','2023-03-10','MarkRossi','Slight surplus');
INSERT INTO district_financial_indicators VALUES ('FI003','DC003',2022,63000000,65000000,-2000000,4200,4600,45.0,8.0,47.0,3000000,3000000,600000,20000000,15.0,61000,58.0,14.0,28.0,1,70.4,'BBB','2023-01-20','SandraLee','Deficit due to increased capital projects');

-- Public safety resources inventory
CREATE TABLE public_safety_resources (
    ResourceID TEXT PRIMARY KEY,
    AgencyName TEXT,
    City TEXT,
    County TEXT,
    State TEXT,
    ResourceType TEXT,
    Quantity INTEGER,
    DeploymentDate DATE,
    ServiceAreaSqMiles REAL,
    AnnualBudget REAL,
    StaffFTE REAL,
    CoveredPopulation INTEGER,
    ResponseTimeMinutes REAL,
    EquipmentList TEXT,
    MaintenanceContractFlag INTEGER,
    FundingSource TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL,
    OperationalStatus TEXT,
    ReplacementYear INTEGER,
    TrainingHoursPerYear REAL,
    CommunityOutreachEvents INTEGER,
    MutualAidAgreementFlag INTEGER,
    CertificationStatus TEXT,
    ContactPerson TEXT,
    Remarks TEXT
);
INSERT INTO public_safety_resources VALUES ('PS001','FireDept','Lincoln','Lancaster','NE','FireEngine',12,'2016-05-10',250,3000000,45.5,120000,5.2,'Engine, Ladder, Rescue',1,'Municipal',40.8097,-96.7026,'Active',2027,120,8,1,'Certified','TomBaker','Strategic placement downtown');
INSERT INTO public_safety_resources VALUES ('PS002','PoliceDept','Boulder','Boulder','CO','PatrolCar',18,'2018-09-15',320,3500000,55.0,110000,4.8,'Car, Drone, K9 Unit',1,'County',40.01499,-105.2705,'Active',2029,150,12,1,'Accredited','EmilyClark','Mounted unit added 2020');
INSERT INTO public_safety_resources VALUES ('PS003','EMS','Portland','Multnomah','OR','Ambulance',10,'2019-03-22',200,2500000,30.0,90000,6.0,'Ambulance, MedEquip',1,'State',45.5231,-122.6765,'Active',2028,100,6,1,'Certified','RajPatel','Rapid response team');

-- State education policy amendments
CREATE TABLE state_education_policy_amendments (
    AmendmentID TEXT PRIMARY KEY,
    StateCode TEXT,
    BillNumber TEXT,
    Title TEXT,
    EffectiveDate DATE,
    PolicyArea TEXT,
    AmendmentType TEXT,
    SponsorName TEXT,
    CoSponsorNames TEXT,
    Summary TEXT,
    PublicCommentPeriodDays INTEGER,
    VotesInFavor INTEGER,
    VotesAgainst INTEGER,
    VotesAbstain INTEGER,
    SignedIntoLawFlag INTEGER,
    ImplementationAgency TEXT,
    FundingAllocation REAL,
    RequiredReportingFrequency TEXT,
    ImpactScore REAL,
    Status TEXT,
    LastUpdated DATE,
    AnalystName TEXT,
    Notes TEXT,
    RelatedAmendmentIDs TEXT,
    LegalReference TEXT,
    ContactEmail TEXT
);
INSERT INTO state_education_policy_amendments VALUES ('PA001','CA','SB123','Early Literacy Initiative','2023-07-01','Early Childhood','Addition','SenatorDoe','RepSmith,RepLee','Provides funding for K-3 literacy programs',30,45,5,0,1,'Dept of Education',25000000,'Annual','8.5','Enacted','2023-02-10','AnaMendoza','Aligned with federal grant','PA010','Education Code 12345','policy@ca.edu');
INSERT INTO state_education_policy_amendments VALUES ('PA002','TX','HB456','Teacher Salary Enhancement','2024-01-01','Compensation','Amendment','RepBrown','SenatorGreen,SenatorWhite','Increases minimum teacher salary by $5k',45,60,2,0,1,'HR Department',15000000,'Biannual','7.2','Pending Signature','2023-11-20','LuisGarcia','Budget impact analysis','PA003','Education Statutes 67890','policy@tx.gov');
INSERT INTO state_education_policy_amendments VALUES ('PA003','NY','S1234','Student Data Privacy','2022-09-15','Privacy','Revision','SenatorBlue','RepGold,RepSilver','Establishes stricter data handling for student records',60,50,10,5,1,'Office of Information',8000000,'Quarterly','9.1','Effective','2022-04-05','MeganLee','Required for federal compliance','PA001','Education Law 54321','policy@ny.gov');

-- Technology asset depreciation schedule
CREATE TABLE technology_asset_depreciation (
    AssetDepID TEXT PRIMARY KEY,
    AssetTag TEXT,
    AssetType TEXT,
    Brand TEXT,
    Model TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    PurchasePrice REAL,
    DepreciationMethod TEXT,
    UsefulLifeYears INTEGER,
    SalvageValue REAL,
    AnnualDepreciation REAL,
    AccumulatedDepreciation REAL,
    BookValue REAL,
    CurrentCondition TEXT,
    Location TEXT,
    AssignedTo TEXT,
    WarrantyExpiration DATE,
    LeaseFlag INTEGER,
    LeaseTermMonths INTEGER,
    LeaseCostPerMonth REAL,
    MaintenanceContractFlag INTEGER,
    MaintenanceCostAnnual REAL,
    LastMaintenanceDate DATE,
    DisposalDate DATE,
    DisposalMethod TEXT,
    Comments TEXT,
    UpdatedBy TEXT,
    UpdateTimestamp DATE
);
INSERT INTO technology_asset_depreciation VALUES ('TD001','TAG001','Laptop','Dell','Latitude 5420','SN12345','2021-08-15',1500,'StraightLine',3,200,433.33,866.66,633.34,'Good','Room 210','TeacherA','2024-08-15',0,0,0,1,150,'2023-06-01',NULL,NULL,'In Service','Replaced in 2024','ITDept','2023-12-01');
INSERT INTO technology_asset_depreciation VALUES ('TD002','TAG002','Projector','Epson','PowerLite X39','SN54321','2020-01-10',800,'DecliningBalance',5,100,140,560,140,'Fair','Auditorium','AdminDept','2025-01-10',0,0,0,0,0,NULL,NULL,NULL,'Needs bulb replacement','Facilities','2023-11-20');
INSERT INTO technology_asset_depreciation VALUES ('TD003','TAG003','Server','HP','ProLiant DL380','SN98765','2019-05-20',5000,'StraightLine',7,500,642.86,2142.86,2857.14','Excellent','Data Center','ITStaff','2026-05-20',1,36,120,1,300,'2023-08-15',NULL,NULL,'Leased','Lease renewal due 2022','ITDept','2023-12-15');

-- Environmental water quality testing results
CREATE TABLE environmental_water_quality_tests (
    TestID TEXT PRIMARY KEY,
    StationID TEXT,
    SampleDate DATE,
    SampleTime TEXT,
    CollectorName TEXT,
    WaterBody TEXT,
    ParameterPH REAL,
    ParameterTurbidityNTU REAL,
    ParameterConductivityUS REAL,
    ParameterDissolvedOxygenMGL REAL,
    ParameterNitratesMGL REAL,
    ParameterPhosphatesMGL REAL,
    ParameterLeadPPB REAL,
    ParameterMercuryPPB REAL,
    ParameterEColiCFU INTEGER,
    ParameterTotalColiformCFU INTEGER,
    TemperatureC REAL,
    RainfallLast24HrsMM REAL,
    SampleLocationDescription TEXT,
    LaboratoryID TEXT,
    AnalysisMethod TEXT,
    ResultStatus TEXT,
    QAQCFlag INTEGER,
    Notes TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    Comments TEXT
);
INSERT INTO environmental_water_quality_tests VALUES ('WT001','AQ001','2023-07-12','08:00','JohnDoe','River A',7.2,3.5,150,8.1,0.02,0.01,5,0,10,30,15.3,12.5,'Upstream near bridge','LabWest','EPAMethod123','Pass',0,'No anomalies','DrSmith','2023-07-20','N/A');
INSERT INTO environmental_water_quality_tests VALUES ('WT002','AQ003','2023-07-15','14:30','JaneSmith','Coastal Bay',8.0,1.2,200,7.5,0.01,0.005,2,0,5,15,16.0,0.0,'Near pier','LabEast','EPAMethod456','Pass',0,'Clear conditions','DrLee','2023-07-22','N/A');
INSERT INTO environmental_water_quality_tests VALUES ('WT003','AQ002','2023-07-18','10:15','MikeBrown','Mountain Stream',6.8,4.0,120,6.0,0.03,0.015,8,1,25,45,12.5,5.2,'High altitude spring','LabNorth','EPAMethod789','Fail',1,'Elevated lead detected','DrGreen','2023-07-25','Follow-up sampling required');

-- Community arts festival events
CREATE TABLE community_arts_festival_events (
    EventID TEXT PRIMARY KEY,
    FestivalName TEXT,
    EventDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    VenueName TEXT,
    VenueAddress TEXT,
    City TEXT,
    County TEXT,
    State TEXT,
    AdmissionFee REAL,
    SponsorNames TEXT,
    FeaturedArtist TEXT,
    ArtForm TEXT,
    ExpectedAttendance INTEGER,
    TicketSales REAL,
    VolunteerCount INTEGER,
    SecurityStaffCount INTEGER,
    MarketingBudget REAL,
    MediaPartners TEXT,
    AccessibilityFeatures TEXT,
    AlcoholPermitFlag INTEGER,
    FoodVendorCount INTEGER,
    LivePerformanceFlag INTEGER,
    EventCoordinator TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedDate DATE
);
INSERT INTO community_arts_festival_events VALUES ('AE001','Riverfest','2024-05-10','10:00','18:00','Riverfront Park','500 River Rd','Springfield','Greene','MO',5.00,'LocalBank,ArtsCouncil','AnnaLee','Music','5000',25000,120,30,8000,'RadioOne,TVTwo','WheelchairRamp,SignLanguage','0','10','1','KarenMiller','5551234567','kmiller@riverfest.org','Annual spring event','Admin','2023-11-01');
INSERT INTO community_arts_festival_events VALUES ('AE002','City Lights Art Fair','2024-09-20','09:00','22:00','Downtown Plaza','200 Main St','Austin','Travis','TX',0.00,'EnergyCo,TechPartners','LuisGarcia','VisualArt','3000',0,80,20,5000,'OnlineAds','BlindAssist','0','15','0','MichaelBrown','5559876543','mbrown@citylights.org','Evening outdoor exhibition','Admin','2023-12-15');
INSERT INTO community_arts_festival_events VALUES ('AE003','Coastal Film & Music Fest','2024-07-15','12:00','23:00','Seaside Amphitheater','770 Ocean Blvd','Santa Cruz','Santa Cruz','CA',12.50,'MarineFund,FilmGuild','SofiaChen','Film','4000',48000,150,40,12000','PrintMedia','AudioDescription,SignLanguage','1','8','1','EmilyClark','5552223344','eclark@coastalfest.org','Features indie films and live bands','Admin','2023-10-20');