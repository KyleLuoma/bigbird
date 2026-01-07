-- Event logistics detail per event
CREATE TABLE event_logistics_detail
(
    logistics_id          TEXT PRIMARY KEY,
    event_id              TEXT,
    setup_start           TEXT,
    setup_end             TEXT,
    teardown_start        TEXT,
    teardown_end          TEXT,
    venue_id              TEXT,
    catering_id           TEXT,
    av_equipment          TEXT,
    security_level        TEXT,
    staff_needed          INTEGER,
    volunteer_needed      INTEGER,
    parking_allowed       TEXT,
    transportation_plan   TEXT,
    insurance_coverage    TEXT,
    waste_management      TEXT,
    signage_required      TEXT,
    emergency_contact     TEXT,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    FOREIGN KEY (event_id) REFERENCES event(event_id)
);

INSERT INTO event_logistics_detail VALUES ('log001','event001','2025-05-01 08:00','2025-05-01 10:00','2025-05-01 18:00','2025-05-01 20:00','venueA','cateringX','AVPro','High',10,5,'Yes','ShuttleBus','Standard','Recycling','Yes','JohnDoe','Initial setup','2025-04-01','2025-04-02');
INSERT INTO event_logistics_detail VALUES ('log002','event002','2025-06-10 07:30','2025-06-10 09:30','2025-06-10 17:30','2025-06-10 19:30','venueB','cateringY','BasicAV','Medium',8,3,'No','None','Standard','Compost','No','JaneSmith','No special notes','2025-05-01','2025-05-02');
INSERT INTO event_logistics_detail VALUES ('log003','event003','2025-07-15 09:00','2025-07-15 11:00','2025-07-15 19:00','2025-07-15 21:00','venueC','cateringZ','PremiumAV','Low',12,6,'Yes','BikeShare','Extended','Landfill','Yes','MikeBrown','Extra lighting required','2025-06-01','2025-06-02');

-- Member skill profile and certifications
CREATE TABLE member_skill_profile
(
    profile_id            TEXT PRIMARY KEY,
    member_id             TEXT,
    skill_name            TEXT,
    proficiency_level     TEXT,
    certification_name    TEXT,
    certification_body    TEXT,
    certification_date    TEXT,
    expiration_date       TEXT,
    years_experience      INTEGER,
    last_used_date        TEXT,
    endorsement_count     INTEGER,
    training_hours        INTEGER,
    language_fluency      TEXT,
    software_proficiency  TEXT,
    project_role          TEXT,
    availability_status   TEXT,
    preferred_shift       TEXT,
    remote_capable        TEXT,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    FOREIGN KEY (member_id) REFERENCES member(member_id)
);

INSERT INTO member_skill_profile VALUES ('prof001','member001','DataAnalysis','Expert','Data Analyst Cert','DataOrg','2023-01-15','2026-01-15',5,'2025-03-01',12,40,'English','SQL,Python','Analyst','Active','Day','Yes','Strong in statistical models','2025-02-01','2025-02-02');
INSERT INTO member_skill_profile VALUES ('prof002','member002','PublicSpeaking','Intermediate','Toastmasters Cert','Toastmasters','2022-06-20','2025-06-20',3,'2025-02-10',8,20,'Spanish','PowerPoint','Presenter','Active','Evening','No','Comfortable with large audiences','2025-02-05','2025-02-06');
INSERT INTO member_skill_profile VALUES ('prof003','member003','FirstAid','Advanced','RedCross FirstAid','RedCross','2021-09-10','2024-09-10',2,'2025-01-15',5,15,'English','N/A','Support','OnLeave','Day','Yes','Certified in CPR','2025-01-01','2025-01-02');

-- Vendor service agreement details
CREATE TABLE vendor_service_agreement
(
    agreement_id          TEXT PRIMARY KEY,
    vendor_id             TEXT,
    service_type          TEXT,
    contract_start        TEXT,
    contract_end          TEXT,
    payment_terms         TEXT,
    total_value           REAL,
    currency              TEXT,
    service_level_agreement TEXT,
    performance_metric    TEXT,
    penalty_clause        TEXT,
    renewal_option        TEXT,
    governing_law         TEXT,
    contact_person        TEXT,
    contact_email         TEXT,
    contact_phone         TEXT,
    insurance_required    TEXT,
    insurance_provider    TEXT,
    insurance_policy_num  TEXT,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    FOREIGN KEY (vendor_id) REFERENCES vendor(vendor_id)
);

