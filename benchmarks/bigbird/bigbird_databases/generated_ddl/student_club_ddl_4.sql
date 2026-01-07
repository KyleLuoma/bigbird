-- Conference rooms used for meetings and events
CREATE TABLE conference_room
(
    room_id TEXT PRIMARY KEY,
    building_name TEXT,
    floor_number INTEGER,
    capacity INTEGER,
    room_type TEXT,
    has_projector TEXT,
    has_sound TEXT,
    has_whiteboard TEXT,
    has_video_conf TEXT,
    av_equipment_list TEXT,
    min_capacity INTEGER,
    max_capacity INTEGER,
    booking_policy TEXT,
    access_code TEXT,
    wifi_strength INTEGER,
    lighting_type TEXT,
    climate_control TEXT,
    availability_status TEXT,
    last_renovated_date TEXT,
    room_notes TEXT
);

INSERT INTO conference_room VALUES ('CR001','MainHall','2','50','Lecture','Y','Y','Y','N','Projector,Speaker','30','70','FirstComeFirstServed','A1B2C3','85','LED','HVAC','Available','2022-03-15','Near cafeteria');
INSERT INTO conference_room VALUES ('CR002','ScienceBlock','1','30','Lab','N','Y','Y','Y','Microscope,Camera','20','40','ReservationOnly','X9Y8Z7','90','Fluorescent','HVAC','InUse','2021-11-02','Contains lab benches');
INSERT INTO conference_room VALUES ('CR003','AdminWing','3','100','Auditorium','Y','Y','Y','Y','PA_System,VideoWall','80','120','ReservationOnly','M4N5O6','95','LED','HVAC','Maintenance','2020-06-20','Recently refurbished');

-- Media partners providing coverage and promotion
CREATE TABLE media_partner
(
    partner_id TEXT PRIMARY KEY,
    partner_name TEXT,
    contact_name TEXT,
    contact_email TEXT,
    partnership_type TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    billing_address TEXT,
    phone_number TEXT,
    website_url TEXT,
    audience_reach INTEGER,
    ad_rate REAL,
    payment_terms TEXT,
    performance_metric TEXT,
    notes TEXT,
    active_status TEXT,
    region TEXT,
    primary_channel TEXT,
    secondary_channel TEXT,
    agreement_version TEXT
);

INSERT INTO media_partner VALUES ('MP001','CampusTimes','Alice Smith','alice@campustimes.com','Coverage','2023-01-01','2025-12-31','123 Media St','5551234567','www.campustimes.edu','150000',0.05,'Net30','Impressions','Preferred partner','Active','North','Print','Online','v2');
INSERT INTO media_partner VALUES ('MP002','StudentRadio','Bob Jones','bob@studentradio.org','Advertising','2022-06-15','2024-06-14','45 Broadcast Ave','5559876543','www.studentradio.org','80000',0.07,'Net45','Reach','Seasonal contract','Active','South','Audio','Social','v1');
INSERT INTO media_partner VALUES ('MP003','LocalNews','Carol Lee','carol@localnews.com','Sponsorship','2024-03-01','2026-02-28','78 News Blvd','5552223344','www.localnews.com','200000',0.04,'Net15','Engagement','Long term partner','Pending','East','TV','Online','v3');

-- Safety equipment inventory
CREATE TABLE safety_equipment
(
    equipment_id TEXT PRIMARY KEY,
    equipment_name TEXT,
    category TEXT,
    manufacturer TEXT,
    model_number TEXT,
    serial_number TEXT,
    purchase_date TEXT,
    warranty_expiration TEXT,
    inspection_date TEXT,
    condition_status TEXT,
    location_assigned TEXT,
    assigned_to_member TEXT,
    calibration_required TEXT,
    calibration_date TEXT,
    safety_rating INTEGER,
    weight_kg REAL,
    dimensions_cm TEXT,
    storage_location TEXT,
    disposal_status TEXT,
    equipment_notes TEXT
);

INSERT INTO safety_equipment VALUES ('SE001','Fire Extinguisher','FireSafety','SafeGuard','FX-200','SN12345','2021-05-10','2026-05-10','2023-04-20','Good','BuildingA','M001','N','',5,2.5,'30x10x10','SecRoom1','Pending','Mounted on wall');
INSERT INTO safety_equipment VALUES ('SE002','First Aid Kit','Medical','MediPack','FAK-50','SN67890','2020-09-15','2025-09-15','2023-01-12','Good','BuildingB','M002','N','',4,1.2,'20x15x10','SecRoom2','Pending','Restocked quarterly');
INSERT INTO safety_equipment VALUES ('SE003','Safety Helmet','PPE','ProtectCo','SH-XL','SN54321','2022-02-01','2027-02-01','2023-03-05','Excellent','Warehouse','M003','Y','2023-03-01',5,0.9,'25x25x15','ShelfA','Pending','Used for construction projects');

