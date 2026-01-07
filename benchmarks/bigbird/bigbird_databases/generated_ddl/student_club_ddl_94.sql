-- Table storing information about faculty led research initiatives
CREATE TABLE faculty_research_initiative
(
    initiative_id            TEXT PRIMARY KEY,
    title                    TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    principal_investigator   TEXT,
    department               TEXT,
    funding_source           TEXT,
    total_budget             REAL,
    allocated_budget         REAL,
    spent_budget             REAL,
    status                   TEXT,
    research_area            TEXT,
    grant_number             TEXT,
    collaborators            TEXT,
    project_type             TEXT,
    outcome                  TEXT,
    publication_count        INTEGER,
    citation_count           INTEGER,
    data_repository          TEXT,
    notes                    TEXT
);

INSERT INTO faculty_research_initiative VALUES
('FRI001','AI_for_Education','2023-01-15','2025-12-31','DrSmith','ComputerScience','FederalGrant',500000,300000,120000,'Active','ArtificialIntelligence','GR12345','DrLee,DrKim','Interdisciplinary','PrototypeDeveloped',12,85,'repo_ai_edu','InitialPhase'),
('FRI002','Renewable_Energy_Storage','2022-06-01','2026-05-30','ProfJones','ElectricalEngineering','IndustryPartner',750000,500000,250000,'Active','EnergyStorage','GR67890','DrBrown','Applied','PilotInstalled',8,60,'repo_energy_storage','MidProject'),
('FRI003','Biomechanics_Study','2021-09-10','2024-08-20','DrWhite','MechanicalEngineering','UniversityFund',300000,200000,150000,'Completed','Biomechanics','GR54321','DrGreen','Basic','PublishedPaper',20,150,'repo_bio_mech','StudyCompleted');

-- Table tracking post‑graduation career progression of students
CREATE TABLE student_career_progression
(
    record_id               TEXT PRIMARY KEY,
    student_id              TEXT,
    major_id                TEXT,
    graduation_year         INTEGER,
    first_job_title         TEXT,
    first_employer          TEXT,
    salary_start            REAL,
    salary_current          REAL,
    promotion_count         INTEGER,
    industry                TEXT,
    location                TEXT,
    mentorship_program      TEXT,
    career_coach            TEXT,
    certification           TEXT,
    continued_education     TEXT,
    years_since_grad        INTEGER,
    current_position        TEXT,
    current_employer        TEXT,
    linkedin_profile        TEXT,
    notes                   TEXT
);

INSERT INTO student_career_progression VALUES
('CP001','STU1001','MAJ001',2020,'DataAnalyst','DataCorp',60000,85000,2,'Technology','NewYork','MentorPlus','CoachA','PMP','MBA',3,'SeniorAnalyst','DataCorp','linkedin.com/in/stu1001','OnTrack'),
('CP002','STU1002','MAJ002',2019,'ResearchAssistant','BioLab',50000,72000,1,'Healthcare','Boston','CareerBoost','CoachB','CPT','None',4,'ResearchScientist','BioLab','linkedin.com/in/stu1002','Promoted'),
('CP003','STU1003','MAJ003',2021,'MarketingAssociate','AdAgency',45000,56000,0,'Marketing','Chicago','MentorX','CoachC','None','CertificateDigitalMarketing',2,'MarketingSpecialist','AdAgency','linkedin.com/in/stu1003','Progressing');

-- Table describing campus energy reduction initiatives
CREATE TABLE campus_energy_initiative
(
    initiative_id               TEXT PRIMARY KEY,
    name                        TEXT,
    launch_date                 TEXT,
    target_reduction_percent    REAL,
    baseline_consumption        REAL,
    current_consumption         REAL,
    estimated_savings           REAL,
    funding_source              TEXT,
    project_manager             TEXT,
    status                      TEXT,
    renewable_energy_type       TEXT,
    installed_capacity          REAL,
    year_of_installation        INTEGER,
    maintenance_contract        TEXT,
    carbon_offset_amount        REAL,
    community_partners          TEXT,
    regulatory_approval         TEXT,
    reporting_frequency         TEXT,
    last_report_date            TEXT,
    comments                    TEXT
);

