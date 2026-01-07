-- Research studies conducted by the university
CREATE TABLE research_study
(
    study_id                TEXT PRIMARY KEY,
    title                   TEXT,
    start_date              TEXT,
    end_date                TEXT,
    funding_source          TEXT,
    total_budget            REAL,
    principal_investigator TEXT,
    department              TEXT,
    study_status            TEXT,
    description             TEXT,
    methodology             TEXT,
    data_repository         TEXT,
    ethics_approval         TEXT,
    participants            INTEGER,
    outcomes                TEXT,
    publications            INTEGER,
    granted_amount          REAL,
    review_score            REAL,
    notes                   TEXT,
    last_updated            TEXT
);

INSERT INTO research_study VALUES
('RS001','Study Alpha','2023-01-15','2024-06-30','FederalGrantA',250000.00,'DrSmith','Biology','Active','Investigation of gene X','Quantitative','repo01','Approved','120','Preliminary results','3',50000.00,4.5,'Initial phase','2024-01-10');

INSERT INTO research_study VALUES
('RS002','Study Beta','2022-05-01','2025-04-15','StateFundB',375000.00,'DrJones','Chemistry','Active','Catalyst development','Experimental','repo02','Pending','80','Ongoing','5',120000.00,4.2,'Awaiting final report','2024-02-20');

INSERT INTO research_study VALUES
('RS003','Study Gamma','2021-09-20','2023-12-31','PrivateDonorC',150000.00,'DrLee','Physics','Completed','Particle collision analysis','Simulation','repo03','Approved','200','Conclusive','8',150000.00,4.8,'Published in Journal X','2024-03-05');

-- Faculty hiring records
CREATE TABLE faculty_hiring
(
    hire_id                TEXT PRIMARY KEY,
    faculty_id             TEXT,
    first_name             TEXT,
    last_name              TEXT,
    position_title         TEXT,
    department             TEXT,
    hire_date              TEXT,
    contract_type          TEXT,
    salary                 REAL,
    tenure_track           TEXT,
    recruitment_source     TEXT,
    interview_panel        TEXT,
    decision_status        TEXT,
    start_term             TEXT,
    relocation_assistance  REAL,
    onboarding_complete    TEXT,
    background_check       TEXT,
    education_level        TEXT,
    professional_certifications TEXT,
    notes                  TEXT
);

INSERT INTO faculty_hiring VALUES
('FH001','F001','Alice','Brown','Assistant Professor','ComputerScience','2023-08-01','FullTime',85000,'Yes','Internal','PanelA','Approved','Fall2023',5000,'Yes','Cleared','PhD','None','First hire of year');

INSERT INTO faculty_hiring VALUES
('FH002','F002','Bob','Clark','Associate Professor','Mathematics','2022-07-15','FullTime',95000,'Yes','External','PanelB','Approved','Summer2022',3000,'Yes','Cleared','PhD','TeachingCertificate','Promoted from within');

INSERT INTO faculty_hiring VALUES
('FH003','F003','Carol','Davis','Lecturer','History','2024-01-10','PartTime',45000,'No','Referral','PanelC','Pending','Spring2024',0,'No','Pending','MA','None','Awaiting contract signature');

-- Student course enrollment details
CREATE TABLE student_course_enrollment
(
    enrollment_id          TEXT PRIMARY KEY,
    student_id             TEXT,
    course_id              TEXT,
    term                   TEXT,
    enrollment_status      TEXT,
    grade                  TEXT,
    credits                REAL,
    enrollment_date        TEXT,
    drop_deadline           TEXT,
    instructor_id          TEXT,
    class_section          TEXT,
    classroom_location     TEXT,
    schedule_days          TEXT,
    schedule_time          TEXT,
    attendance_percentage  REAL,
    midterm_score          REAL,
    final_score            REAL,
    prerequisite_met       TEXT,
    financial_aid_used     TEXT,
    notes                  TEXT
);