INSERT INTO vendor_service_agreement VALUES ('agr001','vendor001','Catering','2025-01-01','2025-12-31','Net30',25000.00,'USD','Gold','OnTimeDelivery','5%_LateFee','AutoRenew','NYLaw','AliceGreen','alice@cateringco.com','5551234567','Yes','InsureCo','IC12345','Annual catering for campus events','2024-12-01','2024-12-02');
INSERT INTO vendor_service_agreement VALUES ('agr002','vendor002','AudioVisual','2025-03-01','2026-02-28','Net45',18000.00,'USD','Silver','EquipmentUptime','2%_ServiceDowntime','ManualRenew','CALaw','BobWhite','bob@avservices.com','5559876543','Yes','SecureCover','SC98765','AV support for all conferences','2025-02-15','2025-02-16');
INSERT INTO vendor_service_agreement VALUES ('agr003','vendor003','Security','2025-05-15','2026-05-14','Net60',30000.00,'USD','Platinum','IncidentResponse','ZeroPenalty','AutoRenew','TXLaw','CarolBlack','carol@secguard.com','5555551212','Yes','GuardInsure','GI54321','Campus security staffing year-round','2025-05-01','2025-05-02');

-- Campus facility asset inventory
CREATE TABLE campus_facility_asset
(
    asset_id                 TEXT PRIMARY KEY,
    facility_id              TEXT,
    asset_type               TEXT,
    manufacturer             TEXT,
    model_number             TEXT,
    serial_number            TEXT,
    purchase_date            TEXT,
    warranty_expiration      TEXT,
    purchase_price           REAL,
    current_value            REAL,
    depreciation_years       INTEGER,
    location_detail          TEXT,
    condition_status         TEXT,
    last_inspection_date     TEXT,
    next_maintenance_date    TEXT,
    assigned_responsible     TEXT,
    asset_tag                TEXT,
    maintenance_contract     TEXT,
    insurance_covered        TEXT,
    disposal_status          TEXT,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT
);

INSERT INTO campus_facility_asset VALUES ('asset001','facilityA','HVAC','CoolTech','CT500','SN12345','2023-04-10','2026-04-10',120000.00,95000.00,10,'NorthWing','Good','2025-03-01','2025-09-01','JohnDoe','TAG001','HC001','Yes','Active','Routine maintenance performed','2025-01-01','2025-01-02');
INSERT INTO campus_facility_asset VALUES ('asset002','facilityB','Projector','VisionPro','VP200','SN67890','2022-01-20','2025-01-20',8000.00,5000.00,5,'Auditorium','Fair','2025-02-15','2025-08-15','JaneSmith','TAG002','HC002','Yes','Active','Lens cleaned','2025-01-10','2025-01-11');
INSERT INTO campus_facility_asset VALUES ('asset003','facilityC','Laptop','TechMate','TMX15','SN54321','2024-09-05','2027-09-05',1500.00,1300.00,3,'ITLab','New','2025-04-01','2025-10-01','MikeBrown','TAG003','HC003','No','Active','Ready for deployment','2025-02-20','2025-02-21');

-- Sustainability initiative metric tracking
CREATE TABLE sustainability_initiative_metric
(
    metric_id               TEXT PRIMARY KEY,
    initiative_id           TEXT,
    metric_name             TEXT,
    measurement_unit        TEXT,
    target_value            REAL,
    actual_value            REAL,
    reporting_period_start  TEXT,
    reporting_period_end    TEXT,
    data_source             TEXT,
    collection_method       TEXT,
    responsible_department  TEXT,
    verification_status     TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    FOREIGN KEY (initiative_id) REFERENCES sustainability_initiative(initiative_id)
);

INSERT INTO sustainability_initiative_metric VALUES ('met001','sustain001','EnergyReduction','kWh','50000',47200,'2025-01-01','2025-12-31','EnergyMeters','Automated','Facilities','Verified','Exceeded target by 5%','2025-01-05','2025-01-06');
INSERT INTO sustainability_initiative_metric VALUES ('met002','sustain002','WaterSavings','Gallons','200000',185000,'2025-01-01','2025-12-31','WaterSensors','Automated','Facilities','Verified','Close to target','2025-01-07','2025-01-08');
INSERT INTO sustainability_initiative_metric VALUES ('met003','sustain003','WasteDiversion','Percent','75',68,'2025-01-01','2025-12-31','WasteAudit','Manual','Sustainability','Pending','Need to improve recycling rates','2025-01-09','2025-01-10');

