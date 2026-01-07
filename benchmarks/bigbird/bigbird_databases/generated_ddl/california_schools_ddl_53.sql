-- Table describing maintenance activities for school buses
CREATE TABLE school_bus_maintenance_log (
    maintenance_id            TEXT primary key,
    bus_id                    TEXT not null,
    service_date              DATE not null,
    odometer_reading          INTEGER null,
    service_type              TEXT null,
    vendor_name               TEXT null,
    vendor_contact            TEXT null,
    parts_replaced            TEXT null,
    labor_hours               REAL null,
    labor_cost                REAL null,
    parts_cost                REAL null,
    total_cost                REAL null,
    mechanic_id               TEXT null,
    mechanic_name             TEXT null,
    next_service_due_miles    INTEGER null,
    brake_inspection_passed   INTEGER null,
    tire_pressure_status      TEXT null,
    emission_test_passed      INTEGER null,
    notes                     TEXT null,
    created_timestamp         DATE null,
    updated_timestamp         DATE null,
    record_status             TEXT null
);
INSERT INTO school_bus_maintenance_log VALUES ('MNT001','BUS1001','2023-03-15',45230,'Oil Change','AutoCare Inc','555-1234','Oil Filter',2.5,45.00,30.00,75.00,'MECH01','John Doe',50000,1,'Optimal',1,'Changed oil and filter','2023-03-15','2023-03-15','Active');
INSERT INTO school_bus_maintenance_log VALUES ('MNT002','BUS1002','2023-04-10',38900,'Brake Service','BrakeMasters','555-5678','Brake Pads',3.0,60.00,120.00,180.00,'MECH02','Jane Smith',42000,1,'Optimal',1,'Replaced front brake pads','2023-04-10','2023-04-10','Active');
INSERT INTO school_bus_maintenance_log VALUES ('MNT003','BUS1003','2023-05-05',27500,'Tire Rotation','TirePro','555-9012','None',1.5,30.00,0.00,30.00,'MECH03','Mike Lee',35000,1,'Optimal',1,'Rotated all tires','2023-05-05','2023-05-05','Active');

-- Table tracking district renewable energy assets
CREATE TABLE district_renewable_energy_assets (
    asset_id                  TEXT primary key,
    asset_type                TEXT not null,
    installation_date         DATE not null,
    capacity_kw               REAL null,
    location_description      TEXT null,
    contractor_name           TEXT null,
    contract_start_date       DATE null,
    contract_end_date         DATE null,
    maintenance_provider      TEXT null,
    maintenance_contact       TEXT null,
    expected_lifespan_years   INTEGER null,
    current_status            TEXT null,
    last_inspection_date      DATE null,
    inspection_score          INTEGER null,
    financing_source          TEXT null,
    financing_amount          REAL null,
    depreciation_years        INTEGER null,
    annual_production_mwh     REAL null,
    carbon_offset_tons        REAL null,
    notes                     TEXT null,
    created_timestamp         DATE null,
    updated_timestamp         DATE null,
    asset_manager_id          TEXT null
);
INSERT INTO district_renewable_energy_assets VALUES ('RE001','Solar Panel','2021-06-01',5000,'North Campus Roof','SolarCo','2021-06-01','2031-05-31','EcoMaint','555-1111',25,'Operational','2023-02-15',95,'Bond Issue',2500000,20,4500,3500,'No issues','2021-06-01','2023-02-15','MAN01');
INSERT INTO district_renewable_energy_assets VALUES ('RE002','Wind Turbine','2020-09-15',3000,'West Field','WindWorks','2020-09-15','2030-09-14','WindServ','555-2222',30,'Operational','2023-01-10',90,'Grant',1800000,15,3500,2700,'Minor blade wear','2020-09-15','2023-01-10','MAN02');
INSERT INTO district_renewable_energy_assets VALUES ('RE003','Geothermal','2022-03-20',2000,'South Building','GeoEnergy','2022-03-20','2042-03-19','GeoMaint','555-3333',25,'Operational','2023-03-01',98,'Capital Lease',1500000,20,2500,2000,'Running efficiently','2022-03-20','2023-03-01','MAN03');