-- Grant applications tracking
CREATE TABLE grant_application
(
    application_id TEXT PRIMARY KEY,
    grant_name TEXT,
    funding_agency TEXT,
    submission_deadline TEXT,
    submission_date TEXT,
    requested_amount INTEGER,
    approved_amount INTEGER,
    status TEXT,
    principal_investigator TEXT,
    co_pi TEXT,
    department TEXT,
    project_title TEXT,
    abstract_text TEXT,
    budget_summary TEXT,
    review_score REAL,
    review_comments TEXT,
    award_year INTEGER,
    contract_number TEXT,
    reporting_requirements TEXT,
    notes TEXT
);

INSERT INTO grant_application VALUES ('GA001','STEM Innovation','NationalScience','2023-04-30','2023-04-25','50000','45000','Approved','DrJohnDoe','DrJaneRoe','Engineering','Robotics Lab Upgrade','Upgrading lab equipment for robotics research','Equipment 30000, Personnel 15000',4.8,'Strong proposal','2023','CN-2023-001','Quarterly','High impact project');
INSERT INTO grant_application VALUES ('GA002','Community Outreach','HealthFoundation','2023-06-15','2023-06-10','20000','20000','Approved','DrEmilyWhite','DrAlanBrown','PublicHealth','Vaccination Campaign','Implementing campus-wide vaccination drives','Supplies 12000, Staff 8000',4.5,'Well aligned with mission','2023','CN-2023-002','Biannual','Supports local health initiatives');
INSERT INTO grant_application VALUES ('GA003','Arts Expansion','CulturalArtsCouncil','2023-05-20','2023-05-18','30000','0','Rejected','DrMarkGreen','', 'Arts','Studio Renovation','Renovating art studio spaces','Renovation 30000',3.2,'Needs clearer impact plan','2023','', 'Annual','Pending re‑submission');

-- Community events separate from main event table
CREATE TABLE community_event
(
    comm_event_id TEXT PRIMARY KEY,
    title TEXT,
    description TEXT,
    organizer TEXT,
    target_audience TEXT,
    start_date TEXT,
    end_date TEXT,
    venue_name TEXT,
    city TEXT,
    state TEXT,
    zip_code INTEGER,
    expected_attendance INTEGER,
    registration_fee INTEGER,
    sponsor_list TEXT,
    volunteer_needed INTEGER,
    safety_plan_id TEXT,
    publicity_plan_id TEXT,
    budget_estimate INTEGER,
    actual_spending INTEGER,
    outcome_summary TEXT,
    feedback_link TEXT
);

INSERT INTO community_event VALUES ('CE001','Open Science Fair','Annual showcase of student projects','ScienceClub','Students,Public','2023-09-10','2023-09-12','Gymnasium','Springfield','IL','62704','500','0','TechCorp,LocalBank',20,'SP001','PP001','12000','11500','Positive community engagement','http://feedback.university.edu/CE001');
INSERT INTO community_event VALUES ('CE002','Health Awareness Day','Free health screenings and seminars','HealthDept','Students,Staff','2023-10-05','2023-10-05','WellnessCenter','Springfield','IL','62704','300','5','PharmaInc',10,'SP002','PP002','8000','7500','Increased health literacy','http://feedback.university.edu/CE002');
INSERT INTO community_event VALUES ('CE003','Art Walk','Local artists display works around campus','ArtSociety','Public','2023-11-20','2023-11-20','MainQuad','Springfield','IL','62704','200','0','ArtSupplyCo',5,'SP003','PP003','5000','4800','Enhanced campus culture','http://feedback.university.edu/CE003');

-- Digital marketing campaigns
CREATE TABLE digital_campaign
(
    campaign_id TEXT PRIMARY KEY,
    name TEXT,
    platform TEXT,
    start_date TEXT,
    end_date TEXT,
    budget_allocated INTEGER,
    spend_to_date INTEGER,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    cpc REAL,
    cpm REAL,
    ctr REAL,
    conversion_rate REAL,
    target_audience TEXT,
    ad_copy_version TEXT,
    creative_asset_id TEXT,
    geo_targeting TEXT,
    device_targeting TEXT,
    performance_notes TEXT
);