-- Digital media asset catalog
CREATE TABLE digital_media_asset
(
    media_id                TEXT PRIMARY KEY,
    event_id                TEXT,
    asset_type              TEXT,
    file_name               TEXT,
    file_path               TEXT,
    file_size_bytes         INTEGER,
    resolution              TEXT,
    duration_seconds        INTEGER,
    codec                   TEXT,
    created_by              TEXT,
    creation_date           TEXT,
    modified_date           TEXT,
    usage_rights            TEXT,
    license_expiration      TEXT,
    tags                    TEXT,
    description             TEXT,
    view_count              INTEGER,
    download_count          INTEGER,
    last_accessed           TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    FOREIGN KEY (event_id) REFERENCES event(event_id)
);

INSERT INTO digital_media_asset VALUES ('media001','event001','Photo','stage_photo1.jpg','/media/photos/','2048000','1920x1080',0,'JPEG','AliceGreen','2025-04-15','2025-04-16','Internal','2026-04-15','stage,opening','Opening ceremony stage view',120,0,'2025-04-20','High quality','2025-04-10','2025-04-11');
INSERT INTO digital_media_asset VALUES ('media002','event002','Video','keynote.mp4','/media/videos/','524288000','3840x2160',5400,'H264','BobWhite','2025-06-12','2025-06-13','Public','2027-06-12','keynote,guest','Keynote speech video',85,5,'2025-06-20','Edited version','2025-06-01','2025-06-02');
INSERT INTO digital_media_asset VALUES ('media003','event003','Audio','panel_audio.wav','/media/audio/','104857600','','3600','PCM','CarolBlack','2025-07-18','2025-07-19','Internal','2026-07-18','panel,discussion','Audio from panel discussion',60,2,'2025-07-25','Stereo mix','2025-07-10','2025-07-11');

-- Community outreach activity log
CREATE TABLE community_outreach_activity
(
    activity_id              TEXT PRIMARY KEY,
    partner_id               TEXT,
    activity_name            TEXT,
    activity_type            TEXT,
    target_audience          TEXT,
    location                 TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    expected_participants    INTEGER,
    actual_participants      INTEGER,
    budget_allocated         REAL,
    funds_spent              REAL,
    staff_in_charge          TEXT,
    volunteer_lead           TEXT,
    materials_provided       TEXT,
    outcome_summary          TEXT,
    follow_up_required       TEXT,
    follow_up_date           TEXT,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    FOREIGN KEY (partner_id) REFERENCES community_partner(partner_id)
);

INSERT INTO community_outreach_activity VALUES ('act001','partner001','Health Fair','Event','Students','CampusQuad','2025-05-10','2025-05-10',200,180,10000.00,9200.00,'JohnDoe','JaneSmith','Brochures,FirstAidKits','Improved health awareness','Yes','2025-06-01','Positive feedback','2025-04-20','2025-04-21');
INSERT INTO community_outreach_activity VALUES ('act002','partner002','STEM Workshop','Workshop','HighSchoolStudents','CommunityCenter','2025-08-15','2025-08-15',50,45,5000.00,4700.00,'MikeBrown','AliceGreen','Kits,LabCoats','Increased interest in STEM','No','', 'Excellent engagement','2025-07-01','2025-07-02');
INSERT INTO community_outreach_activity VALUES ('act003','partner003','Tree Planting','Volunteer','LocalResidents','CityPark','2025-09-20','2025-09-20',100,95,3000.00,3000.00,'CarolBlack','BobWhite','Saplings,Tools','Added 200 trees to park','Yes','2025-10-15','Community involvement high','2025-08-15','2025-08-16');

-- Research project funding allocation
CREATE TABLE research_project_funding
(
    funding_id               TEXT PRIMARY KEY,
    project_id               TEXT,
    funding_source           TEXT,
    amount_requested         REAL,
    amount_awarded           REAL,
    award_date               TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    principal_investigator   TEXT,
    co_investigator          TEXT,
    department               TEXT,
    status                   TEXT,
    reporting_requirements   TEXT,
    budget_line_item_1       REAL,
    budget_line_item_2       REAL,
    budget_line_item_3       REAL,
    total_expended           REAL,
    remaining_balance        REAL,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    FOREIGN KEY (project_id) REFERENCES research_project(project_id)
);