INSERT INTO student_course_enrollment VALUES
('EN001','STU001','CS101','Fall2023','Enrolled','A',3.0,'2023-08-20','2023-09-15','I001','001','RoomA','MonWedFri','09:00-10:00',95.0,88.0,92.0,'Yes','Full','Good performance');

INSERT INTO student_course_enrollment VALUES
('EN002','STU002','MATH201','Spring2024','Enrolled','B+',4.0,'2024-01-10','2024-02-01','I002','002','RoomB','TueThu','11:00-12:30',88.5,75.0,80.0,'Yes','Partial','Needs improvement');

INSERT INTO student_course_enrollment VALUES
('EN003','STU003','HIST150','Summer2024','Dropped','',3.0,'2024-05-01','2024-05-15','I003','003','RoomC','MonWed','14:00-15:30',0.0,0.0,0.0,'No','None','Dropped due to scheduling conflict');

-- Audit compliance tracking
CREATE TABLE audit_compliance
(
    audit_id               TEXT PRIMARY KEY,
    audit_type             TEXT,
    audit_date             TEXT,
    auditor_name           TEXT,
    department_responsible TEXT,
    findings_summary       TEXT,
    risk_level             TEXT,
    corrective_action      TEXT,
    action_owner           TEXT,
    due_date               TEXT,
    status                 TEXT,
    follow_up_date         TEXT,
    documentation_link     TEXT,
    compliance_score       REAL,
    notes                  TEXT,
    severity               TEXT,
    regulatory_reference  TEXT,
    financial_impact       REAL,
    recommendations        TEXT,
    closure_date           TEXT
);

INSERT INTO audit_compliance VALUES
('AU001','Financial','2023-11-20','JohnDoe','Finance','Minor discrepancies in reporting','Low','Update spreadsheet templates','JaneSmith','2023-12-15','Open','2024-01-10','link01',85.5,'No major issues','Low','Reg100','2000', 'Implement quarterly reviews','');

INSERT INTO audit_compliance VALUES
('AU002','IT Security','2024-02-05','AliceKim','IT','Vulnerability in server config','High','Patch servers and rotate keys','BobLee','2024-02-28','Open','2024-03-15','link02',60.0,'Immediate action required','High','Reg200','15000','Adopt hardened baseline','');

INSERT INTO audit_compliance VALUES
('AU003','Operational','2023-09-12','MikeChan','Operations','Process bottleneck identified','Medium','Redesign workflow','SaraNg','2023-10-10','Closed','2023-10-05','link03',78.0,'Improved efficiency','Medium','Reg300','5000','Introduce automation','2023-10-08');

-- Technology investment portfolio
CREATE TABLE technology_investment
(
    investment_id          TEXT PRIMARY KEY,
    project_name           TEXT,
    start_year             INTEGER,
    end_year               INTEGER,
    total_committed        REAL,
    annual_spending        REAL,
    technology_category    TEXT,
    vendor_name            TEXT,
    contract_number        TEXT,
    status                 TEXT,
    risk_assessment        TEXT,
    expected_roi           REAL,
    strategic_alignment    TEXT,
    governing_body         TEXT,
    approval_date          TEXT,
    implementation_phase   TEXT,
    key_milestones         TEXT,
    budget_variance        REAL,
    notes                  TEXT,
    last_review_date       TEXT
);

INSERT INTO technology_investment VALUES
('TI001','Campus Cloud Migration',2022,2025,1200000.00,400000.00,'Cloud Services','TechCloudInc','CN12345','InProgress','Medium',12.5,'High','Board','2022-03-01','Phase2','M1:M2:M3',-50000.00,'On schedule','2024-01-15');

INSERT INTO technology_investment VALUES
('TI002','Smart Classroom Upgrade',2023,2024,750000.00,375000.00,'AV Equipment','EduTechLtd','CN54321','Planned','Low',8.0,'Medium','Committee','2023-06-10','Planning','M1:M2',0.00,'Awaiting vendor selection','2024-02-20');

INSERT INTO technology_investment VALUES
('TI003','AI Research Lab',2021,2026,2000000.00,350000.00,'Artificial Intelligence','AIInnovate','CN67890','Active','High',15.0,'Strategic','Executive','2021-09-15','Construction','M1:M2:M3:M4',250000.00,'Construction delayed','2024-03-01');