INSERT INTO digital_campaign VALUES ('DC001','FallEnrollment','Facebook','2023-08-01','2023-09-30','15000','14000','200000','4500','300',3.11,70.0,2.25,6.67','ProspectiveStudents','VersionA','CA001','USA','Mobile','Exceeded click targets');
INSERT INTO digital_campaign VALUES ('DC002','ResearchGrant','LinkedIn','2023-07-15','2023-08-31','8000','7500','120000','3000','250',2.50,62.5,2.5,8.33','Academics','VersionB','CA002','NorthAmerica','Desktop','Good conversion rate');
INSERT INTO digital_campaign VALUES ('DC003','AlumniGiveback','Twitter','2023-09-01','2023-10-15','5000','4800','90000','1500','120',3.20,55.6,1.67,8.00','Alumni','VersionC','CA003','Global','Mobile','On track for goal');

-- Ticketing zones for events
CREATE TABLE ticketing_zone
(
    zone_id TEXT PRIMARY KEY,
    zone_name TEXT,
    event_id TEXT,
    seating_type TEXT,
    price_category TEXT,
    base_price REAL,
    tax_rate REAL,
    service_fee REAL,
    total_price REAL,
    capacity INTEGER,
    tickets_sold INTEGER,
    tickets_available INTEGER,
    entry_time TEXT,
    exit_time TEXT,
    access_control_method TEXT,
    restricted_access TEXT,
    vip_included TEXT,
    special_instructions TEXT,
    weather_impact_adjustment TEXT,
    last_updated TEXT,
    zone_notes TEXT
);

INSERT INTO ticketing_zone VALUES ('TZ001','GeneralAdmission','EV001','Standing','Standard',20.00,0.07,2.00,23.40,500,350,150,'18:00','23:00','Barcode','No','No','No umbrellas allowed','None','2023-09-01','Popular zone');
INSERT INTO ticketing_zone VALUES ('TZ002','PremiumSeating','EV001','Seated','Premium',50.00,0.07,5.00,59.50,200,180,20,'18:00','23:00','QR','Yes','Yes','Dress code enforced','None','2023-09-01','Limited seats');
INSERT INTO ticketing_zone VALUES ('TZ003','OutdoorLawn','EV002','Standing','Discount',15.00,0.07,1.50,16.55,300,100,200,'12:00','22:00','RFID','No','No','Bring blankets','Rain surcharge applies','2023-09-05','Family friendly');

-- Transport schedules for event logistics
CREATE TABLE transport_schedule
(
    schedule_id TEXT PRIMARY KEY,
    route_id TEXT,
    vehicle_id TEXT,
    driver_name TEXT,
    departure_time TEXT,
    arrival_time TEXT,
    origin_location TEXT,
    destination_location TEXT,
    scheduled_date TEXT,
    actual_departure TEXT,
    actual_arrival TEXT,
    delay_minutes INTEGER,
    passenger_count INTEGER,
    cargo_weight_kg REAL,
    fuel_consumption_liters REAL,
    maintenance_flag TEXT,
    notes TEXT,
    status TEXT,
    created_by TEXT,
    last_modified TEXT
);

INSERT INTO transport_schedule VALUES ('TS001','R001','V001','Mike Turner','08:00','09:30','CampusDepot','EventVenueA','2023-09-10','08:05','09:35',5,30,200.0,25.0,'No','On time','Scheduled','Admin','2023-09-01');
INSERT INTO transport_schedule VALUES ('TS002','R002','V002','Sara Lee','10:00','11:45','CampusDepot','EventVenueB','2023-09-10','10:02','11:50',3,25,180.0,22.5,'No','Minor delay','Completed','Logistics','2023-09-02');
INSERT INTO transport_schedule VALUES ('TS003','R003','V003','Tom Davis','14:00','15:30','CampusDepot','EventVenueC','2023-09-11','14:10','15:45',15,20,150.0,20.0,'Yes','Vehicle maintenance scheduled','Pending','Coordinator','2023-09-03');

-- Facility inspection records
CREATE TABLE facility_inspection
(
    inspection_id TEXT PRIMARY KEY,
    facility_id TEXT,
    inspector_name TEXT,
    inspection_date TEXT,
    inspection_type TEXT,
    overall_score INTEGER,
    safety_compliance TEXT,
    cleanliness_score INTEGER,
    equipment_status TEXT,
    fire_system_status TEXT,
    electrical_system_status TEXT,
    plumbing_status TEXT,
    hvac_status TEXT,
    structural_integrity TEXT,
    notes TEXT,
    follow_up_required TEXT,
    follow_up_date TEXT,
    corrective_actions TEXT,
    inspection_status TEXT,
    report_document_path TEXT
);

INSERT INTO facility_inspection VALUES ('FI001','FAC01','Laura Kim','2023-08-20','Annual','85','Compliant','90','Good','Functional','Good','Good','Good','Stable','All systems nominal','No','','','Completed','/reports/FI001.pdf');
INSERT INTO facility_inspection VALUES ('FI002','FAC02','David Patel','2023-09-05','Quarterly','78','Partial','75','Fair','Functional','Fair','Fair','Fair','Minor cracks observed','Yes','2023-09-20','Repair roof leaks','InProgress','/reports/FI002.pdf');
INSERT INTO facility_inspection VALUES ('FI003','FAC03','Emily Zhao','2023-07-15','Special','92','Compliant','95','Excellent','Functional','Excellent','Excellent','Excellent','Excellent','Ready for event','No','','','Completed','/reports/FI003.pdf');

-- Volunteer shift scheduling
CREATE TABLE volunteer_shift
(
    shift_id TEXT PRIMARY KEY,
    volunteer_id TEXT,
    shift_date TEXT,
    start_time TEXT,
    end_time TEXT,
    role_assigned TEXT,
    location TEXT,
    supervisor_name TEXT,
    shift_status TEXT,
    hours_logged REAL,
    tasks_completed TEXT,
    notes TEXT,
    lunch_provided TEXT,
    transport_arranged TEXT,
    uniform_required TEXT,
    equipment_provided TEXT,
    feedback_rating INTEGER,
    emergency_contact TEXT,
    backup_volunteer_id TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO volunteer_shift VALUES ('VS001','M010','2023-09-12','08:00','12:00','RegistrationDesk','MainHall','Anna Lee','Completed','4.0','Checked‑in 150 guests','Smooth start','Yes','Yes','Yes','Badge','5','5551112222','M011','2023-08-01','2023-09-01');
INSERT INTO volunteer_shift VALUES ('VS002','M012','2023-09-12','12:00','16:00','FoodService','CateringArea','Bob Martin','Completed','4.0','Served meals to 200 guests','No issues','No','Yes','Yes','Apron','4','5553334444','M013','2023-08-05','2023-09-02');
INSERT INTO volunteer_shift VALUES ('VS003','M014','2023-09-13','10:00','14:00','CrowdControl','EntranceGate','Cathy Wu','Pending','0','', 'Awaiting assignment','Yes','No','Yes','Radio','', '5555556666','M015','2023-08-10','2023-09-03');

-- Sustainability metrics tracking
CREATE TABLE sustainability_metric
(
    metric_id TEXT PRIMARY KEY,
    metric_name TEXT,
    measurement_unit TEXT,
    target_value REAL,
    current_value REAL,
    reporting_period TEXT,
    responsible_department TEXT,
    last_updated TEXT,
    data_source TEXT,
    calculation_method TEXT,
    notes TEXT,
    trend_direction TEXT,
    baseline_value REAL,
    year_over_year_change REAL,
    variance REAL,
    confidence_interval TEXT,
    related_project_id TEXT,
    approval_status TEXT,
    reviewer_name TEXT,
    audit_timestamp TEXT
);

INSERT INTO sustainability_metric VALUES ('SM001','EnergyConsumption','kWh','50000','48000','2023','Facilities','2023-09-01','UtilityBills','SumMonthly','Reduced consumption by 4%','Down','52000','-4000','-7.7%','95% Confidence','PRJ001','Approved','John Doe','2023-09-02');
INSERT INTO sustainability_metric VALUES ('SM002','WaterUsage','Gallons','200000','210000','2023','Facilities','2023-09-01','MeterReadings','AverageDaily','Slight increase due to event','Up','195000','15000','7.7%','90% Confidence','PRJ002','Pending','Jane Smith','2023-09-03');
INSERT INTO sustainability_metric VALUES ('SM003','WasteDiversion','Percent','85','88','2023','Sustainability','2023-09-01','RecyclingLogs','WeightedAverage','Exceeded target','Up','80','8','10%','98% Confidence','PRJ003','Approved','Mike Green','2023-09-04');