INSERT INTO research_project_funding VALUES ('fund001','proj001','NationalScienceFund',200000.00,180000.00,'2025-02-15','2025-03-01','2028-02-28','DrSmith','DrLee','Physics','Active','QuarterlyReport',80000.00,50000.00,30000.00,150000.00,30000.00,'On schedule','2025-01-05','2025-01-06');
INSERT INTO research_project_funding VALUES ('fund002','proj002','IndustryPartner',120000.00,120000.00,'2025-04-10','2025-04-15','2027-04-14','DrKim','DrPatel','Chemistry','Active','AnnualReport',60000.00,40000.00,20000.00,100000.00,20000.00,'Phase 1 complete','2025-03-01','2025-03-02');
INSERT INTO research_project_funding VALUES ('fund003','proj003','StateGrant',80000.00,60000.00,'2025-01-20','2025-02-01','2026-01-31','DrGarcia','DrWong','Biology','Active','SemiAnnual','30000.00','20000.00','10000.00','50000.00','10000.00','Data collection ongoing','2024-12-15','2024-12-16');

-- Transportation fleet maintenance log
CREATE TABLE transportation_fleet_maintenance
(
    maintenance_id           TEXT PRIMARY KEY,
    vehicle_id               TEXT,
    maintenance_date         TEXT,
    maintenance_type         TEXT,
    service_provider         TEXT,
    mileage_at_service       INTEGER,
    cost                     REAL,
    parts_replaced           TEXT,
    labor_hours              REAL,
    next_service_due_mileage INTEGER,
    next_service_due_date    TEXT,
    technician_name          TEXT,
    service_location         TEXT,
    warranty_covered         TEXT,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    FOREIGN KEY (vehicle_id) REFERENCES transportation_vehicle(vehicle_id)
);

INSERT INTO transportation_fleet_maintenance VALUES ('mt001','veh001','2025-03-10','OilChange','AutoShopA',25000,150.00,'OilFilter','1.0',30000,'2025-06-10','SamTech','GarageA','Yes','Routine oil change','2025-03-01','2025-03-02');
INSERT INTO transportation_fleet_maintenance VALUES ('mt002','veh002','2025-05-22','BrakeInspection','BrakeMasters',40000,300.00,'BrakePads','2.5',45000,'2025-09-22','LaraMechanic','GarageB','No','Replaced front brake pads','2025-05-15','2025-05-16');
INSERT INTO transportation_fleet_maintenance VALUES ('mt003','veh003','2025-07-05','TireRotation','TirePros',15000,80.00,'N/A','0.5',20000,'2025-10-05','MikeDrive','GarageC','Yes','Rotated all tires','2025-07-01','2025-07-02');

-- Alumni giving summary per campaign
CREATE TABLE alumni_giving_summary
(
    summary_id               TEXT PRIMARY KEY,
    campaign_id              TEXT,
    alumni_id                TEXT,
    donation_amount          REAL,
    donation_date            TEXT,
    donation_type            TEXT,
    payment_method           TEXT,
    acknowledgment_sent      TEXT,
    acknowledgment_date      TEXT,
    tax_receipt_issued       TEXT,
    tax_receipt_date         TEXT,
    recurring_donation       TEXT,
    recurring_frequency      TEXT,
    matched_amount           REAL,
    matching_source          TEXT,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    FOREIGN KEY (alumni_id) REFERENCES alumni(alumni_id)
);

INSERT INTO alumni_giving_summary VALUES ('sum001','camp001','alum001',5000.00,'2025-02-20','OneTime','CreditCard','Yes','2025-02-21','Yes','2025-02-22','No','','0.00','','Major donation for scholarship fund','2025-02-01','2025-02-02');
INSERT INTO alumni_giving_summary VALUES ('sum002','camp002','alum002',250.00,'2025-04-10','Recurring','BankTransfer','Yes','2025-04-11','Yes','2025-04-12','Yes','Monthly','0.00','','Monthly support for library','2025-04-01','2025-04-02');
INSERT INTO alumni_giving_summary VALUES ('sum003','camp003','alum003',1200.00,'2025-06-15','OneTime','Check','Yes','2025-06-16','Yes','2025-06-17','No','','0.00','','Support for research grant','2025-06-01','2025-06-02');