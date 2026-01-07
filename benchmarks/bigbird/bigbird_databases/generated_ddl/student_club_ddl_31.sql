-- Campus building information
CREATE TABLE campus_building (
    building_id TEXT PRIMARY KEY,
    building_name TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code INTEGER,
    construction_year INTEGER,
    total_floors INTEGER,
    total_sqft INTEGER,
    building_type TEXT,
    occupancy_status TEXT,
    fire_safety_rating TEXT,
    hvac_system_type TEXT,
    wifi_coverage_level TEXT,
    renewable_energy_source TEXT,
    parking_spaces INTEGER,
    maintenance_contact TEXT,
    security_level TEXT,
    accessibility_compliance TEXT,
    sustainability_cert TEXT,
    last_renovation_year INTEGER,
    campus_zone TEXT,
    emergency_exit_count INTEGER,
    structural_engineer TEXT,
    architect_firm TEXT
);
INSERT INTO campus_building VALUES ('B001','ScienceHall','123 University Rd','', 'Springfield','CA',90001,1998,5,120000,'Academic','Occupied','A','CentralHVAC','Full','Solar','200','JohnDoe','High','Yes','LEEDGold',2015,'North','12','EngCo','ArchStudio');
INSERT INTO campus_building VALUES ('B002','ArtsCenter','456 College Ave','Suite 10','Springfield','CA',90002,2005,3,80000,'Performing','Occupied','B','ZoneHVAC','Partial','None','150','JaneSmith','Medium','Yes','LEEDSilver',2018,'East','8','StructInc','DesignFirm');
INSERT INTO campus_building VALUES ('B003','Administration','789 Campus Loop','', 'Springfield','CA',90003,1985,4,100000,'Administrative','Occupied','A','CentralHVAC','Full','Geothermal','250','MikeBrown','High','Yes','LEEDPlatinum',2020,'South','10','BuildCorp','PlanGroup');

-- Research grant tracking
CREATE TABLE research_grant (
    grant_id TEXT PRIMARY KEY,
    grant_title TEXT,
    funding_agency TEXT,
    principal_investigator TEXT,
    start_date TEXT,
    end_date TEXT,
    total_amount INTEGER,
    awarded_amount INTEGER,
    matching_funds INTEGER,
    grant_status TEXT,
    field_of_study TEXT,
    review_score REAL,
    award_cycle TEXT,
    funding_type TEXT,
    indirect_cost_rate REAL,
    compliance_deadline TEXT,
    reporting_frequency TEXT,
    budget_category TEXT,
    grant_number TEXT,
    internal_account TEXT,
    sponsor_contact TEXT,
    fellowship_supported INTEGER,
    equipment_budget INTEGER,
    travel_budget INTEGER,
    publication_budget INTEGER,
    data_management_plan TEXT
);
INSERT INTO research_grant VALUES ('G001','Quantum Computing Initiative','NSF','DrAlice','2022-01-15','2025-01-14',500000,450000,50000,'Active','ComputerScience',4.7,'Annual','Federal',0.3,'2023-06-30','Quarterly','Research','NSF-2022-001','ACC-1001','KarenLee',1,200000,50000,25000,'PlanA');
INSERT INTO research_grant VALUES ('G002','Renewable Energy Storage','DOE','DrBob','2021-09-01','2024-08-31',750000,700000,50000,'Active','EnergyEngineering',4.5,'Biannual','Federal',0.25,'2022-12-31','SemiAnnual','Equipment','DOE-2021-045','ACC-2002','SaraKim',0,300000,70000,40000,'PlanB');
INSERT INTO research_grant VALUES ('G003','Social Media Impact Study','NIH','DrCarol','2023-03-01','2026-02-28',300000,280000,20000,'Pending','SocialSciences',0,NA,'Federal',0.15,'2024-03-15','Annual','Personnel','NIH-2023-078','ACC-3003','TomWhite',1,50000,30000,20000,'PlanC');