-- Table cataloging public art installations
CREATE TABLE public_art_installations_inventory (
    installation_id           TEXT primary key,
    title                     TEXT not null,
    artist_name               TEXT not null,
    installation_date         DATE not null,
    material                  TEXT null,
    dimensions_cm             TEXT null,
    location_description      TEXT null,
    latitude                  REAL null,
    longitude                 REAL null,
    sponsor_name              TEXT null,
    funding_amount            REAL null,
    maintenance_schedule      TEXT null,
    last_maintenance_date     DATE null,
    condition_rating          INTEGER null,
    insurance_policy_number   TEXT null,
    insurance_expiry_date     DATE null,
    public_accessible         INTEGER null,
    lighting_type             TEXT null,
    interactive_features     TEXT null,
    notes                     TEXT null,
    created_timestamp         DATE null,
    updated_timestamp         DATE null,
    catalog_number            TEXT null
);
INSERT INTO public_art_installations_inventory VALUES ('ART001','Harmony','Liam Rivera','2019-08-12','Bronze','150x200x100','Central Plaza','34.0522','-118.2437','City Arts Fund',120000,'Annual','2022-09-01',9,'INS12345','2024-08-12',1,'LED','None','Well maintained','2019-08-12','2022-09-01','C001');
INSERT INTO public_art_installations_inventory VALUES ('ART002','Echoes','Maya Chen','2020-05-05','Steel','300x250x150','Riverwalk','34.0407','-118.2468','Riverfront Revitalization',200000,'Biannual','2023-04-15',8,'INS67890','2025-05-05',1,'Solar','Sound Sensors','Minor surface rust','2020-05-05','2023-04-15','C002');
INSERT INTO public_art_installations_inventory VALUES ('ART003','Skyward','Noah Patel','2021-11-20','Glass','200x200x250','Eastside Park','34.0610','-118.2500','Community Grants',150000,'Annual','2023-11-20',7,'INS54321','2024-11-20',1,'None','Wind Activated','Cleaning required','2021-11-20','2023-11-20','C003');

