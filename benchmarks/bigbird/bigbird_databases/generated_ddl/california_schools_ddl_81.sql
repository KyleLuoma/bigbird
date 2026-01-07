```sql
/* Community Partner Grants */
CREATE TABLE community_partner_grants (
    grant_id            TEXT    NOT NULL PRIMARY KEY,
    partner_name        TEXT    NULL,
    grant_title         TEXT    NULL,
    grant_amount        REAL    NULL,
    award_year          INTEGER NULL,
    grant_type          TEXT    NULL,
    funding_agency      TEXT    NULL,
    application_status  TEXT    NULL,
    project_start_date  DATE    NULL,
    project_end_date    DATE    NULL,
    reporting_frequency TEXT    NULL,
    contact_name        TEXT    NULL,
    contact_email       TEXT    NULL,
    contact_phone       TEXT    NULL,
    matching_funds      REAL    NULL,
    total_budget        REAL    NULL,
    purpose_category    TEXT    NULL,
    geographic_scope    TEXT    NULL,
    eligibility_criteria TEXT   NULL,
    submission_deadline DATE    NULL,
    renewal_allowed     INTEGER NULL,
    notes               TEXT    NULL,
    created_at          DATE    NOT NULL,
    updated_at          DATE    NOT NULL
);
INSERT INTO community_partner_grants (grant_id,partner_name,grant_title,grant_amount,award_year,grant_type,funding_agency,application_status,project_start_date,project_end_date,reporting_frequency,contact_name,contact_email,contact_phone,matching_funds,total_budget,purpose_category,geographic_scope,eligibility_criteria,submission_deadline,renewal_allowed,notes,created_at,updated_at)
VALUES ('G001','HealthOrg','WellnessSchools',50000,2022,'Competitive','StateDept','Awarded','2022-09-01','2023-08-31','Quarterly','AliceSmith','alice.smith@healthorg.org','5551234567',10000,60000,'Health','County','Nonprofit','2022-06-15',1,'Initial award','2022-01-01','2022-01-01');
INSERT INTO community_partner_grants (grant_id,partner_name,grant_title,grant_amount,award_year,grant_type,funding_agency,application_status,project_start_date,project_end_date,reporting_frequency,contact_name,contact_email,contact_phone,matching_funds,total_budget,purpose_category,geographic_scope,eligibility_criteria,submission_deadline,renewal_allowed,notes,created_at,updated_at)
VALUES ('G002','EduFund','STEMExpansion',75000,2023,'Grant','FederalAgency','Pending','2023-07-01','2024-06-30','SemiAnnual','BobJones','bob.jones@edufund.org','5559876543',25000,100000,'Education','State','PublicSchool','2023-03-01',0,'Awaiting approval','2023-01-15','2023-01-15');
INSERT INTO community_partner_grants (grant_id,partner_name,grant_title,grant_amount,award_year,grant_type,funding_agency,application_status,project_start_date,project_end_date,reporting_frequency,contact_name,contact_email,contact_phone,matching_funds,total_budget,purpose_category,geographic_scope,eligibility_criteria,submission_deadline,renewal_allowed,notes,created_at,updated_at)
VALUES ('G003','GreenFuture','SolarSchools',120000,2021,'Challenge','StateEnergyDept','Awarded','2021-04-15','2024-04-14','Annual','CarolLee','carol.lee@greenfuture.org','5553210987',30000,150000,'Environment','Regional','PublicPrivate','2021-01-30',1,'Phase 2 in planning','2021-02-01','2021-02-01');

/* School Renewable Energy Assets */
CREATE TABLE school_renewable_energy_assets (
    asset_id               TEXT    NOT NULL PRIMARY KEY,
    school_cds_code        TEXT    NULL,
    asset_type             TEXT    NULL,
    manufacturer           TEXT    NULL,
    model_number           TEXT    NULL,
    capacity_kw            REAL    NULL,
    installation_date      DATE    NULL,
    commissioning_date     DATE    NULL,
    expected_lifespan_yrs   INTEGER NULL,
    warranty_expiration    DATE    NULL,
    current_status         TEXT    NULL,
    location_description   TEXT    NULL,
    serial_number          TEXT    NULL,
    power_output_last_year REAL    NULL,
    maintenance_contract   TEXT    NULL,
    contract_start_date    DATE    NULL,
    contract_end_date      DATE    NULL,
    net_metering_status    TEXT    NULL,
    financing_source       TEXT    NULL,
    grant_funded_amount    REAL    NULL,
    notes                  TEXT    NULL,
    created_at             DATE    NOT NULL,
    updated_at             DATE    NOT NULL
);
INSERT INTO school_renewable_energy_assets (asset_id,school_cds_code,asset_type,manufacturer,model_number,capacity_kw,installation_date,commissioning_date,expected_lifespan_yrs,warranty_expiration,current_status,location_description,serial_number,power_output_last_year,maintenance_contract,contract_start_date,contract_end_date,net_metering_status,financing_source,grant_funded_amount,notes,created_at,updated_at)
VALUES ('A001','CDS001','Solar','SunPower','SP-250',250,2020-05-10,2020-06-01,30,2025-05-10','Active','Rooftop','SN12345',210000,'SunPowerCare','2020-05-10','2025-05-09','Enrolled','Bond','200000','Installed on main building','2020-01-01','2020-01-01');
INSERT INTO school_renewable_energy_assets (asset_id,school_cds_code,asset_type,manufacturer,model_number,capacity_kw,installation_date,commissioning_date,expected_lifespan_yrs,warranty_expiration,current_status,location_description,serial_number,power_output_last_year,maintenance_contract,contract_start_date,contract_end_date,net_metering_status,financing_source,grant_funded_amount,notes,created_at,updated_at)
VALUES ('A002','CDS005','Wind','Vestas','VT-100',100,2021-09-15,2021-10-01,25,2026-09-15','Active','AthleticField','SN54321',95000,'VestasMaintain','2021-09-15','2026-09-14','Pending','Grant','80000','First turbine on campus','2021-02-01','2021-02-01');
INSERT INTO school_renewable_energy_assets (asset_id,school_cds_code,asset_type,manufacturer,model_number,capacity_kw,installation_date,commissioning_date,expected_lifespan_yrs,warranty_expiration,current_status,location_description,serial_number,power_output_last_year,maintenance_contract,contract_start_date,contract_end_date,net_metering_status,financing_source,grant_funded_amount,notes,created_at,updated_at)
VALUES ('A003','CDS010','Solar','FirstSolar','FS-400',400,2022-03-20,2022-04-05,30,2027-03-20','Active','EastWingRoof','SN67890',350000,'FirstSolarCare','2022-03-20','2027-03-19','Enrolled','Lease','300000','Phase 1 expansion','2022-01-10','2022-01-10');

/* Student Extracurricular Financials */
CREATE TABLE student_extracurricular_financials (
    record_id                TEXT    NOT NULL PRIMARY KEY,
    school_cds_code          TEXT    NULL,
    student_id               TEXT    NULL,
    activity_name            TEXT    NULL,
    fiscal_year              INTEGER NULL,
    budget_allocated         REAL    NULL,
    expenses_to_date         REAL    NULL,
    sponsor_name             TEXT    NULL,
    sponsor_amount           REAL    NULL,
    fundraising_goal         REAL    NULL,
    fundraising_raised       REAL    NULL,
    equipment_costs          REAL    NULL,
    travel_costs             REAL    NULL,
    uniform_costs            REAL    NULL,
    facility_rental          REAL    NULL,
    staff_advisor_fee        REAL    NULL,
    volunteer_hours          INTEGER NULL,
    notes                    TEXT    NULL,
    created_at               DATE    NOT NULL,
    updated_at               DATE    NOT NULL
);
INSERT INTO student_extracurricular_financials (record_id,school_cds_code,student_id,activity_name,fiscal_year,budget_allocated,expenses_to_date,sponsor_name,sponsor_amount,fundraising_goal,fundraising_raised,equipment_costs,travel_costs,uniform_costs,facility_rental,staff_advisor_fee,volunteer_hours,notes,created_at,updated_at)
VALUES ('EF001','CDS001','S123','DramaClub',2023,15000,8000,'ArtsFund','3000',5000,2500,2000,500,800,1200,1500,40,'Mid‑season report','2023-01-05','2023-01-05');
INSERT INTO student_extracurricular_financials (record_id,school_cds_code,student_id,activity_name,fiscal_year,budget_allocated,expenses_to_date,sponsor_name,sponsor_amount,fundraising_goal,fundraising_raised,equipment_costs,travel_costs,uniform_costs,facility_rental,staff_advisor_fee,volunteer_hours,notes,created_at,updated_at)
VALUES ('EF002','CDS005','S456','RoboticsTeam',2023,25000,12000,'TechCorp','5000',8000,4000,3500,1500,0,2000,2500,60,'Preparing for regional competition','2023-02-10','2023-02-10');
INSERT INTO student_extracurricular_financials (record_id,school_cds_code,student_id,activity_name,fiscal_year,budget_allocated,expenses_to_date,sponsor_name,sponsor_amount,fundraising_goal,fundraising_raised,equipment_costs,travel_costs,uniform_costs,facility_rental,staff_advisor_fee,volunteer_hours,notes,created_at,updated_at)
VALUES ('EF003','CDS010','S789','TrackAndField',2023,18000,9000,'SportsGear','2000',3000,1500,2500,1200,0,1100,1800,30,'Season opener completed','2023-03-01','2023-03-01');

/* District Infrastructure Project Log */
CREATE TABLE district_infrastructure_project_log (
    project_id                TEXT    NOT NULL PRIMARY KEY,
    project_name              TEXT    NULL,
    project_type              TEXT    NULL,
    start_date                DATE    NULL,
    estimated_completion_date DATE    NULL,
    actual_completion_date    DATE    NULL,
    total_budget              REAL    NULL,
    amount_spent_to_date      REAL    NULL,
    funding_source            TEXT    NULL,
    status                    TEXT    NULL,
    lead_agency               TEXT    NULL,
    contractor_name           TEXT    NULL,
    contract_amount           REAL    NULL,
    permits_obtained          INTEGER NULL,
    environmental_review      TEXT    NULL,
    community_engagement_plan TEXT    NULL,
    risk_level                TEXT    NULL,
    priority_rank             INTEGER NULL,
    geographic_region         TEXT    NULL,
    notes                     TEXT    NULL,
    created_at                DATE    NOT NULL,
    updated_at                DATE    NOT NULL
);
INSERT INTO district_infrastructure_project_log (project_id,project_name,project_type,start_date,estimated_completion_date,actual_completion_date,total_budget,amount_spent_to_date,funding_source,status,lead_agency,contractor_name,contract_amount,permits_obtained,environmental_review,community_engagement_plan,risk_level,priority_rank,geographic_region,notes,created_at,updated_at)
VALUES ('P001','NorthCampusNewGym','Construction','2022-01-15','2023-12-31',NULL,5000000,3000000,'Bond','InProgress','FacilitiesDept','BuildCo','5000000',5,'Completed','Held','Medium',2,'North','Foundation work complete','2022-01-20','2022-01-20');
INSERT INTO district_infrastructure_project_log (project_id,project_name,project_type,start_date,estimated_completion_date,actual_completion_date,total_budget,amount_spent_to_date,funding_source,status,lead_agency,contractor_name,contract_amount,permits_obtained,environmental_review,community_engagement_plan,risk_level,priority_rank,geographic_region,notes,created_at,updated_at)
VALUES ('P002','EastSideSolarFarm','RenewableEnergy','2021-06-01','2022-11-30','2022-11-20',2000000,2000000,'Grant','Completed','EnergyDept','SolarWorks','2000000',3,'Approved','Public','Low',1,'East','All phases finished','2021-06-05','2021-06-05');
INSERT INTO district_infrastructure_project_log (project_id,project_name,project_type,start_date,estimated_completion_date,actual_completion_date,total_budget,amount_spent_to_date,funding_source,status,lead_agency,contractor_name,contract_amount,permits_obtained,environmental_review,community_engagement_plan,risk_level,priority_rank,geographic_region,notes,created_at,updated_at)
VALUES ('P003','SouthRoadRehab','Roadway','2023-03-01','2024-08-15',NULL,1200000,400000,'Federal','Planning','TransportationDept','RoadBuildInc','1200000',7,'Pending','TownHall','High',3,'South','Initial grading underway','2023-03-05','2023-03-05');

/* Library Digital Media Acquisitions */
CREATE TABLE library_digital_media_acquisitions (
    acquisition_id          TEXT    NOT NULL PRIMARY KEY,
    library_id              TEXT    NULL,
    media_type              TEXT    NULL,
    title                   TEXT    NULL,
    creator                 TEXT    NULL,
    publication_year        INTEGER NULL,
    isbn_issn               TEXT    NULL,
    license_type            TEXT    NULL,
    vendor                  TEXT    NULL,
    purchase_date           DATE    NULL,
    cost                    REAL    NULL,
    subscription_start      DATE    NULL,
    subscription_end        DATE    NULL,
    access_url              TEXT    NULL,
    concurrent_user_limit   INTEGER NULL,
    digital_rights_expiry   DATE    NULL,
    notes                   TEXT    NULL,
    created_at              DATE    NOT NULL,
    updated_at              DATE    NOT NULL
);
INSERT INTO library_digital_media_acquisitions (acquisition_id,library_id,media_type,title,creator,publication_year,isbn_issn,license_type,vendor,purchase_date,cost,subscription_start,subscription_end,access_url,concurrent_user_limit,digital_rights_expiry,notes,created_at,updated_at)
VALUES ('M001','LIB01','eBook','AdvancedMath','JohnDoe',2021,'9781234567890','SingleUser','EbookStore','2022-02-10',120.00,NULL,NULL','https://ebooks.example.com/advmath',1,NULL,'First edition digital copy','2022-02-10','2022-02-10');
INSERT INTO library_digital_media_acquisitions (acquisition_id,library_id,media_type,title,creator,publication_year,isbn_issn,license_type,vendor,purchase_date,cost,subscription_start,subscription_end,access_url,concurrent_user_limit,digital_rights_expiry,notes,created_at,updated_at)
VALUES ('M002','LIB02','StreamingVideo','WorldHistorySeries','HistOrg',2019,NULL,'Institution','StreamingCo','2021-08-15',2500.00,'2021-09-01','2024-08-31','https://streaming.example.com/whist',25,'2024-08-31','Three‑year institutional subscription','2021-08-20','2021-08-20');
INSERT INTO library_digital_media_acquisitions (acquisition_id,library_id,media_type,title,creator,publication_year,isbn_issn,license_type,vendor,purchase_date,cost,subscription_start,subscription_end,access_url,concurrent_user_limit,digital_rights_expiry,notes,created_at,updated_at)
VALUES ('M003','LIB03','Database','ScienceCitation','SciPub',2020,NULL,'Site','DatabaseInc','2023-01-05',4500.00,'2023-01-10','2026-01-09','https://db.example.com/science',100,'2026-01-09','Includes APIs for integration','2023-01-07','2023-01-07');

/* Teacher Professional Learning Modules */
CREATE TABLE teacher_professional_learning_modules (
    module_id                TEXT    NOT NULL PRIMARY KEY,
    title                    TEXT    NULL,
    content_type             TEXT    NULL,
    duration_minutes         INTEGER NULL,
    delivery_method          TEXT    NULL,
    author                   TEXT    NULL,
    creation_date            DATE    NULL,
    last_updated             DATE    NULL,
    target_grade_levels      TEXT    NULL,
    subject_area             TEXT    NULL,
    accreditation_status     TEXT    NULL,
    cost                     REAL    NULL,
    prerequisites            TEXT    NULL,
    assessment_included      TEXT    NULL,
    language                 TEXT    NULL,
    rating_average           REAL    NULL,
    enrollment_count         INTEGER NULL,
    certification_earned     TEXT    NULL,
    notes                    TEXT    NULL,
    created_at               DATE    NOT NULL,
    updated_at               DATE    NOT NULL
);
INSERT INTO teacher_professional_learning_modules (module_id,title,content_type,duration_minutes,delivery_method,author,creation_date,last_updated,target_grade_levels,subject_area,accreditation_status,cost,prerequisites,assessment_included,language,rating_average,enrollment_count,certification_earned,notes,created_at,updated_at)
VALUES ('LM001','DifferentiatedInstruction','Video','90','Online','JaneTeacher','2021-05-10','2022-01-15','K-5','General','Accredited',0,NULL,'Quiz','English',4.5,120,'PD_Cert','High demand module','2021-05-12','2021-05-12');
INSERT INTO teacher_professional_learning_modules (module_id,title,content_type,duration_minutes,delivery_method,author,creation_date,last_updated,target_grade_levels,subject_area,accreditation_status,cost,prerequisites,assessment_included,language,rating_average,enrollment_count,certification_earned,notes,created_at,updated_at)
VALUES ('LM002','AdvancedDataAnalysis','Interactive','120','Hybrid','DataExpert','2020-09-01','2021-11-20','9-12','Math','Accredited',150,'IntroStat','Project','English',4.2,85,'DataCert','Blended learning approach','2020-09-05','2020-09-05');
INSERT INTO teacher_professional_learning_modules (module_id,title,content_type,duration_minutes,delivery_method,author,creation_date,last_updated,target_grade_levels,subject_area,accreditation_status,cost,prerequisites,assessment_included,language,rating_average,enrollment_count,certification_earned,notes,created_at,updated_at)
VALUES ('LM003','SELStrategies','PDF','45','Download','WellbeingTeam','2022-02-20','2022-04-10','K-12','SocialStudies','NonAccredited',0,NULL,'Reflection','English',4.8,200,NULL,'Free resource for SEL','2022-02-22','2022-02-22');

/* Health Nutrition Program Partners */
CREATE TABLE health_nutrition_program_partners (
    partner_id               TEXT    NOT NULL PRIMARY KEY,
    partner_name             TEXT    NULL,
    organization_type        TEXT    NULL,
    contact_person           TEXT    NULL,
    contact_email            TEXT    NULL,
    contact_phone            TEXT    NULL,
    address                  TEXT    NULL,
    city                     TEXT    NULL,
    state                    TEXT    NULL,
    zip_code                 TEXT    NULL,
    partnership_start_date   DATE    NULL,
    partnership_end_date     DATE    NULL,
    program_focus            TEXT    NULL,
    contribution_type        TEXT    NULL,
    annual_contribution     REAL    NULL,
    in_kind_value            REAL    NULL,
    signed_agreement         TEXT    NULL,
    active_status            TEXT    NULL,
    notes                    TEXT    NULL,
    created_at               DATE    NOT NULL,
    updated_at               DATE    NOT NULL
);
INSERT INTO health_nutrition_program_partners (partner_id,partner_name,organization_type,contact_person,contact_email,contact_phone,address,city,state,zip_code,partnership_start_date,partnership_end_date,program_focus,contribution_type,annual_contribution,in_kind_value,signed_agreement,active_status,notes,created_at,updated_at)
VALUES ('PN001','FreshFarms','NonProfit','MikeGreen','mike.green@freshfarms.org','5551112222','123 Farm Way','Greenville','TX','75402','2021-01-15','2024-01-14','FarmToSchool','Cash',50000,20000,'Signed','Active','Provides produce weekly','2021-01-10','2021-01-10');
INSERT INTO health_nutrition_program_partners (partner_id,partner_name,organization_type,contact_person,contact_email,contact_phone,address,city,state,zip_code,partnership_start_date,partnership_end_date,program_focus,contribution_type,annual_contribution,in_kind_value,signed_agreement,active_status,notes,created_at,updated_at)
VALUES ('PN002','HealthCo','Corporate','SusanLee','susan.lee@healthco.com','5553334444','456 Wellness Blvd','Healthtown','CA','90210','2020-06-01','2025-05-31','NutritionEducation','InKind',0,15000,'Signed','Active','Provides educational materials','2020-05-25','2020-05-25');
INSERT INTO health_nutrition_program_partners (partner_id,partner_name,organization_type,contact_person,contact_email,contact_phone,address,city,state,zip_code,partnership_start_date,partnership_end_date,program_focus,contribution_type,annual_contribution,in_kind_value,signed_agreement,active_status,notes,created_at,updated_at)
VALUES ('PN003','LocalBank','Corporate','TomBanks','tom.banks@localbank.org','5557778888','789 Finance St','Moneyville','NY','10001','2022-03-20','2027-03-19','Funding','Cash',25000,0,'Signed','Active','Sponsor for lunch program','2022-03-15','2022-03-15');

/* Transportation Incident Reports */
CREATE TABLE transportation_incident_reports (
    incident_id            TEXT    NOT NULL PRIMARY KEY,
    vehicle_id             TEXT    NULL,
    school_cds_code        TEXT    NULL,
    incident_date          DATE    NULL,
    incident_time          TEXT    NULL,
    incident_type          TEXT    NULL,
    severity_level         TEXT    NULL,
    description            TEXT    NULL,
    injuries_reported      INTEGER NULL,
    passengers_involved    INTEGER NULL,
    driver_name            TEXT    NULL,
    driver_license_number  TEXT    NULL,
    location_description   TEXT    NULL,
    weather_conditions     TEXT    NULL,
    road_condition         TEXT    NULL,
    corrective_action      TEXT    NULL,
    reported_by            TEXT    NULL,
    report_status          TEXT    NULL,
    notes                  TEXT    NULL,
    created_at             DATE    NOT NULL,
    updated_at             DATE    NOT NULL
);
INSERT INTO transportation_incident_reports (incident_id,vehicle_id,school_cds_code,incident_date,incident_time,incident_type,severity_level,description,injuries_reported,passengers_involved,driver_name,driver_license_number,location_description,weather_conditions,road_condition,corrective_action,reported_by,report_status,notes,created_at,updated_at)
VALUES ('IR001','V100','CDS001','2023-02-14','08:15','MinorCollision','Low','Rear‑end at stop sign',0,12,'JohnDoe','D1234567','Intersection of 5th and Main','Clear','Dry','Vehicle inspected','Dispatcher','Closed','No injuries','2023-02-15','2023-02-15');
INSERT INTO transportation_incident_reports (incident_id,vehicle_id,school_cds_code,incident_date,incident_time,incident_type,severity_level,description,injuries_reported,passengers_involved,driver_name,driver_license_number,location_description,weather_conditions,road_condition,corrective_action,reported_by,report_status,notes,created_at,updated_at)
VALUES ('IR002','V205','CDS005','2023-09-05','14:40','SideSwipe','Medium','Two buses side‑swiped during merge',1,28,'EmilySmith','D9876543','Highway 20 Mile 12','Rain','Wet','Driver retraining','Supervisor','Open','Investigating cause','2023-09-06','2023-09-06');
INSERT INTO transportation_incident_reports (incident_id,vehicle_id,school_cds_code,incident_date,incident_time,incident_type,severity_level,description,injuries_reported,passengers_involved,driver_name,driver_license_number,location_description,weather_conditions,road_condition,corrective_action,reported_by,report_status,notes,created_at,updated_at)
VALUES ('IR003','V310','CDS010','2022-11-22','07:05','VehicleFire','High','Engine fire while en route',0,15,'MarkLee','D5553331','Route 45 near Oak St','Snow','Icy','Vehicle removed from service','SafetyOfficer','Closed','Fire extinguished, no injuries','2022-11-23','2022-11-23');

/* Facility Energy Consumption Daily */
CREATE TABLE facility_energy_consumption_daily (
    record_id          TEXT    NOT NULL PRIMARY KEY,
    school_cds_code    TEXT    NULL,
    facility_name      TEXT    NULL,
    record_date        DATE    NULL,
    electricity_kwh     REAL    NULL,
    gas_therms          REAL    NULL,
    water_gallons       REAL    NULL,
    solar_generation_kwh REAL   NULL,
    hvac_energy_kwh    REAL    NULL,
    lighting_energy_kwh REAL    NULL,
    equipment_energy_kwh REAL   NULL,
    peak_demand_kw      REAL   NULL,
    demand_response_event TEXT NULL,
    weather_temperature REAL   NULL,
    weather_humidity    REAL   NULL,
    notes               TEXT   NULL,
    created_at          DATE   NOT NULL,
    updated_at          DATE   NOT NULL
);
INSERT INTO facility_energy_consumption_daily (record_id,school_cds_code,facility_name,record_date,electricity_kwh,gas_therms,water_gallons,solar_generation_kwh,hvac_energy_kwh,lighting_energy_kwh,equipment_energy_kwh,peak_demand_kw,demand_response_event,weather_temperature,weather_humidity,notes,created_at,updated_at)
VALUES ('EC001','CDS001','MainBuilding','2023-04-01',12000.5,450.2,80000,3000.0,6000.5,2500.0,3000.0,800.0,'None',68.0,45.0,'Typical weekday','2023-04-01','2023-04-01');
INSERT INTO facility_energy_consumption_daily (record_id,school_cds_code,facility_name,record_date,electricity_kwh,gas_therms,water_gallons,solar_generation_kwh,hvac_energy_kwh,lighting_energy_kwh,equipment_energy_kwh,peak_demand_kw,demand_response_event,weather_temperature,weather_humidity,notes,created_at,updated_at)
VALUES ('EC002','CDS005','Gymnasium','2023-04-01',8000.0,300.0,50000,1500.0,4000.0,1200.0,2000.0,600.0,'DR1',72.0,55.0,'Early morning basketball practice','2023-04-01','2023-04-01');
INSERT INTO facility_energy_consumption_daily (record_id,school_cds_code,facility_name,record_date,electricity_kwh,gas_therms,water_gallons,solar_generation_kwh,hvac_energy_kwh,lighting_energy_kwh,equipment_energy_kwh,peak_demand_kw,demand_response_event,weather_temperature,weather_humidity,notes,created_at,updated_at)
VALUES ('EC003','CDS010','ScienceLab','2023-04-01',5000.0,200.0,30000,800.0,2500.0,800.0,1200.0,500.0,'DR2',65.0,50.0,'Lab equipment heavy day','2023-04-01','2023-04-01');

/* Alumni Career Pathways */
CREATE TABLE alumni_career_pathways (
    alumni_id            TEXT    NOT NULL PRIMARY KEY,
    graduate_year        INTEGER NULL,
    degree_awarded       TEXT    NULL,
    major_field          TEXT    NULL,
    current_employer     TEXT    NULL,
    position_title       TEXT    NULL,
    industry_sector      TEXT    NULL,
    employment_type      TEXT    NULL,
    salary_range_low     REAL    NULL,
    salary_range_high    REAL    NULL,
    city                 TEXT    NULL,
    state                TEXT    NULL,
    job_start_date       DATE    NULL,
    professional_certifications TEXT NULL,
    linkedin_profile_url TEXT    NULL,
    mentorship_participation TEXT NULL,
    alumni_association_role TEXT NULL,
    volunteer_hours_yearly INTEGER NULL,
    notes                TEXT    NULL,
    created_at           DATE    NOT NULL,
    updated_at           DATE    NOT NULL
);
INSERT INTO alumni_career_pathways (alumni_id,graduate_year,degree_awarded,major_field,current_employer,position_title,industry_sector,employment_type,salary_range_low,salary_range_high,city,state,job_start_date,professional_certifications,linkedin_profile_url,mentorship_participation,alumni_association_role,volunteer_hours_yearly,notes,created_at,updated_at)
VALUES ('A001',2015,'BSc','ComputerScience','TechSolutions','SeniorDeveloper','Software','FullTime',95000,130000,'Austin','TX','2016-07-01','AWS Certified Solutions Architect','https://linkedin.com/in/alicejohnson','Mentor','BoardMember',30,'Active speaker at alumni events','2022-01-10','2022-01-10');
INSERT INTO alumni_career_pathways (alumni_id,graduate_year,degree_awarded,major_field,current_employer,position_title,industry_sector,employment_type,salary_range_low,salary_range_high,city,state,job_start_date,professional_certifications,linkedin_profile_url,mentorship_participation,alumni_association_role,volunteer_hours_yearly,notes,created_at,updated_at)
VALUES ('A002',2018,'BA','Education','SpringfieldPublicSchools','CurriculumCoordinator','Education','FullTime',60000,80000,'Springfield','IL','2019-09-01','NEA Certified','https://linkedin.com/in/bobmartin','Mentee','CommitteeMember',15,'Leads community tutoring program','2022-01-12','2022-01-12');
INSERT INTO alumni_career_pathways (alumni_id,graduate_year,degree_awarded,major_field,current_employer,position_title,industry_sector,employment_type,salary_range_low,salary_range_high,city,state,job_start_date,professional_certifications,linkedin_profile_url,mentorship_participation,alumni_association_role,volunteer_hours_yearly,notes,created_at,updated_at)
VALUES ('A003',2020,'MSc','DataScience','AnalyticsCo','DataAnalyst','Finance','FullTime',75000,95000,'Denver','CO','2021-01-15','Google Data Engineer','https://linkedin.com/in/carollee','Mentor','Volunteer','20','Organizes data workshops for current students','2022-01-15','2022-01-15');
```