-- Library branch directory
CREATE TABLE library_branch (
    branch_id TEXT PRIMARY KEY,
    branch_name TEXT,
    street_address TEXT,
    city TEXT,
    state TEXT,
    zip_code INTEGER,
    phone_number TEXT,
    email_address TEXT,
    opening_hours TEXT,
    closing_hours TEXT,
    total_seats INTEGER,
    study_rooms INTEGER,
    computer_workstations INTEGER,
    wifi_speed_mbps INTEGER,
    special_collections TEXT,
    annual_visitor_count INTEGER,
    staff_count INTEGER,
    manager_name TEXT,
    latitude REAL,
    longitude REAL,
    is_24hour TEXT,
    building_id TEXT,
    floor_number INTEGER,
    loan_period_days INTEGER,
    digital_access_score REAL,
    renovation_year INTEGER,
    sustainability_rating TEXT
);
INSERT INTO library_branch VALUES ('L001','Main Library','101 Library Way','Springfield','CA',90001,'5551234567','main@uni.edu','08:00','22:00',500,20,50,300,'RareBooks',1200000,35,'LauraGreen',34.0522,-118.2437,'No','B001',1,21,4.5,2019,'LEEDGold');
INSERT INTO library_branch VALUES ('L002','Science Library','202 Research Blvd','Springfield','CA',90002,'5559876543','science@uni.edu','07:30','21:30',300,10,30,250,'ScienceJournals',800000,20,'MarkTaylor',34.0525,-118.2440,'No','B002',2,28,4.2,2021,'LEEDSilver');
INSERT INTO library_branch VALUES ('L003','Arts Library','303 Creative St','Springfield','CA',90003,'5555551212','arts@uni.edu','09:00','20:00',250,15,20,200,'ArtCatalogs',600000,15,'NinaBrown',34.0530,-118.2450,'No','B003',1,30,4.0,2018,'LEEDBronze');

-- Sustainability project catalog
CREATE TABLE sustainability_project (
    project_id TEXT PRIMARY KEY,
    project_name TEXT,
    project_type TEXT,
    start_date TEXT,
    end_date TEXT,
    total_budget INTEGER,
    allocated_funds INTEGER,
    primary_lead TEXT,
    department TEXT,
    greenhouse_gas_reduction_tons REAL,
    water_savings_gallons INTEGER,
    energy_savings_kwh INTEGER,
    status TEXT,
    funding_source TEXT,
    stakeholder_count INTEGER,
    milestones_achieved INTEGER,
    risk_level TEXT,
    certification_target TEXT,
    reporting_frequency TEXT,
    community_engagement_hours INTEGER,
    external_partner TEXT,
    volunteer_hours INTEGER,
    carbon_offset_purchased INTEGER,
    documentation_url TEXT,
    last_audit_date TEXT,
    audit_score REAL,
    sustainability_score REAL
);
INSERT INTO sustainability_project VALUES ('SP001','Campus Solar Farm','RenewableEnergy','2021-04-01','2024-03-31',2000000,1500000,'DrEve','Engineering',1200.5,500000,300000,'Active','Grant','10',3,'Medium','LEEDGold','Quarterly',250,'GreenCo','500','1500','http://sustain.university.edu/solar','2023-06-30',88.5,92.0);
INSERT INTO sustainability_project VALUES ('SP002','Rainwater Harvesting','WaterConservation','2020-01-15','2023-12-31',500000,450000,'DrFrank','Facilities',0,2000000,0,'Completed','CampusFunds','5',5,'Low','LEEDSilver','Annual',120,'EcoPartners','200','0','http://sustain.university.edu/rain','2023-01-15',91.0,89.5);
INSERT INTO sustainability_project VALUES ('SP003','LED Lighting Retrofit','EnergyEfficiency','2022-09-10','2025-09-09',800000,300000,'DrGrace','Facilities',300.0,0,500000,'Planning','Grant','8',1,'High','LEEDPlatinum','SemiAnnual',180,'BrightFuture','350','800','http://sustain.university.edu/led','2023-07-01',85.0,90.0);

-- Technology patent registry
CREATE TABLE technology_patent (
    patent_id TEXT PRIMARY KEY,
    title TEXT,
    inventor TEXT,
    assignee TEXT,
    filing_date TEXT,
    grant_date TEXT,
    patent_number TEXT,
    technology_area TEXT,
    abstract TEXT,
    claims_count INTEGER,
    status TEXT,
    expiration_date TEXT,
    licensing_agreement TEXT,
    royalty_rate REAL,
    jurisdiction TEXT,
    prior_art_references TEXT,
    funding_source TEXT,
    commercial_stage TEXT,
    related_project_id TEXT,
    risk_assessment TEXT,
    market_potential TEXT,
    maintenance_fee_due TEXT,
    cited_by_count INTEGER,
    last_update TEXT,
    patent_family TEXT,
    ipr_office_contact TEXT
);
INSERT INTO technology_patent VALUES ('P001','Adaptive Optics System','DrHelen','UniversityTech','2020-05-01','2022-11-15','US1234567','Optics','Improves image resolution in telescopes',12,'Granted','2042-11-15','LicenseA','5.0','US','Ref001','Grant','Prototype','RG001','Low','High','2024-05-01',45,'2023-06-30','FamilyA','contact@ipr.gov');
INSERT INTO technology_patent VALUES ('P002','AI Driven Scheduling','DrIan','UniversityTech','2021-02-10','2023-08-20','US2345678','ArtificialIntelligence','Automates resource allocation',20,'Granted','2043-08-20','LicenseB','4.5','US','Ref002','Grant','Pilot','RG002','Medium','Medium','2025-02-10',30,'2023-07-15','FamilyB','contact@ipr.gov');
INSERT INTO technology_patent VALUES ('P003','Biodegradable Packaging Material','DrJill','UniversityTech','2019-09-25','2021-12-05','US3456789','MaterialsScience','Eco-friendly packaging',15,'Granted','2041-12-05','LicenseC','6.0','US','Ref003','Grant','Commercial','RG003','Low','VeryHigh','2022-09-25',60,'2023-08-01','FamilyC','contact@ipr.gov');