INSERT INTO campus_energy_initiative VALUES
('CEI001','SolarRoofUpgrade','2022-03-01',15.0,200000,170000,45000,'GreenFund','Miller','Active','Solar','5000',2022,'SolarMaintCo','1200','StudentEcoClub','Approved','Quarterly','2023-12-01','PositiveImpact'),
('CEI002','LED_Lighting','2021-09-15',10.0,180000,162000,18000,'FacilitiesBudget','Johnson','Completed','LED','N/A',2021,'LEDMaintCo','800','FacilitiesTeam','Approved','Annual','2022-09-15','EnergySaved'),
('CEI003','GeothermalHeating','2023-01-20',20.0,250000,200000,50000,'StateGrant','Davis','Planning','Geothermal','8000',2023,'GeoMaintCo','1500','CampusSustainability','Pending','SemiAnnual','2023-06-30','DesignPhase');

-- Table for digital preservation activities in the library
CREATE TABLE library_digital_preservation
(
    preservation_id          TEXT PRIMARY KEY,
    collection_name          TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    total_items              INTEGER,
    digitized_items          INTEGER,
    metadata_standard        TEXT,
    storage_location         TEXT,
    backup_location          TEXT,
    checksum_algorithm       TEXT,
    preservation_status      TEXT,
    funding_grant            TEXT,
    responsible_curator      TEXT,
    vendor                   TEXT,
    format_conversion_tool   TEXT,
    preservation_notes       TEXT,
    access_restrictions      TEXT,
    digital_access_url       TEXT,
    audit_date               TEXT,
    auditor_name             TEXT
);