-- Library branch operating hours
CREATE TABLE library_branch_hours
(
    branch_id              TEXT PRIMARY KEY,
    branch_name            TEXT,
    monday_open            TEXT,
    monday_close           TEXT,
    tuesday_open           TEXT,
    tuesday_close          TEXT,
    wednesday_open         TEXT,
    wednesday_close        TEXT,
    thursday_open          TEXT,
    thursday_close         TEXT,
    friday_open            TEXT,
    friday_close           TEXT,
    saturday_open          TEXT,
    saturday_close         TEXT,
    sunday_open            TEXT,
    sunday_close           TEXT,
    holiday_schedule       TEXT,
    special_events         TEXT,
    notes                  TEXT,
    last_updated           TEXT
);

INSERT INTO library_branch_hours VALUES
('LB001','Main Library','08:00','22:00','08:00','22:00','08:00','22:00','08:00','22:00','08:00','20:00','10:00','18:00','Closed','Closed','Closed','None','2024-01-01');

INSERT INTO library_branch_hours VALUES
('LB002','Science Library','09:00','20:00','09:00','20:00','09:00','20:00','09:00','20:00','09:00','19:00','09:00','17:00','Closed','Closed','Holiday2024','Exhibit Week','2024-02-15');

INSERT INTO library_branch_hours VALUES
('LB003','Arts Library','10:00','18:00','10:00','18:00','10:00','18:00','10:00','18:00','10:00','16:00','Closed','Closed','Closed','Closed','Closed','Summer Closure','2024-03-05');

-- Campus public transportation routes
CREATE TABLE campus_public_transport
(
    route_id               TEXT PRIMARY KEY,
    route_name             TEXT,
    start_point            TEXT,
    end_point              TEXT,
    total_stops            INTEGER,
    operating_hours_start  TEXT,
    operating_hours_end    TEXT,
    frequency_minutes      INTEGER,
    vehicle_type           TEXT,
    driver_id              TEXT,
    maintenance_status     TEXT,
    daily_ridership_est    INTEGER,
    fare_amount            REAL,
    accessibility_features TEXT,
    contact_number         TEXT,
    notes                  TEXT,
    last_inspection_date   TEXT,
    schedule_link          TEXT,
    carbon_emission_factor REAL,
    status                 TEXT
);

INSERT INTO campus_public_transport VALUES
('PT001','Blue Loop','North Gate','South Gate',15,'06:00','23:00',10,'ElectricBus','DR001','Good',2500,1.50,'WheelchairRamp','5551234','Peak times busy','2024-02-01','http://transit.univ/blue','0.05','Active');

INSERT INTO campus_public_transport VALUES
('PT002','Red Express','East Dorm','West Dorm',8,'07:00','22:00',15,'HybridShuttle','DR002','MaintenanceDue',1800,2.00,'LowFloor','5555678','Runs during exam weeks','2024-01-20','http://transit.univ/red','0.07','Active');

INSERT INTO campus_public_transport VALUES
('PT003','Green Shuttle','Central Parking','Library',5,'08:00','20:00',20,'DieselBus','DR003','Good',900,1.00,'None','5559012','Limited service on weekends','2023-12-15','http://transit.univ/green','0.12','Inactive');

-- Environmental grant awards
CREATE TABLE environmental_grant
(
    grant_id               TEXT PRIMARY KEY,
    grant_title            TEXT,
    awarding_body          TEXT,
    award_year             INTEGER,
    total_amount           REAL,
    duration_years         INTEGER,
    principal_investigator TEXT,
    department             TEXT,
    focus_area             TEXT,
    eligibility_criteria  TEXT,
    application_deadline   TEXT,
    status                 TEXT,
    funds_disbursed        REAL,
    reporting_requirements TEXT,
    project_start_date     TEXT,
    project_end_date       TEXT,
    sustainability_metrics TEXT,
    notes                  TEXT,
    last_report_date       TEXT,
    compliance_status      TEXT
);

