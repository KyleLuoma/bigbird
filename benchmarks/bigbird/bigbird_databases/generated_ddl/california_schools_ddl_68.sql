```sql
/* ----------------------------------------------------------------------
   Table: student_exchange_partner_profiles
   Description: Details of international partner institutions for student exchanges
   ---------------------------------------------------------------------- */
CREATE TABLE student_exchange_partner_profiles (
    partner_id                 INTEGER PRIMARY KEY,
    partner_name               TEXT,
    country                    TEXT,
    institution_type           TEXT,
    agreement_start_date       INTEGER,
    agreement_end_date         INTEGER,
    contact_name               TEXT,
    contact_email              TEXT,
    program_focus              TEXT,
    exchange_capacity          INTEGER,
    funding_source             TEXT,
    active_flag                INTEGER,
    notes                      TEXT,
    created_at                 INTEGER,
    updated_at                 INTEGER,
    campus                     TEXT,
    department                 TEXT,
    language_offered           TEXT,
    visa_support_flag          INTEGER,
    evaluation_score           REAL
);

INSERT INTO student_exchange_partner_profiles (
    partner_id,partner_name,country,institution_type,agreement_start_date,
    agreement_end_date,contact_name,contact_email,program_focus,
    exchange_capacity,funding_source,active_flag,notes,created_at,
    updated_at,campus,department,language_offered,visa_support_flag,
    evaluation_score
) VALUES (
    1,'GlobalAcademy','Canada','University',20200101,20251231,
    'AliceSmith','alice.smith@gac.edu','STEM',30,'Grant',1,'Initial agreement',20200101,
    20200102,'MainCampus','Engineering','English',1,4.5
);
INSERT INTO student_exchange_partner_profiles (
    partner_id,partner_name,country,institution_type,agreement_start_date,
    agreement_end_date,contact_name,contact_email,program_focus,
    exchange_capacity,funding_source,active_flag,notes,created_at,
    updated_at,campus,department,language_offered,visa_support_flag,
    evaluation_score
) VALUES (
    2,'EuroArtsInstitute','Germany','College',20210315,20260314,
    'BerndKlein','bernd.klein@eai.de','Arts',15,'Private',1,'Renewed 2022',20210315,
    20210316,'NorthCampus','FineArts','German',0,3.8
);
INSERT INTO student_exchange_partner_profiles (
    partner_id,partner_name,country,institution_type,agreement_start_date,
    agreement_end_date,contact_name,contact_email,program_focus,
    exchange_capacity,funding_source,active_flag,notes,created_at,
    updated_at,campus,department,language_offered,visa_support_flag,
    evaluation_score
) VALUES (
    3,'SouthernTech','Australia','Institute',20220901,20280901,
    'JennaLee','jenna.lee@southtech.au','Technology',25,'Government',0,'Pending renewal',20220901,
    20220902,'EastCampus','IT','English',1,4.2
);

/* ----------------------------------------------------------------------
   Table: facility_hvac_system_logs
   Description: Routine inspection and maintenance logs for HVAC systems
   ---------------------------------------------------------------------- */
CREATE TABLE facility_hvac_system_logs (
    log_id                     INTEGER PRIMARY KEY,
    facility_id                TEXT,
    system_id                  TEXT,
    inspection_date            INTEGER,
    technician_name            TEXT,
    technician_id              TEXT,
    filter_change_date         INTEGER,
    coolant_level              REAL,
    temperature_setpoint       REAL,
    humidity_setpoint          REAL,
    fan_speed_rpm              INTEGER,
    power_consumption_kwh      REAL,
    maintenance_required_flag  INTEGER,
    comments                   TEXT,
    created_timestamp          INTEGER,
    updated_timestamp          INTEGER,
    hvac_type                  TEXT,
    serial_number              TEXT,
    warranty_expiration        INTEGER,
    next_scheduled_inspection  INTEGER
);

INSERT INTO facility_hvac_system_logs (
    log_id,facility_id,system_id,inspection_date,technician_name,technician_id,
    filter_change_date,coolant_level,temperature_setpoint,humidity_setpoint,
    fan_speed_rpm,power_consumption_kwh,maintenance_required_flag,comments,
    created_timestamp,updated_timestamp, hvac_type,serial_number,
    warranty_expiration,next_scheduled_inspection
) VALUES (
    101,'F001','HVAC-A','20230215','MikeT','T001',20230110,75.5,22.0,45.0,
    1500,320.5,0,'All parameters normal',20230216,20230216,
    'Central','SN12345',20280215,20240315
);
INSERT INTO facility_hvac_system_logs (
    log_id,facility_id,system_id,inspection_date,technician_name,technician_id,
    filter_change_date,coolant_level,temperature_setpoint,humidity_setpoint,
    fan_speed_rpm,power_consumption_kwh,maintenance_required_flag,comments,
    created_timestamp,updated_timestamp, hvac_type,serial_number,
    warranty_expiration,next_scheduled_inspection
) VALUES (
    102,'F002','HVAC-B','20230310','SaraK','T002',20230201,68.0,20.0,40.0,
    1300,280.0,1,'Coolant low, schedule refill',20230311,20230311,
    'ChilledWater','SN67890',20290310,20230410
);
INSERT INTO facility_hvac_system_logs (
    log_id,facility_id,system_id,inspection_date,technician_name,technician_id,
    filter_change_date,coolant_level,temperature_setpoint,humidity_setpoint,
    fan_speed_rpm,power_consumption_kwh,maintenance_required_flag,comments,
    created_timestamp,updated_timestamp, hvac_type,serial_number,
    warranty_expiration,next_scheduled_inspection
) VALUES (
    103,'F003','HVAC-C','20230405','LuisM','T003',20230320,80.2,23.0,50.0,
    1600,350.0,0,'Replaced filters',20230406,20230406,
    'VariableAirVolume','SN54321',20280405,20240505
);

/* ----------------------------------------------------------------------
   Table: technology_innovation_grant_applications
   Description: Records of grant applications for technology innovation projects
   ---------------------------------------------------------------------- */
CREATE TABLE technology_innovation_grant_applications (
    application_id            INTEGER PRIMARY KEY,
    applicant_school_code     TEXT,
    grant_year                INTEGER,
    grant_amount_requested    REAL,
    grant_amount_awarded      REAL,
    project_title             TEXT,
    project_description       TEXT,
    principal_investigator    TEXT,
    pi_email                  TEXT,
    start_date                INTEGER,
    end_date                  INTEGER,
    status                    TEXT,
    review_score              REAL,
    funding_source            TEXT,
    technology_area           TEXT,
    partners_involved         TEXT,
    total_staff               INTEGER,
    expected_outcomes         TEXT,
    compliance_flag           INTEGER,
    award_date                INTEGER
);

INSERT INTO technology_innovation_grant_applications (
    application_id,applicant_school_code,grant_year,grant_amount_requested,
    grant_amount_awarded,project_title,project_description,
    principal_investigator,pi_email,start_date,end_date,status,
    review_score,funding_source,technology_area,partners_involved,total_staff,
    expected_outcomes,compliance_flag,award_date
) VALUES (
    5001,'SCH001',2023,150000.00,120000.00,'AI Classroom Assistant',
    'Develop AI tools to support teachers', 'DrEmilyChen','echen@school.org',
    20230601,20250601,'Awarded',4.7,'StateEducation', 'ArtificialIntelligence',
    'TechCorp;EduPartners',12,'Improved test scores',1,20230715
);
INSERT INTO technology_innovation_grant_applications (
    application_id,applicant_school_code,grant_year,grant_amount_requested,
    grant_amount_awarded,project_title,project_description,
    principal_investigator,pi_email,start_date,end_date,status,
    review_score,funding_source,technology_area,partners_involved,total_staff,
    expected_outcomes,compliance_flag,award_date
) VALUES (
    5002,'SCH002',2024,200000.00,NULL,'VR Science Labs',
    'Virtual reality labs for STEM', 'MrJohnDoe','jdoe@school.org',
    20240115,20260115,'Pending',0.0,'FederalGrant','VirtualReality',
    'VRTechInc',8,'Enhanced engagement',0,NULL
);
INSERT INTO technology_innovation_grant_applications (
    application_id,applicant_school_code,grant_year,grant_amount_requested,
    grant_amount_awarded,project_title,project_description,
    principal_investigator,pi_email,start_date,end_date,status,
    review_score,funding_source,technology_area,partners_involved,total_staff,
    expected_outcomes,compliance_flag,award_date
) VALUES (
    5003,'SCH003',2022,95000.00,95000.00,'Data Analytics Platform',
    'Platform for school data analytics', 'MsLauraKim','lkim@school.org',
    20220901,20240901,'Awarded',4.2,'PrivateDonor','DataScience',
    'DataCorp',5,'Better resource allocation',1,20221005
);

/* ----------------------------------------------------------------------
   Table: district_emergency_response_resources
   Description: Inventory of resources available for district-wide emergency response
   ---------------------------------------------------------------------- */
CREATE TABLE district_emergency_response_resources (
    resource_id               INTEGER PRIMARY KEY,
    resource_type             TEXT,
    description               TEXT,
    quantity                  INTEGER,
    location                  TEXT,
    deployment_status         TEXT,
    last_inspection_date      INTEGER,
    next_inspection_date      INTEGER,
    responsible_department    TEXT,
    contact_person            TEXT,
    contact_phone             TEXT,
    acquisition_date          INTEGER,
    expiration_date           INTEGER,
    maintenance_cycle_days    INTEGER,
    condition_rating          INTEGER,
    storage_facility          TEXT,
    allocated_budget          REAL,
    vendor                    TEXT,
    warranty_years            INTEGER,
    notes                     TEXT
);

INSERT INTO district_emergency_response_resources (
    resource_id,resource_type,description,quantity,location,deployment_status,
    last_inspection_date,next_inspection_date,responsible_department,
    contact_person,contact_phone,acquisition_date,expiration_date,
    maintenance_cycle_days,condition_rating,storage_facility,allocated_budget,
    vendor,warranty_years,notes
) VALUES (
    9001,'MedicalKit','Standard first‑aid kits',120,'CentralWarehouse','Available',
    20230120,20240120,'HealthServices','Nina Patel','5551234567',
    20200101,20250101,365,9,'WarehouseA',25000.00,'MediSupply',5,'Reviewed annually'
);
INSERT INTO district_emergency_response_resources (
    resource_id,resource_type,description,quantity,location,deployment_status,
    last_inspection_date,next_inspection_date,responsible_department,
    contact_person,contact_phone,acquisition_date,expiration_date,
    maintenance_cycle_days,condition_rating,storage_facility,allocated_budget,
    vendor,warranty_years,notes
) VALUES (
    9002,'PortableGenerator','150kW generators',15,'NorthDepot','OnStandby',
    20230210,20240210,'Facilities','Omar Garcia','5559876543',
    20210215,20270215,730,8,'DepotNorth',75000.00,'PowerGen',7,'Fuel stored separately'
);
INSERT INTO district_emergency_response_resources (
    resource_id,resource_type,description,quantity,location,deployment_status,
    last_inspection_date,next_inspection_date,responsible_department,
    contact_person,contact_phone,acquisition_date,expiration_date,
    maintenance_cycle_days,condition_rating,storage_facility,allocated_budget,
    vendor,warranty_years,notes
) VALUES (
    9003,'CommunicationRadio','Handheld VHF radios',200,'AdminOffice','InUse',
    20230305,20240305,'IT','Laura Chen','5552223344',
    20191001,20241001,180,7,'OfficeStorage',12000.00,'RadioTech',3,'Batteries rotated quarterly'
);

/* ----------------------------------------------------------------------
   Table: school_art_gallery_inventory
   Description: Catalog of artworks displayed in school art galleries
   ---------------------------------------------------------------------- */
CREATE TABLE school_art_gallery_inventory (
    item_id                   INTEGER PRIMARY KEY,
    gallery_name              TEXT,
    item_title                TEXT,
    artist_name               TEXT,
    acquisition_date          INTEGER,
    acquisition_method        TEXT,
    medium                    TEXT,
    dimensions                TEXT,
    value_estimate            REAL,
    insurance_policy_number   TEXT,
    display_location          TEXT,
    condition_status          TEXT,
    last_restoration_date    INTEGER,
    current_owner             TEXT,
    loan_status               TEXT,
    loan_start_date           INTEGER,
    loan_end_date             INTEGER,
    donor_name                TEXT,
    donor_contact             TEXT,
    notes                     TEXT
);

INSERT INTO school_art_gallery_inventory (
    item_id,gallery_name,item_title,artist_name,acquisition_date,acquisition_method,
    medium,dimensions,value_estimate,insurance_policy_number,display_location,
    condition_status,last_restoration_date,current_owner,loan_status,
    loan_start_date,loan_end_date,donor_name,donor_contact,notes
) VALUES (
    3001,'MainGallery','Sunrise Over Hills','Anna Lee',20200115,'Purchase',
    'Oil on Canvas','48x36in',15000.00,'INS123456','HallA','Excellent',20220301,
    'School','Owned',NULL,NULL,'John Doe','5551112222','Featured in 2022 exhibition'
);
INSERT INTO school_art_gallery_inventory (
    item_id,gallery_name,item_title,artist_name,acquisition_date,acquisition_method,
    medium,dimensions,value_estimate,insurance_policy_number,display_location,
    condition_status,last_restoration_date,current_owner,loan_status,
    loan_start_date,loan_end_date,donor_name,donor_contact,notes
) VALUES (
    3002,'EastWing','Abstract Dreams','Luis Ramirez',20190520,'Donation',
    'Mixed Media','30x30in',8000.00,'INS654321','HallB','Good',20210110,
    'School','Loaned',20210701,20220701,'Maria Sanchez','5553334444','On loan to partner school 2021'
);
INSERT INTO school_art_gallery_inventory (
    item_id,gallery_name,item_title,artist_name,acquisition_date,acquisition_method,
    medium,dimensions,value_estimate,insurance_policy_number,display_location,
    condition_status,last_restoration_date,current_owner,loan_status,
    loan_start_date,loan_end_date,donor_name,donor_contact,notes
) VALUES (
    3003,'WestWing','Cityscape','Erik Wang',20180305,'Grant',
    'Acrylic','24x36in',12000.00,'INS789012','HallC','Fair',20200615,
    'School','Owned',NULL,NULL,'City Arts Council','5557778888','Requires conservation review'
);

/* ----------------------------------------------------------------------
   Table: parent_community_outreach_events
   Description: Records of events organized to engage parents and community members
   ---------------------------------------------------------------------- */
CREATE TABLE parent_community_outreach_events (
    event_id                  INTEGER PRIMARY KEY,
    event_name                TEXT,
    event_date                INTEGER,
    start_time                TEXT,
    end_time                  TEXT,
    location                  TEXT,
    organizer                 TEXT,
    target_audience           TEXT,
    expected_attendance       INTEGER,
    actual_attendance         INTEGER,
    feedback_score            REAL,
    event_type                TEXT,
    budget_allocated          REAL,
    sponsor_name              TEXT,
    sponsor_contact           TEXT,
    materials_provided        TEXT,
    refreshments_provided     INTEGER,
    safety_plan_flag          INTEGER,
    notes                     TEXT,
    follow_up_actions         TEXT
);

INSERT INTO parent_community_outreach_events (
    event_id,event_name,event_date,start_time,end_time,location,organizer,
    target_audience,expected_attendance,actual_attendance,feedback_score,
    event_type,budget_allocated,sponsor_name,sponsor_contact,
    materials_provided,refreshments_provided,safety_plan_flag,notes,
    follow_up_actions
) VALUES (
    8001,'Back to School Night','20230815','18:00','20:00','Gymnasium','ParentDept',
    'All Parents',200,188,4.2,'Information',5000.00,'LocalBank','5554445555',
    'Brochures;Slides',1,1,'Positive reception','Send thank‑you emails'
);
INSERT INTO parent_community_outreach_events (
    event_id,event_name,event_date,start_time,end_time,location,organizer,
    target_audience,expected_attendance,actual_attendance,feedback_score,
    event_type,budget_allocated,sponsor_name,sponsor_contact,
    materials_provided,refreshments_provided,safety_plan_flag,notes,
    follow_up_actions
) VALUES (
    8002,'STEM Workshop','20230910','09:00','12:00','ScienceLab','STEMDept',
    'Parents & Students',80,75,4.7,'Workshop',3000.00,'TechCo','5556667777',
    'Kits;Handouts',1,1,'Hands‑on activities','Post‑event survey distribution'
);
INSERT INTO parent_community_outreach_events (
    event_id,event_name,event_date,start_time,end_time,location,organizer,
    target_audience,expected_attendance,actual_attendance,feedback_score,
    event_type,budget_allocated,sponsor_name,sponsor_contact,
    materials_provided,refreshments_provided,safety_plan_flag,notes,
    follow_up_actions
) VALUES (
    8003,'College Prep Night','20231205','17:30','19:00','Auditorium','GuidanceDept',
    'Seniors & Parents',150,140,4.5,'Information',2500.00,'CollegeBoard','5559990000',
    'Brochures;Presentation',0,1,'High attendance','Provide application checklists'
);

/* ----------------------------------------------------------------------
   Table: municipal_park_facilities
   Description: Information about facilities located within municipal parks
   ---------------------------------------------------------------------- */
CREATE TABLE municipal_park_facilities (
    facility_id               INTEGER PRIMARY KEY,
    park_name                 TEXT,
    facility_type             TEXT,
    address                   TEXT,
    city                      TEXT,
    zip_code                  TEXT,
    opening_hours             TEXT,
    capacity                  INTEGER,
    wheelchair_accessible     INTEGER,
    lighting_type             TEXT,
    maintenance_contract      TEXT,
    last_renovation_date     INTEGER,
    built_year                INTEGER,
    water_feature_flag        INTEGER,
    playground_equipment      TEXT,
    sports_field_type         TEXT,
    concession_stand_flag     INTEGER,
    annual_visitors           INTEGER,
    funding_source            TEXT,
    notes                     TEXT
);

INSERT INTO municipal_park_facilities (
    facility_id,park_name,facility_type,address,city,zip_code,opening_hours,
    capacity,wheelchair_accessible,lighting_type,maintenance_contract,
    last_renovation_date,built_year,water_feature_flag,playground_equipment,
    sports_field_type,concession_stand_flag,annual_visitors,funding_source,notes
) VALUES (
    4001,'Riverfront Park','Picnic Pavilion','123 River Rd','Springfield','12345','06:00-22:00',
    120,1,'LED','ParkServicesLtd',20210115,2005,0,'SwingSet;Slides','Soccer',1,25000,'CityBudget','Renovated 2021'
);
INSERT INTO municipal_park_facilities (
    facility_id,park_name,facility_type,address,city,zip_code,opening_hours,
    capacity,wheelchair_accessible,lighting_type,maintenance_contract,
    last_renovation_date,built_year,water_feature_flag,playground_equipment,
    sports_field_type,concession_stand_flag,annual_visitors,funding_source,notes
) VALUES (
    4002,'Greenwood Park','Community Center','456 Oak St','Greenville','67890','07:00-20:00',
    300,1,'Solar','GreenKeepers',20200620,2010,1,'Fountain','Basketball',0,18000,'StateGrant','Added fountain 2020'
);
INSERT INTO municipal_park_facilities (
    facility_id,park_name,facility_type,address,city,zip_code,opening_hours,
    capacity,wheelchair_accessible,lighting_type,maintenance_contract,
    last_renovation_date,built_year,water_feature_flag,playground_equipment,
    sports_field_type,concession_stand_flag,annual_visitors,funding_source,notes
) VALUES (
    4003,'Lakeside Park','Amphitheater','789 Lakeview Dr','Lakeside','13579','08:00-23:00',
    500,0,'Halogen','EventPros',20190410,2015,0,'None','None',1,12000,'PrivateDonor','Hosts summer concerts'
);

/* ----------------------------------------------------------------------
   Table: school_transportation_fuel_efficiency
   Description: Fuel consumption and efficiency records for school transportation vehicles
   ---------------------------------------------------------------------- */
CREATE TABLE school_transportation_fuel_efficiency (
    record_id                 INTEGER PRIMARY KEY,
    bus_id                    TEXT,
    route_id                  TEXT,
    fuel_type                 TEXT,
    fuel_consumed_liters      REAL,
    distance_km               REAL,
    efficiency_kmpl           REAL,
    date_recorded             INTEGER,
    driver_name               TEXT,
    maintenance_flag          INTEGER,
    average_speed_kmph        REAL,
    emissions_kg              REAL,
    odometer_start            INTEGER,
    odometer_end              INTEGER,
    fuel_cost                 REAL,
    notes                     TEXT,
    supervisor                TEXT,
    shift_start               INTEGER,
    shift_end                 INTEGER,
    weather_conditions        TEXT
);

INSERT INTO school_transportation_fuel_efficiency (
    record_id,bus_id,route_id,fuel_type,fuel_consumed_liters,distance_km,
    efficiency_kmpl,date_recorded,driver_name,maintenance_flag,average_speed_kmph,
    emissions_kg,odometer_start,odometer_end,fuel_cost,notes,supervisor,
    shift_start,shift_end,weather_conditions
) VALUES (
    2101,'BUS-01','R101','Diesel',85.5,450.0,5.29,20230315,'Tom Green',0,45.2,210.0,150000,150500,125.75,'Normal operation','MsLaura',800,'1600','Clear'
);
INSERT INTO school_transportation_fuel_efficiency (
    record_id,bus_id,route_id,fuel_type,fuel_consumed_liters,distance_km,
    efficiency_kmpl,date_recorded,driver_name,maintenance_flag,average_speed_kmph,
    emissions_kg,odometer_start,odometer_end,fuel_cost,notes,supervisor,
    shift_start,shift_end,weather_conditions
) VALUES (
    2102,'BUS-02','R202','Diesel',92.0,500.0,5.43,20230410,'Sara Lee',1,43.8,225.0,151000,151500,138.00,'Maintenance due next month','MrJohn',900,'1700','Rain'
);
INSERT INTO school_transportation_fuel_efficiency (
    record_id,bus_id,route_id,fuel_type,fuel_consumed_liters,distance_km,
    efficiency_kmpl,date_recorded,driver_name,maintenance_flag,average_speed_kmph,
    emissions_kg,odometer_start,odometer_end,fuel_cost,notes,supervisor,
    shift_start,shift_end,weather_conditions
) VALUES (
    2103,'BUS-03','R303','Hybrid',70.2,420.0,5.99,20230505,'Luis Ramirez',0,46.5,175.5,152000,152420,112.30,'Hybrid performance good','MsEmily',700,'1500','Cloudy'
);

/* ----------------------------------------------------------------------
   Table: district_utility_costs_summary
   Description: Summary of utility consumption and costs for the district
   ---------------------------------------------------------------------- */
CREATE TABLE district_utility_costs_summary (
    summary_id                INTEGER PRIMARY KEY,
    fiscal_year               INTEGER,
    utility_type              TEXT,
    total_consumption         REAL,
    total_cost                REAL,
    cost_per_unit             REAL,
    peak_demand               REAL,
    peak_demand_date          INTEGER,
    provider_name             TEXT,
    contract_start_date       INTEGER,
    contract_end_date         INTEGER,
    renewable_percentage      REAL,
    emissions_factor          REAL,
    savings_initiative        TEXT,
    savings_amount            REAL,
    notes                     TEXT,
    approved_by               TEXT,
    approval_date             INTEGER,
    audit_flag                INTEGER,
    last_updated              INTEGER
);

INSERT INTO district_utility_costs_summary (
    summary_id,fiscal_year,utility_type,total_consumption,total_cost,cost_per_unit,
    peak_demand,peak_demand_date,provider_name,contract_start_date,contract_end_date,
    renewable_percentage,emissions_factor,savings_initiative,savings_amount,notes,
    approved_by,approval_date,audit_flag,last_updated
) VALUES (
    6001,2023,'Electricity',1250000.00,300000.00,0.24,25000,20230320,'PowerCo','20200101','20251231',
    15.0,0.45,'LED Upgrade',25000.00,'Yearly summary','Superintendent',20230401,1,20230405
);
INSERT INTO district_utility_costs_summary (
    summary_id,fiscal_year,utility_type,total_consumption,total_cost,cost_per_unit,
    peak_demand,peak_demand_date,provider_name,contract_start_date,contract_end_date,
    renewable_percentage,emissions_factor,savings_initiative,savings_amount,notes,
    approved_by,approval_date,audit_flag,last_updated
) VALUES (
    6002,2023,'Water',450000.00,90000.00,0.20,1200,20230215,'AquaSupply','20200101','20251231',
    5.0,0.10,'Low‑flow Fixtures',12000.00,'Included sewer charges','ChiefFinance',20230402,1,20230406
);
INSERT INTO district_utility_costs_summary (
    summary_id,fiscal_year,utility_type,total_consumption,total_cost,cost_per_unit,
    peak_demand,peak_demand_date,provider_name,contract_start_date,contract_end_date,
    renewable_percentage,emissions_factor,savings_initiative,savings_amount,notes,
    approved_by,approval_date,audit_flag,last_updated
) VALUES (
    6003,2023,'NaturalGas',800000.00,160000.00,0.20,5000,20230305,'GasPro','20200101','20251231',
    0.0,0.78,'Solar Heating',18000.00,'Adjusted for inflation','VicePresident',20230403,1,20230407
);

/* ----------------------------------------------------------------------
   Table: teacher_peer_observation_sessions
   Description: Records of peer observation sessions among teachers
   ---------------------------------------------------------------------- */
CREATE TABLE teacher_peer_observation_sessions (
    session_id                INTEGER PRIMARY KEY,
    observer_teacher_id       TEXT,
    observed_teacher_id       TEXT,
    observation_date          INTEGER,
    subject_area              TEXT,
    grade_level               TEXT,
    duration_minutes          INTEGER,
    rubric_score              REAL,
    feedback_summary          TEXT,
    follow_up_action          TEXT,
    classroom_id              TEXT,
    school_code               TEXT,
    district_code             TEXT,
    observation_type          TEXT,
    confidentiality_flag      INTEGER,
    recorded_by               TEXT,
    recorded_timestamp        INTEGER,
    approved_flag             INTEGER,
    notes                     TEXT,
    next_observation_date     INTEGER
);

INSERT INTO teacher_peer_observation_sessions (
    session_id,observer_teacher_id,observed_teacher_id,observation_date,
    subject_area,grade_level,duration_minutes,rubric_score,feedback_summary,
    follow_up_action,classroom_id,school_code,district_code,observation_type,
    confidentiality_flag,recorded_by,recorded_timestamp,approved_flag,notes,
    next_observation_date
) VALUES (
    7101,'T001','T010','20230312','Mathematics','8',45,4.5,'Strong engagement, clear explanations',
    'Plan collaborative lesson', 'CR101','SCH001','DIST01','Formal',0,'AdminA',20230313,1,'No concerns','20230415'
);
INSERT INTO teacher_peer_observation_sessions (
    session_id,observer_teacher_id,observed_teacher_id,observation_date,
    subject_area,grade_level,duration_minutes,rubric_score,feedback_summary,
    follow_up_action,classroom_id,school_code,district_code,observation_type,
    confidentiality_flag,recorded_by,recorded_timestamp,approved_flag,notes,
    next_observation_date
) VALUES (
    7102,'T002','T011','20230408','Science','7',50,4.0,'Good lab safety, needs pacing adjustments',
    'Provide pacing guide', 'CR202','SCH002','DIST01','Informal',0,'AdminB',20230409,1,'Follow‑up scheduled','20240501'
);
INSERT INTO teacher_peer_observation_sessions (
    session_id,observer_teacher_id,observed_teacher_id,observation_date,
    subject_area,grade_level,duration_minutes,rubric_score,feedback_summary,
    follow_up_action,classroom_id,school_code,district_code,observation_type,
    confidentiality_flag,recorded_by,recorded_timestamp,approved_flag,notes,
    next_observation_date
) VALUES (
    7103,'T003','T012','20230520','English','9',40,3.8,'Effective questioning, limited differentiation',
    'Introduce tiered activities', 'CR303','SCH003','DIST02','Formal',0,'AdminC',20230521,0,'Pending review','20230625'
);
```