-- Table recording environmental noise monitoring data
CREATE TABLE environmental_noise_monitoring (
    monitor_id                TEXT primary key,
    location_description      TEXT not null,
    latitude                  REAL not null,
    longitude                 REAL not null,
    installation_date         DATE not null,
    sensor_type               TEXT null,
    calibration_date          DATE null,
    last_maintenance_date     DATE null,
    avg_daytime_dbA           REAL null,
    avg_nighttime_dbA         REAL null,
    peak_daytime_dbA          REAL null,
    peak_nighttime_dbA        REAL null,
    compliance_status         TEXT null,
    notes                     TEXT null,
    created_timestamp         DATE null,
    updated_timestamp         DATE null,
    data_quality_flag         TEXT null,
    reporting_frequency       TEXT null,
    alert_threshold_dbA       REAL null,
    last_alert_timestamp      DATE null
);
INSERT INTO environmental_noise_monitoring VALUES ('NM001','Main Street Near School','34.0500','-118.2500','2022-01-15','Class D','2023-06-01','2023-12-01',62.5,54.3,78.0,65.2','Compliant','No issues','2022-01-15','2023-12-01','Good','Hourly',70.0,'2023-11-20');
INSERT INTO environmental_noise_monitoring VALUES ('NM002','Industrial Zone Entrance','34.0450','-118.2600','2021-09-10','Class B','2023-03-20','2023-11-15',68.2,59.0,85.5,70.1','Non-Compliant','Exceeds night threshold','2021-09-10','2023-11-15','Review','Daily',65.0,'2023-11-18');
INSERT INTO environmental_noise_monitoring VALUES ('NM003','Parkside Trail','34.0580','-118.2420','2023-04-05','Class C','2023-09-10','2023-12-05',55.0,48.5,70.0,60.0','Compliant','All clear','2023-04-05','2023-12-05','Excellent','Weekly',68.0,NULL');

-- Table for district emissions inventory summary
CREATE TABLE district_emissions_inventory_summary (
    report_id                 TEXT primary key,
    fiscal_year               TEXT not null,
    total_co2e_tons           REAL null,
    scope1_tons               REAL null,
    scope2_tons               REAL null,
    scope3_tons               REAL null,
    electricity_consumption_mwh REAL null,
    natural_gas_therms        REAL null,
    vehicle_fuel_gallons      REAL null,
    renewable_energy_percent REAL null,
    emission_intensity_per_student REAL null,
    reduction_target_percent  REAL null,
    actual_reduction_percent  REAL null,
    reporting_date            DATE null,
    verifier_name             TEXT null,
    verification_status       TEXT null,
    notes                     TEXT null,
    created_timestamp         DATE null,
    updated_timestamp         DATE null,
    data_source               TEXT null,
    methodology_version       TEXT null
);
INSERT INTO district_emissions_inventory_summary VALUES ('EM001','2022','4800',1500,1200,2100,850000,20000,40000,22.5,0.45,10,8,'2023-01-15','EcoAudit Inc','Verified','Meets baseline','2022-12-31','EcoAudit','v1.2');
INSERT INTO district_emissions_inventory_summary VALUES ('EM002','2023','4600',1400,1150,2050,840000,19500,39000,23.0,0.44,12,9,'2024-01-20','GreenMetrics LLC','Verified','Improved performance','2023-12-31','GreenMetrics','v1.3');
INSERT INTO district_emissions_inventory_summary VALUES ('EM003','2024','4400',1300,1100,2000,830000,19000,38000,24.0,0.43,15,12,'2025-01-10','SustainCheck','Verified','On track for targets','2024-12-31','SustainCheck','v1.4');

-- Table describing district technology grant applications
CREATE TABLE district_technology_grant_applications (
    application_id            TEXT primary key,
    grant_name                TEXT not null,
    funding_agency            TEXT not null,
    request_amount            REAL not null,
    submission_date           DATE not null,
    review_deadline           DATE null,
    status                    TEXT null,
    primary_contact_name      TEXT null,
    primary_contact_email     TEXT null,
    project_title             TEXT null,
    project_description       TEXT null,
    start_date                DATE null,
    end_date                  DATE null,
    matched_funding_amount    REAL null,
    total_budget              REAL null,
    anticipated_outcomes      TEXT null,
    risk_assessment_level     TEXT null,
    required_reports          TEXT null,
    notes                     TEXT null,
    created_timestamp         DATE null,
    updated_timestamp         DATE null,
    grant_number              TEXT null
);
INSERT INTO district_technology_grant_applications VALUES ('GT001','Digital Learning Initiative','State Education Dept',250000,'2023-05-01','2023-06-15','Pending','Alice Johnson','alice.johnson@district.edu','One-to-One Device Program','Provide each student with a tablet','2023-09-01','2025-06-30',50000,300000,'Improved student engagement','Medium','Quarterly','Awaiting review','2023-05-01','2023-05-01','DL-2023-01');
INSERT INTO district_technology_grant_applications VALUES ('GT002','Cybersecurity Enhancement Grant','Federal Dept of Education',150000,'2022-11-20','2022-12-31','Approved','Bob Smith','bob.smith@district.edu','Network Security Upgrade','Upgrade firewalls and monitoring','2023-01-15','2024-12-31',30000,180000,'Reduced cyber incidents','Low','Annual','Approved and funded','2022-11-20','2022-12-01','CS-2022-07');
INSERT INTO district_technology_grant_applications VALUES ('GT003','STEM Innovation Grant','Private Foundation',200000,'2024-02-10','2024-03-20','Rejected','Carol Lee','carol.lee@district.edu','Robotics Lab Development','Create a robotics lab for middle schools','2024-09-01','2026-08-31',40000,240000,'Increased STEM participation','High','Semi-Annual','Did not meet criteria','2024-02-10','2024-02-15','STEM-2024-03');

-- Table tracking community parking permit usage
CREATE TABLE community_parking_permit_usage (
    permit_id                 TEXT primary key,
    holder_name               TEXT not null,
    vehicle_plate             TEXT not null,
    permit_type               TEXT not null,
    issue_date                DATE not null,
    expiration_date           DATE not null,
    zone_code                 TEXT null,
    daily_fee                 REAL null,
    total_paid                REAL null,
    violations_count         INTEGER null,
    last_violation_date      DATE null,
    payment_status            TEXT null,
    notes                     TEXT null,
    created_timestamp         DATE null,
    updated_timestamp         DATE null,
    issued_by_department      TEXT null,
    renewal_required          INTEGER null,
    renewal_notice_sent_date  DATE null,
    online_payment_enabled    INTEGER null,
    discount_applied          INTEGER null
);
INSERT INTO community_parking_permit_usage VALUES ('PK001','John Doe','ABC1234','Resident','2022-01-10','2023-01-09','Z1',50.00,600.00,0,NULL,'Paid','No issues','2022-01-10','2023-01-09','Parking Services',1,'2022-12-01',1,0);
INSERT INTO community_parking_permit_usage VALUES ('PK002','Jane Smith','XYZ5678','Visitor','2022-06-15','2022-12-14','Z2',30.00,180.00,1,'2022-11-20','Paid','One violation recorded','2022-06-15','2022-12-14','Parking Services',0,NULL,1,0);
INSERT INTO community_parking_permit_usage VALUES ('PK003','Acme Corp','LMN9012','Commercial','2021-09-01','2022-08-31','Z3',200.00,2400.00,0,NULL,'Paid','Corporate permit','2021-09-01','2022-08-31','Parking Services',1,'2022-07-15',1,1);

-- Table cataloging school facility accessibility features
CREATE TABLE school_facility_accessibility_features (
    feature_id                TEXT primary key,
    school_cds_code           TEXT not null,
    feature_type              TEXT not null,
    installation_date         DATE null,
    location_description      TEXT null,
    compliance_status         TEXT null,
    last_inspection_date     DATE null,
    inspection_score          INTEGER null,
    maintenance_schedule      TEXT null,
    last_maintenance_date    DATE null,
    responsible_department    TEXT null,
    notes                     TEXT null,
    created_timestamp         DATE null,
    updated_timestamp         DATE null,
    audited_by                TEXT null,
    accessibility_standard   TEXT null,
    funding_source            TEXT null,
    warranty_expiry_date      DATE null,
    photo_reference           TEXT null,
    budget_line_item_code     TEXT null
);
INSERT INTO school_facility_accessibility_features VALUES ('AF001','CDS001','Elevator','2018-03-12','Main Building Lobby','Compliant','2023-01-10',96,'Annual','2023-01-10','Facilities','Operational','2018-03-12','2023-01-10','State Inspection','ADA','Capital Grant','2028-03-12','ELEV001','BLI100');
INSERT INTO school_facility_accessibility_features VALUES ('AF002','CDS002','Ramp','2015-07-22','North Entrance','Compliant','2022-11-05',94,'Biannual','2022-11-05','Facilities','Minor wear','2015-07-22','2022-11-05','Local Audit','ADA','District Budget','2025-07-22','RAMP001','BLI101');
INSERT INTO school_facility_accessibility_features VALUES ('AF003','CDS003','Braille Signage','2020-01-15','Hallway 2B','Compliant','2023-03-01',98,'Annual','2023-03-01','Facilities','All signs up to date','2020-01-15','2023-03-01','Accessibility Review','ADA','Grant','2025-01-15','BRAILLE001','BLI102');

-- Table recording teacher collaboration network statistics
CREATE TABLE teacher_collaboration_network_stats (
    network_id                TEXT primary key,
    school_cds_code           TEXT not null,
    reporting_period_start    DATE not null,
    reporting_period_end      DATE not null,
    total_teachers            INTEGER null,
    collaboration_groups      INTEGER null,
    avg_group_size            REAL null,
    cross_department_links    INTEGER null,
    interdisciplinary_projects INTEGER null,
    mentorship_pairs          INTEGER null,
    professional_learning_sessions INTEGER null,
    virtual_meetings_count    INTEGER null,
    inperson_meetings_count   INTEGER null,
    average_meeting_duration_minutes REAL null,
    shared_resources_count    INTEGER null,
    feedback_score_avg        REAL null,
    notes                     TEXT null,
    created_timestamp         DATE null,
    updated_timestamp         DATE null,
    data_source               TEXT null
);
INSERT INTO teacher_collaboration_network_stats VALUES ('CN001','CDS010','2023-01-01','2023-12-31',85,12,7.1,30,5,20,15,45,20,60.5,120,4.3,'Positive growth','2023-12-31','2024-01-05','Collab Survey');
INSERT INTO teacher_collaboration_network_stats VALUES ('CN002','CDS011','2022-01-01','2022-12-31',78,10,7.8,25,4,18,12,38,15,55.0,110,4.1,'Stable network','2022-12-31','2023-01-03','Collab Survey');
INSERT INTO teacher_collaboration_network_stats VALUES ('CN003','CDS012','2021-01-01','2021-12-31',92,14,6.6,35,6,22,18,50,22,70.2,130,4.5,'Increased interdisciplinary work','2021-12-31','2022-01-02','Collab Survey');

-- Table documenting district technology asset depreciation schedules
CREATE TABLE technology_asset_depreciation_schedule (
    asset_id                  TEXT primary key,
    asset_type                TEXT not null,
    purchase_date             DATE not null,
    purchase_price            REAL not null,
    useful_life_years         INTEGER not null,
    depreciation_method       TEXT not null,
    annual_depreciation       REAL null,
    accumulated_depreciation  REAL null,
    net_book_value            REAL null,
    department_responsible    TEXT null,
    warranty_expiry_date      DATE null,
    vendor_name               TEXT null,
    serial_number             TEXT null,
    location_description      TEXT null,
    last_inventory_check      DATE null,
    condition_rating          INTEGER null,
    disposal_date             DATE null,
    disposal_proceeds         REAL null,
    notes                     TEXT null,
    created_timestamp         DATE null,
    updated_timestamp         DATE null,
    depreciation_start_year   INTEGER null
);
INSERT INTO technology_asset_depreciation_schedule VALUES ('TA001','Desktop Computer','2020-02-15',1200,5,'Straight Line',240.00,720.00,480.00,'IT','2023-02-15','TechSupply','SN12345','Admin Office','2023-06-01',8,NULL,NULL,'Good condition','2020-02-15','2023-06-15',2020);
INSERT INTO technology_asset_depreciation_schedule VALUES ('TA002','Projector','2019-09-10',2500,7,'Double Declining',500.00,1000.00,1500.00,'AV','2022-09-10','AVEquipCo','SN67890','Conference Room','2023-05-20',7,NULL,NULL,'Minor wear','2019-09-10','2023-05-25',2019);
INSERT INTO technology_asset_depreciation_schedule VALUES ('TA003','Server Rack','2021-06-01',8000,10,'Straight Line',800.00,1600.00,6400.00,'Data Center','2026-06-01','ServerWorld','SN54321','Data Center Floor 2','2023-07-15',9,NULL,NULL,'Operational','2021-06-01','2023-07-20',2021);

-- Table logging district emergency resource stockpile
CREATE TABLE district_emergency_resource_stockpile (
    stockpile_id              TEXT primary key,
    resource_type             TEXT not null,
    quantity_on_hand          INTEGER not null,
    unit_of_measure           TEXT not null,
    storage_location          TEXT not null,
    last_audit_date           DATE null,
    next_audit_due_date       DATE null,
    supplier_name             TEXT null,
    supplier_contact          TEXT null,
    expiration_date           DATE null,
    reorder_threshold         INTEGER null,
    last_reorder_date         DATE null,
    last_reorder_quantity     INTEGER null,
    safety_stock_level        INTEGER null,
    usage_rate_per_month      INTEGER null,
    notes                     TEXT null,
    created_timestamp         DATE null,
    updated_timestamp         DATE null,
    responsible_department    TEXT null,
    audit_status              TEXT null,
    requisition_process       TEXT null
);
INSERT INTO district_emergency_resource_stockpile VALUES ('ER001','Water Bottles',5000,'Units','Central Warehouse','2023-03-01','2024-03-01','SupplyCo','555-7777',NULL,1000,'2023-06-15',2000,500,300,'Rotated annually','2023-03-01','2023-03-01','Facilities','Compliant','Standard');
INSERT INTO district_emergency_resource_stockpile VALUES ('ER002','First Aid Kits',250,'Units','North Storage','2023-02-15','2024-02-15','MediSupply','555-8888',2025-12-31,50,'2023-05-10',30,20,10,'Replenish quarterly','2023-02-15','2023-02-15','Health Services','Compliant','Standard');
INSERT INTO district_emergency_resource_stockpile VALUES ('ER003','Portable Generators',40,'Units','South Facility','2023-01-20','2023-12-20','PowerGen','555-9999',2030-01-01,5,'2023-04-01',2,3,1,'Check fuel monthly','2023-01-20','2023-01-20','Facilities','Compliant','Standard');