INSERT INTO library_digital_preservation VALUES
('DP001','RareManuscripts','2022-05-01','2024-04-30',1200,800,'METS','VaultA','VaultB','SHA256','Ongoing','GrantR01','CuratorA','TechServ','ConvertX','HighResolution','Restricted','http://library.edu/dp001','2023-04-01','AuditorA'),
('DP002','HistoricalPhotos','2021-01-15','2023-12-31',5000,4500','EXIF','VaultC','VaultD','MD5','Completed','GrantR02','CuratorB','PhotoCo','PhotoConvert','ColorCorrection','Open','http://library.edu/dp002','2023-01-15','AuditorB'),
('DP003','AudioRecordings','2023-03-10','2025-03-09',300,300,'AudioXML','VaultE','VaultF','SHA1','Planned','GrantR03','CuratorC','AudioTech','AudioConvert','NoiseReduction','Open','http://library.edu/dp003','2023-09-10','AuditorC');

-- Table for health service quality metrics
CREATE TABLE health_service_quality_metric
(
    metric_id                TEXT PRIMARY KEY,
    metric_name              TEXT,
    measurement_period       TEXT,
    target_value             REAL,
    actual_value             REAL,
    variance                 REAL,
    department               TEXT,
    data_source              TEXT,
    calculation_method       TEXT,
    responsible_manager      TEXT,
    last_updated             TEXT,
    notes                    TEXT,
    benchmark                TEXT,
    patient_satisfaction_score REAL,
    average_wait_time        REAL,
    readmission_rate         REAL,
    infection_rate           REAL,
    staff_training_hours     INTEGER,
    compliance_status        TEXT,
    action_plan              TEXT
);

INSERT INTO health_service_quality_metric VALUES
('QM001','WaitTime','2023-Q4',30,28,-2,'Outpatient','EHR','Average','ManagerA','2023-12-01','Stable','National30','85',25,5.2,1.1,120,'Compliant','MonitorTrends'),
('QM002','PatientSatisfaction','2023','90',88,-2,'PrimaryCare','Survey','Score','ManagerB','2023-11-20','Improving','Regional85','88',0,4.5,0.9,150,'Compliant','TrainingProgram'),
('QM003','ReadmissionRate','2023','5',6,1,'Surgery','HospitalDB','Percentage','ManagerC','2023-12-10','NeedsAttention','National5','80',0,6,2.3,200,'NonCompliant','ReviewProtocols');

-- Table for environmental policy updates
CREATE TABLE environmental_policy_update
(
    policy_id                TEXT PRIMARY KEY,
    policy_name              TEXT,
    effective_date           TEXT,
    revision_number          INTEGER,
    responsible_office       TEXT,
    summary                  TEXT,
    scope                    TEXT,
    compliance_deadline      TEXT,
    enforcement_mechanism    TEXT,
    related_regulation       TEXT,
    stakeholder_engagement   TEXT,
    public_comment_period    TEXT,
    amendment_date           TEXT,
    amendment_summary        TEXT,
    status                   TEXT,
    last_review_date         TEXT,
    reviewer_name            TEXT,
    impact_assessment        TEXT,
    implementation_status    TEXT,
    notes                    TEXT
);

INSERT INTO environmental_policy_update VALUES
('EP001','CampusZeroWaste','2023-01-01',2,'SustainabilityOffice','Reduce waste across campus','University','2025-12-31','Audits','StateReg256','Faculty,Students','30','2024-06-15','Added composting','Active','2024-06-01','ReviewerA','Positive','ImplementationPhase','Ongoing'),
('EP002','WaterConservationPolicy','2022-07-15',1,'FacilitiesDept','Optimize water use','CampusBuildings','2024-07-14','Fines','LocalOrdinance12','FacilitiesStaff','45','2023-08-20','Include low‑flow fixtures','Pending','2023-08-01','ReviewerB','Neutral','Draft','Awaiting approval'),
('EP003','AirQualityImprovement','2021-09-01',3,'HealthServices','Improve indoor air quality','AllBuildings','2023-09-01','Inspections','EPAReg789','Admin,Students','60','2022-12-10','Added HEPA filters','Active','2022-12-01','ReviewerC','Positive','Completed','Achieved standards');

-- Table for technology investment portfolio
CREATE TABLE technology_investment_portfolio
(
    investment_id            TEXT PRIMARY KEY,
    technology_name          TEXT,
    investment_date          TEXT,
    vendor                   TEXT,
    cost                     REAL,
    expected_roi              REAL,
    lifecycle_years           INTEGER,
    current_status            TEXT,
    responsible_department    TEXT,
    strategic_alignment       TEXT,
    risk_assessment           TEXT,
    funding_source            TEXT,
    approval_date             TEXT,
    implementation_phase      TEXT,
    performance_metric        TEXT,
    current_performance       REAL,
    next_review_date          TEXT,
    reviewer                  TEXT,
    notes                     TEXT,
    depreciation_method       TEXT
);

INSERT INTO technology_investment_portfolio VALUES
('TI001','CloudStorageSolution','2022-02-10','CloudCorp',150000,12.5,5,'Operational','IT','DataStrategy','Medium','TechFund','2022-01-20','Deployment','Uptime',99.5,'2024-02-10','AnalystA','RenewalConsidered','StraightLine'),
('TI002','AI_AnalyticsPlatform','2023-05-05','AIVendor',250000,18.0,4,'Testing','BusinessAnalytics','Innovation','High','InnovationGrant','2023-04-15','Pilot','Accuracy',85.0,'2025-05-05','AnalystB','ScalingPlanned','DoubleDeclining'),
('TI003','CampusWiFiUpgrade','2021-09-01','NetGear',100000,9.0,6,'Completed','NetworkEngineering','Connectivity','Low','CampusBudget','2021-08-15','Installation','Coverage',95.0,'2023-09-01','AnalystC','FullCoverageAchieved','StraightLine');

-- Table for logging alumni network activities
CREATE TABLE alumni_network_activity_log
(
    log_id                   TEXT PRIMARY KEY,
    alumni_id                TEXT,
    activity_type            TEXT,
    activity_date            TEXT,
    location                 TEXT,
    organizer                TEXT,
    participants             INTEGER,
    description              TEXT,
    outcome                  TEXT,
    follow_up_needed        TEXT,
    follow_up_date          TEXT,
    responsible_staff        TEXT,
    notes                    TEXT,
    feedback_score           INTEGER,
    event_id                 TEXT,
    network_group            TEXT,
    sponsorship_status      TEXT,
    budget_used              REAL,
    attendance_count        INTEGER,
    media_coverage           TEXT
);

INSERT INTO alumni_network_activity_log VALUES
('AL001','ALU1001','Mentorship','2023-10-12','CampusHall','AlumniOffice',15,'Career mentoring session','Positive','Yes','2024-01-15','StaffA','N/A',8,'EVT500','TechAlumni','Sponsored',2000,15,'LocalNews'),
('AL002','ALU1002','Fundraising','2023-11-05','CommunityCenter','FundRaisingTeam',50,'Annual giving campaign','GoalMet','No','N/A','StaffB','Excellent response',9,'EVT501','HealthAlumni','Unsponsored',5000,50,'NationalTV'),
('AL003','ALU1003','Networking','2024-02-20','DowntownVenue','AlumniRelations',30,'Industry networking','New connections','Yes','2024-04-01','StaffC','Follow-up scheduled',7,'EVT502','BusinessAlumni','Sponsored',1500,30,'OnlineBlog');

-- Table describing community garden plots
CREATE TABLE community_garden_plot
(
    plot_id                  TEXT PRIMARY KEY,
    garden_name              TEXT,
    plot_number              INTEGER,
    size_sqft                REAL,
    soil_type                TEXT,
    assigned_resident        TEXT,
    tenancy_start_date       TEXT,
    tenancy_end_date         TEXT,
    crops_planted            TEXT,
    irrigation_system        TEXT,
    fertilizer_type          TEXT,
    maintenance_schedule     TEXT,
    pest_control_method     TEXT,
    harvest_date             TEXT,
    yield_quantity           REAL,
    volunteer_hours          INTEGER,
    community_events         TEXT,
    plot_status              TEXT,
    notes                    TEXT,
    last_inspection_date    TEXT
);

INSERT INTO community_garden_plot VALUES
('GP001','SunriseGarden',12,250.5,'Loamy','ResidentA','2023-03-01','2025-02-28','Tomatoes, Basil','Drip','Organic','Monthly','Integrated','2023-09-15',120.0,30,'HarvestFestival','Active','Well maintained','2023-12-01'),
('GP002','GreenValley',7,180.0,'Sandy','ResidentB','2022-05-15','2024-05-14','Lettuce, Carrots','Sprinkler','Synthetic','Biweekly','Chemical','2023-08-10',80.0,20,'CommunityPotluck','Active','Needs soil test','2023-11-15'),
('GP003','OakPark',20,300.0,'Clay','ResidentC','2024-01-10','2026-01-09','Pumpkin, Zucchini','RainBarrel','Compost','Quarterly','Natural','2024-10-20',200.0,45,'FallFestival','Pending','Soil amendment planned','2024-03-01');

-- Table for campus art collection inventory
CREATE TABLE campus_art_collection
(
    art_id                 TEXT PRIMARY KEY,
    title                  TEXT,
    artist                 TEXT,
    creation_year          INTEGER,
    medium                 TEXT,
    dimensions             TEXT,
    location               TEXT,
    acquisition_date       TEXT,
    acquisition_method     TEXT,
    value_estimate         REAL,
    insurance_policy       TEXT,
    condition_status       TEXT,
    conservation_history   TEXT,
    display_status         TEXT,
    loan_status            TEXT,
    loan_institution       TEXT,
    loan_start_date        TEXT,
    loan_end_date          TEXT,
    provenance             TEXT,
    notes                  TEXT
);

INSERT INTO campus_art_collection VALUES
('AR001','TheThinker','SculptorX',1995,'Bronze','2x3ft','MainHall','2000-06-15','Donation',50000,'PolicyA','Excellent','None','OnDisplay','NotOnLoan','N/A','N/A','N/A','EstateOfSculptorX','Flagship piece'),
('AR002','SunsetLandscape','PainterY',2010,'OilOnCanvas','48x36in','ArtsCenter','2012-09-10','Purchase',30000,'PolicyB','Good','Restored2020','InStorage','OnLoan','CityMuseum','2019-01-01','2021-12-31','GalleryAuction','On loan until 2022'),
('AR003','AbstractForms','ArtistZ',2018,'MixedMedia','30x30in','ScienceBuilding','2019-03-22','Gift',15000,'PolicyC','Fair','Framed2021','OnDisplay','NotOnLoan','N/A','N/A','N/A','ArtistZCollection','Modern addition');