INSERT INTO environmental_grant VALUES
('EG001','Urban Tree Canopy','EPA','2022',500000.00,3,'DrGreen','EnvironmentalScience','Urban Forestry','NonProfit','2022-03-01','Awarded',300000.00,'Quarterly','2022-04-15','2025-04-14','TreeCount,CanopyCoverage','Successful first year','2023-12-31','Compliant');

INSERT INTO environmental_grant VALUES
('EG002','Renewable Energy Lab','DOE','2023',750000.00,5,'DrSolar','Engineering','Solar Power','University','2023-06-15','Pending','0.00','Annual','2023-09-01','2028-08-31','EnergyOutput,CO2Reduction','Awaiting approval','2024-01-10','Pending');

INSERT INTO environmental_grant VALUES
('EG003','Coastal Restoration','NOAA','2021',400000.00,2,'DrWave','MarineBiology','Habitat Restoration','StateAgency','2021-02-10','Completed',400000.00,'Final','2021-05-01','2023-04-30','AcreRestored,SpeciesReturn','Project completed','2023-05-15','Compliant');

-- Student scholar award records
CREATE TABLE student_scholar_award
(
    award_id               TEXT PRIMARY KEY,
    student_id             TEXT,
    award_name             TEXT,
    award_year             INTEGER,
    amount                 REAL,
    sponsor                TEXT,
    award_category         TEXT,
    eligibility_criteria  TEXT,
    selection_process      TEXT,
    award_date             TEXT,
    renewal_required       TEXT,
    renewal_deadline       TEXT,
    renewal_amount         REAL,
    notes                  TEXT,
    academic_program       TEXT,
    gpa_requirement        REAL,
    extracurriculars       TEXT,
    community_service_hours INTEGER,
    status                 TEXT,
    last_updated           TEXT
);

INSERT INTO student_scholar_award VALUES
('SA001','STU010','Excellence in STEM','2023',10000,'TechCorp','Merit','GPA>3.5','Committee Review','2023-05-01','No','','0','Awarded for research','ComputerScience',3.7,'Robotics Club',50,'Active','2024-02-20');

INSERT INTO student_scholar_award VALUES
('SA002','STU011','Community Leadership Grant','2022',5000,'CivicTrust','Need','FinancialNeed','Essay Submission','2022-08-15','Yes','2023-08-15',2000,'Renewed based on service','SocialWork',3.2,'Volunteer Corps',120,'Renewed','2024-01-12');