-- Faculty research group directory
CREATE TABLE faculty_research_group (
    group_id TEXT PRIMARY KEY,
    group_name TEXT,
    department TEXT,
    primary_faculty TEXT,
    secondary_faculty TEXT,
    established_year INTEGER,
    focus_area TEXT,
    number_of_members INTEGER,
    active_projects INTEGER,
    total_funding INTEGER,
    funding_source TEXT,
    publications_per_year INTEGER,
    h_index_average REAL,
    collaborative_institutions TEXT,
    lab_location TEXT,
    equipment_inventory TEXT,
    graduate_students INTEGER,
    postdoc_count INTEGER,
    external_grants INTEGER,
    internal_grants INTEGER,
    annual_meeting_date TEXT,
    website_url TEXT,
    contact_email TEXT,
    phone_extension TEXT,
    last_accreditation_date TEXT,
    accreditation_body TEXT,
    research_impact_score REAL,
    data_sharing_policy TEXT
);
INSERT INTO faculty_research_group VALUES ('RG001','Quantum Materials Lab','Physics','DrKen','DrLara',2005,'QuantumMaterials',25,8,3500000,'Federal',12,7.8,'MIT;Stanford','B001','QuantumScope',5,3,4,5,'2023-04-15','http://qml.university.edu','ken@university.edu','1234','2022-12-01','ABET',85.0,'Open');
INSERT INTO faculty_research_group VALUES ('RG002','Sustainable Energy Systems','Engineering','DrMike','DrNina',2010,'RenewableEnergy',30,12,4200000,'Federal',15,8.2,'CalTech;Berkeley','B002','EnergyLab',7,4,6,8,'2023-06-20','http://ses.university.edu','mike@university.edu','5678','2023-03-15','ABET',90.5,'Restricted');
INSERT INTO faculty_research_group VALUES ('RG003','Digital Humanities Collective','Humanities','DrOlivia','DrPeter',2015,'DigitalHumanities',18,5,1500000,'Private',9,6.5,'Harvard;Yale','B003','DHStudio',3,2,2,3,'2023-05-10','http://dhc.university.edu','olivia@university.edu','9101','2022-11-30','AACSB',78.0','Open');

-- Alumni donation campaign records
CREATE TABLE alumni_donation_campaign (
    campaign_id TEXT PRIMARY KEY,
    campaign_name TEXT,
    launch_date TEXT,
    end_date TEXT,
    goal_amount INTEGER,
    amount_raised INTEGER,
    number_of_donors INTEGER,
    target_audience TEXT,
    matching_contribution TEXT,
    campaign_manager TEXT,
    communication_channel TEXT,
    promotional_material TEXT,
    theme TEXT,
    tier_levels TEXT,
    recognition_policy TEXT,
    tax_deductible TEXT,
    online_platform TEXT,
    offline_event TEXT,
    social_media_hashtag TEXT,
    email_subject_template TEXT,
    thank_you_letter_template TEXT,
    reporting_frequency TEXT,
    last_report_date TEXT,
    final_audit_status TEXT,
    total_tax_deduction_claimed INTEGER,
    donor_retention_rate REAL,
    campaign_success_score REAL
);
INSERT INTO alumni_donation_campaign VALUES ('C001','Future Leaders Fund','2023-01-01','2023-12-31',5000000,3500000,1200,'Class of 2000-2010','CorporateMatch','KarenSmith','Email','Flyer','Innovation','Bronze;Silver;Gold','PublicRecognition','Yes','GiveNow','Gala2023','#FutureLeaders','YourImpact','ThankYou2023','Quarterly','2023-09-30','Pending',2500000,0.78,84.5);
INSERT INTO alumni_donation_campaign VALUES ('C002','Scholarship Endowment','2022-09-01','2023-08-31',3000000,2800000,950,'All Alumni','AlumniMatch','JamesLee','Mail','Brochure','Education','Standard;Premium','PrivateRecognition','Yes','AlumniDonate','Webinar2022','#Scholarship','YourSupport','ThankYou2022','Annual','2023-07-15','Approved',1800000,0.82,89.2);
INSERT INTO alumni_donation_campaign VALUES ('C003','Campus Green Initiative','2023-04-15','2024-04-14',2000000,1500000,800,'Environmental Alumni','EcoMatch','LindaWhite','Social','Poster','Sustainability','Green;Gold','PublicRecognition','Yes','EcoGive','TreePlanting2023','#GoGreen','YourContribution','ThankYou2023','Quarterly','2023-10-20','Pending',1200000,0.75,78.9);

-- Health clinic service catalog
CREATE TABLE health_clinic_service (
    service_id TEXT PRIMARY KEY,
    service_name TEXT,
    department TEXT,
    description TEXT,
    duration_minutes INTEGER,
    cost INTEGER,
    insurance_covered TEXT,
    referral_required TEXT,
    provider_role TEXT,
    provider_name TEXT,
    location TEXT,
    preparation_instructions TEXT,
    follow_up_required TEXT,
    follow_up_interval_days INTEGER,
    equipment_needed TEXT,
    consumables_used TEXT,
    max_daily_capacity INTEGER,
    average_wait_time_minutes INTEGER,
    patient_satisfaction_score REAL,
    compliance_standard TEXT,
    accreditation_status TEXT,
    last_review_date TEXT,
    next_review_date TEXT,
    service_code TEXT,
    billing_category TEXT,
    telehealth_available TEXT,
    language_support TEXT,
    wheelchair_accessible TEXT
);
INSERT INTO health_clinic_service VALUES ('HS001','General Physical Exam','PrimaryCare','Routine health assessment',30,100,'Yes','No','Physician','DrAmy','Room101','Fasting 8 hours', 'Yes',180,'Stethoscope;BP Cuff','Syringe;Bandage',30,15,4.7,'HIPAA','Accredited','2023-06-01','2024-06-01','99213','Outpatient','Yes','English,Spanish','Yes');
INSERT INTO health_clinic_service VALUES ('HS002','Flu Vaccination','Immunology','Influenza immunization',15,25,'Yes','No','Nurse','NurseBob','Room202','No food 2 hours prior','No',0,'Syringe;Vaccine','Vaccine',50,10,4.5,'CDC','Accredited','2023-05-15','2024-05-15','90658','Preventive','Yes','English','Yes');
INSERT INTO health_clinic_service VALUES ('HS003','Physical Therapy Session','Rehab','Therapeutic exercise and evaluation',45,80,'Partial','Yes','PhysicalTherapist','TherapistCarol','TherapyRoom5','Wear comfortable clothing','Yes',7,'TherapyBand;FoamRoller','None',20,20,4.6,'HIPAA','Accredited','2023-07-01','2024-07-01','97110','Rehab','No','English,French','Yes');

-- Transportation asset inventory
CREATE TABLE transportation_asset_inventory (
    asset_id TEXT PRIMARY KEY,
    asset_type TEXT,
    manufacturer TEXT,
    model TEXT,
    year_of_manufacture INTEGER,
    purchase_date TEXT,
    purchase_price INTEGER,
    current_value INTEGER,
    mileage INTEGER,
    fuel_type TEXT,
    seats INTEGER,
    license_plate TEXT,
    registration_state TEXT,
    insurance_provider TEXT,
    insurance_policy_number TEXT,
    maintenance_schedule TEXT,
    last_maintenance_date TEXT,
    next_maintenance_due TEXT,
    assigned_department TEXT,
    assigned_driver TEXT,
    gps_enabled TEXT,
    telematics_installed TEXT,
    emission_standard TEXT,
    service_status TEXT,
    depreciation_method TEXT,
    warranty_expiration TEXT,
    disposal_status TEXT,
    disposal_date TEXT,
    disposal_method TEXT,
    asset_tag TEXT,
    asset_location TEXT,
    asset_condition TEXT,
    lease_or_owned TEXT,
    lease_end_date TEXT,
    lease_company TEXT,
    fuel_efficiency_mpg REAL,
    carbon_footprint_kg_per_year INTEGER,
    usage_rate_per_month INTEGER,
    notes TEXT
);
INSERT INTO transportation_asset_inventory VALUES ('TA001','Van','Ford','Transit','2019','2019-03-12',30000,18000,40000,'Diesel',12,'ABC123','CA','AllState','PI12345','Quarterly','2023-03-01','2023-09-01','Logistics','JohnDoe','Yes','Yes','Euro5','Active','StraightLine','2022-12-31','InService',NULL,NULL,NULL,'TAG001','GarageA','Good','Owned',NULL,NULL,'22.5',3000,150,'Primary campus transport vehicle');
INSERT INTO transportation_asset_inventory VALUES ('TA002','Electric Bus','Tesla','Model X','2021','2021-07-20',750000,650000,15000,'Electric',40,'EVC456','CA','Geico','EB98765','BiAnnual','2023-06-15','2023-12-15','StudentTransport','JaneSmith','Yes','Yes','Zero','Active','StraightLine','2024-07-20','InService',NULL,NULL,NULL,'TAG002','DepotB','Excellent','Owned',NULL,NULL,'120.0',0,80,'Zero emissions campus shuttle');
INSERT INTO transportation_asset_inventory VALUES ('TA003','Bicycle','Giant','Escape 3','2022','2022-02-10',500,350,1200,'Human',1,'BIK001','CA','N/A','N/A','Annual','2023-02-01','2023-08-01','Recreation','MikeBrown','No','No','N/A','Active','StraightLine','2025-02-10','InService',NULL,NULL,NULL,'TAG003','BikeRackC','Good','Owned',NULL,NULL,'0',0,30,'Campus bike for staff use');

-- Environmental sensor station registry
CREATE TABLE environmental_sensor_station (
    station_id TEXT PRIMARY KEY,
    station_name TEXT,
    location_description TEXT,
    latitude REAL,
    longitude REAL,
    installation_date TEXT,
    sensor_type TEXT,
    measurement_parameter TEXT,
    measurement_unit TEXT,
    calibration_date TEXT,
    calibration_company TEXT,
    data_collection_interval_seconds INTEGER,
    data_transmission_method TEXT,
    power_source TEXT,
    battery_capacity_mah INTEGER,
    maintenance_schedule TEXT,
    last_maintenance_date TEXT,
    next_maintenance_due DATE,
    responsible_technician TEXT,
    data_quality_flag TEXT,
    firmware_version TEXT,
    network_id TEXT,
    uplink_latency_ms REAL,
    average_uptime_percent REAL,
    connectivity_status TEXT,
    alert_threshold_low REAL,
    alert_threshold_high REAL,
    alert_notification_method TEXT,
    data_repository TEXT,
    data_retention_years INTEGER,
    compliance_standard TEXT,
    regulatory_agency TEXT,
    last_data_sync DATE,
    next_calibration_due DATE,
    station_status TEXT,
    notes TEXT
);
INSERT INTO environmental_sensor_station VALUES ('ES001','North Campus Air Quality','North edge of quad',34.0521,-118.2435,'2021-05-10','PM2.5','AirQuality','µg/m3','2023-01-15','EnviroCal','300','Cellular','Solar','5000','Quarterly','2023-06-01','2023-12-01','SamTech','Good','v2.3','NET001','45.2',99.5,'Online','0.0','35.0','Email','CloudDataLake',5,'EPA','EPA','2023-07-01','2024-01-15','Active','No issues');
INSERT INTO environmental_sensor_station VALUES ('ES002','South Campus Soil Moisture','Near south garden',34.0518,-118.2440,'2022-03-22','SoilMoisture','Soil','%','2023-02-20','SoilTech','600','WiFi','Battery','8000','BiAnnual','2023-07-10','2024-01-10','DanaOps','Good','v1.8','NET002','30.5',98.2,'Online','10.0','40.0','SMS','CampusDB',3,'USDA','USDA','2023-07-15','2024-02-20','Active','Calibrated recently');
INSERT INTO environmental_sensor_station VALUES ('ES003','East Campus Noise Monitor','East parking lot',34.0525,-118.2428,'2020-11-05','NoiseLevel','Ambient','dB','2022-11-01','AcousticInc','120','Ethernet','Mains','N/A','Annual','2023-03-01','2024-03-01','LeeTech','Good','v3.0','NET003','10.0',97.6,'Online','30.0','85.0','Push','NoiseDataWarehouse',7,'ISO','ISO','2023-06-30','2023-11-01','Active','Operational');