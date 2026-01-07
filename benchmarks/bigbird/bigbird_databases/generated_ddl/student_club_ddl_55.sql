-- Energy source details for campus power grid
CREATE TABLE campus_energy_source_detail
(
    source_id               TEXT PRIMARY KEY,
    source_name             TEXT,
    type                    TEXT,
    capacity_mw             REAL,
    installation_date       TEXT,
    last_inspection_date    TEXT,
    status                  TEXT,
    owner                   TEXT,
    contact_email           TEXT,
    contact_phone           TEXT,
    region                  TEXT,
    grid_connection_point   TEXT,
    average_output_mwh      REAL,
    maintenance_cycle_months INTEGER,
    last_maintenance_date   TEXT,
    efficiency_percent      REAL,
    emission_factor         REAL,
    notes                   TEXT,
    latitude                REAL,
    longitude               REAL,
    operational_since       TEXT,
    decommission_date       TEXT
);

INSERT INTO campus_energy_source_detail VALUES ('SRC001','SolarArrayNorth','Solar',15.2,'2020-03-15','2023-02-10','Active','UniversityFacilities','energy@northexample.edu','5551234567','NorthCampus','NP-01',120.5,12,'2023-01-20',18.5,0.05,'Initial commission',40.7128,-74.0060,'2020-03-15',NULL);
INSERT INTO campus_energy_source_detail VALUES ('SRC002','WindTurbineEast','Wind',5.8,'2018-07-22','2022-11-05','Active','RenewablePartners','wind@eastexample.org','5559876543','EastCampus','EP-07',45.3,24,'2022-10-18',22.0,0.03,'Routine maintenance',40.7306,-73.9352,'2018-07-22',NULL);
INSERT INTO campus_energy_source_detail VALUES ('SRC003','GeothermalWest','Geothermal',2.5,'2015-01-10','2021-06-30','Retired','GeoEnergyCo','geo@westexample.com','5555551122','WestCampus','WP-03',30.0,36,'2021-05-14',19.8,0.01','Decommissioned due to low output',40.7580,-73.9855,'2015-01-10','2024-12-31');

-- Log of preservation tasks performed on library collections
CREATE TABLE library_preservation_task_log
(
    task_id                TEXT PRIMARY KEY,
    collection_id          TEXT,
    item_id                TEXT,
    preservation_method    TEXT,
    initiated_by           TEXT,
    assigned_to            TEXT,
    start_date             TEXT,
    end_date               TEXT,
    status                 TEXT,
    materials_used         TEXT,
    cost                   REAL,
    funding_source         TEXT,
    priority               INTEGER,
    notes                  TEXT,
    temperature_control    INTEGER,
    humidity_control       INTEGER,
    light_exposure_level   REAL,
    handling_instructions  TEXT,
    reviewed_by            TEXT,
    review_date            TEXT,
    document_reference     TEXT
);

INSERT INTO library_preservation_task_log VALUES ('TASK001','COLL001','ITEM123','Deacidification','CuratorA','TechnicianX','2023-01-05','2023-01-07','Completed','DeacidificationSolution',250.00,'PreservationGrant',1,'No issues',1,1,0.5,'Handle with gloves',HeadCurator,'2023-01-08','DOCREF001');
INSERT INTO library_preservation_task_log VALUES ('TASK002','COLL002','ITEM456','ClimateControlledStorage','CuratorB','TechnicianY','2023-02-10','2023-02-20','InProgress','HumidityRegulators',0,'InternalFunds',2,'Monitoring ongoing',1,1,0.2,'Store at 18C',HeadCurator,'2023-02-21','DOCREF002');
INSERT INTO library_preservation_task_log VALUES ('TASK003','COLL003','ITEM789','DigitalScanning','CuratorC','TechnicianZ','2023-03-15','2023-03-16','Completed','ScannerModelX',500.00,'ExternalSponsor',3,'High priority',0,0,0,'Scanned at 600dpi',HeadCurator,'2023-03-17','DOCREF003');

-- Training modules offered by health services
CREATE TABLE health_service_training_module
(
    module_id            TEXT PRIMARY KEY,
    module_name          TEXT,
    department           TEXT,
    duration_hours       REAL,
    delivery_method      TEXT,
    instructor           TEXT,
    language             TEXT,
    target_audience      TEXT,
    prerequisite         TEXT,
    certification        INTEGER,
    max_participants     INTEGER,
    scheduled_date       TEXT,
    location             TEXT,
    cost                 REAL,
    material_url         TEXT,
    assessment_type      TEXT,
    passing_score        REAL,
    updated_at           TEXT,
    status               TEXT,
    notes                TEXT
);

INSERT INTO health_service_training_module VALUES ('MOD001','FirstAidBasics','Emergency','4','Online','NurseA','English','AllStaff','None',1,30,'2023-04-10','Room101',0,'http://example.com/firstaid','Quiz',80,'2023-04-01','Active','Mandatory for new hires');
INSERT INTO health_service_training_module VALUES ('MOD002','MentalHealthAwareness','Psychology','3','InPerson','CounselorB','English','AllStudents','None',1,50,'2023-05-05','Room202',0,'http://example.com/mentalhealth','Survey',70,'2023-04-20','Scheduled','Open to all students');
INSERT INTO health_service_training_module VALUES ('MOD003','RadiologySafety','Radiology','2','Hybrid','TechnicianC','English','RadiologyStaff','BasicRadiology',1,20,'2023-06-15','Room303',0,'http://example.com/rad_safety','Test',85,'2023-05-30','Planned','Required annually');

-- Maintenance schedule for campus vehicle fleet
CREATE TABLE fleet_maintenance_schedule
(
    schedule_id               TEXT PRIMARY KEY,
    vehicle_id                TEXT,
    maintenance_type          TEXT,
    service_center           TEXT,
    contact_number            TEXT,
    scheduled_start          TEXT,
    scheduled_end            TEXT,
    odometer_km               INTEGER,
    estimated_cost           REAL,
    parts_required           TEXT,
    technician               TEXT,
    approved_by              TEXT,
    approval_date            TEXT,
    status                   TEXT,
    notes                    TEXT,
    last_service_date        TEXT,
    next_service_due         TEXT,
    mileage_interval         INTEGER,
    service_category         TEXT,
    warranty_status          TEXT,
    fuel_type                TEXT,
    engine_type              TEXT,
    last_updated             TEXT
);

INSERT INTO fleet_maintenance_schedule VALUES ('SCH001','VEH001','OilChange','MainGarage','5551112222','2023-07-01','2023-07-01',12000,150.00,'OilFilter,EngineOil','TechA','MgrA','2023-06-20','Scheduled','Check brakes',NULL,NULL,5000,'Routine','Valid','Diesel','V8','2023-06-20');
INSERT INTO fleet_maintenance_schedule VALUES ('SCH002','VEH002','TireRotation','NorthGarage','5553334444','2023-07-15','2023-07-15',30000,80.00,'None','TechB','MgrB','2023-07-01','Pending','Rotate front/back',NULL,NULL,10000,'Routine','Expired','Gasoline','I4','2023-07-01');
INSERT INTO fleet_maintenance_schedule VALUES ('SCH003','VEH003','BrakeInspection','EastGarage','5555556666','2023-08-05','2023-08-05',45000,200.00,'BrakePads','TechC','MgrC','2023-07-20','Confirmed','Replace pads if needed',NULL,NULL,15000,'Safety','Valid','Electric','Electric','2023-07-20');

-- Records of art installations on campus
CREATE TABLE campus_art_installation_record
(
    installation_id           TEXT PRIMARY KEY,
    artwork_title             TEXT,
    artist_name               TEXT,
    medium                    TEXT,
    dimensions                TEXT,
    installation_date         TEXT,
    location_on_campus        TEXT,
    commissioning_body        TEXT,
    budget                    REAL,
    status                    TEXT,
    maintenance_plan          TEXT,
    contact_person            TEXT,
    contact_email             TEXT,
    insurance_policy          TEXT,
    risk_assessment           TEXT,
    lighting_requirements     TEXT,
    interactive               INTEGER,
    viewing_hours             TEXT,
    public_engagement_event   TEXT,
    notes                     TEXT,
    latitude                  REAL,
    longitude                 REAL
);

INSERT INTO campus_art_installation_record VALUES ('INST001','River Flow','ArtistA','Bronze','200x50x30','2022-09-10','Central Plaza','ArtsCouncil',12000.00,'Installed','AnnualInspection','JohnDoe','jdoe@example.edu','POL12345','Low','Spotlight',0,'08:00-22:00','OpeningCeremony','Celebrates water cycle',40.7128,-74.0060);
INSERT INTO campus_art_installation_record VALUES ('INST002','Digital Skyline','ArtistB','LED','Variable','2023-03-20','Tech Quad','UniversityBoard',25000.00,'Installed','QuarterlyCheck','JaneSmith','jsmith@example.edu','POL67890','Medium','AmbientGlow',1,'09:00-20:00','TechFest2023','Interactive light display',40.7306,-73.9352);
INSERT INTO campus_art_installation_record VALUES ('INST003','Stone Whisper','ArtistC','Stone','180x180x180','2021-05-05','North Garden','CommunityDonors',8000.00,'Removed','DecommissionPlan','MikeBrown','mbrown@example.edu','POL11223','High','None',0,'Disabled','N/A','Removed due to erosion',40.7580,-73.9855);

-- Carbon emission tracking for campus activities
CREATE TABLE carbon_emission_record
(
    record_id               TEXT PRIMARY KEY,
    source_type             TEXT,
    source_id               TEXT,
    year                    INTEGER,
    month                   INTEGER,
    emission_tco2e          REAL,
    scope                   TEXT,
    measurement_method      TEXT,
    verification_status     TEXT,
    reported_by             TEXT,
    report_date             TEXT,
    adjustments             REAL,
    notes                   TEXT,
    region                  TEXT,
    department              TEXT,
    activity_detail         TEXT,
    energy_consumed_mwh     REAL,
    fuel_used_liters        REAL,
    carbon_intensity        REAL,
    offsets_purchased       REAL,
    offset_type             TEXT
);

INSERT INTO carbon_emission_record VALUES ('EMR001','Electricity','SRC001',2023,6,45.2,'Scope2','MeterReading','Verified','EnergyTeam','2023-07-01',0,'No adjustments','NorthCampus','Facilities','BuildingOperations',1500.0,0,0.030,'0','None');
INSERT INTO carbon_emission_record VALUES ('EMR002','VehicleFleet','VEH001',2023,6,12.5,'Scope1','FuelLog','Pending','TransportDept','2023-07-02',-0.5,'Adjusted for idle time','EastCampus','Transport','ShuttleService',0,800,0.015,'0','None');
INSERT INTO carbon_emission_record VALUES ('EMR003','Heating','HEAT001',2023,6,30.0,'Scope1','UtilityBill','Verified','Facilities','2023-07-03',0,'Initial report','WestCampus','Facilities','WinterHeating',2000.0,5000,0.025,'5','Forest');

-- Matching alumni mentors with current students
CREATE TABLE alumni_mentor_match
(
    match_id                TEXT PRIMARY KEY,
    mentor_alumni_id        TEXT,
    mentee_student_id       TEXT,
    program_name            TEXT,
    start_date              TEXT,
    end_date                TEXT,
    meeting_frequency       TEXT,
    communication_method    TEXT,
    goals                   TEXT,
    status                  TEXT,
    mentor_role             TEXT,
    mentee_major            TEXT,
    mentor_experience_years INTEGER,
    mentor_department       TEXT,
    evaluation_score        REAL,
    feedback                TEXT,
    confidential            INTEGER,
    assigned_coordinator    TEXT,
    review_date             TEXT,
    notes                   TEXT
);

INSERT INTO alumni_mentor_match VALUES ('MTCH001','ALM001','STU001','CareerPath','2023-01-15','2023-12-15','Monthly','Email','Resume building and networking','Active','Professional','ComputerScience',15,'Engineering',85.0,'Positive','1','CoordinatorA','2023-06-01','First half of the year completed');
INSERT INTO alumni_mentor_match VALUES ('MTCH002','ALM002','STU002','ResearchMentor','2023-02-01','2023-11-30','Biweekly','VideoCall','Graduate research planning','Active','Researcher','Biology',20,'LifeSciences',90.0,'Excellent','1','CoordinatorB','2023-07-01','Midway review scheduled');
INSERT INTO alumni_mentor_match VALUES ('MTCH003','ALM003','STU003','Entrepreneurship','2023-03-10','2024-03-09','Quarterly','Phone','Startup launch strategies','Pending','Entrepreneur','Business',10,'BusinessSchool',0,NULL,'0','CoordinatorC','2023-08-01','Awaiting mentee confirmation');

-- Safety inspections conducted in university labs
CREATE TABLE lab_safety_inspection
(
    inspection_id            TEXT PRIMARY KEY,
    lab_id                  TEXT,
    inspector_id            TEXT,
    inspection_date         TEXT,
    inspection_type         TEXT,
    status                  TEXT,
    hazard_findings         TEXT,
    corrective_actions      TEXT,
    deadline                TEXT,
    followup_date           TEXT,
    compliance_score        REAL,
    notes                   TEXT,
    equipment_checked       TEXT,
    chemical_inventory_checked INTEGER,
    ppe_compliance          INTEGER,
    ventilation_status      TEXT,
    fire_suppression_status TEXT,
    training_records_verified INTEGER,
    regulatory_reference    TEXT,
    signature               TEXT,
    updated_at              TEXT,
    recorded_by             TEXT
);

INSERT INTO lab_safety_inspection VALUES ('INSP001','LABA','INSP100','2023-04-20','Annual','Pass','None','N/A','N/A','2023-05-01',98.5,'All clear','All equipment operational',1,1,'Good','Operational','Yes','OSHA-1910','SIG001','2023-04-21','SafetyOfficerA');
INSERT INTO lab_safety_inspection VALUES ('INSP002','LABB','INSP101','2023-05-15','Quarterly','Conditional','Spill near sink','Clean and re-label containers','2023-05-30','2023-06-10',85.0,'Minor issue noted','Spectrometer, Centrifuge',0,1,'Adequate','Needs upgrade','No','EPA-40CFR','SIG002','2023-05-16','SafetyOfficerB');
INSERT INTO lab_safety_inspection VALUES ('INSP003','LABC','INSP102','2023-06-10','Special','Fail','Blocked exhaust','Clear vent and replace filter','2023-06-25','2023-07-05',60.0,'Significant hazards', 'Fume hood, Bunsen burners',1,0,'Blocked','Defective','No','StateLabReg','SIG003','2023-06-11','SafetyOfficerC');

-- City infrastructure projects linked to campus development
CREATE TABLE city_infrastructure_project
(
    project_id                TEXT PRIMARY KEY,
    project_name              TEXT,
    category                  TEXT,
    funding_source            TEXT,
    budget                    REAL,
    start_date                TEXT,
    estimated_end_date        TEXT,
    actual_end_date           TEXT,
    project_manager           TEXT,
    contractor                TEXT,
    status                    TEXT,
    phase                     TEXT,
    milestones                TEXT,
    risk_level                TEXT,
    environmental_impact      TEXT,
    community_engagement_plan TEXT,
    permits_required          TEXT,
    latitude                  REAL,
    longitude                 REAL,
    area_sq_km                REAL,
    expected_traffic_change   REAL,
    public_comment_summary    TEXT,
    notes                     TEXT,
    last_updated              TEXT
);

INSERT INTO city_infrastructure_project VALUES ('CIP001','Campus Shuttle Expansion','Transportation','MunicipalGrant',2000000.00,'2023-03-01','2024-09-30',NULL,'LauraGreen','BuildCo','InProgress','Construction','Phase1Complete,Phase2Pending','Medium','Low','Public meetings quarterly','Zoning,Environmental',40.7128,-74.0060,0.5,12.5,'Positive feedback overall','Adding new routes','2023-07-15');
INSERT INTO city_infrastructure_project VALUES ('CIP002','Green Roof Initiative','Sustainability','UniversityFund',500000.00,'2023-05-15','2023-12-31',NULL,'MarkBrown','EcoBuilders','Planned','Design','ConceptApproved','Low','High','Student workshops','BuildingPermit',40.7306,-73.9352,0.2,0,'Mixed reactions','Focus on energy efficiency','2023-07-20');
INSERT INTO city_infrastructure_project VALUES ('CIP003','Riverbank Restoration','Environmental','StateAid',750000.00,'2022-11-10','2024-04-30',NULL,'SusanLee','RiverWorks','Delayed','Planning','StakeholderReview','High','High','Community clean-up events','EnvironmentalPermit',40.7580,-73.9855,1.0,-8.0,'Concern over timelines','Improving flood resilience','2023-07-18');

-- Attendance records for virtual events
CREATE TABLE virtual_event_attendance
(
    attendance_id          TEXT PRIMARY KEY,
    event_id               TEXT,
    session_id             TEXT,
    attendee_id            TEXT,
    attendance_timestamp   TEXT,
    device_type            TEXT,
    ip_address             TEXT,
    location               TEXT,
    duration_minutes       INTEGER,
    engagement_score       REAL,
    feedback_rating        INTEGER,
    questions_asked        INTEGER,
    polls_participated     INTEGER,
    chat_messages          INTEGER,
    video_quality          TEXT,
    audio_quality          TEXT,
    network_latency_ms     REAL,
    recorded               INTEGER,
    notes                  TEXT,
    source_platform        TEXT
);

INSERT INTO virtual_event_attendance VALUES ('VA001','EVT100','SES1','ATT001','2023-07-10 14:02:15','Laptop','192.168.1.10','NewYork','45',78.5,4,2,1,15,'HD','Clear',35.2,1,'Good connection','Zoom');
INSERT INTO virtual_event_attendance VALUES ('VA002','EVT100','SES1','ATT002','2023-07-10 14:05:40','Mobile','192.168.1.20','Boston','40',65.0,3,0,0,5,'SD','Muffled',80.7,1,'Audio lag','Zoom');
INSERT INTO virtual_event_attendance VALUES ('VA003','EVT101','SES2','ATT003','2023-07-12 09:15:00','Desktop','192.168.2.5','Chicago','60',88.0,5,3,2,20,'FullHD','Clear',25.0,0,'No issues','Teams');