INSERT INTO student_scholar_award VALUES
('SA003','STU012','Arts Innovation Scholarship','2024',7500,'ArtsFoundation','Merit','PortfolioReview','Panel Interview','2024-02-10','No','','0','Supports creative projects','FineArts',3.8','Art Club',30,'Pending','2024-02-25');

-- Facility access request log
CREATE TABLE facility_access_request
(
    request_id             TEXT PRIMARY KEY,
    requester_id           TEXT,
    facility_name          TEXT,
    request_date           TEXT,
    requested_start        TEXT,
    requested_end          TEXT,
    purpose_description    TEXT,
    access_level           TEXT,
    approver_id            TEXT,
    approval_status        TEXT,
    approval_date          TEXT,
    notes                  TEXT,
    equipment_needed       TEXT,
    security_clearance     TEXT,
    visitor_count          INTEGER,
    special_requirements   TEXT,
    duration_minutes       INTEGER,
    cost_estimate          REAL,
    compliance_check       TEXT,
    last_modified          TEXT
);

INSERT INTO facility_access_request VALUES
('FA001','STU020','Physics Lab','2024-03-01','2024-03-10 09:00','2024-03-10 12:00','Experiment on optics','Standard','FAU001','Approved','2024-03-02','All safety gear provided','LaserSetup','Level2',3,'None',180,150.00,'Passed','2024-03-02');

INSERT INTO facility_access_request VALUES
('FA002','STU021','Art Studio','2024-03-05','2024-03-20 14:00','2024-03-20 18:00','Sculpture project','Restricted','FAU002','Pending','',' ','ClayMaterials','Level1',2,'Ventilation needed',240,200.00,'Pending','2024-03-05');

INSERT INTO facility_access_request VALUES
('FA003','STU022','Conference Hall','2024-04-01','2024-04-15 08:00','2024-04-15 17:00','Guest lecture series','Full','FAU003','Rejected','2024-04-02','Over capacity','AudioVisual','Level3',150,'Seating arrangement',540,500.00,'Failed','2024-04-02');

-- Campus water quality monitoring stations
CREATE TABLE water_quality_station
(
    station_id             TEXT PRIMARY KEY,
    location_name          TEXT,
    latitude               REAL,
    longitude              REAL,
    installation_date      TEXT,
    sensor_type            TEXT,
    parameter_measured     TEXT,
    measurement_unit       TEXT,
    calibration_date       TEXT,
    last_maintenance_date  TEXT,
    data_upload_frequency  INTEGER,
    data_source_url        TEXT,
    alerts_enabled         TEXT,
    alert_threshold_low   REAL,
    alert_threshold_high  REAL,
    responsible_team       TEXT,
    status                 TEXT,
    notes                  TEXT,
    last_data_timestamp    TEXT,
    compliance_status      TEXT
);

INSERT INTO water_quality_station VALUES
('WQ001','North Reservoir',40.7128,-74.0060,'2022-05-10','Multiparameter','pH','Units','2023-05-01','2024-01-15',60,'http://data.univ/wq001','Yes',6.5,8.5,'EnvTeam','Active','Routine monitoring','2024-03-31 12:00','Compliant');

INSERT INTO water_quality_station VALUES
('WQ002','South Stream',40.7135,-74.0100,'2021-09-20','Conductivity','Conductivity','µS/cm','2022-09-15','2023-12-01',30,'http://data.univ/wq002','Yes',150,300,'EnvTeam','Active','Minor fluctuations observed','2024-03-30 08:00','Compliant');

INSERT INTO water_quality_station VALUES
('WQ003','East Drainage',40.7150,-74.0085,'2023-01-12','Temperature','Temperature','°C','2023-07-01','2024-02-20',15,'http://data.univ/wq003','No',0,0,'EnvTeam','Inactive','Station decommissioned','2023-12-31 00:00','N/A');

-- Campus renewable energy assets
CREATE TABLE renewable_energy_asset
(
    asset_id               TEXT PRIMARY KEY,
    asset_type             TEXT,
    location               TEXT,
    installation_date      TEXT,
    capacity_kw            REAL,
    current_output_kw      REAL,
    operational_status     TEXT,
    maintenance_schedule   TEXT,
    last_maintenance_date  TEXT,
    provider_company       TEXT,
    contract_number        TEXT,
    expected_lifetime_years INTEGER,
    depreciation_method    TEXT,
    net_generation_total   REAL,
    carbon_offset_tonnes   REAL,
    financing_source       TEXT,
    ownership_type         TEXT,
    notes                  TEXT,
    last_inspection_date   TEXT,
    compliance_status      TEXT
);

INSERT INTO renewable_energy_asset VALUES
('RE001','Solar Panel','North Rooftop','2020-03-15',500.0,420.0,'Operating','Annual','2024-01-10','SunPower','CN78901',25,'StraightLine',3500000.0,2000.0','Grant','University','No issues','2024-02-01','Compliant');

INSERT INTO renewable_energy_asset VALUES
('RE002','Wind Turbine','East Field','2021-07-01',1500.0,1100.0,'Operating','Biannual','2023-11-20','WindCo','CN78902',20,'DecliningBalance',2500000.0,1200.0','Bond','University','Routine checks','2024-03-05','Compliant');

INSERT INTO renewable_energy_asset VALUES
('RE003','Geothermal','South Campus','2022-11-20',800.0,600.0,'Maintenance','Quarterly','2024-02-15','GeoEnergy','CN78903',30,'StraightLine',0.0,0.0','Loan','University','Minor leak under repair','2024-02-28','UnderMaintenance');